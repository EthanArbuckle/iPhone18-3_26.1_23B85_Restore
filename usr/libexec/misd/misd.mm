void sub_100000FE0(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    sub_100001108();
    xpc_connection_set_target_queue(a2, qword_100034BD8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000011E4;
    handler[3] = &unk_100030DC0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(a2, _xpc_error_key_description);
    sub_100001108();
  }

  else
  {

    sub_100001108();
  }
}

uint64_t sub_100001108()
{
  result = sub_100001170();
  if (result)
  {
    return os_log_with_args();
  }

  return result;
}

BOOL sub_100001170()
{
  if (qword_100034CB8)
  {
    return 1;
  }

  qword_100034CB8 = os_log_create("com.apple.MobileInternetSharing", "daemon");
  if (qword_100034CB8)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100020A80(&v1);
    return v1;
  }

  return result;
}

void sub_1000011E4(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_error)
    {
      v19 = *(a1 + 32);
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      sub_100001108();
      v7 = *(a1 + 32);
      v8 = qword_100034C18;
      if (qword_100034C18)
      {
        do
        {
          v9 = *v8;
          if (*(v8[1] + 8) == v7)
          {
            sub_100001108();
            sub_10000267C(v8);
          }

          v8 = v9;
        }

        while (v9);
      }

      xpc_connection_cancel(v7);
    }

    else
    {

      sub_100001108();
    }

    return;
  }

  if (xpc_dictionary_get_uint64(object, off_100034860[0]) == 1000)
  {
    v5 = *(a1 + 32);
    memset(buffer, 0, 32);
    xpc_connection_get_audit_token();
    if (sub_10000177C())
    {
      v6 = 1;
    }

    else
    {
      if (!sub_10000177C())
      {
        sub_100001108();
        pid = xpc_connection_get_pid(*(a1 + 32));
        proc_name(pid, buffer, 0x40u);
        sub_100001108();
        reply = xpc_dictionary_create_reply(object);
        if (reply)
        {
          v18 = reply;
          xpc_dictionary_set_uint64(reply, off_1000348C8[0], 0x7D2uLL);
          sub_100001CD4(*(a1 + 32), v18);
          xpc_release(v18);
          return;
        }

        goto LABEL_58;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 32);
  v11 = xpc_connection_copy_entitlement_value();
  if (v11)
  {
    v12 = v11;
    if (xpc_get_type(v11) == &_xpc_type_BOOL && xpc_BOOL_get_value(v12))
    {
      v6 |= 4u;
    }

    xpc_release(v12);
  }

  v13 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(object, off_100034860[0]);
  if (dword_100034BD0 || byte_100034BE8)
  {
    v15 = xpc_connection_get_pid(v13);
    proc_name(v15, buffer, 0x40u);
    sub_100008768(uint64);
    sub_100001108();
  }

  switch(uint64)
  {
    case 0x3E8uLL:
      sub_1000017EC(v13, object, v6);
      break;
    case 0x3E9uLL:
      sub_1000099B4(v13, object);
      break;
    case 0x3EAuLL:
      sub_10000A900(v13, object);
      break;
    case 0x3EBuLL:
      sub_100001D48(v13, object);
      break;
    case 0x3ECuLL:
      sub_10000BE68(v13, object);
      break;
    case 0x3EDuLL:
      sub_10000C0A0(v13, object);
      break;
    case 0x3EEuLL:
      sub_10000C1B8(v13, object);
      break;
    case 0x3EFuLL:
      sub_10000C330(v13, object);
      break;
    case 0x3F0uLL:
      sub_10000C3F4(v13, object);
      break;
    case 0x3F1uLL:
      sub_10000C54C(v13, object);
      break;
    case 0x3F2uLL:
      sub_10000C6A4(v13, object);
      break;
    case 0x3F3uLL:
      sub_10000C7AC(v13, object);
      break;
    case 0x3F4uLL:
      sub_1000025BC(v13, object);
      break;
    case 0x3F5uLL:
      sub_10000BF70(v13, object);
      break;
    case 0x3F6uLL:
      sub_10000B050(v13, object);
      break;
    case 0x3F7uLL:
      sub_10000C908(v13, object);
      break;
    case 0x3F8uLL:
      sub_10000CDB8(v13, object);
      break;
    case 0x3F9uLL:
      sub_10000CFFC(v13, object);
      break;
    case 0x3FAuLL:
      sub_10000D32C(v13, object);
      break;
    case 0x3FBuLL:
      sub_10000D694(v13, object);
      break;
    case 0x3FFuLL:
      sub_10000BBE4(v13, object);
      break;
    case 0x400uLL:
      sub_10000A9F8(v13, object);
      break;
    case 0x401uLL:
      sub_10000AE40(v13, object);
      break;
    default:
      sub_100001108();
      break;
  }

  if (dword_100034BD0 || byte_100034BE8)
  {
    sub_100008768(uint64);
LABEL_58:
    sub_100001108();
  }
}

BOOL sub_10000177C()
{
  v0 = xpc_copy_entitlement_for_token();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = xpc_get_type(v0) == &_xpc_type_BOOL && xpc_BOOL_get_value(v1);
  xpc_release(v1);
  return v2;
}

uint64_t sub_1000017EC(_xpc_connection_s *a1, xpc_object_t original, int a3)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v7 = reply;
    v8 = sub_100001920(a1);
    if (v8 || (v8 = sub_100001968(a1, original)) != 0)
    {
      v9 = v8;
      v10 = sub_100001AD0(a1, v8, a3);
      if (v10)
      {
        v11 = v10;
        xpc_dictionary_set_uint64(v7, off_1000348C8[0], 0x7D1uLL);
        xpc_dictionary_set_string(v7, off_100034868[0], v11 + 48);
        v12 = 1;
LABEL_10:
        sub_100001CD4(a1, v7);
        xpc_release(v7);
        return v12;
      }

      sub_100001108();
      sub_10000286C(v9);
    }

    else
    {
      sub_100001108();
    }

    xpc_dictionary_set_uint64(v7, off_1000348C8[0], 0x7D0uLL);
    v12 = 0;
    goto LABEL_10;
  }

  sub_100001108();
  return 0;
}

uint64_t *sub_100001920(uint64_t a1)
{
  result = &qword_100034C10;
  while (1)
  {
    result = *result;
    if (!result)
    {
      break;
    }

    if (result[1] == a1)
    {
      v3 = *(result + 6);
      if (!v3)
      {
        sub_100020DDC();
      }

      *(result + 6) = v3 + 1;
      return result;
    }
  }

  return result;
}

void *sub_100001968(uint64_t a1, void *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0u;
    *(v4 + 1) = 0u;
    v4[1] = a1;
    *(v4 + 6) = 1;
    value = xpc_dictionary_get_value(a2, off_1000348C0[0]);
    if (value && (v7 = xpc_connection_create_from_endpoint(value)) != 0)
    {
      v8 = v7;
      v5[2] = v7;
      xpc_connection_set_target_queue(v7, qword_100034BD8);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100002950;
      handler[3] = &unk_100030F70;
      handler[4] = v8;
      handler[5] = a1;
      handler[6] = v5;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_resume(v8);
      *v5 = qword_100034C10;
      qword_100034C10 = v5;
      if (__CFADD__(dword_100034CF0++, 1))
      {
        sub_100020E60();
      }
    }

    else
    {
      sub_100001108();
      free(v5);
      return 0;
    }
  }

  else
  {
    sub_100001108();
  }

  return v5;
}

char *sub_100001AD0(_xpc_connection_s *a1, uint64_t a2, int a3)
{
  pid = xpc_connection_get_pid(a1);
  v7 = malloc_type_malloc(0x1D0uLL, 0x1020040A43D5934uLL);
  v8 = v7;
  if (v7)
  {
    *(v7 + 26) = 0u;
    *(v7 + 27) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 25) = 0u;
    *(v7 + 22) = 0u;
    *(v7 + 23) = 0u;
    *(v7 + 20) = 0u;
    *(v7 + 21) = 0u;
    *(v7 + 18) = 0u;
    *(v7 + 19) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 17) = 0u;
    *(v7 + 14) = 0u;
    *(v7 + 15) = 0u;
    *(v7 + 12) = 0u;
    *(v7 + 13) = 0u;
    *(v7 + 10) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 8) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 6) = 0u;
    *(v7 + 7) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 5) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    *(v7 + 444) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 1) = a2;
    *(v7 + 115) = a3;
    *(v7 + 76) = pid;
    proc_name(pid, v7 + 308, 0x40u);
    snprintf(v8 + 48, 0x100uLL, "%s.%p-%p-%d", "com.apple.MobileInternetSharing", v8, a1, dword_100034CF4);
    v13 = *(a2 + 16);
    sub_100001108();
    v9 = qword_100034C18;
    if (qword_100034C18)
    {
      v10 = qword_100034C18;
      while (strncmp(v8 + 48, (v10 + 48), 0x100uLL) || *(*(v10 + 8) + 8) != a1)
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_100001108();
      free(v8);
      return 0;
    }

    else
    {
LABEL_7:
      v11 = dword_100034CF4++;
      if (v11 == -1)
      {
        sub_100020EE4();
      }

      *v8 = v9;
      qword_100034C18 = v8;
      if (!v11)
      {
        sub_100001CA0();
        if (qword_100034CF8)
        {
          sub_100020EB8();
        }

        qword_100034CF8 = os_transaction_create();
      }
    }
  }

  return v8;
}

uint64_t sub_100001CA0()
{
  if (qword_100034CC0)
  {
    sub_100020AE8();
  }

  result = os_nexus_controller_create();
  qword_100034CC0 = result;
  return result;
}

void sub_100001CD4(_xpc_connection_s *a1, xpc_object_t object)
{
  v4 = xpc_copy_description(object);
  sub_100001108();
  free(v4);

  xpc_connection_send_message(a1, object);
}

BOOL sub_100001D48(_xpc_connection_s *a1, xpc_object_t original)
{
  value = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    v7 = v6 != 0;
    if (v6)
    {
      sub_100001ED8(&value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_1000348E8[0], HIDWORD(value));
      v8 = off_1000348F8[0];
      v9 = value;
      v10 = v5;
    }

    else
    {
      sub_100001108();
      v8 = off_1000348C8[0];
      v10 = v5;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v10, v8, v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v7;
}

uint64_t sub_100001E50(void *a1, uint64_t a2)
{
  string = xpc_dictionary_get_string(a1, off_100034868[0]);
  v4 = qword_100034C18;
  if (string)
  {
    v5 = qword_100034C18 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = string;
  do
  {
    if (!strncmp(v6, (v4 + 48), 0x100uLL) && *(*(v4 + 8) + 8) == a2)
    {
      break;
    }

    v4 = *v4;
  }

  while (v4);
  return v4;
}

uint64_t sub_100001ED8(_DWORD *a1, _DWORD *a2)
{
  result = sub_100001F40(0, 0, qword_100035150, dword_100035158, dword_10003515C, 0, 0);
  if (a1)
  {
    *a1 = qword_100035150;
  }

  if (a2)
  {
    *a2 = dword_100035158;
  }

  return result;
}

uint64_t sub_100001F40(int a1, char a2, int a3, int a4, int a5, _DWORD *a6, int a7)
{
  *v37 = 0;
  v36 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  sub_100001108();
  v12 = sub_100013B38(&v37[1], v37, &v36);
  sub_100001108();
  if (qword_100035150 == 1021)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = dword_100035158 == 2 || dword_100035158 == 4;
  v15 = !v14;
  if (v12 || (v13 & v15) != 0)
  {
    v17 = 1020;
    if (qword_100035150 != 1020)
    {
      sub_100001108();
      LODWORD(qword_100035150) = 1020;
    }

    v16 = 45;
  }

  else if (qword_100035150 == 1020)
  {
    if (v37[0] == 1 && v36 == 1)
    {
      LODWORD(qword_100035150) = dword_10003514C;
      v16 = 45;
    }

    else
    {
      LODWORD(qword_100035150) = 1021;
      dword_100035158 = 3;
      v16 = 80;
    }

    sub_100001108();
    v17 = qword_100035150;
  }

  else
  {
    v16 = 45;
    v17 = qword_100035150;
  }

  byte_100035181 = v37[1] ^ 1;
  byte_100035182 = v36 ^ 1;
  if (v17 - 1024 <= 0xFFFFFFFC)
  {
    v14 = v12 == 0;
    v18 = v16;
    v19 = v14;
    sub_100001108();
    if (byte_100034BB1)
    {
      v20 = 0;
    }

    else
    {
      v20 = a1;
    }

    v14 = (v19 & v20) == 0;
    v16 = v18;
    if (v14)
    {
      v21 = 1020;
    }

    else
    {
      v21 = 1021;
    }

    LODWORD(qword_100035150) = v21;
    dword_100035158 = 0;
    sub_100001108();
    v17 = qword_100035150;
  }

  if (v17 >= 0x3FE)
  {
    v22 = HIDWORD(qword_100035150);
    v23 = HIDWORD(qword_100035150);
    v32 = a4;
    v33 = a3;
    if ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1)
    {
      if (HIDWORD(qword_100035150) == 1020)
      {
        HIDWORD(qword_100035150) = v17;
        v23 = v17;
      }

      v24 = 1022;
      LODWORD(qword_100035150) = 1022;
      dword_100035158 = 4;
    }

    else
    {
      if (HIDWORD(qword_100035150) >= 0x3FE)
      {
        LODWORD(qword_100035150) = HIDWORD(qword_100035150);
        *(&qword_100035150 + 4) = 1020;
        v25 = 1020;
LABEL_53:
        if ((v22 - 1020) <= 3)
        {
          v27 = (&off_100031040)[v22 - 1020];
        }

        if ((v25 - 1020) <= 3)
        {
          v28 = (&off_100031040)[v25 - 1020];
        }

        sub_100017498(dword_100035158);
        sub_100001108();
        v17 = qword_100035150;
LABEL_58:
        a4 = v32;
        a3 = v33;
        if (v17 == 1023)
        {
          sub_100001108();
          LODWORD(v26) = 0;
          goto LABEL_75;
        }

        v30 = (a2 & 4) == 0 || dword_100035158 == 4;
        if (v17 != 1022)
        {
          v30 = 1;
        }

        if (v30)
        {
          LODWORD(v26) = v16;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        if (v17 == 1022 && v30)
        {
          sub_100001108();
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      v24 = v17;
    }

    v25 = v23;
    if (v17 == v24 && v22 == v23)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (v17 != 1021)
  {
LABEL_74:
    LODWORD(v26) = v16;
    goto LABEL_75;
  }

  LODWORD(v26) = v16;
  if (a1)
  {
    if (dword_100035158 == 3)
    {
      v26 = 80;
    }

    else
    {
      v26 = 36;
    }

    dword_100035158 = sub_100017404(v26);
  }

LABEL_75:
  if (a7 && qword_100035150 >= 0x3FE)
  {
    dword_10003514C = qword_100035150;
  }

  dword_10003515C = v26;
  if (v26 != a5 || qword_100035150 != a3 || dword_100035158 != a4)
  {
    if (qword_100035150 != a3)
    {
      sub_1000152B0();
    }

    sub_10001536C(qword_100034D30);
    if (a6)
    {
      *a6 = 1;
    }
  }

  if (v26)
  {
    return 45;
  }

  else
  {
    return 0;
  }
}

id sub_100002478(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 isDataPlanEnabled:a1];
}

id sub_10000257C(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 getTetheringStatus:a1];
}

BOOL sub_1000025BC(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    sub_100002648(original, a1);
    xpc_dictionary_set_uint64(reply, off_1000348C8[0], 0x7D1uLL);
    sub_100001CD4(a1, reply);
    xpc_release(reply);
  }

  else
  {
    sub_100001108();
  }

  return reply != 0;
}

void sub_100002648(void *a1, uint64_t a2)
{
  v2 = sub_100001E50(a1, a2);
  if (v2)
  {

    sub_10000267C(v2);
  }
}

void sub_10000267C(uint64_t *a1)
{
  v2 = &qword_100034C18;
  for (i = qword_100034C18; i != a1; i = *i)
  {
    v2 = i;
  }

  *v2 = *i;
  if (!dword_100034CF4)
  {
    sub_100020F3C();
  }

  v4 = 0;
  --dword_100034CF4;
  v5 = a1 + 47;
  v6 = a1 + 54;
  do
  {
    while (1)
    {
      v7 = v5[v4];
      if (!v7)
      {
        break;
      }

      v5[v4] = v7[2];
      free(v7);
    }

    v8 = *(v6 + v4);
    *(v6 + v4) = 0;
    if (v8 >= 1)
    {
      sub_10001612C(v4, v8);
    }

    ++v4;
  }

  while (v4 != 7);
  v9 = a1[1];
  if (v9)
  {
    sub_10000286C(v9);
  }

  if (a1[5])
  {
    sub_100001108();
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[3];
      do
      {
        v12 = *v11;
        v13 = v10;
        if (v10 == v11)
        {
          v10 = *v10;
          a1[3] = v10;
        }

        else
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13 != v11);
          *v14 = *v13;
        }

        v11 = v12;
      }

      while (v12);
    }

    if (*(a1[5] + 288))
    {
      sub_100001108();
      sub_100006524(a1[5]);
    }
  }

  else
  {
    sub_100001108();
    v15 = a1[2];
    if (v15)
    {
      do
      {
        v16 = *(v15 + 488);
        sub_100005E14(v15);
        v15 = v16;
      }

      while (v16);
    }
  }

  sub_100001108();
  free(a1);
  if (!dword_100034CF4)
  {
    sub_100001108();
    sub_100002920();
    if (!qword_100034CF8)
    {
      sub_100020F10();
    }

    os_release(qword_100034CF8);
    qword_100034CF8 = 0;
  }
}

void sub_10000286C(uint64_t *a1)
{
  v1 = *(a1 + 6);
  if (!v1)
  {
    sub_100020E34();
  }

  v3 = v1 - 1;
  *(a1 + 6) = v3;
  if (!v3)
  {
    if (a1[2])
    {
      v6 = a1[2];
      sub_100001108();
      xpc_connection_cancel(a1[2]);
      xpc_release(a1[2]);
    }

    v4 = &qword_100034C10;
    for (i = qword_100034C10; i != a1; i = *i)
    {
      v4 = i;
    }

    *v4 = *i;
    free(a1);
    if (!dword_100034CF0)
    {
      sub_100020E08();
    }

    --dword_100034CF0;
  }
}

uint64_t sub_100002920()
{
  result = qword_100034CC0;
  if (qword_100034CC0)
  {
    result = os_nexus_controller_destroy();
    qword_100034CC0 = 0;
  }

  return result;
}

void sub_100002950(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_100001108();
  if (type == &_xpc_type_error)
  {
    if (object != &_xpc_error_connection_invalid)
    {
      if (object == &_xpc_error_termination_imminent)
      {
        v10 = *(a1 + 32);
        v14 = *(a1 + 40);
      }

      else
      {
        if (object != &_xpc_error_connection_interrupted)
        {
          return;
        }

        v8 = *(a1 + 32);
        v12 = *(a1 + 40);
      }

      sub_100001108();
      return;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = &qword_100034C10;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6[2] == v5)
        {
          sub_100001108();
          if (!*(v6 + 6))
          {
            sub_100020E8C();
          }

          v9 = *(a1 + 32);
          v13 = *(a1 + 40);
          sub_100001108();
          xpc_connection_cancel(*(a1 + 32));
          xpc_release(*(a1 + 32));
          *(*(a1 + 48) + 16) = 0;
          return;
        }
      }
    }
  }
}

uint64_t sub_100002A8C(uint64_t a1)
{
  if (byte_100034BA0 == 255)
  {
    sub_100001108();
    return 12;
  }

  if ((*(a1 + 8) & 0x80) != 0)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 372);
  if (v2 >= 3)
  {
    v18 = *(a1 + 372);
LABEL_22:
    sub_100001108();
    sub_100001108();
    return 22;
  }

  if ((v2 | 2) != 2)
  {
    if (!(*(a1 + 376) & 2 | *(a1 + 392) & 0xE) || ((*(a1 + 392) >> 2) & 1) + ((*(a1 + 392) >> 1) & 1) + ((*(a1 + 392) >> 3) & 1u) >= 2)
    {
      goto LABEL_22;
    }

LABEL_18:
    v6 = (a1 + 380);
    if (!sub_10000FADC((a1 + 380)))
    {
      goto LABEL_22;
    }

    v7 = (a1 + 384);
    if (!sub_10000FADC((a1 + 384)) || (sub_10000FCB8(*v7) & 1) == 0 || sub_100012234(*v7) >= 31)
    {
      goto LABEL_22;
    }

    v8 = *v6;
    v9 = bswap32(*v6);
    if (HIWORD(v9) != 49320 && (v9 & 0xFF000000) != 0xA000000 && (v9 & 0xFFF00000) != 0xAC100000)
    {
      if (uuid_is_null((a1 + 536)))
      {
        goto LABEL_22;
      }

      v8 = *v6;
      v9 = bswap32(*v6);
    }

    if (v9 < bswap32(*v7 & v8))
    {
      goto LABEL_22;
    }

    v10 = (a1 + 396);
    if ((*(a1 + 392) & 0x10) != 0)
    {
      v11 = *v10 == *in6addr_any.__u6_addr8 && *(a1 + 404) == *&in6addr_any.__u6_addr32[2];
      if (!v11 || *(a1 + 412))
      {
        sub_100001108();
      }
    }

    else if (!sub_10000FBA4(v10, *(a1 + 412)) || !sub_10000FBA4((a1 + 416), *(a1 + 432)))
    {
      goto LABEL_22;
    }

    v12 = a1 + 472;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (!sub_10000FADC((v12 + 16)) || !sub_10000FC18((v12 + 8)))
      {
        goto LABEL_22;
      }
    }

    v13 = *(a1 + 480);
    if (v13)
    {
      while (1)
      {
        v14 = *(v13 + 9);
        if (v14 != 2 && v14 != 30)
        {
          goto LABEL_22;
        }

        v16 = *(v13 + 8);
        if (v16 != 6 && v16 != 17)
        {
          goto LABEL_22;
        }

        if (v14 == 2)
        {
          if (!sub_10000FADC(v13 + 2))
          {
            goto LABEL_22;
          }

          v14 = *(v13 + 9);
        }

        if (v14 == 30 && !sub_10000FB40(v13 + 2))
        {
          goto LABEL_22;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    goto LABEL_6;
  }

  if (*(a1 + 376) & 2 | *(a1 + 392) & 0xE)
  {
    v19 = *(a1 + 376);
    v20 = *(a1 + 392);
    goto LABEL_22;
  }

  if (v2 != 2)
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_100001108();
  *(a1 + 296) = 0;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  snprintf((a1 + 40), 0x100uLL, "%s.%s-%016llx", "com.apple.MobileInternetSharing", "network", __buf);
  uuid_generate_random((a1 + 356));
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v5 = *(a1 + 516);
  }

  else
  {
    v4 = *(a1 + 496);
    *(a1 + 488) = *(v4 + 16);
    *(v4 + 16) = a1;
    v5 = *(a1 + 516) + 1;
    ++*(v4 + 32);
  }

  *a1 = qword_100034C38;
  qword_100034C38 = a1;
  ++byte_100034BA0;
  *(a1 + 516) = v5 + 1;
  sub_100001108();
  return 0;
}

