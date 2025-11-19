void sub_100182094()
{
  sub_10000FDC0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *v1 = -3900;
  v13 = sub_10000FFF0();
  v14 = sub_10001D1E8(v13);
  if (v14)
  {
    v15 = v14;
    if (sub_100010038(v14))
    {
      if (sub_100017AC4(v12, v10))
      {
        v17 = sub_1000A9AEC();
        v19 = sub_100010040(v17, v18);
        v29 = v10;
        if (v19)
        {
          v20 = v19;
          v21 = sub_100017AC4(v8, v6);
          if (v21)
          {
            v22 = v21;
            sub_100008BF8();
            v23 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000715C(v15);
              [sub_100008C8C() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v23);
            *v2 = 0;
            v24 = sub_10002CF28(v15);
            if ((v24 & 0x10) != 0)
            {
              v27 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"Already ranging, will not queue request."}];
              }

              objc_autoreleasePoolPop(v27);
              sub_100059E7C(v15, v20, v0, 0, 37);
            }

            else
            {
              v25 = v24;
              sub_10002D0CC(v15, v24 | 0x10);
              v26 = sub_1000CF254(v20, v0, v22, sub_1000A981C, v15, v4);
              *v2 = v26;
              if (v26)
              {
                sub_10002D0CC(v15, v25);
              }

              else
              {
                CFRetain(v15);
              }
            }

            CFRelease(v22);
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"%s: unable to find device manager for interface %@"];
          }

          objc_autoreleasePoolPop(v28);
        }

        CFRelease(v0);
        v10 = v29;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v15);
        sub_1000A9BA0();
      }

      objc_autoreleasePoolPop(v16);
    }

    CFRelease(v15);
  }

  sub_100017CC0(v12, v10);
  sub_100017CC0(v8, v6);
  sub_100008690();
}

uint64_t sub_100182300()
{
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        sub_100085C9C(v5, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_set_thermal_index(mach_port_t message:{int)", v7}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_1001823AC()
{
  sub_100008C40();
  *v1 = 100;
  v2 = sub_10000FFF0();
  v3 = sub_10001D1E8(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      v6 = sub_100029A10(v4);
      if (v6)
      {
        *v0 = sub_100085B58(v6);
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v8 = sub_10000715C(v4);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_thermal_index(mach_port_t message:{int *)", v8}];
      }

      objc_autoreleasePoolPop(v5);
    }

    CFRelease(v4);
  }

  return 0;
}

void sub_100182464(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, CFTypeRef cf, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000FDC0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000DB74();
  cf = 0;
  *v39 = 0;
  *v40 = 0;
  *v41 = -3900;
  v42 = sub_10000FFF0();
  v43 = sub_10001D1E8(v42);
  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = v43;
  if (sub_100010038(v43))
  {
    v46 = sub_100015EC4();
    v48 = sub_100017AC4(v46, v47);
    v49 = v36;
    v50 = v48;
    v58 = v49;
    v51 = sub_100017AC4(v38, v49);
    v52 = v51;
    if (v50 && v51)
    {
      v57 = v38;
      v53 = sub_100010040(v44, v50);
      v54 = objc_autoreleasePoolPush();
      if (v53)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"%s: received debug request: %@"];
        }

        objc_autoreleasePoolPop(v54);
        *v30 = sub_1000CF704(v53, v50, v52, &cf);
        v38 = v57;
        if (cf)
        {
          sub_100017C18(cf, v34, v32);
        }
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"%s: unable to find device manager for interface %@"];
        }

        objc_autoreleasePoolPop(v54);
        v38 = v57;
      }
    }

    else if (!v50)
    {
LABEL_14:
      v36 = v58;
      if (v52)
      {
        CFRelease(v52);
      }

      goto LABEL_16;
    }

    CFRelease(v50);
    goto LABEL_14;
  }

  v45 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000715C(v44);
    [sub_100008C8C() WFLog:? message:?];
  }

  objc_autoreleasePoolPop(v45);
LABEL_16:
  CFRelease(v44);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_18:
  v55 = sub_100015EC4();
  sub_100017CC0(v55, v56);
  sub_100017CC0(v38, v36);
  sub_100008690();
}

void sub_100182654()
{
  sub_1000086C4();
  sub_10000842C();
  v7 = sub_100017AA0(v2, v3, v4, v5, v6);
  v8 = sub_10000D824(v7);
  if (v8)
  {
    v9 = v8;
    if (sub_100010038(v8))
    {
      v11 = sub_100029DC0();
      if (sub_100017AC4(v11, v12))
      {
        v13 = sub_100021D64();
        v14 = sub_100010040(v13, v0);
        if (v14 && (v15 = sub_1000C8ED8(v14, v0)) != 0)
        {
          sub_10001DB90(v15);
          CFRelease(v0);
          v16 = v1;
        }

        else
        {
          v16 = v0;
        }

        CFRelease(v16);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v9);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v10);
    }

    CFRelease(v9);
  }

  v17 = sub_100029DC0();
  sub_100017CC0(v17, v18);
  sub_100010944();
}

void sub_100182744()
{
  sub_1000086C4();
  v1 = v0;
  sub_1000075A4();
  *v2 = -3900;
  v3 = sub_10000FFF0();
  v4 = sub_10002A0AC(v3);
  if (v4)
  {
    v5 = v4;
    if ((sub_100010038(v4) & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [v7 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      objc_autoreleasePoolPop(v6);
LABEL_13:
      CFRelease(v5);
      goto LABEL_14;
    }

    v8 = sub_100015EC4();
    v10 = sub_100017AC4(v8, v9);
    v11 = sub_100029DC0();
    v13 = sub_100017AC4(v11, v12);
    v14 = v13;
    if (v10 && v13)
    {
      v15 = sub_10001EDAC();
      v17 = sub_100010040(v15, v16);
      if (v17)
      {
        *v1 = sub_1000D05A4(v17, v14);
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"%s: unable to find device manager for interface %@"];
        }

        objc_autoreleasePoolPop(v22);
      }
    }

    else if (!v10)
    {
LABEL_11:
      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_13;
    }

    CFRelease(v10);
    goto LABEL_11;
  }

LABEL_14:
  v18 = sub_100015EC4();
  sub_100017CC0(v18, v19);
  v20 = sub_100029DC0();
  sub_100017CC0(v20, v21);
  sub_100010944();
}

void sub_100182894()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        sub_100017AC4(v6, v7);
        v8 = sub_1000A9ADC();
        sub_100083E8C(v8);
        if (v0)
        {
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_100182960()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_1000214F4();
        if (sub_100182A2C(v5, v6))
        {
          sub_1000A9ADC();
          sub_10015F778();
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v7 = sub_100029DC0();
  sub_100017CC0(v7, v8);
  sub_1000084B8();
}

const __CFDictionary *sub_100182A2C(UInt8 *a1, CFIndex length)
{
  v2 = sub_100017AC4(a1, length);
  v3 = v2;
  if (v2 && (v4 = CFGetTypeID(v2), v4 == CFDictionaryGetTypeID()))
  {
    sub_10013BF0C(kCFAllocatorDefault, v3);
    v5 = sub_100011430();
    CFRelease(v5);
    v3 = 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void sub_100182AA0()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_1000214F4();
        if (sub_100182A2C(v5, v6))
        {
          sub_1000A9ADC();
          sub_10015F960();
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v7 = sub_100029DC0();
  sub_100017CC0(v7, v8);
  sub_1000084B8();
}

void sub_100182B6C()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = sub_1000863CC(v7);
        if (v8)
        {
          v9 = v8;
          v10 = sub_10013C2C0(v8);
          if (v10)
          {
            v11 = v10;
            sub_1000A9B40(v10);
            CFRelease(v11);
          }

          CFRelease(v9);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

uint64_t sub_100182C3C(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100080F4C(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_restriction_policy_active(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100182CE8()
{
  sub_100011520();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10000DB74();
  *v9 = 0;
  *v10 = 0;
  *v11 = 0;
  v12 = sub_10000FFF0();
  v13 = sub_10001D1E8(v12);
  if (v13)
  {
    v14 = v13;
    if ((sub_100010038(v13) & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      if (!off_100298C40)
      {
LABEL_6:
        objc_autoreleasePoolPop(v15);
LABEL_16:
        CFRelease(v14);
        goto LABEL_17;
      }

      sub_10000715C(v14);
      v16 = sub_1000A9B34();
LABEL_5:
      [v16 WFLog:? message:?];
      goto LABEL_6;
    }

    v17 = sub_100015EC4();
    if (!sub_100017AC4(v17, v18))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v19 = sub_1000A9AEC();
    v21 = sub_100010040(v19, v20);
    v30 = v8;
    if (v21)
    {
      v22 = v21;
      v23 = sub_100017AC4(v8, v6);
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: Calling WiFiDeviceManagerProcessWoWBlacklistCommands with request:%@"];
      }

      objc_autoreleasePoolPop(v24);
      v25 = sub_1000C2CD8(v22, v23);
      v26 = v25;
      if (v25)
      {
        sub_100017C18(v25, v4, v2);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: unable to find device manager for interface %@"];
      }

      objc_autoreleasePoolPop(v29);
      v23 = 0;
      v26 = 0;
    }

    CFRelease(v0);
    CFRelease(v14);
    if (v23)
    {
      CFRelease(v23);
    }

    v14 = v26;
    v8 = v30;
    if (v26)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v27 = sub_100015EC4();
  sub_100017CC0(v27, v28);
  sub_100017CC0(v8, v6);
  sub_10001091C();
}

void sub_100182EE8()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = sub_100086A2C(v7);
        if (v8)
        {
          v9 = v8;
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v5);
            sub_1000A9B70();
          }

          objc_autoreleasePoolPop(v10);
          sub_1000A9B40(v9);
          CFRelease(v9);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

void sub_100182FE8()
{
  sub_100011520();
  sub_10000842C();
  v5 = sub_100017AA0(v0, v1, v2, v3, v4);
  v6 = sub_10000D824(v5);
  if (v6)
  {
    v7 = v6;
    if (sub_100010038(v6))
    {
      v9 = sub_100029A10(v7);
      if (v9)
      {
        v10 = v9;
        v11 = sub_1000086AC();
        v13 = sub_10017F938(v11, v12);
        if (v13)
        {
          v14 = v13;
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v14);
            sub_10000715C(v7);
            sub_10002A0E4();
          }

          objc_autoreleasePoolPop(v15);
          v16 = sub_10002D3B4();
          v18 = sub_1000865C0(v16, v17);
          if (v18)
          {
            sub_10001DB90(v18);
            CFRelease(v10);
          }

          CFRelease(v14);
        }
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v7);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v8);
    }

    CFRelease(v7);
  }

  v19 = sub_100029DC0();
  sub_100017CC0(v19, v20);
  sub_10001091C();
}

uint64_t sub_100183124(double a1, double a2)
{
  if (fabs(a1) > 90.0)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid latitude value", "_wifi_manager_set_geotag_for_network"}];
    }

    goto LABEL_19;
  }

  if (fabs(a2) > 180.0)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid longitude value", "_wifi_manager_set_geotag_for_network"}];
    }

LABEL_19:
    objc_autoreleasePoolPop(v20);
    goto LABEL_14;
  }

  v5 = sub_10000FFF0();
  v6 = sub_10000D824(v5);
  if (v6)
  {
    v7 = v6;
    if (sub_100010038(v6))
    {
      if (sub_100029A10(v7))
      {
        v9 = sub_1000214F4();
        v11 = sub_10017F938(v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v12);
            v14 = sub_100010980();
            v22 = sub_10000715C(v14);
            [sub_10002D390() WFLog:"_wifi_manager_set_geotag_for_network" message:{v2, v22}];
          }

          objc_autoreleasePoolPop(v13);
          v15 = sub_10000DAB4();
          sub_100086648(v15, v16, a1, a2);
          CFRelease(v12);
        }
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v21 = sub_10000715C(v7);
        [sub_1000A9AFC() WFLog:"kern_return_t _wifi_manager_set_geotag_for_network(mach_port_t message:{vm_offset_t, mach_msg_type_number_t, double, double)", v21}];
      }

      objc_autoreleasePoolPop(v8);
    }

    CFRelease(v7);
  }

LABEL_14:
  v17 = sub_100029DC0();
  sub_100017CC0(v17, v18);
  return 0;
}

uint64_t sub_10018330C(double a1, double a2, uint64_t a3, int a4, vm_offset_t *a5, mach_msg_type_number_t *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (fabs(a1) > 90.0)
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid latitude value", "_wifi_manager_copy_networks_at_location"}];
    }

    goto LABEL_26;
  }

  if (fabs(a2) > 180.0)
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid longitude value", "_wifi_manager_copy_networks_at_location"}];
    }

LABEL_26:
    objc_autoreleasePoolPop(v24);
    return 0;
  }

  if (a4)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Scored Sorting no more supported", "_wifi_manager_copy_networks_at_location"}];
    }

    objc_autoreleasePoolPop(v10);
  }

  v11 = sub_10000FFF0();
  v12 = sub_10000D824(v11);
  if (v12)
  {
    v13 = v12;
    if (sub_100010038(v12))
    {
      v16 = sub_100029A10(v13);
      if (v16)
      {
        v17 = v16;
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v13);
          sub_1000A9B70();
        }

        objc_autoreleasePoolPop(v18);
        v19 = sub_10008671C(v17, a1, a2);
        if (v19)
        {
          v20 = v19;
          v21 = sub_100035314(v19);
          if (v21)
          {
            v22 = v21;
            sub_100017C18(v21, a5, a6);
            CFRelease(v22);
          }

          CFRelease(v13);
          v15 = v20;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v25 = sub_10000715C(v13);
        [sub_100008C8C() WFLog:"kern_return_t _wifi_manager_copy_networks_at_location(mach_port_t message:{double, double, int, vm_offset_t *, mach_msg_type_number_t *)", v25}];
      }

      objc_autoreleasePoolPop(v14);
    }

    v15 = v13;
LABEL_20:
    CFRelease(v15);
  }

  return 0;
}

void sub_100183534()
{
  sub_100011520();
  sub_10000842C();
  v5 = sub_100017AA0(v0, v1, v2, v3, v4);
  v6 = sub_10000D824(v5);
  if (v6)
  {
    v7 = v6;
    if (sub_100010038(v6))
    {
      v9 = sub_100029A10(v7);
      if (v9)
      {
        v10 = v9;
        v11 = sub_1000086AC();
        v13 = sub_10017F938(v11, v12);
        if (v13)
        {
          v14 = v13;
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v14);
            sub_10000715C(v7);
            sub_10002A0E4();
          }

          objc_autoreleasePoolPop(v15);
          v16 = sub_10002D3B4();
          v18 = sub_1000867EC(v16, v17);
          if (v18)
          {
            sub_10001DB90(v18);
            CFRelease(v10);
          }

          CFRelease(v14);
        }
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v7);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v8);
    }

    CFRelease(v7);
  }

  v19 = sub_100029DC0();
  sub_100017CC0(v19, v20);
  sub_10001091C();
}

uint64_t sub_100183670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  sub_1000075A4();
  value = 0;
  valuePtr = 19;
  *v7 = 0;
  v8 = sub_10000FFF0();
  v9 = sub_10002A0AC(v8);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  if ((sub_100010038(v9) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_soft_error_notification(mach_port_t, vm_offset_t, mach_msg_type_number_t, vm_offset_t, mach_msg_type_number_t, int *)", sub_10000715C(v10)}];
    }

    objc_autoreleasePoolPop(v11);
    sub_100024B98();
    goto LABEL_6;
  }

  v13 = sub_100015EC4();
  if (!sub_100017AC4(v13, v14))
  {
LABEL_6:
    v12 = v10;
LABEL_19:
    CFRelease(v12);
    goto LABEL_20;
  }

  v15 = sub_1000A9AEC();
  v17 = sub_100010040(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_100029DC0();
    v21 = sub_100017AC4(v19, v20);
    if (CFDictionaryGetValueIfPresent(v21, @"APPLE80211KEY_SOFT_ERROR_EVENT_TYPE", &value))
    {
      if (value)
      {
        CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr < 0x13)
        {
          sub_1000D51B8(v18);
          goto LABEL_17;
        }

        v22 = objc_autoreleasePoolPush();
        v23 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_16;
        }

        v32 = valuePtr;
        v24 = "%s: Invalid SoftError Event:%u";
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_16;
        }

        v24 = "%s: SoftErrorEventNum is Null!";
      }

      v25 = 3;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_16:
        objc_autoreleasePoolPop(v22);
        goto LABEL_17;
      }

      v24 = "%s: No APPLE80211KEY_SOFT_ERROR_EVENT_TYPE Key ";
      v25 = 4;
    }

    [v23 WFLog:v25 message:{v24, "_wifi_device_soft_error_notification", v32}];
    goto LABEL_16;
  }

  v31 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unable to find device manager for interface %@", "_wifi_device_soft_error_notification", a6}];
  }

  objc_autoreleasePoolPop(v31);
  v21 = 0;
LABEL_17:
  CFRelease(a6);
  CFRelease(v10);
  if (v21)
  {
    v12 = v21;
    goto LABEL_19;
  }

LABEL_20:
  v26 = sub_100015EC4();
  sub_100017CC0(v26, v27);
  v28 = sub_100029DC0();
  sub_100017CC0(v28, v29);
  return 0;
}

uint64_t sub_1001838B0(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = sub_100086D60(v8);
        if (v9)
        {
          sub_10000393C(v9);
          CFRelease(v3);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v6);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_copy_softerror_counters(mach_port_t message:{vm_offset_t *, mach_msg_type_number_t *)", v11}];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  return 0;
}

void sub_100183968()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = sub_100021804(v7);
        if (v8)
        {
          v9 = v8;
          v10 = sub_100017C00(v8);
          if (v10)
          {
            v11 = v10;
            sub_1000A9B40(v10);
            CFRelease(v11);
          }

          CFRelease(v9);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

void sub_100183A38()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        v8 = sub_10000715C(v3);
        sub_1000740C8(v6, v0, 0, v8);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

uint64_t sub_100183B34()
{
  sub_100015E88();
  v1 = sub_10000FFF0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (!v5)
      {
LABEL_10:
        CFRelease(v3);
        return 0;
      }

      *v0 = sub_10000CDC4(v5);
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        v6 = *v0;
        sub_1000A9B08();
        [sub_10000FC2C() WFLog:v8 message:v9];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_user_auto_join_state(mach_port_t message:{int *)", v10}];
      }
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_100183C28()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(v2);
          [sub_10000FC2C() WFLog:v8 message:?];
        }

        objc_autoreleasePoolPop(v6);
        sub_100087174(v5);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_remove_orphaned_sc_network_sets(mach_port_t)" message:v9];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_100183D18()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(v2);
          [sub_10000FC2C() WFLog:v8 message:?];
        }

        objc_autoreleasePoolPop(v6);
        sub_100087BD8(v5);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_migrate_list(mach_port_t)" message:v9];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_100183E08()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(v2);
          [sub_10000FC2C() WFLog:v8 message:?];
        }

        objc_autoreleasePoolPop(v6);
        sub_100160DEC(v5);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_reset_private_mac(mach_port_t)" message:v9];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_100183EF8()
{
  v1 = sub_1000A9CB0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v9 = sub_10000715C(v3);
          [sub_10000FC2C() WFLog:v9 message:*&v0];
        }

        objc_autoreleasePoolPop(v7);
        sub_100086B70(v6, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_remove_unused_network_geotags(mach_port_t message:{double)", v10}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_100183FF4(uint64_t a1, int a2)
{
  v4 = sub_1000A9CB0();
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = v8;
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v6);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v10);
        sub_100086C3C(v9, a2, v2);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v12 = sub_10000715C(v6);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_schedule_unused_network_geotags_removal_test(mach_port_t message:{double, int)", v12}];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_100184100()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(v2);
          [sub_10000FC2C() WFLog:v8 message:?];
        }

        objc_autoreleasePoolPop(v6);
        sub_100086D3C(v5);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_unschedule_unused_network_geotags_removal_test(mach_port_t)" message:v9];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  return 0;
}

