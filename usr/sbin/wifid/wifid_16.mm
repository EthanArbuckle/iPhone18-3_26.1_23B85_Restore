uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0C90();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10012F754;
    block[3] = &unk_100264F70;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    sub_100136B00();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void sub_10012F754(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
    sub_100136B00();
LABEL_3:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  *(*(a1 + 48) + 288) = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    sub_100136B00();
    sub_10012F458(*(a1 + 48));
    CFRelease(*(a1 + 48));
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F4uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10012F988;
  v6[3] = &unk_100264F48;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    sub_10012F458(*(a1 + 48));
    CFRelease(*(a1 + 48));
  }
}

uint64_t sub_10012F8BC(_BYTE *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!qword_100298B80 || (Count = CFArrayGetCount(qword_100298B80)) == 0 || (v3 = Count, Count < 1))
  {
LABEL_9:
    sub_100136B00();
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(qword_100298B80, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

void sub_10012F988(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  sub_100136B44();
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(a2, off_1002982B8);
  }

  sub_10012F458(*(a1 + 40));
  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  if (!a1 || (a3 - 205) <= 0xFFFFFFFA || (a4 - 304) <= 0xFFFFFFFB || __s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1) || (v10 = xpc_dictionary_create(0, 0, 0)) == 0)
  {
    sub_100136B00();
    goto LABEL_22;
  }

  v11 = v10;
  if (!a5)
  {
    goto LABEL_18;
  }

  if (xpc_get_type(a5) != &_xpc_type_dictionary)
  {
    goto LABEL_18;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType);
  if (!value)
  {
    goto LABEL_18;
  }

  v13 = value;
  if (xpc_get_type(value) != &_xpc_type_uint64)
  {
    goto LABEL_18;
  }

  v14 = xpc_uint64_get_value(v13);
  if (v14 >= 7)
  {
    goto LABEL_18;
  }

  v18 = v14;
  xpc_dictionary_set_uint64(v11, off_100298330, v14);
  if (v18 != 1)
  {
    v21 = xpc_dictionary_get_value(a5, netrbClientInterfaceName);
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = v21;
    if (xpc_get_type(v21) != &_xpc_type_string)
    {
      goto LABEL_18;
    }

    string_ptr = xpc_string_get_string_ptr(v22);
    if (!if_nametoindex(string_ptr))
    {
      goto LABEL_18;
    }

    v28 = off_100298328;
    v29 = xpc_string_get_string_ptr(v22);
    xpc_dictionary_set_string(v11, v28, v29);
  }

  v19 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU);
  if (v19)
  {
    v20 = v19;
    if (xpc_get_type(v19) != &_xpc_type_uint64)
    {
      goto LABEL_18;
    }

    v23 = off_100298340;
    v24 = xpc_uint64_get_value(v20);
    xpc_dictionary_set_uint64(v11, v23, v24);
  }

  v25 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance);
  if (v25)
  {
    v26 = v25;
    if (xpc_get_type(v25) != &_xpc_type_uint64)
    {
      goto LABEL_18;
    }

    v30 = off_100298348;
    v31 = xpc_uint64_get_value(v26);
    xpc_dictionary_set_uint64(v11, v30, v31);
  }

  v32 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v32)
  {
    v33 = v32;
    if (xpc_get_type(v32) != &_xpc_type_string)
    {
      goto LABEL_18;
    }

    v34 = off_100298350;
    v35 = xpc_string_get_string_ptr(v33);
    xpc_dictionary_set_string(v11, v34, v35);
  }

  v36 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v36)
  {
    v37 = v36;
    if (xpc_get_type(v36) != &_xpc_type_string)
    {
      goto LABEL_18;
    }

    v38 = off_100298358;
    v39 = xpc_string_get_string_ptr(v37);
    xpc_dictionary_set_string(v11, v38, v39);
  }

  v40 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (!v40)
  {
    goto LABEL_46;
  }

  v41 = v40;
  if (xpc_get_type(v40) != &_xpc_type_string)
  {
LABEL_18:
    sub_100136B00();
LABEL_19:
    v15 = v11;
LABEL_20:
    xpc_release(v15);
    goto LABEL_22;
  }

  v42 = off_100298360;
  v43 = xpc_string_get_string_ptr(v41);
  xpc_dictionary_set_string(v11, v42, v43);
LABEL_46:
  v44 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v44)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v11, off_100298378, 0x1F5uLL);
LABEL_56:
      v48 = 0;
      goto LABEL_57;
    }

    xpc_dictionary_set_uint64(v11, off_100298378, 0x1F4uLL);
LABEL_51:
    if (!sub_1001300A4(a5, v11))
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  v45 = v44;
  if (xpc_get_type(v44) != &_xpc_type_uint64)
  {
    goto LABEL_18;
  }

  v46 = xpc_uint64_get_value(v45);
  v47 = v46;
  if (v46 - 503 <= 0xFFFFFFFC)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(v11, off_100298378, v46);
  if (v47 == 500)
  {
    goto LABEL_51;
  }

  if (v47 != 502)
  {
    goto LABEL_56;
  }

  v49 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v49)
  {
    goto LABEL_56;
  }

  v50 = v49;
  if (xpc_get_type(v49) != &_xpc_type_dictionary)
  {
    goto LABEL_18;
  }

  v51 = xpc_dictionary_create(0, 0, 0);
  if (!v51)
  {
    goto LABEL_18;
  }

  v48 = v51;
  v52 = xpc_dictionary_get_value(v50, netrbClientDns64Prefix);
  if (v52)
  {
    v53 = v52;
    if (xpc_get_type(v52) != &_xpc_type_string)
    {
      goto LABEL_76;
    }

    v54 = off_100298390;
    v55 = xpc_string_get_string_ptr(v53);
    xpc_dictionary_set_string(v48, v54, v55);
  }

  v56 = xpc_dictionary_get_value(v50, netrbClientRaPrefix);
  if (v56)
  {
    v57 = v56;
    if (xpc_get_type(v56) != &_xpc_type_string)
    {
LABEL_76:
      sub_100136B00();
      xpc_release(v11);
LABEL_63:
      v15 = v48;
      goto LABEL_20;
    }

    v58 = off_100298398;
    v59 = xpc_string_get_string_ptr(v57);
    xpc_dictionary_set_string(v48, v58, v59);
  }

  xpc_dictionary_set_value(v11, off_100298380, v48);
LABEL_57:
  if (qword_100298BA0 != -1)
  {
    sub_1001B0CB8();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100130170;
    block[3] = &unk_100264FB8;
    block[4] = &v63;
    block[5] = a1;
    v61 = a3;
    v62 = a4;
    block[6] = v11;
    block[7] = __s1;
    block[8] = qword_100298BA8;
    dispatch_sync(qword_100298BA8, block);
  }

  else
  {
    sub_100136B00();
  }

  xpc_release(v11);
  if (v48)
  {
    goto LABEL_63;
  }

LABEL_22:
  v16 = *(v64 + 24);
  _Block_object_dispose(&v63, 8);
  return v16;
}

uint64_t sub_1001300A4(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (xpc_get_type(value) != &_xpc_type_dictionary || (string = xpc_dictionary_get_string(v4, netrbClientRaPrefix)) == 0)
    {
      sub_100136B00();
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, off_100298398, v7);
    xpc_dictionary_set_value(a2, off_100298388, v8);
  }

  return 1;
}

double sub_100130170(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 40)))
  {
    v10 = *(a1 + 40);
LABEL_4:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return result;
  }

  if (*(*(a1 + 40) + 289))
  {
    goto LABEL_4;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, off_100298248, 0x3E9uLL);
  xpc_dictionary_set_string(v4, off_100298250, (*(a1 + 40) + 32));
  xpc_dictionary_set_uint64(v4, off_1002982C0, *(a1 + 72));
  xpc_dictionary_set_uint64(v4, off_1002982C8, *(a1 + 76));
  xpc_dictionary_set_value(v4, off_100298320, *(a1 + 48));
  v5 = *(a1 + 56);
  if (v5 && *v5)
  {
    if (!strncmp(*(a1 + 56), netrbClientAnyExternal, 0x10uLL))
    {
      v7 = off_100298370;
      v6 = v4;
    }

    else
    {
      v6 = v4;
      v7 = v5;
    }

    xpc_dictionary_set_string(v6, off_1002982E0, v7);
  }

  v11 = *(a1 + 40);
  sub_100136B44();
  snprintf((*(a1 + 40) + 289), 0x100uLL, "%s-%p-%u", "com.apple.netrb", *(a1 + 40), dword_100298B78);
  ++dword_100298B78;
  v8 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1001303D8;
  v12[3] = &unk_100264F90;
  v12[4] = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(v8, v4, v12);
  xpc_release(v4);
  v9 = *(a1 + 40);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFRetain(v9);
  }

  else
  {
    result = 0.0;
    *(v9 + 513) = 0u;
    *(v9 + 529) = 0u;
    *(v9 + 481) = 0u;
    *(v9 + 497) = 0u;
    *(v9 + 449) = 0u;
    *(v9 + 465) = 0u;
    *(v9 + 417) = 0u;
    *(v9 + 433) = 0u;
    *(v9 + 385) = 0u;
    *(v9 + 401) = 0u;
    *(v9 + 353) = 0u;
    *(v9 + 369) = 0u;
    *(v9 + 321) = 0u;
    *(v9 + 337) = 0u;
    *(v9 + 289) = 0u;
    *(v9 + 305) = 0u;
  }

  return result;
}

void sub_1001303EC(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v17 = (&off_100265A60)[a2 - 1001];
  sub_100136B44();
  if (sub_10012F8BC(a1) || !*(a1 + 16) || !*(a1 + 24))
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_uint64(a3, off_1002982B8) != 2003)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v8 = v9;
      if (xpc_dictionary_get_uint64(a3, off_1002982B8) != 2002)
      {
        uint64 = xpc_dictionary_get_uint64(a3, off_1002982B8);
        if (uint64 == 2001)
        {
          v15 = 5002;
        }

        else
        {
          v15 = 5003;
        }

        xpc_dictionary_set_uint64(v8, netrbClientNotificationKey, v15);
        if (a2 != 1014 || uint64 != 2000)
        {
          if (a2 == 1014 && uint64 == 2001)
          {
            sub_10013603C(v8, a3);
          }

          goto LABEL_16;
        }

        v16 = xpc_dictionary_get_uint64(a3, off_1002982A8);
        if (!v16)
        {
LABEL_16:
          v13 = *(a1 + 16);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_100136224;
          block[3] = &unk_100265748;
          v19 = a2;
          block[4] = a1;
          block[5] = a4;
          block[6] = v8;
          dispatch_async(v13, block);
          return;
        }

        v12 = v16;
        v10 = netrbClientErrorCode;
        v11 = v8;
LABEL_15:
        xpc_dictionary_set_uint64(v11, v10, v12);
        goto LABEL_16;
      }

LABEL_14:
      v10 = netrbClientNotificationKey;
      v11 = v8;
      v12 = 5003;
      goto LABEL_15;
    }

LABEL_17:
    sub_100136B00();
    goto LABEL_7;
  }

LABEL_6:
  sub_100136B88();
LABEL_7:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0CE0();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100130724;
    block[3] = &unk_100265000;
    block[4] = &v5;
    block[5] = a1;
    block[6] = qword_100298BA8;
    dispatch_sync(qword_100298BA8, block);
  }

  else
  {
LABEL_6:
    sub_100136B00();
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100130724(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 40)))
  {
    v6 = *(a1 + 40);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (!*(*(a1 + 40) + 289))
  {
    goto LABEL_3;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3EAuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 40) + 32));
  v7 = *(a1 + 40);
  sub_100136B44();
  v4 = (*(a1 + 40) + 289);
  v4[14] = 0u;
  v4[15] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1001308AC;
  v8[3] = &unk_100264FD8;
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(v5, v3, v8);
  xpc_release(v3);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFRetain(*(a1 + 40));
  }
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0D08();
  }

  if (qword_100298BA8)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1001309E4;
    v6[3] = &unk_100265028;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(qword_100298BA8, v6);
    if (*(v8 + 24) == 1)
    {
      strcpy(a2, "com.apple.MobileInternetSharing");
    }
  }

  else
  {
LABEL_8:
    sub_100136B00();
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sub_1001309E4(uint64_t a1)
{
  result = sub_10012F8BC(*(a1 + 40));
  if (result)
  {
    v3 = *(a1 + 40);
    return sub_100136B00();
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (qword_100298BA0 != -1)
  {
    v7 = a1;
    sub_1001B0D30();
    a1 = v7;
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100130C08;
    block[3] = &unk_100265078;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    sub_100136B00();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

void sub_100130C08(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 64)))
  {
    v5 = *(a1 + 64);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3EBuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 64) + 32));
  v6 = *(a1 + 64);
  sub_100136B44();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100130D3C;
  v7[3] = &unk_100265050;
  v4 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v4;
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v7);
  xpc_release(v3);
}

uint64_t sub_100130D3C(void *a1, void *a2)
{
  v5 = a1[7];
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(a1[4] + 8) + 24) = result;
    if (*(*(a1[4] + 8) + 24) == 2001)
    {
      *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(a2, off_1002982D8);
      result = xpc_dictionary_get_uint64(a2, off_1002982E8);
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (!a1 || (a2 - 1024) <= 0xFFFFFFFB)
  {
    goto LABEL_10;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0D58();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100130F54;
    block[3] = &unk_1002650C8;
    v7 = a2;
    block[4] = &v12;
    block[5] = &v8;
    block[6] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v13 + 24) == 1)
    {
      *(v13 + 24) = v9[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    sub_100136B00();
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

void sub_100130F54(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3ECuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v3, off_1002982D8, *(a1 + 56));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10013109C;
  v6[3] = &unk_1002650A0;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_10013109C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0D80();
  }

  if (qword_100298BA8)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100131250;
    v6[3] = &unk_100265118;
    v6[4] = &v11;
    v6[5] = &v7;
    v6[6] = a1;
    v6[7] = a2;
    dispatch_sync(qword_100298BA8, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_8:
    sub_100136B00();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_100131250(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F5uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100131388;
  v6[3] = &unk_1002650F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_100131388(void *a1, void *a2)
{
  v7 = a1[5];
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(a1[4] + 8) + 24) = result;
    if (*(*(a1[4] + 8) + 24) == 2001)
    {
      v5 = a1[6];
      string = xpc_dictionary_get_string(a2, off_1002982E0);
      return snprintf(v5, 0x10uLL, "%s", string);
    }
  }

  return result;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    sub_100136B00();
    goto LABEL_12;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0DA8();
  }

  if (!qword_100298BA8)
  {
    sub_100136B00();
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10013160C;
  block[3] = &unk_100265168;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(qword_100298BA8, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort, *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort, *(v14 + 12));
  }

  else
  {
    sub_100136B00();
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

void sub_10013160C(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 64)))
  {
    v5 = *(a1 + 64);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3EDuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 64) + 32));
  v6 = *(a1 + 64);
  sub_100136B44();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100131740;
  v7[3] = &unk_100265140;
  v4 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v4;
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v7);
  xpc_release(v3);
}

uint64_t sub_100131740(void *a1, void *a2)
{
  v5 = a1[7];
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(a1[4] + 8) + 24) = result;
    if (*(*(a1[4] + 8) + 24) == 2001)
    {
      *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(a2, off_1002982F0);
      result = xpc_dictionary_get_uint64(a2, off_1002982F8);
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, xpc_object_t object)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !object || xpc_get_type(object) != &_xpc_type_dictionary)
  {
    goto LABEL_4;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0DD0();
  }

  if (qword_100298BA8)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100131960;
    v6[3] = &unk_1002651B8;
    v6[6] = a1;
    v6[7] = object;
    v6[4] = &v11;
    v6[5] = &v7;
    dispatch_sync(qword_100298BA8, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_4:
    sub_100136B00();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_100131960(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v8 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3EEuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  v4 = off_1002982F0;
  uint64 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedLowPort);
  xpc_dictionary_set_uint64(v3, v4, uint64);
  v6 = off_1002982F8;
  v7 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedHighPort);
  xpc_dictionary_set_uint64(v3, v6, v7);
  v9 = *(a1 + 48);
  sub_100136B44();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_100131AF0;
  v10[3] = &unk_100265190;
  v11 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v10);
  xpc_release(v3);
}