_DWORD *sub_100002FB0()
{
  v0 = malloc_type_malloc(0x330uLL, 0x10A0040500E4F62uLL);
  bzero(v0 + 1, 0x32CuLL);
  *v0 = 1;
  return v0;
}

double sub_100003000()
{
  v0 = malloc_type_malloc(0x198uLL, 0x10A0040A0622200uLL);
  result = 0.0;
  *(v0 + 20) = 0u;
  *(v0 + 36) = 0u;
  *(v0 + 52) = 0u;
  *(v0 + 68) = 0u;
  *(v0 + 84) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 101) = 0;
  *v0 = 1;
  *(v0 + 4) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  return result;
}

void sub_1000030A4(int *a1)
{
  if (!*a1)
  {
    sub_1000207F8();
  }

  v2 = *a1 - 1;
  *a1 = v2;
  if (!v2)
  {

    free(a1);
  }
}

void sub_1000030DC(_DWORD *a1)
{
  if (*a1 == 1)
  {
    v1 = qword_100034C30;
    if (qword_100034C30)
    {
      v2 = qword_100034C30;
      while (v2 != a1)
      {
        v2 = *(v2 + 280);
        if (!v2)
        {
          goto LABEL_14;
        }
      }

      if (qword_100034C30 == a1)
      {
        v4 = &qword_100034C30;
      }

      else
      {
        do
        {
          v3 = v1;
          v1 = *(v1 + 280);
        }

        while (v1 != a1);
        v4 = (v3 + 280);
      }

      *v4 = *(v1 + 280);
    }

LABEL_14:

    free(a1);
  }

  else
  {
    if (!*a1)
    {
      sub_100020824();
    }

    --*a1;
  }
}

_DWORD *sub_100003178()
{
  v0 = malloc_type_malloc(0x228uLL, 0x10600406C264405uLL);
  bzero(v0, 0x228uLL);
  v0[129] = 1;
  return v0;
}

void sub_1000031C4(void *a1)
{
  v1 = *(a1 + 129) - 1;
  *(a1 + 129) = v1;
  if (!v1)
  {
    free(a1);
  }
}

uint64_t sub_1000031DC(uint64_t a1, char *__s1)
{
  if (!*(a1 + 296) && !*(a1 + 24))
  {
    v5 = __s1;
    v6 = __s1 + 20;
    if (!__s1[20])
    {
      *(__s1 + 2) = 100;
      v8 = sub_100013BF8(__s1);
      if (v8)
      {
        v3 = v8;
LABEL_19:
        sub_100001108();
        return v3;
      }

      if ((*(a1 + 392) & 4) != 0)
      {
        sub_100001108();
        return 0;
      }
    }

    v7 = qword_100034C30;
    if (qword_100034C30)
    {
      while (strncmp((v7 + 20), v6, 0x100uLL))
      {
        if (*(v7 + 8) == 100 && *(v5 + 2) == 100)
        {
          sub_100001108();
        }

        v7 = *(v7 + 280);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      sub_100001108();
      v3 = 17;
      v5 = v7;
    }

    else
    {
LABEL_12:
      if (!strncmp(v6, off_100034980[0], 0x10uLL))
      {
        qword_100034BA8 = v5;
        *(v5 + 194) |= 2u;
      }

      v3 = 0;
      *(v5 + 35) = qword_100034C30;
      qword_100034C30 = v5;
    }

    *(a1 + 528) = *(v5 + 98);
    *(v5 + 98) = a1;
    ++*(a1 + 516);
    ++*v5;
    *(a1 + 24) = v5;
    goto LABEL_19;
  }

  sub_100001108();
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000033FC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 296) - 3) <= 1)
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    while (strncmp((v6 + 20), (a2 + 20), 0x100uLL))
    {
      v6 = *(v6 + 280);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_2;
  }

LABEL_7:
  v7 = *(a2 + 12);
  if (!v7 || v7 == *(a1 + 468))
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    *(a2 + 400) = __buf;
    v8 = *(a1 + 296);
    if (v8 == 2)
    {
      v10 = *(a1 + 16);
      if (!v10 || *(v10 + 8) != 104)
      {
        goto LABEL_2;
      }

      sub_100001108();
      v3 = sub_100019F70(a1, a2);
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v8 == 1)
      {
        sub_100001108();
        v3 = 0;
LABEL_12:
        v9 = *(a1 + 32);
        *(a1 + 32) = a2;
        *(a2 + 280) = v9;
        *(a2 + 288) = a1;
        ++*a2;
        return v3;
      }

      if ((*(a1 + 352) & 2) != 0 && *(a1 + 372) != 2)
      {
        if (*(a1 + 32))
        {
          sub_100020850();
        }

        *(a1 + 16) = a2;
        ++*a2;
        goto LABEL_36;
      }

      v11 = *(a1 + 16);
      if (v11)
      {
        if (*(v11 + 8) != 104)
        {
          sub_10002087C();
        }

        sub_100001108();
        v12 = *(a2 + 12);
        if (v12 != *(*(a1 + 16) + 12))
        {
          v20 = *(*(a1 + 16) + 12);
          v18 = *(a2 + 12);
          goto LABEL_2;
        }

        goto LABEL_33;
      }

      v13 = malloc_type_malloc(0x198uLL, 0x10A0040A0622200uLL);
      *(v13 + 36) = 0u;
      *(v13 + 52) = 0u;
      *(v13 + 68) = 0u;
      *(v13 + 84) = 0u;
      *(v13 + 100) = 0u;
      *(v13 + 116) = 0u;
      *(v13 + 132) = 0u;
      *(v13 + 148) = 0u;
      *(v13 + 164) = 0u;
      *(v13 + 180) = 0u;
      *(v13 + 196) = 0u;
      *(v13 + 212) = 0u;
      *(v13 + 228) = 0u;
      *(v13 + 244) = 0u;
      *(v13 + 101) = 0;
      *(v13 + 4) = 0u;
      *(v13 + 260) = 0u;
      *(v13 + 276) = 0u;
      *(v13 + 292) = 0u;
      *(v13 + 308) = 0u;
      *(v13 + 324) = 0u;
      *(v13 + 340) = 0u;
      *(v13 + 356) = 0u;
      *(v13 + 372) = 0u;
      *(v13 + 388) = 0u;
      *(v13 + 20) = 0u;
      *v13 = 1;
      v14 = sub_10001A3C8(v13 + 20);
      if (!v14)
      {
        v15 = *(a1 + 468);
        *(v13 + 2) = 104;
        *(v13 + 3) = v15;
        *(a1 + 16) = v13;
        v12 = *(a2 + 12);
LABEL_33:
        v16 = *(a1 + 32);
        *(a1 + 32) = a2;
        *(a2 + 280) = v16;
        *(a2 + 288) = a1;
        ++*a2;
        v17 = sub_100010FD8((a2 + 20), v12);
        if (v17)
        {
          v3 = v17;
          sub_100001108();
          return v3;
        }

        a2 = *(a1 + 16);
LABEL_36:
        *(a2 + 288) = a1;
        sub_100001108();
        return 0;
      }

      v3 = v14;
    }

    sub_100001108();
    return v3;
  }

  v21 = *(a1 + 468);
  v19 = *(a2 + 12);
LABEL_2:
  sub_100001108();
  return 4294967274;
}

BOOL sub_1000037D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x10) == 0)
  {
    sub_1000208A8();
  }

  v4 = *(a2 + 8);
  if ((v4 & 0x10) == 0 || ((v4 ^ v2) & 0x300) != 0)
  {
    return 0;
  }

  if ((v2 & v4 & 0x100) != 0)
  {
    is_null = uuid_is_null((a1 + 536));
    v8 = uuid_is_null((a2 + 536));
    if (!(v8 | is_null))
    {
      return uuid_compare((a1 + 536), (a2 + 536)) == 0;
    }

    if ((is_null == 0) == (v8 != 0))
    {
      return 0;
    }
  }

  if (*(a1 + 352) != *(a2 + 352))
  {
    return 0;
  }

  v9 = *(a1 + 372);
  if (v9 != *(a2 + 372))
  {
    return 0;
  }

  if (v9 != 2)
  {
    if (*(a1 + 376) != *(a2 + 376))
    {
      return 0;
    }

    v11 = *(a1 + 380);
    if (v11)
    {
      if (v11 != *(a2 + 380) || *(a1 + 384) != *(a2 + 384))
      {
        return 0;
      }
    }

    if (*(a1 + 392) != *(a2 + 392))
    {
      return 0;
    }

    if (*(a1 + 396) != 0 && (*(a2 + 8) & 0x20) != 0)
    {
      v13 = *(a1 + 396) == *(a2 + 396) && *(a1 + 404) == *(a2 + 404);
      if (!v13 || *(a1 + 412) != *(a2 + 412))
      {
        return 0;
      }
    }

    v12 = !*(a1 + 416) && *(a1 + 424) == 0;
    if (!v12 && (*(a2 + 8) & 0x40) != 0)
    {
      v14 = *(a1 + 416) == *(a2 + 416) && *(a1 + 424) == *(a2 + 424);
      if (!v14 || *(a1 + 432) != *(a2 + 432))
      {
        return 0;
      }
    }

    if (*(a1 + 468) != *(a2 + 468))
    {
      return 0;
    }
  }

  if (byte_100034BB0)
  {
    v10 = *(a2 + 24);
    return v10 && *(v10 + 8) == 100;
  }

  return !strncmp((a1 + 452), (a2 + 452), 0x10uLL);
}

