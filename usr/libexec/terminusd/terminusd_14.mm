id sub_10013D1EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v4 length] && objc_msgSend(v3, "length"))
    {
      CCHmac(4u, [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"), &v8);
      v6 = [[NSData alloc] initWithBytes:&v8 length:64];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id sub_10013D308(void *a1, unsigned int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 addressData];
    v8 = [v7 length];
    v21 = 0;
    v22 = 0uLL;
    v23 = 0;
    [v7 getBytes:&v21 length:28];
    if (v8 < 0x10 || v8 < v21)
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_15;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = __rev16(a2);
      if (BYTE1(v21) == 2)
      {
        if (v21 > 0xFu)
        {
          *v20 = v9;
          *&v20[2] = HIDWORD(v21);
          if (!a3)
          {
            v18 = 0uLL;
            v19 = 0;
            v17 = 2;
            v12 = [[NSMutableData alloc] initWithBytes:&v17 length:1];
            LODWORD(v18) = *v20;
            WORD2(v18) = *&v20[4];
            [v12 appendBytes:&v18 length:6];
            goto LABEL_16;
          }

          v10 = [NSData alloc];
          v11 = 6;
LABEL_38:
          v12 = [v10 initWithBytes:v20 length:v11];
          goto LABEL_16;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_44;
        }

        goto LABEL_15;
      }

      if (BYTE1(v21) == 30)
      {
        if (v8 >= 0x1C && v21 > 0x1Bu)
        {
          *v20 = v9;
          *&v20[2] = v22;
          if (!a3)
          {
            v18 = 0uLL;
            v19 = 0;
            v17 = 30;
            v12 = [[NSMutableData alloc] initWithBytes:&v17 length:1];
            v18 = *v20;
            v19 = *&v20[16];
            [v12 appendBytes:&v18 length:18];
            goto LABEL_16;
          }

          v10 = [NSData alloc];
          v11 = 18;
          goto LABEL_38;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_44;
        }

LABEL_15:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_15;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_14;
      }
    }

LABEL_44:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_14:
    _NRLogWithArgs();
    goto LABEL_15;
  }

  v14 = sub_10013A310();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = sub_10013A310();
    _NRLogWithArgs();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

id sub_10013D760(void *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = v9;
    if (!a2)
    {
      goto LABEL_6;
    }

    memset(v18, 0, 19);
    if ([v9 length])
    {
      [v10 getBytes:v18 length:1];
      a3 = v18[0];
      if ([v10 length] > 1)
      {
        v11 = [v10 subdataWithRange:{1, objc_msgSend(v10, "length") - 1}];

        v10 = v11;
LABEL_6:
        if (a3 == 2)
        {
          *&v17[4] = 0;
          *v17 = 0;
          if ([v10 length] <= 5)
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 == -1)
              {
LABEL_19:
                _NRLogWithArgs();
                v12 = 0;
LABEL_37:

                goto LABEL_38;
              }

LABEL_45:
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
              goto LABEL_19;
            }

LABEL_31:
            v12 = 0;
            goto LABEL_37;
          }

          [v10 getBytes:v17 length:6];
          *v18 = xmmword_1001964B0;
          *&v18[2] = *v17;
          *&v18[4] = *&v17[2];
        }

        else
        {
          if (a3 != 30)
          {
            goto LABEL_31;
          }

          memset(v17, 0, sizeof(v17));
          if ([v10 length] <= 0x11)
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 == -1)
              {
                goto LABEL_19;
              }

              goto LABEL_45;
            }

            goto LABEL_31;
          }

          [v10 getBytes:v17 length:18];
          *v18 = 7708;
          v19 = unk_100196598;
          *&v18[2] = *v17;
          *&v18[8] = *&v17[2];
          if (v17[2] == 254 && (v18[9] & 0xC0) == 0x80)
          {
            v19 = a4;
          }
        }

        v12 = [NWAddressEndpoint endpointWithAddress:v18];
        goto LABEL_37;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }
    }

    else
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }
    }

    _NRLogWithArgs();
    goto LABEL_31;
  }

  v14 = sub_10013A310();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = sub_10013A310();
    _NRLogWithArgs();
  }

  v12 = 0;
LABEL_38:

  return v12;
}

id sub_10013DBE4(void *a1, void **a2, void **a3, int a4)
{
  v7 = a1;
  if (!v7)
  {
    v32 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = sub_10013A310();
      _NRLogWithArgs();
    }

    goto LABEL_15;
  }

  v37 = 0;
  if (getifaddrs(&v37) == -1)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

LABEL_15:
    v11 = 0;
    goto LABEL_80;
  }

  if (a2)
  {
    v8 = *a2;
    *a2 = 0;
  }

  if (a3)
  {
    v9 = *a3;
    *a3 = 0;
  }

  v10 = v37;
  if (v37)
  {
    v11 = 0;
    while (1)
    {
      if (!v10->ifa_addr || !v10->ifa_name || strcmp([v7 UTF8String], v10->ifa_name))
      {
        goto LABEL_30;
      }

      if (!a3 && !a2 && !v11)
      {
        v11 = objc_alloc_init(NSMutableSet);
      }

      ifa_addr = v10->ifa_addr;
      sa_family = ifa_addr->sa_family;
      if (sa_family == 30)
      {
        if (a4)
        {
          if (*&ifa_addr->sa_data[6])
          {
            if (*&ifa_addr->sa_data[6] == 255 || *&ifa_addr->sa_data[6] == 254 && (*&ifa_addr->sa_data[6] & 0xC000) == 0x8000)
            {
              goto LABEL_30;
            }
          }

          else if (!*&ifa_addr->sa_data[10] && !*&ifa_addr[1].sa_len && (*&ifa_addr[1].sa_data[2] | 0x1000000) == 0x1000000)
          {
            goto LABEL_30;
          }
        }

        if (inet_ntop(30, &ifa_addr->sa_data[6], v38, 0x2Eu))
        {
          v24 = [[NSString alloc] initWithFormat:@"%s", v38];
          if (a3)
          {
            v25 = *a3;
            if (!*a3)
            {
              v28 = objc_alloc_init(NSMutableSet);
              v29 = *a3;
              *a3 = v28;

              v25 = *a3;
            }

LABEL_63:
            [v25 addObject:v24];
          }

LABEL_64:
          if (v24)
          {
            [v11 addObject:v24];
          }

          goto LABEL_30;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_30;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        ifa_name = v10->ifa_name;
      }

      else
      {
        if (sa_family != 2)
        {
          goto LABEL_30;
        }

        v23 = *&ifa_addr->sa_data[2];
        v21 = &ifa_addr->sa_data[2];
        v22 = v23;
        if (a4)
        {
          v12 = bswap32(v22);
          v13 = v12 & 0xFF000000;
          v14 = HIWORD(v12) == 43518 || v13 == 0;
          v15 = v14 || v13 == 2130706432;
          v16 = v12 & 0xF0000000;
          v17 = v15 || v22 == -1;
          if (v17 || v16 == -536870912)
          {
            goto LABEL_30;
          }
        }

        if (inet_ntop(2, v21, v38, 0x10u))
        {
          v24 = [[NSString alloc] initWithFormat:@"%s", v38];
          if (a2)
          {
            v25 = *a2;
            if (!*a2)
            {
              v26 = objc_alloc_init(NSMutableSet);
              v27 = *a2;
              *a2 = v26;

              v25 = *a2;
            }

            goto LABEL_63;
          }

          goto LABEL_64;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_30;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        v35 = v10->ifa_name;
      }

      _NRLogWithArgs();
LABEL_30:
      v10 = v10->ifa_next;
      if (!v10)
      {
        v30 = v37;
        goto LABEL_79;
      }
    }
  }

  v30 = 0;
  v11 = 0;
LABEL_79:
  freeifaddrs(v30);
LABEL_80:

  return v11;
}

void sub_10013E080(id a1)
{
  v1 = MGGetSInt32Answer() - 1;
  if (v1 <= 0xA && ((0x56Du >> v1) & 1) != 0)
  {
    byte_100229290 = byte_10019659C[v1];
  }
}

void sub_10013E0D0(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    __chkstk_darwin();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v11 + 12) = 1024;
    *(v11 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_10013A310();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10013A310();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446466;
    *(v16 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.SystemConfiguration";
  v4 = dispatch_queue_create("terminusd.SystemConfiguration", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292A8;
  qword_1002292A8 = v5;
}

void sub_10013E358(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    __chkstk_darwin();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v11 + 12) = 1024;
    *(v11 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_10013A310();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10013A310();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446466;
    *(v16 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.CoreBluetooth";
  v4 = dispatch_queue_create("terminusd.CoreBluetooth", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292B8;
  qword_1002292B8 = v5;
}

void sub_10013E5E0(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    __chkstk_darwin();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v11 + 12) = 1024;
    *(v11 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_10013A310();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10013A310();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446466;
    *(v16 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.IdentityServices.QR";
  v4 = dispatch_queue_create("terminusd.IdentityServices.QR", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292C8;
  qword_1002292C8 = v5;
}

void sub_10013E868(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v22 = v1;
  v2 = [v1 allowedLinkTypes];
  v3 = [v2 containsObject:&off_100209D58];

  if (v3)
  {
    v4 = [v22 allowedLinkSubtypes];
    v5 = [v4 count];

    if (!v5)
    {
      [v22 setAllowedLinkSubtypes:&off_10020A0F0];
    }
  }

  else
  {
    [v22 setIsReachableOverWiFi:0];
  }

  v6 = [v22 allowedLinkTypes];
  if (![v6 containsObject:&off_100209D88])
  {
    goto LABEL_11;
  }

  v7 = [v22 allowedLinkSubtypes];
  if ([v7 containsObject:&off_100209DA0])
  {

LABEL_11:
    goto LABEL_12;
  }

  v8 = [v22 allowedLinkSubtypes];
  v9 = [v8 containsObject:&off_100209DB8];

  if ((v9 & 1) == 0)
  {
    v10 = [NSMutableArray alloc];
    v11 = [v22 allowedLinkSubtypes];
    v6 = [v10 initWithArray:v11];

    [v6 addObject:&off_100209DA0];
    [v22 setAllowedLinkSubtypes:v6];
    goto LABEL_11;
  }

LABEL_12:
  v12 = [NSOrderedSet alloc];
  v13 = [v22 allowedLinkTypes];
  v14 = [v12 initWithArray:v13];

  v15 = [v14 array];
  [v22 setAllowedLinkTypes:v15];

  v16 = [v22 allowedLinkSubtypes];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [NSOrderedSet alloc];
    v19 = [v22 allowedLinkSubtypes];
    v20 = [v18 initWithArray:v19];

    v21 = [v20 array];
    [v22 setAllowedLinkSubtypes:v21];
  }

  if ([v22 proxyCapability] != 2)
  {
    [v22 setAllowsDirectToCloud:0];
  }

  if ([v22 requiresReachability])
  {
    [v22 setAllowsPermittedClientsOnly:0];
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 == 1)
  {
    [v22 setAllowsDeviceDiscovery:1];
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs();
  }

  v1 = v22;
LABEL_29:
}

id sub_10013EBBC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    if ([v5 length] && objc_msgSend(v6, "length") && objc_msgSend(v8, "length"))
    {
      [v6 bytes];
      [v6 length];
      [v8 bytes];
      [v8 length];
      if (CCKDFParametersCreateHkdf())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs();
        }
      }

      else
      {
        memset(v12, 0, sizeof(v12));
        [v5 bytes];
        [v5 length];
        if (!CCDeriveKey())
        {
          v9 = [NSData _newZeroingDataWithBytes:v12 length:64];
          cc_clear();
          goto LABEL_15;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          v11 = sub_10013A310();
          _NRLogWithArgs();
        }
      }

      v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_15:

  return v9;
}

BOOL sub_10013EE38(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v7 = [v3 length], v7 == objc_msgSend(v5, "length")) && objc_msgSend(v3, "length"))
    {
      [v3 length];
      [v3 bytes];
      [v5 bytes];
      v6 = cc_cmp_safe() == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

int64_t sub_10013EF24(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 notifyStatus];
  v6 = [v4 notifyStatus];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

id sub_10013EF7C(int a1)
{
  v3 = 0;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 17, 1uLL, buffer, 56) == 56)
  {
    return [[NSUUID alloc] initWithUUIDBytes:buffer];
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs();
  }

  return 0;
}

id sub_10013F0B0(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(NSMutableArray);
    v2 = NEVirtualInterfaceCopyNexusInstances();
    if (v2)
    {
      v3 = v2;
      if (CFArrayGetCount(v2) >= 1)
      {
        Count = CFArrayGetCount(v3);
        if (Count >= 1)
        {
          v5 = Count;
          for (i = 0; i != v5; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
            v8 = CFUUIDCreateString(kCFAllocatorDefault, ValueAtIndex);
            v9 = [[NSUUID alloc] initWithUUIDString:v8];
            [v1 addObject:v9];
          }
        }
      }

      CFRelease(v3);
    }
  }

  else
  {
    v11 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10013A310();
      _NRLogWithArgs();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_10013F1F8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    AssertionID = 0;
    if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v1, &AssertionID))
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_13;
      }

      if (qword_1002292D8 == -1)
      {
LABEL_12:
        _NRLogWithArgs();
LABEL_13:
        v2 = AssertionID;
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_13;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_12;
      }
    }

    dispatch_once(&qword_1002292D8, &stru_1001FC510);
    goto LABEL_12;
  }

  v4 = sub_10013A310();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = sub_10013A310();
    _NRLogWithArgs();
  }

  v2 = 0;
LABEL_14:

  return v2;
}

uint64_t sub_10013F3BC(IOPMAssertionID a1)
{
  if (!a1)
  {
    return 1;
  }

  if (IOPMAssertionRelease(a1))
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
      return 0;
    }
  }

  else
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

    return 1;
  }

  return result;
}

uint64_t sub_10013FF60(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[18];

    if (!v3)
    {
      goto LABEL_4;
    }

    v4 = v2[18];
    v5 = [v4 proxyCapability];

    if (v5 == 1)
    {
      goto LABEL_4;
    }

    v8 = v2[18];
    v9 = [v8 proxyCapability];

    if (v9 == 2)
    {
      v6 = 2;
      goto LABEL_5;
    }

    v10 = v2[18];
    v11 = [v10 bluetoothRole];

    if (v11 == 1)
    {
LABEL_4:
      v6 = 1;
    }

    else
    {
      v12 = v2[18];
      v13 = [v12 bluetoothRole];

      if (v13 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  else
  {
    v14 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_100140094();
      _NRLogWithArgs();
    }

    v6 = 0;
  }

LABEL_5:

  return v6;
}

id sub_100140094()
{
  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  v1 = qword_100229370;

  return v1;
}

void sub_1001400E8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229370;
  qword_100229370 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100140C44(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v6 = sub_100140094();
    _NRLogWithArgs();
    IsLevelEnabled = 0;
    goto LABEL_8;
  }

  v3 = v1[18];

  if (v3)
  {
    v4 = v2[18];
    v5 = [v4 proxyCapability];

    if (v5 == 2)
    {
      v6 = v2[18];
      if ([v6 hasCompanionDatapath])
      {
        IsLevelEnabled = 1;
      }

      else
      {
        IsLevelEnabled = sub_100169428(v2);
      }

LABEL_8:

      goto LABEL_9;
    }
  }

  IsLevelEnabled = 0;
LABEL_9:

  return IsLevelEnabled;
}

id sub_1001415A0(int a1)
{
  v2 = [NSString alloc];
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        v3 = "StartedIKE";
      }

      else if (a1 == 6)
      {
        v3 = "ConnectedIKE";
      }

      else
      {
        v3 = "ReceivedFirstIKENotify";
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 8:
        v3 = "Ready";
        goto LABEL_24;
      case 9:
        v3 = "Suspended";
        goto LABEL_24;
      case 255:
        v3 = "Cancelled";
        goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "Invalid";
      goto LABEL_24;
    }

    if (a1 == 1)
    {
      v3 = "Initial";
      goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 2)
  {
    v3 = "SentPrelude";
  }

  else if (a1 == 3)
  {
    v3 = "ReceivedPrelude";
  }

  else
  {
    v3 = "ExchangedPrelude";
  }

LABEL_24:

  return [v2 initWithUTF8String:v3];
}

