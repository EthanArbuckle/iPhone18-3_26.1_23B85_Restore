void sub_1006B33D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085ED4C();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 7;
    goto LABEL_10;
  }

  if (!uint64)
  {
    goto LABEL_9;
  }

LABEL_3:
  v14 = 0;
  LODWORD(v6) = sub_10051BB7C(uint64, &v14);
  uint64 = 0;
  if (!v6)
  {
    uint64 = v14;
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = asid;
    if (qword_100B50B88 != -1)
    {
      v13 = asid;
      sub_10085EDB4();
      v10 = v13;
    }

    sub_100618A78(qword_100B50B80, v14, v8, v10);
  }

  v6 = v6;
LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgAccessoryManagerID", uint64);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

uint64_t sub_1006B3524(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EDDC();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(v7 + 40);
  asid = xpc_connection_get_asid(*(v7 + 16));
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v24 = 1024;
    v25 = v8;
    v26 = 2048;
    v27 = asid;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085EDB4();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
  {
    v11 = *(a1 + 80);
    if (v11 == (a1 + 88))
    {
LABEL_19:
      v17 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040EB02D296uLL);
      *buf = v17;
      v17[5] = v6;
      v17[7] = uint64;
      *v17 = sub_1006B1D74;
      v17[1] = sub_1006B1F08;
      v17[2] = sub_1006B1F34;
      v17[3] = sub_1006B1F64;
      v17[8] = *(a1 + 72);
      sub_1000452CC(a1 + 80, buf);
      if (*(a1 + 105))
      {
        v12 = 0;
      }

      else
      {
        v21 = sub_10051BBD8(uint64, *buf, a1);
        *(a1 + 105) = 1;
        v12 = v21;
      }
    }

    else
    {
      v12 = 1;
      while (1)
      {
        v13 = v11[4];
        if (*(v13 + 40) == v6 && *(v13 + 56) == uint64)
        {
          break;
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
        if (v15 == (a1 + 88))
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
LABEL_21:
    v12 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v19 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v19);
    xpc_release(v19);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1006B3840(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EE44();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(v7 + 40);
  asid = xpc_connection_get_asid(*(v7 + 16));
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v23 = 1024;
    v24 = v8;
    v25 = 2048;
    v26 = asid;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085EDB4();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
  {
    v11 = *(a1 + 80);
    if (v11 == (a1 + 88))
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085EEAC();
      }

      v16 = 0;
    }

    else
    {
      while (1)
      {
        v12 = v11[4];
        if (*(v12 + 40) == v6 && *(v12 + 56) == uint64)
        {
          break;
        }

        v13 = v11[1];
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
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
        if (v14 == (a1 + 88))
        {
          goto LABEL_18;
        }
      }

      *buf = v11[4];
      if (*(a1 + 105) == 1)
      {
        v20 = sub_10051BC64(uint64, v12);
        *(a1 + 105) = 0;
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }

      sub_100075DC4((a1 + 80), buf);
      free(*buf);
    }
  }

  else
  {
LABEL_21:
    v16 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }

  return sub_1000088CC(v21);
}

void sub_1006B3B0C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  length = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v7 = data;
    string = xpc_dictionary_get_string(v4, "kCBMsgArgName");
    v9 = xpc_dictionary_get_uint64(v4, "kCBMsgArgClassOfDevice");
    v10 = xpc_dictionary_get_string(v4, "kCBMsgArgPincode");
    value = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085EEE0();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v11 = sub_10051BCDC(uint64, v7, string, v9, v10, &value);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v13 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
      v15 = value;
      v14 = "kCBMsgArgBTDevice";
      v12 = v13;
      goto LABEL_13;
    }

    v11 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v12 = xpc_dictionary_create_reply(xdict);
  if (v12)
  {
    v13 = v12;
    v14 = "kCBMsgArgResult";
    v15 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(v12, v14, v15);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B3CC8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EF48();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C178(uint64, v6);
    goto LABEL_6;
  }

  v7 = 7;
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

void sub_1006B3DB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EFB0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C400(uint64, v6);
    goto LABEL_6;
  }

  v7 = 7;
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

void sub_1006B3EA0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F018();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C4C0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgState", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B3FB0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  __chkstk_darwin(v6, 8 * v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F080();
  }

  if (v6 <= 0x100)
  {
    if (uint64)
    {
      v10 = sub_10051C5A0(uint64, v8, &v15, v6);
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1006B417C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LOBYTE(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F0E8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C6F8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercent", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B428C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v12 = 0;
  *value = 0u;
  *v11 = 0u;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F150();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C7D8(uint64, v6, value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentSingle", LOBYTE(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentLeft", LOBYTE(v11[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentRight", LOBYTE(value[1]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentCase", LOBYTE(v11[1]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentCombined", v12);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingSingle", HIDWORD(value[0]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingLeft", HIDWORD(v11[0]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingRight", HIDWORD(value[1]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingCase", HIDWORD(v11[1]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingCombined", HIDWORD(v12) != 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4480(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F1B8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051DE88(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgID", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4590(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F220();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C8B8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgIsAccessory", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B46A0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v12 = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &v12);
  if (v12 == 6)
  {
    v7 = data;
    bytes[0] = 0;
    bytes[1] = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085F288();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_10051C990(uint64, v7, bytes);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v10 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
      xpc_dictionary_set_data(v10, "kCBMsgArgLinkKey", bytes, 0x10uLL);
      goto LABEL_13;
    }

    v8 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v9 = xpc_dictionary_create_reply(xdict);
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_set_uint64(v9, "kCBMsgArgResult", 8uLL);
LABEL_13:
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B4840(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  length = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v7 = data;
    string = xpc_dictionary_get_string(v4, "kCBMsgArgName");
    v9 = xpc_dictionary_get_uint64(v4, "kCBMsgArgClassOfDevice");
    v10 = xpc_dictionary_get_uint64(v4, "kCBMsgArgServiceMask");
    v19 = 0;
    v11 = xpc_dictionary_get_data(v4, "kCBMsgArgLinkKey", &v19);
    value = 0;
    v21 = 0uLL;
    if (v11)
    {
      if (v19)
      {
        v21 = *v11;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085F2F0();
      if (uint64)
      {
        goto LABEL_7;
      }
    }

    else if (uint64)
    {
LABEL_7:
      v12 = sub_10051CA8C(uint64, v7, string, v9, v10, &v21, &value);
LABEL_14:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v14 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
      v16 = value;
      v15 = "kCBMsgArgBTDevice";
      v13 = v14;
      goto LABEL_16;
    }

    v12 = 7;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v13 = xpc_dictionary_create_reply(xdict);
  if (v13)
  {
    v14 = v13;
    v15 = "kCBMsgArgResult";
    v16 = 8;
LABEL_16:
    xpc_dictionary_set_uint64(v13, v15, v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_1006B4A5C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgMicMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F358();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051D754(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B4B60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F3C0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DF58(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B4C64(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F428();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EE98(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgMicMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4D74(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F490();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DE78(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B4E78(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F4F8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051F008(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarDetect", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

uint64_t sub_1006B4F88(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgEventType");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgUserData");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F560();
  }

  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 8);
  if (uint64)
  {
    v9 = *(a1 + 72);
    v10 = *(v9 + 40);
    asid = xpc_connection_get_asid(*(v9 + 16));
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v30 = uint64;
      v31 = 1024;
      *v32 = v10;
      *&v32[4] = 2048;
      *&v32[6] = asid;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10085EDB4();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v10, asid))
    {
      v13 = *(a1 + 80);
      if (v13 == (a1 + 88))
      {
LABEL_20:
        v19 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040EB02D296uLL);
        v27 = v19;
        v19[6] = v6;
        v19[7] = uint64;
        v19[4] = sub_1006B1F8C;
        v19[5] = v7;
        v19[8] = *(a1 + 72);
        v19[9] = a1;
        if (v8)
        {
          v20 = -1;
        }

        else
        {
          v20 = 0;
        }

        *(v19 + 22) = (v6 << 25) >> 31;
        *(v19 + 23) = v20;
        sub_1000452CC(a1 + 80, &v27);
        v21 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 96);
          *buf = 134219008;
          v30 = uint64;
          v31 = 2048;
          *v32 = v27 + 4;
          *&v32[8] = 2048;
          *&v32[10] = v7;
          v33 = 2048;
          v34 = v6;
          v35 = 2048;
          v36 = v26;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::handleBTAccessoryRegisterCustomMessageClientMsg accessoryManager:%llx callbacks:%p cbid:%llu messageType:%llX fBTAccessoryCallbacks.size():%lu", buf, 0x34u);
        }

        if (*(a1 + 104))
        {
          v14 = 0;
        }

        else
        {
          v22 = sub_10051F300(uint64, v27 + 4, -1, (v27 + 9));
          if (v22)
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085F5C8();
            }

            v14 = v22;
          }

          else
          {
            v14 = 0;
            *(a1 + 104) = 1;
          }
        }
      }

      else
      {
        v14 = 1;
        while (1)
        {
          v15 = v13[4];
          if (v15[5] == v7 && v15[7] == uint64 && v15[6] == v6)
          {
            break;
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
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v24 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v24);
    xpc_release(v24);
  }

  return sub_1000088CC(v28);
}

void sub_1006B5350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B5374(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F5FC();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = uint64;
      v23 = 1024;
      v24 = v8;
      v25 = 2048;
      v26 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10085EDB4();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
    {
      v11 = *(a1 + 80);
      if (v11 == (a1 + 88))
      {
LABEL_18:
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085EEAC();
        }

        v16 = 0;
      }

      else
      {
        while (1)
        {
          v12 = v11[4];
          if (v12[5] == v6 && v12[7] == uint64)
          {
            break;
          }

          v13 = v11[1];
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
              v14 = v11[2];
              v15 = *v14 == v11;
              v11 = v14;
            }

            while (!v15);
          }

          v11 = v14;
          if (v14 == (a1 + 88))
          {
            goto LABEL_18;
          }
        }

        *buf = v11[4];
        if (*(a1 + 104) == 1)
        {
          v20 = sub_10051F3B4(uint64, v12 + 4);
          *(a1 + 104) = 0;
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }

        sub_100075DC4((a1 + 80), buf);
        free(*buf);
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }

  return sub_1000088CC(v21);
}

void sub_1006B564C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgClientType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F664();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051F44C(uint64, v7, v6, data, length);
    goto LABEL_6;
  }

  v9 = 7;
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

void sub_1006B5784(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F6CC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051F6B0(uint64, v6, data, length);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B589C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7, v8);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  v14 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F734();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v11 = sub_10051FB30(uint64, v6, v10, &v14, v7);
    goto LABEL_6;
  }

  v11 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v14);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B5A38(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgInterval");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F79C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051FCE4(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
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

void sub_1006B5B5C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F804();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051FE28(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B5C60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgValue");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F86C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051FF64(uint64, v6, v8, v7);
    goto LABEL_6;
  }

  v9 = 7;
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

void sub_1006B5D84(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F8D4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EB24(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapAction", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B5E94(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgType");
  v8 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSubType");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F93C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_1005201C4(uint64, v6, v7, v8, &value);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B5FDC(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F9A4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EC88(uint64, v6, &value + 1, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapActionLeft", HIDWORD(value));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapActionRight", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6104(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FA0C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051D350(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapCapability", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6214(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value[0] = 0x300000003;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FA74();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051E250(uint64, v6, value + 1, value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarStatusPrimary", HIDWORD(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarStatusSecondary", LODWORD(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6340(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgFeature");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FADC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051D4B8(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgSupported", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B6468(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapAction");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FB44();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051CE28(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B656C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapActionLeft");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapActionRight");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FBAC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051D0A4(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
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

void sub_1006B6690(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FC14();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100521494(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMSgArgFeatureBitMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B67A0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7, v8);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  v14 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FC7C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v11 = sub_100521730(uint64, v6, v10, &v14, v7);
    goto LABEL_6;
  }

  v11 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v14);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B693C(uint64_t a1, xpc_object_t xdict)
{
  v41 = a1;
  v48 = xdict;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v3 = xpc_dictionary_get_uint64(value, "kCBMsgArgAddressStringBuffSize");
  v4 = xpc_dictionary_get_uint64(value, "kCBMsgArgNameBuffSize");
  v5 = xpc_dictionary_get_uint64(value, "kCBMsgArgManufacturerBuffSize");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgModelNumberBuffSize");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgSerialNumberBuffSize");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgFWVersionBuffSize");
  v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgHWVersionBuffSize");
  __chkstk_darwin(v9, v10);
  v12 = &v40 - v11;
  v46 = v3;
  bzero(&v40 - v11, v3);
  __chkstk_darwin(v13, v14);
  v16 = &v40 - v15;
  v45 = v4;
  bzero(&v40 - v15, v4);
  __chkstk_darwin(v17, v18);
  v20 = &v40 - v19;
  v44 = v5;
  bzero(&v40 - v19, v5);
  __chkstk_darwin(v21, v22);
  v24 = &v40 - v23;
  v43 = v6;
  bzero(&v40 - v23, v6);
  __chkstk_darwin(v25, v26);
  v28 = &v40 - v27;
  v42 = v7;
  bzero(&v40 - v27, v7);
  __chkstk_darwin(v29, v30);
  v32 = &v40 - v31;
  bzero(&v40 - v31, v8);
  __chkstk_darwin(v33, v34);
  v36 = &v40 - v35;
  bzero(&v40 - v35, v9);
  *v12 = 0;
  *v16 = 0;
  *v20 = 0;
  *v24 = 0;
  *v28 = 0;
  *v32 = 0;
  *v36 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FCE4();
  }

  v37 = sub_100521E2C(uint64, v12, v46, v16, v45, v20, v44, v24, v43, v28, v42, v32, v8, v36, v9);
  reply = xpc_dictionary_create_reply(v48);
  if (reply)
  {
    v39 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v37);
    if (!v37)
    {
      xpc_dictionary_set_string(v39, "kCBMsgArgAddressString", v12);
      xpc_dictionary_set_string(v39, "kCBMsgArgName", v16);
      xpc_dictionary_set_string(v39, "kCBMsgArgManufacturer", v20);
      xpc_dictionary_set_string(v39, "kCBMsgArgModelNumber", v24);
      xpc_dictionary_set_string(v39, "kCBMsgArgSerialNumber", v28);
      xpc_dictionary_set_string(v39, "kCBMsgArgFWVersion", v32);
      xpc_dictionary_set_string(v39, "kCBMsgArgHWVersion", v36);
    }

    xpc_connection_send_message(*(*(v41 + 72) + 16), v39);
    xpc_release(v39);
  }
}

void sub_1006B6D38(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FD24();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100521EF8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgColor", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6E48(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FD8C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525210(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgWSSpatial", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6F58(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgSetupType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgOPType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FDF4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10051E3B8(uint64, v6, v7, v8, data, length);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B70A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgRelayMsgType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v9 = data;
    v15 = 0;
    v10 = xpc_dictionary_get_data(value, "kCBMsgArgData", &v15);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085FE5C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v11 = sub_10051E66C(uint64, v6, v9, v7, v10, v15);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v13 = reply;
      v14 = v11;
      goto LABEL_13;
    }

    v11 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    v14 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B7254(uint64_t a1, xpc_object_t xdict)
{
  v21 = a1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v20 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v5 = xpc_dictionary_get_uint64(value, "kCBMsgArgCmdReqType");
  array = xpc_dictionary_get_array(value, "kCBMsgArgDeviceArray");
  count = xpc_array_get_count(array);
  v8 = count;
  v9 = count;
  __chkstk_darwin(count, 6 * count);
  v11 = &v20 - v10;
  bzero(&v20 - v10, v12);
  if (v9)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      length = 0;
      data = xpc_array_get_data(array, v13, &length);
      if (length >= 6)
      {
        v16 = 6;
      }

      else
      {
        v16 = length;
      }

      memcpy(v14, data, v16);
      ++v13;
      v14 += 6;
    }

    while (v9 != v13);
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FEC4();
    if (uint64)
    {
      goto LABEL_9;
    }
  }

  else if (uint64)
  {
LABEL_9:
    v17 = sub_10051E8D0(uint64, v20, v5, v11, v8);
    goto LABEL_12;
  }

  v17 = 7;
LABEL_12:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v19 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v17);
    xpc_connection_send_message(*(*(v21 + 72) + 16), v19);
    xpc_release(v19);
  }
}

void sub_1006B7450(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  if (v6 > 0x3E7)
  {
    v7 = 1000;
  }

  else
  {
    v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
    v7 = v6;
  }

  v15 = 0;
  __chkstk_darwin(v6, 8 * v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FF2C();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v10 = sub_100522034(uint64, v9, &v15, v7);
    goto LABEL_9;
  }

  v10 = 7;
LABEL_9:
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
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v9[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1006B7638(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FF94();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1005234C8(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B773C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FFFC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052358C(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B784C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860064();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005238F0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B795C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v8 = data;
    v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryDeviceState");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008600CC();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_100523C60(uint64, v6, v8, v9);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v12 = reply;
      v13 = v10;
      goto LABEL_13;
    }

    v10 = 7;
    goto LABEL_11;
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
LABEL_13:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B7AE4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860134();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100523EB0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B7BF4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = 0;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086019C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_1005245AC(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B7D10(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = -1;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860204();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_1005246C4(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B7E30(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    v8 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBool");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086026C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v9 = sub_1005248B8(uint64, v7, v8);
      goto LABEL_8;
    }

    v9 = 7;
  }

  else
  {
    v9 = 3;
  }

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

void sub_1006B7F40(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  memset(v14, 0, 7);
  if (!value)
  {
    v9 = 0;
    v8 = 3;
    goto LABEL_11;
  }

  v5 = value;
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008602D4();
    if (uint64)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    v8 = 7;
    goto LABEL_11;
  }

  if (!uint64)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = sub_100524178(uint64, v7, v14);
  v9 = v14[0];
  if (LOBYTE(v14[0]) == 1)
  {
    v11 = v14[0] | ((LOWORD(v14[1]) | (BYTE2(v14[1]) << 16)) << 32);
    v10 = (v14[0] >> 20) & 0xF0 | (v11 >> 24) & 0xF00 | (v11 >> 28) & 0xF000 | HIDWORD(v11) & 0xF0000 | 1;
    goto LABEL_12;
  }

  if (LOBYTE(v14[0]))
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v10 = (v9 >> 4) & 0xF0 | (v9 >> 8) & 0xF00;
LABEL_12:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgCallManagementMessage", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B80D8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  value = 0;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086033C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_100524308(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgFeatureProxCardStatusMessage", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B81F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    v8 = xpc_dictionary_get_uint64(v5, "kCBMsgArgFeatureProxCardStatusMessage");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008603A4();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v9 = sub_1005244DC(uint64, v7, v8);
      goto LABEL_8;
    }

    v9 = 7;
  }

  else
  {
    v9 = 3;
  }

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

void sub_1006B8304(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = 0;
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086040C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100523FD8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStereoHFPSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8414(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860474();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051D5B4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAnnounceMsgSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8524(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7, v8);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  v14 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008604DC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v11 = sub_100521C70(uint64, v6, v10, &v14, v7);
    goto LABEL_6;
  }

  v11 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v14);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B86C0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAACPCapabilityInteger");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860544();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100521D7C(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B87E8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008605AC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DE80(uint64, v7, v6);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B88EC(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860614();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524A68(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAnnounceCallsSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B89FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  string = xpc_dictionary_get_string(value, "kCBMsgArgAccessoryBundleID");
  v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryHeadTrackingStatus");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086067C();
    if (string)
    {
LABEL_3:
      if (uint64)
      {
        v10 = sub_100522C8C(uint64, v6, string, v7, v9);
      }

      else
      {
        v10 = 7;
      }

      goto LABEL_8;
    }
  }

  else if (string)
  {
    goto LABEL_3;
  }

  v10 = 3;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B8B44(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(v4, "kCBMsgArgAccessoryBundleID");
  value[0] = 0xFFFFFFFFFFLL;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008606E4();
    if (string)
    {
LABEL_3:
      if (uint64)
      {
        v8 = sub_100523118(uint64, v6, string, value + 1, value);
      }

      else
      {
        v8 = 7;
      }

      goto LABEL_8;
    }
  }

  else if (string)
  {
    goto LABEL_3;
  }

  v8 = 3;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryGenericConfigMode", HIDWORD(value[0]));
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryHeadTrackingStatus", LODWORD(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B8C98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086074C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100522568(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B8DA0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008607D0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100522934(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8EB0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LOWORD(value) = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryJBL");
  v10 = v6;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860850();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524BFC(uint64, &v10, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryJBL", value);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8FE8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008608B8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005221B4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B90F8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860920();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051F17C(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
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

void sub_1006B91FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  memset(length, 0, sizeof(length));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860988();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525044(uint64, v6, &length[1], length);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    if (!v7 && *&length[1])
    {
      xpc_dictionary_set_data(v9, "kCBMsgArgData", *&length[1], length[0]);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }

  if (*&length[1])
  {
    free(*&length[1]);
  }
}

void sub_1006B932C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008609F0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524ED4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgSensorStreamingFrequency", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B943C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgProductId");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7, v8);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  v14 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860A58();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    v11 = sub_100525384(v6, uint64, v10, &v14, v7);
    goto LABEL_6;
  }

  v11 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v14);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B95D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = xpc_dictionary_get_value(value, "kCBMsgArgProductIds");
  count = xpc_array_get_count(v5);
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v7[i] = xpc_array_get_uint64(v5, i);
    }
  }

  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v10 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v10, v11);
  v13 = &v17 - v12;
  bzero(&v17 - v12, v10);
  v17 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860AC0();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v14 = sub_1005256B8(uint64, v7, count, v13, &v17, v10);
    goto LABEL_9;
  }

  v14 = 7;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v16 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v14);
    if (!v14)
    {
      xpc_dictionary_set_data(v16, "kCBMsgArgData", v13, v17);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v16);
    xpc_release(v16);
  }

  free(v7);
}