uint64_t sub_1000039CC(uint64_t a1)
{
  v2 = *(a1 + 380);
  if (v2 && (v3 = *(a1 + 384)) != 0 && (v4 = qword_100034C38) != 0)
  {
    v5 = bswap32(v3 & v2);
    v6 = v5 + bswap32(~v3);
    while (1)
    {
      if (*(v4 + 372) != 2)
      {
        if (uuid_compare((a1 + 356), (v4 + 356)))
        {
          v7 = *(v4 + 380);
          if (v7)
          {
            v8 = *(v4 + 384);
            if (v8)
            {
              v9 = bswap32(*(a1 + 384) & v7);
              v10 = v9 + bswap32(~v8);
              if (v6 >= v9 && v10 >= v5)
              {
                break;
              }
            }
          }
        }
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v12 = *&in6addr_any.__u6_addr32[2];
    v13 = *(a1 + 396) == *in6addr_any.__u6_addr8 && *(a1 + 404) == v12;
    if (!v13 && *(a1 + 412) && (v14 = qword_100034C38) != 0)
    {
      while (1)
      {
        if (*(v14 + 372) != 2 && uuid_compare((a1 + 356), (v14 + 356)))
        {
          v15 = *(v14 + 396) == *in6addr_any.__u6_addr8 && *(v14 + 404) == v12;
          v16 = *(v14 + 412);
          if (v15 || !v16) && (sub_100003BD8((a1 + 396), *(a1 + 412), (v14 + 396), v16))
          {
            break;
          }
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      if (*(a1 + 416) == *in6addr_any.__u6_addr8 && *(a1 + 424) == v12)
      {
        return 1;
      }

      if (!*(a1 + 432))
      {
        return 1;
      }

      v18 = qword_100034C38;
      if (!qword_100034C38)
      {
        return 1;
      }

      while (1)
      {
        if (*(v18 + 372) != 2 && uuid_compare((a1 + 356), (v18 + 356)))
        {
          v19 = *(v18 + 416) == *in6addr_any.__u6_addr8 && *(v18 + 424) == v12;
          v20 = *(v18 + 432);
          if (v19 || !v20) && (sub_100003BD8((a1 + 416), *(a1 + 432), (v18 + 416), v20))
          {
            break;
          }
        }

        v18 = *v18;
        if (!v18)
        {
          return 1;
        }
      }
    }
  }

  sub_100001108();
  return 0;
}

uint64_t sub_100003BD8(__int128 *a1, int a2, __int128 *a3, int a4)
{
  v4 = *a1;
  v5 = *a3;
  v6 = 128 - a2;
  if (128 - a2 >= 1)
  {
    v7 = 15;
    do
    {
      v8 = 8 - v6;
      if (v6 > 8)
      {
        v8 = 0;
      }

      *(&v21[1] + v7) |= 0xFFu >> v8;
      v9 = v7-- != 0;
      if (!v9)
      {
        break;
      }

      v10 = v6 > 8;
      v6 -= 8;
    }

    while (v10);
  }

  v11 = 128 - a4;
  if (128 - a4 >= 1)
  {
    v12 = 15;
    do
    {
      v13 = 8 - v11;
      if (v11 > 8)
      {
        v13 = 0;
      }

      *(v21 + v12) |= 0xFFu >> v13;
      v9 = v12-- != 0;
      if (!v9)
      {
        break;
      }

      v10 = v11 > 8;
      v11 -= 8;
    }

    while (v10);
  }

  for (i = 0; i != 16; ++i)
  {
    v15 = *(&v21[1] + i);
    v16 = *(a3 + i);
    if (v15 > v16)
    {
      break;
    }

    if (v15 < v16)
    {
      return 0;
    }
  }

  for (j = 0; j != 16; ++j)
  {
    v18 = *(v21 + j);
    v19 = *(a1 + j);
    if (v18 > v19)
    {
      break;
    }

    if (v18 < v19)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100003CE4(unsigned __int8 *uu1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v4 = uuid_compare(uu1, (v2 + 356));
    result = v4 == 0;
    if (!v4)
    {
      break;
    }

    v2 = *(v2 + 488);
  }

  while (v2);
  return result;
}

uint64_t *sub_100003D38(unsigned __int8 *uu1)
{
  v2 = &qword_100034C38;
  do
  {
    v2 = *v2;
  }

  while (v2 && uuid_compare(uu1, v2 + 356));
  return v2;
}

uint64_t sub_100003D7C(uint64_t a1)
{
  if (*(a1 + 372) > 1u)
  {
    return 0;
  }

  v2 = sub_100011914((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
LABEL_16:
    sub_100001108();
    return v3;
  }

  v4 = sub_1000117F4((*(a1 + 16) + 20));
  if (v4)
  {
    v3 = v4;
    goto LABEL_16;
  }

  if (!*(a1 + 372) || (v5 = *(a1 + 376), (v5 & 2) != 0) || (*(a1 + 392) & 2) != 0)
  {
    v6 = sub_100011290((*(a1 + 16) + 20), (a1 + 380), (a1 + 384), 0);
    if (v6)
    {
      v3 = v6;
      goto LABEL_16;
    }

    v5 = *(a1 + 376);
  }

  if ((v5 & 4) == 0)
  {
    v7 = sub_10001844C(a1);
    if (v7)
    {
      v3 = v7;
      goto LABEL_16;
    }
  }

  v9 = *(a1 + 372);
  if (v9 && (*(a1 + 376) & 2) == 0 && (*(a1 + 392) & 2) == 0)
  {
    v10 = 0;
    goto LABEL_26;
  }

  v11 = sub_100004080(a1);
  if (!v11)
  {
    v9 = *(a1 + 372);
    v10 = 1;
LABEL_26:
    if (v9 != 1)
    {
      v3 = 0;
      v13 = 0;
      goto LABEL_42;
    }

    if ((*(*(a1 + 24) + 752) & 1) == 0)
    {
      sub_10001D840(1);
      *(*(a1 + 24) + 752) = 1;
    }

    v12 = *(a1 + 352);
    v13 = (v12 & 1) == 0;
    if ((v12 & 1) == 0)
    {
      v14 = sub_100020464();
      if (v14)
      {
        v3 = v14;
        sub_100001108();
        goto LABEL_48;
      }
    }

    v15 = *(a1 + 376);
    if (v15)
    {
      goto LABEL_36;
    }

    if ((v15 & 2) != 0)
    {
      v3 = sub_10001BE98();
      if (v3)
      {
        sub_100001108();
        if (v12)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if ((*(a1 + 392) & 2) == 0)
      {
LABEL_36:
        v3 = 0;
        goto LABEL_42;
      }

      v3 = sub_10001AFB0();
    }

    sub_100001108();
LABEL_42:
    if (sub_10001B90C(2))
    {
      if (!v3)
      {
        return v3;
      }

      if (!v13)
      {
LABEL_48:
        if ((v5 & 4) != 0)
        {
          if (!v10)
          {
            return v3;
          }
        }

        else
        {
          sub_100017870(a1);
          if ((v10 & 1) == 0)
          {
            return v3;
          }
        }

        sub_100004208(a1);
        return v3;
      }
    }

    else
    {
      sub_100001108();
      v3 = 0xFFFFFFFFLL;
      if (!v13)
      {
        goto LABEL_48;
      }
    }

LABEL_47:
    sub_1000207C8(a1);
    goto LABEL_48;
  }

  v3 = v11;
  sub_100001108();
  if ((v5 & 4) == 0)
  {
    sub_100017870(a1);
  }

  return v3;
}

uint64_t sub_100004080(uint64_t a1)
{
  v2 = if_nametoindex((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = socket(17, 3, 2);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      v6 = sub_100006CF8(v4, 1, (*(a1 + 384) & *(a1 + 380)), *(a1 + 380), *(a1 + 384), (*(a1 + 16) + 20), 0, *(a1 + 380), 1);
      if (v6)
      {
        v7 = v6 == 17;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = sub_100006CF8(v5, 1, 0, *(a1 + 380), 0, (*(a1 + 16) + 20), v3, *(a1 + 380), 3);
        if (!v8 || (v9 = v8, v8 == 17))
        {
          sub_100001108();
          v9 = 0;
LABEL_14:
          close(v5);
          return v9;
        }
      }

      else
      {
        v9 = v6;
      }

      sub_100001108();
      goto LABEL_14;
    }

    v9 = *__error();
    sub_100001108();
  }

  else
  {
    sub_100001108();
    return 19;
  }

  return v9;
}

uint64_t sub_100004208(uint64_t a1)
{
  v2 = if_nametoindex((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = socket(17, 3, 2);
    if (v4 < 0)
    {
      v7 = *__error();
      sub_100001108();
    }

    else
    {
      v5 = v4;
      v6 = sub_100006CF8(v4, 2, (*(a1 + 384) & *(a1 + 380)), *(a1 + 380), *(a1 + 384), (*(a1 + 16) + 20), 0, *(a1 + 380), 0);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = sub_100006CF8(v5, 2, 0, *(a1 + 380), 0, (*(a1 + 16) + 20), v3, *(a1 + 380), 3);
      }

      sub_100001108();
      close(v5);
    }
  }

  else
  {
    sub_100001108();
    return 19;
  }

  return v7;
}

uint64_t sub_100004364(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 804);
  if (!a2 && !*(a1 + 740))
  {
    sub_100001108();
    goto LABEL_19;
  }

  if (!sub_10001F0CC() || byte_100034BEC)
  {
    v8 = sub_10000D6E4(a1, 1, 0);
    if (v8)
    {
      v9 = v8;
      if (v8 == 2)
      {
        sub_100001108();
      }

      else
      {
        sub_100001108();
        if (v9 == 1)
        {
          return 12;
        }

        if (v9 == 3)
        {
          goto LABEL_6;
        }
      }
    }

    if (v6)
    {
      if (v6 != *(a1 + 804))
      {
        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *(a1 + 804);
    }

    if (v6 == 1)
    {
      v10 = sub_10001F200();
      if (v10)
      {
        return v10;
      }
    }

LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  sub_100001108();
LABEL_6:
  v7 = v6 == 1;
LABEL_20:
  if ((*(a1 + 776) & 2) == 0)
  {
    v11 = *(a1 + 740);
    if (v11 | a2)
    {
      if (a2 || !v11)
      {
        *(a1 + 740) = a2;
        *(a1 + 744) = a3;
        if (!a2 || v11)
        {
          if ((*(a1 + 752) & 1) == 0)
          {
            sub_10001D840(1);
            *(a1 + 752) = 1;
          }

          sub_100001108();
          nullsub_2(a1 + 20, 1, 0);
          if (!v7)
          {
            goto LABEL_29;
          }
        }

        else
        {
          for (i = *(a1 + 784); i; i = *(i + 528))
          {
            sub_100001108();
            if (*(i + 296) == 2)
            {
              v15 = sub_100003D7C(i);
              if (v15)
              {
                v10 = v15;
                sub_100001108();
                return v10;
              }
            }

            else
            {
              sub_100001108();
            }
          }

          if (!v7)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_10001D840(0);
        *(a1 + 752) = 0;
        *(a1 + 740) = 0;
        *(a1 + 744) = a3;
        v12 = *(a1 + 804) == 1 && v7;
        sub_100001108();
        if (!v12)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_100001108();
      if (!v7)
      {
LABEL_29:
        sub_100001108();
        return 0;
      }
    }

    sub_100001108();
    *(a1 + 804) = 0;
    sub_100015AA8();
    goto LABEL_29;
  }

  sub_100001108();
  return 19;
}

uint64_t sub_1000046AC(uint64_t a1)
{
  if (*(a1 + 372) > 1u)
  {
LABEL_44:
    sub_100001108();
    return 0;
  }

  for (i = *(a1 + 32); i; i = *(i + 280))
  {
    if (sub_10001191C((i + 20)))
    {
      sub_100001108();
    }
  }

  v3 = (*(a1 + 16) + 20);
  v4 = sub_10001191C(v3);
  if (v4)
  {
    v5 = v4;
LABEL_47:
    sub_100001108();
    return v5;
  }

  v6 = sub_100010BE4(v3);
  if (v6)
  {
    v5 = v6;
    goto LABEL_47;
  }

  v7 = sub_1000100DC(v3);
  if (v7)
  {
    v5 = v7;
    goto LABEL_47;
  }

  v8 = sub_1000105B4(v3);
  if (v8)
  {
    v5 = v8;
    goto LABEL_47;
  }

  if (*(a1 + 436) || *(a1 + 440) || *(a1 + 444) || *(a1 + 448))
  {
    inet_ntop(30, (a1 + 436), v23, 0x2Eu);
    v9 = 0;
    v10 = *(a1 + 412);
    __b = 0uLL;
    if (v10 >= 8)
    {
      v9 = v10 >> 3;
      memset(&__b, 255, v10 >> 3);
    }

    if (v10 <= 0)
    {
      v11 = -(-v10 & 7);
    }

    else
    {
      v11 = v10 & 7;
    }

    if (v11)
    {
      v23[v9 - 14] = 0xFF00u >> v11;
    }

    v12 = sub_1000113F4(v3, (a1 + 436), &__b, 0);
    if (v12)
    {
      v5 = v12;
      goto LABEL_47;
    }

    v21 = *(a1 + 412);
    sub_100001108();
  }

  v13 = sub_10001F200();
  if (v13)
  {
    v5 = v13;
    goto LABEL_47;
  }

  if (*(a1 + 372) != 1)
  {
    goto LABEL_41;
  }

  v14 = *(a1 + 24);
  if ((*(v14 + 753) & 1) == 0)
  {
    *(v14 + 753) = 1;
    sub_10001D934(1);
  }

  if (*(a1 + 520))
  {
    sub_100001108();
  }

  else
  {
    v19 = sub_100020464();
    if (v19)
    {
      v5 = v19;
      goto LABEL_47;
    }
  }

  v15 = *(a1 + 392);
  if ((v15 & 4) != 0)
  {
    v17 = sub_10001D2DC();
    if (v17)
    {
      v5 = v17;
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if ((v15 & 8) == 0 || (v16 = sub_10001A73C(), !v16))
  {
LABEL_41:
    v18 = sub_100020044();
    if (v18)
    {
      v5 = v18;
      goto LABEL_47;
    }

    if ((sub_10001B90C(30) & 1) == 0)
    {
      sub_100001108();
      return 0xFFFFFFFFLL;
    }

    goto LABEL_44;
  }

  v5 = v16;
  sub_100001108();
  return v5;
}

uint64_t sub_100004A70(uint64_t a1, void *a2)
{
  if (byte_100034BE9)
  {
    goto LABEL_2;
  }

  if ((*(a1 + 776) & 2) != 0)
  {
    sub_100001108();
    return 19;
  }

  v5 = (a1 + 708);
  if (*a2 == *(a1 + 708) && a2[1] == *(a1 + 716))
  {
    v10 = *v5 == *in6addr_any.__u6_addr8 && *(a1 + 716) == *&in6addr_any.__u6_addr32[2];
    if (!v10 && (*(a1 + 753) & 1) == 0)
    {
      sub_10001D934(1);
      v2 = 0;
      *(a1 + 753) = 1;
      return v2;
    }

    return 0;
  }

  v7 = *&in6addr_any.__u6_addr32[2];
  if (*a2 != *in6addr_any.__u6_addr8 || a2[1] != v7)
  {
    if (*v5 != *in6addr_any.__u6_addr8 || *(a1 + 716) != v7)
    {
      *v5 = *a2;
      if ((*(a1 + 753) & 1) == 0)
      {
        sub_10001D934(1);
        *(a1 + 753) = 1;
      }

      nullsub_2(a1 + 20, 0, 1);
      return 0;
    }

LABEL_30:
    if (*v5 == *in6addr_any.__u6_addr8 && *(a1 + 716) == v7)
    {
      *v5 = *a2;
      v12 = *(a1 + 784);
      if (v12)
      {
        while (1)
        {
          if (*(v12 + 296) == 2)
          {
            v13 = sub_1000046AC(v12);
            if (v13)
            {
              v2 = v13;
              sub_100001108();
              return v2;
            }
          }

          else
          {
            sub_100001108();
          }

          v2 = 0;
          v12 = *(v12 + 528);
          if (!v12)
          {
            return v2;
          }
        }
      }
    }

    return 0;
  }

  if (*(a1 + 753) != 1)
  {
    goto LABEL_30;
  }

  sub_10001D840(0);
  *(a1 + 753) = 0;
LABEL_2:
  sub_100001108();
  return 0;
}

uint64_t sub_100004C7C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 288);
  if (v4 != *a2)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 288))
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 325);
  if (v5 != a2[37] || !sub_10000E754((a1 + 304), a2 + 16, v5) || *(a1 + 460) != a2[172] || *(a1 + 398) != *(a2 + 55) || *(a1 + 444) != *(a2 + 39) || *(a1 + 448) != *(a2 + 40) || *(a1 + 328) != *(a2 + 5) || *(a1 + 336) != *(a2 + 6) || *(a1 + 432) != *(a2 + 36))
  {
LABEL_17:
    if (*(a1 + 288))
    {
      if ((*a2 & 1) == 0)
      {
        if (*(a1 + 754) != 1)
        {
          return 0;
        }

        *v46 = 0u;
        memset(v47, 0, sizeof(v47));
        if (inet_ntop(30, (a1 + 304), v46, 0x2Eu))
        {
          sub_100001108();
          sub_100011A98(a1 + 20, 0);
          sub_10001D934(0);
          *(a1 + 754) = 0;
          v7 = sub_10001A73C();
          if (v7)
          {
            v8 = v7;
            sub_100001108();
            return v8;
          }

          return 0;
        }

LABEL_52:
        sub_100001108();
        return 22;
      }
    }

    else if (*a2)
    {
      if (inet_ntop(30, a2 + 16, v48, 0x2Eu))
      {
        sub_100001108();
        sub_100011A98(a1 + 20, 1);
        *(a1 + 754) = 1;
        *(a1 + 288) = *a2;
        v9 = *(a2 + 4);
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        *(a1 + 336) = *(a2 + 3);
        *(a1 + 352) = v9;
        *(a1 + 304) = v11;
        *(a1 + 320) = v10;
        v12 = *(a2 + 8);
        v14 = *(a2 + 5);
        v13 = *(a2 + 6);
        *(a1 + 400) = *(a2 + 7);
        *(a1 + 416) = v12;
        *(a1 + 368) = v14;
        *(a1 + 384) = v13;
        v16 = *(a2 + 10);
        v15 = *(a2 + 11);
        v17 = *(a2 + 9);
        *(a1 + 480) = *(a2 + 24);
        *(a1 + 448) = v16;
        *(a1 + 464) = v15;
        *(a1 + 432) = v17;
        sub_10001D934(1);
        v18 = *(a1 + 784);
        if (v18)
        {
          while (1)
          {
            if ((*(v18 + 392) & 8) != 0 && *(v18 + 296) == 2)
            {
              v19 = sub_1000046AC(v18);
              if (v19)
              {
                v6 = v19;
                goto LABEL_57;
              }

              sub_100001108();
            }

            v18 = *(v18 + 528);
            if (!v18)
            {
              return 0;
            }
          }
        }

        return 0;
      }

      goto LABEL_52;
    }

    if (sub_10000E754((a1 + 304), a2 + 16, *(a1 + 325)))
    {
      if (!sub_10000E754((a1 + 304), a2 + 16, *(a1 + 325)))
      {
        return 0;
      }

      *v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (!inet_ntop(30, a2 + 16, v48, 0x2Eu))
      {
        goto LABEL_52;
      }

      sub_100001108();
      *(a1 + 288) = *a2;
      v20 = *(a2 + 1);
      v21 = *(a2 + 2);
      v22 = *(a2 + 4);
      *(a1 + 336) = *(a2 + 3);
      *(a1 + 352) = v22;
      *(a1 + 304) = v20;
      *(a1 + 320) = v21;
      v23 = *(a2 + 5);
      v24 = *(a2 + 6);
      v25 = *(a2 + 8);
      *(a1 + 400) = *(a2 + 7);
      *(a1 + 416) = v25;
      *(a1 + 368) = v23;
      *(a1 + 384) = v24;
      v26 = *(a2 + 9);
      v27 = *(a2 + 10);
      v28 = *(a2 + 11);
      *(a1 + 480) = *(a2 + 24);
      *(a1 + 448) = v27;
      *(a1 + 464) = v28;
      *(a1 + 432) = v26;
      if ((*(a1 + 754) & 1) == 0)
      {
        sub_100011A98(a1 + 20, 1);
        sub_10001D934(1);
        *(a1 + 754) = 1;
        if (sub_10001A73C())
        {
          sub_100001108();
        }
      }

      v6 = sub_10001F200();
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      *v46 = 0u;
      memset(v47, 0, sizeof(v47));
      *v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (!inet_ntop(30, (a1 + 304), v46, 0x2Eu) || !inet_ntop(30, a2 + 16, v48, 0x2Eu))
      {
        goto LABEL_52;
      }

      sub_100001108();
      v29 = *(a1 + 336);
      *(a1 + 520) = *(a1 + 320);
      *(a1 + 536) = v29;
      v30 = *(a1 + 400);
      *(a1 + 584) = *(a1 + 384);
      *(a1 + 600) = v30;
      v31 = *(a1 + 368);
      *(a1 + 552) = *(a1 + 352);
      *(a1 + 568) = v31;
      *(a1 + 680) = *(a1 + 480);
      v32 = *(a1 + 464);
      *(a1 + 648) = *(a1 + 448);
      *(a1 + 664) = v32;
      v33 = *(a1 + 432);
      *(a1 + 616) = *(a1 + 416);
      *(a1 + 632) = v33;
      v34 = *(a1 + 304);
      *(a1 + 488) = *(a1 + 288);
      *(a1 + 504) = v34;
      *(a1 + 288) = *a2;
      v35 = *(a2 + 1);
      v36 = *(a2 + 2);
      v37 = *(a2 + 4);
      *(a1 + 336) = *(a2 + 3);
      *(a1 + 352) = v37;
      *(a1 + 304) = v35;
      *(a1 + 320) = v36;
      v38 = *(a2 + 5);
      v39 = *(a2 + 6);
      v40 = *(a2 + 8);
      *(a1 + 400) = *(a2 + 7);
      *(a1 + 416) = v40;
      *(a1 + 368) = v38;
      *(a1 + 384) = v39;
      v41 = *(a2 + 9);
      v42 = *(a2 + 10);
      v43 = *(a2 + 11);
      *(a1 + 480) = *(a2 + 24);
      *(a1 + 448) = v42;
      *(a1 + 464) = v43;
      *(a1 + 432) = v41;
      if ((*(a1 + 754) & 1) == 0)
      {
        sub_100001108();
        sub_100011A98(a1 + 20, 1);
        sub_10001D934(1);
        *(a1 + 754) = 1;
      }

      if (sub_10001A73C())
      {
        sub_100001108();
      }

      v44 = sub_10001F200();
      if (v44)
      {
        v6 = v44;
      }

      else
      {
        v6 = sub_100020044();
        if (!v6)
        {
          return v6;
        }
      }
    }

    sub_100001108();
    return v6;
  }

  v4 = *(a1 + 288);
LABEL_13:
  if (!v4)
  {
    sub_100001108();
    return 0;
  }

  if (*(a1 + 754))
  {
    return 0;
  }

  v6 = sub_100011A98(a1 + 20, 1);
  if (!v6)
  {
    *(a1 + 754) = 1;
    sub_10001D934(1);
  }

LABEL_57:
  sub_100001108();
  return v6;
}

uint64_t sub_10000529C(const char *a1)
{
  v8 = 0;
  if (!a1 || !*a1)
  {
    sub_1000208D4();
  }

  if (getifaddrs(&v8))
  {
    v2 = *__error();
    sub_100001108();
    v3 = v8;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_13;
  }

  v3 = v8;
  if (v8)
  {
    v4 = v8;
    while (1)
    {
      if (!strncmp(a1, v4->ifa_name, 0x10uLL))
      {
        ifa_addr = v4->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            break;
          }
        }
      }

      v4 = v4->ifa_next;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    if (ifa_addr->sa_data[4] == 6)
    {
      ifa_data = v4->ifa_data;
      if (!ifa_data || *ifa_data != 209)
      {
        v2 = 0;
        if (!v3)
        {
          return v2;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v2 = 22;
  if (v3)
  {
LABEL_13:
    freeifaddrs(v3);
  }

  return v2;
}

uint64_t sub_10000538C(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    if ((sub_1000039CC(a1) & 1) == 0)
    {
      sub_100001108();
      v2 = 16;
      goto LABEL_12;
    }

    *(a1 + 296) = 1;
    v3 = *(a1 + 8);
    if ((v3 & 0x80) != 0)
    {
      sub_100001108();
      v7 = sub_100013E58(a1);
      v2 = v7;
      if (!v7)
      {
        sub_1000057E8(a1, 0);
        goto LABEL_12;
      }

      if (v7 == 36)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v4 = *(a1 + 372);
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          if (*(a1 + 32) && *(*(a1 + 16) + 8) == 104)
          {
            v5 = sub_100005A1C(a1);
            if (v5)
            {
              v2 = v5;
            }

            else
            {
              v14 = sub_100019484(a1);
              if (v14)
              {
                v2 = v14;
              }

              else
              {
                v2 = sub_10001A200(a1);
                if (!v2)
                {
                  goto LABEL_12;
                }
              }
            }

            goto LABEL_53;
          }

LABEL_43:
          sub_100001108();
          v2 = 0;
          goto LABEL_12;
        }

LABEL_52:
        v2 = sub_100005B08(a1);
        if (!v2)
        {
          goto LABEL_12;
        }

LABEL_53:
        sub_100001108();
        goto LABEL_12;
      }

      v8 = *(a1 + 24);
      if (!v8)
      {
        sub_100001108();
        v2 = 22;
        goto LABEL_12;
      }

      v9 = *(a1 + 16);
      v10 = v9[3];
      if (!v10)
      {
        v10 = 1500;
        v9[3] = 1500;
      }

      v9[4] = v10 - 40;
      if (*(v8 + 8) != 100)
      {
        if ((*(v8 + 776) & 2) != 0)
        {
          v13 = *(v8 + 12);
          if (!v13)
          {
            v13 = 1500;
            *(v8 + 12) = 1500;
          }

          *(v8 + 16) = v13 - 40;
          if (sub_10000D930() == -1)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v12 = sub_10001113C((v8 + 20));
          *(v8 + 12) = v12;
          *(v8 + 16) = v12 - 40;
          if (sub_10000DDE4(v8))
          {
            goto LABEL_43;
          }
        }

        goto LABEL_52;
      }

      if ((*(a1 + 376) & 2) != 0 || (*(a1 + 392) & 8) != 0)
      {
        if ((v3 & 0x10) != 0)
        {
          v11 = (a1 + 512);
        }

        else
        {
          v11 = (*(a1 + 496) + 460);
        }

        sub_100005A94(v9[2] == 101, *v11);
        sub_100001108();
      }

      v15 = sub_100013E58(a1);
      if (!v15)
      {
        sub_1000057E8(a1, 0);
        goto LABEL_52;
      }

      v2 = v15;
      if (v15 == 36)
      {
LABEL_23:
        sub_100001108();
        v2 = 36;
        goto LABEL_12;
      }
    }

    sub_100001108();
    sub_10001587C();
    goto LABEL_12;
  }

  sub_100001108();
  v2 = 37;
LABEL_12:
  if ((*(a1 + 376) & 2) != 0 || (*(a1 + 392) & 8) != 0)
  {
    sub_100015B3C(v2);
  }

  if (v2 == 36)
  {
    sub_100001108();
  }

  else if (v2)
  {
    sub_100005E14(a1);
  }

  else
  {
    sub_100001108();
    *(a1 + 296) = 2;
  }

  return v2;
}

void sub_1000057E8(uint64_t a1, int a2)
{
  if (a2 == 36 || !*(a1 + 24))
  {
    sub_100020900();
  }

  v3 = qword_100034C28;
  if (qword_100034C28)
  {
    v5 = 0;
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      v7 = v6[3];
      if (!v7 || *(v7 + 24) != *(a1 + 24))
      {
        goto LABEL_11;
      }

      if (*(a1 + 296) == 1)
      {
        if (!a2)
        {
          v5 = sub_100005B08(a1);
          sub_100001108();
        }

        v8 = v6[2];
        if (v8)
        {
          v9 = v6[1];
          if (v9)
          {
            if (a2 | v5)
            {
              xpc_dictionary_set_uint64(v6[2], off_1000348C8[0], 0x7D0uLL);
            }

            else
            {
              *(a1 + 296) = 2;
              sub_100001108();
              xpc_dictionary_set_uint64(v8, off_1000348C8[0], 0x7D1uLL);
              xpc_dictionary_set_string(v8, off_1000348E0[0], (a1 + 40));
              v10 = *(v6 + 8);
              if (v10 != -1)
              {
                xpc_dictionary_set_fd(v8, off_100034880[0], v10);
              }
            }

            sub_100001CD4(v9, v8);
            xpc_release(v8);
          }
        }

        if (a2 | v5)
        {
          sub_100005E14(a1);
        }

        v11 = qword_100034C28;
        if (qword_100034C28 == v6)
        {
          v12 = &qword_100034C28;
        }

        else
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11 != v6);
        }

        *v12 = *v11;
        free(v6);
        --dword_100034BF0;
        if (!v3)
        {
          return;
        }
      }

      else
      {
        v13 = *(a1 + 296);
        sub_100001108();
LABEL_11:
        if (!v3)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_100005A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = sub_10000529C((v1 + 20));
    if (v2)
    {
      break;
    }

    v1 = *(v1 + 280);
    if (!v1)
    {
      return 0;
    }
  }

  v3 = v2;
  sub_100001108();
  return v3;
}

uint64_t sub_100005A94(int a1, char a2)
{
  if (a1)
  {
    sub_100001108();
  }

  v4 = sub_100015860(a1, a2);
  v5 = v4;
  if (v4)
  {
    strerror(v4);
    sub_100001108();
  }

  return v5;
}

uint64_t sub_100005B08(uint64_t a1)
{
  if (*(a1 + 296) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 372) > 1u)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2 || *(v2 + 8) == 104 && !*(a1 + 32))
  {
LABEL_9:
    sub_100001108();
    return 22;
  }

  v3 = *(a1 + 376);
  if ((v3 & 4) != 0 || (v4 = sub_1000182E8(), !v4))
  {
    if ((*(a1 + 352) & 2) != 0)
    {
      v14 = *(a1 + 16) + 20;
      sub_100001108();
    }

    else
    {
      for (i = *(a1 + 32); i; i = *(i + 280))
      {
        if (!*(i + 20))
        {
          if (*(*(a1 + 16) + 8) != 101)
          {
            sub_10002092C((a1 + 32));
          }

          sub_100001108();
        }
      }

      if (sub_100005A1C(a1))
      {
        if (*(a1 + 32))
        {
          sub_100001108();
          v5 = 22;
          if ((v3 & 4) != 0)
          {
            return v5;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v9 = sub_100019484(a1);
        if (v9)
        {
          v5 = v9;
          sub_100001108();
          if ((v3 & 4) != 0)
          {
            return v5;
          }

          goto LABEL_36;
        }

        v11 = sub_10001A200(a1);
        if (v11)
        {
          v5 = v11;
LABEL_35:
          sub_100001108();
          if ((v3 & 4) != 0)
          {
            return v5;
          }

LABEL_36:
          sub_100018F38(a1);
          return v5;
        }
      }
    }

    if (*(a1 + 480))
    {
      v7 = sub_10001BB78();
      if (v7)
      {
        v5 = v7;
        goto LABEL_35;
      }
    }

    v8 = sub_100003D7C(a1);
    if (v8)
    {
      v5 = v8;
      goto LABEL_35;
    }

    v10 = sub_1000046AC(a1);
    if (v10)
    {
      v5 = v10;
      goto LABEL_35;
    }

    if ((sub_10001B368() & 1) == 0)
    {
      sub_100001108();
      v5 = 0xFFFFFFFFLL;
      if ((v3 & 4) != 0)
      {
        return v5;
      }

      goto LABEL_36;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      sub_100015C4C((v12 + 20), (*(a1 + 16) + 20));
    }

    return 0;
  }

  v5 = v4;
  sub_100001108();
  return v5;
}

uint64_t sub_100005E14(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (!v2)
  {
    sub_100001108();
  }

  if ((*(a1 + 8) & 0x110) == 0x100 && (*(a1 + 296) - 1) < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  *(a1 + 296) = v3;
  if (v2)
  {
    v4 = (*(a1 + 16) + 20);
    if (*(a1 + 372) != 2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        if (*(v5 + 8) == 100)
        {
          sub_100014080(a1);
        }

        else if ((*(v5 + 776) & 2) != 0)
        {
          sub_10000DCB4();
        }

        else
        {
          sub_10000E3A8(v5);
        }
      }
    }

    if (*(*(a1 + 16) + 8) == 104)
    {
      sub_100001108();
      v6 = *(a1 + 32);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 280);
          sub_10001A46C(*(a1 + 16), v6);
          v8 = *(a1 + 32);
          if (v8 == v6)
          {
            v10 = (a1 + 32);
          }

          else
          {
            do
            {
              v9 = v8;
              v8 = *(v8 + 280);
            }

            while (v8 != v6);
            v10 = (v9 + 280);
          }

          *v10 = *(v8 + 280);
          sub_1000030A4(v6);
          v6 = v7;
        }

        while (v7);
      }
    }

    v11 = *(a1 + 372);
    v12 = *(a1 + 16);
    if (v11 != 2 && *(v12 + 8) != 101)
    {
      if (v11 == 1)
      {
        if ((*(a1 + 376) & 2) != 0 && sub_10001BE98())
        {
          sub_100001108();
        }

        if ((*(a1 + 392) & 4) != 0 && sub_10001D2DC())
        {
          sub_100001108();
        }

        if ((*(a1 + 392) & 2) != 0 && sub_10001AFB0())
        {
          sub_100001108();
        }
      }

      sub_10001B368();
      sub_10001B90C(0);
      sub_100018F38(a1);
      while (1)
      {
        v13 = *(a1 + 472);
        if (!v13)
        {
          break;
        }

        *(a1 + 472) = *v13;
        free(v13);
      }

      if (sub_10001F200())
      {
        sub_100001108();
      }

      if (sub_100020044())
      {
        sub_100001108();
      }

      sub_1000207C8(a1);
      if (sub_100004208(a1))
      {
        sub_100001108();
      }

      if (*(a1 + 480))
      {
        sub_10001BB78();
        sub_100001108();
        while (1)
        {
          v14 = *(a1 + 480);
          if (!v14)
          {
            break;
          }

          *(a1 + 480) = *v14;
          free(v14);
        }
      }

      if (sub_100010BE4(v4))
      {
        sub_100001108();
      }

      sub_100011914(v4);
      sub_100011A90(v4);
      if (sub_10000F4E4(v4))
      {
        sub_100001108();
      }

      if (sub_10001095C())
      {
        sub_100001108();
      }

      if (sub_100010D20(v4))
      {
        sub_100001108();
      }

      sub_10001028C(v4, 1, 0, 0);
      v12 = *(a1 + 16);
    }

    if (*(v12 + 8) == 104 && sub_100019BF4(a1))
    {
      sub_100001108();
    }

    v3 = *(a1 + 296);
  }

  if (v3 != 4)
  {
    sub_100001108();
    return 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    sub_100015DC8((v15 + 20), (*(a1 + 16) + 20));
    v16 = *(a1 + 24);
    v17 = *(v16 + 784);
    if (v17 == a1)
    {
      v19 = (v16 + 784);
    }

    else
    {
      do
      {
        v18 = v17;
        v17 = *(v17 + 528);
      }

      while (v17 != a1);
      v19 = (v18 + 528);
    }

    *v19 = *(v17 + 528);
    sub_1000030DC(v16);
    *(a1 + 24) = 0;
    v20 = *(a1 + 516);
    v21 = v20 != 0;
    v22 = v20 - 1;
    if (v22 == 0 || !v21)
    {
      sub_1000209BC();
    }

    *(a1 + 516) = v22;
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    sub_1000030A4(v23);
    *(a1 + 16) = 0;
  }

  if ((*(a1 + 8) & 0x10) == 0)
  {
    v24 = *(a1 + 496);
    v26 = (v24 + 16);
    v25 = *(v24 + 16);
    if (v25 != a1)
    {
      do
      {
        v27 = v25;
        v25 = *(v25 + 488);
      }

      while (v25 != a1);
      v26 = (v27 + 488);
    }

    *v26 = *(v25 + 488);
    --*(v24 + 32);
    v28 = *(a1 + 516);
    v21 = v28 != 0;
    v29 = v28 - 1;
    if (v29 == 0 || !v21)
    {
      sub_100020A40();
    }

    *(a1 + 516) = v29;
  }

  sub_100001108();
  v30 = &qword_100034C38;
  for (i = qword_100034C38; i != a1; i = *i)
  {
    v30 = i;
  }

  *v30 = *i;
  if (!byte_100034BA0)
  {
    sub_100020A14();
  }

  --byte_100034BA0;
  if (*(a1 + 296) == 2)
  {
    if (*(a1 + 504))
    {
      v32 = *(a1 + 32);
      if (v32)
      {
        info = 0;
        if (*(v32 + 4) < 2u)
        {
          goto LABEL_90;
        }

        if (mach_continuous_time() < *(a1 + 504))
        {
          sub_1000209E8();
        }

        if (!mach_timebase_info(&info))
        {
          for (j = *(a1 + 32); j; j = *(j + 280))
          {
            analytics_send_event_lazy();
            v36 = *(j + 4);
            sub_100001108();
          }

          goto LABEL_90;
        }
      }
    }
  }

  sub_100001108();
LABEL_90:
  v33 = *(a1 + 516) - 1;
  *(a1 + 516) = v33;
  if (!v33)
  {
    free(a1);
  }

  return 0;
}

void sub_100006524(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 8);
  if (v3 != 104)
  {
    if (v3 == 101)
    {
      sub_100001108();
      if (!*(v1 + 296))
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_100001108();
LABEL_15:

    sub_100005E14(v1);
    return;
  }

  v5 = (v1 + 32);
  v4 = *(v1 + 32);
  if (!v4)
  {
LABEL_7:
    sub_100001108();
    return;
  }

  v6 = *(v1 + 32);
  while (v6 != a1)
  {
    v6 = *(v6 + 280);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v4 != a1)
  {
    do
    {
      v7 = v4;
      v4 = *(v4 + 280);
    }

    while (v4 != a1);
    v5 = (v7 + 280);
  }

  *v5 = *(v4 + 280);
  sub_10001A46C(*(v1 + 16), a1);
  sub_1000030A4(v6);
  if (!*(v1 + 32))
  {
    goto LABEL_14;
  }
}

void sub_10000669C(uint64_t a1)
{
  if (*(a1 + 320) | *(a1 + 324))
  {
    sub_1000169F4(a1 + 320);
  }

  if (*(a1 + 360))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 364) == 0;
  }

  if (!v2)
  {
    sub_100016294(a1 + 360);
  }

  if (*(a1 + 352))
  {
    IOEthernetControllerSetLinkStatus();
    v3 = *(a1 + 352);
    IOEthernetControllerSetDispatchQueue();
    CFRelease(*(a1 + 352));
    *(a1 + 352) = 0;
    if (dword_100034C20)
    {
      --dword_100034C20;
    }

    else
    {
      sub_100001108();
    }

    v4 = *(a1 + 328);
    if (v4)
    {
      if (*(a1 + 344))
      {
        xpc_dictionary_set_uint64(v4, off_1000348C8[0], 0x7D3uLL);
        sub_100001CD4(*(a1 + 344), *(a1 + 328));
        xpc_release(*(a1 + 328));
        *(a1 + 328) = 0;
        *(a1 + 344) = 0;
      }
    }
  }
}

BOOL sub_1000067A8(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = HIBYTE(v1) == 10 || v1 >> 20 == 2753;
  v3 = HIWORD(v1);
  return v2 || v3 == 49320;
}

uint64_t sub_1000067D4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 468))
  {
    *(a1 + 468) = 1500;
  }

  v3 = *(a1 + 372);
  if (v3 > 1)
  {
    return 0;
  }

  v4 = *(a1 + 380);
  if (!v4)
  {
    if (!*(a1 + 384))
    {
      if (*(a2 + 460))
      {
        v5 = 18;
      }

      else
      {
        v5 = 128;
      }

      if (*(a2 + 460))
      {
        v6 = 2;
      }

      else
      {
        v6 = 64;
      }

      if (*(a2 + 460))
      {
        v7 = 34;
      }

      else
      {
        v7 = 192;
      }

      if (v3 == 1)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v3 == 1)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
      }

      if (v9 < v8)
      {
        while (1)
        {
          *__str.count = 0;
          *__str.hash = 0;
          *v19 = 0;
          snprintf(&__str, 0x10uLL, "%s%u.1", "192.168.", v9);
          if (inet_aton(&__str, v19) != 1)
          {
            break;
          }

          v10 = qword_100034C38;
          v4 = *v19;
          if (!qword_100034C38)
          {
LABEL_33:
            *(a1 + 380) = *v19;
            *(a1 + 384) = 0xFFFFFF;
            goto LABEL_34;
          }

          while (1)
          {
            if (*(v10 + 372) != 2)
            {
              v11 = bswap32(*(v10 + 384));
              if (v11 >= 0xFFFFFF00)
              {
                v11 = -256;
              }

              if ((bswap32(*(v10 + 380) ^ *v19) & v11) == 0)
              {
                break;
              }
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_33;
            }
          }

          ++v9;
          result = 0xFFFFFFFFLL;
          if (v9 == v8)
          {
            return result;
          }
        }

        sub_100001108();
      }

      return 0xFFFFFFFFLL;
    }

    v4 = 0;
  }

