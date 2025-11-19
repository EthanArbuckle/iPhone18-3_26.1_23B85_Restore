void sub_1004AD9E4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgSyncSettings");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832B2C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100529A70(uint64, v6);
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

void sub_1004ADAD0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgGrouIdArraySize");
  __chkstk_darwin(v6, 4 * v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = v6;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832B94();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_100529B20(uint64, v8, &v15);
    goto LABEL_6;
  }

  v15 = 0;
  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[4 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgGrouIdArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1004ADC8C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgGrouId");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832BFC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100529BE0(uint64, v6, v7);
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

void sub_1004ADD90(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832C64();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529D80(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004ADE7C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832CCC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529ED4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004ADF68(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832D34();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529F34(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE054(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832D9C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529FCC(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgConnected", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE140(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832E04();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A038(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE22C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832E6C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A108(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE318(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832ED4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A1D8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_1004AE404(uint64_t a1, void *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  sub_100832F3C();
  if (!uint64)
  {
    goto LABEL_17;
  }

LABEL_3:
  v8 = *(a1 + 80);
  if (v8 == (a1 + 88))
  {
LABEL_13:
    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00407049A3A3uLL);
    v19 = v14;
    v14[1] = v6;
    v14[2] = uint64;
    *v14 = sub_1004AC368;
    v14[3] = *(a1 + 72);
    sub_1000452CC(a1 + 80, &v19);
    if (*(a1 + 104))
    {
      v9 = 0;
    }

    else
    {
      v15 = sub_10052A240(uint64, *v19, v7, a1);
      *(a1 + 104) = 1;
      v9 = v15;
    }
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v10 = v8[4];
      if (*(v10 + 8) == v6 && *(v10 + 16) == uint64)
      {
        break;
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
      if (v12 == (a1 + 88))
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  reply = xpc_dictionary_create_reply(a2);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }

  return sub_1000088CC(v20);
}

void sub_1004AE610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AE638(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832FC0();
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 80);
    if (v7 == (a1 + 88))
    {
LABEL_13:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100833028();
      }

      v12 = 3;
    }

    else
    {
      while (1)
      {
        v8 = v7[4];
        if (v8[1] == v6 && v8[2] == uint64)
        {
          break;
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
        if (v10 == (a1 + 88))
        {
          goto LABEL_13;
        }
      }

      v17 = v7[4];
      if (*(a1 + 104) == 1)
      {
        v13 = sub_10052A2B4(uint64, *v8);
        *(a1 + 104) = 0;
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }

      sub_100075DC4((a1 + 80), &v17);
      free(v17);
    }
  }

  else
  {
    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v15 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }

  return sub_1000088CC(v18);
}

void sub_1004AE808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004AE820(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833068();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A310(uint64, -1);
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

void sub_1004AE8EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServices");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008330D0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052A310(uint64, v6);
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

void sub_1004AE9D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServices");
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", 0);
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnectionMode");
  v12 = 0uLL;
  if (data)
  {
    v12 = *data;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833138();
    if (uint64)
    {
      goto LABEL_5;
    }
  }

  else if (uint64)
  {
LABEL_5:
    v9 = sub_10052A78C(uint64, v6, v8, &v12);
    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1004AEB3C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008331A0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B3F4(uint64, -1);
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

void sub_1004AEC08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833208();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052B3F4(uint64, v6);
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

void sub_1004AECF4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833270();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B6AC(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgServiceMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AEDE0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008332D8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B7E4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgServiceMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AEECC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgKey");
  v7 = xpc_dictionary_get_string(value, "kCBMsgArgValue");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833340();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10052B918(uint64, v8, string, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1004AEFF0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgKey");
  memset(v11, 0, sizeof(v11));
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008333A8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052B9EC(uint64, v7, string, v11);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgValue", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AF16C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833410();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052BAC0(uint64);
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

void sub_1004AF258(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833478();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529ED4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgType", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AF344(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceID");
  v9 = v8;
  __chkstk_darwin(v8, v10);
  v12 = &v16 - v11;
  bzero(&v16 - v11, v7);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008334E0();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v13 = sub_10052BB20(uint64, v9, v12, v7);
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    if (!v13)
    {
      xpc_dictionary_set_data(v15, "kCBMsgArgData", v12, v7);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_1004AF4E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceID");
  v9 = v8;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  __chkstk_darwin(v8, v10);
  v12 = v15 - v11;
  bzero(v15 - v11, v7);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833548();
    if (uint64)
    {
      goto LABEL_6;
    }

LABEL_10:
    LODWORD(uint64) = 1;
    goto LABEL_11;
  }

  if (!uint64)
  {
    goto LABEL_10;
  }

LABEL_6:
  LODWORD(uint64) = sub_10052BB20(uint64, v9, v12, v7);
  if (!uint64)
  {
    uint64 = sandbox_extension_issue_file();
    if (uint64)
    {
      strlcpy(v15, uint64, 0x200uLL);
      HIBYTE(v16) = 0;
      free(uint64);
      LODWORD(uint64) = 0;
    }
  }

LABEL_11:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    if (!uint64)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgData", v12, v7);
      xpc_dictionary_set_data(v14, "kCBMsgArgExtensionToken", v15, 0x200uLL);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_1004AF72C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  *&value[1] = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgKey", &value[1]);
  value[0] = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008335B0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052BBF4(uint64, data, *&value[1], value);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBool", value[0]);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AF848(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  __chkstk_darwin(data, v9);
  v11 = &v15 - v10;
  bzero(&v15 - v10, v7);
  v16 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833618();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v12 = sub_10052BC78(uint64, data, length, v11, &v16, v7);
    goto LABEL_9;
  }

  v12 = 1;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    if (!v12)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgData", v11, v16);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_1004AFA00(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v9 = 0;
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833680();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052BD20(uint64, &value + 1, &value, &v9 + 1, &v9);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVendorIdSource", HIDWORD(value));
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVendorId", value);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgProductId", HIDWORD(v9));
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVersionId", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AFB34(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgAuthStatus");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgHIDType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008336E8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052BE20(uint64, v6, v7);
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

void sub_1004AFC38(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833750();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B074(uint64);
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

void sub_1004AFD00(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (v6)
  {
    data = xpc_dictionary_get_data(value, "kCBMsgArgKey", 0);
  }

  else
  {
    data = 0;
  }

  length = 0;
  v8 = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v9 = v8;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008337B8();
      if (uint64)
      {
        goto LABEL_7;
      }
    }

    else if (uint64)
    {
LABEL_7:
      v10 = sub_10052BED0(uint64, v9, data, v6);
LABEL_14:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v12 = reply;
      v13 = v10;
      goto LABEL_16;
    }

    v10 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    v13 = 8;
LABEL_16:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1004AFE8C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833820();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C050(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AFF78(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833888();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C0E4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0064(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008338F0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C1B4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0150(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833958();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C248(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLowSecurityStatus", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B023C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 2;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008339C0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C2B0(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMSgArgHIDDeviceBehavior", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B032C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833A28();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052C318(uint64, v6);
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

void sub_1004B0418(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgRequesterID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833A90();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052C3E0(uint64, v6, v7);
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

void sub_1004B051C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833AF8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C538(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0608(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833B60();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C5A4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDeviceType", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B06F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDeviceType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833BC8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052C664(uint64, v6);
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

void sub_1004B07E0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = -1;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833C30();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C884(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833C98(&value, uint64, v7);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGenuine", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void *sub_1004B0900(void *a1)
{
  v2 = (a1 + 10);
  v3 = a1[10];
  v4 = a1 + 11;
  if (v3 != a1 + 11)
  {
    do
    {
      free(v3[4]);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_10000CEDC(v2, a1[11]);
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v4;
  sub_10000CEDC(v2, 0);
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_1004B09C8(void *a1)
{
  sub_1004B0900(a1);

  operator delete();
}

uint64_t sub_1004B0A00(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      if (*(a1 + 104) == 1)
      {
        sub_10052A2B4(v4[2], *v4);
        *(a1 + 104) = 0;
      }

      free(v4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  return sub_1000088CC(v9);
}

void sub_1004B0AEC()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE580 = 0u;
  *algn_100BCE590 = 0u;
  dword_100BCE5A0 = 1065353216;
  __cxa_atexit(sub_1004AC0D4, &xmmword_100BCE580, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1004B0B58(uint64_t a1)
{
  *a1 = off_100AF9278;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100044BBC(a1 + 64);
  *(a1 + 128) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100833D48();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v2 = objc_opt_new();
  v3 = *(a1 + 8);
  *(a1 + 8) = v2;

  [*(a1 + 8) setFormatOptions:1907];
  v4 = sub_100017F4C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004B0D14;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a1;
  sub_10000CA94(v4, v8);
  v5 = objc_opt_new();
  v6 = *(a1 + 424);
  *(a1 + 424) = v5;

  *(a1 + 136) = 0;
  *(a1 + 142) = 0;
  *(a1 + 139) = 1023;
  *(a1 + 141) = 8;
  *(a1 + 142) = 100000;
  *(a1 + 433) = 33619967;
  *(a1 + 437) = 2;
  *(a1 + 440) = sub_1004B1148();
  sub_1004B12A0(a1);
  return a1;
}

void sub_1004B0CD0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1004B0D18()
{
  v0 = +[NSFileManager defaultManager];
  v27 = 0;
  v1 = [v0 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/" error:&v27];
  v2 = v27;
  v18 = v1;
  v19 = v2;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v1;
    v4 = [obj countByEnumeratingWithState:&v23 objects:v36 count:16];
    if (v4)
    {
      v5 = *v24;
      do
      {
        v6 = 0;
        do
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v23 + 1) + 8 * v6);
          if ([v7 hasPrefix:@"Accessory"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"bluetoothd-Accessory"))
          {
            v8 = [NSString stringWithFormat:@"%@%@", @"/private/var/mobile/Library/Logs/Bluetooth/", v7, v18];
            v22 = 0;
            v9 = [v0 attributesOfItemAtPath:v8 error:&v22];
            v10 = v22;
            v11 = [v9 objectForKey:NSFileCreationDate];
            [v11 timeIntervalSinceNow];
            v13 = v12;

            if (v10)
            {
              v14 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 141558531;
                v29 = 1752392040;
                v30 = 2113;
                v31 = v8;
                v32 = 2114;
                v33 = *&v10;
                _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "deleteOldLogFiles: Can't get path attributes for %{private, mask.hash}@, error %{public}@", buf, 0x20u);
              }
            }

            else if (v13 >= -15552000.0 && (v13 >= -604800.0 || (v16 = sub_10000E92C(), ((*(*v16 + 8))(v16) & 1) != 0)))
            {
              v10 = 0;
            }

            else
            {
              v21 = 0;
              [v0 removeItemAtPath:v8 error:&v21];
              v10 = v21;
              v15 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 141558787;
                v29 = 1752392040;
                v30 = 2113;
                v31 = v8;
                v32 = 2048;
                v33 = v13;
                v34 = 2114;
                v35 = v10;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "deleteOldLogFiles: Deleting old log file: %{private, mask.hash}@, fileAge %f, error %{public}@", buf, 0x2Au);
              }
            }
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v17 = [obj countByEnumeratingWithState:&v23 objects:v36 count:16];
        v4 = v17;
      }

      while (v17);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100833D5C();
  }
}

double sub_1004B1148()
{
  v0 = sub_10000E92C();
  if ((*(*v0 + 8))(v0))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.1;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"com.apple.bluetooth.accessory.CrashAnalyticsSamplingRate", @"com.apple.da", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (AppIntegerValue > 0x64)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100833DCC();
      }
    }

    else
    {
      v1 = AppIntegerValue / 100.0;
    }
  }

  v3 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getCrashAnalyticsSamplingRate: Returning %f", buf, 0xCu);
  }

  return v1;
}

double sub_1004B12A0(uint64_t a1)
{
  v1 = a1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  [*(a1 + 128) invalidate];
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;

  [*(v1 + 424) removeAllObjects];
  result = 0.0;
  *(v1 + 150) = 0u;
  v1 += 150;
  *(v1 + 282) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 257) = 1;
  *(v1 + 265) = 768;
  *(v1 + 268) = 0;
  *(v1 + 272) = 1;
  return result;
}

uint64_t sub_1004B133C(uint64_t a1)
{
  *a1 = off_100AF9278;
  if (qword_100B50AA0 != -1)
  {
    sub_100833D48();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);

  sub_10007A068(a1 + 64);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004B13D8(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 64);
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1004B1418(uint64_t a1)
{
  sub_1004B133C(a1);

  operator delete();
}

void sub_1004B1464(uint64_t a1, uint64_t a2, int a3)
{
  v57 = 0;
  if (*(a1 + 448))
  {
    if (a2)
    {
      v56[0] = 0;
      v56[1] = 0;
      sub_100007F88(v56, a1 + 64);
      v6 = sub_1004B1ED8(a1, a2 + 128);
      v57 = v6;
      if (!v6)
      {
        operator new();
      }

      v7 = v6;
      v8 = qword_100BCE8C8;
      if (*(v6 + 40) == 3)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v7 + 8);
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Disconnected device %{public}@ reconnected", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100833E7C(v7);
      }

      sub_1004B1F1C(a1, a2 + 128);
      v10 = sub_100017F4C();
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1004B21DC;
      v55[3] = &unk_100ADF8F8;
      v55[4] = a1;
      sub_10000CA94(v10, v55);
      if (((a3 - 8194) > 0xE || ((1 << (a3 - 2)) & 0x409B) == 0) && !sub_1000E2C2C(a2) && (*(a2 + 1016) & 1) == 0)
      {
        v43 = sub_10000C798();
        if ((*(*v43 + 352))(v43) & 1) != 0 || (v44 = sub_10000C798(), ((*(*v44 + 416))(v44)) || (v45 = sub_10000C798(), (*(*v45 + 456))(v45)))
        {
          if (sub_1004B21E0())
          {
            v46 = 8;
          }

          else
          {
            v46 = 9;
          }

          sub_1004B22F4(a1, a2 + 128, v46, 2u);
        }
      }

      v11 = sub_10000C798();
      if ((*(*v11 + 352))(v11))
      {
        if ((a3 - 8194) <= 0xE && ((1 << (a3 - 2)) & 0x409B) != 0)
        {
          v12 = sub_10000E92C();
          if ((*(*v12 + 8))(v12))
          {
            v13 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Invoking W1 iOS-internal initialization steps", buf, 2u);
              v13 = qword_100BCE8C8;
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 136);
              v15 = *(a1 + 137);
              v16 = *(a1 + 139);
              v17 = *(a1 + 141);
              v18 = *(a1 + 142);
              v19 = *(a1 + 146);
              v20 = *(a1 + 138);
              *buf = 67110656;
              *&buf[4] = v14;
              *&buf[8] = 1024;
              *&buf[10] = v15;
              *v60 = 1024;
              *&v60[2] = v16;
              *v61 = 1024;
              *&v61[2] = v17;
              v62 = 1024;
              v63 = v18;
              v64 = 1024;
              v65 = v19;
              v66 = 1024;
              v67 = v20;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: isTimeStampPeriodicallyEnabled = %d, isDisableDiagnosticsPeriodicallyEnabled = %d, module = %d, level = %d, log_interval = %d, power_logging_interval = %d, isCrashLoggingDisabled = %d", buf, 0x2Cu);
            }

            if (*(a1 + 137) == 1)
            {
              v21 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(v57 + 8);
                *buf = 138543874;
                *&buf[4] = v22;
                *&buf[12] = 1024;
                *v60 = 1;
                *&v60[4] = 1024;
                *v61 = 3000;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Send Diagnostics Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              buf[0] = 0;
              sub_1000216B4(buf);
              v23 = sub_10018825C((a2 + 128), 1, 3000);
              sub_100022214(buf);
              if (v23 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_100833F1C();
              }

              sub_10002249C(buf);
            }

            if (*(a1 + 136) == 1)
            {
              v24 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(v57 + 8);
                *buf = 138543874;
                *&buf[4] = v25;
                *&buf[12] = 1024;
                *v60 = 0;
                *&v60[4] = 1024;
                *v61 = 100;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Send TimeStamp Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              buf[0] = 0;
              sub_1000216B4(buf);
              v26 = sub_10018825C((a2 + 128), 0, 100);
              sub_100022214(buf);
              if (v26 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_100833FAC();
              }

              sub_10002249C(buf);
            }

            if (*(a1 + 146))
            {
              v27 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(v57 + 8);
                v29 = *(a1 + 146);
                *buf = 138543874;
                *&buf[4] = v28;
                *&buf[12] = 1024;
                *v60 = 2;
                *&v60[4] = 1024;
                *v61 = v29;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Send Power Logging Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              *(v57 + 40) = 6;
              LOBYTE(dword_100B54550) = 1;
              v54 = 0;
              sub_1000216B4(&v54);
              v30 = sub_100189034((a2 + 128), 4u, 5u, &dword_100B54550);
              sub_100022214(&v54);
              if (v30 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_10083403C();
              }

              v31 = fopen(aPrivateVarMobi_14, "a");
              if (v31)
              {
                sub_1000C23E0(a2, buf);
                v32 = v61[3];
                v33 = *buf;
                v41 = sub_100304810(a2 + 128, v34, v35, v36, v37, v38, v39, v40);
                v42 = buf;
                if (v32 < 0)
                {
                  v42 = v33;
                }

                fprintf(v31, "Power Logging - Device Name -> %s, Bluetooth Addr -> %s \n", v42, v41);
                if ((v61[3] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                fclose(v31);
              }

              else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                v47 = __error();
                sub_1008340CC(v47, v58);
              }

              sub_10002249C(&v54);
            }

            if ((*(a1 + 138) & 1) == 0 && *(v57 + 40) != 6)
            {
              sub_1004B2A3C(a1);
              v48 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v49 = *(v57 + 8);
                *buf = 138543362;
                *&buf[4] = v49;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Send request to %{public}@ for check crash log existence, Left Bud", buf, 0xCu);
              }

              *(a1 + 418) = 0x10000;
              *(v57 + 40) = 7;
              LOBYTE(dword_100B54550) = 2;
              *(a1 + 416) = 2;
              buf[0] = 0;
              sub_1000216B4(buf);
              v50 = sub_100189034((a2 + 128), 4u, 5u, &dword_100B54550);
              sub_100022214(buf);
              dword_100B6EA30 = dword_100B54550;
              byte_100B6EA34 = byte_100B54554;
              byte_100B6EA39 = 5;
              v51 = *(a2 + 132);
              *(a1 + 409) = *(a2 + 128);
              *(a1 + 413) = v51;
              *(a1 + 415) = 0;
              if (v50)
              {
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                {
                  sub_100834114();
                }
              }

              sub_10002249C(buf);
            }

            v52 = sub_100017F4C();
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1004B2AC0;
            v53[3] = &unk_100ADF8F8;
            v53[4] = a1;
            sub_10008E008(v52, 30000, v53);
          }
        }
      }

      sub_1000088CC(v56);
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008341A4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100833E40();
  }
}

void sub_1004B1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10002249C(&a19);
  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B1ED8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    result = *v2;
    if (*(*v2 + 16) == *a2 && *(*v2 + 20) == *(a2 + 4))
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004B1F1C(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v4 = sub_1004B1ED8(a1, a2);
  if (*(a1 + 448))
  {
    v5 = v4;
    if (v4)
    {
      v36.tv_sec = 0;
      *&v36.tv_usec = 0;
      gettimeofday(&v36, 0);
      v6 = qword_100BCE8C8;
      v7 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
      tv_sec = v36.tv_sec;
      tv_usec = v36.tv_usec;
      if (v7)
      {
        v10 = *(v5 + 8);
        *buf = 134218498;
        v38 = tv_sec;
        v39 = 1024;
        v40 = tv_usec;
        v41 = 2114;
        v42 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendTimestamp: Sending UNIX Epoch Time (seconds %ld, useconds %u) to %{public}@", buf, 0x1Cu);
      }

      v33 = __PAIR64__(tv_usec, tv_sec);
      v19 = +[NSTimeZone localTimeZone];
      [*(a1 + 8) setTimeZone:v19];

      v20 = *(a1 + 8);
      v21 = [NSDate dateWithTimeIntervalSince1970:tv_sec];
      v22 = [v20 stringFromDate:v21];
      v23 = v22;
      v24 = [v22 UTF8String];

      v35 = v24;
      LOWORD(v34) = strlen(v24);
      if (qword_100B508F0 != -1)
      {
        sub_10083421C();
      }

      *buf = *a2;
      LOWORD(v38) = *(a2 + 4);
      v25 = sub_1000E6554(off_100B508E8, buf, 1);
      if (v25)
      {
        if (qword_100B50950 != -1)
        {
          sub_100834244();
        }

        return sub_100334234(off_100B50948, v25, &v33);
      }

      else
      {
        v26 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083426C(a2, v26, v27, v28, v29, v30, v31, v32);
        }

        return 1;
      }
    }

    else
    {
      v12 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008342F0(a2, v12, v13, v14, v15, v16, v17, v18);
      }

      return 312;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008341E0();
    }

    return 111;
  }
}

uint64_t sub_1004B21E0()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(v6, "AccessoryLogging");
  sub_100007E30(__p, "APLogCollectionEnabled");
  (*(*v0 + 72))(v0, v6, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v1 = sub_10000E92C();
  v2 = (*(*v1 + 264))(v1);
  return (v8 | v2) & 1;
}

void sub_1004B22C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B22F4(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  v8 = sub_10000E92C();
  v9 = (*(*v8 + 160))(v8);
  if (a4 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    if (*(a1 + 448))
    {
      if (*(a1 + 32) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083442C();
        }

        v11 = 10;
      }

      else
      {
        v71[0] = 0;
        v71[1] = 0;
        sub_100007F88(v71, a1 + 64);
        if (a2)
        {
          v12 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_100304810(a2, v13, v14, v15, v16, v17, v18, v19);
            *buf = 141558275;
            *&buf[4] = 1752392040;
            v75 = 2081;
            v76 = v20;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendLogCommand: BdAddr %{private, mask.hash}s specified", buf, 0x16u);
          }

          v21 = sub_1004B1ED8(a1, a2);
          *buf = v21;
          if (v21)
          {
            v22 = *(v21 + 24) - 8194;
            if (v22 > 0xE || ((1 << v22) & 0x409B) == 0)
            {
              sub_1000C2484(v72, buf);
            }
          }
        }

        else
        {
          for (i = *(a1 + 40); i != *(a1 + 48); ++i)
          {
            v24 = *i;
            __p[0] = v24;
            v25 = *(v24 + 24) - 8194;
            v26 = v25 > 0xE;
            v27 = (1 << v25) & 0x409B;
            if (v26 || v27 == 0)
            {
              if (*(v24 + 40))
              {
                v29 = qword_100BCE8C8;
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = *(v24 + 8);
                  v31 = *(__p[0] + 40);
                  *buf = 138543618;
                  *&buf[4] = v30;
                  v75 = 1024;
                  LODWORD(v76) = v31;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "sendLogCommand: %{public}@ not idle (status %d), skipping", buf, 0x12u);
                }
              }

              else
              {
                sub_1000C2484(v72, __p);
              }
            }
          }
        }

        v32 = v72[0];
        if (v72[1] == v72[0])
        {
          v51 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "sendLogCommand: No appropriate accessory to command", buf, 2u);
          }

          v11 = 312;
        }

        else
        {
          v69 = a3;
          *v70 = *(a1 + 433);
          v70[4] = *(a1 + 437);
          if (a4 <= 0xB && ((1 << a4) & 0xE3E) != 0)
          {
            v70[3] = a4;
          }

          v63 = a1;
          v62 = a4;
          v64 = a3;
          if (a3 == 7)
          {
            *&v70[1] = 1;
          }

          v66 = 0;
          v65 = 0;
          v33 = &qword_100BCE8C8;
          p_info = &OBJC_METACLASS___BTVCDevice.info;
          v35 = &OBJC_METACLASS___BTVCDevice.info;
          v36 = &OBJC_METACLASS___BTVCDevice.info;
          while (1)
          {
            v37 = *v32;
            v38 = *v33;
            v39 = os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT);
            if (v39)
            {
              v40 = sub_1004B4C94(v39, v69);
              v41 = v36;
              v42 = v33;
              v43 = v35;
              v44 = p_info;
              v45 = *(v37 + 8);
              *buf = 136316674;
              *&buf[4] = v40;
              v75 = 2114;
              v76 = v45;
              v77 = 1024;
              v78 = v70[0];
              v79 = 1024;
              v80 = v70[1];
              v81 = 1024;
              v82 = v70[2];
              v83 = 1024;
              v84 = v70[3];
              v85 = 1024;
              v86 = v70[4];
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "sendLogCommand: Sending command %s to %{public}@: device %d module %d submodule %d type %d level %d", buf, 0x34u);

              p_info = v44;
              v35 = v43;
              v33 = v42;
              v36 = v41;
            }

            if (p_info[286] != -1)
            {
              sub_10083421C();
            }

            v46 = v35[285];
            *buf = *(v37 + 16);
            *&buf[4] = *(v37 + 20);
            v47 = sub_1000E6554(v46, buf, 1);
            if (!v47)
            {
              break;
            }

            if (v36[298] != -1)
            {
              sub_100834244();
            }

            v48 = sub_100330C90(off_100B50948, v47, 512, 6, &v69);
            if (v48)
            {
              v49 = *v33;
              if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
              {
                v50 = *(v37 + 8);
                *buf = 138543618;
                *&buf[4] = v50;
                v75 = 1024;
                LODWORD(v76) = v48;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "sendLogCommand: Failed to send command to %{public}@ (error = %d)", buf, 0x12u);
              }

              v66 = v48;
            }

            else
            {
              if (v64 == 5)
              {
                sub_1004B2C9C(v63, v37);
              }

              v65 = 1;
            }

            if (++v32 == v72[1])
            {
              if (!((v62 != 2) | v65 & 1))
              {
                v60 = sub_10000E92C();
                sub_100007E30(buf, "AccessoryLogging");
                sub_100007E30(__p, "StoredLogsRetrieved");
                (*(*v60 + 80))(v60, buf, __p, 0);
                if (v68 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v77) < 0)
                {
                  operator delete(*buf);
                }
              }

              if (v65)
              {
                v11 = 0;
              }

              else
              {
                v11 = v66;
              }

              goto LABEL_71;
            }
          }

          if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
          {
            v59 = sub_100304810(v37 + 16, v52, v53, v54, v55, v56, v57, v58);
            sub_1008343E8(v59, buf);
          }

          v11 = 1;
        }

LABEL_71:
        sub_1000088CC(v71);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008343AC();
      }

      v11 = 111;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834370();
    }

    v11 = 2;
  }

  if (v72[0])
  {
    v72[1] = v72[0];
    operator delete(v72[0]);
  }

  return v11;
}

