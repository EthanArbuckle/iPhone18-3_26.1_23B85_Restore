void _mdns_normal_resolver_finalize(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    nw_release(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    nw_release(v3);
    *(a1 + 152) = 0;
  }
}

uint64_t _mdns_resolver_add_server_by_endpoint(uint64_t a1, void *a2)
{
  Count = CFArrayGetCount(*(a1 + 56));
  if (Count > 31)
  {
    return 4294960532;
  }

  v5 = Count;
  v6 = _os_object_alloc();
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v8 = &_mdns_server_kind;
  *(v6 + 16) = &_mdns_server_kind;
  do
  {
    v9 = v8[2];
    if (v9)
    {
      v9(v7);
    }

    v8 = *v8;
  }

  while (v8);
  *(v7 + 48) = a2;
  nw_retain(a2);
  v10 = *(a1 + 16);
  if (*(v10 + 156))
  {
    v11 = *(v10 + 156);
    if (nw_endpoint_get_port(*(v7 + 48)) == v11)
    {
      *(v7 + 111) = 1;
    }
  }

  *(v7 + 100) = v5 + 1;
  v12 = mach_continuous_time();
  if (mdns_mach_ticks_per_second_s_once != -1)
  {
    dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
  }

  v13 = v12 - 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
  *(v7 + 80) = v13;
  *(v7 + 88) = v13;
  CFArrayAppendValue(*(a1 + 56), v7);
  os_release(v7);
  return 0;
}

void __mdns_resolver_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136) & 1) != 0 || (*(v1 + 135))
  {
    goto LABEL_31;
  }

  *(v1 + 135) = 1;
  if (*(v1 + 80) && !*(v1 + 72))
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v24 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "API misuse: an event handler without a queue is useless!", buf, 2u);
    }

    v25 = *(v1 + 80);
    if (v25)
    {
      _Block_release(v25);
      *(v1 + 80) = 0;
    }
  }

  if (!*(v1 + 124))
  {
    *(v1 + 124) = 1000;
  }

  if (CFArrayGetCount(*(v1 + 56)) <= 0)
  {
    v18 = *(*(v1 + 16) + 120);
    if (v18)
    {
      if (v18(v1))
      {
        v19 = *(v1 + 16);
        v20 = *(v19 + 128);
        if (v20)
        {
          if (v20(v1))
          {
            goto LABEL_38;
          }

          v19 = *(v1 + 16);
        }

        v21 = *(v19 + 156);
LABEL_38:
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v23 = host_with_numeric_port;
          if (*(v1 + 48))
          {
            nw_endpoint_set_interface();
          }

          _mdns_resolver_add_server_by_endpoint(v1, v23);
          nw_release(v23);
        }
      }
    }
  }

  Count = CFArrayGetCount(*(v1 + 56));
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    v5 = (v1 + 24);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 56), v4);
      *(ValueAtIndex + 3) = 0;
      *v5 = ValueAtIndex;
      if (nw_endpoint_get_type(*(ValueAtIndex + 6)) == nw_endpoint_type_address)
      {
        v7 = *(ValueAtIndex + 6);
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        *(ValueAtIndex + 7) = evaluator_for_endpoint;
        if (evaluator_for_endpoint)
        {
          if (_mdns_resolver_queue_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
          }

          nw_path_evaluator_set_queue();
          os_retain(v1);
          os_retain(ValueAtIndex);
          v9 = *(ValueAtIndex + 7);
          if (_mdns_resolver_queue_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 0x40000000;
          *&buf[16] = ___mdns_resolver_set_up_server_path_evaluator_block_invoke;
          v28 = &__block_descriptor_tmp_66;
          v29 = v1;
          v30 = ValueAtIndex;
          nw_path_evaluator_set_update_handler();
          v10 = *(ValueAtIndex + 7);
          nw_path_evaluator_set_cancel_handler();
          v11 = *(ValueAtIndex + 7);
          nw_path_evaluator_start();
          v12 = *(ValueAtIndex + 7);
          v13 = nw_path_evaluator_copy_path();
          if (v13)
          {
            v14 = v13;
            ValueAtIndex[106] = _mdns_get_server_usability_from_path(v13, (*(*(v1 + 16) + 144) - 3) < 2);
            nw_release(v14);
          }

          goto LABEL_23;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v15 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *v31 = 138412290;
          v32 = ValueAtIndex;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create path evaluator for %@", v31, 0xCu);
        }
      }

      ValueAtIndex[106] = 2;
LABEL_23:
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v16 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v17 = "<INVALID USABILITY>";
        if ((ValueAtIndex[106] + 1) <= 5u)
        {
          v17 = off_100152278[(ValueAtIndex[106] + 1)];
        }

        *buf = 138412546;
        *&buf[4] = ValueAtIndex;
        *&buf[12] = 2082;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Server %@ usability is %{public}s", buf, 0x16u);
      }

      ++v4;
      v5 = ValueAtIndex + 24;
    }

    while (v3 != v4);
  }

  _mdns_resolver_check_for_problematic_servers(v1);
  v1 = *(a1 + 32);
LABEL_31:
  os_release(v1);
}

void ___mdns_resolver_set_up_server_path_evaluator_block_invoke(uint64_t a1, NSObject *a2)
{
  server_usability_from_path = _mdns_get_server_usability_from_path(a2, (*(*(*(a1 + 32) + 16) + 144) - 3) < 2);
  v4 = *(a1 + 40);
  v5 = *(v4 + 106);
  if (v5 != server_usability_from_path)
  {
    *(v4 + 106) = server_usability_from_path;
    if ((server_usability_from_path - 1) > 3u)
    {
      if ((v5 - 1) <= 3u)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v9 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Server %@ usability is now unusable", &v11, 0xCu);
        }
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        if ((*(v7 + 106) + 1) > 5u)
        {
          v8 = "<INVALID USABILITY>";
        }

        else
        {
          v8 = off_100152278[(*(v7 + 106) + 1)];
        }

        v11 = 138412546;
        v12 = v7;
        v13 = 2082;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server %@ usability is now %{public}s", &v11, 0x16u);
      }

      if ((v5 - 1) >= 3)
      {
        _mdns_resolver_unpenalize_server(*(a1 + 32), *(a1 + 40), 0);
        _mdns_resolver_handle_revived_server(*(a1 + 32), *(a1 + 40), 1, 0);
      }
    }
  }
}

void ___mdns_resolver_set_up_server_path_evaluator_block_invoke_67(uint64_t a1)
{
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  os_release(v2);
}

uint64_t _mdns_get_server_usability_from_path(NSObject *a1, int a2)
{
  status = nw_path_get_status(a1);
  v5 = 1;
  if (status != nw_path_status_satisfied && status != nw_path_status_satisfiable)
  {
    if (status != nw_path_status_unsatisfied)
    {
      return -1;
    }

    if (nw_path_is_per_app_vpn())
    {
      return 3;
    }

    if (nw_path_get_reason() == 2)
    {
      return 4;
    }

    if ((nw_path_has_nat64_prefixes() & 1) == 0 && (!a2 || !nw_path_has_dns(a1)) || (v6 = nw_path_copy_endpoint()) == 0)
    {
      return -1;
    }

    v7 = v6;
    if (nw_endpoint_get_type(v6) == nw_endpoint_type_address && (address = nw_endpoint_get_address(v7)) != 0)
    {
      if (address->sa_family == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = -1;
      }
    }

    else
    {
      v5 = -1;
    }

    nw_release(v7);
  }

  return v5;
}

void _mdns_resolver_check_for_problematic_servers(uint64_t a1)
{
  if (*(*(a1 + 16) + 158) != 1 || *(a1 + 104))
  {
    return;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    if ((*(a1 + 140) & 1) == 0)
    {
      if (_mdns_resolver_queue_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
      }

      v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, _mdns_resolver_queue_s_queue);
      *(a1 + 104) = v3;
      if (!v3)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v7 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create probe timer", buf, 2u);
        }

        return;
      }

      v4 = v3;
      v5 = dispatch_time(0x8000000000000000, 7200000000000);
      dispatch_source_set_timer(v4, v5, 0x68C61714000uLL, 0x53D1AC1000uLL);
      v6 = *(a1 + 104);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_resolver_check_for_problematic_servers_block_invoke;
      handler[3] = &__block_descriptor_tmp_130_4766;
      handler[4] = a1;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(*(a1 + 104));
      _mdns_resolver_start_probe_querier(a1);
    }

    if ((*(a1 + 139) & 1) == 0)
    {
      *(a1 + 139) = 1;
      _mdns_resolver_generate_connection_event(a1);
    }

    return;
  }

  while (*(v2 + 106) - 1 > 3 || (*(v2 + 110) & 1) != 0 || *(v2 + 96) >= 3u)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _mdns_resolver_start_probe_querier(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    mdns_client_invalidate(v2);
    os_release(*(a1 + 112));
    *(a1 + 112) = 0;
  }

  querier = mdns_resolver_create_querier(a1);
  *(a1 + 112) = querier;
  if (querier)
  {
    v10 = *(a1 + 120) + 1;
    *(a1 + 120) = v10;
    mdns_querier_set_log_label(querier, "PQ%u", v4, v5, v6, v7, v8, v9, v10);
    v11 = *(a1 + 112);
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    mdns_client_set_queue(v11, _mdns_resolver_queue_s_queue);
    mdns_querier_set_query(*(a1 + 112), "\x05apple\x03com", 2);
    v12 = *(a1 + 112);

    mdns_client_activate(v12);
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v13 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create probe querier", buf, 2u);
    }
  }
}

void _mdns_resolver_generate_connection_event(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "cannot_connect", *(a1 + 139));
  _mdns_resolver_generate_event(a1, 2, v2);
  if (v2)
  {

    xpc_release(v2);
  }
}

void _mdns_resolver_generate_event(NSObject **object, int a2, void *a3)
{
  if ((object[17] & 1) == 0)
  {
    if (object[10])
    {
      os_retain(object);
      xpc_retain(a3);
      v6 = object[9];
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___mdns_resolver_generate_event_block_invoke;
      block[3] = &__block_descriptor_tmp_114;
      v8 = a2;
      block[4] = object;
      block[5] = a3;
      dispatch_async(v6, block);
    }
  }
}

void ___mdns_resolver_generate_event_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(*(a1 + 32) + 80) + 16))();
  os_release(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {

    xpc_release(v4);
  }
}

uint64_t mdns_resolver_create_querier(void *a1)
{
  v2 = _os_object_alloc();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = &_mdns_querier_kind;
  *(v2 + 16) = &_mdns_querier_kind;
  do
  {
    v5 = v4[2];
    if (v5)
    {
      v5(v3);
    }

    v4 = *v4;
  }

  while (v4);
  *(v3 + 208) = 0;
  *(v3 + 72) = a1;
  os_retain(a1);
  v6 = mdns_query_message_create();
  *(v3 + 96) = v6;
  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    os_release(v3);
  }

  return v7;
}

void mdns_querier_set_log_label(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    v13[0] = 0;
    v13[1] = &a9;
    vasprintf(v13, a2, &a9);
    if (v13[0])
    {
      v12 = 0;
      asprintf(&v12, "[%s] ", v13[0]);
      v10 = v12;
      if (v12)
      {
        v11 = *(a1 + 128);
        if (v11)
        {
          free(v11);
          v10 = v12;
        }

        *(a1 + 128) = v10;
        v12 = 0;
      }

      if (v13[0])
      {
        free(v13[0]);
      }
    }
  }
}

void mdns_querier_set_query(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = 0;
  v5 = mdns_domain_name_create_with_labels(a2, &v6);
  if (!v6 && (*(a1 + 61) & 1) == 0)
  {
    (*(*(a1 + 16) + 56))(a1, v5, a3, 1);
  }

  if (v5)
  {
    os_release(v5);
  }
}

void _mdns_querier_conclude_ex(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 104));
    dispatch_release(v8);
    *(a1 + 104) = 0;
  }

  mdns_client_deactivate_time_limit_timer(a1);
  v9 = *(a1 + 152);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 152));
    dispatch_release(v9);
    *(a1 + 152) = 0;
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    os_release(v10);
    *(a1 + 144) = 0;
  }

  _mdns_resolver_deregister_querier(*(a1 + 72), a1);
  if (*(a1 + 249) != 3)
  {
    *(a1 + 249) = 3;
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v11 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_128;
          }

          v39 = *(a1 + 128);
          if (!v39)
          {
            v39 = "";
          }

          *buf = 136446210;
          *&buf[4] = v39;
          v13 = "%{public}sQuerier concluded -- reason: resolver invalidation";
          break;
        case 5:
          *(a1 + 240) = a3;
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v41 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v42 = *(a1 + 128);
            if (!v42)
            {
              v42 = "";
            }

            v43 = *(a1 + 240);
            *buf = 136446466;
            *&buf[4] = v42;
            v83 = 2048;
            *v84 = v43;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}sQuerier concluded -- error: %{mdns:err}ld", buf, 0x16u);
          }

          goto LABEL_128;
        case 6:
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v11 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
LABEL_128:
            v71 = *(a1 + 24);
            if (v71)
            {
              v72 = *(a1 + 88);
              *(a1 + 88) = 0;
              os_retain(a1);
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = ___mdns_querier_conclude_ex_block_invoke;
              block[3] = &unk_100151D28;
              v79 = a2;
              block[4] = v72;
              block[5] = a1;
              dispatch_async(v71, block);
            }

            if (*(a1 + 254) == 1)
            {
              *(a1 + 254) = 0;
              os_release(a1);
            }

            return;
          }

          v14 = *(a1 + 128);
          if (!v14)
          {
            v14 = "";
          }

          *buf = 136446210;
          *&buf[4] = v14;
          v13 = "%{public}sQuerier concluded -- reason: connection problem";
          break;
        default:
          goto LABEL_128;
      }

LABEL_127:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
      goto LABEL_128;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v11 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_128;
        }

        v40 = *(a1 + 128);
        if (!v40)
        {
          v40 = "";
        }

        *buf = 136446210;
        *&buf[4] = v40;
        v13 = "%{public}sQuerier concluded -- reason: timeout";
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_128;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v11 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_128;
        }

        v12 = *(a1 + 128);
        if (!v12)
        {
          v12 = "";
        }

        *buf = 136446210;
        *&buf[4] = v12;
        v13 = "%{public}sQuerier concluded -- reason: invalidation";
      }

      goto LABEL_127;
    }

    if (a4)
    {
      os_retain(a4);
    }

    v15 = *(a1 + 136);
    if (v15)
    {
      os_release(v15);
    }

    *(a1 + 136) = a4;
    v16 = *(a1 + 160);
    if (v16)
    {
      os_release(v16);
      *(a1 + 160) = 0;
      a4 = *(a1 + 136);
    }

    v17 = a4[4];
    v18 = a4[5];
    *buf = 0;
    if (DNSMessageGetAnswerSection(v17, v18, buf))
    {
      goto LABEL_94;
    }

    v19 = __rev16(v17[4]) + (bswap32(v17[3]) >> 16);
    if (v19)
    {
      do
      {
        LOWORD(size) = 0;
        if (_DNSMessageExtractRecordEx(v17, v18, *buf, 0, &size, 0, 0, 0, 0, 0, 0, 0, 0, buf) || size == 41)
        {
          goto LABEL_94;
        }
      }

      while (--v19);
    }

    v20 = __rev16(v17[5]);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        LOWORD(size) = 0;
        v23 = *buf;
        if (_DNSMessageExtractRecordEx(v17, v18, *buf, 0, &size, 0, 0, 0, 0, 0, 0, 0, 0, buf))
        {
          goto LABEL_94;
        }

        if (size == 41)
        {
          if (v22 || *v23)
          {
            goto LABEL_94;
          }

          v21 = *buf - v23;
          v22 = v23;
        }

        --v20;
      }

      while (v20);
      if (v22 && v21 >= 0xB)
      {
        v24 = &v22[v21];
        v25 = (v22 + 11);
        do
        {
          v26 = 0;
          v27 = v25;
          v28 = v24 >= v25;
          v29 = v24 - v25;
          if (v29 == 0 || !v28 || v29 < 4)
          {
            goto LABEL_95;
          }

          v30 = __rev16(v27[1]);
          if (v24 - (v27 + 2) < v30)
          {
            goto LABEL_94;
          }

          v25 = (v27 + v30 + 4);
        }

        while (__rev16(*v27) != 15);
        if (v30 < 2)
        {
          goto LABEL_94;
        }

        v31 = v30 - 2;
        v32 = (v30 - 2);
        if (v30 == 2)
        {
          v33 = 0;
        }

        else
        {
          v33 = (v27 + 3);
        }

        v34 = v27[2];
        v35 = _os_object_alloc();
        v26 = v35;
        if (!v35)
        {
          goto LABEL_95;
        }

        v36 = bswap32(v34) >> 16;
        v37 = &_mdns_extended_dns_error_kind;
        *(v35 + 16) = &_mdns_extended_dns_error_kind;
        do
        {
          v38 = v37[2];
          if (v38)
          {
            v38(v26);
          }

          v37 = *v37;
        }

        while (v37);
        if (v32)
        {
          if (*(v26 + 24))
          {
LABEL_92:
            *(v26 + 32) = v36;
            goto LABEL_95;
          }
        }

        else
        {
          if (_mdns_copy_empty_string_s_once != -1)
          {
            dispatch_once(&_mdns_copy_empty_string_s_once, &__block_literal_global_7180);
          }

          if (_mdns_copy_empty_string_s_empty_string)
          {
            xpc_retain(_mdns_copy_empty_string_s_empty_string);
            v44 = _mdns_copy_empty_string_s_empty_string;
          }

          else
          {
            v44 = 0;
          }

          *(v26 + 24) = v44;
          if (v44)
          {
            goto LABEL_92;
          }
        }

        v45 = strnlen(v33, v32);
        v46 = CFStringCreateWithBytes(kCFAllocatorDefault, v33, v45, 0x8000100u, 0);
        if (v46)
        {
          CFRelease(v46);
          v55 = mdns_xpc_string_create_with_format(v47, v48, v49, v50, v51, v52, v53, v54, v31);
          *(v26 + 24) = v55;
          if (v55)
          {
            goto LABEL_92;
          }
        }

        os_release(v26);
      }
    }

LABEL_94:
    v26 = 0;
LABEL_95:
    *(a1 + 160) = v26;
    if (*(*(a1 + 72) + 133) == 1)
    {
      v56 = *(a1 + 136);
      if (!v56)
      {
        goto LABEL_111;
      }

      v57 = *(v56 + 32);
      if (v57)
      {
        v81 = 0;
        size = 0;
        v58 = DNSMessageCollapse(v57, *(v56 + 40), &size, &v81);
        if (v58)
        {
          v59 = v58;
          v60 = dispatch_data_create(v58, size, 0, _dispatch_data_destructor_free);
          if (v60)
          {
            v61 = v60;
            v62 = mdns_message_create_with_dispatch_data(v60, 1);
            dispatch_release(v61);
            if (v62)
            {
              os_retain(v62);
              v63 = *(a1 + 136);
              if (v63)
              {
                os_release(v63);
              }

              *(a1 + 136) = v62;
              os_release(v62);
              v64 = *(a1 + 136);
              if (v64)
              {
                v65 = *(v64 + 32);
                v66 = *(v64 + 40);
              }

              else
              {
                v65 = 0;
                v66 = 0;
              }

              if (_mdns_resolver_log_s_once != -1)
              {
                dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
              }

              v73 = _mdns_resolver_log_s_log;
              if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v74 = "";
                v75 = *(a1 + 136);
                if (*(a1 + 128))
                {
                  v74 = *(a1 + 128);
                }

                v76 = 12;
                *buf = 136446978;
                if (v66 < 0xC)
                {
                  v76 = v66;
                }

                *&buf[4] = v74;
                v83 = 1040;
                *v84 = v76;
                *&v84[4] = 2098;
                *&v84[6] = v65;
                v85 = 2112;
                v86 = v75;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}sUsing squashed response -- %{public,mdns:dnshdr}.*P, %@", buf, 0x26u);
              }

              LODWORD(v56) = 1;
LABEL_111:
              if (a3 == 1)
              {
                v68 = 1;
              }

              else
              {
                v68 = v56;
              }

              *(a1 + 253) = v68;
              if (v68 == 1)
              {
                if (_mdns_resolver_log_s_once != -1)
                {
                  dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
                }

                v11 = _mdns_resolver_log_s_log;
                if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_128;
                }

                v69 = *(a1 + 128);
                if (!v69)
                {
                  v69 = "";
                }

                *buf = 136446210;
                *&buf[4] = v69;
                v13 = "%{public}sQuerier concluded -- reason: response (fabricated)";
              }

              else
              {
                if (_mdns_resolver_log_s_once != -1)
                {
                  dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
                }

                v11 = _mdns_resolver_log_s_log;
                if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_128;
                }

                v70 = *(a1 + 128);
                if (!v70)
                {
                  v70 = "";
                }

                *buf = 136446210;
                *&buf[4] = v70;
                v13 = "%{public}sQuerier concluded -- reason: response";
              }

              goto LABEL_127;
            }
          }

          else
          {
            free(v59);
          }

          v81 = -6729;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v67 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v77 = *(a1 + 128);
          if (!v77)
          {
            v77 = "";
          }

          *buf = 136446466;
          *&buf[4] = v77;
          v83 = 2048;
          *v84 = v81;
          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}sFailed to squash response -- error:%{mdns:err}ld", buf, 0x16u);
        }
      }
    }

    LODWORD(v56) = 0;
    goto LABEL_111;
  }
}