LABEL_34:
  v13 = *(a1 + 396) == *in6addr_any.__u6_addr8 && *(a1 + 404) == *&in6addr_any.__u6_addr32[2];
  if (!v13 || *(a1 + 412))
  {
    goto LABEL_48;
  }

  v17 = *(a1 + 384);
  data = v4;
  memset(&__str, 0, sizeof(__str));
  v16.tv_sec = 0;
  v16.tv_nsec = 0;
  if ((byte_100034C50 & 1) == 0)
  {
    if (gethostuuid(byte_100034C40, &v16))
    {
      v14 = __error();
      strerror(*v14);
      sub_100001108();
    }

    else
    {
      byte_100034C50 = 1;
    }
  }

  CC_SHA256_Init(&__str);
  CC_SHA256_Update(&__str, &data, 4u);
  CC_SHA256_Update(&__str, &v17, 4u);
  if (byte_100034C50 == 1)
  {
    CC_SHA256_Update(&__str, byte_100034C40, 0x10u);
  }

  CC_SHA256_Final(v19, &__str);
  *(a1 + 396) = -3;
  *(a1 + 397) = *v19;
  *(a1 + 400) = *&v19[3];
  *(a1 + 404) = 0;
  *(a1 + 412) = 64;
  if (inet_ntop(30, (a1 + 396), &__str, 0x2Eu))
  {
    v15 = *(a1 + 412);
    sub_100001108();
LABEL_48:
    if (*(a1 + 372) == 1 && !*(a1 + 452))
    {
      snprintf((a1 + 452), 0x10uLL, "%s", off_100034980[0]);
      sub_100001108();
    }

    return 0;
  }

  sub_100001108();
  return 19;
}

uint64_t sub_100006B5C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 9);
  if (v3 == *(a2 + 9) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12))
  {
    if (a3)
    {
      return 1;
    }

    if (*(a1 + 10) == *(a2 + 10))
    {
      if (v3 == 30)
      {
        if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
        {
          return 1;
        }
      }

      else if (v3 != 2 || *(a1 + 16) == *(a2 + 16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100006BE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 9);
  if (v4 == 30)
  {
    if ((*(a1 + 392) & 4) == 0)
    {
      goto LABEL_18;
    }

    v7 = (a1 + 396);
    if (!sub_100003BD8((a1 + 396), *(a1 + 412), (a2 + 16), 128))
    {
      goto LABEL_18;
    }

    if (*v7 == *(a2 + 16) && *(a1 + 404) == *(a2 + 24))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v4 != 2)
    {
      return 22;
    }

    if ((*(a1 + 376) & 2) == 0 || (v5 = *(a2 + 16), v6 = *(a1 + 380), ((v6 ^ v5) & *(a1 + 384)) != 0) || v5 == v6)
    {
LABEL_18:
      sub_100001108();
      return 22;
    }
  }

  return 0;
}

uint64_t sub_100006CF8(int a1, char a2, uint64_t a3, int a4, int a5, char *__s, __int16 a7, int a8, char a9)
{
  v26 = 0u;
  memset(v27, 0, 220);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  BYTE3(v19) = a2;
  BYTE2(v19) = 5;
  v13 = dword_100034800++;
  DWORD1(v20) = v13;
  if ((a9 & 1) == 0 && a3 == 0)
  {
    v15 = 2051;
  }

  else
  {
    v15 = 2305;
  }

  *(&v19 + 1) = v15 | 0x3700000000;
  if ((a9 & 2) != 0)
  {
    WORD2(v19) = a7;
    v15 |= 0x1000000u;
    DWORD2(v19) = v15;
  }

  WORD6(v24) = 528;
  LODWORD(v25) = a3;
  if ((v15 & 2) != 0)
  {
    v16 = &v26 + 12;
    WORD6(v25) = 528;
    LODWORD(v26) = a4;
  }

  else
  {
    v16 = v27;
    WORD6(v25) = 4628;
    BYTE1(v26) = strlen(__s);
    __memmove_chk();
  }

  *v16 = 528;
  *(v16 + 1) = a5;
  *(v16 + 8) = 4628;
  v17 = strlen(__s);
  v16[21] = v17;
  memmove(v16 + 24, __s, v17);
  *(v16 + 18) = 528;
  *(v16 + 10) = a8;
  LOWORD(v19) = v16 - (&v24 + 12) + 144;
  if (write(a1, &v19, (v16 - (&v24 + 12) + 144)) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

xpc_object_t sub_100006EC4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "iftype", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "duration", *(a1 + 40));
  return v2;
}

uint64_t sub_100006F24(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_3;
  }

  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam[0]);
  if (!value)
  {
    goto LABEL_3;
  }

  v6 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  v31 = 0uLL;
  v30 = 0uLL;
  v7 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorIpVersion[0]);
  if (v7 && (v8 = v7, xpc_get_type(v7) == &_xpc_type_uint64))
  {
    v16 = xpc_uint64_get_value(v8);
    v17 = v16;
    if (v16 != 4 && v16 != 96)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v16;
    }

    v18 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorLocalIp[0]);
    if (v18 && (v19 = v18, xpc_get_type(v18) == &_xpc_type_string))
    {
      string_ptr = xpc_string_get_string_ptr(v19);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      sub_100007A58();
      string_ptr = 0;
    }

    v21 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorRemoteIp[0]);
    if (v21 && (v22 = v21, xpc_get_type(v21) == &_xpc_type_string))
    {
      v23 = xpc_string_get_string_ptr(v22);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      sub_100007A58();
      v23 = 0;
    }

    if (v17 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v31 + 12) != 1 || v23 && inet_pton(2, v23, &v30 + 12) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v31);
        *(a2 + 40) = HIDWORD(v30);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v31) != 1 || v23 && inet_pton(30, v23, &v30) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        v29 = v30;
        *(a2 + 12) = v31;
        *(a2 + 28) = v29;
      }
    }
  }

  else
  {
    sub_100007A14();
  }

  v9 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorIpProtocol[0]);
  if (v9 && (v10 = v9, xpc_get_type(v9) == &_xpc_type_uint64))
  {
    v24 = xpc_uint64_get_value(v10);
    if (v24 != 17 && v24 != 6)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v24;
    }
  }

  else
  {
    sub_100007A58();
  }

  v11 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorLocalPort[0]);
  if (v11)
  {
    v12 = v11;
    if (xpc_get_type(v11) != &_xpc_type_uint64)
    {
      goto LABEL_3;
    }

    v13 = xpc_uint64_get_value(v12);
    if (v13 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v13) >> 16;
    }
  }

  else
  {
    sub_100007A58();
  }

  v14 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorRemotePort[0]);
  if (v14)
  {
    v15 = v14;
    if (xpc_get_type(v14) != &_xpc_type_uint64)
    {
      goto LABEL_3;
    }

    v28 = xpc_uint64_get_value(v15);
    if (v28 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v28) >> 16;
    }
  }

  else
  {
    sub_100007A14();
  }

  v26 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
  if (v26)
  {
    v27 = v26;
    if (xpc_get_type(v26) != &_xpc_type_uint64 || xpc_uint64_get_value(v27) >= 0x69781)
    {
LABEL_3:
      sub_100007A14();
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000073A4(_BYTE *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!qword_100034C58 || (Count = CFArrayGetCount(qword_100034C58)) == 0 || (v3 = Count, Count < 1))
  {
LABEL_9:
    sub_100007A14();
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(qword_100034C58, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, off_100034A28[0], a1 + 2, 0x78uLL);
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

    xpc_dictionary_set_data(*a2, off_100034A30[0], v7, v6);
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

    xpc_dictionary_set_data(*a2, off_100034A38, v13, v12);
    free(v13);
  }

  return 0;
}

unint64_t sub_1000075BC(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t sub_100007620(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, off_100034A28[0], &length);
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
    v12 = xpc_dictionary_get_data(a1, off_100034A30[0], &v23);
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

    result = xpc_dictionary_get_data(a1, off_100034A38, &v22);
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
    sub_100007A14();
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (qword_100034C68 != -1)
  {
    sub_100020A6C();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = sub_100007620(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    sub_100007A14();
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

void *sub_1000078DC(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (sub_1000073A4(qword_100034C60))
    {
      sub_100007A14();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, off_100034860[0], 0x401uLL);
      xpc_dictionary_set_string(v2, off_100034868[0], (qword_100034C60 + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, off_100034A08[0], value);
      sub_100007B3C(0, v2, &stru_100030C90);
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

BOOL sub_100007AE0()
{
  v0 = qword_100034C88;
  if (qword_100034C88)
  {
    sub_100007A58();
    xpc_connection_cancel(qword_100034C88);
    xpc_release(qword_100034C88);
    qword_100034C88 = 0;
  }

  return v0 != 0;
}

BOOL sub_100007B3C(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, off_100034860[0]) == 1000)
  {
    if (!qword_100034C80)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, off_1000348C0[0], qword_100034C80);
  }

  if (a1)
  {
    v6 = qword_100034C88 != 0;
    if (qword_100034C88)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100007D3C;
      handler[3] = &unk_100030CB8;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(qword_100034C88, xdict, a1, handler);
    }

    else
    {
      sub_100007A9C();
    }

    return v6;
  }

  if (!qword_100034C88)
  {
    sub_100007A9C();
    return 0;
  }

  v7 = xpc_connection_send_message_with_reply_sync(qword_100034C88, xdict);
  v8 = v7;
  if (v7)
  {
    type = xpc_get_type(v7);
    if (type != &_xpc_type_error)
    {
      v10 = type;
      if (type == &_xpc_type_dictionary)
      {
        if (xpc_dictionary_get_uint64(v8, off_1000348C8[0]) == 2002)
        {
          sub_100007A14();
          sub_100007AE0();
        }

        v10 = &_xpc_type_dictionary;
      }

      else
      {
        sub_100007A14();
        sub_100007AE0();
      }

      goto LABEL_18;
    }

    xpc_dictionary_get_string(v8, _xpc_error_key_description);
    sub_100007A14();
    sub_100007AE0();
  }

  else
  {
    sub_100007AE0();
    sub_100007A14();
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

uint64_t sub_100007D3C(uint64_t a1, xpc_object_t object)
{
  if (!object)
  {
    sub_100007AE0();
    sub_100007A14();
    goto LABEL_10;
  }

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, off_1000348C8[0]) != 2002)
    {
      goto LABEL_10;
    }
  }

  else if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(object, _xpc_error_key_description);
  }

  sub_100007A14();
  sub_100007AE0();
LABEL_10:
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void start(int a1, char **a2)
{
  __endptr = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = basename(*a2);
  snprintf(&__str, 0x28uLL, "com.apple.misd.mainQ.%p", &qword_100034BD8);
  HIBYTE(__str.st_atimespec.tv_sec) = 0;
  qword_100034BD8 = dispatch_queue_create(&__str, 0);
  if (!qword_100034BD8)
  {
    sub_100001108();
    goto LABEL_35;
  }

  memset(&__str, 0, sizeof(__str));
  if (!stat("/AppleInternal", &__str) && (__str.st_mode & 0xF000) == 0x4000 && (__str.st_mode & 0x140) != 0)
  {
    v5 = 1;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    v5 = !stat("/System/Library/PreferenceBundles/CarrierSettings.bundle", &__str) && (__str.st_mode & 0xF000) == 0x4000 && (__str.st_mode & 0x140) != 0;
  }

  dword_100034BC4 = v5;
  while (1)
  {
    v6 = getopt(a1, a2, "Be:p:P:t:v");
    v7 = v6;
    if (v6 > 111)
    {
      switch(v6)
      {
        case 'p':
          goto LABEL_20;
        case 't':
          v9 = strtol(optarg, &__endptr, 0);
          if (!*optarg || *__endptr || v9 < 0)
          {
            fprintf(__stderrp, "Bad idle timeout: %s\n");
            goto LABEL_35;
          }

          break;
        case 'v':
          dword_100034BD0 = 1;
          break;
        default:
          goto LABEL_48;
      }
    }

    else if (v6 <= 79)
    {
      if (v6 != 66)
      {
        if (v6 == -1)
        {
          byte_100034BB0 = 1;
          if (dword_100034BD0)
          {
            sub_100008C30();
          }

          if (sub_100008790())
          {
            if (dword_100034BC4)
            {
              sub_100001108();
              sub_10001A6F8();
            }

            *&__str.st_dev = 1;
            __str.st_ino = 0x200000000;
            sigaction(1, &__str, 0);
            sigaction(13, &__str, 0);
            sigaction(14, &__str, 0);
            sigaction(24, &__str, 0);
            sigaction(25, &__str, 0);
            sigaction(26, &__str, 0);
            sigaction(27, &__str, 0);
            sigaction(18, &__str, 0);
            sigaction(21, &__str, 0);
            sigaction(22, &__str, 0);
            sigaction(30, &__str, 0);
            sigaction(31, &__str, 0);
            sigaction(2, &__str, 0);
            sigaction(15, &__str, 0);
            sigaction(20, &__str, 0);
            v10 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, qword_100034BD8);
            qword_100034C98 = v10;
            if (v10)
            {
              dispatch_source_set_event_handler(v10, &stru_100030D20);
              dispatch_resume(qword_100034C98);
            }

            v11 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_100034BD8);
            qword_100034CA0 = v11;
            if (v11)
            {
              dispatch_source_set_event_handler(v11, &stru_100030D60);
              dispatch_resume(qword_100034CA0);
            }

            snprintf(&__str, 0x22uLL, "com.apple.misd.%p", &qword_100034BE0);
            BYTE1(__str.st_atimespec.tv_sec) = 0;
            qword_100034BE0 = dispatch_queue_create(&__str, 0);
            if (qword_100034BE0)
            {
              *(v14 + 6) = 0;
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = sub_1000084D4;
              block[3] = &unk_100030CE0;
              block[4] = &v13;
              dispatch_sync(qword_100034BD8, block);
              if (!*(v14 + 6))
              {
                sub_100008644();
                dispatch_main();
              }
            }

            else
            {
              sub_100001108();
              *(v14 + 6) = 12;
            }
          }
        }

        else
        {
LABEL_48:
          sub_10000843C(v4);
        }

LABEL_35:
        sub_100008380(1);
      }

      dword_100034A40 = 0;
    }

    else if (v6 == 80)
    {
LABEL_20:
      if (dword_100034BC4)
      {
        v8 = strtol(optarg, &__endptr, 0);
        if (!*optarg || *__endptr || (v8 - 0x10000) <= 0xFFFFFFFFFFFF0000)
        {
          fprintf(__stderrp, "Bad port : %s\n");
          goto LABEL_35;
        }

        ++dword_100034BC8;
        if (v7 == 112)
        {
          word_100034BCC = v8;
        }

        else
        {
          word_100034BCE = v8;
        }
      }
    }

    else
    {
      if (v6 != 101)
      {
        goto LABEL_48;
      }

      __strlcpy_chk();
    }
  }
}

