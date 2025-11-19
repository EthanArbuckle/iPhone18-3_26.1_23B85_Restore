id sub_1000012E4()
{
  if (qword_100064670 != -1)
  {
    sub_100001540();
  }

  v1 = qword_100064668;

  return v1;
}

void sub_100001328(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000012E4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100043A04(a3, v5);
  }

  v6 = a1;
  if (!v6)
  {
    sub_100042464(&v12, buf);
  }

  v7 = v6;

  switch(a3)
  {
    case -536870896:
      v11 = sub_1000012E4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%p] kIOMessageServiceIsTerminated", buf, 0xCu);
      }

      [v7 deactivate];
      v9 = 3;
      goto LABEL_18;
    case -536771840:
      v10 = sub_1000012E4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%p] kIONetworkLinkStateActive", buf, 0xCu);
      }

      if (![v7 state])
      {
        v9 = 1;
        goto LABEL_18;
      }

      break;
    case -536771839:
      v8 = sub_1000012E4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%p] kIONetworkLinkStateInactive", buf, 0xCu);
      }

      if ([v7 state] != 3)
      {
        v9 = 0;
LABEL_18:
        [v7 advanceState:v9];
      }

      break;
  }
}

void sub_100001564(id a1, RSDNCMInterface *a2)
{
  v2 = [(RSDNCMInterface *)a2 device];
  [v2 setSuspended:1];
}

void sub_1000015AC(id a1, RSDNCMInterface *a2)
{
  v4 = a2;
  v2 = [(RSDNCMInterface *)v4 device];

  if (v2)
  {
    v3 = [(RSDNCMInterface *)v4 device];
    [v3 disconnect];

    [(RSDNCMInterface *)v4 setDevice:0];
  }
}

void sub_100001624(id a1, RSDNCMInterface *a2)
{
  v6 = a2;
  v2 = [(RSDNCMInterface *)v6 device];

  if (v2)
  {
    v3 = [(RSDNCMInterface *)v6 device];
    [v3 setSuspended:0];
  }

  else
  {
    v4 = [[RSDRemoteDisplayDeviceDevice alloc] initWithInterface:v6];
    [(RSDNCMInterface *)v6 setDevice:v4];

    v5 = [(RSDNCMInterface *)v6 device];
    sub_100031ABC(v5);

    v3 = [(RSDNCMInterface *)v6 device];
    [v3 attach];
  }
}

void sub_1000016EC(id a1, RSDNCMInterface *a2)
{
  v2 = [(RSDNCMInterface *)a2 device];
  [v2 setSuspended:1];
}

void sub_100001CF4(void *a1)
{
  v3 = a1;
  v1 = [v3 device_listener];

  if (v1)
  {
    v2 = [v3 device_listener];
    xpc_connection_cancel(v2);

    [v3 setDevice_listener:0];
  }
}

void sub_100001EAC(uint64_t a1)
{
  if ((([*(a1 + 32) connectable] & 1) != 0 || objc_msgSend(*(a1 + 32), "state") == 5) && objc_msgSend(*(*(a1 + 32) + 112), "count"))
  {
    v2 = [*(*(a1 + 32) + 112) objectAtIndex:0];
    [*(*(a1 + 32) + 112) removeObjectAtIndex:0];
    v2[2]();
    [*(a1 + 32) drainPendedRequests];
  }
}

void sub_100001F64(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10000FBF0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100002058(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 3)
  {
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_ERROR))
    {
      sub_10003D388(a1);
    }

    error_domain = nw_error_get_error_domain(v6);
    error_code = nw_error_get_error_code(v6);
    if (error_domain == nw_error_domain_dns && (error_code == -65563 || error_code == -65568))
    {
      nw_listener_cancel(*(*(a1 + 32) + 312));
      v24 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014C24;
      block[3] = &unk_10005D130;
      block[4] = *(a1 + 32);
      dispatch_after(v24, qword_1000643D8, block);
    }
  }

  else if (a2 == 2)
  {
    v7 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 312);
      v10 = v7;
      v11 = nw_listener_copy_local_endpoint();
      *buf = 138544130;
      v27 = v8;
      v28 = 2112;
      v29 = v11;
      v30 = 1024;
      v31 = 2;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@> listening on %@ (state %u, error %@)", buf, 0x26u);
    }

    port = nw_listener_get_port(*(*(a1 + 32) + 312));
    if (port)
    {
      v13 = port;
      v14 = qword_1000643E0;
      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        v27 = v15;
        v28 = 1024;
        LODWORD(v29) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@> listener port: %u", buf, 0x12u);
      }

      v16 = *(*(a1 + 32) + 312);
      v17 = nw_listener_copy_local_endpoint();
      if (v17)
      {
        description = nw_endpoint_get_description();
        if (description)
        {
          v19 = description;
          v20 = qword_1000643E0;
          if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_INFO))
          {
            v21 = *(a1 + 32);
            *buf = 138543618;
            v27 = v21;
            v28 = 2080;
            v29 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@> listener local endpoint: %s", buf, 0x16u);
          }
        }
      }
    }
  }

  else if (v5 && os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_ERROR))
  {
    sub_10003D40C(a1);
  }
}

void sub_100002550(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000260C;
    handler[3] = &unk_10005CF88;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_set_target_queue(v3, qword_100064560);
    xpc_connection_activate(v3);
  }
}

void sub_10000260C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = objc_autoreleasePoolPush();
  if (xpc_get_type(v5) == &_xpc_type_error)
  {
    xpc_connection_cancel(v4);
    goto LABEL_38;
  }

  if (xpc_dictionary_expects_reply())
  {
    string = xpc_dictionary_get_string(v5, "cmd");
    if (!string)
    {
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
      {
        sub_1000405F8();
      }

      goto LABEL_19;
    }

    v8 = string;
    if (strcmp(string, "browse"))
    {
      if (!strcmp(v8, "get_unique_device") || !strcmp(v8, "get_device"))
      {
        v9 = sub_100028FA8(v4, v5);
        goto LABEL_21;
      }

      if (!strcmp(v8, "get_local_device_description"))
      {
        v9 = sub_1000294B8(v5);
        goto LABEL_21;
      }

      if (!strcmp(v8, "get_local_device_identity"))
      {
        sub_10002957C(v4, v5);
        goto LABEL_38;
      }

      if (!strcmp(v8, "delete_local_device_identity"))
      {
        v9 = sub_1000296E4(v5);
        goto LABEL_21;
      }

      if (!strcmp(v8, "create_local_device_identity"))
      {
        v9 = sub_100029738(v5);
        goto LABEL_21;
      }

      if (!strcmp(v8, "list_local_device_services"))
      {
        v9 = sub_10002978C(v5);
        goto LABEL_21;
      }

      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
      {
        sub_100040550();
      }

LABEL_19:
      v9 = sub_100006128(v5, "ERROR");
LABEL_21:
      reply = v9;
LABEL_36:
      v26 = reply;
      if (!v26)
      {
        sub_100040634(&v29, &buf);
      }

      v27 = v26;

      v28 = xpc_dictionary_get_remote_connection(v27);
      xpc_connection_send_message(v28, v27);

      goto LABEL_38;
    }

    v11 = v5;
    v12 = xpc_dictionary_get_remote_connection(v11);
    v13 = xpc_dictionary_get_BOOL(v11, "present_only");
    v14 = sub_100002B18(v12);
    v15 = qword_100064558;
    v16 = os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v16)
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v14;
        v17 = "Registering client browse (present-only). (client=%{public}s)";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &buf, 0xCu);
      }
    }

    else if (v16)
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v14;
      v17 = "Registering client browse. (client=%{public}s)";
      goto LABEL_27;
    }

    free(v14);
    v18 = [[BrowseRegistration alloc] initWithRequest:v11];
    if (!v18)
    {
      sub_10004058C(&v29, &buf);
    }

    v19 = v18;
    euid = xpc_connection_get_euid(v12);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v32 = sub_100002C90;
    v33 = &unk_10005DB28;
    v21 = v19;
    v34 = v21;
    sub_100002B5C(euid, &buf);
    v22 = sub_100002B18(v12);
    v23 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v29 = 136446210;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Completed immediate devices. (client=%{public}s)", &v29, 0xCu);
    }

    free(v22);
    if (v13)
    {
      [(BrowseRegistration *)v21 cancel];
      v24 = sub_100002B18(v12);
      v25 = qword_100064558;
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
      {
        v29 = 136446210;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Completed client browse (present-only). (client=%{public}s)", &v29, 0xCu);
      }

      free(v24);
    }

    reply = xpc_dictionary_create_reply(v11);
    xpc_dictionary_set_string(reply, "cmd", "browse");
    xpc_dictionary_set_string(reply, "result", "OK");

    goto LABEL_36;
  }

  if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
  {
    sub_100040514();
  }

LABEL_38:
  objc_autoreleasePoolPop(v6);
}

char *sub_100002B18(_xpc_connection_s *a1)
{
  v3 = 0;
  pid = xpc_connection_get_pid(a1);
  asprintf(&v3, "pid/%d", pid);
  return v3;
}

void sub_100002B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_100064360;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v10 + 1) + 8 * v8);
      if ([v9 isVisibleForUser:{a1, v10}])
      {
        if (!v3[2](v3, v9))
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

id sub_100002E90(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 setBrowser:0];
    result = [*(a1 + 32) dontRestartBrowse];
    if ((result & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      return [v6 startBrowsing:v7];
    }
  }

  else
  {

    return [v4 fire:a2];
  }

  return result;
}

uint64_t sub_1000031B8()
{
  v0 = os_log_create("com.apple.RemoteServiceDiscovery", "rsd_events");
  v1 = qword_1000642F0;
  qword_1000642F0 = v0;

  v2 = objc_opt_new();
  v3 = qword_100064300;
  qword_100064300 = v2;

  v4 = dispatch_queue_create("com.apple.rsd_events", 0);
  v5 = qword_1000642E8;
  qword_1000642E8 = v4;

  v6 = xpc_event_publisher_create();
  v7 = qword_1000642F8;
  qword_1000642F8 = v6;

  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();

  return xpc_event_publisher_activate();
}

void sub_10000328C(id a1, unsigned int a2, unint64_t a3, OS_xpc_object *a4)
{
  v6 = a4;
  if (a2 == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [qword_100064300 copy];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v17 token] == a3)
          {
            v18 = qword_1000642F0;
            if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              v20 = [v17 name];
              *v30 = 136446210;
              *&v30[4] = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Removing RSD events registration: %{public}s", v30, 0xCu);
            }

            [v17 cancelBrowsing];
            [qword_100064300 removeObject:v17];
            goto LABEL_24;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

  else if (!a2)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v7;
    v37 = v7;
    v34 = v7;
    v35 = v7;
    v32 = v7;
    v33 = v7;
    *v30 = v7;
    v31 = v7;
    if ((xpc_get_event_name() & 1) == 0)
    {
      __strlcpy_chk();
    }

    v8 = [[RSDEventRegistration alloc] initWithToken:a3 name:v30];
    [qword_100064300 addObject:v8];
    [(RSDEventRegistration *)v8 startBrowsing:v6];
    v9 = qword_1000642F0;
    if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = v30;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registered for RSD events: %{public}s", buf, 0xCu);
    }

    if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_INFO))
    {
      v10 = xpc_copy_description(v6);
      v11 = qword_1000642F0;
      if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v27 = v30;
        v28 = 2082;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}s: %{public}s", buf, 0x16u);
      }

      free(v10);
    }
  }
}

void sub_100003584(id a1, int a2)
{
  v3 = qword_1000642F0;
  if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_ERROR))
  {
    sub_100037F94(a2, v3);
  }
}

uint64_t sub_1000035CC()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1000035F0(void *a1)
{
  v1 = a1;
  if (!objc_opt_class())
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_100038108(v1);
    }

    goto LABEL_14;
  }

  v8 = 0;
  v2 = [SecureConfigParameters loadContentsAndReturnError:&v8];
  v3 = v8;
  if (!v2)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100038090(v3, v1);
    }

    goto LABEL_14;
  }

  v4 = [v2 research_disableAppleInfrastructureEnforcement];
  v5 = v4;
  if (!v4)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = @"com.apple.pcc.research.disableAppleInfrastructureEnforcement";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SecureConfig parameter '%{public}@' not present", buf, 0xCu);
    }

LABEL_14:
    v6 = 0;
    goto LABEL_19;
  }

  if (sub_1000128C4(v4))
  {
    v6 = CFBooleanGetValue(v5) != 0;
  }

  else
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10003800C(v1);
    }

    v6 = 0;
  }

  CFRelease(v5);
LABEL_19:

  return v6;
}

uint64_t sub_1000037B4(char *a1, ...)
{
  va_start(va, a1);
  if (qword_100064308 != -1)
  {
    sub_10003814C();
  }

  return vdprintf(dword_100063C10, a1, va);
}

void sub_10000383C(void *a1)
{
  v2 = a1;
  objc_storeStrong(&qword_100064310, a1);
  v3 = qword_100064318;
  qword_100064318 = v2;
  v8 = v2;

  v4 = os_log_create("com.apple.RemoteServiceDiscovery", "ControlInterface");
  v5 = qword_100064320;
  qword_100064320 = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.remoted.control", qword_100064310, 1uLL);
  v7 = qword_100064328;
  qword_100064328 = mach_service;

  xpc_connection_set_event_handler(qword_100064328, &stru_10005CF60);
  xpc_connection_activate(qword_100064328);
}

void sub_100003914(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000039D0;
    handler[3] = &unk_10005CF88;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_set_target_queue(v3, qword_100064310);
    xpc_connection_activate(v3);
  }
}

void sub_1000039D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = objc_autoreleasePoolPush();
  if (xpc_get_type(v5) == &_xpc_type_error)
  {
LABEL_21:
    xpc_connection_cancel(v4);
    goto LABEL_30;
  }

  if ((xpc_dictionary_expects_reply() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
    {
      sub_100038174();
    }

    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(v5, "cmd");
  if (os_variant_has_internal_content())
  {
    if (string)
    {
      if (!strcmp(string, "attach_loopback"))
      {
        v13 = v5;
        sub_100032EAC();
      }

      else
      {
        if (strcmp(string, "connect_loopback"))
        {
          if (!strcmp(string, "detach_loopback"))
          {
            v8 = sub_100003D78(v5);
            goto LABEL_27;
          }

          if (!strcmp(string, "suspend_loopback"))
          {
            v8 = sub_100003DDC(v5);
            goto LABEL_27;
          }

          if (!strcmp(string, "resume_loopback"))
          {
            v8 = sub_100003E40(v5);
            goto LABEL_27;
          }

          if (!strcmp(string, "reset_loopback"))
          {
            v8 = sub_100003EA4(v5);
            goto LABEL_27;
          }

          if (!strcmp(string, "enable_bonjour"))
          {
            v14 = v5;
            v15 = 0;
          }

          else
          {
            if (!strcmp(string, "disable_bonjour"))
            {
              v8 = sub_100003F08(v5);
              goto LABEL_27;
            }

            if (strcmp(string, "enable_bonjour_loopback"))
            {
              if (!strcmp(string, "enable_network_peer"))
              {
                v8 = sub_100004070(v5);
                goto LABEL_27;
              }

              if (!strcmp(string, "disable_network_peer"))
              {
                v8 = sub_100004158(v5);
                goto LABEL_27;
              }

              if (!strcmp(string, "connect_network_peer"))
              {
                v8 = sub_1000041D0(v5);
                goto LABEL_27;
              }

              if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
              {
                sub_1000381DC();
              }

              goto LABEL_26;
            }

            v14 = v5;
            v15 = 1;
          }

          v8 = sub_100003F80(v14, v15);
          goto LABEL_27;
        }

        v13 = v5;
        sub_100033028();
      }

      reply = xpc_dictionary_create_reply(v13);

      xpc_dictionary_set_string(reply, "result", "OK");
      goto LABEL_28;
    }

    if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
    {
      sub_100038210();
    }
  }

  else if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
  {
    sub_1000381A8();
  }

LABEL_26:
  v8 = sub_1000255B4(v5);
LABEL_27:
  reply = v8;
LABEL_28:
  v10 = reply;
  if (!v10)
  {
    sub_100038244(&v16, v17);
  }

  v11 = v10;

  v12 = xpc_dictionary_get_remote_connection(v11);
  xpc_connection_send_message(v12, v11);

LABEL_30:
  objc_autoreleasePoolPop(v6);
}

id sub_100003D78(void *a1)
{
  v1 = a1;
  sub_1000334B0();
  reply = xpc_dictionary_create_reply(v1);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100003DDC(void *a1)
{
  v1 = a1;
  sub_100033604();
  reply = xpc_dictionary_create_reply(v1);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100003E40(void *a1)
{
  v1 = a1;
  sub_100033754();
  reply = xpc_dictionary_create_reply(v1);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100003EA4(void *a1)
{
  v1 = a1;
  sub_1000338A0();
  reply = xpc_dictionary_create_reply(v1);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100003F08(void *a1)
{
  v1 = qword_100064318;
  v2 = a1;
  dispatch_async(v1, &stru_10005CFA8);
  reply = xpc_dictionary_create_reply(v2);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100003F80(void *a1, char a2)
{
  v3 = a1;
  string = xpc_dictionary_get_string(v3, "arg");
  if (string)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004374;
    v7[3] = &unk_10005CFC8;
    v7[4] = strdup(string);
    v8 = a2;
    dispatch_async(qword_100064318, v7);
    reply = xpc_dictionary_create_reply(v3);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    reply = sub_1000255B4(v3);
  }

  return reply;
}

id sub_100004070(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "arg");
  if (string)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000043B4;
    block[3] = &unk_10005CFE8;
    block[4] = strdup(string);
    dispatch_async(qword_100064318, block);
    reply = xpc_dictionary_create_reply(v1);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    reply = sub_1000255B4(v1);
  }

  return reply;
}

id sub_100004158(void *a1)
{
  v1 = qword_100064318;
  v2 = a1;
  dispatch_async(v1, &stru_10005D008);
  reply = xpc_dictionary_create_reply(v2);

  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_1000041D0(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "arg");
  v11 = 0uLL;
  v3 = inet_pton(30, string, &v11);
  if (v3 == -1)
  {
    v5 = __error();
    v6 = qword_100064320;
    if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
    {
      sub_1000382F0(v5, v6);
    }
  }

  else
  {
    if (v3 == 1)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000448C;
      v8[3] = &unk_10005D028;
      v9 = v11;
      dispatch_async(qword_100064318, v8);
      reply = xpc_dictionary_create_reply(v1);
      xpc_dictionary_set_string(reply, "result", "OK");
      goto LABEL_10;
    }

    if (v3)
    {
      sub_1000383A0(&v10, v12);
    }

    if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_ERROR))
    {
      sub_10003836C();
    }
  }

  reply = sub_1000255B4(v1);
LABEL_10:

  return reply;
}

void sub_100004374(uint64_t a1)
{
  sub_10002F8CC(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  free(v2);
}

void sub_1000043B4(uint64_t a1)
{
  v2 = sub_1000229B0(*(a1 + 32));
  v3 = qword_100064320;
  if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "failed";
    if (v2)
    {
      v4 = "succeeded";
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "network peer enable %{public}s", &v5, 0xCu);
  }

  free(*(a1 + 32));
}

void sub_10000448C(uint64_t a1)
{
  v1 = sub_1000230E8((a1 + 32));
  v2 = qword_100064320;
  if (os_log_type_enabled(qword_100064320, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "failed";
    if (v1)
    {
      v3 = "succeeded";
    }

    v4 = 136446210;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "network peer connect %{public}s", &v4, 0xCu);
  }
}

void sub_10000454C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_100004B08()
{
  if (qword_100064350 != -1)
  {
    sub_100038484();
  }

  v1 = qword_100064348;

  return v1;
}

NSObject *sub_100004E28(const char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = if_nametoindex(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100031974(v5);
    v8 = v7;
    if (v7)
    {
      v9 = nw_parameters_copy_required_interface(v7);
      name = nw_interface_get_name(v9);
      if (!strncmp(name, a1, 0x10uLL))
      {
        nw_parameters_set_local_only(v8, 0);
        nw_parameters_set_required_interface_type(v8, nw_interface_type_other);
        *a3 = v6;
        v12 = v8;
        goto LABEL_14;
      }

      v11 = sub_100004B08();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100038500();
      }
    }

    else
    {
      v9 = sub_100004B08();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100038498();
      }
    }

    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v8 = sub_100004B08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100038584();
  }

  v12 = 0;
