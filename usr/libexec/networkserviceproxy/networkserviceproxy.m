void sub_100001C90(uint64_t a1, void *a2)
{
  object = a2;
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_connection)
    {
      v4 = *(a1 + 32);
      v5 = object;
      v6 = v5;
      if (v4)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v14 = 0x3032000000;
        v15 = sub_100001F54;
        v16 = sub_100054494;
        v7 = v5;
        v17 = v7;
        v8 = NPGetInternalQueue();
        xpc_connection_set_target_queue(v7, v8);

        v9 = *(*(&buf + 1) + 40);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10005449C;
        handler[3] = &unk_100109E60;
        handler[4] = v4;
        handler[5] = &buf;
        xpc_connection_set_event_handler(v9, handler);
        xpc_connection_resume(*(*(&buf + 1) + 40));
        if (deviceClassIsHomepod())
        {
          v10 = dispatch_time(0, 30000000000);
          dispatch_after(v10, &_dispatch_main_q, &stru_100109E80);
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else if (xpc_get_type(object) == &_xpc_type_error)
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = xpc_dictionary_get_string(object, _xpc_error_key_description);
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Exiting, got invalid XPC connection: %s", &buf, 0xCu);
      }

      exit(1);
    }
  }
}

uint64_t sub_100001EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001FA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001FB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001FC4(void *a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_remote_connection(a1);
  if (v4)
  {
    [v3 UTF8String];
    v5 = xpc_connection_copy_entitlement_value();
    v6 = v5;
    if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL)
    {
      v7 = xpc_BOOL_get_value(v6) << 31 >> 31;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void sub_100002068(void *a1, const char *a2, void *a3)
{
  v9 = a3;
  v5 = a1;
  reply = xpc_dictionary_create_reply(v5);
  v7 = xpc_dictionary_get_remote_connection(v5);

  if (reply && v7)
  {
    if (v9)
    {
      v8 = reply;
      xpc_dictionary_set_uint64(v8, a2, [v9 unsignedIntValue]);
    }

    xpc_connection_send_message(v7, reply);
  }
}

void sub_100002130(void *a1, const char *a2, void *a3)
{
  v10 = a3;
  v5 = a1;
  reply = xpc_dictionary_create_reply(v5);
  v7 = xpc_dictionary_get_remote_connection(v5);

  if (reply && v7)
  {
    if (v10)
    {
      v8 = reply;
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v8, a2, v9);
    }

    xpc_connection_send_message(v7, reply);
  }
}

void sub_1000021FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    memset(v20, 0, sizeof(v20));
    v18 = 0u;
    v19 = 0u;
    v1 = recv(*(WeakRetained + 8), &v18, 0x100uLL, 0);
    if (v1 >= 1)
    {
      do
      {
        if (v1 < 0x18)
        {
          goto LABEL_19;
        }

        v2 = DWORD1(v18) == 1 && DWORD2(v18) == 1;
        if (!v2 || HIDWORD(v18) != 2)
        {
          goto LABEL_19;
        }

        if (v1 >= v18)
        {
          if (DWORD1(v19) != 20)
          {
            goto LABEL_19;
          }

          if (v18 > 0x33)
          {
            HIBYTE(v20[0]) = 0;
            snprintf(__str, 0x11uLL, "%s%d", v20, HIDWORD(v19));
            v8 = [*(WeakRetained + 12) interfaceName];
            v4 = v8;
            if (v8 && !strncmp([v8 UTF8String], __str, 0x10uLL))
            {
              sub_100064E08(WeakRetained);
            }

            goto LABEL_14;
          }

          v4 = nplog_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *__str = 0;
            v5 = v4;
            v6 = "Received undersize KEV_DL_LINK_QUALITY_METRIC_CHANGED from kernel";
            v7 = 2;
LABEL_25:
            _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, __str, v7);
          }
        }

        else
        {
          v4 = nplog_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *__str = 67109632;
            *v15 = 256;
            *&v15[4] = 1024;
            *&v15[6] = v18;
            v16 = 1024;
            v17 = DWORD1(v19);
            v5 = v4;
            v6 = "buffer too small (%u vs %u) for event code %u";
            v7 = 20;
            goto LABEL_25;
          }
        }

LABEL_14:

LABEL_19:
        v1 = recv(*(WeakRetained + 8), &v18, 0x100uLL, 0);
      }

      while (v1 > 0);
    }

    if (v1 < 0 && *__error() != 35)
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = __error();
        v12 = strerror(*v11);
        *__str = 136315138;
        *v15 = v12;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "recv %s from kernel event socket failed", __str, 0xCu);
      }

      dispatch_source_cancel(*(WeakRetained + 41));
      v10 = *(WeakRetained + 41);
      *(WeakRetained + 41) = 0;
    }
  }
}

void sub_1000024F8(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Toggle stats timer fired", v6, 2u);
  }

  v3 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[43] resetStats];
  }
}

id *sub_100002834(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (!v9)
  {
    v21 = nplog_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
LABEL_14:

LABEL_19:
      v12 = 0;
LABEL_9:

      goto LABEL_10;
    }

    *buf = 136315138;
    v27 = "[NSPPrivacyProxyTokenRegistration initWithAgentUUID:agentDescription:delegate:isRegistered:]";
    v22 = "%s called with null agentUUID";
LABEL_21:
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v22, buf, 0xCu);
    goto LABEL_14;
  }

  if (!v10)
  {
    v21 = nplog_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315138;
    v27 = "[NSPPrivacyProxyTokenRegistration initWithAgentUUID:agentDescription:delegate:isRegistered:]";
    v22 = "%s called with null agentDescription";
    goto LABEL_21;
  }

  v25.receiver = a1;
  v25.super_class = NSPPrivacyProxyTokenRegistration;
  v12 = objc_msgSendSuper2(&v25, "init");
  if (v12)
  {
    v13 = sub_100053E68();
    a1 = sub_100074784(v13, v14);

    objc_storeWeak(v12 + 1, v11);
    v15 = sub_100040F74([NSPPrivacyProxyTokenAgent alloc], v12, v9, v10);
    v16 = v12[2];
    v12[2] = v15;

    v17 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() session:a1];
    v18 = v12[3];
    v12[3] = v17;

    if (v12[2])
    {
      v19 = v12[3];
      if (v19)
      {
        if (a5)
        {
          [v19 setRegisteredNetworkAgent:? fileDescriptor:?];
        }

        goto LABEL_9;
      }

      v23 = nplog_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v27 = "[NSPPrivacyProxyTokenRegistration initWithAgentUUID:agentDescription:delegate:isRegistered:]";
      v24 = "%s called with null _tokenAgentRegistration";
    }

    else
    {
      v23 = nplog_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        a1 = v12;
        goto LABEL_19;
      }

      *buf = 136315138;
      v27 = "[NSPPrivacyProxyTokenRegistration initWithAgentUUID:agentDescription:delegate:isRegistered:]";
      v24 = "%s called with null _tokenAgent";
    }

    _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_18;
  }

LABEL_10:

  return v12;
}

void sub_100002B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if ([*(a1 + 24) isRegistered])
      {
        [*(a1 + 24) addToken:v4];
      }
    }

    else
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 136315138;
        v7 = "[NSPPrivacyProxyTokenRegistration addToken:]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null token", &v6, 0xCu);
      }
    }
  }
}

void sub_100002D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002D20(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) agentDescription];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Token low water mark hit for %@ agent", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tokenLowWaterMarkReached];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100002F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002F78(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 32) agentDescription];
    v10[0] = 67109378;
    v10[1] = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received error %d for %@ agent", v10, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
    WeakRetained = 0;
  }

  [WeakRetained reportErrorForTokenRegistration:v7 error:*(a1 + 64) withOptions:*(a1 + 48)];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_100003094(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return;
  }

  if (!*(a1 + 24))
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v35 = 136315138;
    v36 = "[NSPPrivacyProxyTokenRegistration registerTokenAgentWithLowWaterMark:]";
    v34 = "%s called with null self.tokenAgentRegistration";
LABEL_29:
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v34, &v35, 0xCu);
    goto LABEL_22;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v35 = 136315138;
    v36 = "[NSPPrivacyProxyTokenRegistration registerTokenAgentWithLowWaterMark:]";
    v34 = "%s called with null self.tokenAgent";
    goto LABEL_29;
  }

  [v3 setActive:1];
  [*(a1 + 16) setVoluntary:0];
  [*(a1 + 16) setUserActivated:0];
  [*(a1 + 16) setKernelActivated:0];
  if ([*(a1 + 24) isRegistered])
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 16);
      v7 = [v6 agentDescription];
      v8 = *(a1 + 16);
      v9 = [v8 agentUUID];
      v35 = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating %@ token agent (%@)", &v35, 0x16u);
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    LOBYTE(v10) = [v11 updateNetworkAgent:v10];

    if (v10)
    {
      if ([*(a1 + 24) setLowWaterMark:a2])
      {
        return;
      }

      v12 = nplog_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 16);
      v31 = [v30 agentDescription];
      v32 = *(a1 + 16);
      v33 = [v32 agentUUID];
      v35 = 138412546;
      v36 = v31;
      v37 = 2112;
      v38 = v33;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to update %@ token agent (%@)", &v35, 0x16u);
    }

    [*(a1 + 24) unregisterNetworkAgent];
  }

  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 16);
    v16 = [v15 agentDescription];
    v17 = *(a1 + 16);
    v18 = [v17 agentUUID];
    v35 = 138412546;
    v36 = v16;
    v37 = 2112;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering %@ token agent (%@)", &v35, 0x16u);
  }

  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  LOBYTE(v19) = [v20 registerNetworkAgent:v19];

  if ((v19 & 1) == 0)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 16);
      v23 = [v22 agentDescription];
      v24 = *(a1 + 16);
      v25 = [v24 agentUUID];
      v35 = 138412546;
      v36 = v23;
      v37 = 2112;
      v38 = v25;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to register %@ token agent (%@)", &v35, 0x16u);
    }
  }

  if (([*(a1 + 24) setLowWaterMark:a2] & 1) == 0)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

      return;
    }

LABEL_24:
    v26 = *(a1 + 16);
    v27 = [v26 agentDescription];
    v28 = *(a1 + 16);
    v29 = [v28 agentUUID];
    v35 = 134218498;
    v36 = a2;
    v37 = 2112;
    v38 = v27;
    v39 = 2112;
    v40 = v29;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set low water mark(%lu) on %@ token agent (%@)", &v35, 0x20u);

    goto LABEL_22;
  }
}

id *sub_1000035F4(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[3] isRegistered];
    if (result)
    {
      v2 = nplog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v1[2];
        v4 = [v3 agentUUID];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Un-registering token agent with UUID %@", &v5, 0xCu);
      }

      return [v1[3] unregisterNetworkAgent];
    }
  }

  return result;
}

void sub_100003778(id a1)
{
  if (objc_opt_class())
  {
    qword_1001296C8 = objc_alloc_init(NSPPrivacyProxyLocationMonitor);

    _objc_release_x1();
  }
}

void sub_10000395C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_100003BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: Error in looking up geocode: %@", buf, 0x16u);
    }
  }

  memset(v21, 0, sizeof(v21));
  if ([v5 countByEnumeratingWithState:v21 objects:v22 count:16])
  {
    v8 = **(&v21[0] + 1);
    v9 = [**(&v21[0] + 1) ISOcountryCode];
    v10 = [v8 timeZone];
    v11 = [v10 abbreviation];
    v13 = [NSString stringWithFormat:@"%@-%@", v9, v11];
    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_atomic(v14, v12, v13, 40);
    }

    v15 = [*(a1 + 32) delegate];

    if (v15)
    {
      v17 = [*(a1 + 32) delegate];
      v18 = *(a1 + 32);
      if (v18)
      {
        Property = objc_getProperty(v18, v16, 40, 1);
      }

      else
      {
        Property = 0;
      }

      [v17 didUpdateCountryPlusTimezone:Property];
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100003F90(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@: location monitor timer fired, requesting location ...", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  [v5 requestLocation];
  return [*(a1 + 32) setUserEventAgentTimer];
}

void sub_1000044B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000044D4(uint64_t a1)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_double(v4, "LocationMonitorTimeInterval", *(*(a1 + 32) + 56));
  xpc_set_event();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100004868(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didUpdateSignificantLocation];
  }
}

void sub_100004C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004C84(uint64_t a1)
{
  v2 = [*(a1 + 32) lastObject];
  v5 = [v2 copy];

  [*(a1 + 40) handleLocationUpdate:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

BOOL sub_100004F70(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 24) tokenKeyInfo];
  v2 = [v1 length] != 0;

  return v2;
}

void sub_100004FBC(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      v4 = [v3 vendor];
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reset token fetch timer for %@", &v10, 0xCu);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    v7 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained updateUserEventAgentData];

    v9 = objc_loadWeakRetained((a1 + 16));
    [v9 setUserEventAgentTokenFetchParameters];
  }
}

void sub_1000050DC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_1000050EC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100005238(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 24) vendor];

    if (v2)
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 24);
        v5 = [v4 vendor];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing proxy tokens for %@ from keychain", &v7, 0xCu);
      }

      v6 = [*(a1 + 24) vendor];
      [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.ProxyToken" accountName:v6];
    }
  }
}

void sub_1000053B8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      [v2 timeIntervalSinceNow];
      if (v3 <= 0.0)
      {
        v7[0] = 0;
        v7[1] = v7;
        v7[2] = 0x3032000000;
        v7[3] = sub_100001F14;
        v7[4] = sub_100005818;
        v8 = os_transaction_create();
        v4 = NPGetInternalQueue();
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_100005820;
        v6[3] = &unk_100109450;
        v6[4] = a1;
        v6[5] = v7;
        dispatch_async(v4, v6);

        _Block_object_dispose(v7, 8);
      }

      else
      {
        sub_100005508(a1, v3);
      }
    }

    v5 = sub_100005C74(a1);

    if (v5)
    {
      sub_100005F60(a1);
    }
  }
}

void sub_1000054F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005508(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 64);
    *(a1 + 64) = 0;
  }

  if (!a2)
  {
    v6 = *(a1 + 72);
    if (v6 < 8)
    {
      v8 = dword_1000CF070[v6];
      a2 = arc4random_uniform(6u) + v8;
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 24);
        v24 = [v23 vendor];
        *buf = 138412546;
        v28 = v24;
        v29 = 1024;
        LODWORD(v30) = 8;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch tokens for %@ after %u attempts", buf, 0x12u);
      }

      a2 = arc4random_uniform(6u) + 1800;
    }
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 24);
    v11 = [v10 vendor];
    *buf = 138412546;
    v28 = v11;
    v29 = 2048;
    v30 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retry: fetching token for %@ after %lu seconds", buf, 0x16u);
  }

  v12 = NPGetInternalQueue();
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
  v14 = *(a1 + 64);
  *(a1 + 64) = v13;

  if (*(a1 + 64))
  {
    v15 = *(a1 + 64);
    v16 = dispatch_time(0x8000000000000000, 1000000000 * a2);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(buf, a1);
    v17 = *(a1 + 64);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100008594;
    handler[3] = &unk_100109538;
    v18 = v17;
    objc_copyWeak(&v26, buf);
    dispatch_source_set_event_handler(v18, handler);

    dispatch_resume(*(a1 + 64));
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v19 = [NSDate dateWithTimeIntervalSinceNow:a2];
  v20 = *(a1 + 80);
  *(a1 + 80) = v19;

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained updateUserEventAgentData];

  v22 = objc_loadWeakRetained((a1 + 16));
  [v22 setUserEventAgentTokenFetchParameters];
}

void sub_100005820(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100005894;
  v2[3] = &unk_1001094C0;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  sub_1000058A8(v1, v2);
}

void sub_100005894(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000058A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (!sub_100004F70(a1))
  {
    goto LABEL_6;
  }

  v4 = 10;
  if (*(a1 + 11))
  {
    v4 = 30;
  }

  if (*(a1 + 32) > v4)
  {
LABEL_6:
    if (v3)
    {
      v3[2](v3, 1);
    }

    goto LABEL_8;
  }

  if (*(a1 + 8) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 24);
      v7 = [v6 vendor];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "token fetch request for %@ is already pending", &buf, 0xCu);
    }

    if (v3)
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 64))
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 24);
      v10 = [v9 vendor];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "token fetch request for %@ has a pending timer", &buf, 0xCu);
    }

    if (v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ([*(a1 + 56) status] == 1)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x3032000000;
      v23 = sub_100001F14;
      v24 = sub_100005818;
      v25 = os_transaction_create();
      objc_initWeak(&location, a1);
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000076C4;
      v16[3] = &unk_100109510;
      objc_copyWeak(&v19, &location);
      v17 = v3;
      p_buf = &buf;
      [WeakRetained requestAccessTokenWithCompletionHandler:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);

      goto LABEL_8;
    }

    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 24);
      v14 = [v13 vendor];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "deferring token fetch for %@, path is not satisfied", &buf, 0xCu);
    }

    *(a1 + 9) = 1;
    v15 = objc_loadWeakRetained((a1 + 16));
    [v15 setUserEventAgentTokenFetchParameters];

    if (v3)
    {
LABEL_24:
      v3[2](v3, 0);
    }
  }

LABEL_8:
}

void sub_100005C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

