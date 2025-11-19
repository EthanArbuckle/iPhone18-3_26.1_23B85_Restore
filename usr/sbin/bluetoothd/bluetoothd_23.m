void sub_1001C4D18(_BYTE *a1, signed int a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v2 = -1;
    *a1 = 2;
    sub_1000045A8(a1, a2, 0, 0xFDu);
    sub_1000045A8(&v2, 1, 0, 0xFDu);
  }
}

void sub_1001C4D74(_BYTE *a1, signed int a2, char a3)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v3 = -1;
    *a1 = a3;
    sub_1000045A8(a1, a2, 0, 0xFDu);
    sub_1000045A8(&v3, 1, 0, 0xFDu);
  }
}

void sub_1001C4DCC(_BYTE *a1, signed int a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v2 = -1;
    *a1 = 4;
    sub_1000045A8(a1, a2, 0, 0xFDu);
    sub_1000045A8(&v2, 1, 0, 0xFDu);
  }
}

uint64_t sub_1001C4E34(__int16 a1, __int16 a2, __int16 a3)
{
  v3 = &xmmword_100B5C832;
  if (BYTE9(xmmword_100B5C832))
  {
    v4 = &xmmword_100B5C832;
    v5 = 10;
    while (--v5)
    {
      v3 = (v4 + 10);
      v6 = *(v4 + 19);
      v4 = (v4 + 10);
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    *v3 = a1;
    *(v3 + 2) = 27;
    *(v3 + 2) = a2;
    *(v3 + 3) = a3;
    result = 1;
    *(v3 + 4) = 257;
  }

  return result;
}

uint64_t sub_1001C4E94(__int16 a1, __int16 a2, __int16 a3)
{
  v3 = &xmmword_100B5C832;
  if (BYTE9(xmmword_100B5C832))
  {
    v4 = &xmmword_100B5C832;
    v5 = 10;
    while (--v5)
    {
      v3 = (v4 + 10);
      v6 = *(v4 + 19);
      v4 = (v4 + 10);
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    *v3 = a1;
    *(v3 + 2) = 27;
    *(v3 + 2) = a2;
    *(v3 + 3) = a3;
    result = 1;
    *(v3 + 4) = 258;
  }

  return result;
}

uint64_t sub_1001C4EF4(int a1)
{
  v1 = 0;
  v2 = 10;
  v3 = &xmmword_100B5C832;
  do
  {
    if (*(v3 + 9) == 1 && *v3 == a1)
    {
      *(v3 + 4) = 0;
      *v3 = 0;
      v1 = 1;
    }

    v3 = (v3 + 10);
    --v2;
  }

  while (v2);
  return v1 & 1;
}

uint64_t sub_1001C4F3C()
{
  dword_100B5C892 = 0;
  xmmword_100B5C872 = 0u;
  unk_100B5C882 = 0u;
  xmmword_100B5C852 = 0u;
  unk_100B5C862 = 0u;
  xmmword_100B5C832 = 0u;
  unk_100B5C842 = 0u;
  return 1;
}

void sub_1001C4F60(id a1)
{
  qword_100B5C6D8 = os_log_create("com.apple.bluetooth", "PacketLogger.HCI");
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  qword_100B5C898 = dispatch_queue_create("HCI Tracing", v1);
}

void sub_1001C4FB8(id a1)
{
  name = 0;
  if (qword_100B5C8C0 != -1)
  {
    sub_100813124();
  }

  v1 = dword_100B5C8B8;
  if (!dword_100B5C8B8)
  {
    v8 = qword_100B5C6D8;
    if (!os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "Failed to get host port for calendar changes";
    v6 = v8;
    v7 = 2;
    goto LABEL_9;
  }

  v2 = mach_port_allocate(mach_task_self_, 1u, &name);
  if (v2)
  {
    v3 = v2;
    v4 = qword_100B5C6D8;
    if (!os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    v15 = v3;
    v5 = "Failed to allocate mach port for calendar changes: error %d";
    v6 = v4;
    v7 = 8;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    return;
  }

  v9 = name;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  qword_100B5C8B0 = dispatch_source_create(&_dispatch_source_type_mach_recv, v9, 0, qword_100B5C898);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1001C5188;
  v10[3] = &unk_100AE58E0;
  v11 = name;
  v12 = v1;
  dispatch_source_set_event_handler(qword_100B5C8B0, v10);
  dispatch_activate(qword_100B5C8B0);
  sub_1001C5280(v1, name);
}

void sub_1001C5188(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  v2 = *(a1 + 32);
  *&v5[4] = 24;
  *&v5[12] = v2;
  v3 = mach_msg_receive(v5);
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "resetTimeReference, %X", buf, 8u);
  }

  qword_100B5C8D0 = sub_1001C5474();
  byte_100B5C820 = 1;
  sub_1001C5280(*(a1 + 36), *(a1 + 32));
  if (!v3)
  {
    mach_msg_destroy(v5);
  }
}

void sub_1001C5280(host_t a1, mach_port_t notify_port)
{
  v4 = host_request_notification(a1, (byte_100B5C8C8 & 1) == 0, notify_port);
  if (v4 == 4 && (byte_100B5C8C8 & 1) == 0)
  {
    byte_100B5C8C8 = 1;
    v4 = host_request_notification(a1, 0, notify_port);
  }

  if (v4)
  {
    v5 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to register for calendar changes: error %d", v6, 8u);
    }
  }
}

void sub_1001C5378(id a1)
{
  v1 = mach_host_self();
  port = 0;
  special_port = host_get_special_port(v1, -1, 1, &port);
  v3 = special_port;
  if (special_port != 4)
  {
    if (special_port)
    {
      if (dword_100B5C8B8)
      {
        return;
      }

      goto LABEL_7;
    }

    mach_port_deallocate(mach_task_self_, v1);
    v1 = port;
  }

  dword_100B5C8B8 = v1;
  if (v1)
  {
    return;
  }

LABEL_7:
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to get mach host port: error %d", buf, 8u);
  }
}

unint64_t sub_1001C5474()
{
  v4 = 0;
  v3 = 0;
  v2 = 0;
  sub_1000D42DC(&v4, &v3);
  sub_100016250(&v2);
  v0 = v3 / 1000;
  if ((v3 / 1000) < SWORD2(v2))
  {
    LOWORD(v0) = v3 / 1000 + 1000;
  }

  return (v4 - v2 - ((v3 / 1000) < SWORD2(v2))) | ((v0 - WORD2(v2)) << 32);
}

uint64_t sub_1001C5500(uint64_t a1, uint64_t a2)
{
  lockdown_send();
  result = lockdown_send();
  if (result == -1)
  {
    *(a2 + 10) = 1;
  }

  return result;
}

void sub_1001C5550(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v4, "packet", *a2, *(a2 + 8));
  xpc_connection_send_message(a1, v4);

  xpc_release(v4);
}

void sub_1001C55D0(void *a1, char a2)
{
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Live Logging", buf, 2u);
  }

  if (byte_100B5C6E2)
  {
    if (a2)
    {
      Mutable = qword_100B5C8E0;
      if (!qword_100B5C8E0)
      {
        Mutable = CFSetCreateMutable(0, 0, 0);
        qword_100B5C8E0 = Mutable;
      }

      Count = CFSetGetCount(Mutable);
      CFSetSetValue(qword_100B5C8E0, a1);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_1001C595C;
      handler[3] = &unk_100AE59E0;
      handler[4] = a1;
      xpc_connection_set_event_handler(a1, handler);
      if (qword_100B5C8A0 != -1)
      {
        sub_100812F50();
      }

      xpc_connection_set_target_queue(a1, qword_100B5C898);
      xpc_connection_resume(a1);
      if (Count)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = qword_100B5C8D8;
      if (!qword_100B5C8D8)
      {
        v11 = CFSetCreateMutable(0, 0, 0);
        qword_100B5C8D8 = v11;
      }

      v12 = CFSetGetCount(v11);
      CFSetSetValue(qword_100B5C8D8, a1);
      if (v12)
      {
        goto LABEL_20;
      }
    }

    if (off_100B5C6F0)
    {
      v7 = off_100B5C6F0(1);
    }

LABEL_20:
    if (off_100BC9C10)
    {
      off_100BC9C10(v7);
    }

    if (word_100B5C808)
    {
      sub_1000C522C(qword_100B5C810, word_100B5C808);
    }

    return;
  }

  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008132B4();
  }

  v8 = malloc_type_malloc(0x27uLL, 0x40F0C4A3uLL);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000A5B88(v8, 0x27u, "Bluetooth Profile Required", 26, 0xFCu);
    sub_1000C522C(v9, v10);
    free(v9);
  }
}

void sub_1001C57E8(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    if (byte_100B5C6E8 == 1)
    {
      v4 = qword_100B5C6D8;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        v5 = v10;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PacketLogger skipping authentication", v5, 2u);
      }
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      xpc_connection_get_audit_token();
      v6 = xpc_copy_entitlement_for_token();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = xpc_dictionary_get_BOOL(v6, "com.apple.bluetooth.internal");
      xpc_release(v7);
      if (!v8)
      {
        return;
      }

      v4 = qword_100B5C6D8;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v5 = &v9;
        goto LABEL_13;
      }
    }

    sub_1001C55D0(a2, 1);
    return;
  }

  if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(a2, _xpc_error_key_description);
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008132F0();
    }

    sub_1001C37FC();
  }
}

void sub_1001C595C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    if (qword_100B5C8E0)
    {
      CFSetRemoveValue(qword_100B5C8E0, *(a1 + 32));
    }

    xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (object != &_xpc_error_connection_invalid && os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100813360();
    }
  }

  else if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_expects_reply())
    {
      reply = xpc_dictionary_create_reply(object);
      if (reply)
      {
        v6 = reply;
        xpc_connection_send_message(*(a1 + 32), reply);

        xpc_release(v6);
      }
    }
  }
}

uint64_t sub_1001C5A5C(pthread_mutex_t *a1)
{
  v3.__sig = 0;
  *v3.__opaque = 0;
  if (pthread_mutexattr_init(&v3))
  {
    fprintf(__stderrp, "(0x%p) Failed to init mutex attr - %d!");
  }

  else if (pthread_mutexattr_settype(&v3, 2))
  {
    fprintf(__stderrp, "(0x%p) Failed to set mutex attr type - %d!");
  }

  else
  {
    if (!pthread_mutex_init(a1, &v3))
    {
      return 1;
    }

    fprintf(__stderrp, "(0x%p) Failed to init mutex - %d!");
  }

  return 0;
}

BOOL sub_1001C5B4C(pthread_mutex_t *a1)
{
  v2 = pthread_mutex_destroy(a1);
  if (v2)
  {
    fprintf(__stderrp, "(%p) Failed to destroy mutex - %d!", a1, v2);
  }

  return v2 == 0;
}

BOOL sub_1001C5BA4(pthread_t *a1, void *(__cdecl *a2)(void *), void *a3)
{
  memset(&v7, 0, sizeof(v7));
  pthread_attr_init(&v7);
  pthread_attr_setdetachstate(&v7, 2);
  return pthread_create(a1, &v7, a2, a3) == 0;
}

BOOL sub_1001C5C44(_opaque_pthread_t *a1, int a2)
{
  v3.sched_priority = a2;
  *v3.__opaque = 0;
  return pthread_setschedparam(a1, 2, &v3) == 0;
}

BOOL sub_1001C5C78(_opaque_pthread_t *a1, integer_t a2, integer_t a3, int a4, int a5)
{
  v9 = pthread_mach_thread_np(a1);
  get_default = 1;
  policy_infoCnt = 4;
  *policy_info = 0;
  v12 = 0;
  if (thread_policy_get(v9, 2u, policy_info, &policy_infoCnt, &get_default))
  {
    return 0;
  }

  if (a2)
  {
    policy_info[0] = a2;
    policy_info[1] = a3;
    LODWORD(v12) = a4;
  }

  HIDWORD(v12) = a5;
  return thread_policy_set(v9, 2u, policy_info, 4u) == 0;
}