LABEL_15:

  return v12;
}

void sub_1000051E4(void *a1)
{
  v1 = a1;
  v2 = sub_100004B08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "initializing CoreDevice backend", v9, 2u);
  }

  v3 = qword_100064338;
  qword_100064338 = v1;
  v4 = v1;

  v5 = objc_opt_new();
  v6 = qword_100064330;
  qword_100064330 = v5;

  mach_service = xpc_connection_create_mach_service("com.apple.remoted.coredevice", qword_100064338, 1uLL);
  v8 = qword_100064340;
  qword_100064340 = mach_service;

  xpc_connection_set_event_handler(qword_100064340, &stru_10005D048);
  xpc_connection_activate(qword_100064340);
}

void sub_1000052D0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000538C;
    handler[3] = &unk_10005CF88;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_set_target_queue(v3, qword_100064338);
    xpc_connection_activate(v3);
  }
}

void sub_10000538C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = objc_autoreleasePoolPush();
  if (xpc_get_type(v5) == &_xpc_type_error)
  {
    sub_100005D04(v4);
    goto LABEL_79;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v7;
  *&buf[16] = v7;
  xpc_connection_get_audit_token();
  v8 = xpc_copy_entitlement_for_token();
  v9 = v8 == 0;

  if (v9)
  {
    v13 = sub_100004B08();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100038798();
    }

    goto LABEL_14;
  }

  if ((xpc_dictionary_expects_reply() & 1) == 0)
  {
    v13 = sub_100004B08();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100038660();
    }

LABEL_14:

    sub_100005D04(v4);
    goto LABEL_79;
  }

  string = xpc_dictionary_get_string(v5, "cmd");
  v11 = string;
  if (!string)
  {
    v12 = sub_100004B08();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100038210();
    }

    goto LABEL_20;
  }

  if (strcmp(string, "add_listener_device"))
  {
    if (!strcmp(v11, "add_client_device"))
    {
      v34 = v4;
      v35 = v5;
      v36 = xpc_dictionary_get_string(v35, "interface_name");
      v37 = xpc_dictionary_get_string(v35, "listener_address");
      uint64 = xpc_dictionary_get_uint64(v35, "listener_port");
      if (v36 && v37 && uint64 - 0x10000 > 0xFFFFFFFFFFFF0000)
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v40 = xpc_dictionary_get_uint64(v35, "connect_timeout");
          v41 = sub_100004B08();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = v36;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Creating new client device for interface: %{public}s", buf, 0xCu);
          }

          v42 = [[RSDRemoteCoreDeviceDevice alloc] initWithClientEndpoint:host_with_numeric_port controlPeer:v34 interfaceName:v36 connectTimeout:v40];
          v43 = v42;
          if (v42 && [(RSDRemoteDevice *)v42 device_name])
          {
            [(RSDRemoteCoreDeviceDevice *)v43 attach];
            v44 = sub_100004B08();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [(RSDRemoteDevice *)v43 device_name];
              *buf = 136446466;
              *&buf[4] = v45;
              *&buf[12] = 2082;
              *&buf[14] = v36;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Attached new client device: %{public}s for interface: %{public}s", buf, 0x16u);
            }

            v15 = sub_100006128(v35, "OK");
            xpc_dictionary_set_string(v15, "device_name", [(RSDRemoteDevice *)v43 device_name]);
          }

          else
          {
            v50 = sub_100004B08();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              sub_100038694();
            }

            v15 = sub_100006128(v35, "ERROR");
          }
        }

        else
        {
          v52 = sub_100004B08();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_1000386C8();
          }

          v15 = sub_100006128(v35, "ERROR");
        }
      }

      else
      {
        v49 = sub_100004B08();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1000386FC();
        }

        v15 = sub_100006128(v35, "ERROR");
      }

      goto LABEL_22;
    }

    if (!strcmp(v11, "remove_device"))
    {
      v14 = sub_100005EA8(v4, v5);
      goto LABEL_21;
    }

    v12 = sub_100004B08();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000381DC();
    }

LABEL_20:

    v14 = sub_1000255B4(v5);
LABEL_21:
    v15 = v14;
LABEL_22:
    if (v15)
    {
      xpc_dictionary_send_reply();
    }

    goto LABEL_79;
  }

  v54 = v4;
  v16 = v5;
  v17 = sub_100004B08();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "add server listener start", buf, 2u);
  }

  v18 = xpc_dictionary_get_string(v16, "interface_name");
  v19 = v18;
  if (v18)
  {
    v60 = 0;
    v20 = sub_100004E28(v18, 1, &v60);
    v21 = v20;
    if (v20 && (v22 = v60) != 0)
    {
      v23 = nw_listener_create(v20);
      if (v23)
      {
        v24 = xpc_dictionary_get_uint64(v16, "connect_timeout");
        v25 = sub_100004B08();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating new listener device for interface: %{public}s", buf, 0xCu);
        }

        v26 = [[RSDRemoteCoreDeviceDevice alloc] initWithServerListener:v23 controlPeer:v54 interfaceName:v19 interfaceIndex:v22 connectTimeout:v24];
        v27 = v26;
        if (v26 && [(RSDRemoteDevice *)v26 device_name])
        {
          [v27 attach];
          v28 = sub_100004B08();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v27 device_name];
            *buf = 136446466;
            *&buf[4] = v29;
            *&buf[12] = 2082;
            *&buf[14] = v19;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Attached new listener device: %{public}s for interface: %{public}s", buf, 0x16u);
          }

          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100006174;
          handler[3] = &unk_10005D090;
          v30 = v27;
          v59 = v30;
          nw_listener_set_new_connection_handler(v23, handler);
          v56[0] = 0;
          v56[1] = v56;
          v56[2] = 0x2020000000;
          v57 = 1;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100006318;
          *&buf[24] = &unk_10005D0B8;
          v31 = v23;
          v62 = v31;
          v65 = v56;
          v63 = v30;
          v64 = v16;
          nw_listener_set_state_changed_handler(v31, buf);
          nw_listener_set_queue(v31, qword_100064338);
          nw_listener_start(v31);
          v32 = sub_100004B08();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "add server listener done", v55, 2u);
          }

          _Block_object_dispose(v56, 8);
          v33 = v59;
        }

        else
        {
          v51 = sub_100004B08();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            sub_100038694();
          }

          v33 = sub_100006128(v16, "ERROR");
          xpc_dictionary_send_reply();
        }
      }

      else
      {
        v53 = sub_100004B08();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_100038730();
        }

        v27 = sub_100006128(v16, "ERROR");
        xpc_dictionary_send_reply();
      }
    }

    else
    {
      v48 = sub_100004B08();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        sub_100038498();
      }

      v23 = sub_100006128(v16, "ERROR");
      xpc_dictionary_send_reply();
    }
  }

  else
  {
    v46 = sub_100004B08();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100038764();
    }

    v47 = sub_100006128(v16, "ERROR");
    xpc_dictionary_send_reply();
  }

LABEL_79:
  objc_autoreleasePoolPop(v6);
}

void sub_100005CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005CC0(id a1)
{
  qword_100064348 = os_log_create("com.apple.RemoteServiceDiscovery", "CoreDevice");

  _objc_release_x1();
}

void sub_100005D04(void *a1)
{
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [qword_100064330 copy];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 136446210;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 control_peer];

        if (v9 == v1)
        {
          v10 = sub_100004B08();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v8 device_name];
            *buf = v12;
            v18 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peer connection canceled, disconnecting device: %{public}s", buf, 0xCu);
          }

          [v8 disconnect];
          [v8 cancelListener];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  xpc_connection_cancel(v1);
}

id sub_100005EA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  string = xpc_dictionary_get_string(v4, "device_name");
  if (!string)
  {
    v16 = sub_100004B08();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100038834();
    }

LABEL_23:
    v19 = sub_100006128(v4, "ERROR");
    goto LABEL_24;
  }

  v6 = string;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = qword_100064330;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v8)
  {
LABEL_12:

LABEL_20:
    v20 = sub_100004B08();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000387CC();
    }

    goto LABEL_23;
  }

  v9 = v8;
  v10 = *v23;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v23 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v22 + 1) + 8 * v11);
    v13 = [v12 control_peer];
    v14 = v13;
    if (v13 == v3)
    {
      break;
    }

LABEL_10:
    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v15 = strcmp([v12 device_name], v6);

  if (v15)
  {
    goto LABEL_10;
  }

  v17 = v12;

  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = sub_100004B08();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Disconnecting removed device: %{public}s", buf, 0xCu);
  }

  [v17 disconnect];
  [v17 cancelListener];
  v19 = sub_100006128(v4, "OK");

LABEL_24:

  return v19;
}

id sub_100006128(void *a1, const char *a2)
{
  reply = xpc_dictionary_create_reply(a1);
  xpc_dictionary_set_string(reply, "result", a2);

  return reply;
}

void sub_100006174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004B08();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) device_name];
    v12 = 138543618;
    v13 = v3;
    v14 = 2082;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@> got incoming remoted connection for device: %{public}s", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) connection];

  if (v6)
  {
    v7 = sub_100004B08();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> canceling existing connection to replace it", &v12, 0xCu);
    }

    v9 = [*(a1 + 32) client_connection];

    if (v9)
    {
      v10 = [*(a1 + 32) client_connection];
      nw_connection_cancel(v10);
    }

    v11 = [*(a1 + 32) connection];
    xpc_remote_connection_cancel();

    [*(a1 + 32) setClient_connection:v3];
  }

  else
  {
    [*(a1 + 32) setClient_connection:v3];
    [*(a1 + 32) needsConnect];
  }
}

void sub_100006318(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      port = nw_listener_get_port(*(a1 + 32));
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v8 = sub_100004B08();
        v9 = v8;
        if (port)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v10 = [*(a1 + 40) device_name];
            v17 = 67109378;
            v18 = port;
            v19 = 2082;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "listener port: %u for device: %{public}s", &v17, 0x12u);
          }

          v11 = sub_100006128(*(a1 + 48), "OK");
          xpc_dictionary_set_string(v11, "device_name", [*(a1 + 40) device_name]);
          xpc_dictionary_set_uint64(v11, "listener_port", port);
          if (!v11)
          {
            goto LABEL_31;
          }

LABEL_29:
          v16 = *(*(a1 + 56) + 8);
          if (*(v16 + 24))
          {
            *(v16 + 24) = 0;
            xpc_dictionary_send_reply();
          }

          goto LABEL_31;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_1000388D0(a1, v9);
        }

LABEL_28:
        v11 = sub_100006128(*(a1 + 48), "ERROR");
        if (!v11)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v14 = sub_100004B08();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 40) device_name];
        v17 = 67109378;
        v18 = port;
        v19 = 2082;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "listener port: %u for device: %{public}s, ignored because client is no longer waiting for reply", &v17, 0x12u);
      }
    }

    else if (v5)
    {
      v13 = sub_100004B08();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003895C(v6, a2, v13);
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        goto LABEL_28;
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  v12 = sub_100004B08();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100038868();
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v11 = sub_100006128(*(a1 + 48), "ERROR");
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 40) disconnect];
  [*(a1 + 40) cancelListener];
  if (v11)
  {
    goto LABEL_29;
  }

LABEL_31:
}

void sub_1000065F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10000661C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006638(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_100007228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!strcmp(string_ptr, "HasInternalSecurityPolicies"))
    {
      [*(a1 + 32) setIs_exposed_to_untrusted_devices_internal:1];
    }

    else if (!strcmp(string_ptr, "PreSetup"))
    {
      [*(a1 + 32) setIs_exposed_to_untrusted_devices_presetup:1];
    }
  }

  else
  {
    v5 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100038C78(a1, v5);
    }
  }

  return 1;
}

id sub_1000072F0(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_string)
  {
    xpc_string_get_string_ptr(v3);
    v6 = [NSNumber numberWithUnsignedInt:remote_device_type_parse()];
    v11 = v6;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    if (type != &_xpc_type_array)
    {
      v5 = 0;
      goto LABEL_7;
    }

    +[NSMutableArray array];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000D260;
    v8[3] = &unk_10005D290;
    v5 = v10 = a1;
    v9 = v5;
    xpc_array_apply(v3, v8);
    v6 = v9;
  }

LABEL_7:

  return v5;
}

uint64_t sub_100007898(uint64_t a1)
{
  memset(v14, 170, sizeof(v14));
  v2 = [*(a1 + 32) device];
  v3 = [*(a1 + 32) service];
  if (v2)
  {
    [v2 optionsForService:v3];
  }

  else
  {
    memset(v14, 0, 20);
  }

  result = sub_100024924([*(a1 + 32) socket], 0, 0, v14, &v14[2] + 1);
  if (!result)
  {
    *&v5 = 138543618;
    v13 = v5;
    do
    {
      v6 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 device];
        v10 = [*(a1 + 32) service];
        v11 = [v10 name];
        *buf = v13;
        v16 = v9;
        v17 = 2080;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@> Got incoming connection for %s", buf, 0x16u);
      }

      v12 = [*(a1 + 32) service];
      [v12 fireDevice:*(a1 + 40) fd:HIDWORD(v14[2])];

      close(SHIDWORD(v14[2]));
      result = sub_100024924([*(a1 + 32) socket], 0, 0, v14, &v14[2] + 1);
    }

    while (!result);
  }

  return result;
}

uint64_t sub_100007A68(uint64_t a1)
{
  v1 = [*(a1 + 32) socket];

  return close(v1);
}

uint64_t sub_100007F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) connection];

  if (!v5)
  {
    [*(a1 + 32) setLatestConnectError:a3];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

uint64_t sub_100008644(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_string)
  {
    v5 = *(a1 + 32);
    v6 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v4)];
    [v5 addObject:v6];
  }

  return 1;
}

void sub_100009598(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  v6 = sub_10001CB24(v5, a3);
  v7[2](v7, v6);
}

void sub_100009600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) connection];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) connection];
    v8 = *(a1 + 40);

    if (v7 != v8)
    {
      v9 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v4;
        *buf = 138543362;
        v81 = v10;
        v11 = "%{public}@> ignore message from previous connection";
LABEL_5:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
        goto LABEL_95;
      }

      goto LABEL_95;
    }
  }

  type = xpc_get_type(v3);
  v13 = [*v4 state];
  if (type == &_xpc_type_error)
  {
    if (v13 == 5)
    {
      v15 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        v16 = *v4;
        *buf = 138543362;
        v81 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@> Device connection interrupted, device already gone, giving up", buf, 0xCu);
      }
    }

    else
    {
      if ([*v4 state] != 2)
      {
        v21 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v4;
          *buf = 138543362;
          v81 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@> Device must renegotiate TLS", buf, 0xCu);
        }

        *(*v4 + 59) = 0;
        [*v4 refreshServiceListeners];
        if (*(*v4 + 57) == 1)
        {
          v23 = qword_1000646E0;
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *v4;
            *buf = 138543362;
            v81 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@> Device connection interrupted. Proceed to reset", buf, 0xCu);
          }

          [*v4 disconnect];
          [*v4 setState:0];
          [*v4 attach];
          goto LABEL_95;
        }
      }

      v31 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *v4;
        *buf = 138543362;
        v81 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@> Device connection interrupted", buf, 0xCu);
      }

      if ([*v4 state] == 1)
      {
        v33 = dispatch_time(0, 1000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A524;
        block[3] = &unk_10005D130;
        block[4] = *v4;
        dispatch_after(v33, qword_100064368, block);
      }

      else
      {
        v34 = [*v4 state];
        v35 = *v4;
        if (v34 == 2)
        {
          [v35 setState:0];
          v36 = qword_100064368;
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10000A52C;
          v78[3] = &unk_10005D130;
          v78[4] = *v4;
          v37 = v78;
        }

        else
        {
          [v35 setState:4];
          v36 = qword_100064368;
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_10000A534;
          v77[3] = &unk_10005D130;
          v77[4] = *v4;
          v37 = v77;
        }

        dispatch_async(v36, v37);
      }
    }

    v44 = [*v4 connection];

    if (v44)
    {
      v45 = [*v4 connection];
      xpc_remote_connection_cancel();

      [*v4 setConnection:0];
    }

    goto LABEL_95;
  }

  if (v13 == 1)
  {
    string = xpc_dictionary_get_string(v3, "MessageType");
    [*v4 setMessaging_protocol_version:{xpc_dictionary_get_uint64(v3, "MessagingProtocolVersion")}];
    if ([*v4 messaging_protocol_version] && (!string || strcmp(string, "Handshake")))
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100039688(v4);
      }

      goto LABEL_94;
    }

    [*v4 setUuid:{xpc_dictionary_get_uuid(v3, "UUID")}];
    v25 = xpc_dictionary_get_value(v3, "Properties");
    reply = v25;
    if (v25)
    {
      v27 = xpc_get_type(v25);
      v28 = qword_1000646E0;
      if (v27 != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_1000396F0();
        }

        goto LABEL_94;
      }

      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        v38 = *v4;
        *buf = 138543362;
        v81 = v38;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@> Updating existing properties dictionary", buf, 0xCu);
      }

      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10000A53C;
      applier[3] = &unk_10005D1A8;
      applier[4] = *v4;
      xpc_dictionary_apply(reply, applier);
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
      {
        v39 = [*v4 properties];
        v40 = xpc_copy_clean_description();

        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
        {
          sub_10003972C(v4);
        }

        free(v40);
        v41 = [*v4 public_properties];
        v42 = xpc_copy_clean_description();

        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
        {
          sub_10003979C(v4);
        }

        free(v42);
      }
    }

    v43 = xpc_dictionary_get_value(v3, "Services");
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10000A5F4;
    v75[3] = &unk_10005D1A8;
    v75[4] = *v4;
    xpc_dictionary_apply(v43, v75);
    if ([*v4 messaging_protocol_version] < 4 || (objc_msgSend(*v4, "tlsEnabled") & 1) != 0)
    {
      [*v4 handshakeCompleted:0];
    }

    else
    {
      [*v4 setState:2];
      *(*v4 + 58) = [*v4 negotiateTls];
      v46 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *v4;
        v48 = "Declined";
        if (*(*v4 + 58))
        {
          v48 = "Requested";
        }

        *buf = 138543618;
        v81 = v47;
        v82 = 2080;
        v83 = v48;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}@> %s TLS.", buf, 0x16u);
      }
    }

LABEL_91:
    goto LABEL_95;
  }

  v17 = [*v4 state];
  v18 = *v4;
  if (v17 != 2)
  {
    if ([v18 state] != 3)
    {
      sub_100039220(&v73, buf, v4);
    }

    if ([*v4 messaging_protocol_version])
    {
      v29 = xpc_dictionary_get_string(v3, "MessageType");
      if (v29)
      {
        v30 = v29;
        if (!strcmp(v29, "Heartbeat"))
        {
          if ((xpc_dictionary_expects_reply() & 1) == 0)
          {
            if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
            {
              sub_1000394E8(v4);
            }

            goto LABEL_94;
          }

          uint64 = xpc_dictionary_get_uint64(v3, "SequenceNumber");
          v51 = qword_1000646E0;
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *v4;
            *buf = 138543618;
            v81 = v52;
            v82 = 2048;
            v83 = uint64;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@> Responding to heartbeat request with sequence number %llu", buf, 0x16u);
          }

          *(*v4 + 11) = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
          ++*(*v4 + 13);
          reply = xpc_dictionary_create_reply(v3);
          xpc_dictionary_set_uint64(reply, "SequenceNumber", uint64);
        }

        else
        {
          if (!strcmp(v30, "Reset"))
          {
            reply = [*v4 handleReset:v3];
            if (reply)
            {
              goto LABEL_90;
            }

            goto LABEL_94;
          }

          if (!strcmp(v30, "ResetGoahead"))
          {
            goto LABEL_80;
          }

          if (!strcmp(v30, "Timesync"))
          {
            if ((xpc_dictionary_expects_reply() & 1) == 0)
            {
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                sub_1000393B0(v4);
              }

              goto LABEL_94;
            }

            v66 = xpc_dictionary_get_value(v3, "TimesyncPayload");
            if (!v66)
            {
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                sub_100039480(v4);
              }

              goto LABEL_94;
            }

            v67 = v66;
            v68 = sub_100010054(v66, qword_1000646E0);
            if (!v68)
            {
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                sub_100039418(v4);
              }

              goto LABEL_94;
            }

            v69 = v68;
            reply = xpc_dictionary_create_reply(v3);
            xpc_dictionary_set_value(reply, "TimesyncPayload", v69);
          }

          else
          {
            if (strcmp(v30, "Goodbye"))
            {
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                sub_1000392E0(v4);
              }

              goto LABEL_94;
            }

            if ((xpc_dictionary_expects_reply() & 1) == 0)
            {
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                sub_100039348(v4);
              }

              goto LABEL_94;
            }

            reply = xpc_dictionary_create_reply(v3);
            xpc_dictionary_set_string(reply, "Result", "Ok");
            v74[0] = _NSConcreteStackBlock;
            v74[1] = 3221225472;
            v74[2] = sub_10000A85C;
            v74[3] = &unk_10005D130;
            v74[4] = *v4;
            dispatch_async(qword_100064368, v74);
          }
        }

        if (!reply)
        {
          goto LABEL_95;
        }

        goto LABEL_90;
      }

      if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