id sub_100005C74(uint64_t a1)
{
  v2 = [*(a1 + 24) vendor];
  v3 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.ProxyToken" accountName:v2];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
    v27 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v27];
    v7 = v27;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [NSMutableArray arrayWithArray:v6];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v24;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            if (v16)
            {
              v16 = v16[1];
            }

            v17 = v16;
            v13 += [v17 count];
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 32) = v13;
      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 24);
        v22 = [v21 vendor];
        *buf = 134218242;
        v29 = v20;
        v30 = 2112;
        v31 = v22;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Received %lu tokens from keychain for %@", buf, 0x16u);
      }
    }

    else
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for token info list failed with error: %@", buf, 0xCu);
      }

      v10 = 0;
      *(a1 + 32) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100005F60(uint64_t a1)
{
  if (a1 && sub_100004F70(a1))
  {
    if (!*(a1 + 40))
    {
      v2 = [NSPPrivacyProxyTokenRegistration alloc];
      v3 = *(a1 + 48);
      v4 = *(a1 + 24);
      v5 = v3;
      v6 = [v4 vendor];
      v7 = sub_100002834(v2, v5, v6, a1, 0);
      v8 = *(a1 + 40);
      *(a1 + 40) = v7;

      v9 = *(a1 + 40);
      if (*(a1 + 11) == 1)
      {
        if ([*(a1 + 24) proxyHop] == 1)
        {
          v10 = 15;
        }

        else
        {
          v10 = 5;
        }
      }

      else
      {
        v10 = 5;
      }

      sub_100003094(v9, v10);
    }

    sub_100006B34(a1);
    v11 = *(a1 + 40);
    v12 = v11 ? [*(v11 + 24) tokenCount] : 0;
    if (*(a1 + 32))
    {
      if (*(a1 + 11) == 1)
      {
        v13 = [*(a1 + 24) proxyHop];
        v14 = 10;
        if (v13 == 1)
        {
          v14 = 30;
        }
      }

      else
      {
        v14 = 10;
      }

      if (v12 < v14)
      {
        v15 = *(a1 + 32);
        if (*(a1 + 11) == 1)
        {
          v16 = [*(a1 + 24) proxyHop];
          v17 = 10;
          if (v16 == 1)
          {
            v17 = 30;
          }
        }

        else
        {
          v17 = 10;
        }

        if (v15 <= v17 - v12)
        {
          v20 = *(a1 + 32);
        }

        else
        {
          if (*(a1 + 11) == 1)
          {
            v18 = [*(a1 + 24) proxyHop];
            v19 = 10;
            if (v18 == 1)
            {
              v19 = 30;
            }
          }

          else
          {
            v19 = 10;
          }

          v20 = v19 - v12;
        }

        v21 = nplog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 24);
          v23 = [v22 vendor];
          *buf = 134218242;
          v51 = v20;
          v52 = 2112;
          v53 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "adding %lu tokens to token agent[%@]", buf, 0x16u);
        }

        *(a1 + 96) += v20;
        if (v20)
        {
          v24 = objc_alloc_init(NSPProxyAgentStats);
          v25 = sub_100007E60(a1);
          [(NSPProxyAgentStats *)v24 setTierType:v25];

          if ([*(a1 + 24) proxyHop] == 1)
          {
            [(NSPProxyAgentStats *)v24 setIngressProxyTokensAdded:v20];
          }

          else
          {
            [(NSPProxyAgentStats *)v24 setEgressProxyTokensAdded:v20];
          }

          [(NSPProxyAnalytics *)v24 sendAnalytics];
          v26 = sub_100005C74(a1);
          v27 = [v26 count];
          if (v27)
          {
            v28 = v27;
            v29 = 0;
            while (1)
            {
              v30 = [v26 firstObject];
              v31 = v30;
              if (v30)
              {
                v32 = *(v30 + 8);
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;
              if ([v33 count] <= v20)
              {
                if (v31)
                {
                  v35 = v31[1];
                }

                else
                {
                  v35 = 0;
                }

                v36 = v35;
                v34 = [v36 count];

                if (!v34)
                {
                  goto LABEL_56;
                }
              }

              else
              {

                v34 = v20;
              }

              v37 = v34;
              do
              {
                if (v31)
                {
                  v38 = v31[1];
                }

                else
                {
                  v38 = 0;
                }

                v39 = v38;
                v40 = [v39 firstObject];

                sub_100002B0C(*(a1 + 40), v40);
                if (v31)
                {
                  v41 = v31[1];
                }

                else
                {
                  v41 = 0;
                }

                v42 = v41;
                [v42 removeObject:v40];

                --v37;
              }

              while (v37);
LABEL_56:
              *(a1 + 32) -= v34;
              if (v31)
              {
                v43 = v31[1];
              }

              else
              {
                v43 = 0;
              }

              v44 = v43;
              v45 = [v44 count];

              if (!v45)
              {
                [v26 removeObject:v31];
              }

              v20 -= v34;

              if (v20)
              {
                if (++v29 != v28)
                {
                  continue;
                }
              }

              break;
            }
          }

          sub_100006FF8(a1, v26);
        }

        v46 = *(a1 + 40);
        if (v46)
        {
          if ([*(v46 + 24) tokenCount])
          {
            v47 = NPGetInternalQueue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100007EE8;
            block[3] = &unk_100109478;
            block[4] = a1;
            dispatch_async(v47, block);
          }
        }
      }
    }
  }
}

void sub_100006664(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

uint64_t sub_100006674(uint64_t result)
{
  if (result)
  {
    if (*(result + 11) == 1)
    {
      if ([*(result + 24) proxyHop] == 1)
      {
        return 15;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 5;
    }
  }

  return result;
}

void sub_100006B14(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100006B24(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_100006B34(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v2 = objc_alloc_init(NSMutableArray);
      v3 = sub_100005C74(a1);
      v4 = *(a1 + 32);
      v5 = [v3 count];
      if (v5)
      {
        v6 = v5;
        for (i = 0; i != v6; ++i)
        {
          v8 = [v3 objectAtIndexedSubscript:i];
          v9 = v8;
          if (v8)
          {
            v10 = *(v8 + 24);
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;
          [v11 timeIntervalSinceNow];
          v13 = v12 > 0.0;

          if (!v13)
          {
            if (v9)
            {
              v14 = v9[1];
            }

            else
            {
              v14 = 0;
            }

            v15 = *(a1 + 32);
            v16 = v14;
            LODWORD(v15) = v15 < [v16 count];

            if (v15)
            {
              v20 = nplog_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                v21 = *(a1 + 24);
                v22 = [v21 vendor];
                *buf = 138412290;
                *&buf[4] = v22;
                v36 = v22;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "self.tokenCount < tokenInfo.tokens.count for %@", buf, 0xCu);
              }
            }

            if (v9)
            {
              v17 = v9[1];
              *(a1 + 104) += [v17 count];

              v18 = v9[1];
            }

            else
            {
              *(a1 + 104) += [0 count];
              v18 = 0;
            }

            v19 = v18;
            *(a1 + 32) -= [v19 count];

            [v2 addObject:v9];
          }
        }
      }

      v23 = nplog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 24);
        v26 = [v25 vendor];
        *buf = 134218242;
        *&buf[4] = v4 - v24;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cleaned up %lu expired tokens for %@", buf, 0x16u);
      }

      [v3 removeObjectsInArray:v2];
      if (v4 != *(a1 + 32))
      {
        sub_100006FF8(a1, v3);
        v32 = +[NSDate date];
        v33 = *(a1 + 24);
        v34 = [v33 vendor];
        v35 = sub_1000071A0(a1);

        [NSPCoreData saveTokenEvent:v32 eventType:5 vendor:v34 tokenCount:v35];
      }
    }

    if (sub_100004F70(a1))
    {
      v27 = 10;
      if (*(a1 + 11))
      {
        v27 = 30;
      }

      if (*(a1 + 32) <= v27)
      {
        v28 = nplog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 24);
          v30 = [v29 vendor];
          *buf = 138412290;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Proxy %@, hit cached low water mark", buf, 0xCu);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v39 = sub_100001F14;
        v40 = sub_100005818;
        v41 = os_transaction_create();
        v31 = NPGetInternalQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000071DC;
        block[3] = &unk_100109450;
        block[4] = a1;
        block[5] = buf;
        dispatch_async(v31, block);

        _Block_object_dispose(buf, 8);
      }
    }
  }
}

void sub_100006FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006FF8(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v11];
  v4 = v11;
  v5 = nplog_obj();
  v6 = v5;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 24);
      v10 = [v9 vendor];
      *buf = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Saving %lu proxy tokens for %@ in the keychain", buf, 0x16u);
    }

    v6 = [*(a1 + 24) vendor];
    [NPUtilities saveDataToKeychain:v3 withIdentifier:@"com.apple.NetworkServiceProxy.ProxyToken" accountName:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for token info list failed with error: %@", buf, 0xCu);
  }
}

uint64_t sub_1000071A0(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 32);
    v1 = *(result + 40);
    if (v1)
    {
      v1 = [*(v1 + 24) tokenCount];
    }

    return v1 + v2;
  }

  return result;
}

void sub_1000071DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained tokenLowWaterMarkReached:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10000724C(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      v4 = [v3 vendor];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Flushing tokens for %@", &buf, 0xCu);
    }

    *(a1 + 32) = 0;
    sub_100005238(a1);
    sub_100007414(a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v8 = 0x3032000000;
    v9 = sub_100001F14;
    v10 = sub_100005818;
    v11 = os_transaction_create();
    v5 = NPGetInternalQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007654;
    v6[3] = &unk_100109450;
    v6[4] = a1;
    v6[5] = &buf;
    dispatch_async(v5, v6);

    _Block_object_dispose(&buf, 8);
  }
}

void sub_1000073F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007414(uint64_t a1)
{
  if (a1 && sub_100004F70(a1))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    if (v2)
    {
      v2 = [*(v2 + 24) tokenCount];
    }

    if (!(v2 + v3))
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x3032000000;
      v12[3] = sub_100001F14;
      v12[4] = sub_100005818;
      v13 = os_transaction_create();
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 24);
        v6 = [v5 vendor];
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "no tokens available for proxy[%@]", buf, 0xCu);
      }

      v7 = +[NSDate date];
      v8 = *(a1 + 24);
      v9 = [v8 vendor];
      [NSPCoreData saveTokenEvent:v7 eventType:1 vendor:v9 tokenCount:0];

      v10 = NPGetInternalQueue();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000083D4;
      v11[3] = &unk_100109450;
      v11[4] = a1;
      v11[5] = v12;
      dispatch_async(v10, v11);

      _Block_object_dispose(v12, 8);
    }
  }
}

void sub_10000762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007654(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained tokenLowWaterMarkReached:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000076C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v50 = sub_100007E0C;
    v51 = &unk_1001094E8;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v52 = v6;
    v53 = v7;
    v8 = v4;
    v9 = v49;
    if (WeakRetained[3])
    {
      if (!sub_100004F70(WeakRetained))
      {
        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = WeakRetained[3];
          v17 = [v16 vendor];
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "proxy for %@ does not require any token", buf, 0xCu);
        }

        (v50)(v9, 1);
        goto LABEL_32;
      }

      if (*(WeakRetained + 8) == 1)
      {
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = WeakRetained[3];
          v12 = [v11 vendor];
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "token fetch request for %@ is already pending", buf, 0xCu);
        }
      }

      else if (WeakRetained[8])
      {
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v18 = WeakRetained[3];
          v19 = [v18 vendor];
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "token fetch request for %@ has a pending timer", buf, 0xCu);
        }
      }

      else
      {
        if ([WeakRetained[7] status] != 1)
        {
          v24 = nplog_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = WeakRetained[3];
            v26 = [v25 vendor];
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "deferring token fetch for %@, path is not satisfied", buf, 0xCu);
          }

          *(WeakRetained + 9) = 1;
          v27 = objc_loadWeakRetained(WeakRetained + 2);
          [v27 setUserEventAgentTokenFetchParameters];

          (v50)(v9, 0);
          goto LABEL_32;
        }

        v20 = 10;
        if (*(WeakRetained + 11))
        {
          v20 = 30;
        }

        if (WeakRetained[4] <= v20)
        {
          *(WeakRetained + 8) = 1;
          v43 = sub_10000843C(WeakRetained);
          v28 = nplog_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = WeakRetained[3];
            v30 = [v29 vendor];
            *buf = 138412546;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            *&buf[14] = v43;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Fetch tokens for %@ on %@", buf, 0x16u);
          }

          objc_initWeak(&location, WeakRetained);
          if (*(WeakRetained + 11))
          {
            v31 = 60;
          }

          else
          {
            v31 = 30;
          }

          v32 = WeakRetained[3];
          v42 = [v32 tokenKeyInfo];

          v33 = WeakRetained[3];
          v45 = [v33 tokenChallenge];

          v48 = +[NSPPrivacyTokenManager sharedTokenManager];
          v47 = sub_10000843C(WeakRetained);
          v46 = sub_100007E60(WeakRetained);
          v41 = WeakRetained[3];
          v34 = [v41 proxyURL];
          v35 = WeakRetained[3];
          v36 = [v35 vendor];
          v37 = WeakRetained[4];
          v38 = WeakRetained[9];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100008718;
          v56 = &unk_100109588;
          objc_copyWeak(v61, &location);
          v39 = v31 - v37;
          v57 = WeakRetained;
          v40 = v42;
          v58 = v40;
          v44 = v43;
          v59 = v44;
          v60 = v9;
          [v48 fetchPrivacyTokensOnInterface:v47 tierType:v46 proxyURL:v34 tokenVendor:v36 tokenIssuancePublicKey:v40 tokenChallenge:v45 tokenCount:v39 accessToken:v8 retryAttempt:v38 completionHandler:buf];

          objc_destroyWeak(v61);
          objc_destroyWeak(&location);

          goto LABEL_32;
        }

        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v21 = WeakRetained[3];
          v22 = [v21 vendor];
          v23 = WeakRetained[4];
          *buf = 138412546;
          *&buf[4] = v22;
          *&buf[12] = 2048;
          *&buf[14] = v23;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ignoring token fetch for %@, token count %lu", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPProxyTokenInfo requestTokensWithAccessToken:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null self.proxyInfo", buf, 0xCu);
      }
    }

    (v50)(v9, 0);
LABEL_32:

    goto LABEL_33;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

LABEL_33:
}

void sub_100007DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  objc_destroyWeak(va);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

__CFString *sub_100007E60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = [WeakRetained tierString];

  if (v3)
  {
    v4 = v3;
  }

  else if (*(a1 + 11))
  {
    v4 = @"SUBSCRIBER";
  }

  else
  {
    v4 = @"FREE";
  }

  return v4;
}

void sub_100007EE8(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = v3[3];
    }

    v4 = v3;
    v5 = [v4 vendor];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ tokens added", &buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tokenAdded];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 11) ? 30 : 10;
    v10 = [*(v8 + 24) vendor];
    v11 = [NSPCoreData triggerProactiveTokenFetch:v10 lowerTokenCountThreshold:v9 + (v9 >> 1)];

    if (v11)
    {
      v12 = +[NSDate date];
      v13 = *(v8 + 24);
      v14 = [v13 vendor];
      v16 = *(v8 + 32);
      v15 = *(v8 + 40);
      if (v15)
      {
        v17 = [*(v15 + 24) tokenCount];
      }

      else
      {
        v17 = 0;
      }

      [NSPCoreData saveTokenEvent:v12 eventType:4 vendor:v14 tokenCount:v17 + v16];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v21 = 0x3032000000;
      v22 = sub_100001F14;
      v23 = sub_100005818;
      v24 = os_transaction_create();
      v18 = NPGetInternalQueue();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000096EC;
      v19[3] = &unk_100109450;
      v19[4] = v8;
      v19[5] = &buf;
      dispatch_async(v18, v19);

      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_100008178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008198(uint64_t a1)
{
  if (a1 && sub_100004F70(a1))
  {
    v2 = 10;
    if (*(a1 + 11))
    {
      v2 = 30;
    }

    if (*(a1 + 32) <= v2)
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x3032000000;
      v8[3] = sub_100001F14;
      v8[4] = sub_100005818;
      v9 = os_transaction_create();
      v3 = NPGetInternalQueue();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100008364;
      v7[3] = &unk_100109450;
      v7[4] = a1;
      v7[5] = v8;
      dispatch_async(v3, v7);

      ++*(a1 + 128);
      v4 = objc_alloc_init(NSPProxyAgentStats);
      v5 = sub_100007E60(a1);
      [(NSPProxyAgentStats *)v4 setTierType:v5];

      v6 = *(a1 + 24);
      LODWORD(v5) = [v6 proxyHop];

      if (v5 == 1)
      {
        [(NSPProxyAgentStats *)v4 setIngressProxyLowWaterMarkHitCount:[(NSPProxyAgentStats *)v4 ingressProxyLowWaterMarkHitCount]+ 1];
      }

      else
      {
        [(NSPProxyAgentStats *)v4 setEgressProxyLowWaterMarkHitCount:[(NSPProxyAgentStats *)v4 egressProxyLowWaterMarkHitCount]+ 1];
      }

      [(NSPProxyAnalytics *)v4 sendAnalytics];

      _Block_object_dispose(v8, 8);
    }
  }
}

void sub_100008348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008364(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained tokenLowWaterMarkReached:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000083D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tokensEmpty];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

id sub_10000843C(uint64_t a1)
{
  if (*(a1 + 10))
  {
    v1 = 0;
  }

  else
  {
    v2 = [*(a1 + 56) interface];
    v1 = [v2 interfaceName];
  }

  return v1;
}