void sub_1001844D4()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10000FFF0();
  v7 = sub_10000D824(v6);
  if (v7)
  {
    v8 = v7;
    if (sub_100010038(v7))
    {
      v10 = sub_100029A10(v8);
      if (v10)
      {
        v11 = v10;
        if (v5)
        {
          v12 = sub_10017F938(v5, v3);
        }

        else
        {
          v12 = 0;
        }

        v13 = sub_100029DC0();
        v15 = sub_100017AC4(v13, v14);
        sub_100088350(v11, v12, v1);
        if (v15)
        {
          CFRelease(v15);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v8);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v9);
    }

    CFRelease(v8);
  }

  v16 = sub_100029DC0();
  sub_100017CC0(v16, v17);
  sub_100010944();
}

void sub_1001845F0()
{
  sub_1000086C4();
  v2 = v1;
  v4 = v3;
  sub_100008C40();
  v5 = sub_10000FFF0();
  v6 = sub_10001D1E8(v5);
  if (v6)
  {
    v7 = v6;
    if (!sub_100017AC4(v0, v4))
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s:interface is NULL!"];
      }

      objc_autoreleasePoolPop(v16);
      v0 = v7;
      goto LABEL_19;
    }

    v8 = sub_100011430();
    if (sub_100010038(v8))
    {
      v12 = sub_100010040(v7, v0);
      v13 = objc_autoreleasePoolPush();
      if (v12)
      {
        if (off_100298C40)
        {
          sub_10000715C(v7);
          sub_1000A9B70();
        }

        objc_autoreleasePoolPop(v13);
        v14 = sub_1000D6C84(v12, v0);
        v15 = objc_autoreleasePoolPush();
        if (v14)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"%s Did destroy EAP trust exceptions for the current network."];
          }

          objc_autoreleasePoolPop(v15);
          *v2 = 0;
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"%s **Failed to destroy EAP trust exceptions for the current network."];
          }

          objc_autoreleasePoolPop(v15);
          *v2 = -3900;
        }

        goto LABEL_18;
      }

      if (off_100298C40)
      {
        sub_1000A9BA0();
      }

      v11 = v13;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000715C(v7);
        [v10 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      v11 = v9;
    }

    objc_autoreleasePoolPop(v11);
LABEL_18:
    CFRelease(v7);
LABEL_19:
    CFRelease(v0);
  }

  sub_100010944();
}

uint64_t sub_1001847E8()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(v2);
          [sub_10000FC2C() WFLog:v8 message:?];
        }

        objc_autoreleasePoolPop(v6);
        sub_100088594(v5);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_tigger_gizmo_sync_password_check(mach_port_t)" message:v9];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_1001848D8(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if ((sub_100010038(v5) & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_copy_ssid_most_used_geo_tagged_to_current_location(mach_port_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v6)}];
      }

LABEL_10:
      objc_autoreleasePoolPop(v7);
      goto LABEL_11;
    }

    v8 = sub_100029A10(v6);
    if (v8)
    {
      v9 = sub_10016151C(v8);
      if (!v9)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to copy SSID representing most used network that's geo tagged to current device location", v11, v12}];
        }

        goto LABEL_10;
      }

      sub_10000393C(v9);
      CFRelease(v3);
    }