LABEL_69:
      sub_100039550(v4);
      goto LABEL_94;
    }

    if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

LABEL_53:
    sub_1000395B8(v4);
    goto LABEL_94;
  }

  if (![v18 messaging_protocol_version])
  {
    if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

    goto LABEL_53;
  }

  v19 = xpc_dictionary_get_string(v3, "MessageType");
  if (!v19)
  {
    if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

    goto LABEL_69;
  }

  v20 = v19;
  if (!strcmp(v19, "Reset"))
  {
    v49 = [*v4 handleReset:v3];
    if (v49)
    {
      reply = v49;
LABEL_90:
      xpc_dictionary_send_reply();
      goto LABEL_91;
    }

LABEL_94:
    [*v4 disconnect];
    goto LABEL_95;
  }

  if (!strcmp(v20, "ResetGoahead"))
  {
LABEL_80:
    [*v4 handleResetGoAhead];
    goto LABEL_95;
  }

  if (strcmp(v20, "StartTls"))
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039620(v4);
    }

    goto LABEL_94;
  }

  v53 = xpc_dictionary_get_BOOL(v3, "YesNo");
  v54 = xpc_dictionary_get_uint64(v3, "TlsPolicy");
  if (v54)
  {
    v55 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *v4;
      v57 = v55;
      *buf = 138543618;
      v81 = v56;
      v82 = 2082;
      v83 = sub_100019E60(v54);
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}@> Peer TLS requirement: %{public}s", buf, 0x16u);
    }
  }

  v58 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
  {
    v59 = "declined";
    v60 = *v4;
    if (v53)
    {
      v59 = "requested";
    }

    *buf = 138543618;
    v81 = v60;
    v82 = 2080;
    v83 = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@> Peer %s TLS.", buf, 0x16u);
  }

  if (*(*v4 + 58) & v53)
  {
    v61 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *v4;
      *buf = 138543362;
      v81 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}@> Both sides requested TLS.", buf, 0xCu);
    }

    *(*v4 + 59) = 1;
    v63 = [*v4 isHost];
    v9 = qword_1000646E0;
    v64 = os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT);
    if (!v63)
    {
      if (!v64)
      {
        goto LABEL_95;
      }

      v72 = *v4;
      *buf = 138543362;
      v81 = v72;
      v11 = "%{public}@> Wait for peer to reset connection to enable TLS.";
      goto LABEL_5;
    }

    if (v64)
    {
      v65 = *v4;
      *buf = 138543362;
      v81 = v65;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@> Resetting connection to enable TLS.", buf, 0xCu);
    }

    [*v4 _resetNow];
  }

  else
  {
    *(*v4 + 59) = 0;
    v70 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *v4;
      *buf = 138543362;
      v81 = v71;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@> Not enabling TLS.", buf, 0xCu);
    }

    [*v4 handshakeCompleted:v54];
  }

LABEL_95:
}

uint64_t sub_10000A53C(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) properties];
  xpc_dictionary_set_value(v6, a2, v5);

  v9 = a2;
  if (lfind(&v9, &off_10005D2B0, &qword_100049E80, 8uLL, sub_10000D314))
  {
    v7 = [*(a1 + 32) public_properties];
    xpc_dictionary_set_value(v7, a2, v5);
  }

  return 1;
}

uint64_t sub_10000A5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v7 serviceWithName:a2];
    v9 = xpc_copy_clean_description();
    if ([*v6 shouldExposeRemoteService:a2])
    {
      v10 = qword_1000646E0;
      if (v8)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
        {
          v15 = *v6;
          v16 = 138543874;
          v17 = v15;
          v18 = 2080;
          v19 = a2;
          v20 = 2080;
          v21 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@> Updating port for existing remote service %s: %s", &v16, 0x20u);
        }

        [v8 updateWithDescription:v5];
      }

      else
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
        {
          v12 = *v6;
          v16 = 138543874;
          v17 = v12;
          v18 = 2082;
          v19 = a2;
          v20 = 2082;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@> Adding remote service %{public}s: %{public}s", &v16, 0x20u);
        }

        v13 = [[RSDRemoteService alloc] initWithName:a2 description:v5];
        if (!v13)
        {
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
          {
            sub_1000398EC(v6);
          }

          goto LABEL_12;
        }

        v8 = v13;
        [(RSDRemoteService *)v13 setDevice:*v6];
        v14 = [*v6 services];
        [v14 addObject:v8];
      }
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039878(v6);
    }

LABEL_12:
    free(v9);
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
  {
    sub_10003980C(a1);
  }

LABEL_13:

  return 1;
}

void sub_10000ABD4(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = a1 + 4;
  v4 = a1[4];
  v6 = *(v4 + 80);
  *(v4 + 80) = 0;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_1000399E0(a1 + 4);
    }
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, "SequenceNumber");
    v8 = qword_1000646E0;
    if (uint64 == a1[6])
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[4];
        v10 = a1[6];
        v14 = 138543618;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@> Heartbeat %llu succeeded", &v14, 0x16u);
      }

      *(*v5 + 64) = v6;
      *(*v5 + 72) = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    }

    else
    {
      v11 = uint64;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[4];
        v13 = a1[6];
        v14 = 138543874;
        v15 = v12;
        v16 = 2048;
        v17 = v13;
        v18 = 2048;
        v19 = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@> Heartbeat %llu failed - WRONG sequence number %llu in reply", &v14, 0x20u);
      }
    }
  }

  (*(a1[5] + 16))();
}

void sub_10000B054(void *a1, void *a2)
{
  v3 = a2;
  *(a1[4] + 60) = 0;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039BF8(a1 + 4);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v4 = xpc_dictionary_get_value(v3, "TimesyncPayload");
    if (v4)
    {
      sub_1000101B8(a1[6], v4, qword_1000646E0);
      v5 = *(a1[5] + 16);
    }

    else
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100039B90(a1 + 4);
      }

      v5 = *(a1[5] + 16);
    }

    v5();
  }
}

uint64_t sub_10000B310(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error && [*(a1 + 32) state] == 5)
  {
    v3 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> Device gone, aborting goodbye", &v7, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

void sub_10000BA04(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v4 = *(a1 + 32);
  if (type == &_xpc_type_error)
  {
    if ([v4 state] == 5)
    {
      v6 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> Device gone, aborting reset", buf, 0xCu);
      }
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BBC0;
      block[3] = &unk_10005D130;
      block[4] = *(a1 + 32);
      dispatch_async(qword_100064368, block);
    }
  }

  else
  {
    [v4 refreshServiceListeners];
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "MessageType", "ResetGoahead");
    v5 = [*(a1 + 32) connection];
    xpc_remote_connection_send_message();

    *(*(a1 + 32) + 56) = 0;
  }
}

void sub_10000CC40()
{
  v0 = sub_10001C540();
  if (v0)
  {
    v2 = v0;
    v1 = sub_10001BC84();
    xpc_dictionary_set_value(qword_1000646F8, "EncryptedRemoteXPCPopulatedOIDs", v1);

    v0 = v2;
  }
}

void sub_10000CCA8()
{
  v0 = [qword_1000646D8 valueForKey:@"device-uuid"];
  v1 = CFUUIDCreateFromString(0, v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = CFUUIDCreate(0);
    if (!v3)
    {
      sub_10003A44C(&buf, out);
    }

    v2 = v3;
    v4 = CFUUIDCreateString(0, v3);
    if (!v4)
    {
      sub_10003A3E0(&buf, out);
    }

    v0 = v4;
    [qword_1000646D8 setValue:v4 forKey:@"device-uuid"];
  }

  v7 = CFUUIDGetUUIDBytes(v2);
  uuid_copy(&xmmword_1000646E8, &v7.byte0);
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v5;
  *&out[16] = v5;
  uuid_unparse(&xmmword_1000646E8, out);
  v6 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x1004100202;
    v9 = 2096;
    v10 = &xmmword_1000646E8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device-uuid: %{uuid_t}.16P", &buf, 0x12u);
  }

  CFRelease(v2);
  CFRelease(v0);
}

char *sub_10000CE28(const __CFString *a1)
{
  v2 = (2 * CFStringGetLength(a1)) | 1;
  v3 = malloc_type_malloc(v2, 0xAB3468AuLL);
  if (!v3)
  {
    sub_10003A524(&v6, v7);
  }

  v4 = v3;
  if (!CFStringGetCString(a1, v3, v2, 0x8000100u))
  {
    sub_10003A4B8(&v6, v7);
  }

  return v4;
}

void sub_10000CEE0(void *a1, const char *a2, const __CFString *a3)
{
  v5 = a1;
  v6 = CFGetTypeID(a3);
  if (v6 == CFStringGetTypeID())
  {
    v7 = sub_10000CE28(a3);
    xpc_dictionary_set_string(v5, a2, v7);
    free(v7);
  }

  else
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = CFBooleanGetValue(a3) != 0;
      xpc_dictionary_set_BOOL(v5, a2, v9);
    }

    else
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0xAAAAAAAAAAAAAAAALL;
        CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
        xpc_dictionary_set_uint64(v5, a2, valuePtr);
      }

      else
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFDataGetTypeID())
        {
          BytePtr = CFDataGetBytePtr(a3);
          Length = CFDataGetLength(a3);
          xpc_dictionary_set_data(v5, a2, BytePtr, Length);
        }

        else
        {
          v14 = qword_1000646E0;
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
          {
            sub_10003A590(a2, v14, a3);
          }
        }
      }
    }
  }
}

void start()
{
  v0 = objc_opt_new();
  v1 = qword_100064700;
  qword_100064700 = v0;

  v2 = objc_opt_new();
  v3 = qword_100064708;
  qword_100064708 = v2;

  v4 = objc_opt_new();
  v5 = qword_100064360;
  qword_100064360 = v4;

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = qword_1000646F8;
  qword_1000646F8 = v6;

  v8 = os_log_create("com.apple.RemoteServiceDiscovery", "remoted");
  v9 = qword_1000646E0;
  qword_1000646E0 = v8;

  if (qword_1000646E0)
  {
    os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT);
  }

  v12 = _os_log_send_and_compose_impl();
  sub_10000D1DC(&v12);
  v10 = dispatch_queue_create("com.apple.remoted", 0);
  v11 = qword_100064368;
  qword_100064368 = v10;

  sub_10000D1E4();
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, &stru_10005D268);
  sub_100023A44(qword_100064368);
  dispatch_main();
}

uint64_t sub_10000D1E4()
{
  v0 = xpc_event_publisher_create();
  v1 = qword_100064358;
  qword_100064358 = v0;

  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();

  return xpc_event_publisher_activate();
}

uint64_t sub_10000D260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_string)
  {
    xpc_string_get_string_ptr(v4);
    v6 = remote_device_type_parse();
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [NSNumber numberWithUnsignedInt:v6];
      [v7 addObject:v8];
    }
  }

  else
  {
    v5 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_10003A634(a1, v5);
    }
  }

  return 1;
}

void sub_10000D320(id a1)
{
  v3 = 0;
  v1 = MGCopyAnswerWithError();
  byte_100064370 = CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  v2 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v5 = byte_100064370;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "InDiagnosticsMode: %d", buf, 8u);
  }
}

void sub_10000D428(id a1, unsigned int a2, unint64_t a3, OS_xpc_object *a4)
{
  v6 = a4;
  switch(a2)
  {
    case 2u:
      v19 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        *uu = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Finalized the initial set of remoted services", uu, 2u);
      }

      v20 = [[RSDPreferences alloc] initWithPrefDomain:@"com.apple.remoted"];
      v21 = qword_1000646D8;
      qword_1000646D8 = v20;

      [qword_1000646D8 migrateContentsOnDisk];
      sub_10001C488(qword_100064368);
      os_variant_has_internal_content();
      sub_10000CCA8();
      v22 = qword_1000646F8;
      has_internal_content = os_variant_has_internal_content();
      xpc_dictionary_set_BOOL(v22, "AppleInternal", has_internal_content);
      *buf = 0;
      if (!sub_10000F998("kern.osversion", buf))
      {
        _os_assumes_log();
      }

      v24 = *buf;
      if (*buf)
      {
        xpc_dictionary_set_string(qword_1000646F8, "BuildVersion", *buf);
        free(v24);
      }

      v25 = _CFCopySystemVersionDictionary();
      if (v25)
      {
        v26 = v25;
        Value = CFDictionaryGetValue(v25, _kCFSystemVersionProductVersionKey);
        if (Value)
        {
          sub_10000CEE0(qword_1000646F8, "OSVersion", Value);
        }

        CFRelease(v26);
      }

      v28 = bridge_version_copy_current_string();
      if (v28)
      {
        v29 = v28;
        xpc_dictionary_set_string(qword_1000646F8, "BridgeVersion", v28);
        free(v29);
      }

      else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_10003A754();
      }

      in = 0;
      if (!sub_10000F998("kern.bootsessionuuid", &in))
      {
        _os_assumes_log();
      }

      v33 = in;
      if (in)
      {
        memset(uu, 170, sizeof(uu));
        if (uuid_parse(in, uu))
        {
          _os_assumes_log();
        }

        else
        {
          xpc_dictionary_set_uuid(qword_1000646F8, "BootSessionUUID", uu);
        }
      }

      free(v33);
      v34 = qword_1000646F8;
      v35 = getenv("__OSINSTALL_ENVIRONMENT") != 0;
      xpc_dictionary_set_BOOL(v34, "OSInstallEnvironment", v35);
      v36 = [NSURL fileURLWithPath:@"/System/Library/CoreServices/RestoreVersion.plist" isDirectory:0];
      *uu = 0;
      v37 = [NSDictionary dictionaryWithContentsOfURL:v36 error:uu];
      v38 = *uu;
      v39 = v38;
      if (v37)
      {

        v40 = [v37 objectForKeyedSubscript:@"RestoreLongVersion"];
        v36 = v40;
        if (v40)
        {
          xpc_dictionary_set_string(qword_1000646F8, "RestoreLongVersion", [v40 UTF8String]);
        }

        else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_10003A790();
        }
      }

      else
      {
        v41 = qword_1000646E0;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10003A7CC(v39);
        }
      }

      version_flags = xpc_remote_connection_get_version_flags();
      xpc_dictionary_set_uint64(qword_1000646F8, "RemoteXPCVersionFlags", version_flags);
      xpc_dictionary_set_BOOL(qword_1000646F8, "SensitivePropertiesVisible", 1);

      sub_10000DBA4();
      if (os_variant_has_internal_content())
      {
        sub_10002F3CC(qword_100064368);
      }

      sub_1000051E4(qword_100064368);
      if (os_variant_has_internal_content())
      {
        sub_100033AB4(qword_100064368);
      }

      sub_100010888(qword_100064368);
      sub_100013A40(qword_100064368);
      sub_10002C404(qword_100064368);
      sub_10002AEC0(qword_100064368);
      if (os_variant_has_internal_content())
      {
        sub_1000228DC(qword_100064368);
      }

      sub_100016220(qword_100064368);
      sub_100018388(qword_100064368);
      sub_100034F4C(qword_100064368);
      sub_10000383C(qword_100064368);
      sub_10002715C(qword_100064368);
      sub_10002DC7C(qword_100064368);
      sub_1000031B8();
      sub_100024CBC();
      break;
    case 1u:
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = [qword_100064700 copy];
      v14 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v44;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            if ([v18 token] == a3)
            {
              v30 = qword_1000646E0;
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
              {
                v31 = v30;
                v32 = [v18 name];
                *uu = 136446210;
                *&uu[4] = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Unregistered remoted service: %{public}s", uu, 0xCu);
              }

              [qword_100064700 removeObject:v18];
              goto LABEL_38;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_38:

      break;
    case 0u:
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v58 = v7;
      v59 = v7;
      v56 = v7;
      v57 = v7;
      v54 = v7;
      v55 = v7;
      *uu = v7;
      v53 = v7;
      if ((xpc_get_event_name() & 1) == 0)
      {
        __strlcpy_chk();
      }

      v8 = [[RSDLocalService alloc] initWithToken:a3 name:uu event:v6];
      if (v8)
      {
        v9 = v8;
        [qword_100064700 addObject:v8];
        v10 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = uu;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Registered remoted service: %{public}s", buf, 0xCu);
        }

        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
        {
          v11 = xpc_copy_debug_description();
          v12 = qword_1000646E0;
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = uu;
            v50 = 2082;
            v51 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s: %{public}s", buf, 0x16u);
          }

          free(v11);
        }
      }

      break;
  }
}