void sub_10000849C(uint64_t a1)
{
  if (a1 && *(a1 + 9) == 1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      v4 = [v3 vendor];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retry fetching tokens for %@ on network or key change", &v6, 0xCu);
    }

    v5 = *(a1 + 72);
    sub_100004FBC(a1);
    *(a1 + 72) = v5;
    sub_1000058A8(a1, 0);
  }
}

void sub_100008594(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Token fetch retry timer fired", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(*(WeakRetained + 8));
    v5 = v4[8];
    v4[8] = 0;

    sub_1000058A8(v4, 0);
  }
}

double sub_100008634(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = [v1 objectForKeyedSubscript:@"Retry-After"];

  if (v2)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    v4 = [v3 numberFromString:v2];
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

void sub_1000086C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = WeakRetained;
  [WeakRetained tokenFetched];
}

void sub_100008718(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v13 = a3;
  v83 = a4;
  v82 = a5;
  v81 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
    if (a2 && [v13 statusCode] == 200 && objc_msgSend(v82, "count"))
    {
      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v15 + 24);
        v18 = [v17 vendor];
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Token fetch successful for %@", buf, 0xCu);
      }

      ++*(v15 + 88);
      v19 = v82;
      v20 = v81;
      v80 = v19;
      if ([v19 count])
      {
        if (!v20 || ([v20 timeIntervalSinceNow], v21 < 0.0))
        {
          v22 = [[NSDate alloc] initWithTimeIntervalSinceNow:86400.0];

          v20 = v22;
        }

        v23 = sub_10003B554([NSPToken alloc], v20);
        v24 = [NSMutableArray arrayWithArray:v80];
        sub_10000A4F0(v23, v24);

        v25 = sub_100005C74(v15);
        if (!v25)
        {
          v25 = objc_alloc_init(NSMutableArray);
        }

        [v25 addObject:v23];
        *(v15 + 32) += [v80 count];
        sub_100006FF8(v15, v25);
        v26 = nplog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v80 count];
          v28 = *(v15 + 24);
          v29 = [v28 vendor];
          *buf = 134218498;
          *&buf[4] = v27;
          *&buf[12] = 2112;
          *&buf[14] = v29;
          *&buf[22] = 2112;
          v98 = v20;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cache %lu tokens for proxy %@, expiration %@", buf, 0x20u);
        }
      }

      else
      {
        v23 = nplog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NSPProxyTokenInfo cacheTokens:expirationTime:]";
          _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null (tokens.count > 0)", buf, 0xCu);
        }
      }

      sub_100004FBC(v15);
      sub_100005F60(v15);
      sub_100008198(v15);
      v30 = NPGetInternalQueue();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000086C8;
      v98 = &unk_100109478;
      v99 = v15;
      dispatch_async(v30, buf);

      v31 = +[NSDate date];
      v32 = *(a1 + 32);
      if (v32)
      {
        v32 = v32[3];
      }

      v33 = v32;
      v34 = [v33 vendor];
      v35 = sub_1000071A0(*(a1 + 32));

      [NSPCoreData saveTokenEvent:v31 eventType:2 vendor:v34 tokenCount:v35];
      goto LABEL_65;
    }

    if ([v13 statusCode] == 429)
    {
      v36 = nplog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v76 = *(v15 + 24);
        v77 = [v76 vendor];
        *buf = 138412290;
        *&buf[4] = v77;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Token fetch failed for %@ with too many requests", buf, 0xCu);
      }

      ++*(v15 + 112);
      v37 = +[NSDate date];
      v38 = *(a1 + 32);
      if (v38)
      {
        v38 = v38[3];
      }

      v39 = v38;
      v40 = [v39 vendor];
      v41 = sub_1000071A0(*(a1 + 32));

      [NSPCoreData saveTokenEvent:v37 eventType:3 vendor:v40 tokenCount:v41];
      v42 = sub_100008634(v13);
      if (v42 <= 0.0)
      {
        v43 = 86400.0;
      }

      else
      {
        v43 = v42;
      }

      *(v15 + 9) = 0;
      sub_100005508(v15, v43);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v98 = sub_100001F14;
      v99 = sub_100005818;
      v100 = os_transaction_create();
      v44 = NPGetInternalQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009444;
      block[3] = &unk_100109560;
      v96 = v43;
      v94 = v15;
      v95 = buf;
      dispatch_async(v44, block);

      _Block_object_dispose(buf, 8);
      goto LABEL_64;
    }

    v45 = *(v15 + 24);
    v46 = [v45 tokenKeyInfo];
    v47 = *(a1 + 40);
    v48 = v46;
    v49 = v47;
    v50 = v49;
    if (v48 | v49 && (!v48 || !v49 || ![v48 isEqual:v49]))
    {
      v51 = v48;
LABEL_48:

      v69 = nplog_obj();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Token fetch failed, retrying immediately", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v98 = sub_100001F14;
      v99 = sub_100005818;
      v100 = os_transaction_create();
      v70 = NPGetInternalQueue();
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_1000094B8;
      v90[3] = &unk_100109450;
      v91 = v15;
      v92 = buf;
      dispatch_async(v70, v90);

      _Block_object_dispose(buf, 8);
      goto LABEL_64;
    }

    v51 = *(v15 + 56);
    if ([v51 status] == 1)
    {
      v50 = sub_10000843C(v15);
      if (v50)
      {
        v52 = sub_10000843C(v15);
        v53 = *(a1 + 48);
        v54 = v52;
        v55 = v53;
        v56 = v55;
        if (v54 | v55 && (!v54 || !v55 || ![v54 isEqual:v55]))
        {

          goto LABEL_48;
        }
      }
    }

    v57 = nplog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v78 = *(v15 + 24);
      v79 = [v78 vendor];
      *buf = 138412802;
      *&buf[4] = v79;
      *&buf[12] = 2048;
      *&buf[14] = [v13 statusCode];
      *&buf[22] = 2112;
      v98 = v83;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Token fetch failed for %@ with %lu, error %@", buf, 0x20u);
    }

    ++*(v15 + 112);
    v58 = +[NSDate date];
    v59 = *(a1 + 32);
    if (v59)
    {
      v59 = v59[3];
    }

    v60 = v59;
    v61 = [v60 vendor];
    v62 = sub_1000071A0(*(a1 + 32));

    [NSPCoreData saveTokenEvent:v58 eventType:3 vendor:v61 tokenCount:v62];
    if ([v13 statusCode] == 404 || a7)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v98 = sub_100001F14;
      v99 = sub_100005818;
      v100 = os_transaction_create();
      v71 = NPGetInternalQueue();
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_100009540;
      v87[3] = &unk_100109450;
      v88 = v15;
      v89 = buf;
      dispatch_async(v71, v87);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v63 = [v13 allHeaderFields];
      v64 = [v63 objectForKeyedSubscript:@"X-Apple-Client-Action"];

      if ([v64 isEqualToString:@"Switch-Proxy"])
      {
        v65 = nplog_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(v15 + 24);
          v67 = [v66 vendor];
          *buf = 138412290;
          *&buf[4] = v67;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Received switch proxy from server for %@", buf, 0xCu);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v98 = sub_100001F14;
        v99 = sub_100005818;
        v100 = os_transaction_create();
        v68 = NPGetInternalQueue();
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_1000095B0;
        v84[3] = &unk_100109450;
        v85 = v15;
        v86 = buf;
        dispatch_async(v68, v84);

        _Block_object_dispose(buf, 8);
      }
    }

    v72 = sub_100008634(v13);
    *(v15 + 9) = v72 == 0;
    sub_100005508(v15, v72);
    ++*(v15 + 72);
    if (v83)
    {
      v73 = [v83 domain];
      if ([v73 isEqualToString:NSURLErrorDomain])
      {
        if ([v83 code] == -1009)
        {

LABEL_62:
          --*(v15 + 72);
          goto LABEL_63;
        }

        v74 = [v83 code] == -1005;

        if (v74)
        {
          goto LABEL_62;
        }
      }

      else
      {
      }
    }

LABEL_63:
    v75 = objc_loadWeakRetained((v15 + 16));
    [v75 updateUserEventAgentData];

LABEL_64:
    v31 = objc_loadWeakRetained((v15 + 16));
    v34 = [*(v15 + 24) proxyURL];
    [v31 reportTokenFetchFailure:v34 statusCode:{objc_msgSend(v13, "statusCode")}];
LABEL_65:
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100009444(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained tokenRateLimited:v4 untilDate:*(a1 + 48)];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

uint64_t sub_1000094B8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000952C;
  v3[3] = &unk_1001094C0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return sub_1000058A8(v1, v3);
}

void sub_10000952C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100009540(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained tokenInfoInvalid:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000095B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained switchProxy:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000096EC(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100009760;
  v1[3] = &unk_1001095B0;
  sub_1000058A8(*(a1 + 32), v1);
}

void sub_100009760(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succeeded";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "proactive Token fetch for vendor %@ %@", &v12, 0x16u);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_10000A4F0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_10000BA88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ![v5 result])
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = 2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Oblivious config validated by transparency, allowing", buf, 2u);
      goto LABEL_16;
    }

LABEL_12:
    v9 = 2;
    goto LABEL_16;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Oblivious config not validated by transparency (error %@), allowing since feature flag is not enabled", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = nplog_obj();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Oblivious config not validated by transparency (error %@), blocking and staying in unknown state", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Oblivious config not validated by transparency (error %@), blocking", buf, 0xCu);
    }

    v9 = 3;
  }

LABEL_16:

  v10 = NPGetInternalQueue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BCE8;
  v11[3] = &unk_1001095D8;
  v12 = *(a1 + 32);
  v13 = v9;
  dispatch_async(v10, v11);
}

void sub_10000C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C18C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) setTransparencyState:a2];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (v2)
    {
      if ([*(a1 + 32) pathReady])
      {
        v4 = *(a1 + 32);

        [v4 setupProxyAgentsForceUpdateDelegate:1];
      }
    }

    else
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = [v6 shortName];
        v8 = 134218242;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%p oblivious path [%@] is not ready due to unknown transparency status after checking", &v8, 0x16u);
      }
    }
  }
}

void sub_10000F958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10000F994(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v6 = dispatch_time(0, 5000000000);
        v7 = NPGetInternalQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000FAB0;
        block[3] = &unk_100109650;
        block[4] = *(a1 + 32);
        dispatch_after(v6, v7, block);
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a2 == 4)
  {
LABEL_8:
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v10)
    {
      nw_connection_cancel(v10);
    }

    goto LABEL_10;
  }

  if (a2 == 5)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

LABEL_10:
}

void sub_10000FAB0(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    nw_connection_cancel(v1);
  }
}

void sub_10000FAC8(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained copyAddressesFromDoHAnswer:v6];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
  nw_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000FE8C(uint64_t a1, nw_protocol_options_t options)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    obj = nw_protocol_options_copy_definition(options);
    identifier = nw_protocol_definition_get_identifier();
    if (!strcmp(identifier, "masque"))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    }
  }
}

void sub_10000FF10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v6 = dispatch_time(0, 5000000000);
        v7 = NPGetInternalQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001002C;
        block[3] = &unk_100109650;
        block[4] = *(a1 + 32);
        dispatch_after(v6, v7, block);
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a2 == 4)
  {
LABEL_8:
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v10)
    {
      nw_connection_cancel(v10);
    }

    goto LABEL_10;
  }

  if (a2 == 5)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

LABEL_10:
}

void sub_10001002C(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    nw_connection_cancel(v1);
  }
}

void sub_100010044(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9 || v10)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = a1[4];
      *v36 = 138412546;
      *&v36[4] = v22;
      *&v36[12] = 2112;
      *&v36[14] = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received no response, error %@", v36, 0x16u);
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = a1[4];
      *v36 = 138412290;
      *&v36[4] = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received empty response", v36, 0xCu);
    }

LABEL_16:

    (*(a1[5] + 16))();
    goto LABEL_32;
  }

  v12 = nw_protocol_copy_http_definition();
  v13 = nw_content_context_copy_protocol_metadata(v9, v12);
  if (v13)
  {
    v14 = nw_http_metadata_copy_response();
    status_code = nw_http_response_get_status_code();
    *v36 = 0;
    *&v36[8] = v36;
    *&v36[16] = 0x2020000000;
    v37 = 0;
    v16 = nw_http_response_copy_header_fields();
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_10001056C;
    v31[4] = &unk_1001096F0;
    v31[5] = v36;
    nw_http_fields_access_value_by_name();
    if (status_code == 200 && (*(*&v36[8] + 24) & 1) != 0)
    {
      v31[0] = 0;
      v17 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:v31];
      v30 = v31[0];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = a1[4];
          *buf = 138412290;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received PvD JSON", buf, 0xCu);
        }

        v20 = nplog_large_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v17;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "PvD JSON content: %@", buf, 0xCu);
        }

        (*(a1[5] + 16))();
        nw_connection_cancel(*(*(a1[6] + 8) + 40));
      }

      else
      {
        v28 = nplog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = a1[4];
          *buf = 138412546;
          v33 = v29;
          v34 = 2112;
          v35 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received malformed PvD JSON: %@", buf, 0x16u);
        }

        (*(a1[5] + 16))();
      }
    }

    else
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = a1[4];
        *buf = 138412546;
        v33 = v25;
        v34 = 1024;
        LODWORD(v35) = status_code;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received no PvD JSON (status %u)", buf, 0x12u);
      }

      (*(a1[5] + 16))();
    }

    _Block_object_dispose(v36, 8);
  }

  else
  {
    v26 = nplog_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = a1[4];
      *v36 = 138412290;
      *&v36[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "PvD fetch for proxied content map to %@ received no HTTP metadata", v36, 0xCu);
    }

    (*(a1[5] + 16))();
  }

LABEL_32:
}

void sub_100010538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001056C(uint64_t result, char *__s1)
{
  if (__s1)
  {
    v2 = result;
    result = strcmp(__s1, "application/pvd+json");
    if (!result)
    {
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

int64_t sub_100010678(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = [(NSString *)a2 containsString:@":"];
  v6 = [(NSString *)v4 containsString:@":"];

  if (v5 == v6)
  {
    v5 = arc4random_uniform(2u) == 0;
  }

  if (v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_100012520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012584(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_protocol_options_is_http3())
  {
    v5[1] = 0;
    v5[2] = 0;
    nw_http3_set_resumable_session_agent();
    nw_http3_set_idle_timeout();
    v4 = NPGetInternalQueue();
    objc_copyWeak(v5, (a1 + 32));
    nw_http3_set_resumable_session_handler();

    objc_destroyWeak(v5);
  }
}

void sub_1000126A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained quicRegistration];

    if (v6)
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 shortName];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "proxied content path [%@] received session ticket", &v10, 0xCu);
      }

      v9 = [v5 quicRegistration];
      sub_1000423F0(v9, v3);
    }
  }
}

void sub_1000127BC(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100012828(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100012894(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000128F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setFetchingSessionTickets:0];
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 shortName];
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "proxied content path [%@] done fetching session tickets", buf, 0xCu);
    }

    v31 = 0;
    v8 = [v5 proxyIdentifierFromPvDConfiguration:*(*(*(a1 + 40) + 8) + 40) discoveredAlgorithm:&v31];
    v9 = [v5 discoveredMapsFromPvDConfiguration:*(*(*(a1 + 40) + 8) + 40) proxyIdentifier:v8];
    v10 = [v5 discoveredMaps];
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        v12 = [v5 discoveredMaps];
        v13 = [v12 isEqualToArray:v9] ^ 1;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = v10 != 0;
    }

    v14 = v31;
    v15 = [v5 discoveredAlgorithm];
    [v5 setDiscoveredMaps:v9];
    [v5 setDiscoveredAlgorithm:v31];
    if (v13)
    {
      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v5 shortName];
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "proxied content path [%@] updated discovered maps based on PvD configuration", buf, 0xCu);
      }
    }

    if (v14 != v15)
    {
      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v5 shortName];
        if (v31 >= 4)
        {
          v20 = [NSString stringWithFormat:@"(unknown: %i)", v31];
        }

        else
        {
          v20 = *(&off_100109A58 + v31);
        }

        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "proxied content path [%@] updated discovered algorithm to %@ based on PvD configuration", buf, 0x16u);
      }
    }

    v21 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v5 shortName];
      v24 = *(a1 + 72);
      *buf = 138412802;
      v33 = v23;
      if (v24)
      {
        v25 = " (ignoring)";
      }

      else
      {
        v25 = "";
      }

      v34 = 2082;
      v35 = v25;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "proxied content path [%@] received resolved addresses%{public}s: %@", buf, 0x20u);
    }

    if (*(a1 + 72) == 1)
    {
      v26 = [v5 resolvedAddresses];
      if ((v26 != 0) | v13 & 1)
      {
      }

      else if (v14 == v15)
      {
LABEL_36:
        v30 = [v5 delegate];
        [v30 updateUserEventAgentData];

        goto LABEL_37;
      }

      v27 = 0;
    }

    else
    {
      if (!(([v21 count] != 0) | v13 & 1) && v14 == v15)
      {
        goto LABEL_36;
      }

      v28 = [v5 resolvedAddresses];
      v29 = v13 | ~[v21 isEqualToArray:v28];

      v27 = v21;
      if ((v29 & 1) == 0)
      {
        v27 = v21;
        if (v14 == v15)
        {
          goto LABEL_36;
        }
      }
    }

    [v5 setResolvedAddresses:v27];
    [v5 resetQUICProxyAgentForceUpdateDelegate:v13];
    [v5 resetResolverAgentForceUpdateDelegate:v13];
    goto LABEL_36;
  }