void _mdns_resolver_deregister_querier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  if (v4)
  {
    dispatch_source_cancel(*(a2 + 104));
    dispatch_release(v4);
    *(a2 + 104) = 0;
  }

  _mdns_forget_session_list((a2 + 112));
  _mdns_forget_session_list((a2 + 120));
  v5 = (a1 + 32);
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 64);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  if (v7)
  {
    goto LABEL_17;
  }

  v9 = (a1 + 40);
  do
  {
    v6 = v9;
    v10 = *v9;
    v9 = (*v9 + 64);
    if (v10)
    {
      v11 = v10 == a2;
    }

    else
    {
      v11 = 1;
    }
  }

  while (!v11);
  if (v10)
  {
LABEL_17:
    *v6 = *(a2 + 64);
    *(a2 + 64) = 0;

    os_release(a2);
  }
}

void ___mdns_querier_conclude_ex_block_invoke(uint64_t a1)
{
  *(*(a1 + 40) + 248) = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = *(a1 + 40);

  os_release(v4);
}

void _mdns_forget_session_list(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    do
    {
      v2 = *(v1 + 24);
      *(v1 + 24) = 0;
      _mdns_session_invalidate(v1);
      os_release(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void _mdns_session_invalidate(_BYTE *a1)
{
  a1[88] = 3;
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___mdns_session_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_49;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void ___mdns_session_invalidate_block_invoke(uint64_t a1)
{
  _mdns_session_invalidate_internal(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 72) + 16);
  if (v3)
  {
    v3(*(v2 + 48));
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = 0;
  v4 = *(a1 + 32);

  os_release(v4);
}

void _mdns_session_invalidate_internal(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 40));
    dispatch_release(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(*(a1 + 16) + 72);
  if (v3)
  {

    v3(a1);
  }
}

void _mdns_querier_handle_new_time_limit_ms(uint64_t a1, int a2)
{
  if (*(a1 + 249) == 2)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v4 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 128);
      if (!v5)
      {
        v5 = "";
      }

      v7 = 136446466;
      v8 = v5;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}sResetting time limit to %u ms", &v7, 0x12u);
    }

    v6 = mdns_client_activate_time_limit_timer(a1);
    if (v6)
    {
      _mdns_querier_conclude_with_error_async(a1, v6);
    }
  }
}

void _mdns_querier_conclude_with_error_async(void *a1, int a2)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_querier_conclude_with_error_async_block_invoke;
  v4[3] = &__block_descriptor_tmp_71;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(_mdns_resolver_queue_s_queue, v4);
}

void ___mdns_querier_conclude_with_error_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), 5, *(a1 + 40), 0);
  v2 = *(a1 + 32);

  os_release(v2);
}

BOOL _mdns_querier_match(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v4 = *(a1 + 96);
  result = 0;
  if (*(v4 + 64) == a3 && *(v4 + 66) == a4)
  {
    v5 = *(*(v4 + 56) + 24);
    if (v5)
    {
      if (DomainNameEqual(v5, a2))
      {
        return 1;
      }
    }
  }

  return result;
}

void _mdns_querier_activate(_BYTE *object)
{
  if (!object[249])
  {
    object[249] = 1;
    if ((object[254] & 1) == 0)
    {
      os_retain(object);
      object[254] = 1;
    }

    if (*(*(*(object + 9) + 16) + 160))
    {
      LOWORD(v2) = 0;
    }

    else
    {
      v3 = arc4random();
      v2 = v3 + v3 / 0xFFFF + 1;
    }

    v4 = *(object + 12);
    v5 = *(v4 + 70);
    if ((v5 & 0x20) == 0)
    {
      *(v4 + 68) = v2;
      if (*(*(*(object + 9) + 16) + 159))
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *(v4 + 70) = v5 & 0xD7 | v6;
      v4 = *(object + 12);
      v5 = *(v4 + 70);
    }

    v7 = *(object + 9);
    if ((v5 & 0x20) == 0)
    {
      *(v4 + 70) = v5 & 0xCF | (16 * ((*(*(v7 + 16) + 144) - 3) < 2));
      v7 = *(object + 9);
    }

    v8 = *(*(v7 + 16) + 136);
    if (v8)
    {
      v9 = v8();
      if (v9)
      {
        v10 = *(v9 + 1);
        if (v10 == 30)
        {
          v13 = *(object + 12);
          if ((*(v13 + 70) & 0x20) == 0)
          {
            *(v13 + 71) = 14338;
            *(v13 + 81) = 0;
            *(v13 + 73) = 0;
            v14 = *(v9 + 8);
            *(v13 + 76) = *(v9 + 11);
            *(v13 + 73) = v14;
          }
        }

        else if (v10 == 2)
        {
          v11 = *(object + 12);
          if ((*(v11 + 70) & 0x20) == 0)
          {
            v12 = bswap32(*(v9 + 4));
            *(v11 + 71) = 6145;
            *(v11 + 76) = 0;
            *(v11 + 81) = 0;
            *(v11 + 73) = HIBYTE(v12);
            *(v11 + 74) = BYTE2(v12);
            *(v11 + 75) = BYTE1(v12);
          }
        }
      }
    }

    message_construct = mdns_query_message_construct(*(object + 12));
    if (!message_construct)
    {
      if (object[249] != 1)
      {
        return;
      }

      v16 = *(object + 9);
      if (*(v16 + 136) == 1)
      {
        _mdns_querier_conclude_async(object);
        return;
      }

      if (*(object + 16))
      {
        v17 = *(object + 16);
      }

      else
      {
        v17 = "";
      }

      v18 = *(object + 59);
      if (v18)
      {
        if (v18 < 1)
        {
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v22 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            LODWORD(handler) = 136446210;
            *(&handler + 4) = v17;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}sPending querier will start when DNS traffic is observed", &handler, 0xCu);
          }

          goto LABEL_40;
        }

        oneshot_timer = _mdns_resolver_create_oneshot_timer(v18, 0);
        *(object + 19) = oneshot_timer;
        if (oneshot_timer)
        {
          *&handler = _NSConcreteStackBlock;
          *(&handler + 1) = 0x40000000;
          v32 = ___mdns_resolver_handle_new_querier_block_invoke;
          v33 = &__block_descriptor_tmp_140_4790;
          v34 = object;
          v35 = v16;
          dispatch_source_set_event_handler(oneshot_timer, &handler);
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v20 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            v21 = *(object + 59);
            v27 = 136446466;
            v28 = v17;
            v29 = 1024;
            v30 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}sPending querier will start after at most %d ms or when DNS traffic is observed", &v27, 0x12u);
          }

          dispatch_activate(*(object + 19));
LABEL_40:
          v23 = (v16 + 40);
          do
          {
            v24 = v23;
            v25 = *v23;
            v23 = (*v23 + 64);
          }

          while (v25);
          *v24 = object;
          os_retain(object);
          return;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v26 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LODWORD(handler) = 136446210;
          *(&handler + 4) = v17;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}sFailed to create flexible start timer for querier, will start immediately", &handler, 0xCu);
        }
      }

      _mdns_resolver_start_querier(v16, object);
      return;
    }

    _mdns_querier_conclude_with_error_async(object, message_construct);
  }
}

void _mdns_querier_conclude_async(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___mdns_querier_conclude_async_block_invoke;
  v2[3] = &__block_descriptor_tmp_141;
  v2[4] = a1;
  v3 = 4;
  dispatch_async(_mdns_resolver_queue_s_queue, v2);
}

NSObject *_mdns_resolver_create_oneshot_timer(unsigned int a1, unsigned int a2)
{
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4 = _mdns_resolver_queue_s_queue;

  return _mdns_dispatch_create_monotonic_timer(a1, 0xFFFFFFFFFFFFFFFFLL, a2, v4);
}

void ___mdns_resolver_handle_new_querier_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 152));
    dispatch_release(v3);
    *(*(a1 + 32) + 152) = 0;
    v2 = *(a1 + 32);
  }

  v4 = (*(a1 + 40) + 40);
  do
  {
    v5 = v4;
    v6 = *v4;
    v4 = (*v4 + 64);
    if (v6)
    {
      v7 = v6 == v2;
    }

    else
    {
      v7 = 1;
    }
  }

  while (!v7);
  if (v6)
  {
    *v5 = *(v2 + 64);
    *(v2 + 64) = 0;
    os_release(v2);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v8 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 128);
      if (!v9)
      {
        v9 = "";
      }

      v10 = 136446210;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}sStarting pending querier because leeway elapsed", &v10, 0xCu);
    }

    _mdns_resolver_start_querier(*(a1 + 40), *(a1 + 32));
  }
}

void _mdns_resolver_start_querier(uint64_t a1, _BYTE *a2)
{
  if (a2[249] == 1)
  {
    a2[249] = 2;
    v4 = mdns_client_activate_time_limit_timer(a2);
    if (v4)
    {

      _mdns_querier_conclude_with_error_async(a2, v4);
    }

    else
    {

      _mdns_resolver_register_querier_ex(a1, a2, 0);
    }
  }
}

uint64_t _mdns_resolver_register_querier_ex(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 16);
  if ((*(v5 + 158) & 1) == 0 && !a3)
  {
    if (*(v5 + 161) == 1 && *(a1 + 134) == 1)
    {
      v6 = *(a1 + 88) - mach_continuous_time();
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v7 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          if (mdns_mach_ticks_per_second_s_once != -1)
          {
            dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
          }

          v14 = 134218240;
          v15 = v6 / mdns_mach_ticks_per_second_s_ticks_per_second;
          v16 = 2048;
          v17 = 1000 * (v6 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Suspicious mode (%lld.%03lld seconds left): forcing query over bytestream", &v14, 0x16u);
        }

        *(a2 + 250) = 259;
        goto LABEL_14;
      }

      *(a1 + 134) = 0;
    }

    v8 = 0;
    *(a2 + 251) = 0;
    *(a2 + 216) = 0;
    *(a2 + 212) = 0;
    goto LABEL_18;
  }

  *(a2 + 251) = 1;
LABEL_14:
  v8 = 0;
  *(a2 + 216) = 0;
  *(a2 + 212) = 0;
  if ((*(a1 + 138) & 1) == 0)
  {
    v8 = (*(*(a1 + 16) + 162) & 1) == 0;
  }

LABEL_18:
  *(a2 + 252) = v8;
  v9 = (a1 + 32);
  do
  {
    v10 = v9;
    v11 = *v9;
    v9 = (*v9 + 64);
  }

  while (v11);
  *v10 = a2;
  os_retain(a2);
  *(a2 + 80) = 0;
  *(a2 + 247) = 0;
  if (*(a2 + 251))
  {
    v12 = 2000;
  }

  else
  {
    v12 = *(*(a2 + 72) + 124);
  }

  *(a2 + 204) = v12;
  return _mdns_querier_initiate_send(a2);
}

void _mdns_querier_initiate_send(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 104));
    dispatch_release(v2);
    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 80);
  v4 = &unk_100164000;
  while (1)
  {
    if (v3)
    {
      goto LABEL_8;
    }

    if (*(a1 + 144) && !_mdns_resolver_get_server(*(a1 + 72), *(a1 + 224)))
    {
      break;
    }

    eligible_server = _mdns_querier_get_eligible_server(a1);
    _mdns_querier_set_current_server(a1, eligible_server);
    v3 = *(a1 + 80);
    if (!v3)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v33 = *(v4 + 306);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 128);
        if (!v34)
        {
          v34 = "";
        }

        *buf = 136446210;
        *&buf[4] = v34;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%{public}sNo more eligible servers", buf, 0xCu);
      }

      return;
    }

LABEL_8:
    v6 = *(a1 + 72);
    if (*(*(v6 + 16) + 144) != 1 && !*(v6 + 128))
    {
      goto LABEL_32;
    }

    v7 = (*(*(a1 + 16) + 96))(a1);
    if ((v7 & 0xFFFE) != 0x40)
    {
      goto LABEL_32;
    }

    v8 = v7;
    if (*(v3 + 112))
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v9 = *(v4 + 306);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 128);
        if (!v10)
        {
          v10 = "";
        }

        *buf = 136446722;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 1024;
        LODWORD(v46) = v8;
        v11 = v9;
        v12 = "%{public}sNot sending query to server %@, which mixes up responses of type %{mdns:rrtype}d";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 0x1Cu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if ((*(v3 + 107) & 1) == 0 && (v21 = *(v3 + 64)) != 0 && *(v21 + 8) >= *(v21 + 12))
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v22 = *(v4 + 306);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 128);
        if (!v23)
        {
          v23 = "";
        }

        *buf = 136446722;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 1024;
        LODWORD(v46) = v8;
        v11 = v22;
        v12 = "%{public}sNot sending query to server %@, which ignores queries of type %{mdns:rrtype}d";
        goto LABEL_18;
      }

LABEL_19:
      if (!*(a1 + 144))
      {
        v13 = *(a1 + 96);
        v14 = *(v13 + 40);
        if (v14 < 0xD)
        {
          v39 = -6762;
          goto LABEL_88;
        }

        v15 = malloc_type_malloc(*(v13 + 40), 0xD8A30F1CuLL);
        if (!v15)
        {
          __break(1u);
        }

        v16 = v15;
        memcpy(v15, *(v13 + 32), v14);
        v16[1] = -31615;
        v17 = dispatch_data_create(v16, v14, 0, _dispatch_data_destructor_free);
        if (!v17)
        {
          free(v16);
          v39 = -6729;
LABEL_88:
          *(a1 + 144) = 0;
LABEL_89:
          v40 = a1;
LABEL_90:
          _mdns_querier_conclude_with_error_async(v40, v39);
          return;
        }

        v18 = v17;
        v19 = mdns_message_create_with_dispatch_data(v17, 1);
        dispatch_release(v18);
        *(a1 + 144) = v19;
        if (!v19)
        {
          v39 = -6729;
          goto LABEL_89;
        }

        *(a1 + 244) = -4;
        v4 = &unk_100164000;
      }

      if ((*(v3 + 100) - 1) >= 0x20)
      {
        v20 = 0;
      }

      else
      {
        v20 = 1 << (*(v3 + 100) - 1);
      }

      *(a1 + 224) |= v20;
      *(a1 + 80) = 0;
      *(a1 + 247) = 0;
      v3 = 0;
    }

    else
    {
LABEL_32:
      v3 = 0;
      if (*(a1 + 80))
      {
        oneshot_timer = _mdns_resolver_create_oneshot_timer(*(a1 + 204), 5u);
        *(a1 + 104) = oneshot_timer;
        if (!oneshot_timer)
        {
          v40 = a1;
          v39 = -6729;
          goto LABEL_90;
        }

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = ___mdns_querier_initiate_send_block_invoke;
        handler[3] = &__block_descriptor_tmp_69_4799;
        handler[4] = a1;
        dispatch_source_set_event_handler(oneshot_timer, handler);
        dispatch_activate(*(a1 + 104));
        v25 = *(a1 + 80);
        if (*(a1 + 252) == 1)
        {
          if (!v25)
          {
            return;
          }

          v26 = v25[4];
          if (v26)
          {
            goto LABEL_66;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v27 = *(v4 + 306);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(a1 + 128);
            if (!v38)
            {
              v38 = "";
            }

            *buf = 136446466;
            *&buf[4] = v38;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}sCreating shared session to %@", buf, 0x16u);
          }

          v44 = 0;
          v26 = _mdns_resolver_create_session(*(a1 + 72), v25, 1, 0, 0, &v44);
          if (v26)
          {
            os_retain(*(a1 + 72));
            if (!*(v26 + 88))
            {
              v26[6] = *(a1 + 72);
              v26[9] = _mdns_querier_get_shared_session_s_resolver_callbacks;
              *(v26 + 20) = 10000;
            }

            _mdns_session_activate(v26);
            v25[4] = v26;
LABEL_66:
            if ((*(v26[4] + 100) - 1) >= 0x20)
            {
              v32 = 0;
            }

            else
            {
              v32 = 1 << (*(v26[4] + 100) - 1);
            }

            *(a1 + 212) |= v32;
            _mdns_querier_send_query(a1, v26);
            return;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v41 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          *buf = 138412546;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v44;
          v42 = "Failed to create session to %@ for resolver: %{mdns:err}ld";
        }

        else
        {
          if (!v25)
          {
            return;
          }

          v28 = 112;
          if (*(a1 + 251))
          {
            v28 = 120;
          }

          v29 = (a1 + v28);
          v30 = *(a1 + v28);
          if (v30)
          {
            while (1)
            {
              v26 = v30;
              if (*(v30 + 32) == v25)
              {
                goto LABEL_66;
              }

              v30 = *(v30 + 24);
              if (!v30)
              {
                v29 = v26 + 3;
                break;
              }
            }
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v31 = *(v4 + 306);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(a1 + 128);
            if (!v37)
            {
              v37 = "";
            }

            *buf = 136446466;
            *&buf[4] = v37;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}sCreating session to %@", buf, 0x16u);
          }

          v44 = 0;
          v26 = _mdns_resolver_create_session(*(a1 + 72), v25, *(a1 + 251), a1 + 168, *(*(*(a1 + 96) + 56) + 24), &v44);
          if (v26)
          {
            os_retain(a1);
            if (!*(v26 + 88))
            {
              v26[6] = a1;
              v26[9] = _mdns_querier_get_unshared_session_s_querier_callbacks;
              if (*(a1 + 251) == 1)
              {
                *(v26 + 20) = 10000;
              }
            }

            _mdns_session_activate(v26);
            *v29 = v26;
            goto LABEL_66;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v41 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
LABEL_99:
            _mdns_resolver_penalize_server_ex(*(a1 + 72), v25, 0, 0, 0);
            *(a1 + 80) = 0;
            *(a1 + 247) = 0;
            return;
          }

          *buf = 138412546;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v44;
          v42 = "Failed to create session to %@ for querier: %{mdns:err}ld";
        }

        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x16u);
        goto LABEL_99;
      }
    }
  }

  v35 = *(a1 + 244);
  v36 = *(a1 + 144);
  os_retain(a1);
  os_retain(v36);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = ___mdns_querier_conclude_with_response_async_block_invoke;
  v46 = &__block_descriptor_tmp_70_4795;
  v49 = v35 >> 15;
  v47 = a1;
  v48 = v36;
  dispatch_async(_mdns_resolver_queue_s_queue, buf);
}

uint64_t _mdns_resolver_get_server(uint64_t a1, int a2)
{
  v4 = (a1 + 24);
  result = *(a1 + 24);
  if (result && (*(result + 100) != 1 || (*(result + 108) & 1) != 0 || (a2 & 1) != 0 || *(result + 106) - 1 >= 4))
  {
    v6 = mach_continuous_time();
    v7 = *v4;
    if (*v4)
    {
      v8 = v6;
      v9 = v4;
      do
      {
        if (*(v7 + 108) == 1 && (v10 = v8 - *(v7 + 72), v10 >= 0))
        {
          *v9 = *(v7 + 24);
          *(v7 + 24) = 0;
          *(v7 + 108) = 0;
          v11 = a1;
          do
          {
            v12 = v11;
            v11 = *(v11 + 24);
          }

          while (v11 && (*(v11 + 108) & 1) == 0 && *(v11 + 100) <= *(v7 + 100));
          *(v7 + 24) = v11;
          *(v12 + 24) = v7;
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v13 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            if (mdns_mach_ticks_per_second_s_once != -1)
            {
              dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
            }

            *buf = 138412802;
            v16 = v7;
            v17 = 2048;
            v18 = v10 / mdns_mach_ticks_per_second_s_ticks_per_second;
            v19 = 2048;
            v20 = 1000 * (v10 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Unpenalizing server %@ (penalty expired %lld.%03lld seconds ago)", buf, 0x20u);
          }
        }

        else
        {
          v9 = (v7 + 24);
        }

        v7 = *v9;
      }

      while (*v9);
      for (result = *v4; result; result = *(result + 24))
      {
        if (*(result + 106) - 1 <= 3)
        {
          v14 = (*(result + 100) - 1) >= 0x20 ? 0 : 1 << (*(result + 100) - 1);
          if ((v14 & a2) == 0)
          {
            break;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___mdns_querier_conclude_with_response_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), 1, *(a1 + 48), *(a1 + 40));
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  os_release(v2);
}

uint64_t _mdns_querier_get_eligible_server(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (*(a1 + 251) == 1)
  {
    v2 |= *(a1 + 216) | *(a1 + 220);
  }

  result = _mdns_resolver_get_server(*(a1 + 72), v2);
  if (result)
  {
    v4 = *(*(a1 + 72) + 112);
    if (v4 && v4 != a1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 128);
        if (!v7)
        {
          v7 = "";
        }

        v8 = 136446210;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}sBacking off while probe querier is active", &v8, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _mdns_querier_set_current_server(uint64_t result, uint64_t a2)
{
  *(result + 80) = a2;
  *(result + 247) = 0;
  if (a2)
  {
    v2 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
    if ((v2 & *(result + 212)) == 0)
    {
      if (*(result + 251))
      {
        v3 = 2000;
      }

      else
      {
        v3 = *(*(result + 72) + 124);
      }

      *(result + 204) = v3;
    }
  }

  return result;
}

uint64_t ___mdns_querier_initiate_send_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 104));
    dispatch_release(v2);
    *(*(a1 + 32) + 104) = 0;
    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 251);
  if (*(v1 + 251))
  {
    v5 = 900000;
  }

  else
  {
    v5 = 30000;
  }

  v6 = *(v1 + 204);
  if (v6 <= v5 >> 1)
  {
    v5 = 2 * v6;
  }

  *(v1 + 204) = v5;
  v7 = *(v1 + 80);
  if (v7)
  {
    if (v4)
    {
      _mdns_resolver_penalize_server_ex(*(v1 + 72), *(v1 + 80), 0, 0, 0);
      *(v1 + 80) = 0;
      v8 = (v1 + 247);
LABEL_22:
      *v8 = 0;
      goto LABEL_23;
    }

    v8 = (v1 + 247);
    v9 = *(v1 + 247);
    if (v9 == 255 || (*v8 = v9 + 1, v9))
    {
      v10 = *(v1 + 112);
      if (v10)
      {
        while (v10[4] != v7)
        {
          v10 = v10[3];
          if (!v10)
          {
            goto LABEL_21;
          }
        }

        _mdns_resolver_penalize_server_ex(*(v1 + 72), v7, 1, v1, v10[8]);
        v11 = *(v7 + 100) - 1;
        if (v11 < 0x20)
        {
          v12 = ~(1 << v11);
        }

        else
        {
          v12 = -1;
        }

        *(v1 + 200) &= v12;
      }

LABEL_21:
      *(v1 + 80) = 0;
      goto LABEL_22;
    }
  }

LABEL_23:

  return _mdns_querier_initiate_send(v1);
}

