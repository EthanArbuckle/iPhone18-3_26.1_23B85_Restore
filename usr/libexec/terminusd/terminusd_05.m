int *sub_10006DD18(uint64_t a1)
{
  while (1)
  {
    memset(v16, 0, sizeof(v16));
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v11[0] = v15;
    v11[1] = 2000;
    *&v10.msg_namelen = 28;
    *&v10.msg_iovlen = 1;
    v10.msg_name = v12;
    v10.msg_iov = v11;
    v10.msg_control = v16;
    *&v10.msg_controllen = 32;
    v2 = recvmsg(*(a1 + 32), &v10, 0);
    if (v2 < 0)
    {
      break;
    }

    if (!v2)
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100228FD0 == -1)
        {
          return _NRLogWithArgs();
        }

LABEL_61:
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        return _NRLogWithArgs();
      }

      return result;
    }

    if (v10.msg_namelen >= 0x1C && (msg_name = v10.msg_name) != 0)
    {
      if (*(v10.msg_name + 1) == 30)
      {
        if (*v10.msg_name > 0x1Bu)
        {
          if (v10.msg_controllen - 33 >= 0xFFFFFFF3 && v10.msg_control == v16)
          {
            if (DWORD2(v16[0]) == 46)
            {
              v9[0] = v15;
              v9[1] = v2;
              *&v8.msg_controllen = 0;
              *&v8.msg_iovlen = 0u;
              *&v8.msg_namelen = 0u;
              v8.msg_name = v10.msg_name;
              v8.msg_namelen = *v10.msg_name;
              v8.msg_iov = v9;
              v8.msg_iovlen = 1;
              v8.msg_control = v16;
              v8.msg_controllen = 32;
              if (sendmsg(*(a1 + 32), &v8, 0) <= 0)
              {
                v4 = __error();
                if (strerror_r(*v4, __strerrbuf, 0x80uLL))
                {
                  __strerrbuf[0] = 0;
                }

                if (qword_100228FD0 != -1)
                {
                  dispatch_once(&qword_100228FD0, &stru_1001FADB0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228FD0 != -1)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }
              }
            }

            else
            {
              if (qword_100228FD0 != -1)
              {
                dispatch_once(&qword_100228FD0, &stru_1001FADB0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228FD0 == -1)
                {
                  goto LABEL_44;
                }

LABEL_45:
                dispatch_once(&qword_100228FD0, &stru_1001FADB0);
                goto LABEL_44;
              }
            }
          }

          else
          {
            if (qword_100228FD0 != -1)
            {
              dispatch_once(&qword_100228FD0, &stru_1001FADB0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228FD0 != -1)
              {
                goto LABEL_45;
              }

LABEL_44:
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FD0 != -1)
            {
              dispatch_once(&qword_100228FD0, &stru_1001FADB0);
            }

            v6 = *msg_name;
            _NRLogWithArgs();
          }
        }
      }

      else
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          v7 = msg_name[1];
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }
  }

  result = __error();
  if (*result != 35)
  {
    if (strerror_r(*result, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228FD0 == -1)
      {
        return _NRLogWithArgs();
      }

      goto LABEL_61;
    }
  }

  return result;
}

id sub_10006E370(uint64_t a1)
{
  v2 = nw_parameters_create();
  v3 = *(a1 + 16);
  v4 = nw_service_connector_create();

  v7 = v4;
  nw_service_connector_set_service_available_block();
  nw_service_connector_start();
  v5 = v7;

  return v5;
}

void sub_10006E45C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs();
  }

  v6 = [[NSString alloc] initWithUTF8String:a3];
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  nw_service_connector_start_request();
}

void sub_10006E5F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v6 = *(a1 + 64);
      _NRLogWithArgs();
    }
  }

  else
  {
    sub_10006E6F4(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_10006E6F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1;
  v12 = v10;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v15 = nw_connection_copy_current_path(v9);
    v16 = nw_path_copy_interface();
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v34 = v16;
      v35 = v13;
      v33 = 369;
      v31 = "";
      v32 = "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]";
      _NRLogWithArgs();
    }

    [*(a1 + 48) setObject:v9 forKeyedSubscript:{v13, v31, v32, v33, v34, v35}];
    v17 = nw_connection_copy_connected_remote_endpoint();

    if ([v13 containsString:@"-urgent"])
    {
      nw_connection_reset_traffic_class();
      v18 = 2;
    }

    else
    {
      v18 = 5;
    }

    if ([v13 containsString:@"-awdl"])
    {
      v40 = v16;
      v41 = v15;
      v19 = [[NRCompanionLinkPreferences alloc] initForHighThroughputWithServiceClass:v18 includeP2P:1];
      v39 = v17;
      v20 = nw_endpoint_copy_address_string(v17);
      v21 = [NSString stringWithUTF8String:v20];
      if (v20)
      {
        free(v20);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v22 = sub_10016C8BC();
      v23 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v23)
      {
        v36 = v19;
        v37 = v11;
        v38 = v13;
        v24 = *v49;
LABEL_16:
        v25 = 0;
        while (1)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v48 + 1) + 8 * v25);
          v27 = sub_100163A30(NRDLocalDevice, v26);
          v28 = sub_100172FC0(v27);
          if ([v28 containsObject:v21])
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
            if (v23)
            {
              goto LABEL_16;
            }

            v11 = v37;
            v13 = v38;
            v17 = v39;
            v19 = v36;
            goto LABEL_28;
          }
        }

        v23 = v26;

        if (!v23)
        {
          v11 = v37;
          v13 = v38;
          v17 = v39;
          v19 = v36;
          goto LABEL_30;
        }

        v11 = v37;
        v22 = [*(v37 + 72) objectForKeyedSubscript:v23];
        v13 = v38;
        v17 = v39;
        v19 = v36;
        if (!v22)
        {
          v29 = [[NRDeviceIdentifier alloc] initWithUUID:v23];
          v22 = [[NRDevicePreferences alloc] initWithDeviceIdentifier:v29];
        }

        [v22 setIsNRDTestServer:1];
        [v22 setCompanionLinkPreferences:v36];
        [*(v37 + 72) setObject:v22 forKeyedSubscript:v23];
      }

LABEL_28:

LABEL_30:
      v16 = v40;
      v15 = v41;
    }

    else
    {
      v23 = 0;
    }

    nw_connection_set_queue(v9, *(v11 + 16));
    v44 = v13;
    v45 = v23;
    v46 = v14;
    v12 = v17;
    v47 = v9;
    v30 = v23;
    nw_connection_set_event_handler();
    v42 = v44;
    v43 = v47;
    nw_connection_set_read_close_handler();
    nw_connection_start(v43);
  }
}

void sub_10006EBFC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    v6 = *(a1 + 32);
    v7 = qword_100228FC8;
    v21 = nw_connection_state_to_string();
    v22 = v5;
    v19 = 413;
    v20 = v6;
    v17 = "";
    v18 = "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke";
    _NRLogWithArgs();
  }

  if ((a2 & 0xFFFFFFFE) == 4)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v19 = 415;
      v20 = *(a1 + 32);
      v17 = "";
      v18 = "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke";
      _NRLogWithArgs();
    }

    if (*(a1 + 40))
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = *(v8 + 72);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKeyedSubscript:{v17, v18, v19, v20, v21, v22}];
      v11 = v10;
      if (v10)
      {
        [v10 setCompanionLinkPreferences:0];
      }
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    [*(a1 + 32) UTF8String];
    v23 = *(a1 + 32);
    nw_service_connector_cancel_active_connection();
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    [v15 removeObjectForKey:*(a1 + 32)];
  }

  else if (a2 == 3)
  {
    sub_10006F064(*(a1 + 48), *(a1 + 72), *(a1 + 32));
    if ([*(a1 + 32) hasPrefix:@"Terminus download service"])
    {
      v16 = *(a1 + 48);
      if (v16)
      {
        sub_10006F130(v16, 0, *(a1 + 72));
      }
    }
  }
}

id sub_10006EEAC(uint64_t a1)
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    v6 = *(a1 + 32);
    _NRLogWithArgs();
  }

  nw_connection_cancel(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t sub_10006EFA0(uint64_t a1)
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    v3 = *(a1 + 32);
    return _NRLogWithArgs();
  }

  return result;
}

void sub_10006F064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10006F49C;
    completion[3] = &unk_1001FAD68;
    v8 = v5;
    v9 = v6;
    v10 = a1;
    nw_connection_receive(v8, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_10006F130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (v5)
  {
LABEL_7:
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10006F358;
    completion[3] = &unk_1001FAD90;
    v5 = v5;
    v22 = v5;
    v23 = a1;
    v24 = v6;
    nw_connection_send(v24, v5, _nw_content_context_default_stream, 0, completion);

LABEL_8:
    return;
  }

  v7 = malloc_type_malloc(0x40000uLL, 0x19B866EBuLL);
  if (v7)
  {
    v8 = 0;
    v9 = xmmword_100196410;
    v10.i64[0] = 0x1010101010101010;
    v10.i64[1] = 0x1010101010101010;
    v11.i64[0] = 0x2020202020202020;
    v11.i64[1] = 0x2020202020202020;
    do
    {
      v12 = &v7[v8];
      *v12 = v9;
      v12[1] = vaddq_s8(v9, v10);
      v8 += 32;
      v9 = vaddq_s8(v9, v11);
    }

    while (v8 != 0x40000);
    v13 = v7;
    v5 = dispatch_data_create(v7, 0x40000uLL, *(a1 + 16), 0);
    free(v13);
    goto LABEL_7;
  }

  v14 = sub_10006D4F8();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = sub_10006D4F8();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v17 = *__error();
  v18 = _os_log_pack_fill();
  *v18 = 136446210;
  *(v18 + 4) = "[NRDTestServer sendTokenOnConnection:connection:]";
  sub_10006D4F8();
  v19 = _NRLogAbortWithPack();
  sub_10006F358(v19, v20);
}

void sub_10006F358(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (error_code = nw_error_get_error_code(v3)) != 0)
  {
    if (strerror_r(error_code, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v6 = a1[4];
      _NRLogWithArgs();
    }
  }

  else
  {
    sub_10006F130(a1[5], a1[4], a1[6]);
  }
}

void sub_10006F49C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    error_code = nw_error_get_error_code(v10);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    error_code = 0;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (!error_code)
  {
    v13 = v8;
    if ([*(a1 + 40) hasPrefix:@"Terminus ping service"])
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        dispatch_data_get_size(v13);
        v21 = *(a1 + 40);
        _NRLogWithArgs();
      }

      v14 = *(a1 + 32);
      completion[0] = _NSConcreteStackBlock;
      completion[1] = 3221225472;
      completion[2] = sub_10006FA50;
      completion[3] = &unk_1001FAD40;
      v36 = 0;
      v32 = v13;
      v33 = *(a1 + 40);
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v34 = v15;
      v35 = v16;
      nw_connection_send(v14, v32, _nw_content_context_default_stream, 0, completion);

      goto LABEL_46;
    }

    if ([*(a1 + 40) hasPrefix:@"Terminus read write service"])
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        dispatch_data_get_size(v13);
        v22 = *(a1 + 40);
        _NRLogWithArgs();
      }

      v17 = *(a1 + 32);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10006FBA4;
      v25[3] = &unk_1001FAD40;
      v30 = 0;
      v26 = v13;
      v27 = *(a1 + 40);
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v28 = v18;
      v29 = v19;
      nw_connection_send(v17, v26, _nw_content_context_default_stream, 0, v25);

      goto LABEL_46;
    }

    if ([*(a1 + 40) hasPrefix:@"Terminus download service"])
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_45;
      }

      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      dispatch_data_get_size(v13);
      v23 = *(a1 + 40);
    }

    else
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_45;
      }

      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v20 = *(a1 + 32);
      v24 = *(a1 + 40);
    }

    _NRLogWithArgs();
LABEL_45:
    sub_10006F064(*(a1 + 48), *(a1 + 32), *(a1 + 40));
LABEL_46:

    goto LABEL_47;
  }

LABEL_14:
  if (strerror_r(error_code, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs();
  }

  nw_connection_cancel(*(a1 + 32));
LABEL_47:
}

void sub_10006FA50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && nw_error_get_error_code(v3))
  {
    if (strerror_r(*(a1 + 64), __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      _NRLogWithArgs();
    }

    nw_connection_cancel(*(a1 + 48));
  }

  else
  {
    sub_10006F064(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }
}

void sub_10006FBA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && nw_error_get_error_code(v3))
  {
    if (strerror_r(*(a1 + 64), __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      _NRLogWithArgs();
    }

    nw_connection_cancel(*(a1 + 48));
  }

  else
  {
    sub_10006F064(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }
}

void sub_10006FCF8(id a1, OS_nw_protocol_options *a2)
{
  options = a2;
  if (nw_protocol_options_is_quic(options))
  {
    nw_quic_set_idle_timeout(options, 0);
  }
}

void sub_10006FD44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs();
  }

  v6 = [[NSString alloc] initWithUTF8String:a3];
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  nw_service_connector_start_request();
}

void sub_10006FEDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v6 = *(a1 + 64);
      _NRLogWithArgs();
    }
  }

  else
  {
    sub_10006E6F4(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

uint64_t sub_100070270(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) != 1)
    {
      return 1;
    }

    v2 = *(result + 40);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(v1 + 40);
      v6 = _NRCopyLogObjectForNRUUID();
      v19 = [v1 agentDescription];
      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v7 = qword_100229408;
    sub_10015A238(v7, *(v1 + 96));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v8 = qword_100229408;
    sub_10015A52C(v8);

    v9 = [*(v1 + 56) unregisterNetworkAgent];
    if (v9)
    {
      *(v1 + 16) = 0;
      [v1 setActive:0];
      v10 = *(v1 + 40);
      v11 = [v1 agentUUID];
      v12 = [v11 UUIDString];
      sub_1000059A8(v10, 12003, 0, v12);

      [*(v1 + 80) unregisterNetworkAgent];
      [*(v1 + 72) setActive:0];
      v13 = *(v1 + 72);
      *(v1 + 72) = 0;

      v14 = *(v1 + 80);
      *(v1 + 80) = 0;
LABEL_14:

      return v9;
    }

    v15 = *(v1 + 40);
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = *(v1 + 40);
      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

void sub_1000707D0(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    v2 = *(a1 + 32);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 32);
      v6 = _NRCopyLogObjectForNRUUID();
      v14 = [a1 agentDescription];
      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v7 = qword_100229408;
    sub_10015A238(v7, *(a1 + 64));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v8 = qword_100229408;
    sub_10015A52C(v8);

    if ([*(a1 + 48) unregisterNetworkAgent])
    {
      *(a1 + 14) = 0;
      [a1 setActive:0];
      v9 = *(a1 + 32);
      v15 = [a1 agentDescription];
      sub_1000059A8(v9, 20003, 0, v15);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = _NRLogIsLevelEnabled();

      if (!v12)
      {
        return;
      }

      v13 = *(a1 + 32);
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

id *sub_100070A9C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = NRCompanionProxyAgent;
    v14 = objc_msgSendSuper2(&v27, "init");
    if (!v14)
    {
      v22 = sub_100070D40();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v24 = sub_100070D40();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v25 = *__error();
      v26 = _os_log_pack_fill();
      *v26 = 136446210;
      *(v26 + 4) = "[NRCompanionProxyAgent initWithQueue:interfaceName:remoteDeviceName:nrUUID:]";
      sub_100070D40();
      _NRLogAbortWithPack();
    }

    a1 = v14;
    objc_storeStrong(v14 + 5, a5);
    [a1 setActive:0];
    [a1 setKernelActivated:1];
    [a1 setUserActivated:1];
    [a1 setVoluntary:1];
    [a1 setNetworkProvider:1];
    v15 = +[NSUUID UUID];
    [a1 setAgentUUID:v15];

    objc_storeStrong(a1 + 8, a3);
    v16 = [[NSString alloc] initWithFormat:@"CompanionProxy via %@", v12];
    [a1 setAgentDescription:v16];

    objc_storeStrong(a1 + 6, a2);
    a1[11] = 1;
    v17 = [NSString alloc];
    v18 = [a1 agentUUID];
    v19 = [v17 initWithFormat:@"CmpnProxy-%@", v18];
    v20 = a1[12];
    a1[12] = v19;

    *(a1 + 15) = 1;
  }

  return a1;
}

id sub_100070D40()
{
  if (qword_100228FE0 != -1)
  {
    dispatch_once(&qword_100228FE0, &stru_1001FADF0);
  }

  v1 = qword_100228FD8;

  return v1;
}