void sub_1006B97C8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 3;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860B28();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525A14(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    if (!v7)
    {
      xpc_dictionary_set_uint64(v9, "kCBMsgArgPrimarySide", value);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B98E0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgHeadphoneFeatureType");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860B90();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100525BE8(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgHeadphoneFeatureValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B9A08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgHeadphoneFeatureType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgHeadphoneFeatureValue");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860BF8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_100526120(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
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

void sub_1006B9B2C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAVMsgLen");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (length == v7)
  {
    v9 = data;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860CC8();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_10051F910(uint64, v6, v7, v9);
      goto LABEL_10;
    }

    v10 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100860C60();
    }

    v10 = 3;
  }

LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B9C98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgPMEMsgLen");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (length == v7)
  {
    v9 = data;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860D98();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_10051FA20(uint64, v6, v7, v9);
      goto LABEL_10;
    }

    v10 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100860D30();
    }

    v10 = 3;
  }

LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

uint64_t sub_1006B9E04(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      v13 = 0u;
      v14 = 0u;
      v5 = v4[1];
      v13 = *v4;
      v14 = v5;
      v6 = v4[2].i64[0];
      v12 = v6;
      v7 = v4[3].u64[1];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v5))))))
      {
        sub_10051BC64(v7, v13.i8);
      }

      else if (v6 && *(a1 + 104) == 1)
      {
        sub_10051F3B4(v7, &v12);
        *(a1 + 104) = 0;
      }

      free(v4);
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

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  sub_1000088CC(v15);
  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1006B9F60(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 80, *(v1 + 88));
  *v1 = &off_100AF7B80;
  sub_10007A068(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1006B9FB0(uint64_t a1)
{
  sub_1006B9E04(a1);

  operator delete();
}

uint64_t sub_1006B9FE8(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      v13 = 0u;
      v14 = 0u;
      v5 = v4[1];
      v13 = *v4;
      v14 = v5;
      v6 = v4[2].i64[0];
      v12 = v6;
      v7 = v4[3].u64[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v5))))) & 1) != 0 && *(a1 + 105) == 1)
      {
        sub_10051BC64(v7, v13.i8);
        *(a1 + 105) = 0;
      }

      else if (v6 && *(a1 + 104) == 1)
      {
        sub_10051F3B4(v7, &v12);
        *(a1 + 104) = 0;
      }

      free(v4);
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

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  return sub_1000088CC(v15);
}

void sub_1006BA11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BA130(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t **sub_1006BA258(void *a1, uint64_t a2)
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

void sub_1006BA4D4()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCEAD8 = 0u;
  unk_100BCEAE8 = 0u;
  dword_100BCEAF8 = 1065353216;
  __cxa_atexit(sub_1006B1178, &xmmword_100BCEAD8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1006BA540(uint64_t a1)
{
  *a1 = off_100B07488;
  *(a1 + 8) = off_100B074D8;
  *(a1 + 16) = &off_100B07508;
  sub_100044BBC(a1 + 32);
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0;
  *(a1 + 97) = 0;
  *(a1 + 101) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1006BA5F0(uint64_t a1)
{
  *a1 = off_100B07488;
  *(a1 + 8) = off_100B074D8;
  *(a1 + 16) = &off_100B07508;
  sub_10000CEDC(a1 + 104, *(a1 + 112));
  sub_10007A068(a1 + 32);
  return a1;
}

void sub_1006BA688(uint64_t a1)
{
  sub_1006BA5F0(a1);

  operator delete();
}

void sub_1006BA6C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100860E00();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  sub_1006BA728(a1);
  v2 = sub_100017E6C();
  sub_1006BCC00(v2 + 984, a1 + 16);
  *(a1 + 24) = 0;
}

void sub_1006BA728(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "void BT::SonyGamepadPairingManager::getSystemSettingForUSBBTPairing()";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: getSystemSettingForUSBBTPairing does not exist in plist; by default is ON", &v7, 0xCu);
    }

    v3 = 1;
  }

  *(a1 + 128) = v3;
  v5 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "not present";
    v8 = "void BT::SonyGamepadPairingManager::getSystemSettingForUSBBTPairing()";
    v7 = 136315650;
    if (v3)
    {
      v6 = "present";
    }

    v9 = 2080;
    v10 = v6;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Defaults write to enable Classic GC USB BT Pairing is %s and current setting is %d.", &v7, 0x1Cu);
  }
}

void sub_1006BA8E8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100860E00();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 8);
  v2 = sub_100017E6C() + 984;

  sub_1006BCEA0(v2, a1 + 16);
}