void *_mdns_resolver_create_session(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *(*(a1 + 16) + 144);
  if ((v12 - 2) < 2)
  {
    goto LABEL_5;
  }

  if (v12 == 4)
  {
    v13 = _os_object_alloc();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    v17 = &_mdns_url_session_kind;
    v13[2] = &_mdns_url_session_kind;
    do
    {
      v18 = v17[2];
      if (v18)
      {
        v18(v14);
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    if (v12 != 1)
    {
      v13 = 0;
      v14 = 0;
      v19 = -6756;
      goto LABEL_33;
    }

    if (a3)
    {
LABEL_5:
      v13 = _os_object_alloc();
      v14 = v13;
      if (v13)
      {
        v15 = &_mdns_connection_session_kind;
        v13[2] = &_mdns_connection_session_kind;
        do
        {
          v16 = v15[2];
          if (v16)
          {
            v16(v14);
          }

          v15 = *v15;
        }

        while (v15);
        goto LABEL_23;
      }

LABEL_38:
      v19 = -6728;
      goto LABEL_33;
    }

    v13 = _os_object_alloc();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    v20 = &_mdns_udp_socket_session_kind;
    v13[2] = &_mdns_udp_socket_session_kind;
    do
    {
      v21 = v20[2];
      if (v21)
      {
        v21(v14);
      }

      v20 = *v20;
    }

    while (v20);
  }

LABEL_23:
  v14[4] = a2;
  os_retain(a2);
  v22 = v14[2];
  v23 = *(v22 + 56);
  if (v23)
  {
    v24 = v23(v14, a1, a3, a4, a5);
    if (v24)
    {
      v19 = v24;
      v13 = v14;
      v14 = 0;
      goto LABEL_33;
    }

    v22 = v14[2];
  }

  v25 = *(v22 + 88);
  if (v25)
  {
    v26 = v25(v14);
  }

  else
  {
    v26 = *(v22 + 104);
  }

  *(v14 + 89) = v26;
  v27 = *(v22 + 96);
  if (v27)
  {
    v28 = v27(v14);
  }

  else
  {
    v28 = *(v22 + 105);
  }

  v13 = 0;
  v19 = 0;
  *(v14 + 90) = v28;
LABEL_33:
  if (a6)
  {
    *a6 = v19;
  }

  if (v13)
  {
    os_release(v13);
  }

  return v14;
}

void _mdns_session_activate(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      oneshot_timer = _mdns_resolver_create_oneshot_timer(v2, 5u);
      *(a1 + 40) = oneshot_timer;
      if (!oneshot_timer)
      {
        v7 = -6729;
        goto LABEL_13;
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_session_activate_block_invoke;
      handler[3] = &__block_descriptor_tmp_122_4837;
      handler[4] = a1;
      dispatch_source_set_event_handler(oneshot_timer, handler);
      dispatch_activate(*(a1 + 40));
    }

    v4 = mach_continuous_time();
    *(a1 + 56) = v4;
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
    }

    *(a1 + 64) = v4 - 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
    v5 = *(*(a1 + 16) + 64);
    if (!v5 || (v6 = v5(a1)) == 0)
    {
      *(a1 + 88) = 1;
      return;
    }

    v7 = v6;
LABEL_13:
    *(a1 + 88) = 2;
    _mdns_common_session_terminate_async(a1, v7);
  }
}

void _mdns_resolver_penalize_server_ex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    goto LABEL_27;
  }

  if (a4)
  {
    if (*(a1 + 128))
    {
      if ((*(a2 + 107) & 1) == 0)
      {
        v10 = (*(*(a4 + 16) + 96))(a4);
        if ((v10 & 0xFFFE) == 0x40)
        {
          v11 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
          if ((v11 & *(a4 + 200)) != 0)
          {
            v12 = v10;
            v13 = *(a2 + 64);
            if (!v13)
            {
              v14 = *(*(a4 + 72) + 128);
              v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x5A6D011CuLL);
              if (!v15)
              {
                goto LABEL_71;
              }

              v13 = v15;
              *(v15 + 3) = v14;
              *(a2 + 64) = v15;
            }

            v16 = *(*(*(a4 + 96) + 56) + 24);
            if (!_pqw_info_can_accept_qname(v13, v16))
            {
              goto LABEL_26;
            }

            v17 = *(v13 + 3);
            if (*(v13 + 2) >= (v17 - 1))
            {
              v20 = *v13;
              if (*v13)
              {
                do
                {
                  v21 = *v20;
                  _pqw_qname_item_free(v20);
                  v20 = v21;
                }

                while (v21);
                *v13 = 0;
                v17 = *(v13 + 3);
              }

              goto LABEL_20;
            }

            v18 = malloc_type_calloc(1uLL, 0x10uLL, 0xFE62E5EuLL);
            if (v18)
            {
              v19 = v18;
              DomainNameDupEx(v16, v18 + 1, 0);
              *v19 = *v13;
              *v13 = v19;
              v17 = *(v13 + 2) + 1;
LABEL_20:
              *(v13 + 2) = v17;
              if (_mdns_resolver_log_s_once != -1)
              {
                dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
              }

              v22 = _mdns_resolver_log_s_log;
              if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(a4 + 128);
                if (!v23)
                {
                  v23 = "";
                }

                v24 = *(v13 + 2);
                v25 = *(v13 + 3);
                v45 = 136447234;
                v46 = v23;
                v47 = 1024;
                *v48 = v24;
                *&v48[4] = 1024;
                *&v48[6] = v25;
                *v49 = 2112;
                *&v49[2] = a2;
                v50 = 1024;
                v51 = v12;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}sNo response (%u/%u) from server %@ for qtype %{mdns:rrtype}d", &v45, 0x28u);
              }

              goto LABEL_26;
            }

LABEL_71:
            __break(1u);
            return;
          }
        }
      }
    }
  }

LABEL_26:
  if (a5 - *(a2 + 80) < 0)
  {
    return;
  }

LABEL_27:
  v26 = a1;
  do
  {
    v27 = v26;
    v26 = *(v26 + 24);
    if (v26)
    {
      v28 = v26 == a2;
    }

    else
    {
      v28 = 1;
    }
  }

  while (!v28);
  if (v26)
  {
    v29 = (v27 + 24);
    *(v27 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    v30 = mach_continuous_time();
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
    }

    *(a2 + 72) = v30 + 60 * mdns_mach_ticks_per_second_s_ticks_per_second;
    *(a2 + 108) = 1;
    do
    {
      v31 = v29;
      v32 = *v29;
      v29 = (*v29 + 24);
    }

    while (v32);
    *v31 = a2;
  }

  v33 = "";
  if (a4 && *(a4 + 128))
  {
    v33 = *(a4 + 128);
  }

  if (a3)
  {
    if ((*(a2 + 109) & 1) == 0)
    {
      *(a2 + 109) = 1;
    }

    v34 = 5;
    if (a4 && (*(a1 + 132) & 1) != 0)
    {
      if ((*(a2 + 100) - 1) >= 0x20)
      {
        v35 = 0;
      }

      else
      {
        v35 = 1 << (*(a2 + 100) - 1);
      }

      if ((v35 & *(a4 + 228)) != 0)
      {
        v34 = 2;
      }

      else
      {
        address = nw_endpoint_get_address(*(a2 + 48));
        if (address)
        {
          v42 = address;
          if (_mdns_querier_match(a4, "\x05local", 6, 1))
          {
            v34 = 3;
          }

          else
          {
            _mdns_symptoms_report_dns_server_symptom(413697, v42);
            *(a4 + 228) |= v35;
            v34 = 1;
          }
        }

        else
        {
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v43 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
          {
            v34 = 4;
LABEL_54:
            v36 = _mdns_resolver_log_s_log;
            if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              return;
            }

            v45 = 136446722;
            v46 = v33;
            v47 = 2112;
            *v48 = a2;
            *&v48[8] = 1024;
            *v49 = v34;
            v37 = "%{public}sPenalizing unresponsive server %@ for 60 seconds -- symptom report: %{mdns:symptom_result}u";
            v38 = v36;
            v39 = 28;
            goto LABEL_60;
          }

          v44 = *(a2 + 48);
          v45 = 138412290;
          v46 = v44;
          _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Trying to report unresponsive symptom for server without IP address: %@", &v45, 0xCu);
          v34 = 4;
        }
      }
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    goto LABEL_54;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v40 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
  {
    v45 = 136446466;
    v46 = v33;
    v47 = 2112;
    *v48 = a2;
    v37 = "%{public}sPenalizing server %@ for 60 seconds";
    v38 = v40;
    v39 = 22;
LABEL_60:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v37, &v45, v39);
  }
}

void _mdns_querier_send_query(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 + 32) + 100) - 1) >= 0x20)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << (*(*(a2 + 32) + 100) - 1);
  }

  if (*(a2 + 88) == 1 && *(a2 + 90) == 1)
  {
    *(a1 + 216) &= ~v3;
    if (*(a2 + 89) != 1 || (*(a1 + 220) & v3) == 0)
    {
      _mdns_querier_send_query_immediate(a1, a2);
      *(a1 + 220) |= v3;
    }
  }

  else
  {
    *(a1 + 216) |= v3;
  }
}

void _mdns_querier_send_query_immediate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 64);
    v6 = *(v4 + 24);
    *(a2 + 64) = mach_continuous_time();
    v7 = *(*(a2 + 16) + 80);
    if (v7)
    {
      v7(a2, v6, v5);
    }
  }

  atomic_fetch_add((a1 + 208), 1u);
  if (*(a1 + 128))
  {
    v8 = *(a1 + 128);
  }

  else
  {
    v8 = "";
  }

  v9 = *(*(a1 + 96) + 40);
  v10 = *(a1 + 72);
  v11 = 148;
  if (*(a2 + 89))
  {
    v11 = 152;
  }

  v12 = *(*(v10 + 16) + v11);
  interface_log_string = _mdns_resolver_get_interface_log_string(v10);
  v14 = *(a1 + 96);
  if (v9 < 0xC)
  {
    if (*(a1 + 255) == 1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v22 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = *(a1 + 208);
      v24 = *(a2 + 32);
      v25 = *(*(a1 + 96) + 32);
      v73 = 136448259;
      v74 = v8;
      v75 = 2048;
      v76 = v9;
      v77 = 1024;
      v78 = v23;
      v79 = 2112;
      v80 = v24;
      v81 = 1024;
      v82 = v12;
      v83 = 2082;
      v84 = interface_log_string;
      v85 = 1040;
      *v86 = v9;
      *&v86[4] = 2098;
      *&v86[6] = v25;
      *&v86[14] = 2117;
      *&v86[16] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v22 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v32 = *(a1 + 208);
      v33 = *(a2 + 32);
      v34 = *(*(a1 + 96) + 32);
      v73 = 136448258;
      v74 = v8;
      v75 = 2048;
      v76 = v9;
      v77 = 1024;
      v78 = v32;
      v79 = 2112;
      v80 = v33;
      v81 = 1024;
      v82 = v12;
      v83 = 2082;
      v84 = interface_log_string;
      v85 = 1040;
      *v86 = v9;
      *&v86[4] = 2098;
      *&v86[6] = v34;
      *&v86[14] = 2112;
      *&v86[16] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
    }

    v30 = v22;
    v31 = 80;
    goto LABEL_30;
  }

  v15 = *(v14 + 32);
  if (*(a1 + 255) == 1)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 208);
      v18 = *(a2 + 32);
      v19 = bswap32(*v15);
      v20 = bswap64(*(v15 + 4));
      v73 = 136448259;
      v74 = v8;
      v75 = 2048;
      v76 = v9;
      v77 = 1024;
      v78 = v17;
      v79 = 2112;
      v80 = v18;
      v81 = 1024;
      v82 = v12;
      v83 = 2082;
      v84 = interface_log_string;
      v85 = 2048;
      *v86 = v19;
      *&v86[8] = 2048;
      *&v86[10] = v20;
      *&v86[18] = 2117;
      *&v86[20] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %{sensitive}@";
LABEL_24:
      v30 = v16;
      v31 = 84;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v21, &v73, v31);
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 208);
      v27 = *(a2 + 32);
      v28 = bswap32(*v15);
      v29 = bswap64(*(v15 + 4));
      v73 = 136448258;
      v74 = v8;
      v75 = 2048;
      v76 = v9;
      v77 = 1024;
      v78 = v26;
      v79 = 2112;
      v80 = v27;
      v81 = 1024;
      v82 = v12;
      v83 = 2082;
      v84 = interface_log_string;
      v85 = 2048;
      *v86 = v28;
      *&v86[8] = 2048;
      *&v86[10] = v29;
      *&v86[18] = 2112;
      *&v86[20] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %@";
      goto LABEL_24;
    }
  }

LABEL_31:
  if (!*(*(a1 + 72) + 128))
  {
    goto LABEL_38;
  }

  v35 = *(a2 + 32);
  if (*(v35 + 107))
  {
    goto LABEL_38;
  }

  v36 = *(a1 + 96);
  if ((*(v36 + 64) & 0xFFFE) != 0x40)
  {
    goto LABEL_38;
  }

  v37 = (*(v35 + 100) - 1) >= 0x20 ? 0 : 1 << (*(v35 + 100) - 1);
  if ((v37 & *(a1 + 200)) != 0)
  {
    goto LABEL_38;
  }

  v38 = *(v35 + 64);
  if (v38)
  {
    if (!_pqw_info_can_accept_qname(v38, *(*(v36 + 56) + 24)))
    {
      goto LABEL_38;
    }
  }

  v39 = *(a1 + 192);
  if (v39)
  {
    goto LABEL_61;
  }

  v40 = *(v35 + 104);
  if (!v40)
  {
    if (nw_endpoint_get_type(*(v35 + 48)) == nw_endpoint_type_address)
    {
      if (nw_endpoint_get_address(*(v35 + 48))->sa_family == 30)
      {
        v40 = 28;
      }

      else
      {
        v40 = 1;
      }
    }

    else
    {
      v40 = 1;
    }

    *(v35 + 104) = v40;
  }

  v41 = mdns_query_message_create();
  if (!v41)
  {
LABEL_92:
    *(a1 + 192) = 0;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v71 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v72 = *(a1 + 128);
      if (!v72)
      {
        v72 = "";
      }

      v73 = 136446210;
      v74 = v72;
      _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}sFailed to create test query", &v73, 0xCu);
    }

    goto LABEL_38;
  }

  v39 = v41;
  mdns_query_message_set_qname(v41, *(v36 + 56));
  if ((*(v39 + 70) & 0x20) == 0)
  {
    *(v39 + 64) = v40;
    *(v39 + 66) = *(v36 + 66);
  }

  v42 = arc4random();
  if ((*(v39 + 70) & 0x20) == 0)
  {
    v43 = -2 - v42 % 0xFFFF;
    if (v42 % 0xFFFF == 65534)
    {
      LOWORD(v43) = 1;
    }

    if (*(v36 + 68) == (v42 % 0xFFFF + 1))
    {
      v44 = v43;
    }

    else
    {
      v44 = v42 % 0xFFFF + 1;
    }

    *(v39 + 68) = v44;
  }

  if (mdns_query_message_construct(v39))
  {
    os_release(v39);
    goto LABEL_92;
  }

  *(a1 + 192) = v39;
LABEL_61:
  if (*(a2 + 88) == 1)
  {
    v45 = *(v39 + 24);
    v46 = *(v39 + 64);
    *(a2 + 64) = mach_continuous_time();
    v47 = *(*(a2 + 16) + 80);
    if (v47)
    {
      v47(a2, v45, v46);
    }
  }

  v48 = *(a1 + 246);
  if (v48 != 255)
  {
    *(a1 + 246) = v48 + 1;
  }

  v49 = *(a1 + 192);
  if (v49)
  {
    v50 = *(v49 + 40);
    if (*(a1 + 255) == 1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v51 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 128))
        {
          v52 = *(a1 + 128);
        }

        else
        {
          v52 = "";
        }

        v53 = *(a1 + 246);
        v54 = *(a2 + 32);
        v55 = *(a1 + 72);
        v56 = 148;
        if (*(a2 + 89))
        {
          v56 = 152;
        }

        v57 = *(*(v55 + 16) + v56);
        v58 = _mdns_resolver_get_interface_log_string(v55);
        v59 = 12;
        v60 = *(*(a1 + 192) + 32);
        if (v50 < 0xC)
        {
          v59 = v50;
        }

        v73 = 136448259;
        v74 = v52;
        v75 = 2048;
        v76 = v50;
        v77 = 1024;
        v78 = v53;
        v79 = 2112;
        v80 = v54;
        v81 = 1024;
        v82 = v57;
        v83 = 2082;
        v84 = v58;
        v85 = 1040;
        *v86 = v59;
        *&v86[4] = 2098;
        *&v86[6] = v60;
        *&v86[14] = 2117;
        *&v86[16] = v49;
        v61 = "%{public}sSent %zu-byte test query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
LABEL_90:
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, v61, &v73, 0x50u);
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v51 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 128))
        {
          v62 = *(a1 + 128);
        }

        else
        {
          v62 = "";
        }

        v63 = *(a1 + 246);
        v64 = *(a2 + 32);
        v65 = *(a1 + 72);
        v66 = 148;
        if (*(a2 + 89))
        {
          v66 = 152;
        }

        v67 = *(*(v65 + 16) + v66);
        v68 = _mdns_resolver_get_interface_log_string(v65);
        v69 = 12;
        v70 = *(*(a1 + 192) + 32);
        if (v50 < 0xC)
        {
          v69 = v50;
        }

        v73 = 136448258;
        v74 = v62;
        v75 = 2048;
        v76 = v50;
        v77 = 1024;
        v78 = v63;
        v79 = 2112;
        v80 = v64;
        v81 = 1024;
        v82 = v67;
        v83 = 2082;
        v84 = v68;
        v85 = 1040;
        *v86 = v69;
        *&v86[4] = 2098;
        *&v86[6] = v70;
        *&v86[14] = 2112;
        *&v86[16] = v49;
        v61 = "%{public}sSent %zu-byte test query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
        goto LABEL_90;
      }
    }
  }

LABEL_38:
  _mdns_resolver_start_pending_queriers(*(a1 + 72));
}

const char *_mdns_resolver_get_interface_log_string(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (!v1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      name = nw_interface_get_name(v4);
      v4 = *(a1 + 48);
      if (v4)
      {
        LODWORD(v4) = nw_interface_get_index(v4);
      }
    }

    else
    {
      name = "any";
    }

    v6 = "";
    if (name)
    {
      v6 = name;
    }

    asprintf(v2, "%s/%u", v6, v4);
    v1 = *v2;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return "???";
  }
}

BOOL _pqw_info_can_accept_qname(uint64_t *a1, unsigned __int8 *a2)
{
  if (*(a1 + 2) >= *(a1 + 3))
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    if (DomainNameEqual(v3[1], a2))
    {
      return 0;
    }
  }

  return result;
}

void _mdns_resolver_start_pending_queriers(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 96);
    if (v2)
    {
LABEL_7:
      dispatch_source_merge_data(v2, 1uLL);
      return;
    }

    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    v3 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, _mdns_resolver_queue_s_queue);
    *(a1 + 96) = v3;
    if (v3)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_resolver_start_pending_queriers_block_invoke;
      handler[3] = &__block_descriptor_tmp_121_4812;
      handler[4] = a1;
      dispatch_source_set_event_handler(v3, handler);
      dispatch_activate(*(a1 + 96));
      v2 = *(a1 + 96);
      goto LABEL_7;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v4 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create pending querier starter GCD source", buf, 2u);
    }
  }
}