void sub_100070D94(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FD8;
  qword_100228FD8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100070DD8(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_80;
  }

  if (a1[16])
  {
LABEL_74:
    LOBYTE(a1) = 1;
    goto LABEL_80;
  }

  if (([v3 hasCompanionDatapath] & 1) == 0 && (objc_msgSend(v4, "type") == 5 || objc_msgSend(v4, "type") == 2 && objc_msgSend(v4, "subtype") == 101 || objc_msgSend(v4, "type") == 2 && objc_msgSend(v4, "subtype") == 104))
  {
    a1[15] = 0;
  }

  v5 = *(a1 + 5);
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = *(a1 + 5);
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = [a1 agentDescription];
    _NRLogWithArgs();
  }

  v10 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v11 = *(a1 + 7);
  *(a1 + 7) = v10;

  v12 = *(a1 + 7);
  if (v12)
  {
    if ([v12 registerNetworkAgent:a1])
    {
      if (a1[15] == 1)
      {
        v13 = *(a1 + 8);
        IsLevelEnabled = *(a1 + 7);
        LOBYTE(v13) = [IsLevelEnabled addNetworkAgentToInterfaceNamed:v13];

        if ((v13 & 1) == 0)
        {
          v40 = *(a1 + 5);
          v41 = _NRCopyLogObjectForNRUUID();
          v42 = _NRLogIsLevelEnabled();

          if (v42)
          {
            v43 = *(a1 + 5);
            v44 = _NRCopyLogObjectForNRUUID();
            v113 = *(a1 + 8);
            _NRLogWithArgs();
          }

          goto LABEL_73;
        }
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v14 = qword_1002290B8;
      if (v14)
      {
        v15 = v14[8];

        if (v15 == 1)
        {
          v16 = *(a1 + 5);
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = _NRLogIsLevelEnabled();

          if (v18)
          {
            v19 = *(a1 + 5);
            v20 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          a1[16] = 1;
          [a1 setActive:1];
          [*(a1 + 7) updateNetworkAgent:a1];
          goto LABEL_73;
        }
      }

      a1[16] = 1;
      [a1 setActive:1];
      [*(a1 + 7) updateNetworkAgent:a1];
      v29 = sub_100163A30(NRDLocalDevice, *(a1 + 5));
      if (v29)
      {
        v117 = v29;
        v30 = v29[18];
        if (v30)
        {
          v31 = v30;
          v32 = v117[18];
          v33 = [v32 allowsDirectToCloud];

          if (!v33)
          {
            goto LABEL_72;
          }
        }

        v34 = sub_100163A30(NRDLocalDevice, *(a1 + 5));
        IsLevelEnabled = v34;
        if (v34)
        {
          v35 = *(v34 + 144);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [v36 usesTLS];

        if (v37)
        {
          v38 = [[NEPathControllerNetworkAgent alloc] initWithAdvisoryAgentDomain:@"com.apple.networkrelay" agentType:@"DTCFallbackAgent" advisoryMode:2];
          v39 = *(a1 + 9);
          *(a1 + 9) = v38;
          goto LABEL_52;
        }

        objc_opt_self();
        if (qword_1002290C0 == -1)
        {
LABEL_37:
          v45 = qword_1002290B8;
          v46 = *(a1 + 5);
          if (v45)
          {
            v47 = sub_100003490();
            dispatch_assert_queue_V2(v47);

            if (v46)
            {
              v48 = [v45[28] objectForKeyedSubscript:v46];

              if (v48)
              {
                v49 = [v45[28] objectForKeyedSubscript:v46];
                v50 = v49;
                if (v49 && *(v49 + 488))
                {
                  v39 = NEVirtualInterfaceCopyName();
                  goto LABEL_50;
                }

LABEL_49:
                v39 = 0;
LABEL_50:

                if (v39)
                {
                  v58 = [NEPathControllerNetworkAgent alloc];
                  v59 = [[NWInterface alloc] initWithInterfaceName:v39];
                  v60 = [v58 initWithAdvisoryInterface:v59 advisoryMode:2];
                  v61 = *(a1 + 9);
                  *(a1 + 9) = v60;

LABEL_52:
                  v62 = +[NSUUID UUID];
                  [*(a1 + 9) setAgentUUID:v62];

                  [*(a1 + 9) setAgentDescription:@"Fallback from any interface to CompanionProxy"];
                  [*(a1 + 9) setActive:1];
                  [*(a1 + 9) setVoluntary:0];
                  [*(a1 + 9) setUserActivated:0];
                  [*(a1 + 9) setKernelActivated:0];
                  v63 = [NWNetworkAgentRegistration alloc];
                  v64 = *(a1 + 9);
                  v65 = [v63 initWithNetworkAgentClass:objc_opt_class()];
                  v66 = *(a1 + 10);
                  *(a1 + 10) = v65;

                  if ([*(a1 + 10) registerNetworkAgent:*(a1 + 9)])
                  {
                    objc_opt_self();
                    v67 = [NEPolicyCondition clientFlags:0x20000000];
                    v68 = [NEPolicy alloc];
                    v69 = [*(a1 + 9) agentUUID];
                    v70 = [NEPolicyResult netAgentUUID:v69];
                    v71 = +[NEPolicyCondition allInterfaces];
                    v120[0] = v71;
                    v120[1] = v67;
                    v72 = [NSArray arrayWithObjects:v120 count:2];
                    v73 = [v68 initWithOrder:10 result:v70 conditions:v72];

                    objc_opt_self();
                    v116 = v67;
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v74 = qword_100229408;
                    v75 = v73;
                    v76 = sub_100159E00(v74, *(a1 + 12), v73);

                    v77 = [NEPolicyRouteRule routeRuleWithAction:6 forType:6];
                    v78 = [*(a1 + 9) agentUUID];
                    [v77 setNetworkAgentUUID:v78];

                    v79 = [NEPolicy alloc];
                    v119 = v77;
                    v80 = [NSArray arrayWithObjects:&v119 count:1];
                    v81 = [NEPolicyResult routeRules:v80];
                    v82 = +[NEPolicyCondition allInterfaces];
                    v118 = v82;
                    v83 = [NSArray arrayWithObjects:&v118 count:1];
                    v84 = [v79 initWithOrder:10 result:v81 conditions:v83];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v85 = qword_100229408;
                    v86 = sub_100159E00(v85, *(a1 + 12), v84);

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v87 = qword_100229408;
                    sub_10015A52C(v87);

                    v88 = 1;
LABEL_66:

                    v97 = *(a1 + 5);
                    v98 = _NRCopyLogObjectForNRUUID();
                    if (v88)
                    {
                      v99 = _NRLogIsLevelEnabled();

                      if (v99)
                      {
                        v100 = *(a1 + 5);
                        v101 = _NRCopyLogObjectForNRUUID();
                        v114 = [a1 agentUUID];
                        _NRLogWithArgs();

LABEL_71:
                      }
                    }

                    else
                    {
                      v102 = _NRLogIsLevelEnabled();

                      if (v102)
                      {
                        v103 = *(a1 + 5);
                        v101 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs();
                        goto LABEL_71;
                      }
                    }

LABEL_72:
                    v104 = *(a1 + 5);
                    v105 = [a1 agentUUID];
                    v106 = [v105 UUIDString];
                    sub_1000059A8(v104, 12002, 0, v106);

                    goto LABEL_73;
                  }

                  v89 = *(a1 + 5);
                  v90 = _NRCopyLogObjectForNRUUID();
                  v91 = _NRLogIsLevelEnabled();

                  if (v91)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_65;
                }

LABEL_63:
                v92 = *(a1 + 5);
                v93 = _NRCopyLogObjectForNRUUID();
                v94 = _NRLogIsLevelEnabled();

                if (v94)
                {
LABEL_64:
                  v95 = *(a1 + 5);
                  v96 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

LABEL_65:
                v88 = 0;
                goto LABEL_66;
              }
            }

            else
            {
              v56 = sub_1000B9544();
              v57 = _NRLogIsLevelEnabled();

              if (v57)
              {
                v50 = sub_1000B9544();
                _NRLogWithArgs();
                goto LABEL_49;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        v51 = sub_100070D40();
        v52 = _NRLogIsLevelEnabled();

        if (v52)
        {
          v53 = sub_100070D40();
          _NRLogWithArgs();
        }

        v4 = _os_log_pack_size();
        a1 = &v115 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v54 = *__error();
        v55 = _os_log_pack_fill();
        *v55 = 136446210;
        *(v55 + 4) = "[NRCompanionProxyAgent registerAgentForLink:]";
        sub_100070D40();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      goto LABEL_37;
    }

    v24 = *(a1 + 5);
    v25 = _NRCopyLogObjectForNRUUID();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *(a1 + 5);
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
LABEL_26:
      v27 = *(a1 + 5);
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

LABEL_73:
  if (a1[16])
  {
    goto LABEL_74;
  }

  v107 = *(a1 + 7);
  if (v107)
  {
    [v107 unregisterNetworkAgent];
    v108 = *(a1 + 7);
    *(a1 + 7) = 0;
  }

  v109 = *(a1 + 10);
  if (v109)
  {
    [v109 unregisterNetworkAgent];
  }

  v110 = *(a1 + 9);
  *(a1 + 9) = 0;

  v111 = *(a1 + 10);
  *(a1 + 10) = 0;

  LOBYTE(a1) = a1[16];
LABEL_80:

  return a1 & 1;
}

void sub_100071A14(uint64_t a1)
{
  if (a1)
  {
    ++*(a1 + 88);
    v2 = *(a1 + 40);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 40);
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = *(a1 + 88);
      v8 = [a1 agentDescription];

      _NRLogWithArgs();
    }

    if (*(a1 + 16) == 1 && ([*(a1 + 56) updateNetworkAgent:a1] & 1) == 0)
    {
      v9 = *(a1 + 40);
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = *(a1 + 40);
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }
}

id *sub_100071B84(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = NRCompanionProxyConfigAgent;
    v11 = objc_msgSendSuper2(&v26, "init");
    if (!v11)
    {
      v21 = sub_100070D40();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v23 = sub_100070D40();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "[NRCompanionProxyConfigAgent initWithQueue:parameters:nrUUID:]";
      sub_100070D40();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeStrong(v11 + 4, a4);
    objc_storeStrong(a1 + 7, a3);
    [a1 setKernelActivated:1];
    [a1 setUserActivated:1];
    [a1 setVoluntary:1];
    v12 = +[NSUUID UUID];
    [a1 setAgentUUID:v12];

    v13 = [[NSString alloc] initWithFormat:@"CompanionProxyConfig for %@", v10];
    [a1 setAgentDescription:v13];

    v14 = [NSString alloc];
    v15 = a1[4];
    v16 = [v14 initWithFormat:@"NRCompanionProxyConfigAgent-%@", v15];
    v17 = a1[8];
    a1[8] = v16;

    objc_storeStrong(a1 + 5, a2);
    v18 = a1[4];
    v19 = [a1 agentDescription];
    sub_1000059A8(v18, 20001, 0, v19);
  }

  return a1;
}

uint64_t sub_100071E20(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v5 = a1;
  v6 = *(a1 + 14);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = *(v5 + 32);
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = [v5 agentDescription];
      _NRLogWithArgs();
    }

    v12 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v13 = *(v5 + 48);
    *(v5 + 48) = v12;

    v14 = *(v5 + 48);
    if (v14)
    {
      if ([v14 registerNetworkAgent:v5])
      {
        *(v5 + 14) = 1;
        [v5 setActive:1];
        [*(v5 + 48) updateNetworkAgent:v5];
        v15 = sub_100163A30(NRDLocalDevice, *(v5 + 32));
        if (v15)
        {
          v16 = v15;
          v17 = [v5 agentUUID];
          IsLevelEnabled = [NEPolicyResult netAgentUUID:v17];

          v18 = sub_100003490();
          dispatch_assert_queue_V2(v18);

          v19 = sub_1001677D0(v16, @"0");
          v1 = [NEPolicyCondition flowRemoteAddress:v19 prefix:128];

          v20 = sub_1001672A0(v16, @"62742");
          v2 = [NEPolicyCondition flowLocalAddress:v20 prefix:128];

          v21 = [NEPolicy alloc];
          v22 = [NEPolicyCondition allInterfaces:v1];
          v44[2] = v22;
          v23 = [NSArray arrayWithObjects:v44 count:3];
          v3 = [v21 initWithOrder:10 result:IsLevelEnabled conditions:v23];

          objc_opt_self();
          v4 = &qword_100229000;
          if (qword_100229410 == -1)
          {
LABEL_9:
            v24 = qword_100229408;
            v25 = sub_100159E00(v24, *(v5 + 64), v3);

            objc_opt_self();
            if (v4[130] != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v26 = qword_100229408;
            sub_10015A52C(v26);

            v27 = *(v5 + 32);
            v28 = [v5 agentDescription];
            sub_1000059A8(v27, 20002, 0, v28);

            goto LABEL_16;
          }
        }

        else
        {
          v39 = sub_100070D40();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v41 = sub_100070D40();
            _NRLogWithArgs();
          }

          v5 = _os_log_pack_size();
          v16 = (v44 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
          v42 = *__error();
          v43 = _os_log_pack_fill();
          *v43 = 136446210;
          *(v43 + 4) = "[NRCompanionProxyConfigAgent registerAgent]";
          sub_100070D40();
          _NRLogAbortWithPack();
        }

        dispatch_once(&qword_100229410, &stru_1001FCD98);
        goto LABEL_9;
      }

      v32 = *(v5 + 32);
      v33 = _NRCopyLogObjectForNRUUID();
      v34 = _NRLogIsLevelEnabled();

      if (!v34)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v29 = *(v5 + 32);
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = _NRLogIsLevelEnabled();

      if (!v31)
      {
        goto LABEL_17;
      }
    }

    v35 = *(v5 + 32);
    v16 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_16:

LABEL_17:
    v6 = *(v5 + 14);
    if ((v6 & 1) == 0)
    {
      v36 = *(v5 + 48);
      if (v36)
      {
        [v36 unregisterNetworkAgent];
        v37 = *(v5 + 48);
        *(v5 + 48) = 0;

        v6 = *(v5 + 14);
        return v6 & 1;
      }

LABEL_20:
      v6 = 0;
    }
  }

  return v6 & 1;
}

void sub_10007251C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  if (v2)
  {
    v3 = v2;
    dispatch_assert_queue_V2(*(v2 + 2));
    if ((v3[10] & 1) == 0)
    {
      v3[10] = 1;
      if (v3[8] == 4)
      {
        sub_100181020(v3);
        if (v3[9] == 1)
        {
          v3[8] = 3;
          sub_100181284(v3);
        }
      }
    }

    v4 = v3[8] & 0xFD;

    if (v4 == 1)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = *(v5 + 40);
        v8 = v6;
        dispatch_assert_queue_V2(v7);
        v9 = [v8 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

        if (v9)
        {
          [*(v5 + 64) setObject:0 forKeyedSubscript:v9];
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FF0 != -1)
            {
              dispatch_once(&qword_100228FF0, &stru_1001FAE10);
            }

            v10 = qword_100228FE8;
            v18 = sub_1000729D8(v5);
            _NRLogWithArgs();
          }
        }

        else
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FF0 != -1)
            {
              dispatch_once(&qword_100228FF0, &stru_1001FAE10);
            }

            _NRLogWithArgs();
          }
        }
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v11 = qword_1002290B8;
      v21 = v11;
      if (v11)
      {
        v12 = v11[6];
        v13 = v12;
        if (v12)
        {
          v14 = v12[3];
          dispatch_assert_queue_V2(v14);

          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v19 = *(v13 + 40);
            v20 = *(v13 + 48);
            _NRLogWithArgs();
          }

          v15 = *(v13 + 48);
          if (v15 > 0)
          {
            *(v13 + 48) = v15 - 1;
LABEL_36:
            if (!*(v13 + 40))
            {
              WeakRetained = objc_loadWeakRetained((v13 + 160));
              [WeakRetained preferWiFiRequestUnavailable];
            }

            goto LABEL_51;
          }

          v17 = *(v13 + 40);
          if (v17 > 0)
          {
            sub_10017A860(v13, v17 - 1);
            if (*(v13 + 40) >= 1)
            {
              sub_10017FD10(v13);
            }

            goto LABEL_36;
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_51:

      return;
    }
  }

  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    _NRLogWithArgs();
  }
}

id sub_1000729D8(uint64_t a1)
{
  if (!a1 || (*(a1 + 15) & 1) != 0 || !*(a1 + 64))
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 64) allValues];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) parameters];
        v9 = [v8 copyCParameters];

        account_id = nw_parameters_get_account_id();
        if (account_id)
        {
          v11 = [NSString stringWithUTF8String:account_id];
LABEL_10:
          [v2 addObject:v11];
LABEL_11:

          goto LABEL_12;
        }

        pid = nw_parameters_get_pid();
        if (pid >= 1)
        {
          v11 = sub_10013CB6C(pid, 0);
          if (!v11)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_12:
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100072B8C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FE8;
  qword_100228FE8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100072C9C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = v2;
  dispatch_assert_queue_V2(*(v2 + 2));
  if ((v3[10] & 1) == 0)
  {
    v3[10] = 1;
    if (v3[8] == 4)
    {
      sub_100181020(v3);
      if (v3[9] == 1)
      {
        v3[8] = 3;
        sub_100181284(v3);
      }
    }
  }

  v4 = v3[8] & 0xFD;

  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(v5 + 40);
      v8 = v6;
      dispatch_assert_queue_V2(v7);
      v9 = [v8 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

      if (v9)
      {
        v10 = [NWPath pathForClientID:v9];
        [*(v5 + 64) setObject:v10 forKeyedSubscript:v9];

        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          v11 = qword_100228FE8;
          v19 = sub_1000729D8(v5);
          _NRLogWithArgs();
        }
      }

      else
      {
        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          _NRLogWithArgs();
        }
      }
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v12 = qword_1002290B8;
    v20 = v12;
    if (v12)
    {
      v13 = v12[6];
      v14 = v13;
      if (v13)
      {
        v15 = v13[3];
        dispatch_assert_queue_V2(v15);

        v16 = *(v14 + 40);
        if (v16)
        {
          sub_10017A860(v14, v16 + 1);
          sub_10017FD10(v14);
        }

        else
        {
          WeakRetained = objc_loadWeakRetained((v14 + 160));
          v18 = [WeakRetained preferWiFiRequestAvailable];

          if (v18)
          {
            sub_10017A860(v14, *(v14 + 40) + 1);
          }

          else
          {
            ++*(v14 + 48);
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
LABEL_36:
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      _NRLogWithArgs();
    }
  }
}

id sub_100073670()
{
  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  v1 = qword_100228FE8;

  return v1;
}

void sub_10007376C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_32;
    }

    if (qword_100228FF0 == -1)
    {
      goto LABEL_31;
    }

LABEL_33:
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    goto LABEL_31;
  }

  if (WeakRetained[15] == 1)
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v3 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v4 = *(v2 + 6);
  *(v2 + 6) = v3;

  v5 = *(v2 + 6);
  if (!v5)
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_32;
    }

    if (qword_100228FF0 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if ([v5 registerNetworkAgent:v2])
  {
    v6 = +[NRPreferWiFiAgent agentDomain];
    v7 = +[NRPreferWiFiAgent agentType];
    v8 = [NEPolicyCondition requiredAgentDomain:v6 agentType:v7];

    v9 = [v2 agentUUID];
    v10 = [NEPolicyResult netAgentUUID:v9];

    v11 = [NEPolicy alloc];
    v24[0] = v8;
    v12 = +[NEPolicyCondition allInterfaces];
    v24[1] = v12;
    v13 = [NSArray arrayWithObjects:v24 count:2];
    v14 = [v11 initWithOrder:10 result:v10 conditions:v13];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v15 = qword_100229408;
    v16 = sub_100159E00(v15, *(v2 + 7), v14);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v17 = qword_100229408;
    sub_10015A52C(v17);

    *(v2 + 14) = 1;
    v18 = [v2 agentUUID];
    v19 = [v18 UUIDString];
    sub_1000059A8(0, 15002, 0, v19);

    objc_initWeak(&location, v2);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v20 = qword_1002290B8;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100073CF4;
    v21[3] = &unk_1001FC730;
    objc_copyWeak(&v22, &location);
    sub_1000C95D8(v20, v21);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    goto LABEL_32;
  }

  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FF0 == -1)
    {
LABEL_31:
      _NRLogWithArgs();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_32:
}

void sub_100073CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100073CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 15) == 1)
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FF0 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    else if (([WeakRetained isActive] & 1) == 0)
    {
      [v4 setActive:1];
      [v4[6] updateNetworkAgent:?];
      v2 = [v4 agentUUID];
      v3 = [v2 UUIDString];
      sub_1000059A8(0, 15004, 0, v3);
    }
  }

  else
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 == -1)
      {
LABEL_12:
        _NRLogWithArgs();
        goto LABEL_15;
      }

LABEL_18:
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      goto LABEL_12;
    }
  }

LABEL_15:
}

void sub_100073EC0(uint64_t a1)
{
  *(a1 + 15) = 1;
  if (*(a1 + 14) == 1)
  {
    *(a1 + 14) = 0;
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 56));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    v4 = *(a1 + 48);
    if (v4 && [v4 unregisterNetworkAgent])
    {
      [a1 setActive:0];
      v6 = [a1 agentUUID];
      v5 = [v6 UUIDString];
      sub_1000059A8(0, 15003, 0, v5);
    }
  }
}

uint64_t sub_10007401C(uint64_t a1, BOOL *a2)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [*(a1 + 64) allValues];
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) parameters];
          v11 = [v10 copyCParameters];

          use_p2p = nw_parameters_get_use_p2p();
          v6 = v6 || nw_parameters_get_traffic_class() > 0x12B;
          v7 |= use_p2p;
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100074760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10007478C()
{
  if (qword_100229000 != -1)
  {
    dispatch_once(&qword_100229000, &stru_1001FAE30);
  }

  v1 = qword_100228FF8;

  return v1;
}