uint64_t sub_100131AF0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0DF8();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100131C90;
    block[3] = &unk_100265208;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    sub_100136B00();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void sub_100131C90(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3EFuLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100131DC0;
  v6[3] = &unk_1002651E0;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_100131DC0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    sub_100136B00();
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, xpc_object_t object)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 2000;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary && (v6 = xpc_dictionary_get_value(object, netrbClientHostIftype)) != 0 && (v7 = v6, xpc_get_type(v6) == &_xpc_type_uint64) && (v8 = xpc_uint64_get_value(v7), (v9 = xpc_dictionary_get_value(object, netrbClientHostDeviceId)) != 0) && (v10 = v9, xpc_get_type(v9) == &_xpc_type_uint64))
  {
    value = xpc_uint64_get_value(v10);
    if (!a1 || (v8 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v12 = value;
    if (qword_100298BA0 != -1)
    {
      sub_1001B0E20();
    }

    if (qword_100298BA8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_1001320D8;
      block[3] = &unk_100265258;
      v14 = v8;
      block[6] = a1;
      block[7] = v12;
      block[4] = &v19;
      block[5] = &v15;
      dispatch_sync(qword_100298BA8, block);
      if (*(v20 + 24) == 1)
      {
        *(v20 + 24) = v16[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      sub_100136B00();
    }
  }

  else
  {
    sub_100136B00();
    *(v20 + 24) = 0;
  }

  v4 = *(v20 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v4;
}

void sub_1001320D8(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F0uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v3, off_100298300, *(a1 + 64));
  xpc_dictionary_set_uint64(v3, off_100298338, *(a1 + 56));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100132238;
  v6[3] = &unk_100265230;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_100132238(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, xpc_object_t object)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 2000;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary && (v6 = xpc_dictionary_get_value(object, netrbClientHostIftype)) != 0 && (v7 = v6, xpc_get_type(v6) == &_xpc_type_uint64) && (v8 = xpc_uint64_get_value(v7), (v9 = xpc_dictionary_get_value(object, netrbClientHostDeviceId)) != 0) && (v10 = v9, xpc_get_type(v9) == &_xpc_type_uint64))
  {
    value = xpc_uint64_get_value(v10);
    if (!a1 || (v8 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v12 = value;
    if (qword_100298BA0 != -1)
    {
      sub_1001B0E48();
    }

    if (qword_100298BA8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_1001324B8;
      block[3] = &unk_1002652A8;
      v14 = v8;
      block[6] = a1;
      block[7] = v12;
      block[4] = &v19;
      block[5] = &v15;
      dispatch_sync(qword_100298BA8, block);
      if (*(v20 + 24) == 1)
      {
        *(v20 + 24) = v16[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      sub_100136B00();
    }
  }

  else
  {
    sub_100136B00();
    *(v20 + 24) = 0;
  }

  v4 = *(v20 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v4;
}

void sub_1001324B8(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F1uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v3, off_100298300, *(a1 + 64));
  xpc_dictionary_set_uint64(v3, off_100298330, *(a1 + 56));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100132618;
  v6[3] = &unk_100265280;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_100132618(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    sub_100136B00();
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (qword_100298BA0 != -1)
  {
    v7 = a1;
    sub_1001B0E70();
    a1 = v7;
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1001328DC;
    block[3] = &unk_1002652F8;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    sub_100136B00();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

void sub_1001328DC(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 64)))
  {
    v5 = *(a1 + 64);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F2uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 64) + 32));
  v6 = *(a1 + 64);
  sub_100136B44();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100132A10;
  v7[3] = &unk_1002652D0;
  v4 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v4;
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v7);
  xpc_release(v3);
}

uint64_t sub_100132A10(void *a1, void *a2)
{
  v5 = a1[7];
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(a1[4] + 8) + 24) = result;
    if (*(*(a1[4] + 8) + 24) == 2001)
    {
      *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(a2, off_100298308);
      result = xpc_dictionary_get_uint64(a2, off_100298310);
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (!a1 || (a2 - 7) <= 0xFFFFFFFA)
  {
    goto LABEL_10;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0E98();
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100132C34;
    block[3] = &unk_100265348;
    v9 = a2;
    v10 = a3;
    block[4] = &v15;
    block[5] = &v11;
    block[6] = a1;
    dispatch_sync(qword_100298BA8, block);
    if (*(v16 + 24) == 1)
    {
      *(v16 + 24) = v12[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    sub_100136B00();
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

void sub_100132C34(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, off_100298248, 0x3F3uLL);
  xpc_dictionary_set_string(v3, off_100298250, (*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v3, off_100298300, *(a1 + 56));
  xpc_dictionary_set_uint64(v3, off_100298318, *(a1 + 60));
  v5 = *(a1 + 48);
  sub_100136B44();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100132D94;
  v6[3] = &unk_100265320;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v3, v6);
  xpc_release(v3);
}

uint64_t sub_100132D94(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = sub_100136B44();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, off_1002982B8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  if (!a1)
  {
    goto LABEL_40;
  }

  v41[3] = xpc_dictionary_create(0, 0, 0);
  if (a4)
  {
    string = xpc_dictionary_get_string(a4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((a2 - 201) >= 3)
  {
    if (a2 != 204 || !string || !*string)
    {
      goto LABEL_40;
    }

    if (a4)
    {
      uint64 = 0;
      goto LABEL_16;
    }

LABEL_22:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_36;
  }

  if (string)
  {
    goto LABEL_40;
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(a4, netrbClientInterfaceMTU);
LABEL_16:
  v9 = v41[3];
  v10 = xpc_dictionary_get_string(a4, netrbClientInterfaceStartAddress);
  v11 = xpc_dictionary_get_string(a4, netrbClientInterfaceEndAddress);
  v12 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
  if (v10 && v11 && (v13 = v12) != 0)
  {
    xpc_dictionary_set_string(v9, off_100298350, v10);
    xpc_dictionary_set_string(v9, off_100298358, v11);
    xpc_dictionary_set_string(v9, off_100298360, v13);
  }

  else if (v10 | v11)
  {
    goto LABEL_40;
  }

  if (!sub_1001300A4(a4, v41[3]))
  {
    goto LABEL_41;
  }

  v20 = v41[3];
  uuid = xpc_dictionary_get_uuid(a4, netrbClientNetworkIdentifier);
  if (uuid)
  {
    xpc_dictionary_set_uuid(v20, off_1002983A8, uuid);
    v22 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv4Address);
    v23 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
    v24 = v23;
    if (v22 && v23)
    {
      xpc_dictionary_set_string(v20, off_1002983B0, v22);
      xpc_dictionary_set_string(v20, off_100298360, v24);
    }

    else if (v22 | v23)
    {
      goto LABEL_40;
    }

    v25 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv6Address);
    if (v25)
    {
      xpc_dictionary_set_string(v20, off_1002983B8, v25);
    }
  }

  if (xpc_dictionary_get_value(a4, netrbClientAllocateMACAddress))
  {
    v19 = xpc_dictionary_get_BOOL(a4, netrbClientAllocateMACAddress);
  }

  else
  {
    v19 = 1;
  }

  v17 = xpc_dictionary_get_BOOL(a4, netrbClientEnableTSO);
  v16 = xpc_dictionary_get_BOOL(a4, netrbClientEnableIsolation);
  v15 = xpc_dictionary_get_BOOL(a4, netrbClientEnableChecksumOffload);
  v18 = xpc_dictionary_get_BOOL(a4, netrbClientEnableMACNAT);
  LOBYTE(a4) = xpc_dictionary_get_BOOL(a4, netrbClientEnableVirtIOHeader);
  v14 = uint64;
LABEL_36:
  if (qword_100298BA0 != -1)
  {
    v30 = v14;
    sub_1001B0EC0();
    v14 = v30;
  }

  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10013328C;
    block[3] = &unk_100265390;
    block[6] = a1;
    block[7] = string;
    v34 = v19;
    v35 = v17;
    v36 = a4;
    v37 = v18;
    v38 = v16;
    v39 = v15;
    v32 = a2;
    v33 = v14;
    block[4] = &v40;
    block[5] = &v44;
    block[8] = a3;
    block[9] = qword_100298BA8;
    dispatch_sync(qword_100298BA8, block);
    goto LABEL_41;
  }

LABEL_40:
  sub_100136B00();
LABEL_41:
  v26 = v41[3];
  if (v26)
  {
    xpc_release(v26);
  }

  v27 = *(v45 + 24);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v27;
}

_BYTE *sub_10013328C(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v9 = *(a1 + 48);
    return sub_100136B00();
  }

  else if (*(*(a1 + 48) + 545) == 1)
  {

    return sub_100136B00();
  }

  else
  {
    sub_100136B88();
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), off_100298248, 0x3F6uLL);
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), off_1002982C0, *(a1 + 80));
    v3 = *(a1 + 56);
    if (v3)
    {
      xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), off_1002982E0, v3);
    }

    xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), off_100298250, (*(a1 + 48) + 32));
    if (*(a1 + 88) == 1)
    {
      if (!uuid_is_null(*(a1 + 64)))
      {
        xpc_dictionary_set_uuid(*(*(*(a1 + 32) + 8) + 24), off_100298258, *(a1 + 64));
      }
    }

    else
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298270, 0);
    }

    if (*(a1 + 89) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298278, 1);
    }

    if (*(a1 + 90) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298280, 1);
    }

    if (*(a1 + 91) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298288, 1);
    }

    if (*(a1 + 92) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298290, 1);
    }

    if (*(a1 + 93) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), off_100298298, 1);
    }

    v4 = *(a1 + 84);
    if (v4)
    {
      xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), off_100298340, v4);
    }

    *(a1 + 89);
    *(a1 + 92);
    *(a1 + 93);
    *(a1 + 91);
    v10 = *(a1 + 48);
    sub_100136B44();
    v5 = *(a1 + 48);
    *(v5 + 545) = 1;
    v6 = *(a1 + 72);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10013360C;
    v11[3] = &unk_100265368;
    v11[4] = v5;
    v8 = sub_1001370C0(v6, v7, v11);
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      return CFRetain(result);
    }

    else
    {
      result[545] = 0;
    }
  }

  return result;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v10 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0EE8();
  }

  v14 = qword_100298BA8;
  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100133798;
    block[3] = &unk_100265408;
    v20 = a2;
    v18 = a3;
    v21 = v10;
    block[6] = cf;
    block[7] = a5;
    v19 = a6;
    block[4] = a7;
    block[5] = &v22;
    block[8] = qword_100298BA8;
    CFRetain(cf);
    dispatch_sync(v14, block);
    if ((v23[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    sub_100136B00();
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void sub_100133798(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v5 = *(a1 + 48);
    sub_100136B00();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, off_100298250, (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, off_100298248, 0x3F7uLL);
    v3 = sub_1001338F0(*(a1 + 76), *(a1 + 72), *(a1 + 77), *(a1 + 56), *(a1 + 74));
    xpc_dictionary_set_value(v2, off_1002983C0, v3);
    xpc_release(v3);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100133A48;
    v6[3] = &unk_1002653E0;
    v4 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v6[5] = v4;
    sub_100136B44();
    *(*(*(a1 + 40) + 8) + 24) = sub_1001370C0(*(a1 + 64), v2, v6);
    xpc_release(v2);
  }
}

void *sub_1001338F0(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  if (a3 != 30 && a3 != 2 || !a4 && a5 || a4 && !a5 || a4 && !inet_ntop(a3, a4, string, 0x2Eu))
  {
    return 0;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v10 = v12;
  if (a1)
  {
    xpc_dictionary_set_uint64(v12, off_1002983D0, a1);
  }

  if (a2)
  {
    xpc_dictionary_set_uint64(v10, off_1002983D8, a2);
  }

  xpc_dictionary_set_uint64(v10, off_1002983E8, a3);
  if (a5)
  {
    xpc_dictionary_set_uint64(v10, off_1002983F0, a5);
  }

  if (a4)
  {
    xpc_dictionary_set_string(v10, off_1002983E0, string);
  }

  return v10;
}

void sub_100133A48(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      LOBYTE(a2) = xpc_dictionary_get_uint64(a2, off_1002982B8) == 2001;
      v4 = *(a1 + 32);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100133B10;
    v6[3] = &unk_1002653B8;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(global_queue, v6);
  }
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v6 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0F10();
  }

  v10 = qword_100298BA8;
  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100133C88;
    block[3] = &unk_100265480;
    v15 = a2;
    v14 = a3;
    v16 = v6;
    block[4] = a5;
    block[5] = &v17;
    block[6] = cf;
    block[7] = qword_100298BA8;
    CFRetain(cf);
    dispatch_sync(v10, block);
    if ((v18[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    sub_100136B00();
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

void sub_100133C88(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v10 = *(a1 + 48);
    sub_100136B00();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, off_100298250, (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, off_100298248, 0x3F8uLL);
    v3 = *(a1 + 67);
    if (v3 == 30 || v3 == 2)
    {
      v5 = *(a1 + 66);
      v6 = *(a1 + 64);
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v5)
      {
        xpc_dictionary_set_uint64(v7, off_1002983D0, v5);
      }

      if (v6)
      {
        xpc_dictionary_set_uint64(v8, off_1002983D8, v6);
      }

      xpc_dictionary_set_uint64(v8, off_1002983E8, v3);
    }

    else
    {
      v8 = 0;
    }

    xpc_dictionary_set_value(v2, off_1002983C0, v8);
    xpc_release(v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100133E50;
    v11[3] = &unk_100265458;
    v9 = *(a1 + 48);
    v11[4] = *(a1 + 32);
    v11[5] = v9;
    sub_100136B44();
    *(*(*(a1 + 40) + 8) + 24) = sub_1001370C0(*(a1 + 56), v2, v11);
    xpc_release(v2);
  }
}

void sub_100133E50(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      LOBYTE(a2) = xpc_dictionary_get_uint64(a2, off_1002982B8) == 2001;
      v4 = *(a1 + 32);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100133F18;
    v6[3] = &unk_100265430;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(global_queue, v6);
  }
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = a2;
  if (a2 != 2 && a2 != 30)
  {
    goto LABEL_9;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0F38();
  }

  v6 = qword_100298BA8;
  if (qword_100298BA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100134078;
    block[3] = &unk_1002654F8;
    v10 = v4;
    block[4] = a3;
    block[5] = &v11;
    block[6] = cf;
    block[7] = qword_100298BA8;
    CFRetain(cf);
    dispatch_sync(v6, block);
    if ((v12[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    sub_100136B00();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_100134078(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 48)))
  {
    v7 = *(a1 + 48);
    sub_100136B00();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, off_100298250, (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, off_100298248, 0x3F9uLL);
    v3 = *(a1 + 64);
    if (v3 == 30 || v3 == 2)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v5, off_1002983E8, v3);
    }

    else
    {
      v5 = 0;
    }

    xpc_dictionary_set_value(v2, off_1002983C0, v5);
    xpc_release(v5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_1001341F4;
    v8[3] = &unk_1002654D0;
    v6 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v8[5] = v6;
    sub_100136B44();
    *(*(*(a1 + 40) + 8) + 24) = sub_1001370C0(*(a1 + 56), v2, v8);
    xpc_release(v2);
  }
}

void sub_1001341F4(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  if (a2)
  {
    value = xpc_dictionary_get_value(a2, off_1002983C8);
    a2 = value;
    if (value)
    {
      xpc_retain(value);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1001342B0;
  v6[3] = &unk_1002654A8;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  dispatch_async(global_queue, v6);
}

void sub_1001342B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    xpc_release(v3);
  }
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, int a4, void *a5, _WORD *a6)
{
  if (!xdict || a4 != 2 && a4 != 30)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, off_1002983D0);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, off_1002983D8);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, off_1002983F0);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, off_1002983E8) != a4)
  {
LABEL_10:
    sub_100136B00();
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, off_1002983E0);
  if (result)
  {
    return (inet_pton(a4, result, a5) != 0);
  }

  return result;
}

uint64_t sub_10013444C(void *a1)
{
  if (qword_100298B80 && (Count = CFArrayGetCount(qword_100298B80)) != 0 && (v3 = Count, (v4 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v5 = v4;
    v6 = netrbClientNotificationKey;
    uint64 = xpc_dictionary_get_uint64(a1, off_100298368);
    xpc_dictionary_set_uint64(v5, v6, uint64);
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100298B80, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          if (ValueAtIndex[2])
          {
            if (ValueAtIndex[3])
            {
              xpc_retain(v5);
              CFRetain(v10);
              v11 = v10[2];
              v13[0] = _NSConcreteStackBlock;
              v13[1] = 0x40000000;
              v13[2] = sub_1001345BC;
              v13[3] = &unk_100265540;
              v13[4] = v10;
              v13[5] = v5;
              dispatch_async(v11, v13);
            }
          }
        }
      }
    }

    xpc_release(v5);
    return 1;
  }

  else
  {
    sub_100136B00();
    return 0;
  }
}

void sub_1001345BC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (qword_100298BA0 != -1)
  {
    sub_1001B0F60();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100134694;
  block[3] = &unk_100265520;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(qword_100298BA8, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t sub_100134694(uint64_t a1)
{
  result = sub_10012F8BC(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 40) + 24) + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100134704(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v6 = sub_10012EA74(a2, 0);
  *(v12 + 24) = v6;
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_100298BA0 != -1)
  {
    sub_1001B0F88();
  }

  if (qword_100298BA8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100136410;
    v9[3] = &unk_100265798;
    v9[4] = &v11;
    v9[5] = a1;
    v9[6] = a2;
    v10 = a3;
    dispatch_sync(qword_100298BA8, v9);
  }

  else
  {
LABEL_6:
    sub_100136B00();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  if (qword_100298BC0 != -1)
  {
    sub_1001B0C04();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      sub_100136B00();
      CFRelease(v5);
      v5 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v5[10] |= 2u;
        v5[14] |= 4u;
      }
    }
  }

  else
  {
    sub_100136B00();
    result = 6003;
  }

  *a2 = v5;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7 = 0;
  if (sub_100136A60())
  {
    *(v13 + 6) = 6003;
  }

  else
  {
    v2 = sub_100134B3C();
    *(v13 + 6) = v2;
    if (v2)
    {
      sub_100136B00();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v7);
      *(v13 + 6) = 0;
      if (qword_100298BA0 != -1)
      {
        sub_1001B0FB0();
      }

      if (qword_100298BA8)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100134D50;
        block[3] = &unk_100265590;
        v3 = v7;
        block[6] = a1;
        block[7] = v7;
        block[4] = &v12;
        block[5] = &v8;
        dispatch_sync(qword_100298BA8, block);
        if ((v9[3] & 1) == 0)
        {
          sub_100136B00();
          *(v13 + 6) = 1;
        }
      }

      else
      {
        sub_100136B00();
        *(v13 + 6) = 6003;
        v3 = v7;
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  v4 = *(v13 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t sub_100134B3C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (qword_100298BD8 != -1)
  {
    sub_1001B0FD8();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100136760;
  block[3] = &unk_1002658E0;
  block[4] = &v3;
  dispatch_sync(qword_100298BE0, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, off_100298428, a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, off_100298430, v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, off_100298438, v13, v12);
    free(v13);
  }

  return 0;
}

void sub_100134D50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (sub_10012F8BC(qword_100298B88))
  {
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 6002;
  }

  else
  {
    v3 = v2 + 16;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, off_100298248, 0x400uLL);
    xpc_dictionary_set_string(v4, off_100298250, (qword_100298B88 + 32));
    xpc_dictionary_set_value(v4, off_100298400, *(a1 + 56));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100134EA0;
    v6[3] = &unk_100265568;
    v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v5 = *(a1 + 48);
    v8 = v3;
    v9 = v5;
    *(*(*(a1 + 40) + 8) + 24) = sub_1001370C0(0, v4, v6);
    if (v4)
    {
      xpc_release(v4);
    }
  }
}

void sub_100134EA0(void *a1, xpc_object_t xdict)
{
  if (!xdict)
  {
    goto LABEL_16;
  }

  if (xpc_dictionary_get_uint64(xdict, off_1002982B8) != 2001)
  {
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_18;
  }

  uuid = xpc_dictionary_get_uuid(xdict, off_100298408);
  if (!uuid)
  {
LABEL_18:
    sub_100136B00();
    return;
  }

  *src = *uuid;
  is_null = uuid_is_null((a1[6] + 4));
  v6 = a1[6];
  if (!is_null)
  {
    if (!uuid_compare(src, (v6 + 4)))
    {
      goto LABEL_6;
    }

LABEL_16:
    sub_100136B00();
    *(*(a1[4] + 8) + 24) = 0;
    return;
  }

  uuid_copy((v6 + 4), src);
  *(a1[7] + 152) = 1;
LABEL_6:
  v7 = a1[6];
  if (!*(v7 + 28))
  {
    *(a1[6] + 28) = xpc_dictionary_get_uint64(xdict, off_100298350);
    uint64 = xpc_dictionary_get_uint64(xdict, off_100298360);
    v7 = a1[6];
    *(v7 + 32) = uint64;
  }

  if (*(v7 + 44) == *in6addr_any.__u6_addr8 && *(v7 + 52) == *&in6addr_any.__u6_addr32[2])
  {
    *(a1[6] + 44) = *xpc_dictionary_get_data(xdict, off_100298398, 0);
    v10 = xpc_dictionary_get_uint64(xdict, off_1002983A0);
    v7 = a1[6];
    *(v7 + 60) = v10;
  }

  if (!*(v7 + 116))
  {
    *(a1[6] + 116) = xpc_dictionary_get_uint64(xdict, off_100298420);
  }
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v27 = 0;
  if (sub_100136A60())
  {
    goto LABEL_2;
  }

  v6 = sub_100134B3C();
  *(v33 + 6) = v6;
  if (v6)
  {
    sub_100136B00();
    goto LABEL_5;
  }

  if (qword_100298BE8 != -1)
  {
    sub_1001B1000();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    sub_100136B00();
LABEL_2:
    *(v33 + 6) = 6003;
    goto LABEL_5;
  }

  v10 = Instance;
  *(Instance + 48) = 0;
  sub_100136B44();
  if (qword_100298BA0 != -1)
  {
    sub_1001B1028();
  }

  v11 = qword_100298BA8;
  if (!qword_100298BA8)
  {
    v13 = 0;
    v14 = 6003;
LABEL_25:
    sub_100136B00();
    *(v33 + 6) = v14;
LABEL_26:
    CFRelease(v10);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v27);
  *(v33 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v12 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v12 = 1;
    }

    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v15 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v12 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100135408;
  block[3] = &unk_1002655E0;
  v21 = v12;
  v13 = v27;
  block[6] = a1;
  block[7] = v27;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v19;
  block[4] = &v32;
  block[5] = &v28;
  block[8] = a3;
  block[9] = v10;
  dispatch_sync(v11, block);
  if (!*(v29 + 24))
  {
    v14 = 1;
    goto LABEL_25;
  }

  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v10;
  CFRetain(a1);
  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v13)
  {
    xpc_release(v13);
  }