void sub_1001416F4(void *a1)
{
  if (a1 && [a1 isExternalDeviceLink])
  {
    if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      v2 = NEVirtualInterfaceCopyName();
      v3 = socket(30, 2, 0);
      if (v3 < 0)
      {
        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229378 != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          _NRLogWithArgs();
        }

        goto LABEL_52;
      }

      LODWORD(v4) = v3;
      v23 = 0u;
      v24 = 0u;
      v5 = [v2 UTF8String];
      if (v5)
      {
        LOBYTE(v23) = *v5;
        if (v23)
        {
          BYTE1(v23) = v5[1];
          if (BYTE1(v23))
          {
            BYTE2(v23) = v5[2];
            if (BYTE2(v23))
            {
              BYTE3(v23) = v5[3];
              if (BYTE3(v23))
              {
                BYTE4(v23) = v5[4];
                if (BYTE4(v23))
                {
                  BYTE5(v23) = v5[5];
                  if (BYTE5(v23))
                  {
                    BYTE6(v23) = v5[6];
                    if (BYTE6(v23))
                    {
                      BYTE7(v23) = v5[7];
                      if (BYTE7(v23))
                      {
                        BYTE8(v23) = v5[8];
                        if (BYTE8(v23))
                        {
                          BYTE9(v23) = v5[9];
                          if (BYTE9(v23))
                          {
                            BYTE10(v23) = v5[10];
                            if (BYTE10(v23))
                            {
                              BYTE11(v23) = v5[11];
                              if (BYTE11(v23))
                              {
                                BYTE12(v23) = v5[12];
                                if (BYTE12(v23))
                                {
                                  BYTE13(v23) = v5[13];
                                  if (BYTE13(v23))
                                  {
                                    BYTE14(v23) = v5[14];
                                    if (BYTE14(v23))
                                    {
                                      HIBYTE(v23) = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        LODWORD(v24) = 1;
        if (ioctl(v4, 0x8020695FuLL, &v23) < 0)
        {
          v11 = __error();
          if (*v11 == 6)
          {
            if (strerror_r(6, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229378 != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v12 = sub_100140094();
              [v2 UTF8String];
              _NRLogWithArgs();
            }
          }

          else
          {
            if (strerror_r(*v11, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229378 != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v13 = sub_100140094();
              [v2 UTF8String];
              _NRLogWithArgs();
            }
          }

          goto LABEL_51;
        }

        v6 = &qword_100229000;
        if (qword_100229378 == -1)
        {
LABEL_24:
          if (_NRLogIsLevelEnabled())
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            _NRLogWithArgs();
          }

LABEL_51:
          close(v4);
LABEL_52:

          return;
        }
      }

      else
      {
        v14 = sub_100140094();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v6 = "_strict_strlcpy";
        if (IsLevelEnabled)
        {
          v16 = sub_100140094();
          _NRLogWithArgs();
        }

        v2 = _os_log_pack_size();
        v4 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        *v18 = 136446210;
        *(v18 + 4) = "_strict_strlcpy";
        sub_100140094();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_100229378, &stru_1001FC6A0);
      goto LABEL_24;
    }

    v7 = a1[4];
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = a1[4];
      v21 = _NRCopyLogObjectForNRUUID();
      v19 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }
}

uint64_t sub_1001428D4(void *a1, void *a2, void *a3, id *a4, id *a5, id *a6, id *a7, void *a8)
{
  v150 = a1;
  v14 = a2;
  v148 = a3;
  v149 = a8;
  v151 = 0uLL;
  v152 = 0;
  if ([v14 length] > 0x11)
  {
    location = a6;
    [v14 getBytes:&v151 length:18];
    if (sub_1001655D8(v150))
    {
      v16 = v150;
      v17 = v14;
      v141 = v149;
      v157 = 0uLL;
      if (v16)
      {
        v18 = v16[3];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = v17;
      v158 = 0uLL;
      v159 = 0;
      v145 = v20;
      if ([v20 length] <= 0x11)
      {
        v28 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v30 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        if (v16)
        {
          v31 = v16[3];
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        v33 = _NRCopyLogObjectForNRUUID();
        v34 = _NRLogIsLevelEnabled();

        if (!v34)
        {
          v68 = 0;
          v144 = 0;
          v15 = 0;
LABEL_179:

          goto LABEL_180;
        }

        if (v16)
        {
          v35 = v16[3];
        }

        else
        {
          v35 = 0;
        }

        v140 = v35;
        obj = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        v139 = 0;
      }

      else
      {
        [v145 getBytes:&v158 length:18];
        v160 = 0;
        v161 = &v160;
        v162 = 0x3032000000;
        v163 = sub_100143EB0;
        v164 = sub_100143EC0;
        v165 = 0;
        *&v153 = 0;
        *(&v153 + 1) = &v153;
        *&v154 = 0x3032000000;
        *(&v154 + 1) = sub_100143EB0;
        *&v155 = sub_100143EC0;
        *(&v155 + 1) = 0;
        if ([v145 length] >= 0x15)
        {
          v21 = [v145 subdataWithRange:{18, objc_msgSend(v145, "length") - 18}];
          v166.i64[0] = _NSConcreteStackBlock;
          v166.i64[1] = 3221225472;
          v167 = sub_100143EC8;
          v168 = &unk_1001FCF58;
          v169 = &v153;
          v170 = &v160;
          NRTLVParse();
        }

        v144 = *(*(&v153 + 1) + 40);
        _Block_object_dispose(&v153, 8);

        v157 = v158;
        v22 = v159;
        v23 = v161[5];
        if (v23)
        {
          v24 = v23;
        }

        v139 = v23;
        _Block_object_dispose(&v160, 8);

        if ((!v22 || (vmaxv_u16(vmovn_s32(vtstq_s32(v157, v157))) & 1) == 0) && !v23)
        {
          if (v16)
          {
            v124 = v16[3];
          }

          else
          {
            v124 = 0;
          }

          v125 = v124;
          v126 = _NRCopyLogObjectForNRUUID();
          v127 = _NRLogIsLevelEnabled();

          if (!v127)
          {
            v68 = 0;
            v15 = 0;
            goto LABEL_179;
          }

          if (v16)
          {
            v128 = v16[3];
          }

          else
          {
            v128 = 0;
          }

          v140 = v128;
          obja = _NRCopyLogObjectForNRUUID();
          IPv6AddrString = createIPv6AddrString();
          _NRLogWithArgs();

          v139 = 0;
          v15 = 0;

          goto LABEL_177;
        }

        if (v144)
        {
          if (vmaxv_u16(vmovn_s32(vtstq_s32(v157, v157))))
          {
            v140 = createIPv6AddrString();
            [v140 UTF8String];
          }

          else if (v23)
          {
            v140 = [v23 hostname];
            v69 = [v23 port];
            [v69 intValue];

            [v140 UTF8String];
          }

          else
          {
            v140 = 0;
            [0 UTF8String];
          }

          obj = nw_endpoint_create_host_with_numeric_port();
          if (!obj)
          {
            if (v16)
            {
              v92 = v16[3];
            }

            else
            {
              v92 = 0;
            }

            v93 = v92;
            v94 = _NRCopyLogObjectForNRUUID();
            v95 = _NRLogIsLevelEnabled();

            if (!v95)
            {
              v15 = 0;

LABEL_177:
LABEL_178:
              v68 = v139;
              goto LABEL_179;
            }

            if (v16)
            {
              v96 = v16[3];
            }

            else
            {
              v96 = 0;
            }

            v137 = v96;
            masque = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
            v15 = 0;
            goto LABEL_175;
          }

          if (a7)
          {
            objc_storeStrong(a7, obj);
          }

          v137 = nw_array_create();
          masque = nw_proxy_hop_create_masque();
          nw_proxy_hop_set_supports_raw_ip();
          nw_proxy_hop_set_supports_l4s();
          [v144 bytes];
          [v144 length];
          nw_proxy_hop_set_server_raw_public_key();
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v73 = qword_1002290B8;
          v74 = v73;
          if (v73)
          {
            v75 = *(v73 + 15);
          }

          else
          {
            v75 = 0;
          }

          v76 = v75;
          nw_proxy_hop_set_client_identity_reference();

          nw_proxy_hop_set_client_identity_is_raw_public_key();
          nw_proxy_hop_add_extra_header();
          nw_proxy_hop_add_extra_header();
          nw_proxy_hop_add_extra_header();
          if (v16)
          {
            v77 = v16[18];
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;
          v79 = [v78 proxyProviderCriteria];
          v80 = [v79 excludeClientApplication];

          if ((v80 & 1) == 0)
          {
            nw_proxy_hop_add_extra_header();
          }

          if (v16)
          {
            v81 = v16[18];
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;
          v83 = [v82 proxyProviderCriteria];
          v84 = [v83 allowsListenerClients];

          if (v84)
          {
            nw_proxy_hop_set_supports_udp_listen();
          }

          if (v16)
          {
            v85 = v16[18];
          }

          else
          {
            v85 = 0;
          }

          v86 = v85;
          v87 = [v86 proxyProviderCriteria];
          v88 = [v87 allowsDemuxForwarding];

          if (v88)
          {
            nw_proxy_hop_set_enable_demux();
          }

          nw_proxy_hop_add_extra_header();
          if (v16)
          {
            v89 = v16[18];
          }

          else
          {
            v89 = 0;
          }

          v90 = v89;
          v91 = [v90 proxyProviderCriteria];
          if ([v91 hasProxyCriteriaAssigningTokens])
          {

LABEL_123:
            nw_proxy_hop_add_token_header_with_agent_type();
            goto LABEL_136;
          }

          if (sub_100169428(v16) && v16)
          {
            v97 = (v16[6] & 4) == 0;

            if (!v97)
            {
              goto LABEL_123;
            }
          }

          else
          {
          }

LABEL_136:
          nw_proxy_hop_set_masque_version();
          if (sub_100169428(v16))
          {
            nw_proxy_hop_set_idle_timeout();
            nw_proxy_hop_disable_keepalives();
          }

          if (sub_100169428(v16))
          {
            nw_proxy_hop_set_ignore_path_errors();
          }

          nw_array_append();
          default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
          if (default_privacy_proxy)
          {
            v99 = objc_alloc_init(NSMutableSet);
            [v99 addObjectsFromArray:&off_10020A108];
            if (v140)
            {
              [v99 addObject:v140];
            }

            v155 = 0u;
            v156 = 0u;
            v153 = 0u;
            v154 = 0u;
            v100 = v99;
            v101 = [v100 countByEnumeratingWithState:&v153 objects:&v160 count:16];
            if (v101)
            {
              v102 = *v154;
              do
              {
                for (i = 0; i != v101; i = i + 1)
                {
                  if (*v154 != v102)
                  {
                    objc_enumerationMutation(v100);
                  }

                  nw_proxy_config_add_excluded_domain(default_privacy_proxy, [*(*(&v153 + 1) + 8 * i) UTF8String]);
                }

                v101 = [v100 countByEnumeratingWithState:&v153 objects:&v160 count:16];
              }

              while (v101);
            }

            nw_proxy_config_set_is_privacy_proxy();
            nw_proxy_config_set_is_companion_proxy();
            if (sub_100169428(v16))
            {
              nw_proxy_config_set_prohibit_direct();
            }

            v136 = objc_alloc_init(NSUUID);
            v166 = 0uLL;
            [v136 getUUIDBytes:&v166];
            nw_proxy_config_set_identifier();
            v15 = nw_proxy_config_publish();
            if (v16)
            {
              v104 = v16[3];
            }

            else
            {
              v104 = 0;
            }

            v105 = v104;
            v106 = _NRCopyLogObjectForNRUUID();
            if (v15)
            {
              v107 = _NRLogIsLevelEnabled();

              if (v107)
              {
                if (v16)
                {
                  v108 = v16[3];
                }

                else
                {
                  v108 = 0;
                }

                v109 = v108;
                v110 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              if (location)
              {
                objc_storeStrong(location, default_privacy_proxy);
              }

              v111 = v136;
              v112 = *a5;
              *a5 = v111;
              goto LABEL_172;
            }

            v118 = _NRLogIsLevelEnabled();

            if (v118)
            {
              if (v16)
              {
                v119 = v16[3];
              }

              else
              {
                v119 = 0;
              }

              v112 = v119;
              v120 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();

LABEL_172:
            }
          }

          else
          {
            if (v16)
            {
              v113 = v16[3];
            }

            else
            {
              v113 = 0;
            }

            v114 = v113;
            v115 = _NRCopyLogObjectForNRUUID();
            v116 = _NRLogIsLevelEnabled();

            if (!v116)
            {
              v15 = 0;
              goto LABEL_174;
            }

            if (v16)
            {
              v117 = v16[3];
            }

            else
            {
              v117 = 0;
            }

            v100 = v117;
            v136 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
            v15 = 0;
          }

LABEL_174:
LABEL_175:

          goto LABEL_176;
        }

        if (v16)
        {
          v129 = v16[3];
        }

        else
        {
          v129 = 0;
        }

        v130 = v129;
        v131 = _NRCopyLogObjectForNRUUID();
        v132 = _NRLogIsLevelEnabled();

        if (!v132)
        {
          v144 = 0;
          v15 = 0;
          goto LABEL_178;
        }

        if (v16)
        {
          v133 = v16[3];
        }

        else
        {
          v133 = 0;
        }

        v140 = v133;
        obj = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v144 = 0;
      v15 = 0;
LABEL_176:

      goto LABEL_177;
    }

    *&v153 = 0;
    *(&v153 + 1) = &v153;
    *&v154 = 0x2020000000;
    BYTE8(v154) = 0;
    v160 = 0;
    v161 = &v160;
    v162 = 0x3032000000;
    v163 = sub_100143EB0;
    v164 = sub_100143EC0;
    v165 = 0;
    if ([v14 length] >= 0x15)
    {
      v25 = [v14 subdataWithRange:{18, objc_msgSend(v14, "length") - 18}];
      NRTLVParse();
    }

    v166 = v151;
    v26 = bswap32(v152) >> 16;
    if (vmaxv_u16(vmovn_s32(vtstq_s32(v166, v166))))
    {
      v27 = createIPv6AddrString();
      if (!v148)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v36 = v161[5];
      if (v36)
      {
        v27 = [v36 hostname];
        v37 = [v161[5] port];
        LOWORD(v26) = [v37 intValue];

        if (!v148)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v27 = 0;
        if (!v148)
        {
          goto LABEL_40;
        }
      }
    }

    if ([v27 hasPrefix:@"fe80"])
    {
      v38 = [[NSString alloc] initWithFormat:@"%@%%%@", v27, v148];

      v27 = v38;
    }

LABEL_40:
    if (!v26)
    {
      v122 = sub_100140094();
      v123 = _NRLogIsLevelEnabled();

      if (!v123)
      {
        v15 = 0;
        goto LABEL_98;
      }

      v42 = sub_100140094();
      v146 = createIPv6AddrString();
      _NRLogWithArgs();
      v15 = 0;
LABEL_97:

LABEL_98:
      _Block_object_dispose(&v160, 8);

      _Block_object_dispose(&v153, 8);
      goto LABEL_180;
    }

    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v39 = qword_100229370;
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v41 = qword_100229370;
      _NRLogWithArgs();
    }

    v42 = objc_alloc_init(NSMutableSet);
    [v42 addObjectsFromArray:&off_10020A108];
    v146 = sub_100172FC0(v150);
    if (v146)
    {
      [v42 addObjectsFromArray:v146];
    }

    if (v27)
    {
      [v42 addObject:v27];
    }

    v43 = objc_alloc_init(NSMutableDictionary);
    [v43 setObject:v27 forKeyedSubscript:kSCPropNetProxiesSOCKSProxy];
    v44 = [NSNumber numberWithUnsignedShort:v26];
    [v43 setObject:v44 forKeyedSubscript:kSCPropNetProxiesSOCKSPort];

    [v43 setObject:&off_100209DE8 forKeyedSubscript:kSCPropNetProxiesSOCKSEnable];
    v45 = [v42 allObjects];
    [v43 setObject:v45 forKeyedSubscript:kSCPropNetProxiesExceptionsList];

    [v43 setObject:@"shoes" forKeyedSubscript:@"kCFStreamPropertySOCKSVersion"];
    if (_os_feature_enabled_impl() && *(*(&v153 + 1) + 24) == 1)
    {
      [v43 setObject:&off_100209DE8 forKeyedSubscript:@"SHOESUDPAssociate"];
    }

    if (v150 && (v150[6] & 4) != 0)
    {
      [v43 setObject:@"com.apple.datausage.alt-account" forKeyedSubscript:@"SHOESFixedBundleID"];
    }

    if (a7)
    {
      v46 = [NSNumber numberWithUnsignedShort:v26];
      v47 = [v46 stringValue];
      v48 = [NWAddressEndpoint endpointWithHostname:v27 port:v47];
      v49 = [v48 copyCEndpoint];
      v50 = *a7;
      *a7 = v49;
    }

    v51 = [[NEProxyConfigurationNetworkAgent alloc] initWithProxyConfiguration:v43];
    [v51 setActive:1];
    v52 = +[NSUUID UUID];
    [v51 setAgentUUID:v52];

    [v51 setVoluntary:0];
    [v51 setUserActivated:0];
    [v51 setKernelActivated:0];
    v53 = [v51 agentUUID];
    v54 = *a5;
    *a5 = v53;

    v55 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v56 = *a4;
    *a4 = v55;

    if (*a4)
    {
      if ([*a4 registerNetworkAgent:v51])
      {
        v57 = v150;
        if (v150)
        {
          v57 = v150[18];
        }

        v58 = v57;
        v59 = [v58 hasPoliciesForProxyCriteria];

        if ((v59 & 1) == 0)
        {
          v60 = v150;
          if (v150)
          {
            v60 = v150[18];
          }

          v61 = v60;
          if ([v61 hasCompanionDatapath])
          {
            v62 = [*a4 addNetworkAgentToInterfaceNamed:v148];

            if ((v62 & 1) == 0)
            {
              v63 = sub_100140094();
              v15 = _NRLogIsLevelEnabled();

              if (v15)
              {
                v64 = sub_100140094();
                _NRLogWithArgs();
LABEL_80:
                v15 = 0;
LABEL_94:
              }

LABEL_96:

              goto LABEL_97;
            }
          }

          else
          {
          }
        }

        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        v70 = qword_100229370;
        v71 = _NRLogIsLevelEnabled();

        if (!v71)
        {
          v15 = 1;
          goto LABEL_96;
        }

        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        v64 = qword_100229370;
        v135 = [v51 agentUUID];
        _NRLogWithArgs();

        v15 = 1;
        goto LABEL_94;
      }

      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v67 = qword_100229370;
      v15 = _NRLogIsLevelEnabled();

      if (!v15)
      {
        goto LABEL_96;
      }

      if (qword_100229378 == -1)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v65 = qword_100229370;
      v66 = _NRLogIsLevelEnabled();

      if ((v66 & 1) == 0)
      {
        v15 = 0;
        goto LABEL_96;
      }

      if (qword_100229378 == -1)
      {
LABEL_79:
        v64 = qword_100229370;
        _NRLogWithArgs();
        goto LABEL_80;
      }
    }

    dispatch_once(&qword_100229378, &stru_1001FC6A0);
    goto LABEL_79;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_180:

  return v15;
}

void sub_100143E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100143EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100143EC8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __rev16(*(a2 + 1));
  v4 = *a2;
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      if (*(a2 + 1))
      {
        v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }
    }

    return 1;
  }

  if (*(a2 + 1))
  {
    v8 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v9 = sub_10013D760(v8, 1, 0, 0);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    return 1;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
    return 0;
  }

  return result;
}

uint64_t sub_100144010(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 != 3)
  {
    if (v3 == 1)
    {
      if (!*(a2 + 1))
      {
        v10 = *(*(a1 + 32) + 8);
        result = 1;
        *(v10 + 24) = 1;
        return result;
      }

      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100229378 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      return result;
    }

    return 1;
  }

  if (*(a2 + 1))
  {
    v2 = *(a2 + 1);
    v6 = [[NSData alloc] initWithBytes:a2 + 3 length:__rev16(v2)];
    v7 = sub_10013D760(v6, 1, 0, 0);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return 1;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229378 == -1)
    {
LABEL_17:
      _NRLogWithArgs();
      return 0;
    }

LABEL_19:
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100144910(uint64_t a1, void *a2)
{
  v2 = a2;
  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs();
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
LABEL_37:
    v4 = Nexus;
  }

  else
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs();
    }

    v4 = 0;
  }

  return v4;
}

void sub_100145178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      v9 = "";
      _NRLogWithArgs();
    }

    sub_10013C2A8(*(a1 + 32), @"Leak", @"NEIKEv2Session", 0, 0, v5, v6, v7, v9);
    WeakRetained = v10;
  }
}

uint64_t sub_100145824(uint64_t a1)
{
  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v12 = *(a1 + 32);
    v11 = "";
    _NRLogWithArgs();
  }

  v2 = sub_10013BCD8(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    v17 = v2;
    if ([v2 isEqual:*(a1 + 40)])
    {
      v4 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_100140094();
        v14 = *(a1 + 32);
        v16 = *(a1 + 40);
        v11 = "";
        _NRLogWithArgs();
      }

      sub_10013C2A8(*(a1 + 48), @"Leak", @"Interface", 0, 0, v6, v7, v8, v11);
      goto LABEL_15;
    }

    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v2 = _NRLogIsLevelEnabled();
    v3 = v17;
    if (v2)
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v15 = *(a1 + 40);
      v13 = *(a1 + 32);
      v2 = _NRLogWithArgs();
LABEL_15:
      v3 = v17;
    }
  }

  return _objc_release_x1(v2, v3);
}

void sub_100145ACC(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classD"];
  v2 = qword_1002292E0;
  qword_1002292E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100145B14(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classC"];
  v2 = qword_1002292F0;
  qword_1002292F0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145B5C()
{
  if (qword_100229308 != -1)
  {
    dispatch_once(&qword_100229308, &stru_1001FC598);
  }

  v1 = qword_100229300;

  return v1;
}

void sub_100145BB0(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classA"];
  v2 = qword_100229300;
  qword_100229300 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145BF8()
{
  if (qword_100229318 != -1)
  {
    dispatch_once(&qword_100229318, &stru_1001FC5B8);
  }

  v1 = qword_100229310;

  return v1;
}

void sub_100145C4C(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.ids"];
  v2 = qword_100229310;
  qword_100229310 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145C94()
{
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v1 = qword_100229320;

  return v1;
}

void sub_100145CE8(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.oobk"];
  v2 = qword_100229320;
  qword_100229320 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100145D30(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.control"];
  v2 = qword_100229330;
  qword_100229330 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145D78()
{
  if (qword_100229348 != -1)
  {
    dispatch_once(&qword_100229348, &stru_1001FC618);
  }

  v1 = qword_100229340;

  return v1;
}

void sub_100145DCC(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.saltedPin"];
  v2 = qword_100229340;
  qword_100229340 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145E14()
{
  if (qword_100229358 != -1)
  {
    dispatch_once(&qword_100229358, &stru_1001FC638);
  }

  v1 = qword_100229350;

  return v1;
}

void sub_100145E68(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.randomKey"];
  v2 = qword_100229350;
  qword_100229350 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145EB0()
{
  if (qword_100229368 != -1)
  {
    dispatch_once(&qword_100229368, &stru_1001FC658);
  }

  v1 = qword_100229360;

  return v1;
}

void sub_100145F04(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.previousPairingKey"];
  v2 = qword_100229360;
  qword_100229360 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100145F4C(int8x16_t *a1)
{
  v6 = *a1;
  v1 = veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v6.i32[0] = v1.i32[0] ^ v1.i32[1];
  v2 = [[NSData alloc] initWithBytes:&v6 length:16];
  v3 = [v2 base64EncodedStringWithOptions:{0, v6.i64[0]}];
  v4 = [v3 substringToIndex:6];

  return v4;
}

id sub_100146010(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x11)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_100143EB0;
    v9 = sub_100143EC0;
    v10 = 0;
    if ([v1 length] >= 0x15)
    {
      v3 = [v1 subdataWithRange:{18, objc_msgSend(v1, "length") - 18}];
      NRTLVParse();
    }

    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs();
    }

    v2 = 0;
  }

  return v2;
}

void sub_1001461C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001461E0(uint64_t a1, uint64_t a2)
{
  if (*a2 == 4)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v4 = [[NRDeviceProxyProviderCriteria alloc] initWithReceivedData:v3];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

id sub_100146274(char a1)
{
  v2 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  [v2 setAllowRedirect:0];
  [v2 setDisableSwitchToNATTPorts:1];
  [v2 setNonceSize:32];
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1400;
  }

  [v2 setMaximumPacketSize:v3];
  [v2 setStrictNonceSizeChecks:1];

  v4 = objc_alloc_init(NEIKEv2IKESAProposal);
  v5 = sub_10014658C();
  [v4 setEncryptionProtocols:v5];

  v6 = [[NEIKEv2PRFProtocol alloc] initWithType:7];
  v18 = v6;
  v7 = [NSArray arrayWithObjects:&v18 count:1];

  [v4 setPrfProtocols:v7];
  v8 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v18 = v8;
  v9 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:2];

  [v4 setKemProtocols:v10];
  v11 = [[NEIKEv2KEMProtocol alloc] initWithMethod:37];
  v12 = v11;
  if (a1)
  {
    v20 = v11;
    v21 = &off_100209E00;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v21 count:1];
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      v14 = 0;
      goto LABEL_12;
    }

    v20 = &off_100209E00;
    v18 = v12;
    v13 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    v19 = v13;
    v15 = [NSArray arrayWithObjects:&v18 count:2];
    v21 = v15;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

LABEL_12:
  [v4 setAdditionalKEMProtocols:v14];

  v18 = v4;
  v16 = [NSArray arrayWithObjects:&v18 count:1];

  [v2 setProposals:v16];
  [v2 setRequestChildlessSA:1];
  return v2;
}

uint64_t sub_10014658C()
{
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  _NRIsAppleInternal();
  v1 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:5];
  v5[0] = v1;
  v2 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:6];
  v5[1] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

id sub_100146654(void *a1, int a2)
{
  v3 = a1;
  v4 = sub_100146840(0);
  if (v3 && v3[8] >= 0x18u && _os_feature_enabled_impl())
  {
    v5 = [[NEIKEv2KEMProtocol alloc] initWithMethod:36];
    v21 = v5;
    v22 = &off_100209E00;
    v6 = [NSArray arrayWithObjects:&v21 count:1];
    v23 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v7 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  if (a2)
  {
    v8 = 21599;
  }

  else
  {
    v8 = 0;
  }

  *(&v16 + 1) = 0;
  v17 = 0uLL;
  v9 = [v4 proposals];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 setLifetimeSeconds:v8];
        [v14 setAdditionalKEMProtocols:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v4;
}

id sub_100146840(uint64_t a1)
{
  v2 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  [v2 setAllowRedirect:0];
  [v2 setDisableSwitchToNATTPorts:1];
  [v2 setNonceSize:32];
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1400;
  }

  [v2 setMaximumPacketSize:v3];
  [v2 setStrictNonceSizeChecks:1];

  v4 = objc_alloc_init(NEIKEv2IKESAProposal);
  v5 = sub_10014658C();
  [v4 setEncryptionProtocols:v5];

  v6 = [[NEIKEv2PRFProtocol alloc] initWithType:7];
  v18[0] = v6;
  v7 = [NSArray arrayWithObjects:v18 count:1];

  [v4 setPrfProtocols:v7];
  v8 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v18[0] = v8;
  v9 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v18[1] = v9;
  v10 = [NSArray arrayWithObjects:v18 count:2];

  [v4 setKemProtocols:v10];
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v11 = sub_100146B2C();
      [v4 setAdditionalKEMProtocols:v11];
    }

    [v4 setLifetimeSeconds:0];
    v17 = v4;
    v12 = [NSArray arrayWithObjects:&v17 count:1];

    [v2 setProposals:v12];
    [v2 setRequestChildlessSA:1];
    v13 = [NSSet alloc];
    v14 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:5];
    v15 = [v13 initWithObjects:{v14, 0}];
    [v2 setExtraSupportedSignatureHashes:v15];
  }

  else
  {
    [v4 setLifetimeSeconds:0];
    v17 = v4;
    v14 = [NSArray arrayWithObjects:&v17 count:1];

    [v2 setProposals:v14];
  }

  [v2 setPreferInitiatorProposalOrder:a1];
  return v2;
}

uint64_t sub_100146B2C()
{
  v7 = &off_100209E00;
  v0 = [[NEIKEv2KEMProtocol alloc] initWithMethod:37];
  v1 = [[NEIKEv2KEMProtocol alloc] initWithMethod:{36, v0}];
  v6[1] = v1;
  v2 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
  v6[2] = v2;
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v4;
}

void sub_100146C38(void *a1)
{
  v1 = a1;
  [v1 setMaximumPacketSize:2000];
  [v1 setHeaderOverhead:5];
}

id sub_100146C84(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v6 = sub_100146D34(0, a2);
    sub_100147008(v6, v5, a3);
  }

  else
  {
    v8 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100140094();
      _NRLogWithArgs();
    }

    v6 = 0;
  }

  return v6;
}

id sub_100146D34(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
  [v4 setMode:1];
  v5 = +[NEIKEv2TrafficSelector copyAllIPv6];
  v24[0] = v5;
  v6 = +[NEIKEv2TrafficSelector copyAllIPv4];
  v24[1] = v6;
  v7 = [NSArray arrayWithObjects:v24 count:2];
  [v4 setLocalTrafficSelectors:v7];

  v8 = +[NEIKEv2TrafficSelector copyAllIPv6];
  v23[0] = v8;
  v9 = +[NEIKEv2TrafficSelector copyAllIPv4];
  v23[1] = v9;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  [v4 setRemoteTrafficSelectors:v10];

  v11 = objc_alloc_init(NEIKEv2ChildSAProposal);
  [v11 setProtocol:3];
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  _NRIsAppleInternal();
  v13 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:9];
  v25 = v13;
  v14 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:7];
  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v25 count:2];

  [v11 setEncryptionProtocols:v15];
  v16 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v25 = v16;
  v17 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v26 = v17;
  v18 = [NSArray arrayWithObjects:&v25 count:2];

  [v11 setKemProtocols:v18];
  if (a1 && _os_feature_enabled_impl())
  {
    v19 = sub_100146B2C();
    [v11 setAdditionalKEMProtocols:v19];
  }

  [v11 setLifetimeSeconds:0];
  v25 = v11;
  v20 = [NSArray arrayWithObjects:&v25 count:1];

  [v4 setProposals:v20];
  [v4 setSequencePerTrafficClass:a2];
  if (a2)
  {
    [v4 setSequencePerTrafficClass:1];
    v21 = 16;
  }

  else
  {
    v21 = 256;
  }

  [v4 setReplayWindowSize:v21];
  [v4 setPreferInitiatorProposalOrder:a1];
  return v4;
}

void sub_100147008(void *a1, unsigned __int16 *a2, int a3)
{
  v5 = a1;
  if (a2)
  {
    if (a2[8] >= 0x18u && _os_feature_enabled_impl())
    {
      v6 = [[NEIKEv2KEMProtocol alloc] initWithMethod:36];
      v20 = v6;
      v21 = &off_100209E00;
      v7 = [NSArray arrayWithObjects:&v20 count:1];
      v22 = v7;
      a2 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    else
    {
      a2 = 0;
    }
  }

  v17 = 0u;
  v18 = 0u;
  if (a3)
  {
    v8 = 21221;
  }

  else
  {
    v8 = 0;
  }

  *(&v15 + 1) = 0;
  v16 = 0uLL;
  v9 = [v5 proposals];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        [v14 setLifetimeSeconds:v8];
        [v14 setAdditionalKEMProtocols:a2];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

id sub_1001471E8(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = sub_100146D34(0, 0);
    [v4 setMode:2];
    [v4 setReplayWindowSize:4];
    sub_100147008(v4, v3, a2);
  }

  else
  {
    v6 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      _NRLogWithArgs();
    }

    v4 = 0;
  }

  return v4;
}

id sub_1001472AC()
{
  v0 = sub_100146D34(1, 0);
  [v0 setMode:2];
  [v0 setReplayWindowSize:4];
  return v0;
}

id sub_1001472F0(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NEIKEv2SessionConfiguration);
  [v7 setNegotiateMOBIKE:0];
  [v7 setNatTraversalKeepaliveDisabled:1];
  [v7 setDeadPeerDetectionEnabled:0];
  [v7 setIdleTimeoutEnabled:0];
  [v7 setConfigurationReply:0];
  v8 = [v5 copy];
  [v7 setLocalIdentifier:v8];

  if (a1)
  {
    v9 = [v5 copy];
    [v7 setRemoteIdentifier:v9];
  }

  v10 = [v6 copy];
  [v7 setAuthenticationProtocol:v10];

  v11 = [v6 copy];
  [v7 setRemoteAuthentication:v11];

  return v7;
}

void *sub_100147400(int a1, void *a2, int a3)
{
  v5 = a2;
  switch(a3)
  {
    case 1:
      if (qword_100229308 != -1)
      {
        dispatch_once(&qword_100229308, &stru_1001FC598);
      }

      String = qword_100229300;
      if (v5)
      {
        v7 = 11;
        goto LABEL_16;
      }

      goto LABEL_75;
    case 3:
      if (qword_1002292F8 != -1)
      {
        dispatch_once(&qword_1002292F8, &stru_1001FC578);
      }

      String = qword_1002292F0;
      if (v5)
      {
        v7 = 10;
        goto LABEL_16;
      }

LABEL_75:
      v12 = v5 == 0;
      v10 = [NEIKEv2AuthenticationProtocol alloc];
      v8 = 0;
      goto LABEL_19;
    case 4:
      if (qword_1002292E8 != -1)
      {
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
      }

      String = qword_1002292E0;
      if (v5)
      {
        v7 = 9;
LABEL_16:
        v8 = v5[v7];
        v9 = *(v5 + 8);
        v10 = [NEIKEv2AuthenticationProtocol alloc];
        if (v9 >= 0x14)
        {
          v11 = [v10 initWithDigitalSignature:3];
          v12 = 0;
          goto LABEL_20;
        }

        v12 = 0;
LABEL_19:
        v11 = [v10 initWithNonStandardDigitalSignature:3];
LABEL_20:
        v13 = sub_1001472F0(a1, String, v11);
        v14 = v13;
        if (v8)
        {
          v15 = v8[1];
          v16 = v15;
          if (v15)
          {
            v17 = v15[2];
          }

          else
          {
            v17 = 0;
          }

          [v14 setRemotePublicKeyRef:v17];

          v18 = v8[2];
          v19 = v18;
          if (v18)
          {
            v20 = v18[2];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          [v13 setRemotePublicKeyRef:0];
          v19 = 0;
          v20 = 0;
        }

        [v14 setLocalPrivateKeyRef:v20];

        if (a1)
        {
          if (!v12)
          {
            if (*(v5 + 8) >= 0x14u)
            {
              v21 = [v14 remoteIdentifier];
              v22 = v5[3];
              v23 = v21;
              v24 = v22;
              v25 = objc_opt_self();
              if (v23)
              {
                if (v24)
                {
                  v26 = sub_100163B2C(v25, v24, 0);
                  v27 = v23;
                  if (v26 && (v28 = v26[8]) != 0)
                  {
                    v56 = String;
                    v57 = v24;
                    v55 = v23;
                    memset(v61, 0, sizeof(v61));
                    v60 = 0u;
                    v59 = 1;
                    v29 = v28[1];
                    v30 = v27;
                    v31 = v28;
                    [v29 getUUIDBytes:&v60];

                    arc4random_buf(v61, 0x4FuLL);
                    v32 = [[NSData alloc] initWithBytes:&v59 length:96];
                    v33 = [NEIKEv2EncryptedKeyIDIdentifier alloc];
                    v54 = v30;
                    v34 = [v30 identifierData];
                    v35 = v26[8];
                    if (v35)
                    {
                      v36 = v35[2];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v37 = v35;
                    v38 = [v33 initWithKeyID:v32 aad:v34 key:v36];

                    v23 = v55;
                    String = v56;
                    v24 = v57;
                    v27 = v54;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  goto LABEL_46;
                }

                v58 = 0;
                v52 = sub_10015B480();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
LABEL_73:
                  v26 = sub_10015B480();
                  _NRLogWithArgs();
                  v38 = 0;
                  v24 = v58;
LABEL_46:

LABEL_47:
                  if (v38)
                  {
                    [v14 setLocalIdentifier:v38];
                  }

                  goto LABEL_50;
                }
              }

              else
              {
                v58 = v24;
                v50 = sub_10015B480();
                v51 = _NRLogIsLevelEnabled();

                if (v51)
                {
                  goto LABEL_73;
                }
              }

              v38 = 0;
              v24 = v58;
              goto LABEL_47;
            }

LABEL_50:
            v39 = v5[18];
LABEL_51:
            v40 = v39;
            if (([v40 allowsDeadPeerDetection] & 1) == 0)
            {
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v41 = qword_1002290B8;
              if (!v41 || v41[8] != 1)
              {
                if (qword_100229238 != -1)
                {
                  v49 = v41;
                  dispatch_once(&qword_100229238, &stru_1001FC340);
                  v41 = v49;
                }

                v45 = byte_100229230;

                if ((v45 & 1) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_58;
              }
            }

LABEL_58:
            v42 = v14;
            v43 = v42;
            if (v42)
            {
              [v42 setDeadPeerDetectionEnabled:1];
              [v43 setDeadPeerDetectionInterval:30];
              [v43 setDeadPeerDetectionRetryIntervalMilliseconds:3000];
              [v43 setDeadPeerDetectionMaxRetryCount:3];
            }

            else
            {
              v46 = sub_100140094();
              v47 = _NRLogIsLevelEnabled();

              if (v47)
              {
                v48 = sub_100140094();
                _NRLogWithArgs();
              }
            }

LABEL_61:
LABEL_62:

            goto LABEL_63;
          }
        }

        else if (!v12)
        {
          goto LABEL_50;
        }

        v39 = 0;
        goto LABEL_51;
      }

      goto LABEL_75;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v8 = qword_100229370;
    String = NRDataProtectionClassCreateString();
    _NRLogWithArgs();
    v14 = 0;
    goto LABEL_62;
  }

  v14 = 0;
LABEL_63:

  return v14;
}

id sub_100147A80()
{
  v6 = 0;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v0 = qword_1002294C0;
  if (v0)
  {
    v1 = v0;
    dispatch_assert_queue_V2(*(v0 + 2));
    if ((v1[10] & 1) == 0)
    {
      v1[10] = 1;
      if (v1[8] == 4)
      {
        sub_100181020(v1);
        if (v1[9] == 1)
        {
          v1[8] = 3;
          sub_100181284(v1);
        }
      }
    }

    v2 = v1[8] & 0xFD;

    if (v2 == 1)
    {
      v6 = 0x80;
    }
  }

  v3 = [[NSData alloc] initWithBytes:&v6 length:1];
  v4 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48701 notifyData:v3];

  return v4;
}

BOOL sub_100147B98(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[18];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    if (v2)
    {
      v5 = v2[18];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 proxyCapability] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_100147C1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v53 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v55 = sub_100140094();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v5 = &v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = *__error();
    v57 = _os_log_pack_fill();
    *v57 = 136446210;
    *(v57 + 4) = "NRLinkCopyProxyPrivateNotify";
    sub_100140094();
    _NRLogAbortWithPack();
LABEL_49:
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    goto LABEL_4;
  }

  v5 = v4;
  if (!sub_1001655D8(v3))
  {
    port = 62742;
    goto LABEL_10;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    goto LABEL_49;
  }

LABEL_4:
  v6 = qword_1002290B8;
  v7 = v6;
  if (v6 && *(v6 + 19))
  {
    port = nw_masque_server_get_port();
  }

  else
  {
    port = 0;
  }

LABEL_10:
  v67 = 0uLL;
  v68 = 0;
  if (!v5)
  {
    v66 = 0uLL;
    sub_100168638(v3, &v66);
    v67 = v66;
    v68 = __rev16(port);
  }

  v9 = [[NSMutableData alloc] initWithBytes:&v67 length:18];
  if (_os_feature_enabled_impl() && *(v3 + 8) >= 0x11u)
  {
    v10 = objc_alloc_init(NSMutableData);
    NRTLVAdd();
    [v9 appendData:v10];
  }

  if (sub_1001655D8(v3))
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 13);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if ([v14 length])
    {
      v15 = objc_alloc_init(NSMutableData);
      NRTLVAddData();
      [v9 appendData:v15];
    }

    else
    {
      v16 = v3[3];
      v17 = v3;
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      v3 = v17;
      if (!v19)
      {
LABEL_25:

        goto LABEL_26;
      }

      v15 = v17[3];
      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      v3 = v17;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v5)
  {
    v21 = objc_alloc_init(NSMutableData);
    v22 = sub_10013D308(v5, port, 0);
    NRTLVAddData();
    [v9 appendData:v21];
  }

  v23 = v3[18];
  v24 = [v23 hasPoliciesForProxyCriteria];

  if (v24)
  {
    v59 = v9;
    v60 = v5;
    v58 = objc_alloc_init(NSMutableData);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61 = v3;
    v25 = v3[18];
    v26 = [v25 proxyProviderCriteria];
    v27 = [v26 proxyUsageRules];

    v28 = [v27 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v63;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v62 + 1) + 8 * i);
          v33 = objc_alloc_init(NSMutableData);
          v34 = [v32 matchResultAccountID];
          v35 = [v34 length];

          if (v35)
          {
            v36 = [v32 matchResultAccountID];
            v37 = [v36 dataUsingEncoding:4];

            v38 = sub_100009074([NRToken alloc], 1, 51, v37);
            v39 = sub_100009284(v38);
            NRTLVAddData();
          }

          v40 = [v32 matchResultBundleID];
          v41 = [v40 length];

          if (v41)
          {
            v42 = [v32 matchResultBundleID];
            v43 = [v42 dataUsingEncoding:4];

            v44 = sub_100009074([NRToken alloc], 1, 52, v43);
            v45 = sub_100009284(v44);
            NRTLVAddData();
          }

          if ([v33 length])
          {
            [v32 addMatchToken:v33];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v29);
    }

    v3 = v61;
    v46 = v61[18];
    v47 = [v46 proxyProviderCriteria];
    v48 = [v47 copySendData];

    v49 = [v48 length];
    v9 = v59;
    v50 = v58;
    if (v49)
    {
      NRTLVAddData();
      [v9 appendData:v50];
    }

    v5 = v60;
  }

  v51 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50701 notifyData:v9];

  return v51;
}