void sub_1004B29B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_1000088CC(&a26);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1004B2A3C(uint64_t a1)
{
  [*(a1 + 424) removeAllObjects];
  sub_1004BEFFC(a1, aPrivateVarMobi_15);
  sub_1004BEFFC(a1, aPrivateVarMobi_14);
  sub_1004BEFFC(a1, aPrivateVarMobi_16);
  sub_1004BEFFC(a1, &unk_100B6E820);
  sub_1004BEFFC(a1, &unk_100B6E920);
  result = [*(a1 + 424) count];
  *(a1 + 432) = result;
  return result;
}

uint64_t sub_1004B2AC8(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 64);
  v2 = *(a1 + 48);
  while (v2 != *(a1 + 40))
  {
    v4 = *(v2 - 8);
    v2 -= 8;
    v3 = v4;
    v5 = *(v4 + 24) - 8194;
    v6 = v5 > 0xE;
    v7 = (1 << v5) & 0x409B;
    if (!v6 && v7 != 0)
    {
      if (*(a1 + 448))
      {
        if (qword_100B508F0 != -1)
        {
          sub_10083421C();
        }

        v10 = *(v3 + 16);
        v9 = v3 + 16;
        v22 = v10;
        v23 = *(v9 + 4);
        v11 = sub_1000E6554(off_100B508E8, &v22, 1);
        if (v11)
        {
          if (qword_100B50950 != -1)
          {
            sub_100834244();
          }

          sub_100331844(off_100B50948, v11, 9, 0, 2u);
        }

        else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          v19 = sub_100304810(v9, v12, v13, v14, v15, v16, v17, v18);
          sub_100834468(v19, &v22);
        }

        return sub_1000088CC(v21);
      }

      goto LABEL_17;
    }
  }

  if ((*(a1 + 448) & 1) == 0)
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008344AC();
    }

    return sub_1000088CC(v21);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008344E8();
  }

  return sub_1000088CC(v21);
}

void sub_1004B2C9C(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 1;
  *(a1 + 32) = 1;
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *buf = 138543618;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startInactivityTimer: Timeout period for %{public}@ begun, pId = 0x%x", buf, 0x12u);
  }

  v7 = *(a2 + 24);
  v8 = v7 == 8223 || v7 == 8202;
  v9 = 45.0;
  v15 = 3221225472;
  v14 = _NSConcreteStackBlock;
  v16 = sub_1004B2E4C;
  v17 = &unk_100AF92A8;
  if (!v8)
  {
    v9 = 12.0;
  }

  v18 = a1;
  v19 = a2;
  v10 = [NSTimer timerWithTimeInterval:0 repeats:&v14 block:v9];
  v12 = *(a2 + 32);
  v11 = (a2 + 32);
  *v11 = v10;

  v13 = [NSRunLoop mainRunLoop:v14];
  [v13 addTimer:*v11 forMode:NSDefaultRunLoopMode];
}

uint64_t sub_1004B2E4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, v2 + 64);
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834524(a1);
  }

  [*(*(a1 + 40) + 80) removeAllObjects];
  v3 = *(a1 + 40);
  *(v3 + 40) = 2;
  sub_1004B2EF8(v2, v3);
  return sub_1000088CC(v5);
}

uint64_t sub_1004B2EF8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  __p = 0;
  v112 = 0;
  v113 = 0;
  if (a2)
  {
    if (*(a2 + 40) - 3 <= 1 && *(a2 + 64))
    {
      v4 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a2 + 48);
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: File %@ still open, closing and marking as corrupt", buf, 0xCu);
      }

      *(a2 + 56) = 1;
      sub_1004BA85C(a2);
    }

    v6 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v9 = v8;
      v10 = *(a2 + 40);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *(*v11 + 40);
          v15 = v14 > 8;
          v16 = (1 << v14) & 0x182;
          if (!v15 && v16 != 0)
          {
            ++v13;
          }

          v11 += 8;
        }

        while (v11 != v12);
      }

      *buf = 138543874;
      *&buf[4] = v8;
      v117 = 1024;
      v118 = v10;
      v119 = 1024;
      v120 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "finishSession: %{public}@ logging session finished (state now %d); remaining sessions: %d", buf, 0x18u);
    }

    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    if (v20 != v19)
    {
      v21 = 0;
      v22 = *(a1 + 40);
      do
      {
        v23 = *(*v22 + 40);
        v15 = v23 > 8;
        v24 = (1 << v23) & 0x182;
        if (!v15 && v24 != 0)
        {
          ++v21;
        }

        ++v22;
      }

      while (v22 != v19);
      if (v21 > 0)
      {
        v18 = 0;
        goto LABEL_140;
      }

      if (v20 != v19)
      {
        v97 = 0;
        v99 = 0;
        v26 = 0;
        *&v7 = 67109120;
        v96 = v7;
        while (1)
        {
          v98 = v20;
          v27 = *v20;
          v28 = *(*v20 + 40);
          if (v28 <= 3)
          {
            break;
          }

          if (v28 <= 6)
          {
            if ((v28 - 4) < 2)
            {
              goto LABEL_67;
            }

            if (v28 != 6)
            {
LABEL_52:
              v41 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = v96;
                *&buf[4] = v28;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "finishSession: Unhandled status %d", buf, 8u);
              }

LABEL_54:
              v36 = v98;
              goto LABEL_90;
            }

LABEL_49:
            v36 = v98;
            goto LABEL_108;
          }

          if (v28 == 8)
          {
LABEL_50:
            v37 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            v38 = *(v27 + 8);
            v39 = *(v27 + 40);
            *buf = 138543618;
            *&buf[4] = v38;
            v117 = 1024;
            v118 = v39;
            v40 = v38;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "finishSession: %{public}@ should not be in state %d", buf, 0x12u);

            v36 = v98;
LABEL_90:
            if (*(a1 + 34) == 1)
            {
              v62 = *(v27 + 24) - 8194;
              v15 = v62 > 0x2D;
              v63 = (1 << v62) & 0x20647A877F9BLL;
              if (!v15 && v63 != 0)
              {
                v65 = sub_1004BACBC(a1, v27);
                v66 = v65;
                if (v65 && (!*(a1 + 24) || *(a1 + 16) == 1))
                {
                  v105 = 0u;
                  v106 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  v67 = v65;
                  v68 = [v67 countByEnumeratingWithState:&v103 objects:v114 count:16];
                  if (v68)
                  {
                    v69 = *v104;
                    do
                    {
                      for (i = 0; i != v68; i = i + 1)
                      {
                        if (*v104 != v69)
                        {
                          objc_enumerationMutation(v67);
                        }

                        [v3 addObject:{*(*(&v103 + 1) + 8 * i), v96}];
                      }

                      v68 = [v67 countByEnumeratingWithState:&v103 objects:v114 count:16];
                    }

                    while (v68);
                  }

                  v36 = v98;
                }
              }
            }

            sub_1004B8880(v27);
            ++v97;
            goto LABEL_108;
          }

          if (v28 != 7)
          {
            goto LABEL_52;
          }

          v32 = qword_100BCE8C8;
          if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          v33 = *(v27 + 8);
          v34 = *(v27 + 40);
          *buf = 138543618;
          *&buf[4] = v33;
          v117 = 1024;
          v118 = v34;
          v35 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: %{public}@ in state %d", buf, 0x12u);

          v36 = v98;
LABEL_108:
          v20 = v36 + 1;
          if (v20 == *(a1 + 48))
          {
            goto LABEL_112;
          }
        }

        if (v28 > 1)
        {
          if (v28 != 2)
          {
            v29 = v27 + 16;
            v30 = v112;
            if (v112 >= v113)
            {
              v42 = (v112 - __p) >> 3;
              if ((v42 + 1) >> 61)
              {
                sub_1000C7698();
              }

              v43 = (v113 - __p) >> 2;
              if (v43 <= v42 + 1)
              {
                v43 = v42 + 1;
              }

              if (v113 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v43;
              }

              if (v44)
              {
                sub_100008108(&__p, v44);
              }

              *(8 * v42) = v29;
              v31 = 8 * v42 + 8;
              v45 = (8 * v42 - (v112 - __p));
              memcpy(v45, __p, v112 - __p);
              v46 = __p;
              __p = v45;
              v112 = v31;
              v113 = 0;
              if (v46)
              {
                operator delete(v46);
              }
            }

            else
            {
              *v112 = v29;
              v31 = (v30 + 8);
            }

            v112 = v31;
            v47 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(v27 + 8);
              *buf = 138543362;
              *&buf[4] = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "finishSession: Session for %{public}@ marked for deletion", buf, 0xCu);
            }
          }

LABEL_67:
          v49 = *(v27 + 24) - 8194;
          v15 = v49 > 0xE;
          v50 = (1 << v49) & 0x409B;
          if (v15 || v50 == 0)
          {
            v52 = *(v27 + 80);
          }

          else
          {
            v52 = *(a1 + 424);
            v99 |= [*(a1 + 424) count] > *(a1 + 432);
          }

          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v53 = v52;
          v54 = [v53 countByEnumeratingWithState:&v107 objects:v115 count:16];
          if (!v54)
          {
LABEL_89:

            v36 = v98;
            goto LABEL_90;
          }

          v55 = *v108;
          while (2)
          {
            v56 = 0;
LABEL_75:
            if (*v108 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v57 = *(*(&v107 + 1) + 8 * v56);
            v58 = *(v27 + 24) - 8194;
            v15 = v58 > 0xE;
            v59 = (1 << v58) & 0x409B;
            if (v15 || v59 == 0)
            {
              if (![*(*(&v107 + 1) + 8 * v56) hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryVersionInfo"])
              {
                v99 = 1;
                goto LABEL_81;
              }

              if ((*(a1 + 34) & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            else
            {
LABEL_81:
              [v3 addObject:{v57, v96}];
              v26 = v27;
            }

            if (v54 == ++v56)
            {
              v61 = [v53 countByEnumeratingWithState:&v107 objects:v115 count:16];
              v54 = v61;
              if (!v61)
              {
                goto LABEL_89;
              }

              continue;
            }

            goto LABEL_75;
          }
        }

        if (v28)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    v26 = 0;
    v99 = 0;
    v97 = 0;
LABEL_112:
    v71 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v72 = [v3 count];
      *buf = 134218240;
      *&buf[4] = v72;
      v117 = 1024;
      v118 = v97;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "finishSession: Sending %lu file(s) from %d session(s)", buf, 0x12u);
    }

    if (*(a1 + 24))
    {
      v73 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 16))
        {
          v74 = "Diagnostic Extension";
        }

        else
        {
          v74 = "Sysdiagnose";
        }

        *buf = 136446210;
        *&buf[4] = v74;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "finishSession: %{public}s - Accessory Log Retrieval Completed", buf, 0xCu);
      }

      if (v99)
      {
        v75 = v3;
      }

      else
      {
        v75 = 0;
      }

      sub_1004BF104(a1, v75);
    }

    else
    {
      if ((v99 & 1) == 0)
      {
        v83 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: No real log files to send", buf, 2u);
        }

        v18 = 1;
        goto LABEL_125;
      }

      if (*(a1 + 33))
      {
        v82 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "finishSession: Force send complete", buf, 2u);
        }
      }

      else
      {
        v84 = sub_10000C798();
        if (((*(*v84 + 352))(v84) & 1) == 0 && (v85 = sub_10000C798(), ((*(*v85 + 416))(v85) & 1) == 0) && (v86 = sub_10000C798(), !(*(*v86 + 456))(v86)) || (v87 = sub_10000E92C(), !(*(*v87 + 8))(v87)))
        {
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_1008345B8();
          }

          v18 = 2;
          goto LABEL_125;
        }

        v88 = *(a1 + 34);
        v89 = qword_100BCE8C8;
        v90 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
        if (v88 == 1)
        {
          if (v90)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "finishSession: Retrieved crash log, opening Tap-to-Radar", buf, 2u);
          }

          v91 = sub_10000EE80();
          (*(*v91 + 168))(v91, v3, 1, *(v26 + 24));
        }

        else
        {
          if (v90)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "finishSession: Internal Settings - Accessory Log Retrieval Completed", buf, 2u);
          }

          v92 = sub_10000EE80();
          v93 = *(v26 + 24);
          v94 = *v26;
          v95 = [NSString stringWithString:v94];
          (*(*v92 + 152))(v92, v3, 0, v93, v95);
        }
      }
    }

    v18 = 0;
