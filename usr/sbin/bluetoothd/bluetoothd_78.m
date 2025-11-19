double sub_10058C448(__int128 **a1, __int128 *a2, __int128 **a3, __int128 *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = *(a5 + 8);
    v15 = 0;
    v16 = 0uLL;
    for (i = v10 + 255; ; i = v13 + 255)
    {
      sub_10058C504(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      *(a5 + 8) = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_10058C504(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_10058C504(__int128 *a1@<X1>, __int128 *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, __int128 **a5@<X8>)
{
  if (a1 == a2)
  {
    v8 = a1;
    goto LABEL_14;
  }

  v5 = *a3;
  while (1)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - a4 + 4080) >> 3);
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    if (v7)
    {
      break;
    }

LABEL_10:
    v12 = a3[1];
    ++a3;
    v5 = v12;
    a4 = v12;
  }

  v8 = (a1 + 40 * v7);
  v9 = 40 * v7;
  do
  {
    v10 = *a1;
    v11 = a1[1];
    *(a4 + 32) = *(a1 + 4);
    *a4 = v10;
    *(a4 + 16) = v11;
    a1 = (a1 + 40);
    a4 += 40;
    v9 -= 40;
  }

  while (v9);
  if (v8 != a2)
  {
    a1 = v8;
    goto LABEL_10;
  }

  if (a4 == *a3 + 4080)
  {
    v13 = a3[1];
    ++a3;
    a4 = v13;
  }

LABEL_14:
  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
}

uint64_t sub_10058C5B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 64) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 48));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgResult", v12);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgEvent", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a4);
            sub_100383144(*(v13 + 64), "kCBMsgIdPairingAgentStatusEvent", v15, 1);
          }
        }
      }

      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

uint64_t sub_10058C73C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgMinLength", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentPincode", v12, 1);
          }
        }
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058C8AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgServices", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentAuthorization", v12, 1);
          }
        }
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058CA1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 64) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 48));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgValue", a4);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgMITM", v12);
            sub_100383144(*(v13 + 64), "kCBMsgIdPairingAgentUserConfirmation", v15, 1);
          }
        }
      }

      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

uint64_t sub_10058CBA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgValue", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentPassKeyDisplay", v12, 1);
          }
        }
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058CD14(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  v12 = *(a1 + 80);
  v13 = (a1 + 88);
  if (v12 != (a1 + 88))
  {
    do
    {
      v14 = v12[4];
      if (v14)
      {
        if (*(*(v14 + 64) + 160) == 1)
        {
          v15 = xpc_dictionary_create(0, 0, 0);
          v16 = v15;
          if (v15)
          {
            xpc_dictionary_set_uint64(v15, "kCBMsgArgID", *(v14 + 48));
            xpc_dictionary_set_uint64(v16, "kCBMsgArgPairingAgentID", a2);
            if (a3)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgC192", a3, 0x10uLL);
            }

            if (a4)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgR192", a4, 0x10uLL);
            }

            if (a5)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgC256", a5, 0x10uLL);
            }

            if (a6)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgR256", a6, 0x10uLL);
            }

            sub_100383144(*(v14 + 64), "kCBMsgIdPairingAgentOOBDataReady", v16, 1);
          }
        }
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      v12 = v18;
    }

    while (v18 != v13);
  }

  return sub_1000088CC(v21);
}

uint64_t sub_10058CEC8(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    return sub_10058C5B4(a5, result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10058CEEC(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058C73C(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF0C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058C8AC(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF2C(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a5)
  {
    return sub_10058CA1C(a5, result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10058CF50(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058CBA4(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF70(uint64_t result, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  if (a6)
  {
    return sub_10058CD14(a6, result, a2, a3, a4, a5);
  }

  return result;
}

void sub_10058CF98(id a1)
{
  v13 = "kCBMsgIdPairingAgentCreateMsg";
  v14 = 29;
  v15 = &v13;
  v1 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v1[4] = sub_10058D2D4;
  v1[5] = 0;
  v13 = "kCBMsgIdPairingAgentDestroyMsg";
  v14 = 30;
  v15 = &v13;
  v2 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v2[4] = sub_10058D528;
  v2[5] = 0;
  v13 = "kCBMsgIdPairingAgentStartMsg";
  v14 = 28;
  v15 = &v13;
  v3 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v3[4] = sub_10058D758;
  v3[5] = 0;
  v13 = "kCBMsgIdPairingAgentStopMsg";
  v14 = 27;
  v15 = &v13;
  v4 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v4[4] = sub_10058D820;
  v4[5] = 0;
  v13 = "kCBMsgIdPairingAgentCancelPairingMsg";
  v14 = 36;
  v15 = &v13;
  v5 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v5[4] = sub_10058D8E8;
  v5[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetPincodeMsg";
  v14 = 33;
  v15 = &v13;
  v6 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v6[4] = sub_10058D9B0;
  v6[5] = 0;
  v13 = "kCBMsgIdPairingAgentAcceptSSPMsg";
  v14 = 32;
  v15 = &v13;
  v7 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v7[4] = sub_10058DAB4;
  v7[5] = 0;
  v13 = "kCBMsgIdPairingAgentDeletePairedDeviceMsg";
  v14 = 41;
  v15 = &v13;
  v8 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v8[4] = sub_10058DBB8;
  v8[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetIOCapabilityMsg";
  v14 = 38;
  v15 = &v13;
  v9 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v9[4] = sub_10058DCA4;
  v9[5] = 0;
  v13 = "kCBMsgIdPairingAgentClearOOBDataForDeviceMsg";
  v14 = 44;
  v15 = &v13;
  v10 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v10[4] = sub_10058DD90;
  v10[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetOOBDataForDeviceMsg";
  v14 = 42;
  v15 = &v13;
  v11 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v11[4] = sub_10058DE7C;
  v11[5] = 0;
  v13 = "kCBMsgIdPairingAgentGetLocalOOBDataMsg";
  v14 = 38;
  v15 = &v13;
  v12 = sub_10058E2A0(&xmmword_100BCE6C8, &v13);
  v12[4] = sub_10058E0EC;
  v12[5] = 0;
}

uint64_t sub_10058D2D4(uint64_t a1, xpc_object_t xdict)
{
  value = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846504();
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    if (qword_100B50B88 != -1)
    {
      sub_10084656C();
    }

    if (sub_100618FB0(qword_100B50B80, uint64, v8, asid))
    {
      v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00405596F149uLL);
      v14 = v10;
      *v10 = sub_10058CEC8;
      v10[1] = sub_10058CEEC;
      v10[2] = sub_10058CF0C;
      v10[3] = sub_10058CF2C;
      v10[5] = sub_10058CF70;
      v10[6] = v6;
      v10[4] = sub_10058CF50;
      v10[8] = *(a1 + 72);
      LODWORD(uint64) = sub_1006D0D64(uint64, v10, a1, &value);
      if (uint64)
      {
        free(v10);
      }

      else
      {
        v10[7] = value;
        sub_1000452CC(a1 + 80, &v14);
      }

      uint64 = uint64;
    }

    else
    {
      uint64 = 7;
    }
  }

  else
  {
    uint64 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgPairingAgentID", value);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }

  return sub_1000088CC(v15);
}

void sub_10058D50C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10058D528(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846594(uint64, v6, v7, v8, v9, v10, v11, v12);
  }

  if (uint64)
  {
    v22[1] = 0;
    v23 = uint64;
    v22[0] = 0;
    sub_100007F88(v22, a1 + 8);
    v13 = *(a1 + 80);
    if (v13 != (a1 + 88))
    {
      v14 = 0;
      while (1)
      {
        v21 = v13[4];
        if (v23 == *(v21 + 7))
        {
          v14 = sub_1006D0DF4(&v23);
          if (!v14)
          {
            sub_100075DC4((a1 + 80), &v21);
            free(v21);
            break;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v25 = uint64;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not destroy pairing agent %llx", buf, 0xCu);
          }
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v13[2];
            v18 = *v17 == v13;
            v13 = v17;
          }

          while (!v18);
        }

        v13 = v17;
        if (v17 == (a1 + 88))
        {
          uint64 = v14;
          goto LABEL_19;
        }
      }
    }

    uint64 = 0;
LABEL_19:
    sub_1000088CC(v22);
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }
}

void sub_10058D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10058D758(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846604();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0E44(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D820(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084666C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0EB4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D8E8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008466D4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0F24(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D9B0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgIdPairingAgentPincode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084673C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1006D0F90(uint64, v6, string);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10058DAB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgError");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008467A4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1006D10BC(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10058DBB8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084680C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D1178(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DCA4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgIOCapabilities");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846874();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D1530(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DD90(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008468DC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D15D4(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DE7C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgC192", &length);
  if (length == 16)
  {
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_100846944();
    }

    v8 = 3;
  }

  v19 = 0;
  v9 = xpc_dictionary_get_data(value, "kCBMsgArgR192", &v19);
  if (v19 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_100846978();
    }

    v8 = 3;
  }

  v18 = 0;
  v10 = xpc_dictionary_get_data(value, "kCBMsgArgC256", &v18);
  if (v18 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_1008469AC();
    }

    v8 = 3;
  }

  v17 = 0;
  v11 = xpc_dictionary_get_data(value, "kCBMsgArgR256", &v17);
  if (v17 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_1008469E0();
    }

    v8 = 3;
    goto LABEL_22;
  }

  if (v8)
  {
LABEL_22:
    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      return;
    }

    v15 = reply;
    v16 = v8;
    goto LABEL_24;
  }

  v12 = v11;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846A14();
    if (uint64)
    {
      goto LABEL_18;
    }
  }

  else if (uint64)
  {
LABEL_18:
    v13 = sub_1006D169C(uint64, v6, data, v9, v10, v12);
    goto LABEL_28;
  }

  v13 = 1;
LABEL_28:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    v16 = v13;
LABEL_24:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_10058E0EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846A7C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D1878(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058E1B8(void *a1)
{
  sub_1004B0900(a1);

  operator delete();
}

uint64_t sub_10058E1F0(void *a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 1));
  v2 = a1[10];
  v3 = a1 + 11;
  if (v2 != a1 + 11)
  {
    do
    {
      free(v2[4]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_10000CEDC((a1 + 10), a1[11]);
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v3;
  return sub_1000088CC(v8);
}

uint64_t **sub_10058E2A0(void *a1, uint64_t a2)
{
  v4 = sub_100059420(&v17, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void sub_10058E584()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE6C8 = 0u;
  unk_100BCE6D8 = 0u;
  dword_100BCE6E8 = 1065353216;
  __cxa_atexit(sub_10058C5B0, &xmmword_100BCE6C8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_10058E61C(uint64_t a1)
{
  *a1 = off_100AFE4D0;
  *(a1 + 8) = off_100AFE540;
  *(a1 + 16) = off_100AFE570;
  *(a1 + 24) = off_100AFE5A0;
  *(a1 + 32) = &off_100AFE5C0;
  sub_100044BBC(a1 + 40);
  *(a1 + 112) = 0;
  *(a1 + 114) = 0;
  sub_100044BBC(a1 + 120);
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  sub_100044BBC(a1 + 208);
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 272) = 0u;
  sub_100044BBC(a1 + 320);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC(a1 + 408);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  sub_100044BBC(a1 + 496);
  sub_100364534((a1 + 560));
  *(a1 + 608) = a1 + 608;
  *(a1 + 616) = a1 + 608;
  *(a1 + 624) = 0;
  sub_100044BBC(a1 + 632);
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  v26 = 0;
  v2 = sub_10000E92C();
  if ((*(*v2 + 8))(v2))
  {
    v3 = sub_10000E92C();
    sub_100007E30(v24, "WiAP");
    sub_100007E30(__p, "enableSink");
    (*(*v3 + 72))(v3, v24, __p, &v26);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  v4 = sub_10000C798();
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 120);
  if ((*(*v4 + 56))(v4, 1))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Supporting service handsfree", __p, 2u);
    }

    if (qword_100B54910 != -1)
    {
      sub_100846AE4();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 2))
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Supporting service phonebook", __p, 2u);
    }

    if (qword_100B54920 != -1)
    {
      sub_100846B0C();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 32))
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Supporting service HID", __p, 2u);
    }

    if (qword_100B547A0 != -1)
    {
      sub_100846B34();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 16))
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Supporting service A2DP", __p, 2u);
    }

    if (qword_100B54930 != -1)
    {
      sub_100846B5C();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 8))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Supporting service Remote", __p, 2u);
    }

    if (qword_100B54940 != -1)
    {
      sub_100846B84();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 128) && (v26 & 1) == 0)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessiAP", __p, 2u);
    }

    if (qword_100B540C0 != -1)
    {
      sub_100846BAC();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 256))
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Supporting service NetSharing", __p, 2u);
    }

    if (qword_100B54950 != -1)
    {
      sub_100846BD4();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 4096))
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Supporting service NetConsumer", __p, 2u);
    }

    if (qword_100B54960 != -1)
    {
      sub_100846BFC();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 2048))
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Supporting service Gaming", __p, 2u);
    }

    if (qword_100B54970 != -1)
    {
      sub_100846C24();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x2000))
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Supporting service Braille", __p, 2u);
    }

    if (qword_100B54980 != -1)
    {
      sub_100846C4C();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 512))
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Supporting service MAP", __p, 2u);
    }

    if (qword_100B54340 != -1)
    {
      sub_100846C74();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x10000))
  {
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Supporting service LE Audio", __p, 2u);
    }

    if (qword_100B54990 != -1)
    {
      sub_100846C9C();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x20000) && v26 == 1)
  {
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessiAPSink", __p, 2u);
    }

    if (qword_100B549A0 != -1)
    {
      sub_100846CC4();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x40000))
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessCarPlay", __p, 2u);
    }

    if (qword_100B549B0 != -1)
    {
      sub_100846CEC();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x80000))
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Supporting service AACP Client", __p, 2u);
    }

    if (qword_100B540A0 != -1)
    {
      sub_100846D14();
    }

    operator new();
  }

  if ((*(*v4 + 56))(v4, 0x100000))
  {
    v20 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Supporting service GATT", __p, 2u);
    }

    if (qword_100B549C0 != -1)
    {
      sub_100846D3C();
    }

    operator new();
  }

  sub_10000801C(v24);
  if ((*(*v4 + 56))(v4, 0x1000000))
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Supporting service BT SIG LE Connected Audio", __p, 2u);
    }

    if (qword_100B549D0 != -1)
    {
      sub_100846D64();
    }

    operator new();
  }

  operator new();
}

void sub_10058F620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1000088CC(&a16);
  sub_10007A068(v21 + 79);
  sub_100028EB4(v23);
  sub_1003645A0(v21 + 70);
  sub_10007A068(v21 + 62);
  v25 = v21[59];
  if (v25)
  {
    v21[60] = v25;
    operator delete(v25);
  }

  sub_10007A068(v21 + 51);
  v26 = v21[48];
  if (v26)
  {
    v21[49] = v26;
    operator delete(v26);
  }

  sub_10007A068(v21 + 40);
  sub_10058BE28(v21 + 34);
  sub_10007A068(v21 + 26);
  sub_100028EB4(v22);
  sub_10007A068(v21 + 15);
  sub_10007A068(v21 + 5);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F78C(uint64_t a1)
{
  *a1 = off_100AFE4D0;
  *(a1 + 8) = off_100AFE540;
  *(a1 + 16) = off_100AFE570;
  *(a1 + 24) = off_100AFE5A0;
  *(a1 + 32) = &off_100AFE5C0;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  sub_100028EB4((a1 + 184));
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  sub_10000801C(v7);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 40);
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_1000088CC(v6);
  sub_1000088CC(v7);
  sub_10007A068(a1 + 632);
  sub_100028EB4((a1 + 608));
  sub_1003645A0(a1 + 560);
  sub_10007A068(a1 + 496);
  v3 = *(a1 + 472);
  if (v3)
  {
    *(a1 + 480) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 408);
  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 320);
  sub_10058BE28((a1 + 272));
  sub_10007A068(a1 + 208);
  sub_100028EB4((a1 + 184));
  sub_10007A068(a1 + 120);
  sub_10007A068(a1 + 40);
  return a1;
}

void sub_10058F934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  sub_10007A068(v3 + 79);
  sub_100028EB4(v3 + 76);
  sub_1003645A0(v3 + 70);
  sub_10007A068(v3 + 62);
  v5 = v3[59];
  if (v5)
  {
    v3[60] = v5;
    operator delete(v5);
  }

  sub_10007A068(v3 + 51);
  v6 = v3[48];
  if (v6)
  {
    v3[49] = v6;
    operator delete(v6);
  }

  sub_10007A068(v3 + 40);
  sub_10058BE28(v3 + 34);
  sub_10007A068(v3 + 26);
  sub_100028EB4(v3 + 23);
  sub_10007A068(v3 + 15);
  sub_10007A068(v3 + 5);
  _Unwind_Resume(a1);
}

void sub_10058F9D8(uint64_t a1)
{
  sub_10058F78C(a1);

  operator delete();
}

void sub_10058FA10(uint64_t a1)
{
  sub_10058F78C(a1 - 32);

  operator delete();
}

uint64_t sub_10058FA4C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 40);
  sub_100570C90(*(a1 + 104), QOS_CLASS_USER_INITIATED);
  sub_10000801C(v3);
  if (qword_100B50B88 != -1)
  {
    sub_100846D8C();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50AA0 != -1)
  {
    sub_100846DB4();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  return sub_1000088CC(v3);
}

uint64_t sub_10058FB0C(uint64_t a1)
{
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100846DDC();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 8);
  if (qword_100B50B88 != -1)
  {
    sub_100846DF0();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 24);
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 40);
  sub_100571164(*(a1 + 104));
  return sub_1000088CC(v3);
}

uint64_t sub_10058FBC8(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 40);
  *(a1 + 112) = 1;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  sub_10000801C(v15);
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_10009C530(&v11, a1 + 184);
  sub_10000801C(v14);
  v2 = sub_100017E6C();
  sub_1003128B0(v2 + 384, a1 + 16);
  for (i = v12; i != &v11; i = i[1])
  {
    v4 = i[2];
    v5 = (*(*v4 + 16))(v4);
    if (v5)
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        (*(*v4 + 192))(__p, v4);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446466;
        v17 = v7;
        v18 = 1024;
        v19 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not start service %{public}s - result was %d", buf, 0x12u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_100028EB4(&v11);
  sub_1000088CC(v14);
  return sub_1000088CC(v15);
}