id sub_1001482F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v12 = a1;
  v13 = a2;
  v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
  if (v14)
  {
    goto LABEL_36;
  }

  v6 = &qword_100229000;
  if (qword_100229378 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    if (_NRLogIsLevelEnabled())
    {
      if (v6[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs();
    }

    v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
    if (!v14)
    {
      if (v6[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (v6[111] != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        _NRLogWithArgs();
      }

      v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
      if (!v14)
      {
        if (v6[111] != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (v6[111] != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          _NRLogWithArgs();
        }

        v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
        if (!v14)
        {
          if (v6[111] != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            _NRLogWithArgs();
          }

          v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
          if (!v14)
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (v6[111] != -1)
              {
                dispatch_once(&qword_100229378, &stru_1001FC6A0);
              }

              _NRLogWithArgs();
            }

            v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
            if (!v14)
            {
              if (v6[111] != -1)
              {
                dispatch_once(&qword_100229378, &stru_1001FC6A0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (v6[111] != -1)
                {
                  dispatch_once(&qword_100229378, &stru_1001FC6A0);
                }

                _NRLogWithArgs();
              }

              v22 = sub_100140094();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v24 = sub_100140094();
                _NRLogWithArgs();
              }

              goto LABEL_40;
            }
          }
        }
      }
    }

LABEL_36:
    v15 = v14;
    if ([v14 virtualInterface])
    {
      break;
    }

    v17 = sub_100140094();
    v18 = _NRLogIsLevelEnabled();

    a6 = "NRLinkIPsecNexusCreate";
    if (v18)
    {
      v19 = sub_100140094();
      _NRLogWithArgs();
    }

LABEL_40:
    v12 = _os_log_pack_size();
    v13 = &v25 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "NRLinkIPsecNexusCreate";
    sub_100140094();
    _NRLogAbortWithPack();
LABEL_41:
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  return v15;
}

id *sub_100148B58(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    v17 = sub_100148DB4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    v19 = sub_100148DB4();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
LABEL_10:
      v21 = sub_100148DB4();
      _NRLogWithArgs();

      v15 = 0;
      goto LABEL_6;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_6;
  }

  v27.receiver = a1;
  v27.super_class = NRDevicePreferencesManager;
  v9 = objc_msgSendSuper2(&v27, "init");
  if (!v9)
  {
    v22 = sub_100148DB4();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_100148DB4();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRDevicePreferencesManager initPrefManagerWithQueue:nrUUID:]";
    sub_100148DB4();
    _NRLogAbortWithPack();
  }

  v10 = v9;
  objc_storeStrong(v9 + 3, a2);
  objc_storeStrong(v10 + 2, a3);
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = v10[4];
  v10[4] = v11;

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = v10[5];
  v10[5] = v13;

  a1 = v10;
  v15 = a1;
LABEL_6:

  return v15;
}

id sub_100148DB4()
{
  if (qword_100229388 != -1)
  {
    dispatch_once(&qword_100229388, &stru_1001FC6C0);
  }

  v1 = qword_100229380;

  return v1;
}

void sub_100148E08(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229380;
  qword_100229380 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100148E4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  *(a1 + 8) = 0;
  [*(a1 + 32) allValues];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v3 = v73 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v71;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v71 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v70 + 1) + 8 * i);
        if (v9)
        {
          if ([*(*(&v70 + 1) + 8 * i) linkType] == 1)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableArray);
            }

            [v6 addObject:{v9, v55, v56, v57}];
          }
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v13 = *(a1 + 16);
            v14 = _NRCopyLogObjectForNRUUID();
            v57 = 225;
            v55 = "";
            v56 = "[NRDevicePreferencesManager applyLinkPreferences]";
            _NRLogWithArgs();
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = objc_alloc_init(NRBluetoothLinkPreferences);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v67;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (*(*(&v66 + 1) + 8 * j))
        {
          [v15 combinePreferences:?];
        }

        else
        {
          v21 = *(a1 + 16);
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = *(a1 + 16);
            v25 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v18);
  }

  *(a1 + 8) = [v15 isNotEmpty];
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v26 = qword_1002290B8;
  v27 = v26;
  if (v26)
  {
    v28 = *(a1 + 16);
    v64 = v26;
    v29 = v26[5];
    v30 = v15;
    v31 = v28;
    if (v29)
    {
      v32 = v29;
      v33 = v29[3];
      dispatch_assert_queue_V2(v33);

      if (v31)
      {
        v34 = sub_100163A30(NRDLocalDevice, v31);
        v35 = v34;
        if (!v34)
        {
          v53 = sub_10002D6B4();
          v54 = _NRLogIsLevelEnabled();

          if (!v54)
          {
            v27 = v64;
            goto LABEL_75;
          }

          v36 = sub_10002D6B4();
          _NRLogWithArgs();
          v27 = v64;
          goto LABEL_74;
        }

        v36 = *(v34 + 32);
        p_vtable = NRSCDInterfaceConfig.vtable;
        if (v36)
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v58 = v31;
            v59 = v30;
            v57 = 856;
            v55 = "";
            v56 = "[NRLinkManagerBluetooth setLinkRequirements:forNRUUID:]";
            _NRLogWithArgs();
          }

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v62 = v32;
          obj = v32[5];
          v38 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
          v63 = v35;
          if (v38)
          {
            v39 = v38;
            v40 = v36;
            v60 = v31;
            v61 = v30;
            v41 = *v75;
LABEL_44:
            v42 = 0;
            while (1)
            {
              if (*v75 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v74 + 1) + 8 * v42);
              v44 = v43 ? *(v43 + 391) : 0;
              v45 = v44;
              v46 = [v45 isEqual:v40];

              if (v46)
              {
                break;
              }

              if (v39 == ++v42)
              {
                v47 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
                v39 = v47;
                if (!v47)
                {
                  v48 = 0;
                  goto LABEL_56;
                }

                goto LABEL_44;
              }
            }

            v48 = [v43 state] == 8;
LABEL_56:
            v27 = v64;
            v31 = v60;
            v30 = v61;
            v36 = v40;
            p_vtable = (NRSCDInterfaceConfig + 24);
          }

          else
          {
            v48 = 0;
            v27 = v64;
          }

          if (([v30 isNotEmpty] & 1) == 0)
          {

            v30 = 0;
            v48 = 1;
          }

          [v62[14] setObject:v30 forKeyedSubscript:{v36, v55, v56, v57, v58, v59}];
          if (v48)
          {
            sub_10003BD40(v62, v30, v36);
            v35 = v63;
LABEL_74:

LABEL_75:
LABEL_76:

            goto LABEL_77;
          }

          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v49 = p_vtable[493];
          v35 = v63;
          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_74;
          }

          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v50 = p_vtable[493];
        }

        else
        {
          v27 = v64;
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_74;
          }

          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }
        }

        _NRLogWithArgs();
        goto LABEL_74;
      }

      v51 = sub_10002D6B4();
      v52 = _NRLogIsLevelEnabled();

      if (v52)
      {
        v35 = sub_10002D6B4();
        _NRLogWithArgs();
        v27 = v64;
        goto LABEL_75;
      }
    }

    v27 = v64;
    goto LABEL_76;
  }