LABEL_11:
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_1001849B8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100010038(v4))
  {
    v7 = sub_100029A10(v5);
    if (v7)
    {
      v8 = sub_1000885E4(v7);
      sub_100021864(v8);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v10 = sub_10000715C(v5);
      [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_wpa3_personal_supported(mach_port_t message:{int *)", v10}];
    }

    objc_autoreleasePoolPop(v6);
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_100184A7C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100010038(v4))
  {
    v7 = sub_100029A10(v5);
    if (v7)
    {
      v8 = sub_10008868C(v7);
      sub_100021864(v8);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v10 = sub_10000715C(v5);
      [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_hotspot_wpa3_personal_supported(mach_port_t message:{int *)", v10}];
    }

    objc_autoreleasePoolPop(v6);
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_100184B40(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100010038(v4))
  {
    v7 = sub_100029A10(v5);
    if (v7)
    {
      v8 = sub_10007D740(v7);
      sub_100021864(v8);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v10 = sub_10000715C(v5);
      [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_managed_apple_id(mach_port_t message:{int *)", v10}];
    }

    objc_autoreleasePoolPop(v6);
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_100184C04(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100010038(v4))
  {
    v7 = sub_100029A10(v5);
    if (v7)
    {
      v8 = sub_100088638(v7);
      sub_100021864(v8);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v10 = sub_10000715C(v5);
      [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_wpa3_enterprise_supported(mach_port_t message:{int *)", v10}];
    }

    objc_autoreleasePoolPop(v6);
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_100184CC8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100010038(v4))
  {
    v7 = sub_100029A10(v5);
    if (v7)
    {
      v8 = sub_1000886E0(v7);
      sub_100021864(v8);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v10 = sub_10000715C(v5);
      [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_mfp_capable_device(mach_port_t message:{int *)", v10}];
    }

    objc_autoreleasePoolPop(v6);
    v2 = 2;
  }

  CFRelease(v5);
  return v2;
}

void sub_100184D8C()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v2);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100029EE8();
        sub_100088D58(v5, v6, v7);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_100184E78()
{
  sub_100008C40();
  v3 = sub_1000A9CC8(v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v0 = sub_100088E40(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_auto_instant_hotspot_mode(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100184F28()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v2);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100029EE8();
        sub_100088DF0(v5, v6, v7);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_100185010()
{
  sub_100008C40();
  v3 = sub_1000A9CC8(v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v0 = sub_100088EDC(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_share_personal_hotspot_mode(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_1001850C0()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v2);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100029EE8();
        sub_100088F9C(v5, v6);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_1001851A8()
{
  v1 = sub_1000A9CB0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v9 = sub_10000715C(v3);
          [sub_10000FC2C() WFLog:v9 message:*&v0];
        }

        objc_autoreleasePoolPop(v7);
        sub_100088F78(v6, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_set_auto_instant_hotspot_trigger_interval(mach_port_t message:{double)", v10}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

void sub_1001852A4()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  sub_10000842C();
  *v4 = 0;
  v5 = sub_10000FFF0();
  v6 = sub_10000D824(v5);
  if (v6)
  {
    v7 = v6;
    if (sub_100010038(v6))
    {
      v9 = sub_100029A10(v7);
      if (v9)
      {
        v10 = v9;
        v11 = sub_100029DC0();
        v13 = sub_100017AC4(v11, v12);
        if (v13)
        {
          v14 = v13;
          if (sub_100010040(v7, v13))
          {
            *v1 = sub_100088B0C(v10, v7, v3);
          }

          CFRelease(v14);
        }
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v7);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v8);
    }

    CFRelease(v7);
  }

  v15 = sub_100029DC0();
  sub_100017CC0(v15, v16);
  sub_100010944();
}

void sub_1001853A0()
{
  sub_1000086C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_10000842C();
  *v7 = -3900;
  v8 = sub_10000FFF0();
  v9 = sub_10000D824(v8);
  if (v9)
  {
    v10 = v9;
    if (sub_100010038(v9))
    {
      v12 = sub_100029A10(v10);
      if (v12)
      {
        v13 = v12;
        v14 = sub_100029DC0();
        if (sub_100017AC4(v14, v15))
        {
          v16 = sub_100021D64();
          v17 = sub_100010040(v16, v0);
          if (v17)
          {
            if (v6 == 14)
            {
              v18 = sub_1000D6F38(v17);
              *v2 = v18;
              if (!v18)
              {
                sub_100088734(v13, v10, 14, v4);
              }
            }

            else
            {
              v19 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:"%s ERROR: Unhandled event %llu"];
              }

              objc_autoreleasePoolPop(v19);
            }
          }

          CFRelease(v0);
        }
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v10);
        sub_1000A9BA0();
      }

      objc_autoreleasePoolPop(v11);
      *v2 = 1;
    }

    CFRelease(v10);
  }

  v20 = sub_100029DC0();
  sub_100017CC0(v20, v21);
  sub_100010944();
}

uint64_t sub_100185508(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100088C2C(v7, 1);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_infra_allowed(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_1001855B8(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100088C10(v7, 2);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_p2p_allowed(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_100185840(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = sub_1001619D4(v8);
        if (v9)
        {
          sub_10000393C(v9);
          CFRelease(v6);
          v6 = v3;
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v6);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_copy_family_hotspot_preferences(mach_port_t message:{vm_offset_t *, mach_msg_type_number_t *)", v11}];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_1001858FC(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007CD9C(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_power_modification_disabled(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_1001859A8()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        sub_100085360(v6, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

uint64_t sub_100185A94(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100089978(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_personal_hotspot_modification_disabled(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100185B40()
{
  sub_1000086C4();
  v2 = v1;
  v4 = v3;
  sub_10000842C();
  v10 = sub_100017AA0(v5, v6, v7, v8, v9);
  v11 = sub_10000D824(v10);
  if (v11)
  {
    v12 = v11;
    if ((sub_100010038(v11) & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v12);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v13);
LABEL_11:
      CFRelease(v12);
      goto LABEL_12;
    }

    v14 = sub_100029DC0();
    if (!sub_100017AC4(v14, v15))
    {
      goto LABEL_11;
    }

    v16 = sub_100021D64();
    if (sub_100010040(v16, v0))
    {
      sub_10018E2B0();
      v18 = v17;
      if (v17)
      {
        sub_100017C18(v17, v4, v2);
      }
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v0);
    CFRelease(v12);
    v12 = v18;
    if (v18)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v19 = sub_100029DC0();
  sub_100017CC0(v19, v20);
  sub_100010944();
}

void sub_100185C44()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029DC0();
      if (sub_100017AC4(v5, v6))
      {
        v7 = sub_100010938();
        v8 = sub_100010040(v7, v0);
        if (v8)
        {
          sub_1000D9C74(v8);
          v9 = sub_100029A10(v3);
          if (v9)
          {
            sub_1000893E8(v9);
          }
        }

        CFRelease(v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v10 = sub_100029DC0();
  sub_100017CC0(v10, v11);
  sub_1000084B8();
}

void sub_100185D20()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_100029DC0();
        sub_100017AC4(v5, v6);
        v7 = sub_1000A9ADC();
        sub_10016358C(v7, v8);
        if (v0)
        {
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_100185DF0()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_100029DC0();
        sub_100017AC4(v5, v6);
        v7 = sub_1000A9ADC();
        sub_1001636A0(v7, v8);
        if (v0)
        {
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_100185EC0()
{
  sub_10000FC44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10000842C();
  *v8 = 0;
  v9 = sub_10000FFF0();
  v10 = sub_10000D824(v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_100010038(v10) & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v11);
        sub_1000A9BA0();
      }

      objc_autoreleasePoolPop(v12);
      *v1 = 1;
      goto LABEL_6;
    }

    v14 = sub_100029A10(v11);
    if (!v14 || (v15 = v14, v16 = sub_100029DC0(), (v18 = sub_100017AC4(v16, v17)) == 0))
    {
LABEL_6:
      v13 = v11;
LABEL_14:
      CFRelease(v13);
      goto LABEL_15;
    }

    v19 = v18;
    v13 = sub_100017AC4(v5, v3);
    if (!sub_1001637E0(v15, v19, v7, v13))
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"WFMacRandomisation : Unable to Set private mac preference"];
      }

      objc_autoreleasePoolPop(v20);
    }

    CFRelease(v19);
    CFRelease(v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v21 = sub_100029DC0();
  sub_100017CC0(v21, v22);
  sub_1000113F8();
}

void sub_10018600C()
{
  sub_100011520();
  v2 = v1;
  v4 = v3;
  sub_10000DB74();
  v5 = sub_10000FFF0();
  v6 = sub_10001D1E8(v5);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  if ((sub_100010038(v6) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
LABEL_6:
      objc_autoreleasePoolPop(v8);
LABEL_21:
      CFRelease(v7);
      goto LABEL_22;
    }

    sub_10000715C(v7);
    v9 = sub_1000A9B34();
LABEL_5:
    [v9 WFLog:? message:?];
    goto LABEL_6;
  }

  v10 = sub_100015EC4();
  if (!sub_100017AC4(v10, v11))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = sub_1000A9AEC();
  v14 = sub_100010040(v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000A9C00();
    v18 = sub_100017AC4(v16, v17);
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: Calling WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse with request:%@"];
    }

    objc_autoreleasePoolPop(v19);
    v20 = sub_1000D9D60(v15, v18);
    v21 = v20;
    if (v20)
    {
      if (CFDictionaryContainsKey(v20, @"networks"))
      {
        if (CFDictionaryContainsKey(v21, @"reasons"))
        {
          if (CFDictionaryContainsKey(v21, @"timestamps"))
          {
            if (CFDictionaryContainsKey(v21, @"reasonData"))
            {
              Value = CFDictionaryGetValue(v21, @"networks");
              v23 = sub_100035314(Value);
              if (v23)
              {
                v24 = v23;
                sub_10002D0A8(v23, @"networks");
                CFRelease(v24);
                sub_100017C18(v21, v4, v2);
                goto LABEL_18;
              }

              v30 = objc_autoreleasePoolPush();
              v31 = off_100298C40;
              if (!off_100298C40)
              {
                goto LABEL_39;
              }

              v32 = "%s - _WiFiCreateRecordsFromNetworks failed";
              goto LABEL_38;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = off_100298C40;
            if (off_100298C40)
            {
              v32 = "%s No blacklist reasonData in response";
              goto LABEL_38;
            }

LABEL_39:
            objc_autoreleasePoolPop(v30);
            goto LABEL_18;
          }

          v30 = objc_autoreleasePoolPush();
          v31 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_39;
          }

          v32 = "%s No blacklist timestamps in response";
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_39;
          }

          v32 = "%s No blacklist reasons in response";
        }
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_39;
        }

        v32 = "%s No blacklisted WiFiNetworkRef (records) in response";
      }

LABEL_38:
      [v31 WFLog:3 message:v32];
      goto LABEL_39;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: unable to find device manager for interface %@"];
    }

    objc_autoreleasePoolPop(v29);
    v18 = 0;
    v21 = 0;
  }

LABEL_18:
  CFRelease(v0);
  CFRelease(v7);
  if (v18)
  {
    CFRelease(v18);
  }

  v7 = v21;
  if (v21)
  {
    goto LABEL_21;
  }

LABEL_22:
  v25 = sub_100015EC4();
  sub_100017CC0(v25, v26);
  v27 = sub_1000A9C00();
  sub_100017CC0(v27, v28);
  sub_10001091C();
}

void sub_100186378()
{
  sub_100011520();
  v3 = v2;
  v5 = v4;
  sub_100008C40();
  v6 = sub_10000FFF0();
  v7 = sub_10001D1E8(v6);
  if (v7)
  {
    v8 = v7;
    if ((sub_100010038(v7) & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v8);
        [sub_1000A9B34() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_6;
    }

    if (!sub_100029A10(v8) || (v11 = sub_100010980(), (v12 = sub_10017F938(v11, v3)) == 0))
    {
LABEL_6:
      v10 = v8;
LABEL_14:
      CFRelease(v10);
      goto LABEL_15;
    }

    v13 = v12;
    v23 = v5;
    v10 = sub_100017AC4(v0, v5);
    sub_10000715C(v8);
    v14 = sub_10001EDAC();
    v16 = sub_100010040(v14, v15);
    if (v16)
    {
      v17 = v16;
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000A878(v13);
        sub_10002D39C();
      }

      objc_autoreleasePoolPop(v18);
      sub_100081EDC(v1, v13, 1);
      v19 = [sub_10001B368(v13) disable6EMode] == 2;
      v20 = sub_10000A878(v13);
      sub_1000C9564(v17, v10, v20, v19);
    }

    CFRelease(v13);
    CFRelease(v8);
    v5 = v23;
    if (v10)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v21 = sub_100015EC4();
  sub_100017CC0(v21, v22);
  sub_100017CC0(v0, v5);
  sub_10001091C();
}

void sub_100186524()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        if (sub_100017AC4(v6, v7))
        {
          sub_1000A9ADC();
          sub_1001627C4();
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v8 = sub_100029DC0();
  sub_100017CC0(v8, v9);
  sub_1000084B8();
}

void sub_1001865F0()
{
  sub_1000086C4();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_1000214F4();
        if (sub_10017F938(v5, v6))
        {
          v7 = sub_10002D09C();
          sub_10000715C(v7);
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v0);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v8);
          sub_10000DAB4();
          sub_100164F6C();
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_100010944();
}

void sub_100186700()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  *v0 = 0;
  v6 = sub_10017F938(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_10000FFF0();
    v9 = sub_10000FF3C(v3, v8);
    if (!v9)
    {
LABEL_12:
      CFRelease(v7);
      goto LABEL_13;
    }

    v10 = v9;
    if (sub_100010038(v9))
    {
      if (!sub_100029A10(v10))
      {
LABEL_11:
        CFRelease(v10);
        goto LABEL_12;
      }

      *v1 = sub_100165134();
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v10);
        v13 = *v1;
        sub_1000A9B08();
        v12 = sub_10002D390();
        goto LABEL_9;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v10);
        v12 = sub_1000A9AFC();
LABEL_9:
        [v12 WFLog:? message:?];
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_11;
  }

LABEL_13:
  v14 = sub_100029DC0();
  sub_100017CC0(v14, v15);
  sub_100010944();
}

void sub_100186834()
{
  sub_1000086C4();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v7 = sub_1000086AC();
      if (sub_10017F938(v7, v8))
      {
        v9 = sub_10002D09C();
        if (sub_100029A10(v9))
        {
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v3);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v10);
          v11 = sub_10009502C();
          sub_100165368(v11, v12, v13);
        }

        CFRelease(v3);
        v3 = v0;
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v5 = sub_100029DC0();
  sub_100017CC0(v5, v6);
  sub_100010944();
}

void sub_100186950()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        if (sub_100017AC4(v6, v7))
        {
          v8 = sub_1000A9ADC();
          sub_100164F24(v8);
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

uint64_t sub_100186A1C(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C3DC(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_multi_band(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_100186AC8(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C430(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_hardware_failure(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_100186B74()
{
  v1 = sub_10000FFF0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100011430();
      if ((sub_100010038(v4) & 1) == 0)
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      if (!sub_10014B788(v3, @"com.apple.wifi.manager-access"))
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
LABEL_9:
          v7 = sub_10000715C(v3);
          [sub_100011424() WFLog:"kern_return_t _wifi_manager_reset_network_settings(mach_port_t)" message:v7];
        }

LABEL_10:
        objc_autoreleasePoolPop(v5);
        goto LABEL_11;
      }

      sub_1001657A4(v0);
    }

LABEL_11:
    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_100186C74()
{
  v1 = sub_10000FFF0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100011430();
      if (sub_100010038(v4))
      {
        sub_100166084(v0);
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v7 = sub_10000715C(v3);
          [sub_100011424() WFLog:"kern_return_t _wifi_manager_purge_expired_known_networks(mach_port_t)" message:v7];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_100186D28()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100010038(v1);
    v4 = objc_autoreleasePoolPush();
    if (v3)
    {
      if (off_100298C40)
      {
        v6 = sub_10000715C(v2);
        [sub_10000DAC0() WFLog:v6 message:?];
      }

      objc_autoreleasePoolPop(v4);
      sub_10006B830();
    }

    else
    {
      if (off_100298C40)
      {
        v7 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_cleanup_log_buffer_files(mach_port_t)" message:v7];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v2);
  }

  return 0;
}

void sub_100186DF4()
{
  sub_10000D798();
  v2 = v1;
  sub_10000842C();
  *v3 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10000D824(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029DC0();
      if (sub_100017AC4(v8, v9))
      {
        v10 = sub_10002D09C();
        if (sub_100010040(v10, v0))
        {
          *v2 = sub_1000149E8() >> 24;
        }

        CFRelease(v0);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  v11 = sub_100029DC0();
  sub_100017CC0(v11, v12);
  sub_1000084B8();
}

uint64_t sub_100186ED0()
{
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = "on-to";
          if (!v0)
          {
            v8 = "out-of";
          }

          [off_100298C40 WFLog:3 message:{"%s: WiFiCall handover notification: call moved %s WiFi", "kern_return_t _wifi_manager_wificall_handover_notification(mach_port_t, int)", v8}];
        }

        objc_autoreleasePoolPop(v7);
        if (v0)
        {
          sub_10015E6AC(v6, v9, v10, v11, v12, v13, v14, v15);
        }

        else
        {
          sub_10015E780(v6, v9, v10, v11, v12, v13, v14, v15);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v17 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_wificall_handover_notification(mach_port_t message:{int)", v17}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

void sub_100186FE0()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029DC0();
      if (sub_100017AC4(v5, v6))
      {
        v7 = sub_100010938();
        v8 = sub_100029A10(v7);
        if (v8)
        {
          sub_10007A340(v8, v0, 0);
        }

        CFRelease(v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_1001870B0()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = v7;
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v5);
          sub_1000A9B70();
        }

        objc_autoreleasePoolPop(v9);
        v10 = sub_10016618C(v8);
        if (v10)
        {
          sub_10000393C(v10);
          CFRelease(v8);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

void sub_1001871B0()
{
  sub_10000D798();
  sub_10000842C();
  v0 = sub_10000FFF0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = sub_100029DC0();
        v6 = sub_100017AC4(v4, v5);
        if (v6)
        {
          CFRelease(v6);
        }
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  v7 = sub_100029DC0();
  sub_100017CC0(v7, v8);
  sub_1000084B8();
}

void sub_100187270()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_1000A9B18();
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        v8 = sub_10000715C(v3);
        sub_10008A260(v6, v0, v8, 0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

uint64_t sub_100187378()
{
  sub_100008C40();
  v1 = sub_10000FFF0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        *v0 = sub_10008A37C(v5);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_battery_save_mode(mach_port_t message:{int *)", v7}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

void sub_100187428()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        if (sub_100017AC4(v6, v7))
        {
          v8 = sub_1000A9ADC();
          sub_1001662F0(v8);
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

uint64_t sub_1001874F4()
{
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        sub_1001663D4(v5, v0 != 0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_configure_mis_idle_link_test(mach_port_t message:{int)", v7}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

void sub_1001875A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Failed to create WiFi Manager client for pid=%d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100187600()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to acquire WiFiServerRef for mach port"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100187658()
{
  sub_100011520();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100010040(v6, v4);
  if (v8)
  {
    v9 = v8;
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000715C(v7);
      [sub_10002D390() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v10);
    v11 = sub_10018B2E0(v9, v5, v1);
    *v3 = v11;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v15 = *v3;
        [off_100298C40 WFLog:4 message:{"Unable to set WiFi Direct state to 0x%X, 0x%X. deviceManager=%p"}];
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    *v3 = 74;
  }

  sub_10001091C();

  CFRelease(v13);
}

void sub_100187760()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: invalid manager\n", "_wifi_manager_set_incar_state"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001877CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: invalid client\n", "_wifi_manager_set_incar_state"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10018784C(void *a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"unable to create WiFiNetworkPathMonitor (nil queue)"];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_100187B58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Failed to create alert dictionary for %@ identifier", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100187BB4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (!a3 || !a3[521])
  {
    return;
  }

  valuePtr = -1431655766;
  keys = @"HostApEnabled";
  values = kCFBooleanFalse;
  if (!a4)
  {
    v15 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v21 = a3[521];
    v22 = a3[522];
    v23 = sub_100007514();
    v24(v23);
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: hostAP stopped", "__WiFiDeviceManagerHostApStateChangedEventCallback"}];
    }

    objc_autoreleasePoolPop(v25);
    v13 = 0;
    goto LABEL_27;
  }

  v5 = sub_1000C8F84(a3);
  v6 = v5;
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    do
    {
      v7 = sub_10001E7C0();
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
      v10 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v11 = sub_10000A540(ValueAtIndex, @"networkRole");
        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr == 3)
          {
            goto LABEL_13;
          }

          v10 = 0;
        }
      }

      sub_100021D9C();
    }

    while (!v12);
    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_13:
    v13 = sub_100017C00(v10);
    if (v13)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
      if (MutableCopy)
      {
        v15 = MutableCopy;
        CFDictionaryAddValue(MutableCopy, @"HostApEnabled", kCFBooleanTrue);
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: hostAP started", "__WiFiDeviceManagerHostApStateChangedEventCallback"}];
        }

        objc_autoreleasePoolPop(v16);
        v17 = a3[521];
        v18 = a3[522];
        v19 = sub_100007514();
        v20(v19);
        if (!v6)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_22:
    v13 = 0;
  }

  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Error. Stopping HostAP network.", "__WiFiDeviceManagerHostApStateChangedEventCallback"}];
  }

  objc_autoreleasePoolPop(v26);
  sub_100006F88(a3[8]);
  sub_1000F8A18();
  sub_10001ECA0();
  sub_1000C5E00(v27, v28, v29, v30, 0);
  v15 = 0;
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_26:
  CFRelease(v6);
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_100187E60()
{
  sub_100024B78();
  if (!v1)
  {
    goto LABEL_48;
  }

  v2 = v1;
  v3 = v0;
  if (*(v1 + 4536))
  {
    v4 = *(v1 + 4544);
    v5 = sub_1000F8B44();
    v6(v5);
  }

  if (!v3)
  {
    goto LABEL_48;
  }

  Value = CFDictionaryGetValue(v3, @"DRIVER_AVAILABLE");
  if (!Value)
  {
    goto LABEL_48;
  }

  v8 = (v2 + 5265);
  *(v2 + 3536) = CFBooleanGetValue(Value);
  v9 = CFDictionaryGetValue(v3, @"DRIVER_AVAILABLE_REASON");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, (v2 + 3540));
  }

  if (*(v2 + 3536))
  {
    if (*(v2 + 4992) && *(v2 + 5270))
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: MIS is in recovery. Driver is available. Restarting MIS network!"];
      }

      objc_autoreleasePoolPop(v10);
      sub_1000C7790(v2);
      if (_MISSetHostCount)
      {
        v11 = *(v2 + 4992);
        if (v11)
        {
          _MISSetHostCount(v11, 2, *v8);
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v37 = *v8;
            [off_100298C40 WFLog:3 message:{"%s: updated host count: %d at MIS Service, result:%d"}];
          }

          objc_autoreleasePoolPop(v12);
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      if (*(v2 + 3544))
      {
        sub_100019814(v2, 7uLL);
      }
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      v16 = sub_1000F8B38();
      sub_1000BD310(v16, v17, v18);
    }

    *(v2 + 7408) = 0;
    *(v2 + 3544) = 0;
    if (*(v2 + 3545))
    {
      CFNotificationCenterGetLocalCenter();
      sub_10001ECA0();
      CFNotificationCenterPostNotification(v19, v20, v21, v22, 1u);
      *(v2 + 3545) = 0;
      v23 = objc_autoreleasePoolPush();
      v24 = sub_1000F8B2C();
      if (v24)
      {
        [v24 WFLog:3 message:"%s: announced driver availability (WiFiChipResetCompleted)"];
      }

      sub_10006AD5C();

      objc_autoreleasePoolPop(v25);
      return;
    }

    goto LABEL_48;
  }

  sub_1000F1200(v2);
  v13 = *(v2 + 3540);
  sub_1000F8C40();
  if (v29)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"clearing slowWiFi HUD on S2R"];
    }

    objc_autoreleasePoolPop(v14);
    sub_1000F12E0(v2);
    *(v2 + 3544) = 0;
    v15 = *(v2 + 3540);
  }

  else
  {
    *(v2 + 3544) = 1;
  }

  sub_1000F8C40();
  if (v29)
  {
    [*(v2 + 6720) removeDenyListStateWithDenyListRemoveReason:7];
  }

  if (*(v2 + 4992))
  {
    v27 = *(v2 + 3540);
    sub_1000F8C40();
    v29 = v29 || v28 == -528336891;
    if (v29)
    {
      goto LABEL_48;
    }

    v30 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: MIS is in session. Driver is unavailable. Starting recovery timer!"];
    }

    objc_autoreleasePoolPop(v30);
    *(v2 + 5270) = 1;
    sub_1000C7220(v2, 1);
  }

  sub_1000BCD2C(v2);
  if (*(v2 + 9200) != 1)
  {
LABEL_48:
    sub_10006AD5C();
    return;
  }

  *(v2 + 9200) = 0;
  v31 = *(v2 + 9208);
  sub_10002CF5C();
  sub_10006AD5C();

  dispatch_source_set_timer(v32, v33, v34, v35);
}

void sub_1001881BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v6 = *(a5 + 9192);
  if (v6 || (v6 = objc_alloc_init(AWDLServiceDiscoveryManager), (*(a5 + 9192) = v6) != 0))
  {
    if (a3)
    {
      if (([v6 suspendAWDLWithError:&v9] & 1) == 0)
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else if (([v6 resumeAWDLWithError:&v9] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
LABEL_10:
        [v9 code];
        sub_1000F8A68();
      }

LABEL_11:
      objc_autoreleasePoolPop(v8);
    }
  }
}

void sub_100188298(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const __CFBoolean *value, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000951B4();
  a21 = v24;
  a22 = v25;
  if (!v26)
  {
    goto LABEL_36;
  }

  sub_1000F8C20();
  value = 0;
  v28 = sub_1000F4F10(v27);
  if (sub_10013F134(*(v22 + 120)))
  {
    v29 = 0;
  }

  else
  {
    v29 = v28 == 0;
  }

  v30 = !v29;
  v31 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"DPS: latencySensitiveApps_bitmap:%llu isCriticalAppState:%s"];
  }

  objc_autoreleasePoolPop(v31);
  v32 = sub_100011580();
  v34 = sub_100007D90(v32, v33, 1);
  if (v34)
  {
    v35 = v34;
    if (sub_1000A39A0(v34))
    {
      v36 = 0;
      if (!CFDictionaryGetValueIfPresent(v23, @"DPS_SYMPTOMS_TRIGGER", &value) || !value)
      {
LABEL_18:
        v37 = sub_10001E7F0();
        sub_100055348(v37, v38, v36, v30);
        Current = CFAbsoluteTimeGetCurrent();
        v40 = *(v22 + 7192);
        if (v40 == 0.0 || v40 + 120.0 <= Current)
        {
          *(v22 + 7328) = v36;
          v42 = objc_autoreleasePoolPush();
          v43 = sub_10001E2C0();
          if (v43)
          {
            [v43 WFLog:3 message:"DPS/DNS Symptoms HUD: starting display"];
          }

          objc_autoreleasePoolPop(v23);
          v44 = objc_autoreleasePoolPush();
          if (*(v22 + 7328))
          {
            *(v22 + 7320) = 0;
            v45 = @"DNS Stall: %llus";
          }

          else
          {
            *(v22 + 7320) = 5;
            v45 = @"Data Stall: %llus";
          }

          v46 = [NSString stringWithFormat:v45];
          if (!*(v22 + 7333))
          {
            *(v22 + 7333) = 1;
            if (MGGetBoolAnswer())
            {
              v47 = *(v22 + 4616);
              if (v47)
              {
                v47(v22, 18, v46, *(v22 + 4624));
              }
            }

            v48 = *(v22 + 7312);
            dispatch_time(0, 1000000000);
            sub_10002CF5C();
            dispatch_source_set_timer(v49, v50, v51, v52);
          }

          objc_autoreleasePoolPop(v44);
          sub_10013F5B4(*(v22 + 120), 1);
        }

        sub_1000C8674(v22, 0, 0);
        goto LABEL_35;
      }

      if (!CFBooleanGetValue(value))
      {
        v36 = 0;
        goto LABEL_18;
      }

      if (!*(v22 + 5568))
      {
        v36 = 4;
        goto LABEL_18;
      }

      v60 = objc_autoreleasePoolPush();
      v58 = sub_1000950EC();
      if (v58)
      {
        v59 = "%s: DNSSymptoms notification not allowed when Carplay is Active";
        goto LABEL_46;
      }
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      v58 = sub_1000950EC();
      if (v58)
      {
        v59 = "%s: network='%@' doesn't support DPS recovery";
LABEL_46:
        [v58 WFLog:4 message:v59];
      }
    }

    objc_autoreleasePoolPop(v22);
LABEL_35:
    CFRelease(v35);
LABEL_36:
    sub_10001ED88();
    return;
  }

  v53 = objc_autoreleasePoolPush();
  v54 = sub_10000FBF8();
  if (v54)
  {
    [v54 WFLog:4 message:{"%s, curNetwork is NULL"}];
  }

  sub_10001ED88();

  objc_autoreleasePoolPop(v55);
}

void sub_100188578(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  if (a3)
  {
    sub_100095008();
    valuePtr = 0;
    v31 = 0;
    value = 0;
    v9 = sub_1000F4F10(v8);
    v10 = sub_10013F134(*(a3 + 120));
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10 == 0;
      }

      v13 = "TRUE";
      if (v12)
      {
        v13 = "FALSE";
      }

      [off_100298C40 WFLog:3 message:{"rxDataStall: latencySensitiveApps_bitmap:%llu isCriticalAppState:%s", v9, v13}];
    }

    objc_autoreleasePoolPop(v11);
    v14 = sub_100011580();
    v16 = sub_100007D90(v14, v15, 1);
    if (v16)
    {
      v17 = v16;
      if (sub_1000A39A0(v16))
      {
        if (CFDictionaryGetValueIfPresent(a4, @"RXSTALL_REASON_CODE", &value) && value)
        {
          CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
        }

        if (CFDictionaryGetValueIfPresent(a4, @"RXSTALL_REPORT_CODE", &value) && value)
        {
          CFNumberGetValue(value, kCFNumberSInt32Type, &v31);
        }

        if (!valuePtr || !*(a3 + 5568))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = *(a3 + 7392);
          if (v19 == 0.0)
          {
            *(a3 + 7392) = Current;
            v19 = Current;
          }

          if (v19 == Current || v19 + 10.0 <= Current)
          {
            *(a3 + 7400) = valuePtr;
            *(a3 + 7404) = v31;
            *(a3 + 7392) = Current;
            v21 = *(a3 + 240);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000F5004;
            block[3] = &unk_10025EE08;
            block[4] = a3;
            block[5] = v5;
            dispatch_async(v21, block);
          }

          goto LABEL_27;
        }

        v26 = objc_autoreleasePoolPush();
        v27 = sub_1000950EC();
        if (v27)
        {
          [v27 WFLog:4 message:{"%s: rxDataStall notification not allowed when Carplay is Active", "__WiFiDeviceManagerHandleRxDataStallEvent", v28}];
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = sub_1000950EC();
        if (v25)
        {
          [v25 WFLog:4 message:{"%s: network='%@' doesn't support Rx Stall recovery", "__WiFiDeviceManagerHandleRxDataStallEvent", v17}];
        }
      }

      objc_autoreleasePoolPop(a3);
LABEL_27:
      CFRelease(v17);
      return;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = sub_10000FBF8();
    if (v23)
    {
      [v23 WFLog:4 message:{"%s, curNetwork is NULL", "__WiFiDeviceManagerHandleRxDataStallEvent"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_10018880C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100017AB8(a1);
    if (v1)
    {
      sub_100009664(v1);
      v2 = sub_1000F8A18();
      v4 = sub_100007D90(v2, v3, 1);
      if (v4)
      {
        v5 = v4;
        v6 = sub_1000086AC();
        sub_1000F1434(v6, v7);

        CFRelease(v5);
      }

      return;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "__WiFiDeviceManagerAdaptiveRoamTimerCallback"}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerAdaptiveRoamTimerCallback"}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100188908(uint64_t a1)
{
  v2 = sub_100017AB8(a1);
  if (v2)
  {
    v3 = *(v1 + 3470);
    sub_100009664(v2);
    v4 = sub_1000F8A18();
    v6 = sub_100007D90(v4, v5, 1);
    if (v6)
    {
      v7 = v6;
      sub_1000C9608(v1, v3);

      CFRelease(v7);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "__WiFiDeviceManagerColocatedNetworkTransitionTimerCallback"}];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_1001889E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, BOOL a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1000951B4();
  a24 = v26;
  a25 = v28;
  a15 = 0;
  if (*(v27 + 16))
  {
    goto LABEL_37;
  }

  v29 = sub_100017AB8(v27);
  if (!sub_10005D3A8(v29))
  {
    goto LABEL_37;
  }

  *(v25 + 16) = 1;
  sub_100006F88(*(v25 + 64));
  v30 = sub_10000D800();
  *(v25 + 20) = sub_100060E98(v30, v31);
  *(v25 + 128) = sub_100060E88(*(v25 + 64));
  *(v25 + 132) = xmmword_1001CE760;
  [*(v25 + 3704) setUsageRankForDeferral:3];
  v32 = sub_100006F88(*(v25 + 64));
  v33 = SCNetworkInterfaceCopyAll();
  Count = CFArrayGetCount(v33);
  if (Count >= 1)
  {
    v35 = Count;
    v36 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v33, v36);
      if (ValueAtIndex)
      {
        v38 = ValueAtIndex;
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        if (BSDName)
        {
          if (CFStringCompare(BSDName, v32, 1uLL) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }

      if (v35 == ++v36)
      {
        goto LABEL_9;
      }
    }

    CFRetain(v38);
    if (!v33)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  v38 = 0;
  if (v33)
  {
LABEL_10:
    CFRelease(v33);
  }

LABEL_11:
  *(v25 + 5536) = v38;
  *(v25 + 33) = sub_100061210(*(v25 + 64));
  *(v25 + 7138) = sub_100061304(*(v25 + 64));
  *(v25 + 152) = 0;
  *(v25 + 5488) = 100;
  v40 = *(v25 + 240);
  if (v40)
  {
    sub_1000B913C(v25, v40, *(v25 + 248));
  }

  if (sub_10006121C(*(v25 + 64), &a15))
  {
    v42 = a15;
    v41 = 1;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  sub_100043A44(*(v25 + 120), v41, v42);
  sub_100006F88(*(v25 + 64));
  v43 = sub_10000D800();
  v45 = sub_1000078F4(v43, v44);
  v46 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Current network: %@"];
  }

  objc_autoreleasePoolPop(v46);
  if (v45 && sub_100009730(v45) && sub_10006264C(*(v25 + 64)) != 2)
  {
    v46 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v45);
      sub_1000A9B58();
    }

    objc_autoreleasePoolPop(v46);
    v47 = sub_100006F88(*(v25 + 64));
    sub_1000B9DC8(v25, v47, 1010, "WiFiDeviceManagerOpen", 3736);
  }

  if (*(v25 + 4792))
  {
    v48 = *(v25 + 4800);
    v49 = sub_100021D58();
    v50(v49);
  }

  if (v45)
  {
    if (sub_10000A7CC(v45))
    {
      sub_10014EDCC(*(v25 + 64));
      v51 = objc_autoreleasePoolPush();
      v52 = sub_10006AD2C();
      if (v52)
      {
        [v52 WFLog:3 message:"%s: Activate power save"];
      }

      objc_autoreleasePoolPop(v46);
    }

    CFRelease(v45);
  }

  v53 = sub_10000D7B8();
  sub_10002BFB4(v53, v54);
  *(v25 + 7152) = sub_100061294(*(v25 + 64));
  *(v25 + 7136) = sub_1000612A0(*(v25 + 64));
  *(v25 + 7137) = sub_1000612AC(*(v25 + 64));
  sub_100188DD8(v25);
  sub_1000BA134(v25);
  v55 = 0;
  *(v25 + 7512) = 1;
  *(v25 + 8712) = 0;
  *(v25 + 8713) = 0;
  *(v25 + 8717) = 0;
  *(v25 + 8718) = 0;
  *(v25 + 8722) = 0;
  v56 = vdupq_n_s64(0x4044000000000000uLL);
  __asm { FMOV            V2.2D, #10.0 }

  *(v25 + 8696) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v63 = &_mh_execute_header;
  do
  {
    v64.i64[0] = v63;
    v64.i64[1] = HIDWORD(v63);
    *(v25 + 7520 + v55) = vdivq_f64(_Q0, vaddq_f64(vdivq_f64(vsubq_f64(v56, vcvtq_f64_u64(v64)), _Q2), _Q0));
    v63 = vadd_s32(v63, 0x200000002);
    v55 += 16;
  }

  while (v55 != 320);
  v65 = 0;
  v66 = &_mh_execute_header;
  v67 = vdupq_n_s64(0xC059000000000000);
  do
  {
    v68.i64[0] = v66;
    v68.i64[1] = HIDWORD(v66);
    *(v25 + 7840 + v65) = vaddq_f64(vdivq_f64(vcvtq_f64_u64(v68), v67), _Q0);
    v66 = vadd_s32(v66, 0x200000002);
    v65 += 16;
  }

  while (v65 != 800);
  *(v25 + 8752) = 0;
  *(v25 + 8728) = 0;
  *(v25 + 8736) = 0;
  *(v25 + 8756) = 0u;
  *(v25 + 8772) = 0u;
  *(v25 + 8788) = 0u;
  *(v25 + 8804) = 0u;
  *(v25 + 8820) = 0u;
  *(v25 + 8836) = 0u;
  *(v25 + 8852) = 0u;
  *(v25 + 8868) = 0;
  *(v25 + 8876) = 0;
LABEL_37:
  sub_10001ED88();
}

void sub_100188DD8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100017AB8(a1);
    v3 = sub_100006F88(v2);
    v4 = sub_100021D58();
    v6 = sub_100007D90(v4, v5, 1);
    if (!v3)
    {
      goto LABEL_17;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = *(v1 + 7480);
    if (v8)
    {
LABEL_16:
      [v8 startMonitoringWiFiInterface:v3 withLinkSessionOnly:0];
      [*(v1 + 7480) setPowerState:*(v1 + 20) == 1 forInterface:v3];
      [*(v1 + 7480) setCurrentApplicationName:*(v1 + 200) withAttributes:0];
      v21 = sub_1000086AC();
      sub_1000C4084(v21, v22, v23);
      objc_autoreleasePoolPop(v7);
LABEL_17:
      if (v6)
      {
        CFRelease(v6);
      }

      return;
    }

    v9 = *(v1 + 176);
    *(v1 + 7480) = +[WiFiUsageMonitor sharedInstance];
    v10 = *(v1 + 72);
    v29 = v7;
    if (v10 == 4)
    {
      v11 = @"en0";
    }

    else
    {
      if (v10 == 7)
      {
        v27 = 0;
LABEL_10:
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10001D430(*(v1 + 6872));
          v24 = "__WiFiDeviceManagerInitializeWiFiUsageMonitor";
          sub_1000A9B70();
        }

        objc_autoreleasePoolPop(v12);
        v13 = sub_10004879C(*(v1 + 120));
        v15 = v14;
        v16 = *(v1 + 7480);
        v28 = sub_100014038(*(v1 + 3408));
        if (*(v1 + 3465))
        {
          v17 = 1;
        }

        else
        {
          v17 = *(v1 + 3464) != 0;
        }

        v26 = v17;
        v18 = *(v1 + 3466) != 0;
        v19 = *(v1 + 3512) != 0;
        sub_10001D430(*(v1 + 6872));
        sub_1000F8C14();
        LOBYTE(v25) = v20;
        LOBYTE(v24) = 0;
        [v16 initializeDeviceLockState:v9 != 1 displayState:(v9 - 1) < 2 motionState:v28 callState:v26 mediaState:v18 chargingState:v19 companionConnectionState:v24 andSecondaryInterfaceName:v27 compatibilityMode:v25 badLinkRssi:v13 goodLinkRssi:v15];
        v8 = *(v1 + 7480);
        v7 = v29;
        goto LABEL_16;
      }

      v11 = *(v1 + 6264);
    }

    v27 = v11;
    goto LABEL_10;
  }
}

void sub_100189040(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 9128);
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*(a1 + 9128));
      *(a1 + 9128) = 0;
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: kernel event monitor stopped", "__WiFiDeviceManagerTeardownKernelEventMonitor"}];
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: kernel event monitor not initialized.", "__WiFiDeviceManagerTeardownKernelEventMonitor"}];
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100189100(uint64_t a1, const void *a2)
{
  memset(buffer, 170, sizeof(buffer));
  if (a1)
  {
    v3 = *(a1 + 72);
    v4 = v3 > 0xB;
    v5 = (1 << v3) & 0x80E;
    v6 = v4 || v5 == 0;
    if (!v6 && sub_100006F88(*(a1 + 64)))
    {
      v8 = sub_100006F88(*(a1 + 64));
      CFStringGetCString(v8, buffer, 16, 0x8000100u);
      sub_1000A18CC(a2);
      network_config_set_interface_constrained();
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = sub_10001CFD8(a2);
        sub_10005913C(v10);
        sub_10001CFD8(a2);
        sub_10000A878(a2);
        sub_1000F8A68();
      }

      objc_autoreleasePoolPop(v9);
    }
  }
}

uint64_t sub_100189234(uint64_t a1, const void *a2)
{
  v2 = 0xFFFFLL;
  if (a1 && a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [NSMutableArray arrayWithArray:*(a1 + 3576)];
    [(NSMutableArray *)v6 addObjectsFromArray:*(a1 + 3672)];
    if ([(NSMutableArray *)v6 count])
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = [(NSMutableArray *)v6 objectAtIndexedSubscript:v7];
        v10 = sub_10000A878(v9);
        v11 = sub_10000A878(a2);
        if (CFStringCompare(v10, v11, 0) == kCFCompareEqualTo)
        {
          break;
        }

        v7 = ++v8;
        if ([(NSMutableArray *)v6 count]<= v8)
        {
          goto LABEL_7;
        }
      }

      v2 = sub_1000A23AC(v9);
    }

    else
    {
LABEL_7:
      v2 = 0xFFFFLL;
    }

    objc_autoreleasePoolPop(v5);
  }

  return v2;
}

void sub_100189318(uint64_t a1)
{
  if (a1)
  {
    sub_100015E88();
    if (v3)
    {
      sub_100006F88(*(v1 + 64));
      v4 = sub_100015EB8();
      v6 = sub_1000078F4(v4, v5);
      if (v6)
      {
        v7 = v6;
        if (sub_10000A878(v6))
        {
          v8 = sub_100010938();
          if (CFEqual(v8, v2))
          {
            v9 = *(v1 + 6728);
            if (v9)
            {
              CFRelease(v9);
              *(v1 + 6728) = 0;
            }

            *(v1 + 6728) = CFRetain(v2);
          }
        }

        CFRelease(v7);
      }
    }

    else
    {
      v10 = *(v1 + 6728);
      if (v10)
      {
        CFRelease(v10);
      }

      *(v1 + 6728) = 0;
    }
  }
}

void sub_1001893CC(uint64_t a1, CFTypeRef cf)
{
  if (a1 && cf)
  {
    CFRetain(cf);
    v4 = *(a1 + 3752);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 3752) = cf;

    sub_1000196FC(a1);
  }
}

void sub_100189430(uint64_t a1)
{
  v2 = (a1 + 4096);
  v3 = *(a1 + 7178);
  sub_100006F88(*(a1 + 64));
  v4 = sub_1000F8A18();
  v6 = sub_100007D90(v4, v5, 1);
  if (v6)
  {
    v7 = v6;
    if (sub_10009E718(v6) && !v3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9 = *(a1 + 216);
      if (v9 != 0.0 && Current - v9 <= 3600.0)
      {
        v3 = *(a1 + 3496) != 0;
      }

      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000A878(v7);
        v11 = v2[3080];
        sub_100034900();
        v2[3081];
        *(a1 + 3496);
        sub_1000A9B58();
      }

      objc_autoreleasePoolPop(v10);
    }

    v12 = sub_10001A9BC(v7);
    v13 = [*(a1 + 6720) isNetworkInDenyListedState:3 scanResult:v12];

    if (v2[3083] != v3 || v2[3084] != v13)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: enableWowOnCaptive prev (%d) now (%d), isWoWDenyListed prev (%d) now(%d)\n", "__WiFiDeviceManagerUpdateWoWOnNetworkCharacteristics", v2[3083], v3, v2[3084], v13}];
      }

      objc_autoreleasePoolPop(v14);
      sub_1000C7E3C(a1, v2[3080], v2[3081], v3, v13);
      v2[3083] = v3;
      v2[3084] = v13;
    }

    CFRelease(v7);
  }
}

void sub_100189650(const void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayGetCount(*(a2 + 3640));
      v4 = sub_10000836C();
      if (!CFArrayContainsValue(v4, v7, a1))
      {
        v5 = *(a2 + 3640);

        CFArrayAppendValue(v5, a1);
      }
    }
  }
}

id sub_10018987C(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 120);
  if (result)
  {
    sub_100043BF4(result, a2);
    result = *(a1 + 7480);
    if (result)
    {
      [result enableXCTestNotifications];
      v6 = *(a1 + 7480);

      return [v6 enableSubmitAnalyticsNoSampling:a3 != 0];
    }
  }

  return result;
}

void sub_1001898E0()
{
  sub_10000D798();
  v2 = sub_1000258D4(v1);
  sub_100009664(v2);
  v3 = sub_100015EB8();
  v5 = sub_100007D90(v3, v4, 1);
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: Start 6E prefer off switch scan"];
    }

    objc_autoreleasePoolPop(v7);
    CFArrayGetCount(*(v0 + 3576));
    v8 = sub_10000836C();
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v15, v6);
    if (FirstIndexOfValue == -1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_9;
      }

      v13 = "%s: no known network found";
      v14 = 4;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 3576), FirstIndexOfValue);
      if (sub_10000A540(ValueAtIndex, @"Standalone") == kCFBooleanTrue)
      {
        sub_100019814(v0, 0x34uLL);
        goto LABEL_11;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_9:
        objc_autoreleasePoolPop(v11);
LABEL_11:
        CFRelease(v6);
        goto LABEL_12;
      }

      v13 = "%s: Current network is not standalone 6G %@";
      v14 = 3;
    }

    [v12 WFLog:v14 message:v13];
    goto LABEL_9;
  }

LABEL_12:
  sub_1000084B8();
}

uint64_t sub_100189A28(uint64_t a1)
{
  v2 = sub_1000258D4(a1);
  sub_100009664(v2);
  v3 = sub_100015EB8();
  v5 = sub_100007D90(v3, v4, 1);
  if (v5)
  {
    v6 = v5;
    valuePtr = 0;
    v7 = sub_10000A540(v5, @"CHANNEL_FLAGS");
    if (v7 && (CFNumberGetValue(v7, kCFNumberIntType, &valuePtr), (valuePtr & 0x2000) != 0))
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: current channel is non 6G channel", "WiFiDeviceManager6EPreferOn"}];
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      sub_100019814(v1, 0x35uLL);
    }

    CFRelease(v6);
  }

  return 4294963396;
}

void sub_100189AE8()
{
  sub_100011520();
  v1 = v0;
  v3 = v2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Updating 6G standalone property in known network plist"];
  }

  objc_autoreleasePoolPop(v5);
  v6 = *(v3 + 64);
  v7 = sub_10014FED8();
  if (!v1 || (v8 = sub_10001A9BC(v1), v9 = [objc_msgSend(v8 "channel")], v10 = v9 == 3, !v8) || (v11 = v9, v12 = sub_10001E7C0(), (v14 = sub_10000B3A8(v12, v13, 0)) == 0))
  {
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v7);
    goto LABEL_18;
  }

  v15 = v14;
  if (v11 == 3 && v7)
  {
    if (CFArrayGetCount(v7) < 1)
    {
      v10 = 1;
    }

    else
    {
      v16 = 0;
      v10 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v16);
        v18 = sub_10001A9BC(ValueAtIndex);
        if ([v18 SSID])
        {
          if ([v8 SSID])
          {
            [v18 SSID];
            [v8 SSID];
            if ([sub_100029EF8() isEqual:?])
            {
              v10 &= [objc_msgSend(v18 "channel")] == 3;
            }
          }
        }

        ++v16;
      }

      while (v16 < CFArrayGetCount(v7));
    }
  }

  v19 = sub_10000DAB4();
  if ((v10 & 1) != (sub_10000A540(v19, v20) == kCFBooleanTrue))
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Know network %@ 6G standalone state changed from %d to %d"];
    }

    objc_autoreleasePoolPop(v21);
    *(v3 + 3832) = 0;
    [NSNumber numberWithBool:v10 & 1];
    v22 = sub_10000DAB4();
    sub_10000AD34(v22, v23, v24);
    v25 = sub_10001E7C0();
    sub_1000C5B3C(v25, v26);
  }

  CFRelease(v15);
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  objc_autoreleasePoolPop(v4);
  sub_10001091C();
}