LABEL_5:
  v7 = *(v33 + 6);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v7;
}

void sub_100135408(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (sub_10012F8BC(qword_100298B88))
  {
    sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 6002;
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, off_100298248, 0x3F6uLL);
    xpc_dictionary_set_string(v3, off_100298250, (qword_100298B88 + 32));
    xpc_dictionary_set_BOOL(v3, off_100298270, *(a1 + 80));
    xpc_dictionary_set_value(v3, off_100298400, *(a1 + 56));
    if (*(a1 + 81) == 1)
    {
      xpc_dictionary_set_BOOL(v3, off_100298278, 1);
    }

    if (*(a1 + 82) == 1)
    {
      xpc_dictionary_set_BOOL(v3, off_100298280, 1);
    }

    if (*(a1 + 83) == 1)
    {
      xpc_dictionary_set_BOOL(v3, off_100298288, 1);
    }

    if (*(a1 + 84) == 1)
    {
      xpc_dictionary_set_BOOL(v3, off_100298290, 1);
    }

    v4 = v2 + 16;
    if (*(a1 + 85) == 1)
    {
      xpc_dictionary_set_BOOL(v3, off_100298298, 1);
    }

    if (xpc_dictionary_get_value(*(a1 + 64), netrbClientRelayAuditToken))
    {
      v5 = off_1002982A0;
      data = xpc_dictionary_get_data(*(a1 + 64), netrbClientRelayAuditToken, 0);
      xpc_dictionary_set_data(v3, v5, data, 0x20uLL);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_100135678;
    v8[3] = &unk_1002655B8;
    v9 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v7 = *(a1 + 72);
    v10 = v4;
    v11 = v7;
    v12 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = sub_1001370C0(0, v3, v8);
    if (v3)
    {
      xpc_release(v3);
    }
  }
}

uint64_t sub_100135678(void *a1, xpc_object_t xdict)
{
  if (!xdict)
  {
    result = sub_100136B00();
    *(*(a1[4] + 8) + 24) = 0;
    return result;
  }

  if (xpc_dictionary_get_uint64(xdict, off_1002982B8) != 2001)
  {
    *(*(a1[5] + 8) + 24) = 1;
    return sub_100136B00();
  }

  uuid = xpc_dictionary_get_uuid(xdict, off_100298408);
  if (!uuid)
  {
    return sub_100136B00();
  }

  *src = *uuid;
  is_null = uuid_is_null((a1[6] + 4));
  v6 = a1[6];
  if (is_null)
  {
    uuid_copy((v6 + 4), src);
  }

  else if (uuid_compare(src, (v6 + 4)))
  {
    sub_100136B00();
    *(*(a1[4] + 8) + 24) = 0;
  }

  string = xpc_dictionary_get_string(xdict, off_100298260);
  if (string)
  {
    v9 = a1[7];
    v15 = 0;
    v14 = 0;
    sscanf(string, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v14, &v14 + 1, &v14 + 2, &v14 + 3, &v15, &v15 + 1);
    v10 = v14;
    *(v9 + 24) = v15;
    *(v9 + 20) = v10;
  }

  v11 = xpc_dictionary_get_uuid(xdict, off_100298258);
  if (v11)
  {
    *(a1[7] + 27) = *v11;
    *(a1[7] + 26) = 1;
  }

  *(a1[7] + 16) = xpc_dictionary_dup_fd(xdict, off_100298268);
  result = xpc_dictionary_get_uint64(xdict, off_100298418);
  v12 = a1[7];
  v13 = a1[8];
  *(v12 + 48) = result;
  *(v12 + 56) = v13;
  return result;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v11 = v10;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v10 + 9) = a3;
    *(v10 + 5) = a4;
    *(v10 + 6) = a5;
    __memcpy_chk();
    v12 = 0;
    *v11 = *(a1 + 144);
    *(a1 + 144) = v11;
  }

  else
  {
    sub_100136B00();
    v12 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v11);
  }

  return v12;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, off_100298428, &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, off_100298430, &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, off_100298438, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    sub_100136B00();
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (qword_100298BC0 != -1)
  {
    sub_1001B0C04();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    sub_100136B00();
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

uint64_t sub_100135EA4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  return sub_100136B44();
}

void sub_100135EFC(id a1)
{
  snprintf(__str, 0x2DuLL, "com.apple.framework.netrb.%p", &qword_100298B98);
  __str[44] = 0;
  qword_100298BA8 = dispatch_queue_create(__str, 0);
  if (!qword_100298BA8)
  {
    v1 = __error();
    strerror(*v1);
    sub_100136B00();
  }
}

void sub_100135F9C(id a1)
{
  snprintf(__str, 0x31uLL, "com.apple.framework.netrb.xpc.%p", &qword_100298B98);
  __str[48] = 0;
  qword_100298BB8 = dispatch_queue_create(__str, 0);
  if (!qword_100298BB8)
  {
    v1 = __error();
    strerror(*v1);
    sub_100136B00();
  }
}

void sub_10013603C(void *a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, off_100298260);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v15 = 0uLL;
  uuid = xpc_dictionary_get_uuid(xdict, off_100298258);
  if (uuid)
  {
    *v15 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v15);
  }

  v6 = xpc_dictionary_dup_fd(xdict, off_100298268);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, off_100298350);
  v8 = xpc_dictionary_get_string(xdict, off_100298358);
  v9 = xpc_dictionary_get_string(xdict, off_100298360);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, off_100298340);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU, value);
  }

  v14 = xpc_dictionary_get_value(xdict, off_100298388);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }
}

void sub_100136224(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (qword_100298BA0 != -1)
  {
    sub_1001B1050();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100136354;
  block[3] = &unk_100265728;
  block[4] = &v8;
  v7 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_sync(qword_100298BA8, block);
  if (!*(v9 + 6))
  {
    *(a1 + 56);
    v2 = *(a1 + 48);
    (*(*(*(a1 + 32) + 24) + 16))();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_release(v3);
  }

  CFRelease(*(a1 + 32));
  _Block_object_dispose(&v8, 8);
}

double sub_100136354(uint64_t a1)
{
  v2 = sub_10012F8BC(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (!v2 && *(a1 + 64) == 1001)
  {
    if (!strncmp(*(a1 + 48), (*(a1 + 40) + 289), 0x100uLL) || (*(*(*(a1 + 32) + 8) + 24) = 1, *(a1 + 64) == 1001))
    {
      if (xpc_dictionary_get_uint64(*(a1 + 56), netrbClientNotificationKey) == 5003)
      {
        v4 = (*(a1 + 40) + 289);
        result = 0.0;
        v4[14] = 0u;
        v4[15] = 0u;
        v4[12] = 0u;
        v4[13] = 0u;
        v4[10] = 0u;
        v4[11] = 0u;
        v4[8] = 0u;
        v4[9] = 0u;
        v4[6] = 0u;
        v4[7] = 0u;
        v4[4] = 0u;
        v4[5] = 0u;
        v4[2] = 0u;
        v4[3] = 0u;
        *v4 = 0u;
        v4[1] = 0u;
      }
    }
  }

  return result;
}

uint64_t sub_100136410(uint64_t a1)
{
  if (sub_10012F8BC(*(a1 + 40)))
  {
    v5 = *(a1 + 40);
    result = sub_100136B00();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    xpc_dictionary_set_string(*(a1 + 48), off_100298250, (*(a1 + 40) + 32));
    if (*(a1 + 56))
    {
      v3 = 1019;
    }

    else
    {
      v3 = 1018;
    }

    *(a1 + 56);
    xpc_dictionary_set_uint64(*(a1 + 48), off_100298248, v3);
    v6 = *(a1 + 40);
    sub_100136B44();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v4 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100136530;
    v7[3] = &unk_100265770;
    v8 = *(a1 + 32);
    return sub_1001370C0(0, v4, v7);
  }

  return result;
}

uint64_t sub_100136530(uint64_t a1, xpc_object_t object)
{
  if (object && xpc_get_type(object) == &_xpc_type_dictionary && (value = xpc_dictionary_get_value(object, off_1002982B8)) != 0 && (v6 = value, xpc_get_type(value) == &_xpc_type_uint64))
  {
    if (xpc_uint64_get_value(v6) == 2001)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    sub_100136B00();
  }

  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 32) + 8) + 24);
  return sub_100136B44();
}

void *sub_100136628(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (sub_10012F8BC(qword_100298B88))
    {
      sub_100136B00();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, off_100298248, 0x401uLL);
      xpc_dictionary_set_string(v2, off_100298250, (qword_100298B88 + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, off_100298400, value);
      sub_1001370C0(0, v2, &stru_100265878);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

uint64_t sub_100136760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100298B88)
  {
    result = sub_10012F8BC(qword_100298B88);
    if (!result)
    {
      p_class_meths = &OBJC_PROTOCOL___CXCallObserverDelegate.class_meths;
      v6 = dword_100298BD0 + 1;
      goto LABEL_10;
    }

    _NETRBClientDestroy(qword_100298B88);
    qword_100298B88 = 0;
    dword_100298BD0 = 0;
  }

  if (qword_100298BD8 != -1)
  {
    sub_1001B1078();
  }

  result = _NETRBClientCreateInternal(qword_100298BE0, &stru_1002658B8, a3, 0);
  qword_100298B88 = result;
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 6003;
    return sub_100136B00();
  }

  p_class_meths = (&OBJC_PROTOCOL___CXCallObserverDelegate + 32);
  v6 = 1;
LABEL_10:
  *(p_class_meths + 756) = v6;
  return result;
}

void sub_10013688C(uint64_t a1)
{
  value = 0;
  if (sub_10012F8BC(qword_100298B88) || !*(a1 + 56))
  {
    sub_100136B00();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, off_100298248, 0x3FFuLL);
    xpc_dictionary_set_string(v2, off_100298250, (qword_100298B88 + 32));
    xpc_dictionary_set_uint64(v2, off_100298418, *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, off_100298400, value);
    sub_1001370C0(0, v2, &stru_100265A00);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (qword_100298BD8 != -1)
    {
      sub_1001B1078();
    }

    dispatch_sync(qword_100298BE0, &stru_100265A40);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }
}

void sub_100136A10(id a1)
{
  v1 = dword_100298BD0;
  if (!dword_100298BD0)
  {
    sub_1001B108C();
  }

  --dword_100298BD0;
  if (v1 == 1 && qword_100298B88 != 0)
  {
    _NETRBClientDestroy(qword_100298B88);
    qword_100298B88 = 0;
  }
}

uint64_t sub_100136A60()
{
  if (qword_100298BF8 != -1)
  {
    sub_1001B10B8();
  }

  if (byte_100298C00)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void sub_100136AA4(id a1)
{
  qword_100298C08 = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!qword_100298C08)
  {
    byte_100298C00 = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1001B10CC();
    }
  }
}

uint64_t sub_100136BCC(dispatch_queue_t targetq)
{
  if (qword_100298C10)
  {
    sub_100136B88();
  }

  else
  {
    v2 = xpc_connection_create(0, targetq);
    qword_100298C10 = v2;
    if (!v2)
    {
      sub_100136B00();
      return 0;
    }

    v3 = v2;
    sub_100136B44();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100136CB4;
    handler[3] = &unk_100265B10;
    handler[4] = v3;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(qword_100298C10);
  }

  return 1;
}

void sub_100136CB4(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v5 = *(a1 + 32);
  if (v5 && (v5 == qword_100298C10 ? (v6 = type == &_xpc_type_error) : (v6 = 0), v6))
  {
    if (object == &_xpc_error_termination_imminent || object == &_xpc_error_connection_invalid)
    {
      sub_100136B44();
    }
  }

  else if (type == &_xpc_type_connection)
  {
    v7 = *(a1 + 40);
    sub_100136B44();
    if (qword_100298C20)
    {
      xpc_connection_cancel(qword_100298C20);
      xpc_release(qword_100298C20);
      qword_100298C20 = 0;
    }

    qword_100298C20 = xpc_retain(object);
    xpc_connection_set_target_queue(object, v7);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10013731C;
    handler[3] = &unk_100265B70;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_resume(object);
  }
}

BOOL sub_100136E0C(dispatch_queue_t targetq, uint64_t a2)
{
  if (qword_100298C18)
  {
    sub_100136B88();
    return 1;
  }

  mach_service = xpc_connection_create_mach_service(off_100298240, targetq, 2uLL);
  qword_100298C18 = mach_service;
  if (!mach_service)
  {
    goto LABEL_7;
  }

  if (xpc_get_type(mach_service) != &_xpc_type_connection)
  {
    if (qword_100298C18)
    {
      xpc_release(qword_100298C18);
LABEL_8:
      result = 0;
      qword_100298C18 = 0;
      return result;
    }

LABEL_7:
    sub_100136B00();
    goto LABEL_8;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100136F3C;
  handler[3] = &unk_100265B50;
  handler[4] = qword_100298C18;
  handler[5] = a2;
  xpc_connection_set_event_handler(qword_100298C18, handler);
  sub_100136B44();
  xpc_connection_resume(qword_100298C18);
  return qword_100298C18 != 0;
}

void sub_100136F3C(uint64_t a1, xpc_object_t object)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100136FC4;
  v4[3] = &unk_100265B30;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void sub_100136FC4(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 32)) == &_xpc_type_error)
  {
    if (*(a1 + 40) == qword_100298C18)
    {
      v3 = *(a1 + 40);
      xpc_dictionary_get_string(*(a1 + 32), _xpc_error_key_description);
      sub_100136B00();
      sub_100137064();
    }
  }

  else
  {
    sub_100136B00();
  }

  v2 = *(a1 + 32);

  xpc_release(v2);
}

BOOL sub_100137064()
{
  v0 = qword_100298C18;
  if (qword_100298C18)
  {
    sub_100136B44();
    xpc_connection_cancel(qword_100298C18);
    xpc_release(qword_100298C18);
    qword_100298C18 = 0;
  }

  return v0 != 0;
}

BOOL sub_1001370C0(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, off_100298248) == 1000)
  {
    if (!qword_100298C10)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, off_1002982B0, qword_100298C10);
  }

  if (a1)
  {
    v6 = qword_100298C18 != 0;
    if (qword_100298C18)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100137458;
      handler[3] = &unk_100265B98;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(qword_100298C18, xdict, a1, handler);
    }

    else
    {
      sub_100136B88();
    }

    return v6;
  }

  if (!qword_100298C18)
  {
    sub_100136B88();
    return 0;
  }

  v7 = xpc_connection_send_message_with_reply_sync(qword_100298C18, xdict);
  v8 = v7;
  if (v7)
  {
    type = xpc_get_type(v7);
    if (type != &_xpc_type_error)
    {
      v10 = type;
      if (type == &_xpc_type_dictionary)
      {
        if (xpc_dictionary_get_uint64(v8, off_1002982B8) == 2002)
        {
          sub_100136B00();
          sub_100137064();
        }

        v10 = &_xpc_type_dictionary;
      }

      else
      {
        sub_100136B00();
        sub_100137064();
      }

      goto LABEL_18;
    }

    xpc_dictionary_get_string(v8, _xpc_error_key_description);
    sub_100136B00();
    sub_100137064();
  }

  else
  {
    sub_100137064();
    sub_100136B00();
  }

  v10 = &_xpc_type_error;
LABEL_18:
  if (v10 == &_xpc_type_dictionary)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  (*(a3 + 16))(a3, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  return 1;
}

BOOL sub_1001372C0()
{
  v0 = qword_100298C10;
  if (qword_100298C10)
  {
    sub_100136B44();
    xpc_connection_cancel(qword_100298C10);
    xpc_release(qword_100298C10);
    qword_100298C10 = 0;
  }

  return v0 != 0;
}

void sub_10013731C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v5 = xpc_copy_description(object);
  if (v5)
  {
    v6 = v5;
    sub_100136B44();
    free(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7 == qword_100298C20;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && type == &_xpc_type_error)
  {
    v11 = *(a1 + 32);
    xpc_dictionary_get_string(object, _xpc_error_key_description);
    sub_100136B44();
    xpc_connection_cancel(*(a1 + 32));
    xpc_release(*(a1 + 32));
    qword_100298C20 = 0;
  }

  else
  {
    if (qword_100298C20)
    {
      v10 = type == &_xpc_type_dictionary;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {

      sub_10013444C(object);
    }

    else
    {

      sub_100136B00();
    }
  }
}

uint64_t sub_100137458(uint64_t a1, xpc_object_t object)
{
  if (!object)
  {
    sub_100137064();
    sub_100136B00();
    goto LABEL_10;
  }

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, off_1002982B8) != 2002)
    {
      goto LABEL_10;
    }
  }

  else if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(object, _xpc_error_key_description);
  }

  sub_100136B00();
  sub_100137064();
LABEL_10:
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t _MISAttach(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  if (qword_100298C28 != -1)
  {
    sub_1001B1114();
  }

  v2 = qword_100298C30;
  if (!qword_100298C30)
  {
    return 12;
  }

  *a1 = 0;
  v3 = _NETRBClientCreate(v2, &stru_100265BD8, 0);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *a1 = v4;
  return result;
}