LABEL_125:
    if ((*(a1 + 34) & 1) == 0)
    {
      v76 = sub_10000C798();
      if (((*(*v76 + 352))(v76) & 1) != 0 || (v77 = sub_10000C798(), (*(*v77 + 456))(v77)))
      {
        v78 = sub_10000E92C();
        if ((*(*v78 + 8))(v78))
        {
          v79 = sub_10000E92C();
          sub_100007E30(buf, "AccessoryLogging");
          sub_100007E30(v101, "StoredLogsRetrieved");
          (*(*v79 + 80))(v79, buf, v101, v99 & 1);
          if (v102 < 0)
          {
            operator delete(v101[0]);
          }

          if (SHIBYTE(v120) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    v80 = __p;
    if (__p != v112)
    {
      do
      {
        if (qword_100B50950 != -1)
        {
          sub_100834244();
        }

        if (!sub_100341598(off_100B50948, *v80))
        {
          sub_1004B4DE0(a1, *v80);
        }

        ++v80;
      }

      while (v80 != v112);
    }

    sub_1004B12A0(a1);
    goto LABEL_140;
  }

  if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    v18 = 1;
    goto LABEL_142;
  }

  sub_1008345F4();
  v18 = 1;
LABEL_140:
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

LABEL_142:

  return v18;
}

void sub_1004B3C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004B3CFC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *v7 = a2;
  *&v7[8] = a3;
  *&v7[12] = WORD2(a3);
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v9 = a2 & 1;
    v10 = 1024;
    v11 = (a2 >> 8) & 1;
    v12 = 1024;
    v13 = (a2 >> 24);
    v14 = 1024;
    v15 = BYTE5(a2);
    v16 = 1024;
    v17 = *&v7[6];
    v18 = 1024;
    v19 = a3 >> 16;
    v20 = 1024;
    v21 = WORD1(a2) & 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setW1Logging: isTimeStampPeriodicallyEnabled = %d, isDisableDiagnosticsPeriodicallyEnabled = %d, module = %d, level = %d, log_interval = %d, power_logging_interval = %d, isCrashLoggingDisabled = %d", buf, 0x2Cu);
  }

  *(a1 + 136) = *v7;
  *(a1 + 142) = *&v7[6];
}

void sub_1004B3E20(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109888;
    v5[1] = BYTE1(a2);
    v6 = 1024;
    v7 = BYTE4(a2);
    v8 = 1024;
    v9 = BYTE2(a2);
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setAccessoryLogging: module = %d, level = %d, submodule = %d, device = %d", v5, 0x1Au);
  }

  *(a1 + 433) = a2;
  *(a1 + 435) = BYTE2(a2);
  *(a1 + 436) = BYTE3(a2);
  *(a1 + 437) = BYTE4(a2);
}

void sub_1004B3F38()
{
  v0 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Post an event to trigger AWD Diagnostics ", v1, 2u);
  }

  if (qword_100B540A0 != -1)
  {
    sub_100834630();
  }

  if ((*(*off_100B54098 + 32))(off_100B54098))
  {
    if (qword_100B540A0 != -1)
    {
      sub_100834630();
    }

    sub_1005897E0(off_100B54098, &stru_100AF9310);
  }
}

uint64_t sub_1004B400C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v7 = sub_10000E92C();
  if ((*(*v7 + 8))(v7) && (v8 = sub_10000C798(), (*(*v8 + 352))(v8)))
  {
    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v10 = v14 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v16 = v10;
      v17 = 1024;
      v18 = a3;
      v19 = 1024;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send RequestPeriodically to device %s, type = %d, interval = %d", buf, 0x18u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v11 = sub_10018825C((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834658();
    }

    sub_10002249C(buf);
  }

  else
  {
    v11 = 102;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008346C8();
  }

  return sub_1000DD584(off_100B50A98, v11, 10000);
}

void sub_1004B4208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B4224(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v5 = sub_10000E92C();
  if ((*(*v5 + 8))(v5) && (v6 = sub_10000C798(), (*(*v6 + 352))(v6)))
  {
    v7 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v12 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v14 = v8;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Send CancelRequestPeriodically to device %s, type = %d", buf, 0x12u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v9 = sub_1001885E0((a2 + 128), a3);
    sub_100022214(__p);
    if (v9 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008346F0();
    }

    sub_10002249C(__p);
  }

  else
  {
    v9 = 102;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008346C8();
  }

  return sub_1000DD584(off_100B50A98, v9, 10000);
}

void sub_1004B4410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B442C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 24) = a2;
  *(a1 + 16) = a3;
  sub_1004B4450();
  return 0;
}

void sub_1004B4450()
{
  v0 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "TraceLogCollection - syncLogOnDemand", v1, 2u);
  }

  if (qword_100B540A0 != -1)
  {
    sub_100834630();
  }

  if ((*(*off_100B54098 + 32))(off_100B54098))
  {
    if (qword_100B540A0 != -1)
    {
      sub_100834630();
    }

    sub_1005897E0(off_100B54098, &stru_100AF92C8);
  }
}

void sub_1004B4524(id a1)
{
  if (qword_100B51308 != -1)
  {
    sub_100834760();
  }

  v2 = qword_100B51300;

  sub_1004B4568(v2);
}

uint64_t sub_1004B4568(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 160))(v2))
  {
    if (*(a1 + 448))
    {
      if (*(a1 + 48) == *(a1 + 40))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834828();
        }

        return 312;
      }

      else if (*(a1 + 32) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_1008347EC();
        }

        return 10;
      }

      else
      {
        v3 = sub_1004B22F4(a1, 0, 5, 2u);
        v4 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v30) = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: sendLogCommand returned %d", buf, 8u);
        }

        v5 = sub_10000E92C();
        if ((*(*v5 + 8))(v5))
        {
          sub_1004B2A3C(a1);
          v28[0] = 0;
          v28[1] = 0;
          sub_100007F88(v28, a1 + 64);
          v7 = *(a1 + 40);
          v6 = *(a1 + 48);
          do
          {
            v8 = v6;
            if (v6 == v7)
            {
              v16 = 0;
              goto LABEL_37;
            }

            v6 -= 8;
            v9 = *(v8 - 8);
            v10 = *(v9 + 24) - 8194;
            v11 = v10 > 0xE;
            v12 = (1 << v10) & 0x409B;
          }

          while (v11 || v12 == 0);
          if (qword_100B508F0 != -1)
          {
            sub_10083421C();
          }

          *buf = *(v9 + 16);
          LOWORD(v30) = *(v9 + 20);
          v14 = sub_1000E6554(off_100B508E8, buf, 1);
          v27 = 3;
          if (qword_100B50950 != -1)
          {
            sub_100834244();
          }

          sub_10033C47C(off_100B50948, v14, &v27);
          v15 = v27;
          if ((v27 - 3) <= 0xFFFFFFFD)
          {
            v15 = 2;
            v27 = 2;
          }

          *(a1 + 416) = v15;
          *(a1 + 407) = 1;
          *(a1 + 418) = 0x10000;
          LOBYTE(dword_100B54550) = v15;
          v26 = 0;
          sub_1000216B4(&v26);
          v16 = sub_100189034((v9 + 16), 4u, 5u, &dword_100B54550);
          v17 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v9 + 8);
            *buf = 138543618;
            v30 = v18;
            v31 = 1024;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: Requested trace log from W1 device %{public}@, Left Bud (result = %d)", buf, 0x12u);
          }

          dword_100B6EA30 = dword_100B54550;
          byte_100B6EA34 = byte_100B54554;
          byte_100B6EA39 = 5;
          v19 = *(v9 + 20);
          *(a1 + 409) = *(v9 + 16);
          *(a1 + 413) = v19;
          *(a1 + 415) = 0;
          sub_100022214(&v26);
          if (!v16)
          {
            *(v9 + 40) = 8;
            *(a1 + 32) = 1;
          }

          sub_10002249C(&v26);
LABEL_37:
          if (*(a1 + 32) == 1 && *(a1 + 24))
          {
            v20 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: Starting overall timer", buf, 2u);
            }

            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1004B4AFC;
            v25[3] = &unk_100AEC260;
            v25[4] = a1;
            v21 = [NSTimer timerWithTimeInterval:0 repeats:v25 block:415.0];
            v22 = *(a1 + 128);
            *(a1 + 128) = v21;

            v23 = +[NSRunLoop mainRunLoop];
            [v23 addTimer:*(a1 + 128) forMode:NSDefaultRunLoopMode];
          }

          if (v3 && v8 != v7)
          {
            if (qword_100B50AA0 != -1)
            {
              sub_1008346C8();
            }

            v3 = sub_1000DD584(off_100B50A98, v16, 10000);
          }

          sub_1000088CC(v28);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008347B0();
      }

      return 111;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834774();
    }

    return 2;
  }

  return v3;
}

void sub_1004B4AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004B4AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, v4 + 64);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834864(v4);
  }

  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if (v6 != v5)
  {
    while (1)
    {
      v7 = *v6;
      v17 = v7;
      v8 = *(v7 + 24) - 8194;
      v9 = v8 > 0xE;
      v10 = (1 << v8) & 0x409B;
      if (v9 || v10 == 0)
      {
        break;
      }

      v12 = *(v7 + 40);
      if (v12 != 7)
      {
        goto LABEL_11;
      }

LABEL_16:
      if (++v6 == v5)
      {
        v15 = v18;
        if (v18 != v19)
        {
          do
          {
            v16 = *v15;
            *(v16 + 40) = 4;
            sub_1004B2EF8(v4, v16);
            ++v15;
          }

          while (v15 != v19);
          v15 = v18;
        }

        if (v15)
        {
          v19 = v15;
          operator delete(v15);
        }

        goto LABEL_22;
      }
    }

    v12 = *(v7 + 40);
LABEL_11:
    v9 = v12 > 8;
    v13 = (1 << v12) & 0x182;
    if (!v9 && v13 != 0)
    {
      sub_1000C2484(&v18, &v17);
      v5 = *(v4 + 48);
    }

    goto LABEL_16;
  }

LABEL_22:
  sub_1000088CC(v21);
}

const char *sub_1004B4C94(uint64_t a1, int a2)
{
  if ((a2 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_100AF93D0[(a2 - 1)];
  }
}

uint64_t sub_1004B4CC0(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_100834920();
  }

  v4 = sub_10033E9DC(off_100B50948);
  if (*(a1 + 24) && *(a1 + 16) != 1)
  {
    v6 = v4;
    *(a1 + 16) = 1;
    v7 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "purgeCallback: Returning zero files to sysdiagnose", v8, 2u);
    }

    return sub_100348258(v6, a2, 64);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834934();
    }

    return 12;
  }
}

uint64_t sub_1004B4DC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    LOBYTE(v1) = *(a1 + 16) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1004B4DE0(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 64);
  v4 = sub_1004B1ED8(a1, a2);
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 != v7)
  {
    while (*v6 != v4)
    {
      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_13:
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834970();
    }

    v14 = 312;
  }

  else
  {
    v8 = *(v4 + 40);
    v9 = v8 > 8;
    v10 = (1 << v8) & 0x182;
    if (v9 || v10 == 0)
    {
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v5 + 8);
        *buf = 138543362;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "removeAccessoryLoggingSession: Removing %{public}@", buf, 0xCu);

        v7 = *(a1 + 48);
      }

      if (v7 != v6 + 8)
      {
        memmove(v6, v6 + 8, v7 - (v6 + 8));
      }

      *(a1 + 48) = v7 - 8;
      sub_1004BF53C(v5);
      operator delete();
    }

    *(v4 + 40) = 3;
    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v5 + 8);
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: removeAccessoryLoggingSession: Disconnected from %{public}@ while actively logging", buf, 0xCu);
    }

    v14 = sub_1004B2EF8(a1, v5);
  }

  sub_1000088CC(v18);
  return v14;
}

uint64_t sub_1004B502C(uint64_t a1, uint64_t a2)
{
  if (sub_1000E2C2C(a2))
  {
    return 1;
  }

  return sub_1004B21E0();
}

uint64_t sub_1004B5068(uint64_t a1, unsigned int *a2, int a3, unsigned int a4, unsigned __int8 *a5)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 64);
  v10 = sub_1004B1ED8(a1, a2);
  v11 = qword_100BCE8C8;
  if (v10)
  {
    v12 = v10;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v12 + 8);
      v14 = *(v12 + 40);
      *buf = 138544130;
      v34 = v13;
      v35 = 1024;
      v36 = a3;
      v37 = 1024;
      v38 = a4;
      v39 = 1024;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "recvLoggingHandler: %{public}@, type: %u, len: %u, status: %d", buf, 0x1Eu);
    }

    if (a3 > 31)
    {
      if (a3 == 32)
      {
        v15 = sub_1004B59AC(a1, a2, a4, a5);
        goto LABEL_22;
      }

      if (a3 != 128)
      {
        if (a3 == 1024)
        {
          v15 = sub_1004B6F54(a1, a2, a4, a5);
LABEL_22:
          v24 = v15;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      v27 = sub_10000E92C();
      v28 = (*(*v27 + 8))(v27);
      if (v28)
      {
        v15 = sub_1004B5558(v28, v29, 0, a5);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (a3 == 2)
    {
      v30 = sub_10000E92C();
      if ((*(*v30 + 8))(v30))
      {
        v15 = sub_1004B5398(a1, a2, a4, a5);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (a3 != 4)
    {
LABEL_24:
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100834A34();
      }

      v24 = 3;
      goto LABEL_27;
    }

    v25 = sub_10000E92C();
    if (!(*(*v25 + 8))(v25))
    {
LABEL_23:
      v24 = 2;
      goto LABEL_27;
    }

    v26 = *(v12 + 40);
    if ((v26 - 7) < 2)
    {
      v15 = sub_1004B658C(a1, a2, a4, a5);
      goto LABEL_22;
    }

    if (v26 == 6)
    {
      v15 = sub_1004B62AC(a1, a2, 0, a5);
      goto LABEL_22;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008349AC(v12);
    }

    v24 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_100304810(a2, v16, v17, v18, v19, v20, v21, v22);
      sub_100834AC4(v23, buf);
    }

    v24 = 8;
  }

LABEL_27:
  sub_1000088CC(v32);
  return v24;
}

uint64_t sub_1004B5398(uint64_t a1, uint64_t a2, __int16 a3, const void *a4)
{
  LOWORD(__nitems) = a3;
  v23.tv_sec = 0;
  *&v23.tv_usec = 0;
  gettimeofday(&v23, 0);
  tv_usec = v23.tv_usec;
  __ptr = v23.tv_sec;
  v7 = sub_1004B1ED8(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 24);
    if (v9 == 8194)
    {
      v10 = &unk_100B6E820;
LABEL_9:
      v19 = fopen(v10, "ab");
      if (v19)
      {
        v20 = v19;
        fwrite((a1 + 422), 1uLL, 1uLL, v19);
        fwrite(&__ptr, 1uLL, 4uLL, v20);
        fwrite(&tv_usec, 1uLL, 4uLL, v20);
        fwrite(&__nitems, 1uLL, 2uLL, v20);
        fwrite(a4, 1uLL, __nitems, v20);
        fclose(v20);
        return 0;
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834B04();
        }

        return 1;
      }
    }

    if (v9 == 8201)
    {
      v10 = &unk_100B6E920;
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834B88(v8);
    }

    return 2;
  }

  else
  {
    v11 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834C20(a2, v11, v12, v13, v14, v15, v16, v17);
    }

    return 8;
  }
}