BOOL sub_100189D00(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 3624));
  if (!Count)
  {
    return 0;
  }

  v4 = sub_1000F8CA0(Count);
  if (v4 == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3624), v4);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return sub_10009E718(ValueAtIndex);
}

__CFDictionary *sub_100189D74(uint64_t a1, const __CFArray *a2)
{
  valuePtr = 0;
  v4 = sub_1000113AC();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (Mutable)
  {
    v9 = sub_1000113AC();
    v12 = CFArrayCreateMutable(v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = (a1 + 4096);
      v15 = sub_1000113AC();
      v17 = CFStringCreateMutable(v15, v16);
      CFSetRemoveAllValues(*(a1 + 3648));
      CFSetRemoveAllValues(*(a1 + 3656));
      if (a2 && CFArrayGetCount(a2) >= 1)
      {
        if (v17)
        {
          CFStringAppend(v17, @"Preparing background scan request for ");
        }

        v18 = sub_1000113AC();
        theArray = CFArrayCreateMutable(v18, v19, v20);
        if (theArray)
        {
          v110 = a1 + 4096;
          Count = CFArrayGetCount(a2);
          if (Count >= 1)
          {
            v21 = 0;
            v113 = a2;
            value = kCFBooleanTrue;
            key = @"WiFiNetworkUserAcceptedRecommendationAt";
            while (1)
            {
              idx = v21;
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
              v23 = sub_10009D404(ValueAtIndex);
              valuePtr = sub_10001CB84(ValueAtIndex) != 0;
              v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
              if (v24)
              {
                v25 = v24;
                CFDictionarySetValue(v23, @"HIDDEN_NETWORK", v24);
                CFRelease(v25);
              }

              v26 = sub_10000A878(ValueAtIndex);
              sub_100190654(a1, ValueAtIndex, 0, &v120, v27, v28, v29, v30, v103, v105, v106, SHIDWORD(v106), v107, SHIDWORD(v107), v108, v109, v110, key, Count, v113, value, theArray, idx, theDict, v119, valuePtr);
              theDict = v23;
              if (*(a1 + 128) != v31)
              {
                v119 = *(a1 + 136) + v31;
                v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v119);
                if (v32)
                {
                  v33 = v32;
                  CFDictionarySetValue(v23, @"BGSCANRSSITHRES", v32);
                  v34 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v35 = @"NULL";
                    if (v26)
                    {
                      v35 = v26;
                    }

                    if ((v120 - 1) > 3)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v36 = off_100262378[v120 - 1];
                    }

                    v106 = v35;
                    v107 = v36;
                    v105 = v119;
                    [off_100298C40 WFLog:3 message:{"%s PNO RssiThres %d for unreliable network %@ (%@)", "__CreateBGScanRequest"}];
                  }

                  objc_autoreleasePoolPop(v34);
                  CFRelease(v33);
                }
              }

              v37 = objc_autoreleasePoolPush();
              v38 = sub_10001A9BC(ValueAtIndex);
              v39 = *(a1 + 6720);
              sub_1000F8AB8();
              if ([v40 isNetworkDenyListedForAutoJoinDueToTrigDisc:? RSSI:? timestamp:?])
              {
                v119 = *(a1 + 136) + sub_100048348(*(a1 + 120));
                CFSetAddValue(*(a1 + 3648), ValueAtIndex);
                v41 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v119);
                if (v41)
                {
                  v42 = v41;
                  CFDictionarySetValue(theDict, @"BGSCANRSSITHRES", v41);
                  v43 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v44 = @"NULL";
                    if (v26)
                    {
                      v44 = v26;
                    }

                    v105 = v119;
                    v106 = v44;
                    v109 = v43;
                    [off_100298C40 WFLog:3 message:{"%s LQAMgr enforced RssiThres %d for trgDisc network %@", "__CreateBGScanRequest"}];
                    v43 = v109;
                  }

                  objc_autoreleasePoolPop(v43);
                  CFRelease(v42);
                }
              }

              objc_autoreleasePoolPop(v37);
              v45 = theDict;
              if (sub_100189D00(a1, ValueAtIndex) || sub_10000D9C8(ValueAtIndex) || sub_10000AFE4(ValueAtIndex))
              {
                break;
              }

LABEL_40:
              if (v26)
              {
                v49 = *(a1 + 3768);
                if (v49)
                {
                  CFArrayGetCount(*(a1 + 3768));
                  v50 = sub_1000083D0();
                  if (CFArrayContainsValue(v50, v122, v26))
                  {
                    CFDictionarySetValue(theDict, @"DISALLOW_PNO", value);
                    v51 = objc_autoreleasePoolPush();
                    v52 = sub_100095080();
                    if (v52)
                    {
                      v103 = "__CreateBGScanRequest";
                      v105 = v26;
                      [v52 WFLog:3 message:"%s Ambiguous ssid %@ added to BGScan List "];
                    }

                    objc_autoreleasePoolPop(v49);
                  }
                }
              }

              if (byte_100298C79)
              {
                v53 = sub_10001B368(ValueAtIndex);
                if (([v53 isAllowedInLockdownMode] & 1) == 0)
                {
                  CFDictionarySetValue(theDict, @"DISALLOW_PNO", value);
                  v54 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    sub_1000102A0();
                    [v55 WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v54);
                  v45 = theDict;
                }
              }

              if (v45)
              {
                CFArrayAppendValue(theArray, v45);
                CFRelease(v45);
              }

              if (v17 && v26)
              {
                if (!CFEqual(v26, &stru_1002680F8))
                {
                  v103 = v26;
                  v56 = sub_10000836C();
                  CFStringAppendFormat(v56, v57, @"%@ ");
                }

LABEL_59:
                if (CFEqual(v26, &stru_1002680F8))
                {
                  v58 = CFArrayGetValueAtIndex(v113, idxa);
                  v59 = sub_10000A540(v58, @"BSSID");
                  if (v59)
                  {
                    v60 = v59;
                    v61 = sub_10000A540(ValueAtIndex, @"CHANNEL");
                    if (v61)
                    {
                      v62 = v61;
                      v63 = sub_10000A540(ValueAtIndex, @"CHANNEL_FLAGS");
                      v64 = sub_1000113AC();
                      v66 = CFDictionaryCreateMutable(v64, v65, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (v66)
                      {
                        v67 = v66;
                        CFDictionaryAddValue(v66, @"CHANNEL", v62);
                        if (v63)
                        {
                          CFDictionaryAddValue(v67, @"CHANNEL_FLAGS", v63);
                        }

                        CFArrayGetCount(v13);
                        v68 = sub_100011340();
                        if (!CFArrayContainsValue(v68, v123, v67))
                        {
                          v69 = sub_10000D80C();
                          CFArrayAppendValue(v69, v70);
                        }

                        CFRelease(v67);
                      }
                    }

                    if (v17)
                    {
                      if (sub_10000A540(ValueAtIndex, @"ENTRY_NETWORK"))
                      {
                        v71 = " EN";
                      }

                      else
                      {
                        v71 = "";
                      }

                      v72 = sub_10000A540(ValueAtIndex, @"EXIT_NETWORK");
                      v73 = " EX";
                      if (!v72)
                      {
                        v73 = "";
                      }

                      v105 = v71;
                      v106 = v73;
                      v103 = v60;
                      v74 = sub_10000836C();
                      CFStringAppendFormat(v74, v75, @"%@ ~%s%s ");
                    }
                  }
                }

                goto LABEL_75;
              }

              if (v26)
              {
                goto LABEL_59;
              }

LABEL_75:
              v21 = idxa + 1;
              a2 = v113;
              if (Count == idxa + 1)
              {
                goto LABEL_79;
              }
            }

            CFSetAddValue(*(a1 + 3656), ValueAtIndex);
            CFDictionarySetValue(theDict, @"DISALLOW_PNO", value);
            if (sub_10000A540(ValueAtIndex, key))
            {
              v46 = objc_autoreleasePoolPush();
              if (sub_100095080())
              {
                goto LABEL_38;
              }
            }

            else
            {
              if (!sub_1000A1C9C(ValueAtIndex) && !sub_10000AFE4(ValueAtIndex))
              {
                CFDictionarySetValue(theDict, @"HOTSPOT", value);
                v76 = objc_autoreleasePoolPush();
                if (!sub_100095080())
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }

              v47 = objc_autoreleasePoolPush();
              if (sub_100095080())
              {
LABEL_38:
                sub_1000102A0();
                [v48 WFLog:? message:?];
              }
            }

LABEL_39:
            objc_autoreleasePoolPop(v37);
            goto LABEL_40;
          }

LABEL_79:
          if (CFArrayGetCount(theArray))
          {
            v77 = sub_100029EB8();
            CFDictionarySetValue(v77, v78, v79);
          }

          CFRelease(theArray);
          v14 = v110;
        }
      }

      if (v14[1432])
      {
        v80 = *(a1 + 5520);
        if (v80)
        {
          v81 = CFArrayGetCount(v80);
          if (v81 >= 1)
          {
            v82 = v81;
            for (i = 0; i != v82; ++i)
            {
              v84 = CFArrayGetValueAtIndex(*(a1 + 5520), i);
              CFArrayGetCount(v13);
              v85 = sub_100011340();
              if (!CFArrayContainsValue(v85, v124, v84))
              {
                CFArrayAppendValue(v13, v84);
              }
            }
          }
        }
      }

      v86 = CFArrayGetCount(v13);
      if (v86)
      {
        if (v17)
        {
          v87 = v86;
          CFStringAppend(v17, @"on channels: ");
          if (v87 >= 1)
          {
            do
            {
              v88 = sub_10000D80C();
              v90 = CFArrayGetValueAtIndex(v88, v89);
              v104 = CFDictionaryGetValue(v90, @"CHANNEL");
              v91 = sub_10000836C();
              CFStringAppendFormat(v91, v92, @"%@ ", v104);
              sub_1000950C4();
            }

            while (!v93);
          }
        }
      }

      v94 = sub_1000F8B44();
      CFDictionarySetValue(v94, v95, v96);
      v97 = v14[1432];
      if (v14[1432])
      {
        v98 = kCFBooleanTrue;
      }

      else
      {
        v98 = kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"BGSCAN_CACHE", v98);
      if (v97)
      {
        if (v14[1434])
        {
          v99 = kCFBooleanTrue;
        }

        else
        {
          v99 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"BGSCAN_CACHE_WSB_ROLLOVER", v99);
        if (v17)
        {
          v100 = @"Background Scan Caching is Enabled";
LABEL_105:
          CFStringAppend(v17, v100);
          v14[1433] = v97 != 0;
          v101 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%@", v17}];
          }

          objc_autoreleasePoolPop(v101);
          CFRelease(v17);
          goto LABEL_109;
        }
      }

      else if (v17)
      {
        v100 = @"Background Scan Caching is Disabled";
        goto LABEL_105;
      }

      v14[1433] = v97 != 0;