void sub_1000747E0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_100074904(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FF8;
  qword_100228FF8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007501C(void *a1)
{
  if (a1)
  {
    String = NRDataProtectionClassCreateString();
    v3 = *(a1 + 271);
    if (v3)
    {
      v4 = v3;
      [v4 setClientQueue:a1[1]];
      objc_initWeak(location, a1);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000755B8;
      v53[3] = &unk_1001FB810;
      objc_copyWeak(&v56, location);
      v57 = 4;
      v5 = String;
      v54 = v5;
      v6 = v4;
      v55 = v6;
      [v6 setStateUpdateBlock:v53];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100075D90;
      v48[3] = &unk_1001FB838;
      objc_copyWeak(&v51, location);
      v7 = v5;
      v49 = v7;
      v8 = v6;
      v50 = v8;
      v52 = 4;
      [v8 setChildStateUpdateBlock:v48];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100075EC8;
      v44[3] = &unk_1001FB860;
      objc_copyWeak(&v47, location);
      v9 = v7;
      v45 = v9;
      v10 = v8;
      v46 = v10;
      [v10 setConfigurationUpdateBlock:v44];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100075FA8;
      v40[3] = &unk_1001FB888;
      objc_copyWeak(&v43, location);
      v11 = v9;
      v41 = v11;
      v12 = v10;
      v42 = v12;
      [v12 setTrafficSelectorUpdateBlock:v40];
      v27 = String;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000760A8;
      v36[3] = &unk_1001FB8B0;
      objc_copyWeak(&v39, location);
      v13 = v11;
      v37 = v13;
      v14 = v12;
      v38 = v14;
      [v14 setAdditionalAddressesUpdateBlock:v36];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100076188;
      v32[3] = &unk_1001FB8D8;
      objc_copyWeak(&v35, location);
      v15 = v13;
      v33 = v15;
      v16 = v14;
      v34 = v16;
      [v16 setShortDPDEventBlock:v32];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10007625C;
      v28[3] = &unk_1001FB8B0;
      objc_copyWeak(&v31, location);
      v29 = v15;
      v17 = v16;
      v30 = v17;
      [v17 setPrivateNotifyStatusEvent:v28];
      v18 = a1[4];
      v19 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v21 = a1[4];
        v22 = _NRCopyLogObjectForNRUUID();
        v26 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(&v35);

      objc_destroyWeak(&v39);
      objc_destroyWeak(&v43);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v51);

      objc_destroyWeak(&v56);
      objc_destroyWeak(location);

      String = v27;
    }

    else
    {
      v23 = sub_10007478C();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = sub_10007478C();
        _NRLogWithArgs();
      }

      v17 = 0;
    }
  }
}

void sub_100075524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 192));
  objc_destroyWeak((v6 - 128));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_1000755B8(uint64_t a1, uint64_t a2, void *a3)
{
  v94 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained linkDelegate];
    v8 = v94;
    if (v94)
    {
      v9 = *(a1 + 56);
      if (v9 == 4)
      {
        [v6 setIkeClassDEstablished:0];
        [v6 setIkeClassCEstablished:0];
        v8 = v94;
        v9 = *(a1 + 56);
      }

      [v6 processIKEDisconnection:v9 error:v8];
      if ([v6 state] == 255)
      {
        goto LABEL_35;
      }

      v10 = v94;
      if ([v10 code] == 4)
      {
        v11 = NEIKEv2ErrorDomain;
        v12 = [v10 domain];
        LODWORD(v11) = [v12 isEqualToString:v11];

        if (v11)
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          SessionStateString = NEIKEv2CreateSessionStateString();
          [v6 cancelWithReason:{@"%@ session %@ got IKE error %@ with state %@", v13, v14, v10, SessionStateString}];
LABEL_26:

          goto LABEL_35;
        }
      }

      else
      {
      }

      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v33 = NEIKEv2CreateSessionStateString();
      [v6 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v31, v32, v10, v33];

LABEL_34:
      sub_100076514(v6, *(a1 + 56));
      goto LABEL_35;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = NEIKEv2CreateSessionStateString();
    [v6 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v16, v17, v18];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (*(a1 + 56) == 4)
        {
          [v6 setIkeClassDEstablished:0];
          [v6 setIkeClassCEstablished:0];
        }

        [v6 reportEvent:3018 detailsFormat:@"%@ session %@ cancelled by peer", *(a1 + 32), *(a1 + 40)];
        goto LABEL_34;
      }

      if (a2 == 4)
      {
        [v6 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([v6 state] == 1)
        {
          v35 = v6[4];
          v36 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v38 = v6[4];
            v39 = _NRCopyLogObjectForNRUUID();
            v40 = [v6 copyDescription];
            v88 = *(a1 + 32);
            v91 = *(a1 + 40);
            v82 = 313;
            v85 = v40;
            v76 = "";
            v79 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }

          [v6 changeStateTo:{5, v76, v79, v82, v85, v88, v91}];
          goto LABEL_35;
        }

        v64 = [v6 state];
        v65 = v6[4];
        v66 = _NRCopyLogObjectForNRUUID();
        if (v64 == 5)
        {
          v67 = _NRLogIsLevelEnabled();

          if (!v67)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v68 = _NRLogIsLevelEnabled();

          if (!v68)
          {
            goto LABEL_35;
          }
        }

        v69 = v6[4];
        v70 = _NRCopyLogObjectForNRUUID();
        v71 = [v6 copyDescription];
        v90 = *(a1 + 32);
        v93 = *(a1 + 40);
        _NRLogWithArgs();

        goto LABEL_35;
      }

      if (a2 == 2)
      {
        v19 = v6[4];
        v20 = _NRCopyLogObjectForNRUUID();
        v21 = _NRLogIsLevelEnabled();

        if (v21)
        {
          v22 = v6[4];
          v23 = _NRCopyLogObjectForNRUUID();
          v24 = [v6 copyDescription];
          v88 = *(a1 + 32);
          v91 = *(a1 + 40);
          v82 = 321;
          v85 = v24;
          v76 = "";
          v79 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke";
          _NRLogWithArgs();
        }

        if ([v6 state] == 8)
        {
          v25 = v6[4];
          v26 = _NRCopyLogObjectForNRUUID();
          v27 = _NRLogIsLevelEnabled();

          if (v27)
          {
            v28 = v6[4];
            v29 = _NRCopyLogObjectForNRUUID();
            v30 = [v6 copyDescription];
            v89 = *(a1 + 32);
            v92 = *(a1 + 40);
            v83 = 323;
            v86 = v30;
            v77 = "";
            v80 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }

          if (*(a1 + 56) == 4)
          {
            [v6 setIkeClassDEstablished:1];
            [v6 setIkeClassCEstablished:1];
          }

          [v7 linkIsReady:{v6, v77, v80, v83, v86, v89, v92}];
          goto LABEL_35;
        }

        if ([v6 state] != 5)
        {
          v41 = v6[4];
          v42 = _NRCopyLogObjectForNRUUID();
          v43 = _NRLogIsLevelEnabled();

          if (v43)
          {
            v44 = v6[4];
            v45 = _NRCopyLogObjectForNRUUID();
            v46 = [v6 copyDescription];
            v89 = *(a1 + 32);
            v92 = *(a1 + 40);
            v83 = 331;
            v86 = v46;
            v77 = "";
            v80 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }
        }

        [v6 changeStateTo:{8, v77, v80, v83, v86, v89, v92}];
        if (*(a1 + 56) == 4)
        {
          [v6 setIkeClassDEstablished:1];
          [v6 setIkeClassCEstablished:1];
        }

        [v7 linkIsReady:v6];
        if (![v6 shouldCreateCompanionProxyAgent])
        {
          goto LABEL_35;
        }

        v47 = [v6 companionProxyAgent];

        if (!v47)
        {
          v48 = sub_10007478C();
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            v50 = sub_10007478C();
            v84 = 341;
            v78 = "";
            v81 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }

          [v6 virtualInterface];
          v51 = NEVirtualInterfaceCopyName();
          v52 = [v6 nrUUID];
          v53 = sub_100163A30(NRDLocalDevice, v52);
          v54 = v53;
          if (v53)
          {
            v55 = *(v53 + 128);
          }

          else
          {
            v55 = 0;
          }

          v56 = v55;

          if (v51 && v56)
          {
            v57 = [NRCompanionProxyAgent alloc];
            v58 = [v6 queue];
            v59 = [v6 nrUUID];
            v60 = sub_100070A9C(&v57->super.isa, v58, v51, v56, v59);
            v61 = v6[11];
            v6[11] = v60;

            [v6 reportEvent:12001];
          }
        }

        v62 = [v6 companionProxyAgent];
        v63 = sub_100070DD8(v62, v6);

        if (v63)
        {
          [v6 reportEvent:12002];
          goto LABEL_35;
        }

        v72 = v6[4];
        v73 = _NRCopyLogObjectForNRUUID();
        v74 = _NRLogIsLevelEnabled();

        if (!v74)
        {
          goto LABEL_35;
        }

        v75 = v6[4];
        SessionStateString = _NRCopyLogObjectForNRUUID();
        v87 = [v6 copyDescription];
        _NRLogWithArgs();

        goto LABEL_26;
      }
    }

    v34 = *(a1 + 32);
    SessionStateString = NEIKEv2CreateSessionStateString();
    [v6 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v34, SessionStateString, v82, v85}];
    goto LABEL_26;
  }

LABEL_36:
}

void sub_100075D90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v14)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, SessionStateString, v14];

      [WeakRetained processIKEDisconnection:*(a1 + 56) error:v14];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (a3 != 3)
      {
        v13 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v11, v12, a2, v13];

        goto LABEL_9;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v11, *(a1 + 40), a2];
    }

    sub_100076514(WeakRetained, *(a1 + 56));
  }

LABEL_9:
}

void sub_100075EC8(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100075FA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = v8[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      _NRLogWithArgs();
    }
  }
}

void sub_1000760A8(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100076188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = WeakRetained[4];
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v11;
    if (IsLevelEnabled)
    {
      v6 = v11[4];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v11 copyDescription];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      _NRLogWithArgs();

      WeakRetained = v11;
    }
  }
}

void sub_10007625C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v33 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = WeakRetained[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [WeakRetained copyDescription];
      v31 = *(a1 + 40);
      v32 = v5;
      v29 = v11;
      v30 = *(a1 + 32);
      v27 = "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_7";
      v28 = 451;
      v26 = "";
      _NRLogWithArgs();
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 notifyStatus];
          v19 = [v17 notifyData];
          v20 = WeakRetained[4];
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = _NRLogIsLevelEnabled();

          if (v22)
          {
            v23 = WeakRetained[4];
            v24 = _NRCopyLogObjectForNRUUID();
            v30 = v18;
            v31 = v19;
            v28 = 635;
            v29 = [WeakRetained copyDescription];
            v26 = "";
            v27 = "[NRLinkFixedInterface handleNotifyCode:payload:]";
            _NRLogWithArgs();
          }

          if (v18 == 50701)
          {
            sub_100171CD8(NRDLocalDevice, v19, WeakRetained[4]);
            [WeakRetained checkProxyAgentWithForceUpdate:0];
          }

          else if (v18 == 50702)
          {
            v25 = [WeakRetained linkDelegate];
            [v25 linkDidReceiveData:WeakRetained data:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v3 = v33;
  }
}

void sub_100076514(uint64_t a1, uint64_t a2)
{
  String = NRDataProtectionClassCreateString();
  if (*(a1 + 16) == 255)
  {
    v9 = *(a1 + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 = *(a1 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_10;
  }

  [a1 invalidateIKESessionForClass:a2];
  v4 = *(a1 + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (a2 != 4)
  {
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    v16 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  sub_1000766CC(a1);
LABEL_10:
}

void sub_1000766CC(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 112);
  if ((v2 - 1) >= 2)
  {
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v8 = *(a1 + 32);
    String = _NRCopyLogObjectForNRUUID();
    v3 = [a1 copyDescription];
    v45 = *(a1 + 112);
    _NRLogWithArgs();
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    String = qword_100228E80;
    v3 = [a1 localInterfaceName];
    v4 = [a1 localOuterEndpoint];
    sub_100016A08(String, a1, v3, v4);
    goto LABEL_7;
  }

  if (*(a1 + 271))
  {
    return;
  }

  String = NRDataProtectionClassCreateString();
  if (*(a1 + 16) == 255)
  {
    v27 = *(a1 + 32);
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = *(a1 + 32);
    v3 = _NRCopyLogObjectForNRUUID();
    v4 = [a1 copyDescription];
    _NRLogWithArgs();
    goto LABEL_7;
  }

  v9 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
  v3 = v9;
  if (v9)
  {
    v10 = *(v9 + 72);

    if (v10)
    {
      v4 = sub_100146654(v3, 0);
      [v4 setRandomizeLocalPort:1];
      v11 = [a1 localInterfaceName];
      [v4 setOutgoingInterfaceName:v11];

      v12 = [a1 remoteOuterEndpoint];
      [v4 setRemoteEndpoint:v12];

      [v4 setRequestChildlessSA:{objc_msgSend(a1, "hasCompanionDatapath") ^ 1}];
      v13 = sub_100147400(1, v3, 4);
      [a1 invalidateIKESessionForClass:4];
      v14 = [[NSString alloc] initWithFormat:@"terminus-FixedInterface-%@", String];
      v15 = [NEIKEv2Session alloc];
      v16 = v3;
      v17 = sub_100146D34(0, 0);
      [v17 setMode:2];
      [v17 setReplayWindowSize:4];
      sub_100147008(v17, v16, 0);

      v18 = [v15 initWithIKEConfig:v4 firstChildConfig:v17 sessionConfig:v13 queue:*(a1 + 8) ipsecInterface:objc_msgSend(a1 ikeSocketHandler:"virtualInterface") kernelSASessionName:0 packetDelegate:{v14, 0}];
      v19 = *(a1 + 271);
      *(a1 + 271) = v18;

      v20 = *(a1 + 271);
      if (v20)
      {
        [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, v20];
        sub_10007501C(a1);
        v21 = *(a1 + 32);
        v22 = _NRCopyLogObjectForNRUUID();
        v23 = _NRLogIsLevelEnabled();

        if (v23)
        {
          v24 = *(a1 + 32);
          v25 = _NRCopyLogObjectForNRUUID();
          v26 = [a1 copyDescription];
          v49 = String;
          v50 = *(a1 + 271);
          v47 = 520;
          v48 = v26;
          v43 = "";
          v46 = "[NRLinkFixedInterface setupIPsecIfNecessary:]";
          _NRLogWithArgs();
        }

        [*(a1 + 271) connect];
      }

      else
      {
        v38 = *(a1 + 32);
        v39 = _NRCopyLogObjectForNRUUID();
        v40 = _NRLogIsLevelEnabled();

        if (v40)
        {
          v41 = *(a1 + 32);
          v42 = _NRCopyLogObjectForNRUUID();
          v44 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      goto LABEL_28;
    }

    v31 = *(a1 + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v35 = *(a1 + 32);
    v36 = _NRCopyLogObjectForNRUUID();
    v37 = _NRLogIsLevelEnabled();

    if (!v37)
    {
      v3 = 0;
      goto LABEL_10;
    }
  }

  v34 = *(a1 + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  v13 = [a1 copyDescription];
  _NRLogWithArgs();
LABEL_28:

LABEL_7:
LABEL_10:

LABEL_11:
}

uint64_t sub_100076C30(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != 4)
    {
      v2 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v4 = sub_10007478C();
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v5 = *__error();
      v6 = _os_log_pack_fill();
      v7 = NRDataProtectionClassCreateString();
      *v6 = 136446466;
      *(v6 + 4) = "[NRLinkFixedInterface ikeSessionPointerForDataProtectionClass:]";
      *(v6 + 12) = 2112;
      *(v6 + 14) = v7;
      sub_10007478C();
      _NRLogAbortWithPack();
    }

    result += 271;
  }

  return result;
}

void sub_10007744C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100077488(uint64_t a1, void *a2)
{
  path = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained state];
    if (path)
    {
      if (v5 != 255 && nw_path_get_status(path) == nw_path_status_satisfied)
      {
        v6 = v4[4];
        v7 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v9 = v4[4];
          v10 = _NRCopyLogObjectForNRUUID();
          v11 = [v4 copyDescription];
          _NRLogWithArgs();
        }

        sub_1000766CC(v4);
      }
    }
  }
}

void sub_1000779F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || *(v1 + 14) != 1)
  {
    return;
  }

  if (!*(v1 + 16))
  {
    v30 = *(v1 + 40);
    v31 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 40);
    }

    WeakRetained = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
    goto LABEL_64;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    --*(v3 + 16);
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 40);
    }
  }

  v6 = _NRCopyLogObjectForNRUUID();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[5];
    }

    v9 = v8;
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = *(v11 + 16);
    }

    v58 = 220;
    v59 = v11;
    v56 = "";
    v57 = "[NRBTLinkPreferencesAgent unassertAgentWithOptions:]_block_invoke";
    _NRLogWithArgs();
  }

  v12 = *(a1 + 32);
  if (!v12 || !*(v12 + 16))
  {
    [WeakRetained deviceHasBTLinkUpgradeRequest:{0, v56, v57, v58, v59}];
  }

  v13 = [*(a1 + 40) objectForKeyedSubscript:{NWNetworkAgentStartOptionClientUUID, v56, v57, v58, v59}];
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = v14 ? *(v14 + 80) : 0;
    v16 = [v15 objectForKeyedSubscript:v13];

    if (v16)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 80);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 objectForKeyedSubscript:v13];
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(v20 + 88);
      }

      else
      {
        v21 = 0;
      }

      if ([v21 countForObject:v13])
      {
        v22 = *(a1 + 32);
        v23 = v22 ? *(v22 + 88) : 0;
        [v23 removeObject:v13];
        v24 = *(a1 + 32);
        v25 = v24 ? *(v24 + 88) : 0;
        if (![v25 countForObject:v13])
        {
          v26 = *(a1 + 32);
          if (v26)
          {
            v27 = *(v26 + 80);
          }

          else
          {
            v27 = 0;
          }

          [v27 setObject:0 forKeyedSubscript:v13];
          [WeakRetained reportBTLinkUpgradeClientRemoved:v19];
        }
      }
    }
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    if (*(v28 + 16))
    {
      goto LABEL_63;
    }

    v28 = *(v28 + 88);
  }

  v29 = v28;
  if ([v29 count])
  {

LABEL_47:
    v38 = *(a1 + 32);
    if (v38)
    {
      v39 = *(v38 + 40);
    }

    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      v42 = *(a1 + 32);
      if (v42)
      {
        v42 = v42[5];
      }

      v43 = v42;
      v44 = _NRCopyLogObjectForNRUUID();
      v45 = *(a1 + 32);
      if (v45)
      {
        v45 = v45[11];
      }

      v46 = v45;
      [v46 count];
      v47 = *(a1 + 32);
      if (v47)
      {
        v48 = *(v47 + 80);
      }

      else
      {
        v48 = 0;
      }

      [v48 count];
      _NRLogWithArgs();
    }

    v49 = *(a1 + 32);
    if (v49)
    {
      v50 = *(v49 + 40);
    }

    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (v52)
    {
      v53 = *(a1 + 32);
      if (v53)
      {
        v54 = *(v53 + 40);
      }

      v55 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_63;
  }

  v35 = *(a1 + 32);
  if (v35)
  {
    v36 = *(v35 + 80);
  }

  else
  {
    v36 = 0;
  }

  v37 = [v36 count];

  if (v37)
  {
    goto LABEL_47;
  }