uint64_t sub_1004B5558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = fopen(aPrivateVarMobi_16, "w");
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = a4 + 28;
    v34 = a4;
    v9 = a4 + 21;
    v10 = a4 + 20;
    do
    {
      if (*(a4 + 20 + 40 * v7))
      {
LABEL_4:
        fwrite("Source Device : Addr -> ", 0x18uLL, 1uLL, v6);
        for (i = 0; i != 6; ++i)
        {
          fprintf(v6, "%02x", *(v10 + i));
        }

        fwrite(", Link Key -> ", 0xEuLL, 1uLL, v6);
        for (j = 0; j != 16; ++j)
        {
          fprintf(v6, "%02x", *(v8 + j));
        }

        fputc(10, v6);
      }

      else
      {
        v13 = 0;
        while (v13 != 5)
        {
          if (*(v9 + v13++))
          {
            if ((v13 - 1) <= 4)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }

      ++v7;
      v9 += 40;
      v10 += 40;
      v8 += 40;
    }

    while (v7 != 15);
    v15 = 0;
    v16 = a4 + 620;
    v17 = a4 + 636;
    v18 = a4 + 652;
    v19 = a4 + 621;
    v20 = v34 + 620;
    do
    {
      if (*(v16 + 36 * v15))
      {
LABEL_17:
        fwrite("Magic Device : Hint -> ", 0x17uLL, 1uLL, v6);
        for (k = 0; k != 16; ++k)
        {
          fprintf(v6, "%02x", *(v20 + k));
        }

        fwrite(", Key -> ", 9uLL, 1uLL, v6);
        for (m = 0; m != 16; ++m)
        {
          fprintf(v6, "%02x", *(v17 + m));
        }

        fprintf(v6, ", Ratchet -> %d", *(v18 + 36 * v15));
        fputc(10, v6);
      }

      else
      {
        v23 = 0;
        while (v23 != 15)
        {
          if (*(v19 + v23++))
          {
            if ((v23 - 1) <= 0xE)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      ++v15;
      v19 += 36;
      v20 += 36;
      v17 += 36;
    }

    while (v15 != 5);
    if (*(v34 + 800))
    {
LABEL_30:
      fwrite("Magic IRK -> ", 0xDuLL, 1uLL, v6);
      for (n = 0; n != 16; ++n)
      {
        fprintf(v6, "%02x", *(v34 + 800 + n));
      }

      fwrite(", Magic Key -> ", 0xFuLL, 1uLL, v6);
      for (ii = 0; ii != 16; ++ii)
      {
        fprintf(v6, "%02x", *(v34 + 816 + ii));
      }

      fputc(10, v6);
    }

    else
    {
      v30 = 0;
      while (v30 != 15)
      {
        if (*(v34 + 801 + v30++))
        {
          if ((v30 - 1) <= 0xE)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    if (*(v34 + 832))
    {
LABEL_36:
      fwrite("Couple Addr -> ", 0xFuLL, 1uLL, v6);
      for (jj = 0; jj != 6; ++jj)
      {
        fprintf(v6, "%02x", *(v34 + 832 + jj));
      }

      fwrite(", Link Key -> ", 0xEuLL, 1uLL, v6);
      for (kk = 0; kk != 16; ++kk)
      {
        fprintf(v6, "%02x", *(v34 + 840 + kk));
      }

      fputc(10, v6);
    }

    else
    {
      v32 = 0;
      while (v32 != 5)
      {
        if (*(v34 + 833 + v32++))
        {
          if ((v32 - 1) <= 4)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    fclose(v6);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834CA0();
    }

    return 1;
  }
}

uint64_t sub_1004B59AC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  memset(v105, 0, 31);
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v103 = 0;
  v104 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = sub_1004B1ED8(a1, a2);
  if (!v9)
  {
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834DBC(a2, v13, v14, v15, v16, v17, v18, v19);
    }

    return 8;
  }

  v10 = v9;
  if (!a4)
  {
LABEL_22:
    v26 = qword_100BCE8C8;
    if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      return 3;
    }

    v70 = *(v10 + 8);
    *buf = 138543874;
    *&buf[4] = v70;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 1024;
    *&buf[24] = a3;
    v72 = "recvW1AppDiagnosticsHandler: %{public}@ sent invalid APP Diag data : data->%p, len->%d";
    v73 = buf;
    v74 = v26;
    v75 = 28;
LABEL_65:
    _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v72, v73, v75);

    return 3;
  }

  if (a3 > 453)
  {
    if (a3 != 454)
    {
      if (a3 == 904)
      {
        v79 = 0;
        v11 = 0;
        v12 = 2;
        v76 = 1;
        v77 = 1;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v79 = 0;
    v11 = 0;
    v76 = 0;
    v77 = 1;
  }

  else
  {
    if (a3 != 64)
    {
      if (a3 == 128)
      {
        v11 = 0;
        v12 = 2;
        v79 = 1;
        v76 = 1;
        v77 = 0;
        goto LABEL_19;
      }

LABEL_15:
      v76 = 0;
      v77 = 0;
      v12 = 0;
      v79 = 1;
      v11 = 1;
      goto LABEL_19;
    }

    v76 = 0;
    v77 = 0;
    v11 = 0;
    v79 = 1;
  }

  v12 = 1;
LABEL_19:
  v80 = *(v8 + 1042);
  v21 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(v10 + 8);
    v23 = v10;
    v24 = v8;
    v25 = v22;
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v77;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: DiagInfo received from %{public}@ %d bud, AWD = %d", buf, 0x18u);

    v8 = v24;
    v10 = v23;
  }

  if (v11)
  {
    goto LABEL_22;
  }

  v28 = v12 << 6;
  memcpy((a1 + 150), a4, v28);
  *(a1 + 406) = v28;
  v29 = fopen(aPrivateVarMobi_15, "w");
  if (!v29)
  {
    v47 = v80;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834D38();
    }

    v20 = 1;
    goto LABEL_43;
  }

  v30 = v29;
  v78 = v28;
  v31 = v8;
  v33 = *a4;
  v32 = a4[1];
  v105[0] = *(a4 + 2);
  *(v105 + 15) = *(a4 + 23);
  v88 = *(a4 + 39);
  v89 = *(a4 + 47);
  v86 = *(a4 + 51);
  v87 = *(a4 + 53);
  v34 = *(a4 + 54);
  v35 = *(a4 + 55);
  v104 = *(a4 + 63);
  v103 = v35;
  fwrite("App Diagnostics Info Collected from Accessory Device\n\n", 0x36uLL, 1uLL, v29);
  sub_1000C23E0(v31, buf);
  if (buf[23] >= 0)
  {
    v36 = buf;
  }

  else
  {
    v36 = *buf;
  }

  fprintf(v30, "DeviceName : %s\n", v36);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v44 = sub_100304810(a2, v37, v38, v39, v40, v41, v42, v43);
  fprintf(v30, "Device Bluetooth Address : %s\n", v44);
  v45 = fwrite("\n======Primary Device======\n", 0x1CuLL, 1uLL, v30);
  *buf = v33;
  *&buf[4] = v32;
  *&buf[8] = v105[0];
  *&buf[23] = *(v105 + 15);
  v94 = v88;
  v95 = v89;
  v96 = v86;
  v97 = v87;
  v98 = v34;
  v99 = v103;
  v100 = v104;
  sub_1004B7AC0(v45, v30, buf);
  v83 = 0u;
  v84 = 0u;
  sub_100579608(&v83, 1, v31);
  *(&v84 + 1) = __PAIR64__(v32, v33);
  LOWORD(v84) = WORD6(v105[1]);
  BYTE2(v84) = BYTE14(v105[1]);
  *(&v84 + 3) = *(&v89 + 1);
  BYTE5(v84) = HIBYTE(v89);
  v46 = sub_10000F034();
  (*(*v46 + 56))(v46, &v83);
  if (v34 == 9)
  {
    v48 = "dev-fused";
    v8 = v31;
    v47 = v80;
LABEL_38:
    v49 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v10 + 8);
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2082;
      *&buf[14] = v48;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: %{public}@ fused status : %{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  v8 = v31;
  v47 = v80;
  if (v34 == 1)
  {
    v48 = "prod-fused";
    goto LABEL_38;
  }

LABEL_40:
  if (v76)
  {
    v105[0] = *(a4 + 18);
    *(v105 + 15) = *(a4 + 87);
    v88 = *(a4 + 103);
    v89 = *(a4 + 111);
    v86 = *(a4 + 115);
    v87 = *(a4 + 117);
    v51 = *(a4 + 118);
    v104 = *(a4 + 127);
    v103 = *(a4 + 119);
    v52 = *(a4 + 8);
    v53 = fwrite("\n======Secondary Device======\n", 0x1EuLL, 1uLL, v30);
    *buf = v52;
    *&buf[8] = v105[0];
    *&buf[23] = *(v105 + 15);
    v94 = v88;
    v95 = v89;
    v96 = v86;
    v97 = v87;
    v98 = v51;
    v100 = v104;
    v99 = v103;
    sub_1004B7AC0(v53, v30, buf);
  }

  fclose(v30);
  v20 = 0;
  v28 = v78;
LABEL_43:
  if (v79)
  {
    return v20;
  }

  v54 = a4 + v28;
  bzero(buf, 0x29AuLL);
  bzero(&v83, 0x29AuLL);
  sub_1004B7CF4(v55, buf, a4 + v28 + 4);
  v56 = *(a4 + v28);
  buf[1] = *v54;
  if (v47)
  {
    v102 |= v47;
  }

  v57 = *(v54 + 1);
  *&buf[3] = *(v54 + 1);
  v58 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v59 = *(v10 + 8);
    v60 = v54[1];
    *v90 = 138544130;
    *&v90[4] = v59;
    *&v90[12] = 1024;
    *&v90[14] = v56;
    *&v90[18] = 1024;
    *&v90[20] = v60;
    v91 = 1024;
    v92 = v57;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: Received %{public}@ AWD: awdVersion=%d, data[1]=%d, awdLength=%d", v90, 0x1Eu);
  }

  if (v57 == 386)
  {
    v61 = v54[1];
    v62 = v61 != 0;
  }

  else
  {
    if (v57 < 0x182 || (v62 = v54[1]) == 0)
    {
      v69 = qword_100BCE8C8;
      if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        return 3;
      }

      v70 = *(v10 + 8);
      v71 = v54[1];
      *v90 = 138543874;
      *&v90[4] = v70;
      *&v90[12] = 1024;
      *&v90[14] = v57;
      *&v90[18] = 1024;
      *&v90[20] = v71;
      v72 = "recvW1AppDiagnosticsHandler: %{public}@ sent invalid AWD header awdLength=%d data[1]=%d";
      v73 = v90;
      v74 = v69;
      v75 = 24;
      goto LABEL_65;
    }

    v61 = 1;
  }

  buf[0] = v62;
  buf[2] = v61;
  v101 = *(v10 + 24);
  memset(v90, 0, sizeof(v90));
  sub_100579608(v90, 5, v8);
  *&v90[16] = buf;
  v63 = sub_10000F034();
  v64 = (*(*v63 + 56))(v63, v90);
  v65 = *&buf[3];
  v66 = v76 ^ 1;
  if (*&buf[3] < 0x183u)
  {
    v66 = 1;
  }

  if ((v66 & 1) == 0)
  {
    sub_1004B7CF4(v64, &v83, (v54 + 390));
    if (v47)
    {
      v102 |= v47;
    }

    if (buf[0] == 1)
    {
      v67 = 2;
    }

    else
    {
      v67 = 1;
    }

    LOBYTE(v83) = v67;
    BYTE1(v83) = buf[1];
    BYTE2(v83) = 2;
    *(&v83 + 3) = v65;
    v85 = *(v10 + 24);
    v81[0] = 0;
    v81[1] = 0;
    v82 = 0;
    sub_100579608(v81, 5, v8);
    v82 = &v83;
    v68 = sub_10000F034();
    (*(*v68 + 56))(v68, v81);
  }

  return v20;
}

uint64_t sub_1004B62AC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v7 = a4[4];
  v8 = a4[1];
  v9 = *a4;
  if (v9 == 1 && v8 == 121 && v7 == 1)
  {
    LOBYTE(dword_100B54550) = 2;
    LOBYTE(v18.tm_sec) = 0;
    sub_1000216B4(&v18);
    v11 = sub_100189034(a2, 4u, 5u, &dword_100B54550);
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834FA0();
    }

    goto LABEL_21;
  }

  if (v9 == 2 && v8 == 121 && v7 == 1)
  {
    LOBYTE(v18.tm_sec) = 0;
    sub_1000216B4(&v18);
    v11 = sub_10018825C(a2, 2, 2 * ((5 * *(a1 + 146)) & 0x7FFFu));
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834F30();
    }

    goto LABEL_21;
  }

  if (v8 != 85)
  {
    return 0;
  }

  v14 = fopen(aPrivateVarMobi_14, "a");
  if (v14)
  {
    v15 = v14;
    memset(&v18, 0, sizeof(v18));
    v19 = time(0);
    localtime_r(&v19, &v18);
    fprintf(v15, "%02d/%02d/%02d %02d:%02d:%02d : side = ", v18.tm_mon + 1, v18.tm_mday, v18.tm_year + 1900, v18.tm_hour, v18.tm_min, v18.tm_sec);
    if (v9 == 1)
    {
      v16 = "Left, ";
      v17 = 6;
    }

    else
    {
      v16 = "Right, ";
      v17 = 7;
    }

    fwrite(v16, v17, 1uLL, v15);
    fprintf(v15, "voltage = %dmV, current = %dmA, temperature = %dºC, level = %d%%\n", __rev16(*(a4 + 3)), __rev16(*(a4 + 4)), a4[10], a4[5]);
    fclose(v15);
    if (v9 == 1)
    {
      LOBYTE(v18.tm_sec) = 0;
      sub_1000216B4(&v18);
      v11 = sub_100189034(a2, 4u, 7u, byte_100B5461D);
      if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100834E3C();
      }

LABEL_21:
      sub_10002249C(&v18);
      return v11;
    }

    return 0;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834EAC();
  }

  return 1;
}

void sub_1004B6570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B658C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = *a4;
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  LOWORD(v80) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, buf, 1);
  v10 = sub_1004B1ED8(a1, a2);
  v78 = 0;
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 24) - 8194;
    v13 = v12 > 0xE;
    v14 = (1 << v12) & 0x409B;
    if (!v13 && v14 != 0)
    {
      v77 = v10;
      if (qword_100B50950 != -1)
      {
        sub_100834244();
      }

      sub_10033C1E4(off_100B50948, v9, &v78 + 1, &v78);
      v76 = v78;
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v77 + 8);
        v18 = *(v77 + 24);
        *buf = 138544386;
        v80 = v17;
        v81 = 1024;
        *v82 = a3;
        *&v82[4] = 1024;
        *&v82[6] = v76 != 3;
        v83 = 1024;
        v84 = v18;
        v85 = 1024;
        v86 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: %{public}@ len = %d, isUTPUp = %d, productId = %d, buddyRspSide = %d", buf, 0x24u);
      }

      v19 = v77;
      if (a3 == 1 && v76 != 3 || a3 == 1 && *(v77 + 24) != 8194)
      {
        v20 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v77 + 8);
          *buf = 138543362;
          v80 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: recvW1CrashTraceHandler: Flash in %{public}@ is busy. Retransmit Buddy command", buf, 0xCu);
        }

        sub_1004B7ED4(a1, a2);
        return 10;
      }

      if (a3 < 2)
      {
        v35 = 0;
        v34 = 0;
      }

      else
      {
        v33 = sub_1004B8008(a1, a2, v8, a4 + 1, (a3 - 1));
        v34 = a4[1];
        v35 = v33 == 1;
        v19 = v77;
      }

      v39 = *(a1 + 416);
      if (v8 == v39)
      {
        v41 = a3 == 1 || v34 == 131;
        if ((v41 || v35) && *(v19 + 24) == 8194)
        {
          v39 = v8;
          if (v76 != 3)
          {
            *(a1 + 418) = 0x10000;
            if (v8 == 1)
            {
              v42 = 2;
            }

            else
            {
              v42 = 1;
            }

            LOBYTE(dword_100B54550) = v42;
            v43 = *(v19 + 40);
            if (v43 == 8)
            {
              v46 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v47 = *(v19 + 8);
                *buf = 138543362;
                v80 = v47;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send request to %{public}@ for trace log", buf, 0xCu);
              }

              *(a1 + 407) = 0;
            }

            else if (v43 == 7)
            {
              v44 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v45 = *(v19 + 8);
                *buf = 138543362;
                v80 = v45;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send request to %{public}@ to check crash log existence", buf, 0xCu);
              }
            }

            v48 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(v77 + 8);
              *buf = 138543618;
              v80 = v49;
              v81 = 1024;
              *v82 = dword_100B54550;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send TestEnable command to %{public}@ for the other side, side = %d", buf, 0x12u);
            }

            buf[0] = 0;
            sub_1000216B4(buf);
            v50 = sub_100189034((v9 + 128), 4u, 5u, &dword_100B54550);
            sub_100022214(buf);
            dword_100B6EA30 = dword_100B54550;
            byte_100B6EA34 = byte_100B54554;
            byte_100B6EA39 = 5;
            v51 = *(v9 + 132);
            *(a1 + 409) = *(v9 + 128);
            *(a1 + 413) = v51;
            *(a1 + 415) = 0;
            v19 = v77;
            if (v50 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              sub_100835010();
              v19 = v77;
            }

            sub_10002249C(buf);
            v39 = *(a1 + 416);
          }
        }

        else
        {
          v39 = v8;
        }
      }

      if (v39 == 1)
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      if (v52 == v8 || *(v19 + 24) != 8194 || v76 == 3)
      {
        if (a3 != 1 && v34 != 131 && !v35)
        {
          if (*(v19 + 24) != 8194 || *(v19 + 40) != 8)
          {
            return 0;
          }

          v22 = 0;
          if ((*(a1 + 408) & 1) != 0 || v34 != 121)
          {
            return v22;
          }
        }

        v53 = [*(a1 + 424) count];
        v54 = *(v77 + 40);
        if (v53 > *(a1 + 432))
        {
          if (v54 == 8)
          {
            v55 = *(a1 + 24);
            v56 = qword_100BCE8C8;
            v57 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
            if (v55)
            {
              if (v57)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: TTR or Sysdiagnose - Trace Log Collection Completed", buf, 2u);
              }

              *(v77 + 40) = 5;
              return sub_1004B2EF8(a1, v77);
            }

            if (!v57)
            {
              goto LABEL_85;
            }

            *buf = 0;
            v58 = "recvW1CrashTraceHandler: Internal Settings - Trace Log Collection Completed";
          }

          else
          {
            v56 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_85;
            }

            *buf = 0;
            v58 = "recvW1CrashTraceHandler: Found crash in Audio Accessory device";
          }

          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v58, buf, 2u);
LABEL_85:
          v59 = sub_10000C798();
          if (((*(*v59 + 352))(v59) & 1) != 0 || (v60 = sub_10000C798(), (*(*v60 + 416))(v60)))
          {
            v61 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Triggering Tap-to-Radar popup", buf, 2u);
            }

            v62 = sub_10000EE80();
            v63 = [NSOrderedSet orderedSetWithOrderedSet:*(a1 + 424)];
            v64 = *(v77 + 40);
            v65 = *(v77 + 24);
            v66 = *v77;
            v67 = [NSString stringWithString:v66];
            (*(*v62 + 152))(v62, v63, v64 == 7, v65, v67);

            v22 = 0;
          }

          else
          {
            v68 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v69 = [*(a1 + 424) count];
              *buf = 134217984;
              v80 = v69;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Have %ld logs, but cannot trigger non-iOS pop-up", buf, 0xCu);
            }

            v22 = 2;
          }

          sub_1004B8880(v77);
          v70 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v70 == v71)
          {
            goto LABEL_102;
          }

          v72 = 0;
          do
          {
            v73 = *(*v70 + 40);
            v13 = v73 > 8;
            v74 = (1 << v73) & 0x182;
            if (!v13 && v74 != 0)
            {
              ++v72;
            }

            v70 += 8;
          }

          while (v70 != v71);
          if (!v72)
          {
LABEL_102:
            sub_1004B12A0(a1);
          }

          sub_1004B2A3C(a1);
          return v22;
        }

        if (v54 != 8)
        {
          v22 = 0;
          *(v77 + 40) = 0;
          return v22;
        }
      }

      return 0;
    }

    v36 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(v11 + 8);
      v38 = *(v11 + 24);
      *buf = 138543618;
      v80 = v37;
      v81 = 1024;
      *v82 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: %{public}@ productId = %d unsupported for legacy crash trace handling", buf, 0x12u);
    }

    return 2;
  }

  else
  {
    v23 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v31 = sub_100304810(a2, v24, v25, v26, v27, v28, v29, v30);
      *buf = 141558275;
      v80 = 1752392040;
      v81 = 2081;
      *v82 = v31;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Invalid address %{private, mask.hash}s", buf, 0x16u);
    }

    return 8;
  }
}

uint64_t sub_1004B6F54(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = sub_1004B1ED8(a1, a2);
  if (!a3 || !a4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008350A0();
    }

    return 3;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835398(a2, v13, v14, v15, v16, v17, v18, v19);
    }

    return 8;
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    v11 = *a4;
    if (v11 == 4)
    {
      goto LABEL_6;
    }

    v20 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v9 + 8);
      buf.tm_sec = 138543362;
      *&buf.tm_min = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Stopping inactivity timer for %{public}@", &buf, 0xCu);

      v10 = *(v9 + 32);
    }

    [v10 invalidate];
    v22 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = *a4;
  if (v11 > 0xFC)
  {
    if (v11 == 253)
    {
      return sub_1004B9610(a1, a2);
    }

    if (v11 == 254)
    {
      return sub_1004B9420(a1, a2, a3, a4);
    }

    return sub_1004B914C(a1, a2);
  }

  if (v11 == 6)
  {
    return sub_1004B899C(a1, a2, a3, a4);
  }

  if (v11 == 252)
  {
    if (a3 < 2)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008350DC();
      }

      return 3;
    }

    if (a4[1] != 1)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835118();
      }

      return 3;
    }

    v80 = 0;
    v23 = sub_10000E92C();
    sub_100007E30(&buf, "AccessoryLogging");
    sub_100007E30(v84, "AccessoryLogDWRPopupKey");
    (*(*v23 + 72))(v23, &buf, v84, &v80);
    if (v85 < 0)
    {
      operator delete(*v84);
    }

    if (SHIBYTE(buf.tm_year) < 0)
    {
      operator delete(*&buf.tm_sec);
    }

    if ((v80 & 1) == 0)
    {
      return sub_1004B9948(a1, a2, 5);
    }

    v24 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.tm_sec) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Skipping DWR popup", &buf, 2u);
    }

    return 17;
  }