void ___mdns_resolver_start_pending_queriers_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v2 = (v1 + 40);
  v3 = v4;
  if (v4)
  {
    do
    {
      *v2 = *(v3 + 64);
      *(v3 + 64) = 0;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 128);
        if (!v7)
        {
          v7 = "";
        }

        *buf = 136446210;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}sStarting pending querier due to observed traffic activity", buf, 0xCu);
      }

      _mdns_resolver_start_querier(*(a1 + 32), v3);
      os_release(v3);
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      v2 = (v8 + 40);
      v3 = v9;
    }

    while (v9);
  }
}

void _mdns_querier_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = mdns_message_create_with_dispatch_data(a2, 1);
  if (v5)
  {
    v6 = v5;
    v29 = 0;
    v7 = *(a1 + 89);
    if (*(a1 + 89))
    {
      v8 = 0;
    }

    else
    {
      v8 = &v29 + 1;
    }

    v9 = v7 | *(*(*(a3 + 72) + 16) + 161) ^ 1;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v29;
    }

    v28 = 0;
    is_response_acceptable = _mdns_querier_is_response_acceptable(a3, v5, v8, v10, &v28);
    if (*(a3 + 128))
    {
      v12 = *(a3 + 128);
    }

    else
    {
      v12 = "";
    }

    _mdns_resolver_log_receive(*(a3 + 72), a1, v6, is_response_acceptable, v12, *(a3 + 255));
    v13 = *(a1 + 32);
    if (is_response_acceptable)
    {
      v14 = *(a3 + 72);
      v15 = *(a1 + 56);
      v16 = (*(*(a3 + 16) + 96))(a3);
      _mdns_resolver_note_responsiveness(v14, v13, v7, v15, v16);
      if (v28 > 9u || ((1 << v28) & 0x209) == 0)
      {
        _mdns_querier_handle_bad_rcode(a3, v6, v28, v13);
        goto LABEL_45;
      }

      if ((v7 & 1) != 0 || HIBYTE(v29) != 1)
      {
        _mdns_querier_conclude_ex(a3, 1, 0, v6);
        goto LABEL_45;
      }

      *(a3 + 250) = HIBYTE(v29);
    }

    else
    {
      if ((v9 & 1) != 0 || v29 != 1)
      {
        v20 = *(a3 + 72);
        if (*(v20 + 128) && (v21 = *(a3 + 192)) != 0 && (is_query_response = _mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), v21, 0, 0, 1), v20 = *(a3 + 72), is_query_response))
        {
          if ((*(v13 + 100) - 1) >= 0x20)
          {
            v23 = 0;
          }

          else
          {
            v23 = 1 << (*(v13 + 100) - 1);
          }

          *(a3 + 200) |= v23;
          _mdns_resolver_note_responsiveness(v20, v13, v7, *(a1 + 56), *(*(a3 + 192) + 64));
        }

        else if (*(*(v20 + 16) + 144) == 1 && (*(v13 + 112) & 1) == 0)
        {
          v24 = (*(*(a3 + 16) + 96))(a3);
          v25 = _mdns_qtype_is_problematic;
          v26 = v24 == 1 || v24 == 28;
          if (v26 || (v25 = _mdns_qtype_is_address_type, (v24 & 0xFFFE) == 0x40))
          {
            v27 = v25;
            *buf = 0;
            if (_mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), *(a3 + 96), 0, buf, 0))
            {
              if ((v27)(*buf))
              {
                *(v13 + 112) = 1;
              }
            }
          }
        }

        goto LABEL_45;
      }

      *(a3 + 250) = 2;
      v17 = *(a3 + 72);
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      }

      v18 = mdns_mach_ticks_per_second_s_ticks_per_second;
      *(v17 + 88) = mach_continuous_time() + 10 * v18;
      *(v17 + 134) = 1;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v19 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v31 = 10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Got suspicious response, entering suspicious mode for %d seconds", buf, 8u);
      }
    }

    _mdns_resolver_deregister_querier(*(a3 + 72), a3);
    _mdns_resolver_register_querier_ex(*(a3 + 72), a3, 1);
LABEL_45:
    os_release(v6);
    return;
  }

  _mdns_querier_conclude_ex(a3, 5, -6729, 0);
}

uint64_t _mdns_querier_is_response_acceptable(uint64_t a1, uint64_t a2, BOOL *a3, _BYTE *a4, _WORD *a5)
{
  v7 = *(a2 + 40);
  if (v7 < 0xC)
  {
    result = 0;
LABEL_21:
    v16 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_18;
  }

  v17 = 0;
  v11 = *(a2 + 32);
  result = _mdns_message_is_query_response_ex(v11, v7, *(a1 + 96), &v17, 0, 0);
  if (!result)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 96);
  if (v17 == *(v13 + 68))
  {
    v14 = *(v11 + 3);
    if (a3)
    {
      v15 = (*(v11 + 2) & 2) != 0 && ((*(v13 + 70) & 4) != 0 || !__rev16(*(v11 + 6)) || !__rev16(*(v11 + 8)) && !__rev16(*(v11 + 10)));
      *a3 = v15;
    }

    if (a5)
    {
      *a5 = v14 & 0xF;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = 1;
  if (a4)
  {
LABEL_18:
    *a4 = v16 & (result ^ 1);
  }

  return result;
}

void _mdns_resolver_log_receive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, int a6)
{
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = "";
  }

  v11 = *(a3 + 40);
  v12 = 148;
  if (*(a2 + 89))
  {
    v12 = 152;
  }

  v13 = *(*(a1 + 16) + v12);
  interface_log_string = _mdns_resolver_get_interface_log_string(a1);
  if (v11 < 0xC)
  {
    if (a6)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = *(a2 + 32);
      v23 = *(a3 + 32);
      v31 = 136448259;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v22;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 1040;
      *v44 = v11;
      *&v44[4] = 2098;
      *&v44[6] = v23;
      *&v44[14] = 2117;
      *&v44[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v29 = *(a2 + 32);
      v30 = *(a3 + 32);
      v31 = 136448258;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v29;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 1040;
      *v44 = v11;
      *&v44[4] = 2098;
      *&v44[6] = v30;
      *&v44[14] = 2112;
      *&v44[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
    }

    v27 = v21;
    v28 = 80;
    goto LABEL_27;
  }

  v15 = *(a3 + 32);
  if (a6)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 32);
      v18 = bswap32(*v15);
      v19 = bswap64(*(v15 + 4));
      v31 = 136448259;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v17;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 2048;
      *v44 = v18;
      *&v44[8] = 2048;
      *&v44[10] = v19;
      *&v44[18] = 2117;
      *&v44[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %{sensitive}@";
LABEL_21:
      v27 = v16;
      v28 = 84;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v20, &v31, v28);
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 32);
      v25 = bswap32(*v15);
      v26 = bswap64(*(v15 + 4));
      v31 = 136448258;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v24;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 2048;
      *v44 = v25;
      *&v44[8] = 2048;
      *&v44[10] = v26;
      *&v44[18] = 2112;
      *&v44[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %@";
      goto LABEL_21;
    }
  }
}

void _mdns_resolver_note_responsiveness(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a4 - *(a2 + 80) >= 1)
  {
    *(a2 + 80) = a4;
  }

  if ((a5 & 0xFFFFFFFE) == 0x40 && (*(a2 + 107) & 1) == 0)
  {
    *(a2 + 107) = 1;
  }

  _mdns_resolver_unpenalize_server(a1, a2, 1);
  if (*(a2 + 109) == 1)
  {
    *(a2 + 109) = 0;
    if (*(a1 + 132) == 1 && nw_endpoint_get_type(*(a2 + 48)) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(*(a2 + 48));
      _mdns_symptoms_report_dns_server_symptom(413698, address);
    }
  }

  if (!a3)
  {
    if (!*(a2 + 40))
    {
      v9 = *(a1 + 124);
      if (v9 / 0xA + v9 <= v9)
      {
        v10 = *(a1 + 124);
      }

      else
      {
        v10 = v9 / 0xA + v9;
      }

      oneshot_timer = _mdns_resolver_create_oneshot_timer(v10, 5u);
      *(a2 + 40) = oneshot_timer;
      if (oneshot_timer)
      {
        v12 = mach_continuous_time();
        v13 = *(a2 + 40);
        v21 = _NSConcreteStackBlock;
        *&v22 = 0x40000000;
        *(&v22 + 1) = ___mdns_resolver_schedule_fast_recovery_check_block_invoke;
        v23 = &__block_descriptor_tmp_120_4820;
        v24 = a2;
        v25 = a1;
        v26 = v12;
        dispatch_source_set_event_handler(v13, &v21);
        dispatch_activate(*(a2 + 40));
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v20 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21) = 0;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to create fast recovery timer", &v21, 2u);
        }
      }
    }

    goto LABEL_39;
  }

  if (*(*(a1 + 16) + 158) != 1)
  {
    goto LABEL_39;
  }

  if (*(a2 + 110) == 1)
  {
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
  }

  else
  {
    v14 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
    if (v14 < 3)
    {
      goto LABEL_25;
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v15 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 16) + 152);
    LODWORD(v21) = 67109378;
    HIDWORD(v21) = v16;
    LOWORD(v22) = 2112;
    *(&v22 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleared stream problems with %{mdns:protocol}d server %@", &v21, 0x12u);
  }

LABEL_25:
  if (*(a1 + 139) == 1)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      while (*(v17 + 106) - 1 > 3 || (*(v17 + 110) & 1) != 0 || *(v17 + 96) >= 3u)
      {
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_39;
        }
      }

      *(a1 + 139) = 0;
      v18 = *(a1 + 104);
      if (v18)
      {
        dispatch_source_cancel(*(a1 + 104));
        dispatch_release(v18);
        *(a1 + 104) = 0;
      }

      v19 = *(a1 + 112);
      if (v19)
      {
        mdns_client_invalidate(v19);
        os_release(*(a1 + 112));
        *(a1 + 112) = 0;
      }

      _mdns_resolver_generate_connection_event(a1);
      os_retain(a1);
      if (_mdns_resolver_queue_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
      }

      v21 = _NSConcreteStackBlock;
      *&v22 = 0x40000000;
      *(&v22 + 1) = ___mdns_resolver_start_serverless_queries_async_block_invoke;
      v23 = &__block_descriptor_tmp_119_4818;
      v24 = a1;
      dispatch_async(_mdns_resolver_queue_s_queue, &v21);
    }
  }

LABEL_39:
  _mdns_resolver_start_pending_queriers(a1);
}

void _mdns_querier_handle_bad_rcode(uint64_t a1, void *object, int a3, uint64_t a4)
{
  if ((*(a4 + 100) - 1) >= 0x20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << (*(a4 + 100) - 1);
  }

  *(a1 + 224) |= v8;
  v9 = *(a1 + 244);
  v10 = *(a1 + 144);
  if (v9 < 0)
  {
    if (v10)
    {
      os_release(v10);
      *(a1 + 144) = 0;
    }

    *(a1 + 244) = 0;
  }

  else if (v10 && (a3 == 5 || v9 != 5))
  {
    goto LABEL_15;
  }

  os_retain(object);
  v11 = *(a1 + 144);
  if (v11)
  {
    os_release(v11);
  }

  *(a1 + 144) = object;
  *(a1 + 244) = a3;
LABEL_15:
  if (a3 == 5)
  {
    _mdns_resolver_penalize_server_ex(*(a1 + 72), a4, 0, 0, 0);
  }

  if (_mdns_resolver_get_server(*(a1 + 72), *(a1 + 224)))
  {
    if (*(a1 + 80) == a4)
    {
      *(a1 + 80) = 0;
      *(a1 + 247) = 0;

      _mdns_querier_initiate_send(a1);
    }
  }

  else
  {
    v12 = *(a1 + 144);
    *(a1 + 144) = 0;
    _mdns_querier_conclude_ex(a1, 1, 0, v12);

    os_release(v12);
  }
}

uint64_t _mdns_message_is_query_response_ex(char *a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, char a6)
{
  if (a2 < 0xC)
  {
    return 0;
  }

  v10 = __rev16(*a1);
  if (!a4 && v10 != *(a3 + 68))
  {
    return 0;
  }

  if ((a1[2] & 0xF8) != 0x80)
  {
    return 0;
  }

  if (__rev16(*(a1 + 2)) != 1)
  {
    return 0;
  }

  v12 = 0;
  memset(v13, 0, sizeof(v13));
  if (DNSMessageExtractQuestion(a1, a2, a1 + 12, v13, &v12 + 1, &v12, 0))
  {
    return 0;
  }

  if ((a6 & 1) == 0)
  {
    result = DomainNameEqual(v13, *(*(a3 + 56) + 24));
    if (!result)
    {
      return result;
    }
  }

  if (!a5 && HIWORD(v12) != *(a3 + 64) || v12 != *(a3 + 66))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = v10;
  }

  if (a5)
  {
    *a5 = HIWORD(v12);
  }

  return 1;
}

void _mdns_resolver_unpenalize_server(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 108) == 1)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = v5;
      v5 = *(v5 + 24);
      if (v5)
      {
        v7 = v5 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (v5)
    {
      *(v6 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 108) = 0;
      if (a3)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v11 = 138412290;
        v12 = a2;
        v9 = "Unpenalizing responsive server %@";
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v11 = 138412290;
        v12 = a2;
        v9 = "Unpenalizing server %@";
      }

      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v11, 0xCu);
      do
      {
LABEL_19:
        v10 = v4;
        v4 = *(v4 + 24);
      }

      while (v4 && (*(v4 + 108) & 1) == 0 && *(v4 + 100) <= *(a2 + 100));
      *(a2 + 24) = v4;
      *(v10 + 24) = a2;
    }
  }
}

void ___mdns_resolver_start_serverless_queries_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    v3 = v2;
    while (1)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        break;
      }

      if (*(v3 + 106) - 1 <= 3)
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          do
          {
            if (!*(v4 + 80))
            {
              *(v4 + 247) = 0;
              if (*(v4 + 251))
              {
                v5 = 2000;
              }

              else
              {
                v5 = *(*(v4 + 72) + 124);
              }

              *(v4 + 204) = v5;
              _mdns_querier_initiate_send(v4);
            }

            v4 = *(v4 + 64);
          }

          while (v4);
          v2 = *(a1 + 32);
        }

        break;
      }
    }
  }

  os_release(v2);
}

void ___mdns_resolver_schedule_fast_recovery_check_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 40));
    dispatch_release(v3);
    *(a1[4] + 40) = 0;
    v2 = a1[4];
  }

  v4 = a1[5];
  v5 = a1[6];

  _mdns_resolver_handle_revived_server(v4, v2, 0, v5);
}

void _mdns_resolver_handle_revived_server(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((*(a1 + 136) & 1) == 0 && *(a2 + 106) - 5 >= 0xFFFFFFFC)
  {
    v5 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
    for (i = *(a1 + 32); i; i = *(i + 64))
    {
      if ((*(i + 224) & v5) == 0)
      {
        v8 = *(i + 80);
        if (*(i + 251))
        {
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if ((a3 & 1) == 0)
          {
            if ((*(a2 + 107) & 1) == 0 && ((*(*(i + 16) + 96))(i) & 0xFFFE) == 0x40)
            {
              continue;
            }

            v9 = *(i + 112);
            if (v9)
            {
              while (v9[4] != a2)
              {
                v9 = v9[3];
                if (!v9)
                {
                  goto LABEL_19;
                }
              }

              if (v9[8] - a4 > 0)
              {
                continue;
              }
            }
          }

LABEL_19:
          if (!v8 || v8 == a2 || (*(v8 + 109) & 1) != 0)
          {
LABEL_22:
            *(i + 212) &= ~v5;
            if (_mdns_resolver_log_s_once != -1)
            {
              dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
            }

            v10 = _mdns_resolver_log_s_log;
            if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              v11 = *(i + 128);
              if (!v11)
              {
                v11 = "";
              }

              *buf = 136446210;
              v15 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}sRestarting querier", buf, 0xCu);
            }

            *(i + 80) = 0;
            *(i + 247) = 0;
            if (*(i + 251))
            {
              v12 = 2000;
            }

            else
            {
              v12 = *(*(i + 72) + 124);
            }

            *(i + 204) = v12;
            _mdns_querier_initiate_send(i);
          }
        }
      }
    }
  }
}

void _mdns_querier_session_handle_event(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v8 = _mdns_resolver_log_s_log;
  if (a3)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v11 = *(a4 + 128);
    if (!v11)
    {
      v11 = "";
    }

    v26 = 136446722;
    v27 = v11;
    v28 = 1024;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    _os_log_impl(&_mh_execute_header, v8, v10, "%{public}sQuerier session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", &v26, 0x1Cu);
  }

  if ((a2 - 3) < 2)
  {
    v12 = *(a1 + 89);
    v13 = 112;
    if (*(a1 + 89))
    {
      v13 = 120;
    }

    v14 = (a4 + v13);
    do
    {
      v15 = v14;
      v16 = *v14;
      v14 = (*v14 + 24);
      if (v16)
      {
        v17 = v16 == a1;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
    if (!v16)
    {
      return;
    }

    *v15 = *(a1 + 24);
    *(a1 + 24) = 0;
    _mdns_session_invalidate(a1);
    os_release(a1);
    if (!v12)
    {
      return;
    }

    v18 = *(a1 + 32);
    if (a2 == 3)
    {
      if (a3)
      {
        v19 = *(a4 + 72);
        _mdns_resolver_generate_error_event(v19, a3);
      }

      else
      {
        if (*(a4 + 249) == 3)
        {
          goto LABEL_45;
        }

        v19 = *(a4 + 72);
      }

      if (*(a4 + 128))
      {
        v23 = *(a4 + 128);
      }

      else
      {
        v23 = "";
      }

      v24 = _mdns_resolver_handle_stream_error(v19, v18, v23);
      v25 = *(v19 + 140);
      _mdns_resolver_penalize_server_ex(v19, v18, 0, 0, 0);
      if (v25 == 1 && (v24 & 1) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_45:
    _mdns_querier_handle_stream_termination(a4, v18);
    return;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      _mdns_querier_send_query(a4, a1);
    }

    return;
  }

  if (*(a1 + 89) == 1)
  {
    v20 = *(a4 + 72);
    v21 = *(a4 + 128) ? *(a4 + 128) : "";
    v22 = _mdns_resolver_handle_stream_lateness(*(a4 + 72), *(a1 + 32), *(a1 + 56), v21);
    if (*(v20 + 140) == 1)
    {
      if (v22)
      {
LABEL_44:
        _mdns_querier_conclude_ex(a4, 6, 0, 0);
      }
    }
  }
}

void _mdns_resolver_generate_error_event(NSObject **a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "error_code", a2);
  _mdns_resolver_generate_event(a1, 3, v4);
  if (v4)
  {

    xpc_release(v4);
  }
}

uint64_t _mdns_resolver_handle_stream_error(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(*(a1 + 16) + 158) == 1)
  {
    v6 = mach_continuous_time();
    v7 = v6 - *(a2 + 88);
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
    }

    if (v7 >= mdns_mach_ticks_per_second_s_ticks_per_second)
    {
      v8 = *(a2 + 110);
      v9 = *(a2 + 96);
      *(a2 + 88) = v6;
      if (v9 == -1 || (*(a2 + 96) = v9 + 1, v9 > 1))
      {
        if ((((v9 > 2) | v8) ^ 1))
        {
          _mdns_resolver_log_server_problems(a1, a2, a3);
        }
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_querier_handle_stream_termination(int8x8_t *a1, uint64_t a2)
{
  v3 = *(a2 + 100) - 1;
  if (v3 < 0x20)
  {
    v4 = ~(1 << v3);
  }

  else
  {
    v4 = -1;
  }

  a1[27] = vand_s8(vdup_n_s32(v4), a1[27]);
  v5 = a1[10];
  if (*&v5 != a2)
  {
    if (*&v5 || *&a1[13])
    {
      return;
    }

    goto LABEL_14;
  }

  eligible_server = _mdns_querier_get_eligible_server(a1);
  if (eligible_server)
  {
    if (*(eligible_server + 108))
    {
      v7 = 0;
    }

    else
    {
      v7 = eligible_server;
    }
  }

  else
  {
    v7 = 0;
  }

  _mdns_querier_set_current_server(a1, v7);
  if (a1[10])
  {
LABEL_14:

    _mdns_querier_initiate_send(a1);
  }
}

uint64_t _mdns_resolver_handle_stream_lateness(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(*(a1 + 16) + 158) == 1 && a3 - *(a2 + 80) >= 1)
  {
    if (*(a2 + 110) == 1)
    {
      *(a2 + 110) = 1;
    }

    else
    {
      v5 = *(a2 + 96);
      *(a2 + 110) = 1;
      if (v5 <= 2)
      {
        _mdns_resolver_log_server_problems(a1, a2, a4);
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_resolver_log_server_problems(uint64_t a1, uint64_t a2, const char *a3)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v7 = "";
    v8 = *(*(a1 + 16) + 152);
    if (a3)
    {
      v7 = a3;
    }

    v9 = *(a2 + 110);
    v10 = *(a2 + 96);
    v11 = 136447234;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 2112;
    v16 = a2;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}sHaving stream problems with %{mdns:protocol}d server %@ -- lateness: %{BOOL}d, error count: %u", &v11, 0x28u);
  }
}

uint64_t ___mdns_session_activate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (v3)
  {
    dispatch_source_cancel(*(result + 40));
    dispatch_release(v3);
    *(*(a1 + 32) + 40) = 0;
    result = *(a1 + 32);
  }

  if (*(result + 88) == 1)
  {
    v4 = **(result + 72);
    if (v4)
    {
      v5 = *(result + 48);

      return v4(result, 2, 0, v5);
    }
  }

  return result;
}

void _mdns_common_session_terminate_async(void *a1, int a2)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_common_session_terminate_async_block_invoke;
  v4[3] = &__block_descriptor_tmp_115_4838;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(_mdns_resolver_queue_s_queue, v4);
}

void ___mdns_common_session_terminate_async_block_invoke(uint64_t a1)
{
  _mdns_common_session_finish(*(a1 + 32), 3, *(a1 + 40));
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_common_session_finish(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) != 3)
  {
    _mdns_session_invalidate_internal(a1);
    *(a1 + 88) = 3;
    v6 = **(a1 + 72);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, a3, v7);
    }
  }
}