LABEL_77:
}

void sub_100149594(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*(a1 + 40) allValues];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * v8) allObjects];
        [v3 addObjectsFromArray:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = (a1 + 48);
  if (([v3 isEqual:*(a1 + 48)] & 1) == 0)
  {
    v11 = [NSString alloc];
    v12 = *(a1 + 48);
    v13 = _NRCopyPolicyTrafficClassifiersDescription();
    v14 = _NRCopyPolicyTrafficClassifiersDescription();

    v15 = [v11 initWithFormat:@"%@ to %@", v13, v14];
    v16 = *(a1 + 16);
    v17 = [v16 UUIDString];
    sub_1000059A8(v16, 13001, v17, v15);

    objc_storeStrong(v10, v3);
  }
}

void sub_100149788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8[0] = @"client";
      v8[1] = @"type";
      v9[0] = v3;
      v9[1] = &off_100209E18;
      v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
      sub_100008D1C(@"NetworkRelay BT Link Assertion", v5);
    }

    else
    {
      v6 = sub_100148DB4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_5;
      }

      v5 = sub_100148DB4();
      _NRLogWithArgs();
    }
  }

LABEL_5:
}

void sub_100149890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8[0] = @"client";
      v8[1] = @"type";
      v9[0] = v3;
      v9[1] = &off_100209E30;
      v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
      sub_100008D1C(@"NetworkRelay BT Link Assertion", v5);
    }

    else
    {
      v6 = sub_100148DB4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_5;
      }

      v5 = sub_100148DB4();
      _NRLogWithArgs();
    }
  }

LABEL_5:
}

void sub_100149998(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 16);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 16);
      v10 = _NRCopyLogObjectForNRUUID();
      v14 = v5;
      v15 = v16;
      v13 = 131;
      v11 = "";
      v12 = "[NRDevicePreferencesManager setLinkPreferences:forIdentifier:]";
      _NRLogWithArgs();
    }

    [*(a1 + 32) setObject:v16 forKeyedSubscript:{v5, v11, v12, v13, v14, v15}];
    sub_100148E4C(a1);
  }
}