uint64_t _MISDetach(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientDestroy(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISIsServiceAvailable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = 0;
    result = _NETRBClientGetGlobalServiceState(result, &v4 + 1, &v4);
    if (result)
    {
      if (HIDWORD(v4) == 1022)
      {
        return 0;
      }

      if (HIDWORD(v4) == 1023)
      {
        return 1;
      }

      result = xpc_dictionary_create(0, 0, 0);
      if (result)
      {
        v2 = result;
        xpc_dictionary_set_uint64(result, netrbClientDeviceType, 1uLL);
        started = _NETRBClientStartService(v1, 0, 201, 301, v2);
        xpc_release(v2);
        if (started)
        {
          result = _NETRBClientGetGlobalServiceState(v1, &v4 + 1, &v4);
          if (result)
          {
            return HIDWORD(v4) == 1023;
          }

          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _MISGetGlobalServiceState(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = 0;
  v3 = 22;
  if (a1)
  {
    if (!a3)
    {
      a3 = &v5;
    }

    if (_NETRBClientGetGlobalServiceState(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetDynamicStoreKey(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 22;
  }

  memset(v4, 0, sizeof(v4));
  if (!_NETRBClientGetDynamicStoreKey(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x100uLL, "%s", v4);
  return 0;
}

uint64_t _MISSetGlobalServiceState(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if (_NETRBClientSetGlobalServiceState(a1, a2))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISStartServiceDHCP(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName, a2);
  v7 = netrbClientDeviceType;
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 201, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPLocal(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName, a2);
  v7 = netrbClientDeviceType;
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 203, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPCustom(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, int a5, _OWORD *a6)
{
  if (!a1)
  {
    return 22;
  }

  a6[14] = 0u;
  a6[15] = 0u;
  a6[12] = 0u;
  a6[13] = 0u;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  xpc_dictionary_set_string(v11, netrbClientInterfaceName, a2);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceMTU, a3);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceInstance, a4);
  v13 = netrbClientDeviceType;
  v14 = strlen(a2);
  if (!strncmp("ap1", a2, v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_uint64(v12, v13, v15);
  if (a5 == 1)
  {
    v16 = 203;
  }

  else
  {
    v16 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v16, 302, v12);
  xpc_release(v12);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPWithOptions(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  if (!a1)
  {
    return 22;
  }

  a9[14] = 0u;
  a9[15] = 0u;
  a9[12] = 0u;
  a9[13] = 0u;
  a9[10] = 0u;
  a9[11] = 0u;
  a9[8] = 0u;
  a9[9] = 0u;
  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  xpc_dictionary_set_string(v15, netrbClientInterfaceName, a2);
  xpc_dictionary_set_uint64(v16, netrbClientDeviceType, a3);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceMTU, a4);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceInstance, a5);
  if (a6 == 1)
  {
    v17 = 203;
  }

  else
  {
    v17 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v17, 302, v16);
  xpc_release(v16);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStopService(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientStopService(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISSetFixtureForwardedPorts(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, netrbClientForwardedLowPort, a2);
  xpc_dictionary_set_uint64(v7, netrbClientForwardedHighPort, a3);
  v8 = _NETRBClientSetFixtureForwardedPorts(a1, v7);
  xpc_release(v7);
  if (v8)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISGetFixtureForwardedPorts(void *a1, _WORD *a2, _WORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = _NETRBClientCopyFixtureForwardedPorts(a1);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    return 22;
  }

  *a2 = xpc_dictionary_get_uint64(v6, netrbClientForwardedLowPort);
  uint64 = xpc_dictionary_get_uint64(v6, netrbClientForwardedHighPort);
  result = 0;
  *a3 = uint64;
  return result;
}

uint64_t _MISIsAllowedMoreHost(uint64_t a1)
{
  if (a1)
  {
    return _NETRBClientIsAllowedMoreHost(a1);
  }

  else
  {
    return 22;
  }
}

uint64_t _MISAddHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientAddHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISRemoveHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientRemoveHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 22;
  if (a1)
  {
    if (_NETRBClientGetHostCount(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISSetHostCount(uint64_t a1, int a2, int a3)
{
  v3 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v4 = a2 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (_NETRBClientSetHostCount(a1, v4, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetExt(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 22;
  }

  v4[0] = 0;
  v4[1] = 0;
  if (!_NETRBClientGetExtName(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x10uLL, "%s", v4);
  return 0;
}

void sub_100137FE0(id a1)
{
  snprintf(__str, 0x22uLL, "com.apple.misd.%p", &qword_100298C30);
  __str[33] = 0;
  qword_100298C30 = dispatch_queue_create(__str, 0);
}

void sub_100138210(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: learning period exceeded max time of %llu seconds", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]_block_invoke_2", *a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100138294()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s without networkRecord", "-[WiFiNWReliabilityMonitorSession initWithNetworkRecord:withMetrics:withMaxSamples:withMinSampleThresh:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001382F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s without argument!", "-[WiFiNWReliabilityMonitorSession ingestLQMUpdate:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001383A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s without managerQueue", "-[WiFiAIRAgent setWiFiManagerQueue:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138420()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed in super-init", "+[WiFiAnalyticsManager sharedWiFiAnalyticsManager]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013848C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed in super-init", "-[WiFiAnalyticsManager init]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001384EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: NULL WiFiManager", "-[WiFiAnalyticsManager setWiFiManager:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138558()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WADeviceAnalyticsClient class not present", "-[WiFiAnalyticsManager deviceAnalyticsClient]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001385C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRecord", "-[WiFiAnalyticsManager _copyCreateEquivalentWiFiNetwork:authFlags:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138630()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ssid", "-[WiFiAnalyticsManager _copyCreateEquivalentWiFiNetwork:authFlags:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013869C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: query already pending", "-[WiFiAnalyticsManager getAdaptiveRoamParams:ssid:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138708()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager countNetworksAvailableAtLocation:withinDistance:inBand:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138774()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager countNetworksAvailableAtLocation:withinDistance:inBand:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001387E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager networksAvailableAtLocation:withinDistance:inBand:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013884C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager networksAvailableAtLocation:withinDistance:inBand:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001388B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: location is older than 120 secs", "-[WiFiAnalyticsManager higherBandNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138924()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: location timestamp is nil", "-[WiFiAnalyticsManager higherBandNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138990()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager higherBandNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001389FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager higherBandNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138A68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ssid is nil", "-[WiFiAnalyticsManager isWithin:fromLocation:forNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138AD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager isWithin:fromLocation:forNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138B40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager isWithin:fromLocation:forNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138BAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager countNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138C18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager countNetworksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138C84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager networksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138CF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager networksAvailableAtLocation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138D5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ssid is nil", "-[WiFiAnalyticsManager copyGeoTagsForNetworkAtLocation:location:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138DC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is nil", "-[WiFiAnalyticsManager copyGeoTagsForNetworkAtLocation:location:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138E34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager copyGeoTagsForNetworkAtLocation:location:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138EA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager copyGeoTagsForNetworkAtLocation:location:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100138F0C(NSObject **a1)
{
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136446722;
    v4 = "[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke";
    v5 = 1024;
    v6 = 384;
    v7 = 2112;
    v8 = &off_1002826A0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch networks with traits:%@", &v3, 0x1Cu);
  }

  *a1 = v2;
}

void sub_100138FDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager isMovingNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139048()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager isMovingNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001390B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager isOmnipresentNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139120()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager isOmnipresentNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013918C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager isPoorCoverageNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001391F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager isPoorCoverageNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139264()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager isHighCongestionNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001392D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager isHighCongestionNetwork:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013933C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager copyAllStoredNetworkSsids]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001393A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ssid is nil", "-[WiFiAnalyticsManager countNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139414()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager countNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139480()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager countNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001394EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ssid is nil", "-[WiFiAnalyticsManager copyNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139558()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager copyNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001395C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager copyNetworksInSameLanAs:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139630(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unable to create LAN signature from %@ %@", "-[WiFiAnalyticsManager copyNetworksWithNetworkSignature:ipv6NetworkSignature:]", a1, a2}];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001396B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager copyNetworksWithNetworkSignature:ipv6NetworkSignature:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013971C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: both IPv4 & IPv6 network signatures are nil", "-[WiFiAnalyticsManager copyNetworksWithNetworkSignature:ipv6NetworkSignature:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100139788()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager copyLanForNetwork:isBSSID:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001397F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is nil", "-[WiFiAnalyticsManager copyLanForNetwork:isBSSID:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100139860(void *a1, const void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (_os_feature_enabled_impl())
  {
    v17 = 0;
    v8 = sub_10003B09C(v7, a2, &v17);
    v9 = v17;
    if (v8)
    {
      if (([v8 accessoryOptions] & 2) != 0)
      {
        if ([v8 state] == 25)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        if (a3 && v9)
        {
          *a3 = [v9 name];
        }

        if (a4 && v9)
        {
          *a4 = [v9 identifier];
        }
      }

      else
      {
        v10 = 3;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = off_100298C40;
      if (off_100298C40)
      {
        v13 = [v8 state];
        v14 = [v9 name];
        v15 = [v9 identifier];
        [v12 WFLog:3 message:{"%s: info.state=%ld deviceName='%@' deviceIdentifier='%@'", "WiFiDeviceAccessCheckIfAppIsAuthorizedForNetwork", v13, v14, v15}];
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
  }

  return v10;
}

uint64_t sub_1001399FC(void *a1, const void *a2)
{
  v3 = a1;
  if (!_os_feature_enabled_impl())
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  v4 = sub_10003B09C(v3, a2, &v10);
  v5 = v10;
  if (!v4)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_8;
  }

  if (objc_opt_class())
  {
    v6 = objc_alloc_init(DASession);
    [v4 setState:0];
    [DASession setDeviceAppAccessInfo:v4 device:v5 session:v6 error:0];
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: removed device access device = '%@' for network = '%@'", "WiFiDeviceAccessRemoveAccessForNetwork", v5, a2}];
    }

    objc_autoreleasePoolPop(v7);
  }

  v8 = 1;
LABEL_8:

  return v8;
}

void sub_100139B28(void *a1, const void *a2, char a3)
{
  v5 = a1;
  if (!_os_feature_enabled_impl())
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v15 = 0;
  v6 = sub_10003B09C(v5, a2, &v15);
  v7 = v15;
  v8 = v7;
  if (v6 && v7 && objc_opt_class())
  {
    v14 = objc_alloc_init(DASession);
    v9 = [v8 flags];
    v10 = v9 & 0x80;
    if ((a3 & 2) == 0 || (v9 & 0x80) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      if ((a3 & 2) != 0 || (v9 & 0x80) == 0)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no changes to device flags (%lu)", "WiFiDeviceAccessUpdateDeviceFlags", v9}];
        }

        v13 = v14;
        goto LABEL_20;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: removed unsecured flag", "WiFiDeviceAccessUpdateDeviceFlags"}];
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: added unsecured flag", "WiFiDeviceAccessUpdateDeviceFlags"}];
      }

      objc_autoreleasePoolPop(v11);
      v10 = v9 | 0x80;
    }

    v13 = v14;
    [v8 setFlags:v10];
    [DASession setDeviceAppAccessInfo:v6 device:v8 session:v14 error:0];
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: updated device flags to = '%lu' for network = '%@'", "WiFiDeviceAccessUpdateDeviceFlags", v10, a2}];
    }

LABEL_20:
    objc_autoreleasePoolPop(v12);
  }

LABEL_21:
}

void sub_10013A0DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: super-init failed!", "-[WiFiSoftErrorContext initWithErrorType:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A13C(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Couldn't allocate contextData", "-[WiFiSoftErrorContext fetchSoftErrorContextData]"}];
  }

  objc_autoreleasePoolPop(v4);
  *a2 = *a1;
}

void sub_10013A1B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: errorArray allocation failed", "-[WiFiSoftErrorManager initErrorArray:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A220()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: LQM Dictionary data is NULL or wrong type !", "-[WiFiSoftErrorManager wifiSoftErrorEventHandler:eventType:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A28C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc wifiToggleError", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A2F8(void *a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: eventRef at index:%lu is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10013A374()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failed to alloc CurrTime", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A3E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifiToggleEventsArray is NULL", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A44C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: eventDict is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A4B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc wifiToggleError Context", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A524()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifiToggleErrorArray is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorWiFiToggleEventHandler:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A590()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc wifiToggleError", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A5FC()
{
  v1 = sub_1000082B0();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef Null", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10013A674()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to allocate noNetworksError ", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A6E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: noNetworksErrorArray is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorWiFiScanEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A74C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc autoJoinDelayedError", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A7B8()
{
  v1 = sub_1000082B0();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef Null", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10013A830()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: autoJoinDelayErrorArray is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorWiFiAutoJoinEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A89C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc rxDataStallError", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A908()
{
  v1 = sub_1000082B0();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef Null", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10013A980()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rxDataStallErrorArray is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013A9EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceRef or data is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorRxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AA58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc txDataStallError", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AAC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef Null", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AB30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: txDataStallErrorArray is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AB9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceRef or data is NULL!", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallEventHandler:eventData:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AC08()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: lqmDict is NULL", "-[WiFiSoftErrorManager WiFiSoftErrorManagerLQMEventHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AC74(void *a1, uint64_t a2)
{
  [a1 wifiSoftErrorsInProcessStateUnset:a2];
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: mitigation is supressed for SoftError:%u", "-[WiFiSoftErrorManager wifiSoftErrorMitigation:mitigationContext:]", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10013ACEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:txFailHistoryDictionary is NULL", "-[WiFiSoftErrorManager wifiSoftErrorTxDataStallProcessHistory:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AD58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Bad params!", "-[WiFiSoftErrorManager isTxStalled:rateType:size:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013ADC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failure History params are invalid", "-[WiFiSoftErrorManager populateTxFailHistory:failureHistoryArray:historyArraySz:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AE30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to alloc string", "-[WiFiSoftErrorManager askToLaunchTapToRadar:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013AE9C(void *a1, uint64_t a2)
{
  [a1 wifiSoftErrorUserConfirmationFlagSetting:0 forError:512 withDeviceContext:a2];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:User-Cancelled Filing TD Radar", "-[WiFiSoftErrorManager launchTapToRadar:displayString:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013AF18(void *a1, uint64_t a2)
{
  [a1 wifiSoftErrorUserConfirmationFlagSetting:0 forError:64 withDeviceContext:a2];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:User-Cancelled Filing UD Radar", "-[WiFiSoftErrorManager launchTapToRadar:displayString:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013AF94(void *a1, uint64_t a2)
{
  [a1 wifiSoftErrorUserConfirmationFlagSetting:0 forError:32 withDeviceContext:a2];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:User-Cancelled Filing TD Radar", "-[WiFiSoftErrorManager launchTapToRadar:displayString:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013B010(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 wifiSoftErrorUserConfirmationFlagSetting:0 forError:a2 withDeviceContext:a3];
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:User-Cancelled Filing Radar", "-[WiFiSoftErrorManager launchTapToRadar:displayString:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10013B08C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: outdatedEvents allocation failed", "-[WiFiSoftErrorManager purgeOutdatedEvents:currTime:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B0F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: txStallEvents Array is NULL", "-[WiFiSoftErrorManager purgeOutdatedEvents:currTime:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B164()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDevice UserMode is Not Interactive!", "-[WiFiSoftErrorManager supressTapToRadar:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B1D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "-[WiFiSoftErrorManager supressEventDetectionProcesssing:deviceContext:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B23C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Invalid softError Type", "-[WiFiSoftErrorManager enableSoftErrorMitigation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B2A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Invalid softError Type", "-[WiFiSoftErrorManager supressSoftErrorMitigation:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B314()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Invalid softError Type", "-[WiFiSoftErrorManager isEventMitigationEnabled:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B380()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:SoftErrorManagerRef is NULL!", "WiFiSoftErrorManagerGetErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013B930(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Invalid [%@][%@] value (%@): %@", "-[WiFiRoamManager setRealtimeSessionNotification:forInterface:]", @"QUAL_SCORE", @"CHANQUAL_SCORE", objc_opt_class(), a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013B9CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Invalid %@ dictionary ('%@' not found):%@", "-[WiFiRoamManager setRealtimeSessionNotification:forInterface:]", @"QUAL_SCORE", @"CHANQUAL_SCORE", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013BA50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Invalid dictionary ('%@' not found):%@", "-[WiFiRoamManager setRealtimeSessionNotification:forInterface:]", @"QUAL_SCORE", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013BACC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not allowed for environment:%ld", "-[WiFiRoamManager allowRoam:]", objc_msgSend(a1, "bssEnvironment")}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013BB50()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not allowed as IP addr hasn't been assigned yet", "-[WiFiRoamManager allowRoam:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013BBBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not allowed as awdl realtime traffic active", "-[WiFiRoamManager allowRoam:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013BC28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not allowed as link not up", "-[WiFiRoamManager allowRoam:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013BEA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ManagedConfiguration is not ready yet", "-[ManagedConfigWrapper isMegaWiFiProfileInstalled]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void *sub_10013BF0C(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PolicyType");
    if (Value)
    {
      v5 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v5))
      {
        return 0;
      }
    }
  }

  if (!qword_1002984A0)
  {
    pthread_once(&stru_100297388, sub_1000417F0);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    v9 = theDict ? CFDictionaryCreateMutableCopy(a1, 0, theDict) : CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8[2] = v9;
    if (!v9)
    {
      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

void *sub_10013C004(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v9 = Mutable;
  CFDictionaryAddValue(Mutable, @"PolicyType", a2);
  if (a3)
  {
    CFDictionaryAddValue(v9, @"PolicyUUID", a3);
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = CFUUIDCreate(a1);
  if (v10)
  {
    v11 = v10;
    v12 = CFUUIDCreateString(a1, v10);
    CFDictionaryAddValue(v9, @"PolicyUUID", v12);
    if (!a4)
    {
LABEL_7:
      v13 = sub_10013BF0C(a1, v9);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_11;
    }

LABEL_6:
    CFDictionaryAddValue(v9, @"PolicyProperties", a4);
    goto LABEL_7;
  }

  v13 = 0;
LABEL_11:
  CFRelease(v9);
  return v13;
}

void sub_10013C12C(uint64_t a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyProperties");
  if (Value)
  {
    if (a3)
    {

      CFDictionarySetValue(Value, a2, a3);
    }

    else
    {

      CFDictionaryRemoveValue(Value, a2);
    }
  }
}

const __CFDictionary *sub_10013C1A8(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"PolicyProperties");
  if (result)
  {

    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

__CFArray *sub_10013C1FC(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            v9 = sub_10013BF0C(kCFAllocatorDefault, ValueAtIndex);
            if (v9)
            {
              v10 = v9;
              CFArrayAppendValue(v3, v9);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }

  return v3;
}

__CFArray *sub_10013C2C0(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, ValueAtIndex[2]);
            if (Copy)
            {
              v9 = Copy;
              CFArrayAppendValue(v3, Copy);
              CFRelease(v9);
            }
          }
        }
      }
    }
  }

  return v3;
}

void sub_10013C960()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no CTServer reference", "WiFiCellularNotificationsUpdateTxState_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013C9CC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CA48(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CAC4(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CB40(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CBBC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CC38(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFGetTypeID(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013CCB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no CTServer reference", "WiFiCellularNotificationsUpdateRNFState_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013CD20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error creating CTServer reference", "WiFiCellularNotificationsStartMonitoring"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013CD8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error no CTServer reference", "WiFiCellularNotificationsStopMonitoring"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10013CDF8(uint64_t a1)
{
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQA mgr is null", "__WiFiLQAMgrRoamTimerCallback"}];
    }

    goto LABEL_24;
  }

  sub_100010974(a1);
  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQA mgr is disabled", "__WiFiLQAMgrRoamTimerCallback"}];
    }

    goto LABEL_24;
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrRoamTimerCallback"}];
    }

    goto LABEL_24;
  }

  if (!CFArrayGetCount(v3))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQM table is empty", "__WiFiLQAMgrRoamTimerCallback"}];
    }

    goto LABEL_24;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 24), 0);
  if (!ValueAtIndex)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrRoamTimerCallback"}];
    }

LABEL_24:

    objc_autoreleasePoolPop(v7);
    return;
  }

  valuePtr = *(v1 + 2804);
  if (!valuePtr)
  {
    Value = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
    if (!Value)
    {
      return;
    }

    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  if (*(v1 + 20) == 4)
  {
    v6 = *(v1 + 560);
    if (v6)
    {
      v6(v1, *(v1 + 40), *(v1 + 568), valuePtr, 0);
    }

    *(v1 + 400) = 0;
    sub_100024EBC(*(v1 + 344));
    sub_100024EBC(*(v1 + 552));
  }
}

uint64_t sub_10013CFC8(uint64_t a1, double a2)
{
  valuePtr = 0;
  if (!a1 || !*(a1 + 648))
  {
    return 0;
  }

  v4 = sub_100063748(*(a1 + 32));
  if (!v4)
  {
    v8 = 0;
    MutableCopy = 0;
    goto LABEL_29;
  }

  v5 = sub_10000836C();
  MutableCopy = CFDictionaryCreateMutableCopy(v5, v6, v4);
  if (!MutableCopy)
  {
    v8 = 0;
    goto LABEL_29;
  }

  valuePtr = (a2 * 1000.0);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v8)
  {
LABEL_29:
    v10 = 4294963395;
    goto LABEL_12;
  }

  CFDictionarySetValue(MutableCopy, @"LQM_UPDATE_INTERVAL", v8);
  v9 = sub_100063814(*(a1 + 32));
  v10 = v9;
  if (a2 >= 1.0 && !v9)
  {
    *(a1 + 104) = a2;
    if (a2 == 5.0)
    {
      *(a1 + 112) = 0;
      if (*(a1 + 128) != 0.0)
      {
        *(a1 + 128) = 0;
      }
    }

    else
    {
      *(a1 + 112) = 1;
      *(a1 + 128) = CFAbsoluteTimeGetCurrent();
    }

    *(a1 + 136) = CFAbsoluteTimeGetCurrent();
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQM interval updated to %2.2f seconds", "__WiFiLQAMgrSetIntervalInSec", *&a2}];
    }

    objc_autoreleasePoolPop(v13);
    v10 = 0;
    goto LABEL_24;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_12:
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ERROR: %d Failed to update LQM interval %2.2f", "__WiFiLQAMgrSetIntervalInSec", v10, *&a2}];
  }

  objc_autoreleasePoolPop(v11);
  if (!v4)
  {
    if (!MutableCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  CFRelease(v4);
  if (MutableCopy)
  {
LABEL_16:
    CFRelease(MutableCopy);
  }

LABEL_17:
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

void sub_10013D1C4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  sub_100010974(a1);
  if (!v3)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQA is disabled", "__WiFiLQAMgrTriggerDisconnect"}];
    }

    goto LABEL_35;
  }

  if (*(v1 + 184))
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LinkEvent happened, Do not Trigger Disconnect", "__WiFiLQAMgrTriggerDisconnect"}];
    }

    goto LABEL_35;
  }

  v4 = *(v1 + 24);
  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrTriggerDisconnect"}];
    }

    goto LABEL_35;
  }

  v5 = v2;
  if (!CFArrayGetCount(v4))
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQM table is empty", "__WiFiLQAMgrTriggerDisconnect"}];
    }

    goto LABEL_35;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 24), 0);
  if (!ValueAtIndex)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrTriggerDisconnect"}];
    }

LABEL_35:

    objc_autoreleasePoolPop(v15);
    return;
  }

  valuePtr = *(v1 + 2804);
  if (!valuePtr)
  {
    Value = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
    if (!Value)
    {
      return;
    }

    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  sub_10001577C(v1);
  sub_10004B86C();
  if (v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = CFAbsoluteTimeGetCurrent() - *(v1 + 144);
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Trigger disconnect evaluation took %2.2f", "__WiFiLQAMgrTriggerDisconnect", *&v9}];
    }

    objc_autoreleasePoolPop(v10);
    *(v1 + 144) = 0;
  }

  v11 = *(v1 + 560);
  if (v11)
  {
    v11(v1, *(v1 + 40), *(v1 + 568), valuePtr, v5);
  }

  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addTriggerDisconnectEvent:"addTriggerDisconnectEvent:isAlerted:isConfirmed:isExecuted:" isAlerted:*(v1 + 40) isConfirmed:0 isExecuted:0, 1];
  v12 = +[WiFiUsageMonitor sharedInstance];
  [(WiFiUsageMonitor *)v12 setTdLogic_end:*(v1 + 2836) evalTime:valuePtr rssi:*(v1 + 40) roamTime:v9 forInterface:*(v1 + 200)];
  if (&_symptom_create)
  {
    symptom_create();
    symptom_send();
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"%s: Notified Symptoms about Trigger Disconnected network", "__WiFiLQAMgrTriggerDisconnect"}];
    }

    objc_autoreleasePoolPop(v13);
  }

  *(v1 + 400) = 0;
  sub_100024EBC(*(v1 + 344));
  sub_100024EBC(*(v1 + 552));
  v14 = *(v1 + 2912);
  if (v14)
  {
    sub_100024EBC(v14);
  }

  *(v1 + 2920) = 0;
}

uint64_t sub_10013D4BC(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (*(a1 + 2768) == a3)
    {
      return 4294963396;
    }

    *(a1 + 2768) = a3;
    *(a1 + 2776) = CFAbsoluteTimeGetCurrent();
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "Alive";
      if (a3 == 1)
      {
        v5 = "Expired";
      }

      [off_100298C40 WFLog:3 message:{"%s: GatewayARPState %s", "WiFiLQAMgrSetGatewayARPState", v5}];
    }

    v6 = 0;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetGatewayARPState"}];
    }

    v6 = 4294963396;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t sub_10013D5A4(uint64_t result, char a2)
{
  if (result)
  {
    if (*(result + 648))
    {
      *(result + 228) = a2;
    }
  }

  return result;
}

uint64_t sub_10013D5B8(uint64_t result, char a2)
{
  if (result)
  {
    if (*(result + 648))
    {
      *(result + 229) = a2;
    }
  }

  return result;
}

uint64_t sub_10013D5CC(uint64_t result)
{
  if (result)
  {
    return *(result + 216);
  }

  return result;
}

void sub_10013D5D8(uint64_t a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a1 && *(a1 + 648))
  {
    v5 = Current - a2;
    if (a2 == 0.0)
    {
      v5 = -1.0;
    }

    *(a1 + 280) = v5;
  }
}

void sub_10013D628(uint64_t a1)
{
  valuePtr = 32;
  v14 = 3;
  if (a1)
  {
    sub_100010974(a1);
    if (v2)
    {
      if (*(v1 + 16) == 2)
      {
        v3 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: initProbeHappened %d lqaState %d", "WiFiLQAMgrSetWiFiPrimaryInterface", *(v1 + 365), *(v1 + 20)}];
        }

        objc_autoreleasePoolPop(v3);
        if (*(v1 + 20))
        {
          v4 = *(v1 + 408);
          if (*(v1 + 365))
          {
            if (v4)
            {
              return;
            }

            goto LABEL_24;
          }

          if (!v4)
          {
LABEL_24:
            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: No Router IP Address", "WiFiLQAMgrSetWiFiPrimaryInterface"}];
            }

            objc_autoreleasePoolPop(v12);
            return;
          }

          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v6 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
          v7 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v8 = v7;
          if (v6 && v7)
          {
            CFArrayAppendValue(v7, v6);
            CFDictionarySetValue(Mutable, @"kWiFiLqaMgrProbeSize", v8);
            v9 = CFNumberCreate(0, kCFNumberCFIndexType, &v14);
            CFDictionarySetValue(Mutable, @"kWiFiLqaMgrNumProbes", v9);
            *(v1 + 365) = 1;
            v10 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            *(v1 + 392) = v10;
            if (sub_100043F00(v1, Mutable, v10, sub_10013D8A0, v1))
            {
              v11 = *(v1 + 392);
              if (v11)
              {
                CFRelease(v11);
                *(v1 + 392) = 0;
              }
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }

          else
          {
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s, probeSizeRef OR probeSizeArr is NULL", "WiFiLQAMgrSetWiFiPrimaryInterface"}];
            }

            objc_autoreleasePoolPop(v13);
            if (!v6)
            {
              goto LABEL_19;
            }
          }

          CFRelease(v6);
LABEL_19:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }
      }
    }
  }
}

void sub_10013D8A0(int a1, CFArrayRef theArray, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  valuePtr = 0;
  if (a4)
  {
    v7 = *(a4 + 392);
    if (v7)
    {
      CFRelease(v7);
      *(a4 + 392) = 0;
    }

    if (*(a4 + 648))
    {
      if (a3)
      {
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Init Probe gave an error %ld", "__WiFiLQAMgrInitProbeResultCallBack", a3}];
        }
      }

      else if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          v8 = sub_10000836C();
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
          Value = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesSent");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
          }

          v12 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesFail");
          if (v12)
          {
            CFNumberGetValue(v12, kCFNumberCFIndexType, &v18);
            v13 = v18;
          }

          else
          {
            v13 = 0;
          }

          v14 = valuePtr;
          v15 = objc_autoreleasePoolPush();
          if (v14 && v13 == v14)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: Gateway NOT pingeable", "__WiFiLQAMgrInitProbeResultCallBack"}];
            }

            objc_autoreleasePoolPop(v15);
            *(a4 + 366) = 0;
          }

          else
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: Gateway pingeable", "__WiFiLQAMgrInitProbeResultCallBack"}];
            }

            objc_autoreleasePoolPop(v15);
            *(a4 + 366) = 1;
          }

          return;
        }

        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: zero elements in probeResultRef", "__WiFiLQAMgrInitProbeResultCallBack", v17}];
        }
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: probeResultRef is null", "__WiFiLQAMgrInitProbeResultCallBack", v17}];
        }
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

void sub_10013DAA0(uint64_t a1)
{
  if (a1)
  {
    sub_100010974(a1);
    if (v4)
    {
      v5 = v2;
      Value = CFDictionaryGetValue(v3, kSCPropNetIPv4ARPResolvedIPAddress);
      if (Value)
      {
        v7 = Value;
        *(v1 + 2848) |= 2u;
        if (+[WiFiRoamManager sharedWiFiRoamManager])
        {
          [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
        }

        v8 = *(v1 + 408);
        if (v8)
        {
          CFRelease(v8);
          *(v1 + 408) = 0;
        }

        v9 = *(v1 + 40);
        if (v9)
        {
          CFRelease(v9);
          *(v1 + 40) = 0;
        }

        *(v1 + 408) = CFStringCreateCopy(kCFAllocatorDefault, v7);
        *(v1 + 40) = CFStringCreateCopy(kCFAllocatorDefault, v5);
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s, LQAManager IPAddr is NULL", "WiFiLQAMgrSetRouterIpv4Addr"}];
        }

        objc_autoreleasePoolPop(v10);
      }
    }
  }
}

uint64_t sub_10013DBCC(uint64_t result, int a2, double a3)
{
  if (result && *(result + 648) && *(result + 2784) != a2)
  {
    *(result + 2784) = a2;
    *(result + 2792) = a3;
  }

  return result;
}

void sub_10013DBF0(uint64_t a1, unint64_t a2)
{
  state64 = 0;
  if (!&_managed_event_fetch)
  {
    return;
  }

  if (a1)
  {
    if (a2 <= 8)
    {
      sub_10004B8A4();
      if (!v3)
      {
        return;
      }
    }

    if (*(a1 + 648))
    {
      state = notify_get_state(*(a1 + 424), &state64);
      if (state)
      {
        v5 = state;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s Unable to get Symptoms Event ID Error %d", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback", v5}];
        }

        objc_autoreleasePoolPop(v6);
      }

      else
      {
        CFRetain(a1);
        sub_10000834C();
        managed_event_fetch_series();
      }

      return;
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQA mgr is disabled", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback"}];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQA mgr is null", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback"}];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10013DD6C(uint64_t a1, unint64_t a2)
{
  state64 = 0;
  if (a2 > 8 || (sub_10004B8A4(), v3))
  {
    if (&_managed_event_fetch)
    {
      if (a1)
      {
        state = notify_get_state(*(a1 + 448), &state64);
        v5 = objc_autoreleasePoolPush();
        if (state)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s Unable to get Symptoms Event ID Error %d", "__WiFiLQAMgrDNSFailureSymptomsCallback", state}];
          }

          objc_autoreleasePoolPop(v5);
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s called at %f", "__WiFiLQAMgrDNSFailureSymptomsCallback", CFAbsoluteTimeGetCurrent()}];
          }

          objc_autoreleasePoolPop(v5);
          v6 = sub_100008BAC(8);
          sub_100140BCC(v6, v7);
          [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addFaultEvent:"addFaultEvent:forInterface:" forInterface:18, *(a1 + 40)];
        }
      }

      else
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: LQA mgr is null", "__WiFiLQAMgrDNSFailureSymptomsCallback"}];
        }

        objc_autoreleasePoolPop(v8);
      }
    }
  }
}

void sub_10013DED0()
{
  sub_100008C40();
  valuePtr = 0;
  v2 = +[WiFiRoamManager sharedWiFiRoamManager];
  if (v0)
  {
    v3 = v2;
    v4 = *(v0 + 48);
    if (v1)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    if (!v5)
    {
      *(v0 + 3248) = CFAbsoluteTimeGetCurrent();
      *(v0 + 3240) = *(v0 + 2960) != 0;
      v4 = *(v0 + 48);
    }

    if (v4)
    {
      CFRelease(v4);
      *(v0 + 48) = 0;
    }

    *(v0 + 608) = 0;
    if (v1)
    {
      *(v0 + 48) = CFRetain(v1);
      v7 = *(v0 + 576);
      if (v7)
      {
        v8 = v7(v0, v1, *(v0 + 584));
      }

      else
      {
        v8 = 0;
      }

      *(v0 + 230) = v8;
      v10 = sub_100014000(v1);
      if (v10)
      {
        CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
      }

      v11 = sub_100018030(v1);
      v12 = v11;
      if (v3)
      {
        [v3 setLinkUpWithBSSEnvironment:*(v0 + 230) band:v11 roam:v6 inCharging:*(v0 + 2800) != 0 motionState:*(v0 + 2784)];
      }

      if (v12 == 1 && *(v0 + 230) > 2)
      {
        *(v0 + 2852) = 1;
        *(v0 + 2848) |= 1u;
        *(v0 + 2844) = sub_1000333E8(v1, @"RSSI");
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Reassoc Needed. linkUpRssi (%d) Current band (%d) Env (%d) ", *(v0 + 2844), v12, *(v0 + 230)}];
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        *(v0 + 2852) = 0;
      }

      v14 = objc_autoreleasePoolPush();
      *(v0 + 56) = 0;
      v15 = *(v0 + 48);
      if (v15)
      {
        v16 = sub_10000A540(v15, @"BSSID");
        if (+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager, "sharedWiFiAnalyticsManager") && [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
        {
          *(v0 + 56) = [objc_msgSend(objc_msgSend(+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
        }

        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
        v18 = Mutable;
        if (Mutable)
        {
          if (*(v0 + 56))
          {
            CFStringAppendFormat(Mutable, 0, @" AutoLeaveRssi %d ", *(v0 + 56));
          }

          if (*(v0 + 616))
          {
            CFStringAppendFormat(v18, 0, @" colocatedScope networks %lu ", *(v0 + 616));
          }
        }
      }

      else
      {
        v18 = 0;
      }

      objc_autoreleasePoolPop(v14);
      v19 = CWFGetLinkQualityOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v20 = "Roamed";
        }

        else
        {
          v20 = "Joined";
        }

        v21 = sub_1001784B0(v1);
        v22 = sub_10017850C(v1);
        v23 = sub_100034EEC(v1, @"RSSI");
        v24 = valuePtr;
        v25 = sub_10000F2A0(*(v0 + 230));
        v26 = *(v0 + 230);
        v27 = &stru_1002680F8;
        *buf = 136317186;
        v30 = "__WiFiLQAMgrSetCurrentNetwork";
        if (v18)
        {
          v27 = v18;
        }

        v31 = 2080;
        v32 = v20;
        v33 = 2114;
        v34 = v21;
        v35 = 2114;
        v36 = v22;
        v37 = 2048;
        v38 = v23;
        v39 = 1024;
        v40 = v24;
        v41 = 2112;
        v42 = v25;
        v43 = 1024;
        v44 = v26;
        v45 = 2112;
        v46 = v27;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: %s SSID: %{public}@ BSSID: %{public}@ RSSI: %ld Chan: %d ApEnv: %@(%d) %@", buf, 0x54u);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 230) = 0;
      *(v0 + 56) = 0;
      *(v0 + 2852) = 0;
      *(v0 + 2844) = 0;
      if (v3)
      {
        [v3 setIpAddrAssigned:0];
        [v3 setLinkDown];
      }

      *(v0 + 616) = 0;
      v9 = *(v0 + 624);
      if (v9)
      {
        CFRelease(v9);
        *(v0 + 624) = 0;
      }
    }

    *(v0 + 1092) = 1061997773;
    *(v0 + 1256) = 1061997773;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
  }
}

void sub_10013E2D4(void *a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = a1[40];
      if (v4)
      {
        v5 = a1[41];
        if (v5)
        {
          CFRetain(cf);
          CFRetain(v4);
          CFRetain(v5);
          v6 = a1[38];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10004826C;
          block[3] = &unk_10025EEE8;
          block[4] = v5;
          block[5] = cf;
          block[6] = v4;
          dispatch_async(v6, block);
        }
      }
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "WiFiLQAMgrIgnoreDiagnosticProbe"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

BOOL sub_10013E3EC(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = sub_100018030(v2);
    v4 = v3 == 1;
    v5 = v3 != 1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  if (!*(a1 + 653) || !*(a1 + 654))
  {
    return *(a1 + 230) - 3 < 4;
  }

  result = 1;
  switch(*(a1 + 230))
  {
    case 1:
    case 4:
    case 6:
      return result;
    case 3:
      if (!v5)
      {
        goto LABEL_15;
      }

      break;
    default:
      if (*(a1 + 230) != 5)
      {
        v4 = 1;
      }

      if (!v4)
      {
        return 1;
      }

LABEL_15:
      result = 0;
      break;
  }

  return result;
}

void sub_10013E4AC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, int a5)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (!a1)
  {
    return;
  }

  v11 = Current;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      if (*(a1 + 48))
      {
        a4 = CWFGetLinkQualityOSLog();
        if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
        {
          v56 = sub_100058CA4(a5);
          v55 = sub_1001784B0(*(a1 + 48));
          v37 = sub_10017850C(*(a1 + 48));
          v53 = *(a1 + 2804);
          v54 = *(a1 + 2856);
          v38 = sub_10000F2A0(*(a1 + 230));
          v39 = *(a1 + 230);
          valuePtr = 136317186;
          v58 = "WiFiLQAMgrLinkStateNotify";
          v59 = 2112;
          v60 = v56;
          v61 = 1024;
          v62 = a5;
          v63 = 2114;
          v64 = v55;
          v65 = 2114;
          v66 = v37;
          v67 = 1024;
          v68 = v53;
          v69 = 1024;
          v70 = v54;
          v71 = 2112;
          v72 = v38;
          v73 = 1024;
          v74 = v39;
          _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "%s: Disconnected (%@:code=%d) SSID: %{public}@ BSSID: %{public}@ RSSI: %d Chan: %d ApEnv: %@(%d)", &valuePtr, 0x4Cu);
        }
      }

      if (*(a1 + 1312))
      {
        sub_100053F70((a1 + 1312));
        v40 = objc_autoreleasePoolPush();
        v41 = sub_1000038E8();
        if (v41)
        {
          [v41 WFLog:4 message:{"%s: submittotalRecords %d", "WiFiLQAMgrLinkStateNotify", *(a1 + 1312)}];
        }

        objc_autoreleasePoolPop(a4);
      }

      sub_10001156C();
      CFArrayRemoveAllValues(*(a1 + 24));
      CFArrayRemoveAllValues(*(a1 + 256));
      CFArrayRemoveAllValues(*(a1 + 264));
      CFArrayRemoveAllValues(*(a1 + 3232));
      CFArrayRemoveAllValues(*(a1 + 64));
      *(a1 + 3248) = 0;
      *(a1 + 3240) = 0;
      *(a1 + 2804) = 0;
      *(a1 + 3264) = 0;
      *(a1 + 288) = 0;
      *(a1 + 20) = 0;
      v42 = objc_autoreleasePoolPush();
      if (sub_1000038E8())
      {
        sub_10002AC9C();
        if (!v18 & v17)
        {
          v45 = @"Bogus";
        }

        else
        {
          v45 = *(&off_10025F018 + v44);
        }

        [v43 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v45}];
      }

      objc_autoreleasePoolPop(a4);
      v46 = sub_10004B86C();
      if (!v18)
      {
        +[WiFiUsageMonitor sharedInstance];
        sub_100034F84();
        if (!v18)
        {
          v47 = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
        }

        [sub_10001DB70() setTdLogic_end:13 evalTime:? rssi:? roamTime:? forInterface:?];
        *(a1 + 144) = 0;
      }

      *(a1 + 400) = 0;
      sub_100024EBC(*(a1 + 344));
      sub_100024EBC(*(a1 + 552));
      v48 = *(a1 + 2912);
      if (v48)
      {
        sub_100024EBC(v48);
      }

      *(a1 + 2920) = 0;
      *(a1 + 364) = 0;
      sub_10013E2D4(a1, *(a1 + 384));
      v49 = *(a1 + 384);
      if (v49)
      {
        CFRelease(v49);
        *(a1 + 384) = 0;
      }

      *(a1 + 365) = 0;
      sub_10013E2D4(a1, *(a1 + 392));
      v50 = *(a1 + 392);
      if (v50)
      {
        CFRelease(v50);
        *(a1 + 392) = 0;
      }

      *(a1 + 368) = 0;
      *(a1 + 2768) = 0;
      sub_100008684();
      sub_10013DED0();
      *(a1 + 1304) = 0;
      v51 = sub_10004B878();
      if (!v18)
      {
        *(a1 + 200) = v11 - v51;
      }

      *(a1 + 192) = 0;
      *(a1 + 296) = 0;
      CFRetain(a1);
      dispatch_async_f(*(a1 + 2928), a1, sub_100043E8C);
      *(a1 + 2952) = 0u;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = sub_1000038E8();
      if (v13)
      {
        [v13 WFLog:4 message:{"%s: Unknown Link State Notification %d", "WiFiLQAMgrLinkStateNotify", a3}];
      }

      objc_autoreleasePoolPop(a4);
    }

    goto LABEL_48;
  }

  if (a2)
  {
    if (a3)
    {
      if (*(a1 + 20))
      {
LABEL_19:
        if (a3 == 2 && *(a1 + 1312))
        {
          sub_100053F70((a1 + 1312));
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: submittotalRecords %d", "WiFiLQAMgrLinkStateNotify", *(a1 + 1312)}];
          }

          objc_autoreleasePoolPop(v20);
        }

        goto LABEL_24;
      }
    }

    else if (!*(a1 + 20))
    {
LABEL_24:
      sub_10001156C();
      *(a1 + 3256) = 0;
      CFArrayRemoveAllValues(*(a1 + 24));
      CFArrayRemoveAllValues(*(a1 + 256));
      CFArrayRemoveAllValues(*(a1 + 264));
      CFArrayRemoveAllValues(*(a1 + 3232));
      CFArrayRemoveAllValues(*(a1 + 64));
      *(a1 + 248) = a4;
      sub_10013DED0();
      *(a1 + 288) = 0;
      *(a1 + 20) = 1;
      v21 = objc_autoreleasePoolPush();
      if (sub_1000038E8())
      {
        sub_10002AC9C();
        if (!v18 & v17)
        {
          v24 = @"Bogus";
        }

        else
        {
          v24 = *(&off_10025F018 + v23);
        }

        [v22 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v24}];
      }

      objc_autoreleasePoolPop(a4);
      if (a3)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = sub_1000038E8();
        if (v28)
        {
          [v28 WFLog:3 message:{"%s: Roam: ending Evaluation", "WiFiLQAMgrLinkStateNotify"}];
        }

        objc_autoreleasePoolPop(a4);
        v29 = sub_10004B86C();
        if (!v18)
        {
          +[WiFiUsageMonitor sharedInstance];
          sub_100034F84();
          if (!v18)
          {
            v30 = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
          }

          [sub_10001DB70() setTdLogic_end:14 evalTime:? rssi:? roamTime:? forInterface:?];
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = sub_1000038E8();
        if (v26)
        {
          [v26 WFLog:3 message:{"%s: LinkUp: ending Evaluation", "WiFiLQAMgrLinkStateNotify"}];
        }

        objc_autoreleasePoolPop(a4);
      }

      *(a1 + 400) = 0;
      sub_100024EBC(*(a1 + 344));
      sub_100024EBC(*(a1 + 552));
      *(a1 + 364) = 0;
      sub_10013E2D4(a1, *(a1 + 384));
      v31 = *(a1 + 384);
      if (v31)
      {
        CFRelease(v31);
        *(a1 + 384) = 0;
      }

      *(a1 + 368) = 0;
      *(a1 + 1304) = 0;
      if (!a3)
      {
        *(a1 + 72) = CFAbsoluteTimeGetCurrent();
      }

      v32 = sub_10004B878();
      if (!v18)
      {
        *(a1 + 200) = v11 - v32;
      }

      *(a1 + 192) = 0;
      *(a1 + 296) = 0;
      if (&_symptom_create && (*(a1 + 16) - 1) <= 1)
      {
        symptom_create();
        symptom_set_qualifier();
        sub_100047FD4(*(a1 + 48));
        symptom_set_qualifier();
        symptom_send();
      }