void sub_10058FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10058FE1C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ServiceManager::stackWillStop enter", buf, 2u);
  }

  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 120);
  *buf = 0;
  v26 = 0;
  v27 = 0;
  sub_10009C530(buf, a1 + 184);
  sub_10000801C(v28);
  v3 = sub_100017E6C();
  sub_10036F1AC(v3 + 384, a1 + 16);
  for (i = v26; i != buf; i = *(i + 8))
  {
    __p[0] = *(i + 16);
    if ((*(*__p[0] + 32))(__p[0]))
    {
      *&v23.__r_.__value_.__l.__data_ = 0uLL;
      sub_100007F88(&v23, a1 + 496);
      operator new();
    }
  }

  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 496);
  while (*(a1 + 624))
  {
    if (!sub_10002220C((a1 + 560), v24, 0x2710uLL))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100846E04();
      }

      memset(&v23, 0, sizeof(v23));
      sub_100007E30(&v23, "ServiceManager shutdown failure, waiting for ");
      v5 = *(*(a1 + 616) + 16);
      if (*(v5 + 31) < 0)
      {
        sub_100008904(__p, *(v5 + 8), *(v5 + 16));
      }

      else
      {
        v14 = *(v5 + 8);
        v22 = *(v5 + 24);
        *__p = v14;
      }

      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v22 >= 0)
      {
        v16 = HIBYTE(v22);
      }

      else
      {
        v16 = __p[1];
      }

      std::string::append(&v23, v15, v16);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = sub_10000E92C();
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v23;
      }

      else
      {
        v18 = v23.__r_.__value_.__r.__words[0];
      }

      sub_100007E30(v20, v18);
      sub_100693260(v17, 3715, v20, 1);
    }
  }

  sub_100028EB4((a1 + 608));
  *&v23.__r_.__value_.__l.__data_ = 0uLL;
  sub_100007F88(&v23, a1 + 40);
  *(a1 + 112) = 0;
  sub_10000801C(&v23);
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 208);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stack will stop, clearing the connection request queue", v19, 2u);
  }

  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  *(a1 + 312) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 288);
      v7 = (*(a1 + 280) + 8);
      *(a1 + 280) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_23;
    }

    v11 = 102;
  }

  *(a1 + 304) = v11;
LABEL_23:
  sub_1005903A8(a1);
  sub_10000801C(__p);
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ServiceManager::stackWillStop exit", v19, 2u);
  }

  sub_1000088CC(__p);
  sub_1000088CC(&v23);
  sub_1000088CC(v24);
  sub_100028EB4(buf);
  return sub_1000088CC(v28);
}

void sub_100590218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30)
{
  sub_1000088CC(&a22);
  sub_1000088CC(&a28);
  sub_100028EB4(&a30);
  sub_1000088CC(v30 - 64);
  _Unwind_Resume(a1);
}

void *sub_1005902DC(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100590394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005903A8(void *a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 26));
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "------------ Connection Requests ------------", buf, 2u);
  }

  v3 = a1[38];
  v4 = a1[35];
  v5 = a1[36];
  v6 = (v4 + 8 * (v3 / 0x66));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 40 * (v3 % 0x66);
  }

  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = a1[39] + a1[38];
      v9 = *(v4 + 8 * (v8 / 0x66)) + 40 * (v8 % 0x66);
    }

    v10 = qword_100BCE8D8;
    v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7 == v9)
    {
      break;
    }

    if (v11)
    {
      sub_1000E5A58(*v7, __p);
      v12 = __p;
      if (v18 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(v7 + 24);
      v14 = *(v7 + 8);
      *buf = 136446722;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device: %{public}s with Services: 0x%x and in state %d ", buf, 0x18u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 += 40;
    if (v7 - *v6 == 4080)
    {
      v15 = v6[1];
      ++v6;
      v7 = v15;
    }

    v4 = a1[35];
    v5 = a1[36];
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "----------------------------------------------", buf, 2u);
  }

  return sub_1000088CC(v19);
}

uint64_t sub_100590608(uint64_t a1, uint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 496);
  sub_1005902DC(a1 + 608, &v5);
  sub_100364600((a1 + 560));
  return sub_1000088CC(v4);
}

void sub_100590660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100590678(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 320);
  v10 = *(a1 + 384);
  v11 = *(a1 + 392);
  v15 = a3;
  if (v10 != v11)
  {
    while (*v10 != a2 || v15 != v10[1])
    {
      v10 += 4;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_7:
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;
    sub_10059926C((a1 + 384), &v14);
  }

  sub_1000088CC(v13);
  return 0;
}

uint64_t sub_10059074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 320);
  v6 = sub_10059947C(*(a1 + 384), *(a1 + 392), a2, a3);
  sub_100079CA4((a1 + 384), v6, *(a1 + 392));
  sub_1000088CC(v8);
  return 0;
}

uint64_t sub_1005907D4(void *a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (a1 + 51));
  v5 = a1[60];
  v4 = a1[61];
  if (v5 >= v4)
  {
    v7 = a1[59];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100008108((a1 + 59), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[59];
    v14 = a1[60] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[59];
    a1[59] = v15;
    a1[60] = v6;
    a1[61] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[60] = v6;
  return sub_1000088CC(v18);
}

uint64_t sub_1005908D4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 408);
  v5 = *(a1 + 472);
  v4 = *(a1 + 480);
  if (v5 != v4)
  {
    v6 = *(a1 + 472);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 480);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 480) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

uint64_t sub_100590978(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, (a1 + 51));
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_100007F20(&__p, a1 + 59);
  sub_10000801C(v33);
  v12 = __p;
  if (__p != v31)
  {
    if (a5 == 12)
    {
      v13 = a7;
    }

    else
    {
      v13 = a6;
    }

    do
    {
      v14 = v13;
      if ((a5 - 105) >= 0xFFFFFFFE)
      {
        sub_100364158(4);
        v14 = a6;
      }

      (***v12)(*v12, a2, a3, a5, v14);
      ++v12;
    }

    while (v12 != v31);
  }

  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, (a1 + 40));
  v15 = a1[48];
  if (v15 != a1[49])
  {
    v16 = a1[48];
    do
    {
      if ((a3 & ~*(v15 + 16)) == 0)
      {
        if (qword_100B50B88 != -1)
        {
          sub_100846D8C();
        }

        if (sub_100076290(qword_100B50B80, *v15))
        {
          if (*(v15 + 8))
          {
            if (qword_100B508F0 != -1)
            {
              sub_100846E7C();
            }

            if (!sub_10056A4C4(off_100B508E8, *v15, a2))
            {
              v17 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100846EA4(&v27, v28, v17);
              }
            }

            if (qword_100B540D0 != -1)
            {
              sub_100846EE4();
            }

            operator new();
          }

          v23 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110144;
            v35 = a3;
            v36 = 1024;
            v37 = a4;
            v38 = 1024;
            v39 = a5;
            v40 = 1024;
            v41 = a6;
            v42 = 1024;
            v43 = a7;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid fCallback: service %d, eventType %d, event %d, result %d, reason %d", buf, 0x20u);
          }
        }

        else
        {
          v18 = a1[49];
          if (v15 + 32 == v18)
          {
            v22 = v15;
          }

          else
          {
            v19 = a1[48];
            v20 = v19 + v16;
            do
            {
              v21 = v20 - v19;
              *v21 = *(v20 - v19 + 32);
              *(v21 + 16) = *(v20 - v19 + 48);
              *(v21 + 24) = *(v20 - v19 + 56);
              v20 += 32;
            }

            while (v20 - v19 + 32 != v18);
            v22 = v20 - v19;
          }

          a1[49] = v22;
        }
      }

      v15 += 32;
      v16 += 32;
    }

    while (v15 != a1[49]);
  }

  sub_1000088CC(v29);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v33);
}

void sub_100590D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100590DE8(int64x2_t *a1, uint64_t a2)
{
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, a1[13].i64);
  sub_1005903A8(a1);
  if (a1[19].i64[1])
  {
    v4 = *(*(a1[17].i64[1] + 8 * (a1[19].i64[0] / 0x66uLL)) + 40 * (a1[19].i64[0] % 0x66uLL));
  }

  else
  {
    v4 = 0;
  }

  sub_10000801C(v34);
  if (!v4)
  {
    return sub_1000088CC(v34);
  }

  if (v4 == a2)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v11 = __p[23] >= 0 ? __p : *__p;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing stalled device %{public}s from connection request queue and processing next conenction.", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    sub_100591550(a1, a2);
LABEL_32:
    v33[0] = 0;
    v33[1] = 0;
    sub_100007F88(v33, &a1[7].i64[1]);
    buf = 0uLL;
    v42 = 0;
    sub_10009C530(&buf, &a1[11].i64[1]);
    sub_10000801C(v33);
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    v17 = sub_100530768(off_100B50F60, a2);
    if (v17)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v19 = __p[23] >= 0 ? __p : *__p;
        *v35 = 136446466;
        *&v35[4] = v19;
        v36 = 1024;
        v37 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device %{public}s has pending services:0x%x for a stalled connection request in the queue. Reporting conenction result for the pending services.", v35, 0x12u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      for (i = *(&buf + 1); i != &buf; i = *(i + 8))
      {
        if ((*(*(i + 16) + 32) & v17) != 0)
        {
          sub_100591B18(a1, a2);
        }
      }
    }

    if (sub_1000C0348(a2))
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v22 = __p[23] >= 0 ? __p : *__p;
        *v35 = 136446210;
        *&v35[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Force Disconnect %{public}s since it had a stalled connection request in the queue.", v35, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v23 = a1[6].i64[1];
      *__p = _NSConcreteStackBlock;
      *&__p[8] = 3221225472;
      *&__p[16] = sub_100596F04;
      *&__p[24] = &unk_100AEAF08;
      *&__p[32] = a1;
      v44 = a2;
      v45 = 1;
      sub_10000CA94(v23, __p);
    }

    v24 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v25 = __p[23] >= 0 ? __p : *__p;
      *v35 = 136446210;
      *&v35[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Check if we can inititate a reconnection for the stalled device %{public}s.", v35, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    *uu = 0;
    v40 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100846F34();
    }

    sub_1000CC438(off_100B508C8, (a2 + 128), uu);
    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100846F34();
      }

      v27 = off_100B508C8;
      v28 = sub_10004DF60(uu);
      v29 = sub_1007902B0(v27, v28);

      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v29 && Current - v29 <= 1.0)
      {
        v31 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v35);
          v32 = v38 >= 0 ? v35 : *v35;
          *__p = 136446978;
          *&__p[4] = v32;
          *&__p[12] = 1024;
          *&__p[14] = 1;
          *&__p[18] = 2048;
          *&__p[20] = Current;
          *&__p[28] = 2048;
          *&__p[30] = v29;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LE Adv for the stalled device %{public}s was last seen within %d second(s). CurrentTimeStamp: %f, lastSeenTimeStamp: %f. Initiating reconnection.", __p, 0x26u);
          if (v38 < 0)
          {
            operator delete(*v35);
          }
        }

        memset(__p, 0, 24);
        sub_10059234C(a1, a2, -1, __p, 2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    sub_100028EB4(&buf);
    sub_1000088CC(v33);
    return sub_1000088CC(v34);
  }

  sub_100007FB8(v34);
  v5 = a1[19].u64[0];
  v6 = a1[17].i64[1];
  v7 = a1[18].i64[0];
  v8 = (v6 + 8 * (v5 / 0x66));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 40 * (v5 % 0x66);
  }

LABEL_16:
  v12 = v9;
  while (1)
  {
    v13 = v7 == v6 ? 0 : *(v6 + 8 * ((a1[19].i64[1] + v5) / 0x66)) + 40 * ((a1[19].i64[1] + v5) % 0x66);
    if (v12 == v13)
    {
      break;
    }

    if (*v12 == a2)
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v16 = __p[23] >= 0 ? __p : *__p;
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing stalled device %{public}s from connection request queue.", &buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      sub_10054DB9C(a2, 0);
      sub_10058B3B8(a1 + 17, v8, v9);
      break;
    }

    v12 += 5;
    v9 += 40;
    if (*v8 + 4080 == v9)
    {
      v14 = v8[1];
      ++v8;
      v9 = v14;
      goto LABEL_16;
    }
  }

  sub_1005903A8(a1);
  sub_10000801C(v34);
  if (v12 != v13)
  {
    goto LABEL_32;
  }

  return sub_1000088CC(v34);
}

void sub_1005914BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100028EB4(&a19);
  sub_1000088CC(&a9);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100591550(int64x2_t *a1, uint64_t a2)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1[13].i64);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing next connection", __p, 2u);
  }

  sub_1005903A8(a1);
  v5 = a1[19].u64[0];
  v6 = a1[17].i64[1];
  v7 = a1[18].i64[0];
  v8 = (v6 + 8 * (v5 / 0x66));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 40 * (v5 % 0x66);
  }

LABEL_6:
  v10 = v9;
  while (1)
  {
    v11 = v7 == v6 ? 0 : *(v6 + 8 * ((a1[19].i64[1] + v5) / 0x66)) + 40 * ((a1[19].i64[1] + v5) % 0x66);
    if (v10 == v11)
    {
      break;
    }

    if (*v10 == a2)
    {
      v13 = sub_1000E077C(a1, a2);
      if (v13)
      {
        if (sub_1000DFB74(a2, 0x80000u) == 4 && (v13 & 0x80000) == 0 && (*(v10 + 26) & 8) != 0)
        {
          v14 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            v15 = v26 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v29 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AACP is not being connected to %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v17 = v26 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from connection request queue", buf, 0xCu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10054DB9C(a2, 0);
      if (sub_10054E0B4(a2))
      {
        sub_10054DF84(a2);
      }

      sub_10058B3B8(a1 + 17, v8, v9);
      v18 = sub_10000F034();
      (*(*v18 + 824))(v18, 1, 0, 0);
      sub_1005903A8(a1);
      break;
    }

    v10 += 40;
    v9 += 40;
    if (*v8 + 4080 == v9)
    {
      v12 = v8[1];
      ++v8;
      v9 = v12;
      goto LABEL_6;
    }
  }

  if (a1[19].i64[1])
  {
    v19 = *(*(a1[17].i64[1] + 8 * (a1[19].i64[0] / 0x66uLL)) + 40 * (a1[19].i64[0] % 0x66uLL));
    v20 = sub_10000C798();
    if ((*(*v20 + 416))(v20) && sub_10053C854(v19))
    {
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_1005880AC();
    }

    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v19, __p);
      v22 = v26 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s", buf, 0xCu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530B98(off_100B50F60, v19);
    sub_100590978(a1, v19, 0xFFFFFFFFLL, 0, 0, 0, 0);
    sub_10054DB9C(v19, 1);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587D6C(qword_100B54668, v19);
  }

  v23 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No pending connection to process", __p, 2u);
  }

  return sub_1000088CC(v27);
}

void sub_100591AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100591B18(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 5));
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  v10 = sub_100531278(off_100B50F60, a2, a3, a4, a5);
  sub_100590978(a1, a2, a3, 0, 11, a5, 0);
  if (a3 == 2 && !a5 && (*(a2 + 1380) & 1) == 0)
  {
    LODWORD(__p) = 0;
    if (qword_100B549E0 != -1)
    {
      sub_100846F84();
    }

    (*(*off_100B549D8 + 88))(off_100B549D8, a2, &__p);
    sub_1005421E4(a2, __p);
  }

  if (v10)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      v12 = v19;
      v13 = __p;
      v14 = sub_1000E2140(a2, 40);
      p_p = &__p;
      if (v12 < 0)
      {
        p_p = v13;
      }

      *buf = 136446466;
      v21 = p_p;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received all connection results for device %{public}s AACP incoming %d", buf, 0x12u);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    sub_10053E630(a2);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587F9C();
  }

  return sub_1000088CC(v17);
}

void sub_10059224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

void sub_1005922D4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 104);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100596F04;
  v4[3] = &unk_100AEAF08;
  v4[4] = a1;
  v4[5] = a2;
  v5 = a3;
  sub_10000CA94(v3, v4);
}

uint64_t sub_10059234C(int64x2_t *a1, uint64_t a2, int a3, const std::string *a4, uint64_t a5)
{
  if (!sub_1000E2140(a2, 12))
  {
    goto LABEL_21;
  }

  if ((SHIBYTE(a4->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&a4->__r_.__value_.__s + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = [NSString stringWithUTF8String:?];
    goto LABEL_8;
  }

  if (a4->__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = @"Unknown";
LABEL_8:
  *uu = 0;
  *&uu[8] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100846FD4();
  }

  sub_1000CC438(off_100B508C8, (a2 + 128), uu);
  if (uuid_is_null(uu))
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v76);
      sub_100846FE8(v76, v83, v10);
    }

LABEL_17:
    v14 = -1;
    goto LABEL_18;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100846F34();
  }

  v11 = off_100B508C8;
  v12 = sub_10004DF60(uu);
  v13 = sub_1007902B0(v11, v12);

  if (v13 <= 0.0)
  {
    goto LABEL_17;
  }

  v14 = (CFAbsoluteTimeGetCurrent() - v13);
LABEL_18:
  v15 = sub_10000F034();
  sub_1000E5A58(a2, __p);
  (*(*v15 + 416))(v15, __p, v9, v14, 0, a5);
  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v73[0] = 0;
  v73[1] = 0;
  sub_100007F88(v73, &a1[2].i64[1]);
  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, buf);
    v17 = v82;
    v18 = *buf;
    v19 = sub_1000295DC(a2);
    v20 = buf;
    *uu = 67109634;
    if (v17 < 0)
    {
      v20 = v18;
    }

    *&uu[4] = a3;
    *&uu[8] = 2082;
    *&uu[10] = v20;
    *&uu[18] = 1024;
    *&uu[20] = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Connecting 0x%x services to device %{public}s, paired %d", uu, 0x18u);
    if (v82 < 0)
    {
      operator delete(*buf);
    }
  }

  if (a1[7].i8[0] == 1)
  {
    sub_10000801C(v73);
    if (qword_100B512C8 != -1)
    {
      sub_10084705C();
    }

    if (sub_10000EE78(off_100B512C0) == 1)
    {
      if (*(a2 + 1032) == 1)
      {
        a3 &= 0xFFEFFFFE;
        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *uu = 67109120;
          *&uu[4] = a3;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Guest Not In Contacts connecting with services 0x%x", uu, 8u);
        }
      }

      v22 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if (v22 >= 0)
      {
        size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a4->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v24 = *(a2 + 1499);
        v25 = qword_100BCE6F0;
        if (qword_100BCE6F0 != &unk_100BCE6F8)
        {
          v67 = *(a2 + 1499);
          v68 = a5;
          v69 = a1;
          if (v22 >= 0)
          {
            v26 = a4;
          }

          else
          {
            v26 = a4->__r_.__value_.__r.__words[0];
          }

          v27 = v26 + size;
          while (1)
          {
            v28 = *(v25 + 55);
            v29 = v28 >= 0 ? (v25 + 32) : *(v25 + 32);
            v30 = v28 >= 0 ? *(v25 + 55) : *(v25 + 40);
            if (!v30)
            {
              break;
            }

            if (size >= v30)
            {
              v33 = *v29;
              v34 = size;
              v35 = v26;
              do
              {
                v36 = v34 - v30;
                if (v36 == -1)
                {
                  break;
                }

                v37 = memchr(v35, v33, v36 + 1);
                if (!v37)
                {
                  break;
                }

                v38 = v37;
                if (!memcmp(v37, v29, v30))
                {
                  if (v38 == v27 || v38 - v26 == -1)
                  {
                    break;
                  }

                  goto LABEL_65;
                }

                v35 = (v38 + 1);
                v34 = v27 - (v38 + 1);
              }

              while (v34 >= v30);
            }

            v31 = *(v25 + 8);
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = *(v25 + 16);
                v58 = *v32 == v25;
                v25 = v32;
              }

              while (!v58);
            }

            v25 = v32;
            if (v32 == &unk_100BCE6F8)
            {
              a1 = v69;
              v24 = v67;
              LOBYTE(a5) = v68;
              goto LABEL_69;
            }
          }

LABEL_65:
          a1 = v69;
          sub_100590978(v69, a2, 0, 3, 901, 0, 0);
          v24 = 1;
          LOBYTE(a5) = v68;
        }