LABEL_63:

LABEL_64:
}

void sub_100077EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 14) != 1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 64));
  v4 = *(a1 + 32);
  if (!v4 || (v5 = *(v4 + 16)) == 0)
  {
    [WeakRetained deviceHasBTLinkUpgradeRequest:1];
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 16);
  }

  *(v4 + 16) = v5 + 1;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

LABEL_9:
  v8 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[5];
    }

    v11 = v10;
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = *(v13 + 16);
    }

    v39 = 186;
    v40 = v13;
    v36 = "";
    v38 = "[NRBTLinkPreferencesAgent assertAgentWithOptions:]_block_invoke";
    _NRLogWithArgs();
  }

  v14 = NWNetworkAgentStartOptionClientUUID;
  v15 = [*(a1 + 40) objectForKeyedSubscript:{NWNetworkAgentStartOptionClientUUID, v36, v38, v39, v40}];
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      v19 = [v17 objectForKeyedSubscript:NWNetworkAgentStartOptionPID];
      if (v19)
      {
        goto LABEL_18;
      }

      v20 = [v18 objectForKeyedSubscript:v14];
      if (!v20)
      {
        v19 = 0;
        goto LABEL_19;
      }

      v30 = [NWPath pathForClientID:v20];
      v31 = [v30 parameters];
      v32 = [v31 copyCParameters];

      if (v32 && (pid = nw_parameters_get_pid(), pid >= 1))
      {
        v19 = [NSNumber numberWithInt:pid];
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
LABEL_18:
        v20 = sub_10013CB6C([v19 intValue], 0);
      }

      else
      {
        v20 = 0;
      }

LABEL_19:

      if (v20 && v15)
      {
        v21 = *(a1 + 32);
        if (v21)
        {
          v22 = *(v21 + 80);
        }

        else
        {
          v22 = 0;
        }

        v23 = [v22 objectForKeyedSubscript:{v15, v37}];

        if (!v23)
        {
          v24 = *(a1 + 32);
          if (v24)
          {
            v25 = *(v24 + 80);
          }

          else
          {
            v25 = 0;
          }

          [v25 setObject:v20 forKeyedSubscript:v15];
        }

        v26 = *(a1 + 32);
        if (v26)
        {
          v27 = *(v26 + 88);
        }

        else
        {
          v27 = 0;
        }

        if (![v27 countForObject:v15])
        {
          [WeakRetained reportBTLinkUpgradeClientAdded:v20];
        }

        v28 = *(a1 + 32);
        if (v28)
        {
          v29 = *(v28 + 88);
        }

        else
        {
          v29 = 0;
        }

        [v29 addObject:v15];
      }

      goto LABEL_34;
    }

    v34 = sub_1000781E4();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      v19 = sub_1000781E4();
      v37 = "[NRBTLinkPreferencesAgent retrieveClientNameFromOptions:]";
      _NRLogWithArgs();
      v20 = 0;
      goto LABEL_19;
    }
  }

  v20 = 0;

LABEL_34:
}

id sub_1000781E4()
{
  if (qword_100229010 != -1)
  {
    dispatch_once(&qword_100229010, &stru_1001FAE50);
  }

  v1 = qword_100229008;

  return v1;
}

void sub_100078238(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229008;
  qword_100229008 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000782D4(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 72));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    if (([*(a1 + 56) unregisterNetworkAgent] & 1) == 0)
    {
      v4 = *(a1 + 40);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = *(a1 + 40);
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    v9 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 14) = 0;
    v10 = *(a1 + 40);
    v12 = [a1 agentUUID];
    v11 = [v12 UUIDString];
    sub_1000059A8(v10, 18003, 0, v11);
  }
}

id *sub_10007850C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v31.receiver = a1;
    v31.super_class = NRBTLinkPreferencesAgent;
    v11 = objc_msgSendSuper2(&v31, "init");
    if (!v11)
    {
      v26 = sub_1000781E4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = sub_1000781E4();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = 136446210;
      *(v30 + 4) = "[NRBTLinkPreferencesAgent initWithNRUUID:queue:delegate:]";
      sub_1000781E4();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeStrong(v11 + 6, a3);
    objc_storeStrong(a1 + 5, a2);
    v12 = +[NSUUID UUID];
    [a1 setAgentUUID:v12];

    [a1 setUserActivated:1];
    [a1 setAgentDescription:@"Link preferences netagent"];
    objc_storeWeak(a1 + 8, v10);
    v13 = [NSString alloc];
    v14 = [a1 agentUUID];
    v15 = [v14 UUIDString];
    v16 = [v13 initWithFormat:@"NRBTLinkPreferencesAgent-%@", v15];
    v17 = a1[9];
    a1[9] = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = a1[10];
    a1[10] = v18;

    v20 = objc_alloc_init(NSCountedSet);
    v21 = a1[11];
    a1[11] = v20;

    v22 = a1[5];
    v23 = [a1 agentUUID];
    v24 = [v23 UUIDString];
    sub_1000059A8(v22, 18001, 0, v24);
  }

  return a1;
}

void sub_1000787C8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229020;
  qword_100229020 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007880C(id a1)
{
  v1 = sub_100003490();
  dispatch_assert_queue_V2(v1);

  byte_100229030 = 0;
  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v2 = *(qword_1002291D8 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_1002291D8;
  v4 = [v2 count];

  if (!v4 && (!sub_1000B79D8() || (sub_10016C59C() & 1) == 0))
  {
    v5 = qword_100229018;
    v6 = qword_100229018;
    qword_100229018 = 0;

    ne_session_clear_caches();
    v7 = +[NSFileManager defaultManager];
    v14 = 0;
    v8 = [v7 removeItemAtPath:@"/var/mobile/Library/terminus/com.apple.terminusd.keepalive" error:&v14];
    v9 = v14;

    if ((v8 & 1) == 0)
    {
      v10 = v9;
      v11 = v10;
      if (v10 && [v10 code] == 4)
      {
        v12 = [v11 domain];
        v13 = [v12 isEqualToString:NSCocoaErrorDomain];

        if (v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      if (qword_100229028 != -1)
      {
        dispatch_once(&qword_100229028, &stru_1001FAED0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229028 != -1)
        {
          dispatch_once(&qword_100229028, &stru_1001FAED0);
        }

        _NRLogWithArgs();
      }
    }

LABEL_18:
  }
}

uint64_t sub_100079348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v21 = WeakRetained;
    WeakRetained = [WeakRetained cancelled];
    v3 = v21;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v21 aggregateStatsTimerSource];
      v5 = *(a1 + 32);

      v3 = v21;
      if (v4 == v5)
      {
        WeakRetained = [v21 totalReceivedUpdates];
        v3 = v21;
        if (WeakRetained)
        {
          v6 = objc_alloc_init(NRAnalyticsALUAdviceAggregateStats);
          v7 = [v21 totalReceivedUpdates];
          if (v6)
          {
            v6->_totalAdviceCount = v7;
            v6->_totalAdviceCountForWiFi = [v21 totalCountForWiFiAdvice];
            v6->_totalAdviceCountForBTClassic = [v21 totalCountForBTClassicAdvice];
          }

          else
          {
            [v21 totalCountForWiFiAdvice];
            [v21 totalCountForBTClassicAdvice];
          }

          [v21 totalDurationForWiFiAdvice];
          if (v8 > 0.0)
          {
            if ([v21 totalCountForWiFiAdvice])
            {
              [v21 totalDurationForWiFiAdvice];
              v10 = v9;
              v11 = [v21 totalCountForWiFiAdvice];
              if (v6)
              {
                v6->_avgDurationForWiFiAdvice = v10 / v11;
              }
            }
          }

          [v21 totalDurationForBTClassicAdvice];
          if (v12 > 0.0)
          {
            if ([v21 totalCountForBTClassicAdvice])
            {
              [v21 totalDurationForBTClassicAdvice];
              v14 = v13;
              v15 = [v21 totalCountForBTClassicAdvice];
              if (v6)
              {
                v6->_avgDurationForBTClassicAdvice = v14 / v15;
              }
            }
          }

          [v21 totalIntervalForNonDefaultAdvice];
          if (v16 > 0.0)
          {
            if ([v21 totalCountForNonDefaultAdvice])
            {
              [v21 totalIntervalForNonDefaultAdvice];
              v18 = v17;
              v19 = [v21 totalCountForNonDefaultAdvice];
              if (v6)
              {
                v6->_avgIntervalForNonDefaultAdvice = v18 / v19;
              }
            }
          }

          [(NRAnalyticsALUAdviceAggregateStats *)v6 submit];
          [v21 setTotalReceivedUpdates:0];
          [v21 setTotalCountForWiFiAdvice:0];
          [v21 setTotalDurationForWiFiAdvice:0.0];
          [v21 setTotalCountForBTClassicAdvice:0];
          [v21 setTotalDurationForBTClassicAdvice:0.0];
          [v21 setTotalCountForNonDefaultAdvice:0];
          [v21 setTotalIntervalForNonDefaultAdvice:0.0];

          v3 = v21;
        }
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_100079714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    WeakRetained = [WeakRetained cancelled];
    v3 = v11;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v11 wifiAdviceMonitorTimerSource];
      v5 = *(a1 + 32);

      v3 = v11;
      if (v4 == v5)
      {
        v6 = [[NSString alloc] initWithFormat:@"Advice exceeds %u seconds"];
        sub_10013C2A8(@"NRAutoLinkUpgrade", @"WiFiAdvice", v6, 0, 0, v7, v8, v9, 1800);

        v3 = v11;
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_100079A1C(void *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v22.receiver = a1;
  v22.super_class = NRLinkUpgradeReport;
  v3 = objc_msgSendSuper2(&v22, "init");
  if (!v3)
  {
    v17 = sub_100079C98();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v5 = "[NRLinkUpgradeReport initWithUpgradeType:]";
    if (IsLevelEnabled)
    {
      v19 = sub_100079C98();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    __chkstk_darwin();
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRLinkUpgradeReport initWithUpgradeType:]";
    sub_100079C98();
    _NRLogAbortWithPack();
    goto LABEL_30;
  }

  v4 = v3;
  v3[8] = a2;
  objc_opt_self();
  v5 = &qword_100229000;
  if (qword_1002290C0 != -1)
  {
LABEL_30:
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v6 = qword_1002290B8;
  if (v6)
  {
    v7 = v6[6];

    if (v7 >= 0x29)
    {
      v8 = 50;
    }

    else
    {
      v8 = 40;
    }

    if (v7 >= 0x1F)
    {
      v9 = v8;
    }

    else
    {
      v9 = 30;
    }

    if (v7 >= 0x15)
    {
      v10 = v9;
    }

    else
    {
      v10 = 20;
    }

    if (v7 >= 0xB)
    {
      v11 = v10;
    }

    else
    {
      v11 = 10;
    }

    if (!v7)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 9) = v11;
  v23 = 0;
  v12 = IOPSGetPercentRemaining();
  v13 = v23;
  if (v12)
  {
    v13 = 0;
  }

  *(v4 + 10) = v13;
  objc_opt_self();
  if (v5[24] != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    v15 = v14[11];

    if (v15 == 1)
    {
      *(v4 + 16) |= 0x20u;
    }
  }

  return v4;
}

id sub_100079C98()
{
  if (qword_100229040 != -1)
  {
    dispatch_once(&qword_100229040, &stru_1001FAF10);
  }

  v1 = qword_100229038;

  return v1;
}

void sub_100079CEC(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229038;
  qword_100229038 = v1;

  _objc_release_x1(v1, v2);
}

__CFString *sub_100079D30(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if ((a1 & 0x100) != 0)
  {
    [v2 addObject:@"TxSml"];
    if ((a1 & 0x200) == 0)
    {
LABEL_3:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"TxMed"];
  if ((a1 & 0x400) == 0)
  {
LABEL_4:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"TxLrg"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_5:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"SvcVo"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_6:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"SvcVi"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_7:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"RdPoor"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_8:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"RdFair"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_9:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:@"RdGood"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_10:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:@"RdBest"];
  if ((a1 & 0x400000) == 0)
  {
LABEL_11:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"CngHi"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_12:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"NotCngHi"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"Plgd"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"NotPlgd"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:@"BtryPoor"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_16:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:@"BtryFair"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"BtryGood"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_18:
    if ((a1 & 0x100000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"BtryBest"];
  if ((a1 & 0x100000000000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x200000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"TxDone"];
  if ((a1 & 0x200000000000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x400000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"Rst"];
  if ((a1 & 0x400000000000000) == 0)
  {
LABEL_21:
    if ((a1 & 0x800000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"UnexpLnkSwtch"];
  if ((a1 & 0x800000000000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"Inactv"];
  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"RdDtr"];
  if ((a1 & 0x2000000000000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x4000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_50:
  [v3 addObject:@"BtryDtr"];
  if ((a1 & 0x4000000000000000) != 0)
  {
LABEL_25:
    [v3 addObject:@"LnkSwtchFlr"];
  }

LABEL_26:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"_"];
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

id *sub_100079FE8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = NRAutoLinkUpgradeMonitor;
    v8 = objc_msgSendSuper2(&v15, "init");
    if (!v8)
    {
      v10 = sub_100079C98();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_100079C98();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "[NRAutoLinkUpgradeMonitor initWithQueue:nrUUID:]";
      sub_100079C98();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    v8[4] = atomic_fetch_add_explicit(&qword_100228388, 1uLL, memory_order_relaxed);
    objc_storeStrong(v8 + 5, a2);
    objc_storeStrong(a1 + 2, a3);
    [a1 reportEvent:30001];
  }

  return a1;
}

void sub_10007A18C(void *a1, void *a2)
{
  v11 = a2;
  if (a1)
  {
    if ([a1 cancelled])
    {
      v3 = a1[2];
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_9;
      }

LABEL_7:
      v9 = a1[2];
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      goto LABEL_9;
    }

    if ([a1 hasReportedUpgradeStatusToSymptoms])
    {
      v6 = a1[2];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    [a1 setHasReportedUpgradeStatusToSymptoms:1];
  }

LABEL_9:
}

void sub_10007A438(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_10007A570(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

id *sub_10007A8DC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v6)
    {
      if (v7)
      {
        v44.receiver = a1;
        v44.super_class = NRCompanionLinkViabilityAgent;
        v9 = objc_msgSendSuper2(&v44, "init");
        if (v9)
        {
          v10 = v9;
          objc_storeStrong(v9 + 5, a3);
          objc_storeStrong(v10 + 4, a2);
          v11 = +[NSUUID UUID];
          [v10 setAgentUUID:v11];

          [v10 setAgentDescription:@"Companion link viability netagent"];
          v12 = [NSString alloc];
          v13 = [v10 agentUUID];
          v14 = [v13 UUIDString];
          v15 = [v12 initWithFormat:@"NRCompanionLinkViabilityAgent-%@", v14];
          v16 = v10[7];
          v10[7] = v15;

          v17 = sub_100163A30(NRDLocalDevice, v10[4]);
          if (v17)
          {
            v18 = v17;
            v19 = [[NSString alloc] initWithFormat:@"%@", v17];
            v20 = v10[8];
            v10[8] = v19;

            v21 = v10[4];
            v22 = v10[8];
            v23 = v21;
            v24 = [v10 agentUUID];
            v25 = [v24 UUIDString];
            sub_1000059A8(v23, 19001, v22, v25);

            a1 = v10;
            goto LABEL_7;
          }

          v39 = sub_10007AD90();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v41 = sub_10007AD90();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          v42 = *__error();
          v43 = _os_log_pack_fill();
          *v43 = 136446210;
          *(v43 + 4) = "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]";
LABEL_21:
          sub_10007AD90();
          _NRLogAbortWithPack();
        }

        v34 = sub_10007AD90();
        v35 = _NRLogIsLevelEnabled();

        if (v35)
        {
          v36 = sub_10007AD90();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v37 = *__error();
LABEL_17:
        v38 = _os_log_pack_fill();
        *v38 = 136446210;
        *(v38 + 4) = "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]";
        goto LABEL_21;
      }

      v31 = sub_10007AD90();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = sub_10007AD90();
        _NRLogWithArgs();
      }
    }

    else
    {
      v27 = sub_10007AD90();
      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v29 = sub_10007AD90();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    v30 = *__error();
    goto LABEL_17;
  }

LABEL_7:

  return a1;
}

id sub_10007AD90()
{
  if (qword_100229050 != -1)
  {
    dispatch_once(&qword_100229050, &stru_1001FAF30);
  }

  v1 = qword_100229048;

  return v1;
}

void sub_10007ADE4(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229048;
  qword_100229048 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007AE28(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 56));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    v4 = *(a1 + 48);
    if (v4)
    {
      if (([v4 unregisterNetworkAgent] & 1) == 0)
      {
        v5 = *(a1 + 32);
        v6 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = *(a1 + 32);
          v9 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }

      v10 = *(a1 + 48);
      *(a1 + 48) = 0;

      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = v11;
      v14 = [a1 agentUUID];
      v15 = [v14 UUIDString];
      sub_1000059A8(v13, 19003, v12, v15);
    }

    *(a1 + 14) = 0;
  }
}

void sub_10007B160(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v40 = v2;
  if (!v2)
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_72;
    }

    if (qword_100229060 == -1)
    {
LABEL_32:
      _NRLogWithArgs();
      goto LABEL_72;
    }

LABEL_46:
    dispatch_once(&qword_100229060, &stru_1001FAF50);
    goto LABEL_32;
  }

  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  if (![v5 containsObject:v3])
  {
    goto LABEL_72;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  if (![v7 count])
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_72;
    }

    if (qword_100229060 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 56);
  }

  else
  {
    v9 = 0;
  }

  [v9 removeObject:v40];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 64);
    if (v11)
    {
      [v11 removeObjectForKey:v40];
    }
  }

  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_37;
  }

  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  v12 = qword_100229058;
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(v13 + 64);
    v13 = *(a1 + 40);
    if (v14)
    {
      v15 = v14;
      if (v13)
      {
        v13 = *(v13 + 64);
      }

      v38 = 266;
      v39 = v13;
      v36 = "";
      v37 = "[NRDirectToCloudAgent unassertAgentWithOptions:]_block_invoke";
      _NRLogWithArgs();

      goto LABEL_36;
    }

    if (v13)
    {
      v13 = *(v13 + 56);
    }
  }

  v38 = 266;
  v39 = v13;
  v36 = "";
  v37 = "[NRDirectToCloudAgent unassertAgentWithOptions:]_block_invoke";
  _NRLogWithArgs();
LABEL_36:

LABEL_37:
  v16 = *(a1 + 40);
  if (v16)
  {
    if ([*(v16 + 56) count])
    {
LABEL_39:
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v17 = qword_1002290B8;
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 6);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [*(a1 + 40) agentUUID];
      v22 = *(a1 + 40);
      if (v22)
      {
        v23 = *(v22 + 64);
      }

      else
      {
        v23 = 0;
      }

      v24 = [v23 allValues];
      sub_10017F43C(v20, 64, v21, v24);

      goto LABEL_72;
    }
  }

  else if ([0 count])
  {
    goto LABEL_39;
  }

  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v25 = qword_1002290B8;
  v26 = v25;
  if (v25)
  {
    v27 = *(v25 + 6);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  sub_10017F5C8(v28, 0);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v29 = qword_1002290B8;
  v30 = v29;
  if (v29)
  {
    v31 = *(v29 + 6);
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  v33 = [*(a1 + 40) agentUUID];
  sub_10017F364(v32, v33);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v34 = qword_1002290B8;
  [v34 directToCloudRequestUnavailable];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v35 = qword_1002290B8;
  if (v35)
  {
    sub_1000059A8(0, 14005, 0, 0);
  }

LABEL_72:
}

void sub_10007B6F8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229058;
  qword_100229058 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007B7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v3 = *(v1 + 32);
  v4 = *(a1 + 40);
  dispatch_assert_queue_V2(v3);
  v43 = [v4 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

  if (!v43)
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs();
    }

    v38 = 0;
    goto LABEL_61;
  }

  v5 = [*(v1 + 56) containsObject:v43];
  v6 = v43;
  if (v5)
  {
LABEL_12:

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 56);
    }

    else
    {
      v18 = 0;
    }

    if ([v18 count] == 1)
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229060 != -1)
        {
          dispatch_once(&qword_100229060, &stru_1001FAF50);
        }

        v42 = 227;
        v40 = "";
        v41 = "[NRDirectToCloudAgent assertAgentWithOptions:]_block_invoke";
        _NRLogWithArgs();
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v19 = qword_1002290B8;
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 6);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      sub_10017F5C8(v22, 1);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v23 = qword_1002290B8;
    v24 = v23;
    if (v23)
    {
      v25 = *(v23 + 6);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = [*(a1 + 32) agentUUID];
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = *(v28 + 64);
    }

    else
    {
      v29 = 0;
    }

    v30 = [v29 allValues];
    sub_10017F43C(v26, 64, v27, v30);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v31 = qword_1002290B8;
    [v31 directToCloudRequestAvailable];

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_56;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    v32 = qword_100229058;
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 64);
      v35 = *(a1 + 32);
      if (v34)
      {
        v36 = v34;
        if (v35)
        {
          v37 = *(v35 + 64);
        }

        _NRLogWithArgs();

        goto LABEL_55;
      }

      if (v35)
      {
        v39 = *(v35 + 56);
      }
    }

    _NRLogWithArgs();