uint64_t sub_1006BA950(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 32);
  if ((*(a1 + 96) & 1) == 0)
  {
    *(a1 + 96) = 1;
    v4 = 0;
    v3 = 0;
    if (qword_100B50AA0 != -1)
    {
      sub_100860E14();
    }

    sub_10009BE34(off_100B50A98, &v3);
    *(a1 + 97) = v3;
    *(a1 + 101) = v4;
    sub_1006BA9FC(a1);
  }

  return sub_1000088CC(v5);
}

void sub_1006BA9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BA9FC(IOHIDManagerRef *a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up USB Listener for USB Pairing", buf, 2u);
  }

  sub_1006BAF74(a1);
  valuePtr = 1356;
  v3 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  v26 = 3302;
  v4 = CFNumberCreate(0, kCFNumberShortType, &v26);
  v25 = 3570;
  v5 = CFNumberCreate(0, kCFNumberShortType, &v25);
  v24 = 1476;
  v6 = CFNumberCreate(0, kCFNumberShortType, &v24);
  v23 = 2508;
  v7 = CFNumberCreate(0, kCFNumberShortType, &v23);
  if (!a1[3])
  {
    v8 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    a1[3] = v8;
    if (v8)
    {
      v19 = v5;
      v9 = v4;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v18 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      CFDictionaryAddValue(Mutable, @"Transport", @"USB");
      CFDictionaryAddValue(Mutable, @"VendorID", v3);
      v20 = v9;
      v14 = v9;
      v5 = v19;
      CFDictionaryAddValue(Mutable, @"ProductID", v14);
      CFDictionaryAddValue(v11, @"Transport", @"USB");
      CFDictionaryAddValue(v11, @"VendorID", v3);
      CFDictionaryAddValue(v11, @"ProductID", v19);
      CFDictionaryAddValue(v12, @"Transport", @"USB");
      CFDictionaryAddValue(v12, @"VendorID", v3);
      CFDictionaryAddValue(v12, @"ProductID", v6);
      CFDictionaryAddValue(v13, @"Transport", @"USB");
      CFDictionaryAddValue(v13, @"VendorID", v3);
      CFDictionaryAddValue(v13, @"ProductID", v7);
      cf = Mutable;
      CFArrayAppendValue(v18, Mutable);
      CFArrayAppendValue(v18, v11);
      CFArrayAppendValue(v18, v12);
      CFArrayAppendValue(v18, v13);
      IOHIDManagerSetDeviceMatchingMultiple(a1[3], v18);
      if (IOHIDManagerOpen(a1[3], 0))
      {
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100860E3C();
        }
      }

      else
      {
        IOHIDManagerRegisterDeviceMatchingCallback(a1[3], sub_1006BAFE0, a1);
        IOHIDManagerRegisterDeviceRemovalCallback(a1[3], sub_1006BB068, a1);
        v15 = a1[3];
        Main = CFRunLoopGetMain();
        IOHIDManagerScheduleWithRunLoop(v15, Main, kCFRunLoopCommonModes);
        v17 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created Sony HIDManager", v22, 2u);
        }
      }

      v4 = v20;
      if (v18)
      {
        CFRelease(v18);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085CD08();
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t sub_1006BAE8C(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SonyGamepadPairingManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v7 = 0;
  sub_100007F88(buf, a1 + 32);
  *(a1 + 96) = 0;
  sub_1006BAF74(a1);
  v3 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SonyGamepadPairingManager::stackWillStop exit", v5, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_1006BAF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BAF74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Main = CFRunLoopGetMain();
    IOHIDManagerUnscheduleFromRunLoop(v1, Main, kCFRunLoopCommonModes);
    IOHIDManagerClose(*(a1 + 24), 0);
    CFRelease(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

void sub_1006BAFE0(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BCF78;
  v7[3] = &unk_100AE0860;
  v7[4] = a1;
  v7[5] = v5;
  sub_10000CA94(v6, v7);
}

void sub_1006BB068(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BD07C;
  v7[3] = &unk_100AE0860;
  v7[4] = a1;
  v7[5] = v5;
  sub_10000CA94(v6, v7);
}

void sub_1006BB0F0(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v5 = sub_1006BB29C(a1, a3);
  v6 = qword_100BCE9F0;
  v7 = os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      sub_1000DEEA4(v5, __p);
      v8 = v11 >= 0 ? __p : *__p;
      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting USB device to initiate Bluetooth Connection to device %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AC0 != -1)
    {
      sub_100860E78();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006BB488;
    v9[3] = &unk_100ADF8F8;
    v9[4] = v5;
    sub_100592E70(off_100B50AB8, v9);
    *(v5 + 1360) = 0;
    sub_1006BB518(a1, v5);
  }

  else if (v7)
  {
    *__p = 134217984;
    *&__p[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Can't find device with ioHIDRef %p", __p, 0xCu);
  }
}

uint64_t sub_1006BB29C(uint64_t a1, __IOHIDDevice *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 32);
  if (a2)
  {
    v4 = IOHIDDeviceGetProperty(a2, @"LocationID");
    v5 = *(a1 + 104);
    v6 = (a1 + 112);
    if (v5 == v6)
    {
LABEL_10:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 10);
        if (v7 == [v4 intValue])
        {
          break;
        }

        v8 = v5[1];
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
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
        if (v9 == v6)
        {
          goto LABEL_10;
        }
      }

      v12 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(v5[4], __p);
        v13 = v19;
        v14 = __p[0];
        v15 = [v4 intValue];
        v16 = __p;
        if (v13 < 0)
        {
          v16 = v14;
        }

        *buf = 136315394;
        v22 = v16;
        v23 = 1024;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found HID device %s with location ID %d", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = v5[4];
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000088CC(v20);
  return v11;
}

void sub_1006BB444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BB488(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = *(a1 + 32);
  memset(&__p, 0, sizeof(__p));
  sub_10059234C(off_100B50AB8, v2, 32, &__p, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1006BB4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BB518(uint64_t a1, unint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 32);
  if (a2)
  {
    v6 = *(a1 + 112);
    v5 = (a1 + 112);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = (v5 - 1);
    v8 = v5;
    do
    {
      v9 = v4[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v4;
      }

      v4 = v4[v11];
    }

    while (v4);
    if (v8 != v5 && v8[4] <= a2)
    {
      v13 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, __p);
        v14 = v17 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing HID device %s from map", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10002717C(v7, v8);
      operator delete(v8);
    }

    else
    {
LABEL_10:
      v12 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_1000DEEA4(a2, __p);
        sub_10085CD80(__p, buf, v12);
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_1006BB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BB6C8(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v6 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = os_variant_is_recovery();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleIncomingUSBDevice called isBaseSystem %d", buf, 8u);
  }

  if (!a2 || !a3)
  {
    v7 = qword_100BCE9F0;
LABEL_12:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 128);
      *buf = 134218496;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 1024;
      v53 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sony Pairing: Invalid context (%p) / device (%p) / enabled (%d)\n", buf, 0x1Cu);
    }

    return;
  }

  v7 = qword_100BCE9F0;
  if ((*(a1 + 128) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found Sony Device", buf, 2u);
  }

  v44 = 0;
  v43 = 0;
  bytes = 0uLL;
  if (IOHIDDeviceOpen(a3, 0))
  {
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_100860EB4();
    }

    return;
  }

  *report = 0;
  v49 = 0;
  v50 = 0;
  pReportLength = 20;
  if (sub_1006BD118(a3) >= 2)
  {
    v8 = 9;
  }

  else
  {
    v8 = 18;
  }

  if (IOHIDDeviceGetReport(a3, kIOHIDReportTypeFeature, v8, report, &pReportLength))
  {
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_100860EF0();
    }

    v9 = sub_100017F4C();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1006BCB28;
    v30[3] = &unk_100ADF8F8;
    v30[4] = a1;
    sub_10008E008(v9, 5000, v30);
    return;
  }

  __dst = 0;
  v40 = 0;
  v41 = 0;
  if (pReportLength >= 0x14)
  {
    v11 = 20;
  }

  else
  {
    v11 = pReportLength;
  }

  memcpy(&__dst, report, v11);
  v37 = *(&__dst + 1);
  v38 = *(&__dst + 5);
  v12 = &v43;
  for (i = 5; i != -1; --i)
  {
    *v12 = *(&v37 + i);
    v12 = (v12 + 1);
  }

  v14 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully got device report", buf, 2u);
  }

  if (v43 | v44)
  {
    v35 = v43;
    v36 = v44;
    v15 = qword_100BCE9F0;
    v16 = os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      sub_1000BE6F8(&v35, buf);
      v17 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      v46.n128_u32[0] = 136446210;
      *(v46.n128_u64 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BT ADDR %{public}s", &v46, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = sub_1006BBF1C(v16, &v43);
    if (v18)
    {
      sub_1006BC04C(a1, a3, v18);
      if (sub_1006BC30C(a1, a3))
      {
        if (sub_1000C0348(v18))
        {
          if (qword_100B50AC0 != -1)
          {
            sub_100860E78();
          }

          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1006BC52C;
          v34[3] = &unk_100ADF8F8;
          v34[4] = v18;
          sub_100592E70(off_100B50AB8, v34);
        }

        v18[85].n128_u8[0] = 1;
        return;
      }

      v19 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Did not find existing link key. Must generate new one", buf, 2u);
      }
    }

    v20 = CCRandomGenerateBytes(&bytes, 0x10uLL);
    v21 = qword_100BCE9F0;
    if (v20)
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10085CF28();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully generated Link Key preparing it to send to device", buf, 2u);
      }

      if (sub_1006BC584(a1, a3, &bytes))
      {
        v22 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100860F64(&v35, v22);
        }
      }

      else
      {
        v46 = 0uLL;
        v47 = 0;
        sub_1006D1BB0(&v46, &bytes, 5u);
        if (!v18)
        {
          if (qword_100B508F0 != -1)
          {
            sub_10086101C();
          }

          v18 = sub_1000E6554(off_100B508E8, &v35, 1);
        }

        memset(buf, 0, sizeof(buf));
        sub_1006BC904(a3, buf);
        v45 = 0;
        sub_100016250(&v45);
        *&v33 = v45;
        *(&v33 + 1) = SWORD2(v45);
        sub_100538494(v18, buf, &v33);
        v18[36].n128_u8[7] = 1;
        sub_100548A1C(v18, 1);
        v23 = BYTE1(v40);
        v24 = v40;
        v25 = HIBYTE(__dst);
        valuePtr = 0;
        LODWORD(v33) = 0;
        LODWORD(v45) = 0;
        Property = IOHIDDeviceGetProperty(a3, @"ProductID");
        v27 = IOHIDDeviceGetProperty(a3, @"VendorID");
        v28 = IOHIDDeviceGetProperty(a3, @"VersionNumber");
        if (Property)
        {
          CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
        }

        if (v27)
        {
          CFNumberGetValue(v27, kCFNumberIntType, &v45);
        }

        if (v28)
        {
          CFNumberGetValue(v28, kCFNumberIntType, &v33);
        }

        if (qword_100B508F0 != -1)
        {
          sub_10086101C();
        }

        sub_10056B7FC(off_100B508E8, v18, (v23 << 16) | (v24 << 8) | v25);
        if (qword_100B508F0 != -1)
        {
          sub_10086101C();
        }

        v29 = (*(*off_100B508E8 + 48))(off_100B508E8, v18, 1);
        sub_1006BC964(v29, v18, &v46);
        if (sub_1000C0348(v18))
        {
          if (qword_100B50AC0 != -1)
          {
            sub_100860E78();
          }

          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1006BCAD0;
          v31[3] = &unk_100ADF8F8;
          v31[4] = v18;
          sub_100592E70(off_100B50AB8, v31);
        }

        v18[85].n128_u8[0] = 1;
        sub_10053D890(v18, 2, v45, valuePtr, v33);
        sub_1006BC04C(a1, a3, v18);
        if (qword_100B50F88 != -1)
        {
          sub_100861044();
        }

        sub_1006E1E34(off_100B50F80, v18);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        nullsub_21(&v46);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
  {
    sub_10085D038();
  }
}

uint64_t sub_1006BBF1C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (qword_100B512E8 != -1)
  {
    sub_10086106C();
  }

  v3 = sub_10009DF08(off_100B512E0, &__p);
  v4 = __p;
  if (v3 || __p == v15)
  {
LABEL_4:
    v5 = 0;
  }

  else
  {
    v7 = __p;
    while (1)
    {
      v5 = *v7;
      v12 = *(*v7 + 128);
      v8 = *(v5 + 132);
      v13 = *(v5 + 132);
      if (v12 == *a2 && v8 == *(a2 + 4))
      {
        break;
      }

      v7 += 8;
      if (v7 == v15)
      {
        goto LABEL_4;
      }
    }

    v10 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Already paired", v11, 2u);
      v4 = __p;
    }
  }

  if (v4)
  {
    v15 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_1006BC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BC04C(uint64_t a1, __IOHIDDevice *a2, unint64_t a3)
{
  v28[1] = 0;
  v29 = a3;
  v28[0] = 0;
  sub_100007F88(v28, a1 + 32);
  if (a2 && a3)
  {
    v6 = IOHIDDeviceGetProperty(a2, @"LocationID");
    if (v6)
    {
      v9 = *(a1 + 112);
      v8 = a1 + 112;
      v7 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v8;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= a3;
        v13 = v11 < a3;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v8 && *(v10 + 32) <= a3)
      {
        v20 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEEA4(a3, __p);
          v22 = v27;
          v23 = __p[0];
          v24 = [v6 intValue];
          v25 = __p;
          if (v22 < 0)
          {
            v25 = v23;
          }

          *buf = 136315394;
          v31 = v25;
          v32 = 1024;
          v33 = v24;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Already have a USB HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
LABEL_12:
        v14 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000DEEA4(a3, __p);
          v15 = v27;
          v16 = __p[0];
          v17 = [v6 intValue];
          v18 = __p;
          if (v15 < 0)
          {
            v18 = v16;
          }

          *buf = 136315394;
          v31 = v18;
          v32 = 1024;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = [v6 intValue];
        __p[0] = &v29;
        *(sub_1005C468C(v8 - 8, &v29) + 10) = v19;
      }
    }

    else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D088();
    }
  }

  return sub_1000088CC(v28);
}