LABEL_69:
        *(a2 + 1499) = v24;
        std::string::operator=((a2 + 1544), a4);
      }

      v72[0] = 0;
      v72[1] = 0;
      sub_100007F88(v72, a1[13].i64);
      v40 = a1[19].u64[0];
      v41 = a1[17].i64[1];
      v42 = a1[18].i64[0];
      v43 = (v41 + 8 * (v40 / 0x66));
      if (v42 == v41)
      {
        v44 = 0;
      }

      else
      {
        v44 = *v43 + 40 * (v40 % 0x66);
      }

LABEL_73:
      v45 = v44 - 4080;
      while (1)
      {
        v46 = v42 == v41 ? 0 : *(v41 + 8 * ((a1[19].i64[1] + v40) / 0x66)) + 40 * ((a1[19].i64[1] + v40) % 0x66);
        if (v44 == v46)
        {
          break;
        }

        if (*v44 == a2)
        {
          v47 = *(v44 + 24);
          if ((v47 & a3) != 0)
          {
            v49 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, uu);
              if (uu[23] >= 0)
              {
                v50 = uu;
              }

              else
              {
                v50 = *uu;
              }

              *buf = 67109378;
              *&buf[4] = v47;
              *&buf[8] = 2082;
              *&buf[10] = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Connection request for 0x%x to device %{public}s already queued, ignoring duplicate request", buf, 0x12u);
              if ((uu[23] & 0x80000000) != 0)
              {
                operator delete(*uu);
              }

              v47 = *(v44 + 24);
            }

            sub_1005903A8(a1);
            a3 &= ~v47;
            v41 = a1[17].i64[1];
            v42 = a1[18].i64[0];
            break;
          }
        }

        v44 += 40;
        v45 += 40;
        if (*v43 == v45)
        {
          v48 = v43[1];
          ++v43;
          v44 = v48;
          goto LABEL_73;
        }
      }

      if (v42 == v41)
      {
        v52 = 0;
      }

      else
      {
        v51 = a1[19].i64[1] + a1[19].i64[0];
        v52 = *(v41 + 8 * (v51 / 0x66)) + 40 * (v51 % 0x66);
      }

      if (v44 == v52)
      {
        v59 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, uu);
          v60 = uu[23] >= 0 ? uu : *uu;
          *buf = 136446210;
          *&buf[4] = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "No connection request for the device %{public}s, adding to connection request queue", buf, 0xCu);
          if ((uu[23] & 0x80000000) != 0)
          {
            operator delete(*uu);
          }
        }

        *uu = a2;
        *&uu[8] = 0;
        *&uu[16] = 0;
        v78 = a3;
        v79 = a5;
        v80 = mach_continuous_time();
        sub_10058A618(a1[17].i64, uu);
        v61 = a1[6].i64[1];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100594B34;
        v71[3] = &unk_100AE0860;
        v71[4] = a1;
        v71[5] = a2;
        sub_10008E008(v61, 60000, v71);
        sub_1005903A8(a1);
        v62 = a1[19].u64[1];
        if (v62 < 2)
        {
          sub_10000801C(v72);
          sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 0, 0, 0);
          sub_10054DB9C(a2, 1);
          if (sub_1000295DC(a2) && !sub_1000C0348(a2) && sub_1000E2140(a2, 19))
          {
            v64 = sub_1004329F8();
            v39 = (**v64)(v64, a2);
            if (v39)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_1000E5A58(a2, uu);
                sub_1008470C4();
              }

              sub_100591550(a1, a2);
            }

            goto LABEL_132;
          }

          if (sub_1000295DC(a2))
          {
            v65 = sub_1000E2140(a2, 21);
          }

          else
          {
            v65 = 0;
          }

          sub_100594D24(a1, a2, v65);
        }

        else
        {
          v63 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *uu = 134217984;
            *&uu[4] = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Queued up connection request - queue size is %lu", uu, 0xCu);
          }

          sub_1005903A8(a1);
        }
      }

      else
      {
        if (a3)
        {
          v53 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v54 = v82 >= 0 ? buf : *buf;
            v55 = *(v44 + 24);
            *uu = 136446722;
            *&uu[4] = v54;
            *&uu[12] = 1024;
            *&uu[14] = v55;
            *&uu[18] = 1024;
            *&uu[20] = a3;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "There is an existing connection request for the device %{public}s, but current service mask 0x%x and new service mask 0x%x are different. Appening new service to existing service mask", uu, 0x18u);
            if (v82 < 0)
            {
              operator delete(*buf);
            }
          }

          v56 = sub_1000E077C(a1, *v44);
          for (i = 0; i != 31; ++i)
          {
            v58 = ((1 << i) & a3) != 0 && (v56 & a3) == 0;
            if (v58)
            {
              *(v44 + 24) |= 1 << i;
            }
          }
        }

        sub_1005903A8(a1);
      }

      v39 = 0;
LABEL_132:
      sub_1000088CC(v72);
      goto LABEL_133;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847084();
    }
  }

  v39 = 202;
LABEL_133:
  sub_1000088CC(v73);
  return v39;
}

void sub_100592D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_1000088CC(&a19);
  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100592E0C(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  sub_100070A6C(*(a1 + 104), a2);
  return sub_1000088CC(v5);
}

void sub_100592E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 40);
  sub_10000CA94(*(a1 + 104), v3);
  sub_1000088CC(v4);
}

void sub_100592EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100592EE8(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 5));
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  sub_100530DB8(off_100B50F60, a2, a3, a4, a5);
  sub_100590978(a1, a2, a3, 0, 1, 0, 0);
  return sub_1000088CC(v11);
}

uint64_t sub_100592FB0(int64x2_t *a1, uint64_t a2, int a3)
{
  v6 = sub_10000C798();
  result = (*(*v6 + 56))(v6, 0x80000);
  if (result)
  {
    if (sub_1000DFB74(a2, 0x80000u) != 4)
    {
      return 0;
    }

    if (qword_100B540A0 != -1)
    {
      sub_100847120();
    }

    if ((*(*off_100B54098 + 136))(off_100B54098, a2))
    {
      return 0;
    }

    if (qword_100B540A0 != -1)
    {
      sub_100847120();
    }

    v8 = (*(*off_100B54098 + 120))(off_100B54098, a2);
    result = 0;
    if (a3 != 0x80000 && (v8 & 1) == 0)
    {
      if (qword_100B540A0 != -1)
      {
        sub_100847120();
      }

      if (sub_10032F01C(off_100B54098, a2))
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remove %{public}s from stale AACP connection device list and return false", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B540A0 != -1)
        {
          sub_100846D14();
        }

        sub_10032F050(off_100B54098, a2);
        return 0;
      }

      v34[0] = 0;
      v34[1] = 0;
      sub_100007F88(v34, a1[13].i64);
      v11 = a1[19].u64[0];
      v12 = a1[17].i64[1];
      v13 = a1[18].i64[0];
      v14 = (v12 + 8 * (v11 / 0x66));
      if (v13 == v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + 40 * (v11 % 0x66);
      }

LABEL_27:
      v16 = v15 - 4080;
      while (1)
      {
        if (v13 == v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v12 + 8 * ((a1[19].i64[1] + v11) / 0x66)) + 40 * ((a1[19].i64[1] + v11) % 0x66);
        }

        if (v15 == v17)
        {
          goto LABEL_48;
        }

        if (*v15 == a2 && (*(v15 + 26) & 8) != 0)
        {
          break;
        }

        v15 += 40;
        v16 += 40;
        if (*v14 == v16)
        {
          v18 = v14[1];
          ++v14;
          v15 = v18;
          goto LABEL_27;
        }
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      if ((sub_100530768(off_100B50F60, a2) & 0x80000) == 0)
      {
        if (qword_100B50F68 != -1)
        {
          sub_100846F0C();
        }

        if (sub_1005306DC(off_100B50F60, a2, 0x80000))
        {
          v19 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, &__p);
            v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connection request list for %{public}s has AACP -- Condition for waiting not met", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_48:
          v21 = 0;
          goto LABEL_49;
        }
      }

      v30 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Connection request list for %{public}s has AACP pending -- Wait for it to complete", &buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 1;
LABEL_49:
      v22 = a1[17].i64[1];
      if (a1[18].i64[0] == v22)
      {
        v24 = 0;
      }

      else
      {
        v23 = a1[19].i64[1] + a1[19].i64[0];
        v24 = *(v22 + 8 * (v23 / 0x66)) + 40 * (v23 % 0x66);
      }

      if (v15 == v24)
      {
        buf = 0uLL;
        v38 = 0;
        if (qword_100B540E0 != -1)
        {
          sub_100847134();
        }

        sub_1007391B4(off_100B540D8, &buf);
        v25 = 16;
        if (!sub_1000E69B8(&buf, a2))
        {
          v26 = a1[19].u64[1];
          if (v26)
          {
            v25 = 16;
          }

          else
          {
            v25 = 8;
          }

          v27 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, v32);
            v28 = v33 >= 0 ? v32 : v32[0];
            LODWORD(__p.__r_.__value_.__l.__data_) = 134218498;
            *(__p.__r_.__value_.__r.__words + 4) = v26;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v28;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
            v36 = v25;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Connection request queue size is %luu. Initite AACP client connection request for %{public}s using watchdog stall timeout as %d seconds", &__p, 0x1Cu);
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          memset(&__p, 0, sizeof(__p));
          v29 = sub_10059234C(a1, a2, 0x80000, &__p, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (!v29)
          {
            LOBYTE(v21) = 1;
          }
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        sub_1000088CC(v34);
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_1000088CC(v34);
        if (!v21)
        {
          return 0;
        }

        v25 = 16;
      }

      if (!sub_10054E0B4(a2))
      {
        sub_10054DC18(a2, v25);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10059360C(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10084715C();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593660(v2, v3);
}

uint64_t sub_100593660(int64x2_t *a1, uint64_t a2)
{
  v4 = sub_1000E077C(a1, a2);
  v5 = 25;
  result = sub_10053C3E8(a2);
  if (result)
  {
    result = sub_1000DFA00(a1, a2);
    v5 = result & 0x19;
  }

  if ((v4 & 0x19) != 0)
  {
    v7 = v5 & ~(v4 & 0x19);
    if (v7)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v9 = " HFP";
        }

        else
        {
          v9 = "";
        }

        if (v7 >= 0x10)
        {
          v10 = " A2DP";
        }

        else
        {
          v10 = "";
        }

        if ((v7 & 8) != 0)
        {
          v11 = " AVRCP";
        }

        else
        {
          v11 = "";
        }

        if (v4)
        {
          v12 = " HFP";
        }

        else
        {
          v12 = "";
        }

        if ((v4 & 0x10) != 0)
        {
          v13 = " A2DP";
        }

        else
        {
          v13 = "";
        }

        if ((v4 & 8) != 0)
        {
          v14 = " AVRCP";
        }

        else
        {
          v14 = "";
        }

        sub_1000E5A58(a2, __p);
        v15 = __p;
        if (v23 < 0)
        {
          v15 = *__p;
        }

        *buf = 136448003;
        *&buf[4] = v9;
        v25 = 2082;
        *v26 = v10;
        *&v26[8] = 2082;
        v27 = v11;
        *v28 = 2082;
        *&v28[2] = v12;
        v29 = 2082;
        v30 = v13;
        v31 = 2082;
        v32 = v14;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2081;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Forcing connection of%{public}s%{public}s%{public}s after incoming connection of only%{public}s%{public}s%{public}s for device %{private, mask.hash}s", buf, 0x52u);
        if (v23 < 0)
        {
          operator delete(*__p);
        }
      }

      v19[0] = 0;
      v19[1] = 0;
      sub_100007F88(v19, a1[13].i64);
      *buf = a2;
      *&buf[8] = 0;
      *&v26[2] = 0;
      LODWORD(v27) = v7;
      BYTE4(v27) = 2;
      *v28 = mach_continuous_time();
      sub_10058A618(a1[17].i64, buf);
      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v17 = v26[9] >= 0 ? buf : *buf;
        *__p = 136446466;
        *&__p[4] = v17;
        v21 = 1024;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Added device %{public}s to the connction request queue for the missing services 0x%x", __p, 0x12u);
        if ((v26[9] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005903A8(a1);
      sub_10000801C(v19);
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      if ((sub_100530500(off_100B50F60) & 1) == 0)
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No device currently connecting. lets process nexct connection", buf, 2u);
        }

        sub_100591550(a1, 0);
      }

      return sub_1000088CC(v19);
    }
  }

  return result;
}

uint64_t sub_1005939A4()
{
  v0 = *(*sub_10000C7D0() + 48);

  return v0();
}

void sub_1005939FC(id a1)
{
  v1 = *(*sub_10000C7D0() + 184);

  v1();
}

uint64_t sub_100593A4C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v10 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting services from device %{public}s with mask 0x%x", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 40);
  if (*(a1 + 112) == 1)
  {
    sub_10000801C(buf);
    if (qword_100B512C8 != -1)
    {
      sub_10084705C();
    }

    if (sub_10000EE78(off_100B512C0))
    {
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }
  }

  sub_1000088CC(buf);
  return 202;
}

void sub_100593CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_100028EB4(va1);
  sub_1000088CC(va);
  sub_1000088CC(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_100593D1C(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 5));
  sub_100590978(a1, a2, a3, 1, 2, 0, 0);
  return sub_1000088CC(v7);
}

uint64_t sub_100593DA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v57 = a3;
  v56[0] = 0;
  v56[1] = 0;
  sub_100007F88(v56, a1 + 40);
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  sub_1005319BC(off_100B50F60, a2, a3, a4, a5, a6);
  sub_100590978(a1, a2, a3, 1, 12, a5, a6);
  switch(a3)
  {
    case 1:
      v16 = *(a1 + 104);
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100594768;
      v55[3] = &unk_100ADF8F8;
      v55[4] = a2;
      sub_10000CA94(v16, v55);
      break;
    case 0x10:
      v14 = *(a1 + 104);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1005947DC;
      v54[3] = &unk_100ADF8F8;
      v54[4] = a2;
      sub_10000CA94(v14, v54);
      v15 = 1;
      goto LABEL_11;
    case 0x80000:
      v9 = *(a1 + 304);
      v10 = *(a1 + 280);
      v11 = *(a1 + 288);
      v12 = (v10 + 8 * (v9 / 0x66));
      if (v11 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 40 * (v9 % 0x66);
      }

      while (1)
      {
        if (v11 == v10)
        {
          v46 = 0;
        }

        else
        {
          v45 = *(a1 + 312) + *(a1 + 304);
          v46 = *(v10 + 8 * (v45 / 0x66)) + 40 * (v45 % 0x66);
        }

        if (v13 == v46)
        {
          break;
        }

        if (*v13 == a2 && *(v13 + 24) == 0x80000)
        {
          v47 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Stale request for service connection request (AACP only), add device to staleAACPConnReqDevList", &__p, 2u);
          }

          if (qword_100B540A0 != -1)
          {
            sub_100846D14();
          }

          sub_10032EF00(off_100B54098, a2);
        }

        v13 += 40;
        if (v13 - *v12 == 4080)
        {
          v48 = v12[1];
          ++v12;
          v13 = v48;
        }

        v10 = *(a1 + 280);
        v11 = *(a1 + 288);
      }

      break;
  }

  v15 = 0;
LABEL_11:
  v17 = sub_10000C798();
  if (!(*(*v17 + 56))(v17, 16))
  {
    goto LABEL_31;
  }

  if (qword_100B54930 != -1)
  {
    sub_100846FAC();
  }

  if ((*(*off_100B54928 + 112))(off_100B54928))
  {
    memset(&__p, 0, sizeof(__p));
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_1000ADA24(off_100B50F60, &__p);
    v18 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
    {
      v20 = 1;
      if (__p.__r_.__value_.__r.__words[0])
      {
LABEL_23:
        __p.__r_.__value_.__l.__size_ = v18;
        operator delete(v18);
      }
    }

    else
    {
      v19 = 0;
      do
      {
        if ((sub_1000E077C(a1, *v18) & 0x10) == 0)
        {
          v19 += sub_10024132C(*v18 + 128) ^ 1;
        }

        ++v18;
      }

      while (v18 != __p.__r_.__value_.__l.__size_);
      v18 = __p.__r_.__value_.__r.__words[0];
      v20 = v19 == 0;
      if (__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_23;
      }
    }

    if (!v20)
    {
      goto LABEL_26;
    }
  }

  v21 = *(a1 + 104);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100594850;
  v52[3] = &unk_100AE0900;
  v53 = 0;
  sub_10000CA94(v21, v52);
LABEL_26:
  if (v15)
  {
    if (qword_100B54930 != -1)
    {
      sub_100846FAC();
    }

    if (((*(*off_100B54928 + 112))(off_100B54928) & 1) == 0)
    {
      v22 = sub_100017F4C();
      sub_10000CA94(v22, &stru_100AFE5F8);
    }
  }

LABEL_31:
  v23 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = buf;
    sub_1000E5A58(a2, buf);
    if (v59 < 0)
    {
      v24 = *buf;
    }

    v25 = sub_1005948F8(&v57);
    if (sub_1000295DC(a2))
    {
      v26 = "paired";
    }

    else
    {
      v26 = "not paired";
    }

    if (sub_1000E2140(a2, 0))
    {
      v27 = "yes";
    }

    else
    {
      v27 = "no";
    }

    v28 = sub_1000E2140(a2, 1);
    v29 = sub_1000E2140(a2, 3);
    v30 = "not supported";
    LODWORD(__p.__r_.__value_.__l.__data_) = 136448514;
    *(__p.__r_.__value_.__r.__words + 4) = v24;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
    if (v28)
    {
      v31 = "supported";
    }

    else
    {
      v31 = "not supported";
    }

    *(&__p.__r_.__value_.__r.__words[1] + 6) = v25;
    if (v29)
    {
      v30 = "supported";
    }

    HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
    v61 = a3;
    v62 = 1024;
    v63 = a4;
    v64 = 1024;
    v65 = a5;
    v66 = 1024;
    v67 = a6;
    v68 = 2080;
    v69 = v26;
    v70 = 2080;
    v71 = v27;
    v72 = 2080;
    v73 = v31;
    v74 = 2080;
    v75 = v30;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ServiceManager disconnection result for device %{public}s with service %{public}s (%d), profile 0x%x, result %d, reason %d, isPaired %s, bs %s, inear %s, unt %s", &__p, 0x56u);
    if (v59 < 0)
    {
      operator delete(*buf);
    }
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  if (!sub_10053066C(off_100B50F60, a2))
  {
    if (*(a1 + 696))
    {
LABEL_51:
      if (qword_100B508F0 != -1)
      {
        sub_100846E7C();
      }

      v32 = a1 + 696;
      v33 = sub_1000E6554(off_100B508E8, a1 + 696, 1);
      v34 = v33;
      if (v33 && sub_1000295DC(v33))
      {
        v35 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8(v32, &__p);
          v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "quickDisconnect reconnection attempt for device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B50AC0 != -1)
        {
          sub_100847170();
        }

        memset(&__p, 0, sizeof(__p));
        v37 = sub_10059234C(off_100B50AB8, v34, -1, &__p, 2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v37 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847198();
        }
      }

      else
      {
        v38 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "QuickDisconnect device not found or not paired", &__p, 2u);
        }
      }

      *(v32 + 4) = 0;
      *v32 = 0;
    }

    else
    {
      v40 = 0;
      while (v40 != 5)
      {
        if (*(a1 + 697 + v40++))
        {
          if ((v40 - 1) <= 4)
          {
            goto LABEL_51;
          }

          break;
        }
      }

      if (a6 == 10721 && sub_1000295DC(a2) && sub_1000E2140(a2, 0) && sub_1000E2140(a2, 1) && sub_1000E2140(a2, 3))
      {
        v42 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v43 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Post-swap reconnection attempt for device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B50AC0 != -1)
        {
          sub_100847170();
        }

        memset(&__p, 0, sizeof(__p));
        v44 = sub_10059234C(off_100B50AB8, a2, -1, &__p, 2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v44 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10084720C();
        }
      }
    }
  }

  return sub_1000088CC(v56);
}