void sub_10000DB00(id a1, int a2)
{
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void sub_10000DBA4()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    sub_10000CEE0(qword_1000646F8, "BoardId", v0);
    v2 = qword_1000646E0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "BoardId";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v1);
  }

  else
  {
    v3 = qword_1000646E0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003A884(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    v12 = v11;
    sub_10000CEE0(qword_1000646F8, "BoardRevision", v11);
    v13 = qword_1000646E0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "BoardRevision";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v12);
  }

  else
  {
    v14 = qword_1000646E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003A8FC(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = MGCopyAnswer();
  if (v22)
  {
    v23 = v22;
    sub_10000CEE0(qword_1000646F8, "CPUArchitecture", v22);
    v24 = qword_1000646E0;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "CPUArchitecture";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v23);
  }

  else
  {
    v25 = qword_1000646E0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003A974(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v33 = MGCopyAnswer();
  if (v33)
  {
    v34 = v33;
    sub_10000CEE0(qword_1000646F8, "CertificateProductionStatus", v33);
    v35 = qword_1000646E0;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "CertificateProductionStatus";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v34);
  }

  else
  {
    v36 = qword_1000646E0;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10003A9EC(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }

  v44 = MGCopyAnswer();
  if (v44)
  {
    v45 = v44;
    sub_10000CEE0(qword_1000646F8, "CertificateSecurityMode", v44);
    v46 = qword_1000646E0;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "CertificateSecurityMode";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v45);
  }

  else
  {
    v47 = qword_1000646E0;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10003AA64(v47, v48, v49, v50, v51, v52, v53, v54);
    }
  }

  v55 = MGCopyAnswer();
  if (v55)
  {
    v56 = v55;
    sub_10000CEE0(qword_1000646F8, "ChipID", v55);
    v57 = qword_1000646E0;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ChipID";
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v56);
  }

  else
  {
    v58 = qword_1000646E0;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_10003AADC(v58, v59, v60, v61, v62, v63, v64, v65);
    }
  }

  v66 = MGCopyAnswer();
  if (v66)
  {
    v67 = v66;
    sub_10000CEE0(qword_1000646F8, "DeviceClass", v66);
    v68 = qword_1000646E0;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "DeviceClass";
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v67);
  }

  else
  {
    v69 = qword_1000646E0;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_10003AB54(v69, v70, v71, v72, v73, v74, v75, v76);
    }
  }

  v77 = MGCopyAnswer();
  if (v77)
  {
    v78 = v77;
    sub_10000CEE0(qword_1000646F8, "DeviceColor", v77);
    v79 = qword_1000646E0;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "DeviceColor";
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v78);
  }

  else
  {
    v80 = qword_1000646E0;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_10003ABCC(v80, v81, v82, v83, v84, v85, v86, v87);
    }
  }

  v88 = MGCopyAnswer();
  if (v88)
  {
    v89 = v88;
    sub_10000CEE0(qword_1000646F8, "DeviceEnclosureColor", v88);
    v90 = qword_1000646E0;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "DeviceEnclosureColor";
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v89);
  }

  else
  {
    v91 = qword_1000646E0;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      sub_10003AC44(v91, v92, v93, v94, v95, v96, v97, v98);
    }
  }

  v99 = MGCopyAnswer();
  if (v99)
  {
    v100 = v99;
    sub_10000CEE0(qword_1000646F8, "DeviceSupportsLockdown", v99);
    v101 = qword_1000646E0;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "DeviceSupportsLockdown";
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v100);
  }

  else
  {
    v102 = qword_1000646E0;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_10003ACBC(v102, v103, v104, v105, v106, v107, v108, v109);
    }
  }

  v110 = MGCopyAnswer();
  if (v110)
  {
    v111 = v110;
    sub_10000CEE0(qword_1000646F8, "EffectiveProductionStatusAp", v110);
    v112 = qword_1000646E0;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "EffectiveProductionStatusAp";
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v111);
  }

  else
  {
    v113 = qword_1000646E0;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      sub_10003AD34(v113, v114, v115, v116, v117, v118, v119, v120);
    }
  }

  v121 = MGCopyAnswer();
  if (v121)
  {
    v122 = v121;
    sub_10000CEE0(qword_1000646F8, "EffectiveProductionStatusSEP", v121);
    v123 = qword_1000646E0;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "EffectiveProductionStatusSEP";
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v122);
  }

  else
  {
    v124 = qword_1000646E0;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      sub_10003ADAC(v124, v125, v126, v127, v128, v129, v130, v131);
    }
  }

  v132 = MGCopyAnswer();
  if (v132)
  {
    v133 = v132;
    sub_10000CEE0(qword_1000646F8, "EffectiveSecurityModeAp", v132);
    v134 = qword_1000646E0;
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "EffectiveSecurityModeAp";
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v133);
  }

  else
  {
    v135 = qword_1000646E0;
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      sub_10003AE24(v135, v136, v137, v138, v139, v140, v141, v142);
    }
  }

  v143 = MGCopyAnswer();
  if (v143)
  {
    v144 = v143;
    sub_10000CEE0(qword_1000646F8, "EffectiveSecurityModeSEP", v143);
    v145 = qword_1000646E0;
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "EffectiveSecurityModeSEP";
      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v144);
  }

  else
  {
    v146 = qword_1000646E0;
    if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
    {
      sub_10003AE9C(v146, v147, v148, v149, v150, v151, v152, v153);
    }
  }

  v154 = MGCopyAnswer();
  if (v154)
  {
    v155 = v154;
    sub_10000CEE0(qword_1000646F8, "EthernetMacAddress", v154);
    v156 = qword_1000646E0;
    if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "EthernetMacAddress";
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v155);
  }

  else
  {
    v157 = qword_1000646E0;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      sub_10003AF14(v157, v158, v159, v160, v161, v162, v163, v164);
    }
  }

  v165 = MGCopyAnswer();
  if (v165)
  {
    v166 = v165;
    sub_10000CEE0(qword_1000646F8, "ExtendedSecurityDomain", v165);
    v167 = qword_1000646E0;
    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ExtendedSecurityDomain";
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v166);
  }

  else
  {
    v168 = qword_1000646E0;
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      sub_10003AF8C(v168, v169, v170, v171, v172, v173, v174, v175);
    }
  }

  v176 = MGCopyAnswer();
  if (v176)
  {
    v177 = v176;
    sub_10000CEE0(qword_1000646F8, "HWModel", v176);
    v178 = qword_1000646E0;
    if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "HWModelStr";
      _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v177);
  }

  else
  {
    v179 = qword_1000646E0;
    if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
    {
      sub_10003B004(v179, v180, v181, v182, v183, v184, v185, v186);
    }
  }

  v187 = MGCopyAnswer();
  if (v187)
  {
    v188 = v187;
    sub_10000CEE0(qword_1000646F8, "HardwarePlatform", v187);
    v189 = qword_1000646E0;
    if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "HardwarePlatform";
      _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v188);
  }

  else
  {
    v190 = qword_1000646E0;
    if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
    {
      sub_10003B07C(v190, v191, v192, v193, v194, v195, v196, v197);
    }
  }

  v198 = MGCopyAnswer();
  if (v198)
  {
    v199 = v198;
    sub_10000CEE0(qword_1000646F8, "HasSEP", v198);
    v200 = qword_1000646E0;
    if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "HasSEP";
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v199);
  }

  else
  {
    v201 = qword_1000646E0;
    if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
      sub_10003B0F4(v201, v202, v203, v204, v205, v206, v207, v208);
    }
  }

  v209 = MGCopyAnswer();
  if (v209)
  {
    v210 = v209;
    sub_10000CEE0(qword_1000646F8, "HumanReadableProductVersionString", v209);
    v211 = qword_1000646E0;
    if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "HumanReadableProductVersionString";
      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v210);
  }

  else
  {
    v212 = qword_1000646E0;
    if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
    {
      sub_10003B16C(v212, v213, v214, v215, v216, v217, v218, v219);
    }
  }

  v220 = MGCopyAnswer();
  if (v220)
  {
    v221 = v220;
    sub_10000CEE0(qword_1000646F8, "Image4CryptoHashMethod", v220);
    v222 = qword_1000646E0;
    if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "Image4CryptoHashMethod";
      _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v221);
  }

  else
  {
    v223 = qword_1000646E0;
    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
    {
      sub_10003B1E4(v223, v224, v225, v226, v227, v228, v229, v230);
    }
  }

  v231 = MGCopyAnswer();
  if (v231)
  {
    v232 = v231;
    sub_10000CEE0(qword_1000646F8, "Image4Supported", v231);
    v233 = qword_1000646E0;
    if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "Image4Supported";
      _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v232);
  }

  else
  {
    v234 = qword_1000646E0;
    if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
    {
      sub_10003B25C(v234, v235, v236, v237, v238, v239, v240, v241);
    }
  }

  v242 = MGCopyAnswer();
  if (v242)
  {
    v243 = v242;
    sub_10000CEE0(qword_1000646F8, "IsUIBuild", v242);
    v244 = qword_1000646E0;
    if (os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "IsUIBuild";
      _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v243);
  }

  else
  {
    v245 = qword_1000646E0;
    if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
    {
      sub_10003B2D4(v245, v246, v247, v248, v249, v250, v251, v252);
    }
  }

  v253 = MGCopyAnswer();
  if (v253)
  {
    v254 = v253;
    sub_10000CEE0(qword_1000646F8, "IsVirtualDevice", v253);
    v255 = qword_1000646E0;
    if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "IsVirtualDevice";
      _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v254);
  }

  else
  {
    v256 = qword_1000646E0;
    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
    {
      sub_10003B34C(v256, v257, v258, v259, v260, v261, v262, v263);
    }
  }

  v264 = MGCopyAnswer();
  if (v264)
  {
    v265 = v264;
    sub_10000CEE0(qword_1000646F8, "MobileDeviceMinimumVersion", v264);
    v266 = qword_1000646E0;
    if (os_log_type_enabled(v266, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "MobileDeviceMinimumVersion";
      _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v265);
  }

  else
  {
    v267 = qword_1000646E0;
    if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
    {
      sub_10003B3C4(v267, v268, v269, v270, v271, v272, v273, v274);
    }
  }

  v275 = MGCopyAnswer();
  if (v275)
  {
    v276 = v275;
    sub_10000CEE0(qword_1000646F8, "ModelNumber", v275);
    v277 = qword_1000646E0;
    if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ModelNumber";
      _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v276);
  }

  else
  {
    v278 = qword_1000646E0;
    if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
    {
      sub_10003B43C(v278, v279, v280, v281, v282, v283, v284, v285);
    }
  }

  v286 = MGCopyAnswer();
  if (v286)
  {
    v287 = v286;
    sub_10000CEE0(qword_1000646F8, "OceanComputeCarrierID", v286);
    v288 = qword_1000646E0;
    if (os_log_type_enabled(v288, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "OceanComputeCarrierID";
      _os_log_impl(&_mh_execute_header, v288, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v287);
  }

  else
  {
    v289 = qword_1000646E0;
    if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
    {
      sub_10003B4B4(v289, v290, v291, v292, v293, v294, v295, v296);
    }
  }

  v297 = MGCopyAnswer();
  if (v297)
  {
    v298 = v297;
    sub_10000CEE0(qword_1000646F8, "OceanComputeCarrierSlot", v297);
    v299 = qword_1000646E0;
    if (os_log_type_enabled(v299, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "OceanComputeCarrierSlot";
      _os_log_impl(&_mh_execute_header, v299, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v298);
  }

  else
  {
    v300 = qword_1000646E0;
    if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
    {
      sub_10003B52C(v300, v301, v302, v303, v304, v305, v306, v307);
    }
  }

  v308 = MGCopyAnswer();
  if (v308)
  {
    v309 = v308;
    sub_10000CEE0(qword_1000646F8, "ProductName", v308);
    v310 = qword_1000646E0;
    if (os_log_type_enabled(v310, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ProductName";
      _os_log_impl(&_mh_execute_header, v310, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v309);
  }

  else
  {
    v311 = qword_1000646E0;
    if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
    {
      sub_10003B5A4(v311, v312, v313, v314, v315, v316, v317, v318);
    }
  }

  v319 = MGCopyAnswer();
  if (v319)
  {
    v320 = v319;
    sub_10000CEE0(qword_1000646F8, "ProductType", v319);
    v321 = qword_1000646E0;
    if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ProductType";
      _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v320);
  }

  else
  {
    v322 = qword_1000646E0;
    if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
    {
      sub_10003B61C(v322, v323, v324, v325, v326, v327, v328, v329);
    }
  }

  v330 = MGCopyAnswer();
  if (v330)
  {
    v331 = v330;
    sub_10000CEE0(qword_1000646F8, "ProductVersionExtra", v330);
    v332 = qword_1000646E0;
    if (os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ProductVersionExtra";
      _os_log_impl(&_mh_execute_header, v332, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v331);
  }

  else
  {
    v333 = qword_1000646E0;
    if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
    {
      sub_10003B694(v333, v334, v335, v336, v337, v338, v339, v340);
    }
  }

  v341 = MGCopyAnswer();
  if (v341)
  {
    v342 = v341;
    sub_10000CEE0(qword_1000646F8, "RegionCode", v341);
    v343 = qword_1000646E0;
    if (os_log_type_enabled(v343, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "RegionCode";
      _os_log_impl(&_mh_execute_header, v343, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v342);
  }

  else
  {
    v344 = qword_1000646E0;
    if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
    {
      sub_10003B70C(v344, v345, v346, v347, v348, v349, v350, v351);
    }
  }

  v352 = MGCopyAnswer();
  if (v352)
  {
    v353 = v352;
    sub_10000CEE0(qword_1000646F8, "RegionInfo", v352);
    v354 = qword_1000646E0;
    if (os_log_type_enabled(v354, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "RegionInfo";
      _os_log_impl(&_mh_execute_header, v354, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v353);
  }

  else
  {
    v355 = qword_1000646E0;
    if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
    {
      sub_10003B784(v355, v356, v357, v358, v359, v360, v361, v362);
    }
  }

  v363 = MGCopyAnswer();
  if (v363)
  {
    v364 = v363;
    sub_10000CEE0(qword_1000646F8, "ReleaseType", v363);
    v365 = qword_1000646E0;
    if (os_log_type_enabled(v365, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ReleaseType";
      _os_log_impl(&_mh_execute_header, v365, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v364);
  }

  else
  {
    v366 = qword_1000646E0;
    if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
    {
      sub_10003B7FC(v366, v367, v368, v369, v370, v371, v372, v373);
    }
  }

  v374 = MGCopyAnswer();
  if (v374)
  {
    v375 = v374;
    sub_10000CEE0(qword_1000646F8, "SecurityDomain", v374);
    v376 = qword_1000646E0;
    if (os_log_type_enabled(v376, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "SecurityDomain";
      _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v375);
  }

  else
  {
    v377 = qword_1000646E0;
    if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
    {
      sub_10003B874(v377, v378, v379, v380, v381, v382, v383, v384);
    }
  }

  v385 = MGCopyAnswer();
  if (v385)
  {
    v386 = v385;
    sub_10000CEE0(qword_1000646F8, "SerialNumber", v385);
    v387 = qword_1000646E0;
    if (os_log_type_enabled(v387, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "SerialNumber";
      _os_log_impl(&_mh_execute_header, v387, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v386);
  }

  else
  {
    v388 = qword_1000646E0;
    if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
    {
      sub_10003B8EC(v388, v389, v390, v391, v392, v393, v394, v395);
    }
  }

  v396 = MGCopyAnswer();
  if (v396)
  {
    v397 = v396;
    sub_10000CEE0(qword_1000646F8, "SigningFuse", v396);
    v398 = qword_1000646E0;
    if (os_log_type_enabled(v398, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "SigningFuse";
      _os_log_impl(&_mh_execute_header, v398, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v397);
  }

  else
  {
    v399 = qword_1000646E0;
    if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
    {
      sub_10003B964(v399, v400, v401, v402, v403, v404, v405, v406);
    }
  }

  v407 = MGCopyAnswer();
  if (v407)
  {
    v408 = v407;
    sub_10000CEE0(qword_1000646F8, "StoreDemoMode", v407);
    v409 = qword_1000646E0;
    if (os_log_type_enabled(v409, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "StoreDemoMode";
      _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v408);
  }

  else
  {
    v410 = qword_1000646E0;
    if (os_log_type_enabled(v410, OS_LOG_TYPE_ERROR))
    {
      sub_10003B9DC(v410, v411, v412, v413, v414, v415, v416, v417);
    }
  }

  v418 = MGCopyAnswer();
  if (v418)
  {
    v419 = v418;
    sub_10000CEE0(qword_1000646F8, "SupplementalBuildVersion", v418);
    v420 = qword_1000646E0;
    if (os_log_type_enabled(v420, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "SupplementalBuildVersion";
      _os_log_impl(&_mh_execute_header, v420, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v419);
  }

  else
  {
    v421 = qword_1000646E0;
    if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
    {
      sub_10003BA54(v421, v422, v423, v424, v425, v426, v427, v428);
    }
  }

  v429 = MGCopyAnswer();
  if (v429)
  {
    v430 = v429;
    sub_10000CEE0(qword_1000646F8, "ThinningProductType", v429);
    v431 = qword_1000646E0;
    if (os_log_type_enabled(v431, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "ThinningProductType";
      _os_log_impl(&_mh_execute_header, v431, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v430);
  }

  else
  {
    v432 = qword_1000646E0;
    if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
    {
      sub_10003BACC(v432, v433, v434, v435, v436, v437, v438, v439);
    }
  }

  v440 = MGCopyAnswer();
  if (v440)
  {
    v441 = v440;
    sub_10000CEE0(qword_1000646F8, "UniqueChipID", v440);
    v442 = qword_1000646E0;
    if (os_log_type_enabled(v442, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "UniqueChipID";
      _os_log_impl(&_mh_execute_header, v442, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v441);
  }

  else
  {
    v443 = qword_1000646E0;
    if (os_log_type_enabled(v443, OS_LOG_TYPE_ERROR))
    {
      sub_10003BB44(v443, v444, v445, v446, v447, v448, v449, v450);
    }
  }

  v451 = MGCopyAnswer();
  if (v451)
  {
    v452 = v451;
    sub_10000CEE0(qword_1000646F8, "UniqueDeviceID", v451);
    v453 = qword_1000646E0;
    if (os_log_type_enabled(v453, OS_LOG_TYPE_INFO))
    {
      v462 = 136315138;
      v463 = "UniqueDeviceID";
      _os_log_impl(&_mh_execute_header, v453, OS_LOG_TYPE_INFO, "Populated property with MG: %s", &v462, 0xCu);
    }

    CFRelease(v452);
  }

  else
  {
    v454 = qword_1000646E0;
    if (os_log_type_enabled(v454, OS_LOG_TYPE_ERROR))
    {
      sub_10003BBBC(v454, v455, v456, v457, v458, v459, v460, v461);
    }
  }
}

size_t sub_10000F998(const char *a1, char **a2)
{
  *__error() = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  *__s1 = v4;
  v15 = v4;
  size = 128;
  v5 = sysctlbyname(a1, __s1, &size, 0, 0);
  v6 = v5;
  if (size)
  {
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    size = 128;
    *__error() = 12;
    if (v6)
    {
      return 0;
    }
  }

  if (size != 128 || *__error() != 12)
  {
    goto LABEL_13;
  }

  if (sysctlbyname(a1, 0, &size, 0, 0))
  {
    return 0;
  }

  if (size < 0x81)
  {
LABEL_13:
    v10 = 0;
    v9 = __s1;
LABEL_14:
    *a2 = strdup(v9);
    v9 = v10;
    goto LABEL_15;
  }

  v8 = malloc_type_malloc(size, 0x381D41DCuLL);
  if (!v8)
  {
    sub_10003BC34(&v11, v13);
  }

  v9 = v8;
  if (!sysctlbyname(a1, v8, &size, 0, 0))
  {
    v10 = v9;
    goto LABEL_14;
  }

  size = 0;
LABEL_15:
  free(v9);
  return size;
}

double sub_10000FB34(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t *sub_10000FB6C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10000FB78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000FBC0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_10000FBF0()
{

  return _os_log_send_and_compose_impl();
}

void sub_10000FC10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL sub_10000FC30()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000FC48()
{
  v2 = *v0;

  return _os_crash_msg();
}

void sub_10000FC60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10000FC88()
{
  if (qword_100064388 != -1)
  {
    sub_10003BCA0();
  }

  return byte_100064380;
}

void sub_10000FCC0(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      v4 = _os_crash_msg();
      sub_10003BCB4(v4);
    }

    byte_100064380 = CFStringCompare(v2, @"AppleDisplay", 0) == kCFCompareEqualTo;

    CFRelease(v2);
  }

  else
  {
    byte_100064380 = 0;
  }
}

uint64_t sub_10000FE64()
{
  if (qword_100064398 != -1)
  {
    sub_10003BCB8();
  }

  return byte_100064390;
}

void sub_10000FE9C(id a1)
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    byte_100064390 = [v1 BOOLValue];
  }
}

unint64_t sub_10000FF0C()
{
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  if (clock_gettime(_CLOCK_REALTIME, &__tp))
  {
    sub_10003BCCC(&v3, v5);
  }

  __tp.tv_sec += 2208988800;
  v0 = sntp_datestamp_from_timespec(__tp.tv_sec);
  return sntp_timestamp_from_datestamp(v0, v1);
}

id sub_10000FF98(unint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  memset(bytes, 0, sizeof(bytes));
  LOBYTE(bytes[0]) = 35;
  v10 = sntp_timestamp_hton(a1);
  v4 = xpc_data_create(bytes, 0x30uLL);
  if (!v4)
  {
    sub_10003BD80(&v7, v11);
  }

  v5 = v4;

  return v5;
}

id sub_100010054(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v5;
  v19 = v5;
  bytes[2] = v5;
  buffer = v5;
  bytes[0] = v5;
  bytes[1] = v5;
  v6 = sub_10000FF0C();
  v7 = sntp_timestamp_hton(v6);
  if (xpc_data_get_bytes(v3, &buffer, 0, 0x30uLL) == 48)
  {
    v20[0] = buffer;
    v20[1] = v18;
    v20[2] = v19;
    v11 = 292;
    v12 = 0;
    v13 = 0;
    v14 = 1280262988;
    v15 = v7;
    sntp_server_respond(v20, &v11, sub_10000FF0C, bytes);
    v8 = xpc_data_create(bytes, 0x30uLL);
    if (!v8)
    {
      sub_10003BD80(&v11, v20);
    }

    v9 = v8;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE18();
    }

    v9 = 0;
  }

  return v9;
}

void sub_1000101B8(unint64_t a1, void *a2, void *a3)
{
  v31 = a1;
  v4 = a3;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[3] = v5;
  v30[4] = v5;
  v30[1] = v5;
  v30[2] = v5;
  v29 = v5;
  v30[0] = v5;
  buffer = v5;
  v28 = v5;
  if (xpc_data_get_bytes(a2, &buffer, 0, 0x30uLL) == 48)
  {
    v26 = sub_10000FF0C();
    *&v36.modes = buffer;
    *&v36.freq = v28;
    *&v36.esterror = v29;
    sntp_client_process_response(&v36, &v31, &v26, v30);
    if (LODWORD(v30[0]))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10003BE98();
      }

      goto LABEL_29;
    }

    v6 = sntp_calc_offset(v30);
    v8 = v7;
    v9 = v26;
    v10 = v4;
    v11 = sntp_datestamp_to_nsec(v6, v8);
    v12 = sntp_timestamp_to_datestamp(v9);
    v14 = sntp_datestamp_to_timespec(v12, v13);
    v16 = v15;
    v17 = v14 - 2208988800;
    v32[0] = v14 - 2208988800;
    v32[1] = v15;
    if (v11 >= 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = -v11;
    }

    if (!v6 && v18 < 0x7A12000)
    {
      *&v36.modes = 8209;
      memset(&v36.freq, 0, 120);
      v36.offset = v11;
      v36.status = 1;
      v19 = ntp_adjtime(&v36);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v36.offset;
        v34 = 2048;
        v35 = v36.freq / 0x10000;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PACING with ntp_adjtime of %lld ns => resulting offset: %ld ns freq: %ld PPM", buf, 0x20u);
      }

      if (v19 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003BF0C();
      }

LABEL_28:

      goto LABEL_29;
    }

    v20 = sntp_datestamp_to_timespec(v6, v8);
    v22 = v21 + v16;
    *buf = v20 + v17;
    *&buf[8] = v21 + v16;
    if (v21 + v16 <= 999999999)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
LABEL_22:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v36.modes = 68158466;
          *(&v36.modes + 1) = 16;
          LOWORD(v36.offset) = 2096;
          *(&v36.offset + 2) = v32;
          WORD1(v36.freq) = 1040;
          HIDWORD(v36.freq) = 16;
          LOWORD(v36.maxerror) = 2096;
          *(&v36.maxerror + 2) = buf;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setting time from %{timespec}.*P to %{timespec}.*P", &v36, 0x22u);
        }

        if (clock_settime(_CLOCK_REALTIME, buf))
        {
          v25 = v10;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10003BF80(v25);
          }
        }

        goto LABEL_28;
      }

      v23 = 1000000000;
      v24 = -1;
    }

    else
    {
      v23 = -1000000000;
      v24 = 1;
    }

    *buf = v20 + v17 + v24;
    *&buf[8] = v23 + v22;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003BE58();
  }

LABEL_29:
}

void sub_100010888(void *a1)
{
  v2 = a1;
  if (!qword_1000643A0)
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "ncm_host");
    v4 = qword_1000643A8;
    qword_1000643A8 = v3;

    v5 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing ncm host backend", buf, 2u);
    }

    objc_storeStrong(&qword_1000643A0, a1);
    v6 = objc_opt_new();
    v7 = qword_1000643B0;
    qword_1000643B0 = v6;

    v8 = qword_1000643B0;
    if (!v8)
    {
      sub_10003C1C0(&v23, buf);
    }

    v9 = objc_opt_new();
    v10 = qword_1000643B8;
    qword_1000643B8 = v9;

    v11 = qword_1000643B8;
    if (!v11)
    {
      sub_10003C130(&v23, buf);
    }

    if (qword_1000643C0)
    {
      sub_10003C010(&v23, buf);
    }

    v12 = sub_100013178(qword_1000643A0);
    qword_1000643C0 = v12;
    if (!v12)
    {
      sub_10003C0A0(&v23, buf);
    }

    v13 = IOServiceMatching("AppleUSBNCMData");
    if (!v13)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *buf = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v23 = 134217984;
      v24 = 0;
      _os_log_send_and_compose_impl();
      v19 = _os_crash_msg();
      sub_10003BCB4(v19);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = Mutable;
    if (!Mutable)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *buf = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v23 = 134217984;
      v24 = 0;
      _os_log_send_and_compose_impl();
      v20 = _os_crash_msg();
      sub_10003BCB4(v20);
    }

    CFDictionarySetValue(Mutable, @"IOModel", @"USB");
    valuePtr = 1452;
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v15, @"idVendor", v16);
    CFDictionarySetValue(v13, @"IOPropertyMatch", v15);
    v17 = IOServiceMatching("IOEthernetInterface");
    v18 = v17;
    if (!v17)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *buf = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v23 = 134217984;
      v24 = 0;
      _os_log_send_and_compose_impl();
      v21 = _os_crash_msg();
      sub_10003BCB4(v21);
    }

    CFDictionarySetValue(v17, @"IOParentMatch", v13);
    if (v16)
    {
      CFRelease(v16);
    }

    CFRelease(v15);
    CFRelease(v13);
    sub_100013284(v12, sub_100010DBC, v18);
  }
}

void sub_100010D4C(_Unwind_Exception *a1)
{
  CFRelease(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100010DBC(uint64_t a1, io_iterator_t iterator)
{
  if (!a1)
  {
    sub_10003C3CC(v50, buf);
  }

  result = IOIteratorNext(iterator);
  if (!result)
  {
    return result;
  }

  v5 = result;
  do
  {
    v42 = v5;
    v6 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NCM device attached", buf, 2u);
    }

    v7 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "IOIteratorNext returned %d", buf, 8u);
    }

    if (sub_100013940(v5))
    {
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEBUG))
      {
        sub_10003C2EC(&v40, v41);
      }

      goto LABEL_16;
    }

    v8 = sub_100012610(v5);
    if (v8)
    {
      goto LABEL_12;
    }

    iteratora = 0;
    v16 = IOObjectCopyClass(v5);
    v17 = v16;
    if (!v16)
    {
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        sub_10003C284(&v47, v48);
      }

      goto LABEL_54;
    }

    if (CFStringCompare(v16, @"IOEthernetInterface", 0))
    {
      v18 = qword_1000643A8;
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unsupported class %@", buf, 0xCu);
      }

LABEL_54:
      LODWORD(v26) = 0;
      v28 = 0;
      goto LABEL_55;
    }

    v19 = sub_1000126BC(v5, 3);
    v20 = v19;
    if (!v19)
    {
      v23 = sub_100012760(v5);
      v24 = qword_1000643A8;
      v25 = os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        if (v25)
        {
          *buf = 136315138;
          *&buf[4] = v23;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Can't find 3rd parent for %s", buf, 0xCu);
        }

        free(v23);
      }

      else if (v25)
      {
        sub_10003C284(&v45, v46);
      }

      goto LABEL_54;
    }

    if (!IOObjectConformsTo(v19, "IOUSBDevice"))
    {
      v26 = IOObjectCopyClass(v20);
      v27 = qword_1000643A8;
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unexpected 3rd parent class %@", buf, 0xCu);
        if (!v26)
        {
          goto LABEL_38;
        }
      }

      else if (!v26)
      {
LABEL_38:
        v28 = 0;
        goto LABEL_69;
      }

      CFRelease(v26);
LABEL_37:
      LODWORD(v26) = 0;
      goto LABEL_38;
    }

    v21 = IORegistryEntryCreateIterator(v20, "IOService", 0, &iteratora);
    if (v21)
    {
      v22 = qword_1000643A8;
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v21;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "IORegistryEntryCreateIterator failed: 0x%08x", buf, 8u);
      }

      goto LABEL_37;
    }

    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v58 = v29;
    v59 = v29;
    v56 = v29;
    v57 = v29;
    v54 = v29;
    v55 = v29;
    *buf = v29;
    v53 = v29;
    while (1)
    {
      while (1)
      {
        v30 = IOIteratorNext(iteratora);
        v31 = v30;
        if (!v30)
        {
          LODWORD(v26) = 0;
          goto LABEL_68;
        }

        v32 = sub_100012760(v30);
        v33 = qword_1000643A8;
        if (v32)
        {
          break;
        }

        if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
        {
          sub_10003C250(&v43, v44);
        }
      }

      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 136315138;
        v51 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Iterating %s", v50, 0xCu);
      }

      free(v32);
      Name = IORegistryEntryGetName(v31, buf);
      if (!Name)
      {
        break;
      }

      v35 = qword_1000643A8;
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        *v50 = 67109120;
        LODWORD(v51) = Name;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName failed: 0x%08x", v50, 8u);
      }