LABEL_109:
      CFRelease(v13);
    }
  }

  return Mutable;
}

BOOL sub_10018A684(uint64_t a1)
{
  v14 = 0;
  valuePtr = 0;
  v2 = *(a1 + 5512);
  if (!v2)
  {
    return 0;
  }

  if (!qword_100298688)
  {
    return 0;
  }

  v3 = SCDynamicStoreCopyValue(v2, qword_100298688);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v4, @"State");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID() && CFNumberGetValue(v7, kCFNumberIntType, &valuePtr + 4))
    {
      v7 = HIDWORD(valuePtr) == 1023;
      if (_MISGetHostCount && !_MISGetHostCount(*(a1 + 4992), &valuePtr, &v14 + 1))
      {
        v9 = valuePtr - HIDWORD(v14);
        if (valuePtr < HIDWORD(v14))
        {
          v9 = 0;
        }

        LODWORD(v14) = v9;
        if (v9 != *(a1 + 5304))
        {
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v14);
          v11 = sub_10001E7C0();
          sub_1000C7B34(v11, v12);
          *(a1 + 5304) = v14;
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  CFRelease(v4);
  return v7;
}

void sub_10018A7CC(uint64_t a1, int a2)
{
  if (a1)
  {
    if (CFSetGetCount(*(a1 + 5320)) > 0 || CFSetGetCount(*(a1 + 5336)) > 0 || *(a1 + 5308) | a2)
    {
      sub_100008C64();

      sub_10018AA68();
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v5 = *(a1 + 5308);
        v6 = *(a1 + 5320);
        if (v6)
        {
          CFSetGetCount(v6);
        }

        v7 = *(a1 + 5328);
        if (v7)
        {
          CFSetGetCount(v7);
        }

        v8 = *(a1 + 5336);
        if (v8)
        {
          CFSetGetCount(v8);
        }

        v9 = *(a1 + 5344);
        if (v9)
        {
          CFSetGetCount(v9);
        }

        v10 = *(a1 + 5352);
        if (v10)
        {
          CFSetGetCount(v10);
        }

        v11 = *(a1 + 5360);
        if (v11)
        {
          CFSetGetCount(v11);
        }

        sub_1000F8A68();
      }

      objc_autoreleasePoolPop(v4);
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Start Broadcast to Hidden state change timer\n"];
      }

      objc_autoreleasePoolPop(v12);
      v13 = *(a1 + 5368);
      dispatch_time(0, 90000000000);
      sub_1000F8A18();
      sub_10002CF5C();
      sub_100008C64();

      dispatch_source_set_timer(v14, v15, v16, v17);
    }
  }

  else
  {
    sub_100008C64();
  }
}

void sub_10018A9A0(uint64_t a1, int a2, int a3, int a4, void *value)
{
  if (!a1 || !value)
  {
    return;
  }

  if (a3)
  {
    v7 = 5328;
  }

  else
  {
    v7 = 5320;
  }

  v8 = *(a1 + v7);
  if (a2)
  {
    CFSetAddValue(*(a1 + v7), value);
LABEL_14:
    v10 = sub_10000D7B8();

    sub_10018A7CC(v10, v11);
    return;
  }

  if (v8 && CFSetContainsValue(*(a1 + v7), value) && CFSetGetCount(v8) == 1)
  {
    *(a1 + 6520) = sub_100058B68();
  }

  CFSetRemoveValue(*(a1 + v7), value);
  if (a4)
  {
    goto LABEL_14;
  }
}

void sub_10018AA68()
{
  sub_10002183C();
  if (!v0)
  {
    goto LABEL_27;
  }

  v1 = v0;
  v2 = v0 + 4096;
  if (!*(v0 + 5267))
  {
    goto LABEL_27;
  }

  v3 = CFSetGetCount(*(v0 + 5320)) <= 0 && CFSetGetCount(*(v1 + 5336)) < 1;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v15 = *(v2 + 1212);
    v5 = *(v1 + 5320);
    if (v5)
    {
      CFSetGetCount(v5);
    }

    v6 = *(v1 + 5328);
    if (v6)
    {
      CFSetGetCount(v6);
    }

    v7 = *(v1 + 5336);
    if (v7)
    {
      CFSetGetCount(v7);
    }

    v8 = *(v1 + 5344);
    if (v8)
    {
      CFSetGetCount(v8);
    }

    v9 = *(v1 + 5352);
    if (v9)
    {
      CFSetGetCount(v9);
    }

    v10 = *(v1 + 5360);
    if (v10)
    {
      CFSetGetCount(v10);
    }

    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);
  if (*(v2 + 1212) == v3)
  {
    goto LABEL_27;
  }

  *(v2 + 1212) = v3;
  if (sub_1000F8BCC())
  {
    [objc_msgSend(v4 + 440 "sharedInstance")];
  }

  if (*(v2 + 1171))
  {
    v11 = *(v1 + 64);
    v12 = *(v2 + 1212);
    sub_10014C5C0();
    sub_10000FDDC();

    sub_1000D7150(v13);
  }

  else
  {
LABEL_27:
    sub_10000FDDC();
  }
}

void sub_10018AC18()
{
  sub_10002183C();
  if (!v0)
  {
    goto LABEL_30;
  }

  v1 = v0;
  v2 = (v0 + 4096);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v18 = v2[1173];
    v4 = v2[1212];
    v5 = v1[665];
    if (v5)
    {
      CFSetGetCount(v5);
    }

    v6 = v1[666];
    if (v6)
    {
      CFSetGetCount(v6);
    }

    v7 = v1[667];
    if (v7)
    {
      CFSetGetCount(v7);
    }

    v8 = v1[668];
    if (v8)
    {
      CFSetGetCount(v8);
    }

    v9 = v1[669];
    if (v9)
    {
      CFSetGetCount(v9);
    }

    v10 = v1[670];
    if (v10)
    {
      CFSetGetCount(v10);
    }

    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v3);
  v2[1212] = 0;
  if (sub_1000F8BCC())
  {
    [objc_msgSend(v3 + 440 "sharedInstance")];
  }

  if (!v2[1173])
  {
    v11 = v1[665];
    if (v11)
    {
      CFSetRemoveAllValues(v11);
    }

    v12 = v1[666];
    if (v12)
    {
      CFSetRemoveAllValues(v12);
    }
  }

  v13 = v1[667];
  if (v13)
  {
    CFSetRemoveAllValues(v13);
  }

  v14 = v1[668];
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

  v15 = v1[669];
  if (v15)
  {
    CFSetRemoveAllValues(v15);
  }

  if (!v2[1340] && v1[670])
  {
    sub_10000FDDC();

    CFSetRemoveAllValues(v16);
  }

  else
  {
LABEL_30:
    sub_10000FDDC();
  }
}

void sub_10018ADC8(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if ((sub_100008C40(), sub_1000A14BC(v6)) && (_os_feature_enabled_impl() & 1) != 0 || !sub_1000A14BC(v4) && _os_feature_enabled_impl())
    {
      v7 = kCFBooleanFalse;
      if (a3)
      {
        v8 = *(v3 + 7464);
        if (v8)
        {
          if (CFStringCompare(v8, @"XZ", 0))
          {
            v7 = kCFBooleanTrue;
          }
        }
      }

      sub_100006F88(*(v3 + 64));
      v9 = sub_1000F8A18();
      sub_100006F94(v9, v10, 513, 0, v7);
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (v7 == kCFBooleanTrue)
        {
          v12 = "Enabled";
        }

        else
        {
          v12 = "Disabled";
        }

        [off_100298C40 WFLog:3 message:{"%s: %s LMTPC for CarPlay", "__WiFiDeviceManagerSetLMTPC", v12}];
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

_WORD *sub_10018AF1C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Preparing MIS Network Configuration Parameters"];
  }

  objc_autoreleasePoolPop(v2);
  v3 = sub_100011340();
  Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6);
  if (!Mutable)
  {
    return 0;
  }

  v8 = Mutable;
  v9 = sub_1000F8CC0(1, v33, -1431655766, v40, SHIWORD(v40));
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = sub_100007514();
  CFDictionaryAddValue(v11, v12, v13);
  CFRelease(v10);
  v14 = sub_1000F8CC0(8, v34, valuePtr, SWORD2(valuePtr), SHIWORD(valuePtr));
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_100007514();
  CFDictionaryAddValue(v16, v17, v18);
  CFRelease(v15);
  v19 = sub_1000F8CE0(10, v35, valuePtra);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v21 = sub_100007514();
  CFDictionaryAddValue(v21, v22, v23);
  CFRelease(v20);
  v24 = sub_1000F8CE0(*(a1 + 5264), v36, valuePtrb);
  if (!v24 || (v25 = v24, v26 = sub_10000D818(), CFDictionaryAddValue(v26, v27, v28), CFRelease(v25), CFDictionaryAddValue(v8, @"SSID_STR", @"_AppleWi-FiInternetTetheringSSID_"), v29 = sub_100011580(), (v31 = sub_10000AD2C(v29, v30)) == 0))
  {
LABEL_11:
    v31 = 0;
  }

  CFRelease(v8);
  return v31;
}

void sub_10018B09C(uint64_t a1, CFStringRef *a2)
{
  v3 = sub_10018AF1C(a1);
  if (v3)
  {
    v4 = v3;
    *a2 = 0;
    *a2 = sub_10002A1CC(v3);

    CFRelease(v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error creating network struct", "WiFiDeviceManagerCopyMisPassword"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_10018B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20) == a3)
  {
    return 0;
  }

  v23 = v4;
  v24 = v3;
  v25 = v5;
  v26 = v6;
  sub_100015E88();
  bzero(v19, 0xB8uLL);
  v20 = 3;
  v21 = 3;
  v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Power Off");
  sub_1000C67C8(v3, v19);
  sub_1000C6C3C(v3);
  if (!a3)
  {
    v8 = *(v3 + 9088);
    if (v8)
    {
      [v8 resetSettlement];
    }

    if (*(v3 + 5496))
    {
      v9 = *(v3 + 5504);
      if (v9)
      {
      }

      *(v3 + 5504) = 0;
      v10 = sub_100021D58();
      sub_1000BCA70(v10, v11);
    }

    v12 = sub_100021D58();
    v14 = sub_100007D90(v12, v13, 1);
    if (v14)
    {
      v15 = v14;
      if (sub_100009730(v14))
      {
        sub_100062654(*(v3 + 64), v15, 0);
      }

      CFRelease(v15);
    }
  }

  result = sub_100060F68(*(v3 + 64), v4, a3);
  if (!result)
  {
    *(v3 + 20) = a3;
    v17 = sub_100021D58();
    sub_1000C84F4(v17, v18);
    sub_1000C8674(v3, 1, a3);
    if (*(v3 + 20) == 1)
    {
      sub_100064D18(*(v3 + 64));
      sub_10005FF14(*(v3 + 64));
    }

    return 0;
  }

  return result;
}

uint64_t sub_10018B2A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000258D4(a1);
  sub_100006F88(v3);
  v4 = sub_100015EB8();

  return sub_10018B148(v4, v5, a2);
}

uint64_t sub_10018B2E0(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000258D4(a1);
  v5 = sub_1000610F0();
  if (!v5)
  {
    *(v3 + 257) = a3;
    if (a3)
    {
      sub_1000BCD2C(v3);
    }

    else
    {
      *(v3 + 192) = 6;
      if (_os_feature_enabled_impl())
      {
        sub_100019814(v3, 0xCuLL);
      }

      else
      {
        +[WiFiXPCManager sharedXPCManager];
        sub_100006F88(*(v3 + 64));
        [sub_10002D0C0() autoJoinStartedWithTrigger:12 interfaceName:?];
        sub_1000BD310(v3, 2, "WiFiDeviceManagerSetWiFiDirectMode");
      }
    }
  }

  return v5;
}

uint64_t sub_10018B68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (a3 == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_1000C8F84(a1);
  if (!v8)
  {
    return 4294963394;
  }

  v9 = v8;
  if (CFArrayGetCount(v8) < 1)
  {
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      v13 = sub_10000A540(ValueAtIndex, @"networkRole");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == v7)
        {
          break;
        }
      }
    }

    if (CFArrayGetCount(v9) <= ++v10)
    {
      goto LABEL_11;
    }
  }

  v16 = sub_10000C580(kCFAllocatorDefault, v12);
  if (v16)
  {
    v17 = v16;
    v18 = sub_10001098C();
    v14 = sub_1000CEA50(v18, v19, v17, a4, a5);
    CFRelease(v9);
    v9 = v17;
  }

  else
  {
LABEL_11:
    v14 = 4294963394;
  }

  CFRelease(v9);
  return v14;
}

uint64_t sub_10018B7C0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 5496))
  {
    return 4294963396;
  }

  sub_100008C40();
  *(v11 + 5496) = v10 - 1;
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL refCount is now [%d].", "WiFiDeviceManagerStopAwdl", *(v5 + 5496)}];
  }

  objc_autoreleasePoolPop(v12);
  if (*(v5 + 5496))
  {
    if (a4 && *(v5 + 240))
    {
      CFRetain(v5);
      v13 = *(v5 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000CEDF8;
      block[3] = &unk_10025F5B0;
      block[4] = v5;
      block[5] = a4;
      v30 = 0;
      block[6] = v6;
      block[7] = a5;
      dispatch_async(v13, block);
    }

    return 0;
  }

  else
  {
    v15 = *(v5 + 5504);
    if (v15)
    {
    }

    *(v5 + 5504) = 0;
    v16 = malloc_type_malloc(0x20uLL, 0xA004088793A40uLL);
    if (v16)
    {
      v17 = v16;
      *v16 = v5;
      v16[1] = a4;
      v16[3] = a5;
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        v18 = 0;
      }

      v17[2] = v18;
      v14 = sub_10005C570(*(v5 + 64), v6, a3, sub_1000F1160, v17);
      *(v5 + 192) = 11;
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: hosted AWDL session is down. Triggering auto-join", "__WiFiDeviceManagerRequestAwdlTeardown"}];
      }

      objc_autoreleasePoolPop(v19);
      if (_os_feature_enabled_impl())
      {
        sub_100019814(v5, 9);
        if (!v14)
        {
          return v14;
        }
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        v20 = sub_1000F8B38();
        sub_1000BD310(v20, v21, v22);
        if (!v14)
        {
          return v14;
        }
      }

      v23 = v17[2];
      if (v23)
      {
        CFRelease(v23);
      }

      free(v17);
    }

    else
    {
      v14 = 4294963395;
    }

    v24 = sub_1000F8B38();
    sub_1000BBAE0(v24, v25, 0);
    v26 = objc_autoreleasePoolPush();
    v27 = sub_10000FBF8();
    if (v27)
    {
      [v27 WFLog:3 message:{"%s: error tearing down AWDL (=%d)", "WiFiDeviceManagerStopAwdl", v14}];
    }

    objc_autoreleasePoolPop(v5);
  }

  return v14;
}

void sub_10018BA54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000086C4();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = sub_1000C8F84(v25);
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  valuePtr = -1431655766;
  if (CFArrayGetCount(v26) < 1)
  {
    goto LABEL_13;
  }

  v28 = 0;
  while (1)
  {
    v29 = sub_100021D58();
    ValueAtIndex = CFArrayGetValueAtIndex(v29, v30);
    if (!ValueAtIndex)
    {
      goto LABEL_12;
    }

    v32 = ValueAtIndex;
    v33 = sub_10000A540(ValueAtIndex, @"networkRole");
    if (!v33)
    {
      goto LABEL_12;
    }

    CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr != 4)
    {
      goto LABEL_12;
    }

    if (v24 == 2)
    {
      break;
    }

    if (v24 == 1)
    {
      v34 = v32;
      v35 = @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC";
      goto LABEL_11;
    }

LABEL_12:
    if (CFArrayGetCount(v27) <= ++v28)
    {
      goto LABEL_13;
    }
  }

  v34 = v32;
  v35 = @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW";
LABEL_11:
  if (!sub_10000A540(v34, v35))
  {
    goto LABEL_12;
  }

  sub_10000C580(kCFAllocatorDefault, v32);
LABEL_13:
  CFRelease(v27);
LABEL_14:
  sub_100010944();
}

uint64_t sub_10018BB6C(uint64_t a1, double a2)
{
  if (a1)
  {
    sub_100008C40();
    if (*(v5 + 400) != v6 || *(v2 + 392) != a2)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:2 message:{"scan throttle set to %ld over %f seconds", v3, *&a2}];
      }

      objc_autoreleasePoolPop(v7);
      *(v2 + 400) = v3;
      *(v2 + 392) = a2;
    }
  }

  return 0;
}

uint64_t sub_10018C514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 64);
    v5 = sub_100006F88(v4);
    v6 = &kCFBooleanTrue;
    if (!a2)
    {
      v6 = &kCFBooleanFalse;
    }

    sub_100006F94(v4, v5, 582, 0, *v6);
    sub_100006F88(*(a1 + 64));
    v7 = sub_100015EB8();
    v9 = sub_100007D90(v7, v8, 1);
    if (v9 || (a2 & 1) == 0)
    {
      sub_100048EA4(*(a1 + 120), a2);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return 0;
}