void sub_1006BC2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BC30C(uint64_t a1, __IOHIDDevice *a2)
{
  v4 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134217984;
    *&__p[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Seeing if paired device Link Key already exists for iohid ref %p", __p, 0xCu);
  }

  v5 = sub_1006BB29C(a1, a2);
  if (v5)
  {
    v14 = 0uLL;
    v15 = 0;
    sub_1006D1B74(&v14);
    if (qword_100B512E8 != -1)
    {
      sub_100861080();
    }

    if (sub_1006E7E2C(off_100B512E0, v5, &v14))
    {
      goto LABEL_7;
    }

    v7 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v5, __p);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing to send existing Link Key to %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    v9 = nullsub_21(&v14);
    if (sub_1006BC584(a1, a2, v9))
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10085D0EC();
      }

LABEL_7:
      nullsub_21(&v14);
      return 0;
    }

    nullsub_21(&v14);
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
  {
    sub_10085D128();
  }

  return 1;
}

void sub_1006BC50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nullsub_21(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BC52C(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593A4C(v2, v3, -1);
}

uint64_t sub_1006BC584(uint64_t a1, __IOHIDDevice *a2, _OWORD *a3)
{
  v5 = a1 + 97;
  v29 = *(a1 + 97);
  v30 = *(a1 + 101);
  v28 = 0;
  v27 = 0;
  v6 = &v27;
  for (i = 5; i != -1; --i)
  {
    *v6 = *(&v29 + i);
    v6 = (v6 + 1);
  }

  v25 = v27;
  v26 = v28;
  v8 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v25, __p);
    v9 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    buf[0] = 136446210;
    *&buf[1] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendLinkKeyToDevice HOST BT ADDR %{public}s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(&buf[5] + 3) = 0;
  if (sub_1006BD118(a2) >= 2)
  {
    v10 = 10;
  }

  else
  {
    v10 = 19;
  }

  LOBYTE(buf[0]) = v10;
  *(buf + 1) = v25;
  *(&buf[1] + 1) = v26;
  *(&buf[1] + 3) = *a3;
  if (sub_1006BD118(a2) >= 2)
  {
    v11 = 10;
  }

  else
  {
    v11 = 19;
  }

  v12 = IOHIDDeviceSetReport(a2, kIOHIDReportTypeFeature, v11, buf, 27);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_1008610A8();
    }
  }

  else
  {
    *report = 0;
    v33 = 0;
    v34 = 0;
    pReportLength = 20;
    if (sub_1006BD118(a2) >= 2)
    {
      v15 = 9;
    }

    else
    {
      v15 = 18;
    }

    if (!IOHIDDeviceGetReport(a2, kIOHIDReportTypeFeature, v15, report, &pReportLength) || ((memset(__p, 0, 20), pReportLength >= 0x14) ? (v16 = 20) : (v16 = pReportLength), (memcpy(__p, report, v16), v22 = *(&__p[1] + 2), v23 = HIWORD(__p[1]), *(&__p[1] + 2) == *v5) ? (v17 = HIWORD(__p[1]) == *(v5 + 4)) : (v17 = 0), v17))
    {
      v18 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully resent Link Key to paired device", __p, 2u);
      }

      memset(__p + 2, 0, 46);
      if (sub_1006BD118(a2) >= 2)
      {
        v19 = 8;
      }

      else
      {
        v19 = 20;
      }

      LOBYTE(__p[0]) = v19;
      BYTE1(__p[0]) = 2;
      if (sub_1006BD118(a2) >= 2)
      {
        v20 = 8;
      }

      else
      {
        v20 = 20;
      }

      v13 = IOHIDDeviceSetReport(a2, kIOHIDReportTypeFeature, v20, __p, 48);
      v21 = qword_100BCE9F0;
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100861194();
        }
      }

      else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully to command teardown BT Link to paired device", &v22, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10086111C();
      }

      return 0;
    }
  }

  return v13;
}

_BYTE *sub_1006BC904@<X0>(__IOHIDDevice *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1006BD118(a1);
  v4 = "DUALSHOCK 4 Wireless Controller";
  if (v3 == 3)
  {
    v4 = "DualSense Edge Wireless Controller";
  }

  if (v3 == 2)
  {
    v5 = "DualSense Wireless Controller";
  }

  else
  {
    v5 = v4;
  }

  return sub_100007E30(a2, v5);
}

void sub_1006BC964(uint64_t a1, unsigned __int8 *a2, __n128 *a3)
{
  v5 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting To Pair device", __p, 2u);
  }

  if (qword_100B512E8 != -1)
  {
    sub_100861080();
  }

  v6 = sub_1006E7F2C(off_100B512E0, a2, a3, 1);
  v7 = qword_100BCE9F0;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D27C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2 + 128, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SUCCESSFULLY PAIRED ADDR: %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1006BCAD0(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593A4C(v2, v3, -1);
}

void sub_1006BCB30(uint64_t a1, int a2)
{
  v4 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "virtual void BT::SonyGamepadPairingManager::gameControllerUSBBTPairingChanged(BOOL)";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: GC USB Bluetooth Pairing changed to %d", &v5, 0x12u);
  }

  *(a1 + 128) = a2;
}

void sub_1006BCC00(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1006BCCCC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006BCCCC(void *a1, char *__src, char *a3)
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

void sub_1006BCE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BCEA0(uint64_t a1, uint64_t a2)
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
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1006BCF78(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sony USB Device Matched, handleIncomingUSBDevice", v3, 2u);
  }

  if (qword_100B54CB0 != -1)
  {
    sub_100861208();
  }

  sub_1006BB6C8(off_100B54CA8, *(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
}

void sub_1006BD07C(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sony USB Device Removed", v4, 2u);
  }

  if (qword_100B54CB0 != -1)
  {
    sub_100861208();
  }

  sub_1006BB0F0(off_100B54CA8, v3, *(a1 + 40));
  CFRelease(*(a1 + 40));
}

const __CFNumber *sub_1006BD118(__IOHIDDevice *a1)
{
  result = IOHIDDeviceGetProperty(a1, @"ProductID");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (valuePtr == 3570)
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }

    if (valuePtr == 3302)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_1006BD378(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(a1 + 24));
  return a1;
}

uint64_t sub_1006BD3D0(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 7);
  *v2 = off_100B075E0;
  sub_100044BBC(v2 + 32);
  *(a1 + 320) = 0;
  return a1;
}

uint64_t sub_1006BD43C(void *a1)
{
  *a1 = off_100B075E0;
  sub_10007A068(a1 + 32);

  return sub_10032F580(a1);
}

void sub_1006BD494(void *a1)
{
  *a1 = off_100B075E0;
  sub_10007A068(a1 + 32);
  sub_10032F580(a1);

  operator delete();
}

BOOL sub_1006BD500()
{
  v3 = off_100B07680;
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10022B4F0(0, sub_1006BDBA8, sub_1006BDD48, sub_1006BDDE0, &off_100B07640, &v3, 0, 9, 15) != 0;
  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_1006BD5BC(int a1, int a2, int a3, int a4, void *__src, size_t __n, __int16 a7, __int16 a8, uint64_t a9, __int16 a10)
{
  __dst = 0uLL;
  v32 = 0;
  v16 = __n;
  if (__n >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + v16) = 0;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v17 = off_100B54918;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_1006BFD24;
  v20[3] = &unk_100B076C0;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v18 = SHIBYTE(v32);
  if (SHIBYTE(v32) < 0)
  {
    sub_100008904(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v22 = v32;
  }

  v28 = a7;
  v29 = a8;
  v23 = a9;
  v30 = a10;
  sub_1005897E0(v17, v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_15:
    operator delete(__dst);
    return 0;
  }

  if (v18 < 0)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1006BD7A4(int a1, int a2, uint64_t *a3, int a4, __int16 a5, __int16 a6, __int16 a7, char a8, uint64_t a9, __int16 a10)
{
  v17 = *a3;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006BFD94;
  v19[3] = &unk_100B02E90;
  v28 = a8;
  v24 = a7;
  v20 = a1;
  v21 = a2;
  v22 = v17;
  v23 = a4;
  v25 = a5;
  v26 = a6;
  v19[4] = a9;
  v27 = a10;
  sub_1005897E0(off_100B54918, v19);
  return 0;
}

uint64_t sub_1006BD8A4(int a1, int a2, int a3, uint64_t *a4, int a5, uint64_t a6, __int16 a7)
{
  v13 = *a4;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006BFEB4;
  v15[3] = &unk_100AFDDF8;
  v16 = a1;
  v17 = a2;
  v18 = v13;
  v19 = a5;
  v20 = a3;
  v15[4] = a6;
  v21 = a7;
  sub_1005897E0(off_100B54918, v15);
  return 0;
}

void sub_1006BD980(uint64_t a1, __int16 a2, int a3)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006BFF18;
  v6[3] = &unk_100AF9DB0;
  v6[4] = a1;
  v8 = a2;
  v7 = a3;
  sub_1005897E0(off_100B54918, v6);
}

uint64_t sub_1006BDA30(uint64_t a1, unsigned int a2, uint64_t a3, char a4, __int16 a5)
{
  if ((a4 & 4) != 0)
  {
    v9 = ((a2 / 681.0) * 3.75);
    v10 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set delay in SRM enabled:%d ms, maxRead:%d bytes", buf, 0xEu);
    }
  }

  else
  {
    v9 = 0;
  }

  if (qword_100B54920 != -1)
  {
    sub_100861244();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006BFF70;
  v12[3] = &unk_100AE0880;
  v13 = a2;
  v12[4] = a1;
  v12[5] = a3;
  v14 = a5;
  sub_1006C2520(off_100B54918, v9, v12);
  return 0;
}

void sub_1006BDBA8(int *a1, char a2, const void *a3, unsigned int a4, __int16 a5)
{
  v17 = *a1;
  v18 = *(a1 + 2);
  v15 = 0;
  v16 = 0;
  sub_10000C704(&v15, a3, a4);
  if (qword_100B54920 != -1)
  {
    sub_100861244();
  }

  v7 = off_100B54918;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1006BFC18;
  v8[3] = &unk_100B07690;
  v12 = v17;
  v13 = v18;
  v14 = a2;
  v9 = &off_100AE0A78;
  v10 = v16;
  if (v16)
  {
    sub_10000C69C(v16);
  }

  v11 = a5;
  sub_1005897E0(v7, v8);
  v9 = &off_100AE0A78;
  if (v10)
  {
    sub_10000C808(v10);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }
}

void sub_1006BDCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 56) = &off_100AE0A78;
  v17 = *(v15 - 48);
  if (v17)
  {
    sub_10000C808(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BDD48(__int16 a1)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006BFC78;
  v2[3] = &unk_100AF59D0;
  v3 = a1;
  sub_1005897E0(off_100B54918, v2);
}

void sub_1006BDDE0(__int16 a1, int a2, int a3)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006BFCCC;
  v6[3] = &unk_100AEB940;
  v9 = a1;
  v7 = a2;
  v8 = a3;
  sub_1005897E0(off_100B54918, v6);
}

BOOL sub_1006BDE8C()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10022BDE4() != 0;
  sub_10002249C(&v2);
  return v0;
}

BOOL sub_1006BDEE8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 256);
  v4 = *(a1 + 320);
  if (v4 && *v4 == a2)
  {
    v6 = *(v4 + 8);
    sub_10000801C(v9);
    v8 = 0;
    sub_1000216B4(&v8);
    v5 = sub_10022C8C4(v6) != 0;
    sub_10002249C(&v8);
  }

  else
  {
    v5 = 1;
  }

  sub_1000088CC(v9);
  return v5;
}

void sub_1006BDF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BDFA4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 256);
  v6 = *(a1 + 320);
  if (v6 && *v6 == a2)
  {
    v10 = 0;
    sub_1000216B4(&v10);
    v8 = sub_1001C3310(*(v6 + 8), a3);
    sub_10002249C(&v10);
    if (v8)
    {
      v7 = 312;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 312;
  }

  sub_1000088CC(v11);
  return v7;
}

void sub_1006BE044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BE068(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return 10;
    }
  }

  else if (a2 || a3 >= 6)
  {
    return 0;
  }

  else
  {
    return dword_1008C4D00[a3];
  }
}