LABEL_51:
      IOObjectRelease(v31);
    }

    if (*buf ^ 0x61746144204D434ELL | buf[8] || !sub_100012610(v31))
    {
      goto LABEL_51;
    }

    IOObjectRelease(v31);
    LODWORD(v26) = 1;
LABEL_68:
    v28 = 1;
LABEL_69:
    IOObjectRelease(v20);
LABEL_55:
    if (iteratora)
    {
      IOObjectRelease(iteratora);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v36 = qword_1000643A8;
    if (v28)
    {
      v37 = os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (v37)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not using the public NCM interface due to the existence of private NCM interface", buf, 2u);
        }

        goto LABEL_16;
      }

      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Using the public NCM interface", buf, 2u);
      }

LABEL_12:
      v9 = [RSDNCMInterface alloc];
      v10 = [(RSDNCMInterface *)v9 initWithService:v5 notificationPort:a1 queue:qword_1000643A0];
      v11 = v10;
      if (v10)
      {
        [(RSDNCMInterface *)v10 setIs_private:v8];
        v12 = v11;
        [(RSDNCMInterface *)v12 setInactive_callback:&stru_10005D460];
        [(RSDNCMInterface *)v12 setAddressed_callback:&stru_10005D480];
        [(RSDNCMInterface *)v12 setDetached_callback:&stru_10005D4A0];

        if ([(RSDNCMInterface *)v12 activate])
        {
          v13 = [[RSDRemoteNCMHostDevice alloc] initWithInterface:v12];
          [(RSDNCMInterface *)v12 setDevice:v13];
          *buf = -1431655766;
          v14 = v13;
          v15 = [(RSDRemoteNCMDevice *)v14 interface];
          sub_100012DE0([v15 service], buf);

          [(RSDRemoteDevice *)v14 setBackendProperty:"LocationID" withUint:*buf];
          [(RSDRemoteNCMHostDevice *)v14 attach];
          [qword_1000643B0 addObject:v12];
        }
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
    {
      sub_10003C2B8(&v38, v39);
    }

LABEL_16:
    if (IOObjectRelease(v5))
    {
      sub_10003C324(v50, buf);
    }

    result = IOIteratorNext(iterator);
    v5 = result;
  }

  while (result);
  return result;
}

void sub_1000114C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  if (v19)
  {
    CFRelease(v19);
  }

  sub_1000125A8(&a19);
  _Unwind_Resume(a1);
}

void sub_100011A34(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) state] != 3)
  {
    v2 = [*v1 connection];

    if (v2)
    {
      v3 = qword_1000643A8;
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        sub_10003C534(v1, v3);
      }

      v4 = [*v1 connection];
      xpc_remote_connection_cancel();
    }
  }
}

void sub_100012130(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
    {
      sub_10003C7D4(a1);
    }

    [*(a1 + 32) connect:0];
  }

  else
  {
    v4 = [*(a1 + 32) connection];

    v5 = qword_1000643A8;
    v6 = os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, but socket is not needed anymore, closing", &v11, 0xCu);
      }

      close(*(*(a1 + 32) + 304));
    }

    else
    {
      if (v6)
      {
        v8 = *(a1 + 32);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, socket is connected", &v11, 0xCu);
      }

      v9 = *(*(a1 + 32) + 304);
      xpc_remote_connection_get_failsafe_version_flags();
      v10 = xpc_remote_connection_create_with_connected_fd();
      [*(a1 + 32) connect:v10];
    }
  }

  *(*(a1 + 32) + 304) = -1;
}

uint64_t sub_1000125A8(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_10003C85C(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_100012610(io_registry_entry_t a1)
{
  v8 = 0;
  v2 = -5;
  do
  {
    if (sub_100012E88(a1, &v8))
    {
      return (HIBYTE(v8) >> 5) & 1;
    }

    usleep(0x186A0u);
  }

  while (!__CFADD__(v2++, 1));
  v4 = qword_1000643A8;
  v5 = os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to extract nwifflags, fallback to false", v7, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_1000126BC(io_registry_entry_t a1, int a2)
{
  if (!a1)
  {
    sub_10003C8F0(&v5, parent);
  }

  parent[0] = 0;
  v3 = 0;
  if (!IORegistryEntryGetParentEntry(a1, "IOService", parent))
  {
    v3 = parent[0];
    if (a2 != 1)
    {
      v3 = sub_1000126BC(parent[0], (a2 - 1));
      IOObjectRelease(parent[0]);
    }
  }

  return v3;
}

const __CFString *sub_100012760(io_registry_entry_t a1)
{
  result = IORegistryEntryCopyPath(a1, "IOService");
  if (result)
  {
    v2 = result;
    v3 = sub_10000CE28(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void sub_1000127A4(id a1, RSDNCMInterface *a2)
{
  v2 = [(RSDNCMInterface *)a2 device];
  sub_100031ABC(v2);
  [v2 triggerNeedsConnect];
  [v2 setSuspended:0];
}

void sub_1000127FC(id a1, RSDNCMInterface *a2)
{
  v2 = a2;
  v3 = [(RSDNCMInterface *)v2 device];
  [v3 disconnect];
  [(RSDNCMInterface *)v2 setDevice:0];
  [qword_1000643B0 removeObject:v2];
}

_BYTE *sub_10001286C(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10001287C()
{

  return _os_log_send_and_compose_impl();
}

double sub_1000128A0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

const void *sub_1000128C4(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFBooleanGetTypeID());
  }

  return result;
}

BOOL sub_1000128FC(void *a1, uint64_t a2, id a3)
{
  v5 = a1;
  v6 = [v5 domain];
  if ([v6 isEqual:a2])
  {
    v7 = [v5 code] == a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10001296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = a6;
  v14 = [NSString stringWithUTF8String:a7];
  v15 = [NSString stringWithUTF8String:a1];
  v16 = [NSString stringWithUTF8String:a4];
  v17 = [NSString stringWithUTF8String:a2];
  v18 = [NSNumber numberWithInt:a3];
  v19 = objc_alloc_init(NSMutableDictionary);
  [v19 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
  if (os_variant_allows_internal_security_policies())
  {
    [v19 setObject:v15 forKeyedSubscript:@"FunctionName"];
    [v19 setObject:v17 forKeyedSubscript:@"FileName"];
    [v19 setObject:v18 forKeyedSubscript:@"LineNumber"];
  }

  if (v13)
  {
    [v19 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v20 = [[NSError alloc] initWithDomain:v16 code:a5 userInfo:v19];

  return v20;
}

BOOL sub_100012B08(io_registry_entry_t a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"IOLinkStatus", kCFAllocatorDefault, 3u);
    v2 = v4 != 0;
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _os_assumes_log();
      }

      *a2 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = sub_100012BD8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10003C964();
      }
    }
  }

  return v2;
}

id sub_100012BD8()
{
  if (qword_1000643D0 != -1)
  {
    sub_10003C9A0();
  }

  v1 = qword_1000643C8;

  return v1;
}

BOOL sub_100012C1C(io_registry_entry_t a1, char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"BSD Name", kCFAllocatorDefault, 3u);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 != CFStringGetTypeID())
      {
        _os_assumes_log();
      }

      SystemEncoding = CFStringGetSystemEncoding();
      CString = CFStringGetCString(v5, a2, 16, SystemEncoding);
      v2 = CString != 0;
      if (CString && !*a2)
      {
        _os_assumes_log();
      }

      CFRelease(v5);
    }

    else
    {
      v9 = sub_100012BD8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003C9B4();
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_100012D28(io_registry_entry_t entry, void *a2)
{
  result = 0;
  if (entry && a2)
  {
    v5 = IORegistryEntrySearchCFProperty(entry, "IOService", @"USB Serial Number", kCFAllocatorDefault, 3u);
    *a2 = v5;
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 != CFStringGetTypeID())
      {
        _os_assumes_log();
      }

      return 1;
    }

    else
    {
      v7 = sub_100012BD8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003C9F0();
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_100012DE0(io_registry_entry_t a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"locationID", kCFAllocatorDefault, 3u);
    v5 = v4;
    v2 = v4 != 0;
    if (v4)
    {
      *a2 = [v4 unsignedIntValue];
    }

    else
    {
      v6 = sub_100012BD8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003CA2C();
      }
    }
  }

  return v2;
}

uint64_t sub_100012E88(io_registry_entry_t a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = IORegistryEntrySearchCFProperty(a1, "IOService", @"NetworkInterfaceFlags", kCFAllocatorDefault, 3u);
    if (v5 || (v5 = IORegistryEntrySearchCFProperty(a1, "IOService", @"NetworkInterfaceFlags", kCFAllocatorDefault, 1u)) != 0)
    {
      v6 = v5;
      *a2 = [v5 unsignedIntValue];
      v2 = 1;
    }

    else
    {
      v6 = sub_100012BD8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003CA68();
      }

      v2 = 0;
    }
  }

  return v2;
}

BOOL sub_100012F54(io_registry_entry_t a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"idProduct", kCFAllocatorDefault, 3u);
    v5 = v4;
    v2 = v4 != 0;
    if (v4)
    {
      *a2 = [v4 unsignedIntValue];
    }

    else
    {
      v6 = sub_100012BD8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003CAA4();
      }
    }
  }

  return v2;
}

BOOL sub_100012FFC(io_registry_entry_t a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"HostState", kCFAllocatorDefault, 3u);
    v5 = v4;
    v2 = v4 != 0;
    if (v4)
    {
      *a2 = [v4 unsignedIntValue];
    }

    else
    {
      v6 = sub_100012BD8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003CAE0();
      }
    }
  }

  return v2;
}

BOOL sub_1000130A4(io_registry_entry_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = IORegistryEntrySearchCFProperty(a1, "IOService", @"IOMACAddress", kCFAllocatorDefault, 3u);
    v5 = v4;
    v2 = v4 != 0;
    if (v4)
    {
      if ([v4 length] <= 5)
      {
        _os_assumes_log();
      }

      v6 = [v5 bytes];
      v7 = v6[2];
      *a2 = *v6;
      *(a2 + 4) = v7;
    }

    else
    {
      v8 = sub_100012BD8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003CB1C();
      }
    }
  }

  return v2;
}

id *sub_100013178(void *a1)
{
  v2 = a1;
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00403DD93119uLL);
  if (!v3)
  {
    sub_10003CC30(&v8, v9);
  }

  v4 = v3;
  objc_storeStrong(v3, a1);
  if (IOMainPort(0, v4 + 2))
  {
    os_assert_mach();
  }

  v5 = IONotificationPortCreate(*(v4 + 2));
  v4[2] = v5;
  if (!v5)
  {
    sub_10003CBC4(&v8, v9);
  }

  v6 = *v4;
  if (!v6)
  {
    sub_10003CB58(&v8, v9);
  }

  IONotificationPortSetDispatchQueue(v4[2], *v4);
  return v4;
}

void sub_100013284(uint64_t a1, IOServiceMatchingCallback callback, const __CFDictionary *a3)
{
  if (!a1)
  {
    sub_10003CC30(&v9, v10);
  }

  v5 = IOServiceAddMatchingNotification(*(a1 + 16), "IOServiceFirstMatch", a3, callback, *(a1 + 16), (a1 + 24));
  v6 = sub_100012BD8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003CC9C(v5, v6);
  }

  if (v5)
  {
    _os_assumes_log();
  }

  else
  {
    v7 = *a1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000133A4;
    v8[3] = &unk_10005D028;
    v8[4] = a1;
    v8[5] = callback;
    dispatch_async(v7, v8);
  }
}