uint64_t sub_100594768()
{
  if (qword_100B54920 != -1)
  {
    sub_100847280();
  }

  v0 = *(*off_100B54918 + 88);

  return v0();
}

uint64_t sub_1005947DC()
{
  if (qword_100B54940 != -1)
  {
    sub_100847294();
  }

  v0 = *(*off_100B54938 + 88);

  return v0();
}

uint64_t sub_100594850()
{
  v0 = *(*sub_10000C7D0() + 48);

  return v0();
}

void sub_1005948A8(id a1)
{
  v1 = *(*sub_10000C7D0() + 184);

  v1();
}

const char *sub_1005948F8(int *a1)
{
  v1 = *a1;
  if (*a1 > 2047)
  {
    if (v1 < 0x8000)
    {
      if (v1 >= 0x2000)
      {
        if (v1 == 0x2000)
        {
          return "Braille";
        }

        if (v1 == 0x4000)
        {
          return "Passive Multi Stream";
        }
      }

      else
      {
        if (v1 == 2048)
        {
          return "Gaming";
        }

        if (v1 == 4096)
        {
          return "Network (Client)";
        }
      }
    }

    else if (v1 < 0x20000)
    {
      if (v1 == 0x8000)
      {
        return "GATT (Client)";
      }

      if (v1 == 0x10000)
      {
        return "LE Audio";
      }
    }

    else
    {
      switch(v1)
      {
        case 0x20000:
          return "WirelessiAPSink";
        case 0x80000:
          return "AACP";
        case 0x100000:
          return "GATT";
      }
    }
  }

  else if (v1 <= 15)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return "Phonebook";
      }

      if (v1 == 8)
      {
        return "Remote";
      }
    }

    else
    {
      if (v1 == -1)
      {
        return "ALL";
      }

      if (v1 == 1)
      {
        return "Handsfree";
      }
    }
  }

  else if (v1 <= 127)
  {
    if (v1 == 16)
    {
      return "A2DP";
    }

    if (v1 == 32)
    {
      return "HID";
    }
  }

  else
  {
    switch(v1)
    {
      case 128:
        return "WirelessiAP";
      case 256:
        return "Network (Server)";
      case 512:
        return "MAP";
    }
  }

  return "Unknown";
}

uint64_t sub_100594AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 5));
  sub_100590978(a1, a2, a3, 2, a5, a6, 0);
  return sub_1000088CC(v12);
}

void sub_100594B40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114) == 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008472A8();
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, a1 + 208);
    v4 = *(a1 + 312);
    if (v4)
    {
      v5 = *(a1 + 280);
      if (*(a1 + 288) != v5)
      {
        v6 = *(a1 + 304);
        v7 = (v5 + 8 * (v6 / 0x66));
        v8 = (*v7 + 40 * (v6 % 0x66));
        v9 = *(v5 + 8 * ((v6 + v4) / 0x66)) + 40 * ((v6 + v4) % 0x66);
        while (v8 != v9)
        {
          if (*v8 == a2)
          {
            mach_continuous_time();
            if (UpTicksToSeconds() >= 0x3C)
            {
              v12 = *(a1 + 104);
              v14[0] = _NSConcreteStackBlock;
              v14[1] = 3221225472;
              v14[2] = sub_100598508;
              v14[3] = &unk_100AE0860;
              v14[4] = a1;
              v14[5] = a2;
              sub_10000CA94(v12, v14);
              goto LABEL_14;
            }
          }

          v8 += 5;
          if ((v8 - *v7) == 4080)
          {
            v10 = v7[1];
            ++v7;
            v8 = v10;
          }
        }
      }
    }

    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No device stalls detected in Service Manager", v13, 2u);
    }

LABEL_14:
    sub_1000088CC(v15);
  }
}

void sub_100594D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100594D24(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_73;
  }

  v31 = 0;
  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v5 = sub_10000E92C();
    sub_100007E30(buf, "FastConnect");
    sub_100007E30(&__p, "DisableFastConnect");
    (*(*v5 + 72))(v5, buf, &__p, &v31);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(*buf);
    }

    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Outgoing Connection, disableFastConnect = %d", buf, 8u);
    }
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000E2140(a2, 21);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startConnectServices supportsProfileFastConnect:%d", buf, 8u);
  }

  v27 = xmmword_1008AA1A0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  if (sub_10053BFB4(a2, &v27, 0x201u, &__p))
  {
    if (*__p == 1)
    {
      v9 = *(__p + 2);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v31)
  {
    goto LABEL_43;
  }

  if (!sub_1000E2140(a2, 21))
  {
    goto LABEL_93;
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  if (sub_10053066C(off_100B50F60, a2))
  {
LABEL_93:
    if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    if (!sub_100731BD8(off_100B540D8, a2))
    {
      goto LABEL_43;
    }

    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    if (sub_1005307E0(off_100B50F60, a2))
    {
      goto LABEL_43;
    }
  }

  v10 = sub_1000E2140(a2, 12);
  if (!v9 || !v10)
  {
LABEL_43:
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, v32);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = *v32;
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      v18 = sub_10053066C(off_100B50F60, a2) != 0;
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      v19 = sub_1005307E0(off_100B50F60, a2);
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      v20 = sub_100731BD8(off_100B540D8, a2);
      *buf = 136447234;
      *&buf[4] = v17;
      v35 = 1024;
      v36 = v18;
      v37 = 1024;
      v38 = v9;
      v39 = 1024;
      v40 = v19;
      v41 = 1024;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not do PFC for device %{public}s. Connection for device exits: %d, SDP service database state: %d, service connected:%d, PFCALL:%d", buf, 0x24u);
      if (v33 < 0)
      {
        operator delete(*v32);
      }
    }

    if ((v31 & 1) == 0)
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      v21 = sub_100731BD8(off_100B540D8, a2);
      if (!v9 && v21)
      {
        v23 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No SDP record but both supports PFC all, start PFC after SDP", buf, 2u);
        }

        if (qword_100B540E0 != -1)
        {
          sub_100847134();
        }

        v24 = 1;
        goto LABEL_69;
      }
    }

    if (qword_100B540E0 == -1)
    {
      v24 = 0;
LABEL_69:
      *(off_100B540D8 + 682) = v24;
      v13 = 1;
      goto LABEL_70;
    }

LABEL_89:
    sub_100847134();
    v24 = 0;
    goto LABEL_69;
  }

  if (qword_100B540E0 != -1)
  {
    sub_100847134();
  }

  v12 = sub_100731A4C(off_100B540D8, a2);
  v13 = v12;
  if (v12)
  {
    if (v12 == 4506)
    {
      v25 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v26 = v38 >= 0 ? buf : *buf;
        *v32 = 136446210;
        *&v32[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PFC device %{public}s already connected!", v32, 0xCu);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (v12 == 4508)
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          v15 = v38 >= 0 ? buf : *buf;
          *v32 = 136446210;
          *&v32[4] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PFC connection for device %{public}s already in progress", v32, 0xCu);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(*buf);
          }
        }

        sub_10054DB9C(a2, 0);
        v13 = 0;
        goto LABEL_70;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_1008472E8();
      }
    }

    if (qword_100B540E0 == -1)
    {
      v24 = 0;
      goto LABEL_69;
    }

    goto LABEL_89;
  }

LABEL_70:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v13)
  {
LABEL_73:
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530B98(off_100B50F60, a2);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587D6C(qword_100B54668, a2);
  }
}

void sub_1005953F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100595470(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "delayedConnectServices addr %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *a2;
  *(a1 + 700) = *(a2 + 2);
  *(a1 + 696) = v6;
  return 0;
}

_BYTE *sub_100595564(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v10 = 1;
  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002FCADC((a2 + 128), &v10);
  sub_100022214(&v9);
  if (((a4 & 1) != 0 || (v10 & 1) == 0) && (sub_1000295DC(a2) & 1) == 0 && !sub_100539FE8(a2))
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = a4;
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sleep workaround after SDP due device-database %d, remote ssp %d", buf, 0xEu);
    }

    sub_1001BAECC(1800);
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100847170();
  }

  sub_1005956CC(off_100B50AB8, a2, a3);
  return sub_10002249C(&v9);
}

uint64_t sub_1005956CC(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    v84[0] = 0;
    v84[1] = 0;
    sub_100007F88(v84, a1[13].i64);
    v7 = a1[19].i64[1];
    if (!v7)
    {
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      sub_100530C74(off_100B50F60, a2, 0);
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }

    v8 = a1[19].u64[0];
    v9 = a1[17].i64[1];
    v10 = a1[18].i64[0];
    v11 = (v9 + 8 * (v8 / 0x66));
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11 + 40 * (v8 % 0x66);
    }

    v13 = v8 + v7;
    v14 = v13 / 0x66;
    v15 = v13 % 0x66;
LABEL_21:
    v16 = v12 - 4080;
    while (1)
    {
      v17 = v10 == v9 ? 0 : *(v9 + 8 * v14) + 40 * v15;
      if (v12 == v17 || *v12 == a2)
      {
        break;
      }

      v12 += 40;
      v16 += 40;
      if (*v11 == v16)
      {
        v18 = v11[1];
        ++v11;
        v12 = v18;
        goto LABEL_21;
      }
    }

    if (v10 == v9)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v9 + 8 * v14) + 40 * v15;
    }

    if (v12 == v19)
    {
      v25 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v90);
        v26 = v90[23] >= 0 ? v90 : *v90;
        *buf = 136446210;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Got an SDP response without a connection in progress for device %{public}s - was there a successful incoming connection during the outgoing one?", buf, 0xCu);
        if ((v90[23] & 0x80000000) != 0)
        {
          operator delete(*v90);
        }
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      sub_100530C74(off_100B50F60, a2, 0);
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }

    sub_10000801C(v84);
    if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    if (sub_100731BD8(off_100B540D8, a2))
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      if (*(off_100B540D8 + 682) == 1)
      {
        if (qword_100B50F68 != -1)
        {
          sub_100846F0C();
        }

        if (sub_10053066C(off_100B50F60, a2) && !sub_1000E077C(a1, a2))
        {
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, v90);
            v21 = v90[23];
            v22 = *v90;
            v23 = sub_1000295DC(a2);
            v24 = v90;
            if (v21 < 0)
            {
              v24 = v22;
            }

            *buf = 136446466;
            *&buf[4] = v24;
            *&buf[12] = 1024;
            *&buf[14] = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fast connect after SDP, device %{public}s, paired:%d", buf, 0x12u);
            if ((v90[23] & 0x80000000) != 0)
            {
              operator delete(*v90);
            }
          }

          if (qword_100B54670 != -1)
          {
            sub_100846F5C();
          }

          sub_100587F9C();
        }

LABEL_73:
        v83[0] = 0;
        v83[1] = 0;
        sub_100007F88(v83, &a1[7].i64[1]);
        memset(buf, 0, 24);
        sub_10009C530(buf, &a1[11].i64[1]);
        sub_10000801C(v83);
        v33 = *(v12 + 24);
        v81 = 0;
        v82 = 0;
        v34 = sub_1000C2364(a2, &v82 + 1, &v82, &v81, &v81 + 1);
        v35 = qword_100BCE8D8;
        v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          sub_1000E5A58(a2, __p);
          v37 = v88 >= 0 ? __p : *__p;
          v38 = sub_1000295DC(a2);
          v39 = v81;
          v40 = sub_100539FE8(a2);
          *v90 = 136447490;
          *&v90[4] = v37;
          *&v90[12] = 1024;
          *&v90[14] = v38;
          *&v90[18] = 1024;
          *&v90[20] = v34;
          *&v90[24] = 1024;
          *&v90[26] = v39;
          *&v90[30] = 1024;
          LODWORD(v91) = v40;
          WORD2(v91) = 1024;
          *(&v91 + 6) = v33;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Handle query complete for device %{public}s isPaired %d deviceIDStatus %d pid 0x%x isAppleBluetooth %d mask 0x%x", v90, 0x2Au);
          if (v88 < 0)
          {
            operator delete(*__p);
          }
        }

        if (!v34)
        {
          goto LABEL_89;
        }

        if (!sub_10053D124(a2))
        {
          v66 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(a2, v90);
            v67 = v90[23] >= 0 ? v90 : *v90;
            *__p = 136446466;
            *&__p[4] = "void BT::ServiceManager::handleQueryComplete(Device *, BTResult)";
            v86 = 2082;
            v87 = v67;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}s - Device “%{public}s” not supported on this platform, disconnecting", __p, 0x16u);
            if ((v90[23] & 0x80000000) != 0)
            {
              operator delete(*v90);
            }
          }

          sub_100590978(a1, a2, 0, 0, 11, 0, 0);
          v68 = a1[6].i64[1];
          *v90 = _NSConcreteStackBlock;
          *&v90[8] = 3221225472;
          *&v90[16] = sub_100596F04;
          *&v90[24] = &unk_100AEAF08;
          *&v91 = a1;
          *(&v91 + 1) = a2;
          v92 = 1;
          sub_10000CA94(v68, v90);
          goto LABEL_154;
        }

        v36 = sub_100539FE8(a2);
        v41 = v81 == 8207 ? v36 : 0;
        if (v41 == 1 && ((v36 = sub_1000295DC(a2), !v33) ? (v42 = 1) : (v42 = v36), (v42 & 1) == 0))
        {
          v70 = *&buf[8];
          v43 = 0;
          if (*&buf[8] == buf)
          {
            v78 = 109;
          }

          else
          {
            v78 = 109;
            do
            {
              v36 = *(v70 + 16);
              v71 = *(v36 + 32);
              if (v71 == 0x80000 && (v33 & 0x80000) != 0)
              {
                v73 = (*(*v36 + 80))(v36, a2);
                v74 = qword_100BCE8D8;
                v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
                if (v36)
                {
                  sub_1000E5A58(a2, __p);
                  v75 = __p;
                  if (v88 < 0)
                  {
                    v75 = *__p;
                  }

                  *v90 = 136315650;
                  *&v90[4] = v75;
                  *&v90[12] = 1024;
                  *&v90[14] = v33;
                  *&v90[18] = 1024;
                  *&v90[20] = v73;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "AACPFirst: Connecting AACP first for %s mask 0x%x with result %d", v90, 0x18u);
                  if (v88 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (v73 - 107 >= 2)
                {
                  if (v73 == 303 || v73 == 0)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v77 = v78;
                    if (v78 == 109)
                    {
                      v77 = v73;
                    }

                    v78 = v77;
                  }
                }

                v43 = 1;
              }

              v70 = *(v70 + 8);
            }

            while (v70 != buf);
          }
        }

        else
        {
LABEL_89:
          v43 = 0;
          v78 = 109;
        }

        for (i = *&buf[8]; i != buf; i = *(i + 8))
        {
          v45 = *(i + 16);
          v46 = *(v45 + 32);
          if ((v46 & v33) == 0)
          {
            continue;
          }

          if (v46 == 0x80000 && (v43 & 1) != 0)
          {
            v47 = qword_100BCE8D8;
            v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              *v90 = 67109120;
              *&v90[4] = v33;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "AACPFirst: Skipping AACP Connection mask 0x%x", v90, 8u);
            }

            continue;
          }

          if (v46 == 0x100000)
          {
            if (sub_1005965D4(v36, a2))
            {
              v48 = qword_100BCE8D8;
              v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v36)
              {
                sub_1000E5A58(a2, v90);
                v49 = v90;
                if (v90[23] < 0)
                {
                  v49 = *v90;
                }

                *__p = 136315394;
                *&__p[4] = v49;
                v86 = 1024;
                LODWORD(v87) = v33;
                v50 = v48;
                v51 = "Skipping CATT Connection for device %s with mask 0x%x";
LABEL_107:
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, __p, 0x12u);
                if ((v90[23] & 0x80000000) != 0)
                {
                  operator delete(*v90);
                }

                continue;
              }

              continue;
            }

            v46 = *(v45 + 32);
          }

          if (v46 != 512)
          {
            v54 = (*(*v45 + 80))(v45, a2);
            v55 = qword_100BCE8D8;
            v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              sub_1000C23E0(a2, __p);
              if (v88 >= 0)
              {
                v56 = __p;
              }

              else
              {
                v56 = *__p;
              }

              if (*(v45 + 31) < 0)
              {
                sub_100008904(__dst, *(v45 + 8), *(v45 + 16));
              }

              else
              {
                v57 = *(v45 + 8);
                v80 = *(v45 + 24);
                *__dst = v57;
              }

              v58 = __dst;
              if (v80 < 0)
              {
                v58 = __dst[0];
              }

              *v90 = 67109634;
              *&v90[4] = v54;
              *&v90[8] = 2080;
              *&v90[10] = v56;
              *&v90[18] = 2080;
              *&v90[20] = v58;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Connection Result %d for device %s for service %s", v90, 0x1Cu);
              if (SHIBYTE(v80) < 0)
              {
                operator delete(__dst[0]);
              }

              if (v88 < 0)
              {
                operator delete(*__p);
              }
            }

            if (v54 - 107 >= 2)
            {
              if (v54 == 303 || v54 == 0)
              {
                v78 = 0;
              }

              else
              {
                v60 = v78;
                if (v78 == 109)
                {
                  v60 = v54;
                }

                v78 = v60;
              }
            }

            continue;
          }

          v52 = qword_100BCE8D8;
          v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            sub_1000E5A58(a2, v90);
            v53 = v90;
            if (v90[23] < 0)
            {
              v53 = *v90;
            }

            *__p = 136315394;
            *&__p[4] = v53;
            v86 = 1024;
            LODWORD(v87) = v33;
            v50 = v52;
            v51 = "Skipping outgoing MAP Connection for device %s with mask 0x%x";
            goto LABEL_107;
          }
        }

        v61 = v78;
        if (v78)
        {
          if (v78 != 109)
          {
            goto LABEL_141;
          }

          sub_1000DEEA4(a2, v90);
          v62 = v90[23];
          v63 = *v90;
          if (v90[23] >= 0)
          {
            v64 = v90;
          }

          else
          {
            v64 = *v90;
          }

          v65 = strncmp(v64, "MB Bluetooth", 0xCuLL);
          if (v62 < 0)
          {
            operator delete(v63);
          }

          if (!v65)
          {
            sub_100590978(a1, a2, 0, 0, 11, 0, 0);
            v69 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v90 = 0;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "This device reports no services supported and then makes incoming connection :( ", v90, 2u);
            }
          }

          else
          {
LABEL_141:
            if (qword_100B50F68 != -1)
            {
              sub_100846F0C();
              v61 = v78;
            }

            sub_100530C74(off_100B50F60, a2, v61);
            sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 11, v61, 0);
          }

          if (qword_100B54670 != -1)
          {
            sub_100846F5C();
          }

          sub_100587F9C();
        }