LABEL_48:
      *(a1 + 2824) = 0;
      *(a1 + 2832) = 0;
      if (sub_1000658AC(*(a1 + 32)))
      {
        *(a1 + 3257) = 1;
        if (a3)
        {
          goto LABEL_56;
        }

        valuePtr = -1431655766;
        v33 = sub_10000A540(a2, @"WiFiNetworkTDOverrideCount");
        if (!v33)
        {
          goto LABEL_56;
        }

        CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr < 3)
        {
          goto LABEL_56;
        }

        v34 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Turning off asserive TD, user override count %u\n", "WiFiLQAMgrLinkStateNotify", valuePtr}];
        }

        objc_autoreleasePoolPop(v34);
      }

      *(a1 + 3257) = 0;
LABEL_56:
      v35 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 3257))
        {
          v36 = "enabled";
        }

        else
        {
          v36 = "disabled";
        }

        [off_100298C40 WFLog:2 message:{"%s: Assertive TD %s\n", "WiFiLQAMgrLinkStateNotify", v36}];
      }

      objc_autoreleasePoolPop(v35);
      return;
    }

    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10002AC9C();
      if (!v18 & v17)
      {
        v19 = @"Bogus";
      }

      else
      {
        v19 = *(&off_10025F018 + v16);
      }

      [v15 WFLog:4 message:{"%s: Unexpected Event %d currState %@", "WiFiLQAMgrLinkStateNotify", a3, v19}];
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_19;
  }

  v52 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: curNetwork is NULL in Event %d", "WiFiLQAMgrLinkStateNotify", a3}];
  }

  objc_autoreleasePoolPop(v52);
}