uint64_t sub_1000133A4(uint64_t a1)
{
  v2 = sub_100012BD8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10003CD14(a1, v2);
  }

  return (*(a1 + 40))(*(*(a1 + 32) + 16), *(*(a1 + 32) + 24));
}

uint64_t sub_100013400(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_10003CD94(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_100013468(const char *a1, const char *a2, IOOptionBits a3)
{
  *iterator = 0;
  path = 0;
  if (!a2)
  {
    v29 = 0;
    memset(name, 0, 80);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = 0;
    _os_log_send_and_compose_impl();
    v18 = _os_crash_msg();
    sub_10003BCB4(v18);
  }

  if (a1)
  {
    if (asprintf(&path, "IODeviceTree:/%s", a1) < 0)
    {
      v29 = 0;
      memset(name, 0, 80);
      v19 = &_os_log_default;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v20 = __error();
      v21 = strerror(*v20);
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v21;
      _os_log_send_and_compose_impl();

      v22 = _os_crash_msg();
      sub_10003BCB4(v22);
    }

    v5 = path;
  }

  else
  {
    v5 = "IODeviceTree:/";
  }

  v6 = IORegistryEntryFromPath(kIOMainPortDefault, v5);
  v7 = v6;
  iterator[1] = v6;
  if (v6)
  {
    if (IORegistryEntryCreateIterator(v6, "IODeviceTree", a3, iterator))
    {
      v8 = sub_100012BD8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003CE44();
      }
    }

    else
    {
      while (1)
      {
        v14 = IOIteratorNext(iterator[0]);
        if (!v14)
        {
          break;
        }

        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&name[96] = v15;
        *&name[112] = v15;
        *&name[64] = v15;
        *&name[80] = v15;
        *&name[32] = v15;
        *&name[48] = v15;
        *name = v15;
        *&name[16] = v15;
        v16 = IORegistryEntryGetName(v14, name);
        if (v16)
        {
          v17 = sub_100012BD8();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = 67109120;
            HIDWORD(buf[0]) = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName: %d", buf, 8u);
          }
        }

        else if (!strcmp(a2, name))
        {
          v10 = 1;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v9 = sub_100012BD8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003CEB8();
    }
  }

  v10 = 0;
LABEL_15:
  if (iterator[0])
  {
    v11 = IOObjectRelease(iterator[0]);
    if (v11)
    {
      buf[0] = 0;
      memset(name, 0, 80);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      LODWORD(v29) = 67109120;
      HIDWORD(v29) = v11;
      _os_log_send_and_compose_impl();
      v23 = _os_crash_msg();
      sub_10003BCB4(v23);
    }
  }

  if (v7)
  {
    v12 = IOObjectRelease(v7);
    if (v12)
    {
      buf[0] = 0;
      memset(name, 0, 80);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      LODWORD(v29) = 67109120;
      HIDWORD(v29) = v12;
      _os_log_send_and_compose_impl();
      v24 = _os_crash_msg();
      sub_10003BCB4(v24);
    }
  }

  free(path);
  return v10;
}

uint64_t sub_100013940(io_registry_entry_t a1)
{
  v8 = 0;
  v2 = -5;
  while (!sub_100012F54(a1, &v8))
  {
    usleep(0x186A0u);
    if (__CFADD__(v2++, 1))
    {
      v4 = sub_100012BD8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to extract productid, fallback to false", v7, 2u);
      }

      v5 = 0;
      return v5 & 1;
    }
  }

  v5 = v8 ^ 1;
  if ((v8 - 4372) > 4)
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000139FC(id a1)
{
  qword_1000643C8 = os_log_create("com.apple.RemoteServiceDiscovery", "iokit");

  _objc_release_x1();
}

void sub_100013A40(void *a1)
{
  v2 = a1;
  if (!qword_1000643D8 && (sub_10000FC88() & 1) == 0)
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "ncm_device");
    v4 = qword_1000643E0;
    qword_1000643E0 = v3;

    v5 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing ncm device backend", buf, 2u);
    }

    objc_storeStrong(&qword_1000643D8, a1);
    v6 = objc_opt_new();
    v7 = qword_1000643E8;
    qword_1000643E8 = v6;

    v8 = qword_1000643E8;
    if (!v8)
    {
      sub_10003D0D0(&v14, buf);
    }

    if (qword_1000643F0)
    {
      sub_10003CF2C(&v14, buf);
    }

    v9 = sub_100013178(qword_1000643D8);
    qword_1000643F0 = v9;
    if (!v9)
    {
      sub_10003D044(&v14, buf);
    }

    v10 = IOServiceMatching("AppleUSBDeviceNCMData");
    if (!v10)
    {
      sub_10003CFB8(&v14, buf);
    }

    v11 = IOServiceMatching("IOEthernetInterface");
    v12 = v11;
    if (!v11)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *buf = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v14 = 134217984;
      v15 = 0;
      _os_log_send_and_compose_impl();
      v13 = _os_crash_msg();
      sub_10003BCB4(v13);
    }

    CFDictionarySetValue(v11, @"IOParentMatch", v10);
    CFRelease(v10);
    sub_100013284(v9, sub_100013CD0, v12);
  }
}

uint64_t sub_100013CD0(uint64_t a1, io_iterator_t iterator)
{
  if (!a1)
  {
    sub_10003D204(&v26, v32);
  }

  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    *&v3 = 67109120;
    v23 = v3;
    while (1)
    {
      v5 = qword_1000643E0;
      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEBUG))
      {
        *v32 = v23;
        *&v32[4] = v4;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "IOIteratorNext returned %d", v32, 8u);
      }

      v6 = IOObjectCopyClass(v4);
      v7 = CFStringCompare(v6, @"AppleUSBDeviceNCMPrivateEthernetInterface", 0);
      if (v6)
      {
        CFRelease(v6);
      }

      if (v7 == kCFCompareEqualTo)
      {
        goto LABEL_29;
      }

      v8 = IORegistryEntrySearchCFProperty(v4, "IOService", @"DeviceDescription", kCFAllocatorDefault, 3u);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [v9 objectForKeyedSubscript:@"ConfigurationDescriptors"];
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v11)
      {
        v12 = *v27;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [*(*(&v26 + 1) + 8 * i) objectForKeyedSubscript:{@"Interfaces", v23}];
            v15 = qword_1000643E0;
            if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v31 = v14;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "interfaces: %{public}@", buf, 0xCu);
            }

            v16 = [v14 containsObject:@"AppleUSBNCMDataAux"];

            if (v16)
            {
              v17 = 1;
              goto LABEL_22;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_22:

      CFRelease(v9);
      v18 = qword_1000643E0;
      if (!v17)
      {
        goto LABEL_27;
      }

      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not using the public NCM interface due to the existence of private NCM interface", v32, 2u);
      }

LABEL_33:
      if (IOObjectRelease(v4))
      {
        sub_10003D15C(&v26, v32);
      }

      result = IOIteratorNext(iterator);
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    v18 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to find USB device for interface", buf, 2u);
      v18 = qword_1000643E0;
    }

LABEL_27:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Using the public NCM interface", v32, 2u);
    }

LABEL_29:
    v19 = [RSDNCMInterface alloc];
    v20 = [(RSDNCMInterface *)v19 initWithService:v4 notificationPort:a1 queue:qword_1000643D8];
    v21 = v20;
    if (v20)
    {
      [(RSDNCMInterface *)v20 setIs_private:v7 == kCFCompareEqualTo];
      v22 = v21;
      [(RSDNCMInterface *)v22 setInactive_callback:&stru_10005D578];
      [(RSDNCMInterface *)v22 setAddressed_callback:&stru_10005D598];
      [(RSDNCMInterface *)v22 setDetached_callback:&stru_10005D5B8];

      if ([(RSDNCMInterface *)v22 activate])
      {
        [qword_1000643E8 addObject:v22];
      }
    }

    goto LABEL_33;
  }

  return result;
}

void sub_1000140E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  CFRelease(v17);
  sub_1000125A8(&a17);
  _Unwind_Resume(a1);
}

id sub_100014A2C(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result != 5)
  {
    v3 = *(a1 + 32);

    return [v3 createBonjourListener];
  }

  return result;
}

void sub_100014A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@> %{public}@ got incoming remoted connection", &v12, 0x16u);
  }

  xpc_remote_connection_get_failsafe_version_flags();
  v6 = xpc_remote_connection_create_with_nw_connection();
  v7 = [*(a1 + 32) connection];

  if (v7)
  {
    v8 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@> Canceling existing connection to replace it", &v12, 0xCu);
    }

    v10 = *(a1 + 32);
    if (*(v10 + 304))
    {
      xpc_remote_connection_cancel();
      v10 = *(a1 + 32);
    }

    objc_storeStrong((v10 + 304), v6);
    v11 = [*(a1 + 32) connection];
    xpc_remote_connection_cancel();
  }

  else
  {
    [*(a1 + 32) connect:v6];
  }
}

id sub_100014C24(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result != 5)
  {
    v3 = *(a1 + 32);

    return [v3 createBonjourListener];
  }

  return result;
}

void sub_100014C74(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = "removed";
    v9 = 138543874;
    if (a3)
    {
      v8 = "added";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v5;
    v13 = 2080;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> advertised endpoint %@ %s", &v9, 0x20u);
  }
}

id sub_100015034(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result != 5)
  {
    v3 = *(a1 + 32);

    return [v3 createPortListener];
  }

  return result;
}

uint64_t sub_100015084(uint64_t a1)
{
  v11 = -1431655766;
  for (result = sub_100024924(*(a1 + 40), 0, 0, &xmmword_100049E58, &v11); !result; result = sub_100024924(*(a1 + 40), 0, 0, &xmmword_100049E58, &v11))
  {
    v3 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> Got incoming remoted connection", buf, 0xCu);
    }

    xpc_remote_connection_get_failsafe_version_flags();
    v5 = xpc_remote_connection_create_with_connected_fd();
    v6 = [*(a1 + 32) connection];

    if (v6)
    {
      v7 = qword_1000643E0;
      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> Canceling existing connection to replace it", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      if (*(v9 + 304))
      {
        xpc_remote_connection_cancel();
        v9 = *(a1 + 32);
      }

      objc_storeStrong((v9 + 304), v5);
      v10 = [*(a1 + 32) connection];
      xpc_remote_connection_cancel();
    }

    else
    {
      [*(a1 + 32) connect:v5];
    }
  }

  return result;
}

void sub_100015280(id a1, RSDNCMInterface *a2)
{
  v7 = a2;
  v2 = [(RSDNCMInterface *)v7 device];

  if (v2)
  {
    v3 = [(RSDNCMInterface *)v7 device];
    [v3 disconnect];

    [(RSDNCMInterface *)v7 setDevice:0];
  }

  v4 = [[RSDRemoteNCMDeviceDevice alloc] initWithInterface:v7];
  [(RSDNCMInterface *)v7 setDevice:v4];

  v5 = [(RSDNCMInterface *)v7 device];
  sub_100031ABC(v5);

  v6 = [(RSDNCMInterface *)v7 device];
  [v6 attach];
}

void sub_100015350(id a1, RSDNCMInterface *a2)
{
  v4 = a2;
  v2 = [(RSDNCMInterface *)v4 device];

  if (v2)
  {
    v3 = [(RSDNCMInterface *)v4 device];
    [v3 disconnect];

    [(RSDNCMInterface *)v4 setDevice:0];
  }

  [qword_1000643E8 removeObject:v4];
}

double sub_1000153D8(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100015404(int a1, uint64_t a2, NSObject **a3, void *a4)
{
  v6 = a4;
  secure_tcp = nw_parameters_create_secure_tcp(v6, _nw_parameters_configure_protocol_default_configuration);
  if (!a1)
  {
    sub_10003D568(&v14, v15);
  }

  v8 = secure_tcp;
  v9 = nw_interface_create_with_index();
  if (v9)
  {
    nw_parameters_require_interface(v8, v9);
    nw_parameters_set_local_only(v8, 1);
    nw_parameters_set_required_address_family();
    nw_parameters_set_required_interface_type(v8, nw_interface_type_wired);
    nw_parameters_set_no_fallback();
    nw_parameters_set_indefinite();
    xpc_remote_connection_setup_nw_parameters();
    v10 = v8;
    v11 = 0;
    *a3 = v8;
  }

  else
  {
    if (qword_100064400 != -1)
    {
      sub_10003D510();
    }

    v12 = qword_1000643F8;
    if (os_log_type_enabled(qword_1000643F8, OS_LOG_TYPE_ERROR))
    {
      sub_10003D524(v12);
    }

    v11 = 6;
  }

  return v11;
}

void sub_100015564(id a1)
{
  qword_1000643F8 = os_log_create("com.apple.RemoteServiceDiscovery", "bonjour");

  _objc_release_x1();
}

uint64_t sub_1000155A8(const char *a1)
{
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [qword_100064408 objectForKeyedSubscript:v2];
  if (v3)
  {
    [qword_100064408 removeObjectForKey:v2];
    sub_10001565C(a1);
    sub_1000158AC();
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003D614();
    }

    v4 = 2;
  }

  return v4;
}

void sub_10001565C(const char *a1)
{
  v2 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = qword_100064428;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 interface];
        v10 = strcmp(a1, [v9 name]);

        if (!v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if ([v16 state] == 3)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000173CC;
          v17[3] = &unk_10005D668;
          v17[4] = v16;
          [v16 goodByeWithCallback:v17];
        }

        else
        {
          [v16 disconnect];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }
}

void sub_1000158AC()
{
  empty = xpc_dictionary_create_empty();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = qword_100064408;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = v6;
        v8 = [v7 UTF8String];
        v9 = [qword_100064408 objectForKeyedSubscript:v6];
        xpc_dictionary_set_string(empty, v8, [v9 address]);
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  xpc_set_event();
}

uint64_t sub_100015A10(uint64_t a1, uint64_t a2, int a3)
{
  v6 = [NSString stringWithUTF8String:a1];
  v7 = [qword_100064408 objectForKeyedSubscript:v6];
  if (v7)
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003D684();
    }

    v8 = 17;
  }

  else
  {
    v18 = 0;
    v9 = [[RSDNetworkInterface alloc] initWithName:a1 error:&v18];
    v10 = v18;
    if (v9)
    {
      v11 = [[RSDRemoteComputeControllerDevice alloc] initWithInterface:v9 address:a2];
      if (!v11)
      {
        sub_10003D760(&v17, v19);
      }

      v12 = v11;

      v13 = [[RSDComputeControllerDeviceEndpoint alloc] initWithAddress:[(RSDRemoteComputeControllerDevice *)v12 ipv6_str]];
      if (!v13)
      {
        sub_10003D6F4(&v17, v19);
      }

      v14 = v13;

      [qword_100064408 setObject:v14 forKeyedSubscript:v6];
      if (a3)
      {
        sub_1000158AC();
      }

      [(RSDRemoteComputeControllerDevice *)v12 attach];

      v8 = 0;
    }

    else
    {
      v15 = qword_100064410;
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003D7CC(v15, v10);
      }

      v8 = [v10 code];
    }
  }

  return v8;
}

uint64_t sub_100015C20(uint64_t a1, int a2)
{
  v4 = [NSString stringWithUTF8String:a1];
  v5 = [qword_100064418 objectForKeyedSubscript:v4];
  if (v5)
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003D860();
    }

    v6 = 17;
  }

  else
  {
    v7 = qword_100064430;
    if (!v7)
    {
      sub_10003D9B0(&v28, &handler);
    }

    v28 = 0;
    v8 = [[RSDNetworkInterface alloc] initWithName:a1 error:&v28];
    v25 = v28;
    if (v8)
    {
      v24 = a2;
      v9 = +[RSDRemoteComputeControllerDevice tlsOidsRequiredOfPeer];
      v10 = sub_10002E4F0(16, v9);

      v27 = 0;
      v6 = sub_100015404([(RSDNetworkInterface *)v8 index], 1, &v27, v10);
      v11 = v27;
      if (v6)
      {
        v12 = qword_100064410;
        if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_FAULT))
        {
          sub_10003C698(v12);
        }

        v13 = 0;
        v14 = 0;
      }

      else
      {
        bonjour_service = nw_browse_descriptor_create_bonjour_service("_remoted_compute._tcp", "local.");
        v17 = nw_browser_create(bonjour_service, v11);
        if (!v17)
        {
          sub_10003D8D0(&v26, &handler);
        }

        v14 = v17;

        *&handler = _NSConcreteStackBlock;
        *(&handler + 1) = 3221225472;
        v30 = sub_10001742C;
        v31 = &unk_10005D6D0;
        v32 = v8;
        nw_browser_set_browse_results_changed_handler(v14, &handler);
        nw_browser_set_state_changed_handler(v14, &stru_10005D710);
        nw_browser_set_queue(v14, qword_100064420);
        nw_browser_start(v14);
        v13 = [NSString stringWithUTF8String:a1];
        v18 = [qword_100064418 objectForKeyedSubscript:v13];
        [v18 setNw_browser:v14];

        v6 = 0;
      }

      a2 = v24;
      v16 = v25;
    }

    else
    {
      v15 = qword_100064410;
      v16 = v25;
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003D7CC(v15, v25);
      }

      v6 = [v25 code];
      v11 = 0;
      v13 = 0;
      v14 = 0;
    }

    if (v6)
    {
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003D93C();
      }
    }

    else
    {
      v19 = objc_alloc_init(RSDComputeControllerBrowser);
      [qword_100064418 setObject:v19 forKeyedSubscript:v4];

      v20 = os_transaction_create();
      v21 = [qword_100064418 objectForKeyedSubscript:v4];
      [v21 setBrowser_tx:v20];

      if (a2)
      {
        sub_1000160C8();
      }

      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_100015FF4(const char *a1)
{
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [qword_100064418 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nw_browser];
    nw_browser_cancel(v5);

    [qword_100064418 removeObjectForKey:v2];
    sub_10001565C(a1);
    sub_1000160C8();
    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003DA1C();
    }

    v6 = 2;
  }

  return v6;
}

void sub_1000160C8()
{
  empty = xpc_dictionary_create_empty();
  v1 = xpc_array_create_empty();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = qword_100064418;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = xpc_string_create([v7 UTF8String]);
        xpc_array_append_value(v1, v8);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  xpc_dictionary_set_value(empty, "interfaces", v1);
  xpc_set_event();
}

void sub_100016220(void *a1)
{
  v2 = a1;
  if (!qword_100064420)
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "compute_controller");
    v4 = qword_100064410;
    qword_100064410 = v3;

    if (sub_10002D894() == 15)
    {
      sub_1000163F8(0);
      sub_10001C54C(5, 10, 5, &stru_10005D618);
      v5 = qword_100064410;
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v16 = 136446210;
        description = remote_device_type_get_description();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "initializing compute platform with type %{public}s", &v16, 0xCu);
      }

      objc_storeStrong(&qword_100064420, a1);
      v7 = objc_opt_new();
      v8 = qword_100064428;
      qword_100064428 = v7;

      v9 = objc_opt_new();
      v10 = qword_100064430;
      qword_100064430 = v9;

      v11 = objc_opt_new();
      v12 = qword_100064418;
      qword_100064418 = v11;

      v13 = objc_opt_new();
      v14 = qword_100064408;
      qword_100064408 = v13;
    }

    else
    {
      v15 = qword_100064410;
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "not enabling backend on this platform", &v16, 2u);
      }
    }
  }
}

void sub_1000163F8(void *a1)
{
  v1 = a1;
  v2 = [&off_10005F268 mutableCopy];
  v9 = @"GetCombined";
  v10 = kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v4 = AMFDRSealingMapCopyLocalDictForClass();
  if (v4)
  {
    v5 = v4;

    [v2 addObject:@"1.2.840.113635.100.6.85"];
  }

  else
  {
    v6 = qword_100064410;
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Chassis manifest not present.", v8, 2u);
    }
  }

  v7 = [v2 copy];
  sub_10001BF34(v7, v1);
}

void sub_100016540(id a1, NSError *a2)
{
  if (!a2)
  {
    sub_1000163F8(0);
  }
}