void sub_100149A78(uint64_t a1, void *a2)
{
  v12 = a2;
  if (a1 && [*(a1 + 32) count])
  {
    v3 = *(a1 + 16);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 16);
      v7 = _NRCopyLogObjectForNRUUID();
      v10 = 143;
      v11 = v12;
      v8 = "";
      v9 = "[NRDevicePreferencesManager removeLinkPreferencesForIdentifier:]";
      _NRLogWithArgs();
    }

    [*(a1 + 32) setObject:0 forKeyedSubscript:{v12, v8, v9, v10, v11}];
    sub_100148E4C(a1);
  }
}

id sub_100149B50(void *a1)
{
  v1 = a1;
  context = xpc_connection_get_context(v1);
  if (!context)
  {
    pid = xpc_connection_get_pid(v1);
    v4 = sub_10013CB6C(pid, 0);
    v5 = +[NSUUID UUID];
    v6 = [NSString alloc];
    v7 = [v5 UUIDString];
    v8 = [v6 initWithFormat:@"%@%s%@", v4, "-", v7];

    v9 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 UTF8String];
      if (!v11)
      {
        v19 = sub_100148DB4();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v21 = sub_100148DB4();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v22 = *__error();
        v23 = _os_log_pack_fill();
        *v23 = 136446210;
        *(v23 + 4) = "strict_strdup";
LABEL_16:
        sub_100148DB4();
        _NRLogAbortWithPack();
      }

      v12 = strdup(v11);
      if (v12)
      {
        context = v12;

        xpc_connection_set_context(v1, context);
        xpc_connection_set_finalizer_f(v1, sub_100149F10);

        goto LABEL_6;
      }

      v24 = sub_100148DB4();
      v25 = _NRLogIsLevelEnabled();

      v17 = "strict_strdup";
      if (v25)
      {
        v26 = sub_100148DB4();
        _NRLogWithArgs();
      }
    }

    else
    {
      v15 = sub_100148DB4();
      v16 = _NRLogIsLevelEnabled();

      v17 = "nrStrDupFromNSString";
      if (v16)
      {
        v18 = sub_100148DB4();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v27 = *__error();
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = v17;
    goto LABEL_16;
  }

LABEL_6:
  v13 = [[NSString alloc] initWithUTF8String:context];

  return v13;
}

void sub_100149F10(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

id sub_10014A248()
{
  if (qword_1002293B0 != -1)
  {
    dispatch_once(&qword_1002293B0, &stru_1001FCB68);
  }

  v1 = qword_1002293A8;

  return v1;
}

void sub_10014A29C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293A8;
  qword_1002293A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10014A6EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v11 = v3;
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 24);
      }

      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v11;
      if (IsLevelEnabled)
      {
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        v10 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();

        v3 = v11;
      }
    }
  }
}

id sub_10014A7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 248) allValues];
    v5 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 initiatorDataSession];

          if (v10 == v4)
          {
            v5 = v9;
            goto LABEL_13;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

void sub_10014A9DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v12 = v3;
      [v3 setLocalInterfaceIndex:0];
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 24);
      }

      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        v10 = _NRCopyLogObjectForNRUUID();
        v11 = *(a1 + 48);
        _NRLogWithArgs();
      }

      sub_10014AAF4(*(a1 + 32), v12);
      v3 = v12;
    }
  }
}

void sub_10014AAF4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1 && ([v6 hasActiveDataSession] & 1) == 0)
  {
    v3 = [WiFiAwareDataSession alloc];
    v4 = [v6 initiatorDiscoveryResult];
    v5 = [v3 initWithDiscoveryResult:v4 serviceType:1 serviceSpecificInfo:0];

    [v5 setDelegate:a1];
    [v5 start];
    [v6 setInitiatorDataSession:v5];
  }
}

void sub_10014AC54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 21) & 1) != 0)
  {
    return;
  }

  v3 = (a1 + 40);
  v13 = sub_10014A7EC(v2, *(a1 + 40));
  if (v13)
  {
    [v13 setLocalInterfaceIndex:{objc_msgSend(*(a1 + 40), "localInterfaceIndex")}];
    sub_10014AD7C(*(a1 + 32), v13);
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 24);
    }

    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v8 = 0;
    if (!IsLevelEnabled)
    {
      goto LABEL_12;
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[3];
    }

    v10 = v9;
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = *v3;
    _NRLogWithArgs();
  }

  v8 = v13;
LABEL_12:
}

void sub_10014AD7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_41;
  }

  v4 = *(a1 + 24);
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = *(a1 + 24);
    v8 = _NRCopyLogObjectForNRUUID();
    v44 = 2442;
    v45 = v3;
    v42 = "";
    v43 = "[NRDiscoveryClient handleDataSessionStarted:]";
    _NRLogWithArgs();
  }

  if ([v3 isInitiator])
  {
    v9 = *(a1 + 240);
    v10 = sub_10014B23C(a1);
    v11 = [v3 initiatorDiscoveryResult];
    v12 = [v11 publisherAddress];
    v13 = [v3 initiatorDiscoveryResult];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10014B3AC;
    v53[3] = &unk_1001FCB48;
    v53[4] = a1;
    [v9 sendMessage:v10 toPeerAddress:v12 withInstanceID:objc_msgSend(v13 completionHandler:{"publishID"), v53}];
  }

  v14 = [v3 serviceName];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = *(a1 + 96);
  v16 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v49 + 1) + 8 * v19);
        if (v20)
        {
          v21 = v20[2];
        }

        else
        {
          v21 = 0;
        }

        if ([v21 isEqualToString:v14])
        {
          p_isa = v20;

          if (v20)
          {
            goto LABEL_35;
          }

          goto LABEL_20;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v22 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
      v17 = v22;
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v24 = objc_alloc_init(NRDeviceEndpoint);
  p_isa = &v24->super.isa;
  if (v24)
  {
    v24->_type = *(a1 + 18);
    objc_storeStrong(&v24->_serviceName, v14);
  }

  v25 = [v3 remoteIDSDeviceID];

  if (v25)
  {
    v26 = [v3 remoteIDSDeviceID];
    if (p_isa)
    {
      objc_storeStrong(p_isa + 8, v26);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v27 = qword_1002290B8;
    v28 = sub_1000CAD2C(v27, 0);
    if (p_isa)
    {
      v29 = 9;
LABEL_33:
      objc_storeStrong(&p_isa[v29], v28);
    }
  }

  else
  {
    v30 = [NSUUID alloc];
    v31 = [v3 serviceName];
    v32 = [v30 initWithUUIDString:v31];
    if (p_isa)
    {
      objc_storeStrong(p_isa + 10, v32);
    }

    v33 = [NSUUID alloc];
    v27 = *(a1 + 112);
    v28 = [v33 initWithUUIDString:v27];
    if (p_isa)
    {
      v29 = 11;
      goto LABEL_33;
    }
  }

  [*(a1 + 96) addObject:p_isa];
LABEL_35:
  v34 = [v3 peerEndpoint];
  v35 = [v34 copyCEndpoint];

  v36 = [v3 peerEndpoint];
  v37 = [v36 address];

  if (v37->sa_family == 30 && !*&v37[1].sa_data[6] && v37->sa_data[6] == 254 && (v37->sa_data[7] & 0xC0) == 0x80)
  {
    v38 = *v37;
    v47 = *&v37[1].sa_len;
    address = v38;
    v48 = [v3 localInterfaceIndex];
    v39 = nw_endpoint_create_address(&address);

    v35 = v39;
  }

  [v3 localInterfaceIndex];
  v40 = nw_interface_create_with_index();
  nw_endpoint_set_interface();
  v41 = [NSString stringWithUTF8String:nw_interface_get_name(v40)];
  sub_10014B480(a1, v35, v14, v41);

LABEL_41:
}

void *sub_10014B23C(uint64_t a1)
{
  v2 = objc_alloc_init(NRNANServiceInfo);
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_serviceName, *(a1 + 112));
    objc_storeStrong(v3 + 2, *(a1 + 120));
    objc_storeStrong(v3 + 1, *(a1 + 136));
    objc_storeStrong(v3 + 3, *(a1 + 128));
  }

  v4 = [v3 data];
  v5 = *(a1 + 24);
  v6 = _NRCopyLogObjectForNRUUID();
  if (v4)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = *(a1 + 24);
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v10 = v4;
  }

  else
  {
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = *(a1 + 24);
      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  return v4;
}

void sub_10014B3AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_10014B480(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (nw_endpoint_get_type(v7) != nw_endpoint_type_address)
  {
    v19 = *(a1 + 24);
    v20 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v22 = *(a1 + 24);
      v23 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_30;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = *(a1 + 96);
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = *v48;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v48 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v47 + 1) + 8 * v14);
    v16 = v15 ? v15[2] : 0;
    if ([v16 isEqualToString:v8])
    {
      break;
    }

    if (v12 == ++v14)
    {
      v17 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
      v12 = v17;
      if (!v17)
      {
LABEL_15:
        v18 = v10;
        goto LABEL_29;
      }

      goto LABEL_5;
    }
  }

  v18 = v15;

  if (!v15)
  {
    goto LABEL_30;
  }

  if (!v9)
  {
    v33 = a1;
    v34 = v18;
    v35 = v7;
    v36 = 0;
LABEL_28:
    sub_10014B7D0(v33, v34, v35, v36);
    v37 = v18[9];
    v38 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014BAE0;
    block[3] = &unk_1001FC900;
    v46 = v37;
    block[4] = a1;
    v45 = v18;
    v39 = v18;
    dispatch_async(v38, block);
    v18[9] = 1;

    v18 = v39;
    goto LABEL_29;
  }

  v24 = sub_10013DBE4(v9, 0, 0, 0);
  v25 = nw_endpoint_copy_address_string(v7);
  if (!v25)
  {
LABEL_27:

    v33 = a1;
    v34 = v18;
    v35 = v7;
    v36 = v9;
    goto LABEL_28;
  }

  v26 = v25;
  v27 = [NSString stringWithUTF8String:v25];
  free(v26);
  if (![v24 containsObject:v27])
  {

    goto LABEL_27;
  }

  v28 = *(a1 + 24);
  v29 = _NRCopyLogObjectForNRUUID();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = *(a1 + 24);
    v32 = _NRCopyLogObjectForNRUUID();
    v42 = 1428;
    v43 = v7;
    v40 = "";
    v41 = "[NRDiscoveryClient discoveredPeerDeviceEndpoint:serviceName:interfaceName:]";
    _NRLogWithArgs();
  }

  [*(a1 + 96) removeObject:{v18, v40, v41, v42, v43}];

LABEL_29:
LABEL_30:
}

void sub_10014B7D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = nw_endpoint_copy_interface();
  v11 = sub_10014BB24(v10);
  if (v11)
  {
    v12 = v11;
    if (v7[15])
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (v9)
  {
    [v9 UTF8String];
    v18 = nw_interface_create_with_name();

    v19 = sub_10014BB24(v18);
    if (v19)
    {
      v12 = v19;
      v10 = v18;
      if (v7[15])
      {
LABEL_3:
        if (v7[16])
        {
LABEL_4:
          v13 = [NWAddressEndpoint endpointWithCEndpoint:v8];
          v14 = v7[15];
          v15 = [NSNumber numberWithUnsignedChar:v12];
          v16 = [v14 objectForKeyedSubscript:v15];

          if (v16)
          {
            v17 = [[NSMutableArray alloc] initWithArray:v16];
            [v17 addObject:v13];
          }

          else
          {
            v34 = v13;
            v17 = [NSArray arrayWithObjects:&v34 count:1];
          }

          v24 = v7[15];
          v25 = [NSNumber numberWithUnsignedChar:v12];
          [v24 setObject:v17 forKeyedSubscript:v25];

          v26 = [NSString stringWithUTF8String:nw_interface_get_name(v10)];
          v27 = v7[16];
          v28 = [NSNumber numberWithUnsignedChar:v12];
          [v27 setObject:v26 forKeyedSubscript:v28];

          goto LABEL_13;
        }

LABEL_10:
        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = v7[16];
        v7[16] = v22;

        goto LABEL_4;
      }

LABEL_9:
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = v7[15];
      v7[15] = v20;

      if (v7[16])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    v10 = v18;
  }

  v29 = *(a1 + 24);
  v30 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v32 = *(a1 + 24);
    v33 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

LABEL_13:
}

uint64_t sub_10014BAE0(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 48) == 1)
  {
    if (!v1)
    {
      return result;
    }

    v2 = *(v1 + 88);
    if (!v2)
    {
      return result;
    }

    return (*(v2 + 16))(v2, *(result + 40));
  }

  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      return (*(v2 + 16))(v2, *(result + 40));
    }
  }

  return result;
}

uint64_t sub_10014BB24(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    type = nw_interface_get_type(v1);
    subtype = nw_interface_get_subtype();
    if (type == nw_interface_type_wired)
    {
      v5 = 4;
    }

    else
    {
      v6 = subtype;
      name = nw_interface_get_name(v2);
      if (!strcmp("nan0", name))
      {
        v5 = 6;
      }

      else
      {
        v8 = nw_interface_get_name(v2);
        v9 = strcmp("ir0", v8);
        if (type == nw_interface_type_wifi || v6 == 1001)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        if (v6 == 1002)
        {
          v12 = 5;
        }

        else
        {
          v12 = v11;
        }

        if (v9)
        {
          v5 = v12;
        }

        else
        {
          v5 = 7;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10014BCA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v12 = v3;
      [v3 setLocalInterfaceIndex:0];
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 24);
      }

      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v12;
      if (IsLevelEnabled)
      {
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        v10 = _NRCopyLogObjectForNRUUID();
        v11 = *(a1 + 48);
        _NRLogWithArgs();

        v3 = v12;
      }
    }
  }
}