LABEL_6:
  if (a3 <= 2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835308(v9);
    }

    return 3;
  }

  if (a3 == 3)
  {
    v25 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v9 + 8);
      v27 = *a4;
      v28 = a4[1];
      v29 = a4[2];
      buf.tm_sec = 138544130;
      *&buf.tm_min = v26;
      LOWORD(buf.tm_mday) = 1024;
      *(&buf.tm_mday + 2) = v27;
      HIWORD(buf.tm_mon) = 1024;
      buf.tm_year = v28;
      LOWORD(buf.tm_wday) = 1024;
      *(&buf.tm_wday + 2) = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: recvLogHandler: Ignoring data for %{public}@ shorter with only header: %02x %02x %02x", &buf, 0x1Eu);
    }

    return 3;
  }

  if (v11 == 4)
  {
    return sub_1004B9B18(a1, a2, a3, a4);
  }

  v30 = a4[1];
  v31 = v30 & 0x7F;
  v32 = v31;
  if (*(v9 + 64))
  {
    goto LABEL_45;
  }

  v43 = *(v9 + 40);
  if (v43 <= 8 && ((1 << v43) & 0x182) != 0)
  {
    if ((v30 & 0x7F) != 0)
    {
      v44 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        v71 = *(v9 + 8);
        v72 = *(v9 + 40);
        v73 = sub_1004BA678(v71, *a4);
        v74 = sub_1004BA6F8(v73, a4[2]);
        buf.tm_sec = 138544386;
        *&buf.tm_min = v71;
        LOWORD(buf.tm_mday) = 1024;
        *(&buf.tm_mday + 2) = v72;
        HIWORD(buf.tm_mon) = 1024;
        buf.tm_year = v30 & 0x7F;
        LOWORD(buf.tm_wday) = 2080;
        *(&buf.tm_wday + 2) = v73;
        HIWORD(buf.tm_isdst) = 2080;
        *(&buf.tm_isdst + 1) = v74;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "recvLogHandler: No open log file for %{public}@ (status = %u, packetSeqNum = %u, logType = %s, logDevice = %s)", &buf, 0x2Cu);
      }
    }

    else
    {
      *(v9 + 73) = v11;
      if (v11 == 1)
      {
        *(a1 + 34) = 1;
        v45 = 7;
      }

      else
      {
        v45 = 8;
      }

      *(v9 + 40) = v45;
      *(v9 + 74) = a4[2];
      memset(&buf, 0, sizeof(buf));
      v51 = sub_1004B7E94(v8, &buf);
      v76 = sub_1004BA678(v51, *(v9 + 73));
      v75 = sub_1004BA6F8(v76, *(v9 + 74));
      if (qword_100B50950 != -1)
      {
        sub_100834244();
      }

      v77 = sub_10033F114(off_100B50948, v9 + 16);
      v52 = [NSString stringWithFormat:@"/private/var/mobile/Library/Logs/Bluetooth/Accessory%s_%s_%@_%04d-%02d-%02d-%02d-%02d-%02d.%s", v76, v75, v77, (buf.tm_year + 1900), (buf.tm_mon + 1), buf.tm_mday, buf.tm_hour, buf.tm_min, buf.tm_sec, sub_1004BA7DC(v77, *(v9 + 73))];
      v54 = (v9 + 48);
      v53 = *(v9 + 48);
      *(v9 + 48) = v52;

      v55 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *v54;
        *v84 = 138412290;
        *&v84[4] = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Opening file %@", v84, 0xCu);
      }

      *(v9 + 64) = fopen([*(v9 + 48) UTF8String], "ab");
      *(v9 + 72) = 0;
      v57 = *(v9 + 96);
      if (v57)
      {
        [*(v9 + 104) setObject:v57 forKey:*(v9 + 48)];
        v58 = *(v9 + 96);
        *(v9 + 96) = 0;
      }

      if (*(v9 + 73) == 11)
      {
        v59 = +[NSFileManager defaultManager];
        v81 = NSFileProtectionKey;
        v82 = NSFileProtectionCompleteUnlessOpen;
        v60 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v61 = *v54;
        v79 = 0;
        v62 = [v59 setAttributes:v60 ofItemAtPath:v61 error:&v79];
        v63 = v79;

        if (v62)
        {
          v64 = v63;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_10083518C();
          }

          v65 = +[NSFileManager defaultManager];
          v66 = *v54;
          v78 = v63;
          v67 = [v65 removeItemAtPath:v66 error:&v78];
          v64 = v78;

          if ((v67 & 1) == 0 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_100835200();
          }

          *(v9 + 64) = 0;
        }
      }

      if (*(v9 + 64))
      {
        v32 = 0;
LABEL_45:
        v33 = *(v9 + 72);
        if (v31 != v33)
        {
          v34 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v68 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v68;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v32;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v33;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ seq num mismatch rcvd %d expected %d", &buf, 0x18u);
            LOBYTE(v33) = *(v9 + 72);
          }

          *(v9 + 56) = 1;
          LOBYTE(v31) = v33;
        }

        *(v9 + 72) = (v31 + 1) & 0x7F;
        v35 = *a4;
        v36 = *(v9 + 73);
        if (v35 != v36)
        {
          v37 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v69 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v69;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v35;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v36;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ log type mismatch rcvd %d expected %d", &buf, 0x18u);
          }

          *(v9 + 56) = 1;
        }

        v38 = a4[2];
        v39 = *(v9 + 74);
        if (v38 != v39)
        {
          v40 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v70 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v70;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v38;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v39;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ log device mismatch rcvd %d expected %d", &buf, 0x18u);
          }

          *(v9 + 56) = 1;
        }

        fwrite(a4 + 3, 1uLL, a3 - 3, *(v9 + 64));
        if (v30 >= 0)
        {
          v41 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(v9 + 48);
            buf.tm_sec = 138412290;
            *&buf.tm_min = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Completed writing file %@", &buf, 0xCu);
          }

          sub_1004BA85C(v9);
        }

        return 0;
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835274();
      }
    }

    return 1;
  }

  v46 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(v9 + 8);
    v48 = *(v9 + 40);
    v49 = sub_1004BA678(v47, *a4);
    v50 = sub_1004BA6F8(v49, a4[2]);
    buf.tm_sec = 138544386;
    *&buf.tm_min = v47;
    LOWORD(buf.tm_mday) = 1024;
    *(&buf.tm_mday + 2) = v48;
    HIWORD(buf.tm_mon) = 1024;
    buf.tm_year = v30 & 0x7F;
    LOWORD(buf.tm_wday) = 2080;
    *(&buf.tm_wday + 2) = v49;
    HIWORD(buf.tm_isdst) = 2080;
    *(&buf.tm_isdst + 1) = v50;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Warning: recvLogHandler: Refusing non-AWD log data from %{public}@ (status = %u, packetSeqNum = %u, logType = %s, logDevice = %s)", &buf, 0x2Cu);
  }

  return 6;
}

uint64_t sub_1004B7AC0(int a1, FILE *a2, uint64_t a3)
{
  fprintf(a2, "  Pri A2DP Uptime.. %d\n", *(a3 + 8));
  fprintf(a2, "  Sec A2DP Uptime.. %d\n", *(a3 + 12));
  fprintf(a2, "  Pri HFP Uptime... %d\n", *(a3 + 16));
  fprintf(a2, "  Sec HFP Uptime... %d\n", *(a3 + 20));
  fprintf(a2, "  Pri AAC Uptime... %d\n", *(a3 + 24));
  fprintf(a2, "  Sec AAC Uptime... %d\n", *(a3 + 28));
  fprintf(a2, "  Total Uptime..... %d\n", *(a3 + 32));
  fprintf(a2, "  Num C-Swaps...... %d\n", *a3);
  fprintf(a2, "  Num UC-Swaps..... %d\n", *(a3 + 4));
  fprintf(a2, "  Bud Active FW.... %d.%d.%d\n", *(a3 + 36), *(a3 + 37), *(a3 + 38));
  fprintf(a2, "  Bud Pending FW... %d.%d.%d\n", *(a3 + 39), *(a3 + 40), *(a3 + 41));
  fprintf(a2, "  Bud Previous FW.. %d.%d.%d\n", *(a3 + 42), *(a3 + 43), *(a3 + 44));
  fprintf(a2, "  Bud HW Ver....... %d.%d.%d\n", *(a3 + 45), *(a3 + 46), *(a3 + 47));
  fprintf(a2, "  Case FW Ver...... %d.%d.%d\n", *(a3 + 48), *(a3 + 49), *(a3 + 50));
  fprintf(a2, "  Case HW Ver...... %d.%d.%d\n", *(a3 + 54), *(a3 + 55), *(a3 + 56));
  fprintf(a2, "  Case FWUP Ver.... %d.%d.%d\n", *(a3 + 51), *(a3 + 52), *(a3 + 53));
  return fprintf(a2, "  SCP Ver.......... %d.%d.%d.%d.%d.%d\n", *(a3 + 57), *(a3 + 58), *(a3 + 59), *(a3 + 60), *(a3 + 61), *(a3 + 62));
}

__n128 sub_1004B7CF4(int a1, char *a2, uint64_t a3)
{
  v5 = a2 + 307;
  bzero(a2, 0x29AuLL);
  *(a2 + 5) = *a3;
  *(a2 + 7) = *(a3 + 2);
  *(a2 + 9) = *(a3 + 4);
  *(a2 + 11) = *(a3 + 6);
  *(a2 + 15) = *(a3 + 10);
  *(a2 + 19) = *(a3 + 14);
  *(a2 + 23) = *(a3 + 18);
  *(a2 + 27) = *(a3 + 22);
  *(a2 + 31) = *(a3 + 26);
  *(a2 + 35) = *(a3 + 30);
  *(a2 + 39) = *(a3 + 34);
  *(a2 + 43) = *(a3 + 38);
  *(a2 + 47) = *(a3 + 42);
  v6 = *(a3 + 46);
  v7 = *(a3 + 62);
  v8 = *(a3 + 78);
  *(a2 + 99) = *(a3 + 94);
  *(a2 + 83) = v8;
  *(a2 + 67) = v7;
  *(a2 + 51) = v6;
  v9 = *(a3 + 110);
  v10 = *(a3 + 126);
  v11 = *(a3 + 142);
  *(a2 + 163) = *(a3 + 158);
  *(a2 + 147) = v11;
  *(a2 + 131) = v10;
  *(a2 + 115) = v9;
  v12 = *(a3 + 174);
  v13 = *(a3 + 190);
  v14 = *(a3 + 206);
  *(a2 + 227) = *(a3 + 222);
  *(a2 + 211) = v14;
  *(a2 + 195) = v13;
  *(a2 + 179) = v12;
  v15 = *(a3 + 238);
  v16 = *(a3 + 254);
  v17 = *(a3 + 286);
  *(a2 + 275) = *(a3 + 270);
  *(a2 + 291) = v17;
  *(a2 + 259) = v16;
  *(a2 + 243) = v15;
  *v5 = *(a3 + 302);
  v18 = *(a3 + 310);
  *(a2 + 323) = *(a3 + 318);
  *(a2 + 315) = v18;
  v19 = *(a3 + 322);
  *(a2 + 335) = *(a3 + 330);
  *(a2 + 327) = v19;
  v20 = *(a3 + 334);
  *(a2 + 357) = *(a3 + 350);
  *(a2 + 341) = v20;
  result = *(a3 + 354);
  *(a2 + 373) = *(a3 + 366);
  *(a2 + 361) = result;
  *(v5 + 16) = *(a3 + 382);
  *(v5 + 41) = *(a3 + 384);
  return result;
}

void sub_1004B7ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B1ED8(a1, a2);
  if (*(a1 + 448))
  {
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 415) < 5u)
      {
        v20 = sub_100017F4C();
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1004BE78C;
        v21[3] = &unk_100ADF8F8;
        v21[4] = a1;
        sub_10008E008(v20, 10000, v21);
      }

      else
      {
        v6 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835454(a1, v6, v7, v8, v9, v10, v11, v12);
        }

        *(v5 + 40) = 0;
      }
    }

    else
    {
      v13 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008354F0(a2, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835418();
  }
}

uint64_t sub_1004B8008(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = *a4;
  v11 = a4[3];
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  memset(&v42[64], 0, 56);
  *v42 = *a2;
  *&v42[4] = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, v42, 1);
  v13 = sub_1004B1ED8(a1, a2);
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v23 = v13;
    if (v10 == 133)
    {
      if (*(a1 + 407) == 1 && *(v13 + 40) == 8 && *(a1 + 416) != a3)
      {
        result = 0;
        *(a1 + 408) = 1;
        return result;
      }

      goto LABEL_15;
    }

    if (v10 == 129)
    {
      v24 = 1;
LABEL_18:
      *v42 = time(0);
      localtime_r(v42, &v42[64]);
      *v42 = *&v42[64];
      sub_1004BED8C(a1, &unk_100B6EA3A, a2, 1);
      *v42 = *&v42[64];
      sub_1004BED8C(a1, &unk_100B6EB3A, a2, 2);
      if (*(v23 + 40) == 7)
      {
        *v42 = *&v42[64];
        sub_1004BED8C(a1, &unk_100B6EC3A, a2, 3);
      }

      if (*(v23 + 24) == 8201)
      {
        *v42 = *&v42[64];
        sub_1004BED8C(a1, &unk_100B6ED3A, a2, 8);
      }

      if (v11 == 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v10 == 133 || (v25 & 1) != 0)
      {
        if (v10 == 133)
        {
          sleep(5u);
LABEL_42:
          v27 = *(a1 + 418);
          v28 = *(a1 + 420);
LABEL_43:
          sub_1004BE980(a1, a2, 3, a3, v27, 246, v28);
          result = 0;
          v29 = *(a1 + 418) + 246;
LABEL_44:
          *(a1 + 418) = v29;
          return result;
        }
      }

      else
      {
        result = 1;
        if (v10 != 121 || v11 != 1 || (*(a1 + 407) & 1) != 0 || *(v23 + 40) != 8)
        {
          return result;
        }
      }

      if (v24)
      {
        *v42 = 0uLL;
        sub_100579608(v42, 0, v12);
        v26 = sub_10000F034();
        (*(*v26 + 56))(v26, v42);
      }

      goto LABEL_42;
    }

    if (v10 == 121 && v11 == 1)
    {
      if ((*(a1 + 407) & 1) == 0 && *(v13 + 40) == 8 && *(a1 + 408) == 1)
      {
LABEL_15:
        v24 = 0;
        goto LABEL_18;
      }

LABEL_47:
      v30 = *(v13 + 40);
      if (v30 == 8)
      {
        if (*(a1 + 407) != 1)
        {
          return 0;
        }

        sub_1004BE980(a1, a2, 5, a3, 0, 0, 0);
        if (*(v23 + 24) != 8194)
        {
          return 0;
        }

        sleep(1u);
        if (a3 == 1)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        v31 = a1;
        v32 = a2;
        v33 = 5;
        goto LABEL_71;
      }

      if (v30 == 7)
      {
        if (*(a1 + 141) != 8)
        {
          v31 = a1;
          v32 = a2;
          v33 = 6;
LABEL_70:
          v34 = a3;
LABEL_71:
          sub_1004BE980(v31, v32, v33, v34, 0, 0, 0);
          return 0;
        }

        goto LABEL_67;
      }

      return 0;
    }

    if (v10 == 121)
    {
      if (v11 == 1)
      {
        goto LABEL_47;
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835674();
      }

      return 1;
    }

    result = 0;
    if (v10 > 134)
    {
      if (v10 == 139)
      {
LABEL_68:
        v31 = a1;
        v32 = a2;
        v33 = 2;
        goto LABEL_70;
      }

      if (v10 != 135)
      {
        return result;
      }

LABEL_67:
      if (*(a1 + 142) != 100000)
      {
        v31 = a1;
        v32 = a2;
        v33 = 7;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    if (v10 != 123)
    {
      if (v10 != 131)
      {
        return result;
      }

      usleep(0x7A120u);
      return 0;
    }

    if (v11 != 1)
    {
      return 1;
    }

    usleep(0x186A0u);
    v35 = *(a1 + 420) - 1;
    if (v35 <= 8 && ((0x187u >> v35) & 1) != 0 && (v36 = fopen(*(&off_100AF9418 + (*(a1 + 420) - 1)), "ab")) != 0)
    {
      v37 = v36;
      fwrite(a4 + 4, 1uLL, a5 - 4, v36);
      fclose(v37);
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008355F0();
    }

    v38 = *(a1 + 420);
    if (v38 > 2)
    {
      if (v38 != 3)
      {
        if (v38 != 8)
        {
          if (v38 == 9)
          {
            if (*(a1 + 418) != 0x2000)
            {
              v38 = 9;
              goto LABEL_116;
            }

            v39 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Log collection for MCU1 and MCU2 are completed.", v42, 2u);
            }

            sub_1004BEFFC(a1, &unk_100B6EE3A);
            goto LABEL_112;
          }

LABEL_114:
          if (v38 > 9 || ((1 << v38) & 0x302) == 0)
          {
LABEL_117:
            if (v38 <= 9 && ((1 << v38) & 0x302) != 0 && *(a1 + 418) == 8118)
            {
              sub_1004BE980(a1, a2, 3, a3, 8118, 74, v38);
              result = 0;
              v29 = *(a1 + 418) + 74;
              goto LABEL_44;
            }

            if ((v38 & 0xFFFE) != 2)
            {
              return 0;
            }

            goto LABEL_122;
          }

LABEL_116:
          v27 = *(a1 + 418);
          if (v27 >> 1 <= 0xFDA)
          {
            goto LABEL_123;
          }

          goto LABEL_117;
        }

        if (*(a1 + 418) == 0x2000)
        {
          sub_1004BEFFC(a1, &unk_100B6ED3A);
          if (*(v23 + 24) != 8201)
          {
LABEL_113:
            v38 = *(a1 + 420);
            goto LABEL_114;
          }

          v41 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Log collection for MCU1 is completed.", v42, 2u);
          }

LABEL_112:
          sub_1004BE980(a1, a2, 4, a3, 0, 0, 0);
          goto LABEL_113;
        }

LABEL_111:
        v38 = 8;
        goto LABEL_116;
      }

      if (*(a1 + 418) == 4096)
      {
        sub_1004BEFFC(a1, &unk_100B6EC3A);
        if (*(v23 + 24) != 8201)
        {
          goto LABEL_112;
        }

        v40 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Start logging for MCU1", v42, 2u);
        }

        goto LABEL_110;
      }

      LOBYTE(v38) = 3;
LABEL_122:
      v27 = *(a1 + 418);
      if (v27 > 0xF5F)
      {
        if (v27 == 3936)
        {
          sub_1004BE980(a1, a2, 3, a3, 3936, 160, v38);
          result = 0;
          v29 = *(a1 + 418) + 160;
          goto LABEL_44;
        }

        return 0;
      }

LABEL_123:
      v28 = v38;
      goto LABEL_43;
    }

    if (v38 == 1)
    {
      if (*(a1 + 418) != 0x2000)
      {
        v38 = 1;
        goto LABEL_116;
      }

      LOWORD(v38) = 2;
    }

    else
    {
      if (v38 != 2)
      {
        goto LABEL_114;
      }

      if (*(a1 + 418) != 4096)
      {
        LOBYTE(v38) = 2;
        goto LABEL_122;
      }

      sub_1004BEFFC(a1, &unk_100B6EA3A);
      sub_1004BEFFC(a1, &unk_100B6EB3A);
      if (*(v23 + 40) != 7)
      {
        if (*(v23 + 24) != 8201)
        {
          goto LABEL_112;
        }

LABEL_110:
        *(a1 + 418) = 0x80000;
        goto LABEL_111;
      }

      LOWORD(v38) = 3;
    }

    v27 = 0;
    *(a1 + 420) = v38;
    *(a1 + 418) = 0;
    goto LABEL_123;
  }

  v15 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835570(a2, v15, v16, v17, v18, v19, v20, v21);
  }

  return 8;
}

id sub_1004B8880(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  *(a1 + 40) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;

  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    fclose(v4);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = -256;
  *(a1 + 74) = -1;
  [*(a1 + 80) removeAllObjects];
  v5 = *(a1 + 96);
  *(a1 + 96) = 0;

  [*(a1 + 104) removeAllObjects];
  v6 = *(a1 + 24) - 8194;
  if (v6 > 0xE || ((1 << v6) & 0x409B) == 0)
  {
    v8 = *(a1 + 80);
    if (qword_100B50950 != -1)
    {
      sub_100834920();
    }

    v9 = sub_10033F3C8(off_100B50948, a1 + 16);
    [v8 addObject:v9];
  }

  result = [*(a1 + 80) count];
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_1004B899C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_100B6EA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EA28))
  {
    qword_100B6EA20 = [NSDate dateWithTimeIntervalSince1970:315572400.0];
    __cxa_guard_release(&qword_100B6EA28);
  }

  v7 = sub_1004B1ED8(a1, a2);
  v58 = *a2;
  v59 = *(a2 + 4);
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  v8 = sub_1000E6554(off_100B508E8, &v58, 0);
  v57 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "AccessoryLogCrashPopupKey");
  (*(*v9 + 72))(v9, buf, __p, &v57);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
  }

  sub_1000C23E0(v8, buf);
  if (v63 >= 0)
  {
    v10 = buf;
  }

  else
  {
    v10 = *buf;
  }

  v53 = *a2;
  v54 = *(a2 + 4);
  sub_1000BE6F8(&v53, __p);
  if (v56 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [NSString stringWithUTF8String:v11];
  v13 = [NSString stringWithFormat:@"Accessory %s %@ crashed before this connection, it might appear as a timeout or remote terminated connection", v10, v12];

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
  }

  v14 = v13;
  sub_1001C4B04([v13 UTF8String]);
  if (v7)
  {
    if ((*(a1 + 32) & 1) != 0 || (v15 = *(v7 + 40), v15 <= 8) && ((1 << v15) & 0x182) != 0)
    {
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v7 + 8);
        v18 = *(a1 + 32);
        v19 = *(v7 + 40);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1024;
        v61 = v18;
        v62 = 1024;
        v63 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: recvCrashAvailableHandler: Refusing crash log available from %{public}@ (busy %d) (status %d)", buf, 0x18u);
      }

      v20 = 10;
      goto LABEL_28;
    }

    v30 = sub_10000E92C();
    if (!(*(*v30 + 8))(v30) || (v57 & 1) != 0 || !sub_1000E2C2C(v8) && (sub_1004B21E0() & 1) == 0)
    {
      v31 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_10000E92C();
        v33 = (*(*v32 + 8))(v32);
        if (sub_1000E2C2C(v8))
        {
          v34 = 1;
        }

        else
        {
          v34 = sub_1004B21E0();
        }

        *buf = 67109376;
        *&buf[4] = v33;
        *&buf[8] = 1024;
        *&buf[10] = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Dismissing; internal build %d, AACP stored logging possible %d", buf, 0xEu);
      }

      goto LABEL_46;
    }

    v35 = sub_10000C798();
    if (((*(*v35 + 352))(v35) & 1) == 0)
    {
      v36 = sub_10000C798();
      if (((*(*v36 + 416))(v36) & 1) == 0)
      {
        v37 = sub_10000C798();
        if (((*(*v37 + 456))(v37) & 1) == 0)
        {
          v51 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v20 = 2;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Ignoring available crash (unsupported platform)", buf, 2u);
          }

          else
          {
            v20 = 2;
          }

          goto LABEL_28;
        }
      }
    }

    [qword_100B6EA20 timeIntervalSinceNow];
    v39 = v38;
    if (v38 < 0.0 && v38 > -60.0)
    {
      v40 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = -v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Suppressing crash notification (%f seconds elapsed)", buf, 0xCu);
      }