LABEL_55:

LABEL_56:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v43 = qword_1002290B8;
    if (v43)
    {
      sub_1000059A8(0, 14004, 0, 0);
    }

    goto LABEL_60;
  }

  v7 = [NWPath pathForClientID:v43];
  v8 = [v7 parameters];
  v9 = [v8 copyCParameters];

  if (v9)
  {
    [*(v1 + 56) addObject:v43];
    if (_NRIsAppleInternal())
    {
      if (!*(v1 + 64))
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = *(v1 + 64);
        *(v1 + 64) = v10;
      }

      pid = nw_parameters_get_pid();
      v13 = sub_10013CB6C(pid, 0);
      v14 = [v7 effectiveRemoteEndpoint];

      if (v14)
      {
        v15 = [[NSMutableString alloc] initWithString:v13];
        v16 = [v7 effectiveRemoteEndpoint];
        [v15 appendFormat:@" (%@)", v16];

        v13 = v15;
      }

      [*(v1 + 64) setObject:v13 forKeyedSubscript:v43];
    }

    v6 = v43;
    goto LABEL_12;
  }

LABEL_60:
  v38 = v43;
LABEL_61:
}

uint64_t sub_10007BEA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 14) != 1)
    {
      return 1;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      v2 = qword_100229058;
      [v1 agentDescription];
      v19 = v18 = 148;
      v16 = "";
      v17 = "[NRDirectToCloudAgent invalidateAgent]";
      _NRLogWithArgs();
    }

    [v1 setActive:{0, v16, v17, v18, v19}];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A238(v3, *(v1 + 72));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A52C(v4);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v5 = qword_1002290B8;
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    sub_10017F5C8(v8, 0);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v9 = qword_1002290B8;
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 6);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v1 agentUUID];
    sub_10017F364(v12, v13);

    if ([*(v1 + 40) unregisterNetworkAgent])
    {
      *(v1 + 14) = 0;
      v14 = *(v1 + 40);
      *(v1 + 40) = 0;

      v15 = *(v1 + 56);
      *(v1 + 56) = 0;

      sub_1000059A8(0, 14003, 0, 0);
      return 1;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs();
      return 0;
    }
  }

  return result;
}

id *sub_10007C284(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = NRDirectToCloudAgent;
    v5 = objc_msgSendSuper2(&v23, "init");
    if (v5)
    {
      if (v4)
      {
        a1 = v5;
        dispatch_assert_queue_V2(v4);
        [a1 setActive:0];
        [a1 setKernelActivated:1];
        [a1 setUserActivated:1];
        [a1 setVoluntary:1];
        [a1 setNetworkProvider:0];
        [a1 setSpecificUseOnly:0];
        v6 = +[NSUUID UUID];
        [a1 setAgentUUID:v6];

        v7 = [NSString stringWithFormat:@"Direct-To-Cloud agent"];
        [a1 setAgentDescription:v7];

        objc_storeStrong(a1 + 4, a2);
        v8 = objc_alloc_init(NSMutableSet);
        v9 = a1[7];
        a1[7] = v8;

        v10 = [NSString alloc];
        v11 = [a1 agentUUID];
        v12 = [v10 initWithFormat:@"DirectToCloudAgent-%@", v11];
        v13 = a1[9];
        a1[9] = v12;

        goto LABEL_5;
      }

      v18 = sub_10007C5A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v20 = sub_10007C5A8();
        _NRLogWithArgs();
      }
    }

    else
    {
      v15 = sub_10007C5A8();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = sub_10007C5A8();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDirectToCloudAgent initWithQueue:]";
    sub_10007C5A8();
    _NRLogAbortWithPack();
  }

LABEL_5:

  return a1;
}

id sub_10007C5A8()
{
  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  v1 = qword_100229058;

  return v1;
}

id sub_10007CF34()
{
  if (qword_100229088 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v1 = qword_100229080;

  return v1;
}

void sub_10007CF88(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229080;
  qword_100229080 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10007D0EC(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (*(a1 + 16) == 255)
    {
      goto LABEL_12;
    }

    v6 = [v4 length];
    v7 = *(a1 + 1727);
    IKEv2PacketString = createIKEv2PacketString();
    [a1 reportEvent:3006 detailsFormat:@"Sending IKEv2 packet #%llu %@ len %llu", v7, IKEv2PacketString, v6];

    ++*(a1 + 1727);
    if (gNRPacketLoggingEnabled == 1)
    {
      v23 = *(a1 + 32);
      v24 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v26 = *(a1 + 32);
        v27 = _NRCopyLogObjectForNRUUID();
        v28 = [a1 copyDescription];
        v29 = *(a1 + 1727);
        v44 = sub_10007D69C(v5);
        _NRLogWithArgs();
      }
    }

    if (*(a1 + 293) == 1)
    {
      HIWORD(v47) = bswap32(v6) >> 16;
      v9 = [[NSMutableData alloc] initWithCapacity:v6 + 5];
      [v9 appendBytes:&unk_100196538 length:1];
      [v9 appendBytes:&v47 + 6 length:2];
      [v9 appendData:v5];
      [v9 bytes];
      if ([v9 length])
      {
        WORD2(v47) = ~os_inet_checksum();
        [v9 appendBytes:&v47 + 4 length:2];
        if (*(a1 + 309) >= 0x15u && (*(a1 + 269) & 1) != 0)
        {
          v10 = &off_100209BA8;
        }

        else
        {
          v10 = &off_100209B90;
        }

        sub_10007D788(a1, v9, v10);

        goto LABEL_17;
      }

      v30 = sub_10007CF34();
      v31 = _NRLogIsLevelEnabled();

      if (v31)
      {
        v32 = sub_10007CF34();
        _NRLogWithArgs();
      }

      v5 = _os_log_pack_size();
      a1 = &v47 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      *v34 = 136446210;
      *(v34 + 4) = "nrChecksumFull";
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_24;
    }

    v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v11 = *(a1 + 339);
    v12 = v6;
    if (*(a1 + 331) >= v6 + 5 + v11)
    {
      v19 = *(a1 + 519) + v11;
      *v19 = 4;
      *(v19 + 1) = bswap32(v6) >> 16;
      memcpy((*(a1 + 519) + (*(a1 + 339) + 3)), [v5 bytes], v6);
      v20 = *(a1 + 519);
      v21 = v12 + 3 + *(a1 + 339);
      *(v20 + v21) = ~os_inet_checksum();
      *(a1 + 339) += v12 + 5;
      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_16:
        sub_10007D9C4(a1, *(a1 + 439));
LABEL_17:
        a1 = 1;
        goto LABEL_18;
      }

LABEL_24:
      v35 = *(a1 + 32);
      v36 = _NRCopyLogObjectForNRUUID();
      v37 = _NRLogIsLevelEnabled();

      if (v37)
      {
        v38 = *(a1 + 32);
        v39 = _NRCopyLogObjectForNRUUID();
        v40 = [a1 copyDescription];
        v45 = *(a1 + v2[408]);
        v46 = *(a1 + 343);
        v42 = *(a1 + 1727);
        _NRLogWithArgs();
      }

      goto LABEL_16;
    }

    v13 = *(a1 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
LABEL_12:
      a1 = 0;
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = [a1 copyDescription];
      v41 = *(a1 + 339);
      v43 = (*(a1 + 331) - *(a1 + 343));
      _NRLogWithArgs();

      a1 = 0;
    }
  }

LABEL_18:

  return a1;
}

id sub_10007D69C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [v1 bytes];
  v4 = objc_alloc_init(NSMutableString);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      [v4 appendFormat:@"%02X", v3[i]];
      if ((~i & 0xF) == 0 || (~i & 3) == 0)
      {
        [v4 appendString:?];
      }
    }
  }

  return v4;
}

void sub_10007D788(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v6 forKeyedSubscript:@"message-data"];

    [v21 setObject:v5 forKeyedSubscript:@"channel-id"];
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:v21 forKeyedSubscript:@"message"];
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v8 = qword_1002290B8;
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 9);
    }

    else
    {
      v10 = 0;
    }

    v11 = [NSNumber numberWithBool:v10 & 1];
    [v7 setObject:v11 forKeyedSubscript:@"test-wake-pkt"];

    v12 = [NSNumber numberWithBool:gNRPacketLoggingEnabled];
    [v7 setObject:v12 forKeyedSubscript:@"packet-logging"];

    v13 = v7;
    v14 = *(a1 + 1399);
    if (v14 && [v14 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 32);
        v18 = *(v15 + 28);
        v19 = v13;
        v20 = [v18 objectForKeyedSubscript:v17];
        sub_100114680(v20, v19);
      }
    }
  }
}