uint64_t sub_1001C5D84(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, void, int), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v24 = *(a3 + 5);
      v25 = *(a3 + 6);
      if ((v24 - v25) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v26 = *a3;
          v23 = *(*a3 + v25);
          *(a3 + 6) = v25 + 2;
          if (v24 <= (v25 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 278, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v25 + 3;
          if (v24 <= (v25 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 279, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v22 = *(v26 + (v25 + 2));
          *(a3 + 6) = v25 + 4;
          if (v24 <= (v25 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 280, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = *(v26 + (v25 + 3));
          *(a3 + 6) = v25 + 5;
          if (v24 <= (v25 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 281, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v26 + (v25 + 4));
          *(a3 + 6) = v25 + 6;
          if (v24 <= (v25 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 282, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v16 = *(v26 + (v25 + 5));
          *(a3 + 6) = v25 + 7;
          if (v24 <= (v25 + 7))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 283, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v17 = *(v26 + (v25 + 6));
          *(a3 + 6) = v25 + 8;
          if (v24 <= (v25 + 8))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 284, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v18 = *(v26 + (v25 + 7));
          *(a3 + 6) = v25 + 9;
          if (v24 <= (v25 + 9))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 285, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          result = *(v26 + (v25 + 8));
          *(a3 + 6) = v25 + 10;
          if (v24 <= (v25 + 10))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 286, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v19 = *(v26 + (v25 + 9));
          *(a3 + 6) = v25 + 11;
          if (v24 <= (v25 + 11))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 287, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v20 = *(v26 + (v25 + 10));
          *(a3 + 6) = v25 + 12;
          v21 = *(v26 + (v25 + 11));
          if (a2)
          {
            goto LABEL_6;
          }

          return result;
        }

        v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 277, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_27;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("status %!", v6, v7, v8, v9, v10, v11, v12, a1), v13 = sub_10000C050(0x54u), result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    result = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a2)
  {
LABEL_6:
    HIBYTE(v28) = v21;
    BYTE2(v28) = v20;
    BYTE1(v28) = v19;
    LOBYTE(v28) = result;
    return a2(a1, v23, v22, v14, v15, v16, v17, v18, v28);
  }

  return result;
}

void sub_1001C60DC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_14:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 307, "ByteStream_NumReadBytesAvail(*pBs) >= (10)");
  }

  v15 = *(a3 + 6);
  v16 = *(a3 + 5);
  if (v16 - v15 <= 9)
  {
    goto LABEL_14;
  }

  v17 = *a3;
  v14 = *a3 + v15;
  *(a3 + 6) = v15 + 10;
  v13 = v17 + (v15 + 10);
  if (v16 - (v15 + 10) >= 0xA0)
  {
    *(a3 + 6) = v15 + 170;
  }

LABEL_10:
  if (a2)
  {
    a2(a1, v14, v13);
  }
}

uint64_t sub_1001C61E8(void *a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 7)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 8;
        return sub_100020078(64963, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2908, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= (8)";
    goto LABEL_10;
  }

  return result;
}

void sub_1001C62CC(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1 && sub_10000C240() && (sub_10000AF54("status %d, hlCb 0x%x", v4, v5, v6, v7, v8, v9, v10, a1), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(a1);
}

uint64_t sub_1001C6358(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65437, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3634, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

void sub_1001C6430(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 12);
  if (*(a3 + 10) - v14 <= 3)
  {
LABEL_14:
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4174, v15);
  }

  v13 = *(*a3 + v14);
  *(a3 + 12) = v14 + 4;
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_1001C6540(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if (v15 - v16 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v18 = (*a3 + v16);
          v19 = *v18;
          v20 = v18[1];
          *(a3 + 6) = v16 + 2;
          if (v15 - (v16 + 2) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4205, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = v19 | (v20 << 8);
          v13 = *(v17 + (v16 + 2));
          *(a3 + 6) = v16 + 6;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4204, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_1001C6698(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t *a3)
{
  memset(v20, 0, sizeof(v20));
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v14 = *(a3 + 5);
      v15 = *(a3 + 6);
      if (v14 - v15 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v16 = *a3;
          v13 = *(*a3 + v15);
          *(a3 + 6) = v15 + 4;
          if (v14 - (v15 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4238, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
          }

          *(a3 + 6) = v15 + 8;
          if (v14 - (v15 + 8) < 32)
          {
            *(a3 + 15) = 1;
            if (!a2)
            {
              return;
            }
          }

          else
          {
            v17 = 0;
            v18 = v16 + (v15 + 8);
            do
            {
              *(v20 + v17) = *(v18 + v17);
              ++v17;
            }

            while (v17 != 32);
            *(a3 + 6) = v15 + 40;
            if (!a2)
            {
              return;
            }
          }

LABEL_6:
          a2(a1, v13, v20);
          return;
        }

        v19 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4237, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_22;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  if (a2)
  {
    goto LABEL_6;
  }
}

uint64_t sub_1001C6854(__int16 a1, __int16 a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v14) - v10 > 1)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = HIBYTE(a2);
            WORD2(v14) += 2;
            return sub_100020078(65079, v13, BYTE4(v14), a3, sub_1001C69E8, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5709, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5708, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

void sub_1001C69E8(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_8;
  }

  if (*(a3 + 5) <= *(a3 + 6))
  {
LABEL_8:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        v20 = 0;
      }

      else
      {
        v20 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (!a1 || !sub_10000C240())
  {
    goto LABEL_15;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
  }

  sub_10000AF54("hlCb 0x%x, data %@", v6, v7, v8, v9, v10, v11, v12, a2);
  v22 = sub_10000C050(0x54u);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else
  {
LABEL_15:
    if (!a2)
    {
      return;
    }
  }

  v23 = *a3;
  v24 = *(a3 + 6);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    v25 = 0;
  }

  else
  {
    v25 = *(a3 + 10) - v24;
  }

  a2(a1, v23 + v24, v25);
}

uint64_t sub_1001C6BAC(char a1, __int16 a2, __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v19 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v19) = a1;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v30) - WORD2(v30) > 1)
          {
            if (BYTE6(v30) == 2)
            {
              *(v29 + WORD2(v30)) = a2;
              v20 = WORD2(v30) + 2;
              WORD2(v30) += 2;
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v30) - v20 > 1)
              {
                if (BYTE6(v30) == 2)
                {
                  *(v29 + v20) = a3;
                  *(v29 + WORD2(v30) + 1) = HIBYTE(a3);
                  v21 = WORD2(v30);
                  v22 = WORD2(v30) + 2;
                  WORD2(v30) += 2;
                  if (HIBYTE(v30))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v30) > v22)
                  {
                    if (BYTE6(v30) == 2)
                    {
                      WORD2(v30) = v21 + 3;
                      *(v29 + v22) = a4;
                      if (HIBYTE(v30))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v23 = WORD2(v30);
                        if (WORD1(v30) > WORD2(v30))
                        {
                          if (BYTE6(v30) == 2)
                          {
                            ++WORD2(v30);
                            *(v29 + v23) = a5;
                            return sub_100020078(64776, v29, BYTE4(v30), a10, sub_1001C62CC, v16, v17, v18);
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5726, v28);
                        }
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5725, v27);
                  }

                  v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5724, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_30;
            }

            v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5723, v25);
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5722, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001C6EB8(unint64_t a1, uint64_t (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    v5 = sub_10009A66C(a1);
    v12 = v5;
    v14 = BYTE6(v5);
    v13 = WORD2(v5);
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = v5;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v16) - WORD2(v16) > 5)
          {
            if (BYTE6(v16) == 2)
            {
              sub_1000075EC((v15 + WORD2(v16)), &v12 + 1, 6uLL);
              WORD2(v16) += 6;
              return sub_100020078(65485, v15, BYTE4(v16), a2, sub_1001C62CC, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5965, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5964, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001C703C(unint64_t a1, uint64_t (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    v5 = sub_10009A66C(a1);
    v12 = v5;
    v14 = BYTE6(v5);
    v13 = WORD2(v5);
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = v5;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v16) - WORD2(v16) > 5)
          {
            if (BYTE6(v16) == 2)
            {
              sub_1000075EC((v15 + WORD2(v16)), &v12 + 1, 6uLL);
              WORD2(v16) += 6;
              return sub_100020078(65486, v15, BYTE4(v16), a2, sub_1001C62CC, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5980, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5979, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001C71C0(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65484, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001C721C(char a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v17 = WORD2(v27);
            if (WORD1(v27) > WORD2(v27))
            {
              if (BYTE6(v27) == 2)
              {
                ++WORD2(v27);
                *(v26 + v17) = a2;
                if (HIBYTE(v27))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  v18 = WORD2(v27);
                  if (WORD1(v27) > WORD2(v27))
                  {
                    if (BYTE6(v27) == 2)
                    {
                      ++WORD2(v27);
                      *(v26 + v18) = a3;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v19 = WORD2(v27);
                        if (WORD1(v27) > WORD2(v27))
                        {
                          if (BYTE6(v27) == 2)
                          {
                            ++WORD2(v27);
                            *(v26 + v19) = a4;
                            if (HIBYTE(v27))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else
                            {
                              v20 = WORD2(v27);
                              if (WORD1(v27) > WORD2(v27))
                              {
                                if (BYTE6(v27) == 2)
                                {
                                  ++WORD2(v27);
                                  *(v26 + v20) = a5;
                                  return sub_100020078(64978, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
                                }

                                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6009, v25);
                              }
                            }

                            v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_38;
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6008, v24);
                        }
                      }

                      v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_34;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6007, v23);
                  }
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_30;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6006, v22);
            }
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6005, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001C74F4(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64810, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6022, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001C75CC(char a1, uint64_t a2, uint64_t (*a3)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v9 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v9) = a1;
          return sub_100020078(64810, v11, BYTE4(v12), a3, sub_1001C69E8, v6, v7, v8);
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6035, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001C76A4(__int16 a1, __int16 a2, char a3, unsigned int a4, char a5, char a6, char *a7, uint64_t (*a8)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_33;
  }

  if (WORD1(v37) - WORD2(v37) <= 1)
  {
LABEL_33:
    v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_35;
  }

  if (BYTE6(v37) != 2)
  {
    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6047, v30);
  }

  *(v36 + WORD2(v37)) = a1;
  v20 = WORD2(v37) + 2;
  WORD2(v37) += 2;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_37;
  }

  if (WORD1(v37) - v20 <= 1)
  {
LABEL_37:
    v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_39;
  }

  if (BYTE6(v37) != 2)
  {
    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6048, v31);
  }

  *(v36 + v20) = a2;
  *(v36 + WORD2(v37) + 1) = HIBYTE(a2);
  v21 = WORD2(v37);
  v22 = WORD2(v37) + 2;
  WORD2(v37) += 2;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_41;
  }

  if (WORD1(v37) <= v22)
  {
LABEL_41:
    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  if (BYTE6(v37) != 2)
  {
    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6049, v32);
  }

  WORD2(v37) = v21 + 3;
  *(v36 + v22) = a3;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_45;
  }

  v23 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_45:
    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_47;
  }

  if (BYTE6(v37) != 2)
  {
    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6050, v33);
  }

  ++WORD2(v37);
  *(v36 + v23) = a4;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_49;
  }

  v24 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_49:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_51;
  }

  if (BYTE6(v37) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6051, v34);
  }

  ++WORD2(v37);
  *(v36 + v24) = a5;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_53;
  }

  v25 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_53:
    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_55;
  }

  if (BYTE6(v37) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6052, v35);
  }

  ++WORD2(v37);
  *(v36 + v25) = a6;
  if (a4)
  {
    v26 = a4;
    while (!HIBYTE(v37))
    {
      v27 = WORD2(v37);
      if (WORD1(v37) <= WORD2(v37))
      {
        goto LABEL_30;
      }

      if (BYTE6(v37) != 2)
      {
        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_31;
      }

      v28 = *a7++;
      ++WORD2(v37);
      *(v36 + v27) = v28;
      if (!--v26)
      {
        return sub_100020078(64794, v36, BYTE4(v37), a8, sub_1001C69E8, v17, v18, v19);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_30:
    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_31:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6054, v29);
  }

  return sub_100020078(64794, v36, BYTE4(v37), a8, sub_1001C69E8, v17, v18, v19);
}

uint64_t sub_1001C7AC8(char a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, __int16 a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, uint64_t (*a25)())
{
  v75 = 0;
  v76 = 0;
  result = sub_10001FFD8(&v75);
  if (!result)
  {
    if (HIBYTE(v76))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v37 = WORD2(v76);
      if (WORD1(v76) > WORD2(v76))
      {
        if (BYTE6(v76) == 2)
        {
          ++WORD2(v76);
          *(v75 + v37) = a1;
          if (HIBYTE(v76))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v76) - WORD2(v76) > 1)
          {
            if (BYTE6(v76) == 2)
            {
              *(v75 + WORD2(v76)) = a2;
              v38 = WORD2(v76);
              v39 = WORD2(v76) + 2;
              WORD2(v76) += 2;
              if (HIBYTE(v76))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v76) > v39)
              {
                if (BYTE6(v76) == 2)
                {
                  WORD2(v76) = v38 + 3;
                  *(v75 + v39) = a3;
                  if (HIBYTE(v76))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    v40 = WORD2(v76);
                    if (WORD1(v76) > WORD2(v76))
                    {
                      if (BYTE6(v76) == 2)
                      {
                        ++WORD2(v76);
                        *(v75 + v40) = a4;
                        if (HIBYTE(v76))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v41 = WORD2(v76);
                          if (WORD1(v76) > WORD2(v76))
                          {
                            if (BYTE6(v76) == 2)
                            {
                              ++WORD2(v76);
                              *(v75 + v41) = a5;
                              if (HIBYTE(v76))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                              }

                              else
                              {
                                v42 = WORD2(v76);
                                if (WORD1(v76) > WORD2(v76))
                                {
                                  if (BYTE6(v76) == 2)
                                  {
                                    ++WORD2(v76);
                                    *(v75 + v42) = a6;
                                    if (HIBYTE(v76))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else
                                    {
                                      v43 = WORD2(v76);
                                      if (WORD1(v76) > WORD2(v76))
                                      {
                                        if (BYTE6(v76) == 2)
                                        {
                                          ++WORD2(v76);
                                          *(v75 + v43) = a7;
                                          if (HIBYTE(v76))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                          }

                                          else
                                          {
                                            v44 = WORD2(v76);
                                            if (WORD1(v76) > WORD2(v76))
                                            {
                                              if (BYTE6(v76) == 2)
                                              {
                                                ++WORD2(v76);
                                                *(v75 + v44) = a8;
                                                if (HIBYTE(v76))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                }

                                                else
                                                {
                                                  v45 = WORD2(v76);
                                                  if (WORD1(v76) > WORD2(v76))
                                                  {
                                                    if (BYTE6(v76) == 2)
                                                    {
                                                      ++WORD2(v76);
                                                      *(v75 + v45) = a9;
                                                      if (HIBYTE(v76))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v46 = WORD2(v76);
                                                        if (WORD1(v76) > WORD2(v76))
                                                        {
                                                          if (BYTE6(v76) == 2)
                                                          {
                                                            ++WORD2(v76);
                                                            *(v75 + v46) = a10;
                                                            if (HIBYTE(v76))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                            }

                                                            else if (WORD1(v76) - WORD2(v76) > 1)
                                                            {
                                                              if (BYTE6(v76) == 2)
                                                              {
                                                                *(v75 + WORD2(v76)) = a11;
                                                                v47 = WORD2(v76) + 2;
                                                                WORD2(v76) += 2;
                                                                if (HIBYTE(v76))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                }

                                                                else if (WORD1(v76) - v47 > 1)
                                                                {
                                                                  if (BYTE6(v76) == 2)
                                                                  {
                                                                    *(v75 + v47) = a12;
                                                                    *(v75 + WORD2(v76) + 1) = a13;
                                                                    v48 = WORD2(v76);
                                                                    v49 = WORD2(v76) + 2;
                                                                    WORD2(v76) += 2;
                                                                    if (HIBYTE(v76))
                                                                    {
                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                    }

                                                                    else if (WORD1(v76) > v49)
                                                                    {
                                                                      if (BYTE6(v76) == 2)
                                                                      {
                                                                        WORD2(v76) = v48 + 3;
                                                                        *(v75 + v49) = a14;
                                                                        if (HIBYTE(v76))
                                                                        {
                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                        }

                                                                        else if (WORD1(v76) - WORD2(v76) > 1)
                                                                        {
                                                                          if (BYTE6(v76) == 2)
                                                                          {
                                                                            *(v75 + WORD2(v76)) = a15;
                                                                            v50 = WORD2(v76) + 2;
                                                                            WORD2(v76) += 2;
                                                                            if (HIBYTE(v76))
                                                                            {
                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                            }

                                                                            else if (WORD1(v76) - v50 > 1)
                                                                            {
                                                                              if (BYTE6(v76) == 2)
                                                                              {
                                                                                *(v75 + v50) = a16;
                                                                                *(v75 + WORD2(v76) + 1) = a17;
                                                                                v51 = WORD2(v76) + 2;
                                                                                WORD2(v76) += 2;
                                                                                if (HIBYTE(v76))
                                                                                {
                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                }

                                                                                else if (WORD1(v76) - v51 > 1)
                                                                                {
                                                                                  if (BYTE6(v76) == 2)
                                                                                  {
                                                                                    *(v75 + v51) = a18;
                                                                                    *(v75 + WORD2(v76) + 1) = a19;
                                                                                    v52 = WORD2(v76) + 2;
                                                                                    WORD2(v76) += 2;
                                                                                    if (HIBYTE(v76))
                                                                                    {
                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                    }

                                                                                    else if (WORD1(v76) - v52 > 1)
                                                                                    {
                                                                                      if (BYTE6(v76) == 2)
                                                                                      {
                                                                                        *(v75 + v52) = a20;
                                                                                        *(v75 + WORD2(v76) + 1) = a21;
                                                                                        v53 = WORD2(v76) + 2;
                                                                                        WORD2(v76) += 2;
                                                                                        if (HIBYTE(v76))
                                                                                        {
                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                        }

                                                                                        else if (WORD1(v76) - v53 > 1)
                                                                                        {
                                                                                          if (BYTE6(v76) == 2)
                                                                                          {
                                                                                            *(v75 + v53) = a22;
                                                                                            *(v75 + WORD2(v76) + 1) = a23;
                                                                                            v54 = WORD2(v76);
                                                                                            v55 = WORD2(v76) + 2;
                                                                                            WORD2(v76) += 2;
                                                                                            if (HIBYTE(v76))
                                                                                            {
                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                            }

                                                                                            else if (WORD1(v76) > v55)
                                                                                            {
                                                                                              if (BYTE6(v76) == 2)
                                                                                              {
                                                                                                WORD2(v76) = v54 + 3;
                                                                                                *(v75 + v55) = a24;
                                                                                                return sub_100020078(65166, v75, BYTE4(v76), a25, sub_1001C69E8, v34, v35, v36);
                                                                                              }

                                                                                              v74 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6087, v74);
                                                                                            }

                                                                                            v74 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                            goto LABEL_136;
                                                                                          }

                                                                                          v73 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6086, v73);
                                                                                        }

                                                                                        v73 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                        goto LABEL_132;
                                                                                      }

                                                                                      v72 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6085, v72);
                                                                                    }

                                                                                    v72 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                    goto LABEL_128;
                                                                                  }

                                                                                  v71 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6084, v71);
                                                                                }

                                                                                v71 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                goto LABEL_124;
                                                                              }

                                                                              v70 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6083, v70);
                                                                            }

                                                                            v70 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                            goto LABEL_120;
                                                                          }

                                                                          v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6082, v69);
                                                                        }

                                                                        v69 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                        goto LABEL_116;
                                                                      }

                                                                      v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6081, v68);
                                                                    }

                                                                    v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                    goto LABEL_112;
                                                                  }

                                                                  v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6080, v67);
                                                                }

                                                                v67 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                goto LABEL_108;
                                                              }

                                                              v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6079, v66);
                                                            }

                                                            v66 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                            goto LABEL_104;
                                                          }

                                                          v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6078, v65);
                                                        }
                                                      }

                                                      v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_100;
                                                    }

                                                    v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6077, v64);
                                                  }
                                                }

                                                v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_96;
                                              }

                                              v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6076, v63);
                                            }
                                          }

                                          v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_92;
                                        }

                                        v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6075, v62);
                                      }
                                    }

                                    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_88;
                                  }

                                  v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6074, v61);
                                }
                              }

                              v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_84;
                            }

                            v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6073, v60);
                          }
                        }

                        v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_80;
                      }

                      v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6072, v59);
                    }
                  }

                  v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_76;
                }

                v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6071, v58);
              }

              v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_72;
            }

            v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6070, v57);
          }

          v57 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_68;
        }

        v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6069, v56);
      }
    }

    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_64;
  }

  return result;
}

void (**sub_1001C854C(void (**result)(uint64_t a1, uint64_t a2), const void *a2))(uint64_t a1, uint64_t a2)
{
  *result = sub_1001C8684;
  if (a2)
  {
    return memcpy(&off_100B5C8F0, a2, 0x218uLL);
  }

  return result;
}

void *sub_1001C8574(void *a1)
{
  memcpy(a1, off_100AE5A00, 0xA50uLL);

  return sub_10025793C(sub_1001C85B8);
}

unint64_t sub_1001C85B8(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!, opcode 0x%x, subOpcode %x, myopcode %x", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = 0x1C00000000000001uLL >> (a2 - 40);
    if ((a2 & 0x3FFu) - 552 >= 0x3D)
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11 & 1;
}

void *sub_1001C8668(void *__src)
{
  if (__src)
  {
    return memcpy(&unk_100B5CB08, __src, 0x218uLL);
  }

  return __src;
}