void sub_10014BE88(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    if ((*(v2 + 21) & 1) == 0 && a1[5] == *(v2 + 240))
    {
      v3 = *(v2 + 24);
      goto LABEL_5;
    }
  }

  else if (!a1[5])
  {
LABEL_5:
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = a1[4];
      if (v6)
      {
        v6 = v6[3];
      }

      v7 = v6;
      v8 = _NRCopyLogObjectForNRUUID();
      v87 = 2302;
      v90 = a1[6];
      v81 = "";
      v84 = "[NRDiscoveryClient subscriber:receivedDiscoveryResult:]_block_invoke";
      _NRLogWithArgs();
    }

    v9 = [a1[6] serviceSpecificInfo];
    v93 = [v9 blob];

    if (v93)
    {
      v10 = a1[4];
      v11 = v93;
      v12 = v11;
      if (v10)
      {
        v13 = [[NRNANServiceInfo alloc] initWithData:v11];
        v14 = *(v10 + 24);
        v15 = _NRCopyLogObjectForNRUUID();
        if (!v13)
        {
          v78 = _NRLogIsLevelEnabled();

          if (v78)
          {
            v79 = *(v10 + 24);
            v80 = _NRCopyLogObjectForNRUUID();
            v88 = 1928;
            v82 = "";
            v85 = "[NRDiscoveryClient processDiscoveredNANPeer:]";
            _NRLogWithArgs();
          }

          goto LABEL_26;
        }

        v16 = _NRLogIsLevelEnabled();

        if (v16)
        {
          v17 = *(v10 + 24);
          v18 = _NRCopyLogObjectForNRUUID();
          v88 = 1931;
          v91 = v13;
          v82 = "";
          v85 = "[NRDiscoveryClient processDiscoveredNANPeer:]";
          _NRLogWithArgs();
        }

        serviceName = v13->_serviceName;
        if (serviceName && (v20 = serviceName, v21 = [(NSString *)v20 length], v20, v21))
        {
          authTag = v13->_authTag;
          if (authTag)
          {
            v23 = authTag;
            v24 = [(NSData *)v23 length];

            if (v24)
            {
              v113 = 0;
              v114 = &v113;
              v115 = 0x2020000000;
              v116 = 0;
              v110[0] = _NSConcreteStackBlock;
              v110[1] = 3221225472;
              v110[2] = sub_10014C8FC;
              v110[3] = &unk_1001FCA58;
              v110[4] = v10;
              v25 = v13;
              v111 = v25;
              v112 = &v113;
              v26 = objc_retainBlock(v110);
              v104 = 0;
              v105 = &v104;
              v106 = 0x3032000000;
              v107 = sub_10014CDDC;
              v108 = sub_10014CDEC;
              v109 = 0;
              v27 = *(v10 + 256);
              if (v27 <= 8 && ((1 << v27) & 0x106) != 0)
              {
                v28 = *(v10 + 152);
                v29 = v25[1];
                v30 = *(v10 + 200);
                v31 = [v30 dataUsingEncoding:4];
                v32 = sub_10013EBBC(v28, v29, v31);

                (v26[2])(v26, v32, 0);
              }

              else
              {
                objc_initWeak(&location, v10);
                v98[0] = _NSConcreteStackBlock;
                v98[1] = 3221225472;
                v98[2] = sub_10014CDF4;
                v98[3] = &unk_1001FCA80;
                objc_copyWeak(&v102, &location);
                v99 = v26;
                v100 = &v113;
                v101 = &v104;
                sub_10014D104(v10, 28671, v98);

                objc_destroyWeak(&v102);
                objc_destroyWeak(&location);
              }

              if (*(v114 + 24) == 1)
              {
                v41 = objc_alloc_init(NRDNANPeer);
                [(NRDNANPeer *)v41 setRemoteIDSDeviceID:v105[5]];
                v42 = v25[4];
                [(NRDNANPeer *)v41 setServiceName:v42];
              }

              else
              {
                v41 = 0;
              }

              _Block_object_dispose(&v104, 8);

              _Block_object_dispose(&v113, 8);
LABEL_32:

              if (v41)
              {
                v43 = a1[4];
                if (!v43 || !*(v43 + 248))
                {
                  v44 = objc_alloc_init(NSMutableDictionary);
                  v45 = a1[4];
                  if (v45)
                  {
                    objc_storeStrong((v45 + 248), v44);
                  }

                  v43 = a1[4];
                }

                v46 = [a1[6] publisherAddress];
                v47 = sub_10014C7DC(v43, v46);

                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                v48 = a1[4];
                if (v48)
                {
                  v49 = *(v48 + 248);
                }

                else
                {
                  v49 = 0;
                }

                v50 = [v49 allValues];
                v51 = [(NRDNANPeer *)v50 countByEnumeratingWithState:&v94 objects:v117 count:16];
                if (v51)
                {
                  v52 = *v95;
                  while (2)
                  {
                    for (i = 0; i != v51; i = i + 1)
                    {
                      if (*v95 != v52)
                      {
                        objc_enumerationMutation(v50);
                      }

                      v54 = *(*(&v94 + 1) + 8 * i);
                      v55 = [v54 peerEndpoint];
                      if ([v55 isEqual:v47] && (v56 = objc_msgSend(v54, "peerInstanceID"), v56 == objc_msgSend(a1[6], "publishID")))
                      {
                        v57 = [v54 hasActiveDataSession];

                        if (v57)
                        {
                          v71 = a1[4];
                          if (v71)
                          {
                            v72 = *(v71 + 24);
                          }

                          v73 = _NRCopyLogObjectForNRUUID();
                          v74 = _NRLogIsLevelEnabled();

                          if (v74)
                          {
                            v75 = a1[4];
                            if (v75)
                            {
                              v76 = *(v75 + 24);
                            }

                            v77 = _NRCopyLogObjectForNRUUID();
                            _NRLogWithArgs();
                          }

                          goto LABEL_71;
                        }
                      }

                      else
                      {
                      }
                    }

                    v51 = [(NRDNANPeer *)v50 countByEnumeratingWithState:&v94 objects:v117 count:16];
                    if (v51)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v58 = a1[4];
                if (v58)
                {
                  v59 = *(v58 + 248);
                }

                else
                {
                  v59 = 0;
                }

                v50 = [v59 objectForKeyedSubscript:v47];
                if (!v50)
                {
                  v50 = objc_alloc_init(NRDNANPeer);
                }

                v60 = [(NRDNANPeer *)v41 serviceName];
                [(NRDNANPeer *)v50 setServiceName:v60];

                v61 = [(NRDNANPeer *)v41 remoteIDSDeviceID];
                [(NRDNANPeer *)v50 setRemoteIDSDeviceID:v61];

                [(NRDNANPeer *)v50 setPeerEndpoint:v47];
                -[NRDNANPeer setPeerInstanceID:](v50, "setPeerInstanceID:", [a1[6] publishID]);
                [(NRDNANPeer *)v50 setIsInitiator:1];
                [(NRDNANPeer *)v50 setInitiatorDiscoveryResult:a1[6]];
                v62 = a1[4];
                if (v62)
                {
                  v63 = *(v62 + 24);
                }

                v64 = _NRCopyLogObjectForNRUUID();
                v65 = _NRLogIsLevelEnabled();

                if (v65)
                {
                  v66 = a1[4];
                  if (v66)
                  {
                    v67 = *(v66 + 24);
                  }

                  v68 = _NRCopyLogObjectForNRUUID();
                  v89 = 2333;
                  v92 = v50;
                  v83 = "";
                  v86 = "[NRDiscoveryClient subscriber:receivedDiscoveryResult:]_block_invoke";
                  _NRLogWithArgs();
                }

                v69 = a1[4];
                if (v69)
                {
                  v70 = *(v69 + 248);
                }

                else
                {
                  v70 = 0;
                }

                [v70 setObject:v50 forKeyedSubscript:{v47, v83, v86, v89, v92}];
                sub_10014AAF4(a1[4], v50);
LABEL_71:
              }

              goto LABEL_72;
            }
          }

          v38 = *(v10 + 24);
          v39 = _NRCopyLogObjectForNRUUID();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v36 = *(v10 + 24);
            v37 = _NRCopyLogObjectForNRUUID();
            v88 = 1938;
            v91 = v13;
            v82 = "";
            v85 = "[NRDiscoveryClient processDiscoveredNANPeer:]";
            goto LABEL_25;
          }
        }

        else
        {
          v33 = *(v10 + 24);
          v34 = _NRCopyLogObjectForNRUUID();
          v35 = _NRLogIsLevelEnabled();

          if (v35)
          {
            v36 = *(v10 + 24);
            v37 = _NRCopyLogObjectForNRUUID();
            v88 = 1935;
            v91 = v13;
            v82 = "";
            v85 = "[NRDiscoveryClient processDiscoveredNANPeer:]";
LABEL_25:
            _NRLogWithArgs();
          }
        }

LABEL_26:
        v41 = 0;
        goto LABEL_32;
      }
    }

LABEL_72:
  }
}

void sub_10014C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  objc_destroyWeak((v45 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C7DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 ipv6LinkLocalAddress];
      v6 = [v5 length];

      if (v6 == 16)
      {
        v12[1] = 0;
        v13 = 0;
        v12[2] = 0;
        v12[0] = 7708;
        v7 = [v4 ipv6LinkLocalAddress];
        [v7 bytes];
        [v7 length];
        __memcpy_chk();
        a1 = [NWAddressEndpoint endpointWithAddress:v12];

        goto LABEL_8;
      }
    }

    else
    {
      v8 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10014A248();
        _NRLogWithArgs();
      }
    }

    a1 = 0;
  }

LABEL_8:

  return a1;
}

void sub_10014C8FC(void *a1, void *a2, void *a3)
{
  v70 = a2;
  v5 = a3;
  v6 = a1[4];
  if (!v6)
  {
LABEL_19:
    v21 = a1[5];
    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v7 = v6[18];
  if (*(v6 + 32) != 4)
  {
    if (!v6[18] || v7 == 255)
    {
      goto LABEL_19;
    }

    v53 = a1[5];
    if (!v53)
    {
      goto LABEL_39;
    }

    v54 = *(v53 + 24);
    if (!v54)
    {
      goto LABEL_39;
    }

    v55 = v54;
    v56 = [v55 length];

    if (!v56)
    {
      goto LABEL_39;
    }

    v57 = a1[4];
    if (v57)
    {
      v58 = *(v57 + 18);
      v59 = a1[5];
      if (!v59)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v58 = 0;
      v59 = a1[5];
      if (!v59)
      {
LABEL_61:
        v60 = v59;
        v61 = a1[5];
        if (v61)
        {
          v61 = v61[1];
        }

        v62 = v61;
        v63 = v70;
        if (v57)
        {
          v64 = sub_10014D208(v57, v58, v60, v62);
          v65 = v64;
          if (*(v57 + 256) == 4)
          {
            v66 = sub_10014D5A4(v57, v64);
          }

          else
          {
            v66 = sub_10013D1EC(v64, v63);
          }

          v57 = v66;
        }

        v67 = a1[5];
        if (v67)
        {
          v67 = v67[3];
        }

        v68 = v67;
        v69 = sub_10013EE38(v57, v68);

        if (!v69)
        {
          goto LABEL_39;
        }

        v6 = a1[4];
        v21 = a1[5];
        if (!v21)
        {
LABEL_21:
          v22 = v21;
          v23 = a1[5];
          if (v23)
          {
            v23 = v23[1];
          }

          v24 = v23;
          v25 = v70;
          if (v6)
          {
            v26 = sub_10014D4C4(v6, v22, v24);
            v27 = v26;
            if (*(v6 + 32) == 4)
            {
              v28 = sub_10014D5A4(v6, v26);
            }

            else
            {
              v28 = sub_10013D1EC(v26, v25);
            }

            v6 = v28;
          }

          v29 = a1[5];
          if (v29)
          {
            v29 = v29[2];
          }

          v30 = v29;
          v31 = sub_10013EE38(v6, v30);

          if (!v31)
          {
            goto LABEL_38;
          }

          v32 = a1[4];
          if (v32)
          {
            v33 = *(v32 + 24);
          }

          v34 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_37;
          }

          v20 = a1[4];
          if (!v20)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_20:
        v21 = v21[4];
        goto LABEL_21;
      }
    }

    v59 = v59[4];
    goto LABEL_61;
  }

  if (!v6[18] || v7 == 255)
  {
    v8 = a1[5];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v38 = a1[5];
  if (v38)
  {
    v39 = *(v38 + 24);
    if (v39)
    {
      v40 = v39;
      v41 = [v40 length];

      if (v41)
      {
        v42 = a1[4];
        if (v42)
        {
          v43 = *(v42 + 18);
          v44 = a1[5];
          if (!v44)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v43 = 0;
          v44 = a1[5];
          if (!v44)
          {
LABEL_48:
            v45 = v44;
            v46 = a1[5];
            if (v46)
            {
              v46 = v46[1];
            }

            v47 = v46;
            v48 = sub_10014D208(v42, v43, v45, v47);

            v50 = a1[4];
            v49 = a1[5];
            if (v49)
            {
              v49 = v49[3];
            }

            v51 = v49;
            v52 = sub_10014D2D0(v50, v51, v48, v5);

            if (v52)
            {
              v6 = a1[4];
              v8 = a1[5];
              if (!v8)
              {
LABEL_7:
                v9 = v8;
                v10 = a1[5];
                if (v10)
                {
                  v10 = v10[1];
                }

                v11 = v10;
                v6 = sub_10014D4C4(v6, v9, v11);

                v13 = a1[4];
                v12 = a1[5];
                if (v12)
                {
                  v12 = v12[2];
                }

                v14 = v12;
                v15 = sub_10014D2D0(v13, v14, v6, v5);

                if (!v15)
                {
                  goto LABEL_38;
                }

                v16 = a1[4];
                if (v16)
                {
                  v17 = *(v16 + 24);
                }

                v18 = _NRCopyLogObjectForNRUUID();
                v19 = _NRLogIsLevelEnabled();

                if (!v19)
                {
LABEL_37:
                  *(*(a1[6] + 8) + 24) = 1;
LABEL_38:

                  goto LABEL_39;
                }

                v20 = a1[4];
                if (!v20)
                {
LABEL_36:
                  v37 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();

                  goto LABEL_37;
                }

LABEL_35:
                v36 = *(v20 + 24);
                goto LABEL_36;
              }

LABEL_6:
              v8 = v8[4];
              goto LABEL_7;
            }

            goto LABEL_39;
          }
        }

        v44 = v44[4];
        goto LABEL_48;
      }
    }
  }

LABEL_39:
}

uint64_t sub_10014CDDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014CDF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = v8[3];
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = v8[3];
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v14 = v8[3];
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = v8[3];
        v18 = _NRCopyLogObjectForNRUUID();
        v35 = 2013;
        v36 = [v5 count];
        v33 = "";
        v34 = "[NRDiscoveryClient processDiscoveredNANPeer:]_block_invoke_2";
        _NRLogWithArgs();
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v19 = v5;
      v20 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v20)
      {
        v21 = *v42;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v41 + 1) + 8 * i);
            if ([v23 type] == 1)
            {
              v20 = v23;
              goto LABEL_19;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v24 = v19;
      v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
LABEL_22:
        v28 = 0;
        while (1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * v28);
          if ([v29 type] != 1)
          {
            (*(*(a1 + 32) + 16))();
            if (*(*(*(a1 + 40) + 8) + 24) == 1)
            {
              break;
            }
          }

          if (v26 == ++v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (!v26)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }
        }

        v30 = [v29 idsDeviceID];
        v31 = *(*(a1 + 48) + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = v30;
      }

LABEL_29:
    }
  }
}

void sub_10014D104(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 184);
  if (!v6)
  {
    v7 = objc_alloc_init(RPClient);
    v8 = *(a1 + 184);
    *(a1 + 184) = v7;

    v9 = *(a1 + 184);
    v10 = *(a1 + 40);
    [v9 setDispatchQueue:v10];

    v6 = *(a1 + 184);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014D1F8;
  v12[3] = &unk_1001FC758;
  v11 = v5;
  v13 = v11;
  [v6 getIdentitiesWithFlags:a2 completion:v12];
}

id sub_10014D208(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a4;
  v8 = 0;
  if (a1)
  {
    if (a2)
    {
      v9 = a3;
      v8 = [[NSMutableData alloc] initWithBytes:&v12 length:1];
      v10 = [v9 dataUsingEncoding:4];

      [v8 appendData:v10];
      if ([v7 length])
      {
        [v8 appendData:v7];
      }
    }
  }

  return v8;
}

id sub_10014D2D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    v20 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v8)
  {
    v22 = sub_10014A248();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v9)
  {
    v24 = sub_10014A248();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
LABEL_17:
      v26 = sub_10014A248();
      _NRLogWithArgs();
    }

LABEL_18:
    v11 = 0;
    goto LABEL_11;
  }

  v27 = 0;
  v11 = [v9 verifySignature:v7 data:v8 error:&v27];
  v12 = v27;
  v13 = v12;
  if (v12 && [v12 code] != -6754)
  {
    v14 = *(a1 + 24);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = *(a1 + 24);
      v18 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v11 = 0;
  }

LABEL_11:
  return v11;
}

void *sub_10014D4C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 dataUsingEncoding:4];
    if (*(a1 + 200))
    {
      v7 = [[NSMutableData alloc] initWithData:v6];
      v8 = [*(a1 + 200) dataUsingEncoding:4];
      [v7 appendData:v8];

      v6 = v7;
    }

    if ([v5 length])
    {
      v9 = [[NSMutableData alloc] initWithData:v6];
      [v9 appendData:v5];

      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10014D5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v15 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 192);
  if (!v4)
  {
    v17 = sub_10014A248();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
LABEL_14:
      v19 = sub_10014A248();
      _NRLogWithArgs();
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if ([v4 type] != 1 || !objc_msgSend(v3, "length"))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 192);
  v21 = 0;
  v6 = v5;
  v7 = [v6 signData:v3 error:&v21];
  v8 = v21;

  if (v8)
  {
    v9 = *(a1 + 24);
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = *(a1 + 24);
      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

LABEL_16:
  return v14;
}

void sub_10014D810(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 21))
    {
      return;
    }

    v3 = *(v2 + 240);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 40) == v3)
  {
    v4 = sub_10014C7DC(v2, *(a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 248);
    }

    else
    {
      v6 = 0;
    }

    v18 = v4;
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 initiatorDiscoveryResult];
    if ([v8 publishID] == *(a1 + 56))
    {
      v9 = [v7 responderDataSession];

      if (v9)
      {
        goto LABEL_20;
      }

      v10 = *(a1 + 32);
      v11 = v10 ? *(v10 + 248) : 0;
      [v11 setObject:0 forKeyedSubscript:v18];
      if (!v7)
      {
        goto LABEL_20;
      }

      sub_10014D9AC(*(a1 + 32), v7);
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 24);
      }

      v14 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_20;
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(v16 + 24);
      }

      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

LABEL_20:
  }
}

void sub_10014D9AC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    if ([v8 hasActiveDataSession])
    {
      v3 = [v8 initiatorDataSession];

      if (v3)
      {
        v4 = [v8 initiatorDataSession];
        [v4 stop];

        [v8 setInitiatorDataSession:0];
      }

      v5 = [v8 responderDataSession];

      if (v5)
      {
        v6 = *(a1 + 232);
        v7 = [v8 responderDataSession];
        [v6 terminateDataSession:v7 completionHandler:&stru_1001FCA30];

        [v8 setResponderDataSession:0];
      }
    }

    [v8 setLocalInterfaceIndex:0];
  }
}

void sub_10014DB50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }

    v2 = a1;
    v3 = *(v1 + 24);
  }

  else
  {
    if (*(a1 + 40))
    {
      return;
    }

    v2 = a1;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(v2 + 32);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v8 = *(v2 + 48);
    _NRLogWithArgs();
  }
}

void sub_10014DD04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }

    v2 = a1;
    v3 = *(v1 + 24);
  }

  else
  {
    if (*(a1 + 40))
    {
      return;
    }

    v2 = a1;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(v2 + 32);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v8 = *(v2 + 48);
    _NRLogWithArgs();
  }
}