LABEL_37:
}

void sub_10001A990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 64));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10001A9E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NPGetInternalQueue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001AB30;
  v16[3] = &unk_100109848;
  v22 = *(a1 + 48);
  objc_copyWeak(&v24, (a1 + 64));
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v20 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v21 = v11;
  v23 = v12;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v10, v16);

  objc_destroyWeak(&v24);
}

void sub_10001AB30(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        v13 = *(a1 + 48);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 48) statusCode] == 200)
        {
          v14 = [*(a1 + 40) copy];
          [WeakRetained setDomainFilter:v14];
        }
      }
    }

    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained domainFilter];
      v7 = @"successful";
      v8 = *(a1 + 56);
      if (!v6)
      {
        v7 = @"failed";
      }

      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@ response for %@", &v15, 0x16u);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = [WeakRetained domainFilter];
      (*(v9 + 16))(v9, v10 != 0);
    }
  }

  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_10001B680(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_10001B690(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = 30;
  if (v2 > 19)
  {
    if (v2 != 20)
    {
      if (v2 == 100)
      {
        goto LABEL_12;
      }

      if (v2 != 50)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v3 = 60;
    goto LABEL_12;
  }

  if (v2 >= 0xFFFFFFFE)
  {
    goto LABEL_12;
  }

  if (v2 == 10)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 12);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unknown link quality value %d", v6, 8u);
  }

  v3 = 30;
LABEL_12:
  *(a1 + 72) = v3;
}

id *sub_10001B78C(id *a1, void *a2, void *a3, int a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NSPProber;
    v14 = objc_msgSendSuper2(&v16, "init");
    a1 = v14;
    if (v14)
    {
      objc_storeWeak(v14 + 2, v11);
      objc_storeStrong(a1 + 3, a3);
      *(a1 + 3) = a4;
      *(a1 + 11) = a6;
      objc_storeStrong(a1 + 11, a5);
    }
  }

  return a1;
}

void sub_10001B858(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v3 = v2;
    if (*(a1 + 11) == 1)
    {
      [v2 set_sourceApplicationSecondaryIdentifier:@"com.apple.nsp.proxyAgentProbe"];
    }

    else
    {
      v4 = [v2 _socketStreamProperties];
      if (v4)
      {
        v5 = [v3 _socketStreamProperties];
        v6 = [NSMutableDictionary dictionaryWithDictionary:v5];
      }

      else
      {
        v6 = +[NSMutableDictionary dictionary];
      }

      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
      [v3 set_socketStreamProperties:v6];
    }

    v7 = objc_alloc_init(NSOperationQueue);
    v8 = *(a1 + 48);
    *(a1 + 48) = v7;

    v9 = NPGetInternalQueue();
    [*(a1 + 48) setUnderlyingQueue:v9];

    v10 = [NSURLSession sessionWithConfiguration:v3 delegate:0 delegateQueue:*(a1 + 48)];
    v11 = *(a1 + 32);
    *(a1 + 32) = v10;

    [*(a1 + 32) setSessionDescription:@"probe"];
    v12 = *(a1 + 80);
    if (v12)
    {
      [v12 timeIntervalSinceNow];
      if (v13)
      {
        sub_10001BA44(a1, v13);
      }

      else
      {
        v14 = NPGetInternalQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001BD38;
        block[3] = &unk_100109478;
        block[4] = a1;
        dispatch_async(v14, block);
      }
    }
  }
}

void sub_10001BA44(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  *(a1 + 9) = 1;
  if (!a2)
  {
    v6 = *(a1 + 64);
    if (v6 < 8)
    {
      v9 = dword_1000CF0AC[v6];
      v8 = arc4random_uniform(6u) + v9;
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 24);
        *buf = 138412546;
        v26 = v22;
        v27 = 1024;
        LODWORD(v28) = 8;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Probe[%@] failed %u attempts", buf, 0x12u);
      }

      v8 = arc4random_uniform(6u) + 1800;
    }

    a2 = v8;
    ++*(a1 + 64);
  }

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 24);
    *buf = 138412546;
    v26 = v11;
    v27 = 2048;
    v28 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retry Probe[%@] after %lu seconds", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v12 = NPGetInternalQueue();
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
  v14 = *(a1 + 56);
  *(a1 + 56) = v13;

  if (*(a1 + 56))
  {
    v15 = *(a1 + 56);
    v16 = dispatch_time(0x8000000000000000, 1000000000 * a2);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);

    v17 = *(a1 + 56);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001C47C;
    handler[3] = &unk_100109538;
    v18 = v17;
    objc_copyWeak(&v24, buf);
    dispatch_source_set_event_handler(v18, handler);

    dispatch_resume(*(a1 + 56));
    objc_destroyWeak(&v24);
  }

  v19 = [NSDate dateWithTimeIntervalSinceNow:a2];
  v20 = *(a1 + 80);
  *(a1 + 80) = v19;

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  [WeakRetained setUserEventAgentProberParameters];

  objc_destroyWeak(buf);
}

void sub_10001BD38(uint64_t a1)
{
  sub_100006B24(*(a1 + 32), 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 9) = 0;
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001F14;
  v5[4] = sub_100005818;
  v6 = os_transaction_create();
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BE44;
  v4[3] = &unk_100109650;
  v4[4] = v5;
  sub_10001BE58(v3, v4);
  _Block_object_dispose(v5, 8);
}

void sub_10001BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BE44(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001BE58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    if (*(a1 + 10) == 1)
    {
      WeakRetained = nplog_obj();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 24);
        *buf = 138412290;
        v32 = v5;
        _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "previous probe[%@] is already pending", buf, 0xCu);
      }
    }

    else
    {
      v6 = *(a1 + 88);
      v7 = [v6 status] == 1;

      if (v7)
      {
        *(a1 + 10) = 1;
        v8 = [NSURL URLWithString:@"http://netcts.cdn-apple.com"];
        v9 = [NSMutableURLRequest requestWithURL:v8 cachePolicy:4 timeoutInterval:*(a1 + 72)];
        v10 = *(a1 + 88);
        v11 = [v10 interface];
        v12 = [v11 interfaceName];
        [v9 setBoundInterfaceIdentifier:v12];

        v13 = nplog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v8;
          v14 = *(a1 + 24);
          v15 = *(a1 + 64);
          v16 = *(a1 + 88);
          v17 = [v16 interface];
          v18 = [v17 interfaceName];
          v19 = [NPUtilities stringFromLinkQualityValue:*(a1 + 12)];
          *buf = 138413058;
          v32 = v14;
          v33 = 2048;
          v34 = v15 + 1;
          v35 = 2112;
          v36 = v18;
          v37 = 2112;
          v38 = v19;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] send probe[%lu] over %@ with link quality %@", buf, 0x2Au);

          v8 = v26;
        }

        v20 = *(a1 + 32);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001CC10;
        v27[3] = &unk_100109898;
        objc_copyWeak(&v29, &location);
        v27[4] = a1;
        v28 = v3;
        v21 = [v20 dataTaskWithRequest:v9 completionHandler:v27];
        objc_storeStrong((a1 + 40), v21);

        v22 = *(a1 + 40);
        [v22 setDelegate:a1];

        v23 = *(a1 + 40);
        [v23 resume];

        objc_destroyWeak(&v29);
        goto LABEL_13;
      }

      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 24);
        *buf = 138412290;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "deferring probe[%@], path is not satisfied", buf, 0xCu);
      }

      *(a1 + 9) = 1;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      [WeakRetained setUserEventAgentProberParameters];
    }

    v3[2](v3);
LABEL_13:
    objc_destroyWeak(&location);
  }
}

void sub_10001C22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C38C(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset probe[%@] timer", &v8, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    *(a1 + 9) = 0;
    v6 = *(a1 + 80);
    *(a1 + 80) = 0;

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained setUserEventAgentProberParameters];
  }
}

void sub_10001C47C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Probe retry timer fired", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[7]);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    *(v4 + 9) = 0;
    *buf = 0;
    v8 = buf;
    v9 = 0x3032000000;
    v10 = sub_100001F14;
    v11 = sub_100005818;
    v12 = os_transaction_create();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001C5E0;
    v6[3] = &unk_100109650;
    v6[4] = buf;
    sub_10001BE58(v4, v6);
    _Block_object_dispose(buf, 8);
  }
}

void sub_10001C5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C5E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001C5F4(uint64_t a1)
{
  ++*(a1 + 104);
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100001F14;
  v4[4] = sub_100005818;
  v5 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001C708;
  v3[3] = &unk_100109450;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(v2, v3);

  _Block_object_dispose(v4, 8);
}

void sub_10001C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C708(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained probeFailed:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10001C778(uint64_t a1)
{
  ++*(a1 + 96);
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100001F14;
  v4[4] = sub_100005818;
  v5 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001C88C;
  v3[3] = &unk_100109450;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(v2, v3);

  _Block_object_dispose(v4, 8);
}

void sub_10001C874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C88C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained probeSuccess:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10001C8FC(uint64_t a1)
{
  ++*(a1 + 112);
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100001F14;
  v4[4] = sub_100005818;
  v5 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001CA10;
  v3[3] = &unk_100109450;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(v2, v3);

  _Block_object_dispose(v4, 8);
}

void sub_10001C9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CA10(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained probeRedirected:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10001CA80(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 120);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100001F14;
  v6[4] = sub_100005818;
  v7 = os_transaction_create();
  v4 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CB9C;
  block[3] = &unk_100109560;
  block[5] = v6;
  block[6] = a2;
  block[4] = a1;
  dispatch_async(v4, block);

  _Block_object_dispose(v6, 8);
}

void sub_10001CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CB9C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = a1[4];
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained probeServerError:v4 httpStatusCode:a1[6]];

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10001CC10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[10] = 0;
    sub_10001BA44(WeakRetained, 0);
    if (v9)
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = *(v13 + 24);
        }

        v26 = 138412546;
        v27 = v13;
        v28 = 2112;
        v29 = v9;
        v14 = "Probe[%@] failed with error %@";
        v15 = v12;
        v16 = 22;
LABEL_27:
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v26, v16);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        if (v25)
        {
          v25 = *(v25 + 24);
        }

        v26 = 138412290;
        v27 = v25;
        v14 = "Probe[%@] failed to receive expected response";
        v15 = v12;
        v16 = 12;
        goto LABEL_27;
      }

LABEL_17:

LABEL_18:
      sub_10001C5F4(v11);
      goto LABEL_19;
    }

    v17 = [v8 statusCode];
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = *(v19 + 24);
      }

      v26 = 138412546;
      v27 = v19;
      v28 = 2048;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Probe[%@] received response %ld", &v26, 0x16u);
    }

    if ((v17 - 200) > 0x63)
    {
      if (v17 >= 400)
      {
        sub_10001CA80(v11, v17);
        v21 = objc_alloc_init(NSPProbeHTTPErrorCodeStats);
        v22 = [*(v11 + 88) interface];
        v23 = +[NPUtilities getInterfaceTypeString:](NPUtilities, "getInterfaceTypeString:", [v22 type]);
        [(NSPProbeHTTPErrorCodeStats *)v21 setInterfaceType:v23];

        [(NSPProbeHTTPErrorCodeStats *)v21 setDirectPath:(*(v11 + 11) & 1) == 0];
        v24 = [NSNumber numberWithInteger:v17];
        [(NSPProbeHTTPErrorCodeStats *)v21 setHTTPErrorCode:v24];

        [(NSPProxyAnalytics *)v21 sendAnalytics];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v20 = [[NSString alloc] initWithData:v7 encoding:134217984];
    if ([v20 isEqualToString:@"<HTML><HEAD><TITLE>Success</TITLE></HEAD><BODY>Success</BODY></HTML>"])
    {
      sub_10001C778(v11);
    }

    else
    {
      sub_10001C8FC(v11);
    }
  }

LABEL_19:
  (*(*(a1 + 40) + 16))();
}

void sub_10001CF54(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      *(a1 + 8) = 1;
      sub_10001B690(a1);
      v3[0] = 0;
      v3[1] = v3;
      v3[2] = 0x3032000000;
      v3[3] = sub_100001F14;
      v3[4] = sub_100005818;
      v4 = os_transaction_create();
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = sub_10001D064;
      v2[3] = &unk_100109650;
      v2[4] = v3;
      sub_10001BE58(a1, v2);
      _Block_object_dispose(v3, 8);
    }
  }
}

void sub_10001D04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D064(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001D078(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001D08C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
    if ([v6 status] == 1 && *(a1 + 9) == 1)
    {
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 24);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retry probing[%@] on network change", &buf, 0xCu);
      }

      sub_10001C38C(a1);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v9 = 0x3032000000;
      v10 = sub_100001F14;
      v11 = sub_100005818;
      v12 = os_transaction_create();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10001D078;
      v7[3] = &unk_100109650;
      v7[4] = &buf;
      sub_10001BE58(a1, v7);
      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_10001D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D314(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy1";
LABEL_41:
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, v34, &v35, 0xCu);
    goto LABEL_20;
  }

  v6 = [v4 proxyHop];
  if (v6 != [v5 proxyHop])
  {
LABEL_21:
    v32 = 0;
    goto LABEL_22;
  }

  v7 = [v4 proxyURL];

  if (!v7)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy1.proxyURL";
    goto LABEL_41;
  }

  v8 = [v5 proxyURL];

  if (!v8)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy2.proxyURL";
    goto LABEL_41;
  }

  v9 = [v4 proxyURL];
  v10 = [v5 proxyURL];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [v4 proxyKeyInfos];

  if (!v12)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy1.proxyKeyInfos";
    goto LABEL_41;
  }

  v13 = [v5 proxyKeyInfos];

  if (!v13)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy2.proxyKeyInfos";
    goto LABEL_41;
  }

  v14 = [v4 proxyKeyInfos];
  v15 = [v5 proxyKeyInfos];
  v16 = [v14 isEqualToArray:v15];

  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = [v4 tokenKeyInfo];

  if (!v17)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy1.tokenKeyInfo";
    goto LABEL_41;
  }

  v18 = [v5 tokenKeyInfo];

  if (!v18)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v35 = 136315138;
    v36 = "+[NSPPrivacyProxyAgentManager proxyMatch:proxy2:]";
    v34 = "%s called with null proxy2.tokenKeyInfo";
    goto LABEL_41;
  }

  v19 = [v4 tokenKeyInfo];
  v20 = [v5 tokenKeyInfo];
  v21 = [v19 isEqualToData:v20];

  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = [v4 tcpProxyFqdn];
  v23 = [v5 tcpProxyFqdn];
  v24 = v22;
  v25 = v23;
  v26 = v25;
  if (v24 | v25 && (!v24 || !v25 || ![v24 isEqual:v25]))
  {

LABEL_20:
    goto LABEL_21;
  }

  v27 = [v4 preferredPathConfigUri];
  v28 = [v5 preferredPathConfigUri];
  v29 = v27;
  v30 = v28;
  v31 = v30;
  if (!(v29 | v30))
  {
    goto LABEL_14;
  }

  v32 = 0;
  if (!v29 || !v30)
  {
    goto LABEL_15;
  }

  if ([v29 isEqual:v30])
  {
LABEL_14:
    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

LABEL_15:

LABEL_22:
  return v32;
}

void sub_10001DB54(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) vendor];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Token challenge changed for %@, flushing tokens", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      [*(v5 + 24) flushTokens];
      v4 = *(a1 + 40);
    }
  }

  sub_10000724C(v4);
}

void sub_10001DC34(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) vendor];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Token key changed for %@", &v4, 0xCu);
  }

  sub_10000849C(*(a1 + 40));
}

void sub_10001FCA8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_10001FCB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_10001FCC8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

void sub_10001FCD8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_10001FCE8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_10001FCF8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

void sub_10001FD08(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_10001FD18(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_10001FD28(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_10001FD38(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 336), a2);
  }
}

void sub_10001FD48(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_10001FD58(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

void sub_10001FD68(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 208), a2);
  }
}

void sub_10001FD78(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 216), a2);
  }
}

void sub_10001FD88(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 224), a2);
  }
}

void sub_10001FD98(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 232), a2);
  }
}

void sub_10001FDA8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 288), a2);
  }
}

void sub_10001FDB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 352), a2);
  }
}

void sub_10001FDC8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 368), a2);
  }
}

void sub_10001FDD8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 376), a2);
  }
}

void sub_10001FDE8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 384), a2);
  }
}

void sub_10001FDF8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 272), a2);
  }
}

void sub_10001FE08(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 392), a2);
  }
}

void sub_10001FE18(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 240), a2);
  }
}

void sub_10001FE28(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 256), a2);
  }
}

void sub_10001FE38(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 512), a2);
  }
}

void sub_10001FE48(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 400), a2);
  }
}

void sub_10001FE58(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 408), a2);
  }
}

void sub_1000201C0(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 360), 0);
  }
}