void sub_100016C98(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[35])
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:*v2 + 264];
    if (v3 && ([qword_100064430 containsObject:v3] & 1) != 0)
    {
      v4 = [*v2 type];
      v5 = *v2;
      v6 = [objc_opt_class() tlsOidsRequiredOfPeer];
      v7 = sub_10002E4F0(v4, v6);

      v8 = [*(*v2 + 37) index];
      v19 = 0;
      v9 = sub_100015404(v8, 2, &v19, v7);
      v10 = v19;
      if (v9)
      {
        if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
        {
          sub_10003DC90(v2);
        }

        [*v2 disconnect];
      }

      else
      {
        v16 = nw_connection_create(*(*v2 + 35), v10);
        xpc_remote_connection_get_version_flags();
        v17 = xpc_remote_connection_create_with_nw_connection();
        [*v2 connect:v17];
      }
    }

    else
    {
      v11 = qword_100064410;
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v2;
        *buf = 138543362;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@> device has already gone, disconnecting", buf, 0xCu);
      }

      [*v2 disconnect];
    }
  }

  else
  {
    v18 = -1;
    v13 = sub_100023C1C(&v18, [v1 remote_address], 0xCAF6u, objc_msgSend(*(*v2 + 37), "index"), &xmmword_100049E58);
    v14 = qword_100064410;
    if (v13)
    {
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003DCFC(v2);
      }

      [*v2 connect:0];
    }

    else
    {
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_INFO))
      {
        v15 = *v2;
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@> network_connect_in6() completed successfully", buf, 0xCu);
      }

      [*v2 pollConnect:? onQueue:? withLog:? completion:?];
    }
  }
}

void sub_100016FE4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003DD68(a1);
    }

    [*(a1 + 32) connect:0];
  }

  else
  {
    v4 = [*(a1 + 32) connection];

    v5 = qword_100064410;
    v6 = os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, but socket is not needed anymore, closing", &v11, 0xCu);
      }

      close(*(a1 + 40));
    }

    else
    {
      if (v6)
      {
        v8 = *(a1 + 32);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, socket is connected", &v11, 0xCu);
      }

      v9 = *(a1 + 40);
      xpc_remote_connection_get_failsafe_version_flags();
      v10 = xpc_remote_connection_create_with_connected_fd();
      [*(a1 + 32) connect:v10];
    }
  }
}

id sub_1000173CC(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
  {
    sub_10003DDD4();
  }

  return [*(a1 + 32) disconnect];
}

void sub_10001742C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  changes = nw_browse_result_get_changes(v5, v6);
  v8 = qword_100064410;
  if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v25 = v5;
    *&v25[8] = 2112;
    *&v25[10] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "browse_results_changed: %@ -> %@", buf, 0x16u);
  }

  if ((changes & 2) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if ((changes & 6) != 0)
  {
    v10 = v9;
    if (!v10)
    {
      sub_10003DFA8(uu, buf);
    }

    v11 = v10;

    v12 = nw_browse_result_copy_endpoint(v11);
    if (!v12)
    {
      sub_10003D6F4(uu, buf);
    }

    v13 = v12;

    memset(uu, 170, sizeof(uu));
    v14 = v13;
    bonjour_service_name = nw_endpoint_get_bonjour_service_name(v14);
    if (!bonjour_service_name)
    {
      sub_10003DF3C(&v22, buf);
    }

    uuid_parse(bonjour_service_name, uu);

    v16 = qword_100064410;
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v25 = 16;
      *&v25[4] = 2096;
      *&v25[6] = &xmmword_1000646E8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "browser local_device_uuid: %{uuid_t}.16P", buf, 0x12u);
    }

    if (uuid_is_null(uu))
    {
      sub_10003DE48(&v22, buf);
    }

    v17 = [[NSUUID alloc] initWithUUIDBytes:uu];
    if ((changes & 2) != 0)
    {
      if ([qword_100064430 containsObject:v17])
      {
        v19 = qword_100064410;
        if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_FAULT))
        {
          sub_10003DEB4(v19);
        }
      }

      else
      {
        [qword_100064430 addObject:v17];
      }

      v18 = sub_100017748(uu);
      if (v18)
      {
        v20 = qword_100064410;
        if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEBUG))
        {
          sub_10003DEF8(v20);
        }
      }

      else
      {
        v21 = [[RSDRemoteComputeControllerDevice alloc] initWithInterface:*(a1 + 32) endpoint:v14 bonjourUUID:uu];
        [(RSDRemoteDevice *)v21 setTlsEnabled:1];
        [(RSDRemoteComputeControllerDevice *)v21 attach];
      }
    }

    else
    {
      if ((changes & 4) == 0)
      {
LABEL_28:

        goto LABEL_29;
      }

      v18 = sub_100017748(uu);
      [qword_100064430 removeObject:v17];
      if (v18)
      {
        if ([v18 state] == 3)
        {
          [v18 heartbeatWithCallback:&stru_10005D6A8];
        }

        else
        {
          [v18 disconnect];
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:
}

id sub_100017748(const unsigned __int8 *a1)
{
  v2 = qword_100064410;
  if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    v24 = 16;
    v25 = 2096;
    v26 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "checking for existing device %{uuid_t}.16P", buf, 0x12u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = qword_100064428;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    v9 = *v19;
    *&v5 = 68157954;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = qword_100064410;
        if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v11 bonjourUUID];
          *buf = v17;
          v24 = 16;
          v25 = 2096;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "comparing against device uuid %{uuid_t}.16P", buf, 0x12u);
        }

        if (!uuid_compare([v11 bonjourUUID], a1))
        {
          v15 = v11;

          ++v7;
          v8 = v15;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);

    if (v8 && v7 >= 2)
    {
      sub_10003E014();
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_100017978(id a1, BOOL a2)
{
  v3 = qword_100064410;
  if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEBUG))
  {
    sub_10003E030(a2, v3);
  }
}

void sub_1000179C0(id a1, int a2, OS_nw_error *a3)
{
  v4 = a3;
  v5 = qword_100064410;
  switch(a2)
  {
    case 4:
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        v6 = "nw_browser_state_waiting: %@";
        v7 = v5;
        v8 = 12;
        goto LABEL_10;
      }

      break;
    case 2:
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_FAULT))
      {
        sub_10003E0C0();
      }

      break;
    case 1:
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        v6 = "browsing for other bonjour remoted instances";
        v7 = v5;
        v8 = 2;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
      }

      break;
    default:
      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003E134();
        if (!v4)
        {
          break;
        }
      }

      else if (!v4)
      {
        break;
      }

      if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
      {
        sub_10003E1A8();
      }

      break;
  }
}

uint64_t sub_100017B40()
{

  return _os_log_send_and_compose_impl();
}

void sub_100017B98(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100017BB8()
{
  v5 = 0;
  sub_100019EF8(qword_100064438, @"rsd_compute_node_tls_chmf_required", @"compute-node-tls-chmf-required", @"ComputeNodeTLSRequiresChassisManifest", &v5);
  if (v5)
  {
    v0 = *v5;
    v1 = &unk_100053A79;
  }

  else
  {
    v0 = 0;
    if (sub_100025390())
    {
      v1 = " by default in the factory";
    }

    else
    {
      v1 = " by default";
    }
  }

  v2 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
  {
    v3 = &unk_100053A79;
    if ((v0 & 1) == 0)
    {
      v3 = "not ";
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 2080;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Chassis manifest is %srequired for TLS on compute node%s", buf, 0x16u);
  }

  free(v5);
  return v0 & 1;
}

uint64_t sub_100017D08(uint64_t a1, int a2)
{
  v4 = [NSString stringWithCString:a1 encoding:4];
  if (qword_100064440)
  {
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003E218();
    }

    v5 = 17;
    goto LABEL_26;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  v31 = 0;
  v7 = [[RSDNetworkInterface alloc] initWithName:a1 error:&v31];
  v8 = v31;
  v9 = v8;
  if (v7)
  {
    v26 = v8;
    v10 = [RSDListener alloc];
    v11 = [(RSDListener *)v10 initWithInterface:v7 targetQueue:qword_100064458];
    v12 = qword_100064440;
    qword_100064440 = v11;

    v13 = qword_100064440;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100018F0C;
    v29[3] = &unk_10005D668;
    v14 = v7;
    v30 = v14;
    [v13 listenOnPort:51958 connectionHandler:v29];
    v15 = +[RSDRemoteComputeNodeDevice tlsOidsRequiredOfPeer];
    v16 = sub_10002E4F0(15, v15);

    if (uuid_is_null(&xmmword_1000646E8))
    {
      sub_10003E28C(dst, buf);
    }

    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E2F8();
    }

    uuid = xpc_dictionary_get_uuid(qword_1000646F8, "BootSessionUUID");
    if (!uuid)
    {
      sub_10003E4C0(dst, buf);
    }

    memset(dst, 170, sizeof(dst));
    uuid_copy(dst, uuid);
    if (uuid_is_null(dst))
    {
      sub_10003E370(&v32, buf);
    }

    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E3DC();
    }

    xmmword_1000646E8 = veorq_s8(xmmword_1000646E8, *dst);
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E448();
    }

    uuid_unparse(&xmmword_1000646E8, out);
    v18 = qword_100064440;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000190B8;
    v27[3] = &unk_10005D090;
    v19 = v14;
    v28 = v19;
    [v18 listenOnBonjourName:out type:"_remoted_compute._tcp" domain:"local." configureTLS:v16 connectionHandler:v27];
    v20 = [NSString stringWithCString:a1 encoding:4];
    v21 = qword_100064438;
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = a1;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "compute node listening on %{public}s", buf, 0xCu);
    }

LABEL_18:
    v22 = os_transaction_create();
    v23 = qword_100064450;
    qword_100064450 = v22;

    if (a2)
    {
      sub_1000182F4();
    }

    v5 = 0;
    goto LABEL_26;
  }

  v24 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
  {
    sub_10003E52C(v24, v9);
  }

  v5 = [v9 code];

  if (!v5)
  {
    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
  {
    sub_10003E5D4();
  }

LABEL_26:

  return v5;
}

uint64_t sub_100018168(uint64_t a1)
{
  v1 = [NSString stringWithCString:a1 encoding:4];
  if (qword_100064440)
  {
    [qword_100064440 cancel];
    v2 = qword_100064440;
    qword_100064440 = 0;

    if ([qword_100064448 state] == 3)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100018298;
      v6[3] = &unk_10005D730;
      v7 = -1;
      [qword_100064448 goodByeWithCallback:v6];
    }

    else
    {
      [qword_100064448 disconnect];
    }

    v4 = qword_100064450;
    qword_100064450 = 0;

    sub_1000182F4();
    v3 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003E648();
    }

    v3 = 2;
  }

  return v3;
}

id sub_100018298(uint64_t a1)
{
  if (*(a1 + 32) && os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
  {
    sub_10003DDD4();
  }

  return [qword_100064448 disconnect];
}

void sub_1000182F4()
{
  xdict = xpc_dictionary_create_empty();
  v0 = [qword_100064440 interface];
  v1 = xpc_string_create([v0 name]);

  xpc_dictionary_set_value(xdict, "interface", v1);
  xpc_set_event();
}

void sub_100018388(void *a1)
{
  v2 = a1;
  if (!qword_100064458)
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "compute_node");
    v4 = qword_100064438;
    qword_100064438 = v3;

    v5 = sub_10002D894();
    v6 = qword_100064438;
    v7 = os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT);
    if (v5 == 16)
    {
      if (v7)
      {
        v8 = v6;
        v9 = 136446210;
        description = remote_device_type_get_description();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initializing compute platform with type %{public}s", &v9, 0xCu);
      }

      objc_storeStrong(&qword_100064458, a1);
      sub_10001BF34(&off_10005F298, 0);
      sub_10001C54C(5, 10, 5, &stru_10005D750);
    }

    else if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "not enabling backend on this platform", &v9, 2u);
    }
  }
}

void sub_1000184F4(id a1, NSError *a2)
{
  if (!a2)
  {
    sub_10001BF34(&off_10005F298, 0);
  }
}

void sub_100018D00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 296))
  {
    xpc_remote_connection_get_failsafe_version_flags();
    v7 = xpc_remote_connection_create_with_nw_connection();
    v3 = *(a1 + 32);
    v4 = *(v3 + 296);
    *(v3 + 296) = 0;

LABEL_5:
    [*(a1 + 32) connect:v7];

    return;
  }

  if ((*(v2 + 288) & 0x80000000) == 0)
  {
    xpc_remote_connection_get_failsafe_version_flags();
    v7 = xpc_remote_connection_create_with_connected_fd();
    *(*(a1 + 32) + 288) = -1;
    goto LABEL_5;
  }

  v5 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> wait for the other side to connect", buf, 0xCu);
  }
}

uint64_t sub_100018F0C(uint64_t a1, int a2)
{
  v17 = 0;
  v18 = -1431655766;
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v16 = 0;
  v14 = 28;
  for (result = sub_100024924(a2, &v15, &v14, &xmmword_100049E58, &v18); !result; result = sub_100024924(a2, &v15, &v14, &xmmword_100049E58, &v18))
  {
    v5 = qword_100064438;
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got incoming remoted connection from port", buf, 2u);
    }

    if (qword_100064448)
    {
      v6 = qword_100064438;
      if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "replacing the remoted connection", buf, 2u);
      }

      [qword_100064448 replacePeerSocket:v18];
    }

    else
    {
      v7 = [RSDRemoteComputeNodeDevice alloc];
      v8 = [(RSDRemoteComputeNodeDevice *)v7 initWithInterface:*(a1 + 32) peerSocket:v18];
      v9 = qword_100064448;
      qword_100064448 = v8;

      if (qword_100064448)
      {
        [qword_100064448 attach];
      }

      else
      {
        v10 = qword_100064438;
        if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
        {
          sub_10003E730(&v11, v12, v10);
        }
      }
    }
  }

  return result;
}

void sub_1000190B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14[0] = qword_100064440;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ got incoming remoted bonjour connection", buf, 0xCu);
  }

  v5 = nw_connection_copy_current_path(v3);
  v6 = nw_path_copy_effective_remote_endpoint(v5);
  if (nw_endpoint_get_type(v6) != nw_endpoint_type_address)
  {
    sub_10003E770(&v12, buf);
  }

  address = nw_endpoint_get_address(v6);
  v8 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    LODWORD(v14[0]) = 16;
    WORD2(v14[0]) = 2096;
    *(v14 + 6) = &address->sa_data[6];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "remote address: %{network:in6_addr}.16P", buf, 0x12u);
  }

  if (qword_100064448)
  {
    v9 = qword_100064438;
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "replacing the remoted connection", buf, 2u);
    }

    [qword_100064448 replacePeerConnection:v3];
  }

  else
  {
    v10 = [[RSDRemoteComputeNodeDevice alloc] initWithInterface:*(a1 + 32) peerConnection:v3 endpoint:v6];
    v11 = qword_100064448;
    qword_100064448 = v10;

    [qword_100064448 setTlsEnabled:1];
    if (qword_100064448)
    {
      [qword_100064448 attach];
    }

    else if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003E7DC();
    }
  }
}

void sub_1000192F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_100019310(void *a1)
{
  v2 = a1;
  if (!qword_100064460)
  {
    v7 = v2;
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "ComputeInterface");
    v4 = qword_100064468;
    qword_100064468 = v3;

    objc_storeStrong(&qword_100064460, a1);
    mach_service = xpc_connection_create_mach_service("com.apple.remoted.compute-platform", qword_100064460, 1uLL);
    v6 = qword_100064470;
    qword_100064470 = mach_service;

    xpc_connection_set_event_handler(qword_100064470, &stru_10005D770);
    xpc_connection_activate(qword_100064470);
    v2 = v7;
  }
}

void sub_1000193D4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100019490;
    handler[3] = &unk_10005CF88;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_set_target_queue(v3, qword_100064460);
    xpc_connection_activate(v3);
  }
}

void sub_100019490(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  xpc_connection_get_audit_token();
  v5 = xpc_copy_entitlement_for_token();

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    if (xpc_get_type(v7) != &_xpc_type_error)
    {
      if (xpc_dictionary_expects_reply())
      {
        string = xpc_dictionary_get_string(v7, "cmd");
        if (!string)
        {
          if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
          {
            sub_10003E8EC();
          }

          v10 = sub_1000255B4(v7);
          goto LABEL_25;
        }

        v9 = string;
        if (!strcmp(string, "add_device"))
        {
          v12 = v7;
          v38[0] = 0;
          v38[1] = 0;
          v13 = xpc_dictionary_get_string(v12, "interface_name");
          if (v13)
          {
            v14 = v13;
            v15 = sub_100024870(v13);
            if (v15)
            {
              v16 = v15;
              if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
              {
                sub_10003E850();
              }

              v17 = v12;
              v18 = v16;
              goto LABEL_64;
            }

            v28 = xpc_dictionary_get_string(v12, "address");
            if (v28)
            {
              v29 = inet_pton(30, v28, v38);
              if (v29 == -1)
              {
                v35 = __error();
                v36 = qword_100064468;
                if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
                {
                  sub_1000382F0(v35, v36);
                }
              }

              else
              {
                if (v29 == 1)
                {
                  sub_100015A08(v14, v38);
                  goto LABEL_73;
                }

                if (v29)
                {
                  sub_1000383A0(&v37, buf);
                }

                if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
                {
                  sub_10003836C();
                }
              }

              v31 = sub_1000255B4(v12);
              goto LABEL_65;
            }

            if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
            {
              sub_10003E8B8();
            }
          }

          else if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
          {
LABEL_55:
            sub_10003E884();
          }
        }

        else if (!strcmp(v9, "remove_device"))
        {
          v12 = v7;
          v19 = xpc_dictionary_get_string(v12, "interface_name");
          if (v19)
          {
            v20 = v19;
            v21 = sub_100024870(v19);
            if (v21)
            {
              v22 = v21;
              if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
              {
                sub_10003E850();
              }

              v17 = v12;
              v18 = v22;
              goto LABEL_64;
            }

            sub_1000155A8(v20);
            goto LABEL_73;
          }

          if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (strcmp(v9, "browse"))
          {
            if (!strcmp(v9, "browse_cancel"))
            {
              v10 = sub_100019A7C(v7);
            }

            else if (!strcmp(v9, "listen"))
            {
              v10 = sub_100019B30(v7);
            }

            else if (!strcmp(v9, "listen_cancel"))
            {
              v10 = sub_100019C38(v7);
            }

            else if (!strcmp(v9, "require_tls"))
            {
              v10 = sub_100019CEC(v7);
            }

            else if (!strcmp(v9, "is_tls_required_cmd"))
            {
              v10 = sub_100019DD8(v7);
            }

            else
            {
              if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
              {
                sub_10003E81C();
              }

              v10 = sub_1000255C0(v7, 22);
            }

LABEL_25:
            reply = v10;
LABEL_67:
            v32 = reply;
            if (!v32)
            {
              sub_100038244(v38, buf);
            }

            v33 = v32;

            v34 = xpc_dictionary_get_remote_connection(v33);
            xpc_connection_send_message(v34, v33);

            goto LABEL_69;
          }

          v12 = v7;
          v23 = xpc_dictionary_get_string(v12, "interface_name");
          if (v23)
          {
            v24 = v23;
            v25 = sub_100024870(v23);
            v26 = qword_100064468;
            if (v25)
            {
              v27 = v25;
              if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
              {
                sub_10003E850();
              }

              v17 = v12;
              v18 = v27;
              goto LABEL_64;
            }

            if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Client request browsing on %{public}s", buf, 0xCu);
            }

            v30 = sub_100015C18(v24);
            if (v30)
            {
              v18 = v30;
              v17 = v12;
LABEL_64:
              v31 = sub_1000255C0(v17, v18);
LABEL_65:
              reply = v31;
LABEL_66:

              goto LABEL_67;
            }

LABEL_73:
            reply = xpc_dictionary_create_reply(v12);
            xpc_dictionary_set_string(reply, "result", "OK");
            goto LABEL_66;
          }

          if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }
        }

        v17 = v12;
        v18 = 22;
        goto LABEL_64;
      }

      if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
      {
        sub_100038660();
      }
    }

    xpc_connection_cancel(v6);