void sub_10014DEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }

    v2 = a1;
    v3 = *(v1 + 24);
  }

  else
  {
    if (*(a1 + 40))
    {
      return;
    }

    v2 = a1;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(v2 + 32);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_10014E070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2 != *(v3 + 232))
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v4 = [*(a1 + 48) initiatorDataAddress];
  v18 = sub_10014C7DC(v3, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 248);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:v18];
  if ([(NRDNANPeer *)v7 hasActiveDataSession])
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = *(v12 + 24);
      }

      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  else
  {
    if (!v7)
    {
      v7 = objc_alloc_init(NRDNANPeer);
    }

    [(NRDNANPeer *)v7 setLocalInterfaceIndex:*(a1 + 56)];
    [(NRDNANPeer *)v7 setResponderDataSession:*(a1 + 48)];
    v15 = [v18 hostname];
    [(NRDNANPeer *)v7 setServiceName:v15];

    [(NRDNANPeer *)v7 setPeerEndpoint:v18];
    -[NRDNANPeer setPeerInstanceID:](v7, "setPeerInstanceID:", [*(a1 + 48) datapathID]);
    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(v16 + 248);
    }

    else
    {
      v17 = 0;
    }

    [v17 setObject:v7 forKeyedSubscript:v18];
    sub_10014AD7C(*(a1 + 40), v7);
  }
}

void sub_10014E328(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2 != *(v3 + 232))
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v4 = [*(a1 + 48) initiatorDataAddress];
  v19 = sub_10014C7DC(v3, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 248);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:v19];
  v8 = [v7 responderDataSession];
  if (v8 == *(a1 + 48))
  {
    v9 = [v7 initiatorDataSession];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 40);
    v11 = v10 ? *(v10 + 248) : 0;
    [v11 setObject:0 forKeyedSubscript:v19];
    if (!v7)
    {
      goto LABEL_10;
    }

    sub_10014D9AC(*(a1 + 40), v7);
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 24);
    }

    v14 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(v16 + 24);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    v18 = *(a1 + 56);
    _NRLogWithArgs();
  }

LABEL_10:
}

void sub_10014E730(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    if (v3 != *(v2 + 232))
    {
      return;
    }

    v4 = *(v2 + 24);
  }

  else if (v3)
  {
    return;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = a1[5];
    if (v7)
    {
      v8 = *(v7 + 24);
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v9 = a1[6];
    _NRLogWithArgs();
  }
}

void sub_10014E8C8(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    if (v3 != *(v2 + 232))
    {
      return;
    }

    v4 = *(v2 + 24);
  }

  else if (v3)
  {
    return;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = a1[5];
    if (v7)
    {
      v8 = *(v7 + 24);
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v9 = a1[6];
    _NRLogWithArgs();
  }
}

void *sub_10014EAC4(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    if (a3 > 103)
    {
      switch(a3)
      {
        case 'y':
          LOBYTE(v4) = 8;
          goto LABEL_19;
        case 'x':
          LOBYTE(v4) = 1;
          goto LABEL_19;
        case 'h':
          LOBYTE(v4) = 7;
          goto LABEL_19;
      }
    }

    else
    {
      switch(a3)
      {
        case 'e':
          LOBYTE(v4) = 2;
          goto LABEL_19;
        case 'f':
          LOBYTE(v4) = 5;
          goto LABEL_19;
        case 'g':
          LOBYTE(v4) = 6;
LABEL_19:
          v5 = [NSNumber numberWithUnsignedChar:v4];
          v3 = [v3 objectForKeyedSubscript:v5];

          return v3;
      }
    }

    v4 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
    if (a2 > 5)
    {
      LOBYTE(v4) = 0;
    }

    goto LABEL_19;
  }

  return v3;
}

void *sub_10014EBAC(void *result, unsigned int a2, int a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result[15];
  if (!v4)
  {
    return 0;
  }

  if (a3 > 103)
  {
    switch(a3)
    {
      case 'y':
        LOBYTE(v6) = 8;
        goto LABEL_19;
      case 'x':
        LOBYTE(v6) = 1;
        goto LABEL_19;
      case 'h':
        LOBYTE(v6) = 7;
        goto LABEL_19;
    }
  }

  else
  {
    switch(a3)
    {
      case 'e':
        LOBYTE(v6) = 2;
        goto LABEL_19;
      case 'f':
        LOBYTE(v6) = 5;
        goto LABEL_19;
      case 'g':
        LOBYTE(v6) = 6;
        goto LABEL_19;
    }
  }

  v6 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
  if (a2 > 5)
  {
    LOBYTE(v6) = 0;
  }

LABEL_19:
  v7 = [NSNumber numberWithUnsignedChar:v6];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      v12 = *v18;
      v13 = a4;
LABEL_23:
      v14 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if ([v15 addressFamily] == v13)
        {
          break;
        }

        if (v11 == ++v14)
        {
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v10 = 0;
          if (v11)
          {
            goto LABEL_23;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v15 = **(&v17 + 1);
      [**(&v17 + 1) addressFamily];
    }

    v10 = v15;
  }

LABEL_33:
  v16 = v10;

  return v16;
}

id sub_10014EDA8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    v2 = [NSNumber numberWithUnsignedChar:4];
    v3 = [v1 objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10014EE30(id a1)
{
  v1 = [NRDiscoveryManager alloc];
  v4 = sub_100003490();
  v2 = sub_10014EE9C(v1, v4);
  v3 = qword_100229398;
  qword_100229398 = v2;
}

void *sub_10014EE9C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRDiscoveryManager;
    v5 = objc_msgSendSuper2(&v14, "init");
    if (!v5)
    {
      v9 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_10014A248();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "[NRDiscoveryManager initWithQueue:]";
      sub_10014A248();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 2, a2);
    v6 = +[NSUUID UUID];
    v7 = a1[3];
    a1[3] = v6;
  }

  return a1;
}

id *sub_10014F018(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = NRDiscoveryClient;
    v8 = objc_msgSendSuper2(&v18, "init");
    if (!v8)
    {
      v13 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10014A248();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "[NRDiscoveryClient initWithQueue:nrUUID:]";
      sub_10014A248();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    v8[4] = atomic_fetch_add_explicit(&qword_100228AF0, 1uLL, memory_order_relaxed);
    objc_storeStrong(v8 + 5, a2);
    objc_storeStrong(a1 + 3, a3);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = a1[12];
    a1[12] = v9;

    v11 = a1[26];
    a1[26] = @"_nrd._tcp";
  }

  return a1;
}

void sub_10014F1DC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 24);
      v6 = _NRCopyLogObjectForNRUUID();
      v44 = 367;
      v45 = a1;
      v42 = "";
      v43 = "[NRDiscoveryClient cancel]";
      _NRLogWithArgs();
    }

    *(a1 + 21) = 1;
    v7 = *(a1 + 56);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    if ([*(a1 + 64) count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v9 = *(a1 + 64);
      v10 = [v9 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v59;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v59 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v58 + 1) + 8 * i) invalidate];
          }

          v11 = [v9 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v11);
      }

      v14 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v15 = [*(a1 + 168) allValues];
    v16 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v55;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v15);
          }

          nw_browser_cancel(*(*(&v54 + 1) + 8 * j));
        }

        v17 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v17);
    }

    v20 = *(a1 + 168);
    *(a1 + 168) = 0;

    sub_10014F5E4(a1);
    v21 = *(a1 + 176);
    if (v21)
    {
      v22 = [v21 allKeys];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v51;
        do
        {
          for (k = 0; k != v24; k = k + 1)
          {
            if (*v51 != v25)
            {
              objc_enumerationMutation(v22);
            }

            sub_10014F754(a1, [*(*(&v50 + 1) + 8 * k) unsignedShortValue]);
          }

          v24 = [v22 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v24);
      }

      v27 = *(a1 + 176);
      *(a1 + 176) = 0;
    }

    v28 = *(a1 + 216);
    if (v28)
    {
      [v28 invalidate];
      v29 = *(a1 + 216);
      *(a1 + 216) = 0;
    }

    v30 = *(a1 + 224);
    if (v30)
    {
      [v30 invalidate];
      v31 = *(a1 + 224);
      *(a1 + 224) = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = [*(a1 + 248) allValues];
    v33 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v47;
      do
      {
        for (m = 0; m != v34; m = m + 1)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v32);
          }

          sub_10014D9AC(a1, *(*(&v46 + 1) + 8 * m));
        }

        v34 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
      }

      while (v34);
    }

    v37 = *(a1 + 248);
    *(a1 + 248) = 0;

    v38 = *(a1 + 232);
    if (v38)
    {
      [v38 stop];
      v39 = *(a1 + 232);
      *(a1 + 232) = 0;
    }

    v40 = *(a1 + 240);
    if (v40)
    {
      [v40 stop];
      v41 = *(a1 + 240);
      *(a1 + 240) = 0;
    }
  }
}

void sub_10014F5E4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 160) allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        nw_listener_cancel(*(*(&v11 + 1) + 8 * i));
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 160);
  *(a1 + 160) = 0;

  objc_opt_self();
  if (qword_1002293A0 != -1)
  {
    dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
  }

  v8 = qword_100229398;
  v9 = v8;
  if (v8)
  {
    [v8[4] removeObject:*(a1 + 112)];
  }

  v10 = *(a1 + 112);
  *(a1 + 112) = 0;
}

void sub_10014F754(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 19) == 1 && *(a1 + 20) == 1)
    {
      v3 = *(a1 + 176);
      if (v3)
      {
        v19 = a2;
        v4 = [NSNumber numberWithUnsignedChar:a2];
        v5 = [v3 objectForKeyedSubscript:v4];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * i);
              v12 = *(a1 + 24);
              v13 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v15 = *(a1 + 24);
                v16 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              nw_resolver_cancel();
            }

            v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v8);
        }

        v17 = *(a1 + 176);
        v18 = [NSNumber numberWithUnsignedChar:v19];
        [v17 setObject:0 forKeyedSubscript:v18];
      }
    }
  }
}

void sub_10014F958(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableSet);
      v6 = *(a1 + 104);
      *(a1 + 104) = v5;

      v4 = *(a1 + 104);
    }

    v7 = [NSNumber numberWithUnsignedChar:a2];
    [v4 addObject:v7];

    if (*(a1 + 19) == 1 && *(a1 + 20) == 1)
    {
      sub_10014FA20(a1, a2);

      sub_1001501B4(a1, a2);
    }
  }
}

void sub_10014FA20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 15) != 1)
  {
    return;
  }

  v56 = *(a1 + 104);
  if (![v56 count])
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 104);
  v5 = [NSNumber numberWithUnsignedChar:a2];
  v6 = [v4 containsObject:v5];

  if (!v6)
  {
    return;
  }

  v7 = *(a1 + 120);
  if (!v7 || (v8 = *(a1 + 112), v7, !v8))
  {
    v15 = *(a1 + 24);
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v18 = *(a1 + 24);
    v56 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_16:

    return;
  }

  if (a2 == 7)
  {
    v9 = *(a1 + 104);
    if ([v9 containsObject:&off_100209E60] & 1) != 0 && (objc_msgSend(*(a1 + 104), "containsObject:", &off_100209E78))
    {
      v10 = sub_1000BA648();
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 6);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = sub_10017E354(v13);

      if (v14)
      {
        a2 = 2;
      }

      else
      {
        a2 = 7;
      }
    }

    else
    {

      a2 = 7;
    }
  }

  v19 = (a1 + 160);
  v20 = *(a1 + 160);
  v21 = [NSNumber numberWithUnsignedChar:a2];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (!v22 && (a2 & 0xFFFFFFFD) != 1)
  {
    if (a2 == 6)
    {

      sub_10015271C(a1);
      return;
    }

    v23 = *(a1 + 112);
    v24 = *(a1 + 208);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v55 = *(a1 + 264);
    v53 = v23;
    v54 = *(a1 + 136);
    bonjour_service = nw_advertise_descriptor_create_bonjour_service([v23 UTF8String], objc_msgSend(v24, "UTF8String"), 0);
    nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
    dictionary = nw_txt_record_create_dictionary();
    v51 = v25;
    nw_txt_record_set_key(dictionary, "nrAT", [v25 bytes], objc_msgSend(v25, "length"));
    if (v26)
    {
      nw_txt_record_set_key(dictionary, "nrD", [v26 bytes], objc_msgSend(v26, "length"));
    }

    v50 = v26;
    if (v55)
    {
      nw_txt_record_set_key(dictionary, "nrAD", [v55 bytes], objc_msgSend(v55, "length"));
    }

    if (v54)
    {
      nw_txt_record_set_key(dictionary, "nrN", [v54 bytes], objc_msgSend(v54, "length"));
    }

    if (_NRIsAppleInternal())
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 == 1)
      {
        *value = sub_100152934();
        nw_txt_record_set_key(dictionary, "nrF", value, 8uLL);
      }
    }

    nw_advertise_descriptor_set_txt_record_object(bonjour_service, dictionary);
    secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    parameters = secure_tcp;
    if (a2 <= 4)
    {
      if (a2 == 2)
      {
        v29 = secure_tcp;
        nw_parameters_set_required_interface_subtype();
      }

      else
      {
        v29 = secure_tcp;
        if (a2 == 4)
        {
          nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_wired);
        }
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v30 = nw_interface_create_with_name();
      if (!v30)
      {
        v46 = sub_10014A248();
        v47 = _NRLogIsLevelEnabled();

        if (v47)
        {
LABEL_57:
          v48 = sub_10014A248();
          _NRLogWithArgs();
        }

LABEL_54:

        return;
      }
    }

    else
    {
      v29 = secure_tcp;
      if (a2 != 5)
      {
LABEL_49:
        v49 = v24;
        objc_initWeak(value, a1);
        v34 = nw_listener_create(v29);
        nw_listener_set_advertise_descriptor(v34, bonjour_service);
        v35 = *(a1 + 40);
        nw_listener_set_queue(v34, v35);

        nw_listener_set_new_connection_handler(v34, &stru_1001FC888);
        objc_copyWeak(&v58, value);
        v59 = a2;
        v36 = v34;
        v37 = v53;
        nw_listener_set_event_handler();
        nw_listener_start(v36);
        if (!*v19)
        {
          v38 = objc_alloc_init(NSMutableDictionary);
          objc_storeStrong((a1 + 160), v38);
        }

        v39 = *(a1 + 24);
        v40 = _NRCopyLogObjectForNRUUID();
        v41 = _NRLogIsLevelEnabled();

        if (v41)
        {
          v42 = *(a1 + 24);
          v43 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v44 = *v19;
        v45 = [NSNumber numberWithUnsignedChar:a2];
        [v44 setObject:v36 forKeyedSubscript:v45];

        objc_destroyWeak(&v58);
        objc_destroyWeak(value);
        v24 = v49;
        goto LABEL_54;
      }

      v30 = nw_interface_create_with_name();
      if (!v30)
      {
        v31 = sub_10014A248();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }
    }

    v33 = v30;
    v29 = parameters;
    nw_parameters_require_interface(parameters, v30);

    goto LABEL_49;
  }
}

void sub_100150188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 96));
  _Unwind_Resume(a1);
}

void sub_1001501B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 7 && ((1 << a2) & 0x8A) != 0 || *(a1 + 16) != 1)
  {
    return;
  }

  v31 = *(a1 + 104);
  if ([v31 count])
  {
    v4 = *(a1 + 104);
    v5 = [NSNumber numberWithUnsignedChar:a2];
    v6 = [v4 containsObject:v5];

    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 168);
    v8 = [NSNumber numberWithUnsignedChar:a2];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      return;
    }

    if (*(a1 + 144))
    {
      if (a2 == 6)
      {

        sub_100150678(a1);
      }

      else
      {
        secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
        v15 = secure_tcp;
        switch(a2)
        {
          case 2:
            nw_parameters_set_required_interface_subtype();
            break;
          case 4:
            nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_wired);
            break;
          case 5:
            v16 = nw_interface_create_with_name();
            nw_parameters_require_interface(v15, v16);

            break;
        }

        objc_initWeak(location, a1);
        bonjour_service = nw_browse_descriptor_create_bonjour_service([*(a1 + 208) UTF8String], 0);
        nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
        v18 = nw_browser_create(bonjour_service, v15);
        state_changed_handler[0] = _NSConcreteStackBlock;
        state_changed_handler[1] = 3221225472;
        state_changed_handler[2] = sub_1001507A8;
        state_changed_handler[3] = &unk_1001FC7A8;
        objc_copyWeak(&v39, location);
        v40 = a2;
        v19 = v18;
        v38 = v19;
        nw_browser_set_state_changed_handler(v19, state_changed_handler);
        v20 = *(a1 + 24);
        if (v20)
        {
          v21 = v20;
          v22 = sub_100163B2C(NRDLocalDevice, v21, 0);
        }

        else
        {
          v22 = 0;
        }

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100150940;
        handler[3] = &unk_1001FC7F8;
        objc_copyWeak(&v35, location);
        v36 = a2;
        v23 = v19;
        v33 = v23;
        v24 = v22;
        v34 = v24;
        nw_browser_set_browse_results_changed_handler(v23, handler);
        v25 = *(a1 + 40);
        nw_browser_set_queue(v23, v25);

        nw_browser_start(v23);
        v26 = *(a1 + 168);
        if (!v26)
        {
          v27 = objc_alloc_init(NSMutableDictionary);
          v28 = *(a1 + 168);
          *(a1 + 168) = v27;

          v26 = *(a1 + 168);
        }

        v29 = v26;
        v30 = [NSNumber numberWithUnsignedChar:a2];
        [v29 setObject:v23 forKeyedSubscript:v30];

        objc_destroyWeak(&v35);
        objc_destroyWeak(&v39);

        objc_destroyWeak(location);
      }

      return;
    }

    v10 = *(a1 + 24);
    v11 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v13 = *(a1 + 24);
    v31 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_100150634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100150678(uint64_t a1)
{
  if (_os_feature_enabled_impl() && !*(a1 + 240))
  {
    v8 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:*(a1 + 208)];
    [v8 setAuthenticationType:0];
    v2 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v8];
    [v2 setDelegate:a1];
    [v2 start];
    objc_storeStrong((a1 + 240), v2);
    v3 = *(a1 + 24);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 24);
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