id sub_1000201D4()
{
  objc_opt_self();
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v0 = CFPreferencesCopyAppValue(@"NSPProxyPathRestoreIntervalSeconds", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected proxy path restore interval in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = [v0 unsignedIntegerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000202EC()
{
  v0 = CFPreferencesCopyAppValue(@"NSPPreferredProxy", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected preferred proxy in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000203E4()
{
  v0 = CFPreferencesCopyAppValue(@"NSPPreferredObliviousProxy", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected preferred oblivious proxy in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000204DC()
{
  v0 = CFPreferencesCopyAppValue(@"NSPOverrideIngressProxy", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected override ingress proxy in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000205D4()
{
  v0 = CFPreferencesCopyAppValue(@"NSPOverrideFallbackIngressProxy", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected override fallback ingress proxy in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000206CC()
{
  v0 = CFPreferencesCopyAppValue(@"NSPOverrideIngressProxyKey", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected override ingress proxy key in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000207C4()
{
  v0 = CFPreferencesCopyAppValue(@"NSPOverrideEnabledMaps", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Detected overridden enabled proxied content maps in preferences file: %{public}@", &v4, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000208BC()
{
  v0 = CFPreferencesCopyAppValue(@"NSPDisableProxiedContentDoHBootstrap", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = [v0 BOOLValue];
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67240192;
      v4[1] = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Detected DoH bootstrap disabled in preferences file: %{public}d", v4, 8u);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1000209C0()
{
  v0 = CFPreferencesCopyAppValue(@"NSPForceFallback", kCFPreferencesCurrentApplication);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = [v0 BOOLValue];
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67240192;
      v4[1] = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Detected force fallback in preferences file: %{public}d", v4, 8u);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

NSObject *sub_100020C40()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"NSPProxyAgentManagerPreferences", kCFPreferencesCurrentApplication);
  if (v0)
  {
    v1 = v0;
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v2, v3, v4, v5, objc_opt_class(), 0];
    v13 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v1 error:&v13];

    CFRelease(v1);
    v8 = [v7 objectForKeyedSubscript:@"Version"];
    if ([v8 unsignedIntegerValue] == 1)
    {
      v9 = v7;
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = [v8 unsignedIntegerValue];
        *buf = 134218240;
        v15 = v12;
        v16 = 1024;
        v17 = 1;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "saved version %lu does not match current version %u", buf, 0x12u);
      }

      v9 = 0;
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no saved proxy agent data", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void sub_100021FF0(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 360);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 360);
      *(a1 + 360) = 0;
    }

    if (a2)
    {
      v6 = [NSDate dateWithTimeIntervalSinceNow:a2];
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v8 = NPGetInternalQueue();
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
      v10 = *(a1 + 360);
      *(a1 + 360) = v9;

      v11 = *(a1 + 360);
      if (v11)
      {
        v12 = v11;
        v13 = dispatch_time(0x8000000000000000, 1000000000 * a2);
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

        objc_initWeak(&location, a1);
        v14 = *(a1 + 360);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000246C8;
        handler[3] = &unk_1001098E8;
        v15 = v14;
        objc_copyWeak(&v18, &location);
        handler[4] = a1;
        dispatch_source_set_event_handler(v15, handler);

        dispatch_resume(*(a1 + 360));
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v16 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

void sub_100022198(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tokenIssuanceAllowed];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100022200(id *a1, void *a2)
{
  v96 = a2;
  if (!a1 || ([a1 forceFallback] & 1) != 0)
  {
    goto LABEL_61;
  }

  v3 = a1[28];
  if (!v3)
  {
    v4 = a1[21];
    if (v4)
    {
      v5 = v4;
      v6 = a1[21];
      v7 = [v6 objectForKeyedSubscript:@"IngressProxyURL"];
      if (v7)
      {
        v8 = [a1[21] objectForKeyedSubscript:@"EgressProxyURL"];

        if (v8)
        {
          v9 = a1[21];
          v10 = [v9 objectForKeyedSubscript:@"IngressProxyURL"];
          v11 = a1[21];
          v12 = [v11 objectForKeyedSubscript:@"EgressProxyURL"];
          v13 = sub_100025424(a1, v10, v12);

          [a1[21] removeObjectForKey:@"IngressProxyURL"];
          [a1[21] removeObjectForKey:@"EgressProxyURL"];
          if (v13)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
      }
    }

    v14 = [a1 overridePreferredProxy];

    if (v96 && !v14)
    {
      v13 = v96;
      goto LABEL_28;
    }

    v15 = [a1 overridePreferredProxy];

    if (v15)
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = a1[13];
      v94 = [obj countByEnumeratingWithState:&v102 objects:buf count:16];
      if (v94)
      {
        v92 = *v103;
LABEL_16:
        v16 = 0;
        while (1)
        {
          if (*v103 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v102 + 1) + 8 * v16);
          v18 = a1[11];
          v19 = [v18 objectAtIndex:{*objc_msgSend(v17, "proxies")}];

          v20 = a1[11];
          v21 = [v20 objectAtIndex:{*(objc_msgSend(v17, "proxies") + 1)}];

          v22 = [v19 proxyURL];
          v23 = [a1 overridePreferredProxy];
          if ([v22 isEqualToString:v23])
          {
            break;
          }

          v24 = [v21 proxyURL];
          v25 = [a1 overridePreferredProxy];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            goto LABEL_25;
          }

          if (v94 == ++v16)
          {
            v94 = [obj countByEnumeratingWithState:&v102 objects:buf count:16];
            if (v94)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }
        }

LABEL_25:
        v27 = v17;

        if (!v27)
        {
          goto LABEL_27;
        }

        v13 = v27;
        goto LABEL_28;
      }

LABEL_23:
    }

LABEL_27:
    v13 = sub_100024FFC(a1[14]);
    if (!v13)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v107 = sub_100001F14;
      v108 = sub_100005818;
      v109 = os_transaction_create();
      v83 = NPGetInternalQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100026A98;
      block[3] = &unk_100109450;
      block[4] = a1;
      block[5] = buf;
      dispatch_async(v83, block);

      _Block_object_dispose(buf, 8);
      goto LABEL_61;
    }

LABEL_28:
    v28 = a1[11];
    v93 = v13;
    v29 = [v28 objectAtIndexedSubscript:{*objc_msgSend(v13, "proxies")}];

    v30 = a1[11];
    v95 = [v30 objectAtIndexedSubscript:{*(objc_msgSend(v13, "proxies") + 1)}];

    if (v29)
    {
      if (v95)
      {
        v31 = [a1 overrideIngressProxy];
        if (v31)
        {
        }

        else
        {
          v32 = [a1 overrideIngressProxyKey];

          if (!v32)
          {
            v33 = v29;
            goto LABEL_38;
          }
        }

        v33 = [v29 copy];

        v34 = [a1 overrideIngressProxy];

        if (v34)
        {
          v35 = [a1 overrideIngressProxy];
          [v33 setProxyURL:v35];
        }

        v36 = [a1 overrideIngressProxyKey];

        if (v36)
        {
          [v33 clearProxyKeyInfos];
          v37 = [a1 overrideIngressProxyKey];
          [v33 addProxyKeyInfo:v37];
        }

LABEL_38:
        v89 = v33;
        obja = sub_100025A90(a1, v33);
        v38 = sub_100025A90(a1, v95);
        v39 = v38;
        if (obja)
        {
          if (v38)
          {
            v40 = -[NSPCandidateProxyPath initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:]([NSPCandidateQuicProxyPath alloc], "initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:", obja, v38, [v93 weight], 0, 0);
            v41 = a1[28];
            a1[28] = v40;

            v42 = nplog_obj();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v88 = a1[28];
              v43 = [v88 ingressProxy];
              v44 = v43;
              if (v43)
              {
                v45 = *(v43 + 24);
              }

              else
              {
                v45 = 0;
              }

              v46 = v45;
              v47 = [v46 vendor];
              v48 = a1[28];
              v49 = [v48 egressProxy];
              v50 = v49;
              if (v49)
              {
                v51 = *(v49 + 24);
              }

              else
              {
                v51 = 0;
              }

              v52 = v51;
              v53 = [v52 vendor];
              *buf = 138412546;
              *&buf[4] = v47;
              *&buf[12] = 2112;
              *&buf[14] = v53;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting candidate proxy path ([%@]-[%@])", buf, 0x16u);
            }

            v3 = a1[28];
            goto LABEL_47;
          }

          v86 = nplog_obj();
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
LABEL_70:

            goto LABEL_61;
          }

          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyAgentManager setupCandidateQuicProxyPath:]";
          v87 = "%s called with null egressProxyTokenInfo";
        }

        else
        {
          v86 = nplog_obj();
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyAgentManager setupCandidateQuicProxyPath:]";
          v87 = "%s called with null ingressProxyTokenInfo";
        }

        _os_log_fault_impl(&_mh_execute_header, v86, OS_LOG_TYPE_FAULT, v87, buf, 0xCu);
        goto LABEL_70;
      }

      v84 = nplog_obj();
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
LABEL_66:

        goto LABEL_61;
      }

      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyAgentManager setupCandidateQuicProxyPath:]";
      v85 = "%s called with null egressProxyInfo";
    }

    else
    {
      v84 = nplog_obj();
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_66;
      }

      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyAgentManager setupCandidateQuicProxyPath:]";
      v85 = "%s called with null ingressProxyInfo";
    }

    _os_log_fault_impl(&_mh_execute_header, v84, OS_LOG_TYPE_FAULT, v85, buf, 0xCu);
    goto LABEL_66;
  }

LABEL_47:
  if ([v3 proxyPathReady])
  {
    v54 = nplog_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = a1[28];
      v56 = [v55 ingressProxy];
      v57 = v56;
      if (v56)
      {
        v58 = *(v56 + 24);
      }

      else
      {
        v58 = 0;
      }

      v59 = v58;
      v60 = [v59 vendor];
      v61 = a1[28];
      v62 = [v61 egressProxy];
      v63 = v62;
      if (v62)
      {
        v64 = *(v62 + 24);
      }

      else
      {
        v64 = 0;
      }

      v65 = v64;
      v66 = [v65 vendor];
      *buf = 138412546;
      *&buf[4] = v60;
      *&buf[12] = 2112;
      *&buf[14] = v66;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Setting quic proxy path ([%@]-[%@])", buf, 0x16u);
    }

    sub_10002664C(a1);
  }

  else
  {
    v67 = a1[28];
    v68 = [v67 ingressProxy];
    v69 = v68;
    if (v68)
    {
      v70 = *(v68 + 24);
    }

    else
    {
      v70 = 0;
    }

    v71 = v70;

    v72 = a1[28];
    v73 = [v72 egressProxy];
    v74 = v73;
    if (v73)
    {
      v75 = *(v73 + 24);
    }

    else
    {
      v75 = 0;
    }

    v76 = v75;

    v77 = a1[28];
    v78 = [v77 ingressProxy];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100026B04;
    v99[3] = &unk_100109910;

    v100 = v71;
    v79 = v71;
    sub_1000058A8(v78, v99);

    v80 = a1[28];
    v81 = [v80 egressProxy];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100026BEC;
    v97[3] = &unk_100109910;

    v98 = v76;
    v82 = v76;
    sub_1000058A8(v81, v97);
  }

  sub_100025F60(a1);
  [a1 updateUserEventAgentData];
  sub_100026CD4(a1);
LABEL_61:
}

void sub_100022D8C(id *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_58;
  }

  v4 = a1[29];
  if (v4)
  {
    goto LABEL_40;
  }

  v5 = a1[21];
  if (v5)
  {
    v6 = v5;
    v7 = a1[21];
    v8 = [v7 objectForKeyedSubscript:@"IngressFallbackProxyURL"];
    if (v8)
    {
      v9 = v8;
      v10 = [a1[21] objectForKeyedSubscript:@"EgressFallbackProxyURL"];

      if (v10)
      {
        v11 = a1[21];
        v12 = [v11 objectForKeyedSubscript:@"IngressFallbackProxyURL"];
        v13 = [a1[21] objectForKeyedSubscript:@"EgressFallbackProxyURL"];
        v14 = sub_1000256F4(a1, v12, v13);

        [a1[21] removeObjectForKey:@"IngressFallbackProxyURL"];
        [a1[21] removeObjectForKey:@"EgressFallbackProxyURL"];
        if (v14)
        {
LABEL_14:
          v17 = a1[11];
          v18 = [v17 objectAtIndexedSubscript:{*objc_msgSend(v14, "proxies")}];

          v19 = a1[11];
          v20 = [v19 objectAtIndexedSubscript:{*(objc_msgSend(v14, "proxies") + 1)}];

          if (v18)
          {
            if (v20)
            {
              v21 = [a1 overrideFallbackIngressProxy];
              if (v21)
              {
              }

              else
              {
                v22 = [a1 overrideIngressProxyKey];

                if (!v22)
                {
                  v23 = v18;
                  goto LABEL_27;
                }
              }

              v23 = [v18 copy];

              v24 = [a1 overrideFallbackIngressProxy];

              if (v24)
              {
                v25 = [a1 overrideFallbackIngressProxy];
                [v23 setProxyURL:v25];
              }

              v26 = [a1 overrideIngressProxyKey];

              if (v26)
              {
                [v23 clearProxyKeyInfos];
                v27 = [a1 overrideIngressProxyKey];
                [v23 addProxyKeyInfo:v27];
              }

LABEL_27:
              v29 = sub_100025A90(a1, v23);
              v30 = sub_100025A90(a1, v20);
              v31 = v30;
              if (v29)
              {
                if (v30)
                {
                  v32 = -[NSPCandidateProxyPath initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:]([NSPCandidateFallbackProxyPath alloc], "initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:", v29, v30, [v14 weight], 0, 0);
                  v33 = a1[29];
                  a1[29] = v32;

                  v34 = nplog_obj();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    v35 = a1[29];
                    v36 = [v35 ingressProxy];
                    v105 = v36;
                    v107 = v35;
                    if (v36)
                    {
                      v37 = *(v36 + 24);
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = v37;
                    v102 = [v38 tcpProxyFqdn];
                    v39 = a1[29];
                    v40 = [v39 ingressProxy];
                    v103 = v38;
                    v101 = v40;
                    if (v40)
                    {
                      v41 = *(v40 + 24);
                    }

                    else
                    {
                      v41 = 0;
                    }

                    v100 = v41;
                    v99 = [v100 vendor];
                    v98 = a1[29];
                    v42 = [v98 egressProxy];
                    v43 = v42;
                    v115 = v20;
                    v117 = v14;
                    v109 = v31;
                    v111 = v29;
                    if (v42)
                    {
                      v44 = *(v42 + 24);
                    }

                    else
                    {
                      v44 = 0;
                    }

                    v45 = v44;
                    v46 = [v45 tcpProxyFqdn];
                    v47 = a1[29];
                    v48 = [v47 egressProxy];
                    v49 = v48;
                    v119 = v3;
                    v113 = v23;
                    v97 = v45;
                    if (v48)
                    {
                      v50 = *(v48 + 24);
                    }

                    else
                    {
                      v50 = 0;
                    }

                    v51 = v50;
                    v52 = [v51 vendor];
                    *buf = 138413058;
                    v126 = v102;
                    v127 = 2112;
                    v128 = v99;
                    v129 = 2112;
                    v130 = v46;
                    v131 = 2112;
                    v132 = v52;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Setting candidate fallback proxy path (%@[%@]-%@[%@])", buf, 0x2Au);

                    v14 = v117;
                    v3 = v119;
                    v23 = v113;
                    v20 = v115;
                    v31 = v109;
                    v29 = v111;
                  }

                  v4 = a1[29];
LABEL_40:
                  if ([v4 proxyPathReady])
                  {
                    v53 = nplog_obj();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      v54 = a1[29];
                      v55 = [v54 ingressProxy];
                      v116 = v55;
                      if (v55)
                      {
                        v56 = *(v55 + 24);
                      }

                      else
                      {
                        v56 = 0;
                      }

                      v57 = v56;
                      v58 = [v57 tcpProxyFqdn];
                      v59 = a1[29];
                      v60 = [v59 ingressProxy];
                      v118 = v54;
                      v110 = v60;
                      if (v60)
                      {
                        v61 = *(v60 + 24);
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v62 = v61;
                      v63 = [v62 vendor];
                      v64 = a1[29];
                      v65 = [v64 egressProxy];
                      v66 = v65;
                      v120 = v3;
                      v112 = v59;
                      v106 = v63;
                      v108 = v62;
                      v67 = v58;
                      if (v65)
                      {
                        v68 = *(v65 + 24);
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v69 = v68;
                      v70 = [v69 tcpProxyFqdn];
                      v71 = a1[29];
                      v72 = [v71 egressProxy];
                      v73 = v72;
                      v114 = v57;
                      v104 = v64;
                      if (v72)
                      {
                        v74 = *(v72 + 24);
                      }

                      else
                      {
                        v74 = 0;
                      }

                      v75 = v74;
                      v76 = [v75 vendor];
                      *buf = 138413058;
                      v126 = v67;
                      v127 = 2112;
                      v128 = v106;
                      v129 = 2112;
                      v130 = v70;
                      v131 = 2112;
                      v132 = v76;
                      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Setting fallback proxy path (%@[%@]-%@[%@])", buf, 0x2Au);

                      v3 = v120;
                    }

                    sub_100027D78(a1);
                  }

                  else
                  {
                    v77 = a1[29];
                    v78 = [v77 ingressProxy];
                    v79 = v78;
                    if (v78)
                    {
                      v80 = *(v78 + 24);
                    }

                    else
                    {
                      v80 = 0;
                    }

                    v81 = v80;

                    v82 = a1[29];
                    v83 = [v82 egressProxy];
                    v84 = v83;
                    if (v83)
                    {
                      v85 = *(v83 + 24);
                    }

                    else
                    {
                      v85 = 0;
                    }

                    v86 = v85;

                    v87 = a1[29];
                    v88 = [v87 ingressProxy];
                    v123[0] = _NSConcreteStackBlock;
                    v123[1] = 3221225472;
                    v123[2] = sub_1000281B4;
                    v123[3] = &unk_100109910;

                    v124 = v81;
                    v89 = v81;
                    sub_1000058A8(v88, v123);

                    v90 = a1[29];
                    v91 = [v90 egressProxy];
                    v121[0] = _NSConcreteStackBlock;
                    v121[1] = 3221225472;
                    v121[2] = sub_10002829C;
                    v121[3] = &unk_100109910;

                    v122 = v86;
                    v92 = v86;
                    sub_1000058A8(v91, v121);
                  }

                  sub_100025F60(a1);
                  [a1 updateUserEventAgentData];
                  sub_100026CD4(a1);
                  goto LABEL_58;
                }

                v95 = nplog_obj();
                if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_66;
                }

                *buf = 136315138;
                v126 = "[NSPPrivacyProxyAgentManager setupCandidateFallbackProxyPath:]";
                v96 = "%s called with null egressFallbackProxyTokenInfo";
              }

              else
              {
                v95 = nplog_obj();
                if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
                {
LABEL_66:

                  goto LABEL_67;
                }

                *buf = 136315138;
                v126 = "[NSPPrivacyProxyAgentManager setupCandidateFallbackProxyPath:]";
                v96 = "%s called with null ingressFallbackProxyTokenInfo";
              }

              _os_log_fault_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, v96, buf, 0xCu);
              goto LABEL_66;
            }

            v93 = nplog_obj();
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
LABEL_62:

LABEL_67:
              goto LABEL_58;
            }

            *buf = 136315138;
            v126 = "[NSPPrivacyProxyAgentManager setupCandidateFallbackProxyPath:]";
            v94 = "%s called with null egressFallbackProxyInfo";
          }

          else
          {
            v93 = nplog_obj();
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_62;
            }

            *buf = 136315138;
            v126 = "[NSPPrivacyProxyAgentManager setupCandidateFallbackProxyPath:]";
            v94 = "%s called with null ingressFallbackProxyInfo";
          }

          _os_log_fault_impl(&_mh_execute_header, v93, OS_LOG_TYPE_FAULT, v94, buf, 0xCu);
          goto LABEL_62;
        }
      }
    }

    else
    {
    }
  }

  v15 = [a1 overridePreferredProxy];

  if (v3 && !v15)
  {
    v16 = v3;
LABEL_13:
    v14 = v16;
    goto LABEL_14;
  }

  v16 = sub_1000251D8(a1);
  if (v16)
  {
    goto LABEL_13;
  }

  v28 = nplog_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "no available fallback proxy path", buf, 2u);
  }