void sub_10018C5C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100048F18(*(a1 + 120), a2);
  }
}

void sub_10018C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100024B78();
  a22 = v23;
  a23 = v27;
  if (!v24)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_29;
    }

    v44 = "Error: %s: device manager is NULL";
LABEL_28:
    [v43 WFLog:4 message:v44];
    goto LABEL_29;
  }

  v28 = v25;
  if (!v25)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_29;
    }

    v44 = "Error: %s: trafficReg is NULL";
    goto LABEL_28;
  }

  v29 = v26;
  if (!v26)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_29;
    }

    v44 = "Error: %s: clientID is NULL";
    goto LABEL_28;
  }

  v30 = v24;
  if (!CFDictionaryGetValue(*(v24 + 7160), v26) || (objc_opt_class(), sub_10000D800(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    CFDictionarySetValue(*(v30 + 7160), v29, objc_alloc_init(AWDLServiceDiscoveryManager));
  }

  a15 = 0;
  v31 = [[AWDLTrafficRegistrationConfiguration alloc] initWithDictionary:v28 isActive:&a15];
  if (!v31)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = off_100298C40;
    if (off_100298C40)
    {
      v44 = "Failed to send traffic registration because failed to parse dictionary";
      goto LABEL_28;
    }

LABEL_29:
    objc_autoreleasePoolPop(v42);
    v32 = 0;
    goto LABEL_19;
  }

  v32 = v31;
  v33 = sub_10002A0A0();
  if (v34 == 1)
  {
    if (([v33 setTrafficRegistration:? error:?] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (![v33 clearTrafficRegistration:? error:?])
  {
    goto LABEL_19;
  }

  if ([v32 options])
  {
    [v32 peerAddress];
    v35 = [[WiFiMACAddress alloc] initWithAddress:0];
    if ([sub_10000757C() isEqual:?])
    {
      *(v30 + 5570) = a15;
      v36 = +[WiFiUserInteractionMonitor sharedInstance];
      [(WiFiUserInteractionMonitor *)v36 updateIsAirplayActiveOverInfra:a15];
    }
  }

  v37 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v45 = *(v30 + 5570);
    [off_100298C40 WFLog:3 message:"%s manager->latencySensitiveServices.airplayOverInfra:%u"];
  }

  objc_autoreleasePoolPop(v37);
  v38 = sub_100008684();
  sub_100021870(v38, v39);
  if (*(v30 + 441))
  {
    v40 = sub_1000F8C58();
    sub_100008DCC(v40, v41);
  }

LABEL_19:

  sub_10006AD5C();
}

uint64_t sub_10018C844(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return sub_100150CCC(*(a1 + 64), a2);
  }

  else
  {
    return 83;
  }
}

void sub_10018C85C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFMutableArrayRef theArray, int a11, int valuePtr, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011520();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a13 = v30;
  a14 = v36;
  v37 = sub_100034FE4();
  Mutable = CFDictionaryCreateMutable(v37, v38, v39, v40);
  if (!Mutable)
  {
    goto LABEL_53;
  }

  v42 = sub_100034FE4();
  v44 = CFStringCreateMutable(v42, v43);
  CFDictionarySetValue(Mutable, @"SCAN_MERGE", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"MONITOR_QBSS_LOAD", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"SCAN_INC_BSS_LIST", kCFBooleanTrue);
  valuePtr = v29;
  v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  sub_1000F8D68(v45, @"SCAN_TYPE");
  if (v45)
  {
    CFRelease(v45);
  }

  valuePtr = 3;
  v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  sub_1000F8D68(v46, @"SCAN_BSS_TYPE");
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &a14);
  sub_1000F8D68(v47, @"SCAN_RSSI_THRESHOLD");
  if (v47)
  {
    CFRelease(v47);
  }

  if (!v35)
  {
    goto LABEL_35;
  }

  v48 = sub_10009D190();
  if (v48 != CFGetTypeID(v35))
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v35) && CFArrayGetCount(v35) >= 1)
    {
      if (v44)
      {
        CFStringAppend(v44, @"Performing auto-join broadcast and directed scan for ");
      }

      v54 = sub_100034FE4();
      v57 = CFArrayCreateMutable(v54, v55, v56);
      if (v57)
      {
        theArraya = v57;
        Count = CFArrayGetCount(v35);
        v59 = Count - 1;
        if (Count >= 1)
        {
          v60 = 0;
          if (v59 >= 8)
          {
            v59 = 8;
          }

          v61 = v59 + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v35, v60);
            v63 = sub_10000A878(ValueAtIndex);
            if (v63)
            {
              v64 = v63;
              v65 = sub_100034FE4();
              v67 = CFDictionaryCreateMutable(v65, v66, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v67)
              {
                v68 = v67;
                CFDictionarySetValue(v67, @"SSID_STR", v64);
                CFArrayAppendValue(theArraya, v68);
                CFRelease(v68);
                if (v44)
                {
                  v69 = sub_100011340();
                  CFStringAppendFormat(v69, v70, @"%@ ");
                }
              }
            }

            ++v60;
          }

          while (v61 != v60);
        }

        if (CFArrayGetCount(theArraya))
        {
          v71 = sub_100034FE4();
          v75 = CFDictionaryCreateMutable(v71, v72, v73, v74);
          if (v75)
          {
            v76 = v75;
            CFDictionarySetValue(v75, @"SSID_STR", &stru_1002680F8);
            CFArrayAppendValue(theArraya, v76);
            CFRelease(v76);
          }

          sub_1000F8D68(v75, @"SCAN_SSID_LIST");
        }

        CFRelease(theArraya);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v44)
    {
      CFStringAppend(v44, @"Performing auto-join broadcast scan ");
    }

    goto LABEL_37;
  }

  if (v44)
  {
    CFStringAppend(v44, @"Performing auto-join directed scan for ");
  }

  v49 = sub_10000A878(v35);
  if (v49)
  {
    CFDictionarySetValue(Mutable, @"SSID_STR", v49);
  }

  if (v44)
  {
    v50 = sub_100011340();
    CFStringAppendFormat(v50, v51, v52);
  }

LABEL_37:
  if (v31)
  {
    v77 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &a13);
    v78 = sub_100007514();
    CFDictionarySetValue(v78, v79, v80);
    if (v44)
    {
      v81 = sub_100011340();
      CFStringAppendFormat(v81, v82, v83);
    }

    if (v77)
    {
      CFRelease(v77);
    }
  }

  if (v33)
  {
    v84 = CFArrayGetCount(v33);
    if (v84)
    {
      if (v44)
      {
        v85 = v84;
        CFStringAppend(v44, @"on channels: ");
        if (v85 >= 1)
        {
          do
          {
            v86 = CFArrayGetValueAtIndex(v33, 0);
            CFDictionaryGetValue(v86, @"CHANNEL");
            v87 = sub_100011340();
            CFStringAppendFormat(v87, v88, @"%@ ");
            sub_1000950C4();
          }

          while (!v89);
        }
      }

      v90 = sub_10000D818();
      CFDictionarySetValue(v90, v91, v92);
    }
  }

  if (v44)
  {
    v93 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%@"];
    }

    objc_autoreleasePoolPop(v93);
    CFRelease(v44);
  }

LABEL_53:
  sub_10001091C();
}

void sub_10018CCAC(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  valuePtr[0] = 0.0;
  if (a1 && *(a1 + 7480))
  {
    v74 = v4;
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v72 = v5;
      v6 = sub_10000A878(*(a1 + 5256));
      v70 = *(a1 + 5264);
      v71 = v6;
      v69 = *(a1 + 5265);
      v68 = *(a1 + 5304);
      v67 = *(a1 + 5410);
      v66 = *(a1 + 5409);
      v65 = *(a1 + 5408);
      v7 = *(a1 + 5336);
      if (v7)
      {
        Count = CFSetGetCount(v7);
      }

      else
      {
        Count = 0;
      }

      v8 = *(a1 + 5344);
      if (v8)
      {
        v63 = CFSetGetCount(v8);
      }

      else
      {
        v63 = 0;
      }

      v9 = *(a1 + 5352);
      if (v9)
      {
        CFSetGetCount(v9);
      }

      v10 = *(a1 + 5360);
      if (v10)
      {
        CFSetGetCount(v10);
      }

      v11 = *(a1 + 5267);
      v12 = *(a1 + 5269);
      v13 = *(a1 + 5308);
      v14 = *(a1 + 5376);
      v15 = *(a1 + 5320);
      if (v15)
      {
        CFSetGetCount(v15);
      }

      v16 = *(a1 + 5328);
      if (v16)
      {
        CFSetGetCount(v16);
      }

      v61 = *(a1 + 5432);
      v62 = *(a1 + 5433);
      v59 = Count;
      v60 = v63;
      v57 = v66;
      v58 = v65;
      v56 = v67;
      v55 = v68;
      v54 = v69;
      v53 = v70;
      usedBufLen = "__WiFiDeviceManagerUpdateSoftApUsageSession";
      v52 = v71;
      sub_1000A9B58();
      v5 = v72;
    }

    objc_autoreleasePoolPop(v5);
    v24 = *(a1 + 7128);
    if (v24)
    {
      Value = CFDictionaryGetValue(v24, @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_DURATION");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberDoubleType, valuePtr);
      }
    }

    if (*(a1 + 7464))
    {
      CFStringGetLength(*(a1 + 7464));
      v26 = sub_100008684();
      CFStringGetBytes(v26, v76, 0x8000100u, 0, 0, v27, 4, 0);
    }

    v28 = *(a1 + 6368);
    v29 = 0.0;
    v30 = 0.0;
    if (v28 != 0.0)
    {
      v31 = *(a1 + 6376);
      v32 = v31 - v28;
      if (v31 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v32;
      }
    }

    v33 = *(a1 + 6384);
    if (v33 == 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v34 = *(a1 + 6528);
      v35 = *(a1 + 6520);
      if (v34 > v35)
      {
        v35 = *(a1 + 6528);
      }

      v36 = (v33 - v35) / 1000000.0;
      if (v34 != 0.0)
      {
        v29 = (v33 - v34) / 1000000.0;
      }
    }

    v37 = *(a1 + 6352) - 1;
    if (v37 > 0xA)
    {
      v38 = @"Unknown";
    }

    else
    {
      v38 = off_1002620E0[v37];
    }

    v73 = v38;
    v39 = *(a1 + 6356) - 1;
    if (v39 > 0x14)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(&off_100262138 + v39);
    }

    v41 = *(a1 + 6360) - 1;
    if (v41 > 6)
    {
      v42 = 0;
    }

    else
    {
      v42 = off_1002621E0[v41];
    }

    v43 = *(a1 + 7480);
    v44 = *(a1 + 5264);
    v45 = *(a1 + 5308) != 0;
    v46 = *(a1 + 3467) != 0;
    v47 = *(a1 + 64);
    sub_10014C1C0(v47, v17, v18, v19, v20, v21, v22, v23, usedBufLen, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    v49 = sub_1000634F8(v47, v48, 0);
    BYTE3(usedBufLena) = *(a1 + 7144) != 0;
    BYTE2(usedBufLena) = v49 != 0;
    BYTE1(usedBufLena) = v46;
    LOBYTE(usedBufLena) = v45;
    [v43 setSoftApState:a2 != 0 requester:v73 status:v40 changeReason:v42 channelNumber:v44 countryCode:0 isHidden:valuePtr[0] isInfraConnected:v30 isAwdlUp:v36 lowPowerModeDuration:v29 compatibilityMode:usedBufLena requestToUpLatency:? idleTimeBeforeTeardownSec:? idleTimeAfterLastClientDisconnectedSec:?];
    v4 = v74;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10018D064(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 3336);
  if (!a2)
  {
    return v5;
  }

  sub_1000F8BE4();
  v7 = objc_autoreleasePoolPush();
  if (a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (!*(v3 + 6656) || !*(v3 + 108))
  {
LABEL_34:
    objc_autoreleasePoolPop(v7);
    return v5;
  }

  if (*(v3 + 6788))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: already displayed recommendation in this session (state %d)", "__WiFiDeviceManagerDispatchRecommendation", *(v3 + 6788)}];
    }

    goto LABEL_33;
  }

  v9 = [objc_msgSend(v4 "network")];
  v10 = +[WiFiUserInteractionMonitor sharedInstance];
  if (v9 == 3)
  {
    if (![(WiFiUserInteractionMonitor *)v10 isNearbyDeviceRecommendationAllowed])
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: nearby device recommendation not allowed due to user interaction state", "__WiFiDeviceManagerDispatchRecommendation", v20}];
      }

LABEL_33:
      objc_autoreleasePoolPop(v11);
      goto LABEL_34;
    }
  }

  else if (![(WiFiUserInteractionMonitor *)v10 isNetworkRecommendationAllowed])
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: recommendation not allowed due to user interaction state", "__WiFiDeviceManagerDispatchRecommendation", v20}];
    }

    goto LABEL_33;
  }

  v8 = sub_10001A904(v3);
LABEL_13:
  [*(v3 + 6776) enableTestMode:sub_1001ADB94(*(v3 + 96)) != 0];
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dispatching recommendation for %@", "__WiFiDeviceManagerDispatchRecommendation", objc_msgSend(v4, "SSID")}];
  }

  objc_autoreleasePoolPop(v12);
  v13 = [*(v3 + 6776) dispatchNotificationWithRecommendation:v4 currentLocation:v8 force:a3 != 0];
  if (v13 == 2)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: blacklisting recommendation for %@", "__WiFiDeviceManagerDispatchRecommendation", objc_msgSend(v4, "SSID")}];
    }

    objc_autoreleasePoolPop(v15);
    v14 = sub_10009D2E4([v4 SSID]);
    [objc_msgSend(v4 "network")];
    v16 = sub_10001D1D0();
    sub_10000C614(v16, @"WiFiNetworkAttributeSource", v17);
    v18 = *(v3 + 4728);
    if (v18)
    {
      v18(v3, v14, 1, 6, *(v3 + 4736));
    }

    goto LABEL_23;
  }

  if (!v13)
  {
    *(v3 + 6788) = 2;
    if (*(v3 + 4712))
    {
      v14 = sub_10009D2E4([v4 SSID]);
      (*(v3 + 4712))(v3, v14, 1, *(v3 + 4720));
      v5 = 14;
LABEL_23:
      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_26;
    }

    v5 = 14;
  }

LABEL_26:
  objc_autoreleasePoolPop(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

void sub_10018D35C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *context, void *a12, uint64_t a13, unint64_t valuePtr, void *a15, CFNumberRef number, const __CFString *value, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_10002183C();
  a30 = v35;
  a31 = v36;
  sub_100094FF0();
  v89 = objc_autoreleasePoolPush();
  number = 0;
  value = 0;
  valuePtr = -1;
  a15 = 0;
  if (!v32)
  {
    v83 = objc_autoreleasePoolPush();
    v38 = sub_10000FBF8();
    if (!v38)
    {
      goto LABEL_34;
    }

    v49 = "%s: manager is NULL!";
    goto LABEL_33;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = sub_10000FBF8();
  if (!v33)
  {
    if (!v38)
    {
      goto LABEL_34;
    }

    v49 = "%s: request is NULL!";
    goto LABEL_33;
  }

  if (v38)
  {
    [v38 WFLog:3 message:"%s: Processing Request:%@"];
  }

  objc_autoreleasePoolPop(v31);
  CFDictionaryGetValueIfPresent(v33, @"command", &value);
  if (!value)
  {
    v84 = objc_autoreleasePoolPush();
    v38 = sub_10000FBF8();
    if (!v38)
    {
      goto LABEL_34;
    }

    v49 = "%s with no command";
    goto LABEL_33;
  }

  CFDictionaryGetValueIfPresent(v33, @"reason", &number);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberNSIntegerType, &valuePtr);
  }

  CFDictionaryGetValueIfPresent(v33, @"network", &a15);
  if (a15)
  {
    v39 = sub_10000AD2C(kCFAllocatorDefault, a15);
    if (!v39)
    {
      v85 = objc_autoreleasePoolPush();
      v38 = sub_10000FBF8();
      if (!v38)
      {
        goto LABEL_34;
      }

      v49 = "%s couldn't convert record to network";
      goto LABEL_33;
    }

    v34 = v39;
    if (CFArrayGetCount(*(v32 + 3576)) < 1)
    {
LABEL_14:
      ValueAtIndex = 0;
    }

    else
    {
      v31 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v32 + 3576), v31);
        v41 = sub_10001E7F0();
        if (CFEqual(v41, v42))
        {
          break;
        }

        if (++v31 >= CFArrayGetCount(*(v32 + 3576)))
        {
          goto LABEL_14;
        }
      }
    }

    if (CFArrayGetCount(*(v32 + 3584)) >= 1)
    {
      v31 = 0;
      while (1)
      {
        v43 = CFArrayGetValueAtIndex(*(v32 + 3584), v31);
        v44 = sub_10000DAB4();
        if (CFEqual(v44, v45))
        {
          break;
        }

        if (++v31 >= CFArrayGetCount(*(v32 + 3584)))
        {
          goto LABEL_22;
        }
      }

      ValueAtIndex = v43;
    }

LABEL_22:
    CFRelease(v34);
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (CFStringCompare(value, @"kAutoJoinBlacklistSet", 0))
  {
    if (CFStringCompare(value, @"kAutoJoinBlacklistClear", 0))
    {
      goto LABEL_35;
    }

    if (ValueAtIndex)
    {
      if (valuePtr < 8)
      {
        v46 = sub_10001A9BC(ValueAtIndex);
        [*(v32 + 6720) removeNetworkDenyListInfoWithReason:valuePtr forScanResult:v46];

        goto LABEL_35;
      }

      goto LABEL_72;
    }

LABEL_70:
    v86 = objc_autoreleasePoolPush();
    v38 = sub_10000FBF8();
    if (!v38)
    {
      goto LABEL_34;
    }

    v49 = "%s - Couldn't find network to set blacklist condition";
    goto LABEL_33;
  }

  if (!ValueAtIndex)
  {
    goto LABEL_70;
  }

  if (valuePtr >= 0xD)
  {
LABEL_72:
    v87 = objc_autoreleasePoolPush();
    v38 = sub_10000FBF8();
    if (!v38)
    {
      goto LABEL_34;
    }

    v49 = "%s - Couldn't determine blacklist condition to set";
    goto LABEL_33;
  }

  sub_10018D894();
  if (v47)
  {
    goto LABEL_35;
  }

  v48 = objc_autoreleasePoolPush();
  v38 = sub_10000FBF8();
  if (v38)
  {
    v49 = "%s - __WiFiDeviceManagerSetAutoJoinBlacklistedNetworkCondition %lu failed";
LABEL_33:
    [v38 WFLog:3 message:v49];
  }

LABEL_34:
  objc_autoreleasePoolPop(v31);
LABEL_35:
  contexta = objc_autoreleasePoolPush();
  sub_100021D70();
  Mutable = CFArrayCreateMutable(v50, v51, v52);
  sub_100021D70();
  v57 = CFArrayCreateMutable(v54, v55, v56);
  v58 = [*(v32 + 6720) networksInDenyListedState:1];
  if ([v58 count])
  {
    v59 = 0;
    v90 = v32;
    do
    {
      v60 = [v58 objectAtIndex:v59];
      v61 = sub_1000A2E44(v60);
      v62 = [*(v32 + 6720) reasonsForNetworkInDenyListedState:v60 state:1 timestamps:0 reasonData:0];
      if (v62)
      {
        v63 = v62;
        if ([v62 count])
        {
          v64 = Mutable;
          v65 = sub_1000113AC();
          v67 = CFArrayCreateMutable(v65, v66, &kCFTypeArrayCallBacks);
          if ([v63 count])
          {
            v68 = 0;
            do
            {
              a19 = [objc_msgSend(v63 objectAtIndex:{v68), "unsignedIntegerValue"}];
              CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &a19);
              v69 = sub_100010938();
              CFArrayAppendValue(v69, v34);
              if (v34)
              {
                CFRelease(v34);
              }

              ++v68;
            }

            while (v68 < [v63 count]);
          }

          CFArrayAppendValue(v57, v67);
          if (v67)
          {
            CFRelease(v67);
          }

          v70 = sub_10000C580(kCFAllocatorDefault, v61);
          Mutable = v64;
          v71 = sub_100011580();
          CFArrayAppendValue(v71, v72);
          v32 = v90;
          if (v70)
          {
            CFRelease(v70);
          }
        }
      }

      ++v59;
    }

    while (v59 < [v58 count]);
  }

  if (CFArrayGetCount(Mutable))
  {
    if (CFArrayGetCount(v57) && (Count = CFArrayGetCount(v57), Count == CFArrayGetCount(Mutable)))
    {
      v74 = sub_100095014();
      v78 = CFDictionaryCreateMutable(v74, v75, v76, v77);
      CFDictionarySetValue(v78, @"networks", Mutable);
      v79 = sub_100029EB8();
      CFDictionarySetValue(v79, v80, v81);
    }

    else
    {
      v82 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s Mismatched reason and network array counts "];
      }

      objc_autoreleasePoolPop(v82);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  objc_autoreleasePoolPop(contexta);
  objc_autoreleasePoolPop(v89);
  sub_10000FDDC();
}