void sub_10007D9C4(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = v2;
  if (*(v2 + 16) == 255)
  {
    v6 = v2[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_278;
    }

    goto LABEL_12;
  }

  v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (!*(v2 + 1063))
  {
    if (*(v2 + 293))
    {
      goto LABEL_278;
    }

    v9 = v2[4];
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (!v11)
    {
      goto LABEL_278;
    }

LABEL_12:
    v12 = *(v3 + 32);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = [v3 copyDescription];
    _NRLogWithArgs();

    goto LABEL_278;
  }

  v371 = *(v2 + 599);
  v375 = v2;
  if (v371 == a2)
  {
    v364 = sub_100080F38;
    v360 = sub_1000813E8;
    if (gNRPacketLoggingEnabled == 1)
    {
LABEL_325:
      v271 = *(v3 + 32);
      v272 = _NRCopyLogObjectForNRUUID();
      v273 = _NRLogIsLevelEnabled();

      v364 = sub_100080F38;
      v360 = sub_1000813E8;
      if (v273)
      {
        v274 = *(v3 + 32);
        v275 = _NRCopyLogObjectForNRUUID();
        v276 = [v3 copyDescription];
        _NRLogWithArgs();
        v364 = sub_100080F38;
        v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
        v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
        v360 = sub_1000813E8;
        v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
        v18 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
        goto LABEL_337;
      }
    }

    v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
    v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
    v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
    v18 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
  }

  else if (*(v2 + 759) == a2)
  {
    v364 = sub_100081064;
    v360 = sub_100081514;
    if (gNRPacketLoggingEnabled == 1)
    {
      v277 = v2[4];
      v278 = _NRCopyLogObjectForNRUUID();
      v279 = _NRLogIsLevelEnabled();

      v364 = sub_100081064;
      v360 = sub_100081514;
      if (!v279)
      {
        v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
        v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
        v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
        v18 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
        v3 = v375;
        goto LABEL_21;
      }

      v3 = v375;
      v280 = *(v375 + 4);
      v275 = _NRCopyLogObjectForNRUUID();
      v276 = [v375 copyDescription];
      _NRLogWithArgs();
      v364 = sub_100081064;
      v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
      v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
      v360 = sub_100081514;
      v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
      v18 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
      goto LABEL_337;
    }

    v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
    v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
    v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
    v18 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
  }

  else
  {
    if (*(v2 + 903) != a2)
    {
      if (*(v2 + 439) != a2)
      {
        v355 = 0;
        v356 = 0;
        v359 = 0;
        v360 = 0;
        v364 = 0;
        v357 = 0;
        v358 = 0;
        v5 = 0;
        goto LABEL_22;
      }

      v364 = sub_1000812BC;
      v360 = sub_10008176C;
      if (gNRPacketLoggingEnabled != 1)
      {
        v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
        v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
        v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
        v18 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
        goto LABEL_21;
      }

      v291 = v2[4];
      v292 = _NRCopyLogObjectForNRUUID();
      v293 = _NRLogIsLevelEnabled();

      v364 = sub_1000812BC;
      v360 = sub_10008176C;
      if (!v293)
      {
        v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
        v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
        v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
        v18 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
        v3 = v375;
        goto LABEL_21;
      }

      v3 = v375;
      v294 = *(v375 + 4);
      v275 = _NRCopyLogObjectForNRUUID();
      v276 = [v375 copyDescription];
      _NRLogWithArgs();
      v364 = sub_1000812BC;
      v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
      v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
      v360 = sub_10008176C;
      v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
      v18 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
LABEL_337:

      goto LABEL_21;
    }

    v364 = sub_100081190;
    v360 = sub_100081640;
    if (gNRPacketLoggingEnabled == 1)
    {
      v281 = v2[4];
      v282 = _NRCopyLogObjectForNRUUID();
      v283 = _NRLogIsLevelEnabled();

      v364 = sub_100081190;
      v360 = sub_100081640;
      if (!v283)
      {
        v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
        v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
        v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
        v18 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
        v3 = v375;
        goto LABEL_21;
      }

      v3 = v375;
      v284 = *(v375 + 4);
      v275 = _NRCopyLogObjectForNRUUID();
      v276 = [v375 copyDescription];
      _NRLogWithArgs();
      v364 = sub_100081190;
      v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
      v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
      v360 = sub_100081640;
      v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
      v18 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
      goto LABEL_337;
    }

    v15 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
    v16 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
    v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
    v18 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
  }

LABEL_21:
  v19 = *v16;
  v5 = *(v3 + *v18);
  v358 = (v3 + *v17);
  v359 = (v3 + *v15);
  v357 = (v3 + v19);
  v355 = *v358;
  v356 = *(v3 + v19);
LABEL_22:
  v361 = 0;
  v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v376 = v5;
  while (2)
  {
    v21 = 0;
    v380 = 0;
    object_address = 0;
    v367 = 0;
    v22 = 0;
    v373 = 0;
    v23 = 0;
    v398 = 0;
    v399 = 0;
    v381 = *(v3 + 1039);
    while (1)
    {
      *(v3 + 2063) = 2;
      v384 = 0u;
      v385 = 0u;
      v382 = 0u;
      v383 = 0u;
      if (v5)
      {
        next_slot = os_channel_get_next_slot();
        if (next_slot)
        {
          if (v371 == a2 && (*(v3 + 265) & 1) != 0)
          {
            if (v383)
            {
              v25 = 0;
              if (WORD1(v382))
              {
                v26 = v21;
                v27 = v4;
                v28 = v23;
                v29 = v22;
                v30 = next_slot;
                if (isPacketValidIPv6())
                {
                  v25 = getDSCPFromPacket() == 46 && WORD1(v382) < 0x2A4u;
                }

                else
                {
                  v25 = 0;
                }

                next_slot = v30;
                v22 = v29;
                v23 = v28;
                v4 = v27;
                v21 = v26;
              }
            }

            else
            {
              v25 = 0;
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              v103 = v21;
              v104 = v4;
              v105 = v23;
              v106 = v22;
              v107 = next_slot;
              getESPSequenceNumberFromPacket();
              if (gNRPacketLoggingEnabled)
              {
                getESPSPIFromPacket();
              }

              next_slot = v107;
              v22 = v106;
              v23 = v105;
              v4 = v104;
              v21 = v103;
              if (v25)
              {
LABEL_147:
                v379 = next_slot;
                v108 = *(v3 + 1143);
                v109 = os_channel_get_next_slot();
                if (!v109)
                {
                  v114 = v21;
                  v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  if (*(v3 + 264) && *(v3 + 1159))
                  {
                    *(v3 + 264) = 0;
                    ++*(v3 + 1175);
                    if (gNRPacketLoggingEnabled == 1)
                    {
                      v147 = *(v3 + 32);
                      v148 = _NRCopyLogObjectForNRUUID();
                      v149 = _NRLogIsLevelEnabled();

                      if (v149)
                      {
                        v150 = *(v3 + 32);
                        v151 = _NRCopyLogObjectForNRUUID();
                        v343 = [v3 copyDescription];
                        _NRLogWithArgs();
                      }
                    }

                    dispatch_resume(*(v3 + 1159));
                    v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  }

                  v364(v3);
                  *(v3 + 2063) |= 4uLL;
                  LODWORD(v48) = 31;
                  v21 = v114;
                  v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  goto LABEL_138;
                }

                v110 = v109;
                if ((*(v3 + 264) & 1) == 0 && *(v3 + 1159))
                {
                  v111 = v109;
                  *(v3 + 264) = 1;
                  ++*(v3 + 1175);
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v142 = *(v3 + 32);
                    v143 = _NRCopyLogObjectForNRUUID();
                    v144 = _NRLogIsLevelEnabled();

                    if (v144)
                    {
                      v145 = *(v3 + 32);
                      v146 = _NRCopyLogObjectForNRUUID();
                      v342 = [v3 copyDescription];
                      _NRLogWithArgs();
                    }
                  }

                  dispatch_suspend(*(v3 + 1159));
                  v110 = v111;
                }

                v112 = *(v3 + 1143);
                v374 = v110;
                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                os_buflet_get_object_address();
                if (os_buflet_get_data_limit() < 0x10000)
                {
                  *(v3 + 1543) += nrPacketToTLV();
                  *v357 += WORD1(v382);
                  ++*v358;
                  *(v3 + 2063) |= 0x10uLL;
                  v369 = v21;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v136 = *(v3 + 32);
                    v137 = _NRCopyLogObjectForNRUUID();
                    v138 = _NRLogIsLevelEnabled();

                    if (v138)
                    {
                      v139 = *(v3 + 32);
                      v140 = _NRCopyLogObjectForNRUUID();
                      v141 = [v3 copyDescription];
                      _NRLogWithArgs();
                    }
                  }

                  os_buflet_set_data_length();
                  v399 = ++v381;
                  os_packet_set_flow_uuid();
                  v113 = os_packet_finalize();
                  if (v113)
                  {
                    v285 = v113;
                    v321 = sub_10007CF34();
                    v322 = _NRLogIsLevelEnabled();

                    if (v322)
                    {
                      v323 = sub_10007CF34();
                      _NRLogWithArgs();
                    }

                    goto LABEL_334;
                  }

                  LODWORD(v48) = 30;
                  v367 = v374;
                  v373 = v379;
                  v4 = 0x100224000;
                  v5 = v376;
                  v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  goto LABEL_137;
                }

                v262 = sub_10007CF34();
                v263 = _NRLogIsLevelEnabled();

                if (v263)
                {
                  v264 = sub_10007CF34();
                  _NRLogWithArgs();
                }

                while (1)
                {
LABEL_308:
                  _os_log_pack_size();
                  __chkstk_darwin();
                  v248 = *__error();
                  v249 = _os_log_pack_fill();
                  *v249 = 136446210;
                  *(v249 + 4) = "NRLinkNexusToLinkLoop";
LABEL_309:
                  sub_10007CF34();
                  _NRLogAbortWithPack();
LABEL_310:
                  v250 = sub_10007CF34();
                  v251 = _NRLogIsLevelEnabled();

                  if (v251)
                  {
                    v252 = sub_10007CF34();
                    _NRLogWithArgs();
                  }
                }
              }
            }

            else if (v25)
            {
              goto LABEL_147;
            }

            v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }
      }

      if (v21)
      {
        *(v3 + 2063) |= 0x40uLL;
        if (!v23)
        {
          goto LABEL_179;
        }

        v4 = v380;
        goto LABEL_46;
      }

      v31 = *(v3 + *(v4 + 1448));
      v32 = os_channel_get_next_slot();
      if (!v32)
      {
        break;
      }

      v23 = v32;
      *(v3 + 2063) |= 0x20uLL;
      v33 = *(v3 + *(v4 + 1448));
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_limit = os_buflet_get_data_limit();
      if (data_limit >= 0x10000)
      {
        v241 = sub_10007CF34();
        v242 = _NRLogIsLevelEnabled();

        if (v242)
        {
          v243 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_308;
      }

      v4 = data_limit;
LABEL_46:
      if ((*(v3 + 262) & 1) == 0 && *(v3 + 1079))
      {
        *(v3 + 262) = 1;
        ++*(v3 + 1095);
        if (gNRPacketLoggingEnabled == 1)
        {
          v98 = *(v3 + 32);
          v99 = _NRCopyLogObjectForNRUUID();
          v100 = _NRLogIsLevelEnabled();

          if (v100)
          {
            v101 = *(v3 + 32);
            v102 = _NRCopyLogObjectForNRUUID();
            v340 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_suspend(*(v3 + 1079));
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      v378 = v4;
      v35 = *(v3 + 339);
      v36 = *(v3 + v20[409]);
      v380 = v4;
      if (v35 <= v36)
      {
        v5 = v376;
        if (!v376)
        {
          goto LABEL_230;
        }
      }

      else
      {
        v37 = v35 - v36;
        if (v37 >= (v4 - v21))
        {
          v38 = v4 - v21;
        }

        else
        {
          v38 = v37;
        }

        memcpy(object_address, (*(v3 + 519) + v36), v38);
        *(v3 + v20[409]) += v38;
        *(v3 + 1527) += v38;
        ++*(v3 + 347);
        v39 = v23;
        v40 = v381;
        if (v22 != v23)
        {
          v40 = v381 + 1;
        }

        v381 = v40;
        *(v3 + 2063) |= 0x100uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v92 = *(v375 + 4);
          v93 = _NRCopyLogObjectForNRUUID();
          v94 = _NRLogIsLevelEnabled();

          if (v94)
          {
            v95 = *(v375 + 4);
            v96 = _NRCopyLogObjectForNRUUID();
            v97 = [v375 copyDescription];
            v325 = *(v375 + 339);
            v333 = *(v375 + 343);
            _NRLogWithArgs();
          }
        }

        v21 = v38 + v21;
        if (v21 >= v4)
        {
          v3 = v375;
          v5 = v376;
          if (v21 != v4)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v238 = qword_100229080;
            v239 = _NRLogIsLevelEnabled();

            if (v239)
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              v240 = qword_100229080;
              _NRLogWithArgs();
            }

            goto LABEL_308;
          }

          v23 = v39;
          os_buflet_set_data_length();
          v399 = v381;
          os_packet_set_flow_uuid();
          v41 = os_packet_finalize();
          if (!v41)
          {
            v21 = 0;
            *(v375 + 2063) |= 0x200uLL;
            v22 = v39;
            v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            continue;
          }

          v265 = v41;
          v266 = sub_10007CF34();
          v267 = _NRLogIsLevelEnabled();

          if (v267)
          {
            v268 = sub_10007CF34();
            _NRLogWithArgs();
          }

          v3 = _os_log_pack_size();
          __chkstk_darwin();
          v269 = *__error();
          v270 = _os_log_pack_fill();
          *v270 = 136446466;
          *(v270 + 4) = "NRLinkNexusToLinkLoop";
          *(v270 + 12) = 1024;
          *(v270 + 14) = v265;
          sub_10007CF34();
          _NRLogAbortWithPack();
          goto LABEL_325;
        }

        v23 = v39;
        v22 = v39;
        v3 = v375;
        v5 = v376;
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (!v376)
        {
LABEL_230:
          if (*(v3 + 16) != 8)
          {
            *(v3 + 2063) |= 0x400uLL;
            v4 = 0x100224000;
            v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            goto LABEL_235;
          }

          v172 = *(v3 + 32);
          v173 = _NRCopyLogObjectForNRUUID();
          v174 = _NRLogIsLevelEnabled();

          v4 = 0x100224000;
          if (v174)
          {
            v175 = *(v3 + 32);
            v176 = _NRCopyLogObjectForNRUUID();
            v335 = [v3 copyDescription];
            _NRLogWithArgs();
          }

          v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v152 = v367;
          goto LABEL_186;
        }
      }

      v42 = os_channel_get_next_slot();
      if (!v42)
      {
        v369 = v21;
        v360(v3);
        *(v3 + 2063) |= 0x800uLL;
        LODWORD(v48) = 31;
        v361 = 1;
        v4 = 0x100224000;
        v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        goto LABEL_137;
      }

      v43 = v42;
      v44 = v381;
      if (!v21)
      {
        v44 = v381 + 1;
      }

      v365 = v44;
      v364(v3);
      if (gNRPacketLoggingEnabled == 1)
      {
        getESPSequenceNumberFromPacket();
        if (gNRPacketLoggingEnabled)
        {
          getESPSPIFromPacket();
          if ((gNRPacketLoggingEnabled & 1) != 0 && (v115 = *(v375 + 4), v116 = _NRCopyLogObjectForNRUUID(), v117 = _NRLogIsLevelEnabled(), v116, v117))
          {
            v3 = v375;
            v118 = *(v375 + 4);
            v119 = _NRCopyLogObjectForNRUUID();
            v120 = [v375 copyDescription];
            _NRLogWithArgs();
          }

          else
          {
            v3 = v375;
          }
        }
      }

      v366 = v23;
      v45 = *(v3 + 311);
      v370 = nrMaxTLVLengthForPacket();
      v396 = 0u;
      v397 = 0u;
      v394 = 0u;
      v395 = 0u;
      v392 = 0u;
      v393 = 0u;
      v390 = 0u;
      v391 = 0u;
      v388 = 0u;
      v389 = 0u;
      v386 = 0u;
      v387 = 0u;
      v384 = 0u;
      v385 = 0u;
      v382 = 0u;
      v383 = 0u;
      if (v380 <= v21)
      {
        v46 = 0;
        v47 = 0;
      }

      else
      {
        *&v382 = &object_address[v21];
        v46 = v378 - v21;
        DWORD2(v382) = v46;
        v47 = 1;
      }

      if (v46 >= v370)
      {
        v5 = v376;
      }

      else
      {
        v363 = v22;
        v50 = v47;
        v51 = &v382 + 4 * v47 + 2;
        do
        {
          v52 = *(v3 + 1063);
          if (!os_channel_get_next_slot())
          {
            break;
          }

          v53 = *(v3 + 1063);
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          v54 = os_buflet_get_object_address();
          v55 = os_buflet_get_data_limit();
          if (v55 >= 0x10000)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v246 = sub_10007CF34();
              _NRLogWithArgs();
            }

            goto LABEL_308;
          }

          *(v51 - 1) = v54;
          if (!v55)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v247 = sub_10007CF34();
              _NRLogWithArgs();
            }

            goto LABEL_308;
          }

          *v51 = v55;
          *(v3 + 2063) |= 0x1000uLL;
          if (v50 == 15)
          {
            v369 = v21;
            IOVecString = createIOVecString();
            sub_100080EB4(v3, @"NtL not enough ioVecs %@ for %u", v64, v65, v66, v67, v68, v69, IOVecString);

            LODWORD(v48) = 1;
            v4 = 0x100224000;
            v5 = v376;
            v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v22 = v363;
            v56 = v365;
            v23 = v366;
            goto LABEL_136;
          }

          ++v50;
          v46 += v55;
          v51 += 4;
        }

        while (v46 < v370);
        v5 = v376;
        v22 = v363;
      }

      if (v46 < v370)
      {
        v369 = v21;
        *(v3 + 2063) |= 0x2000uLL;
        v23 = v366;
        if (*(v3 + 262) == 1)
        {
          v4 = 0x100224000;
          v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (*(v3 + 1079))
          {
            *(v3 + 262) = 0;
            ++*(v3 + 1095);
            if (gNRPacketLoggingEnabled == 1)
            {
              v131 = *(v3 + 32);
              v132 = _NRCopyLogObjectForNRUUID();
              v133 = _NRLogIsLevelEnabled();

              v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              if (v133)
              {
                v134 = *(v3 + 32);
                v135 = _NRCopyLogObjectForNRUUID();
                v341 = [v3 copyDescription];
                _NRLogWithArgs();

                v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              }
            }

            dispatch_resume(*(v3 + 1079));
          }

          LODWORD(v48) = 31;
          v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v56 = v365;
          goto LABEL_136;
        }

        LODWORD(v48) = 31;
        v4 = 0x100224000;
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_131:
        v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v56 = v365;
        goto LABEL_136;
      }

      v23 = v366;
      if (!v382)
      {
        v253 = sub_10007CF34();
        v254 = _NRLogIsLevelEnabled();

        if (v254)
        {
          v255 = sub_10007CF34();
          v350 = createIOVecString();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v256 = *__error();
        v257 = _os_log_pack_fill();
        v258 = createIOVecString();
        *v257 = 136446466;
        *(v257 + 4) = "NRLinkNexusToLinkLoop";
        *(v257 + 12) = 2112;
        *(v257 + 14) = v258;
        goto LABEL_309;
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v121 = *(v3 + 32);
        v122 = _NRCopyLogObjectForNRUUID();
        v123 = _NRLogIsLevelEnabled();

        if (v123)
        {
          v124 = *(v3 + 32);
          v125 = _NRCopyLogObjectForNRUUID();
          v326 = [v3 copyDescription];
          getDSCPFromPacket();
          _NRLogWithArgs();
        }
      }

      v57 = *(v3 + 311);
      v58 = nrPacketToTLV();
      v59 = v58;
      v60 = *v382;
      if (v60 > 0x65)
      {
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v61 = v380;
        if (*v382 > 0x67u)
        {
          if (v60 == 104)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC;
            goto LABEL_109;
          }

          if (v60 == 105)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
            goto LABEL_109;
          }
        }

        else
        {
          if (v60 == 102)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP;
            goto LABEL_109;
          }

          if (v60 == 103)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP_ECT0;
            goto LABEL_109;
          }
        }
      }

      else
      {
        v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v61 = v380;
        if (*v382 > 0x63u)
        {
          if (v60 == 100)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP;
            goto LABEL_109;
          }

          if (v60 == 101)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ECT0;
            goto LABEL_109;
          }
        }

        else
        {
          v62 = &OBJC_IVAR___NRLinkBluetooth__sentUncompressedIP;
          if (v60 == 2)
          {
            goto LABEL_109;
          }

          if (v60 == 3)
          {
            v62 = &OBJC_IVAR___NRLinkBluetooth__sentEncapsulated6LoWPAN;
LABEL_109:
            ++*(v3 + *v62);
          }
        }
      }

      *(v3 + 1527) += v58;
      v70 = (v61 - v21);
      v362 = v43;
      if (v58 <= v70)
      {
        v84 = v21 + v58;
        v4 = 0x100224000;
        goto LABEL_124;
      }

      *(v3 + 2063) |= 0x4000uLL;
      if (gNRPacketLoggingEnabled == 1)
      {
        v126 = *(v3 + 32);
        v127 = _NRCopyLogObjectForNRUUID();
        v128 = _NRLogIsLevelEnabled();

        if (v128)
        {
          v129 = *(v3 + 32);
          v130 = _NRCopyLogObjectForNRUUID();
          v327 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      v399 = v365;
      os_buflet_set_data_length();
      os_packet_set_flow_uuid();
      v71 = os_packet_finalize();
      if (v71)
      {
        v285 = v71;
        v318 = sub_10007CF34();
        v319 = _NRLogIsLevelEnabled();

        if (v319)
        {
          v320 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_334;
      }

      v72 = v381 + (v21 == 0) + 1;
      v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      while (1)
      {
        v73 = *(v3 + 1063);
        v74 = os_channel_get_next_slot();
        if (!v74)
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v244 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_308;
        }

        v23 = v74;
        v75 = *(v3 + 1063);
        os_channel_slot_get_packet();
        os_packet_get_next_buflet();
        object_address = os_buflet_get_object_address();
        v76 = os_buflet_get_data_limit();
        if (v76 >= 0x10000)
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v245 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_308;
        }

        v380 = v76;
        v77 = v76 + v70;
        if (v76 + v70 >= v59)
        {
          break;
        }

        *(v3 + 2063) |= 0x8000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v79 = *(v3 + 32);
          v80 = _NRCopyLogObjectForNRUUID();
          v81 = _NRLogIsLevelEnabled();

          if (v81)
          {
            v82 = *(v3 + 32);
            v83 = _NRCopyLogObjectForNRUUID();
            v324 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        v399 = v72;
        os_buflet_set_data_length();
        os_packet_set_flow_uuid();
        v78 = os_packet_finalize();
        ++v72;
        v70 = v77;
        if (v78)
        {
          v285 = v78;
          v286 = sub_10007CF34();
          v287 = _NRLogIsLevelEnabled();

          if (v287)
          {
            v288 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_334;
        }
      }

      v365 = v72;
      v84 = v59 - v70;
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_124:
      v369 = v84;
      ++*v358;
      *v357 = *v357;
      *(v3 + 2063) |= 0x10000uLL;
      v48 = *(v3 + 2063);
      v5 = v376;
      if (!v48)
      {
        v22 = v23;
        v373 = v362;
        goto LABEL_131;
      }

      v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v48 = *(v3 + 2071);
      if (v48)
      {
        *(v3 + 304) %= *(v3 + 303);
        v85 = *(v3 + 2071);
        v86 = (v85 + 8 * *(v3 + 304));
        if ((v86 + 1) <= v85 + 8 * *(v3 + 303))
        {
          v56 = v365;
          LODWORD(v48) = 0;
          if ((v86 & 7) == 0)
          {
            *v86 = *(v3 + 2063);
            ++*(v3 + 304);
            *(v3 + 2063) = 0;
          }

          v22 = v23;
          v373 = v362;
        }

        else
        {
          v87 = *(v3 + 32);
          v88 = _NRCopyLogObjectForNRUUID();
          v89 = _NRLogIsLevelEnabled();

          if (v89)
          {
            v90 = *(v3 + 32);
            v91 = _NRCopyLogObjectForNRUUID();
            v332 = [v3 copyDescription];
            v339 = *(v3 + 304);
            _NRLogWithArgs();
          }

          LODWORD(v48) = 0;
          v22 = v23;
          v373 = v362;
          v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v56 = v365;
        }
      }

      else
      {
        v22 = v23;
        v373 = v362;
        v56 = v365;
      }

LABEL_136:
      v381 = v56;
LABEL_137:
      v21 = v369;
      if (v48)
      {
LABEL_138:
        if (v48 != 30)
        {
          if (v48 == 31)
          {
LABEL_235:
            v152 = v367;
            goto LABEL_186;
          }

          goto LABEL_24;
        }
      }
    }

    LOWORD(v21) = 0;
LABEL_179:
    if (*(v3 + 262) == 1 && *(v3 + 1079))
    {
      *(v3 + 262) = 0;
      ++*(v3 + 1095);
      if (gNRPacketLoggingEnabled == 1)
      {
        v233 = *(v3 + 32);
        v234 = _NRCopyLogObjectForNRUUID();
        v235 = _NRLogIsLevelEnabled();

        if (v235)
        {
          v236 = *(v3 + 32);
          v237 = _NRCopyLogObjectForNRUUID();
          v349 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(v3 + 1079));
    }

    v364(v3);
    *(v3 + 2063) |= 0x80uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v177 = *(v3 + 32);
      v178 = _NRCopyLogObjectForNRUUID();
      v179 = _NRLogIsLevelEnabled();

      v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v179)
      {
        v180 = *(v3 + 32);
        v181 = _NRCopyLogObjectForNRUUID();
        v345 = [v3 copyDescription];
        _NRLogWithArgs();

        v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      v23 = 0;
    }

    else
    {
      v23 = 0;
      v49 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }

    v152 = v367;
LABEL_186:
    if (v22)
    {
      if (v23 != v22)
      {
        goto LABEL_310;
      }

      v153 = v49;
      v368 = v152;
      if (v21)
      {
        v154 = v380 == v21;
      }

      else
      {
        v154 = 1;
      }

      v155 = 0x40000;
      if (!v154)
      {
        v155 = 0x20000;
      }

      *(v3 + 2063) |= v155;
      if (gNRPacketLoggingEnabled == 1)
      {
        v197 = *(v3 + 32);
        v198 = _NRCopyLogObjectForNRUUID();
        v199 = _NRLogIsLevelEnabled();

        if (v199)
        {
          v200 = *(v3 + 32);
          v201 = _NRCopyLogObjectForNRUUID();
          v329 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      v399 = v381;
      os_buflet_set_data_length();
      os_packet_set_flow_uuid();
      v156 = os_packet_finalize();
      if (v156)
      {
        v285 = v156;
        v315 = sub_10007CF34();
        v316 = _NRLogIsLevelEnabled();

        if (v316)
        {
          v317 = sub_10007CF34();
          _NRLogWithArgs();
        }

LABEL_334:
        _os_log_pack_size();
        __chkstk_darwin();
        v289 = *__error();
        v290 = _os_log_pack_fill();
        *v290 = 136446466;
        *(v290 + 4) = "NRLinkNexusToLinkLoop";
        *(v290 + 12) = 1024;
        *(v290 + 14) = v285;
        goto LABEL_309;
      }

      v157 = *(v3 + 339);
      v158 = *(v3 + 343);
      if (v157 <= v158)
      {
        if (v157 != v158)
        {
          v259 = sub_10007CF34();
          v260 = _NRLogIsLevelEnabled();

          if (v260)
          {
            v261 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_308;
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          if (v157)
          {
            *(v3 + 2063) |= 0x100000uLL;
            v227 = *(v3 + 32);
            v228 = _NRCopyLogObjectForNRUUID();
            v229 = _NRLogIsLevelEnabled();

            if (v229)
            {
              v230 = *(v3 + 32);
              v231 = _NRCopyLogObjectForNRUUID();
              v232 = [v3 copyDescription];
              v338 = *(v3 + 339);
              v348 = *(v3 + 343);
              _NRLogWithArgs();
            }
          }
        }

        *(v3 + 339) = 0;
      }

      else
      {
        *(v3 + 2063) |= 0x80000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v221 = *(v3 + 32);
          v222 = _NRCopyLogObjectForNRUUID();
          v223 = _NRLogIsLevelEnabled();

          if (v223)
          {
            v224 = *(v3 + 32);
            v225 = _NRCopyLogObjectForNRUUID();
            v226 = [v3 copyDescription];
            v337 = *(v3 + 339);
            v347 = *(v3 + 343);
            _NRLogWithArgs();
          }
        }

        memmove(*(v3 + 519), (*(v3 + 519) + *(v3 + 343)), (*(v3 + 339) - *(v3 + 343)));
        *(v3 + 339) -= *(v3 + 343);
      }

      *(v3 + 343) = 0;
      *(v3 + 2063) |= 0x200000uLL;
      v49 = v153;
      if (gNRPacketLoggingEnabled == 1)
      {
        v202 = *(v3 + 32);
        v203 = _NRCopyLogObjectForNRUUID();
        v204 = _NRLogIsLevelEnabled();

        v49 = v153;
        if (v204)
        {
          v205 = *(v3 + 32);
          v206 = _NRCopyLogObjectForNRUUID();
          v330 = [v3 copyDescription];
          _NRLogWithArgs();

          v49 = v153;
        }
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v207 = +[NSDate date];
        v208 = *(v3 + 1831);
        *(v3 + 1831) = v207;
      }

      v159 = *(v3 + *(v4 + 1448));
      os_channel_advance_slot();
      v160 = *(v3 + 1047);
      os_channel_sync();
      ++*(v3 + 1575);
      v152 = v368;
    }

    v161 = v22;
    v162 = v152;
    if (v152)
    {
      *(v3 + 2063) |= 0x800000uLL;
      if (gNRPacketLoggingEnabled == 1)
      {
        v182 = *(v3 + 32);
        v183 = v49;
        v184 = _NRCopyLogObjectForNRUUID();
        v185 = _NRLogIsLevelEnabled();

        v49 = v183;
        if (v185)
        {
          v186 = *(v3 + 32);
          v187 = _NRCopyLogObjectForNRUUID();
          v328 = [v3 copyDescription];
          _NRLogWithArgs();

          v49 = v183;
        }
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v188 = +[NSDate date];
        v189 = *(v3 + 1847);
        *(v3 + 1847) = v188;
      }

      v163 = *(v3 + 1143);
      os_channel_advance_slot();
      v164 = *(v3 + 1127);
      os_channel_sync();
      ++*(v3 + 1591);
    }

    if (v373)
    {
      if (v5)
      {
        *(v3 + 2063) |= 0x1000000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v209 = *(v3 + 32);
          v210 = v49;
          v211 = _NRCopyLogObjectForNRUUID();
          v212 = _NRLogIsLevelEnabled();

          v49 = v210;
          if (v212)
          {
            v213 = *(v3 + 32);
            v214 = _NRCopyLogObjectForNRUUID();
            v331 = [v3 copyDescription];
            _NRLogWithArgs();

            v49 = v210;
          }
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          v215 = +[NSDate date];
          v216 = *(v3 + 1807);
          *(v3 + 1807) = v215;
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*v359;
        if (gNRPacketLoggingEnabled == 1)
        {
          v217 = *(v3 + 32);
          v191 = v49;
          v218 = _NRCopyLogObjectForNRUUID();
          v219 = _NRLogIsLevelEnabled();

          v49 = v191;
          if (v219)
          {
            v220 = *(v3 + 32);
            v195 = _NRCopyLogObjectForNRUUID();
            v196 = [v3 copyDescription];
            v336 = *v358 - v355;
            v346 = *v357 - v356;
            _NRLogWithArgs();
LABEL_251:

            v49 = v191;
          }
        }
      }

      else
      {
        v190 = *(v3 + 32);
        v191 = v49;
        v192 = _NRCopyLogObjectForNRUUID();
        v193 = _NRLogIsLevelEnabled();

        v49 = v191;
        if (v193)
        {
          v194 = *(v3 + 32);
          v195 = _NRCopyLogObjectForNRUUID();
          v196 = [v3 copyDescription];
          _NRLogWithArgs();
          goto LABEL_251;
        }
      }
    }

    *(v3 + 1039) = v381;
    if (*(v3 + 2063) && *(v3 + v49[487]))
    {
      *(v3 + 304) %= *(v3 + 303);
      v165 = *(v3 + v49[487]);
      v166 = (v165 + 8 * *(v3 + 304));
      if ((v166 + 1) <= v165 + 8 * *(v3 + 303))
      {
        if ((v166 & 7) == 0)
        {
          *v166 = *(v3 + 2063);
          ++*(v3 + 304);
          *(v3 + 2063) = 0;
        }
      }

      else
      {
        v167 = *(v3 + 32);
        v168 = _NRCopyLogObjectForNRUUID();
        v169 = _NRLogIsLevelEnabled();

        if (v169)
        {
          v170 = *(v3 + 32);
          v171 = _NRCopyLogObjectForNRUUID();
          v334 = [v3 copyDescription];
          v344 = *(v3 + 304);
          _NRLogWithArgs();
        }
      }
    }

    LODWORD(v48) = 0;
    if (v373)
    {
      v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_24;
    }

    v20 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v161 || v162)
    {
LABEL_24:
      if (v48)
      {
        goto LABEL_278;
      }

      continue;
    }

    break;
  }

  if (v361)
  {
    if (!*(v3 + 1199))
    {
      if (*(v3 + 254) == 1 && *(v3 + 623))
      {
        *(v3 + 254) = 0;
        ++*(v3 + 639);
        if (gNRPacketLoggingEnabled == 1)
        {
          v305 = *(v3 + 32);
          v306 = _NRCopyLogObjectForNRUUID();
          v307 = _NRLogIsLevelEnabled();

          if (v307)
          {
            v308 = *(v3 + 32);
            v309 = _NRCopyLogObjectForNRUUID();
            v353 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_resume(*(v3 + 623));
      }

      if (*(v3 + 256) == 1 && *(v3 + 783))
      {
        *(v3 + 256) = 0;
        ++*(v3 + 799);
        if (gNRPacketLoggingEnabled == 1)
        {
          v310 = *(v3 + 32);
          v311 = _NRCopyLogObjectForNRUUID();
          v312 = _NRLogIsLevelEnabled();

          if (v312)
          {
            v313 = *(v3 + 32);
            v314 = _NRCopyLogObjectForNRUUID();
            v354 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_resume(*(v3 + 783));
      }
    }

    if (*(v3 + 252) == 1 && *(v3 + 463))
    {
      *(v3 + 252) = 0;
      ++*(v3 + 487);
      if (gNRPacketLoggingEnabled == 1)
      {
        v295 = *(v3 + 32);
        v296 = _NRCopyLogObjectForNRUUID();
        v297 = _NRLogIsLevelEnabled();

        if (v297)
        {
          v298 = *(v3 + 32);
          v299 = _NRCopyLogObjectForNRUUID();
          v351 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(v3 + 463));
    }

    if (*(v3 + 258) == 1 && *(v3 + 927))
    {
      *(v3 + 258) = 0;
      ++*(v3 + 943);
      if (gNRPacketLoggingEnabled == 1)
      {
        v300 = *(v3 + 32);
        v301 = _NRCopyLogObjectForNRUUID();
        v302 = _NRLogIsLevelEnabled();

        if (v302)
        {
          v303 = *(v3 + 32);
          v304 = _NRCopyLogObjectForNRUUID();
          v352 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(v3 + 927));
    }
  }

LABEL_278:
}

void sub_100080EB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a2;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    [a1 cancelWithReason:{@"flushing pipe: %@", v11}];
  }
}

void sub_100080F38(void *a1)
{
  if ((*(a1 + 254) & 1) == 0 && *(a1 + 623))
  {
    *(a1 + 254) = 1;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 623);

    dispatch_suspend(v1);
  }
}

void sub_100081064(void *a1)
{
  if ((a1[32] & 1) == 0 && *(a1 + 783))
  {
    *(a1 + 256) = 1;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 783);

    dispatch_suspend(v1);
  }
}

void sub_100081190(void *a1)
{
  if ((*(a1 + 258) & 1) == 0 && *(a1 + 927))
  {
    *(a1 + 258) = 1;
    ++*(a1 + 943);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 927);

    dispatch_suspend(v1);
  }
}

void sub_1000812BC(void *a1)
{
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 463))
  {
    *(a1 + 252) = 1;
    ++*(a1 + 487);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 463);

    dispatch_suspend(v1);
  }
}