LABEL_58:
}

void sub_100023CAC(uint64_t a1)
{
  v2 = objc_alloc_init(NSPProbeStats);
  v3 = [a1 tierString];
  [(NSPProbeStats *)v2 setTierType:v3];

  [(NSPProbeStats *)v2 setProbeReason:*(a1 + 520)];
  v4 = [*(a1 + 368) interface];
  v5 = +[NPUtilities getInterfaceTypeString:](NPUtilities, "getInterfaceTypeString:", [v4 type]);
  [(NSPProbeStats *)v2 setProbeInterface:v5];

  v6 = *(a1 + 272);
  v7 = *(a1 + 280);
  [v7 timeIntervalSinceDate:v6];
  [(NSPProbeStats *)v2 setProbeDurationSec:v8];

  v9 = *(a1 + 240);
  if (v9)
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = 0;
  }

  [(NSPProbeStats *)v2 setProxyProbeCount:v10];
  v11 = *(a1 + 240);
  if (v11)
  {
    v12 = *(v11 + 96);
  }

  else
  {
    v12 = 0;
  }

  [(NSPProbeStats *)v2 setProxyProbeSuccessCount:v12];
  v13 = *(a1 + 240);
  if (v13)
  {
    v14 = *(v13 + 104);
  }

  else
  {
    v14 = 0;
  }

  [(NSPProbeStats *)v2 setProxyProbeFailedCount:v14];
  v15 = *(a1 + 240);
  if (v15)
  {
    v16 = *(v15 + 112);
  }

  else
  {
    v16 = 0;
  }

  [(NSPProbeStats *)v2 setProxyProbeRedirectedCount:v16];
  v17 = *(a1 + 240);
  if (v17)
  {
    v18 = *(v17 + 120);
  }

  else
  {
    v18 = 0;
  }

  [(NSPProbeStats *)v2 setProxyProbeServerErrorCount:v18];
  v19 = *(a1 + 248);
  if (v19)
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = 0;
  }

  [(NSPProbeStats *)v2 setDirectProbeCount:v20];
  v21 = *(a1 + 248);
  if (v21)
  {
    v22 = *(v21 + 96);
  }

  else
  {
    v22 = 0;
  }

  [(NSPProbeStats *)v2 setDirectProbeSuccessCount:v22];
  v23 = *(a1 + 248);
  if (v23)
  {
    v24 = *(v23 + 104);
  }

  else
  {
    v24 = 0;
  }

  [(NSPProbeStats *)v2 setDirectProbeFailedCount:v24];
  v25 = *(a1 + 248);
  if (v25)
  {
    v26 = *(v25 + 112);
  }

  else
  {
    v26 = 0;
  }

  [(NSPProbeStats *)v2 setDirectProbeRedirectedCount:v26];
  v27 = *(a1 + 248);
  if (v27)
  {
    v28 = *(v27 + 120);
  }

  else
  {
    v28 = 0;
  }

  [(NSPProbeStats *)v2 setDirectProbeServerErrorCount:v28];
  [(NSPProxyAnalytics *)v2 sendAnalytics];

  v29 = *(a1 + 248);
  *(a1 + 248) = 0;

  v30 = *(a1 + 240);
  *(a1 + 240) = 0;

  v31 = *(a1 + 272);
  *(a1 + 272) = 0;

  v32 = *(a1 + 280);
  *(a1 + 280) = 0;

  *(a1 + 520) = 0;
}

void sub_100023ED0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 536), a2);
  }
}

void sub_100023EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 344);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 resetError];
          if (v3)
          {
            [v9 handleNetworkCharacteristicsChange:v3];
          }

          else
          {
            [v9 resetStats];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 144);
    if (v10)
    {
      *(a1 + 144) = 0;

      sub_100029374(a1);
    }
  }
}

void sub_1000246C8(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Token issuance limit timer fired", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 360);
    }

    else
    {
      v5 = 0;
    }

    dispatch_source_cancel(v5);
    sub_1000201C0(*(a1 + 32));
    sub_10001B680(*(a1 + 32), 0);
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_100001F14;
    v18 = sub_100005818;
    v19 = os_transaction_create();
    v6 = WeakRetained[11];
    v7 = WeakRetained[12];
    v8 = WeakRetained[13];
    v9 = WeakRetained[15];
    v10 = WeakRetained[17];
    v11 = WeakRetained[19];
    [WeakRetained updateProxyInfo:v6 resolverInfo:v7 proxyPathList:v8 fallbackProxyPathList:v9 obliviousConfigs:v10 proxiedContentMaps:v11];

    v12 = NPGetInternalQueue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000248EC;
    v13[3] = &unk_100109450;
    v13[4] = *(a1 + 32);
    v13[5] = buf;
    dispatch_async(v12, v13);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1000248D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000248EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tokenIssuanceAllowed];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t sub_100024954(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 proxyHop] != 2)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "[NSPPrivacyProxyAgentManager alternateEgressProxyExists:proxyPathEnumerator:]";
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null (proxyTokenInfo.proxyInfo.proxyHop == NSPPrivacyProxyProxyInfo_ProxyHop_EGRESS_ONLY)", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (v5)
  {
    v8 = v5[3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 proxyURL];
  v10 = [a1 overridePreferredProxy];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v27 = v6;
      v16 = *v29;
LABEL_10:
      v17 = 0;
      while (1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if ([v18 weight])
        {
          v19 = a1[11];
          v20 = [v19 objectAtIndex:{*(objc_msgSend(v18, "proxies") + 1)}];

          v21 = [v20 proxyURL];
          v22 = v5 ? v5[3] : 0;
          v23 = [v22 proxyURL];
          v24 = [v21 isEqualToString:v23];

          if (!v24)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v25 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v15 = v25;
          if (!v25)
          {
            v12 = 0;
            goto LABEL_23;
          }

          goto LABEL_10;
        }
      }

      v12 = 1;
LABEL_23:
      v6 = v27;
      goto LABEL_27;
    }

LABEL_26:
    v12 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

void sub_100024BD4(id *a1, void *a2)
{
  v3 = a2;
  if (a1 && sub_100024954(a1, v3, a1[14]))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = a1[14];
    v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = a1[11];
          v10 = [v9 objectAtIndex:{*(objc_msgSend(v8, "proxies") + 1)}];

          v11 = [v10 proxyURL];
          v12 = [v3[3] proxyURL];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v14 = nplog_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v3[3];
              v16 = [v15 vendor];
              *buf = 138412290;
              v23 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "remove %@ from proxy path enumerator", buf, 0xCu);
            }

            [a1[14] removeObject:v8];
            goto LABEL_15;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

void sub_100024DE8(id *a1, void *a2)
{
  v3 = a2;
  if (a1 && sub_100024954(a1, v3, a1[16]))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = a1[16];
    v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = a1[11];
          v10 = [v9 objectAtIndex:{*(objc_msgSend(v8, "proxies") + 1)}];

          v11 = [v10 proxyURL];
          v12 = [v3[3] proxyURL];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v14 = nplog_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v3[3];
              v16 = [v15 vendor];
              *buf = 138412290;
              v23 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "remove %@ from proxy path enumerator", buf, 0xCu);
            }

            [a1[16] removeObject:v8];
            goto LABEL_15;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

id sub_100024FFC(void *a1)
{
  v1 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v22;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v4 += [*(*(&v21 + 1) + 8 * i) weight];
    }

    v3 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v3);
  if (v4)
  {
    do
    {
      v7 = arc4random_uniform(v4 + 1);
    }

    while (!v7);
    v8 = v7;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v1;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v18;
      v13 = v8;
      while (2)
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          v11 += [v15 weight];
          if (v11 >= v13)
          {
            v10 = v15;
            goto LABEL_21;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
LABEL_19:
    v10 = 0;
  }

  return v10;
}

id sub_1000251D8(id *a1)
{
  if (a1)
  {
    v2 = [a1 overridePreferredProxy];

    if (v2)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = a1[15];
      v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v18)
      {
        v17 = *v20;
LABEL_5:
        v3 = 0;
        while (1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v19 + 1) + 8 * v3);
          v5 = a1[11];
          v6 = [v5 objectAtIndex:{*objc_msgSend(v4, "proxies")}];

          v7 = a1[11];
          v8 = [v7 objectAtIndex:{*(objc_msgSend(v4, "proxies") + 1)}];

          v9 = [v6 proxyURL];
          v10 = [a1 overridePreferredProxy];
          if ([v9 isEqualToString:v10])
          {
            break;
          }

          v11 = [v8 proxyURL];
          v12 = [a1 overridePreferredProxy];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            goto LABEL_14;
          }

          if (v18 == ++v3)
          {
            v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v18)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }

LABEL_14:
        v14 = v4;

        if (v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
LABEL_12:
      }
    }

    v14 = sub_100024FFC(a1[16]);
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  return v14;
}

id *sub_100025424(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    obj = nplog_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v33 = "[NSPPrivacyProxyAgentManager proxyPathWithIngressProxyURL:egressProxyURL:]";
    v23 = "%s called with null ingressProxyURL";
    goto LABEL_24;
  }

  if (v24)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = a1[13];
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = a1[11];
          v12 = [v11 objectAtIndex:{*objc_msgSend(v10, "proxies")}];

          v13 = a1[11];
          v14 = [v13 objectAtIndex:{*(objc_msgSend(v10, "proxies") + 1)}];

          v15 = [v12 proxyURL];
          if ([v15 isEqualToString:v5])
          {
            [v14 proxyURL];
            v26 = v12;
            v16 = a1;
            v17 = v7;
            v18 = v8;
            v20 = v19 = v5;
            v21 = [v20 isEqualToString:v24];

            v5 = v19;
            v8 = v18;
            v7 = v17;
            a1 = v16;
            v12 = v26;

            if (v21)
            {
              a1 = v10;

              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    goto LABEL_15;
  }

  obj = nplog_obj();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v33 = "[NSPPrivacyProxyAgentManager proxyPathWithIngressProxyURL:egressProxyURL:]";
    v23 = "%s called with null egressProxyURL";
LABEL_24:
    _os_log_fault_impl(&_mh_execute_header, obj, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
  }

LABEL_15:
  a1 = 0;
LABEL_16:

LABEL_17:

  return a1;
}

id *sub_1000256F4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    obj = nplog_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v33 = "[NSPPrivacyProxyAgentManager fallbackProxyPathWithIngressProxyURL:egressProxyURL:]";
    v23 = "%s called with null ingressProxyURL";
    goto LABEL_24;
  }

  if (v24)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = a1[15];
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = a1[11];
          v12 = [v11 objectAtIndex:{*objc_msgSend(v10, "proxies")}];

          v13 = a1[11];
          v14 = [v13 objectAtIndex:{*(objc_msgSend(v10, "proxies") + 1)}];

          v15 = [v12 proxyURL];
          if ([v15 isEqualToString:v5])
          {
            [v14 proxyURL];
            v26 = v12;
            v16 = a1;
            v17 = v7;
            v18 = v8;
            v20 = v19 = v5;
            v21 = [v20 isEqualToString:v24];

            v5 = v19;
            v8 = v18;
            v7 = v17;
            a1 = v16;
            v12 = v26;

            if (v21)
            {
              a1 = v10;

              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    goto LABEL_15;
  }

  obj = nplog_obj();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v33 = "[NSPPrivacyProxyAgentManager fallbackProxyPathWithIngressProxyURL:egressProxyURL:]";
    v23 = "%s called with null egressProxyURL";
LABEL_24:
    _os_log_fault_impl(&_mh_execute_header, obj, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
  }

LABEL_15:
  a1 = 0;
LABEL_16:

LABEL_17:

  return a1;
}

void sub_1000259C4(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Proxy path restore timer fired", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[13];
    v6 = [v5 mutableCopy];
    v7 = *(v4 + 112);
    *(v4 + 112) = v6;

    v8 = *(v4 + 120);
    v9 = [v8 mutableCopy];
    v10 = *(v4 + 128);
    *(v4 + 128) = v9;

    sub_100023EE0(v4, 0);
  }
}

NSPProxyTokenInfo *sub_100025A90(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    p_super = nplog_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NSPPrivacyProxyAgentManager getProxyTokenInfoForProxyInfo:]";
      _os_log_fault_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_FAULT, "%s called with null proxyInfo", buf, 0xCu);
    }

    goto LABEL_29;
  }

  obj = a2;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  p_super = *(a1 + 352);
  v6 = [p_super countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(p_super);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        if (v10)
        {
          v11 = v10[3];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 proxyURL];
        v13 = [v4 proxyURL];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v27 = v10;
          goto LABEL_20;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = [p_super countByEnumeratingWithState:&v32 objects:v36 count:16];
      v7 = v15;
    }

    while (v15);
  }

  v16 = [NSPProxyTokenInfo alloc];
  v17 = *(a1 + 368);
  v18 = *(a1 + 13);
  v19 = *(a1 + 12);
  v20 = a1;
  v21 = v4;
  v22 = v17;
  if (v16)
  {
    v23 = [(NSPProxyTokenInfo *)v16 init];
    v16 = v23;
    if (v23)
    {
      objc_storeWeak(&v23->_delegate, v20);
      objc_storeStrong(&v16->_proxyInfo, obj);
      objc_storeStrong(&v16->_tokenPath, v17);
      v16->_subscriber = v18;
      v16->_useDefaultInterface = v19;
      v24 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v16->_tokenPath];
      v25 = [v24 objectForKeyedSubscript:@"Signature"];
      networkSignature = v16->_networkSignature;
      v16->_networkSignature = v25;
    }
  }

  if (!v16)
  {
    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NSPPrivacyProxyAgentManager getProxyTokenInfoForProxyInfo:]";
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", buf, 0xCu);
    }

    p_super = 0;
LABEL_29:
    v28 = 0;
    goto LABEL_21;
  }

  [*(a1 + 352) addObject:v16];
  sub_1000053B8(v16);
  v27 = v16;
  p_super = &v27->super;
LABEL_20:
  v28 = v27;
LABEL_21:

  return v28;
}

void *sub_100025DB0(uint64_t a1, int a2)
{
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 352);
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

          v9 = *(*(&v18 + 1) + 8 * v8);
          if (v9)
          {
            v10 = v9[3];
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;
          if ([v11 proxyHop] != 2)
          {
            goto LABEL_19;
          }

          if (a2)
          {
            v12 = v9 ? v9[3] : 0;
            v2 = v12;
            if (([v2 supportsFallback] & 1) == 0)
            {

LABEL_19:
              goto LABEL_20;
            }
          }

          v13 = sub_1000071A0(v9);
          v14 = sub_100006674(v9);
          if (a2)
          {
          }

          if (v13 >= v14)
          {
            v16 = v9;
            goto LABEL_26;
          }

LABEL_20:
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v15 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v6 = v15;
      }

      while (v15);
    }

    v16 = 0;