LABEL_154:
        sub_100028EB4(buf);
        sub_1000088CC(v83);
        return sub_1000088CC(v84);
      }
    }

    else if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    v27 = *(off_100B540D8 + 84);
    v28 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v29 = buf[23];
      v30 = *buf;
      v31 = sub_1000295DC(a2);
      v32 = buf;
      *v90 = 136446722;
      if (v29 < 0)
      {
        v32 = v30;
      }

      *&v90[4] = v32;
      *&v90[12] = 1024;
      *&v90[14] = v31;
      *&v90[18] = 2048;
      *&v90[20] = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Lagacy profile connection after SDP, device %{public}s, paired:%d, FC features:%llx", v90, 0x1Cu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    if ((v27 & 0x10) != 0)
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      *(off_100B540D8 + 682) = 1;
    }

    goto LABEL_73;
  }

  if (qword_100B50F68 != -1)
  {
    sub_100847344();
  }

  sub_100530C74(off_100B50F60, a2, a3);
  sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 11, a3, 0);
  if (a3 != 17)
  {
    if (qword_100B54670 != -1)
    {
      sub_100847358();
    }

    sub_100587F9C();
  }

  return sub_100591550(a1, a2);
}

void sub_100596508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 137) < 0)
  {
    operator delete(*(v39 - 160));
  }

  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1005965D4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a2[128];
  v4 = a2[129];
  v5 = a2[130];
  v6 = a2[131];
  v7 = a2[132];
  v8 = a2[133];
  if (qword_100B508D0 != -1)
  {
    sub_100846FD4();
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_1000498D4(off_100B508C8, (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8, 0, 1u, 0, 0, v10);
  if (qword_100B508B0 != -1)
  {
    sub_10084736C();
  }

  if (sub_100050290(off_100B508A8, v10))
  {
    return 1;
  }

  else
  {
    return sub_1005399A0(a2) ^ 1;
  }
}

uint64_t sub_1005966EC(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100847394(v6);
    }
  }

  v22 = 0;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_1000DE474(&v14 + 1);
  BYTE2(v15[0]) = 0;
  BYTE4(v15[0]) = 0;
  BYTE2(v17[0]) = 0;
  BYTE4(v17[0]) = 0;
  HIDWORD(v20[2]) = 0;
  v16 = 0uLL;
  v15[1] = 0;
  LOBYTE(v17[0]) = 0;
  v18 = 0uLL;
  v17[1] = 0;
  LOBYTE(v19) = 0;
  v20[0] = 0;
  v20[1] = 0;
  *(&v19 + 1) = 0;
  *(&v20[1] + 7) = 0;
  LOBYTE(v20[3]) = 1;
  *(&v20[3] + 6) = 0;
  *(&v20[3] + 1) = 0;
  v21 = 0uLL;
  v20[5] = 0;
  LOBYTE(v22) = 0;
  *(&v22 + 2) = 0;
  v7 = sub_100536A18(a2, &v14);
  v8 = v7 & BYTE1(v20[2]);
  v9 = *(a1 + 104);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005968C8;
  v11[3] = &unk_100AEDA80;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a3;
  v13 = v8;
  sub_10000CA94(v9, v11);
  if (SHIBYTE(v20[1]) < 0)
  {
    operator delete(*(&v19 + 1));
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  return nullsub_21(&v14 + 1);
}

uint64_t sub_10059690C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 40);
  if (*(a1 + 112) != 1)
  {
    goto LABEL_29;
  }

  sub_10000801C(v17);
  if (qword_100B512C8 != -1)
  {
    sub_10084705C();
  }

  if (sub_10000EE78(off_100B512C0))
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 132);
    *uu = 0;
    v21 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100846F34();
    }

    sub_1000CC438(off_100B508C8, &v15, uu);
    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100846F34();
      }

      v4 = off_100B508C8;
      v5 = sub_10004DF60(uu);
      sub_100007E30(__p, "_CTKD_");
      v6 = sub_10004EB40(v4, v5, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v6)
      {
        if (qword_100B508B0 != -1)
        {
          sub_10084736C();
        }

        if (sub_100050290(off_100B508A8, uu))
        {
          v7 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            memset(out, 0, 37);
            uuid_unparse_upper(uu, out);
            sub_100007E30(v11, out);
            v8 = v12 >= 0 ? v11 : v11[0];
            *buf = 136315138;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LE device %s is connected, forcing disconnection", buf, 0xCu);
            if (v12 < 0)
            {
              operator delete(v11[0]);
            }
          }

          if (qword_100B508B0 != -1)
          {
            sub_10084736C();
          }

          if (sub_10074CD90(off_100B508A8, uu, 4u) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100847418();
          }
        }
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_29:
    v9 = 202;
  }

  sub_1000088CC(v17);
  return v9;
}

void sub_100596BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100596C64;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  sub_10000CA94(v2, v3);
}

void sub_100596C64(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_10084748C();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 40), 1);
  if (v3)
  {
    v4 = v3;
    if (sub_1000C0348(v3))
    {
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = sub_1000E077C(v2, v4);
      v6 = "CTKD le device connected, not bridging classic services because services %x is already connected";
      v7 = v5;
      v8 = 8;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &__p, v8);
      return;
    }

    if (qword_100B50910 != -1)
    {
      sub_1008474A0();
    }

    if ((*(off_100B50908 + 206) & 1) != 0 || (*(off_100B50908 + 205) & 1) != 0 || *(off_100B50908 + 207) == 1)
    {
      v9 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v6 = "Device is currently streaming, not bridging";
      v7 = v9;
      v8 = 2;
      goto LABEL_16;
    }

    if ((sub_100537920(v4) & 0x19) != 0 || !sub_10053C3E8(v4))
    {
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v14 = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "This is a disconnected CTKD device (%{public}s) that connected over LE, bringing up classic audio services as well", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      memset(&__p, 0, sizeof(__p));
      sub_10059234C(v2, v4, -1048577, &__p, 2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008474B4();
  }
}

void sub_100596EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100596F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, v2 + 40);
  if (*(v2 + 112) == 1)
  {
    v4 = 0;
    sub_1000216B4(&v4);
    sub_10023BD60(*(a1 + 40) + 128);
    sub_100022214(&v4);
    if (*(a1 + 48) == 1)
    {
      sub_10059690C(v2, *(a1 + 40));
    }

    sub_10002249C(&v4);
  }

  return sub_1000088CC(v5);
}

void sub_100596F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596FB8(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _DWORD *a5)
{
  v29 = 0;
  v28 = 0;
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 120);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10009C530(&v24, a1 + 184);
  sub_10000801C(v27);
  *a4 = 0;
  v10 = v25;
  if (v25 != &v24)
  {
    v11 = &qword_100BCE8D8;
    do
    {
      v12 = v10[2];
      if ((v12[8] & a3) != 0)
      {
        v29 = 0;
        v28 = 0;
        (*(*v12 + 64))(v12, a2, &v28, &v29);
        *a5 |= v29;
        if (v28 == 1)
        {
          v13 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v11;
            (*(*v12 + 192))(v22, v12);
            v15 = v23;
            v16 = v22[0];
            sub_1000E5A58(a2, __p);
            v17 = v22;
            if (v15 < 0)
            {
              v17 = v16;
            }

            v18 = __p;
            if (v21 < 0)
            {
              v18 = __p[0];
            }

            *buf = 136446466;
            v31 = v17;
            v32 = 2082;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s supports device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            v11 = v14;
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }
          }

          *a4 = 1;
        }
      }

      v10 = v10[1];
    }

    while (v10 != &v24);
  }

  sub_100028EB4(&v24);
  return sub_1000088CC(v27);
}

void sub_100597200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_100028EB4(&a20);
  sub_1000088CC(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10059724C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 120);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10009C530(&v13, a1 + 184);
  sub_10000801C(v16);
  for (i = v14; i != &v13; i = i[1])
  {
    v11 = i[2];
    if ((v11[8] & a3) != 0)
    {
      (*(*v11 + 208))(v11, a2, a4, a5);
    }
  }

  sub_100028EB4(&v13);
  sub_1000088CC(v16);
  return 0;
}

void sub_10059732C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100597354(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 120);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10009C530(&v14, a1 + 184);
  sub_10000801C(v17);
  for (i = v15; ; i = i[1])
  {
    if (i == &v14)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v11 = i[2];
    if (v11[8] == a3)
    {
      break;
    }
  }

  v12 = (*(*v11 + 216))(v11, a2, a4, a5);
LABEL_7:
  sub_100028EB4(&v14);
  sub_1000088CC(v17);
  return v12;
}

void sub_100597440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100597468(uint64_t a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 120);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10009C530(&v17, a1 + 184);
  sub_10000801C(v20);
  for (i = v18; ; i = i[1])
  {
    if (i == &v17)
    {
      goto LABEL_8;
    }

    v11 = i[2];
    if (v11[8] == a3)
    {
      break;
    }
  }

  v12 = (*(*v11 + 184))(v11, a2);
  v13 = v12;
  if (!v12)
  {
LABEL_8:
    v15 = 800;
    goto LABEL_9;
  }

  v14 = [v12 UTF8String];
  if (strlen(v14) >= a5)
  {
    v15 = 5;
  }

  else
  {
    strlcpy(a4, v14, a5);
    v15 = 0;
  }

LABEL_9:
  sub_100028EB4(&v17);
  sub_1000088CC(v20);
  return v15;
}

void sub_100597590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);

  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005975C4(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_10009C530(&v5, a1 + 184);
  sub_10000801C(v8);
  v2 = v6;
  v3 = 1;
  while (v2 != &v5)
  {
    v3 = v3 & (*(**(v2 + 16) + 224))(*(v2 + 16));
    v2 = *(v2 + 8);
  }

  sub_100028EB4(&v5);
  sub_1000088CC(v8);
  return v3;
}

void sub_10059767C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005976AC(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10009C530(&v4, a1 + 184);
  sub_10000801C(v7);
  for (i = v5; i != &v4; i = *(i + 8))
  {
    (*(**(i + 16) + 232))(*(i + 16));
  }

  *(a1 + 113) = 1;
  sub_100028EB4(&v4);
  return sub_1000088CC(v7);
}

void sub_100597760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005977A0(_DWORD *a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_100007AD0(&v11);
  v2 = 1;
  do
  {
    LODWORD(v9[0]) = *a1 & v2;
    if (LODWORD(v9[0]))
    {
      v3 = sub_100007774(&v12);
      v4 = sub_1005948F8(v9);
      strlen(v4);
      v5 = sub_100007774(v3);
      sub_100007774(v5);
    }

    v2 *= 2;
  }

  while ((v2 & 0x80000000) == 0);
  std::stringbuf::str();
  if (v10 < 0)
  {
    v6 = v9[1];
    operator delete(v9[0]);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
    goto LABEL_10;
  }

  sub_100007774(&v12);
LABEL_10:
  std::stringbuf::str();
  *&v12 = v7;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100597A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const char *sub_100597A38(int *a1)
{
  v1 = *a1;
  if (*a1 > 1023)
  {
    if (v1 < 0x8000)
    {
      if (v1 <= 4095)
      {
        if (v1 == 1024)
        {
          return "BT_SERVICE_PASSTHROUGH";
        }

        if (v1 == 2048)
        {
          return "BT_SERVICE_GAMING";
        }
      }

      else
      {
        switch(v1)
        {
          case 0x1000:
            return "BT_SERVICE_NETWORK_CONSUMER";
          case 0x2000:
            return "BT_SERVICE_BRAILLE";
          case 0x4000:
            return "BT_SERVICE_PASSIVE_MULTI_STREAM";
        }
      }
    }

    else if (v1 >= 0x40000)
    {
      switch(v1)
      {
        case 0x40000:
          return "BT_SERVICE_WIRELESS_CARPLAY";
        case 0x80000:
          return "BT_SERVICE_AACP";
        case 0x100000:
          return "BT_SERVICE_GATT";
      }
    }

    else
    {
      switch(v1)
      {
        case 0x8000:
          return "BT_SERVICE_LE_GATT_CLIENT";
        case 0x10000:
          return "BT_SERVICE_LEA";
        case 0x20000:
          return "BT_SERVICE_WIRELESS_IAP_SINK";
      }
    }
  }

  else if (v1 <= 15)
  {
    if (v1 <= 0)
    {
      if (v1 == -1)
      {
        return "BT_SERVICE_ALL";
      }

      if (!v1)
      {
        return "BT_SERVICE_NONE";
      }
    }

    else
    {
      switch(v1)
      {
        case 1:
          return "BT_SERVICE_HANDSFREE";
        case 2:
          return "BT_SERVICE_PHONEBOOK";
        case 8:
          return "BT_SERVICE_REMOTE";
      }
    }
  }

  else if (v1 > 127)
  {
    switch(v1)
    {
      case 128:
        return "BT_SERVICE_WIRELESS_IAP";
      case 256:
        return "BT_SERVICE_NET_SHARING";
      case 512:
        return "BT_SERVICE_MAP";
    }
  }

  else
  {
    switch(v1)
    {
      case 16:
        return "BT_SERVICE_A2DP";
      case 32:
        return "BT_SERVICE_HID";
      case 64:
        return "BT_SERVICE_SENSOR";
    }
  }

  return "Unknown";
}

const char *sub_100597C30(int *a1)
{
  v1 = *a1;
  if (*a1 <= 300)
  {
    if (v1 > 101)
    {
      if (v1 <= 110)
      {
        if (v1 == 102)
        {
          return "BT_SERVICE_HANDSFREE_AUDIO_DISCONNECTED";
        }

        if (v1 == 110)
        {
          return "BT_SERVICE_A2DP_LOW_LATENCY_ON";
        }
      }

      else
      {
        switch(v1)
        {
          case 111:
            return "BT_SERVICE_A2DP_LOW_LATENCY_OFF";
          case 201:
            return "BT_SERVICE_A2DP_AUDIO_CONNECTED";
          case 202:
            return "BT_SERVICE_A2DP_AUDIO_DISCONNECTED";
        }
      }
    }

    else if (v1 <= 10)
    {
      if (v1 == 1)
      {
        return "BT_SERVICE_CONNECTION_ATTEMPT";
      }

      if (v1 == 2)
      {
        return "BT_SERVICE_DISCONNECTION_ATTEMPT";
      }
    }

    else
    {
      switch(v1)
      {
        case 11:
          return "BT_SERVICE_CONNECTION_RESULT";
        case 12:
          return "BT_SERVICE_DISCONNECTION_RESULT";
        case 101:
          return "BT_SERVICE_HANDSFREE_AUDIO_CONNECTED";
      }
    }

    return "Unknown";
  }

  if (v1 <= 700)
  {
    if (v1 <= 500)
    {
      if (v1 == 301)
      {
        return "BT_SERVICE_PHONE_BOOK_SEND_INITIATED";
      }

      if (v1 == 302)
      {
        return "BT_SERVICE_PHONE_BOOK_SEND_COMPLETE";
      }
    }

    else
    {
      switch(v1)
      {
        case 501:
          return "BT_SERVICE_REMOTE_PLAY";
        case 502:
          return "BT_SERVICE_REMOTE_PAUSE";
        case 601:
          return "BT_SERVICE_SENSOR_RSSI";
      }
    }

    return "Unknown";
  }

  if (v1 > 702)
  {
    switch(v1)
    {
      case 703:
        return "BT_SERVICE_HIGH_POWER_DISABLED";
      case 901:
        return "BT_UI_INITIATED_CONNECTION_REQUEST";
      case 902:
        return "BT_CONNECTION_RESULT_PROCESSED";
    }

    return "Unknown";
  }

  if (v1 == 701)
  {
    return "BT_SERVICE_LMP_NAME_CHANGED";
  }

  else
  {
    return "BT_SERVICE_HIGH_POWER_ENABLED";
  }
}

void sub_100597E08(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Service Manager ------------------", buf, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Supported services:", buf, 2u);
    v2 = qword_100BCE8D8;
  }

  for (i = *(a1 + 192); i != a1 + 184; i = *(i + 8))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(i + 16) + 32);
      v4 = sub_1005948F8(&v9);
      *buf = 136446210;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
      v2 = qword_100BCE8D8;
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Services pending stop:", buf, 2u);
  }

  v5 = a1 + 608;
  v6 = *(a1 + 616);
  if (v6 != a1 + 608)
  {
    v7 = qword_100BCE8D8;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(v6 + 16) + 32);
        v8 = sub_1005948F8(&v9);
        *buf = 136446210;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        v7 = qword_100BCE8D8;
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }
}

uint64_t sub_100598044(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_10009C530(&v6, a1 + 184);
  sub_10000801C(v9);
  for (i = v7; i != &v6; i = *(i + 8))
  {
    (*(**(i + 16) + 40))(*(i + 16), a2);
  }

  sub_100028EB4(&v6);
  return sub_1000088CC(v9);
}

void sub_1005980F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100598120(uint64_t a1, char *a2, _WORD *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  *&__len[1] = 0;
  v12 = 0;
  v13 = 0;
  sub_10009C530(&__len[1], a1 + 184);
  sub_10000801C(v14);
  *a3 = 0;
  v6 = v12;
  if (v12 == &__len[1])
  {
    goto LABEL_9;
  }

  while (1)
  {
    memset(v23, 0, sizeof(v23));
    __len[0] = 0;
    (*(**(v6 + 2) + 200))(*(v6 + 2), v23, __len);
    v7 = __len[0];
    if (__len[0])
    {
      break;
    }

LABEL_5:
    v6 = *(v6 + 1);
    if (v6 == &__len[1])
    {
      goto LABEL_9;
    }
  }

  v8 = *a3;
  if (v8 + __len[0] <= 8)
  {
    memmove(&a2[*a3], a2, __len[0]);
    *a3 += v7;
    goto LABEL_5;
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v8 + v7;
    v21 = 2048;
    v22 = 8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "EIR data length: %d + data length: %d = %d > %lu", buf, 0x1Eu);
  }

LABEL_9:
  sub_100028EB4(&__len[1]);
  sub_1000088CC(v14);
  return 1;
}

void sub_100598304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100598334()
{
  v0 = sub_10000C798();
  if (!(*(*v0 + 56))(v0, 2048))
  {
    return 1;
  }

  if (qword_100B54970 != -1)
  {
    sub_1008474F4();
  }

  v1 = *(*off_100B54968 + 240);

  return v1();
}

uint64_t sub_1005983D4(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847508(a2, v6);
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  v7 = sub_10053066C(off_100B50F60, a2);
  if (a3 && v7 && *v7 == 3)
  {
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530C74(off_100B50F60, a2, a3);
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed device tracking for fast connect after SDP", v10, 2u);
    }
  }

  sub_100590978(a1, a2, 0, 0, 11, a3, 0);
  return sub_100591550(a1, a2);
}