void sub_100008380(int a1)
{
  if (qword_100034C90)
  {
    xpc_connection_cancel(qword_100034C90);
    xpc_release(qword_100034C90);
    qword_100034C90 = 0;
  }

  if (qword_100034BD8)
  {
    dispatch_release(qword_100034BD8);
    qword_100034BD8 = 0;
  }

  if (qword_100034BE0)
  {
    dispatch_release(qword_100034BE0);
    qword_100034BE0 = 0;
  }

  if (qword_100034C98)
  {
    dispatch_source_cancel(qword_100034C98);
    dispatch_release(qword_100034C98);
    qword_100034C98 = 0;
  }

  if (qword_100034CA0)
  {
    dispatch_source_cancel(qword_100034CA0);
    dispatch_release(qword_100034CA0);
    qword_100034CA0 = 0;
  }

  sub_1000157AC();
  sub_1000086BC();
  sub_100001108();
  sub_100008BD4();
  exit(a1);
}

uint64_t sub_10000843C(const char *a1)
{
  printf("Usage: %s ", a1);
  puts("[-Bcv6] [-e EXTIF] [-p LO] [-P HI] [-t TIMEOUT]");
  puts("\nptions:");
  puts("\t-B\tDisable bridge");
  puts("\t-v\tEnable verbose logging");
  puts("\t-e EXTIF\tExternal interface name");
  puts("\t-p LO\tPort forwarding range, LO");
  puts("\t-P HI\tPort forwarding range, HI");

  return puts("\t-t TIMEOUT\tIdle timeout");
}

void sub_1000084D4(uint64_t a1)
{
  sub_10001DA28();
  v2 = sub_100013B24();
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v2 || (v3 = sub_100014804(), (*(*(*(a1 + 32) + 8) + 24) = v3) != 0))
  {
    strerror(*(*(*(a1 + 32) + 8) + 24));
    sub_100001108();
    return;
  }

  v4 = sub_100017DCC();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    sub_10002042C();
    v6 = sub_10001F12C();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = sub_10001FFEC();
      if (!v5)
      {
        byte_100034CA8 = 1;
        goto LABEL_10;
      }
    }
  }

  sub_100001108();
LABEL_10:
  *(*(*(a1 + 32) + 8) + 24) = v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    strerror(v7);
    sub_100001108();
  }

  sub_1000192C8();
}

void sub_100008644()
{
  mach_service = xpc_connection_create_mach_service(off_100034858[0], qword_100034BD8, 1uLL);
  qword_100034C90 = mach_service;
  if (!mach_service)
  {
    sub_100001108();
    sub_100008380(12);
  }

  xpc_connection_set_event_handler(mach_service, &stru_100030DA0);
  v1 = qword_100034C90;

  xpc_connection_resume(v1);
}

uint64_t sub_1000086BC()
{
  if ((byte_100034CA8 & 1) == 0)
  {
    return sub_100001108();
  }

  sub_1000182D0();
  sub_10002044C();
  sub_10001F1BC();
  result = nullsub_2(v0, v1, v2);
  byte_100034CA8 = 0;
  return result;
}

const char *sub_100008768(uint64_t a1)
{
  if ((a1 - 1000) > 0x19)
  {
    return "unknown";
  }

  else
  {
    return (&off_100030DE0)[a1 - 1000];
  }
}

uint64_t sub_100008790()
{
  if (qword_100034CB0)
  {
    return 1;
  }

  v1 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", @"com.apple.MIS.logging.plist");
  qword_100034CB0 = v1;
  if (v1 && SCPreferencesSetCallback(v1, sub_100008880, 0) && SCPreferencesSetDispatchQueue(qword_100034CB0, qword_100034BD8))
  {
    sub_100008880(qword_100034CB0, 3);
    return 1;
  }

  v2 = SCError();
  SCErrorString(v2);
  sub_100001108();
  result = qword_100034CB0;
  if (qword_100034CB0)
  {
    CFRelease(qword_100034CB0);
    result = 0;
    qword_100034CB0 = 0;
  }

  return result;
}

void sub_100008880(const __SCPreferences *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    sub_100001108();
    Value = SCPreferencesGetValue(a1, @"MISDLogging");
    TypeID = CFBooleanGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        LODWORD(Value) = CFBooleanGetValue(Value);
      }

      else
      {
        LODWORD(Value) = 0;
      }
    }

    if (byte_100034BE8 != Value)
    {
      byte_100034BE8 = Value;
      if (!dword_100034BD0)
      {
        sub_100001170();
        sub_100001108();
      }
    }

    v6 = SCPreferencesGetValue(a1, @"EnablePFLog");
    v7 = CFBooleanGetTypeID();
    if (v6 && CFGetTypeID(v6) == v7)
    {
      v8 = CFBooleanGetValue(v6);
    }

    else
    {
      v8 = 0;
    }

    if (v8 != byte_100034BED)
    {
      byte_100034BED = v8;
      sub_100001108();
    }

    v9 = SCPreferencesGetValue(a1, @"IPv6OnlyPreferred");
    v10 = CFBooleanGetTypeID();
    v11 = v9 && CFGetTypeID(v9) == v10 && CFBooleanGetValue(v9) == 0;
    if (v11 != byte_100034BEA)
    {
      byte_100034BEA = v11;
      sub_100001108();
    }

    v12 = SCPreferencesGetValue(a1, @"IPv6UsePREF64");
    v13 = CFBooleanGetTypeID();
    v14 = v12 && CFGetTypeID(v12) == v13 && CFBooleanGetValue(v12) == 0;
    if (v14 != byte_100034BEB)
    {
      byte_100034BEB = v14;
      sub_100001108();
    }

    v15 = SCPreferencesGetValue(a1, @"IPv6Enable");
    v16 = CFBooleanGetTypeID();
    v17 = v15 && CFGetTypeID(v15) == v16 && CFBooleanGetValue(v15) == 0;
    if (v17 != byte_100034BE9)
    {
      byte_100034BE9 = v17;
      sub_100001108();
    }

    v18 = SCPreferencesGetValue(a1, @"PREF64OnDualSim");
    v19 = CFBooleanGetTypeID();
    if (v18 && CFGetTypeID(v18) == v19)
    {
      v20 = CFBooleanGetValue(v18);
    }

    else
    {
      v20 = 0;
    }

    if (v20 != byte_100034BEC)
    {
      byte_100034BEC = v20;
      sub_100001108();
    }

    SCPreferencesSynchronize(a1);
  }
}

void sub_100008BD4()
{
  v0 = qword_100034CB0;
  if (qword_100034CB0)
  {
    if (dword_100034BD0)
    {
      v1 = 0;
    }

    else
    {
      v1 = byte_100034BE8 == 0;
    }

    if (!v1)
    {
      byte_100034BE8 = 0;
      sub_100001170();
      v0 = qword_100034CB0;
    }

    CFRelease(v0);
    qword_100034CB0 = 0;
  }
}

uint64_t sub_100008C60(uint64_t a1, void *a2)
{
  v2 = qword_100034CC8;
  if (!qword_100034CC8)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[13];
    if (!a1 || sub_100009330(v2, a1))
    {
      v5 += sub_1000093E8(v2, a2);
    }

    v2 = v6;
  }

  while (v6);
  if (v5 && !qword_100034CC8)
  {
    sub_100001108();
    dispatch_source_cancel(qword_100034CD0);
    dispatch_release(qword_100034CD0);
    qword_100034CD0 = 0;
  }

  return v5;
}

uint64_t sub_100008D14(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4, char a5)
{
  v29 = a3;
  if (!qword_100034CC0)
  {
    goto LABEL_11;
  }

  sub_100001108();
  if ((a5 & 1) == 0)
  {
    v10 = qword_100034CC8;
    if (qword_100034CC8)
    {
      v11 = a4 / 0x3C + 2;
      while (!sub_100009330(v10, a2))
      {
        v10 = *(v10 + 104);
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      sub_100001108();
      v14 = *(v10 + 48);
      if (v14)
      {
        while (*v14 != a3)
        {
          v14 = v14[1];
          if (!v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_11;
      }

LABEL_16:
      v15 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
      v16 = *(v10 + 48);
      *v15 = a3;
      v15[1] = v16;
      *(v10 + 48) = v15;
      if (v11 > *(v10 + 98))
      {
        *(v10 + 98) = v11;
        *(v10 + 96) = v11;
        sub_100001108();
      }
    }

    else
    {
LABEL_10:
      v30 = 786433;
      v32 = 0uLL;
      v31 = 0;
      v28 = *(a1 + 24) + 20;
      sub_100001108();
      v12 = *(a1 + 24);
      if (os_nexus_controller_add_traffic_rule())
      {
        goto LABEL_11;
      }

      sub_100001108();
      v17 = malloc_type_malloc(0x70uLL, 0x1020040761EC19CuLL);
      v19 = a2[1];
      v18 = a2[2];
      *v17 = *a2;
      v17[1] = v19;
      v17[2] = v18;
      *(v17 + 13) = qword_100034CC8;
      qword_100034CC8 = v17;
      ++qword_100034CD8;
      v20 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
      *(v17 + 6) = 0;
      *(v17 + 7) = 0;
      *v20 = a3;
      v21 = a4 / 0x3C + 2;
      *(v17 + 48) = v21;
      *(v17 + 49) = v21;
      sub_100001108();
      *(v17 + 10) = 0;
      *(v17 + 11) = 0;
      v22 = *(v17 + 7);
      v20[1] = *(v17 + 6);
      *(v17 + 6) = v20;
      *(v17 + 7) = v22 + 1;
      v17[4] = v32;
    }

    if (qword_100034CD0)
    {
      goto LABEL_22;
    }

    v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100034BD8);
    qword_100034CD0 = v23;
    if (v23)
    {
      dispatch_source_set_event_handler(v23, &stru_100030ED0);
      v24 = qword_100034CD0;
      v25 = dispatch_walltime(0, 60000000000);
      dispatch_source_set_timer(v24, v25, 0xDF8475800uLL, 0);
      byte_100034CE0 = 1;
      sub_100001108();
LABEL_22:
      if (byte_100034CE0 == 1)
      {
        dispatch_resume(qword_100034CD0);
        byte_100034CE0 = 0;
      }

      goto LABEL_24;
    }

LABEL_11:
    sub_100001108();
    goto LABEL_12;
  }

  sub_100001108();
  v27 = sub_100008C60(a2, &v29);
  sub_100001108();
  if (v27)
  {
LABEL_24:
    v13 = 1;
    sub_100001108();
    return v13;
  }

LABEL_12:
  sub_100001108();
  return 0;
}

uint64_t sub_100009124(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) == 96)
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    v6 = socket(30, 2, 0);
    if (v6 < 0)
    {
      sub_100001108();
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    if (__strlcpy_chk() >= 0x10)
    {
      goto LABEL_8;
    }

    if (ioctl(v7, 0xC02469C9uLL, &v12) < 0)
    {
      sub_100001108();
    }

    else
    {
      v8 = sub_10000D6E4(a1, 0, 0);
      if (v8 != 2)
      {
        if (v8)
        {
          goto LABEL_9;
        }

        v9 = *(a2 + 8);
        if ((v9 & 4) != 0)
        {
          *(a2 + 12) = v13;
        }

        if ((v9 & 8) == 0 || (v11 = *(a1 + 704), __memcpy_chk(), v10 = *(a2 + 40), nw_nat64_synthesize_v6()))
        {
          v3 = 0;
          *(a2 + 9) = 96;
          goto LABEL_21;
        }

LABEL_8:
        sub_100001108();
LABEL_9:
        v3 = 0xFFFFFFFFLL;
LABEL_21:
        close(v7);
        return v3;
      }
    }

    v3 = 0;
    goto LABEL_21;
  }

  sub_100001108();
  return 0;
}

BOOL sub_100009330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 9);
  if (v2 != *(a2 + 9))
  {
    return 0;
  }

  if (v2 == 96)
  {
    if (*(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }

    if (*(a1 + 28) != *(a2 + 28) || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if (v2 != 4 || *(a1 + 24) != *(a2 + 24) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 44) == *(a2 + 44))
  {
    return *(a1 + 46) == *(a2 + 46);
  }

  return 0;
}

uint64_t sub_1000093E8(void *a1, void *a2)
{
  v4 = a1 + 6;
  result = a1[6];
  if (result)
  {
    while (1)
    {
      v6 = *(result + 8);
      if (!a2 || *result == *a2)
      {
        v7 = *v4;
        if (*v4 == result)
        {
          v9 = v4;
        }

        else
        {
          do
          {
            v8 = v7;
            v7 = *(v7 + 8);
          }

          while (v7 != result);
          v9 = (v8 + 8);
        }

        *v9 = *(v7 + 8);
        v10 = a1[7];
        if (!v10)
        {
          sub_100020B40();
        }

        a1[7] = v10 - 1;
        free(result);
        if (!a1[7])
        {
          break;
        }
      }

      result = v6;
      if (!v6)
      {
        return result;
      }
    }

    v11 = &qword_100034CC8;
    v12 = qword_100034CC8;
    if (qword_100034CC8 != a1)
    {
      do
      {
        v13 = v12;
        v12 = *(v12 + 104);
      }

      while (v12 != a1);
      v11 = (v13 + 104);
    }

    *v11 = *(v12 + 104);
    if (!qword_100034CD8)
    {
      sub_100020B14();
    }

    --qword_100034CD8;
    if (os_nexus_controller_remove_traffic_rule())
    {
      sub_100001108();
    }

    free(a1);
    return 1;
  }

  return result;
}

void sub_100009518(id a1)
{
  v1 = qword_100034CC8;
  if (qword_100034CC8)
  {
    v2 = 0;
    while ((PFStateQueryAppendTrafficDescriptor() & 1) != 0)
    {
      v1 = *(v1 + 104);
      --v2;
      if (!v1)
      {
        if (!v2)
        {
          break;
        }

        PFFindStatesByDescriptor();
        return;
      }
    }
  }

  sub_100001108();
}

void sub_1000095B4(id a1, BOOL a2, void *a3, void *a4)
{
  if (a2 && a3)
  {
    if (xpc_array_get_count(a3))
    {
      v5 = 0;
      do
      {
        v12 = 0;
        v11 = 0u;
        xpc_array_get_value(a3, v5);
        PFGetDescriptorStateDetails();
        v6 = qword_100034CC8;
        while (v6)
        {
          v7 = v6;
          v6 = *(v6 + 104);
          if (!uuid_compare((v7 + 64), &v11))
          {
            sub_100001108();
            if (v12 == 1 && *(v7 + 80) != 0)
            {
              sub_100001108();
              v10 = *(v7 + 88);
              v9 = *(v7 + 80);
              sub_100001108();
              *(v7 + 80) = 0u;
              *(v7 + 96) = *(v7 + 98);
            }

            else
            {
              if (!*(v7 + 96))
              {
                sub_100020B6C();
              }

              v8 = *(v7 + 96) - 1;
              *(v7 + 96) = v8;
              if (!v8)
              {
                sub_1000093E8(v7, 0);
              }

              sub_100001108();
            }

            break;
          }
        }

        ++v5;
      }

      while (v5 < xpc_array_get_count(a3));
    }
  }

  else
  {
    sub_100001108();
  }

  if (!qword_100034CC8)
  {
    sub_100001108();
    dispatch_source_cancel(qword_100034CD0);
    dispatch_release(qword_100034CD0);
    qword_100034CD0 = 0;
  }

  if (a3)
  {
    xpc_release(a3);
  }
}

xpc_object_t sub_1000097F8(uint64_t a1, uint64_t a2, xpc_object_t object, uint64_t a4, int a5)
{
  if (!a1 || !a2 || !object || !a4)
  {
    sub_100020BC4();
  }

  result = xpc_retain(object);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 16) = object;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 32) = a5;
  if (__CFADD__(dword_100034BF0++, 1))
  {
    sub_100020B98();
  }

  *a1 = qword_100034C28;
  qword_100034C28 = a1;
  return result;
}

void sub_100009894(uint64_t a1)
{
  if (!a1)
  {
    sub_100020C1C();
  }

  v1 = &qword_100034C28;
  v2 = &qword_100034C28;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = v2[3];
    if (v3 == a1)
    {
      for (i = qword_100034C28; i != v2; i = *i)
      {
        v1 = i;
      }

      *v1 = *i;
      if (!dword_100034BF0)
      {
        sub_100020BF0();
      }

      --dword_100034BF0;
      v6 = v2[1];
      v5 = v2[2];
      if (*(*(v3 + 16) + 8) == 101)
      {
        sub_100015B3C(4);
      }

      if (v5 && v6)
      {
        xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D3uLL);
        sub_100001CD4(v6, v5);
        xpc_release(v5);
      }

      sub_100001108();

      free(v2);
      return;
    }
  }
}