LABEL_46:
      v20 = sub_1004B22F4(a1, a2, 6, 1u);
      goto LABEL_28;
    }

    v41 = +[NSDate date];
    v42 = qword_100B6EA20;
    qword_100B6EA20 = v41;

    v44 = sub_1004BAA70(v43, a3, a4);
    v45 = *(v7 + 96);
    *(v7 + 96) = v44;

    v46 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(v7 + 8);
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Crash log from %{public}@ available, informing user", buf, 0xCu);
    }

    sub_1000E2D2C(v8, 0xAu, buf);
    if (v63 >= 0)
    {
      v48 = buf;
    }

    else
    {
      v48 = *buf;
    }

    v49 = [NSString stringWithUTF8String:v48];
    if (SHIBYTE(v63) < 0)
    {
      operator delete(*buf);
    }

    v50 = sub_10000EE80();
    (*(*v50 + 144))(v50, *(v7 + 16) | (*(v7 + 20) << 32), *(v7 + 24), *v7, v49);

    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_100304810(a2, v21, v22, v23, v24, v25, v26, v27);
      sub_1008356B0(v28, buf);
    }

    v20 = 8;
  }

LABEL_28:

  return v20;
}

uint64_t sub_1004B914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B1ED8(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    v7 = v6 > 8;
    v8 = (1 << v6) & 0x182;
    if (v7 || v8 == 0)
    {
      v24 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v5 + 8);
        v26 = *(v5 + 40);
        v32 = 138543618;
        v33 = v25;
        v34 = 1024;
        LODWORD(v35) = v26;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: recvLogCompleteHandler: Refusing log complete from %{public}@ (status %d)", &v32, 0x12u);
      }

      return 6;
    }

    else
    {
      if (*(v4 + 64))
      {
        v10 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v5 + 48);
          v32 = 138412290;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: recvLogCompleteHandler: Received log complete while %@ still open; still sending possibly corrupted file", &v32, 0xCu);
        }

        *(v5 + 56) = 1;
        sub_1004BA85C(v5);
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v20 = [*(v5 + 80) count];
      v21 = qword_100BCE8C8;
      if (v20 <= *(v5 + 88))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          v29 = *(v5 + 8);
          v30 = *(v5 + 40);
          v32 = 138543618;
          v33 = v29;
          v34 = 1024;
          LODWORD(v35) = v30;
          v31 = v29;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "recvLogCompleteHandler: %{public}@ reports no log file to send (status %d)", &v32, 0x12u);

          v21 = qword_100BCE8C8;
        }

        v12 = 12;
      }

      *(v5 + 40) = 5;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v5 + 8);
        v23 = [*(v5 + 80) count];
        v32 = 138543618;
        v33 = v22;
        v34 = 2048;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "recvLogCompleteHandler: %{public}@ session complete, file count %lu", &v32, 0x16u);
      }

      sub_1004B2EF8(a1, v5);
    }
  }

  else
  {
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008356F0(a2, v13, v14, v15, v16, v17, v18, v19);
    }

    return 8;
  }

  return v12;
}

uint64_t sub_1004B9420(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004B1ED8(a1, a2);
  if (v8)
  {
    v9 = v8;
    if ((*(a1 + 32) & 1) == 0 && ((v10 = *(v8 + 40), v11 = v10 > 8, v12 = (1 << v10) & 0x182, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
    {
      v26 = sub_1004BAA70(v8, a3, a4);
      v27 = *(v9 + 96);
      *(v9 + 96) = v26;

      v28 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(v9 + 8);
        v30 = 138543362;
        v31 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "recvLogForceSendHandler: Device %{public}@ initiating forced logging session", &v30, 0xCu);
      }

      *(a1 + 33) = 1;
      sub_1004B2C9C(a1, v9);
      return 0;
    }

    else
    {
      v14 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v9 + 8);
        v16 = *(a1 + 32);
        v17 = *(v9 + 40);
        v30 = 138543874;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        v34 = 1024;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: recvLogForceSendHandler: Refusing log force send from %{public}@ (busy %d) (status %d)", &v30, 0x18u);
      }

      return 2;
    }
  }

  else
  {
    v19 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835770(a2, v19, v20, v21, v22, v23, v24, v25);
    }

    return 8;
  }
}

uint64_t sub_1004B9610(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B1ED8(a1, a2);
  v4 = sub_10000E92C();
  if (!(*(*v4 + 8))(v4))
  {
    return 2;
  }

  v5 = sub_10000C798();
  if (!(*(*v5 + 352))(v5))
  {
    return 2;
  }

  v6 = sub_10000C798();
  if (!(*(*v6 + 456))(v6))
  {
    return 2;
  }

  if ((*(a1 + 32) & 1) != 0 || (v7 = *(v3 + 40), v7 <= 8) && ((1 << v7) & 0x182) != 0)
  {
    v8 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v3 + 8);
      v10 = *(a1 + 32);
      v11 = *(v3 + 40);
      *buf = 138543874;
      *&buf[4] = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: recvStoredLogAvailableHandler: Refusing stored log available from %{public}@ (busy %d) (status %d)", buf, 0x18u);
    }

    return 10;
  }

  else
  {
    v21 = 0;
    v13 = sub_10000E92C();
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(__p, "SuppressAllPopups");
    v14 = (*(*v13 + 72))(v13, buf, __p, &v21);
    v15 = v21;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v14 & v15;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

    if (v16)
    {
      v17 = sub_10000E92C();
      sub_100007E30(buf, "AccessoryLogging");
      sub_100007E30(__p, "StoredLogAvailable");
      (*(*v17 + 80))(v17, buf, __p, 1);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v18 = sub_10000EE80();
      (*(*v18 + 168))(v18, 0, 3, *(v3 + 24));
    }

    return 0;
  }
}

void sub_1004B9904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B9948(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = sub_1004B1ED8(a1, a2);
  v20 = *a2;
  v21 = *(a2 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  v6 = sub_1000E6554(off_100B508E8, &v20, 0);
  v7 = *sub_10000C798();
  if ((*(v7 + 352))())
  {
    if (sub_1000E2C2C(v6) || (sub_1004B21E0() & 1) != 0)
    {
      if (v5)
      {
        v8 = sub_10000EE80();
        (*(*v8 + 160))(v8, *a2 | (*(a2 + 2) << 32), a3, *(v5 + 24));
        return 0;
      }

      else
      {
        v11 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083582C(a2, v11, v12, v13, v14, v15, v16, v17);
        }

        return 8;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008357F0();
      }

      return 11;
    }
  }

  else
  {
    v10 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      v9 = 2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: recvFileRadarRequestHandler: Only supported on iOS", v19, 2u);
    }

    else
    {
      return 2;
    }
  }

  return v9;
}

uint64_t sub_1004B9B18(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, buf, 1);
  v8 = a3 - 4;
  if (a3 <= 4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083591C();
    }

    return 3;
  }

  v10 = a4[3] & 0x3F;
  if (v10 < 0x26)
  {
    v11 = v7;
    v12 = a4[5];
    if ((v12 - 1) > 0xB)
    {
      v13 = 0;
    }

    else
    {
      v13 = word_1008A8838[38 * a4[5] + v10];
    }

    v14 = qword_100BCE8C8;
    if (v13 != v8)
    {
      v18 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        v19 = sub_1004BAC98(v18, v10);
        *buf = 67110146;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = v19;
        *&buf[18] = 1024;
        *&buf[20] = v12;
        *&buf[24] = 1024;
        *&buf[26] = v13;
        *&buf[30] = 1024;
        *&buf[32] = v8;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "recvAwdHandler: Unexpected AWD data length for awdDataType: %u (%s), awdVersion %u: expected len %u actual %u", buf, 0x24u);
      }

      return 3;
    }

    v15 = *(v7 + 1042);
    v16 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = sub_1004BAC98(v16, v10);
      *buf = 67109634;
      *&buf[4] = v10;
      *&buf[8] = 2080;
      *&buf[10] = v17;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "recvAwdHandler: awdDataType = %u (%s), awdVersion = %u", buf, 0x18u);
    }

    result = 0;
    switch(v10)
    {
      case 0:
        bzero(buf, 0x29AuLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 5, v11);
        v26 = buf;
        if (v15)
        {
          v40 |= v15;
        }

        goto LABEL_44;
      case 1:
        bzero(buf, 0x313uLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v21 = 6;
        goto LABEL_43;
      case 2:
        v28 = 0u;
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 7, v11);
        v26 = buf;
        if (v15)
        {
          *&buf[134] |= v15;
        }

        goto LABEL_44;
      case 3:
        memset(buf, 0, 63);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 8, v11);
        v26 = buf;
        if (v15)
        {
          *&buf[57] |= v15;
        }

        goto LABEL_44;
      case 4:
        memset(buf, 0, 55);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v21 = 9;
        goto LABEL_43;
      case 5:
        v39[0] = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        memset(v32, 0, sizeof(v32));
        v30 = 0u;
        v31 = 0u;
        memset(v29, 0, sizeof(v29));
        v28 = 0u;
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 10, v11);
        v26 = buf;
        if (v15)
        {
          *&buf[23] |= v15;
        }

        goto LABEL_44;
      case 6:
        v28 = 0u;
        memset(v29, 0, 25);
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 11, v11);
        v26 = buf;
        if (v15)
        {
          *&buf[20] |= v15;
        }

        goto LABEL_44;
      case 7:
        v28 = 0u;
        memset(v29, 0, 17);
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v21 = 12;
        goto LABEL_43;
      case 8:
        v31 = 0u;
        memset(v32, 0, 26);
        v30 = 0u;
        v28 = 0u;
        memset(v29, 0, sizeof(v29));
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v21 = 13;
LABEL_43:
        sub_100579608(&v24, v21, v11);
        v26 = buf;
LABEL_44:
        v22 = sub_10000F034();
        (*(*v22 + 56))(v22, &v24);
        goto LABEL_62;
      case 9:
        bzero(buf, 0x3AEuLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 14;
        goto LABEL_61;
      case 10:
        bzero(buf, 0x225uLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 15;
        goto LABEL_61;
      case 11:
        memset(buf, 0, 94);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 16;
        goto LABEL_61;
      case 13:
        memset(buf, 0, 112);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 18;
        goto LABEL_61;
      case 14:
        memset(buf, 0, 139);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 19;
        goto LABEL_61;
      case 15:
        memset(buf, 0, 62);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 20;
        goto LABEL_61;
      case 16:
        memset(buf, 0, 84);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 21;
        goto LABEL_61;
      case 17:
        bzero(buf, 0x21FuLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100579608(&v24, 22, v11);
        v26 = buf;
        if (v15)
        {
          *&buf[23] |= v15;
        }

        goto LABEL_62;
      case 18:
        bzero(buf, 0x2A9uLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 23;
        goto LABEL_61;
      case 19:
        memset(buf, 0, 46);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 24;
        goto LABEL_61;
      case 20:
        memset(buf, 0, 59);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 25;
        goto LABEL_61;
      case 23:
        bzero(buf, 0x36BuLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 28;
        goto LABEL_61;
      case 24:
        memset(buf, 0, 50);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 29;
        goto LABEL_61;
      case 25:
        memset(buf, 0, 41);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 30;
        goto LABEL_61;
      case 26:
        bzero(buf, 0x2DDuLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 31;
        goto LABEL_61;
      case 27:
        memset(buf, 0, 122);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 32;
        goto LABEL_61;
      case 28:
        memset(buf, 0, 110);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 33;
        goto LABEL_61;
      case 29:
        memset(buf, 0, 110);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 34;
        goto LABEL_61;
      case 30:
        v38 = 0u;
        memset(v39, 0, 29);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v31 = 0u;
        memset(v32, 0, sizeof(v32));
        v30 = 0u;
        v28 = 0u;
        memset(v29, 0, sizeof(v29));
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 35;
        goto LABEL_61;
      case 31:
        memset(buf, 0, 63);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 36;
        goto LABEL_61;
      case 33:
        memset(buf, 0, 78);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 37;
        goto LABEL_61;
      case 35:
        memset(buf, 0, 89);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 38;
        goto LABEL_61;
      case 36:
        bzero(buf, 0x347uLL);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 39;
        goto LABEL_61;
      case 37:
        memset(buf, 0, 38);
        memcpy(buf, a4 + 4, v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20 = 40;
LABEL_61:
        sub_100579608(&v24, v20, v11);
        v26 = buf;
LABEL_62:
        v23 = sub_10000F034();
        (*(*v23 + 48))(v23, &v24);
        result = 0;
        break;
      default:
        return result;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008358AC();
    }

    return 2;
  }

  return result;
}

const char *sub_1004BA678(uint64_t a1, int a2)
{
  if (a2 - 1) < 0xB && ((0x757u >> (a2 - 1)))
  {
    return (&off_100AF9460)[(a2 - 1)];
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083598C();
  }

  return "UnknownType";
}

const char *sub_1004BA6F8(uint64_t a1, int a2)
{
  if (a2 == 255)
  {
    return "All";
  }

  v2 = a2 & 0x7F;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = a2;
      v4 = "RightPrimary";
      v5 = "RightSecondary";
LABEL_15:
      if (v3 < 0)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    if (v2 == 4)
    {
      return "Case";
    }
  }

  else
  {
    if ((a2 & 0x7F) == 0)
    {
      return "Single";
    }

    if (v2 == 1)
    {
      v3 = a2;
      v4 = "LeftPrimary";
      v5 = "LeftSecondary";
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008359FC();
  }

  return "UnknownDevice";
}

const char *sub_1004BA7DC(uint64_t a1, int a2)
{
  if (a2 - 1) < 0xB && ((0x757u >> (a2 - 1)))
  {
    return (&off_100AF94B8)[(a2 - 1)];
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083598C();
  }

  return "UnknownExt";
}

void sub_1004BA85C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_100B6EF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EF58))
  {
    qword_100B6EF50 = [@"/private/var/mobile/Library/Logs/Bluetooth/Accessory" length];
    __cxa_guard_release(&qword_100B6EF58);
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    fclose(v2);
    *(a1 + 64) = 0;
    if (*(a1 + 56) == 1)
    {
      v3 = [NSMutableString stringWithString:*(a1 + 48)];
      [v3 insertString:@"Corrupt" atIndex:qword_100B6EF50];
      v4 = +[NSFileManager defaultManager];
      v5 = *(a1 + 48);
      v10 = 0;
      v6 = [v4 moveItemAtPath:v5 toPath:v3 error:&v10];
      v7 = v10;

      v8 = qword_100BCE8C8;
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "closeCurrentLogFile: Renaming potentially corrupt file to %@", buf, 0xCu);
        }

        objc_storeStrong((a1 + 48), v3);
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835A6C();
      }
    }

    [*(a1 + 80) addObject:*(a1 + 48)];
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 56) = 0;
  }
}

id sub_1004BAA70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835C64();
    }

LABEL_19:
    v12 = 0;
    goto LABEL_24;
  }

  if (((8 * *(a3 + 3)) | 4) != a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835AE0();
    }

    goto LABEL_19;
  }

  v4 = [NSMutableArray arrayWithCapacity:*(a3 + 3)];
  if (*(a3 + 3))
  {
    v5 = 0;
    v6 = (a3 + 4);
LABEL_7:
    v7 = 4;
    v8 = v6;
    while (1)
    {
      v9 = *v8;
      if (*v8)
      {
        if (!((v9 & 0x80) != 0 ? __maskrune(v9, 0x40000uLL) : _DefaultRuneLocale.__runetype[v9] & 0x40000))
        {
          break;
        }
      }

      ++v8;
      if (!--v7)
      {
        if (*(a3 + 4 + 8 * v5 + 4))
        {
          v11 = [NSData dataWithBytes:a3 + 4 + 8 * v5 length:8];
          [v4 setObject:v11 atIndexedSubscript:v5];

          ++v5;
          v6 += 8;
          if (v5 < *(a3 + 3))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }

        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835BE4();
        }

LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835B64();
    }

    goto LABEL_22;
  }

LABEL_16:
  v12 = v4;
LABEL_23:

LABEL_24:

  return v12;
}

const char *sub_1004BAC98(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x25)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100AF9510)[a2];
  }
}