void sub_1000813E8(void *a1)
{
  if (*(a1 + 254) == 1 && *(a1 + 623))
  {
    *(a1 + 254) = 0;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 623);

    dispatch_resume(v1);
  }
}

void sub_100081514(void *a1)
{
  if (*(a1 + 256) == 1 && *(a1 + 783))
  {
    *(a1 + 256) = 0;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 783);

    dispatch_resume(v1);
  }
}

void sub_100081640(void *a1)
{
  if (*(a1 + 258) == 1 && *(a1 + 927))
  {
    *(a1 + 258) = 0;
    ++*(a1 + 943);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 927);

    dispatch_resume(v1);
  }
}

void sub_10008176C(void *a1)
{
  if (*(a1 + 252) == 1 && *(a1 + 463))
  {
    *(a1 + 252) = 0;
    ++*(a1 + 487);
    if (gNRPacketLoggingEnabled == 1)
    {
      v2 = a1[4];
      v8 = a1;
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v8;
      if (IsLevelEnabled)
      {
        v5 = v8[4];
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v8 copyDescription];
        _NRLogWithArgs();

        a1 = v8;
      }
    }

    v1 = *(a1 + 463);

    dispatch_resume(v1);
  }
}

void **sub_1000828DC(void **a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    String = NRDataProtectionClassCreateString();
    v12 = sub_100163A30(NRDLocalDevice, a1[4]);
    v13 = sub_100164D70(v12, a4);
    v14 = sub_100147400(0, v12, a4);
    if (v13)
    {
      v15 = v13[1];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v25 = String;
      [a1 reportEvent:3019 detailsFormat:@"%@ %@ %@", String, v9, v12, v72, v73];
LABEL_34:
      a1 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v80 = v11;
    v81 = v14;
    v17 = [v10 localIdentifier];
    v18 = [v10 remoteIdentifier];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      if (!v12 || (*(v12 + 49) & 2) == 0)
      {
        v11 = v80;
        v14 = v81;
        if (v80[2](v80, v81))
        {
          if (a4 == 4)
          {
LABEL_10:
            v20 = v9;
            if (!v12)
            {
              v76 = 0;
              v78 = 0;
LABEL_26:
              v9 = v20;
              goto LABEL_27;
            }

            v21 = sub_100003490();
            dispatch_assert_queue_V2(v21);

            v22 = sub_1001672A0(v12, @"0");
            v23 = sub_100003490();
            dispatch_assert_queue_V2(v23);

            v24 = sub_1001677D0(v12, @"0");
LABEL_23:
            v41 = v24;
            v76 = v24;
            v78 = v22;
            if (v22 && v24)
            {
              v42 = [NEIKEv2ConfigurationMessage alloc];
              v43 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v41];
              v83[0] = v43;
              v44 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v22];
              v83[1] = v44;
              v45 = [NSArray arrayWithObjects:v83 count:2];
              v46 = [v42 initWithWithAttributes:v45];
              [v81 setConfigurationReply:v46];

              v11 = v80;
            }

            goto LABEL_26;
          }

LABEL_20:
          v78 = 0;
          if (a4 != 3)
          {
            v76 = 0;
            goto LABEL_27;
          }

          v76 = 0;
          if (!v12)
          {
LABEL_27:
            v47 = sub_100147B98(v12);
            v48 = sub_100083C40(a1, v47);
            v49 = sub_10008B0B4(a1);
            if (v49)
            {
              [v48 addObject:v49];
            }

            v50 = [a1 suspendWhenReady];
            if (a4 == 4 && v50)
            {
              v51 = v9;
              v52 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50901 notifyData:0];
              [v48 addObject:v52];

              v9 = v51;
              v11 = v80;
            }

            [v81 setCustomIKEAuthPrivateNotifies:v48];
            [a1 invalidateIKESessionForClass:a4];
            v53 = sub_1000857F4(a1, a4);
            objc_storeStrong(v53, a2);
            sub_10008597C(a1, a4);
            v25 = String;
            [a1 reportEvent:3016 detailsFormat:@"%@ %@", String, v9];
            a1 = v81;

            v14 = v81;
            goto LABEL_37;
          }

          v20 = v9;
          v39 = sub_100003490();
          dispatch_assert_queue_V2(v39);

          v22 = sub_1001679E0(v12, @"0");
          v40 = sub_100003490();
          dispatch_assert_queue_V2(v40);

          v24 = sub_100167B9C(v12, @"0");
          goto LABEL_23;
        }

LABEL_33:
        v25 = String;
        [a1 reportEvent:3021 detailsFormat:@"%@ %@", String, v9, v71, v72, v73];
        goto LABEL_34;
      }

      v25 = String;
      [a1 reportEvent:3022 detailsFormat:@"%@ %@ %@", String, v9, v12];
LABEL_36:
      a1 = 0;
      v11 = v80;
      v14 = v81;
      goto LABEL_37;
    }

    v26 = [v10 remoteIdentifier];
    v27 = [v10 localIdentifier];
    v28 = sub_1001646B4(NRDLocalDevice, v26, v27, v9);

    v29 = a1[4];
    v30 = _NRCopyLogObjectForNRUUID();
    if (v28)
    {
      v77 = v9;
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v32 = a1[4];
        v33 = _NRCopyLogObjectForNRUUID();
        v72 = [a1 copyDescription];
        v73 = v28->_identity;
        v71 = 9984;
        v69 = "";
        v70 = "[NRLinkBluetooth respondToIKESession:sessionConfig:dataProtectionClass:validateAuthBlock:]";
        _NRLogWithArgs();
      }

      v34 = v28->_nrUUID;

      if (v34)
      {
        v35 = v28->_nrUUID;
        v36 = [a1 nrUUID];
        v37 = [(NSUUID *)v35 isEqual:v36];

        if (v37)
        {

          v11 = v80;
          v14 = v81;
          v9 = v77;
          if (v80[2](v80, v81))
          {
            v38 = [a1 nrUUID];
            v9 = v77;
            sub_100171DA0(NRDLocalDevice, v38);

            if (a4 == 4)
            {
              goto LABEL_10;
            }

            goto LABEL_20;
          }

          goto LABEL_33;
        }

        v64 = a1[4];
        v65 = _NRCopyLogObjectForNRUUID();
        v66 = _NRLogIsLevelEnabled();

        v9 = v77;
        if (!v66)
        {
          goto LABEL_50;
        }

        v67 = a1[4];
        v57 = _NRCopyLogObjectForNRUUID();
        v58 = [a1 copyDescription];
        v63 = v28->_identity;
        v68 = v28->_nrUUID;
        [a1 nrUUID];
        v75 = v74 = v68;
        v72 = v58;
        v73 = v63;
        _NRLogWithArgs();

        goto LABEL_48;
      }

      v59 = a1[4];
      v60 = _NRCopyLogObjectForNRUUID();
      v61 = _NRLogIsLevelEnabled();

      v9 = v77;
      if (v61)
      {
        v62 = a1[4];
        v57 = _NRCopyLogObjectForNRUUID();
        v58 = [a1 copyDescription];
        v63 = v28->_identity;
        v72 = v58;
        v73 = v63;
        _NRLogWithArgs();
LABEL_48:

        v9 = v77;
        goto LABEL_49;
      }
    }

    else
    {
      v55 = _NRLogIsLevelEnabled();

      if (v55)
      {
        v56 = a1[4];
        v57 = _NRCopyLogObjectForNRUUID();
        v58 = [a1 copyDescription];
        v72 = v58;
        _NRLogWithArgs();
LABEL_49:
      }
    }

LABEL_50:
    v25 = String;
    [a1 reportEvent:3023 detailsFormat:@"%@ %@ %@", String, v9, v12, v72, v73, v74, v75];

    goto LABEL_36;
  }

LABEL_38:

  return a1;
}

void sub_100083088(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1335);
    if (v2)
    {
      v3 = [v2 description];
      [*(a1 + 1335) setClientQueue:*(a1 + 8)];
      objc_initWeak(location, a1);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10008BD24;
      v38[3] = &unk_1001FC090;
      objc_copyWeak(&v40, location);
      v4 = v3;
      v39 = v4;
      [*(a1 + 1335) setStateUpdateBlock:v38];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10008C2F0;
      v35[3] = &unk_1001FB088;
      objc_copyWeak(&v37, location);
      v5 = v4;
      v36 = v5;
      [*(a1 + 1335) setChildStateUpdateBlock:v35];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10008C454;
      v32[3] = &unk_1001FB0B0;
      objc_copyWeak(&v34, location);
      v6 = v5;
      v33 = v6;
      [*(a1 + 1335) setConfigurationUpdateBlock:v32];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10008C530;
      v29[3] = &unk_1001FB0D8;
      objc_copyWeak(&v31, location);
      v7 = v6;
      v30 = v7;
      [*(a1 + 1335) setTrafficSelectorUpdateBlock:v29];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10008C630;
      v26[3] = &unk_1001FC108;
      objc_copyWeak(&v28, location);
      v8 = v7;
      v27 = v8;
      [*(a1 + 1335) setAdditionalAddressesUpdateBlock:v26];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10008C70C;
      v23[3] = &unk_1001FD0D8;
      objc_copyWeak(&v25, location);
      v9 = v8;
      v24 = v9;
      [*(a1 + 1335) setShortDPDEventBlock:v23];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10008C7E0;
      v20[3] = &unk_1001FC108;
      objc_copyWeak(&v22, location);
      v10 = v9;
      v21 = v10;
      [*(a1 + 1335) setPrivateNotifyStatusEvent:v20];
      v11 = *(a1 + 32);
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = *(a1 + 32);
        v15 = _NRCopyLogObjectForNRUUID();
        v18 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v25);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v31);

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = sub_10007CF34();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v19 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100083540(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v7 - 120));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_1000835D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) state];
  v10 = *(a1 + 32);
  if (v9 == 255)
  {
    v24 = *(v10 + 32);
    v25 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_22;
    }

    v27 = *(*(a1 + 32) + 32);
    v11 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  else
  {
    v11 = sub_100083C40(v10, 0);
    v12 = [*(a1 + 32) nrUUID];
    v13 = sub_10016D388(NRDLocalDevice, v12);

    if (v13)
    {
      v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v13];
      [v11 addObject:v14];
    }

    if (v31)
    {
      v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:v31];
      [v11 addObject:v15];
    }

    if (v7)
    {
      v16 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:v7];
      [v11 addObject:v16];
    }

    if (v8)
    {
      v17 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:v8];
      [v11 addObject:v17];
    }

    [*(a1 + 40) setCustomIKEAuthPrivateNotifies:v11];
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      v30 = 10240;
      v28 = "";
      v29 = "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke";
      _NRLogWithArgs();
    }

    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) sharedSecret];
    LogString = _NRKeyCreateLogString();
    [v18 reportEvent:3014 details:LogString];

    v21 = *(a1 + 56);
    v22 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v23 = sub_100146D34(1, 1);
      (*(v21 + 16))(v21, v22, v23, 0);
    }

    else
    {
      (*(v21 + 16))(*(a1 + 56), *(a1 + 40), 0, 0);
    }
  }