void sub_10018D894()
{
  sub_10000D798();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10001A9BC(v1);
  if (!v5 || !v1)
  {
    goto LABEL_11;
  }

  [v5[840] setDenyListedStateExpiryIntervalInSec:1 state:60.0];
  if (v3 > 7)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s - unrecognized WiFiDenyListAddReason"];
    }

    objc_autoreleasePoolPop(v15);
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (((1 << v3) & 0x4F) != 0)
  {
    sub_10000A540(v1, @"BSSID");
    v8 = sub_10002D0C0();
    v10 = sub_1000BE2EC(v8, v3, 0, v9, 1);
LABEL_8:
    sub_1000F8A9C();
    goto LABEL_9;
  }

  if (((1 << v3) & 0x90) != 0)
  {
    sub_10000A540(v1, @"BSSID");
    v11 = sub_10002D0C0();
    v10 = sub_1000BE2EC(v11, v3, 0, v12, 1);
    sub_1000F8A9C();
    sub_1000F8A9C();
    goto LABEL_8;
  }

  v13 = sub_10000A540(v1, @"BSSID");
  v14 = 5;
  v10 = sub_1000BE2EC(v5, 5, 0, v13, 1);
  do
  {
    sub_1000F8A9C();
    --v14;
  }

  while (v14);
LABEL_9:
  if (v10)
  {
  }

LABEL_11:
  if (v7)
  {
LABEL_12:
  }

LABEL_13:
  objc_autoreleasePoolPop(v6);
  sub_1000084B8();
}

const __CFArray *sub_10018DA2C(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "__WiFiDeviceManagerScheduleNextRetry"}];
    }

    objc_autoreleasePoolPop(v31);
    return 0;
  }

  result = *(a1 + 328);
  if (!result)
  {
    return result;
  }

  valuePtr = NAN;
  v3 = *(a1 + 356);
  if (v3)
  {
    *(a1 + 356) = v3 - 1;
    if (v3 != 1)
    {
      valuePtr = 1.0;
      v4 = 1.0;
      goto LABEL_9;
    }
  }

  result = CFArrayGetValueAtIndex(result, *(a1 + 336));
  if (!result)
  {
    return result;
  }

  CFNumberGetValue(result, kCFNumberDoubleType, &valuePtr);
  v4 = valuePtr;
  if (valuePtr <= 0.0)
  {
    return 0;
  }

  *(a1 + 344) = valuePtr;
LABEL_9:
  if (*(a1 + 3336) == 2)
  {
    v4 = v4 + 2.0;
    valuePtr = v4;
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    if (v4 >= v5)
    {
      v4 = v5;
    }

    valuePtr = v4;
    v6 = v4 - v4 * 0.1;
    v7 = arc4random();
    v8 = sub_1000F8B14(v7);
    sub_100021380(v8, 2147483650.0);
    dispatch_time(0, (v6 * 1000000000.0));
    sub_100015EB8();
    sub_10002CF5C();
    dispatch_source_set_timer(v9, v10, v11, v12);
    v13 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
      goto LABEL_20;
    }

    v37 = *(a1 + 352);
    v36 = *&valuePtr;
    v35 = [NSString stringWithFormat:@"%s: Performing next automatic assocation in %.3f(%.3f) seconds, retry cap=%d", "__WiFiDeviceManagerScheduleNextRetry", *&v6];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = v4 - v4 * 0.1;
    v16 = arc4random();
    v17 = sub_1000F8B14(v16);
    sub_100021380(v17, 2147483650.0);
    dispatch_time(0, (v15 * 1000000000.0));
    sub_100015EB8();
    sub_10002CF5C();
    dispatch_source_set_timer(v18, v19, v20, v21);
    v13 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
      goto LABEL_20;
    }

    v36 = *&valuePtr;
    v35 = [NSString stringWithFormat:@"%s: Performing next automatic assocation in %.3f(%.3f) seconds", "__WiFiDeviceManagerScheduleNextRetry", *&v15];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }
  }

  v34 = [(NSString *)v14 UTF8String];
  [[NSString stringWithFormat:?]];
  sub_1000F8B08();
  sub_1000F8A80(&_mh_execute_header, &_os_log_default, v22, "%{public}s", v23, v24, v25, v26, v34, v35, v36, v37, v38, *&valuePtr, v40);
LABEL_20:
  objc_autoreleasePoolPop(v13);
  *(a1 + 5712) = valuePtr;
  if (*(a1 + 24) && sub_10005B850(*(a1 + 64)) && !*(a1 + 28))
  {
    *(a1 + 28) = 1;
  }

  if (v3)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = sub_1000F8AC4();
    if (v33)
    {
      [v33 WFLog:3 message:{"%s: in quick autojoin retry, %d more remaining.", "__WiFiDeviceManagerScheduleNextRetry", *(a1 + 356)}];
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    Count = CFArrayGetCount(*(a1 + 328));
    v28 = *(a1 + 336);
    v29 = v28 + 1;
    if (v28 + 1 < Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 328), v28 + 1);
      if (ValueAtIndex)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
        if (valuePtr > 0.0)
        {
          *(a1 + 336) = v29;
        }
      }
    }
  }

  return 1;
}

void sub_10018DE8C(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    sub_100008C40();
    if (*(v7 + 6800) != v8 || *(v3 + 6808) != a2 || *(v3 + 6816) != a3)
    {
      *(v3 + 6800) = v4;
      *(v3 + 6808) = a2;
      *(v3 + 6816) = a3;
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: mode:%ld time:%f secs, distance: %f m", "WiFiDeviceManagerSetJoinAlertParams", v4, *&a3, *&a2}];
      }

      objc_autoreleasePoolPop(v9);
      v10 = *(v3 + 6776);
      v11 = *(v3 + 6800) == 255 || *(v3 + 6656) == 255;

      [v10 enableTestMode:v11];
    }
  }
}

CFArrayRef sub_10018DF8C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl())
  {
    v4 = (*(a1 + 4744))(a1, *(a1 + 4752));
    if (v4)
    {
      v5 = v4;
      if (CFDictionaryGetCount(v4))
      {
        v6 = [(__CFDictionary *)v5 allKeys];
        v31 = [v6 mutableCopy];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = v6;
        v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v7)
        {
          v8 = v7;
          v30 = v2;
          v33 = *v35;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v35 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v34 + 1) + 8 * i);
              v11 = [(__CFDictionary *)v5 objectForKey:v10];
              v12 = [v11 objectForKey:@"type"];
              if (v12)
              {
                v13 = v12;
                v14 = [v11 objectForKey:@"notificationType"];
                if (v14)
                {
                  v15 = v14;
                  v16 = [v11 objectForKey:@"source"];
                  v17 = v5;
                  v18 = v16 ? v16 : &off_1002818C0;
                  v19 = [v11 objectForKey:@"count"];
                  v20 = [v13 unsignedIntValue];
                  v21 = [v15 unsignedIntValue];
                  v22 = [v11 objectForKey:@"timestamp"];
                  v23 = v18;
                  v5 = v17;
                  v24 = [v23 unsignedIntValue];
                  if (v22)
                  {
                    v25 = v24;
                    v26 = v19 ? v19 : &off_1002818D8;
                    v27 = [v26 integerValue];
                    v28 = v25;
                    v5 = v17;
                    if ([WiFiUserNotificationManager canRepromptForNotificationType:v21 blacklistType:v20 source:v28 atDate:v22 count:v27])
                    {
                      [(__CFArray *)v31 removeObject:v10];
                    }
                  }
                }
              }
            }

            v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v8);
          v2 = v30;
        }

        goto LABEL_28;
      }
    }

    objc_autoreleasePoolPop(v2);
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [NearbyCaptiveAssistTestable] SSID denylist for user notifications is DISABLED", "__WiFiDeviceManagerCopyUserNotificationBlacklistedSSIDs"}];
  }

  objc_autoreleasePoolPop(v3);
  v31 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
LABEL_28:
  objc_autoreleasePoolPop(v2);
  return v31;
}

void sub_10018E2B0()
{
  sub_1000F8B6C();
  if (!v0)
  {
    goto LABEL_42;
  }

  v1 = *(v0 + 6736);
  if (!v1)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: availability engine is NULL", "WiFiDeviceManagerCopyNetworkRecommendations"}];
    }

    goto LABEL_47;
  }

  v2 = [v1 availableNetworks];
  if (!v2 || (v3 = v2, ![v2 count]))
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no available networks", "WiFiDeviceManagerCopyNetworkRecommendations"}];
    }

LABEL_47:
    objc_autoreleasePoolPop(v20);
    goto LABEL_42;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v23 = v4;
  if (v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = sub_1000F8BB4(v4, v5, &v28, v33);
    if (v6)
    {
      v7 = v6;
      obj = v3;
      v22 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_alloc_init(NSMutableDictionary);
          if ([v9 SSID])
          {
            [v9 SSID];
            [sub_100029EF8() setObject:? forKey:?];
          }

          if ([objc_msgSend(v9 "network")])
          {
            [objc_msgSend(objc_msgSend(v9 "network")];
            [sub_10001D1D0() numberWithUnsignedInteger:?];
            [sub_100029EF8() setObject:? forKey:?];
          }

          [v9 network];
          if (objc_opt_respondsToSelector())
          {
            [v9 network];
            [objc_opt_self() uniqueIdentifier];
            [sub_100029EF8() setObject:? forKey:?];
          }

          v11 = [objc_msgSend(v9 "network")] - 1;
          v12 = @"unknown";
          if (v11 <= 2)
          {
            v12 = off_100262218[v11];
          }

          [v10 setObject:v12 forKey:@"source"];
          if ([objc_msgSend(v9 "scannedNetwork")])
          {
            [objc_msgSend(v9 "scannedNetwork")];
            [sub_100029EF8() setObject:? forKey:?];
          }

          if ([objc_msgSend(v9 "scannedNetwork")])
          {
            [objc_msgSend(objc_msgSend(v9 "scannedNetwork")];
            [sub_10001D1D0() numberWithUnsignedInteger:?];
            [sub_100029EF8() setObject:? forKey:?];
          }

          if ([objc_msgSend(v9 "network")])
          {
            [objc_msgSend(objc_msgSend(v9 "network")];
            [sub_10001D1D0() numberWithUnsignedInteger:?];
            [sub_100029EF8() setObject:? forKey:?];
          }

          if ([objc_msgSend(v9 "network")])
          {
            [objc_msgSend(v9 "network")];
            [sub_100029EF8() setObject:? forKey:?];
          }

          if ([objc_msgSend(v9 "network")])
          {
            v13 = objc_alloc_init(NSMutableString);
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v14 = [objc_msgSend(v9 "network")];
            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v25;
              do
              {
                for (j = 0; j != v16; j = j + 1)
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [*(*(&v24 + 1) + 8 * j) intValue] - 1;
                  if (v19 <= 5)
                  {
                    [v13 appendString:off_100262230[v19]];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v16);
            }

            if ([v13 length])
            {
              [v13 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
              [sub_100029EF8() setObject:? forKey:?];
            }
          }

          [v23 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }
  }

LABEL_42:
  sub_1000F8B84();
}

__CFDictionary *sub_10018E710(uint64_t a1, void *a2)
{
  v95 = a1;
  v85 = objc_autoreleasePoolPush();
  v3 = &kCFTypeArrayCallBacks;
  sub_100021D70();
  Mutable = CFArrayCreateMutable(v4, v5, v6);
  sub_100021D70();
  v11 = CFArrayCreateMutable(v8, v9, v10);
  sub_100021D70();
  v15 = CFArrayCreateMutable(v12, v13, v14);
  sub_100021D70();
  v19 = CFArrayCreateMutable(v16, v17, v18);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = a2;
  v21 = sub_1000F8BB4(v19, v20, &v97, v101);
  if (!v21)
  {
LABEL_51:
    v65 = sub_100095014();
    v69 = CFDictionaryCreateMutable(v65, v66, v67, v68);
    CFDictionarySetValue(v69, @"networks", Mutable);
    v70 = sub_10000D818();
    CFDictionarySetValue(v70, v71, v72);
    v73 = sub_100029EB8();
    CFDictionarySetValue(v73, v74, v75);
    v76 = sub_100007514();
    CFDictionarySetValue(v76, v77, v78);
LABEL_61:
    v80 = v85;
    if (v19)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = v21;
  v23 = *v98;
  v92 = v15;
  theArray = v11;
  v90 = Mutable;
  v91 = v19;
  v86 = *v98;
LABEL_3:
  v24 = 0;
  v87 = v22;
  while (1)
  {
    if (*v98 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v94 = [*(*(&v97 + 1) + 8 * v24) integerValue];
    v25 = [*(v95 + 6720) networksInDenyListedState:?];
    if (!v25)
    {
      goto LABEL_49;
    }

    v26 = v25;
    if (![v25 count])
    {
      goto LABEL_49;
    }

    v89 = v24;
    if ([v26 count])
    {
      v27 = 0;
      do
      {
        v28 = [v26 objectAtIndex:v27];
        v29 = sub_1000A2E44(v28);
        if (v29)
        {
          v30 = v29;
          v3 = &xpc_dictionary_set_uint64_ptr;
          v31 = +[NSMutableArray array];
          v32 = +[NSMutableArray array];
          v33 = [*(v95 + 6720) reasonsForNetworkInDenyListedState:v28 state:v94 timestamps:v31 reasonData:v32];
          if (v33)
          {
            v34 = v33;
            if ([v33 count])
            {
              v35 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
              if ([v34 count])
              {
                v36 = 0;
                do
                {
                  v37 = [objc_msgSend(v34 objectAtIndex:{v36), "unsignedIntegerValue"}];
                  sub_1000F8C80(v37, v38, v39, v40, v41, v42, v43, v44, v83, v84, v85, v86, v87, obj, v89, v90, v91, v92, theArray, v94, v95, valuePtr);
                  v45 = sub_1000F8C4C();
                  CFArrayAppendValue(v45, &xpc_dictionary_set_uint64_ptr);
                  if (&xpc_dictionary_set_uint64_ptr)
                  {
                    CFRelease(&xpc_dictionary_set_uint64_ptr);
                  }

                  ++v36;
                }

                while (v36 < [v34 count]);
              }

              CFArrayAppendValue(theArray, v35);
              if (v35)
              {
                CFRelease(v35);
              }

              v3 = sub_10000C580(kCFAllocatorDefault, v30);
              Mutable = v90;
              CFArrayAppendValue(v90, v3);
              if (v3)
              {
                CFRelease(v3);
              }
            }
          }

          if (v31 && [v31 count])
          {
            v46 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if ([v31 count])
            {
              v47 = 0;
              do
              {
                [objc_msgSend(v31 objectAtIndex:{v47), "doubleValue"}];
                valuePtr = v48;
                v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
                v49 = sub_100011580();
                CFArrayAppendValue(v49, v50);
                if (v3)
                {
                  CFRelease(v3);
                }

                ++v47;
              }

              while (v47 < [v31 count]);
            }

            CFArrayAppendValue(v91, v46);
            if (v46)
            {
              CFRelease(v46);
            }
          }

          if (v32 && [v32 count])
          {
            v51 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if ([v32 count])
            {
              v52 = 0;
              do
              {
                v53 = [objc_msgSend(sub_10001153C() "objectAtIndex:"unsignedIntegerValue"")];
                v3 = sub_1000F8C80(v53, v54, v55, v56, v57, v58, v59, v60, v83, v84, v85, v86, v87, obj, v89, v90, v91, v92, theArray, v94, v95, valuePtr);
                v61 = sub_100011580();
                CFArrayAppendValue(v61, v62);
                if (v3)
                {
                  CFRelease(v3);
                }

                ++v52;
              }

              while (v52 < [v32 count]);
            }

            CFArrayAppendValue(v92, v51);
            if (v51)
            {
              CFRelease(v51);
            }
          }

          CFRelease(v30);
        }

        ++v27;
      }

      while (v27 < [v26 count]);
    }

    if (!CFArrayGetCount(Mutable))
    {
      v69 = 0;
      v80 = v85;
      v15 = v92;
      v11 = theArray;
      v19 = v91;
      if (!v91)
      {
        goto LABEL_63;
      }

LABEL_62:
      CFRelease(v19);
      goto LABEL_63;
    }

    v11 = theArray;
    v19 = v91;
    v15 = v92;
    if (!CFArrayGetCount(theArray))
    {
      break;
    }

    CFArrayGetCount(theArray);
    v63 = sub_1000F8C4C();
    if (v3 != CFArrayGetCount(v63))
    {
      break;
    }

    if (!CFArrayGetCount(v91) || (Count = CFArrayGetCount(theArray), Count != CFArrayGetCount(v91)))
    {
      v81 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Mismatched reason and timestamp array counts ", "__WiFiDeviceManagerCopyDenyListedNetworksAndReasons"}];
      }

      goto LABEL_60;
    }

    v23 = v86;
    v22 = v87;
    v24 = v89;
    if (!CFArrayGetCount(v92) || (v3 = CFArrayGetCount(theArray), v3 != CFArrayGetCount(v92)))
    {
      v81 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Mismatched reason and reasonData array counts ", "__WiFiDeviceManagerCopyDenyListedNetworksAndReasons"}];
      }

LABEL_60:
      objc_autoreleasePoolPop(v81);
      v69 = 0;
      goto LABEL_61;
    }

LABEL_49:
    if (++v24 == v22)
    {
      v22 = [obj countByEnumeratingWithState:&v97 objects:v101 count:16];
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_51;
    }
  }

  v79 = objc_autoreleasePoolPush();
  v80 = v85;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Mismatched reason and network array counts ", "__WiFiDeviceManagerCopyDenyListedNetworksAndReasons"}];
  }

  objc_autoreleasePoolPop(v79);
  v69 = 0;
  if (v91)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  objc_autoreleasePoolPop(v80);
  return v69;
}

void sub_10018ED00(uint64_t a1)
{
  v2 = objc_opt_new();
  if (a1)
  {
    v3 = +[WiFiUsageAccessPointProfile beaconsAndWPSInfo];
    if ([v3 count])
    {
      [v2 appendFormat:@"ApProfile and WPS info for the latest %lu BSSID this device associaed with in the past 7 days:", objc_msgSend(v3, "count")];
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v40 = "WiFiDeviceManagerDumpToLog";
        v41 = [v3 count];
        sub_100026290();
      }

      objc_autoreleasePoolPop(v4);
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = sub_1000F8BB4(v5, v6, &v48, v52);
      if (v46)
      {
        v44 = *v49;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v49 != v44)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v48 + 1) + 8 * i);
            v9 = [v3 objectForKeyedSubscript:{v8, v40, v41}];
            v10 = objc_autoreleasePoolPush();
            v11 = off_100298C40;
            if (off_100298C40)
            {
              [v8 timeIntervalSince1970];
              [v11 WFLog:3 message:{"%s - %f: %@", "WiFiDeviceManagerDumpToLog", v12, +[WiFiUsagePrivacyFilter toHEXString:length:](WiFiUsagePrivacyFilter, "toHEXString:length:", objc_msgSend(objc_msgSend(v9, "beacon"), "bytes"), objc_msgSend(objc_msgSend(v9, "beacon"), "length"))}];
            }

            objc_autoreleasePoolPop(v10);
            [v2 appendFormat:@"\n%@ '%@' %@ (%@) - ", objc_msgSend(v9, "bssid"), objc_msgSend(v9, "ssid"), objc_msgSend(v9, "apProfile_shortID"), objc_msgSend(v9, "apProfileID")];
            v13 = [objc_msgSend(v9 "apProfileWPSInfo")];
            sub_1000F8C08();
            v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
            if (v15)
            {
              v17 = v15;
              v18 = MEMORY[0];
              do
              {
                v19 = 0;
                do
                {
                  if (MEMORY[0] != v18)
                  {
                    objc_enumerationMutation(v13);
                  }

                  [sub_100029EB8() appendFormat:*(8 * v19), objc_msgSend(objc_msgSend(v9, "apProfileWPSInfo"), "objectForKeyedSubscript:", *(8 * v19))];
                  v19 = v19 + 1;
                }

                while (v17 != v19);
                sub_1000F8C08();
                v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
                v17 = v15;
              }

              while (v15);
            }
          }

          v46 = sub_1000F8BB4(v15, v16, &v48, v52);
        }

        while (v46);
      }

      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s - %@", "WiFiDeviceManagerDumpToLog", v2}];
      }