_BYTE *sub_1006BE0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_10086126C();
  }

  LODWORD(v29) = *a2;
  WORD2(v29) = *(a2 + 4);
  v10 = sub_1000E6554(off_100B508E8, &v29, 1);
  v26[0] = 0;
  v26[1] = 0;
  sub_1006A5878(v26, v10);
  v11 = sub_1006A587C(v26, 6, 0x64u);
  v12 = sub_10057DFAC(a1, v10);
  v25 = 0;
  sub_1000216B4(&v25);
  if ((a3 & v12) == 1)
  {
    v13 = sub_10000C5F8(a4);
    v14 = sub_10000C5E0(a4);
    v15 = sub_10022C138(a5, v13, v14, "0000");
    v12 = 1;
  }

  else
  {
    v37 = 0;
    v36 = 0u;
    memset(v35, 0, sizeof(v35));
    v33 = 0u;
    *v34 = 0u;
    v31 = 0u;
    *v32 = 0u;
    v29 = 0u;
    *v30 = 0u;
    sub_1000DE474(&v29 + 1);
    BYTE2(v30[0]) = 0;
    BYTE4(v30[0]) = 0;
    BYTE2(v32[0]) = 0;
    BYTE4(v32[0]) = 0;
    DWORD1(v35[1]) = 0;
    v31 = 0uLL;
    v30[1] = 0;
    LOBYTE(v32[0]) = 0;
    v33 = 0uLL;
    v32[1] = 0;
    LOBYTE(v34[0]) = 0;
    memset(v35, 0, 19);
    v34[1] = 0;
    BYTE8(v35[1]) = 1;
    *(&v35[1] + 14) = 0;
    *(&v35[1] + 9) = 0;
    v36 = 0uLL;
    *(&v35[2] + 1) = 0;
    LOBYTE(v37) = 0;
    *(&v37 + 2) = 0;
    sub_100536A18(v10, &v29);
    v24 = 0;
    v16 = sub_10000E92C();
    sub_100007E30(v22, "PBAP");
    sub_100007E30(__p, "BypassRCP");
    (*(*v16 + 72))(v16, v22, __p, &v24);
    if (v28 < 0)
    {
      operator delete(*__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (BYTE11(v36) & 1) != 0 || (sub_100540D38(v10) & 1) != 0 || (v24)
    {
      v17 = 0;
    }

    else
    {
      v20 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v10, v22);
        v21 = v23 >= 0 ? v22 : v22[0];
        *__p = 136446210;
        *&__p[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Phonebook connection to device %{public}s is unauthorized as user has not yet responded to Rental Car Privacy dialog", __p, 0xCu);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }

      v12 = 0;
      *(v10 + 1388) = 1;
      v17 = 1742;
    }

    v15 = sub_10022BFA4(a5, v11, v12, v17);
    if (SHIBYTE(v35[0]) < 0)
    {
      operator delete(v34[1]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[1]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[1]);
    }

    nullsub_21(&v29 + 1);
  }

  sub_100022214(&v25);
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (v18 == 1)
  {
    sub_10057D9B0(a1, v10);
  }

  if ((sub_10053F074(v10) & 1) == 0)
  {
    sub_10054097C(v10);
    sub_10057E984();
  }

  return sub_10002249C(&v25);
}

void sub_1006BE4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  sub_100320BE8(&a28);
  sub_10002249C(&a18);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE560(uint64_t a1, int a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 256);
  v4 = *(a1 + 320);
  if (v4 && *(v4 + 8) == a2)
  {
    sub_1006BD378(v4);
    operator delete();
  }

  sub_1000088CC(v6);
  return sub_10002249C(&v7);
}

void sub_1006BE614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  sub_10002249C((v2 - 17));
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE638(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v5 = *(a1 + 320);
  if (v5 && *(v5 + 8) == a2)
  {
    v8 = *v5;
    v30[0] = 0;
    v30[1] = 0;
    v9 = sub_1006A5878(v30, v8);
    v10 = sub_1006BE068(v9, a3, a4);
    v11 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "Invalid";
      v13 = "Sim";
      if (a3 != 1)
      {
        v13 = "Invalid";
      }

      if (a3)
      {
        v14 = v13;
      }

      else
      {
        v14 = "Local";
      }

      if (a4 <= 5)
      {
        v12 = off_100B07768[a4];
      }

      sub_1000E5A58(v8, &__p);
      if (v34 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315650;
      *&buf[4] = v14;
      v36 = 2080;
      v37 = v12;
      v38 = 2082;
      v39 = p_p;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'get size' request for '%s'/'%s' from device %{public}s", buf, 0x20u);
      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    v16 = sub_1006A587C(v30, v10, 0x64u);
    v17 = sub_1006A6064(v30, v10);
    v19 = v18;
    v20 = sub_1006A6104(v30, v10);
    v22 = v21;
    v23 = sub_1006A6188(v30);
    v25 = v24;
    v26 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, buf);
      v27 = buf;
      if (v38 < 0)
      {
        v27 = *buf;
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v16;
      v32 = 2082;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending response (%u entries) to device %{public}s", &__p, 0x12u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }

    v28 = 0;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v20 = 0;
    v19 = 0;
    v17 = 0;
    LOWORD(v16) = 0;
    v28 = 1715;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_10022C1F8(a2, v16, v17, v19, v20, v22, v23, v25, v28);
  return sub_10002249C(buf);
}

void sub_1006BE8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE910(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, __int128 *a6, uint64_t a7, uint64_t a8, void (*a9)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16), unsigned __int16 a10)
{
  v10 = *(a1 + 320);
  if (!v10)
  {
    v20 = 0;
    v21 = 0;
LABEL_7:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1715;
    goto LABEL_8;
  }

  if (*(v10 + 8) != a10)
  {
    v20 = 0;
    v21 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v18 = *v10;
  v62[0] = 0;
  v62[1] = 0;
  v56 = v18;
  v19 = sub_1006A5878(v62, v18);
  v57 = sub_1006BE068(v19, a2, a3);
  if (a4 > 2)
  {
    v55 = 0;
  }

  else
  {
    v55 = dword_1008C4D18[a4];
  }

  v27 = *(a6 + 23);
  if (v27 >= 0)
  {
    v28 = *(a6 + 23);
  }

  else
  {
    v28 = *(a6 + 1);
  }

  v29 = qword_100BCE978;
  v30 = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (v30)
    {
      v38 = "Invalid";
      v39 = "Sim";
      if (a2 != 1)
      {
        v39 = "Invalid";
      }

      if (a2)
      {
        v40 = v39;
      }

      else
      {
        v40 = "Local";
      }

      if (a3 <= 5)
      {
        v38 = off_100B07768[a3];
      }

      sub_1000E5A58(v56, v72);
      if (v75 >= 0)
      {
        v41 = v72;
      }

      else
      {
        v41 = *v72;
      }

      *buf = 67110146;
      *&buf[4] = a8;
      *&buf[8] = 1024;
      *&buf[10] = a7;
      *v64 = 2080;
      *&v64[2] = v40;
      *v65 = 2080;
      *&v65[2] = v38;
      v66 = 2082;
      v67 = v41;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received 'list' request (offset = %u, count = %u) for '%s'/'%s' from device %{public}s", buf, 0x2Cu);
      if (v75 < 0)
      {
        operator delete(*v72);
      }
    }

    v37 = v57;
    v42 = sub_1006A5A08(v62, v57, v55, a8, a7, 0x64u, 0);
    v43 = v42;
    if (v42)
    {
      v25 = 0;
    }

    else
    {
      v25 = 1715;
    }

    if (v42)
    {
LABEL_68:
      operator new();
    }

    goto LABEL_52;
  }

  if (v30)
  {
    v31 = "Invalid";
    v32 = "Invalid";
    if (a5 <= 2)
    {
      v32 = off_100B07750[a5];
    }

    v54 = v32;
    v33 = *a6;
    if (v27 >= 0)
    {
      v33 = a6;
    }

    v53 = v33;
    v34 = "Sim";
    if (a2 != 1)
    {
      v34 = "Invalid";
    }

    if (a2)
    {
      v35 = v34;
    }

    else
    {
      v35 = "Local";
    }

    if (a3 <= 5)
    {
      v31 = off_100B07768[a3];
    }

    sub_1000E5A58(v56, v72);
    if (v75 >= 0)
    {
      v36 = v72;
    }

    else
    {
      v36 = *v72;
    }

    *buf = 136316674;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *v64 = v53;
    *&v64[8] = 1024;
    *v65 = a8;
    *&v65[4] = 1024;
    *&v65[6] = a7;
    v66 = 2080;
    v67 = v35;
    v68 = 2080;
    v69 = v31;
    v70 = 2082;
    v71 = v36;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received 'search' request (%s ~= %s, offset = %u, count = %u) in '%s'/'%s' from device %{public}s", buf, 0x40u);
    if (v75 < 0)
    {
      operator delete(*v72);
    }
  }

  if (a5 == 1)
  {
    v37 = v57;
    if (*(a6 + 23) < 0)
    {
      sub_100008904(&v58, *a6, *(a6 + 1));
    }

    else
    {
      v58 = *a6;
      v59 = *(a6 + 2);
    }

    v43 = sub_1006A5EE8(v62, v57, &v58, v55, a8, a7, 0);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    p_dst = &v58;
    goto LABEL_62;
  }

  v37 = v57;
  if (a5)
  {
    v43 = 0;
    v44 = 0;
    v45 = 1743;
    goto LABEL_64;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100008904(&__dst, *a6, *(a6 + 1));
  }

  else
  {
    __dst = *a6;
    v61 = *(a6 + 2);
  }

  v43 = sub_1006A5DE8(v62, v57, &__dst, v55, a8, a7);
  if (SHIBYTE(v61) < 0)
  {
    p_dst = &__dst;
LABEL_62:
    operator delete(*p_dst);
  }

LABEL_63:
  v45 = 0;
  v44 = 1;
LABEL_64:
  if ((v44 & (v43 == 0)) != 0)
  {
    v25 = 1724;
  }

  else
  {
    v25 = v45;
  }

  if (v43)
  {
    goto LABEL_68;
  }

LABEL_52:
  v24 = sub_1006A6064(v62, v37);
  v23 = v47;
  v22 = sub_1006A6104(v62, v37);
  v10 = v48;
  v21 = sub_1006A6188(v62);
  v20 = v49;
  v50 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (v43)
    {
      LODWORD(v43) = sub_1006A633C(v43);
    }

    sub_1000E5A58(v56, buf);
    v52 = buf;
    if (v64[9] < 0)
    {
      v52 = *buf;
    }

    *v72 = 67109378;
    *&v72[4] = v43;
    v73 = 2082;
    v74 = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", v72, 0x12u);
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_8:
  buf[0] = 0;
  sub_1000216B4(buf);
  a9(0, v24, v23, v22, v10, v21, v20, v25, a10);
  return sub_10002249C(buf);
}

void sub_1006BEEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006BEF54(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16), unsigned __int16 a9)
{
  v9 = *(a1 + 320);
  if (!v9)
  {
    goto LABEL_30;
  }

  if (*(v9 + 8) != a9)
  {
    v9 = 0;
LABEL_30:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_31;
  }

  v16 = *v9;
  v44[0] = 0;
  v44[1] = 0;
  v42 = v16;
  v17 = sub_1006A5878(v44, v16);
  v41 = sub_1006BE068(v17, a2, a3);
  if (a5 == 1)
  {
    v18 = 135;
  }

  else
  {
    v18 = 133;
  }

  v19 = v18 | HIDWORD(a4);
  if (a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = -1;
  }

  v21 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    v22 = "Invalid";
    v23 = "Sim";
    if (a2 != 1)
    {
      v23 = "Invalid";
    }

    if (a2)
    {
      v24 = v23;
    }

    else
    {
      v24 = "Local";
    }

    if (a3 <= 5)
    {
      v22 = off_100B07768[a3];
    }

    sub_1000E5A58(v42, &__p);
    if (v48 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 67110402;
    *&buf[4] = a7;
    v50 = 1024;
    v51 = a6;
    v52 = 1024;
    v53 = v20;
    v54 = 2080;
    v55 = v24;
    v56 = 2080;
    v57 = v22;
    v58 = 2082;
    v59 = p_p;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'open' request (offset = %u, count = %u, attributes = %x) for '%s'/'%s' from device %{public}s", buf, 0x32u);
    if (v48 < 0)
    {
      operator delete(__p);
    }
  }

  if (a3 - 5 >= 0xFFFFFFFC && (v20 & 8) != 0)
  {
    v26 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Ignoring request for contact photos for call history", buf, 2u);
    }
  }

  sub_1000C23E0(v42, buf);
  if (!std::string::compare(buf, "HandsFreeLink"))
  {
    v33 = sub_10053A438(v42);
    if (SBYTE1(v55) < 0)
    {
      operator delete(*buf);
    }

    if ((v33 & 1) == 0)
    {
      v34 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Workaround: disabling contact photos for this device", buf, 2u);
      }
    }
  }

  else if (SBYTE1(v55) < 0)
  {
    operator delete(*buf);
  }

  v35 = sub_1006A5A08(v44, v41, 2, a7, a6, 0x64u, 0);
  if (v35)
  {
    operator new();
  }

  v31 = sub_1006A6064(v44, v41);
  v30 = v36;
  v29 = sub_1006A6104(v44, v41);
  v28 = v37;
  v27 = sub_1006A6188(v44);
  v9 = v38;
  v39 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v42, buf);
    v40 = buf;
    if (SBYTE1(v55) < 0)
    {
      v40 = *buf;
    }

    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v35;
    v46 = 2082;
    v47 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", &__p, 0x12u);
    if (SBYTE1(v55) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_31:
  buf[0] = 0;
  sub_1000216B4(buf);
  a8(0, v31, v30, v29, v28, v27, v9, 1715, a9);
  return sub_10002249C(buf);
}