void _mdns_resolver_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = mdns_message_create_with_dispatch_data(a2, 1);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a3 + 32);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    while (1)
    {
      v9 = v7;
      v7 = *(v7 + 64);
      v16 = 0;
      if (_mdns_querier_is_response_acceptable(v9, v6, 0, 0, &v16))
      {
        break;
      }

LABEL_15:
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if ((v8 & 1) == 0)
    {
      if (*(v9 + 128))
      {
        v10 = *(v9 + 128);
      }

      else
      {
        v10 = "";
      }

      _mdns_resolver_log_receive(a3, a1, v6, 1, v10, *(v9 + 255));
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 89);
    v13 = *(a1 + 56);
    v14 = (*(*(v9 + 16) + 96))(v9);
    _mdns_resolver_note_responsiveness(a3, v11, v12, v13, v14);
    if (v16 <= 9u && ((1 << v16) & 0x209) != 0)
    {
      v8 = 1;
      _mdns_querier_conclude_ex(v9, 1, 0, v6);
      goto LABEL_15;
    }

    _mdns_querier_handle_bad_rcode(v9, v6, v16, *(a1 + 32));
    v8 = 1;
  }

  while (v7);
LABEL_18:
  if ((v8 & 1) == 0)
  {
LABEL_19:
    _mdns_resolver_log_receive(a3, a1, v6, 0, 0, 0);
  }

  os_release(v6);
}

void _mdns_resolver_session_handle_event(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v8 = _mdns_resolver_log_s_log;
  if (a3)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v16[0] = 67109376;
    v16[1] = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, v10, "Resolver session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", v16, 0x12u);
  }

  if ((a2 - 3) < 2)
  {
    v11 = a4;
    do
    {
      v11 = *(v11 + 24);
      if (!v11)
      {
        return;
      }

      v12 = *(v11 + 32);
    }

    while (v12 != a1);
    if (a1)
    {
      _mdns_session_invalidate(v12);
      os_release(*(v11 + 32));
      *(v11 + 32) = 0;
    }

    if (a2 == 3)
    {
      if (a3)
      {
        _mdns_resolver_generate_error_event(a4, a3);
LABEL_23:
        _mdns_resolver_handle_stream_error(a4, v11, 0);
        _mdns_resolver_penalize_server_ex(a4, v11, 0, 0, 0);
        goto LABEL_34;
      }

      if (!*(a1 + 84))
      {
        goto LABEL_23;
      }
    }

LABEL_34:
    for (i = *(a4 + 32); i; i = i[8])
    {
      if (i[31].i8[3] == 1)
      {
        _mdns_querier_handle_stream_termination(i, v11);
      }
    }

    return;
  }

  if (a2 == 1)
  {
    if ((*(*(a1 + 32) + 100) - 1) >= 0x20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1 << (*(*(a1 + 32) + 100) - 1);
    }

    for (j = *(a4 + 32); j; j = *(j + 64))
    {
      if (*(j + 251) == 1 && (*(j + 216) & v13) != 0)
      {
        _mdns_querier_send_query(j, a1);
      }
    }
  }

  else if (a2 == 2)
  {
    _mdns_resolver_handle_stream_lateness(a4, *(a1 + 32), *(a1 + 56), 0);
  }
}

void _mdns_url_session_send(uint64_t a1, NSObject *a2, int a3)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v67 = *(a1 + 112);
    LODWORD(applier) = 138412290;
    *(&applier + 4) = v67;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Sending message on URL %@", &applier, 0xCu);
  }

  v7 = *(a1 + 184);
  if (!v7)
  {
    v108 = 0;
    v110 = 0;
    v9 = 0;
LABEL_49:
    os_retain(a1);
    v36 = *(*(a1 + 32) + 48);
    url = nw_endpoint_get_url(*(a1 + 112));
    size = *(v7 + 192);
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 0x40000000;
    v118[2] = ___mdns_url_session_send_block_invoke_110;
    v118[3] = &__block_descriptor_tmp_112;
    v118[4] = a1;
    v119 = v9;
    v117 = v36;
    v115 = a2;
    v38 = v118;
    context = objc_autoreleasePoolPush();
    if (v9)
    {
      v39 = [NSMutableURLRequest alloc];
      v40 = [NSURL alloc];
      v41 = [NSString stringWithUTF8String:url];
      v42 = [v40 initWithString:v41];
      v43 = [v39 initWithURL:v42];

      [v43 setHTTPMethod:@"POST"];
      [v43 setHTTPBody:v115];
      v44 = @"application/oblivious-dns-message";
    }

    else
    {
      v45 = [v115 base64EncodedStringWithOptions:0];
      v46 = [v45 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

      v47 = [v46 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

      v48 = [v47 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1001541B8];

      v49 = [NSString stringWithFormat:@"%s?dns=%@", url, v48];
      v50 = [NSMutableURLRequest alloc];
      v51 = a3;
      v52 = [[NSURL alloc] initWithString:v49];
      v43 = [v50 initWithURL:v52];

      a3 = v51;
      [v43 setHTTPMethod:@"GET"];

      v44 = @"application/dns-message";
    }

    v53 = v44;
    [v43 setValue:v53 forHTTPHeaderField:@"accept"];
    [v43 setValue:v53 forHTTPHeaderField:@"content-type"];
    v54 = nw_endpoint_copy_interface();
    v55 = v54;
    if (v54)
    {
      v56 = [NSString stringWithUTF8String:nw_interface_get_name(v54)];
      [v43 setBoundInterfaceIdentifier:v56];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v136 = 0x3032000000;
    v137 = __Block_byref_object_copy_;
    v138 = __Block_byref_object_dispose_;
    v139 = 0;
    if (a3 == 1 || a3 == 28)
    {
      v57 = nw_activity_create();
      v58 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v57;

      if (*(*(&buf + 1) + 40))
      {
        nw_activity_activate();
      }
    }

    *&applier = _NSConcreteStackBlock;
    *(&applier + 1) = 3221225472;
    *&v125 = __http_task_create_dns_query_block_invoke;
    *(&v125 + 1) = &unk_10014E008;
    *&v127 = &buf;
    v59 = v43;
    *&v126 = v59;
    v60 = v38;
    *(&v126 + 1) = v60;
    v61 = _http_task_create_data_task(v59, &applier);
    [v61 set_hostOverride:v117];
    if (v61 && *(*(&buf + 1) + 40))
    {
      [v61 set_nw_activity:?];
    }

    if (size)
    {
      v62 = [v61 _effectiveConfiguration];
      v63 = [[NSURLSessionConfiguration alloc] _initWithConfiguration:v62];
      v132 = size;
      v133 = _kCFStreamPropertySSLClientCertificates;
      v64 = [NSArray arrayWithObjects:&v132 count:1];
      v134 = v64;
      v65 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      [v63 set_socketStreamProperties:v65];

      [v61 _adoptEffectiveConfiguration:v63];
    }

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(context);

    *(a1 + 144) = v61;
    if (v61)
    {
      v66 = objc_autoreleasePoolPush();
      [v61 resume];
      objc_autoreleasePoolPop(v66);
      options = v108;
      v15 = v110;
      if (!v108)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    os_release(a1);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    options = v108;
    v15 = v110;
    v104 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(applier) = 0;
      _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Failed to create HTTP task", &applier, 2u);
    }

    goto LABEL_84;
  }

  v116 = a3;
  v8 = *(v7 + 168);
  v9 = v8 != 0;
  if (!v8)
  {
    options = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  length = xpc_data_get_length(*(v7 + 168));
  bytes_ptr = xpc_data_get_bytes_ptr(*(v7 + 168));
  if (nw_http_oblivious_config_is_valid())
  {
    *&applier = 0;
    if (nw_endpoint_get_port(*(a1 + 112)) == 443)
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      v12 = *(a1 + 112);
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s&targetpath=%s");
    }

    else
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      v19 = *(a1 + 112);
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s:%u&targetpath=%s");
    }

    options = nw_oblivious_http_create_options();
    if (applier)
    {
      free(applier);
      *&applier = 0;
    }

    if (options)
    {
      v15 = 0;
      v14 = 1;
      goto LABEL_28;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v72 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_83:
      options = 0;
      v15 = 0;
LABEL_84:
      v73 = -6700;
      goto LABEL_85;
    }

    LOWORD(buf) = 0;
    v74 = "Failed to create oblivious http options";
    p_buf = &buf;
LABEL_88:
    _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, v74, p_buf, 2u);
    goto LABEL_83;
  }

  if (!a2 || !bytes_ptr)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v17 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    LOWORD(buf) = 0;
    v18 = "Parameters are NULL";
LABEL_105:
    v83 = v17;
    v84 = 2;
    goto LABEL_106;
  }

  if (length <= 1)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v16 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = length;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Config length is too short: %zu", &buf, 0xCu);
LABEL_76:
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

LABEL_78:
    v17 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_79:
      v71 = _mdns_resolver_log_s_once;
LABEL_80:
      if (v71 != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v72 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      LOWORD(applier) = 0;
      v74 = "Failed to create oblivious request";
      p_buf = &applier;
      goto LABEL_88;
    }

    LOWORD(buf) = 0;
    v18 = "Failed to parse supported config";
    goto LABEL_105;
  }

  v68 = bswap32(*bytes_ptr) >> 16;
  if (length - 2 == v68)
  {
    ++bytes_ptr;
    while (!mdns_odoh_config_is_valid_inner(bytes_ptr, v68))
    {
      if (v68 >= 4)
      {
        v69 = bswap32(bytes_ptr[1]) >> 16;
        bytes_ptr = (bytes_ptr + v69);
        v70 = v68 > v69;
        v68 -= v69;
        if (v70)
        {
          continue;
        }
      }

      goto LABEL_76;
    }

    if (!bytes_ptr)
    {
      goto LABEL_76;
    }
  }

  else if (!mdns_odoh_config_is_valid_inner(bytes_ptr, length))
  {
    goto LABEL_76;
  }

  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v76 = cchpke_params_sizeof_kdf_hash();
  v77 = ccsha256_di();
  if (!v76)
  {
    goto LABEL_138;
  }

  LODWORD(length) = v77;
  v78 = bytes_ptr[5];
  v79 = malloc_type_calloc(1uLL, v76, 0xC4C2E807uLL);
  if (!v79)
  {
    goto LABEL_138;
  }

  v80 = v79;
  v81 = cchkdf_extract();
  if (v81)
  {
    LODWORD(length) = v81;
    free(v80);
    if (_mdns_crypto_log_s_once == -1)
    {
LABEL_94:
      v82 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = length;
      v18 = "Extract error: %d";
      v83 = v82;
      v84 = 8;
LABEL_106:
      _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, v18, &buf, v84);
      goto LABEL_79;
    }

LABEL_139:
    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    goto LABEL_94;
  }

  v107 = dispatch_data_get_size(a2);
  v106 = arc4random_uniform(0x10u);
  sizea = v107 + v106 + 4;
  length = cchpke_params_sizeof_aead_tag();
  v85 = cchpke_params_sizeof_kem_enc();
  v86 = sizea + length + v85;
  if (v76 + v86 == -5)
  {
    goto LABEL_138;
  }

  v109 = sizea + length + v85;
  LODWORD(length) = 1;
  v105 = v76 + v86 + 5;
  v87 = malloc_type_calloc(1uLL, v105, 0x1F966E85uLL);
  if (!v87)
  {
    goto LABEL_138;
  }

  *v87 = 1;
  *(v87 + 1) = bswap32(v76) >> 16;
  v88 = v87;
  LODWORD(length) = cchkdf_expand();
  free(v80);
  if (length)
  {
    v89 = v88;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v90 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = length;
      _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Expand error: %d", &buf, 8u);
    }

    v91 = v89;
    goto LABEL_122;
  }

  contexta = v88;
  *&v88[v76 + 3] = bswap32(v109) >> 16;
  v92 = malloc_type_calloc(1uLL, 0x60uLL, 0x51C97C44uLL);
  if (!v92)
  {
    goto LABEL_138;
  }

  length = v92;
  LODWORD(v134) = 0;
  ccrng();
  v93 = bswap32(bytes_ptr[5]);
  v94 = cchpke_initiator_setup();
  if (v94)
  {
    v95 = v94;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v96 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v95;
      _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Setup error: %d", &buf, 8u);
    }

LABEL_121:
    free(contexta);
    v91 = length;
LABEL_122:
    free(v91);
    goto LABEL_79;
  }

  if (v107 + v106 == -4 || (v97 = malloc_type_calloc(1uLL, sizea, 0xB757762EuLL)) == 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v98 = v97;
  *v97 = bswap32(v107) >> 16;
  *(v97 + v107 + 2) = bswap32(v106) >> 16;
  *&applier = _NSConcreteStackBlock;
  *(&applier + 1) = 0x40000000;
  *&v125 = __mdns_encrypt_oblivious_request_block_invoke;
  *(&v125 + 1) = &__block_descriptor_tmp_151;
  *&v126 = v97 + 1;
  dispatch_data_apply(a2, &applier);
  v99 = cchpke_initiator_encrypt();
  if (v99)
  {
    v100 = v99;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v101 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v100;
      _os_log_error_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Encrypt error: %d", &buf, 8u);
    }

    free(v98);
    goto LABEL_121;
  }

  *(a1 + 152) = length;
  *(a1 + 160) = 96;
  *(a1 + 168) = v98;
  *(a1 + 176) = sizea;
  v102 = dispatch_data_create(v88, v105, 0, _dispatch_data_destructor_free);
  v71 = _mdns_resolver_log_s_once;
  if (!v102)
  {
    goto LABEL_80;
  }

  v15 = v102;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v103 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(applier) = 0;
    _os_log_debug_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "Created oblivious request", &applier, 2u);
  }

  options = 0;
  v14 = 0;
  a2 = v15;
LABEL_28:
  if (!*(v7 + 176))
  {
    v108 = options;
    v110 = v15;
    a3 = v116;
    goto LABEL_49;
  }

  v20 = *(a1 + 120);
  nw_parameters_clear_custom_proxy_configs();
  v21 = *(a1 + 120);
  v22 = *(v7 + 176);
  nw_parameters_add_custom_proxy_config();
  if (options)
  {
    v23 = nw_parameters_copy_default_protocol_stack(*(a1 + 120));
    nw_protocol_stack_clear_application_protocols(v23);
    nw_protocol_stack_append_application_protocol();
    if (v23)
    {
      nw_release(v23);
    }
  }

  v24 = nw_connection_create(*(a1 + 112), *(a1 + 120));
  *(a1 + 128) = v24;
  if (!v24)
  {
    v73 = -6729;
LABEL_85:
    _mdns_common_session_terminate_async(a1, v73);
    if (!options)
    {
      goto LABEL_66;
    }

LABEL_65:
    nw_release(options);
    goto LABEL_66;
  }

  os_retain(a1);
  v25 = *(a1 + 128);
  v26 = options;
  v27 = v15;
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v25, _mdns_resolver_queue_s_queue);
  v28 = *(a1 + 128);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = ___mdns_url_session_send_block_invoke;
  handler[3] = &__block_descriptor_tmp_97;
  handler[4] = a1;
  nw_connection_set_state_changed_handler(v28, handler);
  v29 = nw_http_fields_create();
  if (v8)
  {
    v30 = "Oblivious Message";
  }

  else
  {
    v30 = "HTTP Message";
  }

  nw_http_fields_set_value_by_name();
  nw_http_fields_set_value_by_name();
  v31 = dispatch_data_get_size(a2);
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  applier = 0u;
  v125 = 0u;
  snprintf(&applier, 0x80uLL, "%zu", v31);
  nw_http_fields_set_value_by_name();
  nw_endpoint_get_url(*(a1 + 112));
  v32 = nw_http_request_create_from_url();
  nw_http_request_set_header_fields();
  metadata_for_request = nw_http_create_metadata_for_request();
  if (v32)
  {
    nw_release(v32);
  }

  v34 = nw_content_context_create(v30);
  nw_content_context_set_metadata_for_protocol(v34, metadata_for_request);
  if (metadata_for_request)
  {
    nw_release(metadata_for_request);
  }

  if (v29)
  {
    nw_release(v29);
  }

  nw_content_context_set_is_final(v34, 1);
  nw_connection_send(*(a1 + 128), a2, v34, 1, _nw_connection_send_idempotent_content);
  if (v34)
  {
    nw_release(v34);
  }

  nw_connection_start(*(a1 + 128));
  *(a1 + 136) = _mdns_create_and_start_connection_activity(*(a1 + 128), v116);
  v35 = *(a1 + 128);
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 0x40000000;
  completion[2] = ___mdns_url_session_send_block_invoke_102;
  completion[3] = &__block_descriptor_tmp_109;
  completion[4] = a1;
  v121 = v8 != 0;
  v122 = v14;
  nw_connection_receive_message(v35, completion);
  v15 = v27;
  options = v26;
  if (v26)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v15)
  {
    dispatch_release(v15);
  }
}

void ___mdns_url_session_send_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (*(v5 + 128))
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v7 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = nw_connection_state_to_string();
      v9 = *(*(a1 + 32) + 128);
      v10 = 136315650;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = a3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@ error %@", &v10, 0x20u);
    }

    switch(a2)
    {
      case 3:
        _mdns_url_session_handle_connection_no_longer_pending(*(a1 + 32));
        break;
      case 4:
        _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
        break;
      case 5:
        v5 = *(a1 + 32);
LABEL_10:
        _mdns_url_session_handle_connection_no_longer_pending(v5);
        os_release(*(a1 + 32));
        break;
    }
  }

  else if (a2 == 5)
  {
    goto LABEL_10;
  }
}

uint64_t _mdns_create_and_start_connection_activity(uint64_t a1, int a2)
{
  if (a2 != 1 && a2 != 28)
  {
    return 0;
  }

  v2 = nw_activity_create();
  if (v2)
  {
    nw_connection_start_activity();
  }

  return v2;
}

void ___mdns_url_session_send_block_invoke_102(uint64_t a1, uint64_t error_code, NSObject *a3, uint64_t a4, NSObject *a5)
{
  if (!*(*(a1 + 32) + 128))
  {
    return;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v9 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v32) = 134217984;
    *(&v32 + 4) = error_code;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received data %p", &v32, 0xCu);
  }

  *&v32 = 0;
  *(&v32 + 1) = &v32;
  v33 = 0x2000000000;
  v34 = 0;
  if (a3)
  {
    v10 = nw_protocol_copy_http_definition();
    a3 = nw_content_context_copy_protocol_metadata(a3, v10);
    if (v10)
    {
      nw_release(v10);
    }

    if (a3)
    {
      v11 = nw_http_metadata_copy_response();
      nw_release(a3);
      if (v11)
      {
        LODWORD(a3) = nw_http_response_get_status_code();
        v12 = nw_http_response_copy_header_fields();
        nw_http_fields_access_value_by_name();
        if (v12)
        {
          nw_release(v12);
        }

        nw_release(v11);
      }

      else
      {
        LODWORD(a3) = 0;
      }
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v13 = _mdns_resolver_log_s_log;
  if (a3 != 200 || error_code == 0)
  {
    v15 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v15))
  {
    v16 = "";
    if (!error_code)
    {
      v16 = "out";
    }

    *buf = 67109378;
    LODWORD(v31[0]) = a3;
    WORD2(v31[0]) = 2082;
    *(v31 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v13, v15, "Received HTTP status %u with%{public}s body", buf, 0x12u);
  }

  if (error_code)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 41))
      {
        v17 = 0;
      }

      else
      {
        error_code = mdns_decrypt_oblivious_response(error_code, *(*(a1 + 32) + 152), *(*(a1 + 32) + 160), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v20 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31[0] = error_code;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Decrypted %@", buf, 0xCu);
        }

        v17 = error_code;
        if (!error_code)
        {
          v18 = 0;
          v24 = 0;
          error_code = 4294960520;
          goto LABEL_48;
        }
      }

      v21 = *(*(&v32 + 1) + 24);
      if (v21)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v21);
      }

      v22 = *(a1 + 32);
      v23 = *(v22 + 184);
      if ((*(v23 + 230) & 1) == 0)
      {
        *(v23 + 230) = 1;
        _mdns_resolver_generate_error_event(v23, 0);
        v22 = *(a1 + 32);
      }

      _mdns_common_session_invoke_receive(v22, error_code);
      if (v17)
      {
        dispatch_release(v17);
      }
    }

    else
    {
      v19 = *(*(&v32 + 1) + 24);
      if (v19)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v19);
      }

      _mdns_common_session_invoke_receive(*(a1 + 32), error_code);
    }

    error_code = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v24 = 1;