LABEL_28:
      objc_autoreleasePoolPop(v20);
      goto LABEL_29;
    }

    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s -  HexDump of beacon from the latest AP we associated with (beacon captures shotly after association)", "WiFiDeviceManagerDumpToLog"}];
    }

    objc_autoreleasePoolPop(v20);
    if (*(a1 + 1264))
    {
      goto LABEL_26;
    }

    v23 = *(a1 + 1268);
    if (v23)
    {
      v24 = 0;
      v25 = (a1 + 1268);
      v45 = v23 + 4;
      v26 = v23 + 4 + a1 + 1268;
      v27 = 4;
      v28 = &qword_1002986A0;
      v42 = a1;
      v43 = (a1 + 1268);
      v47 = v26;
      do
      {
        v29 = v26;
        v30 = 0xA2E2E2E2E2E2ELL;
        if (v27 == 4)
        {
          v30 = 0xA2D2D2D2D2D2DLL;
        }

        v31 = v28;
        *v28 = v30;
        v32 = v28 + 7;
        v33 = v25 + v27;
        if (v25 + v27 < v29)
        {
          v34 = v45 - v27++;
          v32 = &qword_1002986A0 + 7;
          while (1)
          {
            v35 = v24;
            if ((v24 & 0xF) == 0)
            {
              v36 = snprintf(v32, &dword_100298AA0 - v32, "%04X ", v24);
              if (&v32[v36] <= &dword_100298AA0)
              {
                v32 += v36;
              }

              else
              {
                v32 = &dword_100298AA0;
              }
            }

            v37 = snprintf(v32, &dword_100298AA0 - v32, "%02X ", *v33);
            if (&v32[v37] <= &dword_100298AA0)
            {
              v32 += v37;
            }

            else
            {
              v32 = &dword_100298AA0;
            }

            LODWORD(v24) = v24 + 1;
            if ((v24 & 0xF) == 0 && v32 < &unk_100298A9F)
            {
              *v32++ = 10;
              if ((v31 - v32 + 1024) <= 0x82)
              {
                break;
              }
            }

            ++v33;
            ++v27;
            if (!--v34)
            {
              v24 = (v35 + 1);
              v27 = v45;
              goto LABEL_49;
            }
          }

          v24 = (v35 + 1);
LABEL_49:
          v25 = v43;
        }

        v20 = v25 + v27;
        v38 = v31 - v32;
        if (v25 + v27 >= v47)
        {
          snprintf(v32, v38 + 1024, "\n------");
        }

        else
        {
          snprintf(v32, v38 + 1024, "......");
        }

        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s OtaSystemInfo bytes printed:%d of %d\n%s", "__RawBeaconHexDumpToDLOG", v24, *v25, v31}];
        }

        objc_autoreleasePoolPop(v39);
        v26 = v47;
        v28 = v31;
      }

      while (v20 < v47);
      if (*(v42 + 1264))
      {
LABEL_26:
        v21 = objc_autoreleasePoolPush();
        v22 = sub_1000950EC();
        if (v22)
        {
          [v22 WFLog:4 message:{"%s - beacon content from latest AP not available", "WiFiDeviceManagerDumpToLog", v41}];
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:
}

void sub_10018F27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3 && sub_10006579C(*(a1 + 64)))
  {
    v4 = *(a1 + 64);

    sub_1001507F0();
  }
}

void sub_10018F2F8()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  v4 = v0[2];
  v5 = sub_1000657D0(v2);
  if (sub_1000657DC(v3))
  {
LABEL_7:
    sub_100010944();
    return;
  }

  if (v5)
  {
    v6 = *v1;
    sub_1000657C4(v3, v5 - 1);
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setDateFormat:@"yyyy/MM/dd hh:mm:ss:SSS"];
    +[NSTimeZone localTimeZone];
    [sub_10001D1D0() setTimeZone:?];
    if (sub_1000DBD94(v6))
    {
      v8 = sub_10001098C();
      v9 = sub_100150914(v8);
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s sensing enable event retVal[%d]\n"];
      }

      objc_autoreleasePoolPop(v10);

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: rejecting sensing due to on-going high priority event\n"];
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  sub_10001098C();
  sub_100010944();

  sub_1000F7A60(v12, v13, v14, v15, v16);
}

void sub_10018F478()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults dictionaryForKey:"dictionaryForKey:", @"WIFI_SENSING"];
  v4 = sub_100010938();
  v5 = sub_1000657D0(v4);
  if (sub_1000657DC(v3))
  {
LABEL_7:
    sub_100010944();
    return;
  }

  if (v5)
  {
    sub_1000657C4(v3, v5 - 1);
    v6 = objc_alloc_init(NSDateFormatter);
    [v6 setDateFormat:@"yyyy/MM/dd hh:mm:ss:SSS"];
    +[NSTimeZone localTimeZone];
    [sub_10001158C() setTimeZone:?];
    if (sub_1000DBD94(v1))
    {
      v7 = sub_10000FC38();
      v8 = sub_100150914(v7);
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s sensing enable event retVal[%d]\n"];
      }

      objc_autoreleasePoolPop(v9);

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: rejecting sensing due to on-going high priority event\n"];
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  sub_10000FC38();
  sub_100010944();

  sub_1000F7A60(v11, v12, v13, v14, v15);
}

void sub_10018F60C()
{
  sub_10001131C();
  if (_os_feature_enabled_impl() && sub_1000657A8(*(v0 + 64)))
  {
    v1 = *(v0 + 9104);
    if (v1)
    {
      dispatch_source_cancel(v1);
      dispatch_release(*(v0 + 9104));
      *(v0 + 9104) = 0;
    }

    v2 = *(v0 + 9112);
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*(v0 + 9112));
      *(v0 + 9112) = 0;
    }

    v3 = *(v0 + 64);

    sub_100150ACC();
  }
}

void sub_10018F6A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t valuePtr, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000951B4();
  a21 = v24;
  a22 = v25;
  sub_100008C40();
  a11 = 0;
  valuePtr = 0;
  a10 = 0;
  if (sub_1000657F4(*(v26 + 64)))
  {
    v27 = sub_100006F88(*(v22 + 64));
    v28 = sub_1000078F4(*(v22 + 64), v27);
    v29 = sub_10000A540(v28, @"CHANNEL_FLAGS");
    if (v29)
    {
      CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
    }

    Value = CFDictionaryGetValue(v23, @"6E_NETWORK_TRANSITION");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &a11 + 4);
      v31 = CFDictionaryGetValue(v23, @"LEGACY_NETWORK_TRANSITION");
      if (v31)
      {
        CFNumberGetValue(v31, kCFNumberIntType, &a11);
        v32 = CFDictionaryGetValue(v23, @"CHANNEL");
        if (v32)
        {
          CFNumberGetValue(v32, kCFNumberIntType, &a10 + 4);
        }

        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_100034900();
          [v34 WFLog:3 message:"[NWTRANSIT]: Initiate Colocated Network Transition. Transitioning to %s Colocated Network"];
        }

        objc_autoreleasePoolPop(v33);
        v35 = *(v22 + 3784);
        if (v35)
        {
          Count = CFArrayGetCount(v35);
        }

        else
        {
          Count = 0;
        }

        v37 = objc_autoreleasePoolPush();
        v38 = sub_1000950EC();
        if (v38)
        {
          [v38 WFLog:3 message:"[NWTRANSIT]: Num Colocated Networks %ld"];
        }

        objc_autoreleasePoolPop(v33);
        if (a11)
        {
          if ((valuePtr & 0x2000) != 0 && Count >= 1)
          {
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v22 + 3784), 0);
              if (ValueAtIndex)
              {
                v40 = ValueAtIndex;
                v41 = sub_10000A540(ValueAtIndex, @"CHANNEL_FLAGS");
                v42 = sub_10000A540(v40, @"CHANNEL");
                CFNumberGetValue(v42, kCFNumberIntType, &a10);
                CFNumberGetValue(v41, kCFNumberIntType, &valuePtr + 4);
                if (!HIDWORD(a10) && (valuePtr & 0x1000000000) != 0)
                {
                  v53 = objc_autoreleasePoolPush();
                  v49 = sub_10001E2C0();
                  if (!v49)
                  {
                    goto LABEL_52;
                  }

                  v50 = "[NWTRANSIT]: Associated to 6Gh. No Target channel. Top Colocated Network for Transition = %@";
LABEL_51:
                  [v49 WFLog:3 message:v50];
                  goto LABEL_52;
                }

                if (HIDWORD(a10) == a10)
                {
                  v48 = objc_autoreleasePoolPush();
                  v49 = sub_10001E2C0();
                  if (!v49)
                  {
                    goto LABEL_52;
                  }

                  v50 = "[NWTRANSIT]: Associated to 6Gh. Colocated network available in Peer Channel. Network = %@";
                  goto LABEL_51;
                }

                if (v41 && (valuePtr & 0x800000000) != 0)
                {
                  v51 = objc_autoreleasePoolPush();
                  v49 = sub_10001E2C0();
                  if (!v49)
                  {
                    goto LABEL_52;
                  }

                  v50 = "[NWTRANSIT]: Associated to 6Gh. Top Colocated Network for Transition = %@";
                  goto LABEL_51;
                }
              }

              sub_100021D9C();
            }

            while (!v43);
          }
        }

        else if ((valuePtr & 0x18) != 0 && Count >= 1)
        {
          do
          {
            v44 = CFArrayGetValueAtIndex(*(v22 + 3784), 0);
            if (v44)
            {
              v45 = sub_10000A540(v44, @"CHANNEL_FLAGS");
              if (v45)
              {
                CFNumberGetValue(v45, kCFNumberIntType, &valuePtr + 4);
                if ((valuePtr & 0x200000000000) != 0)
                {
                  v52 = objc_autoreleasePoolPush();
                  v49 = sub_10001E2C0();
                  if (v49)
                  {
                    v50 = "[NWTRANSIT]:Associated to 2.4Gh/5Gh. Top 6Gh Colocated Network for Transition = %@";
                    goto LABEL_51;
                  }

                  goto LABEL_52;
                }
              }
            }

            sub_100021D9C();
          }

          while (!v43);
          if ((valuePtr & 8) != 0)
          {
            while (1)
            {
              v46 = CFArrayGetValueAtIndex(*(v22 + 3784), 0);
              if (v46)
              {
                v47 = sub_10000A540(v46, @"CHANNEL_FLAGS");
                if (v47)
                {
                  CFNumberGetValue(v47, kCFNumberIntType, &valuePtr + 4);
                  if ((valuePtr & 0x1000000000) != 0)
                  {
                    break;
                  }
                }
              }

              sub_100021D9C();
              if (v43)
              {
                goto LABEL_53;
              }
            }

            v54 = objc_autoreleasePoolPush();
            v49 = sub_10001E2C0();
            if (v49)
            {
              v50 = "[NWTRANSIT]:Associated to 2.4Gh. Top 5Gh Colocated Network for Transition = %@";
              goto LABEL_51;
            }

LABEL_52:
            objc_autoreleasePoolPop(Count);
            v55 = sub_1000086AC();
            sub_1000DCA30(v55, v56);
          }
        }
      }
    }
  }

LABEL_53:
  sub_10001ED88();
}

void sub_10018FA04(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(a1 + 6720) networksInDenyListedState:3];
    if (v3)
    {
      *(a1 + 9185) = [v3 count] != 0;
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v5 = *(a1 + 9185);
        sub_100034900();
        [v6 WFLog:3 message:{"%s: WoW Denylist non-empty: %s", "WiFiDeviceManagerProcessWoWDenylistUpdate", v7}];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Failed to get WoW Denylisted networks", "WiFiDeviceManagerProcessWoWDenylistUpdate", v8}];
      }
    }

    objc_autoreleasePoolPop(v4);

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_10018FB20()
{
  sub_10001131C();
  *(v2 + 11) = 0;
  result = _os_feature_enabled_impl();
  if (result && *(v1 + 5270) && *(v1 + 5267))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Saving MIS State", "WiFiDeviceManagerSaveMISStateIfInRecovery"}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = *(v1 + 5256);
    *v0 = v5;
    CFRetain(v5);
    *(v0 + 8) = *(v1 + 5264);
    *(v0 + 9) = *(v1 + 5267);
    *(v0 + 10) = *(v1 + 5269);
    *(v0 + 12) = *(v1 + 5308);
    *(v0 + 16) = *(v1 + 5312);
    v6 = *(v1 + 5320);
    v7 = sub_10000836C();
    *(v0 + 24) = CFSetCreateMutableCopy(v7, v8, v9);
    v10 = *(v1 + 5328);
    v11 = sub_10000836C();
    result = CFSetCreateMutableCopy(v11, v12, v13);
    *(v0 + 32) = result;
    *(v0 + 40) = *(v1 + 7144);
    *(v0 + 44) = *(v1 + 5437);
    *(v0 + 48) = *(v1 + 5440);
    *(v0 + 11) = 1;
  }

  return result;
}

void sub_10018FC3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 11) && *(a2 + 9))
  {
    if (_os_feature_enabled_impl())
    {
      v4 = (a1 + 4096);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Recovering MIS from Dext restart", "__WiFiDeviceManagerRecoverMISFromDextCrash"}];
      }

      objc_autoreleasePoolPop(v5);
      *(a1 + 5256) = *a2;
      *(a1 + 5267) = *(a2 + 9);
      *(a1 + 5269) = *(a2 + 10);
      *(a1 + 5312) = *(a2 + 16);
      v6 = *(a1 + 5320);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 5320) = 0;
      }

      v7 = *(a1 + 5328);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 5328) = 0;
      }

      v8 = *(a2 + 24);
      v9 = sub_10000836C();
      *(a1 + 5320) = CFSetCreateMutableCopy(v9, v10, v11);
      v12 = *(a2 + 32);
      v13 = sub_10000836C();
      *(a1 + 5328) = CFSetCreateMutableCopy(v13, v14, v15);
      v16 = *(a2 + 24);
      if (v16)
      {
        CFRelease(v16);
        *(a2 + 24) = 0;
      }

      v17 = *(a2 + 32);
      if (v17)
      {
        CFRelease(v17);
        *(a2 + 32) = 0;
      }

      *(a1 + 7144) = *(a2 + 40);
      CFSetAddValue(*(a1 + 3376), *(a1 + 5256));
      v18 = *(a2 + 44);
      *(a1 + 5437) = v18;
      *(a1 + 5434) = v18;
      if (v18)
      {
        [*(a1 + 6832) stopPublisherForPHSOverNAN];
        [*(a1 + 6832) createWAPConfig:*(a2 + 48)];
        *(a2 + 12) = 0;
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      sub_1000C47C0(a1, v19);
      v20 = *(a1 + 5271);
      if (v4[1175])
      {
        v4[1168] = *(a2 + 8);
        v4[1212] = *(a2 + 12);
        v4[1343] = 1;
      }

      if (*a2)
      {
        CFRelease(*a2);
        *a2 = 0;
      }
    }
  }

  else
  {

    sub_10018FE18();
  }
}

void sub_10018FE18()
{
  sub_10000D798();
  v1 = v0;
  if (_os_feature_enabled_impl())
  {
    v2 = +[WiFiSoftApStateMonitor sharedInstance];
    if (v2)
    {
      v3 = v2;
      if ([(WiFiSoftApStateMonitor *)v2 isMisEnabled])
      {
        if (![(WiFiSoftApStateMonitor *)v3 isMisRecoveryAllowed])
        {
          [(WiFiSoftApStateMonitor *)v3 resetState];
          goto LABEL_16;
        }

        if (*(v1 + 5270) || *(v1 + 5439))
        {
          v9 = objc_autoreleasePoolPush();
          v10 = off_100298C40;
          if (off_100298C40)
          {
            v11 = "%s: MIS recovery is already in progress?";
LABEL_22:
            [v10 WFLog:3 message:v11];
          }
        }

        else
        {
          if (sub_10018A684(v1))
          {
            v4 = *(v1 + 5267);
            v5 = objc_autoreleasePoolPush();
            if (!v4)
            {
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"%s: Recovering MIS from WiFid restart"];
              }

              objc_autoreleasePoolPop(v5);
              *(v1 + 5271) = 1;
              *(v1 + 5439) = 1;
              *(v1 + 5308) = [(WiFiSoftApStateMonitor *)v3 isMisHidden];
              *(v1 + 5264) = [(WiFiSoftApStateMonitor *)v3 misChannel];
              *(v1 + 5312) = [(WiFiSoftApStateMonitor *)v3 misBandWidth];
              *(v1 + 7144) = [(WiFiSoftApStateMonitor *)v3 userPreferredBand];
              v6 = [(WiFiSoftApStateMonitor *)v3 misNanPublisherActive];
              *(v1 + 5434) = v6;
              if (v6)
              {
                [*(v1 + 6832) stopPublisherForPHSOverNAN];
                v7 = *(v1 + 6832);
                [(WiFiSoftApStateMonitor *)v3 misNanServiceName];
                [sub_10000757C() createWAPConfig:?];
                *(v1 + 5308) = 0;
              }

              else if (*(v1 + 5308))
              {
LABEL_15:
                v8 = sub_100006F88(*(v1 + 64));
                sub_1000C5E00(v1, v8, 0, sub_1000F0580, v1);
                [(WiFiSoftApStateMonitor *)v3 recoveryStart];
                goto LABEL_16;
              }

              *(v1 + 5272) = 1;
              goto LABEL_15;
            }

            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:"%s: MIS is already enabled?"];
            }

            v12 = v5;
LABEL_27:
            objc_autoreleasePoolPop(v12);
            goto LABEL_16;
          }

          v9 = objc_autoreleasePoolPush();
          v10 = off_100298C40;
          if (off_100298C40)
          {
            v11 = "%s: MIS global state is disabled";
            goto LABEL_22;
          }
        }

        v12 = v9;
        goto LABEL_27;
      }
    }
  }

LABEL_16:
  sub_1000084B8();
}

uint64_t sub_10019004C(uint64_t a1)
{
  if (!*(a1 + 384))
  {
    return 0;
  }

  if (!*(a1 + 400) || *(a1 + 392) == 0.0)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 384));
  CFArrayRemoveAllValues(*(a1 + 384));
  if (MutableCopy)
  {
    if (CFArrayGetCount(MutableCopy) >= 1)
    {
      v4 = 0;
      do
      {
        valuePtr = 0.0;
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v4);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
          if (valuePtr < Current && Current - valuePtr < *(a1 + 392))
          {
            CFArrayAppendValue(*(a1 + 384), v6);
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(MutableCopy));
    }

    CFRelease(MutableCopy);
  }

  if (CFArrayGetCount(*(a1 + 384)) < *(a1 + 400))
  {
    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFArrayGetCount(*(a1 + 384));
    v9 = *(a1 + 392);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v8);
  return 1;
}