void sub_1006BF3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006BF444(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, void (*a7)(void, void, void, void, void, uint64_t, uint64_t, uint64_t, __int16), int a8)
{
  v8 = a8;
  v10 = *(a1 + 320);
  if (v10 && *(v10 + 8) == a8)
  {
    v16 = *v10;
    v36[0] = 0;
    v36[1] = 0;
    v35 = v16;
    v17 = sub_1006A5878(v36, v16);
    v34 = sub_1006BE068(v17, a2, a3);
    if (a5 == 1)
    {
      v18 = 135;
    }

    else
    {
      v18 = 133;
    }

    v19 = v18 | HIDWORD(a4);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = -1;
    }

    v21 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "Invalid";
      v23 = "Sim";
      if (a2 != 1)
      {
        v23 = "Invalid";
      }

      if (a2)
      {
        v24 = v23;
      }

      else
      {
        v24 = "Local";
      }

      if (a3 <= 5)
      {
        v22 = off_100B07768[a3];
      }

      sub_1000E5A58(v35, &__p);
      if (v40 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 67110146;
      *&buf[4] = a6;
      v42 = 1024;
      v43 = v20;
      v44 = 2080;
      v45 = v24;
      v46 = 2080;
      v47 = v22;
      v48 = 2082;
      v49 = p_p;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'open card' request (uid = %u, attributes = %x) for '%s'/'%s' from device %{public}s", buf, 0x2Cu);
      if (v40 < 0)
      {
        operator delete(__p);
      }
    }

    v26 = sub_1006A5C5C(v36, v34, a6);
    if (v26)
    {
      operator new();
    }

    v29 = 1724;
    v28 = sub_1006A6188(v36);
    v27 = v31;
    v32 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v35, buf);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = buf;
      }

      else
      {
        v33 = *buf;
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v26;
      v38 = 2082;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", &__p, 0x12u);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 1715;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  a7(0, 0, 0, 0, 0, v28, v27, v29, v8);
  return sub_10002249C(buf);
}

void sub_1006BF7CC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 320);
  if (v3 && *(v3 + 8) == a3)
  {
    v5 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v3, __p);
      v6 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'close' request from device %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = *(v3 + 16);
    if (v7 == a2)
    {
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*v3, __p);
        if (v11 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Closing response for device %{public}s", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      *(v3 + 16) = 0;
    }
  }
}

_BYTE *sub_1006BF97C(uint64_t a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t, void *, void, uint64_t, uint64_t), uint64_t a5)
{
  v7 = *(a1 + 320);
  if (v7 && *(v7 + 8) == a5)
  {
    v21 = 0;
    v9 = *v7;
    v10 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(v9, &__p);
      v11 = SBYTE3(v30) >= 0 ? &__p : __p;
      *buf = 67109378;
      *&buf[4] = a3;
      v23 = 2082;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'read' request (%u bytes) from device %{public}s", buf, 0x12u);
      if (SBYTE3(v30) < 0)
      {
        operator delete(__p);
      }
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      v13 = *(v7 + 24);
      if (*(v7 + 32) < a3)
      {
        v13 = malloc_type_realloc(*(v7 + 24), a3, 0x100004077774924uLL);
        *(v7 + 24) = v13;
        *(v7 + 32) = a3;
      }

      v14 = sub_1006AF208(v12, v13, a3, &v21);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = 135;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 135;
    }

    v17 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      v18 = v21;
      if (v14)
      {
        v19 = "continue";
      }

      else
      {
        v19 = "eof";
      }

      sub_1000E5A58(v9, buf);
      if (v25 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      LODWORD(__p) = 67109634;
      HIDWORD(__p) = v18;
      v27 = 2080;
      v28 = v19;
      v29 = 2082;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending response (%u bytes, %s) to device %{public}s", &__p, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v21 = 0;
    v15 = 1715;
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  a4(v12, v13, v21, v15, a5);
  return sub_10002249C(&__p);
}

void sub_1006BFBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BFC18(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);

  return sub_1006BE0A4(v2, a1 + 50, v3, a1 + 32, v4);
}

_BYTE *sub_1006BFC78(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 32);

  return sub_1006BE560(v2, v3);
}

_BYTE *sub_1006BFCCC(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);

  return sub_1006BE638(v2, v3, v4, v5);
}

_BYTE *sub_1006BFD24(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  return sub_1006BE910(off_100B549D8, *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), (a1 + 32), *(a1 + 80), *(a1 + 82), *(a1 + 56), *(a1 + 84));
}

_BYTE *sub_1006BFD94(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v2 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 60);
      *buf = 67109376;
      v6 = ((v3 / 681.0) * 3.75);
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expected delay in SRM enabled:%d ms, maxRead:%d bytes", buf, 0xEu);
    }
  }

  if (qword_100B549E0 != -1)
  {
    sub_100861318();
  }

  return sub_1006BEF54(off_100B549D8, *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 56), *(a1 + 62), *(a1 + 64), *(a1 + 32), *(a1 + 66));
}

_BYTE *sub_1006BFEB4(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);

  return sub_1006BF444(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1006BFF18(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);

  sub_1006BF7CC(v2, v3, v4);
}

_BYTE *sub_1006BFF70(uint64_t a1, uint64_t a2)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v3 = off_100B549D8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 50);

  return sub_1006BF97C(v3, a2, v4, v5, v6);
}

void *sub_1006C0114(void *a1)
{
  *a1 = off_100B077A8;
  a1[1] = off_100B07840;
  a1[2] = &off_100B07868;
  sub_100044BBC(a1 + 3);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void *sub_1006C01A4(void *a1)
{
  *a1 = off_100B077A8;
  a1[1] = off_100B07840;
  a1[2] = &off_100B07868;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 3);
  return a1;
}

void sub_1006C0248(void *a1)
{
  sub_1006C01A4(a1);

  operator delete();
}

void sub_1006C0280(uint64_t a1)
{
  sub_1006C01A4((a1 - 8));

  operator delete();
}

void sub_1006C02BC(uint64_t a1)
{
  v2 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient initialize", v3, 2u);
  }

  *(a1 + 96) = *(a1 + 88);
}

uint64_t sub_1006C0330(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = *v2;
    if (*v2)
    {
      if (*(v5 + 416) == a2)
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v42 >= 0 ? __p : *__p;
    *&buf.byte0 = 136446210;
    *&buf.byte4 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient publish Device %{public}s", &buf.byte0, 0xCu);
    if (v42 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v5 + 24) != 1)
  {
    v11 = sub_100537920(a2);
    sub_1003A3A8C(v5, v11);
    sub_1000BE6F8(a2 + 128, &buf);
    if (v38 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.byte0;
    }

    sub_100007E30(__p, p_buf);
    sub_1003A2964(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1000C23E0(a2, &buf);
    if (v38 >= 0)
    {
      v13 = &buf;
    }

    else
    {
      v13 = *&buf.byte0;
    }

    sub_100007E30(__p, v13);
    sub_1003A2AF0(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1000BE6F8(a2 + 128, &buf);
    if (v38 >= 0)
    {
      v14 = &buf;
    }

    else
    {
      v14 = *&buf.byte0;
    }

    sub_100007E30(__p, v14);
    sub_1003A28D8(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1003A2AE8(v5, a2);
    *&buf.byte0 = 0;
    *&buf.byte8 = 0;
    v35 = 0;
    v36 = 0;
    sub_1000C2364(a2, &v36 + 1, &v36, &v35 + 1, &v35);
    if (qword_100B508D0 != -1)
    {
      sub_100861340();
    }

    sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 1u, 0, 0, __p);
    v15 = sub_10004DF60(__p);
    [v15 getUUIDBytes:&buf];

    v16 = sub_1005499AC(a2);
    v17 = qword_100BCE8B8;
    v18 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_49;
      }

      *__p = 0;
      v19 = "AccessoryAudioClient Device support enhanced EQ";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_49;
      }

      *__p = 0;
      v19 = "AccessoryAudioClient Device does not support enhanced EQ";
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, __p, 2u);
LABEL_49:
    sub_1006FEF30(v5, v16 != 0);
    sub_1003A39AC(v5, &buf);
    sub_1003A39BC(v5, SHIDWORD(v35));
    sub_1003A39CC(v5, v35);
    sub_1003A39DC(v5, v36);
    if (!_os_feature_enabled_impl())
    {
LABEL_65:
      v34 = 0.0;
      if (qword_100B541D0 != -1)
      {
        sub_100861390();
      }

      v29 = sub_1006C4558(off_100B541C8, a2, &v34);
      if (v29)
      {
        v30 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 134217984;
          *&__p[4] = v34;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting audio device volume to %f", __p, 0xCu);
        }

        sub_1003A2788(v5, v34);
      }

      sub_1003A32D0(v5, v29);
      v31 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_1000E2140(a2, 32);
        *__p = 67109120;
        *&__p[4] = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient setSupportsTipi %d", __p, 8u);
      }

      v33 = sub_1000E2140(a2, 32);
      sub_1003A3318(v5, v33);
      sub_1003A1E50(v5);
      return 0;
    }

    v20 = sub_1000E3218(a2, 0x22u);
    if (qword_100B50940 != -1)
    {
      sub_100861368();
    }

    v21 = sub_100639AAC();
    v22 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "not supported";
      if (v20)
      {
        v23 = "supported";
      }

      v24 = "Allowed";
      if (!v21)
      {
        v24 = "not Allowed";
      }

      *__p = 136315394;
      *&__p[4] = v23;
      v40 = 2080;
      v41 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "StudioMic notify BTHAL StudioMic %s , %s", __p, 0x16u);
    }

    v25 = (v20 != 0) & v21;
    v26 = qword_100BCE8B8;
    v27 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v25 == 1)
    {
      if (v27)
      {
        *__p = 0;
        v28 = "AccessoryAudioClient publish with StudioMic enabled";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, __p, 2u);
      }
    }

    else if (v27)
    {
      *__p = 0;
      v28 = "AccessoryAudioClient publish with StudioMic disabled";
      goto LABEL_63;
    }

    sub_1006FEF20(v5, v25);
    goto LABEL_65;
  }

  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v42 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    *&buf.byte0 = 136446210;
    *&buf.byte4 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient Device %{public}s already published ", &buf.byte0, 0xCu);
    if (v42 < 0)
    {
      operator delete(*__p);
    }
  }

  return 311;
}

uint64_t sub_1006C09F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  while (v2 != v3)
  {
    result = *v2;
    if (*v2 && *(result + 416) == a2)
    {
      return result;
    }

    ++v2;
  }

  return 0;
}

uint64_t sub_1006C0BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v2 == v3)
  {
    return 0;
  }

  for (i = (v2 + 1); ; i += 8)
  {
    v6 = *v2;
    if (*v2)
    {
      if (*(v6 + 416) == a2)
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient destroyAccessoryAudioDevice %p", &v11, 0xCu);
  }

  sub_1003A2794(v6);
  v9 = *(a1 + 96);
  v10 = v9 - i;
  if (v9 != i)
  {
    memmove(i - 8, i, v9 - i);
  }

  *(a1 + 96) = &i[v10 - 8];
  return 1;
}

void sub_1006C0CE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 == v4)
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008613CC();
    }
  }

  else
  {
    while (1)
    {
      v6 = *v3;
      if (*v3)
      {
        if (*(v6 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        goto LABEL_5;
      }
    }

    if (qword_100B50940 != -1)
    {
      sub_1008613B8();
    }

    v7 = sub_100639AAC();
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "not supported";
      if (a3)
      {
        v9 = "supported";
      }

      v10 = "Allowed";
      if (!v7)
      {
        v10 = "not Allowed";
      }

      v11 = 136315394;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "StudioMic notify BTHAL StudioMic %s , %s", &v11, 0x16u);
    }

    sub_1006FEF20(v6, a3 & v7);
  }
}

void sub_1006C0E50(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  for (i = *(a1 + 88); i != *(a1 + 96); ++i)
  {
    v5 = *i;
    if (*i && *(v5 + 416) == a2)
    {
      if (*(v5 + 400) == 3)
      {
        sub_1006FF118(v5, a3, a4);
        v6 = *(v5 + 408);
        if (v6 <= 3)
        {
          v7 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            v8[0] = 67109120;
            v8[1] = v6;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "AMP Link pre warm frame:%d", v8, 8u);
            v6 = *(v5 + 408);
          }

          *(v5 + 408) = v6 + 1;
          if (v6 == 3)
          {
            sub_1006FF2D8(v5, 1, 0);
          }
        }

        return;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861400();
  }
}