uint64_t sub_100598508(uint64_t a1)
{
  *(*(a1 + 32) + 114) = 1;
  v31 = 0;
  v32 = 0;
  sub_1000C2364(*(a1 + 40), &v32 + 1, &v32, &v31 + 1, &v31);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_100008760(&v16);
  v2 = sub_100007774(&v16);
  std::to_string(&v15, v32);
  v3 = sub_100007774(v2);
  v4 = sub_100007774(v3);
  std::to_string(&__p, HIDWORD(v31));
  sub_100007774(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v5 = sub_10000F034();
  (*(*v5 + 824))(v5, 0, v32, HIDWORD(v31));
  v6 = sub_10000E92C();
  if ((*(*v6 + 8))(v6))
  {
    if (qword_100B53FE8 != -1)
    {
      sub_1008475BC();
    }

    v7 = qword_100B53FE0;
    sub_100007E30(&v15, "Service Manager Stall");
    std::stringbuf::str();
    sub_1005780BC(v7, &v15.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, 0.0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (qword_100B53FE8 != -1)
    {
      sub_1008475BC();
    }

    sub_100578CA8(qword_100B53FE0, 3);
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 40), &v15);
      v10 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
      v11 = v15.__r_.__value_.__r.__words[0];
      std::stringbuf::str();
      v12 = &v15;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      v34 = v12;
      v35 = 2080;
      v36 = p_p;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Service Manager Stalled due to %{public}s. Triggering ABC for %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100598924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005989B8(unint64_t *a1)
{
  result = sub_100598A60(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

BOOL sub_100598A60(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100846DF0();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_10059926C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005992C4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005992C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_100362AB0(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  v13 = 32 * v2 + 32;
  sub_1005993F8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1005993C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005993F8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 24) = *(v5 + 24);
      v5 += 32;
      v6 += 32;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10059947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3 || a4 != *(result + 8))
    {
      result += 32;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 32; i != a2; i += 32)
      {
        if (*i != a3 || a4 != *(i + 8))
        {
          v7 = *(i + 8);
          *result = *i;
          *(result + 8) = v7;
          *(result + 16) = *(i + 16);
          *(result + 24) = *(i + 24);
          result += 32;
        }
      }
    }
  }

  return result;
}

void sub_100599B48()
{
  v0 = objc_autoreleasePoolPush();
  sub_100007E30(v2, "com.apple.springboard");
  sub_100007E30(v3, "com.apple.Preferences");
  sub_100007E30(v4, "com.apple.preferences");
  sub_100007E30(v5, "com.apple.figEndpoint");
  sub_100007E30(v6, "SFBluetoothPairingSession");
  sub_100007E30(v7, "com.apple.NanoSettings");
  sub_100007E30(v8, "com.apple.NanoMusic");
  sub_1000C1030(&qword_100BCE6F0, v2, 7);
  for (i = 0; i != -168; i -= 24)
  {
    if (v8[i + 23] < 0)
    {
      operator delete(*&v8[i]);
    }
  }

  __cxa_atexit(sub_10058E5F0, &qword_100BCE6F0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100599CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = (v11 + 167);
  v14 = -168;
  v15 = v13;
  while (1)
  {
    v16 = *v15;
    v15 -= 24;
    if (v16 < 0)
    {
      operator delete(*(v13 - 23));
    }

    v13 = v15;
    v14 += 24;
    if (!v14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_100599D10(uint64_t a1)
{
  *a1 = off_100AFEA48;
  *(a1 + 8) = &off_100AFEAE0;
  *(a1 + 16) = off_100AFEAF8;
  *(a1 + 24) = &off_100AFEB28;
  *(a1 + 32) = &off_100AFEB40;
  *(a1 + 40) = &off_100AFEB58;
  *(a1 + 48) = off_100AFEB70;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_100044BBC(a1 + 160);
  *(a1 + 231) = 0;
  *(a1 + 234) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  sub_100044BBC(a1 + 240);
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 384) = 0xFFFF;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  sub_100044BBC(a1 + 424);
  *(a1 + 496) = 0;
  sub_100044BBC(a1 + 504);
  *(a1 + 572) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 576) = a1 + 584;
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  *(a1 + 235) = sub_1005BC880() != 0.0;
  return a1;
}

void sub_100599EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v3;
  sub_1005AC6F0(v2 + 576, *v6);
  sub_10007A068(v2 + 504);

  sub_10007A068(v2 + 424);
  if (*(v2 + 415) < 0)
  {
    operator delete(*(v2 + 392));
  }

  if (*(v2 + 335) < 0)
  {
    operator delete(*(v2 + 312));
  }

  sub_10007A068(v2 + 240);
  sub_10007A068(v2 + 160);
  v8 = *v5;
  if (*v5)
  {
    *(v2 + 144) = v8;
    operator delete(v8);
  }

  sub_1005AAD6C(va);
  v9 = *v4;
  if (*v4)
  {
    *(v2 + 80) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100599FAC(uint64_t a1)
{
  *(a1 + 416) = 0;
  *(a1 + 416) = sub_10059A02C(a1);
  *(a1 + 488) = 0;
  *(a1 + 488) = sub_10059A098(a1);
  *(a1 + 568) = 0;
  v2 = *sub_10000E92C();
  result = (*(v2 + 664))();
  *(a1 + 234) = result;
  return result;
}

uint64_t sub_10059A02C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  v2 = *(a1 + 416);
  if (!*(a1 + 416))
  {
    v2 = sub_1005A5EB0(a1);
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10059A098(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  v2 = *(a1 + 488);
  if (!*(a1 + 488))
  {
    v2 = sub_1005A5CD8(a1);
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10059A104()
{
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  return *(off_100B50908 + 210);
}

void sub_10059A13C()
{
  if (qword_100B6F0E8 != -1)
  {
    sub_1008475F8();
  }
}

void sub_10059A168(id a1)
{
  if (sub_10009B9DC() == 7)
  {
    v1 = sub_100184828(sub_10059A4B4, sub_10059A650, sub_10059A8B8);
    v2 = sub_10000E92C();
    v3 = v2;
    if ((v1 & 1) == 0)
    {
      sub_100007E30(v16, "StackManager::initTransport");
      sub_100693260(v3, 3713, v16, 1);
    }

    (*(*v2 + 496))(v2, 0);
    if ((sub_100184A44(sub_10059A974) & 1) == 0)
    {
      v4 = sub_10000E92C();
      sub_100007E30(v15, "StackManager::initTransport");
      sub_100693260(v4, 3714, v15, 1);
    }
  }

  else
  {
    if (sub_10009B9DC() == 8)
    {
      if ((sub_1001863E4(sub_10059A4B4, sub_10059A650) & 1) == 0)
      {
        v9 = sub_10000E92C();
        sub_100007E30(v14, "StackManager::initTransport");
        sub_100693260(v9, 3713, v14, 1);
      }

      v5 = sub_100186790(sub_10059A974);
      v6 = sub_10000E92C();
      if ((v5 & 1) == 0)
      {
        sub_100007E30(v13, "StackManager::initTransport");
        sub_100693260(v6, 3714, v13, 1);
      }
    }

    else
    {
      if (sub_10009B9DC() != 9)
      {
        return;
      }

      if ((sub_1001A5DEC(sub_10059AA94, sub_10059A104) & 1) == 0)
      {
        v10 = sub_10000E92C();
        sub_100007E30(v12, "StackManager::initTransport");
        sub_100693260(v10, 3713, v12, 1);
      }

      v7 = sub_1001A61FC(sub_10059A974);
      v6 = sub_10000E92C();
      if ((v7 & 1) == 0)
      {
        sub_100007E30(v11, "StackManager::initTransport");
        sub_100693260(v6, 3714, v11, 1);
      }
    }

    v8 = *(*v6 + 496);

    v8(v6, 0);
  }
}

void sub_10059A430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A4B4(char *__s2, int a2)
{
  if (__s2)
  {
    v4 = 13;
    v5 = 1219;
    if (strncmp("Driver Error", __s2, 0xDuLL))
    {
      v6 = strncmp("Driver Terminated", __s2, 0x12uLL);
      if (v6)
      {
        v4 = 8;
      }

      else
      {
        v4 = 25;
      }

      if (v6)
      {
        v5 = 1214;
      }

      else
      {
        v5 = 1219;
      }
    }
  }

  else
  {
    v5 = 1214;
    v4 = 8;
  }

  if (a2)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10084760C();
    }

    v8 = off_100B50A98;
    sub_100007E30(&v11, __s2);
    sub_100007E30(__p, "");
    sub_1005A24D4(v8, v5, &v11, 1, v4, 0, __p);
  }

  if (sub_10000F034())
  {
    v7 = sub_10000F034();
    sub_100007E30(__p, __s2);
    (*(*v7 + 112))(v7, 9, 0, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10059A608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A650(char *a1, _BYTE *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100847620();
  }

  v4 = sub_10000EE78(off_100B512C0);
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_10084765C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100847634();
    }

    sub_1005A2A5C(v8, 10, 0, a1);
    sub_10022DE3C();
    v9 = sub_10000E92C();
    sub_100007E30(v11, "StackManager::chipResettingCb");
    sub_100693260(v9, 632, v11, 1);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "non-";
    if (v4 == 1)
    {
      v6 = "";
    }

    *buf = 67109378;
    v13 = v4;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Controller is resetting in power state %d, treating as %sfatal", buf, 0x12u);
  }

  if (v4 == 1)
  {
    *a2 = 1;
    if (qword_100B50AA0 != -1)
    {
      sub_100847634();
    }

    v7 = off_100B50A98;
    sub_100007E30(&v10, a1);
    sub_100007E30(buf, "");
    sub_1005A24D4(v7, 1214, &v10, 1, 10, 0, buf);
  }
}

void sub_10059A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A8B8(int a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = a1;
    v6 = 2048;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "driverMetricsCb: type %u arg %llu", v5, 0x12u);
  }
}

void sub_10059A974(uint64_t *a1)
{
  if (qword_100B6F5F8 != -1)
  {
    sub_1008476DC();
  }

  if (byte_100B6F600 == 1)
  {
    sub_1000040DC();
  }

  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (v2)
  {
    v5 = sub_100017F4C();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005A6CA4;
    v8[3] = &unk_100AEC130;
    v8[4] = v3;
    v8[5] = v2;
    v8[6] = v4;
    sub_10000CA94(v5, v8);
  }

  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A6D4C;
  v7[3] = &unk_100AEC130;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;
  sub_10000CA94(v6, v7);
}

void sub_10059AA94(char *a1, int a2, int a3, int a4)
{
  if (qword_100B54220 != -1)
  {
    sub_1008476F0();
  }

  v8 = qword_100B54218;
  v9 = [NSString stringWithUTF8String:a1];
  sub_1003C8DC4(v8, v9);

  if (a2)
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    if (qword_100B512D8 != -1)
    {
      sub_10084778C();
    }

    if ((*(off_100B512D0 + 32) & 1) == 0)
    {
LABEL_18:
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      v12 = off_100B50A98;
      sub_100007E30(&v15, a1);
      sub_100007E30(__p, "");
      sub_1005A24D4(v12, 1214, &v15, 1, 8, 0, __p);
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10084760C();
    }

    sub_1005A2A5C(v10, 8, 0, a1);
  }

  else
  {
    if (sub_10000F034())
    {
      v11 = sub_10000F034();
      sub_100007E30(__p, a1);
      (*(*v11 + 112))(v11, 9, 0, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847704();
      }

      exit(0);
    }
  }
}

void sub_10059AC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059ACE4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    if (v7 > 3)
    {
      v8 = "Unknown State";
    }

    else
    {
      v8 = off_100AFF040[v7];
    }

    v9 = "StackStopped";
    if (*(a1 + 60))
    {
      v10 = "StackStarted";
    }

    else
    {
      v10 = "StackStopped";
    }

    if (a2 > 3)
    {
      v11 = "Unknown State";
    }

    else
    {
      v11 = off_100AFF040[a2];
    }

    if (a3)
    {
      v9 = "StackStarted";
    }

    v14 = 136446978;
    v15 = v8;
    v16 = 2082;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    v20 = 2082;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stack: %{public}s/%{public}s -> %{public}s/%{public}s", &v14, 0x2Au);
  }

  *(a1 + 56) = a2;
  if (a2 == 1)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 60) = v12;
  return 0;
}

_BYTE *sub_10059AE28()
{
  if (qword_100B508F0 != -1)
  {
    sub_1008477A0();
  }

  sub_10056E398(off_100B508E8);
  if (qword_100B508D0 != -1)
  {
    sub_1008477B4();
  }

  sub_1007984B8(off_100B508C8);
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    v3 = 0;
    sub_1000216B4(&v3);
    sub_10019919C();
    v0 = sub_100017E6C();
    (*(*v0 + 64))(v0);
    return sub_10002249C(&v3);
  }

  else
  {
    sub_10019919C();
    v2 = *(*sub_100017E6C() + 64);

    return v2();
  }
}

uint64_t sub_10059AF5C(uint64_t a1)
{
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "Oct 23 2025";
    *&buf[12] = 2082;
    *v161 = "06:55:44";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting bluetooth core stack (BUILD %{public}s %{public}s)", buf, 0x16u);
  }

  v159[0] = 0;
  v159[1] = 0;
  sub_100007F88(v159, a1 + 240);
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  if (*(a1 + 335) < 0)
  {
    **(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 335) = 0;
  }

  *(a1 + 572) = 0;
  sub_10000801C(v159);
  __p[0] = 0;
  __p[1] = 0;
  v158 = 0;
  v2 = sub_100017E6C();
  sub_1004F0F04(v2 + 224, a1 + 8);
  v3 = sub_100017E6C();
  if (!(*(*v3 + 24))(v3, __p))
  {
    if (v158 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    strlcpy("iOS", v4, 0x82uLL);
  }

  v5 = sub_10000C798();
  if ((*(*v5 + 56))(v5, 256))
  {
    v6 = sub_100017E6C();
    sub_1005AAE0C(v6 + 264, a1 + 24);
  }

  v7 = sub_10000C798();
  if ((*(*v7 + 56))(v7, 0x40000))
  {
    v8 = sub_100017E6C();
    sub_1005AB0AC(v8 + 704, a1 + 40);
  }

  v156 = sub_10059D068;
  sub_10022DED8(&v156, a1);
  v155 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v165, "force1M");
  v10 = (*(*v9 + 72))(v9, buf, v165, &v155);
  v11 = v155;
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  v12 = v10 & v11;
  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v139 = v12;
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008477C8();
    }

    sub_10024E3FC();
  }

  v154 = 0;
  v13 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v165, "enableLELRInSetDefaultPhy");
  v14 = (*(*v13 + 72))(v13, buf, v165, &v154);
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v14)
    {
      goto LABEL_32;
    }
  }

  else if (!v14)
  {
    goto LABEL_32;
  }

  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v154;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "LELR for testing enableLELR=%d", buf, 8u);
  }

  v139 = 1;
LABEL_32:
  sub_10024E418(v154);
  v153 = 0;
  v16 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v165, "disableConnUpdateWAR");
  v17 = (*(*v16 + 72))(v16, buf, v165, &v153);
  v18 = v153;
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  v19 = v17 & v18;
  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_41;
    }
  }

  else if (!v19)
  {
    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847804();
  }

  v139 = 1;
LABEL_41:
  v152 = 0;
  v20 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v165, "disableWriteCODWAR");
  v21 = (*(*v20 + 72))(v20, buf, v165, &v152);
  v22 = v152;
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  v23 = v21 & v22;
  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_50;
    }
  }

  else if (!v23)
  {
    goto LABEL_50;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847840();
  }

  v139 = 1;
LABEL_50:
  v24 = sub_10000E92C();
  v25 = (*(*v24 + 664))(v24);
  *(a1 + 234) = v25;
  if ((v25 & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084787C();
  }

  v151 = 0;
  v26 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v165, "disableClassicSecureConnections");
  v27 = (*(*v26 + 72))(v26, buf, v165, &v151);
  v28 = v151;
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  v29 = v27 & v28;
  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else if (!v29)
  {
    goto LABEL_62;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008478B8();
  }

  v139 = 1;
LABEL_62:
  sub_1002FD248(v151);
  sub_100257948(sub_10059D104);
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 < 0x177u || *(sub_10000C7D0() + 800) >= 0xFA0u && *(sub_10000C7D0() + 800) >> 3 <= 0x270u)
  {
    sub_100257954(sub_10059D1A0);
  }

  v30 = sub_10000C7D0();
  if (sub_1004106D0(v30, 0xBB8u))
  {
    sub_100257954(sub_10059D1A0);
  }

  v31 = sub_10000C798();
  v138 = (*(*v31 + 600))(v31);
  v32 = sub_10000C798();
  v140 = (*(*v32 + 520))(v32);
  v33 = sub_10000C798();
  v34 = (*(*v33 + 608))(v33);
  v35 = sub_10000C798();
  v36 = (*(*v35 + 616))(v35);
  v37 = sub_10000C798();
  v137 = (*(*v37 + 624))(v37);
  v38 = sub_10000C798();
  v136 = (*(*v38 + 632))(v38);
  v39 = sub_10000C798();
  v40 = (*(*v39 + 648))(v39);
  v41 = sub_10000C798();
  v42 = (*(*v41 + 656))(v41);
  v43 = sub_10000C798();
  v44 = (*(*v43 + 680))(v43);
  v45 = sub_10000C798();
  v46 = (*(*v45 + 720))(v45);
  v47 = sub_10000C798();
  v48 = (*(*v47 + 688))(v47);
  v49 = sub_10000C798();
  v50 = (*(*v49 + 528))(v49);
  v134 = v48;
  v135 = v44;
  v51 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v50;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodicAdvertisingAdv=%d", buf, 8u);
  }

  v52 = sub_10000C798();
  v53 = (*(*v52 + 536))(v52);
  v133 = v50;
  v54 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodicAdvertisingSync=%d", buf, 8u);
  }

  v55 = sub_10000C798();
  v56 = (*(*v55 + 544))(v55);
  v57 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v56;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodidAdvSyncTranSender=%d", buf, 8u);
  }

  v58 = sub_10000C798();
  v59 = (*(*v58 + 552))(v58);
  v60 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v59;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodidAdvSyncTranRecipient=%d", buf, 8u);
  }

  v61 = sub_10000C798();
  v62 = (*(*v61 + 792))(v61);
  v63 = sub_10000C798();
  v64 = (*(*v63 + 800))(v63);
  v65 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "enable ABC logs for Magnet Timer: %d", buf, 8u);
  }

  if (qword_100B512C8 != -1)
  {
    sub_1008478F4();
  }

  sub_10057BA7C(off_100B512C0, v64);
  if (v140)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084791C();
    }

    v138 = 1;
  }

  v66 = v34;
  v67 = sub_10000C7D0();
  v68 = (*(*v67 + 3208))(v67);
  v69 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v70 = "does not support";
    if (v68)
    {
      v70 = "supports";
    }

    *buf = 136315138;
    *&buf[4] = v70;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "This platform %s address rotation while scanning or connecting", buf, 0xCu);
    v69 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v71 = "does not support";
    if (v62)
    {
      v71 = "supports";
    }

    *buf = 136315138;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "This platform %s rssi connection statistics and detection", buf, 0xCu);
  }

  v72 = sub_10000C798();
  v73 = (*(*v72 + 872))(v72);
  sub_1002B2C0C(v140);
  sub_1002B2C00(v138);
  sub_1002C3D80(v36);
  sub_1002C3D8C(v137);
  v74 = v42 | v34;
  sub_1002D9D00((v42 | v66) & 1);
  sub_1002D9D58(v136);
  sub_1002D9D64(v40);
  sub_1002D9D70(v42);
  sub_1002D9D84(v135);
  sub_1002D9D90(v134);
  v75 = sub_10000C7D0();
  v76 = (*(*v75 + 3912))(v75);
  v77 = v76;
  sub_1002B2C28(v76);
  nullsub_21(v46);
  sub_1002D9E40(v46);
  nullsub_21(v46);
  sub_1002D2D3C(v68);
  sub_1002B4218(v133);
  sub_1001B8B64(v53);
  v78 = sub_10000C7D0();
  v79 = (*(*v78 + 4104))(v78);
  v80 = sub_10000C7D0();
  v81 = (*(*v80 + 4096))(v80);
  sub_1002C4048(v81, v79);
  sub_1002D9D9C(v73);
  v82 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    *&buf[4] = v138;
    *&buf[8] = 1024;
    *&buf[10] = v140;
    *v161 = 1024;
    *&v161[2] = v74 & 1;
    *&v161[6] = 1024;
    *&v161[8] = v136;
    *&v161[12] = 1024;
    v162 = v77;
    v163 = 1024;
    v164 = v137;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "enableBTSpecAdvertisingSets=%d enableExtendedAdvertising=%d enableExtendedScanning=%d enableExtendedScanHCI=%d maxAdvHandles=%d enableEnhancedConnectionsV2=%d", buf, 0x26u);
  }

  v83 = sub_10000C7D0();
  if ((*(*v83 + 3264))(v83))
  {
    v84 = 16;
  }

  else
  {
    v84 = 8;
  }

  sub_1002D3628(v84);
  if (*(sub_10000C7D0() + 800))
  {
    v85 = sub_10000C7D0();
    if (sub_100413098(v85))
    {
      goto LABEL_118;
    }
  }

  if (*(sub_10000C7D0() + 800) == 6000)
  {
    v86 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "initCoreStack";
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%s: register BTVirtualController callbacks", buf, 0xCu);
    }

    if (qword_100B54A88 != -1)
    {
      sub_100847958();
    }

    sub_1007F2384();
  }

  if ((*(sub_10000C7D0() + 800) >> 3 < 0x271u || *(sub_10000C7D0() + 800) >> 4 >= 0x177u) && (*(sub_10000C7D0() + 800) < 0xFA0u || *(sub_10000C7D0() + 800) >> 3 >= 0x271u) && (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u))
  {
    v87 = sub_1001B2A50(1, sub_10059D22C, 0);
  }

  else
  {
    v87 = sub_1001B2A50(1, sub_10059D22C, sub_10059D258);
  }

  if (v87)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847980();
    }