void sub_10013EC1C(uint64_t a1, uint64_t a2)
{
  number = 0;
  valuePtr = 0;
  memset(v22, 0, sizeof(v22));
  if (a1 && a2)
  {
    v3 = sub_10000DA8C();
    CFDictionaryGetValueIfPresent(v3, v4, v5);
    v6 = sub_10000DA8C();
    if (CFDictionaryGetValueIfPresent(v6, v7, v8) && number)
    {
      CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr);
    }

    v9 = sub_10000DA8C();
    if (CFDictionaryGetValueIfPresent(v9, v10, v11) && number)
    {
      CFNumberGetValue(number, kCFNumberIntType, &v22[2]);
    }

    v12 = sub_10000DA8C();
    if (CFDictionaryGetValueIfPresent(v12, v13, v14) && number)
    {
      CFNumberGetValue(number, kCFNumberIntType, &v22[1]);
    }

    v15 = sub_10000DA8C();
    ValueIfPresent = CFDictionaryGetValueIfPresent(v15, v16, v17);
    v19 = 0;
    if (ValueIfPresent)
    {
      if (number)
      {
        CFNumberGetValue(number, kCFNumberIntType, v22);
        v19 = v22[0];
      }
    }

    v20 = HIBYTE(valuePtr);
    *(a1 + 3040) = HIBYTE(valuePtr);
    v21 = valuePtr;
    *(a1 + 3041) = valuePtr;
    *(a1 + 3044) = *&v22[1];
    *(a1 + 3052) = v19;
    *(a1 + 3176) = v20;
    memset_pattern16((a1 + 3184), &unk_1001CE150, 0xCuLL);
    *(a1 + 3196) = 3;
    *(a1 + 3200) = v21 != 0;
  }
}

_WORD *sub_10013ED7C(_WORD *result, const __CFDictionary *a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8)
{
  value = 0;
  number = 0;
  theString = 0;
  HIBYTE(v99) = 0;
  WORD2(v99) = 0;
  LODWORD(v99) = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  HIDWORD(v95) = 0;
  WORD1(v95) = 0;
  memset(buffer, 170, 19);
  if (result && a2)
  {
    v10 = result;
    v11 = sub_10000D780(result, @"MLO_IS_PREF_LINK", a3, a4, a5, a6, a7, a8, v95, v96, v97, v98, v99, theString, value, number);
    if (v11)
    {
      v11 = number;
      if (number)
      {
        v11 = CFNumberGetValue(number, kCFNumberSInt8Type, &v99 + 7);
      }
    }

    v18 = sub_10000D780(v11, @"MLO_LINK_PRI_CHANNEL", v12, v13, v14, v15, v16, v17, v95, v96, v97, v98, v99, theString, value, number);
    if (v18)
    {
      v18 = number;
      if (number)
      {
        v18 = CFNumberGetValue(number, kCFNumberSInt16Type, &v95 + 6);
      }
    }

    v25 = sub_10000D780(v18, @"MLO_LINK_FREQ_BAND", v19, v20, v21, v22, v23, v24, v95, v96, v97, v98, v99, theString, value, number);
    if (v25)
    {
      v25 = number;
      if (number)
      {
        v25 = CFNumberGetValue(number, kCFNumberSInt16Type, &v95 + 4);
      }
    }

    v32 = sub_10000D780(v25, @"MLO_LINK_BW", v26, v27, v28, v29, v30, v31, v95, v96, v97, v98, v99, theString, value, number);
    if (v32)
    {
      v32 = number;
      if (number)
      {
        v32 = CFNumberGetValue(number, kCFNumberSInt16Type, &v95 + 2);
      }
    }

    v39 = sub_10000D780(v32, @"MLO_LINK_TX_CNT", v33, v34, v35, v36, v37, v38, v95, v96, v97, v98, v99, theString, value, number);
    if (v39)
    {
      v39 = number;
      if (number)
      {
        v39 = CFNumberGetValue(number, kCFNumberIntType, &v98 + 4);
      }
    }

    v46 = sub_10000D780(v39, @"MLO_LINK_RX_CNT", v40, v41, v42, v43, v44, v45, v95, v96, v97, v98, v99, theString, value, number);
    if (v46)
    {
      v46 = number;
      if (number)
      {
        v46 = CFNumberGetValue(number, kCFNumberIntType, &v97 + 4);
      }
    }

    v53 = sub_10000D780(v46, @"MLO_LINK_TX_RATE", v47, v48, v49, v50, v51, v52, v95, v96, v97, v98, v99, theString, value, number);
    if (v53)
    {
      v53 = number;
      if (number)
      {
        v53 = CFNumberGetValue(number, kCFNumberIntType, &v96 + 4);
      }
    }

    v60 = sub_10000D780(v53, @"MLO_LINK_RX_RATE", v54, v55, v56, v57, v58, v59, v95, v96, v97, v98, v99, theString, value, number);
    if (v60)
    {
      v60 = number;
      if (number)
      {
        v60 = CFNumberGetValue(number, kCFNumberIntType, &v96);
      }
    }

    v67 = sub_10000D780(v60, @"MLO_LINK_TX_FAIL", v61, v62, v63, v64, v65, v66, v95, v96, v97, v98, v99, theString, value, number);
    if (v67)
    {
      v67 = number;
      if (number)
      {
        v67 = CFNumberGetValue(number, kCFNumberIntType, &v98);
      }
    }

    v74 = sub_10000D780(v67, @"MLO_LINK_TX_EX_RETRY", v68, v69, v70, v71, v72, v73, v95, v96, v97, v98, v99, theString, value, number);
    if (v74)
    {
      v74 = number;
      if (number)
      {
        v74 = CFNumberGetValue(number, kCFNumberIntType, &v97);
      }
    }

    if (sub_10000D780(v74, @"MLO_LINK_IDLE_TIME", v75, v76, v77, v78, v79, v80, v95, v96, v97, v98, v99, theString, value, number) && number)
    {
      CFNumberGetValue(number, kCFNumberIntType, &v99);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"PER_CORE_RSSI", &value) && value && CFArrayGetCount(value) >= 1)
    {
      v81 = 0;
      v82 = &v99 + 4;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(value, v81);
        number = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, v82);
        }

        ++v81;
        ++v82;
      }

      while (CFArrayGetCount(value) > v81);
    }

    result = CFDictionaryGetValueIfPresent(a2, @"BSSID", &theString);
    if (result)
    {
      result = theString;
      if (theString)
      {
        CFStringGetCString(theString, buffer, 19, 0);
        result = ether_aton(buffer);
        if (result)
        {
          v84 = *result;
          v85 = &v10[20 * a3 + 1528];
          *(v85 + 7) = result[2];
          *(v85 + 3) = v84;
        }
      }
    }

    v86 = HIBYTE(v99);
    v87 = &v10[20 * a3];
    *(v87 + 3056) = HIBYTE(v99);
    v88 = BYTE4(v95);
    v89 = (BYTE4(v95) & 3) << 14;
    *(v87 + 3057) = *(v87 + 3057) & 0x700 | BYTE6(v95) | ((BYTE2(v95) & 7) << 11) & 0x3FFF | (WORD2(v95) << 14);
    *(v87 + 767) = v99;
    v90 = HIDWORD(v96);
    *(v87 + 773) = v96;
    *(v87 + 772) = v90;
    *(v87 + 770) = HIDWORD(v97);
    v91 = v98;
    *(v87 + 768) = HIDWORD(v98);
    *(v87 + 769) = v91;
    *(v87 + 771) = v97;
    *(v87 + 3065) = WORD2(v99);
    if (v89)
    {
      v92 = v88 & 3;
      if (v92 == 1)
      {
        v93 = &v10[2 * a3];
        v94 = 2;
      }

      else
      {
        if (v92 != 3)
        {
          return result;
        }

        v93 = &v10[2 * a3];
        v94 = 1;
      }

      *(v93 + 796) = v94;
      if (v86)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v94 = 0;
      *&v10[2 * a3 + 1592] = 0;
      if (v86)
      {
LABEL_55:
        *(v10 + 799) = v94;
      }
    }
  }

  return result;
}

uint64_t sub_10013F134(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 2908);
  }

  else
  {
    v1 = 0;
  }

  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = "TRUE";
    if (!v1)
    {
      v3 = "FALSE";
    }

    [off_100298C40 WFLog:3 message:{"%s: criticalAppState:%s", "WiFiLQAMgrIsCriticalAppState", v3}];
  }

  objc_autoreleasePoolPop(v2);
  return v1;
}

BOOL sub_10013F1C0(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    state64 = 0;
    state = notify_get_state(*(result + 448), &state64);
    if (state)
    {
      v3 = state;
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Unable to get Symptoms Event ID Error %d", "__WiFiLQAMgrForceSymptomsScoreFetch", v3}];
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v9 = sub_100008BAC(7);
      sub_100140BCC(v9, v10);
    }

    v5 = v1[128];
    v6 = v1[133];
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: DNS Symptoms netscore:%d datastallscore:%d", "WiFiLQAMgrIsSymptomsScorePoor", v5, v6}];
    }

    objc_autoreleasePoolPop(v7);
    return (v5 < 0x1A || v6 <= 0x19) && v1[131] == v1[132];
  }

  return result;
}

void sub_10013F2CC(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: DNS Symptoms reseting scores", "WiFiLQAMgrResetDNSFailureSymptomsScores"}];
    }

    objc_autoreleasePoolPop(v2);
    *(a1 + 512) = 50;
    *(a1 + 532) = 0xFFFF;
    sub_10013F368(a1);

    sub_10013F5B4(a1, 0);
  }
}

void sub_10013F368(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return;
  }

  v4 = Mutable;
  v5 = sub_10001EC30(Mutable, v3, (a1 + 520));
  if (!v5)
  {
    v22 = v4;
LABEL_23:

    CFRelease(v22);
    return;
  }

  v7 = v5;
  v8 = sub_10001EC30(v5, v6, (a1 + 524));
  v10 = v8;
  if (!v8)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v11 = sub_10001EC30(v8, v9, (a1 + 528));
  v13 = v11;
  if (!v11)
  {
LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  v14 = sub_10001EC30(v11, v12, (a1 + 500));
  v16 = v14;
  if (!v14)
  {
LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v17 = sub_10001EC30(v14, v15, (a1 + 532));
  v19 = v17;
  if (!v17)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  v20 = sub_10001EC30(v17, v18, (a1 + 508));
  v22 = v20;
  if (!v20)
  {
LABEL_32:
    v23 = 0;
    goto LABEL_12;
  }

  v23 = sub_10001EC30(v20, v21, (a1 + 512));
  if (v23)
  {
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputARPFail", v7);
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputDNSServersTotal", v10);
    v24 = sub_100007514();
    CFDictionarySetValue(v24, v25, v26);
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputUserImpactFlags", v16);
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputDataStallScore", v19);
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputAppPolicyScore", v22);
    CFDictionarySetValue(v4, @"IO80211DPSSymptomsInputNetScore", v23);
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"DNS Symptoms: updating APPLE80211_IOC_DPS_SYMPTOMS_INPUT"];
    }

    objc_autoreleasePoolPop(v27);
    sub_100006F94(*(a1 + 32), *(a1 + 40), 487, 0, v4);
  }

LABEL_12:
  CFRelease(v4);
  CFRelease(v7);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    goto LABEL_23;
  }
}

void sub_10013F5B4(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "true";
      if (!a2)
      {
        v5 = "false";
      }

      [off_100298C40 WFLog:3 message:{"%s: setting dnsFailureHandled to %s", "WiFiLQAMgrSetDNSFailureTriggerStatus", v5}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 547) = a2;
  }
}