void sub_1006C0F9C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000D999C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006C1030;
  v9[3] = &unk_100AEC130;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  v11 = a4;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1006C1030(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v2 + 24);
  v3 = *(a1 + 40);
  if (!*(a1 + 48))
  {
    v5 = *(v3 + 400);
    if (v5 > 2)
    {
      if ((v5 - 4) >= 3)
      {
        if (v5 == 3)
        {
          v14 = qword_100BCE8B8;
          v15 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AMP link connected, perform disconnect request", v17, 2u);
            v3 = *(a1 + 40);
          }

          *(v3 + 400) = 4;
          sub_1006C1400(v15, *(v3 + 416));
        }

        return sub_1000088CC(v18);
      }

      v6 = qword_100BCE8B8;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v18);
      }

      *v17 = 0;
      v7 = "AMP link already disconnecting, skip disconnect request";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v17, 2u);
      return sub_1000088CC(v18);
    }

    switch(v5)
    {
      case 0:
        v6 = qword_100BCE8B8;
        if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          return sub_1000088CC(v18);
        }

        *v17 = 0;
        v7 = "AMP link already disconnected, skip disconnect request";
        goto LABEL_42;
      case 1:
        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v11 = "AMP link connecting, delay disconnect request";
          goto LABEL_46;
        }

        break;
      case 2:
        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v11 = "AMP link connect delayed, replaced with delayed disconnect";
LABEL_46:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v17, 2u);
          v3 = *(a1 + 40);
        }

        break;
      default:
        return sub_1000088CC(v18);
    }

    v13 = 5;
    goto LABEL_35;
  }

  *(v3 + 404) = *(a1 + 52);
  v4 = *(v3 + 400);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v9 = "AMP link already connecting, skip connect request";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v4 == 2)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v9 = "AMP link already waiting to start connect, duplicate connect request";
LABEL_33:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v17, 2u);
          v3 = *(a1 + 40);
        }

LABEL_34:
        v13 = 2;
LABEL_35:
        *(v3 + 400) = v13;
      }
    }

    else
    {
      v12 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AMP link disconnected, perform connect request", v17, 2u);
        v3 = *(a1 + 40);
      }

      *(v3 + 400) = 1;
      sub_1006C1490(v2, *(v3 + 416));
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v8 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v9 = "AMP link disconnect delayed, replaced with delayed connect";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v4 == 6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 != 3)
    {
LABEL_17:
      v8 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v9 = "AMP link already disconnecting, delay connect request";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v7 = "AMP link connected, noop";
      goto LABEL_42;
    }
  }

  return sub_1000088CC(v18);
}

void sub_1006C13EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006C1400(uint64_t a1, uint64_t a2)
{
  v3 = 259;
  if (a2)
  {
    if (qword_100B50950 != -1)
    {
      sub_100861434();
    }

    sub_100340570(off_100B50948, a2, &v3, 2u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861448();
  }
}

void sub_1006C1490(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 88); ; ++i)
  {
    v4 = *i;
    if (*i)
    {
      if (*(v4 + 416) == a2)
      {
        break;
      }
    }
  }

  v13 = 256;
  v14 = *(v4 + 404);
  v16 = 150;
  v15 = 4;
  if (a2)
  {
    if (sub_1000E2140(a2, 26))
    {
      v5 = sub_10000E92C();
      if (((*(*v5 + 776))(v5) & 1) == 0)
      {
        v6 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((a2 + 128), __p);
          v7 = v12 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AMP link: Disable Software volume for %{public}s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (qword_100B50950 != -1)
        {
          sub_10086147C();
        }

        v8 = sub_1003349D4(off_100B50948, a2, 2, 2);
        if (v8)
        {
          v9 = v8;
          v10 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_1008614A4(v9, v10);
          }
        }
      }
    }

    if (qword_100B50950 != -1)
    {
      sub_10086147C();
    }

    sub_100340570(off_100B50948, a2, &v13, 9u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10086151C();
  }
}

uint64_t sub_1006C16AC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 24);
  for (i = *(a1 + 88); ; ++i)
  {
    if (i == *(a1 + 96))
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100861668();
      }

      return sub_1000088CC(v24);
    }

    v7 = *i;
    if (*i)
    {
      if (*(v7 + 416) == a2)
      {
        break;
      }
    }
  }

  v9 = *a3;
  if (v9 > 0x102)
  {
    switch(v9)
    {
      case 0x103u:
        v12 = qword_100BCE8B8;
        v13 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          v14 = *(v7 + 400);
          *buf = 67109120;
          LODWORD(v26) = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AMP link remote disconnect request, state %d", buf, 8u);
        }

        sub_1006C1AE8(v13, a2);
        if (!*(v7 + 400))
        {
          return sub_1000088CC(v24);
        }

        break;
      case 0x105u:
        goto LABEL_21;
      case 0x104u:
        v10 = *(v7 + 400);
        if (v10 > 6)
        {
          return sub_1000088CC(v24);
        }

        v11 = 1 << v10;
        if ((v11 & 0x2B) != 0)
        {
          if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            return sub_1000088CC(v24);
          }

          goto LABEL_20;
        }

        if ((v11 & 0x50) == 0)
        {
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_100861634();
          }

          sub_1006C1490(a1, a2);
          v21 = 1;
          goto LABEL_51;
        }

        v18 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AMP Link received disc confirm, notify BTHAL", buf, 2u);
        }

        break;
      default:
        return sub_1000088CC(v24);
    }

    *(v7 + 400) = 0;
    sub_1006FF2D8(v7, 0, 0);
    return sub_1000088CC(v24);
  }

  if (v9 == 256)
  {
    goto LABEL_21;
  }

  if (v9 == 257)
  {
    v15 = *(a3 + 2);
    v16 = qword_100BCE8B8;
    if (!v15)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008615B8(v16);
      }

      return sub_1000088CC(v24);
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AMP Link accepted=%d", buf, 8u);
    }

    v17 = *(v7 + 400);
    if (v17 > 6)
    {
      return sub_1000088CC(v24);
    }

    if (((1 << v17) & 0x5D) != 0)
    {
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        return sub_1000088CC(v24);
      }

LABEL_20:
      sub_100861584();
      return sub_1000088CC(v24);
    }

    if (v17 == 1)
    {
      v19 = mach_absolute_time();
      v20 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AMP Link connected, BTHAL, nowTs %llu", buf, 0xCu);
      }

      *(v7 + 400) = 3;
      *(v7 + 408) = 0;
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      sub_10062EF84(off_100B50938, a2);
      return sub_1000088CC(v24);
    }

    v22 = qword_100BCE8B8;
    v23 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AMP Link proceed pending disconnect", buf, 2u);
    }

    sub_1006C1400(v23, a2);
    v21 = 4;
LABEL_51:
    *(v7 + 400) = v21;
    return sub_1000088CC(v24);
  }

  if (v9 != 258)
  {
    return sub_1000088CC(v24);
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861550();
  }

  return sub_1000088CC(v24);
}

void sub_1006C1AE8(uint64_t a1, uint64_t a2)
{
  v3 = 260;
  if (a2)
  {
    if (qword_100B50950 != -1)
    {
      sub_100861434();
    }

    sub_100340570(off_100B50948, a2, &v3, 2u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10086169C();
  }
}

void sub_1006C1B78(uint64_t a1, uint64_t a2)
{
  v8 = 261;
  v9 = 1;
  if (a2)
  {
    if (qword_100B50940 != -1)
    {
      sub_1008613B8();
    }

    v3 = *(off_100B50938 + 101);
    v4 = qword_100BCE8B8;
    v5 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skip AMP link audio trigger feedback", v6, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AMP link audio trigger feedback", buf, 2u);
      }

      if (qword_100B50950 != -1)
      {
        sub_10086147C();
      }

      sub_100340570(off_100B50948, a2, &v8, 3u);
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      sub_10062EB9C(off_100B50938, a2);
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      *(off_100B50938 + 101) = 10;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008616D0();
  }
}

void sub_1006C1D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D999C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C1D84;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1006C1D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v3 = sub_100007F88(v5, v2 + 24);
  sub_1006C1B78(v3, *(*(a1 + 40) + 416));
  return sub_1000088CC(v5);
}

void sub_1006C1DE8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 416);
  if (v3)
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v3, __p);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 67109378;
      v11 = a3;
      v12 = 2082;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "headtrackingAvailabilityChanged  %d for device %{public}s", buf, 0x12u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = *(a2 + 416);
    }

    sub_100547894(v3, a3);
    if (qword_100B508E0 != -1)
    {
      sub_100861704();
    }

    sub_1005177FC(off_100B508D8, *(a2 + 416));
  }
}

void sub_1006C1F1C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient::usbcPlaybackStatus BTAddress %@ status %d", buf, 0x12u);
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50940 != -1)
    {
      sub_100861368();
    }

    v7 = *(off_100B50938 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006C2098;
    v8[3] = &unk_100AE1750;
    v9 = v5;
    v10 = a4;
    dispatch_async(v7, v8);
  }
}

void sub_1006C2098(uint64_t a1)
{
  if (qword_100B50930 != -1)
  {
    sub_10086172C();
  }

  v2 = off_100B50928;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1000F2F08(v2, v3, v4);
}

uint64_t sub_1006C20F8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        if (*(v5 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        return 0;
      }
    }

    sub_1006FEF40(v5, a3);
  }

  return 0;
}

uint64_t sub_1006C214C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        if (*(v5 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        return 0;
      }
    }

    sub_1006FEF50(v5, a3);
  }

  return 0;
}

uint64_t sub_1006C2438(uint64_t a1)
{
  *sub_100589578(a1, "PhonebookService", 2) = &off_100B07958;
  if (qword_100B549E0 != -1)
  {
    sub_100861740();
  }

  sub_100589880(a1, off_100B549D8);
  return a1;
}

uint64_t sub_1006C24C8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100539554(a2, 2u, 1, &v4, 0);
}

void sub_1006C2520(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = sub_100589718(a1);
  sub_10008E008(v5, a2, v6);
}

void sub_1006C2594(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006C2634(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  if (sub_1002029E4(off_100B07A68))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861754();
    }

    goto LABEL_15;
  }

  v2 = sub_10000C798();
  if ((*(*v2 + 352))(v2))
  {
    v3 = 465;
  }

  else
  {
    v3 = 17;
  }

  if (sub_1002080F0(&off_100B07A98, v3, 0, &off_100B07AC0))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008617BC();
    }

LABEL_14:
    sub_100202B7C();
LABEL_15:
    v4 = 1;
    goto LABEL_16;
  }

  if (sub_1001A4E24(off_100B07AD0, 2, &off_100B07AC0))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861824();
    }

    sub_100208DE8();
    goto LABEL_14;
  }

  atomic_store(0, (a1 + 545));
  if (qword_100B50AE0 != -1)
  {
    sub_10086188C();
  }

  sub_1006CEF54(qword_100B50AD8 + 464, a1 + 272);
  v4 = 0;
LABEL_16:
  sub_10002249C(&v6);
  return v4;
}

uint64_t sub_1006C27EC(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_100208DE8())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008618B4();
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  if (sub_1001A52AC())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_10086191C();
    }

    goto LABEL_10;
  }

  if (sub_100202B7C())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861984();
    }

    goto LABEL_10;
  }

  if (qword_100B50AE0 != -1)
  {
    sub_10086188C();
  }

  sub_10007A3F0(qword_100B50AD8 + 464, a1 + 272);
  v2 = 0;
LABEL_11:
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006C2920(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v4 = v21 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connecting AVRCP profile to device %{public}s", buf, 0xCu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  v5 = sub_10000C798();
  v6 = (*(*v5 + 352))(v5);
  if (v6)
  {
    v18 = xmmword_1008C4D80;
    __p = 0;
    v20 = 0;
    v21 = 0;
    if (sub_1006C2C24(v6, a2, 0x110Fu) >= 0x104 && sub_10053BFB4(a2, &v18, 0x311u, &__p))
    {
      v17 = *__p;
      if ((BYTE8(v17) & 0x40) != 0)
      {
        v8 = qword_100BCE930;
        v9 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          sub_1000E5A58(a2, buf);
          v10 = v23;
          v11 = *buf;
          v13 = sub_1006C2D14(v12, a2);
          v14 = buf;
          if (v10 < 0)
          {
            v14 = v11;
          }

          *v24 = 136446466;
          v25 = v14;
          v26 = 1024;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Browsing is supported on device %{public}s, isBrowsingBroken %d", v24, 0x12u);
          if (v23 < 0)
          {
            operator delete(*buf);
          }
        }

        v7 = sub_1006C2D14(v9, a2) ^ 1;
      }

      else
      {
        v7 = 0;
      }

      sub_10037D4F4(&v17);
    }

    else
    {
      v7 = 0;
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  v24[0] = 0;
  sub_1000216B4(v24);
  if (sub_100202C08((a2 + 128), &unk_1008C4D28, v7))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, &__p);
      sub_1008619EC();
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  sub_10002249C(v24);
  return v15;
}