LABEL_118:
    v88 = 110;
    goto LABEL_211;
  }

  v150 = 0;
  v89 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v165, "overridePrivateAddressRotationInterval");
  v90 = (*(*v89 + 88))(v89, buf, v165, &v150);
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v90)
    {
      goto LABEL_128;
    }
  }

  else if (!v90)
  {
    goto LABEL_128;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008479F0();
  }

  sub_1002D2D1C(v150);
LABEL_128:
  v91 = sub_10000E92C();
  if (!(*(*v91 + 8))(v91))
  {
    goto LABEL_150;
  }

  v146 = 0;
  v92 = sub_10000E92C();
  sub_100007E30(buf, "FastR1ScanInterval");
  sub_100007E30(v165, "interval");
  v93 = (*(*v92 + 88))(v92, buf, v165, &v146);
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v93)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  if (v93)
  {
LABEL_135:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F18(v146);
    sub_10002249C(buf);
  }

LABEL_136:
  v149 = 0;
  v94 = sub_10000E92C();
  sub_100007E30(buf, "FastR1ScanType");
  sub_100007E30(v165, "scanType");
  v95 = (*(*v94 + 88))(v94, buf, v165, &v149);
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v95)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v95)
  {
LABEL_142:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F24(v149);
    sub_10002249C(buf);
  }

LABEL_143:
  v148 = 0;
  v96 = sub_10000E92C();
  sub_100007E30(buf, "MediumR1ScanInterval");
  sub_100007E30(v165, "interval");
  v97 = (*(*v96 + 88))(v96, buf, v165, &v148);
  if (v168 < 0)
  {
    operator delete(*v165);
  }

  if ((v161[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v97)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  if (v97)
  {
LABEL_149:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F30(v148);
    sub_10002249C(buf);
  }

LABEL_150:
  dword_100BCE7A8 = 0;
  byte_100BCE7AD = 0;
  v147 = 0;
  v146 = 0;
  LOBYTE(v149) = 0;
  sub_1000216B4(&v149);
  v98 = sub_100243324(&v146);
  sub_100022214(&v149);
  if (v98)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847A68();
    }

    sub_10059D2E4(a1);
  }

  else
  {
    sub_1000618AC(&v149);
    v99 = sub_10000C798();
    v100 = (*(*v99 + 192))(v99);
    sub_100191DC0(v100);
    sub_100022214(&v149);
    sub_100007FB8(v159);
    v101 = (a1 + 312);
    *(a1 + 304) = v146;
    *(a1 + 308) = v147;
    std::string::assign((a1 + 312), "iOS");
    v102 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v103 = (a1 + 312);
      if (*(a1 + 335) < 0)
      {
        v103 = *v101;
      }

      *buf = 136315650;
      *&buf[4] = v103;
      *&buf[12] = 1040;
      *v161 = 6;
      *&v161[4] = 2096;
      *&v161[6] = a1 + 304;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "statedump: Local device is %s (%{bluetooth:BD_ADDR}.6P)", buf, 0x1Cu);
    }

    v104 = qword_100BCE9D8;
    if (os_log_type_enabled(qword_100BCE9D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 335) < 0)
      {
        v101 = *v101;
      }

      sub_1000BE6F8((a1 + 304), buf);
      if (v161[9] >= 0)
      {
        v105 = buf;
      }

      else
      {
        v105 = *buf;
      }

      *v165 = 136315394;
      *&v165[4] = v101;
      v166 = 2080;
      v167 = v105;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Init Core Stack - {localname: %s, local-addr: %s}", v165, 0x16u);
      if ((v161[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_10000801C(v159);
    sub_1000618AC(&v149);
    sub_10000C7D0();
    sub_100413208();
    if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu)
    {
      sub_10000C7D0();
      sub_100413134();
    }

    v106 = *(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) < 0x7D0u;
    sub_1002582A8(v106);
    sub_100022214(&v149);
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 336) = sub_10009BB08();
    *(a1 + 338) = sub_10009BAE4();
    *(a1 + 340) = sub_1004BF974();
    *(a1 + 342) = 1;
    *(a1 + 344) = sub_10000C240();
    *(a1 + 360) = 0;
    *(a1 + 368) = aPnpInformation;
    *(a1 + 376) = 0;
    *(a1 + 348) = 10495684;
    *(a1 + 346) = 1;
    *(a1 + 352) = 0x7D0C0D00000000;
    sub_1000618AC(&v149);
    v107 = sub_10009BB08();
    v108 = getpid();
    v109 = sub_1004BF974();
    v110 = sub_10000C7D0();
    sub_100199494(v107, v108, v109, *(v110 + 800));
    v111 = sub_10000C798();
    v112 = (*(*v111 + 80))(v111);
    sub_100199844(v112);
    sub_100022214(&v149);
    LOBYTE(v148) = 0;
    v145 = 0;
    v113 = sub_10000E92C();
    if ((*(*v113 + 8))(v113))
    {
      v114 = sub_10000E92C();
      sub_100007E30(buf, "FastConnect");
      sub_100007E30(v165, "DisableFastConnect");
      (*(*v114 + 72))(v114, buf, v165, &v148);
      if (v168 < 0)
      {
        operator delete(*v165);
      }

      if ((v161[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v115 = sub_10000E92C();
      sub_100007E30(buf, "FastConnect");
      sub_100007E30(v165, "DisableFastConnectAll");
      (*(*v115 + 72))(v115, buf, v165, &v145);
      if (v168 < 0)
      {
        operator delete(*v165);
      }

      if ((v161[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v148 == 1)
      {
        *(a1 + 348) &= ~0x200000u;
      }

      if (v145 == 1)
      {
        *(a1 + 356) &= ~0x40000u;
      }
    }

    v116 = sub_10000C798();
    if (((*(*v116 + 840))(v116, 11) & 1) == 0)
    {
      *(a1 + 356) &= ~0x800u;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      *(a1 + 356) &= ~0x400u;
    }

    v117 = sub_10000C7D0();
    if ((sub_1000E01B4(v117, 1u) & 1) == 0)
    {
      *(a1 + 356) &= ~0x10000u;
    }

    sub_10000C7D0();
    if (sub_1004107F0())
    {
      *(a1 + 356) |= 0x20000u;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      *(a1 + 356) &= ~0x80000u;
    }

    v118 = sub_10000C798();
    if (((*(*v118 + 248))(v118) & 1) == 0)
    {
      *(a1 + 356) &= ~0x100000u;
    }

    v119 = sub_10000C7D0();
    if (((*(*v119 + 2888))(v119) & 1) == 0)
    {
      *(a1 + 356) &= ~0x200000u;
    }

    v120 = sub_10000C7D0();
    if (((*(*v120 + 2912))(v120) & 1) == 0)
    {
      *(a1 + 356) &= ~0x400000u;
    }

    sub_1000618AC(&v149);
    v121 = sub_1002418C0(sub_10059D4E0, 0);
    sub_100022214(&v149);
    if (v121)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847AD8();
      }
    }

    else
    {
      sub_1000618AC(&v149);
      v122 = sub_1002418D0(nullsub_411, 0);
      sub_100022214(&v149);
      if (v122)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847B48();
        }
      }

      else
      {
        sub_1000618AC(&v149);
        v124 = sub_1002418E0(sub_10059D568, 0);
        sub_100022214(&v149);
        if (v124 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847BB8();
        }

        if (*(sub_10000C7D0() + 800) >= 0xFA0u && *(sub_10000C7D0() + 800) >> 3 <= 0x270u)
        {
          *(a1 + 352) = 0;
        }

        sub_1000618AC(&v149);
        v125 = sub_10020E384((a1 + 336), &dword_100B6F0F0);
        sub_1001C4E28(sub_10059AE28);
        sub_100022214(&v149);
        if (!v125)
        {
          v144 = 0;
          v143 = 0;
          v126 = sub_100017E6C();
          (*(*v126 + 32))(v126, &v144, &v143 + 1, &v143);
          if (v144 == 1)
          {
            sub_1000618AC(&v149);
            sub_100247BB4(HIBYTE(v143) != 0);
            sub_100022214(&v149);
          }

          v127 = sub_10000E92C();
          if ((*(*v127 + 8))(v127))
          {
            v142 = 0;
            v128 = sub_10000E92C();
            sub_100007E30(buf, "Stack");
            sub_100007E30(v165, "IOTDataCollection");
            (*(*v128 + 72))(v128, buf, v165, &v142);
            if (v168 < 0)
            {
              operator delete(*v165);
            }

            if ((v161[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v142 == 1)
            {
              sub_1000618AC(&v149);
              nullsub_21(v142);
              sub_100022214(&v149);
            }
          }

          v129 = sub_10000E92C();
          sub_100007E30(buf, "Stack");
          sub_100007E30(v165, "PacketAggregation");
          v130 = (*(*v129 + 72))(v129, buf, v165, &v144);
          if (v168 < 0)
          {
            operator delete(*v165);
          }

          if ((v161[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v130)
          {
            sub_10029722C(v144);
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100847C98();
            }
          }

          sub_10059D64C();
          v131 = sub_10000C7D0();
          v132 = (*(*v131 + 4352))(v131);
          sub_100301928(v132);
          sub_100007FB8(v159);
          v88 = 0;
          *(a1 + 572) = v139;
          goto LABEL_210;
        }

        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847C28();
        }
      }
    }

    sub_10059D2E4(a1);
  }

  v88 = 110;
LABEL_210:
  sub_10002249C(&v149);
LABEL_211:
  if (SHIBYTE(v158) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000088CC(v159);
  return v88;
}

void sub_10059CE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_10059D068(void *a1)
{
  off_100B6F618 = a1;
  xmmword_100B6F620 = xmmword_1008AA568;
  *(&xmmword_100B6F620 + 14) = 0x101020100000000;
  v1 = sub_100243354(sub_1005ABA54, &xmmword_100B6F620);
  if (v1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847D24();
    }

    off_100B6F618 = 0;
  }

  return v1;
}

void sub_10059D104(int a1, __int16 a2, char a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A4B80;
  block[3] = &unk_100AFEBE0;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  dispatch_async(global_queue, block);
}

void sub_10059D1A0(int a1, __int16 a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A4DC8;
  block[3] = &unk_100AE0ED8;
  v6 = a1;
  v7 = a2;
  dispatch_async(global_queue, block);
}

void sub_10059D22C()
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }
}

void sub_10059D258(int a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005A2410;
  v5[3] = &unk_100ADF940;
  v6 = a1;
  v5[4] = a2;
  dispatch_async(global_queue, v5);
}

uint64_t sub_10059D2E4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Terminating core stack", buf, 2u);
  }

  *buf = 0;
  v11 = 0;
  sub_100007F88(buf, a1 + 240);
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  if (*(a1 + 335) < 0)
  {
    **(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 335) = 0;
  }

  sub_10000801C(buf);
  v9 = 0;
  sub_1000216B4(&v9);
  if (sub_10020EE54(dword_100B6F0F0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847D94();
  }

  sub_100022214(&v9);
  sub_1001B2ED8();
  dword_100BCE7A8 = 103;
  byte_100BCE7AD = 0;
  sub_10002286C(&stru_100BCE748);
  sub_10002286C(&stru_100BCE778);
  v3 = sub_10000C798();
  if ((*(*v3 + 56))(v3, 256))
  {
    v4 = sub_100017E6C();
    sub_1005AB34C(v4 + 264, a1 + 24);
  }

  v5 = sub_100017E6C();
  sub_1005AB424(v5 + 224, a1 + 8);
  v6 = sub_10000C798();
  if ((*(*v6 + 56))(v6, 0x40000))
  {
    v7 = sub_100017E6C();
    sub_1005AB4FC(v7 + 704, a1 + 40);
  }

  sub_10002249C(&v9);
  sub_1000088CC(buf);
  return 0;
}

void sub_10059D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10059D4E0(char a1)
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A7B50;
  block[3] = &unk_100AF3580;
  v4 = a1;
  dispatch_async(global_queue, block);
}

void sub_10059D568(int a1, unsigned __int8 *a2, char a3, __int16 a4, char a5, uint64_t a6)
{
  if (!a1)
  {
    if (a2)
    {
      v10 = (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5];
      v11 = sub_100017F4C();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1005A7B9C;
      v12[3] = &unk_100AEC130;
      v13 = 0;
      v15 = a3;
      v14 = a4;
      v16 = a5;
      v12[4] = v10;
      v12[5] = a6;
      sub_10000CA94(v11, v12);
    }
  }
}

uint64_t sub_10059D64C()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "enableLEPowerControl");
  v1 = (*(*v0 + 72))(v0, buf, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  else if (!v1)
  {
    goto LABEL_9;
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Power Control enableLEPowerControl=%d", buf, 8u);
  }

LABEL_9:
  if (sub_10023DE74())
  {
    if (v8)
    {
      goto LABEL_16;
    }

    *buf = *&byte_100BCDFFC;
    buf[4] = byte_100BCE000 & 0xF9;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_10023DD38(buf);
    sub_100022214(__p);
    goto LABEL_15;
  }

  if (v8)
  {
    v3 = sub_10000C7D0();
    if ((*(*v3 + 2672))(v3))
    {
      *buf = *&byte_100BCDFFC;
      buf[4] = byte_100BCE000 | 6;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_10023DD38(buf);
      sub_100022214(__p);
LABEL_15:
      sub_10002249C(__p);
    }
  }

LABEL_16:
  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v4 = off_100B50A98;
  *buf = 0;
  v10 = 0;
  sub_100007F88(buf, off_100B50A98 + 240);
  v4[572] = v1;
  return sub_1000088CC(buf);
}