id sub_1004BACBC(uint64_t a1, uint64_t a2)
{
  v47 = objc_opt_new();
  v65 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "CrashAnalyticsTestMode");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v65);
  v4 = v65;
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v3 & v4;
  if ((v73 & 0x80000000) == 0)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_7:
    v6 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Test mode flag is set", buf, 2u);
    }

    v7 = sub_10000E92C();
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(__p, "CrashAnalyticsTestMode");
    (*(*v7 + 80))(v7, buf, __p, 0);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    if (v73 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_13;
  }

  operator delete(*buf);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_13:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = *(a2 + 80);
  v8 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (!v8)
  {
    v52 = 0;
    goto LABEL_81;
  }

  v52 = 0;
  v9 = *v60;
  v48 = kOSALogOptionOverrideFilePrefix;
  do
  {
    v10 = 0;
    do
    {
      if (*v60 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v59 + 1) + 8 * v10);
      if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash"])
      {
        if ([v11 hasSuffix:@".bin"])
        {
          v12 = [*(a2 + 104) objectForKey:v11];
          if (!v12)
          {
            v18 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: No metadata for %@", buf, 0xCu);
            }

            goto LABEL_65;
          }

          v13 = [NSData dataWithContentsOfFile:v11];
          v14 = v13;
          if (!v13 || ![v13 length])
          {
            v17 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not read %@", buf, 0xCu);
            }

            goto LABEL_64;
          }

          if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_RightPrimary"])
          {
            v15 = @"right";
          }

          else
          {
            if (([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_LeftPrimary"] & 1) == 0)
            {
              if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_RightSecondary"])
              {
                v15 = @"right";
              }

              else
              {
                if (([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_LeftSecondary"] & 1) == 0)
                {
                  v39 = [v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_Single"];
                  v40 = @"single";
                  if (v39 & 1) != 0 || (v41 = [v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_Case"], v40 = @"case", (v41))
                  {
                    v21 = 0;
                    v68 = @"role";
                  }

                  else
                  {
                    v42 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v11;
                      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not determine role for %@", buf, 0xCu);
                    }

                    v68 = @"role";
                    v40 = +[NSNull null];
                    v21 = 1;
                    v49 = v40;
                  }

                  v69 = @"side";
                  v70[0] = v40;
                  +[NSNull null];
                  v50 = v20 = 1;
                  v15 = v50;
                  goto LABEL_35;
                }

                v15 = @"left";
              }

              v19 = @"secondary";
LABEL_34:
              v20 = 0;
              v21 = 0;
              v70[0] = v19;
              v68 = @"role";
              v69 = @"side";
LABEL_35:
              v70[1] = v15;
              v53 = [NSDictionary dictionaryWithObjects:v70 forKeys:&v68 count:2];
              if (v20)
              {
              }

              if (v21)
              {
              }

              v22 = sub_1004BB870(a1, v14, v11, v12, v53, *(a2 + 24), v65);
              if (v22)
              {
                v23 = sub_10000C798();
                if ((*(*v23 + 352))(v23) & 1) != 0 || (v24 = sub_10000C798(), ((*(*v24 + 416))(v24)) || (v25 = sub_10000C798(), (*(*v25 + 456))(v25)))
                {
                  v26 = sub_10000E92C();
                  if ((*(*v26 + 8))(v26))
                  {
                    v27 = [v11 stringByDeletingPathExtension];
                    v28 = [v27 stringByAppendingPathExtension:@"json"];

                    if ([v22 writeToFile:v28 atomically:0])
                    {
                      [v47 addObject:v28];
                    }

                    else
                    {
                      v29 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v28;
                        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Failed to write analytics file: %@", buf, 0xCu);
                      }
                    }
                  }
                }

                v30 = arc4random_uniform(0xF4241u);
                v31 = *(a1 + 440);
                if (v30 / 1000000.0 <= v31)
                {
                  v66 = v48;
                  v67 = @"AccessoryCrash";
                  v33 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                  v58 = 0;
                  v56[0] = _NSConcreteStackBlock;
                  v56[1] = 3221225472;
                  v56[2] = sub_1004BC054;
                  v56[3] = &unk_100AF92F0;
                  v57 = v22;
                  v34 = [OSALog createForSubmission:@"305" metadata:0 options:v33 error:&v58 writing:v56];
                  v35 = v58;

                  v36 = qword_100BCE8C8;
                  if (!v34 || v35)
                  {
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v35;
                      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not submit processed crash log to analytics, error %@", buf, 0xCu);
                    }
                  }

                  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = [v34 filepath];
                    *buf = 138412290;
                    *&buf[4] = v37;
                    v46 = v37;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Submitted to analytics: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v32 = qword_100BCE8C8;
                  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *&buf[4] = v31;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Skipping analytics submission due to %f sampling rate", buf, 0xCu);
                  }
                }
              }

              v38 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v11;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Processed %@", buf, 0xCu);
              }

              ++v52;
LABEL_64:

LABEL_65:
              goto LABEL_66;
            }

            v15 = @"left";
          }

          v19 = @"primary";
          goto LABEL_34;
        }

        v16 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: File %@ lacks .bin extension", buf, 0xCu);
        }
      }

LABEL_66:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v43 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
    v8 = v43;
  }

  while (v43);
LABEL_81:

  v44 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Processed %d crash logs", buf, 8u);
  }

  return v47;
}

void sub_1004BB740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  _Unwind_Resume(a1);
}

id sub_1004BB870(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v49 = a3;
  v13 = a4;
  v43 = a5;
  v50 = objc_opt_new();
  v64[0] = @"bug_type";
  v64[1] = @"UI_country_code";
  v65[0] = @"305";
  v65[1] = @"US";
  v64[2] = @"log-version";
  v64[3] = @"accessory_type";
  v65[2] = @"1.0";
  v65[3] = @"audio";
  v65[4] = v43;
  v64[4] = @"application-info";
  v64[5] = @"accessory_pid";
  v66 = [NSNumber numberWithUnsignedInt:a6];
  v64[6] = @"analytics_test_mode";
  v48 = [NSNumber numberWithBool:a7];
  v67 = v48;
  v64[7] = @"crashlogs";
  v47 = objc_opt_new();
  v68 = v47;
  v64[8] = @"accessory_crashreporter_key";
  v14 = v66;
  v46 = +[NSNull null];
  v69 = v46;
  v64[9] = @"accessory_os_version";
  v45 = +[NSNull null];
  v70 = v45;
  v64[10] = @"accessory_os_train";
  v44 = +[NSNull null];
  v71 = v44;
  v64[11] = @"accessory_machine_config";
  v15 = +[NSNull null];
  v72 = v15;
  v64[12] = @"accessory_release_type";
  v16 = +[NSNull null];
  v73 = v16;
  v64[13] = @"usage_since_last_crash";
  v17 = +[NSNull null];
  v74 = v17;
  v64[14] = @"usage_since_last_crash_user_facing";
  v18 = +[NSNull null];
  v75 = v18;
  v64[15] = @"usage_since_last_crash_in_ear";
  v19 = +[NSNull null];
  v76 = v19;
  v64[16] = @"accessory_fusing";
  v20 = +[NSNull null];
  v77 = v20;
  v21 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:17];
  [v50 setDictionary:v21];

  v22 = 0;
  v23 = 0;
  do
  {
    if ([v13 count] <= v22)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835CD8();
      }

      goto LABEL_21;
    }

    v24 = [v13 objectAtIndexedSubscript:v22];
    v25 = v24;
    v26 = [v24 bytes];

    v27 = v26[1];
    if ([v12 length] - v23 < v27)
    {
      v40 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        v42 = v26[1];
        *buf = 67109890;
        v57 = v22;
        v58 = 1024;
        v59 = v42;
        v60 = 1024;
        v61 = v23;
        v62 = 2112;
        v63 = v49;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "processCrashInstanceForAnalytics: Chunk %d of size %d at offset %d of %@ extends past the end of the file", buf, 0x1Eu);
      }

LABEL_21:
      v39 = 0;
      goto LABEL_26;
    }

    LOBYTE(v57) = 0;
    *buf = 0;
    *buf = *v26;
    LOBYTE(v57) = 0;
    v28 = v12;
    v29 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v12 bytes] + v23, v26[1], 0);
    if (v29)
    {
      v30 = [NSString stringWithFormat:@"%@, %s core", v49, buf];
      v31 = sub_1004BC060(v30, v29, v30, v50);

      if (v31)
      {
        v32 = [v50 objectForKeyedSubscript:@"crashlogs"];
        v54[0] = @"core";
        v33 = [NSString stringWithCString:buf encoding:4];
        v54[1] = @"crashlog";
        v55[0] = v33;
        v55[1] = v31;
        v34 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
        [v32 addObject:v34];
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835D58(&v52, v53);
    }

    v35 = v26[1];

    ++v22;
    v23 += v35;
  }

  while ([v12 length] > v23);
  if ([v13 count] != v22 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835D94();
  }

  v51 = 0;
  v36 = [NSJSONSerialization dataWithJSONObject:v50 options:1 error:&v51];
  v37 = v51;
  v38 = v37;
  if (!v36 || v37)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835E08();
    }

    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

LABEL_26:

  return v39;
}

id sub_1004BC060(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v220 = a3;
  v218 = v6;
  v219 = a4;
  v7 = RTBuddyCrashlogDecode();
  if (v7)
  {
    theDict = v7;
    if (!CFDictionaryGetCount(v7))
    {
      v8 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v220;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: processCrashLogForAnalytics: Empty dictionary returned for %@", buf, 0xCu);
      }
    }

    v221 = objc_opt_new();
    v232[0] = @"mailboxes";
    v9 = objc_opt_new();
    v233[0] = v9;
    v232[1] = @"panic";
    v10 = +[NSNull null];
    v233[1] = v10;
    v232[2] = @"crashlog-version";
    v11 = +[NSNull null];
    v233[2] = v11;
    v232[3] = @"exception";
    v12 = +[NSNull null];
    v233[3] = v12;
    v232[4] = @"uuid";
    v13 = +[NSNull null];
    v233[4] = v13;
    v232[5] = @"call-stack";
    v14 = +[NSNull null];
    v233[5] = v14;
    v232[6] = @"tasks";
    v15 = +[NSNull null];
    v233[6] = v15;
    v232[7] = @"registers";
    v16 = +[NSNull null];
    v233[7] = v16;
    v232[8] = @"scenario";
    v17 = +[NSNull null];
    v233[8] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:9];
    [v221 setDictionary:v18];

    Value = CFDictionaryGetValue(theDict, @"panic");
    v20 = Value;
    if (Value)
    {
      v21 = CFGetTypeID(Value);
      if (v21 == CFStringGetTypeID())
      {
        [v221 setObject:v20 forKey:@"panic"];
      }
    }

    v22 = CFDictionaryGetValue(theDict, @"crashlog-version");
    v23 = v22;
    if (v22)
    {
      v24 = CFGetTypeID(v22);
      if (v24 == CFStringGetTypeID())
      {
        [v221 setObject:v23 forKey:@"crashlog-version"];
      }
    }

    v25 = CFDictionaryGetValue(theDict, @"exception");
    v26 = v25;
    if (v25)
    {
      v27 = CFGetTypeID(v25);
      if (v27 == CFStringGetTypeID())
      {
        [v221 setObject:v26 forKey:@"exception"];
      }
    }

    v28 = CFDictionaryGetValue(theDict, @"sections");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFArrayGetTypeID())
      {
        for (i = 0; ; ++i)
        {
          if (i >= CFArrayGetCount(v29))
          {
            goto LABEL_251;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v29, i);
          v33 = ValueAtIndex;
          if (!ValueAtIndex || (v34 = CFGetTypeID(ValueAtIndex), v34 != CFDictionaryGetTypeID()))
          {
            v61 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 138412290;
            *&buf[4] = v220;
            v62 = v61;
            v63 = "processCrashLogForAnalytics: Invalid crash log section in %@";
            goto LABEL_63;
          }

          v35 = CFDictionaryGetValue(v33, @"section-name");
          v36 = v35;
          if (!v35 || (v37 = CFGetTypeID(v35), v37 != CFStringGetTypeID()))
          {
            v64 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 138412290;
            *&buf[4] = v220;
            v62 = v64;
            v63 = "processCrashLogForAnalytics: Invalid crash log section name in %@";
LABEL_63:
            v65 = 12;
            goto LABEL_64;
          }

          CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
          if (CStringPtr)
          {
            v39 = CFDictionaryGetValue(v33, @"section-signature");
            v40 = v39;
            if (v39 && (v41 = CFGetTypeID(v39), v41 == CFStringGetTypeID()))
            {
              v42 = CFStringGetCStringPtr(v40, 0x8000100u);
              if (v42)
              {
                if (!strcmp(CStringPtr, "Version Section") && !strcmp(v42, "Cver"))
                {
                  v69 = CFDictionaryGetValue(v33, @"uuid");
                  v70 = v69;
                  if (v69 && (v71 = CFGetTypeID(v69), v71 == CFStringGetTypeID()))
                  {
                    [v221 setObject:v70 forKey:@"uuid"];
                  }

                  else
                  {
                    v99 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v99;
                      v63 = "processCrashLogForAnalytics: Invalid UUID in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Callstack Section") && !strcmp(v42, "Ccst"))
                {
                  v84 = CFDictionaryGetValue(v33, @"stack");
                  v85 = v215;
                  v86 = v84;
                  if (!v84 || (v87 = CFGetTypeID(v84), v87 != CFArrayGetTypeID()))
                  {
                    v88 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid stack in %@", buf, 0xCu);
                    }

                    v86 = 0;
                  }

                  v89 = CFDictionaryGetValue(v33, @"stack-description");
                  v90 = v89;
                  if (!v89 || (v91 = CFGetTypeID(v89), v91 != CFStringGetTypeID()))
                  {
                    v92 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid stack description in %@", buf, 0xCu);
                    }

                    v90 = 0;
                  }

                  v230[0] = @"stack";
                  v93 = v86;
                  if (!v86)
                  {
                    v213 = +[NSNull null];
                    v93 = v213;
                  }

                  v231[0] = v93;
                  v230[1] = @"stack-description";
                  v94 = v90;
                  if (!v90)
                  {
                    v85 = +[NSNull null];
                    v94 = v85;
                  }

                  v231[1] = v94;
                  v215 = v85;
                  v95 = [NSDictionary dictionaryWithObjects:v231 forKeys:v230 count:2];
                  [v221 setObject:v95 forKey:@"call-stack"];

                  if (!v90)
                  {
                  }

                  if (!v86)
                  {
                  }
                }

                else if (!strcmp(CStringPtr, "Task List Section") && !strcmp(v42, "Crtk"))
                {
                  v96 = CFDictionaryGetValue(v33, @"tasks");
                  v97 = v96;
                  if (v96 && (v98 = CFGetTypeID(v96), v98 == CFArrayGetTypeID()))
                  {
                    [v221 setObject:v97 forKey:@"tasks"];
                  }

                  else
                  {
                    v125 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v125;
                      v63 = "processCrashLogForAnalytics: Invalid tasks in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Mailbox Section") && !strcmp(v42, "Cmbx"))
                {
                  cfa = CFDictionaryGetValue(v33, @"registers");
                  v100 = v214;
                  if (!cfa || (v101 = CFGetTypeID(cfa), v101 != CFDictionaryGetTypeID()))
                  {
                    v102 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid mailbox registers in %@", buf, 0xCu);
                    }

                    cfa = 0;
                  }

                  v103 = CFDictionaryGetValue(v33, @"mailbox-error");
                  v104 = v103;
                  if (!v103 || (v105 = CFGetTypeID(v103), v105 != CFStringGetTypeID()))
                  {
                    v106 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid mailbox error in %@", buf, 0xCu);
                    }

                    v104 = 0;
                  }

                  v107 = CFDictionaryGetValue(v33, @"route-number");
                  v108 = v107;
                  if (!v107 || (v109 = CFGetTypeID(v107), v109 != CFStringGetTypeID()))
                  {
                    v110 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid route number in %@", buf, 0xCu);
                    }

                    v108 = 0;
                  }

                  v111 = CFDictionaryGetValue(v33, @"log");
                  v112 = v111;
                  if (!v111 || (v113 = CFGetTypeID(v111), v113 != CFStringGetTypeID()))
                  {
                    v114 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid log in %@", buf, 0xCu);
                    }

                    v112 = 0;
                  }

                  v115 = [v221 objectForKey:@"mailboxes"];
                  v228[0] = @"registers";
                  v116 = cfa;
                  if (!cfa)
                  {
                    v100 = +[NSNull null];
                    v116 = v100;
                  }

                  v229[0] = v116;
                  v228[1] = @"mailbox-error";
                  v117 = v104;
                  v214 = v100;
                  if (!v104)
                  {
                    v212 = +[NSNull null];
                    v117 = v212;
                  }

                  v229[1] = v117;
                  v228[2] = @"route-number";
                  v118 = v108;
                  if (!v108)
                  {
                    v210 = +[NSNull null];
                    v118 = v210;
                  }

                  v229[2] = v118;
                  v228[3] = @"log";
                  v119 = v112;
                  if (!v112)
                  {
                    v211 = +[NSNull null];
                    v119 = v211;
                  }

                  v229[3] = v119;
                  v120 = [NSDictionary dictionaryWithObjects:v229 forKeys:v228 count:4];
                  [v115 addObject:v120];

                  if (!v112)
                  {
                  }

                  if (!v108)
                  {
                  }

                  if (!v104)
                  {
                  }

                  if (!cfa)
                  {
                  }
                }

                else if (!strcmp(CStringPtr, "Register Frame Section") && !strcmp(v42, "CrgM"))
                {
                  v122 = CFDictionaryGetValue(v33, @"registers");
                  v123 = v122;
                  if (v122 && (v124 = CFGetTypeID(v122), v124 == CFStringGetTypeID()))
                  {
                    [v221 setObject:v123 forKey:@"registers"];
                  }

                  else
                  {
                    v135 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v135;
                      v63 = "processCrashLogForAnalytics: Invalid registers in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "Product Version Section") && !strcmp(v42, "CPvr"))
                {
                  v126 = CFDictionaryGetValue(v33, @"Machine");
                  v127 = v126;
                  if (v126 && (v128 = CFGetTypeID(v126), v128 == CFStringGetTypeID()))
                  {
                    [v219 setObject:v127 forKey:@"accessory_machine_config"];
                  }

                  else
                  {
                    v136 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid Machine in %@", buf, 0xCu);
                    }
                  }

                  v137 = CFDictionaryGetValue(v33, @"Build");
                  v138 = v137;
                  if (v137 && (v139 = CFGetTypeID(v137), v139 == CFStringGetTypeID()))
                  {
                    [v219 setObject:v138 forKey:@"accessory_release_type"];
                  }

                  else
                  {
                    v140 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid Build in %@", buf, 0xCu);
                    }
                  }

                  v141 = CFDictionaryGetValue(v33, @"OS version");
                  v142 = v141;
                  if (v141 && (v143 = CFGetTypeID(v141), v143 == CFStringGetTypeID()))
                  {
                    v144 = v142;
                    [v219 setObject:v144 forKey:@"accessory_os_version"];
                    v145 = [v144 componentsSeparatedByString:@"."];
                    v146 = v145;
                    if (v145 && [v145 count])
                    {
                      v147 = [v146 objectAtIndexedSubscript:0];
                      v148 = [@"RTKitOS " stringByAppendingString:v147];
                      [v219 setObject:v148 forKey:@"accessory_os_train"];
                    }

                    else
                    {
                      v153 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        *&buf[4] = v144;
                        *&buf[12] = 2112;
                        *&buf[14] = v220;
                        _os_log_error_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Could not determine OS train for version '%@' for %@", buf, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v149 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v149;
                      v63 = "processCrashLogForAnalytics: Invalid OS version in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(CStringPtr, "String Section") && !strcmp(v42, "Cstr"))
                {
                  v129 = CFDictionaryGetValue(v33, @"contents");
                  v130 = v129;
                  if (v129 && (v131 = CFGetTypeID(v129), v131 == CFStringGetTypeID()))
                  {
                    v132 = v130;
                    if ([v132 hasPrefix:@"CrashReporterKey:"])
                    {
                      v133 = [v132 substringFromIndex:{objc_msgSend(@"CrashReporterKey:", "length")}];
                      [v219 setObject:v133 forKey:@"accessory_crashreporter_key"];
                    }
                  }

                  else
                  {
                    v150 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v150;
                      v63 = "processCrashLogForAnalytics: Invalid string section contents in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else if (!strcmp(v42, "MTBF"))
                {
                  LODWORD(v223) = 0;
                  *v226 = 0;
                  v72 = CFDictionaryGetValue(v33, @"section-offset");
                  v73 = v72;
                  if (v72 && (v74 = CFGetTypeID(v72), v74 == CFNumberGetTypeID()))
                  {
                    if (CFNumberGetValue(v73, kCFNumberIntType, &v223))
                    {
                      v75 = CFDictionaryGetValue(v33, @"section-size");
                      v76 = v75;
                      if (v75 && (v77 = CFGetTypeID(v75), v77 == CFNumberGetTypeID()))
                      {
                        if (CFNumberGetValue(v76, kCFNumberIntType, v226))
                        {
                          v78 = *v226;
                          if (*v226 < 1 || (v79 = v223, (v223 & 0x80000000) != 0) || [v218 length] <= (v79 + v78))
                          {
                            v156 = qword_100BCE8C8;
                            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                            {
                              continue;
                            }

                            *buf = 67109634;
                            *&buf[4] = v223;
                            *&buf[8] = 1024;
                            *&buf[10] = *v226;
                            *&buf[14] = 2112;
                            *&buf[16] = v220;
                            v62 = v156;
                            v63 = "processCrashLogForAnalytics: Invalid mtbf section offset (%d) and size (%d) in %@";
LABEL_199:
                            v65 = 24;
LABEL_64:
                            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, v63, buf, v65);
                            continue;
                          }

                          v80 = v218;
                          v81 = [v218 bytes];
                          v82 = *v226;
                          if (*v226 <= 0x1Bu)
                          {
                            v83 = qword_100BCE8C8;
                            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                            {
                              continue;
                            }

                            *buf = 67109634;
                            *&buf[4] = v82;
                            *&buf[8] = 2048;
                            *&buf[10] = 28;
                            *&buf[18] = 2112;
                            *&buf[20] = v220;
                            v62 = v83;
                            v63 = "processCrashLogForAnalytics: mtbf section size too small (%d < %zu) in %@";
                            v65 = 28;
                            goto LABEL_64;
                          }

                          v160 = &v81[v223];
                          v161 = [NSNumber numberWithUnsignedInt:*(v160 + 6)];
                          [v219 setObject:v161 forKey:@"usage_since_last_crash"];

                          if (*v226 >= 0x25u)
                          {
                            v162 = "unknown";
                            if (v160[36] - 1 <= 2)
                            {
                              v162 = (&off_100AF9640)[(v160[36] - 1)];
                            }

                            v163 = [NSString stringWithCString:v162 encoding:4];
                            [v219 setObject:v163 forKey:@"accessory_fusing"];

                            if (*(v160 + 7) != -1)
                            {
                              v164 = [NSNumber numberWithUnsignedInt:?];
                              [v219 setObject:v164 forKey:@"usage_since_last_crash_user_facing"];
                            }

                            if (*(v160 + 8) != -1)
                            {
                              v165 = [NSNumber numberWithUnsignedInt:?];
                              [v219 setObject:v165 forKey:@"usage_since_last_crash_in_ear"];
                            }
                          }
                        }

                        else
                        {
                          v157 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v220;
                            v62 = v157;
                            v63 = "processCrashLogForAnalytics: Unable to convert mtbf section size in %@";
                            goto LABEL_63;
                          }
                        }
                      }

                      else
                      {
                        v151 = qword_100BCE8C8;
                        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          *&buf[4] = v220;
                          v62 = v151;
                          v63 = "processCrashLogForAnalytics: Invalid mtbf section size in %@";
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      v152 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v220;
                        v62 = v152;
                        v63 = "processCrashLogForAnalytics: Unable to convert mtbf section offset in %@";
                        goto LABEL_63;
                      }
                    }
                  }

                  else
                  {
                    v121 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v121;
                      v63 = "processCrashLogForAnalytics: Invalid mtbf section offset in %@";
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
                  if (strcmp(v42, "Csif"))
                  {
                    continue;
                  }

                  valuePtr = 0;
                  v43 = CFDictionaryGetValue(v33, @"section-offset");
                  v44 = v43;
                  if (v43 && (v45 = CFGetTypeID(v43), v45 == CFNumberGetTypeID()))
                  {
                    if (CFNumberGetValue(v44, kCFNumberIntType, &valuePtr + 4))
                    {
                      v46 = CFDictionaryGetValue(v33, @"section-size");
                      v47 = v46;
                      if (v46 && (v48 = CFGetTypeID(v46), v48 == CFNumberGetTypeID()))
                      {
                        if (CFNumberGetValue(v47, kCFNumberIntType, &valuePtr))
                        {
                          v49 = valuePtr;
                          if (valuePtr >= 0x1C)
                          {
                            v50 = HIDWORD(valuePtr);
                            if ((valuePtr & 0x8000000000000000) == 0 && [v218 length] > v50 + v49)
                            {
                              v205 = objc_opt_new();
                              v51 = v218;
                              v52 = [v218 bytes];
                              cf = &v52[SHIDWORD(valuePtr)];
                              v53 = *(cf + 2);
                              v209 = objc_opt_new();
                              v54 = 0;
                              v55 = cf;
                              do
                              {
                                if ((*v55 & (1 << v54)) != 0)
                                {
                                  v56 = [NSString stringWithUTF8String:off_100B54480[v54]];
                                  [v209 addObject:v56];

                                  v55 = cf;
                                }

                                ++v54;
                              }

                              while (v54 != 25);
                              [v205 setValue:v209 forKey:@"active_scenarios"];
                              v57 = [NSNumber numberWithUnsignedLongLong:v53];
                              [v205 setValue:v57 forKey:@"time_since_last_transition"];

                              v58 = valuePtr;
                              v59 = *(cf + 6);
                              if (valuePtr < 4 * (v59 & 0x3FFu) + 28)
                              {
                                v60 = qword_100BCE8C8;
                                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 67109634;
                                  *&buf[4] = v59 & 0x3FF;
                                  *&buf[8] = 1024;
                                  *&buf[10] = v58;
                                  *&buf[14] = 2112;
                                  *&buf[16] = v220;
                                  _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information range (%u) too large for section size (%d) in %@", buf, 0x18u);
                                }

                                v206 = +[NSNull null];
                                [v205 setValue:v206 forKey:@"event_history"];
                                goto LABEL_248;
                              }

                              v206 = objc_opt_new();
                              v166 = cf + 28;
                              v167 = *(cf + 6);
                              v168 = (v167 >> 20) & 0x3FF;
                              v169 = (v167 >> 10) & 0x3FF;
                              if (v168 == v169)
                              {
LABEL_210:
                                [v205 setValue:v206 forKey:@"event_history"];
                                v170 = *(cf + 6);
                                if (v170 < 0)
                                {
                                  v171 = v170 & 0x3FF;
                                  v172 = valuePtr;
                                  v173 = 4 * (*(cf + 6) & 0x3FFu) + 28;
                                  if ((v173 | 2uLL) > valuePtr)
                                  {
                                    v174 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109634;
                                      *&buf[4] = v171;
                                      *&buf[8] = 1024;
                                      *&buf[10] = v172;
                                      *&buf[14] = 2112;
                                      *&buf[16] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information with range (%u) indicates trailer present but not enough space in section size (%d) in %@", buf, 0x18u);
                                    }

                                    goto LABEL_243;
                                  }

                                  v195 = &v166[4 * v171];
                                  v196 = *v195;
                                  if (v196 + v173 > valuePtr)
                                  {
                                    v197 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109890;
                                      *&buf[4] = v171;
                                      *&buf[8] = 1024;
                                      *&buf[10] = v196;
                                      *&buf[14] = 1024;
                                      *&buf[16] = v172;
                                      *&buf[20] = 2112;
                                      *&buf[22] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v197, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information range (%u) and trailer length (%u) too large for section size (%d) in %@", buf, 0x1Eu);
                                    }

                                    goto LABEL_243;
                                  }

                                  if (v196 > 9)
                                  {
                                    v199 = objc_opt_new();
                                    v200 = [NSNumber numberWithUnsignedShort:*(v195 + 1) & 1];
                                    [v199 setObject:v200 forKey:@"connected"];

                                    if (*(v195 + 1))
                                    {
                                      v201 = [NSNumber numberWithUnsignedShort:*(v195 + 2)];
                                      [v199 setObject:v201 forKey:@"vid"];

                                      v202 = [NSNumber numberWithUnsignedShort:*(v195 + 3)];
                                      [v199 setObject:v202 forKey:@"pid"];

                                      v203 = [NSNumber numberWithUnsignedShort:*(v195 + 4)];
                                      [v199 setObject:v203 forKey:@"sw_ver"];
                                    }

                                    [v205 setObject:v199 forKey:@"routed_to_source"];
                                  }

                                  else
                                  {
                                    v198 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 67109634;
                                      *&buf[4] = v196;
                                      *&buf[8] = 2048;
                                      *&buf[10] = 10;
                                      *&buf[18] = 2112;
                                      *&buf[20] = v220;
                                      _os_log_error_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Scenario information trailer length too small (%u < %zu) in %@", buf, 0x1Cu);
                                    }

LABEL_243:
                                    v199 = +[NSNull null];
                                    [v205 setObject:v199 forKey:@"routed_to_source"];
                                  }
                                }

LABEL_248:

                                [v221 setObject:v205 forKey:@"scenario"];
                                continue;
                              }

                              v175 = &v166[4 * v168];
                              v176 = v167 & 0x3FF;
                              v177 = v175;
                              do
                              {
                                v178 = *v175;
                                v179 = ((&v175[4 * ((v178 >> 24) & 7)] - v166 + 8) >> 2) % v176;
                                v175 = &v166[4 * v179];
                                v53 += v178 & 0xFFFFFF;
                              }

                              while (v179 != v169);
                              v208 = v53;
                              v180 = cf;
                              while (2)
                              {
                                v181 = v208 - (*v177 & 0xFFFFFF);
                                v223 = 0;
                                memset(buf, 0, 28);
                                sub_1004BE45C(v180, v177, &v223, buf);
                                v182 = v223 >> 27;
                                v207 = v177;
                                v208 = v181;
                                if (v182)
                                {
                                  v186 = sub_10000E92C();
                                  if ((*(*v186 + 8))(v186))
                                  {
                                    v187 = [NSMutableString stringWithFormat:@"%04x ", HIWORD(v223)];
                                    for (j = 0; j != 28; j += 4)
                                    {
                                      [v187 appendFormat:@"%02x%02x%02x%02x", *&buf[j], BYTE1(*&buf[j]), BYTE2(*&buf[j]), HIBYTE(*&buf[j])];
                                    }

                                    v189 = [NSNumber numberWithUnsignedLongLong:v181];
                                    v190 = [NSNumber numberWithUnsignedInt:v182];
                                    v191 = [NSNumber numberWithUnsignedChar:BYTE4(v223)];
                                    v185 = [NSDictionary dictionaryWithObjectsAndKeys:v189, @"timestamp", v190, @"source", v191, @"event_number", v187, @"data", 0];

                                    goto LABEL_231;
                                  }

                                  v185 = 0;
                                }

                                else
                                {
                                  v183 = BYTE4(v223);
                                  if (BYTE4(v223) >= 0x19u)
                                  {
                                    v184 = qword_100BCE8C8;
                                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                                    {
                                      *v226 = 67109120;
                                      v227 = v183;
                                      _os_log_error_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "processCrashLogForAnalytics: Invalid scenarioType %d", v226, 8u);
                                    }

                                    v185 = 0;
LABEL_234:

                                    v180 = cf;
                                    v193 = *(cf + 6);
                                    v194 = ((&v207[4 * (v207[3] & 7)] - v166 + 8) >> 2) % (v193 & 0x3FF);
                                    v177 = &v166[4 * v194];
                                    if (v194 == ((v193 >> 10) & 0x3FF))
                                    {
                                      goto LABEL_210;
                                    }

                                    continue;
                                  }

                                  v187 = [NSNumber numberWithUnsignedLongLong:v181];
                                  v189 = [NSString stringWithUTF8String:off_100B54480[v183]];
                                  if ((v223 & 0x1000000000000) != 0)
                                  {
                                    v192 = "ON";
                                  }

                                  else
                                  {
                                    v192 = "OFF";
                                  }

                                  v190 = [NSString stringWithUTF8String:v192];
                                  v185 = [NSDictionary dictionaryWithObjectsAndKeys:v187, @"timestamp", v189, @"scenario", v190, @"state", 0];
LABEL_231:
                                }

                                break;
                              }

                              [v206 addObject:v185];
                              goto LABEL_234;
                            }
                          }

                          v158 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67109634;
                            *&buf[4] = HIDWORD(valuePtr);
                            *&buf[8] = 1024;
                            *&buf[10] = valuePtr;
                            *&buf[14] = 2112;
                            *&buf[16] = v220;
                            v62 = v158;
                            v63 = "processCrashLogForAnalytics: Invalid scenario information section offset (%d) and size (%d) in %@";
                            goto LABEL_199;
                          }
                        }

                        else
                        {
                          v159 = qword_100BCE8C8;
                          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v220;
                            v62 = v159;
                            v63 = "processCrashLogForAnalytics: Unable to convert scenario information section size in %@";
                            goto LABEL_63;
                          }
                        }
                      }

                      else
                      {
                        v154 = qword_100BCE8C8;
                        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          *&buf[4] = v220;
                          v62 = v154;
                          v63 = "processCrashLogForAnalytics: Invalid scenario information section size in %@";
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      v155 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v220;
                        v62 = v155;
                        v63 = "processCrashLogForAnalytics: Unable to convert scenario information section offset in %@";
                        goto LABEL_63;
                      }
                    }
                  }

                  else
                  {
                    v134 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v220;
                      v62 = v134;
                      v63 = "processCrashLogForAnalytics: Invalid scenario information section offset in %@";
                      goto LABEL_63;
                    }
                  }
                }
              }

              else
              {
                v68 = qword_100BCE8C8;
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v220;
                  v62 = v68;
                  v63 = "processCrashLogForAnalytics: Could not convert crash log section signature in %@";
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v66 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v220;
                v62 = v66;
                v63 = "processCrashLogForAnalytics: Invalid crash log section signature in %@";
                goto LABEL_63;
              }
            }
          }

          else
          {
            v67 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v220;
              v62 = v67;
              v63 = "processCrashLogForAnalytics: Could not convert crash log section name in %@";
              goto LABEL_63;
            }
          }
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835E84();
    }