uint64_t sub_10013F648(uint64_t a1, const __CFDictionary *a2)
{
  v144 = 0;
  v145 = 0;
  result = 4294963396;
  v143 = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = sub_10001ED70(4294963396, @"trgDiscEnable");
  if (v5)
  {
    v5 = v144;
  }

  v6 = sub_10001ED70(v5, @"trgDiscMonitorOnlyMode");
  if (v6)
  {
    v6 = v144;
  }

  v7 = sub_1000114EC(v6, @"trgDiscPoorRssiThres");
  if (v7)
  {
    v7 = v145;
  }

  v8 = sub_1000114EC(v7, @"trgDiscRssiHysterisis");
  if (v8)
  {
    v8 = v145;
  }

  v9 = sub_1000114EC(v8, @"trgDiscAjoinRssiHysterisis");
  if (v9)
  {
    v9 = v145;
  }

  v10 = sub_1000114EC(v9, @"trgDiscNumActiveProbes");
  if (v10)
  {
    v10 = v145;
  }

  v11 = sub_1000114EC(v10, @"trgDiscActiveProbePer");
  if (v11)
  {
    v11 = v145;
  }

  v12 = sub_10001ED70(v11, @"trgDiscCcaSigEnable");
  if (v12)
  {
    v12 = v144;
  }

  v13 = sub_1000114EC(v12, @"trgDiscCcaThres");
  if (v13)
  {
    v13 = v145;
  }

  v14 = sub_1000114EC(v13, @"trgDiscRapidLqmEnable");
  if (v14)
  {
    v14 = v145;
  }

  v15 = sub_10001ED70(v14, @"trgDiscGwArpSigEnable");
  if (v15)
  {
    v15 = v144;
  }

  v16 = sub_10001ED70(v15, @"trgDiscActProbeSigEnable");
  if (v16)
  {
    v16 = v144;
  }

  v17 = sub_10001ED70(v16, @"trgDiscSympSigEnable");
  if (v17)
  {
    v17 = v144;
  }

  v18 = sub_1000114EC(v17, @"trgDiscSympFailCreditThres");
  if (v18)
  {
    v18 = v145;
  }

  v19 = sub_1000114EC(v18, @"trgDiscMode");
  if (v19)
  {
    v19 = v145;
  }

  v20 = sub_10001ED70(v19, @"trgDiscLoggingEnable");
  if (v20)
  {
    v20 = v144;
  }

  v21 = sub_10001ED70(v20, @"trgDiscTxPerSigEnable");
  if (v21)
  {
    v21 = v144;
  }

  ValueIfPresent = sub_10001ED70(v21, @"trgDiscFwTxPerSigEnable");
  if (ValueIfPresent)
  {
    ValueIfPresent = v144;
    if (v144)
    {
      v23 = CFEqual(v144, kCFBooleanTrue);
      v141 = 0;
      value = 0;
      v140 = 0;
      number = 0;
      valuePtr = 0;
      v139 = 0;
      v135 = 0;
      v136 = 0;
      if (!CFDictionaryGetValueIfPresent(a2, @"trgDiscTblIndex", &value) || !CFDictionaryGetValueIfPresent(a2, @"trgDiscFwTxPerThres", &v141) || !CFDictionaryGetValueIfPresent(a2, @"trgDiscMinFwTxFrames", &v140) || !value || !v141 || !v140)
      {
LABEL_129:
        v99 = objc_autoreleasePoolPush();
        v100 = sub_10001D1AC();
        if (v100)
        {
          [v100 WFLog:4 message:{"%s: TrgDiscTxPerThres - Missing Params\n", "WiFiLQAMgrSetTrgDiscParams", v102}];
        }

LABEL_131:
        objc_autoreleasePoolPop(a1);
        return 0;
      }

      CFNumberGetValue(value, kCFNumberIntType, &v139);
      CFNumberGetValue(v141, kCFNumberIntType, &v136 + 4);
      CFNumberGetValue(v140, kCFNumberIntType, &v136);
      if (CFDictionaryGetValueIfPresent(a2, @"trgDiscTxPerThres", &number) && number)
      {
        CFNumberGetValue(number, kCFNumberIntType, &v135 + 4);
      }

      ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"trgDiscMinTxFrames", &valuePtr);
      if (ValueIfPresent)
      {
        ValueIfPresent = valuePtr;
        if (valuePtr)
        {
          ValueIfPresent = CFNumberGetValue(valuePtr, kCFNumberIntType, &v135);
        }
      }

      if (v139 == 2)
      {
        *(a1 + 1168) = v23;
        v36 = SHIDWORD(v136);
        *(a1 + 1172) = v136;
        *&v36 = v36 * 0.01;
        *(a1 + 1176) = LODWORD(v36);
        if (number)
        {
          *(a1 + 1184) = sub_10004B810(0.01, ValueIfPresent, v24, v25, v26, v27, v28, v29, v30, v101, v102, v103, v104, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, SHIDWORD(v135));
        }

        if (valuePtr)
        {
          v32 = 1180;
          goto LABEL_68;
        }
      }

      else if (v139 == 1)
      {
        *(a1 + 1004) = v23;
        v35 = SHIDWORD(v136);
        *(a1 + 1008) = v136;
        *&v35 = v35 * 0.01;
        *(a1 + 1012) = LODWORD(v35);
        if (number)
        {
          *(a1 + 1020) = sub_10004B810(0.01, ValueIfPresent, v24, v25, v26, v27, v28, v29, v30, v101, v102, v103, v104, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, SHIDWORD(v135));
        }

        if (valuePtr)
        {
          v32 = 1016;
          goto LABEL_68;
        }
      }

      else
      {
        if (v139)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = sub_10001D1AC();
          if (v34)
          {
            [v34 WFLog:4 message:{"%s: TrgDiscTxPerThres - Invalid TblIndex <0, %d>\n", "WiFiLQAMgrSetTrgDiscParams", 3}];
          }

          goto LABEL_131;
        }

        *(a1 + 796) = v23;
        v31 = SHIDWORD(v136);
        *(a1 + 800) = v136;
        *&v31 = v31 * 0.01;
        *(a1 + 804) = LODWORD(v31);
        if (number)
        {
          *(a1 + 812) = sub_10004B810(0.01, ValueIfPresent, v24, v25, v26, v27, v28, v29, v30, v101, v102, v103, v104, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, SHIDWORD(v135));
        }

        if (valuePtr)
        {
          v32 = 808;
LABEL_68:
          *(a1 + v32) = v135;
        }
      }
    }
  }

  v37 = sub_10001ED70(ValueIfPresent, @"trgDiscBcnPerSigEnable");
  if (v37)
  {
    if (v144)
    {
      v38 = CFEqual(v144, kCFBooleanTrue);
      v141 = 0;
      value = 0;
      LODWORD(v140) = 0;
      LODWORD(valuePtr) = 0;
      if (CFDictionaryGetValueIfPresent(a2, @"trgDiscBcnPerThres", &value))
      {
        if (CFDictionaryGetValueIfPresent(a2, @"trgDiscMinBcnSched", &v141))
        {
          v37 = value;
          if (value && v141)
          {
            CFNumberGetValue(value, kCFNumberIntType, &v140);
            v39 = CFNumberGetValue(v141, kCFNumberIntType, &valuePtr);
            *(a1 + 876) = v38;
            *(a1 + 880) = valuePtr;
            v40 = v140 * 0.01;
            *(a1 + 884) = v40;
            v41 = sub_1000114EC(v39, @"trgDiscTxPerThres");
            if (v41)
            {
              v41 = v145;
              if (v145)
              {
                v41 = sub_10004B824(v145);
                v42 = v143 * 0.01;
                *(a1 + 892) = v42;
              }
            }

            v37 = sub_1000114EC(v41, @"trgDiscMinTxFrames");
            if (v37)
            {
              v37 = v145;
              if (v145)
              {
                v37 = sub_10004B824(v145);
                *(a1 + 888) = v143;
              }
            }
          }

          goto LABEL_81;
        }
      }
    }

    goto LABEL_129;
  }