void sub_1001507A8(uint64_t a1, int a2, void *a3)
{
  v22 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v7 = *(a1 + 48);
      v8 = *(WeakRetained + 21);
      v9 = [NSNumber numberWithUnsignedChar:v7];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(a1 + 32);

      if (v10 == v11)
      {
        v12 = v6[3];
        v13 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v15 = v6[3];
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        if (a2 == 1)
        {
          v17 = v6[3];
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            v20 = v6[3];
            v21 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }
        }
      }
    }
  }
}

void sub_100150940(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v11 = *(a1 + 56);
      v12 = WeakRetained[21];
      v13 = [NSNumber numberWithUnsignedChar:v11];
      v14 = [v12 objectForKeyedSubscript:v13];
      v15 = *(a1 + 32);

      if (v14 == v15)
      {
        changes = nw_browse_result_get_changes(v7, v8);
        v17 = *(v10 + 24);
        v18 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = *(v10 + 24);
          v21 = _NRCopyLogObjectForNRUUID();
          v72 = a4;
          v73 = changes;
          v71 = 852;
          v69 = "";
          v70 = "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2";
          _NRLogWithArgs();
        }

        if ((changes & 2) != 0)
        {
          v22 = nw_browse_result_copy_endpoint(v8);
          v23 = *(v10 + 24);
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = _NRLogIsLevelEnabled();

          v79 = v22;
          if (v25)
          {
            v26 = *(v10 + 24);
            v27 = _NRCopyLogObjectForNRUUID();
            v71 = 858;
            v72 = v22;
            v69 = "";
            v70 = "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2";
            _NRLogWithArgs();
          }
        }

        else
        {
          v79 = 0;
        }

        if ((changes & 4) != 0 && (endpoint = nw_browse_result_copy_endpoint(v7)) != 0)
        {
          if (*(v10 + 80))
          {
            bonjour_service_name = nw_endpoint_get_bonjour_service_name(endpoint);
            if (bonjour_service_name)
            {
              v77 = [NSString stringWithUTF8String:bonjour_service_name];
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v29 = *(v10 + 96);
              v30 = [v29 countByEnumeratingWithState:&v91 objects:v95 count:16];
              if (v30)
              {
                v31 = *v92;
                while (2)
                {
                  v32 = 0;
                  do
                  {
                    if (*v92 != v31)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v33 = *(*(&v91 + 1) + 8 * v32);
                    if (v33)
                    {
                      v34 = v33[2];
                    }

                    else
                    {
                      v34 = 0;
                    }

                    if ([v34 isEqualToString:{v77, v69, v70, v71, v72, v73}])
                    {
                      v61 = v33 == 0;
                      v36 = v33;

                      if (v61)
                      {
                        v36 = 0;
                        goto LABEL_59;
                      }

                      v62 = *(a1 + 56);
                      v63 = v36[15];
                      v64 = [NSNumber numberWithUnsignedChar:v62];
                      [v63 setObject:0 forKeyedSubscript:v64];

                      if ([v36[15] count])
                      {
                        if (!*(v10 + 88))
                        {
                          goto LABEL_59;
                        }

                        v65 = *(v10 + 40);
                        block[0] = _NSConcreteStackBlock;
                        block[1] = 3221225472;
                        block[2] = sub_100151100;
                        block[3] = &unk_1001FD060;
                        v86 = v10;
                        v36 = v36;
                        v87 = v36;
                        dispatch_async(v65, block);

                        v29 = v86;
                      }

                      else
                      {
                        [*(v10 + 96) removeObject:v36];
                        v66 = *(v10 + 80);
                        if (!v66)
                        {
                          goto LABEL_59;
                        }

                        v67 = v66;
                        v68 = *(v10 + 40);
                        v88[0] = _NSConcreteStackBlock;
                        v88[1] = 3221225472;
                        v88[2] = sub_1001510EC;
                        v88[3] = &unk_1001FCE50;
                        v90 = v67;
                        v36 = v36;
                        v89 = v36;
                        v29 = v67;
                        dispatch_async(v68, v88);
                      }

                      goto LABEL_58;
                    }

                    v32 = v32 + 1;
                  }

                  while (v30 != v32);
                  v35 = [v29 countByEnumeratingWithState:&v91 objects:v95 count:16];
                  v30 = v35;
                  if (v35)
                  {
                    continue;
                  }

                  break;
                }
              }

              v36 = 0;
LABEL_58:

LABEL_59:
            }
          }
        }

        else
        {
          endpoint = 0;
        }

        if (!v79)
        {
          goto LABEL_53;
        }

        v37 = nw_browse_result_copy_endpoint(v8);
        v38 = nw_endpoint_get_bonjour_service_name(v37);
        if (v38)
        {
          v39 = [NSString stringWithUTF8String:v38];
          v40 = [v39 lowercaseString];

          objc_opt_self();
          if (qword_1002293A0 != -1)
          {
            dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
          }

          v41 = qword_100229398;
          if (!v41 || (v42 = v41, v43 = [v41[4] containsObject:v40], v42, (v43 & 1) == 0))
          {
            v75 = nw_browse_result_copy_txt_record_object(v8);
            v78 = sub_100151120(v75, "nrN");
            v44 = *(v10 + 24);
            v45 = _NRCopyLogObjectForNRUUID();
            v46 = _NRLogIsLevelEnabled();

            if (v46)
            {
              v47 = *(v10 + 24);
              v48 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v49 = *(v10 + 256);
            if (v49 <= 8 && ((1 << v49) & 0x106) != 0)
            {
              v50 = *(v10 + 152);
              if (v78)
              {
                v51 = *(v10 + 152);
                v52 = *(v10 + 200);
                v53 = v51;
                v54 = [v52 dataUsingEncoding:4];
                v74 = sub_10013EBBC(v53, v78, v54);

                v50 = v74;
              }

              v55 = *(a1 + 40);
              if (v55)
              {
                v55 = v55[5];
              }

              v56 = v55;
              sub_1001512C0(v10, v8, v37, v40, v50, v56, 0);
            }

            else
            {
              v80[0] = _NSConcreteStackBlock;
              v80[1] = 3221225472;
              v80[2] = sub_100151B4C;
              v80[3] = &unk_1001FC7D0;
              objc_copyWeak(&v84, (a1 + 48));
              v81 = v8;
              v82 = v37;
              v83 = v40;
              sub_10014D104(v10, 28671, v80);

              objc_destroyWeak(&v84);
            }
          }
        }

        else
        {
          v57 = *(v10 + 24);
          v58 = _NRCopyLogObjectForNRUUID();
          v59 = _NRLogIsLevelEnabled();

          if (!v59)
          {
LABEL_52:

LABEL_53:
            goto LABEL_54;
          }

          v60 = *(v10 + 24);
          v40 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        goto LABEL_52;
      }
    }
  }

LABEL_54:
}

uint64_t sub_100151100(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 88);
  }

  return (*(v1 + 16))(v1, *(a1 + 40));
}

id sub_100151120(void *a1, const char *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v4)
  {
    v8 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    v10 = sub_10014A248();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
LABEL_8:
      v12 = sub_10014A248();
      _NRLogWithArgs();
    }

LABEL_9:
    v6 = 0;
    goto LABEL_4;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10014CDDC;
  v18 = sub_10014CDEC;
  v19 = 0;
  access_value[0] = _NSConcreteStackBlock;
  access_value[1] = 3221225472;
  access_value[2] = sub_1001526B0;
  access_value[3] = &unk_1001FC820;
  access_value[4] = &v14;
  nw_txt_record_access_key(v3, v4, access_value);
  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

LABEL_4:
  return v6;
}

void sub_1001512A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001512C0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v78 = a4;
  v15 = a5;
  v76 = a6;
  v77 = a7;
  v16 = nw_browse_result_copy_txt_record_object(v13);
  v17 = sub_100151120(v16, "nrN");
  v83 = 0;
  if (_NRIsAppleInternal())
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      v18 = sub_100151120(v16, "nrF");
      if ([v18 length] == 8)
      {
        [v18 bytes];
        [v18 length];
        __memcpy_chk();
      }
    }
  }

  v74 = v15;
  v75 = v17;
  if (*(a1 + 256) != 4)
  {
    if (v15)
    {
      v73 = v14;
      v28 = v15;
      v29 = sub_10014D4C4(a1, v78, v17);
      v30 = v29;
      if (*(a1 + 256) == 4)
      {
        v31 = sub_10014D5A4(a1, v29);
      }

      else
      {
        v31 = sub_10013D1EC(v29, v28);
      }

      v19 = v31;

      v20 = sub_100151120(v16, "nrAT");
      if (sub_10013EE38(v19, v20))
      {
        v36 = *(a1 + 24);
        v37 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v39 = *(a1 + 24);
          v40 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v41 = *(a1 + 18);
        v26 = 1;
        if (*(a1 + 18) && v41 != 255)
        {
          v48 = v28;
          v49 = sub_10014D208(a1, v41, v78, v75);
          v50 = v49;
          if (*(a1 + 256) == 4)
          {
            v51 = sub_10014D5A4(a1, v49);
          }

          else
          {
            v51 = sub_10013D1EC(v49, v48);
          }

          v42 = v51;

          v47 = sub_100151120(v16, "nrD");
          if (!sub_10013EE38(v42, v47))
          {
            v26 = 0;
            goto LABEL_44;
          }

          v72 = v42;
          v52 = *(a1 + 24);
          v53 = _NRCopyLogObjectForNRUUID();
          v54 = _NRLogIsLevelEnabled();

          if (v54)
          {
            v55 = *(a1 + 24);
            v56 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v26 = 1;
LABEL_42:
          v42 = v72;
LABEL_44:

          v14 = v73;
LABEL_48:

          goto LABEL_49;
        }

        v27 = 1;
        v14 = v73;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v14 = v73;
      }

LABEL_50:

      goto LABEL_51;
    }

    v32 = *(a1 + 24);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      goto LABEL_83;
    }

    v35 = *(a1 + 24);
    v19 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_82:

    goto LABEL_83;
  }

  v19 = sub_100151120(v16, "nrAT");
  if (![(NRDeviceEndpoint *)v19 length])
  {
    goto LABEL_82;
  }

  v20 = sub_10014D4C4(a1, v78, v17);
  if (!sub_10014D2D0(a1, v19, v20, v77))
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_50;
  }

  v73 = v14;
  v21 = *(a1 + 24);
  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = *(a1 + 24);
    v25 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v26 = 1;
  if (!*(a1 + 18))
  {
    v27 = 1;
    v14 = v73;
    goto LABEL_51;
  }

  v14 = v73;
  if (*(a1 + 18) != 255)
  {
    v20 = sub_100151120(v16, "nrD");
    if (![v20 length])
    {
      v26 = 0;
LABEL_49:
      v27 = 1;
      goto LABEL_50;
    }

    v42 = sub_10014D208(a1, *(a1 + 18), v78, v75);
    if (!sub_10014D2D0(a1, v20, v42, v77))
    {
      v26 = 0;
      goto LABEL_48;
    }

    v72 = v42;
    v43 = *(a1 + 24);
    v44 = _NRCopyLogObjectForNRUUID();
    v45 = _NRLogIsLevelEnabled();

    if (!v45)
    {
      v42 = v72;
      v14 = v73;
      goto LABEL_48;
    }

    v46 = *(a1 + 24);
    v47 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
    goto LABEL_42;
  }

  v27 = 1;
LABEL_51:

  if (v26 && v27)
  {
    v57 = objc_alloc_init(NRDeviceEndpoint);
    v58 = v57;
    if (v57)
    {
      objc_storeStrong(&v57->_serviceName, a4);
      v58->_type = *(a1 + 18);
      if (v76)
      {
        objc_storeStrong(&v58->_remoteIDSDeviceID, a6);
        goto LABEL_56;
      }
    }

    else if (v76)
    {
LABEL_56:
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v59 = qword_1002290B8;
      v60 = sub_1000CAD2C(v59, 0);
      if (v58)
      {
        v61 = 72;
LABEL_65:
        objc_storeStrong((&v58->super.isa + v61), v60);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    v62 = [[NSUUID alloc] initWithUUIDString:v78];
    if (v58)
    {
      objc_storeStrong(&v58->_peerToken, v62);
    }

    v63 = [NSUUID alloc];
    v59 = *(a1 + 112);
    v60 = [v63 initWithUUIDString:v59];
    if (v58)
    {
      v61 = 88;
      goto LABEL_65;
    }

LABEL_66:

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1 && _NRIsAppleInternal())
    {
      if (qword_100229248 != -1)
      {
        dispatch_once(&qword_100229248, &stru_1001FC360);
      }

      v64 = 3;
      if (!byte_100229240)
      {
        v64 = 1;
      }

      if (!v58)
      {
LABEL_75:

        if (![0 length])
        {
          goto LABEL_81;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v64 = 0;
      if (!v58)
      {
        goto LABEL_75;
      }
    }

    v58->_receivedFlags = v83;
    v58->_localFlags = v64;
    v65 = sub_100151120(v16, "nrAD");
    advertisementData = v58->_advertisementData;
    v58->_advertisementData = v65;

    if (![(NSData *)v58->_advertisementData length])
    {
LABEL_81:
      enumerator[0] = _NSConcreteStackBlock;
      enumerator[1] = 3221225472;
      enumerator[2] = sub_100151E6C;
      enumerator[3] = &unk_1001FC848;
      enumerator[4] = a1;
      v80 = v58;
      v81 = v14;
      v82 = v78;
      v19 = v58;
      nw_browse_result_enumerate_interfaces(v13, enumerator);

      goto LABEL_82;
    }

LABEL_79:
    v67 = *(a1 + 24);
    v68 = _NRCopyLogObjectForNRUUID();
    v69 = _NRLogIsLevelEnabled();

    if (v69)
    {
      v70 = *(a1 + 24);
      v71 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_81;
  }

LABEL_83:
}

void sub_100151B4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = v8[3];
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = v8[3];
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v14 = v8[3];
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = v8[3];
        v18 = _NRCopyLogObjectForNRUUID();
        v37 = 941;
        v38 = [v5 count];
        v35 = "";
        v36 = "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_5";
        _NRLogWithArgs();
      }

      v41 = v8;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v19 = v5;
      v20 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v40 = v5;
      if (v20)
      {
        v21 = v20;
        v22 = *v47;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v46 + 1) + 8 * i);
            if ([v24 type] == 1)
            {
              v39 = v24;
              goto LABEL_19;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v39 = 0;
LABEL_19:

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v19;
      v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v43;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v42 + 1) + 8 * j);
            if ([v30 type] != 1)
            {
              v31 = *(a1 + 32);
              v32 = *(a1 + 40);
              v33 = *(a1 + 48);
              v34 = [v30 idsDeviceID];
              sub_1001512C0(v41, v31, v32, v33, 0, v34, v30);
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v27);
      }

      v6 = 0;
      v5 = v40;
      v8 = v41;
    }
  }
}

uint64_t sub_100151E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  subtype = nw_interface_get_subtype();
  v5 = *(a1 + 32);
  if (subtype != 5001)
  {
    if (v5)
    {
      v12 = *(v5 + 24);
    }

    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = *(v15 + 24);
      }

      v17 = _NRCopyLogObjectForNRUUID();
      v23 = 1111;
      v24 = v3;
      v21 = "";
      v22 = "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]_block_invoke";
      _NRLogWithArgs();
    }

    v11 = nw_parameters_create();
    nw_parameters_require_interface(v11, v3);
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 96);
    }

    else
    {
      v19 = 0;
    }

    [v19 addObject:{*(a1 + 40), v21, v22, v23, v24}];
    sub_100151FF0(*(a1 + 32), *(a1 + 48), v11, *(a1 + 56));
    goto LABEL_17;
  }

  if (v5)
  {
    v6 = *(v5 + 24);
  }

  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 24);
    }

    v11 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_17:
  }

  return 1;
}