void sub_1001C8684(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 14) != 1)
  {
    v326 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_579;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_578;
  }

  v4 = (a1 + 12);
  v3 = *(a1 + 12);
  v5 = *(a1 + 10);
  if (v5 - v3 <= 1)
  {
LABEL_578:
    v326 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_579:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 334, v326);
  }

  v6 = a2;
  v7 = *a1;
  v8 = *(*a1 + v3);
  v9 = v3 + 2;
  *(a1 + 12) = v3 + 2;
  if (v8 > 59677)
  {
    switch(v8)
    {
      case 65281:
      case 65288:
        goto LABEL_460;
      case 65282:
      case 65283:
      case 65284:
      case 65285:
      case 65291:
      case 65292:
      case 65293:
      case 65294:
      case 65295:
      case 65303:
      case 65304:
      case 65308:
      case 65309:
      case 65310:
      case 65311:
      case 65313:
      case 65314:
      case 65316:
      case 65317:
      case 65318:
      case 65319:
      case 65320:
      case 65321:
      case 65323:
      case 65324:
      case 65325:
        goto LABEL_457;
      case 65286:
        v10 = qword_100B5C9E8;
        if (!qword_100B5C9E8)
        {
          goto LABEL_460;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 242;
        if (v5 != (v3 + 242))
        {
          sub_1000D660C();
          v10 = qword_100B5C9E8;
        }

        goto LABEL_272;
      case 65287:
        v10 = qword_100B5C9F0;
        if (!qword_100B5C9F0)
        {
          goto LABEL_460;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 112;
        if (v5 != (v3 + 112))
        {
          sub_1000D660C();
          v10 = qword_100B5C9F0;
        }

        goto LABEL_272;
      case 65289:
        v10 = qword_100B5C928;
        if (!qword_100B5C928)
        {
          goto LABEL_460;
        }

        v92 = v3 + 253;
        *v4 = v92;
        if (v5 != v92)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 688, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65290:
        v10 = qword_100B5C930;
        if (!qword_100B5C930)
        {
          goto LABEL_460;
        }

        v89 = v3 + 222;
        *v4 = v89;
        if (v5 != v89)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 702, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65296:
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 990, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        v79 = (v3 + 2);
        v80 = *(v7 + v79);
        if (*(v7 + v79))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI_VSE_SCAN_CORE_EVENT - unexpected subEvent %u", v81, v82, v83, v84, v85, v86, v87, v80);
            v88 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
LABEL_456:
              sub_1000E09C0();
            }
          }

LABEL_457:
          if (sub_10000C240())
          {
            sub_10000AF54("Unhandled Vendor Specific Event: 0x%x", v256, v257, v258, v259, v260, v261, v262, v8);
            v263 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_460;
        }

        if (!qword_100B5CA60)
        {
          goto LABEL_457;
        }

        v337 = 0uLL;
        LOWORD(v338[0]) = 0;
        if ((v5 - (v3 + 3)) <= 1)
        {
          *(a1 + 15) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else
        {
          LOWORD(v337) = *(v7 + (v3 + 3));
          v231 = v3 + 5;
          *v4 = v231;
          if ((v5 - v231) >= 6)
          {
            sub_1000075EC(&v337 + 2, v7 + v231, 6uLL);
            *v4 += 6;
            goto LABEL_475;
          }
        }

        *(a1 + 15) = 1;
LABEL_475:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1000, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          v274 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v274 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1001, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }
        }

        else
        {
          v294 = *(a1 + 12);
          if (*(a1 + 10) > v294)
          {
            v295 = *a1;
            *(a1 + 12) = v294 + 1;
            BYTE8(v337) = *(v295 + v294);
            if (*(a1 + 10) > (v294 + 1))
            {
              v296 = *a1;
              *(a1 + 12) = v294 + 2;
              BYTE9(v337) = *(v296 + (v294 + 1));
              if (*(a1 + 10) > (v294 + 2))
              {
                v297 = *a1;
                *(a1 + 12) = v294 + 3;
                BYTE10(v337) = *(v297 + (v294 + 2));
                if (*(a1 + 10) > (v294 + 3))
                {
                  v298 = *a1;
                  *(a1 + 12) = v294 + 4;
                  BYTE11(v337) = *(v298 + (v294 + 3));
                  if (*(a1 + 10) - (v294 + 4) > 1)
                  {
                    v299 = (v294 + 4);
                    WORD6(v337) = *(*a1 + v299);
                    *(a1 + 12) = v294 + 6;
                    if (*(a1 + 10) - (v294 + 6) > 1)
                    {
                      HIWORD(v337) = *(*a1 + (v294 + 6));
                      v300 = v294 + 8;
                      *(a1 + 12) = v299 + 4;
                      if (*(a1 + 10) > (v299 + 4))
                      {
                        v301 = *a1;
                        v302 = v299 + 5;
                        *(a1 + 12) = v302;
                        LOBYTE(v338[0]) = *(v301 + v300);
                        if (*(a1 + 10) > v302)
                        {
                          v303 = *a1;
                          *(a1 + 12) = v302 + 1;
                          BYTE1(v338[0]) = *(v303 + v302);
LABEL_554:
                          (qword_100B5CA60)(&v337);
                          goto LABEL_460;
                        }

LABEL_553:
                        *(a1 + 15) = 1;
                        goto LABEL_554;
                      }

                      *(a1 + 15) = 1;
LABEL_552:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      goto LABEL_553;
                    }

                    *(a1 + 15) = 1;
LABEL_551:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    v324 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v324 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1007, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_552;
                  }

                  *(a1 + 15) = 1;
LABEL_550:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  v323 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v323 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1006, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  goto LABEL_551;
                }

                *(a1 + 15) = 1;
LABEL_549:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                v322 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v322 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1005, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                goto LABEL_550;
              }

              *(a1 + 15) = 1;
LABEL_548:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              v321 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v321 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1004, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              goto LABEL_549;
            }

            *(a1 + 15) = 1;
LABEL_547:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v320 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v320 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1003, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_548;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        v319 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v319 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1002, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_547;
      case 65297:
        v10 = qword_100B5C938;
        if (!qword_100B5C938)
        {
          goto LABEL_460;
        }

        v93 = v3 + 66;
        *v4 = v93;
        if (v5 != v93)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 716, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65298:
        v10 = qword_100B5C940;
        if (!qword_100B5C940)
        {
          goto LABEL_460;
        }

        v101 = v3 + 226;
        *v4 = v101;
        if (v5 != v101)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 730, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65299:
        v10 = qword_100B5C948;
        if (!qword_100B5C948)
        {
          goto LABEL_460;
        }

        v91 = v3 + 220;
        *v4 = v91;
        if (v5 != v91)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 744, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65300:
        v10 = qword_100B5C950;
        if (!qword_100B5C950)
        {
          goto LABEL_460;
        }

        v100 = v3 + 242;
        *v4 = v100;
        if (v5 != v100)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 758, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

LABEL_296:
        v57 = (v7 + v9);
        goto LABEL_297;
      case 65301:
        v10 = qword_100B5CA30;
        if (!qword_100B5CA30)
        {
          goto LABEL_460;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 35;
        if (v5 != (v3 + 35))
        {
          sub_1000D660C();
          v10 = qword_100B5CA30;
        }

        goto LABEL_272;
      case 65302:
        v10 = qword_100B5CA38;
        if (!qword_100B5CA38)
        {
          goto LABEL_460;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 32;
        if (v5 != (v3 + 32))
        {
          sub_1000D660C();
          v10 = qword_100B5CA38;
        }

LABEL_272:
        v57 = v11;
        goto LABEL_297;
      case 65305:
        v58 = qword_100B5C9B0;
        if (!qword_100B5C9B0)
        {
          goto LABEL_457;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1356, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v98 = (v7 + v9);
        v95 = *v98;
        v96 = v98[1];
        v97 = v3 + 4;
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1357, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        goto LABEL_286;
      case 65306:
        if (!off_100B5C9D0)
        {
          goto LABEL_457;
        }

        v69 = off_100B5CBE8;
        if (!off_100B5CBE8)
        {
          goto LABEL_457;
        }

        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1389, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        if ((v5 - (v3 + 3)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1390, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v70 = *(v7 + (v3 + 2));
        v71 = *(v7 + (v3 + 3));
        *v4 = v3 + 5;
        if (v5 <= (v3 + 5))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1391, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1392, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v72 = *(v7 + (v3 + 5));
        v73 = *(v7 + (v3 + 6));
        *v4 = v3 + 10;
        if ((v5 - (v3 + 10)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1393, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v74 = *(v7 + (v3 + 10));
        *v4 = v3 + 14;
        if (v5 <= (v3 + 14))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1394, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 15;
        if (v5 <= (v3 + 15))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1395, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v75 = *(v7 + (v3 + 14));
        *v4 = v3 + 16;
        v76 = *(v7 + (v3 + 15));
        if (v5 - (v3 + 16) < 2)
        {
          v78 = -1;
        }

        else
        {
          v77 = (v3 + 16);
          if (v5 - v77 <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1397, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v78 = *(v7 + v77);
          *v4 = v3 + 18;
        }

        (v69)(v70, v71, v72, v73, v74, v75, v76, v78);
        off_100B5C9D0(v70, v71, v72, v73, v74, v75, v76, v78);
        goto LABEL_460;
      case 65307:
        v102 = off_100B5C9D8;
        if (!off_100B5C9D8)
        {
          goto LABEL_457;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1418, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v103 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if ((v5 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1419, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v104 = *(v7 + (v3 + 4));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1420, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v105 = *(v7 + (v3 + 6));
        *v4 = v3 + 10;
        if ((v5 - (v3 + 10)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1421, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v106 = *(v7 + (v3 + 10));
        *v4 = v3 + 14;
        (v102)(v103, v104, v105, v106);
        goto LABEL_460;
      case 65312:
        v107 = (v5 - v9);
        if (v107 >= 0xB6)
        {
          v16 = qword_100B5C988;
          if (!qword_100B5C988)
          {
            goto LABEL_457;
          }

          v28 = v7 + v9;
          goto LABEL_80;
        }

        if (!sub_10000C240())
        {
          goto LABEL_457;
        }

        sub_10000AF54("HCI_VSE_DISCONNECTION_CTO_EVENT returned invalid length %d of data", v191, v192, v193, v194, v195, v196, v197, v107);
        v198 = sub_10000C050(0x54u);
        if (!os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_457;
        }

        goto LABEL_456;
      case 65315:
        v58 = qword_100B5C9C0;
        if (!qword_100B5C9C0)
        {
          goto LABEL_457;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1370, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v94 = (v7 + v9);
        v95 = *v94;
        v96 = v94[1];
        v97 = v3 + 4;
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1371, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

LABEL_286:
        v62 = v95 | (v96 << 8);
        *v4 = v3 + 5;
        v63 = *(v7 + v97);
        goto LABEL_287;
      case 65322:
        if (!off_100B5C960)
        {
          goto LABEL_460;
        }

        v99 = *(a1 + 12) + off_100B5C960(v7 + v9, (v5 - v9));
        *(a1 + 12) = v99;
        if (*(a1 + 15))
        {
          goto LABEL_378;
        }

        if (*(a1 + 10) != v99)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 582, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        return;
      case 65326:
        if (!off_100B5C968)
        {
          goto LABEL_460;
        }

        v90 = *(a1 + 12) + off_100B5C968(v7 + v9, (v5 - v9));
        *(a1 + 12) = v90;
        if (*(a1 + 15))
        {
LABEL_378:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          goto LABEL_460;
        }

        if (*(a1 + 10) != v90)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 598, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        return;
      default:
        switch(v8)
        {
          case 65422:
            v16 = qword_100B5C978;
            if (!qword_100B5C978)
            {
              goto LABEL_460;
            }

            v17 = v5 - v9;
            if (v17 > 0xCD)
            {
              goto LABEL_411;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("BT_VSE_ACI_PHY_STATISTIC - Invalid data size %zu", v18, v19, v20, v21, v22, v23, v24, v17);
              v25 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_465;
              }
            }

            goto LABEL_460;
          case 65423:
            v16 = qword_100B5C9F8;
            if (qword_100B5C9F8)
            {
              goto LABEL_319;
            }

            goto LABEL_460;
          case 65424:
          case 65425:
          case 65427:
          case 65429:
          case 65431:
          case 65433:
          case 65434:
          case 65435:
          case 65436:
          case 65437:
          case 65438:
          case 65439:
          case 65440:
          case 65443:
          case 65444:
            goto LABEL_457;
          case 65426:
            if ((v5 - v9) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 369, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v137 = (v7 + v9);
            v138 = *v137;
            v139 = v137[1];
            *v4 = v3 + 4;
            if (v5 <= (v3 + 4))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 370, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a1 + 12) = v3 + 5;
            v140 = *(v7 + (v3 + 4));
            v141 = sub_1000ABB80(v138 | (v139 << 8));
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v142 = *(a1 + 10);
              v143 = *(a1 + 12);
              if (v142 - v143 > 3)
              {
                if (*(a1 + 14) == 1)
                {
                  v144 = *a1;
                  v145 = *(*a1 + v143);
                  *(a1 + 12) = v143 + 4;
                  if (v142 - (v143 + 4) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 373, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  v146 = *(v144 + (v143 + 4));
                  *v4 = v143 + 8;
                  if (v142 - (v143 + 8) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 374, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v147 = *(v144 + (v143 + 8));
                  *v4 = v143 + 10;
                  if (v142 - (v143 + 10) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 375, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v148 = v141;
                  v149 = *(v144 + (v143 + 10));
                  *v4 = v143 + 12;
                  if ((v149 & (v140 == 10)) != 0)
                  {
                    v140 = -118;
                  }

                  LODWORD(v337) = 0;
                  LODWORD(v336[0]) = 0;
                  sub_1000D42DC(&v337, v336);
                  v150 = v140 >= 2u && v148 == 0;
                  if (v150 || v140 == 10)
                  {
                    if (sub_10000C240())
                    {
                      sub_10000AF54("updateBTControllerClockCB size is zero", v215, v216, v217, v218, v219, v220, v221, v331);
                      v222 = sub_10000C050(0x54u);
                      if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000E09C0();
                      }
                    }

                    goto LABEL_457;
                  }

                  if (off_100B5CA50)
                  {
                    off_100B5CA50(v148, v140, (v146 << 32) | v145, 0, v147, v337, LODWORD(v336[0]));
                  }

                  goto LABEL_460;
                }

                v328 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_612:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 372, v328);
              }
            }

            v328 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
            goto LABEL_612;
          case 65428:
            v67 = qword_100B5CA20;
            if (!qword_100B5CA20)
            {
              goto LABEL_460;
            }

            v119 = v5 - v9;
            if (v119 > 3)
            {
              if (v119 < 0x43)
              {
                v264 = v7 + v9;
                if (v119 - 4 >= *(v264 + 1))
                {
                  v68 = v7 + v9;
                  goto LABEL_236;
                }

                if (!sub_10000C240())
                {
                  goto LABEL_460;
                }

                sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI payload length %zd exceed expected %zd", v265, v266, v267, v268, v269, v270, v271, *(v264 + 1));
                v272 = sub_10000C050(0x54u);
                if (!os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_460;
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_460;
                }

                sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI data size %zd exceeds %zd", v240, v241, v242, v243, v244, v245, v246, v119);
                v247 = sub_10000C050(0x54u);
                if (!os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_460;
                }
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                goto LABEL_460;
              }

              sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI data size %zd less then %zd", v120, v121, v122, v123, v124, v125, v126, v119);
              v127 = sub_10000C050(0x54u);
              if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_460;
              }
            }

            goto LABEL_465;
          case 65430:
            v337 = 0uLL;
            if ((v5 - v9) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 419, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v128 = *(v7 + (v3 + 2));
            *(a1 + 12) = v3 + 4;
            v129 = sub_1000ABB80(v128);
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v130 = *(a1 + 10);
              v131 = *(a1 + 12);
              if (v130 - v131 > 3)
              {
                if (*(a1 + 14) == 1)
                {
                  v132 = *a1;
                  *(a1 + 12) = v131 + 4;
                  if ((v130 - (v131 + 4)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 422, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  *v4 = v131 + 8;
                  if ((v130 - (v131 + 8)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 423, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  *v4 = v131 + 12;
                  if ((v130 - (v131 + 12)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 424, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  v133 = 0;
                  v134 = v131 + 16;
                  *v4 = v134;
                  v135 = v134;
                  do
                  {
                    if (v135 >= v130)
                    {
                      goto LABEL_581;
                    }

                    v136 = v135 + 1;
                    *v4 = v135 + 1;
                    *(&v338[-1] + v133++) = *(v132 + v135++);
                  }

                  while (v133 != 16);
                  if (v130 <= v136)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 429, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v136 + 1;
                  if (v130 <= (v136 + 1))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 430, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v136 + 2;
                  if (v130 <= (v136 + 2))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 431, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v136 + 3;
                  if ((v130 - (v136 + 3)) <= 1)
                  {
                    *(a1 + 15) = 1;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    *v4 = v136 + 5;
                    if (v130 > (v136 + 5))
                    {
                      *v4 = v136 + 6;
                      if (!v129)
                      {
                        if (sub_10000C240())
                        {
                          sub_10000AF54("updateBTControllerClockCB size is zero", v232, v233, v234, v235, v236, v237, v238, v331);
                          v239 = sub_10000C050(0x54u);
                          if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
                          {
                            sub_1000E09C0();
                          }
                        }

                        goto LABEL_457;
                      }

                      if (off_100B5CA48)
                      {
                        off_100B5CA48(v129);
                      }

                      goto LABEL_460;
                    }
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 433, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                v327 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_609:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 421, v327);
              }
            }

            v327 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
            goto LABEL_609;
          case 65432:
            v114 = (v5 - v9);
            if (v114 < 8)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Sensor state report event returned invalid length %d of data", v207, v208, v209, v210, v211, v212, v213, v114);
                v214 = sub_10000C050(0x54u);
                if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_456;
                }
              }

              goto LABEL_457;
            }

            if (!off_100B5CA78)
            {
              goto LABEL_460;
            }

            WORD2(v337) = 0;
            LODWORD(v337) = 0;
            if ((v5 - v9) <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 457, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(&v337, v7 + v9, 6uLL);
            v115 = *(a1 + 12);
            *(a1 + 12) = v115 + 6;
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v116 = *(a1 + 10);
              if (v116 > (v115 + 6))
              {
                if (*(a1 + 14) == 1)
                {
                  v117 = *a1;
                  *(a1 + 12) = v115 + 7;
                  if (v116 <= (v115 + 7))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 459, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  v118 = *(v117 + (v115 + 6));
                  *v4 = v115 + 8;
                  off_100B5CA78(v337 | (WORD2(v337) << 32), v118, *(v117 + (v115 + 7)), v6);
                  goto LABEL_460;
                }

                v329 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_769:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 458, v329);
              }
            }

            v329 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_769;
          case 65441:
            v108 = qword_100B5C958;
            if (qword_100B5C958)
            {
              goto LABEL_334;
            }

            goto LABEL_457;
          case 65442:
            v108 = off_100B5C970;
            if (!off_100B5C970)
            {
              goto LABEL_460;
            }

LABEL_334:
            v108(v7 + v9, (v5 - v9));
            goto LABEL_460;
          case 65445:
            v16 = qword_100B5CAA8;
            if (!qword_100B5CAA8)
            {
              goto LABEL_460;
            }

            v152 = v5 - v9;
            if (v152 > 0x26)
            {
LABEL_411:
              v28 = v7 + v9;
              goto LABEL_80;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("HID_LATENCY_STATISTICS - Invalid data size %lu", v153, v154, v155, v156, v157, v158, v159, v152);
              v160 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
              {
LABEL_465:
                sub_1000E09C0();
              }
            }

            goto LABEL_460;
          case 65446:
            v161 = off_100B5CAC8;
            if (!off_100B5CAC8)
            {
              goto LABEL_457;
            }

            if (v5 <= v9)
            {
              *(a1 + 15) = 1;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              *v4 = v3 + 3;
              if ((v5 - (v3 + 3)) > 1)
              {
                v162 = *(v7 + (v3 + 2));
                v163 = *(v7 + (v3 + 3));
                *v4 = v3 + 5;
                if ((v5 - (v3 + 5)) <= 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1439, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                }

                v164 = *(v7 + (v3 + 5));
                *v4 = v3 + 7;
                if (v5 <= (v3 + 7))
                {
                  v165 = 0;
                  *(a1 + 15) = 1;
                  v337 = 0u;
                  memset(v338, 0, 24);
                }

                else
                {
                  *v4 = v3 + 8;
                  v165 = *(v7 + (v3 + 7));
                  v337 = 0u;
                  memset(v338, 0, 24);
                  if (v165)
                  {
                    v332 = v162;
                    v166 = &v337;
                    v167 = v165;
                    while (1)
                    {
                      WORD2(v336[0]) = 0;
                      LODWORD(v336[0]) = 0;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1446, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        break;
                      }

                      v169 = *(a1 + 12);
                      if (*(a1 + 10) <= v169)
                      {
                        *(a1 + 15) = 1;
LABEL_407:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        v174 = 0;
LABEL_408:
                        *(a1 + 15) = 1;
                        goto LABEL_409;
                      }

                      v170 = *a1;
                      v171 = v169 + 1;
                      *(a1 + 12) = v169 + 1;
                      v172 = *(v170 + v169);
                      v173 = v172 << 48;
                      if (v172 == 2)
                      {
                        v173 = 0;
                      }

                      if (v172 == 3)
                      {
                        v174 = 0x1000000000000;
                      }

                      else
                      {
                        v174 = v173;
                      }

                      if (*(a1 + 10) - v171 <= 5)
                      {
                        goto LABEL_408;
                      }

                      sub_1000075EC(v336, *a1 + v171, 6uLL);
                      *(a1 + 12) += 6;
LABEL_409:
                      *v166++ = v174 | (LOBYTE(v336[0]) << 40) | (BYTE1(v336[0]) << 32) | (BYTE2(v336[0]) << 24) | (BYTE3(v336[0]) << 16) | (BYTE4(v336[0]) << 8) | BYTE5(v336[0]);
                      if (!--v167)
                      {
                        (off_100B5CAC8)(v332, v164, v163, v165, &v337);
                        goto LABEL_460;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    v168 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v168 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1454, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_407;
                  }
                }

                (v161)(v162, v164, v163, v165, &v337);
                goto LABEL_460;
              }
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1438, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          case 65447:
            v109 = (v5 - v9);
            if (v109 < 0x37)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("HCI_VSE_FAST_LE_CONNECTION_READY_EVENT returned invalid length %d of data", v199, v200, v201, v202, v203, v204, v205, v109);
                v206 = sub_10000C050(0x54u);
                if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_456;
                }
              }

              goto LABEL_457;
            }

            if (!off_100B5CAB0)
            {
              goto LABEL_457;
            }

            v339 = 0u;
            v340 = 0u;
            v337 = 0u;
            memset(v338, 0, sizeof(v338));
            if (v5 <= v9)
            {
              *(a1 + 15) = 1;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              *v4 = v3 + 3;
              if ((v5 - (v3 + 3)) > 1)
              {
                v110 = *(v7 + (v3 + 2));
                v111 = *(v7 + (v3 + 3));
                *v4 = v3 + 5;
                if (v5 <= (v3 + 5))
                {
                  *(a1 + 15) = 1;
                  memset(v335, 0, 7);
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  *v4 = v3 + 6;
                  memset(v335, 0, 7);
                  if (v5 > (v3 + 6))
                  {
                    *v4 = v3 + 7;
                    LOBYTE(v335[0]) = *(v7 + (v3 + 6));
                    v112 = LOBYTE(v335[0]);
                    v113 = (v335[0] & 0xFE) == 2;
                    if (LOBYTE(v335[0]) == 3)
                    {
                      v112 = 1;
                      LOBYTE(v335[0]) = 1;
                    }

                    else if (LOBYTE(v335[0]) == 2)
                    {
                      v112 = 0;
                      LOBYTE(v335[0]) = 0;
                    }

                    if (*(a1 + 14) == 1)
                    {
                      v325 = *(a1 + 12);
                      if (*(a1 + 10) - v325 >= 6)
                      {
                        sub_1000075EC(v335 + 1, *a1 + v325, 6uLL);
                        *(a1 + 12) += 6;
                        v112 = LOBYTE(v335[0]);
                        v273 = (BYTE1(v335[0]) << 40) | (BYTE2(v335[0]) << 32) | (HIBYTE(v335[0]) << 24) | (LOBYTE(v335[1]) << 16) | (BYTE1(v335[1]) << 8) | BYTE2(v335[1]);
LABEL_470:
                        *(v334 + 3) = 0;
                        v334[0] = 0;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1308, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v275 = *(a1 + 12);
                          if (*(a1 + 10) - v275 >= 6)
                          {
                            sub_1000075EC(v334 + 1, *a1 + v275, 6uLL);
                            *(a1 + 12) += 6;
                            goto LABEL_482;
                          }
                        }

                        *(a1 + 15) = 1;
LABEL_482:
                        LOBYTE(v334[0]) = 1;
                        *(&v338[0] + 1) = (BYTE2(v334[0]) << 32) | (BYTE1(v334[0]) << 40) | (HIBYTE(v334[0]) << 24) | (LOBYTE(v334[1]) << 16) | (BYTE1(v334[1]) << 8) | BYTE2(v334[1]) | 0x1000000000000;
                        *(v333 + 3) = 0;
                        v333[0] = 0;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1313, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        v276 = v273 | (v112 << 48);
                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v277 = *(a1 + 12);
                          if (*(a1 + 10) - v277 >= 6)
                          {
                            sub_1000075EC(v333 + 1, *a1 + v277, 6uLL);
                            *(a1 + 12) += 6;
                            goto LABEL_488;
                          }
                        }

                        *(a1 + 15) = 1;
LABEL_488:
                        v278 = BYTE2(v333[0]) << 32;
                        v279 = v278 | (BYTE1(v333[0]) << 40) | (HIBYTE(v333[0]) << 24) | (LOBYTE(v333[1]) << 16) | (BYTE1(v333[1]) << 8) | BYTE2(v333[1]) | 0x1000000000000;
                        if (v113)
                        {
                          v280 = v278 | (BYTE1(v333[0]) << 40) | (HIBYTE(v333[0]) << 24) | (LOBYTE(v333[1]) << 16) | (BYTE1(v333[1]) << 8) | BYTE2(v333[1]) | 0x1000000000000;
                        }

                        else
                        {
                          v280 = v276;
                        }

                        if (!v113)
                        {
                          v279 = 0;
                        }

                        *&v338[0] = v280;
                        *&v338[1] = v279;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1319, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                          v281 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v281 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1320, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }
                        }

                        else
                        {
                          v282 = *(a1 + 12);
                          if (*(a1 + 10) - v282 > 1)
                          {
                            WORD4(v338[1]) = *(*a1 + v282);
                            *(a1 + 12) = v282 + 2;
                            if (*(a1 + 10) - (v282 + 2) > 1)
                            {
                              WORD5(v338[1]) = *(*a1 + (v282 + 2));
                              *(a1 + 12) = v282 + 4;
                              if (*(a1 + 10) - (v282 + 4) > 1)
                              {
                                WORD6(v338[1]) = *(*a1 + (v282 + 4));
                                v283 = v282 + 6;
                                *(a1 + 12) = v282 + 6;
                                if (*(a1 + 10) > (v282 + 6))
                                {
                                  v284 = *a1;
                                  v285 = v282 + 7;
                                  *(a1 + 12) = v285;
                                  BYTE14(v338[1]) = *(v284 + v283);
                                  if (*(a1 + 10) > v285)
                                  {
                                    v286 = v285;
                                    v287 = *a1;
                                    v288 = v285 + 1;
                                    *(a1 + 12) = v288;
                                    HIBYTE(v338[1]) = *(v287 + v286);
                                    if (*(a1 + 10) - v288 > 1)
                                    {
                                      v289 = v288;
                                      v290 = *a1;
                                      LOWORD(v339) = *(*a1 + v289);
                                      *(a1 + 12) = v289 + 2;
                                      if (*(a1 + 10) - (v289 + 2) > 1)
                                      {
                                        WORD1(v339) = *(v290 + (v289 + 2));
                                        v291 = v289 + 4;
                                        *(a1 + 12) = v291;
                                        v292 = 8;
                                        BYTE12(v339) = 8;
                                        v293 = *(a1 + 10) - v291;
LABEL_523:
                                        if (v293 >= v292)
                                        {
                                          __memmove_chk();
                                          v310 = *(a1 + 12) + BYTE12(v339);
                                          *(a1 + 12) = v310;
                                          if (*(a1 + 14) != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1331, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          if (*(a1 + 15))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                            v311 = *(a1 + 14);
                                            *(a1 + 15) = 1;
                                            if (v311 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1332, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }
                                          }

                                          else
                                          {
                                            if (*(a1 + 10) > v310)
                                            {
                                              v312 = *a1;
                                              *(a1 + 12) = v310 + 1;
                                              BYTE13(v339) = *(v312 + v310);
                                              if (*(a1 + 10) > (v310 + 1))
                                              {
                                                v313 = *a1;
                                                *(a1 + 12) = v310 + 2;
                                                BYTE14(v339) = *(v313 + (v310 + 1));
                                                if (*(a1 + 10) - (v310 + 2) > 1)
                                                {
                                                  LOWORD(v340) = *(*a1 + (v310 + 2));
                                                  *(a1 + 12) = v310 + 4;
                                                  if (*(a1 + 10) - (v310 + 4) > 1)
                                                  {
                                                    WORD1(v340) = *(*a1 + (v310 + 4));
                                                    *(a1 + 12) = v310 + 6;
                                                    if (*(a1 + 10) - (v310 + 6) > 1)
                                                    {
                                                      WORD2(v340) = *(*a1 + (v310 + 6));
                                                      *(a1 + 12) = v310 + 8;
                                                      if (*(a1 + 10) - (v310 + 8) > 1)
                                                      {
                                                        WORD3(v340) = *(*a1 + (v310 + 8));
                                                        *(a1 + 12) = v310 + 10;
                                                        if (*(a1 + 10) - (v310 + 10) >= 2)
                                                        {
                                                          WORD4(v340) = *(*a1 + (v310 + 10));
                                                          *(a1 + 12) = v310 + 12;
LABEL_544:
                                                          *&v337 = sub_1000ABB80(v111);
                                                          v336[2] = v338[1];
                                                          v336[3] = v339;
                                                          v336[4] = v340;
                                                          v336[0] = v337;
                                                          v336[1] = v338[0];
                                                          off_100B5CAB0(v110, v336);
                                                          goto LABEL_460;
                                                        }

LABEL_543:
                                                        *(a1 + 15) = 1;
                                                        goto LABEL_544;
                                                      }

                                                      *(a1 + 15) = 1;
LABEL_542:
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                      goto LABEL_543;
                                                    }

                                                    *(a1 + 15) = 1;
LABEL_541:
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                    v318 = *(a1 + 14);
                                                    *(a1 + 15) = 1;
                                                    if (v318 != 1)
                                                    {
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1337, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                    }

                                                    goto LABEL_542;
                                                  }

                                                  *(a1 + 15) = 1;
LABEL_540:
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                  v317 = *(a1 + 14);
                                                  *(a1 + 15) = 1;
                                                  if (v317 != 1)
                                                  {
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1336, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                  }

                                                  goto LABEL_541;
                                                }

                                                *(a1 + 15) = 1;
LABEL_539:
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                v316 = *(a1 + 14);
                                                *(a1 + 15) = 1;
                                                if (v316 != 1)
                                                {
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1335, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                }

                                                goto LABEL_540;
                                              }

                                              *(a1 + 15) = 1;
LABEL_538:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                              v315 = *(a1 + 14);
                                              *(a1 + 15) = 1;
                                              if (v315 != 1)
                                              {
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1334, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                              }

                                              goto LABEL_539;
                                            }

                                            *(a1 + 15) = 1;
                                          }

                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                          v314 = *(a1 + 14);
                                          *(a1 + 15) = 1;
                                          if (v314 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1333, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          goto LABEL_538;
                                        }

                                        v330 = "ByteStream_NumReadBytesAvail(*pBs) >= (params.featuresLength)";
LABEL_777:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1329, v330);
                                      }

                                      *(a1 + 15) = 1;
                                      BYTE12(v339) = 8;
LABEL_522:
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                      v293 = 0;
                                      v292 = BYTE12(v339);
                                      goto LABEL_523;
                                    }

                                    *(a1 + 15) = 1;
LABEL_521:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    v309 = *(a1 + 14);
                                    *(a1 + 15) = 1;
                                    BYTE12(v339) = 8;
                                    if (v309 != 1)
                                    {
                                      v330 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                                      goto LABEL_777;
                                    }

                                    goto LABEL_522;
                                  }

                                  *(a1 + 15) = 1;
LABEL_520:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  v308 = *(a1 + 14);
                                  *(a1 + 15) = 1;
                                  if (v308 != 1)
                                  {
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1326, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                  }

                                  goto LABEL_521;
                                }

                                *(a1 + 15) = 1;
LABEL_519:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                v307 = *(a1 + 14);
                                *(a1 + 15) = 1;
                                if (v307 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1325, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                goto LABEL_520;
                              }

                              *(a1 + 15) = 1;
LABEL_518:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                              v306 = *(a1 + 14);
                              *(a1 + 15) = 1;
                              if (v306 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1324, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_519;
                            }

                            *(a1 + 15) = 1;
LABEL_517:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            v305 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v305 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1322, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            goto LABEL_518;
                          }

                          *(a1 + 15) = 1;
                        }

                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        v304 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v304 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1321, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        goto LABEL_517;
                      }

LABEL_469:
                      v273 = 0;
                      *(a1 + 15) = 1;
                      goto LABEL_470;
                    }

                    goto LABEL_767;
                  }
                }

                *(a1 + 15) = 1;
                if (*(a1 + 14) == 1)
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  v113 = 0;
                  v112 = 0;
                  goto LABEL_469;
                }

LABEL_767:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1304, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1285, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          case 65448:
            if (!off_100B5CA40)
            {
              goto LABEL_460;
            }

            v151 = *(a1 + 12) + off_100B5CA40(v7 + v9, (v5 - v9));
            *(a1 + 12) = v151;
            if (*(a1 + 15))
            {
              goto LABEL_378;
            }

            if (*(a1 + 10) != v151)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 639, "ByteStream_NumReadBytesAvail(*pBs) == 0");
            }

            return;
          case 65449:
            if (!qword_100B5CAF8)
            {
              goto LABEL_457;
            }

            *&v345 = 0;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v339 = 0u;
            v340 = 0u;
            v337 = 0u;
            memset(v338, 0, sizeof(v338));
            if (!sub_1002EDE84(a1, &v337))
            {
              goto LABEL_457;
            }

            (qword_100B5CAF8)(&v337);
            goto LABEL_460;
          case 65450:
            if (!qword_100B5CAE8)
            {
              goto LABEL_457;
            }

            v355 = 0;
            v353 = 0u;
            v354 = 0u;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v347 = 0u;
            v348 = 0u;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v339 = 0u;
            v340 = 0u;
            v337 = 0u;
            memset(v338, 0, sizeof(v338));
            if (!sub_1002ED79C(a1, &v337))
            {
              goto LABEL_457;
            }

            (qword_100B5CAE8)(&v337);
            goto LABEL_460;
          case 65451:
            if (!off_100B5CAF0)
            {
              goto LABEL_457;
            }

            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v339 = 0u;
            v340 = 0u;
            v337 = 0u;
            memset(v338, 0, sizeof(v338));
            if (!sub_1002EDC0C(a1, &v337))
            {
              goto LABEL_457;
            }

            (off_100B5CAF0)(&v337);
            goto LABEL_460;
          default:
            if (v8 != 59678)
            {
              goto LABEL_457;
            }

            v10 = qword_100B5CAA0;
            if (!qword_100B5CAA0)
            {
              goto LABEL_457;
            }

            if (v5 <= v9)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1249, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 3;
            LOBYTE(v337) = *(v7 + (v3 + 2));
            if (v5 <= (v3 + 3))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1250, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 4;
            BYTE1(v337) = *(v7 + (v3 + 3));
            if (v5 <= (v3 + 4))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1251, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 5;
            BYTE2(v337) = *(v7 + (v3 + 4));
            if (v5 <= (v3 + 5))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1252, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 6;
            BYTE3(v337) = *(v7 + (v3 + 5));
            if (v5 <= (v3 + 6))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1253, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 7;
            BYTE4(v337) = *(v7 + (v3 + 6));
            goto LABEL_213;
        }
    }
  }

  if (v8 > 12799)
  {
    if (v8 <= 59670)
    {
      if (v8 <= 59658)
      {
        if (v8 == 12800)
        {
          v48 = off_100B5C990;
          if (!off_100B5C990)
          {
            goto LABEL_457;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1213, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1214, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v49 = *(v7 + (v3 + 2));
          v50 = v3 + 4;
          *v4 = v3 + 4;
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1215, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v51 = *(v7 + (v3 + 3));
          v52 = v3 + 5;
          *v4 = v52;
          (v48)(v49, v51, *(v7 + v50), v7 + v52, (v5 - v52));
          goto LABEL_460;
        }

        if (v8 != 13824)
        {
          goto LABEL_457;
        }

        if ((v5 - v9) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 914, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v28 = *(v7 + (v3 + 2));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 915, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v29 = (v7 + (v3 + 6));
        v30 = *v29;
        v31 = v29[1];
        *v4 = v3 + 8;
        v16 = off_100B5C908;
        if (!off_100B5C908)
        {
          goto LABEL_460;
        }

        a2 = v30 | (v31 << 8);
        goto LABEL_80;
      }

      if (v8 == 59659)
      {
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1024, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        v64 = *(v7 + (v3 + 2));
        if (v64 != 2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI_VSE_BLE_SCAN_CORE_EVENT - unexpected subEvent %u", v183, v184, v185, v186, v187, v188, v189, v64);
            v190 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_456;
            }
          }

          goto LABEL_457;
        }

        v65 = off_100B5CA80;
        if (!off_100B5CA80)
        {
          goto LABEL_457;
        }

        LODWORD(v338[1]) = 0;
        if ((v5 - (v3 + 3)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1030, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        LODWORD(v337) = *(v7 + (v3 + 3));
        *v4 = v3 + 7;
        if ((v5 - (v3 + 7)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1031, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD1(v337) = *(v7 + (v3 + 7));
        *v4 = v3 + 11;
        if ((v5 - (v3 + 11)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1032, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD2(v337) = *(v7 + (v3 + 11));
        *v4 = v3 + 15;
        if ((v5 - (v3 + 15)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1033, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        HIDWORD(v337) = *(v7 + (v3 + 15));
        *v4 = v3 + 19;
        if ((v5 - (v3 + 19)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1034, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        LODWORD(v338[0]) = *(v7 + (v3 + 19));
        *v4 = v3 + 23;
        if ((v5 - (v3 + 23)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1035, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD1(v338[0]) = *(v7 + (v3 + 23));
        *v4 = v3 + 27;
        if ((v5 - (v3 + 27)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1036, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD2(v338[0]) = *(v7 + (v3 + 27));
        *v4 = v3 + 31;
        if ((v5 - (v3 + 31)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1037, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        HIDWORD(v338[0]) = *(v7 + (v3 + 31));
        *v4 = v3 + 35;
        if (v5 <= (v3 + 35))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1038, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 36;
        LOBYTE(v338[1]) = *(v7 + (v3 + 35));
        v65(&v337);
        goto LABEL_460;
      }

      if (v8 == 59660)
      {
        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 849, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v37 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 850, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 5;
        v38 = *(v7 + (v3 + 4));
        if (off_100B5CB28)
        {
          off_100B5CB28(v37, v38);
        }

        if (v38 && off_100B5C910)
        {
          off_100B5C910(v37, v38);
        }

        goto LABEL_460;
      }

      if (v8 != 59668)
      {
        goto LABEL_457;
      }

      v10 = off_100B5CAD0;
      if (!off_100B5CAD0)
      {
        goto LABEL_457;
      }

      *&v339 = 0;
      v337 = 0u;
      memset(v338, 0, sizeof(v338));
      if (v5 <= v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1054, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 3;
      LOBYTE(v337) = *(v7 + (v3 + 2));
      if ((v5 - (v3 + 3)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1055, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v337) = *(v7 + (v3 + 3));
      *v4 = v3 + 7;
      if (v5 <= (v3 + 7))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1056, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 8;
      BYTE8(v337) = *(v7 + (v3 + 7));
      if ((v5 - (v3 + 8)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1057, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v337) = *(v7 + (v3 + 8));
      *v4 = v3 + 12;
      if ((v5 - (v3 + 12)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1058, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v338[0]) = *(v7 + (v3 + 12));
      *v4 = v3 + 16;
      if ((v5 - (v3 + 16)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1059, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v338[0]) = *(v7 + (v3 + 16));
      *v4 = v3 + 20;
      if ((v5 - (v3 + 20)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1060, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD2(v338[0]) = *(v7 + (v3 + 20));
      *v4 = v3 + 24;
      if ((v5 - (v3 + 24)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1061, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v338[0]) = *(v7 + (v3 + 24));
      *v4 = v3 + 28;
      if ((v5 - (v3 + 28)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1062, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v338[1]) = *(v7 + (v3 + 28));
      *v4 = v3 + 32;
      if ((v5 - (v3 + 32)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1063, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v338[1]) = *(v7 + (v3 + 32));
      *v4 = v3 + 36;
      if ((v5 - (v3 + 36)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1064, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD2(v338[1]) = *(v7 + (v3 + 36));
      *v4 = v3 + 40;
      if ((v5 - (v3 + 40)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1065, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v338[1]) = *(v7 + (v3 + 40));
      *v4 = v3 + 44;
      if ((v5 - (v3 + 44)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1066, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v339) = *(v7 + (v3 + 44));
      *v4 = v3 + 48;
      if (v5 <= (v3 + 48))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1067, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 49;
      BYTE4(v339) = *(v7 + (v3 + 48));
      if (v5 <= (v3 + 49))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1068, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 50;
      BYTE5(v339) = *(v7 + (v3 + 49));
      if (v5 <= (v3 + 50))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1069, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 51;
      BYTE6(v339) = *(v7 + (v3 + 50));
LABEL_213:
      v57 = &v337;
LABEL_297:
      v10(v57);
      goto LABEL_460;
    }

    if (v8 > 59673)
    {
      switch(v8)
      {
        case 0xE91A:
          v66 = v5 - v9;
          if ((v5 - v9) < 0xF4u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("HCI_VSE_MRC_TXBF_LOGGING_EVENT returned invalid length %d of data", v175, v176, v177, v178, v179, v180, v181, v66);
              v182 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_456;
              }
            }

            goto LABEL_457;
          }

          v67 = off_100B5CA88;
          if (!off_100B5CA88)
          {
            goto LABEL_457;
          }

          v68 = v7 + v9;
LABEL_236:
          v67(v68);
          goto LABEL_460;
        case 0xE91C:
          v10 = qword_100B5CA90;
          if (!qword_100B5CA90)
          {
            goto LABEL_457;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1224, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          BYTE1(v337) = *(v7 + (v3 + 2));
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1225, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE2(v337) = *(v7 + (v3 + 3));
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1226, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          LOBYTE(v337) = *(v7 + (v3 + 4));
          if (v5 <= (v3 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1227, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 6;
          v27 = (v3 + 5);
          break;
        case 0xE91D:
          v10 = qword_100B5CA98;
          if (!qword_100B5CA98)
          {
            goto LABEL_457;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1236, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          LOBYTE(v337) = *(v7 + (v3 + 2));
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1237, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE1(v337) = *(v7 + (v3 + 3));
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1238, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          BYTE2(v337) = *(v7 + (v3 + 4));
          if (v5 <= (v3 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1239, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 6;
          v27 = (v3 + 5);
          break;
        default:
          goto LABEL_457;
      }

      BYTE3(v337) = *(v7 + v27);
      goto LABEL_213;
    }

    if (v8 != 59671)
    {
      if (v8 != 59672)
      {
        goto LABEL_457;
      }

      v10 = qword_100B5CA70;
      if (!qword_100B5CA70)
      {
        goto LABEL_457;
      }

      v337 = 0u;
      memset(v338, 0, 28);
      if (v5 <= v9)
      {
        *(a1 + 15) = 1;
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
      }

      else
      {
        *v4 = v3 + 3;
        LOBYTE(v337) = *(v7 + (v3 + 2));
        if ((v5 - (v3 + 3)) > 3)
        {
          DWORD1(v337) = *(v7 + (v3 + 3));
          *v4 = v3 + 7;
          if ((v5 - (v3 + 7)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1163, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v337) = *(v7 + (v3 + 7));
          *v4 = v3 + 11;
          if ((v5 - (v3 + 11)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1164, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v337) = *(v7 + (v3 + 11));
          *v4 = v3 + 15;
          if ((v5 - (v3 + 15)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1165, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v338[0]) = *(v7 + (v3 + 15));
          *v4 = v3 + 19;
          if ((v5 - (v3 + 19)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1166, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v338[0]) = *(v7 + (v3 + 19));
          *v4 = v3 + 23;
          if ((v5 - (v3 + 23)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1167, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v338[0]) = *(v7 + (v3 + 23));
          *v4 = v3 + 27;
          if ((v5 - (v3 + 27)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1168, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v338[0]) = *(v7 + (v3 + 27));
          *v4 = v3 + 31;
          if ((v5 - (v3 + 31)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1169, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v338[1]) = *(v7 + (v3 + 31));
          *v4 = v3 + 35;
          if ((v5 - (v3 + 35)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1170, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v338[1]) = *(v7 + (v3 + 35));
          *v4 = v3 + 39;
          if ((v5 - (v3 + 39)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1171, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v338[1]) = *(v7 + (v3 + 39));
          v34 = v3 + 43;
LABEL_212:
          *v4 = v34;
          goto LABEL_213;
        }
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1162, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v10 = qword_100B5CA68;
    if (!qword_100B5CA68)
    {
      goto LABEL_457;
    }

    LODWORD(v352) = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    v344 = 0u;
    v345 = 0u;
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v339 = 0u;
    v337 = 0u;
    memset(v338, 0, sizeof(v338));
    if ((v5 - v9) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1080, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v337) = *(v7 + (v3 + 2));
    *v4 = v3 + 6;
    if ((v5 - (v3 + 6)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1081, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v337) = *(v7 + (v3 + 6));
    *v4 = v3 + 10;
    if ((v5 - (v3 + 10)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1082, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v337) = *(v7 + (v3 + 10));
    *v4 = v3 + 14;
    if ((v5 - (v3 + 14)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1083, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v337) = *(v7 + (v3 + 14));
    *v4 = v3 + 18;
    if ((v5 - (v3 + 18)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1084, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v338[0]) = *(v7 + (v3 + 18));
    *v4 = v3 + 22;
    if ((v5 - (v3 + 22)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1085, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v338[0]) = *(v7 + (v3 + 22));
    *v4 = v3 + 26;
    if ((v5 - (v3 + 26)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1086, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v338[0]) = *(v7 + (v3 + 26));
    *v4 = v3 + 30;
    if ((v5 - (v3 + 30)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1087, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v338[0]) = *(v7 + (v3 + 30));
    *v4 = v3 + 34;
    if ((v5 - (v3 + 34)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1088, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v338[1]) = *(v7 + (v3 + 34));
    *v4 = v3 + 38;
    if ((v5 - (v3 + 38)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1089, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v338[1]) = *(v7 + (v3 + 38));
    *v4 = v3 + 42;
    v56 = v5 - (v3 + 42);
    if ((v56 & 0x1FFFE) == 0)
    {
      goto LABEL_213;
    }

    if (v56 <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1093, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v338[1]) = *(v7 + (v3 + 42));
    *v4 = v3 + 46;
    if ((v5 - (v3 + 46)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1094, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v338[1]) = *(v7 + (v3 + 46));
    *v4 = v3 + 50;
    if ((v5 - (v3 + 50)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1095, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v339) = *(v7 + (v3 + 50));
    *v4 = v3 + 54;
    if ((v5 - (v3 + 54)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1096, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v339) = *(v7 + (v3 + 54));
    *v4 = v3 + 58;
    if ((v5 - (v3 + 58)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1097, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v339) = *(v7 + (v3 + 58));
    *v4 = v3 + 62;
    if ((v5 - (v3 + 62)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1098, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v339) = *(v7 + (v3 + 62));
    *v4 = v3 + 66;
    if ((v5 - (v3 + 66)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1099, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v340) = *(v7 + (v3 + 66));
    *v4 = v3 + 70;
    if ((v5 - (v3 + 70)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1100, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v340) = *(v7 + (v3 + 70));
    *v4 = v3 + 74;
    if ((v5 - (v3 + 74)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1101, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v340) = *(v7 + (v3 + 74));
    *v4 = v3 + 78;
    if ((v5 - (v3 + 78)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1103, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v340) = *(v7 + (v3 + 78));
    *v4 = v3 + 82;
    if ((v5 - (v3 + 82)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1104, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v341) = *(v7 + (v3 + 82));
    *v4 = v3 + 86;
    if ((v5 - (v3 + 86)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1105, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v341) = *(v7 + (v3 + 86));
    *v4 = v3 + 90;
    if ((v5 - (v3 + 90)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1106, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v341) = *(v7 + (v3 + 90));
    *v4 = v3 + 94;
    if ((v5 - (v3 + 94)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1107, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v341) = *(v7 + (v3 + 94));
    *v4 = v3 + 98;
    if ((v5 - (v3 + 98)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1108, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v342) = *(v7 + (v3 + 98));
    *v4 = v3 + 102;
    if ((v5 - (v3 + 102)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1109, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v342) = *(v7 + (v3 + 102));
    *v4 = v3 + 106;
    if ((v5 - (v3 + 106)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1110, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v342) = *(v7 + (v3 + 106));
    *v4 = v3 + 110;
    if ((v5 - (v3 + 110)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1111, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v342) = *(v7 + (v3 + 110));
    *v4 = v3 + 114;
    if ((v5 - (v3 + 114)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1112, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v343) = *(v7 + (v3 + 114));
    *v4 = v3 + 118;
    if ((v5 - (v3 + 118)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1113, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v343) = *(v7 + (v3 + 118));
    *v4 = v3 + 122;
    if ((v5 - (v3 + 122)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1114, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v343) = *(v7 + (v3 + 122));
    *v4 = v3 + 126;
    if ((v5 - (v3 + 126)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1115, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v343) = *(v7 + (v3 + 126));
    *v4 = v3 + 130;
    if ((v5 - (v3 + 130)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1116, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v344) = *(v7 + (v3 + 130));
    *v4 = v3 + 134;
    if ((v5 - (v3 + 134)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1117, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v344) = *(v7 + (v3 + 134));
    *v4 = v3 + 138;
    if ((v5 - (v3 + 138)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1118, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v344) = *(v7 + (v3 + 138));
    *v4 = v3 + 142;
    if ((v5 - (v3 + 142)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1119, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v344) = *(v7 + (v3 + 142));
    *v4 = v3 + 146;
    if ((v5 - (v3 + 146)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1120, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v345) = *(v7 + (v3 + 146));
    *v4 = v3 + 150;
    if ((v5 - (v3 + 150)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1121, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v345) = *(v7 + (v3 + 150));
    *v4 = v3 + 154;
    if ((v5 - (v3 + 154)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1122, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v345) = *(v7 + (v3 + 154));
    *v4 = v3 + 158;
    if ((v5 - (v3 + 158)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1123, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v345) = *(v7 + (v3 + 158));
    *v4 = v3 + 162;
    if ((v5 - (v3 + 162)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1124, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v346) = *(v7 + (v3 + 162));
    *v4 = v3 + 166;
    if ((v5 - (v3 + 166)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1125, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v346) = *(v7 + (v3 + 166));
    *v4 = v3 + 170;
    if ((v5 - (v3 + 170)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1126, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v346) = *(v7 + (v3 + 170));
    *v4 = v3 + 174;
    if ((v5 - (v3 + 174)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1127, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    HIDWORD(v346) = *(v7 + (v3 + 174));
    *v4 = v3 + 176;
    if ((v5 - (v3 + 176)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1128, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    LODWORD(v347) = *(v7 + (v3 + 176));
    *v4 = v3 + 178;
    if ((v5 - (v3 + 178)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1129, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD1(v347) = *(v7 + (v3 + 178));
    *v4 = v3 + 180;
    if ((v5 - (v3 + 180)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1130, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD2(v347) = *(v7 + (v3 + 180));
    *v4 = v3 + 182;
    if ((v5 - (v3 + 182)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1131, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v347) = *(v7 + (v3 + 182));
    *v4 = v3 + 186;
    if ((v5 - (v3 + 186)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1132, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v348) = *(v7 + (v3 + 186));
    *v4 = v3 + 190;
    if ((v5 - (v3 + 190)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1133, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD1(v348) = *(v7 + (v3 + 190));
    *v4 = v3 + 192;
    if ((v5 - (v3 + 192)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1134, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD2(v348) = *(v7 + (v3 + 192));
    *v4 = v3 + 194;
    if ((v5 - (v3 + 194)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1135, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    HIDWORD(v348) = *(v7 + (v3 + 194));
    *v4 = v3 + 196;
    if ((v5 - (v3 + 196)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1136, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    LODWORD(v349) = *(v7 + (v3 + 196));
    *v4 = v3 + 198;
    if ((v5 - (v3 + 198)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1137, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v349) = *(v7 + (v3 + 198));
    *v4 = v3 + 202;
    if ((v5 - (v3 + 202)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1138, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v349) = *(v7 + (v3 + 202));
    *v4 = v3 + 206;
    if ((v5 - (v3 + 206)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1139, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v349) = *(v7 + (v3 + 206));
    *v4 = v3 + 210;
    if ((v5 - (v3 + 210)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1140, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v350) = *(v7 + (v3 + 210));
    *v4 = v3 + 214;
    if ((v5 - (v3 + 214)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1141, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v350) = *(v7 + (v3 + 214));
    *v4 = v3 + 218;
    if ((v5 - (v3 + 218)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1142, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v350) = *(v7 + (v3 + 218));
    *v4 = v3 + 222;
    if ((v5 - (v3 + 222)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1143, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v350) = *(v7 + (v3 + 222));
    *v4 = v3 + 226;
    if ((v5 - (v3 + 226)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1144, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v351) = *(v7 + (v3 + 226));
    *v4 = v3 + 230;
    if ((v5 - (v3 + 230)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1145, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v351) = *(v7 + (v3 + 230));
    *v4 = v3 + 234;
    if ((v5 - (v3 + 234)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1146, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v351) = *(v7 + (v3 + 234));
    *v4 = v3 + 238;
    if ((v5 - (v3 + 238)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1147, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v351) = *(v7 + (v3 + 238));
    *v4 = v3 + 242;
    if ((v5 - (v3 + 242)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1148, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v352) = *(v7 + (v3 + 242));
    v34 = v3 + 246;
    goto LABEL_212;
  }

  if (v8 <= 8959)
  {
    if (v8 <= 4865)
    {
      if (v8 != 2048)
      {
        if (v8 == 2574)
        {
          sub_1002EC850(a1, a2);
          goto LABEL_460;
        }

        goto LABEL_457;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 547, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v45 = (v7 + v9);
      v46 = *v45;
      v47 = v45[1];
      *v4 = v3 + 4;
      if ((v5 - (v3 + 4)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 548, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *v4 = v3 + 6;
      if (!sub_1000ABB80(v46 | (v47 << 8)))
      {
        goto LABEL_457;
      }

      if (off_100B5C8F0)
      {
        off_100B5C8F0();
      }
    }

    else if (v8 == 4866)
    {
      v58 = off_100B5CCD0;
      if (!off_100B5CCD0)
      {
        goto LABEL_457;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1468, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v59 = (v7 + v9);
      v60 = *v59;
      v61 = v59[1];
      *v4 = v3 + 4;
      if (v5 <= (v3 + 4))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1469, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v62 = v60 | (v61 << 8);
      *v4 = v3 + 5;
      v63 = *(v7 + (v3 + 4)) != 0;
LABEL_287:
      v58(v62, v63);
    }

    else if (v8 == 5632)
    {
      if (v5 <= v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 474, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v35 = v3 + 3;
      *v4 = v35;
      if (*(v7 + v9) != 1)
      {
        goto LABEL_457;
      }

      v36 = v5 - v35;
      if ((v36 & 0x1FFFE) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LostDevice size is zero", v248, v249, v250, v251, v252, v253, v254, v331);
          v255 = sub_10000C050(0x54u);
          if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_456;
          }
        }

        goto LABEL_457;
      }

      if (off_100B5C8F8)
      {
        off_100B5C8F8(v7 + v35, (v36 >> 1), v7 + v35 + (v36 >> 1), (v36 >> 1));
      }
    }

    else
    {
      if (v8 != 6400 || byte_100B5CD20 != 1)
      {
        goto LABEL_457;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 835, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *v4 = v3 + 4;
      if (v5 - (v3 + 4) <= 0x1D)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 836, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(reason))");
      }

      v12 = v7 + (v3 + 4);
      v13 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      BYTE12(v338[0]) = *(v12 + 28);
      DWORD2(v338[0]) = v15;
      *&v338[0] = v14;
      v337 = v13;
      *v4 = v3 + 34;
      BYTE13(v338[0]) = 0;
      sub_100304C44();
    }

    goto LABEL_460;
  }

  if (v8 > 9471)
  {
    if (v8 != 9472)
    {
      if (v8 == 11776)
      {
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 526, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        if (v5 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 527, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v39 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if ((v5 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 528, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v40 = *(v7 + (v3 + 3));
        v41 = *(v7 + (v3 + 4));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 529, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v42 = (v7 + (v3 + 6));
        v43 = *v42;
        v44 = v42[1];
        *v4 = v3 + 8;
        if (off_100B5CA00)
        {
          off_100B5CA00(v39, v40, v41, v43 | (v44 << 8));
        }
      }

      else
      {
        if (v8 != 12032)
        {
          goto LABEL_457;
        }

        v26 = v5 - v9;
        if ((v26 & 0x1FFFE) == 0)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("LostDevice size is zero", v223, v224, v225, v226, v227, v228, v229, v331);
            v230 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_456;
            }
          }

          goto LABEL_457;
        }

        if (off_100B5C8F8)
        {
          off_100B5C8F8(v7 + v9, (v26 >> 1), v7 + v9 + (v26 >> 1), (v26 >> 1));
        }
      }

      goto LABEL_460;
    }

    v16 = off_100B5CA08;
    if (!off_100B5CA08)
    {
      goto LABEL_457;
    }

LABEL_319:
    v28 = v7 + v9;
    a2 = (v5 - v9);
LABEL_80:
    v16(v28, a2);
    goto LABEL_460;
  }

  if (v8 == 8960)
  {
    if (v5 <= v9)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 948, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    *v4 = v3 + 3;
    if ((v5 - (v3 + 3)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 949, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v53 = *(v7 + (v3 + 2));
    v54 = *(v7 + (v3 + 3));
    *v4 = v3 + 5;
    if ((v5 - (v3 + 5)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 950, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v55 = *(v7 + (v3 + 5));
    *v4 = v3 + 9;
    if (off_100B5C9A8)
    {
      off_100B5C9A8(v53, v54, v55);
    }

    goto LABEL_460;
  }

  if (v8 != 9216)
  {
    goto LABEL_457;
  }

  if ((v5 - v9) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 930, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v32 = *(v7 + (v3 + 2));
  v33 = v3 + 4;
  *v4 = v3 + 4;
  if (v5 <= (v3 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 931, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *v4 = v3 + 5;
  v16 = qword_100B5C9A0;
  if (qword_100B5C9A0)
  {
    a2 = *(v7 + v33);
    v28 = v32;
    goto LABEL_80;
  }

LABEL_460:
  if (*(a1 + 15))
  {
    sub_1000C52F4(136);
LABEL_581:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 427, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }
}

uint64_t sub_1001CCF08(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64941, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3031, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CCFE0(_WORD *a1, char a2, char a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  if (!sub_10001FFD8(&v20))
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 0;
        v12 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v21) > v12)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v12) = 0;
            v13 = WORD2(v21);
            v14 = ++WORD2(v21);
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v21) > v14)
            {
              if (BYTE6(v21) == 2)
              {
                WORD2(v21) = v13 + 2;
                *(v20 + v14) = a3 | (16 * a2);
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v21) - WORD2(v21) > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + WORD2(v21)) = *a1;
                    v11 = BYTE4(v21) + 2;
                    WORD2(v21) += 2;
                    return sub_100020078(65456, v20, v11, a4, sub_1001C62CC, v8, v9, v10);
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5173, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_32;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5172, v18);
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_28;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5171, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
        goto LABEL_24;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5170, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
    goto LABEL_20;
  }

  v11 = BYTE4(v21);
  return sub_100020078(65456, v20, v11, a4, sub_1001C62CC, v8, v9, v10);
}

uint64_t sub_1001CD268(_WORD *a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65322, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5188, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5187, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CD3E4(int a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (a1 == 255)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = a1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = -1;
              *(v11 + WORD2(v12) + 1) = -1;
              return sub_100020078(65277, v11, (BYTE4(v12) + 2), a2, sub_1001C62CC, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1613, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_19;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1612, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1001CD560(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64838, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3047, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CD638(_WORD *a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65446, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3016, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3015, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CD7B4(unsigned int a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 > 4)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = -1;
        *(v13 + WORD2(v14) + 1) = -1;
        v8 = WORD2(v14);
        v9 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v14) > v9)
        {
          if (BYTE6(v14) == 2)
          {
            WORD2(v14) = v8 + 3;
            *(v13 + v9) = a1;
            if (HIBYTE(v14))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v14) - WORD2(v14) > 1)
            {
              if (BYTE6(v14) == 2)
              {
                *(v13 + WORD2(v14)) = -1;
                *(v13 + WORD2(v14) + 1) = -1;
                WORD2(v14) += 2;
                return sub_100020078(64893, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1516, v12);
            }

            v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_26;
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1515, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_22;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1514, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1001CD9C4(char a1, _WORD *a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v10 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v10) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 1)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = *a2;
              WORD2(v14) += 2;
              return sub_100020078(64872, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1534, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1533, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CDB40(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64861, v10, BYTE4(v11), a2, sub_1001ED484, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2433, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CDC18(uint64_t a1, uint64_t (*a2)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v23) - WORD2(v23) > 1)
    {
      if (BYTE6(v23) == 2)
      {
        *(v22 + WORD2(v23)) = *a1;
        v8 = WORD2(v23);
        v9 = WORD2(v23) + 2;
        WORD2(v23) += 2;
        if (HIBYTE(v23))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v23) > v9)
        {
          if (BYTE6(v23) == 2)
          {
            v10 = *(a1 + 2);
            WORD2(v23) = v8 + 3;
            *(v22 + v9) = v10;
            if (HIBYTE(v23))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v11 = WORD2(v23);
              if (WORD1(v23) > WORD2(v23))
              {
                if (BYTE6(v23) == 2)
                {
                  v12 = *(a1 + 3);
                  ++WORD2(v23);
                  *(v22 + v11) = v12;
                  if (HIBYTE(v23))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    v13 = WORD2(v23);
                    if (WORD1(v23) > WORD2(v23))
                    {
                      if (BYTE6(v23) == 2)
                      {
                        v14 = *(a1 + 4);
                        ++WORD2(v23);
                        *(v22 + v13) = v14;
                        if (HIBYTE(v23))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v15 = WORD2(v23);
                          if (WORD1(v23) > WORD2(v23))
                          {
                            if (BYTE6(v23) == 2)
                            {
                              v16 = *(a1 + 5);
                              ++WORD2(v23);
                              *(v22 + v15) = v16;
                              return sub_100020078(65357, v22, BYTE4(v23), a2, sub_1001C69E8, v5, v6, v7);
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5696, v21);
                          }
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5695, v20);
                    }
                  }

                  v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5694, v19);
              }
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5693, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5692, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CDF00(int a1, char a2, uint64_t a3, uint64_t (*a4)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 && !result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v11 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v11) = a2;
          return sub_100020078(64817, v13, BYTE4(v14), a4, sub_1001C69E8, v8, v9, v10);
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_11:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2109, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1001CDFE8(int a1, char a2, uint64_t a3, uint64_t (*a4)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 && !result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v11 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v11) = a2;
          return sub_100020078(64817, v13, BYTE4(v14), a4, sub_1001C62CC, v8, v9, v10);
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_11:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2127, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1001CE0D0(char a1, uint64_t (*a2)())
{
  v21 = 0;
  v22 = 0;
  v4 = sub_10001FFD8(&v21);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v4)
    {
      return v4;
    }

    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v13 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v13) = a1;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v22) - WORD2(v22) > 3)
          {
            if (BYTE6(v22) == 2)
            {
              *(v21 + WORD2(v22)) = -1;
              *(v21 + WORD2(v22) + 1) = -1;
              *(v21 + WORD2(v22) + 2) = -1;
              *(v21 + WORD2(v22) + 3) = -1;
              v14 = WORD2(v22) + 4;
              WORD2(v22) += 4;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v22) - v14 > 3)
              {
                if (BYTE6(v22) == 2)
                {
                  *(v21 + v14) = -1;
                  *(v21 + WORD2(v22) + 1) = -1;
                  *(v21 + WORD2(v22) + 2) = -1;
                  *(v21 + WORD2(v22) + 3) = -1;
                  WORD2(v22) += 4;
                  v10 = v21;
                  v11 = BYTE4(v22);
                  v12 = -552;
                  return sub_100020078(v12, v10, v11, a2, sub_1001C62CC, v5, v6, v7);
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3001, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_36;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3000, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_32;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2999, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  if (!v4)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v8) = 14;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v9 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v9) = -a1;
                v10 = v21;
                v11 = BYTE4(v22);
                v12 = -543;
                return sub_100020078(v12, v10, v11, a2, sub_1001C62CC, v5, v6, v7);
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2987, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_44;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2985, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_40;
  }

  return v4;
}

uint64_t sub_1001CE460(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = -a1;
          return sub_100020078(64855, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3064, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CE53C(_WORD *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, uint64_t (*a6)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v26) - WORD2(v26) > 1)
    {
      if (BYTE6(v26) == 2)
      {
        *(v25 + WORD2(v26)) = *a1;
        v16 = WORD2(v26) + 2;
        WORD2(v26) += 2;
        if (HIBYTE(v26))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v26) - v16 > 1)
        {
          if (BYTE6(v26) == 2)
          {
            *(v25 + v16) = a2;
            *(v25 + WORD2(v26) + 1) = HIBYTE(a2);
            v17 = WORD2(v26) + 2;
            WORD2(v26) += 2;
            if (HIBYTE(v26))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v26) - v17 > 1)
            {
              if (BYTE6(v26) == 2)
              {
                *(v25 + v17) = a3;
                *(v25 + WORD2(v26) + 1) = HIBYTE(a3);
                v18 = WORD2(v26) + 2;
                WORD2(v26) += 2;
                if (HIBYTE(v26))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v26) - v18 > 1)
                {
                  if (BYTE6(v26) == 2)
                  {
                    *(v25 + v18) = a4;
                    *(v25 + WORD2(v26) + 1) = HIBYTE(a4);
                    v19 = WORD2(v26) + 2;
                    WORD2(v26) += 2;
                    if (HIBYTE(v26))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    }

                    else if (WORD1(v26) - v19 > 1)
                    {
                      if (BYTE6(v26) == 2)
                      {
                        *(v25 + v19) = a5;
                        *(v25 + WORD2(v26) + 1) = HIBYTE(a5);
                        WORD2(v26) += 2;
                        return sub_100020078(64835, v25, BYTE4(v26), a6, sub_1001C62CC, v13, v14, v15);
                      }

                      v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3103, v24);
                    }

                    v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_38;
                  }

                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3102, v23);
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_34;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3101, v22);
            }

            v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_30;
          }

          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3100, v21);
        }

        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_26;
      }

      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3099, v20);
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CE8A4(__int16 a1, __int16 a2, __int16 a3, __int16 a4, uint64_t (*a5)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v22) - WORD2(v22) > 1)
    {
      if (BYTE6(v22) == 2)
      {
        *(v21 + WORD2(v22)) = a1;
        v14 = WORD2(v22) + 2;
        WORD2(v22) += 2;
        if (HIBYTE(v22))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v22) - v14 > 1)
        {
          if (BYTE6(v22) == 2)
          {
            *(v21 + v14) = a2;
            *(v21 + WORD2(v22) + 1) = HIBYTE(a2);
            v15 = WORD2(v22) + 2;
            WORD2(v22) += 2;
            if (HIBYTE(v22))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v22) - v15 > 1)
            {
              if (BYTE6(v22) == 2)
              {
                *(v21 + v15) = a3;
                *(v21 + WORD2(v22) + 1) = HIBYTE(a3);
                v16 = WORD2(v22) + 2;
                WORD2(v22) += 2;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v22) - v16 > 1)
                {
                  if (BYTE6(v22) == 2)
                  {
                    *(v21 + v16) = a4;
                    *(v21 + WORD2(v22) + 1) = HIBYTE(a4);
                    WORD2(v22) += 2;
                    return sub_100020078(64837, v21, BYTE4(v22), a5, sub_1001C62CC, v11, v12, v13);
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3121, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_31;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3120, v19);
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_27;
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3119, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3118, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001CEB70(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64836, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001CEBCC(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65502, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5396, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CECA4(char a1, int a2, __int16 a3, __int16 a4, __int16 a5, uint64_t (*a6)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v16 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v16) = a1;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v17 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v17) = a2;
                if ((a2 - 1) > 1)
                {
                  goto LABEL_16;
                }

                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v25) - WORD2(v25) > 1)
                {
                  if (BYTE6(v25) == 2)
                  {
                    *(v24 + WORD2(v25)) = a4;
                    v18 = WORD2(v25) + 2;
                    WORD2(v25) += 2;
                    if (HIBYTE(v25))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    }

                    else if (WORD1(v25) - v18 > 1)
                    {
                      if (BYTE6(v25) == 2)
                      {
                        *(v24 + v18) = a5;
                        *(v24 + WORD2(v25) + 1) = HIBYTE(a5);
                        WORD2(v25) += 2;
LABEL_16:
                        if (HIBYTE(v25))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else if (WORD1(v25) - WORD2(v25) > 1)
                        {
                          if (BYTE6(v25) == 2)
                          {
                            *(v24 + WORD2(v25)) = a3;
                            WORD2(v25) += 2;
                            return sub_100020078(65148, v24, BYTE4(v25), a6, sub_1001C62CC, v13, v14, v15);
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6329, v21);
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_32;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6327, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_40;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6326, v22);
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_36;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6324, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6323, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1001CEFDC(_WORD *a1, int a2, unsigned int a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 1;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v21) - WORD2(v21) > 1)
          {
            if (BYTE6(v21) == 2)
            {
              *(v20 + WORD2(v21)) = *a1;
              v13 = WORD2(v21) + 2;
              WORD2(v21) += 2;
              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v21) - v13 > 3)
              {
                if (BYTE6(v21) == 2)
                {
                  *(v20 + v13) = a2;
                  *(v20 + WORD2(v21) + 1) = BYTE1(a2);
                  *(v20 + WORD2(v21) + 2) = BYTE2(a2);
                  *(v20 + WORD2(v21) + 3) = HIBYTE(a2);
                  v14 = WORD2(v21) + 4;
                  WORD2(v21) += 4;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v21) - v14 > 1)
                  {
                    if (BYTE6(v21) == 2)
                    {
                      v15 = a3 * 1.25;
                      *(v20 + v14) = v15;
                      *(v20 + WORD2(v21) + 1) = v15 >> 8;
                      WORD2(v21) += 2;
                      return sub_100020078(65474, v20, BYTE4(v21), a4, sub_1001C62CC, v9, v10, v11);
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3085, v19);
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_31;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3084, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_27;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3083, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3082, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001CF2C0(char a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, uint64_t (*a8)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v21 = WORD2(v34);
            if (WORD1(v34) > WORD2(v34))
            {
              if (BYTE6(v34) == 2)
              {
                ++WORD2(v34);
                *(v33 + v21) = a2;
                if (HIBYTE(v34))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  v22 = WORD2(v34);
                  if (WORD1(v34) > WORD2(v34))
                  {
                    if (BYTE6(v34) == 2)
                    {
                      ++WORD2(v34);
                      *(v33 + v22) = a3;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v23 = WORD2(v34);
                        if (WORD1(v34) > WORD2(v34))
                        {
                          if (BYTE6(v34) == 2)
                          {
                            ++WORD2(v34);
                            *(v33 + v23) = a4;
                            if (HIBYTE(v34))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else
                            {
                              v24 = WORD2(v34);
                              if (WORD1(v34) > WORD2(v34))
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  ++WORD2(v34);
                                  *(v33 + v24) = a5;
                                  if (HIBYTE(v34))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  }

                                  else if (WORD1(v34) - WORD2(v34) > 1)
                                  {
                                    if (BYTE6(v34) == 2)
                                    {
                                      *(v33 + WORD2(v34)) = a7;
                                      v25 = WORD2(v34) + 2;
                                      WORD2(v34) += 2;
                                      if (HIBYTE(v34))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                      }

                                      else if (WORD1(v34) - v25 > 1)
                                      {
                                        if (BYTE6(v34) == 2)
                                        {
                                          *(v33 + v25) = a6;
                                          *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                                          WORD2(v34) += 2;
                                          return sub_100020078(65342, v33, BYTE4(v34), a8, sub_1001C62CC, v17, v18, v19);
                                        }

                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3473, v32);
                                      }

                                      v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_52;
                                    }

                                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3472, v31);
                                  }

                                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_48;
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3471, v30);
                              }
                            }

                            v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3470, v29);
                        }
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3469, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3468, v27);
            }
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3467, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001CF6D0(char a1, char a2, unsigned __int8 a3, char *a4, _WORD *a5, _WORD *a6, char a7, char a8, _WORD *a9, uint64_t a10, uint64_t (*a11)())
{
  v47 = 0;
  v48 = 0;
  result = sub_10001FFD8(&v47);
  if (result)
  {
    return result;
  }

  LOBYTE(v23) = 0;
  v25 = 3;
  v26 = a3;
  do
  {
    LOBYTE(v23) = (v26 & 1) + v23;
    v26 >>= 1;
    --v25;
  }

  while (v25);
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_60;
  }

  v27 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_60:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_62;
  }

  if (BYTE6(v48) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3501, v42);
  }

  ++WORD2(v48);
  *(v47 + v27) = a1;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_64;
  }

  v28 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_64:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_66;
  }

  if (BYTE6(v48) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3502, v43);
  }

  ++WORD2(v48);
  *(v47 + v28) = a2;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_68;
  }

  v29 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_68:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_70;
  }

  if (BYTE6(v48) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3503, v44);
  }

  ++WORD2(v48);
  *(v47 + v29) = a3;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_72;
  }

  v30 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_72:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_74;
  }

  if (BYTE6(v48) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3504, v45);
  }

  ++WORD2(v48);
  *(v47 + v30) = a7;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_76;
  }

  v31 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_76:
    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_78;
  }

  if (BYTE6(v48) != 2)
  {
    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3505, v46);
  }

  ++WORD2(v48);
  *(v47 + v31) = a8;
  if (v23)
  {
    v23 = v23;
    v32 = v23;
    while (!HIBYTE(v48))
    {
      v33 = WORD2(v48);
      if (WORD1(v48) <= WORD2(v48))
      {
        goto LABEL_45;
      }

      if (BYTE6(v48) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_46;
      }

      v34 = *a4++;
      ++WORD2(v48);
      *(v47 + v33) = v34;
      if (!--v32)
      {
        v35 = v23;
        while (!HIBYTE(v48))
        {
          if (WORD1(v48) - WORD2(v48) <= 1)
          {
            goto LABEL_49;
          }

          if (BYTE6(v48) != 2)
          {
            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_50;
          }

          *(v47 + WORD2(v48)) = *a5;
          WORD2(v48) += 2;
          ++a5;
          if (!--v35)
          {
            v36 = v23;
            while (!HIBYTE(v48))
            {
              if (WORD1(v48) - WORD2(v48) <= 1)
              {
                goto LABEL_53;
              }

              if (BYTE6(v48) != 2)
              {
                v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_54;
              }

              *(v47 + WORD2(v48)) = *a6;
              WORD2(v48) += 2;
              ++a6;
              if (!--v36)
              {
                while (!HIBYTE(v48))
                {
                  if (WORD1(v48) - WORD2(v48) <= 1)
                  {
                    goto LABEL_57;
                  }

                  if (BYTE6(v48) != 2)
                  {
                    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_58;
                  }

                  *(v47 + WORD2(v48)) = *a9;
                  v37 = BYTE4(v48) + 2;
                  WORD2(v48) += 2;
                  ++a9;
                  if (!--v23)
                  {
                    return sub_100020078(65346, v47, v37, a11, sub_1001C62CC, v20, v21, v22);
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_57:
                v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_58:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3517, v41);
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_53:
            v40 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_54:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3514, v40);
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_49:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_50:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3511, v39);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_45:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_46:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3508, v38);
  }

  v37 = BYTE4(v48);
  return sub_100020078(65346, v47, v37, a11, sub_1001C62CC, v20, v21, v22);
}

uint64_t sub_1001CFC6C(char a1, __int16 a2, char a3, __int16 a4, char a5, uint64_t (*a6)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v27) - WORD2(v27) > 1)
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = a2;
              v17 = WORD2(v27);
              v18 = WORD2(v27) + 2;
              WORD2(v27) += 2;
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v27) > v18)
              {
                if (BYTE6(v27) == 2)
                {
                  WORD2(v27) = v17 + 3;
                  *(v26 + v18) = a3;
                  if (HIBYTE(v27))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v27) - WORD2(v27) > 1)
                  {
                    if (BYTE6(v27) == 2)
                    {
                      *(v26 + WORD2(v27)) = a4;
                      v19 = WORD2(v27);
                      v20 = WORD2(v27) + 2;
                      WORD2(v27) += 2;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else if (WORD1(v27) > v20)
                      {
                        if (BYTE6(v27) == 2)
                        {
                          WORD2(v27) = v19 + 3;
                          *(v26 + v20) = a5;
                          return sub_100020078(65354, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
                        }

                        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5435, v25);
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5434, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_34;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5433, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_30;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5432, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5431, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CFF7C(char a1, __int16 a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v10 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v10) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 1)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = a2;
              WORD2(v14) += 2;
              return sub_100020078(65356, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5461, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5460, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D00F4(char a1, __int16 a2, char a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v12 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v12) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v19) - WORD2(v19) > 1)
          {
            if (BYTE6(v19) == 2)
            {
              *(v18 + WORD2(v19)) = a2;
              v13 = WORD2(v19);
              v14 = WORD2(v19) + 2;
              WORD2(v19) += 2;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v19) > v14)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v13 + 3;
                  *(v18 + v14) = a3;
                  return sub_100020078(65355, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5449, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5448, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5447, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D02E8(uint64_t a1, uint64_t (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v5) = BYTE6(a1);
          v11[0] = BYTE5(a1);
          v11[1] = BYTE4(a1);
          v11[2] = BYTE3(a1);
          v11[3] = BYTE2(a1);
          v11[4] = BYTE1(a1);
          v11[5] = a1;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), v11, 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(65063, v12, BYTE4(v13), a2, sub_1001C62CC, v6, v7, v8);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6270, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6267, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D047C(__int16 a1, char a2, char a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v19) - WORD2(v19) > 1)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = a1;
        v12 = WORD2(v19);
        v13 = WORD2(v19) + 2;
        WORD2(v19) += 2;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v19) > v13)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v12 + 3;
            *(v18 + v13) = a2;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v14 = WORD2(v19);
              if (WORD1(v19) > WORD2(v19))
              {
                if (BYTE6(v19) == 2)
                {
                  ++WORD2(v19);
                  *(v18 + v14) = a3;
                  return sub_100020078(65072, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5333, v17);
              }
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5332, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5331, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D0670(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65339, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4442, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4441, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D07E8(__int16 a1, char a2, __int16 a3, uint64_t (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a1;
        v12 = WORD2(v18);
        v13 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v18) > v13)
        {
          if (BYTE6(v18) == 2)
          {
            WORD2(v18) = v12 + 3;
            *(v17 + v13) = a2;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v18) - WORD2(v18) > 1)
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + WORD2(v18)) = a3;
                WORD2(v18) += 2;
                return sub_100020078(65487, v17, BYTE4(v18), a4, sub_1001C62CC, v9, v10, v11);
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3554, v16);
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_24;
          }

          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3553, v15);
        }

        v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3552, v14);
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D09F8(char a1, _BYTE *a2, _WORD *a3, char a4, char a5, uint64_t (*a6)())
{
  v26 = 0;
  v27 = 0;
  if (!sub_10001FFD8(&v26))
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v15 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v15) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v27) - WORD2(v27) > 1)
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = *a3;
              v16 = WORD2(v27) + 2;
              WORD2(v27) += 2;
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v27) - v16 > 1)
              {
                if (BYTE6(v27) == 2)
                {
                  *(v26 + v16) = *a2;
                  *(v26 + WORD2(v27) + 1) = a2[1];
                  v17 = WORD2(v27);
                  v18 = WORD2(v27) + 2;
                  WORD2(v27) += 2;
                  if (HIBYTE(v27))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v27) > v18)
                  {
                    if (BYTE6(v27) == 2)
                    {
                      WORD2(v27) = v17 + 3;
                      *(v26 + v18) = a4;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v19 = WORD2(v27);
                        if (WORD1(v27) > WORD2(v27))
                        {
                          if (BYTE6(v27) == 2)
                          {
                            ++WORD2(v27);
                            *(v26 + v19) = a5;
                            return sub_100020078(64884, v26, BYTE4(v27), a6, sub_1001C62CC, v12, v13, v14);
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3962, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3961, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3960, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_30;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3959, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3958, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return sub_100020078(64884, v26, BYTE4(v27), a6, sub_1001C62CC, v12, v13, v14);
}

uint64_t sub_1001D0D10(int a1, uint64_t (*a2)())
{
  v12 = 0;
  v13 = 0;
  v7 = sub_10001FFD8(&v12);
  if ((a1 & 0x10000) != 0)
  {
    if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() <= 0xBB7)
    {
      v8 = -2147483646;
    }

    else
    {
      v8 = -2147418110;
    }
  }

  else
  {
    v8 = 0;
  }

  if ((a1 & 0x40000) != 0)
  {
    v8 |= 0x80000004;
  }

  if ((a1 & 0x100000) != 0)
  {
    v8 |= 0x80000001;
  }

  if (!v7)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        v9 = v8 | a1 & 0x15000002;
        *(v12 + WORD2(v13)) = v9;
        *(v12 + WORD2(v13) + 1) = BYTE1(v8);
        *(v12 + WORD2(v13) + 2) = BYTE2(v8);
        *(v12 + WORD2(v13) + 3) = HIBYTE(v9);
        WORD2(v13) += 4;
        return sub_100020078(65345, v12, BYTE4(v13), a2, sub_1001C62CC, v4, v5, v6);
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1630, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_21;
  }

  return v7;
}

uint64_t sub_1001D0EB4(int a1, int a2, uint64_t (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v18) - WORD2(v18) > 3)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a1;
        *(v17 + WORD2(v18) + 2) = BYTE2(a1);
        *(v17 + WORD2(v18) + 3) = HIBYTE(a1);
        v10 = WORD2(v18) + 4;
        WORD2(v18) += 4;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v18) - v10 > 3)
        {
          if (BYTE6(v18) == 2)
          {
            *(v17 + v10) = a2;
            *(v17 + WORD2(v18) + 1) = BYTE1(a2);
            *(v17 + WORD2(v18) + 2) = BYTE2(a2);
            *(v17 + WORD2(v18) + 3) = HIBYTE(a2);
            v11 = WORD2(v18) + 4;
            WORD2(v18) += 4;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v18) - v11 > 3)
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + v11) = 0;
                *(v17 + WORD2(v18) + 1) = 0;
                *(v17 + WORD2(v18) + 3) = 0;
                v12 = WORD2(v18) + 4;
                WORD2(v18) += 4;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v18) - v12 > 3)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + v12) = 0;
                    *(v17 + WORD2(v18) + 1) = 0;
                    *(v17 + WORD2(v18) + 3) = 0;
                    WORD2(v18) += 4;
                    return sub_100020078(64957, v17, BYTE4(v18), a3, sub_1001C62CC, v7, v8, v9);
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1650, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_31;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1649, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_27;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1648, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_23;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1647, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D11F8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (a1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v12 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v12) = v11;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v23) - WORD2(v23) > 5)
          {
            if (BYTE6(v23) == 2)
            {
              sub_1000075EC((v22 + WORD2(v23)), a2, 6uLL);
              v13 = WORD2(v23) + 6;
              WORD2(v23) += 6;
              v14 = v22;
              if (HIBYTE(v23))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                v15 = 0;
              }

              else
              {
                v15 = WORD1(v23) - v13;
              }

              if (v15 < a4)
              {
                v21 = "ByteStream_NumReadBytesAvail(bs) >= (IrkLength)";
              }

              else
              {
                if (BYTE6(v23) == 2)
                {
                  sub_1000075EC((v14 + v13), a3, a4);
                  WORD2(v23) += a4;
                  return sub_100020078(65279, v22, BYTE4(v23), a5, sub_1001C62CC, v16, v17, v18);
                }

                v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1731, v21);
            }

            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1730, v20);
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_25;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1729, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1001D1414(int a1, uint64_t a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (a1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = v7;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v15) - WORD2(v15) > 5)
          {
            if (BYTE6(v15) == 2)
            {
              sub_1000075EC((v14 + WORD2(v15)), a2, 6uLL);
              WORD2(v15) += 6;
              return sub_100020078(65279, v14, BYTE4(v15), a3, sub_1001C62CC, v9, v10, v11);
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1751, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1750, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D1590(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65274, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001D15EC(char a1, uint64_t a2, uint64_t (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v7 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v7) = a1;
          v16[0] = BYTE5(a2);
          v16[1] = BYTE4(a2);
          v16[2] = BYTE3(a2);
          v16[3] = BYTE2(a2);
          v16[4] = BYTE1(a2);
          v16[5] = a2;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v18) - WORD2(v18) > 5)
          {
            if (BYTE6(v18) == 2)
            {
              sub_1000075EC((v17 + WORD2(v18)), v16, 6uLL);
              v11 = WORD2(v18);
              v12 = WORD2(v18) + 6;
              WORD2(v18) += 6;
              if (HIBYTE(v18))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v18) > v12)
              {
                if (BYTE6(v18) == 2)
                {
                  WORD2(v18) = v11 + 7;
                  *(v17 + v12) = BYTE6(a2);
                  return sub_100020078(65312, v17, BYTE4(v18), a3, sub_1001C62CC, v8, v9, v10);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1780, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1779, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1776, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D1804(uint64_t (*a1)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v6 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v6) = 2;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v7 = WORD2(v20);
            if (WORD1(v20) > WORD2(v20))
            {
              if (BYTE6(v20) == 2)
              {
                ++WORD2(v20);
                *(v19 + v7) = 1;
                if (HIBYTE(v20))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  v8 = WORD2(v20);
                  if (WORD1(v20) > WORD2(v20))
                  {
                    if (BYTE6(v20) == 2)
                    {
                      ++WORD2(v20);
                      *(v19 + v8) = 2;
                      if (HIBYTE(v20))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v9 = WORD2(v20);
                        if (WORD1(v20) > WORD2(v20))
                        {
                          if (BYTE6(v20) == 2)
                          {
                            ++WORD2(v20);
                            *(v19 + v9) = 0;
                            if (HIBYTE(v20))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else if (WORD1(v20) - WORD2(v20) > 1)
                            {
                              if (BYTE6(v20) == 2)
                              {
                                *(v19 + WORD2(v20)) = 0;
                                v10 = WORD2(v20) + 2;
                                WORD2(v20) += 2;
                                if (HIBYTE(v20))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                }

                                else if (WORD1(v20) - v10 > 3)
                                {
                                  if (BYTE6(v20) == 2)
                                  {
                                    *(v19 + v10) = -1;
                                    *(v19 + WORD2(v20) + 1) = -1;
                                    *(v19 + WORD2(v20) + 2) = -1;
                                    *(v19 + WORD2(v20) + 3) = -1;
                                    v11 = WORD2(v20) + 4;
                                    WORD2(v20) += 4;
                                    if (HIBYTE(v20))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else if (WORD1(v20) - v11 > 3)
                                    {
                                      if (BYTE6(v20) == 2)
                                      {
                                        *(v19 + v11) = -1;
                                        *(v19 + WORD2(v20) + 1) = -1;
                                        *(v19 + WORD2(v20) + 2) = -1;
                                        *(v19 + WORD2(v20) + 3) = -1;
                                        WORD2(v20) += 4;
                                        return sub_100020078(64998, v19, BYTE4(v20), a1, sub_1001C62CC, v3, v4, v5);
                                      }

                                      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1804, v18);
                                    }

                                    v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                    goto LABEL_52;
                                  }

                                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1803, v17);
                                }

                                v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_48;
                              }

                              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1802, v16);
                            }

                            v16 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
                            goto LABEL_44;
                          }

                          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1801, v15);
                        }
                      }

                      v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1800, v14);
                  }
                }

                v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1799, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1798, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001D1C54(uint64_t a1, unsigned int a2, int a3, uint64_t (*a4)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    if (a3)
    {
      if (HIBYTE(v32))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
      }

      else
      {
        v12 = WORD2(v32);
        if (WORD1(v32) > WORD2(v32))
        {
          if (BYTE6(v32) == 2)
          {
            v13 = 0;
            goto LABEL_11;
          }

          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1832, v28);
        }
      }

      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_70;
    }

    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v12 = WORD2(v32);
      if (WORD1(v32) > WORD2(v32))
      {
        if (BYTE6(v32) == 2)
        {
          v13 = 1;
LABEL_11:
          WORD2(v32) = v12 + 1;
          *(v31 + v12) = v13;
          if (a2 != 2)
          {
            if (a2 != 16)
            {
              sub_1000D660C();
            }

            if (HIBYTE(v32))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v14 = WORD2(v32);
              if (WORD1(v32) > WORD2(v32))
              {
                v15 = BYTE6(v32);
                if (BYTE6(v32) != 2)
                {
                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_64;
                }

LABEL_22:
                WORD2(v32) = v14 + 1;
                *(v31 + v14) = v15;
                if (HIBYTE(v32))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  v17 = WORD2(v32);
                  if (WORD1(v32) > WORD2(v32))
                  {
                    if (BYTE6(v32) == 2)
                    {
                      ++WORD2(v32);
                      *(v31 + v17) = 2;
                      if (HIBYTE(v32))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v18 = WORD2(v32);
                        if (WORD1(v32) > WORD2(v32))
                        {
                          if (BYTE6(v32) == 2)
                          {
                            ++WORD2(v32);
                            *(v31 + v18) = 0;
                            if (a2)
                            {
                              v19 = a2;
                              while (!HIBYTE(v32))
                              {
                                v20 = WORD2(v32);
                                if (WORD1(v32) <= WORD2(v32))
                                {
                                  goto LABEL_44;
                                }

                                if (BYTE6(v32) != 2)
                                {
                                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_45;
                                }

                                v21 = *(a1 - 1 + v19--);
                                ++WORD2(v32);
                                *(v31 + v20) = v21;
                                if ((v19 + 1) <= 1)
                                {
                                  goto LABEL_34;
                                }
                              }

                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_44:
                              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_45:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1848, v23);
                            }

LABEL_34:
                            if (HIBYTE(v32))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else if (WORD1(v32) - WORD2(v32) > 3)
                            {
                              if (BYTE6(v32) == 2)
                              {
                                *(v31 + WORD2(v32)) = -1;
                                *(v31 + WORD2(v32) + 1) = -1;
                                *(v31 + WORD2(v32) + 2) = -1;
                                *(v31 + WORD2(v32) + 3) = -1;
                                v22 = WORD2(v32) + 4;
                                WORD2(v32) += 4;
                                if (HIBYTE(v32))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                }

                                else if (WORD1(v32) - v22 > 3)
                                {
                                  if (BYTE6(v32) == 2)
                                  {
                                    *(v31 + v22) = -1;
                                    *(v31 + WORD2(v32) + 1) = -1;
                                    *(v31 + WORD2(v32) + 2) = -1;
                                    *(v31 + WORD2(v32) + 3) = -1;
                                    WORD2(v32) += 4;
                                    return sub_100020078(64998, v31, BYTE4(v32), a4, sub_1001C62CC, v9, v10, v11);
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1852, v27);
                                }

                                v27 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_61;
                              }

                              v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1851, v26);
                            }

                            v26 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_57;
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1845, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_53;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1844, v24);
                  }
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_49;
              }
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_64:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1839, v16);
          }

          if (HIBYTE(v32))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v14 = WORD2(v32);
            if (WORD1(v32) > WORD2(v32))
            {
              if (BYTE6(v32) == 2)
              {
                v15 = 1;
                goto LABEL_22;
              }

              v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1842, v30);
            }
          }

          v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_76;
        }

        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1834, v29);
      }
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_72;
  }

  return result;
}

uint64_t sub_1001D2198(uint64_t (*a1)())
{
  v15 = 0;
  v16 = 0;
  v2 = sub_10001FFD8(&v15);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v2)
    {
      return v2;
    }

    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = -1;
        *(v15 + WORD2(v16) + 1) = -1;
        *(v15 + WORD2(v16) + 2) = -1;
        *(v15 + WORD2(v16) + 3) = -1;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = -1;
            *(v15 + WORD2(v16) + 1) = -1;
            *(v15 + WORD2(v16) + 2) = -1;
            *(v15 + WORD2(v16) + 3) = -1;
            WORD2(v16) += 4;
            v7 = v15;
            v9 = sub_1001ED778;
            v8 = BYTE4(v16);
            return sub_100020078(64993, v7, v8, a1, v9, v3, v4, v5);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1975, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_26;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1974, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  if (!v2)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 28;
          v7 = v15;
          v8 = BYTE4(v16);
          v9 = sub_1001ED640;
          return sub_100020078(64993, v7, v8, a1, v9, v3, v4, v5);
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1962, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1001D2424(const void *a1, int a2, char a3, uint64_t (*a4)())
{
  LODWORD(v6) = a2;
  v52 = 0;
  v53 = 0;
  v8 = sub_10001FFD8(&v52);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v6 >= 0x15)
    {
      v6 = 21;
    }

    else
    {
      v6 = v6;
    }

    if (!v8)
    {
      v13 = v52;
      v14 = WORD2(v53);
      if (HIBYTE(v53))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        v15 = 0;
      }

      else
      {
        v15 = WORD1(v53) - WORD2(v53);
      }

      if (v15 < v6)
      {
        v41 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
      }

      else
      {
        if (BYTE6(v53) == 2)
        {
          memmove((v13 + v14), a1, v6);
          WORD2(v53) += v6;
          if (WORD1(v53) <= 0x15u)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2017, "(size_t)(22) <= (size_t)((bs).__size)");
          }

          WORD2(v53) = 22;
          v16 = v52;
          if (HIBYTE(v53))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v17 = 0;
          }

          else
          {
            v17 = WORD1(v53) - 22;
          }

          if (v17 < v6)
          {
            v42 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v53) == 2)
            {
              memset((v16 + 22), 255, v6);
              WORD2(v53) += v6;
              v21 = WORD1(v53);
              if (WORD1(v53) <= 0x2Au)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2019, "(size_t)(43) <= (size_t)((bs).__size)");
              }

              WORD2(v53) = 43;
              if (HIBYTE(v53))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v53) != 43)
              {
                v22 = v52;
                WORD2(v53) = 44;
                *(v52 + 43) = a3;
                if ((v21 & 0xFFFC) == 0x2C)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2021, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v22 + 44) = -1;
                WORD2(v53) = 48;
                if (v21 <= 0x33)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2022, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v22 + 48) = -1;
                WORD2(v53) = 52;
                v23 = -544;
                v24 = 52;
                return sub_100020078(v23, v22, v24, a4, sub_1001C62CC, v18, v19, v20);
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2020, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2018, v42);
        }

        v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2016, v41);
    }
  }

  else if (!v8)
  {
    if (v6 >= 0x15)
    {
      v6 = 21;
    }

    else
    {
      v6 = v6;
    }

    if (HIBYTE(v53))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v9 = WORD2(v53);
      if (WORD1(v53) > WORD2(v53))
      {
        if (BYTE6(v53) == 2)
        {
          ++WORD2(v53);
          *(v52 + v9) = 29;
          v10 = v52;
          v11 = WORD2(v53);
          if (HIBYTE(v53))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v12 = 0;
          }

          else
          {
            v12 = WORD1(v53) - WORD2(v53);
          }

          if (v12 < v6)
          {
            v44 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v53) == 2)
            {
              memmove((v10 + v11), a1, v6);
              v26 = WORD2(v53) + v6;
              WORD2(v53) += v6;
              v27 = v52;
              if (HIBYTE(v53))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                v28 = 0;
              }

              else
              {
                v28 = WORD1(v53) - v26;
              }

              v29 = (21 - v6);
              if (v28 < v29)
              {
                v45 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v53) == 2)
                {
                  bzero((v27 + v26), (21 - v6));
                  v30 = WORD2(v53) + 21 - v6;
                  WORD2(v53) = v30;
                  v31 = v52;
                  if (HIBYTE(v53))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    v32 = 0;
                  }

                  else
                  {
                    v32 = WORD1(v53) - v30;
                  }

                  if (v32 < v6)
                  {
                    v46 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v53) == 2)
                    {
                      memset((v31 + v30), 255, v6);
                      v33 = WORD2(v53) + v6;
                      WORD2(v53) = v33;
                      v34 = v52;
                      if (HIBYTE(v53))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        v35 = 0;
                      }

                      else
                      {
                        v35 = WORD1(v53) - v33;
                      }

                      if (v35 < v29)
                      {
                        v47 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                      }

                      else
                      {
                        if (BYTE6(v53) == 2)
                        {
                          bzero((v34 + v33), v29);
                          v36 = WORD2(v53) + v29;
                          WORD2(v53) += v29;
                          if (HIBYTE(v53))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                          }

                          else if (WORD1(v53) - v36 > 3)
                          {
                            if (BYTE6(v53) == 2)
                            {
                              *(v52 + v36) = a3;
                              *(v52 + WORD2(v53) + 1) = 0;
                              *(v52 + WORD2(v53) + 3) = 0;
                              v37 = WORD2(v53);
                              v38 = WORD2(v53) + 4;
                              WORD2(v53) += 4;
                              if (HIBYTE(v53))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                              }

                              else if (WORD1(v53) > v38)
                              {
                                if (BYTE6(v53) == 2)
                                {
                                  WORD2(v53) = v37 + 5;
                                  *(v52 + v38) = 0;
                                  if (HIBYTE(v53))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  }

                                  else
                                  {
                                    v39 = WORD2(v53);
                                    if (WORD1(v53) > WORD2(v53))
                                    {
                                      if (BYTE6(v53) == 2)
                                      {
                                        ++WORD2(v53);
                                        *(v52 + v39) = 0;
                                        if (HIBYTE(v53))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                        }

                                        else
                                        {
                                          v40 = WORD2(v53);
                                          if (WORD1(v53) > WORD2(v53))
                                          {
                                            if (BYTE6(v53) == 2)
                                            {
                                              ++WORD2(v53);
                                              *(v52 + v40) = 0;
                                              v22 = v52;
                                              v24 = BYTE4(v53);
                                              v23 = -543;
                                              return sub_100020078(v23, v22, v24, a4, sub_1001C62CC, v18, v19, v20);
                                            }

                                            v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_110:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2001, v51);
                                          }
                                        }

                                        v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_110;
                                      }

                                      v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2000, v50);
                                    }
                                  }

                                  v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_106;
                                }

                                v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1999, v49);
                              }

                              v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_102;
                            }

                            v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1998, v48);
                          }

                          v48 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                          goto LABEL_98;
                        }

                        v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1997, v47);
                    }

                    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1996, v46);
                }

                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1995, v45);
            }

            v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1994, v44);
        }

        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1993, v43);
      }
    }

    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_82;
  }

  return v8;
}

uint64_t sub_1001D2C04(const void *a1, int a2, uint64_t (*a3)())
{
  LODWORD(v4) = a2;
  v41 = 0;
  v42 = 0;
  v6 = sub_10001FFD8(&v41);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v4 >= 0x15)
    {
      v4 = 21;
    }

    else
    {
      v4 = v4;
    }

    if (!v6)
    {
      v11 = v41;
      v12 = WORD2(v42);
      if (HIBYTE(v42))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        v13 = 0;
      }

      else
      {
        v13 = WORD1(v42) - WORD2(v42);
      }

      if (v13 < v4)
      {
        v34 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
      }

      else
      {
        if (BYTE6(v42) == 2)
        {
          memmove((v11 + v12), a1, v4);
          WORD2(v42) += v4;
          if (WORD1(v42) <= 0x15u)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2059, "(size_t)(22) <= (size_t)((bs).__size)");
          }

          WORD2(v42) = 22;
          v14 = v41;
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v15 = 0;
          }

          else
          {
            v15 = WORD1(v42) - 22;
          }

          if (v15 < v4)
          {
            v35 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v42) == 2)
            {
              memset((v14 + 22), 255, v4);
              WORD2(v42) += v4;
              v19 = WORD1(v42);
              if (WORD1(v42) <= 0x2Au)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2061, "(size_t)(43) <= (size_t)((bs).__size)");
              }

              WORD2(v42) = 43;
              if (HIBYTE(v42))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v42) > 0x2Eu)
              {
                v20 = v41;
                *(v41 + 43) = -1;
                WORD2(v42) = 47;
                if ((v19 - 51) >= 0xFFFFFFFC)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2063, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v20 + 47) = -1;
                WORD2(v42) = 51;
                v21 = -581;
                v22 = 51;
                return sub_100020078(v21, v20, v22, a3, sub_1001C62CC, v16, v17, v18);
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2062, "ByteStream_NumReadBytesAvail(bs) >= 4");
            }

            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2060, v35);
        }

        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2058, v34);
    }
  }

  else if (!v6)
  {
    if (v4 >= 0x15)
    {
      v4 = 21;
    }

    else
    {
      v4 = v4;
    }

    if (HIBYTE(v42))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v7 = WORD2(v42);
      if (WORD1(v42) > WORD2(v42))
      {
        if (BYTE6(v42) == 2)
        {
          ++WORD2(v42);
          *(v41 + v7) = 30;
          v8 = v41;
          v9 = WORD2(v42);
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v10 = 0;
          }

          else
          {
            v10 = WORD1(v42) - WORD2(v42);
          }

          if (v10 < v4)
          {
            v37 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v42) == 2)
            {
              memmove((v8 + v9), a1, v4);
              v24 = WORD2(v42) + v4;
              WORD2(v42) += v4;
              v25 = v41;
              if (HIBYTE(v42))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                v26 = 0;
              }

              else
              {
                v26 = WORD1(v42) - v24;
              }

              v27 = (21 - v4);
              if (v26 < v27)
              {
                v38 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v42) == 2)
                {
                  bzero((v25 + v24), (21 - v4));
                  v28 = WORD2(v42) + 21 - v4;
                  WORD2(v42) = v28;
                  v29 = v41;
                  if (HIBYTE(v42))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    v30 = 0;
                  }

                  else
                  {
                    v30 = WORD1(v42) - v28;
                  }

                  if (v30 < v4)
                  {
                    v39 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v42) == 2)
                    {
                      memset((v29 + v28), 255, v4);
                      v31 = WORD2(v42) + v4;
                      WORD2(v42) = v31;
                      v32 = v41;
                      if (HIBYTE(v42))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        v33 = 0;
                      }

                      else
                      {
                        v33 = WORD1(v42) - v31;
                      }

                      if (v33 < v27)
                      {
                        v40 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                      }

                      else
                      {
                        if (BYTE6(v42) == 2)
                        {
                          bzero((v32 + v31), v27);
                          WORD2(v42) += v27;
                          v20 = v41;
                          v22 = BYTE4(v42);
                          v21 = -543;
                          return sub_100020078(v21, v20, v22, a3, sub_1001C62CC, v16, v17, v18);
                        }

                        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2044, v40);
                    }

                    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2043, v39);
                }

                v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2042, v38);
            }

            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2041, v37);
        }

        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2040, v36);
      }
    }

    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_68;
  }

  return v6;
}

uint64_t sub_1001D319C(uint64_t (*a1)())
{
  v15 = 0;
  v16 = 0;
  v2 = sub_10001FFD8(&v15);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v2)
    {
      return v2;
    }

    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = -1;
        *(v15 + WORD2(v16) + 1) = -1;
        *(v15 + WORD2(v16) + 2) = -1;
        *(v15 + WORD2(v16) + 3) = -1;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = -1;
            *(v15 + WORD2(v16) + 1) = -1;
            *(v15 + WORD2(v16) + 2) = -1;
            *(v15 + WORD2(v16) + 3) = -1;
            WORD2(v16) += 4;
            v7 = v15;
            v8 = BYTE4(v16);
            v9 = -551;
            return sub_100020078(v9, v7, v8, a1, sub_1001C62CC, v3, v4, v5);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2093, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_26;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2092, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  if (!v2)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 32;
          v7 = v15;
          v8 = BYTE4(v16);
          v9 = -543;
          return sub_100020078(v9, v7, v8, a1, sub_1001C62CC, v3, v4, v5);
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2080, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1001D342C(const void *a1, int a2, const void *a3, int a4, char a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t (*a10)())
{
  LODWORD(v13) = a4;
  LODWORD(v15) = a2;
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (v15 >= 0x16)
  {
    v15 = 22;
  }

  else
  {
    v15 = v15;
  }

  if (v13 >= 0x16)
  {
    v13 = 22;
  }

  else
  {
    v13 = v13;
  }

  if (result)
  {
    return result;
  }

  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_43;
  }

  v18 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_43:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_45;
  }

  if (BYTE6(v40) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3156, v34);
  }

  if (v13 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  ++WORD2(v40);
  *(v39 + v18) = v19;
  v20 = v39;
  v21 = WORD2(v40);
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    v22 = 0;
  }

  else
  {
    v22 = WORD1(v40) - WORD2(v40);
  }

  if (v22 < v15)
  {
    v35 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
    goto LABEL_48;
  }

  if (BYTE6(v40) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3157, v35);
  }

  memmove((v20 + v21), a1, v15);
  WORD2(v40) += v15;
  if (WORD1(v40) <= 0x16u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3158, "(size_t)(23) <= (size_t)((bs).__size)");
  }

  WORD2(v40) = 23;
  v23 = v39;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    v24 = 0;
  }

  else
  {
    v24 = WORD1(v40) - 23;
  }

  if (v24 < v13)
  {
    v36 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
    goto LABEL_52;
  }

  if (BYTE6(v40) != 2)
  {
    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3159, v36);
  }

  memmove((v23 + 23), a3, v13);
  WORD2(v40) += v13;
  v28 = WORD1(v40);
  if (WORD1(v40) <= 0x2Cu)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3160, "(size_t)(45) <= (size_t)((bs).__size)");
  }

  WORD2(v40) = 45;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_55;
  }

  if (WORD1(v40) == 45)
  {
LABEL_55:
    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v40) != 2)
  {
    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3161, v37);
  }

  v29 = v39;
  WORD2(v40) = 46;
  *(v39 + 45) = a5;
  if (v28 <= 0x2E)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3162, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v30 = 47;
  WORD2(v40) = 47;
  *(v29 + 46) = a6;
  if (a7)
  {
    if (v28 - 49 >= 0xFFFFFFFE)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3164, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    *(v29 + 47) = 0;
    v30 = 49;
    WORD2(v40) = 49;
  }

  if ((v28 - v30) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3165, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v29 + v30) = -1;
  *(v39 + WORD2(v40) + 1) = -1;
  *(v39 + WORD2(v40) + 2) = -1;
  *(v39 + WORD2(v40) + 3) = -1;
  v31 = WORD2(v40) + 4;
  WORD2(v40) += 4;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_61;
  }

  if (WORD1(v40) - v31 <= 3)
  {
LABEL_61:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_63;
  }

  if (BYTE6(v40) != 2)
  {
    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3166, v38);
  }

  *(v39 + v31) = -1;
  *(v39 + WORD2(v40) + 1) = -1;
  *(v39 + WORD2(v40) + 2) = -1;
  *(v39 + WORD2(v40) + 3) = -1;
  v32 = BYTE4(v40) + 4;
  WORD2(v40) += 4;
  if (a7)
  {
    v33 = -553;
  }

  else
  {
    v33 = -554;
  }

  return sub_100020078(v33, v39, v32, a10, sub_1001C62CC, v25, v26, v27);
}