LABEL_26:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_100025F60(id *a1)
{
  if (a1)
  {
    v54 = objc_alloc_init(NSMutableArray);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v2 = a1[44];
    v3 = [v2 countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (!v3)
    {
      goto LABEL_90;
    }

    v4 = v3;
    v5 = *v86;
    v55 = *v86;
    v56 = v2;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v86 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v85 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(v7 + 24);
        }

        else
        {
          v8 = 0;
        }

        if ([v8 proxyHop] == 1)
        {
          v9 = a1[26];
          if ([v9 matchIngress:v7])
          {
            goto LABEL_55;
          }

          v10 = a1[27];
          if ([v10 matchIngress:v7])
          {
            goto LABEL_54;
          }

          v11 = a1[28];
          if ([v11 matchIngress:v7])
          {
            goto LABEL_53;
          }

          v12 = [a1[29] matchIngress:v7];

          if (v12)
          {
            goto LABEL_56;
          }

          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v13 = a1[38];
          v14 = [v13 countByEnumeratingWithState:&v81 objects:v95 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v82;
LABEL_16:
            v17 = 0;
            while (1)
            {
              if (*v82 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [a1[38] objectForKeyedSubscript:*(*(&v81 + 1) + 8 * v17)];
              v19 = [v18 matchIngress:v7];

              if (v19)
              {
                goto LABEL_84;
              }

              if (v15 == ++v17)
              {
                v15 = [v13 countByEnumeratingWithState:&v81 objects:v95 count:16];
                if (v15)
                {
                  goto LABEL_16;
                }

                break;
              }
            }
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v13 = a1[39];
          v20 = [v13 countByEnumeratingWithState:&v77 objects:v94 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v78;
LABEL_24:
            v23 = 0;
            while (1)
            {
              if (*v78 != v22)
              {
                objc_enumerationMutation(v13);
              }

              v24 = [a1[39] objectForKeyedSubscript:*(*(&v77 + 1) + 8 * v23)];
              v25 = [v24 matchIngress:v7];

              if (v25)
              {
                goto LABEL_84;
              }

              if (v21 == ++v23)
              {
                v21 = [v13 countByEnumeratingWithState:&v77 objects:v94 count:16];
                if (v21)
                {
                  goto LABEL_24;
                }

                break;
              }
            }
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v26 = a1[40];
          v27 = [v26 countByEnumeratingWithState:&v73 objects:v93 count:16];
          v5 = v55;
          if (v27)
          {
            v28 = v27;
            v29 = *v74;
LABEL_32:
            v30 = 0;
            while (1)
            {
              if (*v74 != v29)
              {
                objc_enumerationMutation(v26);
              }

              if ([*(*(&v73 + 1) + 8 * v30) matchIngress:v7])
              {
                break;
              }

              if (v28 == ++v30)
              {
                v28 = [v26 countByEnumeratingWithState:&v73 objects:v93 count:16];
                if (v28)
                {
                  goto LABEL_32;
                }

                goto LABEL_38;
              }
            }

LABEL_85:

LABEL_86:
            v2 = v56;
            goto LABEL_56;
          }

LABEL_38:

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v26 = a1[43];
          v31 = [v26 countByEnumeratingWithState:&v69 objects:v92 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v70;
LABEL_40:
            v34 = 0;
            while (1)
            {
              if (*v70 != v33)
              {
                objc_enumerationMutation(v26);
              }

              if ([*(*(&v69 + 1) + 8 * v34) matchIngress:v7])
              {
                goto LABEL_85;
              }

              if (v32 == ++v34)
              {
                v32 = [v26 countByEnumeratingWithState:&v69 objects:v92 count:16];
                if (v32)
                {
                  goto LABEL_40;
                }

                break;
              }
            }
          }

          [v54 addObject:v7];
          v2 = v56;
        }

        if (v7)
        {
          v35 = *(v7 + 24);
        }

        else
        {
          v35 = 0;
        }

        if ([v35 proxyHop] == 2)
        {
          v9 = a1[26];
          if ([v9 matchEgress:v7])
          {
            goto LABEL_55;
          }

          v10 = a1[27];
          if ([v10 matchEgress:v7])
          {
            goto LABEL_54;
          }

          v11 = a1[28];
          if ([v11 matchEgress:v7])
          {
LABEL_53:

LABEL_54:
LABEL_55:

            goto LABEL_56;
          }

          v36 = [a1[29] matchEgress:v7];

          if ((v36 & 1) == 0)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v13 = a1[38];
            v37 = [v13 countByEnumeratingWithState:&v65 objects:v91 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v66;
LABEL_61:
              v40 = 0;
              while (1)
              {
                if (*v66 != v39)
                {
                  objc_enumerationMutation(v13);
                }

                v41 = [a1[38] objectForKeyedSubscript:*(*(&v65 + 1) + 8 * v40)];
                v42 = [v41 matchEgress:v7];

                if (v42)
                {
                  goto LABEL_84;
                }

                if (v38 == ++v40)
                {
                  v38 = [v13 countByEnumeratingWithState:&v65 objects:v91 count:16];
                  if (v38)
                  {
                    goto LABEL_61;
                  }

                  break;
                }
              }
            }

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v13 = a1[39];
            v43 = [v13 countByEnumeratingWithState:&v61 objects:v90 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v62;
LABEL_69:
              v46 = 0;
              while (1)
              {
                if (*v62 != v45)
                {
                  objc_enumerationMutation(v13);
                }

                v47 = [a1[39] objectForKeyedSubscript:*(*(&v61 + 1) + 8 * v46)];
                v48 = [v47 matchEgress:v7];

                if (v48)
                {
                  break;
                }

                if (v44 == ++v46)
                {
                  v44 = [v13 countByEnumeratingWithState:&v61 objects:v90 count:16];
                  if (v44)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_75;
                }
              }

LABEL_84:

              v5 = v55;
              v2 = v56;
              goto LABEL_56;
            }

LABEL_75:

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v26 = a1[40];
            v49 = [v26 countByEnumeratingWithState:&v57 objects:v89 count:16];
            v5 = v55;
            if (v49)
            {
              v50 = v49;
              v51 = *v58;
LABEL_77:
              v52 = 0;
              while (1)
              {
                if (*v58 != v51)
                {
                  objc_enumerationMutation(v26);
                }

                if ([*(*(&v57 + 1) + 8 * v52) matchEgress:v7])
                {
                  goto LABEL_85;
                }

                if (v50 == ++v52)
                {
                  v50 = [v26 countByEnumeratingWithState:&v57 objects:v89 count:16];
                  if (v50)
                  {
                    goto LABEL_77;
                  }

                  break;
                }
              }
            }

            [v54 addObject:v7];
            goto LABEL_86;
          }
        }

LABEL_56:
        v6 = v6 + 1;
      }

      while (v6 != v4);
      v53 = [v2 countByEnumeratingWithState:&v85 objects:v96 count:16];
      v4 = v53;
      if (!v53)
      {
LABEL_90:

        [a1[44] removeObjectsInArray:v54];
        return;
      }
    }
  }
}

void sub_10002664C(uint64_t a1)
{
  v1 = (a1 + 224);
  if (*(a1 + 224))
  {
    if (([a1 forceFallback] & 1) == 0)
    {
      v43 = [*(a1 + 208) egressProxy];
      v3 = *(a1 + 208);
      v4 = &AnalyticsSendEventLazy_ptr;
      if (v3)
      {
        v5 = *v1;
        v6 = v3;
        v7 = [v5 ingressProxy];
        v8 = *v1;
        v9 = [v8 egressProxy];
        v10 = *v1;
        [v6 updateIngressProxy:v7 egressProxy:v9 proxyPathWeight:{objc_msgSend(v10, "proxyPathWeight")}];
      }

      else
      {
        v39 = [NSPQuicProxyPath alloc];
        v42 = *(a1 + 224);
        v37 = [v42 ingressProxy];
        v41 = *(a1 + 224);
        v36 = [v41 egressProxy];
        v40 = *(a1 + 224);
        v11 = [v40 proxyPathWeight];
        v12 = *(a1 + 216);
        v13 = v12 != 0;
        v38 = v12;
        v14 = [a1 forceFallback];
        v15 = *(a1 + 13) ^ 1;
        v16 = *(a1 + 15);
        v17 = *(a1 + 400);
        v18 = *(a1 + 368);
        v19 = v17;
        v20 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v18];
        BYTE2(v35) = v16;
        BYTE1(v35) = v15;
        LOBYTE(v35) = v14;
        v21 = [NSPQuicProxyPath initWithDelegate:v39 ingressProxy:"initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:" egressProxy:a1 proxyPathWeight:v37 allowFallback:v36 fallbackToQUIC:v11 forceFallback:v13 allowFailOpen:0 geohashSharingEnabled:v35 configEpoch:v19 networkCharacteristics:v20];
        v22 = *(a1 + 208);
        *(a1 + 208) = v21;

        v4 = &AnalyticsSendEventLazy_ptr;
        [*(a1 + 208) resetSingleHopProxyAgent];
        [*(a1 + 208) resetMultiHopProxyAgent];
      }

      if (v43)
      {
        v23 = v43[3];
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v25 = [v24 vendor];
      v26 = *(a1 + 208);
      v27 = [v26 egressProxy];
      v28 = v27;
      if (v27)
      {
        v27 = v27[3];
      }

      v29 = [v27 vendor];
      v30 = v25;
      v31 = v29;
      v32 = v31;
      if (!(v30 | v31) || v30 && v31 && [v30 isEqual:v31])
      {
      }

      else
      {

        v24 = +[NSDate now];
        v30 = *(a1 + 288);
        *(a1 + 288) = v24;
      }

      [*(a1 + 208) resetStats];
      [*(a1 + 208) resetError];
      ++*(a1 + 480);
      ++*(a1 + 496);
      objc_storeStrong(v1, 0);
      [a1 tokensEmpty];
      v33 = v4[469];
      ++*(a1 + 544);
      [v33 postNotification:@"com.apple.networkserviceproxy.privacy-proxy-path-changed" value:?];
    }
  }

  else
  {
    v34 = nplog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v45 = "[NSPPrivacyProxyAgentManager setupQuicProxyPath]";
      _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "%s called with null self.candidateQuicProxyPath", buf, 0xCu);
    }
  }
}

void sub_100026A98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained refreshProxyInfo:9];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100026B04(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_100026BEC(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_100026CD4(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    [v2 setValue:&off_100113CF0 forKey:@"Version"];
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 208);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 ingressProxy];
      v7 = v6;
      if (v6)
      {
        v6 = v6[3];
      }

      v8 = [v6 proxyURL];
      [v3 setValue:v8 forKey:@"IngressProxyURL"];

      v9 = *(a1 + 208);
      v10 = [v9 egressProxy];
      v11 = v10;
      if (v10)
      {
        v10 = v10[3];
      }

      v12 = [v10 proxyURL];
      [v3 setValue:v12 forKey:@"EgressProxyURL"];
    }

    v13 = *(a1 + 216);
    if (v13)
    {
      v14 = v13;
      v15 = [v14 ingressProxy];
      v16 = v15;
      if (v15)
      {
        v15 = v15[3];
      }

      v17 = [v15 proxyURL];
      [v3 setValue:v17 forKey:@"IngressFallbackProxyURL"];

      v18 = *(a1 + 216);
      v19 = [v18 egressProxy];
      v20 = v19;
      if (v19)
      {
        v19 = v19[3];
      }

      v21 = [v19 proxyURL];
      [v3 setValue:v21 forKey:@"EgressFallbackProxyURL"];
    }

    if ([v3 count])
    {
      [v2 setValue:v3 forKey:@"ConfiguredProxies"];
    }

    v79 = v3;
    v80 = v2;
    v22 = objc_alloc_init(NSMutableArray);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v23 = *(a1 + 312);
    v24 = [v23 countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v87;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v87 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v86 + 1) + 8 * i);
          v29 = [*(a1 + 312) objectForKeyedSubscript:v28];
          v30 = [v29 domainFilter];

          if (v30)
          {
            v31 = objc_alloc_init(NSMutableDictionary);
            v32 = [v29 preferredPathConfigURI];
            [v31 setValue:v32 forKey:@"PreferredPathConfigURL"];

            v33 = [v29 domainFilter];
            [v31 setValue:v33 forKey:@"DomainFilter"];

            [v31 setValue:v28 forKey:@"Vendor"];
            [v22 addObject:v31];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v86 objects:v93 count:16];
      }

      while (v25);
    }

    v34 = v80;
    if ([v22 count])
    {
      [v80 setValue:v22 forKey:@"PreferredPaths"];
    }

    v35 = [a1 overridePreferredProxy];

    if (v35)
    {
      v36 = [a1 overridePreferredProxy];
      [v80 setValue:v36 forKey:@"OverridePreferredProxy"];
    }

    v37 = [a1 overridePreferredObliviousProxy];

    if (v37)
    {
      v38 = [a1 overridePreferredObliviousProxy];
      [v80 setValue:v38 forKey:@"OverridePreferredObliviousProxy"];
    }

    v39 = [a1 overrideIngressProxy];

    if (v39)
    {
      v40 = [a1 overrideIngressProxy];
      [v80 setValue:v40 forKey:@"OverrideIngressProxy"];
    }

    v41 = [a1 overrideFallbackIngressProxy];

    if (v41)
    {
      v42 = [a1 overrideFallbackIngressProxy];
      [v80 setValue:v42 forKey:@"OverrideFallbackIngressProxy"];
    }

    v43 = [a1 overrideIngressProxyKey];

    if (v43)
    {
      v44 = [a1 overrideIngressProxyKey];
      [v80 setValue:v44 forKey:@"OverrideIngressProxyKey"];
    }

    v45 = *(a1 + 160);
    if (v45)
    {
      [v80 setValue:v45 forKey:@"OverrideEnabledMaps"];
    }

    if (*(a1 + 11) == 1)
    {
      v46 = [NSNumber numberWithBool:1];
      [v80 setValue:v46 forKey:@"DisableProxiedContentDoHBootstrap"];
    }

    v47 = objc_alloc_init(NSMutableArray);
    v48 = *(a1 + 328);
    if (v48)
    {
      v78 = v22;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v49 = v48;
      v50 = [v49 countByEnumeratingWithState:&v82 objects:v92 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v83;
        v53 = v47;
        do
        {
          for (j = 0; j != v51; j = j + 1)
          {
            if (*v83 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v55 = *(*(&v82 + 1) + 8 * j);
            v56 = [*(a1 + 328) objectForKey:{v55, v78, v79}];

            if (v56)
            {
              v57 = [*(a1 + 328) objectForKey:v55];
              v58 = objc_alloc_init(NSMutableDictionary);
              v59 = [v57 ingressProxy];
              v60 = v59;
              if (v59)
              {
                v59 = v59[3];
              }

              v61 = [v59 vendor];
              [v58 setValue:v61 forKey:@"NetworkSpecificProxyVendor"];

              v62 = [v57 ingressProxy];
              v63 = v62;
              if (v62)
              {
                v62 = v62[3];
              }

              v64 = [v62 proxyURL];
              [v58 setValue:v64 forKey:@"NetworkSpecificIngressProxyURL"];

              v65 = [v57 egressProxy];
              v66 = v65;
              if (v65)
              {
                v65 = v65[3];
              }

              v67 = [v65 proxyURL];
              [v58 setValue:v67 forKey:@"NetworkSpecificEgressProxyURL"];

              v47 = v53;
              [v53 addObject:v58];
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v82 objects:v92 count:16];
        }

        while (v51);
      }

      v34 = v80;
      v22 = v78;
    }

    if ([v47 count])
    {
      [v34 setValue:v47 forKey:@"NetworkSpecificPaths"];
    }

    v68 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 forceFallback]);
    [v34 setValue:v68 forKey:@"ForceFallback"];

    v81 = 0;
    v69 = [NSKeyedArchiver archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v81];
    v70 = v81;
    v71 = v70;
    if (!v69 || v70)
    {
      v74 = nplog_obj();
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      *buf = 138412290;
      v91 = v71;
      v75 = "archivedDataWithRootObject failed with error: %@";
      v76 = v74;
      v77 = 12;
    }

    else
    {
      _CFPreferencesSetFileProtectionClass();
      CFPreferencesSetAppValue(@"NSPProxyAgentManagerPreferences", v69, kCFPreferencesCurrentApplication);
      v72 = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
      v73 = nplog_obj();
      v74 = v73;
      if (v72)
      {
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Saved proxy agent information to preference file", buf, 2u);
        }

        goto LABEL_68;
      }

      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
LABEL_68:

        return;
      }

      *buf = 0;
      v75 = "Failed to write configured proxies to preference file";
      v76 = v74;
      v77 = 2;
    }

    _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, v75, buf, v77);
    goto LABEL_68;
  }
}

void sub_100027570(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([a1 forceFallback])
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 312);
  if (!v4)
  {
    v26 = nplog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
LABEL_14:

      goto LABEL_10;
    }

    *buf = 136315138;
    v32 = "[NSPPrivacyProxyAgentManager setupPreferredQUICProxyPathForVendor:]";
    v27 = "%s called with null self.candidatePreferredQUICProxyPaths";