BOOL sub_1000099B4(_xpc_connection_s *a1, xpc_object_t original)
{
  v65 = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
    v65 = 19;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *(v6 + 32);
  if (v8 >= 2)
  {
    sub_100020C94();
  }

  if (v8 == 1)
  {
    if (!*(v6 + 16))
    {
      sub_100020C48();
    }

    sub_100001108();
  }

  value = xpc_dictionary_get_value(original, off_100034930[0]);
  if (!value || (v10 = value, xpc_get_type(value) != &_xpc_type_dictionary))
  {
    v65 = 22;
LABEL_15:
    sub_100001108();
    v13 = 2000;
    goto LABEL_16;
  }

  v12 = xpc_dictionary_get_value(original, off_1000348D0[0]);
  if (!v12 || xpc_get_type(v12) != &_xpc_type_uint64 || (v14 = xpc_dictionary_get_value(original, off_1000348D8[0])) == 0 || xpc_get_type(v14) != &_xpc_type_uint64 || (v15 = xpc_dictionary_get_value(v10, off_100034940[0])) == 0 || (v16 = v15, xpc_get_type(v15) != &_xpc_type_uint64) || xpc_uint64_get_value(v16) != 1 && ((v20 = xpc_dictionary_get_value(v10, off_100034938[0])) == 0 || xpc_get_type(v20) != &_xpc_type_string))
  {
    v65 = 22;
    goto LABEL_15;
  }

  v17 = xpc_dictionary_get_value(v10, off_100034950[0]);
  if (!v17 || xpc_get_type(v17) == &_xpc_type_uint64)
  {
    v18 = xpc_dictionary_get_value(v10, off_100034988[0]);
    if (!v18 || xpc_get_type(v18) == &_xpc_type_uint64)
    {
      v19 = xpc_dictionary_get_value(v10, off_100034958[0]);
      if (!v19 || xpc_get_type(v19) == &_xpc_type_uint64)
      {
        v63 = v7;
        v21 = sub_100003178();
        uint64 = xpc_dictionary_get_uint64(original, off_1000348D0[0]);
        v23 = xpc_dictionary_get_uint64(v10, off_100034988[0]);
        v24 = xpc_dictionary_get_uint64(v10, off_100034940[0]);
        if (v24 == 1)
        {
          if (sub_100015B24(&v65))
          {
            v21[2] |= 0x90u;
            v65 = sub_100002A8C(v21);
            if (v65)
            {
              goto LABEL_112;
            }

            v31 = sub_100002FB0();
            v65 = sub_1000031DC(v21, v31);
            if (v65)
            {
              sub_100001108();
LABEL_113:
              v36 = 0;
              goto LABEL_114;
            }

            sub_100003000();
            *(v50 + 4) = 0x6500000001;
            *(v50 + 288) = v21;
            *(v21 + 2) = v50;
            *(v63 + 40) = v50;
            v36 = v50;
            sub_100003094(v50);
            v51 = sub_10000538C(v21);
            v65 = v51;
            if (!v51)
            {
LABEL_114:
              sub_1000031C4(v21);
LABEL_115:
              if (v36)
              {
                sub_1000030A4(v36);
              }

              if (v31)
              {
                sub_1000030DC(v31);
              }

              goto LABEL_30;
            }

            if (v51 == 36)
            {
LABEL_105:
              v52 = malloc_type_malloc(0x28uLL, 0x10A0040D1175C0DuLL);
              sub_1000097F8(v52, a1, v5, v21, -1);
              goto LABEL_114;
            }

LABEL_119:
            sub_100001108();
            goto LABEL_114;
          }

          goto LABEL_80;
        }

        v62 = v24;
        if (v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = uint64 == 201;
        }

        if (v25)
        {
          v26 = 500;
        }

        else
        {
          v26 = v23;
        }

        if ((uint64 - 200) < 2)
        {
          v27 = 1;
          v28 = 1;
        }

        else if ((uint64 - 202) >= 2)
        {
          if (uint64 != 204)
          {
            v65 = 22;
LABEL_80:
            sub_100001108();
            v36 = 0;
LABEL_81:
            v31 = 0;
LABEL_82:
            if (!v21)
            {
              goto LABEL_115;
            }

            goto LABEL_114;
          }

          v28 = 0;
          v27 = 2;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        v21[93] = v27;
        if (v26 > 500)
        {
          if (v26 == 501)
          {
            goto LABEL_67;
          }

          if (v26 == 502)
          {
            v30 = v21[98] | 2;
LABEL_63:
            v21[98] = v30;
            goto LABEL_67;
          }
        }

        else
        {
          if (!v26)
          {
            goto LABEL_67;
          }

          if (v26 == 500)
          {
            if (v28)
            {
              v21[94] |= 2u;
              v29 = v21[98];
              if (byte_100034BB0 == 1)
              {
                v30 = v29 | 8;
              }

              else
              {
                v30 = v29 | 4;
              }

              goto LABEL_63;
            }

LABEL_67:
            v32 = xpc_dictionary_get_uint64(original, off_1000348D8[0]);
            if ((v32 - 302) >= 3 && v32 != 300)
            {
              if (v32 != 301)
              {
                v65 = 22;
                goto LABEL_112;
              }

              v21[88] |= 2u;
            }

            string = xpc_dictionary_get_string(v10, off_100034938[0]);
            if (!string)
            {
              v65 = 22;
              goto LABEL_112;
            }

            if ((v21[88] & 2) == 0 && sub_10000529C(string))
            {
              sub_100001108();
              v21[88] |= 2u;
            }

            v34 = xpc_dictionary_get_value(v10, off_100034990[0]);
            if (v34)
            {
              v35 = v34;
              if (xpc_get_type(v34) != &_xpc_type_dictionary)
              {
                v65 = 22;
LABEL_112:
                sub_100001108();
                v31 = 0;
                goto LABEL_113;
              }

              v49 = xpc_dictionary_get_value(v10, off_100034998[0]);
              if (v49)
              {
                if (xpc_get_type(v49) == &_xpc_type_dictionary)
                {
                  v65 = 22;
                  goto LABEL_112;
                }

                goto LABEL_102;
              }

              v53 = xpc_dictionary_get_value(v35, off_1000349A0[0]);
              if (!v53 || xpc_get_type(v53) != &_xpc_type_string || (v56 = xpc_dictionary_get_value(v35, off_1000349A8[0])) == 0 || xpc_get_type(v56) != &_xpc_type_string)
              {
                v65 = 22;
                goto LABEL_112;
              }

              v57 = xpc_dictionary_get_string(v35, off_1000349A0[0]);
              if (inet_pton(30, v57, v21 + 104) != 1)
              {
                v65 = 22;
                goto LABEL_112;
              }

              v21[108] = 96;
              v58 = xpc_dictionary_get_string(v35, off_1000349A8[0]);
              if (inet_pton(30, v58, v21 + 99) != 1)
              {
                v65 = 22;
                goto LABEL_112;
              }

              v21[103] = 64;
              v39 = v21[2] | 0x60;
            }

            else
            {
              v37 = xpc_dictionary_get_value(v10, off_100034998[0]);
              if (!v37)
              {
                goto LABEL_89;
              }

              v38 = v37;
              if (xpc_get_type(v37) != &_xpc_type_dictionary)
              {
LABEL_102:
                v65 = 22;
                goto LABEL_112;
              }

              v64 = 0;
              if (!sub_10000A670(v38, v21 + 396, &v64))
              {
                v31 = 0;
                v36 = 0;
                v65 = 22;
                goto LABEL_114;
              }

              v21[103] = v64;
              v39 = v21[2] | 0x20;
            }

            v21[2] = v39;
LABEL_89:
            v40 = xpc_dictionary_get_string(v10, off_100034960[0]);
            v41 = xpc_dictionary_get_string(v10, off_100034970[0]);
            v42 = xpc_dictionary_get_string(v10, off_100034968[0]);
            v43 = v40;
            if ((sub_10000A724(v21 + 88, v40, v42, v41) & 1) == 0)
            {
              v65 = 22;
              goto LABEL_112;
            }

            v44 = xpc_dictionary_get_string(original, off_1000348F0[0]);
            if (v44)
            {
              __strlcpy_chk();
            }

            v21[2] |= 0x10u;
            v21[128] |= *(v63 + 460);
            sub_100003000();
            v46 = v45;
            __strlcpy_chk();
            v47 = xpc_dictionary_get_uint64(v10, off_100034950[0]);
            v36 = v46;
            *(v46 + 12) = v47;
            if (!v47)
            {
              *(v46 + 12) = 1500;
              v21[117] = 1500;
              sub_100001108();
            }

            v48 = &qword_100034C38;
            do
            {
              v48 = *v48;
              if (!v48)
              {
                if (byte_100034BB0 == 1 && v43 == 0 && v41 == 0)
                {
                  inet_aton("172.20.10.1", v21 + 95);
                  v21[96] = -251658241;
                }

                v65 = sub_1000067D4(v21, v63);
                if (!v65)
                {
                  v65 = sub_100002A8C(v21);
                  if (!v65)
                  {
                    goto LABEL_140;
                  }
                }

LABEL_144:
                sub_100001108();
                goto LABEL_81;
              }
            }

            while (!sub_1000037D0(v21, v48));
            if (v48[62])
            {
              sub_100001108();
              v31 = 0;
              v65 = 13;
              goto LABEL_82;
            }

            sub_1000031C4(v21);
            sub_100002FA0(v48);
            v21 = v48;
LABEL_140:
            v59 = xpc_dictionary_get_value(original, off_1000348F0[0]);
            if (v59 && xpc_get_type(v59) != &_xpc_type_string)
            {
              v65 = 22;
              goto LABEL_144;
            }

            v65 = sub_1000033FC(v21, v46);
            if (v65)
            {
              goto LABEL_144;
            }

            *(v63 + 40) = v46;
            *(v46 + 4) = v62;
            if (v48)
            {
              v31 = 0;
LABEL_148:
              sub_100001108();
              goto LABEL_82;
            }

            if (v21[93])
            {
              v31 = sub_100002FB0();
              if (v44)
              {
                __strlcpy_chk();
              }

              v60 = sub_1000031DC(v21, v31);
              v65 = v60;
              if (!v60)
              {
                if (v31[2] != 100)
                {
                  v31[3] = sub_10001113C(v31 + 20);
                  if (v31[2] != 100 && !if_nametoindex(v31 + 20))
                  {
                    v65 = 22;
                    goto LABEL_119;
                  }
                }

LABEL_158:
                v61 = sub_10000538C(v21);
                v65 = v61;
                if (v61)
                {
                  if (v61 == 36)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_119;
                }

                goto LABEL_148;
              }

              if (v60 != 17)
              {
                goto LABEL_119;
              }

              sub_100001108();
              sub_1000030DC(v31);
            }

            v31 = 0;
            goto LABEL_158;
          }
        }

        sub_100001108();
        goto LABEL_67;
      }
    }
  }

  sub_100001108();
LABEL_30:
  if (v65 == 36)
  {
    goto LABEL_17;
  }

  if (v65)
  {
    v13 = 2000;
  }

  else
  {
    v13 = 2001;
  }

LABEL_16:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v13);
  sub_100001CD4(a1, v5);
LABEL_17:
  xpc_release(v5);
  return v65 == 0;
}

uint64_t sub_10000A670(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  string = xpc_dictionary_get_string(a1, off_1000349A8[0]);
  if (string && inet_pton(30, string, a2) == 1 && *a2 == 253)
  {
    *a3 = 64;
    return 1;
  }

  else
  {
    sub_100001108();
    return 0;
  }
}

uint64_t sub_10000A724(_DWORD *a1, char *a2, char *a3, char *a4)
{
  if (!a2 && !a3 && !a4)
  {
    return 1;
  }

  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (sub_10000FC38(a2) && sub_10000FC38(a3) && sub_10000FC38(a4))
        {
          v9 = inet_addr(a2);
          v10 = inet_addr(a3);
          v11 = inet_addr(a4);
          if (sub_10000FCB8(v11))
          {
            if (sub_100012234(v11) < 31 && sub_1000067A8(v9) && sub_1000067A8(v10))
            {
              v12 = bswap32(v9);
              v13 = bswap32(v11 & v9);
              if (v12 >= v13 && v13 + ~(-1 << -sub_100012234(v11)) >= bswap32(v10))
              {
                v14 = bswap32(v12 + 1);
                a1[8] = v11;
                a1[9] = v10;
                if ((v11 & v9) != v9)
                {
                  v14 = v9;
                }

                a1[7] = v14;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  sub_100001108();
  return 0;
}

uint64_t sub_10000A900(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (v7 = v6, (*(v6 + 460) & 1) != 0))
    {
      if (*(v6 + 32) >= 2u)
      {
        sub_100020CE0();
      }

      v10 = *(v6 + 40);
      if (v10)
      {
        v11 = *(v10 + 288);
        if (v11)
        {
          sub_100009894(v11);
          sub_100006524(v10);
          *(v7 + 40) = 0;
        }
      }

      v8 = 1;
      v9 = 2001;
    }

    else
    {
      sub_100001108();
      v8 = 0;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v8;
}

BOOL sub_10000A9F8(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108();
    v11 = 12;
    return v11 == 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (v6 && (v7 = v6, (*(v6 + 460) & 0x1B) != 0) && (value = xpc_dictionary_get_value(original, off_100034A08[0])) != 0 && (v9 = value, xpc_get_type(value) == &_xpc_type_dictionary))
  {
    v10 = sub_100003178();
    if (!sub_100007620(v9, (v10 + 88)))
    {
      v10[2] |= 0x100u;
      *(v10 + 62) = v7;
      if (v10[93] == 1)
      {
        v14 = sub_100002FB0();
        v15 = v14;
        if (*(v10 + 452))
        {
          snprintf(v14 + 20, 0x10uLL, "%s", v10 + 452);
        }

        else
        {
          snprintf(v14 + 20, 0x10uLL, "%s", off_100034980[0]);
          sub_100001108();
        }

        v16 = sub_1000031DC(v10, v15);
        if (v16)
        {
          v11 = v16;
          if (v16 != 17)
          {
            sub_100001108();
            goto LABEL_8;
          }

          sub_100001108();
          sub_1000030DC(v15);
        }
      }

      if (!sub_1000067D4(v10, v7) && (sub_1000039CC(v10) & 1) != 0)
      {
        xpc_connection_get_audit_token();
        if ((*(v7 + 460) & 0x18) != 0 && byte_100034BA0 >= 0x20u)
        {
          v17 = qword_100034C38;
          if (qword_100034C38)
          {
            v18 = 0;
            do
            {
              if (*(v17 + 296) != 4)
              {
                v19 = *(v17 + 320) == *(v10 + 40) && *(v17 + 328) == *(v10 + 41);
                v20 = v19 && *(v17 + 336) == *(v10 + 42);
                if (v20 && *(v17 + 344) == *(v10 + 43))
                {
                  ++v18;
                }
              }

              v17 = *v17;
            }

            while (v17);
            if (v18 >= 0x20u)
            {
              sub_100001108();
              v11 = 16;
              goto LABEL_8;
            }
          }
        }

        if (!sub_100002A8C(v10))
        {
          sub_100001108();
          v11 = 0;
          goto LABEL_8;
        }
      }
    }

    sub_100001108();
  }

  else
  {
    sub_100001108();
    v10 = 0;
  }

  v11 = 12;
LABEL_8:
  if (v11)
  {
    v12 = 2000;
  }

  else
  {
    v12 = 2001;
  }

  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v12);
  if (!v11)
  {
    xpc_dictionary_set_uuid(v5, off_100034A10[0], v10 + 356);
    xpc_dictionary_set_uint64(v5, off_100034960[0], v10[95]);
    xpc_dictionary_set_uint64(v5, off_100034970[0], v10[96]);
    xpc_dictionary_set_data(v5, off_1000349A8[0], v10 + 99, 0x10uLL);
    xpc_dictionary_set_uint64(v5, off_1000349B0[0], v10[103]);
    xpc_dictionary_set_uint64(v5, off_100034A20[0], v10[117]);
  }

  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v10)
  {
    sub_1000031C4(v10);
  }

  return v11 == 0;
}

uint64_t sub_10000AE40(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (v6 && (v7 = v6, (*(v6 + 460) & 0x1B) != 0))
  {
    value = xpc_dictionary_get_value(original, off_100034A08[0]);
    if (!value || (v9 = value, xpc_get_type(value) != &_xpc_type_dictionary) || _NETRBDeserializeNetwork(v9, &cf) || (v13 = sub_1000078AC(cf), (v14 = sub_100003D38((v13 + 4))) == 0) || (v15 = v14, v14[62] != v7))
    {
      sub_100001108();
      v10 = 0;
      v11 = 2000;
      goto LABEL_10;
    }

    if (!*(v14 + 74))
    {
      v10 = 1;
      sub_100001108();
      sub_100005E14(v15);
      goto LABEL_9;
    }

    *(v14 + 74) = 3;
  }

  else
  {
    sub_100001108();
  }

  v10 = 1;
LABEL_9:
  v11 = 2001;
LABEL_10:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v11);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

BOOL sub_10000B050(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108();
    v10 = 12;
    return v10 == 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
LABEL_7:
    sub_100001108();
    v11 = 0;
    v12 = 0;
    v10 = 12;
LABEL_8:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    goto LABEL_9;
  }

  v7 = v6;
  value = xpc_dictionary_get_value(original, off_100034A08[0]);
  if (value)
  {
    v9 = value;
    if (xpc_get_type(value) == &_xpc_type_dictionary && (*(v7 + 460) & 0x1B) != 0)
    {
      sub_100001108();
      if (!_NETRBDeserializeNetwork(v9, &cf))
      {
        v18 = sub_1000078AC(cf);
        if (!uuid_is_null((v18 + 4)))
        {
          v21 = sub_100003D38((v18 + 4));
          if (v21)
          {
            v22 = v21;
            sub_100001108();
            sub_100002FA0(v22);
            if (uuid_is_null(v22 + 356))
            {
              v12 = 0;
              string = 0;
              v49 = 0;
              v23 = 0;
              v50 = 0;
              v24 = 0;
              v22[62] = v7;
LABEL_83:
              if (sub_1000067D4(v22, v7) || sub_100002A8C(v22))
              {
                sub_100001108();
                v10 = 12;
                v11 = v22;
                goto LABEL_8;
              }

              sub_100001108();
LABEL_97:
              if ((v22[1] & 0x10) == 0 && !sub_100003CE4(v22 + 356, v7))
              {
                sub_100001108();
              }

              sub_100003000();
              v13 = v41;
              *(v41 + 288) = v22;
              *(v41 + 12) = *(v22 + 117);
              *(v41 + 389) = xpc_dictionary_get_BOOL(original, off_100034890[0]);
              *(v13 + 390) = v24;
              *(v13 + 391) = xpc_dictionary_get_BOOL(original, off_1000348B0[0]);
              *(v13 + 393) = xpc_dictionary_get_BOOL(original, off_100034898[0]);
              if (*(v22 + 93) == 2)
              {
                *(v13 + 392) = xpc_dictionary_get_BOOL(original, off_1000348A0[0]);
                v42 = sub_10001113C((v22[3] + 20));
                *(v13 + 12) = v42;
                *(v22 + 117) = v42;
              }

              if (xpc_dictionary_get_value(original, off_100034888[0]) && !xpc_dictionary_get_BOOL(original, off_100034888[0]))
              {
                if ((v22[1] & 0x10) != 0 && (*(v7 + 460) & 8) != 0)
                {
                  sub_100001108();
                  xpc_dictionary_set_uint64(v5, off_1000348B8[0], 0x1771uLL);
LABEL_124:
                  v10 = 0;
                  v11 = v22;
                  goto LABEL_10;
                }
              }

              else
              {
                uuid = xpc_dictionary_get_uuid(original, off_100034870[0]);
                if (sub_100016BC4(uuid, v5))
                {
LABEL_123:
                  sub_100001108();
                  goto LABEL_124;
                }

                v44 = xpc_dictionary_get_string(v5, off_100034878[0]);
                v45 = sub_1000075BC(v44);
                *(v13 + 320) = v45;
                *(v13 + 324) = WORD2(v45);
                *(v13 + 388) = 1;
              }

              if (v23 && v50)
              {
                xpc_dictionary_set_string(v5, off_100034960[0], v23);
                xpc_dictionary_set_string(v5, off_100034970[0], v50);
              }

              if (string)
              {
                xpc_dictionary_set_string(v5, off_1000348F0[0], string);
              }

              if (v49)
              {
                xpc_dictionary_set_string(v5, off_1000349A8[0], v49);
              }

              if ((v22[1] & 0x10) != 0)
              {
                *(v7 + 40) = v13;
              }

              ++dword_100034C20;
              if (!sub_10000EB3C(v13))
              {
                *(v13 + 328) = v5;
                *(v13 + 344) = a1;
              }

              goto LABEL_123;
            }

            v24 = 0;
            v49 = 0;
            v50 = 0;
            v23 = 0;
            string = 0;
LABEL_95:
            v12 = 0;
            goto LABEL_97;
          }
        }
      }
    }

    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(original, off_1000348D0[0]);
  if ((*(v7 + 460) & 0xB) == 0)
  {
    sub_100001108();
    v11 = 0;
    v12 = 0;
LABEL_25:
    v10 = 13;
    goto LABEL_8;
  }

  v16 = uint64;
  v11 = sub_100003178();
  v17 = xpc_dictionary_get_uint64(original, off_100034950[0]);
  if (v17 <= 0x4000)
  {
    if (v17)
    {
      if (v16 == 204)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = 1500;
    }

    v11[117] = v17;
    sub_100001108();
    if (v16 > 202)
    {
      if (v16 != 203)
      {
        if (v16 != 204)
        {
          goto LABEL_125;
        }

        v11[93] = 2;
        v20 = xpc_dictionary_get_string(original, off_1000348F0[0]);
        if (!v20 || (v19 = v20, !*v20))
        {
          sub_100001108();
          v13 = 0;
          v12 = 0;
          v10 = 0;
          goto LABEL_10;
        }

LABEL_47:
        v25 = xpc_dictionary_get_uuid(original, off_1000349B8[0]);
        if (v25)
        {
          if (v16 == 202)
          {
            v26 = v25;
            v27 = xpc_dictionary_get_string(original, off_1000349C0[0]);
            v28 = xpc_dictionary_get_string(original, off_100034970[0]);
            if ((v27 == 0) != (v28 != 0))
            {
              if (!v27 || (v29 = v28, inet_pton(2, v27, v11 + 95) == 1) && inet_pton(2, v29, v11 + 96) == 1)
              {
                v30 = xpc_dictionary_get_string(original, off_1000349C8[0]);
                if (!v30 || inet_pton(30, v30, v11 + 109) == 1)
                {
                  v31 = v19;
                  uuid_copy(v11 + 536, v26);
LABEL_58:
                  v47 = 0;
                  v49 = 0;
                  v50 = 0;
                  goto LABEL_59;
                }
              }
            }
          }
        }

        else
        {
          if (v16 == 204)
          {
            v31 = v19;
            goto LABEL_58;
          }

          v37 = xpc_dictionary_get_string(original, off_100034960[0]);
          v38 = xpc_dictionary_get_string(original, off_100034970[0]);
          v39 = xpc_dictionary_get_string(original, off_100034968[0]);
          v40 = xpc_dictionary_get_value(original, off_100034998[0]);
          v50 = v38;
          if (sub_10000A724(v11 + 88, v37, v39, v38))
          {
            if (v40)
            {
              if (v11[93] != 1)
              {
                goto LABEL_125;
              }

              if (xpc_get_type(v40) != &_xpc_type_dictionary)
              {
                goto LABEL_125;
              }

              v46 = xpc_dictionary_get_string(v40, off_1000349A8[0]);
              if (!v46)
              {
                goto LABEL_125;
              }

              v47 = v37;
              v49 = v46;
              if (inet_pton(30, v46, v11 + 99) != 1)
              {
                goto LABEL_125;
              }

              v31 = v19;
              v11[103] = 64;
            }

            else
            {
              v47 = v37;
              v31 = v19;
              v49 = 0;
            }

LABEL_59:
            v32 = v11[93];
            v12 = sub_100002FB0();
            v33 = off_100034980[0];
            if (v32 != 1)
            {
              v33 = v31;
            }

            snprintf(v11 + 452, 0x10uLL, "%s", v33);
            v34 = off_100034980[0];
            if (v32 != 1)
            {
              v34 = v31;
            }

            snprintf(v12 + 20, 0x10uLL, "%s", v34);
            v35 = sub_1000031DC(v11, v12);
            if (v35)
            {
              v10 = v35;
              if (v35 != 17)
              {
                sub_100001108();
                goto LABEL_8;
              }

              sub_100001108();
              sub_1000030DC(v12);
              v12 = 0;
            }

            string = v31;
            v11[2] |= 0x110u;
            v36 = xpc_dictionary_get_BOOL(original, off_1000348A8[0]);
            v24 = v36;
            if (v36)
            {
              v11[2] |= 0x200u;
            }

            v22 = &qword_100034C38;
            v23 = v47;
            do
            {
              v22 = *v22;
              if (!v22)
              {
                v22 = v11;
                goto LABEL_83;
              }
            }

            while (!sub_1000037D0(v11, v22));
            if (v22[62])
            {
              sub_100001108();
              goto LABEL_25;
            }

            sub_1000031C4(v11);
            if (v12)
            {
              sub_1000030DC(v12);
            }

            sub_100002FA0(v22);
            goto LABEL_95;
          }
        }

LABEL_125:
        sub_100001108();
        v12 = 0;
        v10 = 22;
        goto LABEL_8;
      }
    }

    else
    {
      if ((v16 - 200) < 2)
      {
        v19 = 0;
        v11[93] = 1;
        v11[94] |= 2u;
        v11[98] |= 4u;
        goto LABEL_47;
      }

      if (v16 != 202)
      {
        goto LABEL_125;
      }

      v11[94] |= 4u;
      v11[98] |= 0x10u;
    }

    v19 = 0;
    v11[93] = 0;
    goto LABEL_47;
  }

LABEL_28:
  sub_100001108();
  v10 = 0;
  v12 = 0;
LABEL_9:
  v13 = 0;
  if (v11)
  {
LABEL_10:
    sub_1000031C4(v11);
  }

  if (v12)
  {
    sub_1000030DC(v12);
  }

  if (v13)
  {
    sub_1000030A4(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10 == 0;
}

uint64_t sub_10000BBE4(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
    sub_100001108();
LABEL_8:
    v9 = 1;
    v10 = 2001;
    goto LABEL_12;
  }

  v7 = v6;
  value = xpc_dictionary_get_value(original, off_100034A08[0]);
  if (value)
  {
    if (!_NETRBDeserializeNetwork(value, &cf))
    {
      v11 = sub_1000078AC(cf);
      if (!uuid_is_null((v11 + 4)))
      {
        v13 = sub_100003D38((v11 + 4));
        if (v13)
        {
          v14 = v13;
          if (((v13[1] & 0x10 ^ 0x1B) & *(v7 + 460)) != 0)
          {
            uint64 = xpc_dictionary_get_uint64(original, off_100034A18[0]);
            if (uint64)
            {
              v16 = v14[4];
              if (v16)
              {
                while (*(v16 + 400) != uint64)
                {
                  v16 = *(v16 + 280);
                  if (!v16)
                  {
                    goto LABEL_11;
                  }
                }

                sub_100001108();
                sub_100006524(v16);
                goto LABEL_8;
              }
            }
          }

          else
          {
            *(v13 + 2);
          }
        }
      }
    }
  }

LABEL_11:
  sub_100001108();
  v9 = 0;
  v10 = 2000;
LABEL_12:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v10);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

BOOL sub_10000BE68(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (sub_100001E50(original, a1) && (uint64 = xpc_dictionary_get_uint64(original, off_1000348E8[0]), uint64 - 1024 > 0xFFFFFFFB))
    {
      if (uint64 < 0x3FE)
      {
        v9 = sub_1000158A0(uint64);
      }

      else
      {
        v9 = sub_100015A84(uint64);
      }

      v7 = v9 == 0;
      if (v9)
      {
        v8 = 2000;
      }

      else
      {
        v8 = 2001;
      }
    }

    else
    {
      sub_100001108();
      v7 = 0;
      v8 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v8);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v7;
}

uint64_t sub_10000BF70(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    *string = 0;
    v12 = 0;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0)
    {
      v9 = sub_1000161FC(string);
      v7 = off_1000348C8[0];
      if (!v9)
      {
        xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
        xpc_dictionary_set_string(v5, off_1000348F0[0], string);
        v8 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      sub_100001108();
      v7 = off_1000348C8[0];
    }

    xpc_dictionary_set_uint64(v5, v7, 0x7D0uLL);
    v8 = 0;
LABEL_8:
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v8;
  }

  sub_100001108();
  return 0;
}

uint64_t sub_10000C0A0(_xpc_connection_s *a1, xpc_object_t original)
{
  LODWORD(value) = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0)
    {
      sub_100016044(&value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_100034900[0], WORD1(value));
      xpc_dictionary_set_uint64(v5, off_100034908[0], value);
      v7 = 1;
    }

    else
    {
      sub_100001108();
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
      v7 = 0;
    }

    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v7;
}

uint64_t sub_10000C1B8(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0 && (value = xpc_dictionary_get_value(original, off_100034900[0])) != 0 && xpc_get_type(value) == &_xpc_type_uint64 && (uint64 = xpc_dictionary_get_uint64(original, off_100034900[0]), uint64 < 0x10000) && (v12 = uint64, (v13 = xpc_dictionary_get_value(original, off_100034908[0])) != 0) && xpc_get_type(v13) == &_xpc_type_uint64 && (v14 = xpc_dictionary_get_uint64(original, off_100034908[0]), v14 < 0x10000))
    {
      v7 = sub_100015FA4(v12, v14);
      if (v7)
      {
        v10 = 2001;
      }

      else
      {
        v10 = 2000;
      }
    }

    else
    {
      sub_100001108();
      v7 = 0;
      v10 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v10);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_10000C330(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (sub_100001E50(original, a1))
    {
      v6 = sub_1000161B4();
      if (v6)
      {
        v7 = 2001;
      }

      else
      {
        v7 = 2000;
      }
    }

    else
    {
      sub_100001108();
      v6 = 0;
      v7 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v7);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v6;
}

uint64_t sub_10000C3F4(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6)
    {
      uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]);
      if (uint64 - 7 > 0xFFFFFFFA)
      {
        value = xpc_dictionary_get_value(original, netrbClientHostDeviceId[0]);
        if (value && xpc_get_type(value) == &_xpc_type_uint64)
        {
          v10 = xpc_dictionary_get_uint64(original, off_100034948[0]);
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

        sub_10000E8A8(v6, uint64, v10);
        v6 = 1;
        v8 = 2001;
        goto LABEL_13;
      }

      sub_100001108();
      v6 = 0;
    }

    else
    {
      sub_100001108();
    }

    v8 = 2000;