LABEL_48:
  v25 = *(*(&v32 + 1) + 24);
  if (v25)
  {
    nw_release(v25);
    *(*(&v32 + 1) + 24) = 0;
  }

  v26 = *(a1 + 32);
  if (*(v26 + 136))
  {
    v27 = *(v26 + 128);
    nw_connection_end_activity();
    nw_activity_complete_with_reason();
    v28 = *(*(a1 + 32) + 136);
    if (v28)
    {
      nw_release(v28);
      *(*(a1 + 32) + 136) = 0;
    }
  }

  if (v18)
  {
    v29 = v24 ^ 1;
    if (!a5)
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      error_code = nw_error_get_error_code(a5);
    }
  }

  else
  {
    if (a3 == 401)
    {
      error_code = 4294960520;
    }

    else if (a3)
    {
      error_code = 4294960560;
    }

    else if (a5)
    {
      error_code = nw_error_get_error_code(a5);
    }

    else
    {
      error_code = 4294960543;
    }

    *(*(*(a1 + 32) + 184) + 230) = 0;
  }

  _mdns_common_session_finish(*(a1 + 32), 3, error_code);
  _Block_object_dispose(&v32, 8);
}

void ___mdns_url_session_send_block_invoke_110(uint64_t a1, NSObject *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 144))
  {
    v9 = *(a1 + 40);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v10 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = a2;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Received response %@", &v15, 0xCu);
      if (a2)
      {
LABEL_6:
        if (v9)
        {
          a2 = mdns_decrypt_oblivious_response(a2, *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176));
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
          }

          v11 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
          {
            v15 = 138412290;
            v16 = a2;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Decrypted response %@", &v15, 0xCu);
          }

          v12 = a2;
          if (!a2)
          {
            if (a3 == 401)
            {
              a4 = 4294960520;
            }

            else
            {
              a4 = 4294960519;
            }

LABEL_29:
            _mdns_common_session_finish(*(a1 + 32), 3, a4);
            v4 = *(a1 + 32);
            goto LABEL_30;
          }
        }

        else
        {
          v12 = 0;
        }

        _mdns_common_session_invoke_receive(v4, a2);
        if (!a4)
        {
LABEL_27:
          if (v12)
          {
            dispatch_release(v12);
          }

          goto LABEL_29;
        }

LABEL_20:
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
        }

        v13 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = a4;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Got error %@", &v15, 0xCu);
        }

        Code = CFErrorGetCode(a4);
        if (Code)
        {
          a4 = Code;
        }

        else
        {
          a4 = 4294960596;
        }

        goto LABEL_27;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v12 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_30:
  os_release(v4);
}

void _mdns_common_session_invoke_receive(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_release(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 84);
    if (v5 != -1)
    {
      *(a1 + 84) = v5 + 1;
    }

    v6 = *(*(a1 + 72) + 8);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, v7);
    }
  }
}

void ___mdns_url_session_send_block_invoke_104(uint64_t a1, char *hostname)
{
  *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_create_host(hostname, "0");
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v3 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Received client address %@", &v5, 0xCu);
  }
}

const sockaddr *_mdns_https_resolver_set_client_address(uint64_t a1, nw_endpoint_t endpoint)
{
  *(a1 + 200) = 0;
  v2 = (a1 + 200);
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  result = nw_endpoint_get_address(endpoint);
  if (result)
  {
    sa_family = result->sa_family;
    if (sa_family == 30)
    {
      v5 = *result;
      *&v2->sa_data[10] = *&result->sa_data[10];
    }

    else
    {
      if (sa_family != 2)
      {
        return result;
      }

      v5 = *result;
    }

    *v2 = v5;
  }

  return result;
}

void _mdns_url_session_handle_connection_no_longer_pending(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    v1 = --g_pending_odoh_connection_count;
    *(a1 + 192) = 0;
    v2 = g_pending_odoh_sessions;
    if (g_pending_odoh_sessions)
    {
      v3 = v1 > 9;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      g_pending_odoh_sessions = *(g_pending_odoh_sessions + 104);
      *(v2 + 104) = 0;
      _mdns_url_session_activate_for_odoh(v2);

      os_release(v2);
    }
  }
}

void _mdns_url_session_activate_for_odoh(_BYTE *object)
{
  object[192] = 1;
  ++g_pending_odoh_connection_count;
  v2 = &g_active_odoh_sessions;
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 104);
  }

  while (v4);
  *v3 = object;
  os_retain(object);
  *(object + 12) = mach_continuous_time();
  ++g_active_odoh_session_count;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v5 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = g_active_odoh_session_count;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Active ODoH session count increase: %zu", &v6, 0xCu);
  }

  _mdns_common_session_make_ready_async(object);
}

void _mdns_common_session_make_ready_async(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___mdns_common_session_make_ready_async_block_invoke;
  block[3] = &__block_descriptor_tmp_93_4869;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void ___mdns_common_session_make_ready_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 1 && (*(v2 + 90) & 1) == 0)
  {
    *(v2 + 90) = 1;
    v3 = **(v2 + 72);
    if (v3)
    {
      v3(v2, 1, 0, *(v2 + 48));
      v2 = *(a1 + 32);
    }
  }

  os_release(v2);
}

void _mdns_url_session_invalidate(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    if (a1[17])
    {
      v3 = a1[17];
      nw_connection_end_activity();
      nw_activity_complete_with_reason();
      v2 = a1[16];
    }

    nw_connection_cancel(v2);
    v4 = a1[16];
    if (v4)
    {
      nw_release(v4);
      a1[16] = 0;
    }
  }

  v5 = a1[17];
  if (v5)
  {
    nw_release(v5);
    a1[17] = 0;
  }

  v6 = a1[18];
  if (v6)
  {
    http_task_cancel(v6);
    a1[18] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  _mdns_url_session_handle_connection_no_longer_pending(a1);
  v7 = &g_active_odoh_sessions;
  do
  {
    v8 = v7;
    v9 = *v7;
    v7 = (*v7 + 104);
    if (v9)
    {
      v10 = v9 == a1;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (v9)
  {
    *v8 = a1[13];
    a1[13] = 0;
    os_release(a1);
    --g_active_odoh_session_count;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v11 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134217984;
      v20 = g_active_odoh_session_count;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Active ODoH session count decrease: %zu", &v19, 0xCu);
    }

    v12 = g_active_odoh_session_interrupt_timer;
    if (g_active_odoh_session_interrupt_timer)
    {
      dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
      dispatch_release(v12);
      g_active_odoh_session_interrupt_timer = 0;
    }

    if (g_pending_odoh_sessions)
    {
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }
  }

  else
  {
    v13 = &g_pending_odoh_sessions;
    do
    {
      v14 = v13;
      v15 = *v13;
      v13 = (*v13 + 104);
      if (v15)
      {
        v16 = v15 == a1;
      }

      else
      {
        v16 = 1;
      }
    }

    while (!v16);
    if (v15)
    {
      *v14 = a1[13];
      a1[13] = 0;
      os_release(a1);
    }

    if (!g_pending_odoh_sessions)
    {
      v17 = g_active_odoh_session_interrupt_timer;
      if (g_active_odoh_session_interrupt_timer)
      {
        dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
        dispatch_release(v17);
        g_active_odoh_session_interrupt_timer = 0;
      }
    }
  }

  v18 = a1[23];
  if (v18)
  {
    os_release(v18);
    a1[23] = 0;
  }
}

void _mdns_url_session_forget_crypto(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    memset_s(v2, a1[20], 0, a1[20]);
    v3 = a1[19];
    if (v3)
    {
      free(v3);
      a1[19] = 0;
    }
  }

  a1[20] = 0;
  v4 = a1[21];
  if (v4)
  {
    memset_s(v4, a1[22], 0, a1[22]);
    v5 = a1[21];
    if (v5)
    {
      free(v5);
      a1[21] = 0;
    }
  }

  a1[22] = 0;
}

void _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session()
{
  v0 = g_active_odoh_sessions;
  if (g_active_odoh_sessions)
  {
    v1 = g_active_odoh_session_interrupt_timer == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = mach_continuous_time() - v0[12];
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
    }

    if (v2 / mdns_mach_ticks_per_second_s_ticks_per_second > 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = 10000 - (1000 * (v2 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second + 1000 * (v2 / mdns_mach_ticks_per_second_s_ticks_per_second));
    }

    g_active_odoh_session_interrupt_timer = _mdns_resolver_create_oneshot_timer(v3, 5u);
    if (g_active_odoh_session_interrupt_timer)
    {
      os_retain(v0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke;
      handler[3] = &__block_descriptor_tmp_91_4871;
      handler[4] = v0;
      dispatch_source_set_event_handler(g_active_odoh_session_interrupt_timer, handler);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke_2;
      v4[3] = &__block_descriptor_tmp_92;
      v4[4] = v0;
      dispatch_source_set_cancel_handler(g_active_odoh_session_interrupt_timer, v4);
      dispatch_activate(g_active_odoh_session_interrupt_timer);
    }
  }
}

void ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke(uint64_t a1)
{
  v2 = g_active_odoh_session_interrupt_timer;
  if (g_active_odoh_session_interrupt_timer)
  {
    dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
    dispatch_release(v2);
    g_active_odoh_session_interrupt_timer = 0;
  }

  v3 = *(a1 + 32);

  _mdns_common_session_finish(v3, 4, 0);
}

uint64_t _mdns_url_session_activate(void *a1)
{
  if (*(a1[23] + 176))
  {
    if (g_pending_odoh_connection_count >= 0xA)
    {
      v1 = &g_pending_odoh_sessions;
      do
      {
        v2 = v1;
        v3 = *v1;
        v1 = (*v1 + 104);
      }

      while (v3);
      *v2 = a1;
      os_retain(a1);
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }

    else
    {
      _mdns_url_session_activate_for_odoh(a1);
    }
  }

  else
  {
    _mdns_common_session_make_ready_async(a1);
  }

  return 0;
}

uint64_t _mdns_url_session_initialize(uint64_t a1, void *a2)
{
  v15 = 0;
  if (*(a2[2] + 144) == 4)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 184) = v4;
  if (v4)
  {
    os_retain(v4);
    v5 = *(a2[2] + 112);
    if (v5)
    {
      v6 = v5(a2, &v15);
      result = v15;
      if (!v15)
      {
        v8 = nw_parameters_copy_url_endpoint();
        *(a1 + 112) = v8;
        if (v8)
        {
          v9 = nw_parameters_copy(v6);
          *(a1 + 120) = v9;
          v10 = nw_parameters_copy_default_protocol_stack(v9);
          nw_protocol_stack_clear_application_protocols(v10);
          if (v10)
          {
            nw_release(v10);
          }

          v11 = *(a1 + 120);
          nw_parameters_set_metadata();
          nw_parameters_set_fast_open_enabled(*(a1 + 120), 1);
          return v15;
        }

        else
        {
          return 4294960567;
        }
      }
    }

    else
    {
      return 4294960561;
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v12 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a2[2] + 144);
      if (v13 > 4)
      {
        v14 = "<INVALID RESOLVER TYPE>";
      }

      else
      {
        v14 = off_1001522A8[v13];
      }

      *buf = 136446210;
      v17 = v14;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Trying to initialize an mdns_url_session using a non-https resolver of type %{public}s", buf, 0xCu);
    }

    return 4294960540;
  }

  return result;
}

void _mdns_url_session_finalize(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    nw_release(v2);
    a1[14] = 0;
  }

  v3 = a1[15];
  if (v3)
  {
    nw_release(v3);
    a1[15] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  v4 = a1[23];
  if (v4)
  {
    os_release(v4);
    a1[23] = 0;
  }
}

void _mdns_udp_socket_session_send(uint64_t a1, dispatch_data_t data)
{
  v8 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &v8);
  if (v3)
  {
    v4 = v3;
    if (sendto(*(a1 + 136), buffer_ptr, v8, 0, (a1 + 104), *(a1 + 132)) < 0)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v11 = v7;
        v12 = 1024;
        v13 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "sending to %@ failed: %{darwin.errno}d", buf, 0x12u);
      }
    }

LABEL_11:
    dispatch_release(v4);
  }
}

void _mdns_udp_socket_session_invalidate(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 96));
    dispatch_release(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _mdns_udp_socket_session_activate(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v3 = dispatch_source_create(&_dispatch_source_type_read, v2, 0, _mdns_resolver_queue_s_queue);
  *(a1 + 96) = v3;
  if (!v3)
  {
    return 4294960567;
  }

  os_retain(a1);
  dispatch_set_context(*(a1 + 96), a1);
  dispatch_source_set_event_handler_f(*(a1 + 96), _mdns_udp_socket_session_read_handler);
  dispatch_source_set_cancel_handler_f(*(a1 + 96), _mdns_udp_socket_session_cancel_handler);
  dispatch_activate(*(a1 + 96));
  return 0;
}

void _mdns_udp_socket_session_cancel_handler(_DWORD *object)
{
  v2 = object[34];
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    object[34] = -1;
  }

  os_release(object);
}

void _mdns_udp_socket_session_read_handler(uint64_t a1)
{
  memset(buffer, 0, sizeof(buffer));
  *&v10.sa_len = 0;
  *&v10.sa_data[6] = 0;
  v12 = 0;
  v11 = 0;
  v9 = 28;
  v2 = recvfrom(*(a1 + 136), buffer, 0x200uLL, 0, &v10, &v9);
  if (v2 < 0)
  {
    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        goto LABEL_4;
      }

      if (v3 == 35)
      {
        return;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    _mdns_common_session_finish(a1, 3, v3);
    return;
  }

LABEL_4:
  if (*(a1 + 105) == 2)
  {
    if (*(a1 + 108) != *&v10.sa_data[2])
    {
      return;
    }

    v4 = *(a1 + 106);
    v5 = *v10.sa_data;
    goto LABEL_7;
  }

  v6 = *(a1 + 112) == *&v10.sa_data[6] && *(a1 + 120) == v11;
  if (!v6 || *(a1 + 106) != *v10.sa_data)
  {
    return;
  }

  if (*(a1 + 112) == 254 && (*(a1 + 113) & 0xC0) == 0x80)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      v5 = v12;
LABEL_7:
      if (v4 != v5)
      {
        return;
      }
    }
  }

  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v7 = dispatch_data_create(buffer, v2, _mdns_resolver_queue_s_queue, 0);
  if (v7)
  {
    v8 = v7;
    _mdns_common_session_invoke_receive(a1, v7);
    dispatch_release(v8);
  }
}

uint64_t _mdns_udp_socket_session_initialize(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _BYTE *a5)
{
  address = nw_endpoint_get_address(*(*(a1 + 32) + 48));
  sa_family = address->sa_family;
  if (sa_family != 30 && sa_family != 2)
  {
    return 4294960540;
  }

  v12 = address;
  v54[0] = 0;
  v54[1] = 0;
  if (sa_family == 30)
  {
    if (*&address->sa_data[6] || *&address->sa_data[10])
    {
      goto LABEL_9;
    }

    v35 = *&address[1].sa_len;
    if (v35)
    {
      if (v35 == -65536)
      {
        v36 = *&address[1].sa_data[2];
LABEL_139:
        LOWORD(v54[0]) = 528;
        WORD1(v54[0]) = *address->sa_data;
        HIDWORD(v54[0]) = v36;
        v12 = v54;
        sa_family = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v36 = *&address[1].sa_data[2];
      if ((v36 | 0x1000000) != 0x1000000)
      {
        goto LABEL_139;
      }
    }

LABEL_9:
    sa_family = 30;
  }

LABEL_10:
  if (sa_family == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 30;
  }

  v14 = socket(v13, 2, 17);
  if (v14 < 0)
  {
    if (*__error())
    {
      v16 = *__error();
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 4294960596;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v33 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 134217984;
      *&v53[0].val[1] = v16;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to create UDP socket: %{darwin.errno}ld", v53, 0xCu);
    }

    return v16;
  }

LABEL_16:
  v52 = 1;
  if (sa_family == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4226, &v52, 4u))
    {
      goto LABEL_43;
    }

    if (*__error())
    {
      v15 = *__error();
      if (!v15)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v15 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v34 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 67109120;
      v53[0].val[1] = v15;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_RANDOMPORT failed %{darwin.errno}d", v53, 8u);
    }
  }

  else
  {
    v50 = a4;
    v51 = v12;
    v17 = a5;
    v18 = 0;
    *&v53[0].val[2] = 0;
    *&v53[0].val[4] = 0;
    v53[0].val[6] = 0;
    *v53[0].val = 7708;
    *&v53[0].val[2] = in6addr_any;
    while (1)
    {
      v19 = arc4random() | 0xFFFFC000;
      HIWORD(v53[0].val[0]) = bswap32(v19) >> 16;
      if (!bind(v14, v53, 0x1Cu))
      {
        v20 = 0;
        goto LABEL_32;
      }

      if (!*__error())
      {
        break;
      }

      v20 = *__error();
      v21 = v18 + 1;
      if (v20 != 48 || v18++ >= 0x270F)
      {
        goto LABEL_33;
      }
    }

    v20 = -6700;
LABEL_32:
    v21 = v18 + 1;
LABEL_33:
    if (v20)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v23 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v56 = v20;
        *&v56[8] = 1024;
        v57 = v21;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Binding IPv6 socket to random port failed -- error: %{mdns:err}ld, tries: %d", buf, 0x12u);
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v24 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v56 = v19;
        *&v56[4] = 1024;
        *&v56[6] = v21;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Binding IPv6 socket to random port succeeded -- port: %u, tries: %d", buf, 0xEu);
      }
    }

    a5 = v17;
    a4 = v50;
    v12 = v51;
  }

LABEL_43:
  if (!setsockopt(v14, 0xFFFF, 4130, &v52, 4u))
  {
    goto LABEL_52;
  }

  if (*__error())
  {
    v25 = *__error();
    if (!v25)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v25 = -6700;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v26 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v53[0].val[0] = 67109120;
    v53[0].val[1] = v25;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOSIGPIPE failed %{darwin.errno}d", v53, 8u);
  }

LABEL_52:
  if (setsockopt(v14, 0xFFFF, 0x10000, &v52, 4u))
  {
    if (*__error())
    {
      v27 = *__error();
      if (!v27)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v27 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v28 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 67109120;
      v53[0].val[1] = v27;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", v53, 8u);
    }
  }

LABEL_61:
  v29 = fcntl(v14, 3, 0);
  if (fcntl(v14, 4, v29 | 4u) == -1 && *__error())
  {
    __error();
  }

  v30 = *(a2 + 48);
  if (v30)
  {
    *buf = nw_interface_get_index(v30);
    if (sa_family == 2)
    {
      if (!setsockopt(v14, 0, 25, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v31 = *__error();
        if (!v31)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v31 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v53[0].val[0] = 67109120;
        v53[0].val[1] = v31;
        v38 = "setsockopt() for IPPROTO_IP/IP_BOUND_IF failed %{darwin.errno}d";
        goto LABEL_141;
      }
    }

    else
    {
      if (!setsockopt(v14, 41, 125, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v32 = *__error();
        if (!v32)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v32 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v53[0].val[0] = 67109120;
        v53[0].val[1] = v32;
        v38 = "setsockopt() for IPPROTO_IPV6/IPV6_BOUND_IF failed %{darwin.errno}d";
LABEL_141:
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v38, v53, 8u);
        if (!a4)
        {
          goto LABEL_126;
        }

        goto LABEL_97;
      }
    }
  }

LABEL_96:
  if (!a4)
  {
    goto LABEL_126;
  }

LABEL_97:
  v39 = a4[4];
  if (v39 == 3)
  {
    v42 = *(*a4 + 40);
    *v53[0].val = *(*a4 + 24);
    *&v53[0].val[4] = v42;
    *buf = audit_token_to_pid(v53);
    if (!setsockopt(v14, 0xFFFF, 4359, buf, 4u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v43 = *__error();
      if (!v43)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v43 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v43;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  if (v39 == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4360, a4, 0x10u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v41 = *__error();
      if (!v41)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v41 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v41;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED_UUID failed %{darwin.errno}d";
LABEL_144:
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v45, v53, 8u);
    goto LABEL_126;
  }

  if (v39 != 1 || !setsockopt(v14, 0xFFFF, 4359, a4, 4u))
  {
    goto LABEL_126;
  }

  if (!*__error())
  {
    v40 = -6700;
LABEL_123:
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v40;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  v40 = *__error();
  if (v40)
  {
    goto LABEL_123;
  }

LABEL_126:
  if (!a5)
  {
LABEL_133:
    if (sa_family == 2)
    {
      v48 = 16;
    }

    else
    {
      v48 = 28;
    }

    memcpy((a1 + 104), v12, v48);
    v16 = 0;
    *(a1 + 132) = v48;
    *(a1 + 136) = v14;
    return v16;
  }

  bzero(v53, 0x3F1uLL);
  v46 = DomainNameToString(a5, 0, v53, 0);
  if (!v46)
  {
    if ((ne_session_set_socket_attributes() & 1) == 0)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
      }

      v47 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v56 = v53;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "ne_session_set_socket_attributes() failed for '%s'", buf, 0xCu);
      }
    }

    goto LABEL_133;
  }

  v16 = v46;
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

  return v16;
}

uint64_t _mdns_udp_socket_session_finalize(uint64_t a1)
{
  result = *(a1 + 136);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 136) = -1;
  }

  return result;
}