LABEL_16:
    _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, v27, buf, 0xCu);
    goto LABEL_14;
  }

  if (!v3)
  {
    v26 = nplog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315138;
    v32 = "[NSPPrivacyProxyAgentManager setupPreferredQUICProxyPathForVendor:]";
    v27 = "%s called with null vendor";
    goto LABEL_16;
  }

  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = *(a1 + 304);
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(a1 + 304);
    *(a1 + 304) = v7;

    v6 = *(a1 + 304);
  }

  v9 = [v6 objectForKeyedSubscript:v3];
  v10 = &AnalyticsSendEventLazy_ptr;
  if (v9)
  {
    v11 = v9;
    v12 = [v5 ingressProxy];
    v13 = [v5 egressProxy];
    [v11 updateIngressProxy:v12 egressProxy:v13 proxyPathWeight:{objc_msgSend(v5, "proxyPathWeight")}];
  }

  else
  {
    v30 = [NSPQuicProxyPath alloc];
    v14 = [v5 ingressProxy];
    v15 = [v5 egressProxy];
    v29 = [v5 proxyPathWeight];
    v16 = *(a1 + 13) ^ 1;
    v17 = *(a1 + 15);
    v18 = *(a1 + 400);
    v19 = *(a1 + 368);
    v20 = v18;
    v21 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v19];
    BYTE2(v28) = v17;
    BYTE1(v28) = v16;
    LOBYTE(v28) = 0;
    v22 = v14;
    v23 = [NSPQuicProxyPath initWithDelegate:v30 ingressProxy:"initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:" egressProxy:a1 proxyPathWeight:v14 allowFallback:v15 fallbackToQUIC:v29 forceFallback:1 allowFailOpen:1 geohashSharingEnabled:v28 configEpoch:v20 networkCharacteristics:v21];

    v10 = &AnalyticsSendEventLazy_ptr;
    v24 = *(a1 + 304);
    v12 = v23;
    [v24 setObject:v12 forKeyedSubscript:v3];
    [(NSPQuicProxyPath *)v12 resetMultiHopProxyAgent];
    v11 = v12;
  }

  [v11 resetStats];
  [v11 resetError];
  sub_100025F60(a1);
  [a1 updateUserEventAgentData];
  v25 = v10[469];
  ++*(a1 + 544);
  [v25 postNotification:@"com.apple.networkserviceproxy.privacy-proxy-path-changed" value:?];

LABEL_10:
}

void sub_100027870(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_100027958(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_100027A40(id *a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Domain filter fetch for Quic[%@] %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained && a2)
  {
    v10 = [WeakRetained[39] objectForKeyedSubscript:a1[5]];
    if ([v10 proxyPathReady])
    {
      sub_100027570(v9, a1[5]);
    }

    [v9 updateUserEventAgentData];
    sub_100026CD4(v9);
  }
}

void sub_100027D78(uint64_t a1)
{
  v1 = (a1 + 232);
  if (*(a1 + 232))
  {
    v40 = [*(a1 + 216) egressProxy];
    v3 = *(a1 + 216);
    v4 = &AnalyticsSendEventLazy_ptr;
    if (v3)
    {
      v5 = *v1;
      v6 = v3;
      v7 = [v5 ingressProxy];
      v8 = *v1;
      v9 = [v8 egressProxy];
      v10 = *v1;
      [v6 updateIngressProxy:v7 egressProxy:v9 proxyPathWeight:{objc_msgSend(v10, "proxyPathWeight")}];
    }

    else
    {
      v37 = [NSPFallbackProxyPath alloc];
      v39 = *(a1 + 232);
      v36 = [v39 ingressProxy];
      v38 = *(a1 + 232);
      v35 = [v38 egressProxy];
      v11 = *(a1 + 232);
      v12 = [v11 proxyPathWeight];
      v13 = [a1 forceFallback];
      v14 = *(a1 + 13) ^ 1;
      v15 = *(a1 + 15);
      v16 = *(a1 + 400);
      v17 = *(a1 + 368);
      v18 = v16;
      v19 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v17];
      BYTE2(v34) = v15;
      BYTE1(v34) = v14;
      LOBYTE(v34) = v13;
      v20 = [NSPProxyPath initWithDelegate:v37 ingressProxy:"initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:" egressProxy:a1 proxyPathWeight:v36 allowFallback:v35 fallbackToQUIC:v12 forceFallback:0 allowFailOpen:0 geohashSharingEnabled:v34 configEpoch:v18 networkCharacteristics:v19];
      v21 = *(a1 + 216);
      *(a1 + 216) = v20;

      v4 = &AnalyticsSendEventLazy_ptr;
      [*(a1 + 216) resetSingleHopProxyAgent];
      [*(a1 + 216) resetMultiHopProxyAgent];
    }

    if (v40)
    {
      v22 = v40[3];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = [v23 vendor];
    v25 = *(a1 + 216);
    v26 = [v25 egressProxy];
    v27 = v26;
    if (v26)
    {
      v26 = v26[3];
    }

    v28 = [v26 vendor];
    v29 = v24;
    v30 = v28;
    v31 = v30;
    if (!(v29 | v30) || v29 && v30 && [v29 isEqual:v30])
    {
    }

    else
    {

      v23 = +[NSDate now];
      v29 = *(a1 + 296);
      *(a1 + 296) = v23;
    }

    [*(a1 + 216) resetStats];
    [*(a1 + 216) resetError];
    *(a1 + 488) = vaddq_s64(*(a1 + 488), vdupq_n_s64(1uLL));
    [*(a1 + 208) enableFallback:1];
    [*(a1 + 208) resetSingleHopProxyAgent];
    [*(a1 + 208) resetMultiHopProxyAgent];
    objc_storeStrong(v1, 0);
    [a1 tokensEmpty];
    v32 = v4[469];
    ++*(a1 + 544);
    [v32 postNotification:@"com.apple.networkserviceproxy.privacy-proxy-path-changed" value:?];
  }

  else
  {
    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v42 = "[NSPPrivacyProxyAgentManager setupFallbackProxyPath]";
      _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "%s called with null self.candidateFallbackProxyPath", buf, 0xCu);
    }
  }
}

void sub_1000281B4(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Fallback[%@] %@", &v8, 0x16u);
  }
}

void sub_10002829C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Fallback[%@] %@", &v8, 0x16u);
  }
}

void sub_100028384(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  if (!*(a1 + 152))
  {
    return;
  }

  v3 = *(a1 + 320);
  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = v2[40];
    v2[40] = v4;

    v3 = v2[40];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v141 objects:v156 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v142;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v142 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v141 + 1) + 8 * i) setDelegate:v2];
      }

      v8 = [v6 countByEnumeratingWithState:&v141 objects:v156 count:16];
    }

    while (v8);
  }

  v98 = objc_alloc_init(NSMutableArray);
  v105 = objc_alloc_init(NSMutableArray);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v2[19];
  v11 = [obj countByEnumeratingWithState:&v137 objects:v155 count:16];
  v108 = v2;
  if (v11)
  {
    v12 = v11;
    v13 = *v138;
    do
    {
      v14 = 0;
      do
      {
        if (*v138 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v1 = *(*(&v137 + 1) + 8 * v14);
        v15 = v2[20];
        v16 = [(NSPProxiedContentPath *)v1 identifier];
        v17 = [v15 containsObject:v16];

        if ((v17 & 1) == 0)
        {
          if (![(NSPProxiedContentPath *)v1 enabled])
          {
            goto LABEL_61;
          }

          if ([(NSPProxiedContentPath *)v1 hasPercentEnabled])
          {
            if (![(NSPProxiedContentPath *)v1 percentEnabled])
            {
              goto LABEL_61;
            }

            if ([(NSPProxiedContentPath *)v1 percentEnabled]<= 0x63)
            {
              v32 = arc4random_uniform(0x64u);
              v33 = [(NSPProxiedContentPath *)v1 percentEnabled];
              v18 = nplog_obj();
              v34 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              if (v32 > v33)
              {
                if (v34)
                {
                  v35 = [(NSPProxiedContentPath *)v1 identifier];
                  v36 = [(NSPProxiedContentPath *)v1 percentEnabled];
                  *buf = 138412546;
                  v152 = v35;
                  v153 = 1024;
                  v154 = v36;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not enabling map for %@ (%u%% chance of enablement)", buf, 0x12u);
                  goto LABEL_82;
                }

                goto LABEL_60;
              }

              if (v34)
              {
                v51 = [(NSPProxiedContentPath *)v1 identifier];
                v52 = [(NSPProxiedContentPath *)v1 percentEnabled];
                *buf = 138412546;
                v152 = v51;
                v153 = 1024;
                v154 = v52;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Enabling map for %@ (%u%% chance of enablement)", buf, 0x12u);
              }
            }

            v53 = [(NSPProxiedContentPath *)v1 identifier];
            [v105 addObject:v53];
          }
        }

        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v18 = v108[40];
        v19 = [v18 countByEnumeratingWithState:&v133 objects:v150 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v134;
LABEL_20:
          v22 = 0;
          while (1)
          {
            if (*v134 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v133 + 1) + 8 * v22) associatedMaps];
            v24 = [v23 containsObject:v1];

            if (v24)
            {
              goto LABEL_60;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v133 objects:v150 count:16];
              if (v20)
              {
                goto LABEL_20;
              }

              break;
            }
          }
        }

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v25 = v108[40];
        v26 = [v25 countByEnumeratingWithState:&v129 objects:v149 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v130;
          while (2)
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v130 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v129 + 1) + 8 * j);
              if ([v30 matchesMap:v1 proxyArray:{v108[11], v98}])
              {
                [v30 addMap:v1];
                v31 = 1;
                goto LABEL_43;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v129 objects:v149 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v31 = 0;
LABEL_43:

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v37 = v98;
        v38 = [v37 countByEnumeratingWithState:&v125 objects:v148 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v126;
          while (2)
          {
            for (k = 0; k != v39; k = k + 1)
            {
              if (*v126 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v125 + 1) + 8 * k);
              if ([v42 matchesMap:v1 proxyArray:{v108[11], v98}])
              {
                [v42 addMap:v1];
                v18 = v37;
                goto LABEL_60;
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v125 objects:v148 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        if ((v31 & 1) == 0)
        {
          if (![(NSPProxiedContentPath *)v1 proxiesCount]&& [(NSPProxiedContentPath *)v1 hasResolver])
          {
            v43 = [(NSPProxiedContentPath *)v1 resolver];
            v44 = v108[12];
            if ([v44 count] <= v43)
            {
            }

            else
            {
              v45 = v108[12];
              v18 = [v45 objectAtIndex:{-[NSPProxiedContentPath resolver](v1, "resolver")}];

              if (v18)
              {
                if ([v18 hasProxyIndex])
                {
                  v46 = v108[11];
                  v35 = [v46 objectAtIndex:{-[NSObject proxyIndex](v18, "proxyIndex")}];

                  if (v35)
                  {
                    v47 = sub_100025A90(v108, v35);
                  }

                  else
                  {
                    v47 = 0;
                  }
                }

                else
                {
                  v47 = 0;
                  v35 = 0;
                }

                v1 = [[NSPProxiedContentPath alloc] initWithDelegate:v108 initialMap:v1 ingressProxy:0 egressProxy:v47 resolver:v18];
                [v37 addObject:v1];

LABEL_82:
LABEL_60:

                goto LABEL_61;
              }
            }

            v18 = nplog_obj();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            v60 = [(NSPProxiedContentPath *)v1 resolver];
            *buf = 67109120;
            LODWORD(v152) = v60;
            v48 = v18;
            v49 = "Failed to add proxied content path, invalid resolver %u";
            v50 = 8;
LABEL_67:
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v49, buf, v50);
            goto LABEL_60;
          }

          if (![(NSPProxiedContentPath *)v1 proxiesCount]|| [(NSPProxiedContentPath *)v1 proxiesCount]>= 3)
          {
            v18 = nplog_obj();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            *buf = 138412290;
            v152 = v1;
            v48 = v18;
            v49 = "Failed to add proxied content path, invalid number of proxies (%@)";
            v50 = 12;
            goto LABEL_67;
          }

          if ([(NSPProxiedContentPath *)v1 proxiesCount]== 2)
          {
            v54 = v108[11];
            v18 = [v54 objectAtIndex:{*-[NSPProxiedContentPath proxies](v1, "proxies")}];

            v55 = v108[11];
            v56 = [v55 objectAtIndex:{*(-[NSPProxiedContentPath proxies](v1, "proxies") + 1)}];

            v57 = sub_100025A90(v108, v18);
            v58 = sub_100025A90(v108, v56);
            v1 = [[NSPProxiedContentPath alloc] initWithDelegate:v108 initialMap:v1 ingressProxy:v57 egressProxy:v58 resolver:0];
            [v37 addObject:v1];

            goto LABEL_60;
          }

          if ([(NSPProxiedContentPath *)v1 proxiesCount]== 1)
          {
            v59 = v108[11];
            v18 = [v59 objectAtIndex:{*-[NSPProxiedContentPath proxies](v1, "proxies")}];

            v35 = sub_100025A90(v108, v18);
            v1 = [[NSPProxiedContentPath alloc] initWithDelegate:v108 initialMap:v1 ingressProxy:0 egressProxy:v35 resolver:0];
            [v37 addObject:v1];

            goto LABEL_82;
          }
        }

LABEL_61:
        v14 = v14 + 1;
        v2 = v108;
      }

      while (v14 != v12);
      v61 = [obj countByEnumeratingWithState:&v137 objects:v155 count:16];
      v12 = v61;
    }

    while (v61);
  }

  [v2[40] addObjectsFromArray:v98];
  v99 = objc_alloc_init(NSMutableArray);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v100 = v2[40];
  v102 = [v100 countByEnumeratingWithState:&v121 objects:v147 count:16];
  if (!v102)
  {
    goto LABEL_110;
  }

  v101 = *v122;
  do
  {
    v62 = 0;
    do
    {
      if (*v122 != v101)
      {
        objc_enumerationMutation(v100);
      }

      v104 = v62;
      v63 = *(*(&v121 + 1) + 8 * v62);
      obja = objc_alloc_init(NSMutableArray);
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v103 = v63;
      v64 = [v63 associatedMaps];
      v65 = [v64 countByEnumeratingWithState:&v117 objects:v146 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v118;
        do
        {
          for (m = 0; m != v66; m = m + 1)
          {
            if (*v118 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v117 + 1) + 8 * m);
            v70 = [v69 enabled];
            if (v70)
            {
              if (![v69 hasPercentEnabled])
              {
                v71 = 1;
                goto LABEL_101;
              }

              v1 = [v69 identifier];
              if ([v105 containsObject:v1])
              {
                v71 = 1;
LABEL_99:

                goto LABEL_101;
              }
            }

            v72 = v2[20];
            v73 = [v69 identifier];
            v71 = [v72 containsObject:v73];

            v2 = v108;
            if (v70)
            {
              goto LABEL_99;
            }

LABEL_101:
            if (![v2[19] containsObject:v69] || (v71 & 1) == 0)
            {
              [obja addObject:v69];
            }
          }

          v66 = [v64 countByEnumeratingWithState:&v117 objects:v146 count:16];
        }

        while (v66);
      }

      v74 = [v103 associatedMaps];
      [v74 removeObjectsInArray:obja];

      v75 = [v103 associatedMaps];
      v76 = [v75 count];

      if (!v76)
      {
        [v103 removeProxyAgents];
        [v99 addObject:v103];
      }

      v62 = v104 + 1;
    }

    while ((v104 + 1) != v102);
    v102 = [v100 countByEnumeratingWithState:&v121 objects:v147 count:16];
  }

  while (v102);
LABEL_110:

  [v2[40] removeObjectsInArray:v99];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v77 = v2[40];
  v78 = [v77 countByEnumeratingWithState:&v113 objects:v145 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v114;
    do
    {
      v81 = 0;
      do
      {
        if (*v114 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v113 + 1) + 8 * v81);
        if ([v82 pathReady])
        {
          v83 = nplog_obj();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = [v82 shortName];
            *buf = 138412290;
            v152 = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Setting up proxied content path (%@)", buf, 0xCu);
          }

          [v82 setupProxyAgentsForceUpdateDelegate:1];
        }

        else
        {
          v85 = [v82 ingressProxy];
          v86 = v85;
          if (v85)
          {
            v87 = *(v85 + 24);
          }

          else
          {
            v87 = 0;
          }

          v88 = v87;

          v89 = [v82 egressProxy];
          v90 = v89;
          if (v89)
          {
            v91 = *(v89 + 24);
          }

          else
          {
            v91 = 0;
          }

          v92 = v91;

          v93 = [v82 ingressProxy];
          v111[0] = _NSConcreteStackBlock;
          v111[1] = 3221225472;
          v111[2] = sub_1000291A4;
          v111[3] = &unk_100109910;
          v112 = v88;
          v94 = v88;
          sub_1000058A8(v93, v111);

          v95 = [v82 egressProxy];
          v109[0] = _NSConcreteStackBlock;
          v109[1] = 3221225472;
          v109[2] = sub_10002928C;
          v109[3] = &unk_100109910;
          v110 = v92;
          v96 = v92;
          sub_1000058A8(v95, v109);
        }

        v81 = v81 + 1;
      }

      while (v79 != v81);
      v97 = [v77 countByEnumeratingWithState:&v113 objects:v145 count:16];
      v79 = v97;
    }

    while (v97);
  }

  sub_100025F60(v108);
  [v108 updateUserEventAgentData];
  sub_100026CD4(v108);
}