LABEL_81:
  if (sub_10001ED70(v37, @"simulateProbeFailureState") && v144)
  {
    CFEqual(v144, kCFBooleanTrue);
    sub_100011300();
    *(a1 + 651) = v43;
  }

  v44 = objc_autoreleasePoolPush();
  v45 = sub_100008340();
  if (v45)
  {
    [v45 WFLog:4 message:{"%s: TrgDiscConfig - RSSI Configs\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a2);
  v46 = objc_autoreleasePoolPush();
  v47 = sub_100008340();
  if (v47)
  {
    [v47 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a2);
  v48 = objc_autoreleasePoolPush();
  v49 = sub_100008340();
  if (v49)
  {
    [v49 WFLog:4 message:{"%s: RssiBrcks: {%2d %2d %2d} GoodRssi: %3d ajRssi: %3d lqaEnable: %1d monitorOnly: %1d wifiFallPref: %1d lqaMode: %1d askToTD: %1d rnf: %d atd: %d\n", "WiFiLQAMgrSetTrgDiscParams", *(a1 + 660), *(a1 + 664), *(a1 + 668), *(a1 + 656), *(a1 + 672), *(a1 + 648), *(a1 + 649), *(a1 + 650), *(a1 + 16), *(a1 + 652), *(a1 + 654), *(a1 + 653)}];
  }

  objc_autoreleasePoolPop(a2);
  v50 = objc_autoreleasePoolPush();
  v51 = sub_100008340();
  if (v51)
  {
    [v51 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a2);
  v52 = objc_autoreleasePoolPush();
  v53 = sub_100008340();
  if (v53)
  {
    [v53 WFLog:4 message:{"%s: TrgDiscConfig - Tx PER Sig\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a2);
  v54 = objc_autoreleasePoolPush();
  v55 = sub_100008340();
  if (v55)
  {
    [v55 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a2);
  v56 = 0;
  v57 = 0;
  do
  {
    v59 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v60 = *(a1 + v56 + 732);
      v61 = (*(a1 + v56 + 740) * 100.0);
      v124 = *(a1 + v56 + 952);
      v127 = *(a1 + v56 + 1116);
      v118 = *(a1 + v56 + 1108);
      v121 = *(a1 + v56 + 744);
      v112 = *(a1 + v56 + 736);
      v115 = *(a1 + v56 + 944);
      v106 = (*(a1 + v56 + 948) * 100.0);
      v109 = (*(a1 + v56 + 1112) * 100.0);
      sub_10001E79C(off_100298C40, v58);
    }

    objc_autoreleasePoolPop(v59);
    ++v57;
    v56 += 16;
  }

  while (v56 != 64);
  v62 = objc_autoreleasePoolPush();
  v63 = sub_100008340();
  if (v63)
  {
    [v63 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d TxPer: {%2.1f %2.1f %2.1f} MinTxFrms: {%2u %2u %2u} RetryFactor: {%2u %2u %2u}\n");
  v64 = objc_autoreleasePoolPush();
  v65 = sub_100008340();
  if (v65)
  {
    [v65 WFLog:4 message:{"%s: TrgDiscConfig - FW Tx PER Sig\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d TxPer: {%2.1f %2.1f %2.1f} MinTxFrms: {%2u %2u %2u} RetryFactor: {%2u %2u %2u}\n");
  v66 = objc_autoreleasePoolPush();
  v67 = sub_100008340();
  if (v67)
  {
    [v67 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d TxPer: {%2.1f %2.1f %2.1f} MinTxFrms: {%2u %2u %2u} RetryFactor: {%2u %2u %2u}\n");
  v68 = 0;
  v69 = 0;
  do
  {
    v71 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v72 = *(a1 + v68 + 796);
      v73 = (*(a1 + v68 + 804) * 100.0);
      v132 = *(a1 + v68 + 1016);
      v134 = *(a1 + v68 + 1180);
      v130 = *(a1 + v68 + 808);
      v125 = (*(a1 + v68 + 1020) * 100.0);
      v128 = (*(a1 + v68 + 1184) * 100.0);
      v122 = (*(a1 + v68 + 812) * 100.0);
      v116 = *(a1 + v68 + 1008);
      v119 = *(a1 + v68 + 1172);
      v113 = *(a1 + v68 + 800);
      v107 = (*(a1 + v68 + 1012) * 100.0);
      v110 = (*(a1 + v68 + 1176) * 100.0);
      sub_10001E79C(off_100298C40, v70);
    }

    objc_autoreleasePoolPop(v71);
    ++v69;
    v68 += 20;
  }

  while (v68 != 80);
  v74 = objc_autoreleasePoolPush();
  v75 = sub_100008340();
  if (v75)
  {
    [v75 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v76 = objc_autoreleasePoolPush();
  v77 = sub_100008340();
  if (v77)
  {
    [v77 WFLog:4 message:{"%s: TrgDiscConfig - BCN PER Sig\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v78 = objc_autoreleasePoolPush();
  v79 = sub_100008340();
  if (v79)
  {
    [v79 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v80 = objc_autoreleasePoolPush();
  if (sub_100008340())
  {
    v81 = *(a1 + 876);
    v82 = sub_10002A180(*(a1 + 884));
    [v84 WFLog:4 message:{"%s: Enable: %1d BcnTxPer: {%2.1f %2.1f %2.1f} MinBcnSched: {%2d %2d %2d} TxPer: {%2.1f %2.1f %2.1f} minHostFrames: {%2u %2u %2u}\n", "WiFiLQAMgrSetTrgDiscParams", v85, *&v82, (*(a1 + 1092) * v83), (*(a1 + 1256) * v83), *(a1 + 880), *(a1 + 1088), *(a1 + 1252), (*(a1 + 892) * v83), (*(a1 + 1100) * v83), (*(a1 + 1264) * v83), *(a1 + 888), *(a1 + 1096), *(a1 + 1260)}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v86 = objc_autoreleasePoolPush();
  v87 = sub_100008340();
  if (v87)
  {
    [v87 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v88 = objc_autoreleasePoolPush();
  v89 = sub_100008340();
  if (v89)
  {
    [v89 WFLog:4 message:{"%s: TrgDiscConfig - Misc Sig\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v90 = objc_autoreleasePoolPush();
  v91 = sub_100008340();
  if (v91)
  {
    [v91 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v92 = objc_autoreleasePoolPush();
  if (sub_100008340())
  {
    v93 = *(a1 + 896);
    v94 = sub_10002A180(*(a1 + 904));
    [v95 WFLog:4 message:{"%s: ActPrEnable: %1d NumActProbes: %3d ActPrTxPer: %2.1f simulateProbeFailureState: %1d sympSigEnable: %1d sympThres: %3d GwArpSigEnable: %1d gwArpTime: %f ccaSigEnable: %1d ccaThres: %3d\n", "WiFiLQAMgrSetTrgDiscParams", v96, *(a1 + 900), *&v94, *(a1 + 651), *(a1 + 928), *(a1 + 932), *(a1 + 912), *(a1 + 920), *(a1 + 936), *(a1 + 937)}];
  }

  objc_autoreleasePoolPop("%s:Indx: %1d Enable: %1d FwTxPer: {%2.1f %2.1f %2.1f} FwMinTxFrms: {%2u %2u %2u} TxPer: {%02.1f %02.1f %02.1f} minHostFrames: {%2u %2u %2u}\n");
  v97 = objc_autoreleasePoolPush();
  v98 = sub_10001D1AC();
  if (v98)
  {
    [v98 WFLog:4 message:{"%s:--------------------------------------------------\n", "WiFiLQAMgrSetTrgDiscParams"}];
  }

  objc_autoreleasePoolPop(a1);
  return 4294963396;
}

__CFDictionary *sub_100140368(const UInt8 *a1)
{
  v2 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v2, v3, v4, v5);
  if (Mutable)
  {
    v7 = CFDataCreate(kCFAllocatorDefault, a1 + 2872, 8);
    if (v7)
    {
      v8 = v7;
      v9 = sub_100007514();
      CFDictionaryAddValue(v9, v10, v11);
      CFRelease(v8);
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a1 + 2880);
      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = v12;
      v14 = sub_100007514();
      CFDictionarySetValue(v14, v15, v16);
      CFRelease(v13);
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a1 + 2888);
      if (!v17)
      {
        goto LABEL_12;
      }

      v18 = v17;
      v19 = sub_100007514();
      CFDictionarySetValue(v19, v20, v21);
      CFRelease(v18);
      v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, a1 + 2892);
      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = v22;
      v24 = sub_100007514();
      CFDictionarySetValue(v24, v25, v26);
      CFRelease(v23);
      v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, a1 + 2901);
      if (!v27)
      {
        goto LABEL_12;
      }

      v28 = v27;
      v29 = sub_100007514();
      CFDictionarySetValue(v29, v30, v31);
      CFRelease(v28);
      v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, a1 + 2902);
      if (!v32)
      {
        goto LABEL_12;
      }

      v33 = v32;
      v34 = sub_100007514();
      CFDictionarySetValue(v34, v35, v36);
      CFRelease(v33);
      v37 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, a1 + 2903);
      if (!v37)
      {
        goto LABEL_12;
      }

      v38 = v37;
      v39 = sub_100007514();
      CFDictionarySetValue(v39, v40, v41);
      CFRelease(v38);
      v42 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a1 + 2896);
      if (v42)
      {
        v43 = v42;
        CFDictionarySetValue(Mutable, @"RSSI", v42);
        CFRelease(v43);
      }

      else
      {
LABEL_12:
        CFRelease(Mutable);
        return 0;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 136315138;
      v46 = "WiFiLQAMgrGetCurLinkHealthDictionary";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: bssid allocation Failed!\n", &v45, 0xCu);
    }
  }

  return Mutable;
}

__CFDictionary *sub_1001405E0(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_10000A540(a1[6], @"BSSID");
    CFDictionaryAddValue(Mutable, @"BSSID", v3);
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a1 + 360);
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = v4;
    v6 = sub_100007514();
    CFDictionarySetValue(v6, v7, v8);
    CFRelease(v5);
    v11 = sub_1000305A0(v9, v10, a1 + 2908);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = sub_100007514();
    CFDictionarySetValue(v13, v14, v15);
    CFRelease(v12);
    v18 = sub_1000305A0(v16, v17, a1 + 2909);
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    v20 = sub_100007514();
    CFDictionarySetValue(v20, v21, v22);
    CFRelease(v19);
    valuePtr = sub_1000333E8(a1[6], @"CHANNEL");
    v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (!v23)
    {
      goto LABEL_14;
    }

    v24 = v23;
    v25 = sub_100007514();
    CFDictionarySetValue(v25, v26, v27);
    CFRelease(v24);
    v28 = sub_10000A540(a1[6], @"CHANNEL_WIDTH");
    CFDictionarySetValue(Mutable, @"CHANNEL_WIDTH", v28);
    v31 = sub_1000305A0(v29, v30, a1 + 2901);
    if (!v31)
    {
      goto LABEL_14;
    }

    v32 = v31;
    v33 = sub_100007514();
    CFDictionarySetValue(v33, v34, v35);
    CFRelease(v32);
    v38 = sub_1000305A0(v36, v37, a1 + 2902);
    if (!v38)
    {
      goto LABEL_14;
    }

    v39 = v38;
    v40 = sub_100007514();
    CFDictionarySetValue(v40, v41, v42);
    CFRelease(v39);
    v45 = sub_1000305A0(v43, v44, a1 + 2903);
    if (!v45)
    {
      goto LABEL_14;
    }

    v46 = v45;
    v47 = sub_100007514();
    CFDictionarySetValue(v47, v48, v49);
    CFRelease(v46);
    v54 = sub_1000333E8(a1[6], @"RSSI");
    v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v54);
    if (v50)
    {
      v51 = v50;
      CFDictionarySetValue(Mutable, @"RSSI", v50);
      CFRelease(v51);
      v52 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Link Health: %@", Mutable}];
      }

      objc_autoreleasePoolPop(v52);
    }

    else
    {
LABEL_14:
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

BOOL sub_100140854(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 48);
    if (v1 && (v2 = sub_10000A9D0(v1)) != 0)
    {
      return CFArrayGetCount(v2) > 10;
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no known BSS for this network, assuming small environment to start", "__WiFiLQAMgrIsLargeNetworkEnvironment"}];
      }

      objc_autoreleasePoolPop(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001408E0(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  if (!a1 || !*(a1 + 3257))
  {
    return 0;
  }

  if (![+[WiFiUserInteractionMonitor isRealTimeAppActive] sharedInstance]
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"%s: No real time App", "__WiFiLQAMgrCheckForStalledDataInLQMStats", v27}];
    }

    goto LABEL_36;
  }

  if (!*(a1 + 2960) && !*(a1 + 3240))
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"%s: No real time traffic", "__WiFiLQAMgrCheckForStalledDataInLQMStats", v27}];
    }

    goto LABEL_36;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - *(a1 + 3248);
  if (v5 >= 6.0)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 3232));
  if (Count < a2)
  {
    v25 = Count;
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"Insufficient samples for data stall evaluation samples %d count %ld", a2, v25}];
    }

LABEL_36:
    objc_autoreleasePoolPop(v24);
    return 0;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3232), v8);
    if (!ValueAtIndex)
    {
      break;
    }

    v10 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, @"LQMTIMESTAMP");
    if (!Value)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = sub_1000113EC();
      if (v21)
      {
        [v21 WFLog:4 message:{"%s: LQAManager: lqmTimeStampRef is NULL!", "__WiFiLQAMgrCheckForStalledDataInLQMStats", v27, v28}];
      }

      goto LABEL_23;
    }

    v12 = Current - CFDateGetAbsoluteTime(Value);
    if (v12 > v5)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = sub_1000113EC();
      if (v17)
      {
        [v17 WFLog:4 message:{"%s: LQAManager: LQM data before roam!!. Time since LQM %0.1f time since roam %0.1f", "__WiFiLQAMgrCheckForStalledDataInLQMStats", *&v12, *&v5}];
      }

      goto LABEL_23;
    }

    v13 = CFDictionaryGetValue(v10, @"RXFRAMES");
    if (!v13)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = sub_1000113EC();
      if (v23)
      {
        [v23 WFLog:4 message:{"%s: LQAManager: rxframesRef is NULL!", "__WiFiLQAMgrCheckForStalledDataInLQMStats", v27, v28}];
      }

      goto LABEL_23;
    }

    CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"%s: LQAManager: RX frames %d time since LQM %.1f: Time since roam %.1f ", "__WiFiLQAMgrCheckForStalledDataInLQMStats", valuePtr, *&v12, *&v5}];
    }

    objc_autoreleasePoolPop(v14);
    if (valuePtr <= 10)
    {
      v15 = v8 + 1;
      if (a2 - 1 == v8)
      {
        v7 = 1;
      }

      ++v8;
      if ((a2 & ~(a2 >> 31)) != v15)
      {
        continue;
      }
    }

    return v7;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = sub_1000113EC();
  if (v19)
  {
    [v19 WFLog:4 message:{"%s: LQAManager: paramDict is NULL!", "__WiFiLQAMgrCheckForStalledDataInLQMStats", v27, v28}];
  }

LABEL_23:
  objc_autoreleasePoolPop(a1);
  return v7;
}

uint64_t sub_100140BCC(CFTypeRef cf, void *a2)
{
  if (&_managed_event_fetch)
  {
    if (cf)
    {
      v3 = a2;
      CFRetain(cf);
      sub_10000834C();
      v4 = managed_event_fetch();
      goto LABEL_4;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = sub_10001D1AC();
    if (v9)
    {
      [v9 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrFetchSymptomsViewOfLink"}];
    }

    objc_autoreleasePoolPop(v2);
  }

  v4 = 0;
LABEL_4:
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100008340();
  if (v6)
  {
    [v6 WFLog:3 message:{"%s Symptom's view of the link query completed\n", "__WiFiLQAMgrFetchSymptomsViewOfLink"}];
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

void sub_100140CD8(uint64_t a1)
{
  v3 = "__WiFiLQAMgrSymptomsInputCallBack";
  if (!a1)
  {
    v109 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrSymptomsInputCallBack"}];
    }

    goto LABEL_190;
  }

  if (*(a1 + 545) && (*(a1 + 546) || !*(a1 + 547)))
  {
    sub_10013F368(a1);
  }

  if (*(a1 + 208) != 1)
  {
    if (!*(a1 + 544))
    {
LABEL_191:
      Mutable = 0;
      v120 = 0;
      v121 = 0;
      LODWORD(v7) = 0;
      v122 = 0;
      v34 = 0;
      v15 = 0;
      v13 = 0;
      v1 = 0;
      goto LABEL_111;
    }

    v4 = *(a1 + 20);
    if (v4 == 1)
    {
      v109 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Trigger Disconnect in GoodLinkState", "__WiFiLQAMgrSymptomsInputCallBack"}];
      }
    }

    else
    {
      if (v4)
      {
        v5 = sub_100008684();
        v7 = sub_100049734(v5, v6, 0);
        v8 = CFAbsoluteTimeGetCurrent() - *(a1 + 3224);
        v9 = objc_autoreleasePoolPush();
        v10 = sub_1000113E0();
        if (v10)
        {
          [v10 WFLog:3 message:{"%s Time taken to invoke symptoms callback %f seconds", "__WiFiLQAMgrSymptomsInputCallBack", *&v8}];
        }

        objc_autoreleasePoolPop(v1);
        p_cache = &OBJC_METACLASS___WiFiUserNotificationManager.cache;
        if (*(a1 + 653))
        {
          if (*(a1 + 654) && *(a1 + 2804) > *(a1 + 668))
          {
            v12 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]|| *(a1 + 2960) != 0;
            if (*(a1 + 2832))
            {
              v16 = 0;
              v15 = 1;
            }

            else
            {
              v16 = 0;
              v17 = *(a1 + 504);
              v15 = 1;
              v18 = v17 < 0x1A || v17 == 0xFFFF;
              if (!v18 && !v7)
              {
                if (!*(a1 + 3257) || *(a1 + 3258) != 1 || sub_10000A7CC(*(a1 + 48)) || *(a1 + 2842) || (*(a1 + 504) == 50 ? (v19 = v8 > 5.0) : (v19 = 1), v19))
                {
                  v20 = objc_autoreleasePoolPush();
                  v21 = sub_1000113E0();
                  if (v21)
                  {
                    [v21 WFLog:4 message:{"%s Symptoms overriding TrgDisc decision - DataStallScore %d", "__WiFiLQAMgrSymptomsInputCallBack", *(a1 + 504)}];
                  }

                  v15 = 0;
                  v16 = 1;
                }

                else
                {
                  v107 = objc_autoreleasePoolPush();
                  v108 = sub_1000113E0();
                  if (v108)
                  {
                    [v108 WFLog:4 message:{"%s Not overriding TD for default data stall score %d", "__WiFiLQAMgrSymptomsInputCallBack", *(a1 + 504)}];
                  }

                  v16 = 0;
                }

                objc_autoreleasePoolPop(v1);
              }
            }

            v122 = v16;
            v22 = sub_100011548();
            v13 = 1;
            if (v22 >= 0.51 && v22 <= 1.01)
            {
              if (*(a1 + 3257) && v12)
              {
                v14 = 0;
              }

              else
              {
                v23 = objc_autoreleasePoolPush();
                if (sub_1000113E0())
                {
                  v24 = sub_100011548();
                  [v25 WFLog:4 message:{"%s Symptoms overriding TrgDisc decision - AppPolicyScore %f realtime App %d", "__WiFiLQAMgrSymptomsInputCallBack", *&v24, v12}];
                }

                objc_autoreleasePoolPop(v1);
                v15 = 0;
                v14 = 1;
              }
            }

            v3 = "__WiFiLQAMgrSymptomsInputCallBack";
          }

          else
          {
            v13 = 0;
            v122 = 0;
            v14 = 0;
            v15 = 1;
          }

          if (*(a1 + 653))
          {
            v121 = v14;
            v26 = *(a1 + 654);
            v27 = *(a1 + 654) != 0;
            goto LABEL_52;
          }
        }

        else
        {
          v14 = 0;
          v122 = 0;
          v13 = 0;
          v15 = 1;
        }

        v121 = v14;
        v27 = 0;
        v26 = *(a1 + 654);
LABEL_52:
        LOBYTE(v120) = v26 != 0;
        v28 = *(a1 + 2816);
        sub_1000487BC(a1);
        if (*(a1 + 653))
        {
          v29 = (*(a1 + 654) != 0) << 13;
        }

        *(a1 + 504);
        v31 = sub_100011548();
        if (v31 > 1.01 || v31 < 0.01)
        {
          v1 = v30;
        }

        else
        {
          v1 = v30 & 0xFFFFEFFF;
        }

        if ([+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
        {
          v33 = v1;
        }

        else
        {
          v33 = v1 & 0xFFFF7FFE;
        }

        HIDWORD(v120) = v27;
        if (*(a1 + 655) && *(a1 + 653) && *(a1 + 654) && ![+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
        {
          v41 = objc_autoreleasePoolPush();
          v42 = sub_1000113E0();
          if (v42)
          {
            [v42 WFLog:4 message:{"%s CellData setting overriding TrgDisc decision", "__WiFiLQAMgrSymptomsInputCallBack"}];
          }

          objc_autoreleasePoolPop(v1);
          v15 = 0;
          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        if (sub_1000648B8(*(a1 + 32)) == 1 && (*(a1 + 224) == 1 || !*(a1 + 653) || !*(a1 + 654)))
        {
          v117 = v33;
          p_cache = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s Manual Join: User Interactive or RNF disabled, overriding TrgDisc decision", "__WiFiLQAMgrSymptomsInputCallBack"}];
          }

          v1 = 0;
          v13 = 0;
        }

        else
        {
          v35 = v13 ^ 1;
          if (!v15)
          {
            v35 = 1;
          }

          if (v35)
          {
            if (v7 || !v15)
            {
              if (!v15)
              {
                sub_10000DAD8();
                goto LABEL_108;
              }
            }

            else if (*(a1 + 2804) > *(a1 + 664) - 2)
            {
              sub_10000DAD8();
              v39 = 1;
              v15 = 1;
              goto LABEL_109;
            }
          }

          else
          {
            v36 = objc_autoreleasePoolPush();
            if (sub_1000113E0())
            {
              v37 = sub_100011548();
              [v38 WFLog:4 message:{"%s Proceeding with Trigger Discconect - DataStallScore %d AppPolicyScore %f", "__WiFiLQAMgrSymptomsInputCallBack", *(a1 + 504), *&v37}];
            }

            objc_autoreleasePoolPop(v1);
          }

          if (sub_1000487BC(a1) || *(a1 + 3259))
          {
            if (*(a1 + 649))
            {
              sub_10000DAD8();
LABEL_107:
              v15 = 0;
LABEL_108:
              v39 = 1;
              goto LABEL_109;
            }

            if (!*(a1 + 652))
            {
              v117 = v33;
              v39 = 0;
              v1 = 0;
              v13 = 0;
              v15 = 0;
              LODWORD(p_cache) = 1;
              LOBYTE(v3) = 1;
              goto LABEL_109;
            }

            if (!*(a1 + 1304))
            {
              if (*(a1 + 1296))
              {
                v39 = 0;
                Mutable = 0;
                v15 = 0;
                v13 = 0;
                v1 = 0;
LABEL_112:
                v44 = +[WiFiUsageMonitor sharedInstance];
                v45 = 256;
                if ((v120 & 1) == 0)
                {
                  v45 = 0;
                }

                [(WiFiUsageMonitor *)v44 setTdLogic_execState:(v15 << 48) | (v13 << 56) | (v34 << 40) | (v121 << 32) | (v122 << 24) | (v7 << 16) | v45 | HIDWORD(v120) forInterface:v1, *(a1 + 40)];
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                v46 = v39 ^ 1;
                if (!a1)
                {
                  v46 = 1;
                }

                if ((v46 & 1) == 0)
                {
                  *(a1 + 169) = 0;
                }

                goto LABEL_120;
              }

              v117 = v33;
              v1 = 0;
              v39 = 0;
              if (!sub_1001418B8(a1))
              {
                Mutable = 0;
                v15 = 0;
                v13 = 0;
                goto LABEL_112;
              }

              LODWORD(p_cache) = 1;
              LOBYTE(v3) = 1;
              v13 = 0;
              v15 = 0;
LABEL_109:
              v43 = sub_100141ADC(a1);
              if (v43 == 255)
              {
                Mutable = 0;
                if (v39)
                {
LABEL_111:
                  v39 = 1;
                  goto LABEL_112;
                }
              }

              else
              {
                v116 = v43;
                v57 = a1 + 144 * v43;
                *(v57 + 1357) = v3;
                *(v57 + 1368) = *(a1 + 500);
                *(v57 + 1376) = *(a1 + 520);
                *(v57 + 1384) = *(a1 + 524);
                *(v57 + 1380) = *(a1 + 528);
                *(v57 + 1408) = sub_100011548();
                *(v57 + 1424) = *(a1 + 504);
                *(v57 + 1364) = v58;
                v59 = p_cache | v117 & 0xFFFFFFFE;
                *(v57 + 1400) = v59;
                Current = CFAbsoluteTimeGetCurrent();
                v61 = 0.0;
                if (*(a1 + 2768) == 1)
                {
                  v61 = Current - *(a1 + 2776);
                }

                v114 = v59;
                if (v39)
                {
                  Mutable = 0;
                }

                else
                {
                  sub_10004B86C();
                  if (!v18)
                  {
                    *(v57 + 1440) = (CFAbsoluteTimeGetCurrent() - *(a1 + 144));
                  }

                  if (*(a1 + 128) != 0.0)
                  {
                    *(v57 + 1432) = (CFAbsoluteTimeGetCurrent() - *(a1 + 128));
                  }

                  v62 = sub_1000113AC();
                  Mutable = CFStringCreateMutable(v62, v63);
                  v64 = sub_10000A878(*(a1 + 48));
                  CFStringAppendFormat(Mutable, 0, @"Your WiFi %@ was automatically disconnected due to poor connectivity\n", v64);
                  v65 = sub_1000113AC();
                  v67 = CFStringCreateMutable(v65, v66);
                  if (v67)
                  {
                    v68 = v67;
                    CFStringAppendFormat(v67, 0, @"Trigger Disconnect with signatures - ");
                    if ((v117 & 2) != 0)
                    {
                      v69 = sub_1000113AC();
                      CFStringAppendFormat(v69, v70, v71);
                    }

                    if ((v117 & 4) != 0)
                    {
                      v72 = sub_1000113AC();
                      CFStringAppendFormat(v72, v73, v74);
                    }

                    if ((v117 & 8) != 0)
                    {
                      v75 = sub_1000113AC();
                      CFStringAppendFormat(v75, v76, v77);
                    }

                    if ((v117 & 0x10) != 0)
                    {
                      v78 = sub_1000113AC();
                      CFStringAppendFormat(v78, v79, v80);
                    }

                    if ((v117 & 0x40) != 0)
                    {
                      v81 = sub_1000113AC();
                      CFStringAppendFormat(v81, v82, v83);
                    }

                    if ((v117 & 0x80) != 0)
                    {
                      v84 = sub_1000113AC();
                      CFStringAppendFormat(v84, v85, v86);
                    }

                    if ((v117 & 0x100) != 0)
                    {
                      v87 = sub_1000113AC();
                      CFStringAppendFormat(v87, v88, v89);
                    }

                    if ((v117 & 0x200) != 0)
                    {
                      v90 = sub_1000113AC();
                      CFStringAppendFormat(v90, v91, v92);
                    }

                    if ((v117 & 0x400) != 0)
                    {
                      v93 = sub_1000113AC();
                      CFStringAppendFormat(v93, v94, v95);
                    }

                    if ((v117 & 0x20) != 0)
                    {
                      v96 = sub_1000113AC();
                      CFStringAppendFormat(v96, v97, v98);
                    }

                    if ((v117 & 0x200000) != 0)
                    {
                      v99 = sub_1000113AC();
                      CFStringAppendFormat(v99, v100, v101);
                    }

                    if ((v117 & 0x800000) != 0)
                    {
                      v102 = sub_1000113AC();
                      CFStringAppendFormat(v102, v103, v104);
                    }

                    v105 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      v118 = v105;
                      [off_100298C40 WFLog:3 message:{"%@", v68}];
                      v105 = v118;
                    }

                    objc_autoreleasePoolPop(v105);
                    CFRelease(v68);
                  }
                }

                v106 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v119 = v106;
                  v115 = (v57 + 1320);
                  [off_100298C40 WFLog:4 message:{"%s: TrgDiscStatus %u [Rssi %d TxFrms %ld TxFail %ld TxRet %ld fwFrms %ld fwFail %ld fwRtry %ld RxFrms %ld BcnSch %ld BcnRx %ld Awd %ld UnGw %f FgApp %ld Walkout %d possibleRoam %d DataStallScore %ld DeltaTime %fsecs TD1 %d FastDisconnect %d]", "__WiFiLQAMgrSymptomsInputCallBack", v114, *(v115 + 36), *v115, v115[1], v115[2], v115[5], v115[6], v115[7], v115[8], v115[3], v115[4], *(v115 + 52), *&v61, v115[11], *(a1 + 273), *(a1 + 272), *(a1 + 504), *(a1 + 280), *(a1 + 2832), v7}];
                  v106 = v119;
                }

                objc_autoreleasePoolPop(v106);
                sub_100141BA4(a1, v116);
                if (v39)
                {
                  goto LABEL_111;
                }
              }

              sub_10013D1C4(a1);
              goto LABEL_111;
            }

            v117 = v33;
            p_cache = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s Suppress TrgDisc decision with User's previous input", "__WiFiLQAMgrSymptomsInputCallBack"}];
            }

            v13 = 0;
            v1 = 1;
          }

          else
          {
            v117 = v33;
            p_cache = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s Foreground Networking App not present & media player not running. Overriding TrgDisc decision", "__WiFiLQAMgrSymptomsInputCallBack"}];
            }

            v1 = 0;
            v13 = 1;
          }
        }

        objc_autoreleasePoolPop(p_cache);
        LODWORD(p_cache) = 0;
        LOBYTE(v3) = 0;
        goto LABEL_107;
      }

      v109 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Trigger Disconnect in UnassociatedState", "__WiFiLQAMgrSymptomsInputCallBack"}];
      }
    }

LABEL_190:
    objc_autoreleasePoolPop(v109);
    goto LABEL_191;
  }

LABEL_120:
  if (!*(a1 + 208))
  {
    goto LABEL_128;
  }

  *(a1 + 208) = 0;
  if (*(a1 + 2804) > -66)
  {
    goto LABEL_128;
  }

  if (!*(a1 + 2842))
  {
    if (!*(a1 + 504))
    {
      v49 = sub_1000487BC(a1);
      v50 = objc_autoreleasePoolPush();
      v51 = sub_1000113E0();
      if (v51)
      {
        v52 = "Yes";
        if (!v49)
        {
          v52 = "No";
        }

        [v51 WFLog:4 message:{"%s: SymptomsScore indicates WiFi data stall. FG app:%s", "__WiFiLQAMgrCheckReassocRequiredSymptomsScoreBased", v52}];
      }

      objc_autoreleasePoolPop(v1);
      if (v49)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = sub_1000113EC();
        if (v54)
        {
          [v54 WFLog:3 message:{"%s: Attempting host triggered roam based on SymptomsScore", "__WiFiLQAMgrCheckReassocRequiredSymptomsScoreBased"}];
        }

        goto LABEL_136;
      }
    }

    if (sub_10004928C(a1))
    {
      v47 = objc_autoreleasePoolPush();
      v48 = sub_1000113EC();
      if (v48)
      {
        [v48 WFLog:4 message:{"%s: Attempting host triggered roam based on MacStats", "__WiFiLQAMgrCheckReassocRequiredSymptomsScoreBased"}];
      }

LABEL_136:
      objc_autoreleasePoolPop(a1);
      +[WiFiRoamManager sharedWiFiRoamManager];
      sub_10004B84C();

      [v55 roamWithReason:? bandPreference:?];
      return;
    }

LABEL_128:
    sub_10004B84C();
    return;
  }

  v110 = objc_autoreleasePoolPush();
  v111 = sub_1000113EC();
  if (v111)
  {
    [v111 WFLog:4 message:{"%s: isAwdlRealTimeModeActive", "__WiFiLQAMgrCheckReassocRequiredSymptomsScoreBased"}];
  }

  sub_10004B84C();

  objc_autoreleasePoolPop(v112);
}