LABEL_13:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v8);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v6;
  }

  sub_100001108();
  return 0;
}

uint64_t sub_10000C54C(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6)
    {
      uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]);
      if (uint64 - 7 > 0xFFFFFFFA)
      {
        value = xpc_dictionary_get_value(original, netrbClientHostDeviceId[0]);
        if (value && xpc_get_type(value) == &_xpc_type_uint64)
        {
          v10 = xpc_dictionary_get_uint64(original, off_100034948[0]);
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

        sub_10000E9B8(v6, uint64, v10);
        v6 = 1;
        v8 = 2001;
        goto LABEL_13;
      }

      sub_100001108();
      v6 = 0;
    }

    else
    {
      sub_100001108();
    }

    v8 = 2000;
LABEL_13:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v8);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v6;
  }

  sub_100001108();
  return 0;
}

BOOL sub_10000C6A4(_xpc_connection_s *a1, xpc_object_t original)
{
  value = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    v7 = v6 != 0;
    if (v6)
    {
      sub_10000EAA8(v6, &value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_100034918[0], HIDWORD(value));
      v8 = off_100034920[0];
      v9 = value;
      v10 = v5;
    }

    else
    {
      sub_100001108();
      v8 = off_1000348C8[0];
      v10 = v5;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v10, v8, v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v7;
}

uint64_t sub_10000C7AC(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (v7 = v6, uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]), uint64 - 7 > 0xFFFFFFFA) && xpc_dictionary_get_value(original, off_100034928[0]) && (v10 = xpc_dictionary_get_uint64(original, off_100034928[0]), (sub_10000EADC(v7, uint64, v10) & 1) != 0))
    {
      v9 = 1;
      v11 = 2001;
    }

    else
    {
      sub_100001108();
      v9 = 0;
      v11 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v11);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v9;
}

uint64_t sub_10000C908(_xpc_connection_s *a1, void *a2)
{
  sub_100001108();
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  v15 = 0;
  v6 = sub_100001E50(a2, a1);
  v7 = v6;
  if (!v6 || *(v6 + 16) || (*(*(*(v6 + 40) + 288) + 8) & 0x10) == 0)
  {
    sub_100001108();
    v8 = 0;
    v9 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  *v9 = 0u;
  v9[1] = 0u;
  if ((sub_10000CB58(a2, v9 + 8, v9 + 6, v9 + 9, v9 + 1, v9 + 5, &v15) & 1) == 0)
  {
LABEL_21:
    sub_100001108();
    v8 = 0;
    goto LABEL_9;
  }

  if (sub_100006BE8(*(*(v7 + 40) + 288), v9))
  {
    v13 = *(*(v7 + 40) + 288) + 40;
    goto LABEL_21;
  }

  if (sub_10000CD28(v9))
  {
    goto LABEL_21;
  }

  *v9 = *(v7 + 24);
  *(v7 + 24) = v9;
  if (!sub_10001BB78())
  {
    v8 = 1;
    v11 = 2001;
    v10 = 1;
    goto LABEL_11;
  }

  v14 = *(*(v7 + 40) + 288) + 40;
  sub_100001108();
  v10 = 0;
  v8 = 1;
LABEL_10:
  v11 = 2000;
LABEL_11:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v11);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v10)
  {
    return 1;
  }

  if (v8)
  {
    *(v7 + 24) = **(v7 + 24);
  }

  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t sub_10000CB58(void *a1, _BYTE *a2, _WORD *a3, _BYTE *a4, void *a5, _WORD *a6, const char **a7)
{
  value = xpc_dictionary_get_value(a1, off_1000349D0[0]);
  if (!value)
  {
    goto LABEL_3;
  }

  v14 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  uint64 = xpc_dictionary_get_uint64(v14, off_1000349F8[0]);
  *a4 = uint64;
  if (uint64 != 2 && uint64 != 30)
  {
    goto LABEL_3;
  }

  if (a2)
  {
    v19 = xpc_dictionary_get_uint64(v14, off_1000349E0[0]);
    *a2 = v19;
    if (v19 != 6 && v19 != 17)
    {
      goto LABEL_3;
    }
  }

  if (a3 && (v21 = xpc_dictionary_get_uint64(v14, off_1000349E8[0]), (*a3 = v21) == 0) || a6 && (v22 = xpc_dictionary_get_uint64(v14, off_100034A00[0]), (*a6 = v22) == 0))
  {
LABEL_3:
    sub_100001108();
    string = 0;
    goto LABEL_4;
  }

  if (a5)
  {
    string = xpc_dictionary_get_string(v14, off_1000349F0[0]);
    if (!string || !inet_pton(*a4, string, a5))
    {
      sub_100001108();
LABEL_4:
      result = 0;
      if (!a7)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  else
  {
    string = 0;
  }

  result = 1;
  if (a7)
  {
LABEL_5:
    *a7 = string;
  }

  return result;
}

uint64_t sub_10000CD28(uint64_t a1)
{
  v1 = qword_100034C18;
  if (qword_100034C18)
  {
    do
    {
      v3 = v1[5];
      if (v3)
      {
        v4 = *(v3 + 288);
        if (*(v4 + 372) == 1)
        {
          if (*(v4 + 296))
          {
            v5 = v1 + 3;
            while (1)
            {
              v5 = *v5;
              if (!v5)
              {
                break;
              }

              if (sub_100006B5C(v5, a1, 0))
              {
                return 1;
              }
            }
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_10000CDB8(_xpc_connection_s *a1, void *a2)
{
  sub_100001108();
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(a2, a1);
  v7 = v6;
  if (!v6)
  {
    sub_100001108();
    v8 = 0;
LABEL_10:
    v9 = 2000;
    goto LABEL_11;
  }

  if (*(v6 + 16) || (*(*(*(v6 + 40) + 288) + 8) & 0x10) == 0)
  {
    sub_100001108();
    v8 = 0;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v8 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  *v8 = 0u;
  v8[1] = 0u;
  if ((sub_10000CB58(a2, v8 + 8, v8 + 6, v8 + 9, 0, 0, 0) & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = (v7 + 24);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_27;
  }

  v13 = 0;
  do
  {
    v14 = *v11;
    if (sub_100006B5C(v11, v8, 1))
    {
      v15 = *v12;
      if (*v12 == v11)
      {
        v16 = (v7 + 24);
      }

      else
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15 != v11);
      }

      *v16 = *v15;
      v13 = 1;
    }

    v11 = v14;
  }

  while (v14);
  if ((v13 & 1) == 0)
  {
LABEL_27:
    sub_100001108();
    goto LABEL_9;
  }

  if (sub_10001BB78())
  {
    v17 = *(*(v7 + 40) + 288) + 40;
    goto LABEL_27;
  }

  v7 = 1;
  v9 = 2001;
LABEL_11:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v8)
  {
    free(v8);
  }

  return v7;
}

uint64_t sub_10000CFFC(_xpc_connection_s *a1, void *a2)
{
  sub_100001108();
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108();
    return 0;
  }

  v5 = reply;
  string[0] = 0;
  v6 = sub_100001E50(a2, a1);
  if (v6 && (v7 = v6, !*(v6 + 16)) && (*(*(*(v6 + 40) + 288) + 8) & 0x10) != 0)
  {
    if (sub_10000CB58(a2, 0, 0, string, 0, 0, 0))
    {
      v12 = *(v7 + 24);
      if (!v12)
      {
        goto LABEL_34;
      }

      v10 = 0;
      v13 = string[0];
      do
      {
        if (*(v12 + 9) == v13)
        {
          v14 = v13;
          if (!v10)
          {
            v10 = xpc_array_create(0, 0);
            v14 = *(v12 + 9);
          }

          v15 = *(v12 + 8);
          v16 = *(v12 + 6);
          v17 = *(v12 + 5);
          if ((v14 == 30 || v14 == 2) && *(v12 + 5) && inet_ntop(v14, v12 + 2, &string[1], 0x2Eu))
          {
            v18 = xpc_dictionary_create(0, 0, 0);
            v19 = v18;
            if (v15)
            {
              xpc_dictionary_set_uint64(v18, off_1000349E0[0], v15);
            }

            if (v16)
            {
              xpc_dictionary_set_uint64(v19, off_1000349E8[0], v16);
            }

            xpc_dictionary_set_uint64(v19, off_1000349F8[0], v14);
            xpc_dictionary_set_uint64(v19, off_100034A00[0], v17);
            xpc_dictionary_set_string(v19, off_1000349F0[0], &string[1]);
          }

          else
          {
            v19 = 0;
          }

          xpc_array_append_value(v10, v19);
          xpc_release(v19);
        }

        v12 = *v12;
      }

      while (v12);
      if (v10)
      {
        xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
        xpc_dictionary_set_value(v5, off_1000349D8[0], v10);
        v8 = 1;
      }

      else
      {
LABEL_34:
        sub_100001108();
        xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
        v10 = 0;
        v8 = 0;
      }

      goto LABEL_10;
    }

    v8 = 1;
    v9 = 2001;
  }

  else
  {
    sub_100001108();
    v8 = 0;
    v9 = 2000;
  }

  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
  v10 = 0;
LABEL_10:
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v10)
  {
    xpc_release(v10);
  }

  return v8;
}

uint64_t sub_10000D32C(_xpc_connection_s *a1, void *a2)
{
  sub_100001108();

  return sub_10000D37C(a1, a2, 0);
}

uint64_t sub_10000D37C(_xpc_connection_s *a1, void *a2, char a3)
{
  if (!sub_100001E50(a2, a1))
  {
    goto LABEL_26;
  }

  v6 = qword_100034C38;
  if (!qword_100034C38)
  {
    goto LABEL_26;
  }

  v7 = 0;
  do
  {
    if (!v7)
    {
      v8 = v6[3];
      if (!v8 || (*(v8 + 776) & 2) != 0)
      {
        v7 = 0;
      }

      else if (*(v8 + 8) == 100)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = *v6;
  }

  while (v6);
  if (!v7)
  {
    goto LABEL_26;
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if ((sub_100006F24(a2, &v22) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (BYTE9(v22) == 4 && (~BYTE8(v22) & 0x14) == 0 && PFQueryGatewayAddrAndPortForDescriptor())
  {
    DWORD2(v23) = 0;
    WORD6(v24) = 0;
    sub_100001108();
  }

  else
  {
    sub_100001108();
    BYTE8(v22) &= 0xEBu;
  }

  if ((sub_100009124(*(v7 + 24), &v22) & 0x80000000) == 0)
  {
    LOBYTE(v22) = 2;
    WORD1(v22) = 48;
    DWORD1(v22) = 3;
    value = xpc_dictionary_get_value(a2, netrbClientLowLatencyFlowParam[0]);
    v10 = xpc_dictionary_get_value(value, netrbClientIfnetTrafficDescriptorDeviceId[0]);
    if (v10 && (v11 = v10, xpc_get_type(v10) == &_xpc_type_uint64))
    {
      v12 = xpc_uint64_get_value(v11);
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    v19 = xpc_dictionary_get_value(value, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
    if (v19 && (v20 = v19, xpc_get_type(v19) == &_xpc_type_uint64))
    {
      v21 = xpc_uint64_get_value(v20);
      sub_100001108();
    }

    else
    {
      v21 = 300;
    }

    v13 = sub_100008D14(v7, &v22, v12, v21, a3);
  }

  else
  {
LABEL_26:
    sub_100001108();
    v13 = 0;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v15 = reply;
    if (v13)
    {
      v16 = 2001;
    }

    else
    {
      v16 = 2000;
    }
  }

  else
  {
    v16 = 2000;
    do
    {
      sub_100001108();
      v17 = xpc_dictionary_create_reply(a2);
    }

    while (!v17);
    v15 = v17;
    v13 = 0;
  }

  xpc_dictionary_set_uint64(v15, off_1000348C8[0], v16);
  sub_100001CD4(a1, v15);
  xpc_release(v15);
  return v13 & 1;
}

uint64_t sub_10000D694(_xpc_connection_s *a1, void *a2)
{
  sub_100001108();

  return sub_10000D37C(a1, a2, 1);
}

uint64_t sub_10000D6E4(uint64_t a1, char a2, char *a3)
{
  if (*(a1 + 804) != 1 || (a2 & 1) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = socket(30, 2, 0);
    if (v6 < 0)
    {
      sub_100001108();
      *(a1 + 804) = -1;
      return 1;
    }

    v7 = v6;
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100001108();
      v5 = 1;
LABEL_11:
      *(a1 + 804) = -1;
LABEL_12:
      close(v7);
      return v5;
    }

    if (ioctl(v7, 0xC06069C1uLL, &v12) < 0 || (v14 - 13) <= 0xFFFFFFF3)
    {
      sub_100001108();
      v5 = 2;
      goto LABEL_11;
    }

    *(a1 + 804) = 1;
    if (*(a1 + 688) == v13 && *(a1 + 696) == *(&v13 + 1) && *(a1 + 704) == v14)
    {
      sub_100001108();
      if (a3)
      {
        v11 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      *(a1 + 688) = v13;
      *(a1 + 704) = v14;
      if (a3)
      {
        v11 = 1;
LABEL_25:
        *a3 = v11;
      }
    }

    sub_100001108();
    v5 = 0;
    goto LABEL_12;
  }

  sub_100001108();
  return 0;
}

uint64_t sub_10000D930()
{
  if (dword_100034A54 != -1)
  {
    return 0;
  }

  notify_key = nwi_state_get_notify_key();
  if (!notify_register_dispatch(notify_key, &dword_100034A54, qword_100034BD8, &stru_100030F50))
  {
    sub_10000D9C0();
    sub_10001D840(1);
    sub_10001D934(1);
    return 0;
  }

  sub_100001108();
  result = 0xFFFFFFFFLL;
  dword_100034A54 = -1;
  return result;
}

uint64_t sub_10000D9C0()
{
  v0 = dword_100034C08;
  v1 = dword_100034C0C;
  v15 = 0;
  if (dword_100034A54 == -1 || (v14 = nwi_state_copy()) == 0)
  {

    return sub_100001108();
  }

  else
  {
    sub_100001108();
    for (i = qword_100034BF8; i; i = *i)
    {
      *(i + 40) = *(i + 41);
      *(i + 28) = -1;
    }

    for (j = qword_100034C00; j; j = *j)
    {
      *(j + 40) = *(j + 41);
      *(j + 28) = -1;
    }

    dword_100034C08 = 0;
    dword_100034C0C = 0;
    result = sub_100012594(&v14, 2, &v15 + 1);
    if (v14)
    {
      v5 = result;
      result = sub_100012594(&v14, 30, &v15);
      if (v14)
      {
        v6 = (v0 != dword_100034C08) | v5;
        v7 = (v1 != dword_100034C0C) | result;
        if (v0 != dword_100034C08) | v5 & 1 || (v7)
        {
          v8 = qword_100034C38;
          if (qword_100034C38)
          {
            v9 = off_100034980[0];
            while (1)
            {
              v10 = v8[3];
              if (v10)
              {
                if (!strncmp((v10 + 20), v9, 4uLL))
                {
                  break;
                }
              }

              v8 = *v8;
              if (!v8)
              {
                goto LABEL_44;
              }
            }

            v11 = HIDWORD(v15);
            if (SHIDWORD(v15) >= v15)
            {
              v11 = v15;
            }

            if (!v11)
            {
              v11 = 1500;
            }

            *(v10 + 12) = v11;
            *(v10 + 16) = v11 - 40;
            if (v6)
            {
              sub_10001BE98();
              v12 = qword_100034BF8;
              if (qword_100034BF8)
              {
                while (*(v12 + 40) != 1 || (*(v12 + 41) & 1) != 0)
                {
                  v12 = *v12;
                  if (!v12)
                  {
                    goto LABEL_33;
                  }
                }

                nullsub_2(v10 + 20, 1, 0);
              }
            }

LABEL_33:
            if ((v7 & (byte_100034BE9 == 0)) == 1)
            {
              sub_10001D2DC();
              v13 = qword_100034C00;
              if (qword_100034C00)
              {
                while (*(v13 + 40) != 1 || (*(v13 + 41) & 1) != 0)
                {
                  v13 = *v13;
                  if (!v13)
                  {
                    goto LABEL_40;
                  }
                }

                nullsub_2(v10 + 20, 0, 1);
              }

LABEL_40:
              if (sub_10001F200())
              {
                sub_100001108();
              }

              if (sub_100020044())
              {
                sub_100001108();
              }
            }
          }
        }

LABEL_44:

        return nwi_state_release();
      }
    }
  }

  return result;
}

uint64_t sub_10000DCB4()
{
  result = dword_100034A54;
  if (dword_100034A54 != -1)
  {
    notify_cancel(dword_100034A54);
    dword_100034A54 = -1;
    v1 = qword_100034BF8;
    if (qword_100034BF8)
    {
      do
      {
        v2 = qword_100034BF8;
        if (qword_100034BF8 == v1)
        {
          v3 = &qword_100034BF8;
        }

        else
        {
          do
          {
            v3 = v2;
            v2 = *v2;
          }

          while (v2 != v1);
        }

        v4 = *v1;
        *v3 = *v2;
        free(v1);
        if (!dword_100034CE8)
        {
          sub_100020D2C();
        }

        --dword_100034CE8;
        v1 = v4;
      }

      while (v4);
    }

    v5 = qword_100034C00;
    if (qword_100034C00)
    {
      do
      {
        v6 = qword_100034C00;
        if (qword_100034C00 == v5)
        {
          v7 = &qword_100034C00;
        }

        else
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6 != v5);
        }

        v8 = *v5;
        *v7 = *v6;
        free(v5);
        if (!dword_100034CEC)
        {
          sub_100020D58();
        }

        --dword_100034CEC;
        v5 = v8;
      }

      while (v8);
    }

    sub_10001D840(0);
    result = sub_10001D934(0);
  }

  dword_100034C08 = 0;
  dword_100034C0C = 0;
  return result;
}

uint64_t sub_10000DDE4(uint64_t a1)
{
  v1 = (a1 + 20);
  if (!*(a1 + 20))
  {
    sub_100020DB0();
  }

  if ((*(a1 + 776) & 2) != 0)
  {
    sub_100020D84();
  }

  if (*(a1 + 8) != 102)
  {
    v3 = sub_10000E0F8(a1);
    if (v3)
    {
      v4 = v3;
      sub_100001108();
      return v4;
    }
  }

  if (!*(a1 + 760))
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = a1;
    v9 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", sub_100013310, &context);
    *(a1 + 760) = v9;
    if (v9)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v6 = CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x600u);
        if (v6)
        {
          NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v6, kSCEntNetIPv4);
          if (NetworkInterfaceEntity)
          {
            CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
            v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v6, kSCEntNetIPv6);
            if (v8)
            {
              CFArrayAppendValue(Mutable, v8);
              SCDynamicStoreSetNotificationKeys(*(a1 + 760), Mutable, 0);
              v10 = SCDynamicStoreSetDispatchQueue(*(a1 + 760), qword_100034BD8);
              if (v10)
              {
                sub_100013310(v10, Mutable, a1);
                goto LABEL_8;
              }

              v14 = SCError();
              SCErrorString(v14);
              sub_100001108();
              v4 = 22;
LABEL_22:
              v12 = *(a1 + 760);
              if (v12)
              {
                SCDynamicStoreSetDispatchQueue(v12, 0);
                CFRelease(*(a1 + 760));
                *(a1 + 760) = 0;
              }

              goto LABEL_24;
            }

            sub_100001108();
LABEL_21:
            v4 = 12;
            goto LABEL_22;
          }

          sub_100001108();
LABEL_20:
          v8 = 0;
          goto LABEL_21;
        }

        sub_100001108();
LABEL_19:
        NetworkInterfaceEntity = 0;
        goto LABEL_20;
      }

      sub_100001108();
    }

    else
    {
      v11 = __error();
      strerror(*v11);
      sub_100001108();
      Mutable = 0;
    }

    v6 = 0;
    goto LABEL_19;
  }

  sub_100001108();
  Mutable = 0;
  v6 = 0;
  NetworkInterfaceEntity = 0;
  v8 = 0;
LABEL_8:
  sub_100001108();
  v4 = 0;
LABEL_24:
  if (v8)
  {
    CFRelease(v8);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    sub_100001108();
    sub_10000E3A8(a1);
  }

  return v4;
}

uint64_t sub_10000E0F8(uint64_t a1)
{
  v12 = 1;
  if (*(a1 + 768))
  {
    return 0;
  }

  v14 = 0;
  v13 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v3 = socket(32, 3, 1);
  v4 = v3;
  if (v3 == -1 || (v13 = 0x100000001, v14 = 7, ioctl(v3, 0x800C6502uLL, &v13) == -1) || ioctl(v4, 0x8004667EuLL, &v12) == -1)
  {
    sub_100001108();
    v1 = *__error();
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_read, v4, 0, qword_100034BD8);
    *(a1 + 768) = v5;
    if (v5)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100012A04;
      handler[3] = &unk_100030F90;
      handler[4] = a1;
      dispatch_source_set_event_handler(v5, handler);
      v6 = *(a1 + 768);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = sub_100012C10;
      v9[3] = &unk_100030FB0;
      v10 = v4;
      dispatch_source_set_cancel_handler(v6, v9);
      dispatch_resume(*(a1 + 768));
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v1 = sub_100012C18(a1, &v15);
      if (!v1)
      {
        sub_100004C7C(a1, &v15);
        return v1;
      }

      sub_100001108();
    }

    else
    {
      sub_100001108();
      v1 = 12;
    }
  }

  v7 = *(a1 + 768);
  if (v7)
  {
    dispatch_source_cancel(v7);
    dispatch_release(*(a1 + 768));
    *(a1 + 768) = 0;
  }

  if (v4 != -1)
  {
    close(v4);
  }

  return v1;
}

uint64_t sub_10000E3A8(uint64_t a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (*(a1 + 288) == 1)
  {
    sub_100004C7C(a1, v6);
    *(a1 + 288) = 0;
  }

  v2 = *(a1 + 784);
  if (v2)
  {
    while ((*(v2 + 392) & 8) != 0)
    {
      v2 = *(v2 + 528);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    sub_100004A70(a1, &in6addr_any);
  }

LABEL_8:
  if (*(a1 + 740))
  {
    sub_100004364(a1, 0, 0);
  }

  v3 = *(a1 + 760);
  if (v3)
  {
    SCDynamicStoreSetDispatchQueue(v3, 0);
    CFRelease(*(a1 + 760));
    *(a1 + 760) = 0;
  }

  v4 = *(a1 + 768);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 768));
    *(a1 + 768) = 0;
  }

  return 0;
}