LABEL_22:
}

void sub_1000838F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v37 = a4;
  v11 = a5;
  v12 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v25 = *(*(a1 + 32) + 32);
    v26 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_21;
    }

    v28 = *(*(a1 + 32) + 32);
    v18 = _NRCopyLogObjectForNRUUID();
    v29 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
    goto LABEL_18;
  }

  if (a2 && a3 && v37)
  {
    v13 = *(*(a1 + 32) + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = *(*(a1 + 32) + 32);
      v17 = _NRCopyLogObjectForNRUUID();
      v35 = [*(a1 + 32) copyDescription];
      v36 = *(a1 + 40);
      v34 = 10270;
      v32 = "";
      v33 = "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke_2";
      _NRLogWithArgs();
    }

    [*(a1 + 48) setLocalPrivateKeyRef:{a3, v32, v33, v34, v35, v36}];
    [*(a1 + 48) setRemotePublicKeyRef:a2];
    v18 = sub_100083C40(*(a1 + 32), 0);
    v19 = [*(a1 + 32) nrUUID];
    v20 = sub_10016D388(NRDLocalDevice, v19);

    if (v20)
    {
      v21 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v20];
      [v18 addObject:v21];
    }

    v22 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50401 notifyData:v37];
    [v18 addObject:v22];

    if (v11)
    {
      v23 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50402 notifyData:v11];
      [v18 addObject:v23];

      if (v12)
      {
LABEL_11:
        v24 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50403 notifyData:v12];
        [v18 addObject:v24];

LABEL_16:
        [*(a1 + 48) setCustomIKEAuthPrivateNotifies:v18];
        [*(a1 + 32) reportEvent:3012];
        v30 = *(a1 + 64);
        v31 = *(a1 + 48);
        if (!*(a1 + 56))
        {
          (*(v30 + 16))(*(a1 + 64), *(a1 + 48), 0, 0);
          goto LABEL_20;
        }

        v29 = sub_100146D34(1, 1);
        (*(v30 + 16))(v30, v31, v29, 0);
LABEL_18:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      sub_10008448C(*(a1 + 32));
      if (v12)
      {
        goto LABEL_11;
      }
    }

    sub_1000846C0(*(a1 + 32));
    goto LABEL_16;
  }

  (*(*(a1 + 64) + 16))();
LABEL_21:
}

char *sub_100083C40(char *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    LOWORD(v57) = 6144;
    v5 = [[NSMutableData alloc] initWithBytes:&v57 length:2];
    v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v5];
    [v4 addObject:v6];

    if (qword_100229228 != -1)
    {
      dispatch_once(&qword_100229228, &stru_1001FC320);
    }

    v7 = qword_100229220;
    v8 = [v7 dataUsingEncoding:4];

    v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v8];
    [v4 addObject:v9];

    if (qword_100229218 != -1)
    {
      dispatch_once(&qword_100229218, &stru_1001FC300);
    }

    v10 = qword_100229210;
    v11 = [v10 dataUsingEncoding:4];

    v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v11];
    [v4 addObject:v12];

    if (qword_100229298 != -1)
    {
      dispatch_once(&qword_100229298, &stru_1001FC450);
    }

    LOBYTE(v57) = byte_100229290;
    v13 = [[NSData alloc] initWithBytes:&v57 length:1];
    v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48606 notifyData:v13];
    [v4 addObject:v14];

    v15 = sub_100147A80();
    [v4 addObject:v15];

    v16 = sub_100163A30(NRDLocalDevice, *(v2 + 4));
    if (!v16)
    {
      v46 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v48 = sub_10007CF34();
        _NRLogWithArgs();
      }

      goto LABEL_30;
    }

    v17 = v16;
    *&v57 = *(v16 + 152);
    v18 = [[NSData alloc] initWithBytes:&v57 length:8];
    v19 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48605 notifyData:v18];

    [v4 addObject:v19];
    objc_opt_self();
    LOBYTE(v57) = 1;
    v20 = [[NSData alloc] initWithBytes:&v57 length:1];
    v21 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v20];
    [v4 addObject:v21];

    v22 = sub_100163A30(NRDLocalDevice, *(v2 + 4));
    v23 = v22;
    if (v22)
    {
      v24 = (*(v22 + 48) >> 2) & 1;
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    LOBYTE(v57) = v24;
    v25 = [[NSData alloc] initWithBytes:&v57 length:1];
    v26 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51501 notifyData:v25];
    [v4 addObject:v26];

    if (*(v2 + 423))
    {
      v27 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48601 notifyData:*(v2 + 423)];
      [v4 addObject:v27];

      if (a2)
      {
        v28 = sub_100163A30(NRDLocalDevice, *(v2 + 4));
        if (!v28)
        {
          v49 = sub_10007CF34();
          v50 = _NRLogIsLevelEnabled();

          if (v50)
          {
            v51 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_30;
        }

        v29 = v28;
        v30 = *(v28 + 144);
        v31 = [v30 hasCompanionDatapath];

        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v33 = sub_100003490();
          dispatch_assert_queue_V2(v33);

          v32 = sub_1001672A0(v29, @"0");
        }

        v34 = sub_100147C1C(v29, v32);
        [v4 addObject:v34];
      }

      if (v2[289] == 1)
      {
        v35 = sub_100163A30(NRDLocalDevice, *(v2 + 4));
        if (!v35)
        {
          while (1)
          {
            v54 = sub_10007CF34();
            v55 = _NRLogIsLevelEnabled();

            if (v55)
            {
              v56 = sub_10007CF34();
              _NRLogWithArgs();
            }

LABEL_30:
            _os_log_pack_size();
            __chkstk_darwin();
            v52 = *__error();
            v53 = _os_log_pack_fill();
            *v53 = 136446210;
            *(v53 + 4) = "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]";
            sub_10007CF34();
            _NRLogAbortWithPack();
          }
        }

        v36 = v35;
        v57 = 0uLL;
        sub_100167D5C(v35, &v57);
        v37 = [[NSData alloc] initWithBytes:&v57 length:16];
        v38 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50801 notifyData:v37];
        [v4 addObject:v38];

        v57 = 0uLL;
        sub_100168638(v36, &v57);
        v39 = [[NSData alloc] initWithBytes:&v57 length:16];
        v40 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50802 notifyData:v39];
        [v4 addObject:v40];

        v57 = 0uLL;
        sub_1001727AC(v36, &v57);
        v41 = [[NSData alloc] initWithBytes:&v57 length:16];
        v42 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50811 notifyData:v41];
        [v4 addObject:v42];

        v57 = 0uLL;
        sub_100172608(v36, &v57);
        v43 = [[NSData alloc] initWithBytes:&v57 length:16];
        v44 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50812 notifyData:v43];
        [v4 addObject:v44];
      }

      v2 = v4;
    }

    else
    {
      [v2 cancelWithReason:@"Trying to generate notify payloads but sentPrelude is nil"];
      v2 = 0;
    }
  }

  return v2;
}

void sub_10008448C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 255)
    {
      v7 = *(a1 + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = *(a1 + 32);
        v13 = _NRCopyLogObjectForNRUUID();
        v12 = [a1 copyDescription];
        _NRLogWithArgs();
      }
    }

    else if (*(a1 + 1383))
    {
      [a1 reportEvent:3402 details:@"ClassC"];
      v2 = sub_100083C40(a1, 0);
      v3 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50402 notifyData:*(a1 + 1383)];
      [v2 addObject:v3];
      v4 = *(a1 + 1383);
      *(a1 + 1383) = 0;

      v5 = *(a1 + 1335);
      v6 = *(a1 + 8);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008BBB0;
      v14[3] = &unk_1001FB2D8;
      v14[4] = a1;
      [v5 sendPrivateNotifies:v2 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v6 callback:v14];
    }

    else if ((*(a1 + 280) & 1) == 0)
    {
      *(a1 + 280) = 1;
      v11 = *(a1 + 32);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10008BA58;
      v15[3] = &unk_1001FB038;
      v15[4] = a1;
      sub_10016E0BC(NRDLocalDevice, v11, 3, v15);
    }
  }
}

void sub_1000846C0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) != 255)
    {
      v2 = [a1 nrUUID];
      v3 = sub_100163A30(NRDLocalDevice, v2);

      if (v3 && ((*(v3 + 48) & 0x10) != 0 || *(v3 + 16) >= 0x13u))
      {
        v4 = *(a1 + 32);
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          return;
        }

        v7 = *(a1 + 32);
        v8 = _NRCopyLogObjectForNRUUID();
        v18 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      else
      {
        if (!*(a1 + 1391))
        {
          if ((*(a1 + 281) & 1) == 0)
          {
            *(a1 + 281) = 1;
            v17 = *(a1 + 32);
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_1000849B4;
            v22[3] = &unk_1001FB038;
            v22[4] = a1;
            sub_10016E0BC(NRDLocalDevice, v17, 1, v22);
          }

          goto LABEL_15;
        }

        [a1 reportEvent:3402 details:@"ClassA"];
        v8 = sub_100083C40(a1, 0);
        v13 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50403 notifyData:*(a1 + 1391)];
        [v8 addObject:v13];
        v14 = *(a1 + 1391);
        *(a1 + 1391) = 0;

        v15 = *(a1 + 1335);
        v16 = *(a1 + 8);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100084B0C;
        v21[3] = &unk_1001FB2D8;
        v21[4] = a1;
        [v15 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v16 callback:v21];
      }

      goto LABEL_15;
    }

    v9 = *(a1 + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = *(a1 + 32);
      v20 = _NRCopyLogObjectForNRUUID();
      v19 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }
}

void sub_1000849B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v10 = *(*(a1 + 32) + 32);
    v11 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = *(*(a1 + 32) + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v18 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else if (v19)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 1391), a6);
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    sub_1000846C0(v9);
  }

  else
  {
    v15 = sub_10007CF34();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }
}

void sub_100084B0C(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v12 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }

    v9 = *(a1 + 32);
    if (v9)
    {

      sub_100084C80(v9, 1, 0, 0);
    }
  }

  else
  {
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = *(*(a1 + 32) + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }
}

void sub_100084C80(uint64_t a1, uint64_t a2, int a3, int a4)
{
  String = NRDataProtectionClassCreateString();
  if (*(a1 + 16) == 255)
  {
    v11 = *(a1 + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [a1 invalidateIKESessionForClass:a2];
  if (a2 != 4 && a3 && (*(a1 + 276) & 1) == 0)
  {
    v20 = *(a1 + 32);
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 == 1 && *(a1 + 275) == 1)
  {
    v8 = *(a1 + 32);
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v23 = *(a1 + 32);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_20;
  }

  v14 = *(a1 + 32);
  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    v17 = *(a1 + 32);
    v18 = _NRCopyLogObjectForNRUUID();
    v39 = [a1 copyDescription];
    v40 = String;
    v38 = 9860;
    v36 = "";
    v37 = "[NRLinkBluetooth restartIKESessionForDataProtectionClass:authFailure:afterDisconnection:]";
    _NRLogWithArgs();
  }

  sub_1000850B4(a1, a2);
  if (a4 && *(a1 + 289) == 1)
  {
    if (a2 == 4)
    {
      v19 = &OBJC_IVAR___NRLinkBluetooth__reconnectionTimerStartedClassD;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_20;
      }

      v19 = &OBJC_IVAR___NRLinkBluetooth__reconnectionTimerStartedClassC;
    }

    v26 = (a1 + *v19);
    if ((*v26 & 1) == 0)
    {
      v27 = NRDataProtectionClassCreateString();
      v28 = *(a1 + 32);
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = *(a1 + 32);
        v32 = _NRCopyLogObjectForNRUUID();
        v39 = [a1 copyDescription];
        v40 = v27;
        v38 = 9886;
        v36 = "";
        v37 = "[NRLinkBluetooth startReconnectionTimer:]";
        _NRLogWithArgs();
      }

      *v26 = 1;
      [a1 setPowerAssertionState:{1, v36, v37, v38, v39, v40}];
      objc_initWeak(&location, a1);
      v33 = dispatch_time(0x8000000000000000, 10000000000);
      v34 = [a1 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100085770;
      block[3] = &unk_1001FB150;
      objc_copyWeak(v44, &location);
      v44[1] = v26;
      v43 = v27;
      v35 = v27;
      dispatch_after(v33, v34, block);

      objc_destroyWeak(v44);
      objc_destroyWeak(&location);
    }
  }

LABEL_20:
}

void sub_1000850B4(uint64_t a1, int a2)
{
  if ((*(a1 + 289) & 1) == 0)
  {
    v4 = sub_1000857F4(a1, a2);
    if (!*v4)
    {
      v5 = v4;
      String = NRDataProtectionClassCreateString();
      if (*(a1 + 16) == 255)
      {
        v12 = *(a1 + 32);
        v13 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_44:

          return;
        }

        v15 = *(a1 + 32);
        v8 = _NRCopyLogObjectForNRUUID();
        v68 = [a1 copyDescription];
        _NRLogWithArgs();

        goto LABEL_43;
      }

      v7 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
      v8 = v7;
      if (!v7)
      {
        v55 = *(a1 + 32);
        v56 = _NRCopyLogObjectForNRUUID();
        v57 = _NRLogIsLevelEnabled();

        if (!v57)
        {
          goto LABEL_43;
        }

        goto LABEL_19;
      }

      if (a2 == 1)
      {
        if ((*(v7 + 48) & 0x10) != 0 || *(v7 + 16) > 0x12u)
        {
          v9 = *(a1 + 32);
          v10 = _NRCopyLogObjectForNRUUID();
          v11 = _NRLogIsLevelEnabled();

          if (v11)
          {
            goto LABEL_19;
          }

          goto LABEL_43;
        }

        v16 = *(v7 + 88);
      }

      else
      {
        v16 = sub_100164D70(v7, a2);
      }

      v17 = v16;

      if (!v17)
      {
        v28 = *(a1 + 32);
        v29 = _NRCopyLogObjectForNRUUID();
        v30 = _NRLogIsLevelEnabled();

        if (v30)
        {
LABEL_19:
          v31 = *(a1 + 32);
          v32 = _NRCopyLogObjectForNRUUID();
          v33 = [a1 copyDescription];
          _NRLogWithArgs();
        }

LABEL_43:

        goto LABEL_44;
      }

      v18 = sub_100147400(1, v8, a2);
      v72 = v18;
      if (a2 != 1)
      {
        v19 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
        v20 = [NEIKEv2ConfigurationMessage alloc];
        v21 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v19];
        v73[0] = v21;
        v22 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v19];
        v73[1] = v22;
        v23 = [NSArray arrayWithObjects:v73 count:2];
        v24 = [v20 initWithWithAttributes:v23];
        [v72 setConfigurationRequest:v24];

        v18 = v72;
      }

      v25 = [v18 customIKEAuthPrivateNotifies];

      if (v25)
      {
        v26 = [v18 customIKEAuthPrivateNotifies];
        v27 = [v26 mutableCopy];
      }

      else
      {
        v27 = objc_alloc_init(NSMutableArray);
      }

      v34 = [a1 suspendWhenReady];
      if (a2 == 4 && v34)
      {
        v35 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50901 notifyData:0];
        [v27 addObject:v35];
      }

      if ([v27 count])
      {
        [v18 setCustomIKEAuthPrivateNotifies:v27];
      }

      v71 = v27;
      v36 = sub_100146654(v8, 1);
      [v36 setMaximumPacketSize:2000];
      [v36 setHeaderOverhead:5];

      v37 = v8;
      v38 = sub_100146D34(0, 1);
      sub_100147008(v38, v37, 1);

      v39 = *(a1 + 56);
      if (([a1 hasCompanionDatapath] & 1) == 0)
      {
        [v36 setRequestChildlessSA:1];
        v39 = 0;
      }

      v40 = [[NSString alloc] initWithFormat:@"terminusIKE-Bluetooth-%@", String];
      v41 = [[NEIKEv2Session alloc] initWithIKEConfig:v36 firstChildConfig:v38 sessionConfig:v72 queue:*(a1 + 8) ipsecInterface:v39 ikeSocketHandler:0 kernelSASessionName:v40 packetDelegate:a1];
      v42 = *v5;
      *v5 = v41;

      if (!*v5)
      {
        v58 = *(a1 + 32);
        v59 = _NRCopyLogObjectForNRUUID();
        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = *(a1 + 32);
          v62 = _NRCopyLogObjectForNRUUID();
          v64 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        goto LABEL_42;
      }

      [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, *v5];
      sub_10008597C(a1, a2);
      if (a2 == 4)
      {
        v43 = nr_absolute_time();
        v44 = *(a1 + 2007);
        if (v44)
        {
          *(v44 + 56) = v43;
          v45 = *(a1 + 2007);
          if (v45)
          {
            v46 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassDAttempts;
LABEL_37:
            ++*&v45[*v46];
            goto LABEL_38;
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (a2 != 3)
        {
LABEL_39:
          v49 = *(a1 + 32);
          v50 = _NRCopyLogObjectForNRUUID();
          v51 = _NRLogIsLevelEnabled();

          if (v51)
          {
            v52 = *(a1 + 32);
            v53 = _NRCopyLogObjectForNRUUID();
            v54 = [a1 copyDescription];
            v69 = String;
            v70 = *v5;
            v66 = 9785;
            v67 = v54;
            v63 = "";
            v65 = "[NRLinkBluetooth setupIPsecInitiatorIfNecessary:]";
            _NRLogWithArgs();
          }

          [*v5 connect];
LABEL_42:

          goto LABEL_43;
        }

        v47 = nr_absolute_time();
        v48 = *(a1 + 2007);
        if (v48)
        {
          *(v48 + 40) = v47;
          v45 = *(a1 + 2007);
          if (v45)
          {
            v46 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassCAttempts;
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }
      }

      v45 = 0;
      goto LABEL_38;
    }
  }
}