LABEL_251:
    CFRelease(theDict);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835EF4();
    }

    v221 = 0;
  }

  return v221;
}

uint64_t sub_1004BE45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(result + 24) & 0x3FF;
  v6 = result + 28;
  v7 = (a2 - (result + 28)) >> 2;
  v8 = 1;
  do
  {
    *(a3 + 4 * v4) = *(v6 + 4 * v7);
    v9 = v8;
    v7 = (v7 + 1) % v5;
    v4 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  if ((*(a2 + 3) & 7) != 0)
  {
    v10 = 0;
    do
    {
      *(a4 + 4 * v10) = *(v6 + 4 * v7);
      v7 = (v7 + 1) % v5;
      ++v10;
    }

    while (v10 < (*(a2 + 3) & 7u));
  }

  return result;
}

void sub_1004BE4D8(id a1)
{
  if (qword_100B51308 != -1)
  {
    sub_100834760();
  }

  v2 = qword_100B51300;

  sub_1004BE51C(v2);
}

uint64_t sub_1004BE51C(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 64);
  v2 = *(a1 + 48);
  while (v2 != *(a1 + 40))
  {
    v4 = *(v2 - 8);
    v2 -= 8;
    v3 = v4;
    v5 = *(v4 + 24) - 8194;
    v6 = v5 > 0xE;
    v7 = (1 << v5) & 0x409B;
    if (!v6 && v7 != 0)
    {
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  v9 = sub_10000E92C();
  if (*(*v9 + 8))(v9) && (v10 = sub_10000C798(), ((*(*v10 + 352))(v10)))
  {
    if (*(a1 + 448))
    {
      v11 = qword_100BCE8C8;
      if (v3)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v3 + 8);
          *buf = 138543362;
          v16 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "triggerW1AWDDiagnosticsEvent: Requesting AWD metrics from device %{public}@", buf, 0xCu);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        if (sub_100189034((v3 + 16), 0x20u, 0, 0) && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835FDC();
        }

        sub_100022214(buf);
        sub_10002249C(buf);
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083604C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835FA0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835F64();
  }

  return sub_1000088CC(v14);
}

uint64_t sub_1004BE78C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, v1 + 64);
  v2 = *(v1 + 48);
  while (v2 != *(v1 + 40))
  {
    v3 = *(v2 - 8);
    v2 -= 8;
    v4 = *(v3 + 24) - 8194;
    v5 = v4 > 0xE;
    v6 = (1 << v4) & 0x409B;
    if (!v5 && v6 != 0)
    {
      v8 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = BYTE1(dword_100B6EA30);
        v17 = *(v1 + 415);
        v18 = sub_100304810(v1 + 409, v9, v10, v11, v12, v13, v14, v15);
        *buf = 67109634;
        v23 = v16;
        v24 = 1024;
        v25 = v17;
        v26 = 2080;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "retransBuddyCMD: Buddy CMD type -> %d, numOfBuddyRetrans -> %d, Remote addr -> addr %s ", buf, 0x18u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v19 = sub_100189034((v1 + 409), 4u, byte_100B6EA39, &dword_100B6EA30);
      sub_100022214(buf);
      if (v19 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100836088();
      }

      ++*(v1 + 415);
      sub_10002249C(buf);
      return sub_1000088CC(v21);
    }
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008360F8();
  }

  return sub_1000088CC(v21);
}

void sub_1004BE980(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v31 = 0;
  __src = 0;
  if (*(a1 + 448) == 1)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100834D24();
    }

    v20 = *a2;
    LOWORD(v21) = *(a2 + 4);
    v14 = sub_1000E6554(off_100B508E8, &v20, 1);
    v15 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67110144;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v26 = 1024;
      v27 = a6;
      v28 = 1024;
      v29 = a7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "syncCrashLogWithBuddyComamnd, Command Type %d, side %d , offset %d , len %d, logType %d", &v20, 0x20u);
    }

    if (sub_1000C0348(v14))
    {
      v16 = sub_1004BEBD8(a1, &__src, a3, a4, a5, a6, a7);
      if (!v16 || (v17 = v16, LOBYTE(v20) = 0, sub_1000216B4(&v20), v18 = sub_100189034(a2, 4u, v17, &__src), memcpy(&dword_100B6EA30, &__src, v17), byte_100B6EA39 = v17, v19 = *(a2 + 4), *(a1 + 409) = *a2, *(a1 + 413) = v19, *(a1 + 415) = 0, sub_100022214(&v20), sub_10002249C(&v20), v18))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834FA0();
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100836134();
    }
  }
}

uint64_t sub_1004BEBD8(uint64_t a1, uint64_t a2, int a3, char a4, __int16 a5, __int16 a6, char a7)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        word_100B54631 = bswap32(*(a1 + 139)) >> 16;
        byte_100B54633 = *(a1 + 141);
        v13 = dword_100B5462D;
        *(a2 + 3) = *(&dword_100B5462D + 3);
        *a2 = v13;
        result = 7;
        goto LABEL_22;
      }

      if (a3 == 7)
      {
        dword_100B5463C = bswap32(*(a1 + 142));
        *a2 = unk_100B54638;
        result = 8;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a3 == 4)
    {
      v9 = 50364928;
    }

    else
    {
      v9 = 50365440;
    }

LABEL_18:
    *a2 = v9;
    result = 4;
    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      byte_100B54628 = a7;
      byte_100B54629 = HIBYTE(a5);
      byte_100B5462A = a5;
      byte_100B5462B = HIBYTE(a6);
      byte_100B5462C = a6;
      v10 = unk_100B54624;
      *(a2 + 8) = a6;
      *a2 = v10;
      result = 9;
      goto LABEL_22;
    }

    v9 = 50364416;
    goto LABEL_18;
  }

  if (!a3)
  {
    v12 = dword_100B54550;
    *(a2 + 4) = byte_100B54554;
    *a2 = v12;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    *(a2 + 4) = 0;
    *a2 = 67139584;
LABEL_15:
    result = 5;
    goto LABEL_22;
  }

LABEL_20:
  result = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100836170();
    result = 0;
  }

LABEL_22:
  *a2 = a4;
  return result;
}

void sub_1004BED8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_1004B1ED8(a1, a3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ((atomic_load_explicit(&qword_100B6EF48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EF48))
  {
    v14 = +[NSCharacterSet alphanumericCharacterSet];
    qword_100B6EF40 = [v14 invertedSet];

    __cxa_guard_release(&qword_100B6EF48);
  }

  v8 = [*v7 componentsSeparatedByCharactersInSet:qword_100B6EF40];
  v15 = [v8 componentsJoinedByString:&stru_100B0F9E0];

  v9 = [v15 length];
  if (v9 >= 0x101)
  {
    v10 = [v15 substringToIndex:256];

    v15 = v10;
  }

  v11 = sub_1004BF088(v9, a4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  v12 = *(v7 + 40);
  if (v12 == 8)
  {
    sprintf(a2, "/private/var/mobile/Library/Logs/Bluetooth/Accessory_Trace_%s_%s_%c_%d_%d_%d_%d_%d_%d.bin", [v15 UTF8String], v11);
    goto LABEL_10;
  }

  v13 = v15;
  if (v12 == 7)
  {
    sprintf(a2, "/private/var/mobile/Library/Logs/Bluetooth/Accessory_Crash_%s_%s_%c_%d_%d_%d_%d_%d_%d.bin", [v15 UTF8String], v11);
LABEL_10:
    v13 = v15;
  }
}