void sub_10000E4B4(const char *a1, Boolean *a2, Boolean *a3)
{
  v6 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  *a2 = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = sub_10000E61C(v6, a1);
    if (v8)
    {
      v9 = v8;
      v10 = SCNetworkServiceCopyProtocol(v8, kSCNetworkProtocolTypeIPv4);
      if (v10)
      {
        v11 = v10;
        *a2 = SCNetworkProtocolGetEnabled(v10);
        CFRelease(v11);
      }

      v12 = SCNetworkServiceCopyProtocol(v9, kSCNetworkProtocolTypeIPv6);
      if (v12)
      {
        v13 = v12;
        *a3 = SCNetworkProtocolGetEnabled(v12);
        CFRelease(v13);
      }

      *a2;
      *a3;
      sub_100001108();
      CFRelease(v9);
    }

    else
    {
      sub_100001108();
    }

    CFRelease(v7);
  }

  else
  {
    sub_100001108();
  }
}

CFTypeRef sub_10000E61C(const __SCPreferences *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x600u);
  if (v3)
  {
    v4 = v3;
    v5 = SCNetworkSetCopyCurrent(a1);
    if (v5)
    {
      v6 = v5;
      v7 = SCNetworkSetCopyServices(v5);
      if (v7)
      {
        v8 = v7;
        Count = CFArrayGetCount(v7);
        if (Count < 1)
        {
LABEL_10:
          v15 = 0;
        }

        else
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
            Interface = SCNetworkServiceGetInterface(ValueAtIndex);
            if (Interface)
            {
              BSDName = SCNetworkInterfaceGetBSDName(Interface);
              if (BSDName)
              {
                if (CFEqual(BSDName, v4))
                {
                  break;
                }
              }
            }

            if (v10 == ++v11)
            {
              goto LABEL_10;
            }
          }

          v15 = CFRetain(ValueAtIndex);
        }

        CFRelease(v8);
      }

      else
      {
        sub_100001108();
        v15 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      sub_100001108();
      v15 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v15;
}

BOOL sub_10000E754(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  if (a3 >= 0x81)
  {
    sub_100001108();
    return 0;
  }

  v6 = a3 >> 3;
  return !bcmp(a1, a2, v6) && ((v3 & 7) == 0 || a1[v6] >> (8 - (v3 & 7)) == a2[v6] >> (8 - (v3 & 7)));
}

void sub_10000E7F4(unsigned int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_uint64(v2, off_100034978[0], a1);
    sub_100001108();
    for (i = qword_100034C10; i; i = *i)
    {
      xpc_connection_send_message(*(i + 16), v3);
    }

    xpc_release(v3);
  }

  else
  {

    sub_100001108();
  }
}

uint64_t sub_10000E8A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 - 7 <= 0xFFFFFFFA)
  {
    sub_100020F94();
  }

  if (a3 == 0xFFFFFFFFLL)
  {
    v6 = a2;
LABEL_9:
    v10 = a1 + 4 * v6;
    v11 = *(v10 + 432);
    *(v10 + 432) = v11 + 1;
    if (v11 == -1)
    {
      sub_100020F68();
    }

    return sub_1000160C0(a2, 1);
  }

  v7 = a1 + 376;
  v8 = *(a1 + 376 + 8 * a2);
  if (v8)
  {
    while (*v8 != a3)
    {
      v8 = v8[2];
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
    if (v9)
    {
      v6 = a2;
      *v9 = a3;
      v9[2] = a2;
      *(v9 + 2) = *(v7 + 8 * a2);
      *(v7 + 8 * a2) = v9;
      goto LABEL_9;
    }
  }

  return sub_100001108();
}

void sub_10000E9B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 - 7 <= 0xFFFFFFFA)
  {
    sub_100020FC0();
  }

  if (a3 == 0xFFFFFFFFLL)
  {
    v5 = a2;
  }

  else
  {
    v6 = a1 + 8 * a2;
    v7 = *(v6 + 376);
    if (!v7)
    {
      return;
    }

    v5 = a2;
    v8 = (v6 + 376);
    v9 = v7;
    while (*v9 != a3)
    {
      v9 = v9[2];
      if (!v9)
      {
        return;
      }
    }

    if (v7 != v9)
    {
      do
      {
        v10 = v7;
        v7 = v7[2];
      }

      while (v7 != v9);
      v8 = v10 + 2;
    }

    *v8 = v7[2];
    sub_100008C34(a3);
    free(v9);
  }

  v11 = *(a1 + 432 + 4 * v5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v13 < 0 == v12)
  {
    *(a1 + 432 + 4 * v5) = v13;

    sub_10001612C(a2, 1u);
  }
}

uint64_t sub_10000EAA8(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a2 = sub_1000160B4();
  result = sub_100016188();
  *a3 = result;
  return result;
}

uint64_t sub_10000EADC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 - 7 <= 0xFFFFFFFA)
  {
    sub_100020FEC();
  }

  v3 = a1 + 4 * a2;
  v4 = *(v3 + 432);
  *(v3 + 432) = a3;
  if (v4 >= a3)
  {
    if (v4 > a3)
    {
      sub_10001612C(a2, v4 - a3);
    }
  }

  else
  {
    sub_1000160C0(a2, a3 - v4);
  }

  return 1;
}

uint64_t sub_10000EB3C(uint64_t a1)
{
  v18 = 0;
  *bytes = 0;
  v2 = *(a1 + 288);
  v3 = sub_100016464(bytes);
  if (v3)
  {
    v4 = v3;
    sub_100001108();
    return v4;
  }

  *(a1 + 360) = *bytes;
  *(a1 + 364) = v18;
  v5 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
  if (v5)
  {
    v6 = v5;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionarySetValue(Mutable, @"EnableMultiPages", kCFBooleanTrue);
      CFDictionarySetValue(v8, kIOEthernetHardwareAddress, v6);
      v9 = *(a1 + 12);
      if (v9)
      {
        sub_10000EEA8(v8, @"MaxTransferUnit", v9);
      }

      if (*(a1 + 389) == 1)
      {
        CFDictionarySetValue(v8, @"EnableTSO", kCFBooleanTrue);
      }

      if (*(a1 + 393) == 1)
      {
        CFDictionarySetValue(v8, @"EnableVirtIOHeader", kCFBooleanTrue);
        CFDictionarySetValue(v8, @"EnableCrossover", kCFBooleanTrue);
      }

      CFDictionarySetValue(v8, @"NamePrefix", @"vmenet");
      sub_10000EEA8(v8, @"SubType", 9);
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v10, @"Product Name", @"VM network interface");
        CFDictionarySetValue(v11, kIOUserEthernetInterfaceRole, @"VMNET");
        CFDictionarySetValue(v11, @"HiddenInterface", kCFBooleanTrue);
        CFDictionarySetValue(v11, @"IsEphemeral", kCFBooleanTrue);
        CFDictionarySetValue(v8, kIOUserEthernetInterfaceMergeProperties, v11);
        v12 = IOEthernetControllerCreate();
        *(a1 + 352) = v12;
        if (v12)
        {
          IOEthernetControllerSetDispatchQueue();
          v13 = *(a1 + 352);
          IOEthernetControllerRegisterBSDAttachCallback();
          v14 = *(a1 + 352);
          if (!IOEthernetControllerSetLinkStatus())
          {
            sub_100003094(a1);
            v4 = 0;
LABEL_26:
            CFRelease(v6);
            CFRelease(v11);
            CFRelease(v8);
            if (!v4)
            {
              return v4;
            }

            goto LABEL_20;
          }

          v4 = 22;
        }

        else
        {
          v4 = 12;
        }

        sub_100001108();
        goto LABEL_26;
      }

      sub_100001108();
      CFRelease(v6);
      v15 = v8;
    }

    else
    {
      sub_100001108();
      v15 = v6;
    }

    CFRelease(v15);
  }

  else
  {
    sub_100001108();
  }

  v4 = 12;
LABEL_20:
  if (*(a1 + 352))
  {
    IOEthernetControllerSetDispatchQueue();
    CFRelease(*(a1 + 352));
    *(a1 + 352) = 0;
  }

  return v4;
}

void sub_10000EEA8(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void sub_10000EF10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 288);
  v25 = 0x200000;
  if (!v3)
  {
    v6 = 0;
    v7 = 2;
LABEL_31:
    v15 = *(a2 + 328);
    if (!v15)
    {
      goto LABEL_40;
    }

    if (v7 != 36)
    {
      if (v7)
      {
        v16 = 2000;
      }

      else
      {
        v16 = 2001;
      }

      xpc_dictionary_set_uint64(v15, off_1000348C8[0], v16);
      if (v7 == 16)
      {
        xpc_dictionary_set_uint64(*(a2 + 328), off_1000348B8[0], 0x1770uLL);
      }

      sub_100001CD4(*(a2 + 344), *(a2 + 328));
      v15 = *(a2 + 328);
    }

LABEL_39:
    xpc_release(v15);
    *(a2 + 328) = 0;
    *(a2 + 344) = 0;
LABEL_40:
    sub_1000030A4(a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_41;
  }

  v4 = qword_100034C18;
  if ((*(v3 + 8) & 0x10) == 0)
  {
    if (qword_100034C18)
    {
      while (1)
      {
        v5 = v4[2];
        if (v5)
        {
          break;
        }

LABEL_7:
        v4 = *v4;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      while (v5 != v3)
      {
        v5 = *(v5 + 488);
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v8 = *(a2 + 352);
      goto LABEL_17;
    }

LABEL_15:
    sub_100001108();
    return;
  }

  if (!qword_100034C18)
  {
    goto LABEL_15;
  }

  while (v4[5] != a2 || !*(a2 + 352) || !*(a2 + 328))
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v9 = *(v3 + 32);
  IONetworkInterfaceObject = IOEthernetControllerGetIONetworkInterfaceObject();
  if (!IONetworkInterfaceObject)
  {
    v22 = *(a2 + 288);
    goto LABEL_29;
  }

  CFProperty = IORegistryEntryCreateCFProperty(IONetworkInterfaceObject, @"BSD Name", kCFAllocatorDefault, 0);
  v6 = CFProperty;
  if (!CFProperty)
  {
LABEL_28:
    sub_100001108();
LABEL_30:
    v7 = 12;
    goto LABEL_31;
  }

  CFStringGetCString(CFProperty, (a2 + 366), 16, 0x600u);
  __strlcpy_chk();
  sub_100001108();
  CFRelease(v6);
  v12 = *(a2 + 352);
  BSDSocket = IOEthernetControllerGetBSDSocket();
  *(a2 + 384) = BSDSocket;
  if (BSDSocket < 0)
  {
LABEL_29:
    sub_100001108();
    v6 = 0;
    goto LABEL_30;
  }

  if (setsockopt(BSDSocket, 0xFFFF, 4097, &v25, 4u) == -1 && ((v24 = 0, v26[0] = 4, sysctlbyname("kern.ipc.maxsockbuf", &v24, v26, 0, 0)) || (v25 = v24, setsockopt(*(a2 + 384), 0xFFFF, 4097, &v25, 4u) == -1)) || setsockopt(*(a2 + 384), 0xFFFF, 4098, &v25, 4u) == -1)
  {
    sub_100001108();
    v6 = 0;
    v7 = *__error();
    goto LABEL_31;
  }

  v6 = malloc_type_malloc(0x28uLL, 0x10A0040D1175C0DuLL);
  if (!v6)
  {
    goto LABEL_28;
  }

  if (!*(a2 + 12))
  {
    *(a2 + 12) = 1500;
  }

  if (*(a2 + 393))
  {
    v14 = 4;
  }

  else
  {
    v14 = *(a2 + 391);
    if (v14 != 1)
    {
      goto LABEL_50;
    }
  }

  *(a2 + 312) |= v14;
LABEL_50:
  if (*(a2 + 390) == 1)
  {
    *(a2 + 312) |= 2u;
  }

  v17 = sub_1000033FC(v3, a2);
  if (v17)
  {
    v7 = v17;
LABEL_54:
    sub_100001108();
    goto LABEL_31;
  }

  v23 = *(a2 + 400);
  sub_100001108();
  xpc_dictionary_set_uint64(*(a2 + 328), off_100034A18[0], *(a2 + 400));
  if (v9 || (v21 = sub_10000538C(v3)) == 0)
  {
    xpc_dictionary_set_fd(*(a2 + 328), off_100034880[0], *(a2 + 384));
    xpc_dictionary_set_uint64(*(a2 + 328), off_100034950[0], *(a2 + 12));
    if (*(v3 + 372) != 2)
    {
      v18 = *(v3 + 388);
      v19 = *(v3 + 380);
      if (!v18)
      {
        v18 = bswap32(bswap32(v19 | ~*(v3 + 384)) - 1);
      }

      sub_100013AA4(*(a2 + 328), off_100034960[0], v19);
      sub_100013AA4(*(a2 + 328), off_100034970[0], *(v3 + 384));
      sub_100013AA4(*(a2 + 328), off_100034968[0], v18);
      if (*(v3 + 372) == 1 && (*(v3 + 392) & 4) != 0)
      {
        *v26 = 0u;
        memset(v27, 0, sizeof(v27));
        inet_ntop(30, (v3 + 396), v26, 0x2Eu);
        v20 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v20, off_1000349A8[0], v26);
        xpc_dictionary_set_value(*(a2 + 328), off_100034998[0], v20);
        xpc_release(v20);
      }
    }

    xpc_dictionary_set_uuid(*(a2 + 328), off_100034A10[0], (v3 + 356));
    xpc_dictionary_set_uint64(*(a2 + 328), off_100034A18[0], *(a2 + 400));
    v7 = 0;
    goto LABEL_31;
  }

  v7 = v21;
  if (v21 != 36)
  {
    goto LABEL_54;
  }

  sub_1000097F8(v6, *(a2 + 344), *(a2 + 328), v3, *(a2 + 384));
  sub_100001108();
  v15 = *(a2 + 328);
  if (v15)
  {
    goto LABEL_39;
  }

  sub_1000030A4(a2);
LABEL_41:
  free(v6);
}

uint64_t sub_10000F4E4(const char *a1)
{
  v14 = 0;
  v13 = 0;
  v12 = 0uLL;
  if (getifaddrs(&v14) < 0)
  {
    v3 = *__error();
    sub_100001108();
LABEL_22:
    if (v14)
    {
      freeifaddrs(v14);
    }
  }

  else
  {
    v2 = v14;
    if (v14)
    {
      v3 = 0;
      while (1)
      {
        ifa_addr = v2->ifa_addr;
        if (!ifa_addr)
        {
          goto LABEL_19;
        }

        sa_family = ifa_addr->sa_family;
        v6 = sa_family == 30 || sa_family == 2;
        if (!v6 || strncmp(a1, v2->ifa_name, 0x10uLL))
        {
          goto LABEL_19;
        }

        if (sa_family == 2)
        {
          v13 = *&ifa_addr->sa_data[2];
          v7.s_addr = v13;
          v8 = inet_ntoa(v7);
          snprintf(__str, 0x10uLL, "%s", v8);
          v9 = sub_10000F6C4(a1, &v13);
          if (v9)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v12 = *&ifa_addr->sa_data[6];
          inet_ntop(30, &v12, v15, 0x2Eu);
          v9 = sub_10000F7EC(a1, &v12);
          if (v9)
          {
LABEL_15:
            v10 = v9;
            strerror(v9);
            sub_100001108();
            if (v3)
            {
              v3 = v3;
            }

            else
            {
              v3 = v10;
            }

            goto LABEL_19;
          }
        }

        sub_100001108();
LABEL_19:
        v2 = v2->ifa_next;
        if (!v2)
        {
          goto LABEL_22;
        }
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10000F6C4(const char *a1, _DWORD *a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100001108();
    return *__error();
  }

  else
  {
    v5 = v4;
    v11 = 0;
    v12 = 0;
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      LOWORD(v11) = 528;
      HIDWORD(v11) = *a2;
    }

    if (ioctl(v5, 0x80206919uLL, __dst) == -1)
    {
      v6 = *__error();
      v8 = __error();
      strerror(*v8);
      sub_100001108();
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_10000F7EC(const char *a1, _OWORD *a2)
{
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100001108();
    return *__error();
  }

  else
  {
    v5 = v4;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    memset(&__dst[16], 0, 32);
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      *&__dst[16] = 7708;
      *&__dst[24] = *a2;
    }

    if (ioctl(v5, 0x81206919uLL, __dst) == -1)
    {
      v6 = *__error();
      v8 = __error();
      strerror(*v8);
      sub_100001108();
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_10000F968(const char *a1)
{
  *buffer = 0x600000001;
  v13 = 0;
  v12 = 4;
  if (sysctl(buffer, 2u, &v13, &v12, 0, 0) < 0)
  {
    v10 = __error();
    strerror(*v10);
    sub_100001108();
LABEL_11:
    sub_100001108();
    return 0;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v2 = 4 * v13;
  v3 = malloc_type_malloc(4 * v13, 0x9EF32CB9uLL);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = proc_listallpids(v3, v2);
  if (v5 < 1)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    v6 = v5;
    v7 = v4;
    while (1)
    {
      v8 = proc_pidpath(*v7, buffer, 0x400u);
      if (v8 >= 1)
      {
        *(buffer + v8) = 0;
        if (!strncmp(buffer, a1, 0x400uLL))
        {
          break;
        }
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    v9 = *v7;
  }

  free(v4);
  return v9;
}