void sub_1006C2BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C2C24(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12[0] = 131075;
  v12[1] = a3;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v3 = sub_10053BFB4(a2, v12, 9u, &__p);
  v4 = __p;
  if (!v3)
  {
    LOWORD(v6) = 0;
    if (!__p)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v5 = *(__p + 1);
  if (*(v5 + 8) == 4366)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  if (__p == v10)
  {
    goto LABEL_10;
  }

  do
  {
    *v8 = *v4;
    sub_10037D4F4(v8);
    ++v4;
  }

  while (v4 != v10);
  v4 = __p;
  if (__p)
  {
LABEL_10:
    v10 = v4;
    operator delete(v4);
  }

  return v6;
}

void sub_1006C2CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C2D14(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = BYTE14(v12[2]);
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21(&v6 + 1);
  return v3 & v4;
}

uint64_t sub_1006C2E5C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting AVRCP profile to device %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = 0;
  sub_1000216B4(&v8);
  if (sub_100202DCC((a2 + 128)))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_1000E5A58(a2, __p);
      sub_100861A3C();
    }
  }

  else
  {
    if (!*(a1 + 528) || !sub_1001A7FE0(*(a1 + 536)))
    {
      v6 = 0;
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_16:
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006C3020(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = sub_10057DFAC(a1, v4);
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT) && (!v5 ? (v7 = "Rejecting") : (v7 = "Accepting"), (sub_1000E5A58(v4, __p), SHIBYTE(__p[2]) >= 0) ? (v8 = __p) : (v8 = __p[0]), *buf = 136446466, *&buf[4] = v7, v28 = 2082, v29 = v8, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s incoming connection attempt from device %{public}s", buf, 0x16u), SHIBYTE(__p[2]) < 0))
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_12:
      v9 = sub_10000C798();
      v10 = (*(*v9 + 352))(v9);
      if (v10)
      {
        v24 = xmmword_1008C4D80;
        memset(__p, 0, sizeof(__p));
        if (sub_1006C2C24(v10, v4, 0x110Fu) >= 0x104 && sub_10053BFB4(v4, &v24, 0x311u, __p))
        {
          v23 = *__p[0];
          if ((BYTE8(v23) & 0x40) != 0)
          {
            v12 = qword_100BCE930;
            v13 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
            if (v13)
            {
              sub_1000E5A58(v4, buf);
              v14 = v30;
              v15 = *buf;
              v17 = sub_1006C2D14(v16, v4);
              v18 = buf;
              if (v14 < 0)
              {
                v18 = v15;
              }

              *v31 = 136446466;
              v32 = v18;
              v33 = 1024;
              v34 = v17;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Browsing is supported on device %{public}s, isBrowsingBroken %d", v31, 0x12u);
              if (v30 < 0)
              {
                operator delete(*buf);
              }
            }

            sub_1006C2D14(v13, v4);
          }

          sub_10037D4F4(&v23);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      sub_10057D9B0(a1, v4);
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  result = sub_100202CEC(a2, 0, 0);
  v19 = result;
  if (result)
  {
    v20 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      v21 = v5 ? "accept" : "reject";
      sub_1000E5A58(v4, buf);
      v22 = v30 >= 0 ? buf : *buf;
      LODWORD(__p[0]) = 136446722;
      *(__p + 4) = v21;
      WORD2(__p[1]) = 2082;
      *(&__p[1] + 6) = v22;
      HIWORD(__p[2]) = 1024;
      v26 = v19;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to %{public}s connection attempt from device %{public}s - result was %{bluetooth:OI_STATUS}u", __p, 0x1Cu);
      if (v30 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_10057DA84(a1, v4, 1);
  }

  return result;
}

void sub_1006C33D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p) = *a2;
  WORD2(__p) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, &__p, 1);
  v7 = qword_100BCE930;
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v6, &__p);
      v23 = v28 >= 0 ? &__p : __p;
      buf[0] = 136446466;
      *&buf[1] = v23;
      v25 = 1024;
      v26 = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to connect to device %{public}s - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v28 < 0)
      {
        operator delete(__p);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100861AA0();
    }

    v8 = sub_1000DD584(off_100B50A98, a3, 20000);
    sub_10057DA84(a1, v6, v8);
  }

  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, &__p);
    v9 = v28 >= 0 ? &__p : __p;
    buf[0] = 136446466;
    *&buf[1] = v9;
    v25 = 1024;
    v26 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RemoteClient connect confirm device %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = a1 + 352;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= v6;
      v14 = v12 < v6;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 352 && v6 >= *(v11 + 32))
    {
      v15 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
      {
        sub_100861AC8(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  operator new();
}

void sub_1006C37DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3814(uint64_t a1, uint64_t a2)
{
  v3 = sub_1006C2C24(a1, a2, 0x110Cu);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100542A94(a2, v3);
  }

  else
  {
    v5 = sub_1005429CC(a2);
    v4 = v5;
  }

  if (v4 < 0x104 || (sub_1006C41F8(v5, a2) & 1) != 0)
  {
    v6 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v15;
      v8 = *__p;
      v10 = sub_1006C41F8(v9, a2);
      v11 = __p;
      *buf = 136446722;
      if (v7 < 0)
      {
        v11 = v8;
      }

      *&buf[4] = v11;
      v17 = 1024;
      v18 = v4;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping capability check for device %{public}s with remote control version 0x%x, brokenAbs %d", buf, 0x18u);
      if (v15 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v12 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v13 = v20 >= 0 ? buf : *buf;
      *__p = 136446210;
      *&__p[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying capabilities of remote device %{public}s to see if they support absolute volume", __p, 0xCu);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*buf);
      }
    }

    buf[0] = 0;
    if (sub_1002043C4(a2 + 128, buf) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861B68();
    }
  }
}

void sub_1006C3A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3A34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v14 = v8;
  v9 = qword_100BCE930;
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v8, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446466;
      *v16 = v10;
      *&v16[8] = 1024;
      *&v16[10] = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to establish browsing channel with device %{public}s: %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 67109378;
      *v16 = a4;
      *&v16[4] = 2082;
      *&v16[6] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Browsing channel (MTU = %u) established with device %{public}s", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v14;
    *(sub_10057EDF4(a1 + 504, &v14) + 20) = a4;
  }
}

void sub_1006C3C20(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v9 = qword_100BCE930;
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v8, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446466;
      v15 = v10;
      v16 = 1024;
      v17 = a4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to establish BIP cover art channel with device %{public}s: %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BIP cover art channel established with device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 528) = v8;
    *(a1 + 536) = a3;
  }
}

void sub_1006C3DDC(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, __p);
    v6 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BIP cover art channel disestablished with device %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != *(a1 + 528))
  {
    v7 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100861BD0(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *(a1 + 528) = 0;
}

void sub_1006C3F34(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v22[0]) = *a2;
  WORD2(v22[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, v22, 1);
  v23 = v4;
  v5 = *(a1 + 352);
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = a1 + 352;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 352 && v4 >= *(v6 + 32))
  {
    v22[0] = 0;
    v22[1] = 0;
    sub_100007F88(v22, a1 + 280);
    v10 = *sub_10056E904(a1 + 344, &v23);
    if (v10)
    {
      (*(*v10 + 64))(v10);
    }

    sub_100075DC4((a1 + 344), &v23);
    sub_100075DC4((a1 + 504), &v23);
    sub_10000801C(v22);
    v21[0] = 0;
    v21[1] = 0;
    sub_100007F88(v21, a1 + 392);
    sub_100075DC4((a1 + 456), &v23);
    sub_10000801C(v21);
    v12 = *(a1 + 488);
    v13 = v23;
    if (v12)
    {
      v14 = a1 + 488;
      do
      {
        v15 = *(v12 + 32);
        v8 = v15 >= v23;
        v16 = v15 < v23;
        if (v8)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * v16);
      }

      while (v12);
      if (v14 != a1 + 488 && v23 >= *(v14 + 32))
      {
        v17 = *(v14 + 40);
        if (v17 != (v14 + 48))
        {
          do
          {
            if (*(v17 + 33) == 32)
            {
              sub_1006C41AC(v11, v17[5]);
            }

            v18 = v17[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v17[2];
                v20 = *v19 == v17;
                v17 = v19;
              }

              while (!v20);
            }

            v17 = v19;
          }

          while (v19 != (v14 + 48));
        }

        sub_100480394((a1 + 480), v14);
        v13 = v23;
      }
    }

    if (v13 == *(a1 + 552))
    {
      *(a1 + 552) = 0;
    }

    sub_10057E710(a1, v13, 0);
    sub_1000088CC(v21);
    sub_1000088CC(v22);
  }

  else
  {
LABEL_38:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861C48();
    }
  }
}

void sub_1006C4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006C41AC(uint64_t a1, char *a2)
{
  for (i = 8; i != 200; i += 24)
  {
    free(*&a2[i]);
  }

  free(a2);
}

uint64_t sub_1006C41F8(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = BYTE13(v12[2]);
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21(&v6 + 1);
  return v3 & v4;
}

void sub_1006C4340(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v14 = v7;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RemoteClient queryComplete for device %{public}s with result %d", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3 != 307)
  {
    if (!a3)
    {
      *(a1 + 544) = 0;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1006C3814(a1, a2);
      sub_100022214(__p);
      sub_10002249C(__p);
      return;
    }

    if ((a3 - 316) >= 0x13)
    {
      v8 = *(a1 + 544);
      if (v8 <= 3)
      {
        v9 = v8 + 1;
        *(a1 + 544) = v8 + 1;
        v10 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RemoteClient retrying with sdpAttempts %d", __p, 8u);
        }

        if (qword_100B54670 != -1)
        {
          sub_100861B40();
        }

        sub_100587D6C(qword_100B54668, a2);
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861C84();
  }

  *(a1 + 544) = 0;
}

uint64_t sub_1006C4558(uint64_t a1, unint64_t a2, float *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 392);
  v6 = *(a1 + 464);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 464;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 464 && *(v7 + 32) <= a2)
  {
    *a3 = *(v7 + 40) / 127.0;
    v11 = 1;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

void sub_1006C460C(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v28 = v8;
  v9 = a4 & 0x7F;
  if (v9 > 0x45)
  {
    if ((a4 & 0x7Fu) <= 0x48)
    {
      if (v9 == 70)
      {
        sub_1003641E4(7);
        v10 = 9;
        v11 = 502;
        v12 = "Pause";
        goto LABEL_36;
      }

      if (v9 != 72)
      {
        goto LABEL_35;
      }

      if (a4 >= 0)
      {
        v11 = 511;
      }

      else
      {
        v11 = 512;
      }

      v10 = 9;
      v12 = "Rewind";
    }

    else
    {
      if (v9 != 73)
      {
        if (v9 == 75)
        {
          v10 = 9;
          v11 = 505;
          v12 = "Next Track";
          goto LABEL_36;
        }

        if (v9 == 76)
        {
          v10 = 9;
          v11 = 504;
          v12 = "Previous Track";
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (a4 >= 0)
      {
        v11 = 509;
      }

      else
      {
        v11 = 510;
      }

      v10 = 9;
      v12 = "Fast Forward";
    }
  }

  else
  {
    if ((a4 & 0x7Fu) <= 0x42)
    {
      if (v9 == 65)
      {
        v10 = 8;
        v11 = 506;
        v12 = "Volume Up";
        goto LABEL_36;
      }

      if (v9 == 66)
      {
        v10 = 8;
        v11 = 507;
        v12 = "Volume Down";
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v9 == 67)
    {
      v10 = 8;
      v11 = 508;
      v12 = "Mute";
      goto LABEL_36;
    }

    if (v9 != 68)
    {
      if (v9 == 69)
      {
        sub_1003641E4(7);
        v10 = 9;
        v11 = 503;
        v12 = "Stop";
        goto LABEL_36;
      }

LABEL_35:
      v11 = 0;
      v10 = 8;
      v12 = "Unknown";
      goto LABEL_36;
    }

    sub_1003641E4(7);
    if (sub_1006C4B78(v13, v8))
    {
      v11 = 513;
    }

    else
    {
      v11 = 501;
    }

    v10 = 9;
    v12 = "Play";
  }

LABEL_36:
  if (sub_100208F0C(a2, a3, a4, v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861CC0();
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  if ((a4 & 0x80) == 0 || (a4 & 0xFE) == 0xC8)
  {
    v14 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v15 = v32 >= 0 ? __p : *__p;
      *buf = 136446466;
      v34 = v12;
      v35 = 2082;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received AVRCP %{public}s command from device %{public}s", buf, 0x16u);
      if (v32 < 0)
      {
        operator delete(*__p);
      }
    }

    v16 = sub_1000DEB14(v8);
    v17 = sub_1000154A8();
    v18 = (*(*v17 + 64))(v17);
    v19 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v20 = atomic_load((a1 + 545));
      *__p = 67109632;
      *&__p[4] = v18;
      *&__p[8] = 1024;
      *&__p[10] = v20 & 1;
      v30 = 1024;
      v31 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CoP: %d, call related session:%d delayPlay:%d", __p, 0x14u);
      v8 = v28;
    }

    if (v8 && sub_1000C0348(v8))
    {
      v21 = atomic_load((a1 + 545));
      if ((v21 & 1) == 0 || v16 != 22 && v16 != 17)
      {
        goto LABEL_65;
      }

      if ((v11 - 502) < 2)
      {
        v22 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315138;
          *&__p[4] = v12;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AVRCP %s received during call session, ignoring", __p, 0xCu);
        }

        return;
      }

      if (v11 != 501)
      {
LABEL_65:
        v24 = sub_100066098();
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1006C4BD8;
        v26[3] = &unk_100AE0880;
        v27 = v11;
        v26[4] = v28;
        v26[5] = v12;
        sub_10000CA94(v24, v26);
        v25 = sub_10056E904(a1 + 344, &v28);
        (*(**(*v25 + 8) + 8))(*(*v25 + 8), v28, v11);
        return;
      }

      v23 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "AVRCP %s received during call session, queueing resumption after session ends", __p, 0xCu);
      }

      *(a1 + 552) = v28;
    }

    else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861D28();
    }
  }
}