void _mdns_connection_session_send(uint64_t a1, NSObject *a2, int a3)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 96);
    *buf = 138412290;
    v12 = v9;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Sending message on connection %@", buf, 0xCu);
  }

  started = _mdns_create_and_start_connection_activity(*(a1 + 96), a3);
  v8 = *(a1 + 96);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___mdns_connection_session_send_block_invoke;
  v10[3] = &__block_descriptor_tmp_80_4897;
  v10[4] = started;
  v10[5] = a1;
  nw_connection_send(v8, a2, _nw_content_context_default_message, 1, v10);
}

void ___mdns_connection_session_send_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(*(a1 + 40) + 96))
    {
      nw_connection_end_activity();
      v4 = *(a1 + 32);
    }

    nw_release(v4);
  }

  if (a2)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 96))
    {

      _mdns_common_session_finish(v5, 3, 4294960543);
    }
  }
}

void _mdns_connection_session_invalidate(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    nw_connection_cancel(v2);
    v3 = *(a1 + 96);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _mdns_connection_session_activate(nw_connection_t *a1)
{
  os_retain(a1);
  v2 = a1[12];
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v2, _mdns_resolver_queue_s_queue);
  v3 = a1[12];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___mdns_connection_session_activate_block_invoke;
  v6[3] = &__block_descriptor_tmp_76_4899;
  v6[4] = a1;
  nw_connection_set_state_changed_handler(v3, v6);
  nw_connection_start(a1[12]);
  v4 = a1[12];
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 0x40000000;
  completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
  completion[3] = &__block_descriptor_tmp_78;
  completion[4] = a1;
  nw_connection_receive_message(v4, completion);
  return 0;
}

void ___mdns_connection_session_activate_block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if (v4[12])
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v5 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = nw_connection_state_to_string();
      v9 = *(*(a1 + 32) + 96);
      v10 = 136315394;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@", &v10, 0x16u);
    }

    switch(a2)
    {
      case 3:
        v6 = *(a1 + 32);
        if (*(v6 + 88) == 1 && (*(v6 + 90) & 1) == 0)
        {
          *(v6 + 90) = 1;
          v7 = **(v6 + 72);
          if (v7)
          {
            v7(v6, 1, 0, *(v6 + 48));
          }
        }

        break;
      case 4:
        _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
        break;
      case 5:
        v4 = *(a1 + 32);
LABEL_10:
        os_release(v4);
        break;
    }
  }

  else if (a2 == 5)
  {
    goto LABEL_10;
  }
}

void ___mdns_connection_session_schedule_receive_block_invoke(uint64_t a1, uint64_t a2, nw_content_context_t context, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 96))
  {
    if (a2)
    {
      _mdns_common_session_invoke_receive(v6, a2);
    }

    if (context)
    {
      is_final = nw_content_context_get_is_final(context);
    }

    else
    {
      is_final = 0;
    }

    v10 = *(a1 + 32);
    if (a5 || is_final)
    {
      if (a5)
      {
        v12 = 4294960543;
      }

      else
      {
        v12 = 0;
      }

      _mdns_common_session_finish(v10, 3, v12);
    }

    else
    {
      v11 = *(v10 + 96);
      completion[0] = _NSConcreteStackBlock;
      completion[1] = 0x40000000;
      completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
      completion[3] = &__block_descriptor_tmp_78;
      completion[4] = v10;
      nw_connection_receive_message(v11, completion);
    }
  }
}

uint64_t _mdns_connection_session_initialize(uint64_t a1, uint64_t a2, int a3, NSObject *a4, _BYTE *a5)
{
  v33 = 0;
  v8 = *(a2 + 16);
  if ((*(v8 + 158) & 1) != 0 || a3)
  {
    v13 = *(v8 + 112);
    if (v13)
    {
      v14 = v13(a2, &v33);
      if (v33)
      {
        return v33;
      }

      v12 = v14;
      v11 = 1;
      goto LABEL_9;
    }

    return -6735;
  }

  v9 = *(v8 + 104);
  if (!v9)
  {
    return -6735;
  }

  v10 = v9(a2, &v33);
  v11 = v33;
  if (v33)
  {
    return v33;
  }

  v12 = v10;
LABEL_9:
  *(a1 + 104) = v11;
  if (!a4)
  {
    goto LABEL_23;
  }

  if ((LODWORD(a4[2].isa) - 1) > 2)
  {
    a4 = 0;
    goto LABEL_23;
  }

  v15 = nw_parameters_copy(v12);
  if (!v15)
  {
    return -6729;
  }

  v12 = v15;
  isa = a4[2].isa;
  switch(isa)
  {
    case 3u:
      v19 = *(a4->isa + 40);
      *buf = *(a4->isa + 24);
      *&buf[16] = v19;
      nw_parameters_set_source_application();
      break;
    case 2u:
      nw_parameters_set_e_proc_uuid();
      break;
    case 1u:
      isa_low = LODWORD(a4->isa);
      nw_parameters_set_pid();
      break;
  }

  a4 = v12;
LABEL_23:
  v20 = *(a1 + 32);
  v21 = *(v20 + 48);
  if (a5)
  {
    address = nw_endpoint_get_address(*(v20 + 48));
    v23 = nw_endpoint_create_address(address);
    if (v23)
    {
      v24 = v23;
      bzero(buf, 0x3F1uLL);
      v25 = DomainNameToString(a5, 0, buf, 0);
      if (v25)
      {
        v29 = v25;
      }

      else
      {
        nw_endpoint_get_port(v24);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v27 = host_with_numeric_port;
          nw_endpoint_set_parent_endpoint();
          nw_release(v27);
          v21 = v24;
          goto LABEL_37;
        }

        v29 = -6729;
      }

      nw_release(v24);
      v28 = v29;
    }

    else
    {
      v28 = -6729;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v30 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to create domain-attributed endpoint for %@: %{mdns:err}ld", buf, 0x16u);
    }
  }

  v24 = 0;
LABEL_37:
  v31 = nw_connection_create(v21, v12);
  *(a1 + 96) = v31;
  if (v31)
  {
    if (!a4)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v33 = -6729;
  if (a4)
  {
LABEL_39:
    nw_release(a4);
  }

LABEL_40:
  if (v24)
  {
    nw_release(v24);
  }

  return v33;
}

void ___mdns_querier_conclude_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), *(a1 + 40), 0, 0);
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_querier_set_query(uint64_t a1, void *a2, __int16 a3, __int16 a4)
{
  mdns_query_message_set_qname(*(a1 + 96), a2);
  v7 = *(a1 + 96);
  if ((*(v7 + 70) & 0x20) == 0)
  {
    *(v7 + 64) = a3;
    *(v7 + 66) = a4;
  }
}

uint64_t _mdns_querier_get_internal_queue()
{
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  return _mdns_resolver_queue_s_queue;
}

void _mdns_querier_finalize(void *a1)
{
  a1[10] = 0;
  v2 = a1[9];
  if (v2)
  {
    os_release(v2);
    a1[9] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    _Block_release(v3);
    a1[11] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    os_release(v4);
    a1[12] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    free(v5);
    a1[16] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    os_release(v6);
    a1[17] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    os_release(v7);
    a1[20] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    os_release(v8);
    a1[24] = 0;
  }

  _mdns_querier_clear_delegation(a1);
}

void _mdns_querier_clear_delegation(uint64_t a1)
{
  v2 = *(a1 + 184);
  switch(v2)
  {
    case 3:
      v3 = *(a1 + 168);
      if (v3)
      {
        os_release(v3);
        *(a1 + 168) = 0;
      }

      break;
    case 2:
      uuid_clear((a1 + 168));
      break;
    case 1:
      *(a1 + 168) = 0;
      break;
  }

  *(a1 + 184) = 0;
}

void *_mdns_querier_copy_description(void *a1, int a2, char a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    goto LABEL_18;
  }

  if (mdns_string_builder_append_description(v7, *(a1[12] + 56), a3))
  {
    goto LABEL_18;
  }

  if (DNSRecordTypeValueToString(*(a1[12] + 64)) ? mdns_string_builder_append_formatted(v7, " %s") : mdns_string_builder_append_formatted(v7, " TYPE%u"))
  {
    goto LABEL_18;
  }

  v10 = *(a1[12] + 66);
  v11 = "ANY";
  if (v10 != 255)
  {
    v11 = 0;
  }

  if (v10 == 1)
  {
    v11 = "IN";
  }

  if (v11)
  {
    appended = mdns_string_builder_append_formatted(v7, " %s");
  }

  else
  {
    v14 = *(a1[12] + 66);
    appended = mdns_string_builder_append_formatted(v7, " CLASS%u");
  }

  if (appended)
  {
LABEL_18:
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void mdns_resolver_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_resolver_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_4_4921;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void __mdns_resolver_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    *(v2 + 136) = 1;
    v3 = *(v2 + 104);
    if (v3)
    {
      dispatch_source_cancel(*(v2 + 104));
      dispatch_release(v3);
      *(v2 + 104) = 0;
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      mdns_client_invalidate(v4);
      os_release(*(v2 + 112));
      *(v2 + 112) = 0;
    }

    while (1)
    {
      v8 = *(v2 + 24);
      if (!v8)
      {
        break;
      }

      *(v2 + 24) = *(v8 + 24);
      if (*(v8 + 56))
      {
        nw_path_evaluator_cancel();
        v5 = *(v8 + 56);
        if (v5)
        {
          nw_release(v5);
          *(v8 + 56) = 0;
        }
      }

      v6 = *(v8 + 32);
      if (v6)
      {
        _mdns_session_invalidate(v6);
        os_release(*(v8 + 32));
        *(v8 + 32) = 0;
      }

      v7 = *(v8 + 40);
      if (v7)
      {
        dispatch_source_cancel(*(v8 + 40));
        dispatch_release(v7);
        *(v8 + 40) = 0;
      }
    }

    _mdns_resolver_invalidate_and_forget_queriers((v2 + 32));
    _mdns_resolver_invalidate_and_forget_queriers((v2 + 40));
    v9 = *(v2 + 96);
    if (v9)
    {
      dispatch_source_cancel(*(v2 + 96));
      dispatch_release(v9);
      *(v2 + 96) = 0;
    }

    if (*(v2 + 80))
    {
      os_retain(v2);
      v10 = *(v2 + 72);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___mdns_resolver_invalidate_internal_block_invoke;
      block[3] = &__block_descriptor_tmp_48_4922;
      block[4] = v2;
      dispatch_async(v10, block);
    }
  }

  os_release(*(a1 + 32));
}

void _mdns_resolver_invalidate_and_forget_queriers(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    do
    {
      v2 = v1[8];
      v1[8] = 0;
      _mdns_querier_conclude_ex(v1, 4, 0, 0);
      os_release(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void ___mdns_resolver_invalidate_internal_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 80) + 16))();
  v2 = *(a1 + 32);

  os_release(v2);
}

void __mdns_resolver_prepare_for_system_sleep_block_invoke(id a1)
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v1 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Preparing for system sleep", v3, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  _http_task_shared_session_critical_region(&__block_literal_global_426);
  objc_autoreleasePoolPop(v2);
}

void mdns_querier_set_delegator_uuid(uint64_t a1, const unsigned __int8 *a2)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, a2);
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 2;
    uuid_copy((a1 + 168), dst);
  }
}

void mdns_querier_set_delegator_audit_token(uint64_t a1, void *object)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    os_retain(object);
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 3;
    *(a1 + 168) = object;
  }
}

void mdns_querier_set_result_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 88) = v3;
  }
}

void *SendPortMapRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  v5 = v4;
  if (!*(a2 + 176))
  {
    v5 = *(a2 + 174);
  }

  memset(v44, 0, 30);
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = bswap32(v5);
  v40 = 0u;
  v41 = 0u;
  v7 = *(a2 + 136);
  v8 = v7 + HIWORD(v6);
  v9 = *(a1 + 14720);
  if (!v9)
  {
LABEL_13:
    v25 = 0;
    v24 = 0;
    v22 = 0;
    v12 = v8;
    v23 = 0;
    mDNS_snprintf(&v24);
    v17 = bswap32(*(a2 + 174)) >> 16;
    mDNS_snprintf(&v22);
    mDNS_snprintf(v42);
    v20 = *(a1 + 12722);
    v21 = *(a1 + 12723);
    v18 = *(a1 + 12720);
    v19 = *(a1 + 12721);
    mDNS_snprintf(v44);
    *&v30 = "NewRemoteHost";
    *(&v30 + 1) = "string";
    *&v31 = "";
    *(&v31 + 1) = "NewExternalPort";
    *&v32 = "ui2";
    *(&v32 + 1) = &v24;
    *&v33 = "NewProtocol";
    *(&v33 + 1) = "string";
    if (*(a2 + 172) == 1)
    {
      v13 = "UDP";
    }

    else
    {
      v13 = "TCP";
    }

    *&v34 = v13;
    *(&v34 + 1) = "NewInternalPort";
    *&v35 = "ui2";
    *(&v35 + 1) = &v22;
    *&v36 = "NewInternalClient";
    *(&v36 + 1) = "string";
    *&v37 = v44;
    *(&v37 + 1) = "NewEnabled";
    *&v38 = "BOOLean";
    *(&v38 + 1) = "1";
    *&v39 = "NewPortMappingDescription";
    *(&v39 + 1) = "string";
    *&v40 = v42;
    *(&v40 + 1) = "NewLeaseDuration";
    *&v41 = "ui4";
    *(&v41 + 1) = "0";
    v14 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:
        v15 = bswap32(*(a2 + 174));
        *buf = 67109376;
        v27 = HIWORD(v15);
        v28 = 1024;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SendPortMapRequest: internal %u external %u", buf, 0xEu);
      }
    }

    else
    {
      v14 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }
    }

    return SendSOAPMsgControlAction(a1, a2 + 32, "AddPortMapping", 8, &v30, 3);
  }

  while (1)
  {
    if (v9 == a2)
    {
      goto LABEL_12;
    }

    v10 = *(v9 + 176);
    if (!*(v9 + 176))
    {
      v10 = *(v9 + 174);
    }

    if (*(v9 + 136) + (bswap32(v10) >> 16) != v8)
    {
      goto LABEL_12;
    }

    if (v7 > 99)
    {
      break;
    }

    *(a2 + 136) = ++v7;
    v11 = v4;
    if (!v4)
    {
      v11 = *(a2 + 174);
    }

    v8 = v7 + (bswap32(v11) >> 16);
    v9 = a1 + 14720;
LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  natTraversalHandlePortMapReplyWithAddress(a1, a2, *(a1 + 15016), 4, *(a1 + 14744), 0, 0, 2);
  return 0;
}

void *SendSOAPMsgControlAction(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v6 = a1 + 12288;
  if (!*(a1 + 15036) || !*(a1 + 15056) || !*(a1 + 15072))
  {
    v18 = mDNSLogCategory_NAT;
    TCPConnection = 4294901747;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v20 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return TCPConnection;
      }

      v32 = 0;
      v21 = &v32;
    }

    else
    {
      v18 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return TCPConnection;
      }

      *buf = 0;
      v21 = buf;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SendSOAPMsgControlAction: no SOAP port, URL or address string", v21, 2u);
    return TCPConnection;
  }

  v10 = a1 + 28960;
  *(a1 + 15048);
  v11 = mDNS_snprintf((a1 + 28960));
  v12 = (v10 + v11);
  *v12 = 0;
  if (a4 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = a4;
    v15 = (a5 + 16);
    do
    {
      v16 = *(v15 - 2);
      v17 = *v15;
      if (*(v15 - 1))
      {
        v27 = *v15;
      }

      else
      {
        v26 = *v15;
      }

      v13 += mDNS_snprintf(&v12[v13]);
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  mDNS_snprintf((a1 + 28960 + v13 + v11));
  result = *(a2 + 64);
  if (result)
  {
    goto LABEL_25;
  }

  result = malloc_type_malloc(0x2000uLL, 0xD77258D0uLL);
  if (result)
  {
    *(a2 + 64) = result;
LABEL_25:
    v24 = *(a1 + 15056);
    *(v6 + 2760);
    v28 = *(a1 + 15072);
    *(a2 + 72) = mDNS_snprintf(result);
    TCPConnection = MakeTCPConnection(a1, a2, (a1 + 12696), *(v6 + 2748), a6);
    if (TCPConnection)
    {
      v25 = *(a2 + 64);
      if (v25)
      {
        free(v25);
      }

      *(a2 + 64) = 0;
    }

    return TCPConnection;
  }

  __break(1u);
  return result;
}

uint64_t MakeTCPConnection(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, int a5)
{
  v32 = 0;
  v7 = a4;
  if (a3[1])
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 4294901747;
    v10 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }
    }

    else
    {
      v10 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return v9;
      }
    }

    *buf = 141558787;
    v34 = 1752392040;
    v35 = 1045;
    v36 = 20;
    v37 = 2101;
    v38 = a3;
    v39 = 1024;
    v40 = bswap32(a4) >> 16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LNT MakeTCPConnection: bad address/port %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d", buf, 0x22u);
    return v9;
  }

  *(a2 + 8) = a1;
  v14 = *a3;
  *(a2 + 52) = a3[4];
  *(a2 + 36) = v14;
  *(a2 + 56) = a4;
  *(a2 + 32) = a5;
  *(a2 + 96) = 0;
  *(a2 + 88) = 0x2000;
  v15 = *(a2 + 80);
  if (v15)
  {
    bzero(v15, 0x2000uLL);
    goto LABEL_19;
  }

  result = malloc_type_malloc(0x2000uLL, 0x305E34D6uLL);
  if (result)
  {
    *(a2 + 80) = result;
LABEL_19:
    if (!*(a2 + 24))
    {
      goto LABEL_28;
    }

    v18 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v18 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MakeTCPConnection: closing previous open connection", buf, 2u);
      }
    }

    mDNSPlatformTCPCloseConnection(*(a2 + 24));
    *(a2 + 24) = 0;
LABEL_28:
    v19 = mDNSPlatformTCPSocket(0, *a3, &v32, 0, 0);
    *(a2 + 24) = v19;
    v20 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v21 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v21 = 1;
    }

    v22 = v21;
    if (v19)
    {
      if (v22)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v20 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }
      }

      v24 = bswap32(*(a2 + 56)) >> 16;
      *buf = 141558787;
      v34 = 1752392040;
      v35 = 1045;
      v36 = 20;
      v37 = 2101;
      v38 = (a2 + 36);
      v39 = 1024;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MakeTCPConnection: connecting to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d", buf, 0x22u);
LABEL_43:
      v25 = mDNSPlatformTCPConnect(*(a2 + 24), a3, v7, 0, tcpConnectionCallback, a2);
      if (v25 == -65787)
      {
        return 0;
      }

      v9 = v25;
      if (v25 == -65789)
      {
        v26 = *(a1 + 48);
        v27 = *(a1 + 52) + 1;
        *(a1 + 52) = v27;
        mDNS_VerifyLockState("Drop Lock", 0, v26, v27, "MakeTCPConnection", 571);
        tcpConnectionCallback(*(a2 + 24), a2, 1, 0);
        mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "MakeTCPConnection", 573);
        v9 = 0;
        --*(a1 + 52);
        return v9;
      }

      v28 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          goto LABEL_59;
        }
      }

      else
      {
        v28 = mDNSLogCategory_NAT_redacted;
        if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
LABEL_59:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "LNT MakeTCPConnection: connection failed", buf, 2u);
        }
      }

      mDNSPlatformTCPCloseConnection(*(a2 + 24));
      *(a2 + 24) = 0;
      v31 = *(a2 + 80);
      if (v31)
      {
        free(v31);
      }

      *(a2 + 80) = 0;
      return v9;
    }

    if (v22)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = v20;
LABEL_53:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LNT MakeTCPConnection: unable to create TCP socket", buf, 2u);
      }
    }

    else
    {
      v29 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = v29;
        goto LABEL_53;
      }
    }

    v30 = *(a2 + 80);
    if (v30)
    {
      free(v30);
    }

    *(a2 + 80) = 0;
    return 4294901757;
  }

  __break(1u);
  return result;
}

void tcpConnectionCallback(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  v69 = 0;
  v8 = *(a2 + 24);
  if (v8 == a1)
  {
    goto LABEL_17;
  }

  v9 = mDNSLogCategory_NAT;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v10 = mDNSLogCategory_NAT == mDNSLogCategory_State;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  *buf = 134218240;
  v71 = v8;
  v72 = 2048;
  *v73 = a1;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tcpConnectionCallback: WARNING- tcpInfo->sock(%p) != sock(%p) !!! Printing tcpInfo struct", buf, 0x16u);
LABEL_11:
  v12 = mDNSLogCategory_NAT;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }
  }

  v13 = bswap32(*(a2 + 56));
  v14 = *(a2 + 32);
  v15 = *(a2 + 104);
  v16 = *(a2 + 64);
  v17 = *(a2 + 80);
  *buf = 141560323;
  v71 = 1752392040;
  v72 = 1045;
  *v73 = 20;
  *&v73[4] = 2101;
  *&v73[6] = a2 + 36;
  *&v73[14] = 1024;
  *&v73[16] = HIWORD(v13);
  LOWORD(v74) = 1024;
  *(&v74 + 2) = v14;
  HIWORD(v74) = 1024;
  v75 = v15;
  v76 = 2160;
  v77 = 1752392040;
  v78 = 2085;
  v79 = v16;
  v80 = 2160;
  v81 = 1752392040;
  v82 = 2085;
  v83 = v17;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "tcpConnectionCallback: tcpInfo->Address:Port [%{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d] tcpInfo->op[%u] tcpInfo->retries[%d] tcpInfo->Request[%{sensitive, mask.hash}s] tcpInfo->Reply[%{sensitive, mask.hash}s]", buf, 0x56u);