uint64_t sub_10059D8D0(_BYTE *a1)
{
  v158 = 0;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting up StackManager", buf, 2u);
  }

  v157[0] = 0;
  v157[1] = 0;
  sub_100007F88(v157, (a1 + 160));
  v3 = *(a1 + 14);
  if (v3)
  {
    if (v3 == 2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10084800C();
      }

      v4 = 111;
    }

    else
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackManager is already running", buf, 2u);
      }

      v4 = 110;
    }

    goto LABEL_270;
  }

  sub_10059ACE4(a1, 2u, 0);
  a1[225] = 0;
  sub_10000801C(v157);
  v4 = sub_10059AF5C(a1);
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847E04();
    }

    sub_100007FB8(v157);
    sub_10059ACE4(a1, 0, 0);
    sub_10000801C(v157);
    goto LABEL_270;
  }

  v6 = sub_10000C7D0();
  sub_10041169C(v6);
  sub_1005A0250(a1);
  sub_100007FB8(v157);
  sub_10059ACE4(a1, 1u, 0);
  a1[224] = 0;
  *(a1 + 113) = 0;
  a1[228] = 0;
  a1[231] = 0;
  sub_10000801C(v157);
  if (a1[225] == 1)
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v143[0]) = 0;
    LOBYTE(v141[0]) = 0;
    v7 = sub_100017E6C();
    if (!(*(*v7 + 32))(v7, __p, v143, v141))
    {
      (*(*a1 + 72))(a1, LOBYTE(__p[0]), LOBYTE(v143[0]), LOBYTE(v141[0]));
    }

    memset(buf, 0, sizeof(buf));
    v160 = 0;
    v8 = sub_100017E6C();
    if (!(*(*v8 + 24))(v8, buf))
    {
      if (SHIBYTE(v160) < 0)
      {
        sub_100008904(&__dst, *buf, *&buf[8]);
      }

      else
      {
        __dst = *buf;
        v156 = v160;
      }

      (*(*a1 + 40))(a1, &__dst);
      if (SHIBYTE(v156) < 0)
      {
        operator delete(__dst);
      }
    }

    if (SHIBYTE(v160) < 0)
    {
      operator delete(*buf);
    }
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Done starting up stack", buf, 2u);
  }

  v10 = sub_10000C798();
  if ((*(*v10 + 440))(v10))
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100247BB4(1);
    sub_10002249C(buf);
  }

  v11 = sub_100017E6C();
  sub_1003128B0(v11 + 384, (a1 + 16));
  v12 = sub_10000C798();
  if ((*(*v12 + 112))(v12))
  {
    v13 = sub_100017E6C();
    sub_1005AB5D4(v13 + 584, (a1 + 32));
    buf[0] = 0;
    v14 = sub_100017E6C();
    if ((*(*v14 + 136))(v14, buf))
    {
      (*(*a1 + 80))(a1, buf[0]);
    }
  }

  v15 = sub_10000C798();
  if ((*(*v15 + 120))(v15))
  {
    v16 = sub_1000D999C();
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_1005A02CC;
    v154[3] = &unk_100ADF8F8;
    v154[4] = a1;
    sub_10000D334(v16, v154);
  }

  if (a1[235] == 1)
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    v17 = sub_1005BC880();
    v18 = sub_1005A0378(v17);
    if (v17 == 0.0 || (v19 = v18, +[NSDate timeIntervalSinceReferenceDate], v20 >= v19))
    {
      v22 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Disabling denylist on expiration", buf, 2u);
      }

      sub_1005A0484(a1, 0);
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Re-enabling the denylist mode", buf, 2u);
      }

      a1[235] = 1;
      sub_1005A0830(1, v19);
      if (qword_100B512F8 != -1)
      {
        sub_100847E68();
      }

      sub_1003B4134(off_100B512F0, a1[235]);
      sub_10002249C(__p);
    }
  }

  if (qword_100B6F0F8 != -1)
  {
    sub_100847E90();
  }

  v153 = 0;
  v152 = 0;
  v23 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "HDRForcePkt");
  v24 = (*(*v23 + 72))(v23, buf, __p, &v153);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_59;
    }
  }

  else if (!v24)
  {
    goto LABEL_59;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v25 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v26 = sub_100007F88(buf, off_100B50A98 + 240);
  v25[572] = 1;
  sub_1000088CC(v26);
LABEL_59:
  v27 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "HDRPktTypeMask");
  v28 = (*(*v27 + 128))(v27, buf, __p, &v152);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
    if (!v28)
    {
      goto LABEL_68;
    }
  }

  else if (!v28)
  {
    goto LABEL_68;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v29 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v30 = sub_100007F88(buf, off_100B50A98 + 240);
  v29[572] = 1;
  sub_1000088CC(v30);
LABEL_68:
  v149 = 1;
  v31 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "EnableHDR");
  v32 = (*(*v31 + 72))(v31, buf, __p, &v149);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
    if (!v32)
    {
      goto LABEL_77;
    }
  }

  else if (!v32)
  {
    goto LABEL_77;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v33 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v34 = sub_100007F88(buf, off_100B50A98 + 240);
  v33[572] = 1;
  sub_1000088CC(v34);
LABEL_77:
  v35 = sub_10000C7D0();
  (*(*v35 + 1336))(v35, v149, 1);
  v36 = sub_10000C7D0();
  if ((*(*v36 + 3016))(v36) && v149 == 1)
  {
    v37 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = 360;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Adjust sco hci buffer length bufferSize %d numBuffer %d", buf, 0xEu);
    }

    v38 = sub_10000C7D0();
    (*(*v38 + 1408))(v38, 1, 360, 1, 1);
  }

  v39 = sub_10000C7D0();
  (*(*v39 + 4224))(v39, 1);
  v40 = sub_10000C7D0();
  (*(*v40 + 3464))(v40, 20, 1, 1);
  v41 = sub_10000C7D0();
  (*(*v41 + 1344))(v41, 1);
  if (v153 == 1)
  {
    v42 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Forcing HDR packet type", buf, 2u);
    }

    sub_10023E7C0(1);
    sub_10023E7CC(v152);
  }

  if (a1[234] == 1)
  {
    if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu)
    {
      v43 = sub_10000C7D0();
      (*(*v43 + 1304))(v43, 1);
      if (*(sub_10000C7D0() + 800) >= 0xBB8u)
      {
        v44 = sub_10000C7D0();
        (*(*v44 + 2088))(v44, 1);
      }
    }

    if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
    {
      v45 = sub_10000C7D0();
      (*(*v45 + 1304))(v45, 1);
    }

    if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu)
    {
      if (*(sub_10000C7D0() + 800) < 0x13u)
      {
        v48 = sub_10000C7D0();
        if ((*(*v48 + 1304))(v48, 1))
        {
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_10024E230();
          sub_100022214(buf);
          sub_10002249C(buf);
        }
      }

      else
      {
        v46 = sub_10000C7D0();
        (*(*v46 + 1320))(v46, 1);
        v47 = sub_10000C7D0();
        (*(*v47 + 2088))(v47, 1);
      }
    }
  }

  if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu)
  {
    if (*(sub_10000C7D0() + 800) >= 0x13u)
    {
      v49 = sub_10000C7D0();
      (*(*v49 + 2032))(v49, 1);
    }

    v50 = sub_10000E92C();
    v51 = (*(*v50 + 8))(v50);
    v52 = sub_10000C7D0();
    (*(*v52 + 1040))(v52, v51);
  }

  v53 = sub_10000C7D0();
  if (!(*(*v53 + 2432))(v53))
  {
    v61 = sub_10000C7D0();
    if ((*(*v61 + 2424))(v61))
    {
      v62 = (*sub_10000C7D0() + 2040);
    }

    else
    {
      v62 = (*sub_10000C7D0() + 352);
    }

    (*v62)();
    goto LABEL_137;
  }

  LOBYTE(v147) = 0;
  LODWORD(v143[0]) = 0;
  LODWORD(v141[0]) = 1;
  v54 = sub_10000C798();
  if ((*(*v54 + 456))(v54))
  {
    v55 = 5;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceHandleEnable");
  (*(*v56 + 72))(v56, buf, __p, &v147);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v57 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceHandleValue");
  (*(*v57 + 128))(v57, buf, __p, v143);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v58 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceEnableFeatureSet");
  (*(*v58 + 128))(v58, buf, __p, v141);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  if (v147 == 1)
  {
    v59 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v141[0];
      *&buf[8] = 1024;
      *&buf[10] = v143[0];
      *&buf[14] = 1024;
      LODWORD(v160) = v143[0];
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Force PowerTagV2 %d:  %d (0x%04x)", buf, 0x14u);
    }

    v60 = v143[0];
    v55 = LODWORD(v141[0]);
    if ((v141[0] & 4) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_131;
  }

  v60 = 0;
  if ((v55 & 4) != 0)
  {
LABEL_131:
    v63 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "PowerTag V2 BTCLK is enable ", buf, 2u);
    }

    v64 = sub_10000C798();
    (*(*v64 + 920))(v64, 1);
  }

LABEL_134:
  v65 = sub_10000C7D0();
  v66 = (*(*v65 + 2064))(v65, v55, 1, v60);
  if (v66)
  {
    v67 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v66;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "PowerTag BTCLK V2 error configuring %d ", buf, 8u);
    }
  }

LABEL_137:
  if (*(sub_10000C7D0() + 800) == 15)
  {
    LODWORD(v143[0]) = 0;
    v68 = sub_10000E92C();
    sub_100007E30(buf, "CoEx");
    sub_100007E30(__p, "EnableDebugCounters");
    v69 = (*(*v68 + 128))(v68, buf, __p, v143);
    if (LODWORD(v143[0]))
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v151 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v160) < 0)
    {
      operator delete(*buf);
    }

    if (v70)
    {
      v71 = sub_10000C7D0();
      (*(*v71 + 1288))(v71, LOBYTE(v143[0]));
    }
  }

  v72 = sub_10000C7D0();
  if ((*(*v72 + 2440))(v72))
  {
    v73 = sub_10000C7D0();
    (*(*v73 + 2048))(v73, 1, 0);
  }

  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    v74 = sub_10000C7D0();
    (*(*v74 + 2032))(v74, 1);
  }

  if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu)
  {
    goto LABEL_172;
  }

  v75 = sub_10000E92C();
  sub_100007E30(buf, "fw");
  sub_100007E30(__p, "TraceMode");
  v76 = (*(*v75 + 88))(v75, buf, __p, &v158);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  if (v158 < 7)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  if (v77 == 1)
  {
    v78 = sub_10000C7D0();
    (*(*v78 + 1312))(v78, v158);
    v79 = sub_10000E92C();
    if (((*(*v79 + 8))(v79) & 1) == 0)
    {
      v80 = sub_10000E92C();
      v81 = v158 != 0;
LABEL_167:
      (*(*v80 + 512))(v80, v81);
    }
  }

  else
  {
    v82 = sub_10000E92C();
    if (!(*(*v82 + 8))(v82))
    {
      v84 = sub_10000C7D0();
      (*(*v84 + 1312))(v84, 0);
      v80 = sub_10000E92C();
      v81 = 0;
      goto LABEL_167;
    }

    v83 = sub_10000C7D0();
    (*(*v83 + 1312))(v83, 6);
  }

  v85 = sub_10000C7D0();
  if (sub_1004106D0(v85, 0xBB8u))
  {
    v86 = sub_10000C7D0();
    (*(*v86 + 2032))(v86, 1);
    v87 = sub_10000C7D0();
    if ((*(*v87 + 3928))(v87, 1))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847EB8();
      }
    }
  }

LABEL_172:
  v148 = 0;
  v88 = sub_10000E92C();
  sub_100007E30(buf, "hci");
  sub_100007E30(__p, "AssertOnFlowErrors");
  (*(*v88 + 72))(v88, buf, __p, &v148);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  if (v148 == 1)
  {
    sub_100259B84();
  }

  v89 = sub_10000C798();
  if ((*(*v89 + 344))(v89))
  {
    v90 = sub_10000C7D0();
    (*(*v90 + 1936))(v90, 1, 1);
  }

  LODWORD(v143[0]) = 124;
  LODWORD(v141[0]) = 2;
  v146 = 2;
  v147 = 10;
  v145 = 50;
  v91 = sub_10000C798();
  if ((*(*v91 + 720))(v91))
  {
    LODWORD(v141[0]) |= 4u;
  }

  v92 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AElengthAllowed");
  (*(*v92 + 128))(v92, buf, __p, v143);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v93 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEAuxPhyMask");
  (*(*v93 + 128))(v93, buf, __p, v141);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v94 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxAuxOffset");
  (*(*v94 + 128))(v94, buf, __p, &v147);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v95 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxChanins");
  (*(*v95 + 128))(v95, buf, __p, &v146);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v96 = sub_10000C7D0();
  (*(*v96 + 1000))(v96, 1, LOWORD(v143[0]), LOBYTE(v141[0]), v147, v146);
  v97 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxScanBuffers");
  (*(*v97 + 128))(v97, buf, __p, &v145);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v98 = sub_10000C7D0();
  (*(*v98 + 1008))(v98, 1, v145, 0);
  LODWORD(v143[0]) = 10;
  v99 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxAuxOffset");
  (*(*v99 + 128))(v99, buf, __p, v143);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  v100 = sub_10000C7D0();
  (*(*v100 + 1024))(v100, 1, LOWORD(v143[0]));
  sub_10000C7D0();
  v101 = sub_100410074();
  v102 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG);
  if (v101)
  {
    if (v102)
    {
      sub_100847F68();
    }

    v103 = sub_10000C7D0();
    *&v135[100] = 10000;
    *&v135[92] = 0x500000004;
    *&v135[84] = 0x300000002;
    *&v135[76] = 20;
    *&v135[68] = 0xF0000000ALL;
    *&v135[60] = 0x50000C350;
    *&v135[52] = 171798691870000;
    *&v135[44] = 0x3A9800000005;
    *&v135[36] = 0x400000003;
    *&v135[28] = 0x200000000;
    *&v135[20] = 0x3200000028;
    *&v135[12] = 0x140000000ALL;
    *&v135[4] = 0x5A00000050;
    *v135 = 60;
    (*(*v103 + 4024))(v103, 0, 29, 29, 29, 29, 0, 0, 1929379840, 0, *v135, *&v135[8], *&v135[16], *&v135[24], *&v135[32], *&v135[40], *&v135[48], *&v135[56], *&v135[64], *&v135[72], *&v135[80], *&v135[88], *&v135[96], 115);
    v104 = sub_10000C7D0();
    LOBYTE(v136) = 115;
    *&v130[108] = 10000;
    *&v130[100] = 0x500000004;
    *&v130[92] = 0x300000002;
    *&v130[84] = 20;
    *&v130[76] = 0xF0000000ALL;
    *&v130[68] = 0x50000C350;
    *&v130[60] = 171798691870000;
    *&v130[52] = 0x3A9800000005;
    *&v130[44] = 0x400000003;
    *&v130[36] = 0x200000000;
    *&v130[28] = 0x3200000028;
    *&v130[20] = 0x140000000ALL;
    *&v130[12] = 0x5A00000050;
    *&v130[4] = 0x3C00000032;
    v130[0] = 0;
    (*(*v104 + 4024))(v104, 1, 29, 49, 75, 149, 1, 1, 0x101000073000001, *v130, *&v130[8], *&v130[16], *&v130[24], *&v130[32], *&v130[40], *&v130[48], *&v130[56], *&v130[64], *&v130[72], *&v130[80], *&v130[88], *&v130[96], *&v130[104], v136);
    v105 = sub_10000C7D0();
    LOBYTE(v137) = -123;
    *&v131[108] = 10000;
    *&v131[100] = 0x500000004;
    *&v131[92] = 0x300000002;
    *&v131[84] = 20;
    *&v131[76] = 0xF0000000ALL;
    *&v131[68] = 0x50000C350;
    *&v131[60] = 171798691870000;
    *&v131[52] = 0x3A9800000005;
    *&v131[44] = 0x400000003;
    *&v131[36] = 0x200000000;
    *&v131[28] = 0x1E00000014;
    *&v131[20] = 0xA00000005;
    *&v131[12] = 0x5F00000055;
    *&v131[4] = 0x4B00000032;
    v131[0] = 1;
    (*(*v105 + 4024))(v105, 2, 49, 75, 115, 163, 1, 1, 0x1010000A3010101, *v131, *&v131[8], *&v131[16], *&v131[24], *&v131[32], *&v131[40], *&v131[48], *&v131[56], *&v131[64], *&v131[72], *&v131[80], *&v131[88], *&v131[96], *&v131[104], v137);
    v106 = sub_10000C7D0();
    LOBYTE(v138) = -105;
    *&v132[108] = 10000;
    *&v132[100] = 0x500000004;
    *&v132[92] = 0x300000002;
    *&v132[84] = 20;
    *&v132[76] = 0xF0000000ALL;
    *&v132[68] = 0x50000C350;
    *&v132[60] = 171798691870000;
    *&v132[52] = 0x3A9800000005;
    *&v132[44] = 0x400000003;
    *&v132[36] = 0x200000000;
    *&v132[28] = 0x1000000008;
    *&v132[20] = 0x400000002;
    *&v132[12] = 0x5F00000055;
    *&v132[4] = 0x4B00000032;
    v132[0] = 1;
    (*(*v106 + 4024))(v106, 3, 75, 115, 163, 167, 1, 1, 0x1010000A7010101, *v132, *&v132[8], *&v132[16], *&v132[24], *&v132[32], *&v132[40], *&v132[48], *&v132[56], *&v132[64], *&v132[72], *&v132[80], *&v132[88], *&v132[96], *&v132[104], v138);
    v107 = sub_10000C7D0();
    LOBYTE(v139) = -105;
    *&v133[108] = 10000;
    *&v133[100] = 0x500000004;
    *&v133[92] = 0x300000002;
    *&v133[84] = 20;
    *&v133[76] = 0xF0000000ALL;
    *&v133[68] = 0x50000C350;
    *&v133[60] = 171798691870000;
    *&v133[52] = 0x3A9800000005;
    *&v133[44] = 0x400000003;
    *&v133[36] = 0x200000000;
    *&v133[28] = 0x1000000008;
    *&v133[20] = 0x400000002;
    *&v133[12] = 0x5F00000055;
    *&v133[4] = 0x4B00000032;
    v133[0] = 1;
    (*(*v107 + 4024))(v107, 4, 29, 29, 29, 29, 1, 1, 0x1010000A7010101, *v133, *&v133[8], *&v133[16], *&v133[24], *&v133[32], *&v133[40], *&v133[48], *&v133[56], *&v133[64], *&v133[72], *&v133[80], *&v133[88], *&v133[96], *&v133[104], v139);
    v108 = sub_10000C7D0();
    LOBYTE(v140) = -105;
    *&v134[108] = 10000;
    *&v134[100] = 0x500000004;
    *&v134[92] = 0x300000002;
    *&v134[84] = 20;
    *&v134[76] = 0xF0000000ALL;
    *&v134[68] = 0x50000C350;
    *&v134[60] = 171798691870000;
    *&v134[52] = 0x3A9800000005;
    *&v134[44] = 0x400000003;
    *&v134[36] = 0x200000000;
    *&v134[28] = 0x3200000032;
    *&v134[20] = 0x3200000032;
    *&v134[12] = 0x6400000064;
    *&v134[4] = 0x6400000064;
    v134[0] = 0;
    (*(*v108 + 4024))(v108, 5, 17, 17, 17, 17, 0, 0, 2801795072, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], *&v134[104], v140);
  }

  else if (v102)
  {
    sub_100847F28();
  }

  LOBYTE(v141[0]) = 0;
  v109 = sub_10000E92C();
  sub_100007E30(buf, "HRB");
  sub_100007E30(__p, "SwitchToHRB");
  (*(*v109 + 72))(v109, buf, __p, v141);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  sub_10023E7D8(LOBYTE(v141[0]));
  LODWORD(v143[0]) = 1;
  v110 = sub_10000E92C();
  sub_100007E30(buf, "HRB");
  sub_100007E30(__p, "HRBBand");
  (*(*v110 + 128))(v110, buf, __p, v143);
  if (v151 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(*buf);
  }

  sub_10023E7E4(LOBYTE(v143[0]));
  v111 = sub_10000C7D0();
  if (sub_1004106D0(v111, 0xBB8u))
  {
    sub_10023E7F0(1);
  }

  v112 = sub_10000E92C();
  if ((*(*v112 + 8))(v112))
  {
    LOBYTE(v143[0]) = 0;
    v113 = sub_10000E92C();
    sub_100007E30(buf, "Stack");
    sub_100007E30(__p, "RestrictRoleSwitchOnOutogingConnection");
    (*(*v113 + 72))(v113, buf, __p, v143);
    if (v151 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v160) < 0)
    {
      operator delete(*buf);
    }

    if (LOBYTE(v143[0]) == 1)
    {
      sub_10023E3B8();
    }
  }

  v114 = sub_10000C798();
  if ((*(*v114 + 272))(v114))
  {
    v160 = 0xFFFF0000FFFF0046;
    *buf = xmmword_1008AA550;
    v115 = sub_10000C798();
    if ((*(*v115 + 280))(v115))
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    v117 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "stackManager sending Apple LE Feature Set Vendor List", __p, 2u);
    }

    v118 = sub_10000C7D0();
    (*(*v118 + 2272))(v118, v116, buf);
  }

  v119 = sub_10000C798();
  if ((*(*v119 + 1040))(v119))
  {
    v120 = sub_10000C7D0();
    (*(*v120 + 1888))(v120, 1, 1);
  }

  sub_100007FB8(v157);
  sub_10059ACE4(a1, 1u, 1);
  sub_10000801C(v157);
  sub_1005A10F8(a1);
  sub_1005A1174(a1);
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    LOBYTE(v145) = 0;
    v146 = 0;
    v147 = 0;
    v121 = sub_10000E92C();
    sub_100007E30(buf, "Device");
    sub_100007E30(__p, "OverrideCompanyId");
    (*(*v121 + 72))(v121, buf, __p, &v145);
    if (v151 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v160) < 0)
    {
      operator delete(*buf);
    }

    if (v145 == 1)
    {
      v122 = sub_10000E92C();
      sub_100007E30(buf, "Device");
      sub_100007E30(__p, "NewCompanyId");
      if ((*(*v122 + 128))(v122, buf, __p, &v147))
      {
        v123 = sub_10000E92C();
        sub_100007E30(v143, "Device");
        sub_100007E30(v141, "NewSubVersion");
        v124 = (*(*v123 + 128))(v123, v143, v141, &v146);
        if (v142 < 0)
        {
          operator delete(v141[0]);
        }

        if (v144 < 0)
        {
          operator delete(v143[0]);
        }
      }

      else
      {
        v124 = 0;
      }

      if (v151 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v160) < 0)
      {
        operator delete(*buf);
      }

      if (v124)
      {
        v125 = sub_10000C7D0();
        (*(*v125 + 2264))(v125, v147, v146);
        if (qword_100B50AA0 != -1)
        {
          sub_100847634();
        }

        sub_1005A10B0(off_100B50A98, 1);
      }
    }
  }

  if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu && *(sub_10000C7D0() + 800) == 23)
  {
    v126 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Disable antenna switch VSE for unsupported platforms!", buf, 2u);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100847FA8();
    }

    v127 = sub_1000504C8(off_100B508E8, 1, 1);
    v128 = sub_10000C7D0();
    if ((*(*v128 + 152))(v128, 255, v127) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847FD0();
    }
  }

  v4 = 0;
LABEL_270:
  sub_1000088CC(v157);
  return v4;
}