LABEL_69:

    goto LABEL_70;
  }

  if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
  {
    sub_10003E920();
  }

  xpc_connection_cancel(*(a1 + 32));
LABEL_70:
}

id sub_100019A7C(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "interface_name");
  if (string)
  {
    sub_100015FF4(string);
    reply = xpc_dictionary_create_reply(v1);

    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
    {
      sub_10003E884();
    }

    reply = sub_1000255C0(v1, 22);
  }

  return reply;
}

id sub_100019B30(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "interface_name");
  if (!string)
  {
    if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
    {
      sub_10003E884();
    }

    v6 = v1;
    v7 = 22;
    goto LABEL_11;
  }

  v3 = string;
  v4 = sub_100024870(string);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
    {
      sub_10003E850();
    }

    v6 = v1;
    v7 = v5;
    goto LABEL_11;
  }

  v8 = sub_100017D00(v3);
  if (v8)
  {
    v7 = v8;
    v6 = v1;
LABEL_11:
    reply = sub_1000255C0(v6, v7);
    goto LABEL_12;
  }

  reply = xpc_dictionary_create_reply(v1);
  xpc_dictionary_set_string(reply, "result", "OK");
LABEL_12:

  return reply;
}

id sub_100019C38(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "interface_name");
  if (string)
  {
    sub_100018168(string);
    reply = xpc_dictionary_create_reply(v1);

    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
    {
      sub_10003E884();
    }

    reply = sub_1000255C0(v1, 22);
  }

  return reply;
}

id sub_100019CEC(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_value(v1, "is_tls_required");
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_BOOL)
  {
    if (xpc_BOOL_get_value(v3))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    sub_10002DA58(v5);
    reply = xpc_dictionary_create_reply(v1);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    if (os_log_type_enabled(qword_100064468, OS_LOG_TYPE_ERROR))
    {
      sub_10003E954();
    }

    reply = sub_1000255C0(v1, 22);
  }

  return reply;
}

id sub_100019DD8(void *a1)
{
  v1 = a1;
  v2 = [RSDRemoteComputeControllerDevice tlsRequirement]_0();
  reply = xpc_dictionary_create_reply(v1);

  xpc_dictionary_set_string(reply, "result", "OK");
  xpc_dictionary_set_BOOL(reply, "is_tls_required", v2 == 3);

  return reply;
}

const char *sub_100019E60(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return "invalid";
  }

  else
  {
    return off_10005D8A8[a1 - 1];
  }
}

uint64_t sub_100019E88(const char *a1)
{
  if (!strcmp(a1, "disabled"))
  {
    return 1;
  }

  if (!strcmp(a1, "optional"))
  {
    return 2;
  }

  if (!strcmp(a1, "required"))
  {
    return 3;
  }

  return 0;
}

void sub_100019EF8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  *a5 = 0;
  if (v10)
  {
    v12 = [qword_1000646D8 valueForKey:v10];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = malloc_type_calloc(1uLL, 1uLL, 0x8709206FuLL);
        if (!v13)
        {
          v23 = &_os_log_default;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v24 = __error();
          strerror(*v24);
          _os_log_send_and_compose_impl();

          v25 = _os_crash_msg();
          sub_10003BCB4(v25);
        }

        *a5 = v13;
        v14 = 0;
        **a5 = [v12 BOOLValue];
        goto LABEL_16;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v11 && ([v11 UTF8String], _os_feature_enabled_impl()))
  {
    v15 = malloc_type_calloc(1uLL, 1uLL, 0x8709206FuLL);
    if (!v15)
    {
      v20 = &_os_log_default;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v21 = __error();
      strerror(*v21);
      _os_log_send_and_compose_impl();

      v22 = _os_crash_msg();
      sub_10003BCB4(v22);
    }

    v14 = 0;
    *a5 = v15;
    *v15 = 1;
  }

  else
  {
    v14 = malloc_type_calloc(0xBuLL, 1uLL, 0x8709206FuLL);
    if (!v14)
    {
      v17 = &_os_log_default;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v18 = __error();
      strerror(*v18);
      _os_log_send_and_compose_impl();

      v19 = _os_crash_msg();
      sub_10003BCB4(v19);
    }

    if (v9)
    {
      [v9 UTF8String];
      if (os_parse_boot_arg_string())
      {
        v16 = malloc_type_calloc(1uLL, 1uLL, 0x8709206FuLL);
        if (!v16)
        {
          v26 = &_os_log_default;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v27 = __error();
          strerror(*v27);
          _os_log_send_and_compose_impl();

          v28 = _os_crash_msg();
          sub_10003BCB4(v28);
        }

        *a5 = v16;
        *v16 = strcmp(v14, "1") == 0;
      }
    }
  }

LABEL_16:
  free(v14);
}

uint64_t sub_10001A4AC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [qword_1000646D8 valueForKey:v9];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = sub_100019E88([v11 UTF8String]);
        if (v12)
        {
          v13 = v12;
          v14 = v7;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = off_10005D8A8[v13 - 1];
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v15;
            WORD6(buf[0]) = 2114;
            *(buf + 14) = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TLS is %{public}s per preference '%{public}@'", buf, 0x16u);
          }

          v16 = 0;
          goto LABEL_26;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10003E988();
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v17 = v10;
    [v10 UTF8String];
    if (_os_feature_enabled_impl())
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TLS is required per feature flag '%{public}@'", buf, 0xCu);
      }

      v16 = 0;
      v13 = 3;
      goto LABEL_26;
    }
  }

  v16 = malloc_type_calloc(0xBuLL, 1uLL, 0x8709206FuLL);
  if (!v16)
  {
    memset(buf, 0, sizeof(buf));
    v23 = &_os_log_default;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v24 = __error();
    strerror(*v24);
    _os_log_send_and_compose_impl();

    v25 = _os_crash_msg();
    sub_10003BCB4(v25);
  }

  if (!v8 || (v18 = v8, [v8 UTF8String], !os_parse_boot_arg_string()))
  {
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v19 = sub_100019E88(v16);
  if (!v19)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E9F8();
    }

    goto LABEL_25;
  }

  v13 = v19;
  v20 = v7;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = off_10005D8A8[v13 - 1];
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v21;
    WORD6(buf[0]) = 2114;
    *(buf + 14) = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "TLS is %{public}s per boot arg '%{public}@'", buf, 0x16u);
  }

LABEL_26:
  free(v16);

  return v13;
}

void sub_10001A8B8()
{
  v0 = sub_10001A92C();
  sub_10001A8F8(v0);
}

void sub_10001A8F8(id obj)
{
  objc_storeStrong(&qword_100064480, obj);

  sub_10000CC40();
}

NSObject *sub_10001A92C()
{
  sub_10001BA6C();
  error = 0;
  v77[0] = kSecOidCommonName;
  v77[1] = @"remoted-identity";
  v0 = [NSArray arrayWithObjects:v77 count:2];
  v78 = v0;
  v1 = [NSArray arrayWithObjects:&v78 count:1];
  v79[0] = v1;
  v75[0] = kSecOidCountryName;
  v75[1] = @"US";
  v2 = [NSArray arrayWithObjects:v75 count:2];
  v76 = v2;
  v3 = [NSArray arrayWithObjects:&v76 count:1];
  v79[1] = v3;
  v73[0] = kSecOidOrganization;
  v73[1] = @"Apple Inc";
  v4 = [NSArray arrayWithObjects:v73 count:2];
  v74 = v4;
  v5 = [NSArray arrayWithObjects:&v74 count:1];
  v79[2] = v5;
  v54 = [NSArray arrayWithObjects:v79 count:3];

  v71 = @"GetCombined";
  v72 = kCFBooleanTrue;
  v53 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v55 = objc_alloc_init(NSMutableDictionary);
  v6 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  v7 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  v8 = v7;
  if (!v7)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LODWORD(v67) = 138543362;
    *(&v67 + 4) = error;
    v14 = _os_log_send_and_compose_impl();
    v15 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v15, v14);
    free(v14);
    goto LABEL_20;
  }

  v66[0] = kSecAttrIsPermanent;
  v66[1] = kSecAttrTokenID;
  *&v67 = &__kCFBooleanFalse;
  *(&v67 + 1) = kSecAttrTokenIDAppleKeyStore;
  v66[2] = kSecAttrKeyType;
  v66[3] = kSecAttrAccessControl;
  v68 = kSecAttrKeyTypeECSECPrimeRandom;
  v69 = v7;
  v66[4] = kSecAttrKeySizeInBits;
  v70 = &off_10005F340;
  parameters = [NSDictionary dictionaryWithObjects:&v67 forKeys:v66 count:5];
  v9 = SecKeyCreateRandomKey(parameters, &error);
  if (!v9)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = error;
    v16 = _os_log_send_and_compose_impl();
    v17 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v17, v16);
    free(v16);

LABEL_20:
    v18 = 0;
    v10 = 0;
    SelfSignedCertificate = 0;
    v20 = 0;
    v52 = 0;
LABEL_55:
    v36 = 0;
    goto LABEL_56;
  }

  v10 = v9;
  v50 = MAECopyDCRTWithOptions();
  v52 = 0;
  if (!v50)
  {
    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
    {
      sub_10003EAA4();
    }

    goto LABEL_31;
  }

  [v55 setObject:v50 forKeyedSubscript:@"1.2.840.113635.100.6.84"];
  v11 = qword_100064478;
  if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New self identity contains DCRT chain data.", &buf, 2u);
  }

  cf[0] = 0;
  v12 = SecKeyCopySystemKey();
  if (v12)
  {
    Attestation = SecKeyCreateAttestation();
    if (!Attestation)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = cf[0];
      v24 = _os_log_send_and_compose_impl();
      v25 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v25, v24);
      free(v24);
    }

    v23 = Attestation;
    CFRelease(v12);
  }

  else
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = cf[0];
    v21 = _os_log_send_and_compose_impl();
    v22 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v22, v21);
    free(v21);
    v23 = 0;
  }

  v48 = v23;

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!v23)
  {
    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
    {
      sub_10003EA68();
    }

LABEL_31:
    v48 = 0;
    goto LABEL_32;
  }

  [v55 setObject:v23 forKeyedSubscript:@"1.2.840.113635.100.6.83"];
  v26 = qword_100064478;
  if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "New self identity contains DAK attestation.", &buf, 2u);
  }

LABEL_32:
  v27 = AMFDRSealingMapCopyLocalDataForClass();
  if (v27)
  {
    [v55 setObject:v27 forKeyedSubscript:@"1.2.840.113635.100.6.85"];
    v28 = qword_100064478;
    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New self identity contains FDR-sealed chassis manifest data.", &buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
  {
    sub_10003EB14(&error);
  }

  v18 = SecKeyCopyPublicKey(v10);
  v64 = kSecCertificateExtensionsEncoded;
  v29 = [v55 copy];
  v65 = v29;
  v49 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(buf) = 0;
    v37 = _os_log_send_and_compose_impl();
    v38 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v38, v37);
    free(v37);

    SelfSignedCertificate = 0;
    goto LABEL_54;
  }

  v30 = SecIdentityCreate();
  v20 = v30;
  if (!v30)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(buf) = 0;
    v41 = _os_log_send_and_compose_impl();
    v42 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v42, v41);
    free(v41);

LABEL_54:
    v20 = 0;
    goto LABEL_55;
  }

  cf[0] = kSecAttrLabel;
  cf[1] = kSecAttrAccessGroup;
  *&buf = @"com.apple.remoted.identity";
  *(&buf + 1) = @"com.apple.remoted";
  cf[2] = kSecClass;
  cf[3] = kSecValueRef;
  v61 = kSecClassIdentity;
  v62 = v30;
  cf[4] = kSecAttrAccessible;
  v63 = v6;
  v31 = [NSDictionary dictionaryWithObjects:&buf forKeys:cf count:5];
  v32 = SecItemAdd(v31, 0);
  v33 = v32;
  if (v32)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      *v57 = 67109120;
      v58 = v33;
    }

    else
    {
      *v57 = 67109120;
      v58 = v32;
    }

    v39 = _os_log_send_and_compose_impl();
    v40 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v40, v39);
    free(v39);

    goto LABEL_55;
  }

  v34 = sec_identity_create(v20);
  v35 = qword_100064478;
  if (!v34)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *v57 = 0;
    v46 = _os_log_send_and_compose_impl();
    v47 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v47, v46);
    free(v46);

    goto LABEL_55;
  }

  if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO))
  {
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Created new identity.", v57, 2u);
  }

  v36 = v34;

LABEL_56:
  if (v20)
  {
    CFRelease(v20);
  }

  if (SelfSignedCertificate)
  {
    CFRelease(SelfSignedCertificate);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (!v36 && (os_variant_is_recovery() & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_FAULT);
    }

    LOWORD(v67) = 0;
    v43 = _os_log_send_and_compose_impl();
    v44 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v44, v43);
    free(v43);
  }

  return v36;
}

void sub_10001B8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFTypeRef cf, uint64_t a21, CFTypeRef a22)
{
  free(v23);
  CFRelease(v26);
  CFRelease(v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_10001BA40()
{
  sub_10001BA6C();

  sub_10001A8F8(0);
}

void sub_10001BA6C()
{
  v9[0] = kSecAttrLabel;
  v9[1] = kSecAttrAccessGroup;
  v10[0] = @"com.apple.remoted.identity";
  v10[1] = @"com.apple.remoted";
  v9[2] = kSecClass;
  v10[2] = kSecClassIdentity;
  v0 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v1 = SecItemDelete(v0);
  v2 = v1;
  if (v1 == -25300 || v1 == 0)
  {
    v4 = qword_100064478;
    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleted identity.", buf, 2u);
    }
  }

  else
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      *buf = 67109120;
      v8 = v2;
    }

    else
    {
      *buf = 67109120;
      v8 = v1;
    }

    v5 = _os_log_send_and_compose_impl();
    v6 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v6, v5);
    free(v5);
  }
}

id sub_10001BCA8(void *a1)
{
  v1 = a1;
  empty = xpc_array_create_empty();
  certificateRef = 0;
  if (v1)
  {
    v3 = sec_identity_copy_ref(v1);
    v4 = SecIdentityCopyCertificate(v3, &certificateRef);
    v5 = v4;
    if (v4)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        v15 = 67109120;
        v16 = v5;
      }

      else
      {
        v15 = 67109120;
        v16 = v4;
      }

      v10 = _os_log_send_and_compose_impl();
      v11 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v11, v10);
      free(v10);
    }

    else
    {
      v6 = "1.2.840.113635.100.6.83";
      v7 = off_10005D890;
      do
      {
        [NSString stringWithUTF8String:v6];
        v8 = SecCertificateCopyExtensionValue();
        if (v8)
        {
          xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
          CFRelease(v8);
        }

        v9 = *v7++;
        v6 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = 0;
  }

  v12 = empty;
  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v12;
}

void sub_10001BEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (v12)
  {
    CFRelease(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001BF34(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = qword_100064488;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BFF4;
  v8[3] = &unk_10005D798;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_10001BFF4(uint64_t a1)
{
  result[0] = 0;
  *&v27 = kSecAttrLabel;
  *(&v27 + 1) = kSecAttrAccessGroup;
  v26[0] = @"com.apple.remoted.identity";
  v26[1] = @"com.apple.remoted";
  *&v28 = kSecClass;
  *(&v28 + 1) = kSecReturnRef;
  v26[2] = kSecClassIdentity;
  v26[3] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v26 forKeys:&v27 count:4];
  v3 = SecItemCopyMatching(v2, result);
  v4 = v3;
  if (v3 != -25300 && v3)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      v24 = 67109120;
      v25 = v4;
    }

    else
    {
      v24 = 67109120;
      v25 = v3;
    }

    v6 = _os_log_send_and_compose_impl();
    v7 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v7, v6);
    free(v6);
    v5 = 0;
  }

  else
  {
    if (!result[0])
    {

LABEL_26:
      v5 = sub_10001A92C();
      goto LABEL_27;
    }

    v5 = sec_identity_create(result[0]);
  }

  if (result[0])
  {
    CFRelease(result[0]);
  }

  if (!v5)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = sub_10001BCA8(v5);
  v11 = objc_alloc_init(NSMutableSet);
  result[0] = _NSConcreteStackBlock;
  result[1] = 3221225472;
  result[2] = sub_10001FABC;
  result[3] = &unk_10005D0E0;
  v12 = v11;
  v23 = v12;
  xpc_array_apply(v10, result);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v14)
  {
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (![v12 containsObject:*(*(&v27 + 1) + 8 * i)])
        {

          goto LABEL_26;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v17 = qword_100064490;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C434;
  block[3] = &unk_10005D798;
  v20 = v5;
  v21 = *(a1 + 40);
  v18 = v5;
  dispatch_async(v17, block);
}

void sub_10001C3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CFTypeRef cf)
{
  free(v18);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001C434(uint64_t a1)
{
  sub_10001A8F8(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10001C488(void *a1)
{
  v7 = a1;
  objc_storeStrong(&qword_100064490, a1);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.remoted.identity", v2);
  v4 = qword_100064488;
  qword_100064488 = v3;

  if (!qword_100064478)
  {
    v5 = os_log_create("com.apple.RemoteServiceDiscovery", "identity");
    v6 = qword_100064478;
    qword_100064478 = v5;
  }
}

void sub_10001C54C(int a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = qword_100064490;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C964;
  v10[3] = &unk_10005D868;
  v11 = v7;
  v9 = v7;
  sub_100023538(v8, a1, a2, a3, &stru_10005D7D8, &stru_10005D840, 0, v10);
}

void sub_10001C620(id a1, id a2)
{
  v2 = a2;
  v3 = qword_100064478;
  if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Attempting to issue DCRT", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C70C;
  block[3] = &unk_10005D1F8;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, block);
}

void sub_10001C70C(uint64_t a1)
{
  v4[0] = kMAOptionsNetworkTimeoutInterval;
  v4[1] = kMAOptionsIgnoreExistingDCRT;
  v5[0] = &off_10005F2F8;
  v5[1] = &__kCFBooleanFalse;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = *(a1 + 32);
  MAEIssueDCRTWithCompletion();
}

void sub_10001C82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
  {
    sub_10003EB8C();
  }

  (*(*(a1 + 32) + 16))();
}

BOOL sub_10001C8B0(id a1, NSError *a2)
{
  v2 = a2;
  if ([&off_10005F2B0 count])
  {
    v3 = 0;
    do
    {
      v4 = [&off_10005F2B0 objectAtIndexedSubscript:v3];
      [v4 longValue];
      HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();

      if (HasDomainAndErrorCode)
      {
        break;
      }

      ++v3;
    }

    while (v3 < [&off_10005F2B0 count]);
  }

  else
  {
    LOBYTE(HasDomainAndErrorCode) = 0;
  }

  return HasDomainAndErrorCode;
}

void sub_10001C964(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_100064478;
  if (v5)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 67109120;
    v10 = a2;
    v7 = _os_log_send_and_compose_impl();
    v8 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v8, v7);
    free(v7);
  }

  else if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Successfully issued DCRT after %d attempt(s)", buf, 8u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10001CB24(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 type];
  v6 = [objc_opt_class() tlsOidsRequiredOfPeer];
  v7 = sub_10001CD84(v5, v6, v4);

  if (v7)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
    }

    v8 = _os_log_send_and_compose_impl();
  }

  else
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_FAULT);
    }

    v8 = _os_log_send_and_compose_impl();
    v9 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v9, v8);
  }

  free(v8);

  return v7;
}

uint64_t sub_10001CD84(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sec_trust_copy_ref(v6);
  v8 = SecTrustCopyCertificateChain(v7);
  v9 = v8;
  if (v8)
  {
    v10 = [(__CFArray *)v8 lastObject];
    if (v10)
    {
      v11 = sub_10001CFF0(a1, v5, v10);
      CFRelease(v10);
      goto LABEL_9;
    }

    if (qword_100064478)
    {
      goto LABEL_7;
    }
  }

  else if (qword_100064478)
  {
LABEL_7:
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
  }

  v12 = _os_log_send_and_compose_impl();
  v13 = getpid();
  sub_1000037B4("remoted[%d]: %s\n", v13, v12);
  free(v12);
  v11 = 0;
LABEL_9:

  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}