LABEL_17:
  mDNS_Lock_(*(a2 + 8), "tcpConnectionCallback", 409);
  if (!a4)
  {
    if (a3)
    {
      v21 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_75;
        }

        *buf = 0;
      }

      else
      {
        v21 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_75;
        }

        *buf = 0;
      }

      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "tcpConnectionCallback: connection established, sending message", buf, 2u);
LABEL_75:
      if (mDNSPlatformWriteTCP(a1, *(a2 + 64), *(a2 + 72)) != *(a2 + 72))
      {
        v18 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          *buf = 0;
          v20 = "tcpConnectionCallback: error writing";
        }

        else
        {
          v18 = mDNSLogCategory_NAT_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          *buf = 0;
          v20 = "tcpConnectionCallback: error writing";
        }

        goto LABEL_32;
      }

LABEL_76:
      tcpConnectionCallback_LNTERRORcount = 0;
      mDNS_Unlock_(*(a2 + 8), "tcpConnectionCallback", 523);
      return;
    }

    v42 = mDNSPlatformReadTCP(a1, (*(a2 + 80) + *(a2 + 96)), *(a2 + 88) - *(a2 + 96), &v69);
    v43 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 134217984;
      v71 = v42;
    }

    else
    {
      v43 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 134217984;
      v71 = v42;
    }

    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "tcpConnectionCallback: mDNSPlatformReadTCP read %ld bytes", buf, 0xCu);
LABEL_96:
    if (v42 < 0)
    {
      v54 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *buf = 134217984;
        v71 = v42;
        v20 = "tcpConnectionCallback - read returned %ld";
      }

      else
      {
        v54 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *buf = 134217984;
        v71 = v42;
        v20 = "tcpConnectionCallback - read returned %ld";
      }

      v23 = v54;
LABEL_144:
      v24 = 12;
      goto LABEL_33;
    }

    if (v69)
    {
      v47 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v64 = *(a2 + 96);
        *buf = 134217984;
        v71 = v64;
        v20 = "tcpConnectionCallback: socket closed by remote end %lu";
      }

      else
      {
        v47 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v48 = *(a2 + 96);
        *buf = 134217984;
        v71 = v48;
        v20 = "tcpConnectionCallback: socket closed by remote end %lu";
      }

      v23 = v47;
      goto LABEL_144;
    }

    v55 = *(a2 + 96) + v42;
    *(a2 + 96) = v55;
    v56 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_148;
      }

      *buf = 134217984;
      v71 = v55;
    }

    else
    {
      v56 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_148;
      }

      *buf = 134217984;
      v71 = v55;
    }

    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "tcpConnectionCallback tcpInfo->nread %lu", buf, 0xCu);
LABEL_148:
    if (*(a2 + 96) <= 0x2000uLL)
    {
      goto LABEL_157;
    }

    v65 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_155;
      }
    }

    else
    {
      v65 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_155:
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "result truncated...", buf, 2u);
      }
    }

    *(a2 + 96) = 0x2000;
LABEL_157:
    v66 = *(a2 + 32);
    if (v66 > 2)
    {
      if (v66 == 3)
      {
        handleLNTPortMappingResponse(a2, v57, v58, v59, v60, v61, v62, v63, v68);
        goto LABEL_76;
      }

      if (v66 == 4)
      {
        v25 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      if (v66 == 1)
      {
        handleLNTDeviceDescriptionResponse(a2, v57, v58, v59, v60, v61, v62, v63, v68);
        goto LABEL_76;
      }

      if (v66 == 2)
      {
        handleLNTGetExternalAddressResponse(a2);
        goto LABEL_76;
      }
    }

    v67 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 67109120;
      LODWORD(v71) = v66;
      v20 = "tcpConnectionCallback: bad tcp operation! %u";
    }

    else
    {
      v67 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 67109120;
      LODWORD(v71) = v66;
      v20 = "tcpConnectionCallback: bad tcp operation! %u";
    }

    v23 = v67;
    v24 = 8;
    goto LABEL_33;
  }

  v18 = mDNSLogCategory_NAT;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v19 = mDNSLogCategory_NAT == mDNSLogCategory_State;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v18 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v20 = "tcpConnectionCallback: received error";
    goto LABEL_32;
  }

  if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v20 = "tcpConnectionCallback: received error";
LABEL_32:
    v23 = v18;
    v24 = 2;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v20, buf, v24);
  }

LABEL_34:
  v25 = 0;
LABEL_35:
  v26 = *(a2 + 8);
  v27 = tcpConnectionCallback_LNTERRORcount;
  if (!tcpConnectionCallback_LNTERRORcount || (*(v26 + 64) - tcpConnectionCallback_lastErrorTime) >= 0x3E8)
  {
    tcpConnectionCallback_lastErrorTime = *(v26 + 64);
    tcpConnectionCallback_LNTERRORcount = 1;
    goto LABEL_43;
  }

  tcpConnectionCallback_lastErrorTime = *(v26 + 64);
  v28 = ++tcpConnectionCallback_LNTERRORcount;
  HIDWORD(v29) = 652835029 * (v27 + 1);
  LODWORD(v29) = HIDWORD(v29);
  if ((v29 >> 3) > 0x418937)
  {
    goto LABEL_43;
  }

  v30 = mDNSLogCategory_NAT;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_132;
    }

    *buf = 67109120;
    LODWORD(v71) = v28;
  }

  else
  {
    v30 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_132;
    }

    *buf = 67109120;
    LODWORD(v71) = v28;
  }

  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "ERROR: tcpconnectioncallback -> got error status %u times", buf, 8u);
LABEL_132:
  if (tcpConnectionCallback_LNTERRORcount >= 0x3E8)
  {
    __assert_rtn("tcpConnectionCallback", "LegacyNATTraversal.c", 481, "LNTERRORcount < 1000");
  }

LABEL_43:
  v31 = *(a2 + 32);
  switch(v31)
  {
    case 3:
      v38 = *(a2 + 16);
      if (!v38)
      {
        goto LABEL_107;
      }

      v39 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v40 = "failure";
        v41 = *(v38 + 168);
        if (!v41)
        {
          v40 = "success";
        }
      }

      else
      {
        v39 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v40 = "failure";
        v41 = *(v38 + 168);
        if (!v41)
        {
          v40 = "success";
        }
      }

      *buf = 136446466;
      v71 = v40;
      v72 = 1024;
      *v73 = v41;
      v37 = "tcpConnectionCallback: PortMapRequest %{public}s result %d";
      v45 = v39;
      v46 = 18;
      break;
    case 2:
      v35 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        if (*(v26 + 14744))
        {
          v44 = "success";
        }

        else
        {
          v44 = "failure";
        }

        *buf = 136446210;
        v71 = v44;
        v37 = "tcpConnectionCallback: AddressRequest %{public}s";
      }

      else
      {
        v35 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        if (*(v26 + 14744))
        {
          v36 = "success";
        }

        else
        {
          v36 = "failure";
        }

        *buf = 136446210;
        v71 = v36;
        v37 = "tcpConnectionCallback: AddressRequest %{public}s";
      }

      v45 = v35;
      v46 = 12;
      break;
    case 1:
      v32 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v33 = *(v26 + 15072);
        v34 = "NULL";
        if (!v33)
        {
          v33 = "NULL";
        }

        if (*(v26 + 15056))
        {
          v34 = *(v26 + 15056);
        }
      }

      else
      {
        v32 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v33 = *(v26 + 15072);
        v34 = "NULL";
        if (!v33)
        {
          v33 = "NULL";
        }

        if (*(v26 + 15056))
        {
          v34 = *(v26 + 15056);
        }
      }

      *buf = 141558787;
      v71 = 1752392040;
      v72 = 2085;
      *v73 = v33;
      *&v73[8] = 2160;
      *&v73[10] = 1752392040;
      *&v73[18] = 2085;
      v74 = v34;
      v37 = "tcpConnectionCallback: DeviceDescription SOAP address %{sensitive, mask.hash}s SOAP path %{sensitive, mask.hash}s";
      v45 = v32;
      v46 = 42;
      break;
    default:
      goto LABEL_107;
  }

  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v37, buf, v46);
LABEL_107:
  mDNSPlatformTCPCloseConnection(a1);
  *(a2 + 24) = 0;
  v49 = *(a2 + 64);
  if (v49)
  {
    free(v49);
    *(a2 + 64) = 0;
  }

  v50 = *(a2 + 80);
  if (v50)
  {
    free(v50);
    *(a2 + 80) = 0;
    mDNS_Unlock_(*(a2 + 8), "tcpConnectionCallback", 523);
    if ((v25 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    mDNS_Unlock_(*(a2 + 8), "tcpConnectionCallback", 523);
    if (!v25)
    {
      return;
    }
  }

  v51 = (*(a2 + 8) + 15008);
  do
  {
    v52 = v51;
    v51 = *v51;
    if (v51)
    {
      v53 = v51 == a2;
    }

    else
    {
      v53 = 1;
    }
  }

  while (!v53);
  if (v51)
  {
    *v52 = *v51;
    if (a2)
    {
      free(a2);
    }
  }
}

void handleLNTDeviceDescriptionResponse(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a1[1];
  v10 = a1[10];
  v39 = v10;
  if (*(v9 + 15036))
  {
    return;
  }

  v12 = a1[12];
  v13 = &v10[v12];
  v14 = ParseHTTPResponseCode(&v39, &v10[v12]);
  if (v14 != 200)
  {
    v20 = v14;
    if (v14 == 404)
    {
      LNT_ClearState(v9);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTDeviceDescriptionResponse: HTTP Result code: %d", v15, v16, v17, v18, v19, v20);
    }

    return;
  }

  *(v9 + 15048) = 0;
  v21 = v39;
  if (v39 && v39 < v13)
  {
    do
    {
      if ((*v21 & 0xDF) == 0x57 && !strncasecmp(v21, "WANIPConnection:1", 0x11uLL))
      {
        break;
      }

      if (!++v21)
      {
        break;
      }
    }

    while (v21 < v13);
  }

  v39 = v21;
  if (v21 == v13)
  {
    v21 = a1[10];
    if (v21 && v21 < v13)
    {
      while ((*v21 & 0xDF) != 0x57 || strncasecmp(v21, "WANPPPConnection:1", 0x12uLL))
      {
        if (!++v21 || v21 >= v13)
        {
          goto LABEL_21;
        }
      }

      v39 = v21;
      *(v9 + 15048) = 1;
      goto LABEL_23;
    }

LABEL_21:
    v39 = v21;
  }

  if (!v21)
  {
LABEL_62:
    if (mDNS_LoggingEnabled != 1)
    {
      return;
    }

    v33 = mDNSLogCategory_Default;
    v34 = "handleLNTDeviceDescriptionResponse: didn't find WANIPConnection:1 or WANPPPConnection:1 string";
    goto LABEL_64;
  }

LABEL_23:
  if (v21 == v13)
  {
    goto LABEL_62;
  }

  while (v21 < v13)
  {
    if ((*v21 & 0xDF) == 0x43 && !strncasecmp(v21, "controlURL", 0xAuLL))
    {
      break;
    }

    if (!++v21)
    {
      break;
    }
  }

  if (!v21 || v21 == v13)
  {
    if (mDNS_LoggingEnabled != 1)
    {
      return;
    }

    v33 = mDNSLogCategory_Default;
    v34 = "handleLNTDeviceDescriptionResponse: didn't find controlURL string";
LABEL_64:

    LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, v34, v15, v16, v17, v18, v19, a9);
    return;
  }

  v22 = (v21 + 11);
  v39 = v21 + 11;
  if ((v21 + 11) >= v13)
  {
    if (mDNS_LoggingEnabled != 1)
    {
      return;
    }

    v33 = mDNSLogCategory_Default;
    v34 = "handleLNTDeviceDescriptionResponse: past end of buffer and no body!";
    goto LABEL_64;
  }

  v23 = &v10[v12] - v21 - 11;
  v24 = v21 + 11;
  while (*v24 != 60)
  {
    ++v24;
    if (!--v23)
    {
      v24 = &v10[v12];
      break;
    }
  }

  *(v9 + 15036) = *(v9 + 15034);
  v25 = *(v9 + 15072);
  if (v25)
  {
    free(v25);
    *(v9 + 15072) = 0;
  }

  v26 = *(v9 + 15056);
  if (v26)
  {
    free(v26);
    *(v9 + 15056) = 0;
  }

  if (!ParseHttpUrl(v22, v24, (v9 + 15072), (v9 + 15036), (v9 + 15056)))
  {
    v28 = *(v9 + 15072);
    if (v28)
    {
      goto LABEL_73;
    }

    v29 = a1[10];
    v30 = v29 < v24;
    if (v29 && v29 < v24)
    {
      while ((*v29 & 0xDF) != 0x55 || strncasecmp(v29, "URLBase", 7uLL))
      {
        v30 = ++v29 < v24;
        if (!v29 || v29 >= v24)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      if (!v30)
      {
        goto LABEL_71;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTDeviceDescriptionResponse: found URLBase", v15, v16, v17, v18, v19, v38);
    }

    v39 = (v29 + 8);
    if (v29 + 8 < v24)
    {
      v31 = &v24[-v29 - 8];
      v32 = (v29 + 8);
      while (!v32 || *v32 != 60)
      {
        ++v32;
        if (!--v31)
        {
          goto LABEL_68;
        }
      }

      v24 = v32;
    }

LABEL_68:
    if (ParseHttpUrl(v29 + 8, v24, (v9 + 15072), (v9 + 15036), 0) && mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTDeviceDescriptionResponse: failed to parse URLBase", v15, v16, v17, v18, v19, v38);
    }

LABEL_71:
    v28 = *(v9 + 15072);
    if (!v28)
    {
      AllocAndCopy((v9 + 15072), *(v9 + 15064), v27, v15, v16, v17, v18, v19, v38);
      v28 = *(v9 + 15072);
      if (!v28)
      {
        v35 = mDNSLogCategory_Default;
        v36 = "handleLNTDeviceDescriptionResponse: UPnPSOAPAddressString is NULL";
        goto LABEL_75;
      }
    }

LABEL_73:
    if (mDNS_LoggingEnabled != 1)
    {
      goto LABEL_76;
    }

    v35 = mDNSLogCategory_Default;
    v38 = v28;
    v36 = "handleLNTDeviceDescriptionResponse: SOAP address string [%s]";
LABEL_75:
    LogMsgWithLevel(v35, OS_LOG_TYPE_DEFAULT, v36, v15, v16, v17, v18, v19, v38);
LABEL_76:
    v37 = *(v9 + 15056);
    if (v37 || (AllocAndCopy((v9 + 15056), *(v9 + 15040), v27, v15, v16, v17, v18, v19, v38), (v37 = *(v9 + 15056)) != 0))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTDeviceDescriptionResponse: SOAP URL [%s]", v15, v16, v17, v18, v19, v37);
      }

      return;
    }

    v33 = mDNSLogCategory_Default;
    v34 = "handleLNTDeviceDescriptionResponse: UPnPSOAPURL is NULL";
    goto LABEL_64;
  }
}

void handleLNTGetExternalAddressResponse(void *a1)
{
  v1 = a1[1];
  v28 = 0;
  v2 = a1[10];
  v27 = v2;
  v3 = a1[12];
  v4 = &v2[v3];
  v5 = ParseHTTPResponseCode(&v27, &v2[v3]);
  v11 = v5;
  if (v5 == 404)
  {
    LNT_ClearState(v1);
LABEL_22:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTGetExternalAddressResponse: HTTP Result code: %d", v6, v7, v8, v9, v10, v11);
    }

    return;
  }

  if (v5 != 200)
  {
    goto LABEL_22;
  }

  v12 = v27;
  if (v27 < v4)
  {
    v13 = &v2[v3] - v27;
    while (strncasecmp(v12, handleLNTGetExternalAddressResponse_tagname, 0x14uLL))
    {
      ++v12;
      if (!--v13)
      {
        v12 = &v2[v3];
        break;
      }
    }
  }

  v14 = (v12 + 20);
  v27 = v12 + 20;
  if ((v12 + 20) < v4)
  {
    v15 = &v2[v3] - v12 - 20;
    while (*v14 != 62)
    {
      v27 = ++v14;
      if (!--v15)
      {
        v14 = &v2[v3];
        break;
      }
    }
  }

  v16 = (v14 + 1);
  v27 = (v14 + 1);
  if (v14 + 1 < v4)
  {
    v17 = &v2[v3 + ~v14];
    while (1)
    {
      v18 = *v16;
      if (v18 != 46 && (v18 - 48) > 9)
      {
        break;
      }

      ++v16;
      if (!--v17)
      {
        return;
      }
    }

    *v16 = 0;
    v20 = v27;
    if (inet_pton(2, v27, &v28) <= 0)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTGetExternalAddressResponse: Router returned bad address %s", v21, v22, v23, v24, v25, v20);
      v28 = 0;
      v26 = 3;
    }

    else
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTGetExternalAddressResponse: External IP address is %.4a", v21, v22, v23, v24, v25, &v28);
      }

      v26 = 0;
    }

    natTraversalHandleAddressReply(v1, v26, v28, v21, v22, v23, v24, v25);
  }
}

void handleLNTPortMappingResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 80);
  v48 = v11;
  v12 = *(a1 + 96);
  v13 = &v11[v12];
  v14 = v10 + 14720;
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    if (v14 == *(a1 + 16))
    {
      v20 = ParseHTTPResponseCode(&v48, &v11[v12]);
      if (v20 <= 0x1F3u)
      {
        if (v20 == 200)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v32 = *(v14 + 174);
            v33 = bswap32(v32) >> 16;
            if (*(v14 + 176))
            {
              v32 = *(v14 + 176);
            }

            v45 = *(v14 + 136) + (bswap32(v32) >> 16);
            v47 = *(a1 + 104);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTPortMappingResponse: got a valid response, sending reply to natTraversalHandlePortMapReply(internal %d external %d retries %d)", v15, v16, v17, v18, v19, v33);
          }

          v34 = *(v14 + 176);
          if (!*(v14 + 176))
          {
            v34 = *(v14 + 174);
          }

          v35 = bswap32(*(v14 + 136) + (bswap32(v34) >> 16)) >> 16;
          *(a1 + 104) = 0;
          natTraversalHandlePortMapReplyWithAddress(v10, v14, *(v10 + 15016), 0, *(v10 + 14744), v35, 7200, 2);
        }

        else if (v20 == 404)
        {
          LNT_ClearState(v10);
        }

        goto LABEL_42;
      }

      if (v20 == 65534)
      {
        v30 = mDNSLogCategory_Default;
        v31 = "handleLNTPortMappingResponse got unexpected response code";
      }

      else
      {
        if (v20 != 65533)
        {
          if (v20 == 500)
          {
            v21 = v48;
            if (v48)
            {
              if (v48 != v13)
              {
                v22 = &v11[v12] - v48;
                while (1)
                {
                  v23 = *v21;
                  if ((v23 & 0xFFFFFFDF) != 0x43 || v22 < 8)
                  {
                    if (v23 != 62 || v22 < 15)
                    {
                      goto LABEL_22;
                    }

                    v26 = v21;
                    v27 = ">718</errorCode";
                    v28 = 15;
                  }

                  else
                  {
                    v26 = v21;
                    v27 = "Conflict";
                    v28 = 8;
                  }

                  if (!strncasecmp(v26, v27, v28))
                  {
                    v36 = *(a1 + 104);
                    if (v36 > 99)
                    {
                      v46 = bswap32(*(v14 + 176)) >> 16;
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTPortMappingResponse too many conflict retries %d %d", v15, v16, v17, v18, v19, bswap32(*(v14 + 174)) >> 16);
                      v42 = *(v10 + 15016);
                      v43 = *(v10 + 14744);

                      natTraversalHandlePortMapReplyWithAddress(v10, v14, v42, 4, v43, 0, 0, 2);
                    }

                    else
                    {
                      *(a1 + 104) = v36 + 1;
                      SendPortMapRequest(*(a1 + 8), v14);
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTPortMappingResponse: Conflict retry %d", v37, v38, v39, v40, v41, *(a1 + 104));
                      }
                    }

                    return;
                  }

LABEL_22:
                  if (++v21)
                  {
                    --v22;
                    if (v21 != v13)
                    {
                      continue;
                    }
                  }

                  break;
                }
              }
            }
          }

LABEL_42:
          if (mDNS_LoggingEnabled == 1 && v20 != 200 && v20 != 500)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handleLNTPortMappingResponse: HTTP Result code: %d", v15, v16, v17, v18, v19, v20);
          }

          return;
        }

        v30 = mDNSLogCategory_Default;
        v31 = "handleLNTPortMappingResponse got data that was not a valid HTTP response";
      }

      LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, v31, v15, v16, v17, v18, v19, v44);
      goto LABEL_42;
    }
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v29 = mDNSLogCategory_Default;

    LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "handleLNTPortMappingResponse: can't find matching tcpInfo in NATTraversals!", a4, a5, a6, a7, a8, a9);
  }
}