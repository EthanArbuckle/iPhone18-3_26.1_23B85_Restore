char *put_hex_from_bytes(unsigned __int8 *a1, uint64_t a2, char *__str, unint64_t a4)
{
  v4 = __str;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (2 * a2 < a4)
      {
        v6 = a1;
        v7 = &__str[a4];
        do
        {
          v8 = *v6++;
          v4 += snprintf(v4, v7 - v4, "%02X", v8);
          --v5;
        }

        while (v5);
      }
    }
  }

  return v4;
}

void _dnssec_obj_rr_nsec3_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

uint64_t _dnssec_obj_rr_nsec3_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 3;
  }

  v6 = *(*(a2 + 16) + 16);
  if (!domain_name_labels_get_parent(*(*(a1 + 16) + 16), 1uLL))
  {
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = mDNSLogCategory_DNSSEC;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    v12 = 136447234;
    v13 = "my_parent != NULL";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
    v18 = 1024;
    v19 = 205;
    v20 = 2048;
    v21 = 0;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v12, 0x30u);
    return 2;
  }

  if (!domain_name_labels_get_parent(v6, 1uLL))
  {
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      v10 = mDNSLogCategory_DNSSEC;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    v12 = 136447234;
    v13 = "others_parent != NULL";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
    v18 = 1024;
    v19 = 208;
    v20 = 2048;
    v21 = 0;
    goto LABEL_25;
  }

  if (domain_name_labels_canonical_compare())
  {
    return 2;
  }

  v7 = *(*(a1 + 16) + 16);
  v8 = *(*(a2 + 16) + 16);

  return domain_name_label_canonical_compare(v7, v8, 0);
}

BOOL dnssec_obj_rr_nsec3_asserts_name_exists_data_does_not_exist(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + *(v6 + 4) + 5 + *(v6 + *(v6 + 4) + 5) + 1);
  v8 = *(a1 + 36) - (*(v6 + 4) + 5 + *(v6 + *(v6 + 4) + 5) + 1);
  if (rdata_parser_type_bit_maps_cover_dns_type(v7, v8, a4))
  {
    return 0;
  }

  v10 = &v7[v8];
  if ((v7 + 1) < v10)
  {
    v11 = 0;
    do
    {
      v12 = v7[1];
      v13 = &v7[v12 + 2];
      if (v13 > v10)
      {
        break;
      }

      if (!*v7 && v12 != 0)
      {
        v11 |= (v7[2] & 4) >> 2;
      }

      v7 += v12 + 2;
    }

    while (v13 + 1 < v10);
    if (v11)
    {
      return 0;
    }
  }

  nsec3_hashed_name = dnssec_obj_domain_name_get_nsec3_hashed_name(a2, a1);
  if (nsec3_hashed_name)
  {
    return ref_count_obj_compare(*(a1 + 16), nsec3_hashed_name, 1) == 0;
  }

  v16 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v17 = 136447234;
      v18 = "hashed_name != NULL";
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
      v23 = 1024;
      v24 = 316;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v17, 0x30u);
      return 0;
    }
  }

  else
  {
    v16 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t dnssec_obj_rr_nsec3_asserts_name_does_not_exist(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 80);
  nsec3_hashed_name = dnssec_obj_domain_name_get_nsec3_hashed_name(a2, a1);
  if (nsec3_hashed_name)
  {
    v7 = nsec3_hashed_name;
    v8 = *(a1 + 88);
    v9 = ref_count_obj_compare(v4, nsec3_hashed_name, 0);
    if (v8)
    {
      if (v9 == -1)
      {
        return 1;
      }

      return ref_count_obj_compare(v7, v5, 0) == -1;
    }

    if (v9 == -1)
    {
      return ref_count_obj_compare(v7, v5, 0) == -1;
    }

    return 0;
  }

  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = mDNSLogCategory_DNSSEC;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_18:
      v13 = 136447234;
      v14 = "hashed_name != NULL";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
      v19 = 1024;
      v20 = 339;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  else
  {
    v12 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_18;
    }
  }

  return result;
}

void _mdns_dso_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    free(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    free(v6);
    *(a1 + 96) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v7);
    *(a1 + 72) = 0;
  }
}

char *_mdns_dso_session_copy_description(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 200);
  if (v2)
  {

    return v2();
  }

  else
  {
    result = strdup("<This is a DSO session object.>");
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

double _mdns_dso_session_init(uint64_t a1)
{
  result = 1.27561485e-307;
  *(a1 + 116) = 0x36EE8000003A98;
  *(a1 + 40) = atomic_fetch_add_explicit(&_mdns_dso_session_get_next_id_s_last_id, 1uLL, memory_order_relaxed) + 1;
  return result;
}

void *_mdns_dso_client_session_copy_description(uint64_t a1, int a2, char a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && (appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1), (*(v25 + 6) = appended) != 0))
    {
      v9 = 0;
    }

    else
    {
      mdns_string_builder_append_formatted(v7, "[DSO%llu", *(a1 + 40));
      if ((*(a1 + 124) & 1) == 0)
      {
        mdns_string_builder_append_formatted(v7, " inactive");
      }

      if (*(a1 + 214) - 1 > 8)
      {
        v10 = "invalid_session_state";
      }

      else
      {
        v10 = (&off_100152C58)[(*(a1 + 214) - 1)];
      }

      mdns_string_builder_append_formatted(v7, " %s", v10);
      if (CFArrayGetCount(*(a1 + 152)) < 1)
      {
        v12 = *(a1 + 136);
        if (v12)
        {
          mdns_string_builder_append_description_with_prefix(v7, " ", v12, a3);
          mdns_string_builder_append_formatted(v7, "@interface %u", *(a1 + 208));
        }
      }

      else
      {
        v23[0] = 0;
        v23[1] = v23;
        v23[2] = 0x2000000000;
        v23[3] = " ";
        v11 = *(a1 + 152);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 0x40000000;
        v21[2] = ___mdns_dso_client_session_copy_description_block_invoke;
        v21[3] = &unk_100152BB8;
        v21[5] = v23;
        v21[6] = v7;
        v21[4] = &v24;
        v22 = a3;
        mdns_cfarray_enumerate(v11, v21);
        _Block_object_dispose(v23, 8);
      }

      v13 = *(a1 + 176);
      if (v13)
      {
        if (*(a1 + 136))
        {
          v14 = "->";
        }

        else
        {
          v14 = " ";
        }

        mdns_string_builder_append_description_with_prefix(v7, v14, v13, a3);
      }

      v15 = *(a1 + 80);
      if (v15)
      {
        v16 = nw_connection_copy_description(v15);
        if (v16)
        {
          v17 = v16;
          mdns_string_builder_append_formatted(v7, ", %s", v16);
          free(v17);
        }
      }

      mdns_string_builder_append_formatted(v7, ", activity count: %zu", *(a1 + 104));
      if (*(a1 + 32))
      {
        v18 = mach_continuous_time() - *(a1 + 32);
        if (v18 >= 1)
        {
          v19 = mdns_ticks_to_milliseconds(v18);
          mdns_string_builder_append_formatted(v7, ", last activity %llums ago", v19);
        }
      }

      mdns_string_builder_append_formatted(v7, ", inactivity timeout: %ums, keepalive interval: %ums", *(a1 + 128), *(a1 + 132));
      mdns_string_builder_append_formatted(v7, ", keepalive msg id: %u", *(a1 + 212));
      if (*(a1 + 215) == 1)
      {
        mdns_string_builder_append_formatted(v7, ", reports connection error");
      }

      mdns_string_builder_append_formatted(v7, "]");
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v9;
}

BOOL ___mdns_dso_client_session_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void _mdns_dso_client_session_invalidate(uint64_t a1)
{
  _mdns_dso_client_session_schedule_user_event(a1, 5, 0);
  v2 = *(a1 + 200);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 200) = 0;
  }
}

void _mdns_dso_client_session_schedule_user_event(uint64_t a1, char a2, int a3)
{
  if (*(a1 + 200))
  {
    os_retain(a1);
    v6 = _Block_copy(*(a1 + 200));
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___mdns_dso_client_session_schedule_user_event_block_invoke;
    block[3] = &unk_100152B50;
    v10 = a2;
    v9 = a3;
    block[4] = v6;
    block[5] = a1;
    dispatch_async(v7, block);
  }
}

void ___mdns_dso_client_session_schedule_user_event_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 52);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  os_release(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {

    _Block_release(v4);
  }
}

BOOL _mdns_dso_client_session_check_and_move_to_done_state(uint64_t a1)
{
  v1 = *(a1 + 214);
  if (v1 != 9)
  {
    *(a1 + 214) = 9;
  }

  return v1 != 9;
}

void _mdns_dso_client_session_close(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = *(a1 + 184);
  if (v12)
  {
    dispatch_source_cancel(*(a1 + 184));
    dispatch_release(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 176);
  if (!v14)
  {
LABEL_11:
    if (a5)
    {
      goto LABEL_12;
    }

LABEL_22:
    if (!a6)
    {
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    if (a4)
    {
      v15 = mach_continuous_time();
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      }

      v14[5] = v15 + 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
      v14 = *(a1 + 176);
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      ++v14[4];
    }
  }

  os_release(v14);
  *(a1 + 176) = 0;
  if (!a5)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v16 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v21 = 134217984;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Restarting DSO session", &v21, 0xCu);
  }

  *(a1 + 40) = atomic_fetch_add_explicit(&_mdns_dso_session_get_next_id_s_last_id, 1uLL, memory_order_relaxed) + 1;
  *(a1 + 214) = 3;
  if (!_mdns_dso_client_session_connect_or_delay_reconnecting(a1))
  {
    v18 = a1;
    v19 = 1;
    v20 = 0;
LABEL_24:
    _mdns_dso_client_session_schedule_user_event(v18, v19, v20);
    return;
  }

  if (a6)
  {
LABEL_23:
    *(a1 + 214) = 8;
    v18 = a1;
    v19 = 4;
    v20 = a2;
    goto LABEL_24;
  }
}

uint64_t _mdns_dso_client_session_connect_or_delay_reconnecting(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 214) != 3)
  {
    v23 = 4294960587;
    goto LABEL_61;
  }

  v46 = *(a1 + 168);
  Count = CFArrayGetCount(*(v46 + 24));
  if (Count < 1)
  {
LABEL_27:
    v23 = 4294960569;
LABEL_43:
    v10 = 0;
    v22 = 0;
LABEL_44:
    v31 = *(v1 + 176);
    if (v31)
    {
      os_release(v31);
      *(v1 + 176) = 0;
    }

    v32 = v22 ^ 1;
    if (v23 != -6760)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0 && v10)
    {
      v33 = *(v1 + 184);
      if (v33)
      {
        dispatch_source_cancel(*(v1 + 184));
        dispatch_release(v33);
        *(v1 + 184) = 0;
      }

      if (_mdns_dso_session_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
      }

      monotonic_timer = _mdns_dispatch_create_monotonic_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
      *(v1 + 184) = monotonic_timer;
      if (monotonic_timer)
      {
        *handler = _NSConcreteStackBlock;
        *&handler[8] = 0x40000000;
        *&handler[16] = ___mdns_dso_client_session_schedule_reconnecting_block_invoke;
        *&handler[24] = &__block_descriptor_tmp_19_6071;
        v50 = v1;
        dispatch_source_set_event_handler(monotonic_timer, handler);
        dispatch_activate(*(v1 + 184));
        v23 = 0;
      }

      else
      {
        v23 = 4294960567;
      }

      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v35 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(v1 + 40);
        *handler = 134218498;
        *&handler[4] = v36;
        *&handler[12] = 1024;
        *&handler[14] = v10;
        *&handler[18] = 2112;
        *&handler[20] = v1;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[DSO%llu] -> Wait for reconnection -- delay: %ums, session: %@", handler, 0x1Cu);
      }

      if (!v23)
      {
        return v23;
      }
    }

LABEL_61:
    _mdns_dso_session_handle_failure(v1, v23, 1, 0);
    return v23;
  }

  v3 = Count;
  v45 = v1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *handler = 0;
  v9 = 0xFFFF;
  v10 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v46 + 24), v8);
    LODWORD(completion[0]) = 0;
    if (_mdns_dso_server_endpoint_is_usable_now(ValueAtIndex, handler, completion))
    {
      if ((v7 & 1) == 0)
      {
        v7 = 1;
      }

      v12 = ValueAtIndex[3];
      priority = nw_endpoint_get_priority();
      v14 = ValueAtIndex[3];
      weight = nw_endpoint_get_weight();
      if (v9 <= priority)
      {
        v16 = v5;
      }

      else
      {
        v16 = 0;
      }

      if (v9 <= priority)
      {
        v17 = v4;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + weight;
      if (!weight)
      {
        ++v16;
      }

      if (v9 >= priority)
      {
        v5 = v16;
        v4 = v18;
        v9 = priority;
      }
    }

    else
    {
      v19 = completion[0];
      if (v10 < LODWORD(completion[0]))
      {
        v19 = v10;
      }

      v6 |= *handler == -6760;
      if (*handler == -6760)
      {
        v10 = v19;
      }
    }

    ++v8;
  }

  while (v3 != v8);
  if ((v7 & 1) == 0)
  {
    v1 = v45;
    if (v6)
    {
      v22 = 1;
      v23 = 4294960536;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  v20 = arc4random() % (v4 + 1);
  if (v5)
  {
    v21 = arc4random() % v5 + 1;
  }

  else
  {
    v21 = 0;
  }

  v24 = 0;
  v25 = 0;
  if (v3 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v3;
  }

  while (1)
  {
    v27 = CFArrayGetValueAtIndex(*(v46 + 24), v24);
    if (!_mdns_dso_server_endpoint_is_usable_now(v27, 0, 0))
    {
      goto LABEL_41;
    }

    v28 = v27[3];
    if (nw_endpoint_get_priority() != v9)
    {
      goto LABEL_41;
    }

    v29 = v27[3];
    v30 = nw_endpoint_get_weight();
    if (!v20)
    {
      break;
    }

    if (v30)
    {
      v25 += v30;
      if (v25 >= v20)
      {
        goto LABEL_63;
      }
    }

LABEL_41:
    if (v26 == ++v24)
    {
LABEL_42:
      v23 = 4294960560;
      v1 = v45;
      goto LABEL_43;
    }
  }

  if (v30)
  {
    goto LABEL_41;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  if (--v21)
  {
    goto LABEL_41;
  }

LABEL_63:
  v1 = v45;
  *(v45 + 176) = v27;
  os_retain(v27);
  v47 = 0;
  v38 = (*(*(v1 + 16) + 64))(v1, &v47);
  v39 = v38;
  if (!v47)
  {
    *(v45 + 80) = v38;
    nw_retain(v38);
    os_retain(v45);
    nw_retain(v39);
    v40 = *(v45 + 80);
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    nw_connection_set_queue(v40, _mdns_dso_session_queue_s_queue);
    v41 = *(v45 + 80);
    *handler = _NSConcreteStackBlock;
    *&handler[8] = 0x40000000;
    *&handler[16] = ___mdns_dso_session_prepare_connection_with_nw_connection_block_invoke;
    *&handler[24] = &__block_descriptor_tmp_15_6076;
    v50 = v45;
    v51 = v39;
    nw_connection_set_state_changed_handler(v41, handler);
    nw_connection_start(*(v45 + 80));
    v42 = *(v45 + 80);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 0x40000000;
    completion[2] = ___mdns_dso_session_schedule_receive_block_invoke;
    completion[3] = &__block_descriptor_tmp_17_6077;
    completion[4] = v45;
    nw_connection_receive_message(v42, completion);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v43 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(v45 + 40);
      *handler = 134218242;
      *&handler[4] = v44;
      *&handler[12] = 2112;
      *&handler[14] = v39;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start connection -- connection: %@", handler, 0x16u);
    }
  }

  if (v39)
  {
    nw_release(v39);
  }

  v23 = v47;
  if (v47)
  {
    goto LABEL_43;
  }

  return v23;
}

void _mdns_dso_session_handle_failure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 152);
  if (v9)
  {
    v9(a1, a2);
    v8 = *(a1 + 16);
  }

  if ((*(v8 + 168))(a1, a4))
  {
    _mdns_dso_session_close_internal(a1, a2, a3, 0, a4, 1);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v10 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 134218752;
      v15 = v11;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      v12 = "[DSO%llu] DSO session failed, closing -- error: %{mdns:err}ld, forcibly: %{BOOL}d, restartable: %{BOOL}d";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0x22u);
    }
  }

  else
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v10 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 134218752;
      v15 = v13;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      v12 = "[DSO%llu] DSO session failed, waiting to restart -- error: %{mdns:err}ld, forcibly: %{BOOL}d, restartable: %{BOOL}d";
      goto LABEL_12;
    }
  }
}

uint64_t _mdns_dso_session_close_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _mdns_dso_session_stop_inactivity_timer(a1);
  *(a1 + 104) = 0;
  v12 = *(a1 + 80);
  if (v12)
  {
    if (a3)
    {
      nw_connection_force_cancel(v12);
    }

    else
    {
      nw_connection_cancel(v12);
    }

    v13 = *(a1 + 80);
    if (v13)
    {
      nw_release(v13);
      *(a1 + 80) = 0;
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      free(v14);
      *(a1 + 88) = 0;
    }

    v15 = *(a1 + 96);
    if (v15)
    {
      free(v15);
      *(a1 + 96) = 0;
    }

    *(a1 + 112) = 0;
  }

  v16 = *(*(a1 + 16) + 176);

  return v16(a1, a2, a3, a4, a5, a6);
}

void _mdns_dso_session_stop_inactivity_timer(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 32) = 0;
}

void ___mdns_dso_session_prepare_connection_with_nw_connection_block_invoke(uint64_t a1, int a2, nw_error_t error)
{
  if (*(*(a1 + 32) + 80) != *(a1 + 40))
  {
    goto LABEL_2;
  }

  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v6 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(*(a1 + 32) + 40);
    v31 = nw_connection_state_to_string();
    v32 = *(*(a1 + 32) + 80);
    *v36 = 134218754;
    *&v36[4] = v30;
    *&v36[12] = 2082;
    *&v36[14] = v31;
    v37 = 2112;
    v38 = v32;
    v39 = 2048;
    v40 = error_code;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[DSO%llu] DSO session connection state change -- state: %{public}s, connection: %@, error: %{mdns:err}ld", v36, 0x2Au);
  }

  v7 = 4294960587;
  if (a2 <= 2)
  {
    if (a2 >= 3)
    {
      goto LABEL_50;
    }

    return;
  }

  if (a2 == 5)
  {
LABEL_3:
    os_release(*(a1 + 32));
    nw_release(*(a1 + 40));
    return;
  }

  if (a2 == 4)
  {
    if (error_code != 54)
    {
      goto LABEL_49;
    }

    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v29 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v34 = *(v33 + 40);
      v35 = *(v33 + 80);
      *v36 = 134218242;
      *&v36[4] = v34;
      *&v36[12] = 2112;
      *&v36[14] = v35;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[DSO%llu] DSO session is forcibly aborted by the other side -- %@", v36, 0x16u);
    }

    v7 = 54;
LABEL_50:
    _mdns_dso_session_handle_failure(*(a1 + 32), v7, 1, 1);
LABEL_2:
    if (a2 != 5)
    {
      return;
    }

    goto LABEL_3;
  }

  if (a2 != 3)
  {
    goto LABEL_50;
  }

  v8 = *(a1 + 40);
  v9 = nw_connection_copy_connected_local_endpoint();
  v10 = *(a1 + 40);
  v11 = nw_connection_copy_connected_remote_endpoint();
  if (_mdns_dso_session_log_s_once != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v12 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 40);
      *v36 = 134218498;
      *&v36[4] = v13;
      *&v36[12] = 2112;
      *&v36[14] = v9;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start connection -> Connection ready -- %@ <---> %@", v36, 0x20u);
    }

    if (v9)
    {
      nw_release(v9);
    }

    if (v11)
    {
      nw_release(v11);
    }

    v11 = *(a1 + 32);
    v14 = *(v11 + 88);
    if (v14)
    {
      free(v14);
      *(v11 + 88) = 0;
    }

    v15 = nw_connection_copy_endpoint(*(v11 + 80));
    if (v15)
    {
      v9 = v15;
      hostname = nw_endpoint_get_hostname(v15);
      if (!hostname)
      {
        goto LABEL_51;
      }

      v17 = strdup(hostname);
      if (!v17)
      {
        goto LABEL_51;
      }

      *(v11 + 88) = v17;
      nw_release(v9);
    }

    *(v11 + 112) = 0;
    v18 = nw_connection_copy_current_path(*(v11 + 80));
    if (v18)
    {
      v9 = v18;
      *(v11 + 112) = nw_path_get_interface_index();
      nw_release(v9);
    }

    v19 = *(v11 + 96);
    if (v19)
    {
      free(v19);
      *(v11 + 96) = 0;
    }

    v20 = *(v11 + 112);
    if (!v20)
    {
      goto LABEL_38;
    }

    memset(v36, 0, 17);
    v21 = if_indextoname(v20, v36);
    if (!v21)
    {
      goto LABEL_38;
    }

    v22 = strdup(v21);
    if (v22)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  *(v11 + 96) = v22;
LABEL_38:
  v23 = nw_connection_copy_parameters(*(v11 + 80));
  v24 = nw_parameters_copy_default_protocol_stack(v23);
  v25 = nw_protocol_stack_copy_transport_protocol(v24);
  maximum_segment_size = nw_tcp_options_get_maximum_segment_size();
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v27 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
  {
    v28 = *(v11 + 40);
    *v36 = 134218240;
    *&v36[4] = v28;
    *&v36[12] = 1024;
    *&v36[14] = maximum_segment_size;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[DSO%llu] mss is %u", v36, 0x12u);
  }

  nw_release(v25);
  nw_release(v24);
  nw_release(v23);
  (*(*(v11 + 16) + 80))(v11);
  error_code = (*(*(*(a1 + 32) + 16) + 88))();
LABEL_49:
  v7 = error_code;
  if (error_code)
  {
    goto LABEL_50;
  }
}

void ___mdns_dso_session_schedule_receive_block_invoke(uint64_t a1, NSObject *a2, nw_content_context_t context, uint64_t a4, NSObject *a5)
{
  if (!*(*(a1 + 32) + 80))
  {
    return;
  }

  v45 = 0;
  if (context)
  {
    is_final = nw_content_context_get_is_final(context);
    if (a5)
    {
LABEL_4:
      error_code = nw_error_get_error_code(a5);
      goto LABEL_7;
    }
  }

  else
  {
    is_final = 0;
    if (a5)
    {
      goto LABEL_4;
    }
  }

  error_code = 0;
LABEL_7:
  if (error_code)
  {
    v10 = 0;
  }

  else
  {
    v10 = is_final;
  }

  if (v10)
  {
    v11 = *(*(*(a1 + 32) + 16) + 160);
    if (v11)
    {
      v11();
    }

    v45 = 1;
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v12 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 40);
      *buf = 134217984;
      *&buf[4] = v13;
      v14 = "[DSO%llu] DSO session is gracefully closed by the other side.";
      v15 = v12;
      v16 = 12;
      goto LABEL_58;
    }
  }

  else if (error_code == 61 || error_code == 54)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v17 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v44 = *(*(a1 + 32) + 40);
      *buf = 134218240;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = error_code;
      v14 = "[DSO%llu] DSO session is forcibly aborted by the other side -- error: %{mdns:err}ld";
      v15 = v17;
      v16 = 22;
LABEL_58:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      if (!a2)
      {
        goto LABEL_39;
      }

LABEL_23:
      if (dispatch_data_get_size(a2))
      {
        v18 = (*(*(*(a1 + 32) + 16) + 96))();
        v19 = *(a1 + 32);
        if (!v18)
        {
          error_code = 4294960587;
          goto LABEL_40;
        }

        v20 = mdns_message_create_with_dispatch_data(a2, 1);
        if (!v20)
        {
          v19 = *(a1 + 32);
          error_code = 4294960567;
          goto LABEL_40;
        }

        v21 = v20;
        v22 = *(v20 + 2);
        if (!v22)
        {
          goto LABEL_31;
        }

        while (v22 != &_mdns_dso_message_kind)
        {
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        if (!(*(*(v19 + 16) + 120))(v19, v20))
        {
          v46 = 0;
          v37 = v21[2];
          if (v37)
          {
            while (v37 != &_mdns_dso_message_kind)
            {
              v37 = *v37;
              if (!v37)
              {
                goto LABEL_51;
              }
            }

            error_code = (*(*(v19 + 16) + 128))(v19, v21, &v45, &v46);
            if ((v46 & 1) == 0)
            {
              if (_mdns_dso_session_log_s_once != -1)
              {
                dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
              }

              v38 = _mdns_dso_session_log_s_log;
              if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(v19 + 40);
                size = dispatch_data_get_size(a2);
                v41 = *(v19 + 88);
                v42 = *(v19 + 96);
                v43 = *(v19 + 112);
                *buf = 134219010;
                *&buf[4] = v39;
                *&buf[12] = 2048;
                *&buf[14] = size;
                *&buf[22] = 2082;
                v48 = v41;
                LOWORD(v49) = 2082;
                *(&v49 + 2) = v42;
                WORD5(v49) = 1024;
                HIDWORD(v49) = v43;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Received %zu-byte session DSO message from %{public}s over DSO session via %{public}s/%u", buf, 0x30u);
              }
            }
          }

          else
          {
LABEL_51:
            error_code = 4294960560;
          }
        }

        else
        {
LABEL_31:
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v23 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v19 + 40);
            v25 = dispatch_data_get_size(a2);
            v26 = *(v19 + 88);
            v27 = *(v19 + 96);
            v28 = *(v19 + 112);
            *buf = 134219010;
            *&buf[4] = v24;
            *&buf[12] = 2048;
            *&buf[14] = v25;
            *&buf[22] = 2082;
            v48 = v26;
            LOWORD(v49) = 2082;
            *(&v49 + 2) = v27;
            WORD5(v49) = 1024;
            HIDWORD(v49) = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Received %zu-byte user DSO message from %{public}s over DSO session via %{public}s/%u", buf, 0x30u);
          }

          if (*(v19 + 64))
          {
            os_retain(v19);
            dispatch_retain(a2);
            v29 = _Block_copy(*(v19 + 64));
            v30 = *(v19 + 48);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = ___mdns_dso_session_schedule_user_receive_block_invoke;
            v48 = &unk_100152A48;
            *&v49 = v29;
            *(&v49 + 1) = v19;
            v50 = a2;
            dispatch_async(v30, buf);
          }

          error_code = 0;
        }

        os_release(v21);
      }

      goto LABEL_39;
    }
  }

  if (a2)
  {
    goto LABEL_23;
  }

LABEL_39:
  v19 = *(a1 + 32);
  if (error_code)
  {
LABEL_40:
    v31 = v19;
    v32 = error_code;
    v33 = 1;
    v34 = 1;
LABEL_43:
    _mdns_dso_session_handle_failure(v31, v32, v33, v34);
    return;
  }

  if (v45 == 1)
  {
    v31 = *(a1 + 32);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_43;
  }

  v35 = *(*(v19 + 16) + 136);
  if (v35)
  {
    v35(*(a1 + 32));
    v19 = *(a1 + 32);
  }

  v36 = *(v19 + 80);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = ___mdns_dso_session_schedule_receive_block_invoke;
  v48 = &__block_descriptor_tmp_17_6077;
  *&v49 = v19;
  nw_connection_receive_message(v36, buf);
}

void ___mdns_dso_session_schedule_user_receive_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 16) + 104))())
  {
    v2 = *(a1 + 48);
    (*(*(a1 + 32) + 16))();
  }

  os_release(*(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    _Block_release(v4);
  }
}

uint64_t _mdns_dso_client_session_check_and_move_to_closing_state(uint64_t a1, int a2)
{
  v2 = *(a1 + 214);
  if ((v2 & 0xFE) == 8)
  {
    return 0;
  }

  if (a2)
  {
    if (v2 == 3)
    {
      return 0;
    }

    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  *(a1 + 214) = v4;
  return 1;
}

void _mdns_dso_client_session_handle_error(uint64_t a1, unsigned int a2)
{
  if (a2 - 51 <= 0xE && ((1 << (a2 - 51)) & 0x6609) != 0 && *(a1 + 215) == 1)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v4 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 134218240;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Reporting connection error to the client -- error: %{mdns:err}ld", &v6, 0x16u);
    }

    _mdns_dso_client_session_schedule_user_event(a1, 2, a2);
  }
}

uint64_t _mdns_dso_client_session_schedule_keepalive_message(uint64_t a1)
{
  if (*(a1 + 214) != 7)
  {
    return 4294960587;
  }

  handler[7] = v1;
  handler[8] = v2;
  v4 = *(a1 + 192);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v4);
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 132);
  if (v5 == -1)
  {
    return 0;
  }

  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  *(a1 + 192) = monotonic_timer;
  if (monotonic_timer)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mdns_dso_client_session_schedule_keepalive_message_block_invoke;
    handler[3] = &__block_descriptor_tmp_30_6095;
    handler[4] = a1;
    dispatch_source_set_event_handler(monotonic_timer, handler);
    dispatch_activate(*(a1 + 192));
    return 0;
  }

  return 4294960567;
}

void ___mdns_dso_client_session_schedule_keepalive_message_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 192));
    dispatch_release(v3);
    *(*(a1 + 32) + 192) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 214) == 7)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v4 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 40);
      v8 = 134217984;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[DSO%llu] Sending keepalive message", &v8, 0xCu);
    }

    keepalive_message = _mdns_dso_session_create_keepalive_message(*(a1 + 32), *(*(a1 + 32) + 212));
    if (keepalive_message)
    {
      v6 = keepalive_message;
      _mdns_dso_session_send_data_immediately(*(a1 + 32), *(keepalive_message + 24), 1, 1);
      os_release(v6);
    }
  }
}

uint64_t _mdns_dso_session_create_keepalive_message(uint64_t a1, __int16 a2)
{
  result = _os_object_alloc();
  if (result)
  {
    v5 = result;
    v6 = &_mdns_dso_keepalive_message_builder_kind;
    *(result + 16) = &_mdns_dso_keepalive_message_builder_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    *(v5 + 28) = a2;
    *(v5 + 32) = *(a1 + 116);
    message = mdns_dso_message_builder_create_message(v5);
    os_release(v5);
    return message;
  }

  return result;
}

void _mdns_dso_session_send_data_immediately(uint64_t a1, dispatch_data_t data, char a3, char a4)
{
  v7 = *(a1 + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dso_session_send_data_immediately_block_invoke;
  v8[3] = &__block_descriptor_tmp_32_6097;
  v8[4] = a1;
  v8[5] = v7;
  v8[6] = dispatch_data_get_size(data);
  v9 = a4;
  v10 = a3;
  nw_connection_send(v7, data, _nw_content_context_default_message, 1, v8);
}

void ___mdns_dso_session_send_data_immediately_block_invoke(uint64_t a1, nw_error_t error)
{
  v2 = *(a1 + 32);
  if (v2[10] != *(a1 + 40))
  {
    return;
  }

  if (error)
  {
    error_code = nw_error_get_error_code(error);
    if (error_code)
    {
      v5 = error_code;
      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v6 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 40);
        v21 = *(a1 + 48);
        v22 = *(v19 + 88);
        v23 = *(v19 + 96);
        LODWORD(v19) = *(v19 + 112);
        v24 = 134219266;
        v25 = v20;
        v26 = 2048;
        v27 = v21;
        v28 = 2082;
        v29 = v22;
        v30 = 2082;
        v31 = v23;
        v32 = 1024;
        v33 = v19;
        v34 = 2048;
        v35 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[DSO%llu] Failed to send %zu-byte DSO message to %{public}s over DSO session via %{public}s/%u -- error: %{mdns:err}ld", &v24, 0x3Au);
      }

      _mdns_dso_session_handle_failure(*(a1 + 32), v5, 1, 1);
      return;
    }
  }

  else if ((*(v2[2] + 104))(*(a1 + 32)) && !v2[13])
  {
    _mdns_dso_session_schedule_inactivity_timer_ex(*(a1 + 32), 0);
  }

  if (*(a1 + 56))
  {
    return;
  }

  if (*(a1 + 57) == 1)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v7 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      v10 = *(a1 + 48);
      v11 = *(v8 + 88);
      v12 = *(v8 + 96);
      LODWORD(v8) = *(v8 + 112);
      v24 = 134219010;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 2082;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 1024;
      v33 = v8;
      v13 = "[DSO%llu] Sent %zu-byte user DSO message to %{public}s over DSO session via %{public}s/%u";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, &v24, 0x30u);
    }
  }

  else
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v7 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 40);
      v16 = *(a1 + 48);
      v17 = *(v14 + 88);
      v18 = *(v14 + 96);
      LODWORD(v14) = *(v14 + 112);
      v24 = 134219010;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2082;
      v29 = v17;
      v30 = 2082;
      v31 = v18;
      v32 = 1024;
      v33 = v14;
      v13 = "[DSO%llu] Sent %zu-byte session DSO message to %{public}s over DSO session via %{public}s/%u";
      goto LABEL_23;
    }
  }
}

uint64_t _mdns_dso_session_schedule_inactivity_timer_ex(void *a1, uint64_t a2)
{
  if (!(*(a1[2] + 104))() || a1[13])
  {
    return 4294960587;
  }

  _mdns_dso_session_stop_inactivity_timer(a1);
  result = (*(a1[2] + 112))(a1, a2);
  if (!result)
  {
    result = a1[9];
    if (result)
    {
      dispatch_activate(result);
      v5 = mach_continuous_time();
      result = 0;
      a1[4] = v5;
    }
  }

  return result;
}

uint64_t _mdns_dso_client_session_process_dso_message(uint64_t a1, void *a2, _BYTE *a3, char *a4)
{
  v6 = (a2 + 2);
  v5 = a2[2];
  v7 = *(v5 + 56);
  if (!*(v5 + 56))
  {
    v15 = 0;
    result = 4294960554;
    goto LABEL_36;
  }

  v11 = *(_mdns_dso_message_get_header(a2[4], a2[5]) + 3) & 0xF;
  if (!mdns_dso_message_is_unidirectional(a2[4], a2[5]))
  {
    if (v7 != 1)
    {
      goto LABEL_25;
    }

    v17 = *(a1 + 214);
    if (v17 == 7)
    {
      if (v11)
      {
LABEL_24:
        v15 = 0;
LABEL_35:
        result = 0;
        goto LABEL_36;
      }

      result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, a3);
      if (!result)
      {
        if (_mdns_dso_session_log_s_once != -1)
        {
          dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
        }

        v22 = _mdns_dso_session_log_s_log;
        v15 = 1;
        if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 40);
          v24 = 134217984;
          v25 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[DSO%llu] Keepalive message acked", &v24, 0xCu);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v17 != 6)
      {
        goto LABEL_25;
      }

      if (v11)
      {
        v15 = 0;
        result = 4294960543;
        goto LABEL_36;
      }

      result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, 0);
      if (!result)
      {
        *(a1 + 214) = 7;
        v18 = *(a1 + 192);
        if (v18)
        {
          dispatch_source_cancel(*(a1 + 192));
          dispatch_release(v18);
          *(a1 + 192) = 0;
        }

        result = _mdns_dso_session_schedule_inactivity_timer_ex(a1, 0);
        if (!result)
        {
          v19 = *(a1 + 176);
          if (!v19)
          {
            goto LABEL_25;
          }

          *(v19 + 32) = 0;
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v20 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 40);
            v24 = 134218242;
            v25 = v21;
            v26 = 2112;
            v27 = a1;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Preparing session -> Session ready -- session: %@", &v24, 0x16u);
          }

          _mdns_dso_client_session_schedule_user_event(a1, 3, 0);
          goto LABEL_24;
        }
      }
    }

    v15 = 0;
    goto LABEL_36;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      do
      {
        v6 = *v6;
      }

      while (v6 != &_mdns_dso_retry_delay_message_kind);
      v12 = bswap32(*(a2[4] + 16));
      v13 = *(a1 + 176);
      v14 = mach_continuous_time();
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      }

      v15 = 0;
      *(v13 + 40) = mdns_mach_ticks_per_second_s_ticks_per_second * (v12 / 0x3E8uLL) + mdns_mach_ticks_per_second_s_ticks_per_second * (v12 % 0x3E8) / 0x3E8 + v14;
      *a3 = 1;
      goto LABEL_35;
    }

LABEL_25:
    v15 = 0;
    result = 4294960560;
    goto LABEL_36;
  }

  if (v11)
  {
    goto LABEL_24;
  }

  result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, a3);
  v15 = 0;
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (a4)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t _mdns_dso_client_session_accept_keepalive_message(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2;
    while (v5 != &_mdns_dso_keepalive_message_kind)
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  v7 = *(v6 + 32);
  if (*(v6 + 40) - 16 >= __rev16(*(v7 + 14)))
  {
    v8 = (v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = bswap32(*v8);
  if (v9 <= 0x1388)
  {
    v10 = 5000;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 128) = v10;
  if (!(*(*(a1 + 16) + 104))(a1) || *(a1 + 104))
  {
    goto LABEL_14;
  }

  if (!*(a1 + 72))
  {
    return 4294960587;
  }

  v15 = mach_continuous_time() - *(a1 + 32);
  if (v15 < 0)
  {
    return 4294960587;
  }

  v16 = mdns_ticks_to_milliseconds(v15);
  v17 = *(a1 + 72);
  if (v17)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v17);
    *(a1 + 72) = 0;
  }

  if (v16 >= v10)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    *a3 = 0;
  }

  result = _mdns_dso_session_schedule_inactivity_timer_ex(a1, v10 - v16);
  if (!result)
  {
LABEL_14:
    result = 0;
    v12 = *(v6 + 32);
    v13 = v12 + 16;
    if (*(v6 + 40) - 16 < __rev16(*(v12 + 14)))
    {
      v13 = 0;
    }

    v14 = bswap32(*(v13 + 4));
    if (v14 <= 0x2710)
    {
      v14 = 10000;
    }

    *(a1 + 132) = v14;
  }

  return result;
}

BOOL _mdns_dso_client_session_check_if_dso_message_belongs_to_user(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[5];
  if (mdns_dso_message_is_unidirectional(v4, v5))
  {
    return *(a2[2] + 56) > 2u;
  }

  _mdns_dso_message_get_header(v4, v5);
  return *(a1 + 212) != bswap32(*v4) >> 16;
}

uint64_t _mdns_dso_client_session_set_up_inactivity_timer(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = *(a1 + 128);
  }

  if (v2 == -1)
  {
    return 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dso_client_session_set_up_inactivity_timer_ex_block_invoke;
  v8[3] = &__block_descriptor_tmp_28_6104;
  v8[4] = a1;
  v9 = v2;
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  if (!monotonic_timer)
  {
    return 4294960567;
  }

  v5 = monotonic_timer;
  dispatch_source_set_event_handler(monotonic_timer, v8);
  v6 = *(a1 + 72);
  if (v6)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v6);
  }

  result = 0;
  *(a1 + 72) = v5;
  return result;
}

void ___mdns_dso_client_session_set_up_inactivity_timer_ex_block_invoke(uint64_t a1)
{
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v2 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = *(a1 + 40);
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Hit inactivity timeout, closing the idle session -- inactivity timeout: %ums", &v6, 0x12u);
  }

  _mdns_dso_session_stop_inactivity_timer(*(a1 + 32));
  v5 = *(a1 + 32);
  if ((*(*(v5 + 16) + 104))(v5))
  {
    if (!*(v5 + 104))
    {
      _mdns_dso_session_handle_failure(*(a1 + 32), 0, 0, 0);
    }
  }
}

uint64_t _mdns_dso_client_session_prepare_session(uint64_t a1)
{
  if (*(a1 + 214) != 5)
  {
    return 4294960587;
  }

  keepalive_message = _mdns_dso_session_create_keepalive_message(a1, *(a1 + 212));
  if (!keepalive_message)
  {
    return 4294960567;
  }

  v3 = keepalive_message;
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(0x7530u, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  if (monotonic_timer)
  {
    *(a1 + 192) = monotonic_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mdns_dso_client_session_prepare_session_block_invoke;
    handler[3] = &__block_descriptor_tmp_27_6106;
    handler[4] = a1;
    dispatch_source_set_event_handler(monotonic_timer, handler);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v5 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Connection ready -> Preparing session", buf, 0xCu);
    }

    _mdns_dso_session_send_data_immediately(a1, v3[3], 0, 0);
    dispatch_activate(*(a1 + 192));
    v7 = 0;
    *(a1 + 214) = 6;
  }

  else
  {
    v7 = 4294960567;
  }

  os_release(v3);
  return v7;
}

void ___mdns_dso_client_session_prepare_session_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 192));
    dispatch_release(v3);
    *(*(a1 + 32) + 192) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 214) == 6)
  {

    _mdns_dso_session_handle_failure(v2, 4294960574, 1, 1);
  }
}

BOOL _mdns_dso_client_session_evaluate_trust(uint64_t a1, int a2, sec_trust_t trust, int *a4)
{
  error = 0;
  if (trust)
  {
    v6 = sec_trust_copy_ref(trust);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 160);
      if (v8)
      {
        SecTrustSetNetworkFetchAllowed(v6, 0);
        SecTrustSetAnchorCertificatesOnly(v7, 1u);
        SecTrustSetAnchorCertificates(v7, v8);
        v9 = SecTrustCopyExceptions(v7);
        if (v9)
        {
          SecTrustSetExceptions(v7, v9);
        }

        v10 = SecTrustEvaluateWithError(v7, &error);
        if (v10)
        {
          Code = 0;
        }

        else if (error)
        {
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v12 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 40);
            *buf = 134218242;
            v17 = v14;
            v18 = 2112;
            v19 = error;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[DSO%llu] TLS certificate evaluation failed -- reason: %@", buf, 0x16u);
          }

          Code = CFErrorGetCode(error);
        }

        else
        {
          Code = -6754;
        }

        CFRelease(v7);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        CFRelease(v6);
        Code = 0;
        v10 = 1;
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      v10 = 0;
      Code = -6729;
    }
  }

  else
  {
    v10 = 0;
    Code = -6705;
  }

  if (a4)
  {
    *a4 = Code;
  }

  return v10;
}

nw_connection_t _mdns_dso_client_session_prepare_connection(void *a1, int *a2)
{
  v4 = a1[2];
  *v18 = _NSConcreteStackBlock;
  *&v18[8] = 0x40000000;
  *&v18[16] = ___mdns_dso_session_create_tls_nw_parameters_block_invoke;
  v19 = &__block_descriptor_tmp_26_6109;
  v20 = a1;
  v21 = v4;
  secure_tcp = nw_parameters_create_secure_tcp(v18, _nw_parameters_configure_protocol_default_configuration);
  if (!secure_tcp)
  {
LABEL_20:
    v12 = 0;
    v16 = -6729;
    if (!a2)
    {
      return v12;
    }

    goto LABEL_17;
  }

  v6 = secure_tcp;
  nw_parameters_set_no_wake_from_sleep();
  v7 = nw_parameters_copy_default_protocol_stack(v6);
  if (!v7)
  {
    nw_release(v6);
    goto LABEL_20;
  }

  v8 = v7;
  if (_mdns_get_dns_over_bytestream_protocol_definition_s_once != -1)
  {
    dispatch_once(&_mdns_get_dns_over_bytestream_protocol_definition_s_once, &__block_literal_global_6312);
  }

  if (!_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def)
  {
    options = 0;
    goto LABEL_23;
  }

  options = nw_framer_create_options(_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def);
  if (!options)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v10 = nw_protocol_stack_copy_transport_protocol(v8);
  nw_tcp_options_set_maximum_segment_size(v10, 0x1C2u);
  nw_protocol_stack_prepend_application_protocol(v8, options);
  v11 = a1[22];
  if (!v11)
  {
    v12 = 0;
    v16 = -6718;
    goto LABEL_14;
  }

  v12 = nw_connection_create(*(v11 + 24), v6);
  if (!v12)
  {
LABEL_24:
    v16 = -6729;
    goto LABEL_14;
  }

  maximum_segment_size = nw_tcp_options_get_maximum_segment_size();
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v14 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
  {
    v15 = a1[5];
    *v18 = 134218240;
    *&v18[4] = v15;
    *&v18[12] = 1024;
    *&v18[14] = maximum_segment_size;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[DSO%llu] mss is %u", v18, 0x12u);
  }

  nw_release(v10);
  v16 = 0;
LABEL_14:
  nw_release(v6);
  nw_release(v8);
  if (options)
  {
    nw_release(options);
  }

  if (a2)
  {
LABEL_17:
    *a2 = v16;
  }

  return v12;
}

void ___mdns_dso_session_create_tls_nw_parameters_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = *(v4 + 48);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___mdns_dso_session_create_tls_nw_parameters_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_24_6112;
    v7[4] = *(a1 + 40);
    v7[5] = v4;
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    v6 = _mdns_dso_session_queue_s_queue;
    v5 = v7;
  }

  sec_protocol_options_set_verify_block(v3, v5, v6);
  if (v3)
  {
    sec_release(v3);
  }
}

uint64_t ___mdns_dso_session_create_tls_nw_parameters_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 72);
  if (v5)
  {
    v6 = v5(*(a1 + 40), a2, a3, 0);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);

  return v7(a4, v6);
}

uint64_t _mdns_dso_client_session_check_configuration(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 152)) <= 0 && !*(a1 + 136) || !*(a1 + 200) || !*(a1 + 212))
  {
    return 4294960578;
  }

  if (*(a1 + 214) == 1)
  {
    return 0;
  }

  return 4294960587;
}

uint64_t _mdns_dso_client_session_activate(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 152)) < 1)
  {
    v9 = *(a1 + 136);
    if (!v9)
    {
      return 4294960591;
    }

    v10 = *(v9 + 40);
    srv = nw_endpoint_create_srv();
    if (!srv)
    {
      return 4294960567;
    }

    v12 = srv;
    v13 = nw_parameters_create();
    if (!v13)
    {
      nw_release(v12);
      return 4294960567;
    }

    v14 = v13;
    if (*(a1 + 208))
    {
      v15 = nw_interface_create_with_index();
      if (!v15)
      {
        goto LABEL_30;
      }

      nw_parameters_require_interface(v14, v15);
    }

    else
    {
      v15 = 0;
    }

    v17 = nw_resolver_create_with_endpoint();
    if (v17)
    {
      v18 = v17;
      nw_retain(v17);
      v24 = _NSConcreteStackBlock;
      v25 = 0x40000000;
      v26 = ___mdns_dso_client_session_start_srv_resolution_block_invoke;
      v27 = &__block_descriptor_tmp_20_6116;
      v28 = v18;
      nw_resolver_set_cancel_handler();
      if (_mdns_dso_session_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___mdns_dso_client_session_start_srv_resolution_block_invoke_2;
      v36 = &__block_descriptor_tmp_22_6117;
      v37 = a1;
      nw_resolver_set_update_handler();
      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v19 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 136);
        v22 = *(a1 + 208);
        *v29 = 134218498;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        v33 = 1024;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start -> Start SRV resolution -- service name: %@, interface index: %u", v29, 0x1Cu);
      }

      v5 = 0;
      *(a1 + 144) = v18;
      *(a1 + 214) = 2;
LABEL_31:
      nw_release(v12);
      nw_release(v14);
      if (v15)
      {
        v16 = v15;
LABEL_33:
        nw_release(v16);
        return v5;
      }

      return v5;
    }

LABEL_30:
    v5 = 4294960567;
    goto LABEL_31;
  }

  if (CFArrayGetCount(*(a1 + 152)) >= 1)
  {
    v2 = nw_array_create();
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 152);
      v24 = _NSConcreteStackBlock;
      v25 = 0x40000000;
      v26 = ___mdns_dso_client_session_start_connection_with_server_addresses_block_invoke;
      v27 = &__block_descriptor_tmp_10_6114;
      v28 = v3;
      if (mdns_cfarray_enumerate(v4, &v24) && nw_array_get_count())
      {
        *(a1 + 214) = 3;
        v5 = _mdns_dso_client_session_add_nw_endpoints(a1);
        if (!v5)
        {
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v6 = _mdns_dso_session_log_s_log;
          v5 = 0;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 40);
            v8 = *(a1 + 152);
            *buf = 134218242;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start -> Start connection directly -- addresses: %@", buf, 0x16u);
            v5 = 0;
          }
        }
      }

      else
      {
        v5 = 4294960539;
      }

      v16 = v3;
      goto LABEL_33;
    }

    return 4294960567;
  }

  return 4294960578;
}

nw_endpoint_t ___mdns_dso_client_session_start_connection_with_server_addresses_block_invoke(uint64_t a1, uint64_t a2)
{
  *&v7[24] = 0;
  *&v7[16] = 0;
  v3 = *(a2 + 25);
  if (v3 == 30)
  {
    *v7 = *(a2 + 24);
    *&v7[12] = *(a2 + 36);
  }

  else
  {
    if (v3 != 2)
    {
      return 0;
    }

    *v7 = *(a2 + 24);
  }

  if (!*&v7[2])
  {
    *&v7[2] = 21763;
  }

  result = nw_endpoint_create_address(v7);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    nw_array_append();
    nw_release(v5);
    return 1;
  }

  return result;
}

uint64_t _mdns_dso_client_session_add_nw_endpoints(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v2 = _os_object_alloc();
  if (v2)
  {
    v3 = v2;
    v4 = &_mdns_dso_server_endpoint_manager_kind;
    *(v2 + 16) = &_mdns_dso_server_endpoint_manager_kind;
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
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    v3[3] = Mutable;
    if (Mutable)
    {
      v7 = 0;
    }

    else
    {
      v7 = -6729;
    }

    if (!Mutable)
    {
      v3 = 0;
    }

    v14 = v7;
    v8 = *(v12 + 6);
    if (v8)
    {
      if (Mutable)
      {
        os_release(v3);
        v8 = *(v12 + 6);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = -6728;
    v8 = *(v12 + 6);
    if (v8)
    {
      goto LABEL_19;
    }

    v3 = 0;
  }

  block[5] = _NSConcreteStackBlock;
  block[6] = 0x40000000;
  block[7] = ___mdns_dso_client_session_add_nw_endpoints_block_invoke;
  block[8] = &unk_1001529C0;
  block[9] = &v11;
  block[10] = v3;
  nw_array_apply();
  *(a1 + 168) = v3;
  *(a1 + 214) = 3;
  os_retain(a1);
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___mdns_dso_client_session_add_nw_endpoints_block_invoke_2;
  block[3] = &__block_descriptor_tmp_13_6122;
  block[4] = a1;
  dispatch_async(_mdns_dso_session_queue_s_queue, block);
  v8 = 0;
  *(v12 + 6) = 0;
LABEL_19:
  _Block_object_dispose(&v11, 8);
  return v8;
}

void ___mdns_dso_client_session_start_srv_resolution_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    if (!a3)
    {
      v8 = 4294960569;
LABEL_16:
      _mdns_dso_session_handle_failure(*(a1 + 32), v8, 1, 0);
      return;
    }

    v5 = *(a1 + 32);
    if (*(v5 + 214) == 2)
    {
      srv_weighted_variant = nw_resolver_create_srv_weighted_variant();
      if (srv_weighted_variant)
      {
        v7 = srv_weighted_variant;
        v8 = _mdns_dso_client_session_add_nw_endpoints(v5);
        if (_mdns_dso_session_log_s_once != -1)
        {
          dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
        }

        v9 = _mdns_dso_session_log_s_log;
        if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v5 + 40);
          v13 = 134218242;
          v14 = v10;
          v15 = 2112;
          v16 = a3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start SRV resolution -> SRV resolution finished -- endpoints: %@", &v13, 0x16u);
        }

        nw_release(v7);
      }

      else
      {
        v8 = 4294960567;
      }
    }

    else
    {
      v8 = 4294960587;
    }

    v11 = *(v5 + 144);
    nw_resolver_cancel();
    v12 = *(v5 + 144);
    if (v12)
    {
      nw_release(v12);
      *(v5 + 144) = 0;
    }

    if (v8)
    {
      goto LABEL_16;
    }
  }
}

BOOL ___mdns_dso_client_session_add_nw_endpoints_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = _os_object_alloc();
  if (v6)
  {
    v7 = v6;
    v8 = &_mdns_dso_server_endpoint_kind;
    *(v6 + 16) = &_mdns_dso_server_endpoint_kind;
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
    v7[3] = nw_retain(a3);
    CFArrayAppendValue(*(v5 + 24), v7);
    os_release(v7);
    v10 = 0;
  }

  else
  {
    v10 = -6728;
  }

  *(*(*(a1 + 32) + 8) + 24) = v10;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void ___mdns_dso_client_session_add_nw_endpoints_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[214] == 3)
  {
    _mdns_dso_client_session_connect_or_delay_reconnecting(v2);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void _mdns_dso_client_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    os_release(v2);
    *(a1 + 136) = 0;
  }

  if (*(a1 + 144))
  {
    nw_resolver_cancel();
    v3 = *(a1 + 144);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 144) = 0;
    }
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 152) = 0;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    os_release(v6);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    os_release(v7);
    *(a1 + 176) = 0;
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 184));
    dispatch_release(v8);
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 192);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v9);
    *(a1 + 192) = 0;
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    _Block_release(v10);
    *(a1 + 200) = 0;
  }
}

int32x2_t _mdns_dso_client_session_init(int32x2_t *a1)
{
  result = vdup_n_s32(0x3A98u);
  a1[16] = result;
  a1[26].i8[6] = 1;
  return result;
}

void __mdns_dso_session_add_activity_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 104))())
  {
    v2 = *(a1 + 32);
    ++*(v2 + 104);
    _mdns_dso_session_stop_inactivity_timer(v2);
    v3 = *(a1 + 32);

    os_release(v3);
  }
}

void __mdns_dso_session_remove_activity_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 104))())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 104);
    if (v3)
    {
      *(v2 + 104) = v3 - 1;
      if ((*(*(v2 + 16) + 104))(v2))
      {
        if (!*(v2 + 104))
        {
          _mdns_dso_session_schedule_inactivity_timer_ex(*(a1 + 32), 0);
        }
      }
    }

    v4 = *(a1 + 32);

    os_release(v4);
  }
}

void mdns_dso_session_send(void *a1, NSObject *a2)
{
  if ((*(a1[2] + 104))())
  {
    os_retain(a1);
    dispatch_retain(a2);
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dso_session_send_block_invoke;
    v4[3] = &__block_descriptor_tmp_5_6132;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_async(_mdns_dso_session_queue_s_queue, v4);
  }
}

void __mdns_dso_session_send_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 16) + 104))();
  v3 = *(a1 + 32);
  if (v2)
  {
    _mdns_dso_session_send_data_immediately(v3, *(a1 + 40), 1, 0);
    v3 = *(a1 + 32);
    v4 = *(v3[2] + 144);
    if (v4)
    {
      v5 = v4();
      v3 = *(a1 + 32);
      if (v5)
      {
        _mdns_dso_session_handle_failure(v3, v5, 1, 1);
        v3 = *(a1 + 32);
      }
    }
  }

  os_release(v3);
  v6 = *(a1 + 40);
  if (v6)
  {

    dispatch_release(v6);
  }
}

void mdns_dso_session_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dso_session_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_7_6134;
  block[4] = a1;
  dispatch_async(_mdns_dso_session_queue_s_queue, block);
}

void __mdns_dso_session_invalidate_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 184))())
  {
    _mdns_dso_session_close_internal(*(a1 + 32), 0, 0, 1, 0, 0);
    v2 = *(a1 + 32);
    v3 = v2[7];
    if (v3)
    {
      _Block_release(v3);
      v2[7] = 0;
    }

    v4 = v2[8];
    if (v4)
    {
      _Block_release(v4);
      v2[8] = 0;
    }

    (*(v2[2] + 192))(v2);
  }

  v5 = *(*(a1 + 32) + 24);
  monotonic_time_ns = mdns_get_monotonic_time_ns();
  v7 = (monotonic_time_ns - v5) / 0xF4240uLL;
  if (__ROR8__(0x790FB65668C26139 * v7, 6) <= 0x10C6F7A0B5EDuLL)
  {
    v8 = (monotonic_time_ns - v5) / 0xF4240uLL;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v9 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 40);
    v11 = 134218496;
    v12 = v10;
    v13 = 2048;
    v14 = v8 / 1000;
    v15 = 2048;
    v16 = v8 % 1000;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DSO%llu] DSO session invalidated -- duration: %{mdns:time_duration}lld %lldms", &v11, 0x20u);
  }

  os_release(*(a1 + 32));
}

uint64_t dnssec_objs_sort(uint64_t result, unint64_t a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = result;
    v4 = 0;
    v5 = result;
    do
    {
      v6 = v4++;
      v7 = *(v3 + 8 * v4);
      result = ref_count_obj_compare(v7, *(v3 + 8 * v6), 0);
      v8 = v4;
      if (result == -1)
      {
        v9 = v5;
        v8 = v4;
        do
        {
          v9[1] = *v9;
          if (!--v8)
          {
            break;
          }

          v10 = *--v9;
          result = ref_count_obj_compare(v7, v10, 0);
        }

        while (result == -1);
      }

      *(v3 + 8 * v8) = v7;
      ++v5;
    }

    while (v6 != v2);
  }

  return result;
}

id _system_util_log()
{
  if (_system_util_log_s_once != -1)
  {
    dispatch_once(&_system_util_log_s_once, &__block_literal_global_28_6182);
  }

  v1 = _system_util_log_s_log;

  return v1;
}

void ___system_util_log_block_invoke(id a1)
{
  _system_util_log_s_log = os_log_create("com.apple.mDNSResponder", "system_util");

  _objc_release_x1();
}

uint64_t __util_device_media_access_unicast_addr_enumerate_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = a4;
  if (a2 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 16;
  }

  v7 = [NSMutableData dataWithLength:v6 + 4];
  [v7 appendBytes:a3 length:v6];
  [v7 appendBytes:&v10 length:4];
  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v7];
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

id util_is_car_play(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithUTF8String:a1];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 requestParameters];
    [v5 setQualityOfService:25];

    [v4 activate];
    v6 = [v4 interfaceName];
    v7 = [v6 isEqualToString:v3];

    if (v7)
    {
      v8 = [v4 currentKnownNetworkProfile];
      v9 = [v8 isCarPlay];
    }

    else
    {
      v9 = 0;
    }

    [v4 invalidate];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v9;
}

id util_is_managed_network(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithUTF8String:a1];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 requestParameters];
    [v5 setQualityOfService:25];

    [v4 activate];
    v6 = [v4 interfaceName];
    v7 = [v6 isEqualToString:v3];

    if (v7)
    {
      v8 = [v4 currentKnownNetworkProfile];
      v9 = [v8 isBlueAtlasNetwork];
    }

    else
    {
      v9 = 0;
    }

    [v4 invalidate];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v9;
}

void __util_managed_network_change_handler_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (util_managed_network_change_handler_s_interface)
  {
    [util_managed_network_change_handler_s_interface stopMonitoringEventType:30];
  }

  else
  {
    v3 = objc_opt_new();
    v4 = util_managed_network_change_handler_s_interface;
    util_managed_network_change_handler_s_interface = v3;

    v5 = [util_managed_network_change_handler_s_interface requestParameters];
    [v5 setQualityOfService:25];

    [util_managed_network_change_handler_s_interface activate];
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = util_managed_network_change_handler_s_handler;
  util_managed_network_change_handler_s_handler = v6;

  if (util_managed_network_change_handler_s_handler)
  {
    objc_initWeak(&location, util_managed_network_change_handler_s_interface);
    v8 = util_managed_network_change_handler_s_interface;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __util_managed_network_change_handler_block_invoke_2;
    v16[3] = &unk_100152D18;
    objc_copyWeak(&v17, &location);
    [v8 setEventHandler:v16];
    v15 = 0;
    v9 = [util_managed_network_change_handler_s_interface startMonitoringEventType:30 error:&v15];
    v10 = v15;
    v11 = _system_util_log();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Registered for known network privacy risk changes", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to register for known network changes with error %@", buf, 0xCu);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [util_managed_network_change_handler_s_interface setEventHandler:0];
    [util_managed_network_change_handler_s_interface invalidate];
    v13 = util_managed_network_change_handler_s_interface;
    util_managed_network_change_handler_s_interface = 0;

    v14 = _system_util_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Un-registering for known network privacy risk changes", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000EEE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __util_managed_network_change_handler_block_invoke_2(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __util_managed_network_change_handler_block_invoke_3;
  block[3] = &unk_100152CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void __util_managed_network_change_handler_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 currentKnownNetworkProfile];
    v6 = [v5 isBlueAtlasNetwork];

    v7 = [v4 currentKnownNetworkProfile];
    WeakRetained = [v7 shortSSID];
  }

  else
  {
    v6 = 0;
  }

  if (util_managed_network_change_handler_s_handler)
  {
    v8 = util_managed_network_change_handler_s_last_blue_atlas_id == WeakRetained ? 0 : v6;
    if ((v8 & 1) != 0 || (v6 & 1) == 0 && (util_managed_network_change_handler_s_last_blue_atlas_id || !WeakRetained))
    {
      v9 = _system_util_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11[0] = 67109120;
        v11[1] = v6;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Updating privacy risk status %d", v11, 8u);
      }

      (*(util_managed_network_change_handler_s_handler + 16))();
    }
  }

  if (v6)
  {
    v10 = WeakRetained;
  }

  else
  {
    v10 = 0;
  }

  util_managed_network_change_handler_s_last_blue_atlas_id = v10;
  objc_autoreleasePoolPop(v2);
}

int *mdns_socket_forget(_DWORD *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *a1 = -1;
  }

  return result;
}

void _dnssec_obj_validation_manager_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    ref_count_obj_release(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    ref_count_obj_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    ref_count_obj_release(v4);
    a1[5] = 0;
  }

  _dnssec_obj_validation_manager_reset_validation_key_requestor(a1);
  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  v5 = a1[16];
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(a1[15] + 8 * i);
      if (v7)
      {
        ref_count_obj_release(v7);
        v5 = a1[16];
        *(a1[15] + 8 * i) = 0;
      }
    }
  }

  v8 = a1[15];
  if (v8)
  {
    free(v8);
    a1[15] = 0;
  }
}

void _dnssec_obj_validation_manager_reset_validation_key_requestor(uint64_t a1)
{
  *(a1 + 72) = 0;
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    v6 = *(a1 + 24);
    v7 = bswap32(*(v2 + 340)) >> 16;
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Canceling the existing validation key requestor", v10, 0xEu);
  }

LABEL_11:
  mDNS_StopQuery(&mDNSStorage, *(a1 + 56));
  v8 = *(a1 + 56);
  if (v8)
  {
    free(v8);
    *(a1 + 56) = 0;
  }

LABEL_13:
  v9 = *(a1 + 64);
  if (v9)
  {
    ref_count_obj_release(v9);
    *(a1 + 64) = 0;
  }
}

void _dnssec_obj_validation_manager_reset_insecure_validation(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    v6 = *(a1 + 24);
    v7 = bswap32(*(v2 + 340)) >> 16;
    v8 = *(a1 + 112);
    v9 = *(a1 + 88) != 0;
    v11[0] = 67109888;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1026;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Canceling the existing insecure validation - state: %{public, mdns:dnssec_inval_state}u, validated: %{mdns:yesno}d", v11, 0x1Au);
  }

LABEL_11:
  mDNS_StopQuery(&mDNSStorage, *(a1 + 80));
  v10 = *(a1 + 80);
  if (v10)
  {
    free(v10);
    *(a1 + 80) = 0;
  }

LABEL_13:
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  _dnssec_obj_validation_manager_stop_negative_ds_query(a1);
}

void _dnssec_obj_validation_manager_stop_negative_ds_query(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 24);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = *(v7 + 24);
      v7 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 24);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = *(v7 + 24);
      v7 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

LABEL_15:
    v12[0] = 67110147;
    v12[1] = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 1040;
    v18 = v8;
    v19 = 2101;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Q%u->SubQ%u] Stop DS denial look up question - DS denial lookup name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v12, 0x28u);
  }

LABEL_16:
  mDNS_StopQuery(&mDNSStorage, *(a1 + 96));
  v10 = *(a1 + 96);
  if (v10)
  {
    free(v10);
    *(a1 + 96) = 0;
  }

LABEL_18:
  v11 = *(a1 + 104);
  if (v11)
  {
    ref_count_obj_release(v11);
    *(a1 + 104) = 0;
  }
}

BOOL dnssec_obj_validation_manager_contains_possibly_unsigned_rrset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = a2;
    if (a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v2 = a1;
  if (a2)
  {
    return 0;
  }

LABEL_5:
  v3 = *(v2 + 40);
  if (v3 != 4 && v3 != 2)
  {
    return 0;
  }

  if (!*(v2 + 32))
  {
    v19 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v19 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v20 = 136447234;
    v21 = "dnssec_obj_rrset_get_rr_count(me) > 0";
    v22 = 2082;
    *v23 = "";
    *&v23[8] = 2082;
    *&v23[10] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    *&v23[18] = 1024;
    v24 = 361;
    v25 = 2048;
    v26 = 0;
    v16 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
    v17 = v19;
    v18 = 48;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, &v20, v18);
    return 0;
  }

  v5 = *(v2 + 24);
  if (**v5 != 240)
  {
    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*v5 + 4);
        if (v9 != 43)
        {
          if (v9 == 46)
          {
            return 0;
          }

          if (v9 != 48)
          {
            break;
          }
        }

        v5 = *(v5 + 1);
        v8 = 1;
        if (!v5)
        {
          goto LABEL_23;
        }
      }

      v5 = *(v5 + 1);
    }

    while (v5);
    if ((v8 & 1) == 0)
    {
      return 1;
    }

LABEL_23:
    v10 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      v12 = *(v2 + 16);
      if (v12)
      {
        v13 = *(v12 + 24);
        v14 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      v15 = *(v2 + 16);
      if (v15)
      {
        v13 = *(v15 + 24);
        v14 = *(v15 + 16);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    v20 = 141558787;
    v21 = 1752392040;
    v22 = 1040;
    *v23 = v13;
    *&v23[4] = 2101;
    *&v23[6] = v14;
    *&v23[14] = 1024;
    *&v23[16] = dnssec_obj_rrset_get_rr_type(v2);
    v16 = "Received positive DNSKEY or DS RRSet without RRSIG, malformed - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d.";
    v17 = v10;
    v18 = 34;
    goto LABEL_39;
  }

  v6 = *(*v5 + 56);
  return !v6 || *(v6 + 32) || (*(v6 + 40) & 1) != 0 || *(v6 + 48) == 0;
}

_DWORD *_dnssec_obj_validation_manager_start_sub_query(uint64_t a1, __int16 a2, __int16 a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  result = malloc_type_calloc(1uLL, 0x2B8uLL, 0xA61CBE18uLL);
  if (result)
  {
    v15 = result;
    result[53] = -1;
    *(result + 17) = *(*(a5 + 24) + 136);
    result[81] = a4;
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    __memcpy_chk();
    *(v15 + 344) = a2;
    *(v15 + 342) = a3;
    *(v15 + 656) = (a4 & 0x200000) != 0;
    *(v15 + 635) = (a4 & 0x1000) != 0;
    *(v15 + 244) = getpid();
    *(v15 + 152) = a6;
    *(v15 + 176) = a5;
    started = mDNS_StartQuery(&mDNSStorage, v15);
    if (a7)
    {
      if (started)
      {
        v19 = -6736;
      }

      else
      {
        v19 = 0;
      }

      *a7 = v19;
    }

    if (started)
    {
      free(v15);
      return 0;
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void dnssec_obj_validation_manager_start_insecure_validation(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0xFFFFE5C200000000;
  _dnssec_obj_validation_manager_reset_validation_key_requestor(a1);
  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = *(a1 + 40);
  }

  v26 = 0;
  if (*(a1 + 80))
  {
    return;
  }

  if (*(a1 + 112) || !v4 || ((v5 = *(v4 + 40), v5 != 2) ? (v6 = v5 == 4) : (v6 = 1), !v6))
  {
    v17 = 0;
    v18 = -6709;
LABEL_27:
    v26 = v18;
    goto LABEL_28;
  }

  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_39;
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = -1;
  v12 = *(v7 + 16);
  do
  {
    v13 = v11;
    v14 = v12 + v9;
    v15 = *(v14 + 1);
    v12 = v14 + 1;
    v9 = v15;
    ++v11;
  }

  while (v15);
  if (*(v10 + 342) == 43 && v13 + 2 <= 1)
  {
LABEL_39:
    v17 = 0;
    v18 = -6736;
    goto LABEL_27;
  }

  v17 = dnssec_obj_domain_name_copy_parent_domain(v8, v11, &v26);
  v18 = v26;
  if (v26)
  {
    goto LABEL_28;
  }

  started = _dnssec_obj_validation_manager_start_negative_ds_query(a1, v17, a2);
  v26 = started;
  if (started)
  {
    v18 = started;
LABEL_28:
    _dnssec_obj_validation_manager_fail_insecure_validation(a1, v18);
    if (!v17)
    {
      return;
    }

    goto LABEL_37;
  }

  v20 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v20 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }
  }

  v21 = *(a1 + 24);
  v22 = bswap32(*(*(a1 + 96) + 340)) >> 16;
  v24 = *(v7 + 16);
  v23 = *(v7 + 24);
  *buf = 67110147;
  v28 = v21;
  v29 = 1024;
  v30 = v22;
  v31 = 2160;
  v32 = 1752392040;
  v33 = 1040;
  v34 = v23;
  v35 = 2101;
  v36 = v24;
  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Start insecure validation - unsigned domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x28u);
LABEL_32:
  *(a1 + 112) = 1;
  if (v17)
  {
    ++*v17;
  }

  v25 = *(a1 + 104);
  if (v25)
  {
    ref_count_obj_release(v25);
  }

  *(a1 + 104) = v17;
  v26 = 0;
  if (v17)
  {
LABEL_37:
    ref_count_obj_release(v17);
  }
}

uint64_t _dnssec_obj_validation_manager_start_negative_ds_query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      return -6709;
    }
  }

  if (*(a1 + 96))
  {
    return -6709;
  }

  rr_class = dnssec_obj_rrset_get_rr_class(v6);
  started = _dnssec_obj_validation_manager_start_sub_query(a2, rr_class, 43, 4096, a3, _query_record_with_insecure_validation_reply, &v16);
  *(a1 + 96) = started;
  if (!v16)
  {
    v9 = started;
    v10 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 24);
        v12 = bswap32(*(v9 + 170)) >> 16;
        if (a2)
        {
          v13 = *(a2 + 24);
          v14 = *(a2 + 16);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 24);
        v12 = bswap32(*(v9 + 170)) >> 16;
        if (a2)
        {
          v13 = *(a2 + 24);
          v14 = *(a2 + 16);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

LABEL_15:
        *buf = 67110147;
        v18 = v11;
        v19 = 1024;
        v20 = v12;
        v21 = 2160;
        v22 = 1752392040;
        v23 = 1040;
        v24 = v13;
        v25 = 2101;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Searching for DS denial - q_name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x28u);
      }
    }
  }

  return v16;
}

void _dnssec_obj_validation_manager_fail_insecure_validation(uint64_t a1, int a2)
{
  v4 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v7 = *(v6 + 24);
        v6 = *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        LODWORD(v9) = bswap32(*(v9 + 340)) >> 16;
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 112);
      v12 = *(a1 + 80);
      if (v12)
      {
        LODWORD(v12) = bswap32(*(v12 + 340)) >> 16;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v4 = mDNSLogCategory_DNSSEC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v7 = *(v6 + 24);
        v6 = *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        LODWORD(v9) = bswap32(*(v9 + 340)) >> 16;
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 112);
      v12 = *(a1 + 80);
      if (v12)
      {
        LODWORD(v12) = bswap32(*(v12 + 340)) >> 16;
      }

LABEL_23:
      v13[0] = 67110659;
      v13[1] = v10;
      v14 = 1026;
      v15 = v11;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1040;
      v19 = v7;
      v20 = 2101;
      v21 = v6;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Q%u] Insecure validation failed - state: %{public, mdns:dnssec_inval_state}u, DS denial lookup name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, DS denial lookup q: Q%d, secure DS denial q: Q%d", v13, 0x34u);
    }
  }

  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  *(a1 + 112) = 3;
  *(a1 + 48) = 3;
  *(a1 + 52) = a2;
}

uint64_t _update_validated_cache_with_rrset(uint64_t a1, int a2)
{
  v117 = 0;
  v2 = *(a1 + 44);
  v116 = 0;
  v114 = dnssec_obj_rrset_copy_rrs(a1, &v116, &v117);
  if (v117)
  {
    goto LABEL_182;
  }

  v3 = v116;
  if (!v116)
  {
    goto LABEL_200;
  }

  cache_record = resource_record_get_cache_record(*(*v114 + 56));
  if (!cache_record)
  {
    v99 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
LABEL_199:
        *buf = 136447234;
        *v119 = "cr != NULL";
        *&v119[8] = 2082;
        *&v119[10] = "";
        *&v119[18] = 2082;
        *&v119[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
        *&v119[28] = 1024;
        *&v119[30] = 314;
        *&v119[34] = 2048;
        *&v119[36] = 0;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      }
    }

    else
    {
      v99 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_199;
      }
    }

LABEL_200:
    v117 = -6736;
    goto LABEL_182;
  }

  v5 = *(cache_record + 96);
  if (!v5)
  {
    goto LABEL_200;
  }

  v112 = CacheGroupForName(mDNSStorage, *(v5 + 200), (v5 + 376));
  if (!v112)
  {
    goto LABEL_200;
  }

  v6 = *v114;
  v7 = resource_record_get_cache_record(*(*v114 + 56));
  if (v7)
  {
    if ((*(v7 + 80) + 1000 * a2) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v7 + 80) + 1000 * a2;
    }

    v9 = v112[2];
    if (v9)
    {
      while (1)
      {
        v10 = *(v6 + 48);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

        v11 = *(v9 + 56);
        if (v11)
        {
          v11 = *(v11 + 24);
        }

        if (v10 == v11)
        {
          v12 = *(v9 + 64);
          if (v12)
          {
            if (*(v12 + 32) == 1 && identical_dnssec_validated_same_name_resource_record(v6, v9 + 8))
            {
              break;
            }
          }
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_27;
        }
      }

      if (*(v9 + 109))
      {
        v13 = dword_10016D258 + 939524096;
      }

      else
      {
        v13 = *(v9 + 80) + 1000 * *(v9 + 16);
      }

      if (v13 <= 1)
      {
        v13 = 1;
      }

      if ((v8 - v13) <= 999)
      {
        v117 = 0;
        goto LABEL_182;
      }
    }

    goto LABEL_27;
  }

  v100 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v100 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }
  }

  *buf = 136447234;
  *v119 = "rr_cr != NULL";
  *&v119[8] = 2082;
  *&v119[10] = "";
  *&v119[18] = 2082;
  *&v119[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
  *&v119[28] = 1024;
  *&v119[30] = 1759;
  *&v119[34] = 2048;
  *&v119[36] = 0;
  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
LABEL_27:
  v14 = CacheGroupForName(mDNSStorage, *(v5 + 200), (v5 + 376));
  if (v14 && (v20 = v14[2]) != 0)
  {
    v109 = 0;
    do
    {
      v21 = *(v20 + 64);
      if (v21 && *(v21 + 32) == 1 && SameNameRecordAnswersQuestion((v20 + 8), 0, v5, v15, v16, v17, v18, v19))
      {
        *(v20 + 80) = dword_10016D258 + ~(1000 * *(v20 + 16));
        *(v20 + 108) = 4;
        SetNextCacheCheckTimeForRecord(mDNSStorage, v20);
        ++v109;
      }

      v20 = *v20;
    }

    while (v20);
  }

  else
  {
    v109 = 0;
  }

  bzero(v135, 0x800uLL);
  if (v3 > 0x100)
  {
    v117 = -6751;
    v101 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_182;
      }
    }

    else
    {
      v101 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_182;
      }
    }

    v102 = bswap32(*(v5 + 340));
    *buf = 67109632;
    *v119 = HIWORD(v102);
    *&v119[4] = 2048;
    *&v119[6] = v3;
    *&v119[14] = 2048;
    *&v119[16] = 256;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_FAULT, "[Q%u] RRSet size too large, unable to process - rr_count: %zu, size limit: %zu", buf, 0x1Cu);
    goto LABEL_182;
  }

  v104 = v5;
  v105 = v5 + 376;
  v22 = 0;
  v108 = 0;
  v115 = 0;
  v23 = 0;
  if (v2 == 1)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  v107 = v24 | 0x10;
  if (v3 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v3;
  }

  v111 = v25;
  v110 = v24;
  while (1)
  {
    v26 = v3;
    v27 = v114[v23];
    v28 = resource_record_get_cache_record(*(v27 + 7));
    if (!v28)
    {
      break;
    }

    v29 = v112[2];
    if (v29)
    {
      v30 = v28;
      while (1)
      {
        v31 = *(v27 + 6);
        if (v31)
        {
          v31 = *(v31 + 24);
        }

        v32 = *(v29 + 56);
        if (v32)
        {
          v32 = *(v32 + 24);
        }

        if (v31 == v32)
        {
          v33 = *(v29 + 64);
          if (v33)
          {
            if (*(v33 + 32) == 1 && identical_dnssec_validated_same_name_resource_record(v27, v29 + 8))
            {
              break;
            }
          }
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_68;
        }
      }

      v34 = *(v29 + 16);
      *(v29 + 80) = *(v30 + 80);
      *(v29 + 16) = a2;
      *(v29 + 108) = 0;
      SetNextCacheCheckTimeForRecord(mDNSStorage, v29);
      v35 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
        {
          v36 = *(v30 + 40);
          v106 = v34;
          if (v36)
          {
            v72 = *(v30 + 40);
            while (1)
            {
              if (!v72 || (v73 = *v72, v73 > 0x3F))
              {
LABEL_129:
                v39 = 257;
                goto LABEL_134;
              }

              if (!*v72)
              {
                break;
              }

              v72 += v73 + 1;
              if (&v72[-v36] >= 256)
              {
                goto LABEL_129;
              }
            }

            v39 = (v72 - v36 + 1);
          }

          else
          {
            v39 = 0;
          }

LABEL_134:
          v74 = *(v30 + 12);
          actual_ttl = resource_record_get_actual_ttl(mDNSStorage, v29 + 8);
          *buf = 68158978;
          *v119 = v39;
          *&v119[4] = 2098;
          *&v119[6] = v36;
          *&v119[14] = 1024;
          *&v119[16] = v74;
          *&v119[20] = 1024;
          *&v119[22] = v106;
          *&v119[26] = 1024;
          *&v119[28] = a2;
          *&v119[32] = 1024;
          *&v119[34] = actual_ttl;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Rescuing DNSSEC validated record - name: %{public, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, old original ttl: %u, new original ttl: %u, new actual ttl: %u", buf, 0x2Au);
        }
      }

      else
      {
        v35 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
        {
          v36 = *(v30 + 40);
          v106 = v34;
          if (v36)
          {
            v37 = *(v30 + 40);
            while (1)
            {
              if (!v37 || (v38 = *v37, v38 > 0x3F))
              {
LABEL_67:
                v39 = 257;
                goto LABEL_134;
              }

              if (!*v37)
              {
                break;
              }

              v37 += v38 + 1;
              if (&v37[-v36] >= 256)
              {
                goto LABEL_67;
              }
            }

            v39 = (v37 - v36 + 1);
          }

          else
          {
            v39 = 0;
          }

          goto LABEL_134;
        }
      }

      if (*(v29 + 109))
      {
        v76 = dword_10016D258;
        v77 = dword_10016D258 + 939524096;
      }

      else
      {
        v77 = *(v29 + 80) + 1000 * *(v29 + 16);
        v76 = dword_10016D258;
      }

      v3 = v26;
      if (v77 - v76 > 0)
      {
LABEL_139:
        ++v108;
        --v109;
        goto LABEL_102;
      }

      v78 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v78 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_139;
        }
      }

      *buf = 136447234;
      *v119 = "RRExpireTime(cr) - mDNSStorage.timenow > 0";
      *&v119[8] = 2082;
      *&v119[10] = "";
      *&v119[18] = 2082;
      *&v119[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
      *&v119[28] = 1024;
      *&v119[30] = 1826;
      *&v119[34] = 2048;
      *&v119[36] = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      goto LABEL_139;
    }

LABEL_68:
    if (*(v27 + 7))
    {
      v40 = -6705;
    }

    else
    {
      v40 = -6709;
    }

    if (*(v27 + 7))
    {
      v41 = (v2 - 3) >= 0xFFFFFFFE;
    }

    else
    {
      v41 = 0;
    }

    if (v41)
    {
      v42 = *(v27 + 4);
      v43 = CacheGroupForName(mDNSStorage, v42, *(v27 + 4));
      v45 = *(*(v27 + 7) + 16);
      if (v45)
      {
        v46 = v43;
        if (dword_10016D258 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = dword_10016D258;
        }

        v48 = *(&dword_10016D258 + &loc_100009410);
        v49 = v47;
        if (v48)
        {
          os_release(v48);
          v49 = dword_10016D258;
          if (dword_10016D258 <= 1)
          {
            v49 = 1;
          }
        }

        xmmword_1001766F0 = 0u;
        unk_100176700 = 0u;
        xmmword_1001766D0 = 0u;
        unk_1001766E0 = 0u;
        xmmword_1001766B0 = 0u;
        unk_1001766C0 = 0u;
        xmmword_100176690 = 0u;
        *&qword_1001766A0 = 0u;
        xmmword_100176670 = 0u;
        unk_100176680 = 0u;
        unk_100176650 = 0u;
        *&qword_100176660 = 0u;
        xmmword_100176630 = 0u;
        xmmword_100176640 = 0u;
        v50 = v45[1];
        xmmword_100176630 = *v45;
        v51 = v45[2];
        v52 = v45[3];
        v53 = v45[5];
        xmmword_100176670 = v45[4];
        unk_100176680 = v53;
        v54 = v45[8];
        v55 = v45[9];
        v56 = v45[7];
        xmmword_100176690 = v45[6];
        *&qword_1001766A0 = v56;
        unk_100176650 = v51;
        *&qword_100176660 = v52;
        xmmword_100176640 = v50;
        xmmword_1001766B0 = v54;
        unk_1001766C0 = v55;
        v57 = v45[10];
        v58 = v45[11];
        v59 = v45[13];
        xmmword_1001766F0 = v45[12];
        unk_100176700 = v59;
        xmmword_1001766D0 = v57;
        unk_1001766E0 = v58;
        *&xmmword_100176630 = 0;
        *(&xmmword_100176670 + 1) = 0;
        dword_100176684 = v49;
        *&xmmword_100176690 = 0;
        BYTE12(xmmword_100176690) = 0;
        qword_1001766A0 = 0;
        unk_1001766A8 = 0;
        LODWORD(xmmword_100176640) = a2;
        if (*(&v52 + 1))
        {
          os_retain(*(&v52 + 1));
        }

        v60 = v110;
        if (*v27 == 240)
        {
          v61 = *(v27 + 7);
          v60 = v110;
          if (v61)
          {
            v60 = v110;
            if (!*(v61 + 32))
            {
              v60 = v110;
              if ((*(v61 + 40) & 1) == 0)
              {
                v62 = *(v61 + 48);
                v60 = v110;
                if (v62)
                {
                  if (*(v62 + 107))
                  {
                    v60 = v107;
                  }

                  else
                  {
                    v60 = v110;
                  }
                }
              }
            }
          }
        }

        v63 = v42 % 0x1F3;
        NewCacheEntry = CreateNewCacheEntryEx(mDNSStorage, v42 % 0x1F3, v46, v47, 1, v45 + 132, v60, v44);
        v29 = NewCacheEntry;
        if (NewCacheEntry)
        {
          v65 = *(NewCacheEntry + 84);
          v3 = v26;
          if (*(&mDNSStorage[533] + v63) - v65 >= 1)
          {
            *(&mDNSStorage[533] + v63) = v65;
          }

          v40 = 0;
          if (dword_10016D270 - v65 >= 1)
          {
            dword_10016D270 = v65;
          }

          goto LABEL_98;
        }

        v40 = -6728;
      }

      else
      {
        v29 = 0;
        v40 = -6709;
      }
    }

    else
    {
      v29 = 0;
    }

    v3 = v26;
LABEL_98:
    v117 = v40;
    if (qword_100176668)
    {
      os_release(qword_100176668);
      v40 = v117;
    }

    xmmword_1001766F0 = 0u;
    unk_100176700 = 0u;
    xmmword_1001766D0 = 0u;
    unk_1001766E0 = 0u;
    xmmword_1001766B0 = 0u;
    unk_1001766C0 = 0u;
    xmmword_100176690 = 0u;
    *&qword_1001766A0 = 0u;
    xmmword_100176670 = 0u;
    unk_100176680 = 0u;
    unk_100176650 = 0u;
    *&qword_100176660 = 0u;
    xmmword_100176630 = 0u;
    xmmword_100176640 = 0u;
    if (v40)
    {
      goto LABEL_180;
    }

    ++v115;
LABEL_102:
    v66 = *(v29 + 64);
    if (!v66)
    {
      goto LABEL_180;
    }

    *(v66 + 24) = v3;
    v135[v23] = v29 + 8;
    if (*(v29 + 109))
    {
      v67 = dword_10016D258 + 939524096;
    }

    else
    {
      v67 = *(v29 + 80) + 1000 * *(v29 + 16);
    }

    if (v67 <= 1)
    {
      v68 = 1;
    }

    else
    {
      v68 = v67;
    }

    if (v22)
    {
      v69 = v22 - v68;
      if (v22 != v68)
      {
        v70 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_117;
          }
        }

        else
        {
          v70 = mDNSLogCategory_DNSSEC_redacted;
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
          {
LABEL_117:
            *buf = 67109120;
            *v119 = v69 / 1000;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_FAULT, "DNSSEC validated records in the same RRSet have different expiration time - difference in second: %d", buf, 8u);
          }
        }

        if (v69 > 0)
        {
          v22 = v68;
        }
      }
    }

    else
    {
      v22 = v68;
    }

    ++v23;
    v71 = v111;
    if (v23 == v111)
    {
      if (v22 - dword_10016D258 >= 1)
      {
        v79 = (v22 - dword_10016D258) / 0x3E8u;
        if (v109 && !v115)
        {
          v80 = v135;
          do
          {
            v81 = *v80++;
            *(*(v81 + 56) + 36) = 1;
            --v71;
          }

          while (v71);
        }

        v82 = mDNSLogCategory_DNSSEC;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v83 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
        }

        else
        {
          v83 = 1;
        }

        if (v83)
        {
          v84 = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO);
          v85 = v2;
          v86 = v108;
          if (v84)
          {
            v87 = bswap32(*(v104 + 340)) >> 16;
            v88 = v105;
            while (1)
            {
              if (!v88 || (v89 = *v88, v89 > 0x3F))
              {
LABEL_165:
                v90 = 257;
                goto LABEL_175;
              }

              if (!*v88)
              {
                break;
              }

              v88 += v89 + 1;
              if (&v88[-v105] >= 256)
              {
                goto LABEL_165;
              }
            }

            v90 = (v88 - v105 + 1);
LABEL_175:
            v94 = *(v104 + 342);
            v95 = *(*v114 + 4);
            v96 = **v114 != 240;
            *buf = 67112451;
            *v119 = v87;
            *&v119[4] = 2160;
            *&v119[6] = 1752392040;
            *&v119[14] = 1040;
            *&v119[16] = v90;
            *&v119[20] = 2101;
            *&v119[22] = v105;
            *&v119[30] = 1024;
            *&v119[32] = v94;
            *&v119[36] = 1024;
            *&v119[38] = v95;
            *&v119[42] = 1024;
            v120 = a2;
            v121 = 1024;
            v122 = v79;
            v123 = 1024;
            v124 = v96;
            v125 = 1026;
            v126 = v85;
            v127 = 2048;
            v128 = v108;
            v129 = 2048;
            v130 = v115;
            v131 = 2048;
            v132 = v3;
            v133 = 2048;
            v134 = v109;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "[Q%u] Update cache for DNSSEC question - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, rr_type: %{mdns:rrtype}d, new original ttl: %u, actual ttl: %u, %{mdns:pos/neg}d, DNSSEC result: %{public, mdns:dnssec_result}u, rescued: %zu, added: %zu, total: %zu, purged: %zu.", buf, 0x6Eu);
          }
        }

        else
        {
          v82 = mDNSLogCategory_DNSSEC_redacted;
          v91 = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO);
          v85 = v2;
          v86 = v108;
          if (v91)
          {
            v87 = bswap32(*(v104 + 340)) >> 16;
            v92 = v105;
            while (1)
            {
              if (!v92 || (v93 = *v92, v93 > 0x3F))
              {
LABEL_172:
                v90 = 257;
                goto LABEL_175;
              }

              if (!*v92)
              {
                break;
              }

              v92 += v93 + 1;
              if (&v92[-v105] >= 256)
              {
                goto LABEL_172;
              }
            }

            v90 = (v92 - v105 + 1);
            goto LABEL_175;
          }
        }

        if (v86)
        {
          v97 = dword_10016D258;
          if (dword_10016D258 <= 1)
          {
            v97 = 1;
          }

          dword_10016D2B8 = v97;
        }

LABEL_180:
        if (!v22)
        {
          goto LABEL_182;
        }
      }

LABEL_181:
      *(a1 + 60) = 1;
      *(a1 + 52) = v22;
      goto LABEL_182;
    }
  }

  v117 = -6736;
  if (v22)
  {
    goto LABEL_181;
  }

LABEL_182:
  free(v114);
  return v117;
}

void dnssec_obj_validation_manager_remove_validated_cache(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v36 = 0;
    if (*(v2 + 60))
    {
      v35 = 0;
      v3 = dnssec_obj_rrset_copy_rrs(v2, &v35, &v36);
      v4 = v36;
      if (v36)
      {
        v34 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v34 = mDNSLogCategory_DNSSEC_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        *buf = 136447234;
        v38 = "err == 0";
        v39 = 2082;
        *v40 = "";
        *&v40[8] = 2082;
        *&v40[10] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
        *&v40[18] = 1024;
        v41 = 1267;
        v42 = 2048;
        v43 = v4;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
        return;
      }

      v5 = v3;
      v6 = v35;
      if (v35)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = v5[i];
          mDNS_Lock_(&mDNSStorage, "_purge_validated_record_from_cache", 1933);
          v9 = *(v8 + 56);
          if (!v9 || *(v9 + 32))
          {
            goto LABEL_38;
          }

          v10 = CacheGroupForName(&mDNSStorage, *(v8 + 16), *(v8 + 32)) + 2;
          do
          {
            v10 = *v10;
            if (!v10)
            {
              goto LABEL_38;
            }
          }

          while (!identical_dnssec_validated_same_name_resource_record(v8, (v10 + 1)));
          expiration_time = resource_record_get_expiration_time(*(v8 + 56));
          if (expiration_time)
          {
            if (expiration_time - dword_10016D258 >= 4000)
            {
              v12 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                {
                  v13 = *(v8 + 32);
                  if (v13)
                  {
                    v17 = *(v8 + 32);
                    while (1)
                    {
                      if (!v17 || (v18 = *v17, v18 > 0x3F))
                      {
LABEL_30:
                        v16 = 257;
                        goto LABEL_35;
                      }

                      if (!*v17)
                      {
                        break;
                      }

                      v17 += v18 + 1;
                      if (&v17[-v13] >= 256)
                      {
                        goto LABEL_30;
                      }
                    }

                    v16 = (v17 - v13 + 1);
                  }

                  else
                  {
                    v16 = 0;
                  }

LABEL_35:
                  v19 = *(v8 + 4);
                  *buf = 141558787;
                  v38 = 1752392040;
                  v39 = 1040;
                  *v40 = v16;
                  *&v40[4] = 2101;
                  *&v40[6] = v13;
                  *&v40[14] = 1024;
                  *&v40[16] = v19;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Make validated RR expire soon - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr_type: %{mdns:rrtype}d", buf, 0x22u);
                }
              }

              else
              {
                v12 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                {
                  v13 = *(v8 + 32);
                  if (v13)
                  {
                    v14 = *(v8 + 32);
                    while (1)
                    {
                      if (!v14 || (v15 = *v14, v15 > 0x3F))
                      {
LABEL_22:
                        v16 = 257;
                        goto LABEL_35;
                      }

                      if (!*v14)
                      {
                        break;
                      }

                      v14 += v15 + 1;
                      if (&v14[-v13] >= 256)
                      {
                        goto LABEL_22;
                      }
                    }

                    v16 = (v14 - v13 + 1);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  goto LABEL_35;
                }
              }

              *(v10 + 20) = dword_10016D258 + 1000 * (3 - *(v10 + 4));
            }

            *(v10 + 108) = 4;
            goto LABEL_38;
          }

          v20 = mDNSLogCategory_DNSSEC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
            {
              v26 = *(v8 + 32);
              if (v26)
              {
                v27 = *(v8 + 32);
                while (1)
                {
                  if (!v27 || (v28 = *v27, v28 > 0x3F))
                  {
LABEL_57:
                    v29 = 257;
                    goto LABEL_61;
                  }

                  if (!*v27)
                  {
                    break;
                  }

                  v27 += v28 + 1;
                  if (&v27[-v26] >= 256)
                  {
                    goto LABEL_57;
                  }
                }

                v29 = (v27 - v26 + 1);
              }

              else
              {
                v29 = 0;
              }

LABEL_61:
              v30 = *(v8 + 4);
              *buf = 141558787;
              v38 = 1752392040;
              v39 = 1040;
              *v40 = v29;
              *&v40[4] = 2101;
              *&v40[6] = v26;
              *&v40[14] = 1024;
              *&v40[16] = v30;
              v31 = v20;
              goto LABEL_64;
            }
          }

          else
          {
            v21 = mDNSLogCategory_DNSSEC_redacted;
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
            {
              v22 = *(v8 + 32);
              if (v22)
              {
                v23 = *(v8 + 32);
                while (1)
                {
                  if (!v23 || (v24 = *v23, v24 > 0x3F))
                  {
LABEL_49:
                    v25 = 257;
                    goto LABEL_63;
                  }

                  if (!*v23)
                  {
                    break;
                  }

                  v23 += v24 + 1;
                  if (&v23[-v22] >= 256)
                  {
                    goto LABEL_49;
                  }
                }

                v25 = (v23 - v22 + 1);
              }

              else
              {
                v25 = 0;
              }

LABEL_63:
              v32 = *(v8 + 4);
              *buf = 141558787;
              v38 = 1752392040;
              v39 = 1040;
              *v40 = v25;
              *&v40[4] = 2101;
              *&v40[6] = v22;
              *&v40[14] = 1024;
              *&v40[16] = v32;
              v31 = v21;
LABEL_64:
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Invalid expiration time for the current DNSSEC validated record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr_type: %{mdns:rrtype}d", buf, 0x22u);
            }
          }

LABEL_38:
          mDNS_Unlock_(&mDNSStorage, "_purge_validated_record_from_cache", 1962);
        }
      }

      v33 = *(a1 + 32);
      *(v33 + 60) = 0;
      *(v33 + 52) = 0;
      free(v5);
    }
  }
}

uint64_t dnssd_svcb_service_name_is_empty(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 2;
  if (a1 == -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (a1 + a2 > v4)
    {
      v6 = (a1 + 2);
      while (*v6)
      {
        v6 += *v6 + 1;
        if (v6)
        {
          v7 = v6 >= a1 + a2;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          v3 = 0;
          v5 = 0;
          return v3 & v5;
        }
      }

      v8 = (v6 - v4 + 1);
      v5 = v8 < 0x101;
      v3 = v8 == 1;
    }
  }

  return v3 & v5;
}

uint64_t __dnssd_svcb_is_valid_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    if (a3)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else if ((a3 & 0x1FFFE) != 0)
    {
      if (((a3 >> 1) & 0xFFFE) != 0)
      {
        v3 = (a3 >> 1);
      }

      else
      {
        v3 = 1;
      }

      do
      {
        v4 = *(*(a1 + 32) + 8);
        if (*(v4 + 24))
        {
          break;
        }

        v5 = bswap32(*a2) >> 16;
        v6 = v5 - 1;
        v7 = v5 - 0x7FFF;
        if (v6 >= 7 && v7 >= 3)
        {
          *(v4 + 24) = 1;
        }

        ++a2;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

_WORD *_dnssd_svcb_extract_values(_WORD *result, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a2 - 2;
  if (a2 >= 2)
  {
    if (*result)
    {
      v5 = result + 1;
      if (result != -2 && (result + a2) > v5)
      {
        v8 = result + 1;
        while (*v8)
        {
          v8 += *v8 + 1;
          if (v8)
          {
            v9 = v8 >= result + a2;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            return result;
          }
        }

        v10 = (v8 - v5 + 1);
        if (v10 <= 0x100)
        {
          v11 = (v5 + v10);
          for (i = v4 - v10; i >= 4 && v11 != 0; v11 = (v15 + v14))
          {
            v14 = bswap32(v11[1]) >> 16;
            v9 = i - 4 >= v14;
            i = i - 4 - v14;
            if (!v9)
            {
              break;
            }

            v15 = v11 + 2;
            if (a3 == bswap32(*v11) >> 16)
            {
              result = (*(a4 + 16))(a4, v11 + 2, v14);
              if (!result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __dnssd_svcb_get_port_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3 == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2) >> 16;
  }

  return 0;
}

uint64_t __dnssd_svcb_copy_doh_uri_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 0;
}

uint64_t __dnssd_svcb_copy_doh_path_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 0;
}

void *__dnssd_svcb_copy_odoh_config_block_invoke(uint64_t a1, const void *a2, size_t size)
{
  if (!a2 || !size)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, size, 0x9A3689B8uLL);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
    **(a1 + 40) = size;
    memcpy(*(*(*(a1 + 32) + 8) + 24), a2, size);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t __dnssd_svcb_access_alpn_values_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && a3)
  {
    v6 = 0;
    do
    {
      v6 += 1 + *(a2 + v6);
      memset(v14, 0, 255);
      if (v6 > a3)
      {
        break;
      }

      __memcpy_chk();
      if (((*(*(a1 + 32) + 16))(*(a1 + 32), v14, v7, v8, v9, v10, v11, v12) & 1) == 0)
      {
        break;
      }
    }

    while (v6 < a3);
  }

  return 0;
}

void ___mdns_create_dns_over_bytestream_framer_block_invoke_3(id a1, const nw_framer *a2, const nw_protocol_metadata *a3, unint64_t a4, BOOL a5)
{
  if (a4 < 0x10000)
  {
    *output_buffer = bswap32(a4) >> 16;
    nw_framer_write_output(a2, output_buffer, 2uLL);
    nw_framer_write_output_no_copy(a2, a4);
  }

  else
  {

    nw_framer_mark_failed_with_error(a2, 40);
  }
}

unint64_t ___mdns_create_dns_over_bytestream_framer_block_invoke_6324(id a1, nw_framer *a2)
{
  do
  {
    *temp_buffer = 0;
    if (!nw_framer_parse_input(a2, 2uLL, 2uLL, temp_buffer, &__block_literal_global_9_6325))
    {
      break;
    }

    v3 = __rev16(*temp_buffer);
    v4 = nw_framer_message_create(a2);
    LODWORD(v3) = nw_framer_deliver_input_no_copy(a2, v3, v4, 1);
    nw_release(v4);
  }

  while (v3);
  return 2;
}

int ___mdns_create_dns_over_bytestream_framer_block_invoke_4(id a1, const nw_framer *a2)
{
  nw_framer_set_input_handler(a2, &__block_literal_global_5_6317);
  nw_framer_set_output_handler(a2, &__block_literal_global_13);
  return 1;
}

void *GetAddrInfoClientRequestStart(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v58, 0, sizeof(v58));
  v57 = 0u;
  v12 = 4294901756;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v13 = *(a2 + 1);
  v43 = 0;
  if (!AppendDNSNameString(&v43, v13, a3, a4, a5, a6, a7, a8))
  {
    v26 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v26 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }
    }

    v27 = *a2;
    v28 = *(a2 + 1);
    *buf = 67109635;
    *&buf[4] = v27;
    *&buf[8] = 2160;
    *&buf[10] = 1752392040;
    *&buf[18] = 2085;
    *&buf[20] = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: bad hostname '%{sensitive, mask.hash}s'", buf, 0x1Cu);
LABEL_41:
    GetAddrInfoClientRequestStop(a1, v14, v15, v16, v17, v18, v19, v20);
    return v12;
  }

  v21 = a2[6];
  if (v21 > 3)
  {
    goto LABEL_41;
  }

  if (v21)
  {
    v22 = a2[5];
  }

  else
  {
    v21 = 3;
    v22 = a2[5] | 0x8000;
  }

  *(a1 + 8) = v21;
  if ((v22 & 0x10000000) != 0)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetAddrInfoClientRequestStart: kDNSServiceFlagsServiceIndex is SET by the client", v16, v17, v18, v19, v20, v36);
    }

    v25 = 0;
    v24 = a2[4];
  }

  else
  {
    v37 = 0;
    RecordOpStart = InterfaceIndexToInterfaceID(a2[4], &v37, v15, v16, v17, v18, v19, v20);
    if (RecordOpStart)
    {
      goto LABEL_35;
    }

    v24 = -1;
    v25 = v37;
  }

  v29 = 0;
  *a1 = v25;
  v30 = *(a2 + 1);
  while (1)
  {
    v31 = *v30++;
    if (v31 == 46)
    {
      break;
    }

    if (v31 == 92)
    {
      ++v29;
    }

    else
    {
      if (!*(v30 - 1))
      {
        goto LABEL_27;
      }

LABEL_25:
      v29 = 0;
    }
  }

  if (*v30)
  {
    goto LABEL_25;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (AlwaysAppendSearchDomains || v43 && !*(&v43 + v43 + 1))
  {
    v32 = 1;
    goto LABEL_32;
  }

LABEL_31:
  v32 = 0;
LABEL_32:
  memset(buf, 0, sizeof(buf));
  v39 = 0u;
  v40 = 0u;
  memset(v42, 0, sizeof(v42));
  v41 = 0u;
  *buf = *a2;
  *&buf[8] = &v43;
  *&buf[18] = 1;
  *&buf[24] = v25;
  *&v39 = __PAIR64__(v22, v24);
  BYTE8(v39) = v32;
  HIDWORD(v39) = a2[7];
  *&v40 = *(a2 + 4);
  DWORD2(v40) = a2[10];
  v33 = *(a2 + 7);
  *&v41 = *(a2 + 6);
  *(&v41 + 1) = v33;
  LODWORD(v42[0]) = a2[16];
  BYTE5(v42[0]) = *(a2 + 68);
  *(v42 + 8) = *(a2 + 18);
  BYTE12(v40) = *(a2 + 88);
  WORD4(v42[1]) = *(a2 + 89);
  v34 = *(a1 + 8);
  if ((v34 & 2) == 0)
  {
    goto LABEL_37;
  }

  result = malloc_type_calloc(1uLL, 0x320uLL, 0x99C08619uLL);
  if (result)
  {
    *(a1 + 24) = result;
    *&buf[16] = 28;
    RecordOpStart = QueryRecordOpStart(result, buf, a3, a4);
    if (RecordOpStart)
    {
LABEL_35:
      v12 = RecordOpStart;
      goto LABEL_41;
    }

    v34 = *(a1 + 8);
LABEL_37:
    if ((v34 & 1) == 0)
    {
      return 0;
    }

    result = malloc_type_calloc(1uLL, 0x320uLL, 0x99C08619uLL);
    if (result)
    {
      *(a1 + 16) = result;
      *&buf[16] = 1;
      v12 = QueryRecordOpStart(result, buf, a3, a4);
      if (v12)
      {
        goto LABEL_41;
      }

      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InterfaceIndexToInterfaceID(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = mDNSPlatformInterfaceIDfromInterfaceIndex(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v10;
  if (!v9 || v10)
  {
LABEL_9:
    v17 = 0;
    *a2 = v16;
    return v17;
  }

  if (InterfaceIndexToInterfaceID_getLoopbackIndexOnce != -1)
  {
    dispatch_once(&InterfaceIndexToInterfaceID_getLoopbackIndexOnce, &__block_literal_global_6370);
  }

  if (v9 <= 0xFFFFFFFB && InterfaceIndexToInterfaceID_loopbackIndex != v9)
  {
    v16 = v9;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Query pending for interface index %d", v11, v12, v13, v14, v15, v9);
    }

    goto LABEL_9;
  }

  v17 = 4294901756;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: bad interfaceIndex %d", v11, v12, v13, v14, v15, v9);
  }

  return v17;
}

uint64_t QueryRecordOpStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = v8;
  while (1)
  {
    if (!v9 || (v10 = *v9, v10 > 0x3F))
    {
LABEL_6:
      LOWORD(v11) = 257;
      goto LABEL_8;
    }

    if (!*v9)
    {
      break;
    }

    v9 += v10 + 1;
    if (v9 - v8 > 255)
    {
      goto LABEL_6;
    }
  }

  v11 = (v9 - v8) + 1;
  if ((v11 & 0x10000) != 0)
  {
    goto LABEL_119;
  }

LABEL_8:
  v12 = malloc_type_malloc(v11, 0xCBB660uLL);
  if (!v12)
  {
    goto LABEL_119;
  }

  *(a1 + 696) = v12;
  memcpy(v12, *(a2 + 8), v11);
  *(a1 + 704) = *(a2 + 24);
  *(a1 + 728) = *a2;
  *(a1 + 712) = a3;
  *(a1 + 720) = a4;
  *(a1 + 759) = *(a2 + 61);
  *(a1 + 764) = *(a2 + 81);
  v13 = *(a2 + 83);
  *(a1 + 766) = v13;
  v14 = *(a2 + 84);
  *(a1 + 767) = v14;
  *(a1 + 762) = *(a2 + 16);
  if (!v13 || v14)
  {
    v15 = *(a2 + 64);
    if (v15)
    {
      *(a1 + 768) = *v15;
    }
  }

  v16 = *(a2 + 88);
  if (v16)
  {
    os_retain(v16);
  }

  v17 = *(a1 + 784);
  if (v17)
  {
    os_release(v17);
  }

  *(a1 + 784) = *(a2 + 88);
  v18 = *(a2 + 96);
  if (v18)
  {
    os_retain(v18);
  }

  v19 = *(a1 + 792);
  if (v19)
  {
    os_release(v19);
  }

  v20 = *(a2 + 96);
  *(a1 + 792) = v20;
  v21 = *(a2 + 36);
  *(a1 + 324) = v21;
  if (*(a2 + 40))
  {
    v21 &= ~0x40000000u;
    *(a1 + 324) = v21;
  }

  v22 = EnableAllowExpired && (v21 & 0x80000000) != 0 && !*(a2 + 85);
  *(a1 + 647) = v22;
  *(a1 + 280) = *(a2 + 32);
  *(a1 + 654) = *(a2 + 60);
  *(a1 + 120) = *(a1 + 784);
  *(a1 + 128) = v20;
  *(a1 + 136) = *(a2 + 24);
  v23 = *(a2 + 8);
  v24 = v23;
  do
  {
    if (!v24)
    {
      break;
    }

    v25 = *v24;
    if (v25 > 0x3F)
    {
      break;
    }

    if (!*v24)
    {
      v26 = v24 - v23 + 1;
      if (v26 <= 0x100u)
      {
        memcpy((a1 + 376), v23, v26);
        goto LABEL_36;
      }

      break;
    }

    v24 += v25 + 1;
  }

  while (v24 - v23 <= 255);
  *(a1 + 376) = 0;
LABEL_36:
  *(a1 + 342) = *(a2 + 16);
  *(a1 + 632) = BYTE1(v21) & 1;
  v27 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v21), xmmword_10010D330)), 0x1000100010001);
  *(a1 + 634) = vuzp1_s8(v27, v27).u32[0];
  *(a1 + 640) = (v21 & 0x80000) != 0;
  *(a1 + 656) = _os_feature_enabled_impl() & (v21 >> 21);
  v28 = *(a2 + 40);
  *(a1 + 641) = v28;
  v29 = *(a2 + 16) == 1 && *(a2 + 105) != 0;
  *(a1 + 645) = v29;
  *(a1 + 648) = *(a2 + 80);
  *a1 = *(a2 + 72);
  *(a1 + 651) = *(a1 + 766);
  if (*(a1 + 765))
  {
    *(a1 + 643) = 1;
    if (!*(a1 + 136))
    {
      *(a1 + 642) = 1;
    }
  }

  *(a1 + 360) = *(a1 + 768);
  *(a1 + 644) = *(a2 + 85);
  *(a1 + 357) = 0;
  *(a1 + 690) = *(a2 + 104);
  *(a1 + 244) = *(a2 + 44);
  v30 = *(a2 + 48);
  if (v30)
  {
    *(a1 + 657) = *v30;
  }

  *(a1 + 248) = *(a2 + 56);
  *(a1 + 252) = *a2;
  *(a1 + 152) = QueryRecordOpCallback;
  *(a1 + 160) = QueryRecordOpResetHandler;
  *(a1 + 168) = QueryRecordOpEventHandler;
  if (v28)
  {
    v31 = *(a1 + 696);
    if (*v31)
    {
      if (!v31[*v31 + 1])
      {
        *(a1 + 136) = -2;
      }
    }
  }

  v32 = *(a1 + 342);
  if (v32 != 1 && v32 != 28)
  {
    if (v32 != 33)
    {
      goto LABEL_60;
    }

    v33 = (a1 + 376);
    v34 = *(a1 + 376) ? *(a1 + 376) + 1 : 0;
    if (!SameDomainLabelPointer(&v33[v34], "\x04_tcp"))
    {
      v35 = *v33 ? *v33 + 1 : 0;
      if (!SameDomainLabelPointer(&v33[v35], "\x04_udp"))
      {
        goto LABEL_60;
      }
    }
  }

  if (*(a1 + 634))
  {
    goto LABEL_60;
  }

  v54 = a1 + 376;
  v55 = *(a1 + 376);
  if (*(a1 + 376))
  {
    do
    {
      v56 = v54;
      v57 = v54 + v55;
      v58 = *(v57 + 1);
      v54 = v57 + 1;
      v55 = v58;
    }

    while (v58);
  }

  else
  {
    v56 = a1 + 376;
  }

  if (!SameDomainLabelPointer(v56, "\x05local"))
  {
LABEL_60:
    v36 = 0;
    goto LABEL_61;
  }

  v59 = malloc_type_calloc(1uLL, 0x2B8uLL, 0x31468F2uLL);
  if (!v59)
  {
LABEL_119:
    __break(1u);
  }

  *(a1 + 744) = v59;
  memcpy(v59, a1, 0x2B8uLL);
  v36 = 1;
LABEL_61:
  RecordOpStartQuestion = QueryRecordOpStartQuestion(a1, a1);
  if (!RecordOpStartQuestion)
  {
    if (callExternalHelpers(*(a1 + 136), (a1 + 376), *(a1 + 324), v38, v39, v40, v41, v42))
    {
      external_start_browsing_for_service(*(a1 + 136), (a1 + 376), *(a1 + 342), *(a1 + 324), *(a1 + 244));
    }

    if (!v36)
    {
      return 0;
    }

    v45 = *(a1 + 744);
    if (!v45)
    {
      v43 = 4294901754;
      goto LABEL_63;
    }

    v46 = (v45 + 376);
    v47 = *(v45 + 376);
    if (*(v45 + 376))
    {
      v48 = 0;
      v49 = v45 + 376;
      do
      {
        ++v48;
        v50 = v49 + v47;
        v51 = *(v50 + 1);
        v49 = v50 + 1;
        v47 = v51;
      }

      while (v51);
      if (v48 == 2 && !SameDomainNameBytes((v45 + 376), ActiveDirectoryPrimaryDomain) && !DomainNameIsInSearchList((v45 + 376), 0))
      {
        *(a1 + 752) = *(v45 + 342);
        *(a1 + 754) = *(v45 + 632);
        *(a1 + 755) = *(v45 + 635);
        *(a1 + 756) = *(v45 + 637);
        *(a1 + 757) = *(v45 + 641);
        v52 = "\x05local";
        do
        {
          if (!v52)
          {
            break;
          }

          v53 = *v52;
          if (v53 > 0x3F)
          {
            break;
          }

          if (!*v52)
          {
            v60 = v52 - "\x05local" + 1;
            if (v60 <= 0x100u)
            {
              memcpy((v45 + 376), "\x05local", v60);
              goto LABEL_94;
            }

            break;
          }

          v52 += v53 + 1;
        }

        while (v52 - "\x05local" <= 255);
        *v46 = 0;
LABEL_94:
        *(v45 + 342) = 6;
        *(v45 + 635) = 1;
        *(v45 + 637) = 0;
        *(v45 + 641) = 0;
      }
    }

    *(v45 + 638) = 1;
    *(v45 + 632) = 0;
    v61 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v62 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v62 = 1;
    }

    if (v62)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_117;
      }

      v63 = *(a1 + 728);
      v64 = (v45 + 376);
      while (1)
      {
        if (!v64 || (v65 = *v64, v65 > 0x3F))
        {
LABEL_106:
          v66 = 257;
          goto LABEL_116;
        }

        if (!*v64)
        {
          break;
        }

        v64 += v65 + 1;
        if (v64 - v46 >= 256)
        {
          goto LABEL_106;
        }
      }

      v66 = (v64 - v46 + 1);
    }

    else
    {
      v61 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_117:
        v43 = QueryRecordOpStartQuestion(a1, v45);
        if (!v43)
        {
          return v43;
        }

        goto LABEL_63;
      }

      v63 = *(a1 + 728);
      v68 = (v45 + 376);
      while (1)
      {
        if (!v68 || (v69 = *v68, v69 > 0x3F))
        {
LABEL_113:
          v66 = 257;
          goto LABEL_116;
        }

        if (!*v68)
        {
          break;
        }

        v68 += v69 + 1;
        if (v68 - v46 >= 256)
        {
          goto LABEL_113;
        }
      }

      v66 = (v68 - v46 + 1);
    }

LABEL_116:
    v70 = DNSTypeName(*(v45 + 342));
    v71[0] = 67110147;
    v71[1] = v63;
    v72 = 2160;
    v73 = 1752392040;
    v74 = 1040;
    v75 = v66;
    v76 = 2101;
    v77 = v45 + 376;
    v78 = 2082;
    v79 = v70;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpStart: starting parallel unicast query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s", v71, 0x2Cu);
    goto LABEL_117;
  }

  v43 = RecordOpStartQuestion;
LABEL_63:
  QueryRecordOpStop(a1);
  return v43;
}

void GetAddrInfoClientRequestStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    QueryRecordOpStop(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    QueryRecordOpStop(v10);
    v11 = *(a1 + 24);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 16);
  if (v12 && !*(v12 + 758))
  {
    if (*(v12 + 637))
    {
      mDNSPlatformUpdateDNSStatus(*(a1 + 16));
    }

    v12 = 0;
  }

  if (v11 && !*(v11 + 758))
  {
    if (*(v11 + 637))
    {
      mDNSPlatformUpdateDNSStatus(v11);
    }

    v11 = 0;
  }

  mDNSPlatformTriggerDNSRetry(v12, v11, a3, a4, a5, a6, a7, a8, v15);
  v13 = *(a1 + 16);
  if (v13)
  {
    free(v13);
    *(a1 + 16) = 0;
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    free(v14);
    *(a1 + 24) = 0;
  }
}

void QueryRecordOpStop(uint64_t a1)
{
  if (*(a1 + 176))
  {
    resolved_cache_delete(a1);
    mDNS_StopQuery(mDNSStorage, a1);
    *(a1 + 176) = 0;
    if (callExternalHelpers(*(a1 + 136), *(a1 + 696), *(a1 + 324), v2, v3, v4, v5, v6))
    {
      external_stop_browsing_for_service(*(a1 + 136), (a1 + 376), *(a1 + 342), *(a1 + 324), *(a1 + 244));
    }
  }

  v7 = *(a1 + 696);
  if (v7)
  {
    free(v7);
    *(a1 + 696) = 0;
  }

  v8 = *(a1 + 744);
  if (v8)
  {
    if (!v8[22] || (resolved_cache_delete(*(a1 + 744)), mDNS_StopQuery(mDNSStorage, v8), v8[22] = 0, (v8 = *(a1 + 744)) != 0))
    {
      free(v8);
    }

    *(a1 + 744) = 0;
  }

  v9 = *(a1 + 784);
  if (v9)
  {
    os_release(v9);
    *(a1 + 784) = 0;
  }

  v10 = *(a1 + 792);
  if (v10)
  {
    os_release(v10);
    *(a1 + 792) = 0;
  }
}

uint64_t QueryRecordOpStartQuestion(uint64_t a1, uint64_t a2)
{
  *(a2 + 176) = a1;
  started = mDNS_StartQuery(mDNSStorage, a2);
  if (started)
  {
    v5 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        *(a2 + 176) = 0;
        return started;
      }

      v7 = *(a1 + 728);
      v8 = a2 + 376;
      v9 = (a2 + 376);
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_13:
          v11 = 257;
          goto LABEL_23;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (&v9[-v8] >= 256)
        {
          goto LABEL_13;
        }
      }

      v11 = (v9 - v8 + 1);
    }

    else
    {
      v5 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 728);
      v13 = a2 + 376;
      v14 = (a2 + 376);
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_20:
          v11 = 257;
          goto LABEL_23;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (&v14[-v13] >= 256)
        {
          goto LABEL_20;
        }
      }

      v11 = (v14 - v13 + 1);
    }

LABEL_23:
    v16 = DNSTypeName(*(a2 + 342));
    v18[0] = 67110403;
    v18[1] = v7;
    v19 = 2160;
    v20 = 1752392040;
    v21 = 1040;
    v22 = v11;
    v23 = 2101;
    v24 = a2 + 376;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = started;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: QueryRecordOpStartQuestion mDNS_StartQuery for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s failed with error %d", v18, 0x32u);
    goto LABEL_24;
  }

  return started;
}

uint64_t DomainNameIsInSearchList(_BYTE *a1, int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      ++v5;
      v7 = &v6[v4];
      v8 = v7[1];
      v6 = v7 + 1;
      v4 = v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v9 = SearchList;
  if (!SearchList)
  {
    return 0;
  }

  while (1)
  {
    if (!a2 || !SameDomainNameBytes((v9 + 8), "\x05local"))
    {
      v10 = *(v9 + 8);
      if (*(v9 + 8))
      {
        v11 = 0;
        v12 = v9 + 8;
        do
        {
          ++v11;
          v13 = v12 + v10;
          v14 = *(v13 + 1);
          v12 = v13 + 1;
          v10 = v14;
        }

        while (v14);
      }

      else
      {
        v11 = 0;
      }

      if (v5 >= v11)
      {
        v15 = a1;
        if (v5 - v11 >= 1)
        {
          v16 = v5 + 1 - v11;
          v15 = a1;
          do
          {
            if (!*v15)
            {
              break;
            }

            v15 += *v15 + 1;
            --v16;
          }

          while (v16 > 1);
        }

        if (SameDomainNameBytes((v9 + 8), v15))
        {
          break;
        }
      }
    }

    v9 = *v9;
    if (!v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t QueryRecordOpEventHandler(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    return result;
  }

  v2 = result;
  if (*(result + 647) != 1)
  {
    return result;
  }

  v3 = *(result + 176);
  if (!*(v3 + 760))
  {
    return result;
  }

  resolved_cache_delete(result);
  mDNS_StopQuery(mDNSStorage, v2);
  *(v2 + 176) = 0;
  v4 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v11 = *(v3 + 728);
    v12 = bswap32(*(v2 + 340)) >> 16;
    v17 = v2 + 376;
    v18 = (v2 + 376);
    while (1)
    {
      if (!v18 || (v19 = *v18, v19 > 0x3F))
      {
LABEL_19:
        v16 = 257;
        goto LABEL_21;
      }

      if (!*v18)
      {
        break;
      }

      v18 += v19 + 1;
      if (&v18[-v17] >= 256)
      {
        goto LABEL_19;
      }
    }

    v16 = (v18 - v17 + 1);
LABEL_21:
    v20 = *(v3 + 696);
    if (v20)
    {
      v21 = *(v3 + 696);
      while (1)
      {
        if (!v21 || (v22 = *v21, v22 > 0x3F))
        {
LABEL_27:
          v23 = 257;
          goto LABEL_40;
        }

        if (!*v21)
        {
          break;
        }

        v21 += v22 + 1;
        if (&v21[-v20] >= 256)
        {
          goto LABEL_27;
        }
      }

      v23 = (v21 - v20 + 1);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v11 = *(v3 + 728);
    v12 = bswap32(*(v2 + 340)) >> 16;
    v13 = v2 + 376;
    v14 = (v2 + 376);
    while (1)
    {
      if (!v14 || (v15 = *v14, v15 > 0x3F))
      {
LABEL_12:
        v16 = 257;
        goto LABEL_30;
      }

      if (!*v14)
      {
        break;
      }

      v14 += v15 + 1;
      if (&v14[-v13] >= 256)
      {
        goto LABEL_12;
      }
    }

    v16 = (v14 - v13 + 1);
LABEL_30:
    v20 = *(v3 + 696);
    if (v20)
    {
      v24 = *(v3 + 696);
      while (1)
      {
        if (!v24 || (v25 = *v24, v25 > 0x3F))
        {
LABEL_36:
          v23 = 257;
          goto LABEL_40;
        }

        if (!*v24)
        {
          break;
        }

        v24 += v25 + 1;
        if (&v24[-v20] >= 256)
        {
          goto LABEL_36;
        }
      }

      v23 = (v24 - v20 + 1);
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_40:
  v26 = *(v2 + 342);
  v32[0] = 67111171;
  v32[1] = v11;
  v33 = 1024;
  v34 = v12;
  v35 = 2160;
  v36 = 1752392040;
  v37 = 1040;
  v38 = v16;
  v39 = 2101;
  v40 = v2 + 376;
  v41 = 2160;
  v42 = 1752392040;
  v43 = 1040;
  v44 = v23;
  v45 = 2101;
  v46 = v20;
  v47 = 1024;
  v48 = v26;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[R%u->Q%u] Restarting question that got expired CNAMEs -- current name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, original name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", v32, 0x48u);
LABEL_41:
  *(v3 + 760) = 0;
  v27 = *(v3 + 696);
  v28 = v27;
  do
  {
    if (!v28)
    {
      break;
    }

    v29 = *v28;
    if (v29 > 0x3F)
    {
      break;
    }

    if (!*v28)
    {
      v30 = v28 - v27 + 1;
      if (v30 <= 0x100u)
      {
        memcpy((v2 + 376), v27, v30);
        goto LABEL_50;
      }

      break;
    }

    v28 += v29 + 1;
  }

  while (v28 - v27 <= 255);
  *(v2 + 376) = 0;
LABEL_50:
  *(v2 + 647) = 2;
  *(v2 + 360) = *(v3 + 768);
  if (*(v2 + 641) && *(v3 + 732) >= 1)
  {
    *(v3 + 732) = *(v3 + 736);
    SearchDomain = NextSearchDomain(v3, v27, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    SearchDomain = 0;
  }

  return QueryRecordOpRestartUnicastQuestion(v3, v2, SearchDomain);
}

uint64_t *NextSearchDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 732);
  v10 = &SearchList;
  *(a1 + 736) = v9;
  if (v9 < 0)
  {
LABEL_43:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain: count %d less than zero", a4, a5, a6, a7, a8, v9);
  }

  else
  {
LABEL_2:
    v11 = *(a1 + 704);
    do
    {
      v10 = *v10;
      v12 = v9-- != 0;
    }

    while (v12 && v10);
    while (v10)
    {
      v14 = v10 + 1;
      v13 = *(v10 + 8);
      if (!*(v10 + 8))
      {
        goto LABEL_24;
      }

      v15 = -1;
      v16 = 1;
      v17 = v10 + 1;
      do
      {
        v18 = v15;
        v19 = v16;
        v20 = v17 + v13;
        v21 = v20[1];
        v17 = (v20 + 1);
        v13 = v21;
        ++v15;
        ++v16;
      }

      while (v21);
      if (v18 + 2 < 2)
      {
        goto LABEL_24;
      }

      v22 = (v10 + 1);
      if (v18)
      {
        v22 = (v10 + 1);
        do
        {
          if (!*v22)
          {
            break;
          }

          v22 += *v22 + 1;
          --v19;
        }

        while (v19 > 2);
      }

      if (SameDomainNameBytes(v22, "\ain-addr\x04arpa") || SameDomainNameBytes(v22, "\x03ip6\x04arpa"))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v31 = v10[34];
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain: skipping search domain %##s, InterfaceID %p", a4, a5, a6, a7, a8, v10 + 8);
        }

        ++*(a1 + 732);
      }

      else
      {
LABEL_24:
        ++*(a1 + 732);
        if (v10[34] == v11)
        {
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain returning domain %##s, InterfaceID %p", a4, a5, a6, a7, a8, v10 + 8);
          }

          v23 = *(a1 + 696);
          v24 = v23;
          while (1)
          {
            if (!v24 || (v25 = *v24, v25 > 0x3F))
            {
LABEL_32:
              v26 = 256;
              goto LABEL_34;
            }

            if (!*v24)
            {
              break;
            }

            v24 += v25 + 1;
            if (v24 - v23 >= 256)
            {
              goto LABEL_32;
            }
          }

          v26 = (v24 - v23 + 1) - 1;
LABEL_34:
          v27 = v10 + 1;
          while (1)
          {
            if (!v27 || (v28 = *v27, v28 > 0x3F))
            {
LABEL_39:
              v29 = 257;
              goto LABEL_41;
            }

            if (!*v27)
            {
              break;
            }

            v27 += v28 + 1;
            if (v27 - v14 >= 256)
            {
              goto LABEL_39;
            }
          }

          v29 = (v27 - v14 + 1);
LABEL_41:
          if (v26 + v29 < 257)
          {
            return v14;
          }

          v9 = *(a1 + 732);
          v10 = &SearchList;
          if ((v9 & 0x80000000) == 0)
          {
            goto LABEL_2;
          }

          goto LABEL_43;
        }

        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain skipping domain %##s, InterfaceID %p", a4, a5, a6, a7, a8, v10 + 8);
        }
      }

      v10 = *v10;
    }
  }

  v14 = 0;
  *(a1 + 732) = -1;
  return v14;
}

uint64_t QueryRecordOpRestartUnicastQuestion(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(a2 + 136) = *(a1 + 704);
  v6 = *(a1 + 696);
  v7 = v6;
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *v7;
    if (v8 > 0x3F)
    {
      break;
    }

    if (!*v7)
    {
      v9 = v7 - v6 + 1;
      if (v9 <= 0x100u)
      {
        memcpy((a2 + 376), v6, v9);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      break;
    }

    v7 += v8 + 1;
  }

  while (v7 - v6 <= 255);
  *(a2 + 376) = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_11:
  AppendDomainName((a2 + 376), a3);
LABEL_12:
  v10 = a2 + 376;
  v11 = *(a2 + 376);
  if (*(a2 + 376))
  {
    do
    {
      v12 = v10;
      v13 = v10 + v11;
      v14 = *(v13 + 1);
      v10 = v13 + 1;
      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v12 = a2 + 376;
  }

  *(a2 + 638) = SameDomainLabelPointer(v12, "\x05local") != 0;

  return QueryRecordOpStartQuestion(a1, a2);
}

void *QueryRecordOpResetHandler(void *result)
{
  v1 = result;
  v2 = result[22];
  v3 = v2[87];
  v4 = v3;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    if (v5 > 0x3F)
    {
      break;
    }

    if (!*v4)
    {
      v6 = v4 - v3 + 1;
      if (v6 <= 0x100u)
      {
        result = memcpy(result + 47, v3, v6);
        goto LABEL_10;
      }

      break;
    }

    v4 += v5 + 1;
  }

  while (v4 - v3 <= 255);
  *(result + 376) = 0;
LABEL_10:
  if (*(v1 + 641) && (v7 = v2[87], *v7) && !v7[*v7 + 1])
  {
    v8 = &mDNSInterface_LocalOnly;
  }

  else
  {
    v8 = v2 + 88;
  }

  v1[17] = *v8;
  *(v2 + 732) = 0;
  return result;
}

void QueryRecordOpCallback(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a2 + 176);
  v13 = *(v12 + 744);
  if (v13 == a2 && *(a2 + 342) == 6)
  {
    if (*(a3 + 2) != 6)
    {
      return;
    }

    resolved_cache_delete(*(v12 + 744));
    mDNS_StopQuery(mDNSStorage, v13);
    *(v13 + 176) = 0;
    *(v13 + 342) = *(v12 + 752);
    *(v13 + 632) = *(v12 + 754);
    *(v13 + 635) = *(v12 + 755);
    *(v13 + 637) = *(v12 + 756);
    v21 = *(v12 + 757);
    *(v13 + 641) = v21;
    if (*a3 == 240)
    {
      if (!v21)
      {
        return;
      }

      SearchDomain = NextSearchDomain(v12, v14, v15, v16, v17, v18, v19, v20);
      if (!SearchDomain)
      {
        return;
      }

      v23 = SearchDomain;
      v24 = v12;
      v25 = v13;
    }

    else
    {
      v24 = v12;
      v25 = v13;
      v23 = 0;
    }

    goto LABEL_64;
  }

  if (a4 != 1 || *(a2 + 647) != 1)
  {
    if (a4 == 4)
    {
      v26 = 4294901742;
      v27 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v28 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_115;
        }

        v29 = *(v12 + 728);
        v30 = a2 + 376;
        v31 = (a2 + 376);
        while (1)
        {
          if (!v31 || (v32 = *v31, v32 > 0x3F))
          {
LABEL_28:
            v33 = 257;
            goto LABEL_114;
          }

          if (!*v31)
          {
            break;
          }

          v31 += v32 + 1;
          if (&v31[-v30] >= 256)
          {
            goto LABEL_28;
          }
        }

        v33 = (v31 - v30 + 1);
      }

      else
      {
        v27 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_115;
        }

        v29 = *(v12 + 728);
        v44 = a2 + 376;
        v45 = (a2 + 376);
        while (1)
        {
          if (!v45 || (v46 = *v45, v46 > 0x3F))
          {
LABEL_55:
            v33 = 257;
            goto LABEL_114;
          }

          if (!*v45)
          {
            break;
          }

          v45 += v46 + 1;
          if (&v45[-v44] >= 256)
          {
            goto LABEL_55;
          }
        }

        v33 = (v45 - v44 + 1);
      }

LABEL_114:
      v80 = DNSTypeName(*(a2 + 342));
      v102 = 67110147;
      v103 = v29;
      v104 = 2160;
      v105 = 1752392040;
      v106 = 1040;
      v107 = v33;
      v108 = 2101;
      v109 = a2 + 376;
      v110 = 2082;
      v111 = v80;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[R%u] QueryRecordOpCallback: Suppressed question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", &v102, 0x2Cu);
      goto LABEL_115;
    }

LABEL_29:
    if (*a3 != 240)
    {
      v26 = 0;
      goto LABEL_42;
    }

    if (*(a2 + 637))
    {
      mDNS_Lock_(a1, "GetTimeNow", 749);
      v34 = *(a1 + 64);
      mDNS_Unlock_(a1, "GetTimeNow", 751);
      if (v34 - *(a2 + 240) >= 0)
      {
        v35 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          v26 = 4294901728;
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_134;
          }

          v36 = *(v12 + 728);
          v47 = a2 + 376;
          v48 = (a2 + 376);
          while (1)
          {
            if (!v48 || (v49 = *v48, v49 > 0x3F))
            {
LABEL_62:
              v40 = 257;
              goto LABEL_133;
            }

            if (!*v48)
            {
              break;
            }

            v48 += v49 + 1;
            if (&v48[-v47] >= 256)
            {
              goto LABEL_62;
            }
          }

          v40 = (v48 - v47 + 1);
        }

        else
        {
          v35 = mDNSLogCategory_Default_redacted;
          v26 = 4294901728;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_134;
          }

          v36 = *(v12 + 728);
          v37 = a2 + 376;
          v38 = (a2 + 376);
          while (1)
          {
            if (!v38 || (v39 = *v38, v39 > 0x3F))
            {
LABEL_40:
              v40 = 257;
              goto LABEL_133;
            }

            if (!*v38)
            {
              break;
            }

            v38 += v39 + 1;
            if (&v38[-v37] >= 256)
            {
              goto LABEL_40;
            }
          }

          v40 = (v38 - v37 + 1);
        }

LABEL_133:
        v87 = DNSTypeName(*(a2 + 342));
        v88 = *(a2 + 136);
        v102 = 67110403;
        v103 = v36;
        v104 = 2160;
        v105 = 1752392040;
        v106 = 1040;
        v107 = v40;
        v108 = 2101;
        v109 = a2 + 376;
        v110 = 2082;
        v111 = v87;
        v112 = 2048;
        v113 = v88;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpCallback: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) timing out, InterfaceID %p", &v102, 0x36u);
LABEL_134:
        v41 = 1;
        if (a4)
        {
LABEL_135:
          if (&_NEHelperTrackerGetAppInfo && *(a2 + 340) && ((*(a3 + 3) + 5) > 3 || *(a3 + 3) == -4) && *a3 != 240)
          {
            v92 = *(a3 + 2);
            if (v92 == 28 || v92 == 1)
            {
              v93 = &s_head_0;
              while (1)
              {
                v93 = *v93;
                if (!v93)
                {
                  break;
                }

                if (v93[1] == a2)
                {
                  if (v92 == 1)
                  {
                    v94 = 4;
                  }

                  else
                  {
                    v94 = 16;
                  }

                  v95 = CFDataCreate(kCFAllocatorDefault, (*(a3 + 5) + 4), v94);
                  if (v95)
                  {
                    v96 = v95;
                    CFArrayAppendValue(v93[6], v95);
                    CFRelease(v96);
                  }

                  break;
                }
              }
            }
          }
        }

LABEL_139:
        v89 = *(v12 + 712);
        if (v89)
        {
          if (a4 == 1)
          {
            if (*(v12 + 760))
            {
              v90 = 1;
            }

            else
            {
              v90 = a3[2] == 2;
            }
          }

          else
          {
            v90 = 0;
          }

          v89(a1, a2, a3, v90, a4, v26, *(v12 + 720));
        }

        v91 = v41 ^ 1;
        if (*(a1 + 208) != a2)
        {
          v91 = 1;
        }

        if ((v91 & 1) == 0)
        {
          resolved_cache_delete(a2);
          mDNS_StopQuery(mDNSStorage, a2);
          *(a2 + 176) = 0;
        }

        return;
      }
    }

    if (*(a2 + 641))
    {
      if (a4)
      {
        if ((*(v12 + 732) & 0x80000000) == 0)
        {
          v42 = NextSearchDomain(v12, a2, a3, a4, a5, a6, a7, a8);
          if (v42 || (v50 = *(v12 + 696), *v50) && !v50[*v50 + 1])
          {
            resolved_cache_delete(a2);
            mDNS_StopQuery(mDNSStorage, a2);
            *(a2 + 176) = 0;
            v24 = v12;
            v25 = a2;
            v23 = v42;
LABEL_64:

            QueryRecordOpRestartUnicastQuestion(v24, v25, v23);
            return;
          }
        }
      }
    }

    if (!*(v12 + 759) || *(a2 + 342) != 28 || (v51 = a3[1], v51 == 3))
    {
      if (*(v12 + 764))
      {
        if (!*(a2 + 643))
        {
          v59 = *(a2 + 80);
          if (v59)
          {
            if (*(v59 + 96) && nw_resolver_config_get_allow_failover())
            {
              QueryRecordOpStopQuestion(a2);
              v60 = *(v12 + 762);
              *(a2 + 342) = v60;
              *(a2 + 643) = 1;
              if (!*(a2 + 136))
              {
                *(a2 + 642) = 1;
              }

              v61 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                {
                  v69 = *(v12 + 728);
                  v97 = a2 + 376;
                  v98 = (a2 + 376);
                  while (1)
                  {
                    if (!v98 || (v99 = *v98, v99 > 0x3F))
                    {
LABEL_168:
                      v73 = 257;
                      goto LABEL_178;
                    }

                    if (!*v98)
                    {
                      break;
                    }

                    v98 += v99 + 1;
                    if (&v98[-v97] >= 256)
                    {
                      goto LABEL_168;
                    }
                  }

                  v73 = (v98 - v97 + 1);
                  goto LABEL_178;
                }
              }

              else
              {
                v61 = mDNSLogCategory_Default_redacted;
                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                {
                  v69 = *(v12 + 728);
                  v70 = a2 + 376;
                  v71 = (a2 + 376);
                  while (1)
                  {
                    if (!v71 || (v72 = *v71, v72 > 0x3F))
                    {
LABEL_102:
                      v73 = 257;
                      goto LABEL_178;
                    }

                    if (!*v71)
                    {
                      break;
                    }

                    v71 += v72 + 1;
                    if (&v71[-v70] >= 256)
                    {
                      goto LABEL_102;
                    }
                  }

                  v73 = (v71 - v70 + 1);
LABEL_178:
                  v102 = 67110147;
                  v103 = v69;
                  v104 = 2160;
                  v105 = 1752392040;
                  v106 = 1040;
                  v107 = v73;
                  v108 = 2101;
                  v109 = a2 + 376;
                  v110 = 2082;
                  v111 = DNSTypeName(v60);
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "[R%u] Restarting question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) due to DNS service failover", &v102, 0x2Cu);
                }
              }

              if (*(a2 + 641))
              {
                *(v12 + 732) = 0;
                v101 = NextSearchDomain(v12, v62, v63, v64, v65, v66, v67, v68);
              }

              else
              {
                v101 = 0;
              }

              QueryRecordOpRestartUnicastQuestion(v12, a2, v101);
              return;
            }
          }
        }
      }

      v26 = 4294901742;
      if (*(a3 + 3) || !IsLocalDomain(*(a3 + 4)))
      {
        goto LABEL_42;
      }

      v52 = *(a2 + 342);
      if ((v52 != 28 && v52 != 1 || a3[1]) && !DomainNameIsInSearchList((a2 + 376), 1))
      {
        return;
      }

      v53 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v54 = *(v12 + 728);
        v84 = a2 + 376;
        v85 = (a2 + 376);
        while (1)
        {
          if (!v85 || (v86 = *v85, v86 > 0x3F))
          {
LABEL_130:
            v58 = 257;
            goto LABEL_175;
          }

          if (!*v85)
          {
            break;
          }

          v85 += v86 + 1;
          if (&v85[-v84] >= 256)
          {
            goto LABEL_130;
          }
        }

        v58 = (v85 - v84 + 1);
      }

      else
      {
        v53 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v54 = *(v12 + 728);
        v55 = a2 + 376;
        v56 = (a2 + 376);
        while (1)
        {
          if (!v56 || (v57 = *v56, v57 > 0x3F))
          {
LABEL_88:
            v58 = 257;
            goto LABEL_175;
          }

          if (!*v56)
          {
            break;
          }

          v56 += v57 + 1;
          if (&v56[-v55] >= 256)
          {
            goto LABEL_88;
          }
        }

        v58 = (v56 - v55 + 1);
      }

LABEL_175:
      v100 = DNSTypeName(*(a2 + 342));
      v102 = 67110147;
      v103 = v54;
      v104 = 2160;
      v105 = 1752392040;
      v106 = 1040;
      v107 = v58;
      v108 = 2101;
      v109 = a2 + 376;
      v110 = 2082;
      v111 = v100;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpCallback: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) answering local with negative unicast response", &v102, 0x2Cu);
LABEL_42:
      if (a4 == 1)
      {
        v41 = 0;
        *(v12 + 758) = 1;
        goto LABEL_135;
      }

LABEL_115:
      v41 = 0;
      if (a4)
      {
        goto LABEL_135;
      }

      goto LABEL_139;
    }

    v74 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v12 + 728);
        v81 = a2 + 376;
        v82 = (a2 + 376);
        while (1)
        {
          if (!v82 || (v83 = *v82, v83 > 0x3F))
          {
LABEL_123:
            v79 = 257;
            goto LABEL_171;
          }

          if (!*v82)
          {
            break;
          }

          v82 += v83 + 1;
          if (&v82[-v81] >= 256)
          {
            goto LABEL_123;
          }
        }

        v79 = (v82 - v81 + 1);
        goto LABEL_171;
      }
    }

    else
    {
      v74 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v12 + 728);
        v76 = a2 + 376;
        v77 = (a2 + 376);
        while (1)
        {
          if (!v77 || (v78 = *v77, v78 > 0x3F))
          {
LABEL_111:
            v79 = 257;
            goto LABEL_171;
          }

          if (!*v77)
          {
            break;
          }

          v77 += v78 + 1;
          if (&v77[-v76] >= 256)
          {
            goto LABEL_111;
          }
        }

        v79 = (v77 - v76 + 1);
LABEL_171:
        v102 = 67110147;
        v103 = v75;
        v104 = 2160;
        v105 = 1752392040;
        v106 = 1040;
        v107 = v79;
        v108 = 2101;
        v109 = a2 + 376;
        v110 = 1024;
        LODWORD(v111) = v51;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "[R%u] Restarting question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P AAAA record as question for A record (RCODE %d)", &v102, 0x28u);
      }
    }

    resolved_cache_delete(a2);
    mDNS_StopQuery(mDNSStorage, a2);
    *(a2 + 176) = 0;
    *(a2 + 342) = 1;
    QueryRecordOpStartQuestion(v12, a2);
    return;
  }

  if (*(a3 + 2) != 5)
  {
    goto LABEL_29;
  }

  if (a3[2] == 2)
  {
    *(v12 + 760) = 1;
  }

  if (*(a2 + 635) || *(a2 + 342) == 5)
  {
    goto LABEL_29;
  }
}

void QueryRecordOpStopQuestion(uint64_t a1)
{
  resolved_cache_delete(a1);
  mDNS_StopQuery(mDNSStorage, a1);
  *(a1 + 176) = 0;
}

BOOL GetAddrInfoClientRequestIsMulticast(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = 1;
  if (!v1 || *(v1 + 340) || *(v1 + 212) <= 0)
  {
    v2 = *(a1 + 24);
    if (!v2 || *(v2 + 340) || *(v2 + 212) <= 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t QueryRecordClientRequestStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v36, 0, 256);
  if (*(a2 + 68))
  {
    RecordOpStart = 4294901741;
    if (!*(a2 + 72))
    {
      goto LABEL_9;
    }

    v13 = xpc_copy_entitlement_for_token();
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    xpc_release(v13);
    if (v14 != &_xpc_BOOL_true)
    {
      goto LABEL_9;
    }

    v15 = *(a2 + 48);
    if (!v15)
    {
      RecordOpStart = 4294901756;
      goto LABEL_9;
    }

    Querier_RegisterPathResolver(v15);
  }

  v30 = 0;
  v16 = InterfaceIndexToInterfaceID(*(a2 + 16), &v30, a3, a4, a5, a6, a7, a8);
  if (v16)
  {
    RecordOpStart = v16;
LABEL_9:
    QueryRecordClientRequestStop(a1, a2, a3, a4, a5, a6, a7, a8, v29);
    return RecordOpStart;
  }

  v18 = *(a2 + 8);
  v36[0] = 0;
  if (!AppendDNSNameString(v36, v18, a3, a4, a5, a6, a7, a8))
  {
    v23 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      RecordOpStart = 4294901756;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      RecordOpStart = 4294901756;
      v23 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    v25 = *a2;
    v26 = *(a2 + 8);
    *buf = 67109635;
    *&buf[4] = v25;
    *&buf[8] = 2160;
    *&buf[10] = 1752392040;
    *&buf[18] = 2085;
    *&buf[20] = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: bad domain name '%{sensitive, mask.hash}s'", buf, 0x1Cu);
    goto LABEL_9;
  }

  v19 = *(a2 + 24);
  if (v19 != 28 && v19 != 1)
  {
    goto LABEL_34;
  }

  v20 = 0;
  v21 = *(a2 + 8);
  while (1)
  {
    v22 = *v21++;
    if (v22 == 46)
    {
      break;
    }

    if (v22 == 92)
    {
      ++v20;
    }

    else
    {
      if (!*(v21 - 1))
      {
        goto LABEL_28;
      }

LABEL_21:
      v20 = 0;
    }
  }

  if (*v21)
  {
    goto LABEL_21;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  if (AlwaysAppendSearchDomains || v36[0] && !v36[v36[0] + 1])
  {
    v24 = 1;
  }

  else
  {
LABEL_34:
    v24 = 0;
  }

  memset(buf, 0, sizeof(buf));
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  *buf = *a2;
  *&buf[8] = v36;
  v27 = *(a2 + 20);
  LODWORD(v32) = -1;
  DWORD1(v32) = v27;
  *&buf[16] = v19;
  *&buf[18] = *(a2 + 26);
  *&buf[24] = v30;
  BYTE8(v32) = v24;
  HIDWORD(v32) = *(a2 + 28);
  *&v33 = *(a2 + 32);
  DWORD2(v33) = *(a2 + 40);
  v28 = *(a2 + 56);
  *&v34 = *(a2 + 48);
  *(&v34 + 1) = v28;
  LODWORD(v35[0]) = *(a2 + 64);
  WORD2(v35[0]) = *(a2 + 68);
  *(v35 + 8) = *(a2 + 72);
  WORD6(v33) = *(a2 + 88);
  BYTE8(v35[1]) = *(a2 + 90);
  RecordOpStart = QueryRecordOpStart(a1, buf, a3, a4);
  if (RecordOpStart)
  {
    goto LABEL_9;
  }

  return RecordOpStart;
}

void QueryRecordClientRequestStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  QueryRecordOpStop(a1);
  if (*(a1 + 758))
  {
    v16 = *(a1 + 342);
    if (v16 == 1)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0;
    }

    if (v16 == 28)
    {
      v18 = a1;
    }

    else
    {
      v18 = 0;
    }

    mDNSPlatformTriggerDNSRetry(v17, v18, v10, v11, v12, v13, v14, v15, a9);
  }
}

char *DNSProxyGetStateHandler()
{
  v0 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v0, v1, v2, v3, v4, v5, v6, v7);
  if (gProxyManager && CFArrayGetCount(*(gProxyManager + 24)))
  {
    v15 = (gProxyManager + 16);
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_9;
      }

      v16 = v15[3];
      if (v16)
      {
        v17 = v16();
        goto LABEL_10;
      }
    }
  }

  v17 = strdup("‹No DNS Proxies›");
  if (!v17)
  {
    __break(1u);
LABEL_9:
    v17 = 0;
  }

LABEL_10:
  KQueueUnlock("DNSProxyGetStateHandler", v8, v9, v10, v11, v12, v13, v14);
  return v17;
}

uint64_t DNSProxyStopHandler(const void *a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  if (gProxyManager)
  {
    Count = CFArrayGetCount(*(gProxyManager + 24));
    v18 = gProxyManager;
    v19 = CFArrayGetCount(*(gProxyManager + 24));
    if (v19 < 1)
    {
LABEL_6:
      v22 = 4294960569;
    }

    else
    {
      v20 = v19;
      v21 = 0;
      while (CFArrayGetValueAtIndex(*(v18 + 24), v21) != a1)
      {
        if (v20 == ++v21)
        {
          goto LABEL_6;
        }
      }

      CFArrayRemoveValueAtIndex(*(v18 + 24), v21);
      if (Count)
      {
        if (!CFArrayGetCount(*(gProxyManager + 24)))
        {
          v23 = &dp_listener;
          v24 = 4;
          do
          {
            mdns_socket_forget(v23);
            v23 = (v23 + 4);
            --v24;
          }

          while (v24);
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformCloseDNSProxySkts: Closing DNS Proxy Listener Sockets", v12, v13, v14, v15, v16, v26);
          }
        }
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 4294901754;
  }

  KQueueUnlock("DNSProxyStopHandler", v10, v11, v12, v13, v14, v15, v16);
  return v22;
}

uint64_t DNSProxyStartHandler(const void *a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = gProxyManager;
  if (gProxyManager)
  {
    goto LABEL_16;
  }

  v11 = _os_object_alloc();
  if (!v11)
  {
    gProxyManager = 0;
    v23 = 4294960568;
    goto LABEL_18;
  }

  v19 = v11;
  v20 = &_mrcs_dns_proxy_manager_kind;
  *(v11 + 16) = &_mrcs_dns_proxy_manager_kind;
  do
  {
    v21 = v20[2];
    if (v21)
    {
      v21(v19);
    }

    v20 = *v20;
  }

  while (v20);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mrcs_cfarray_callbacks);
  v19[3] = Mutable;
  if (Mutable)
  {
    v10 = v19;
  }

  else
  {
    v10 = 0;
  }

  if (Mutable)
  {
    v23 = 0;
  }

  else
  {
    v23 = 4294960567;
  }

  if (!Mutable)
  {
    os_release(v19);
  }

  gProxyManager = v10;
  if (!v23)
  {
LABEL_16:
    Count = CFArrayGetCount(*(v10 + 24));
    v25 = gProxyManager;
    v26 = *(gProxyManager + 24);
    *&v64 = _NSConcreteStackBlock;
    *(&v64 + 1) = 0x40000000;
    v65 = ___mrcs_dns_proxy_manager_conflicts_with_proxy_block_invoke;
    v66 = &__block_descriptor_tmp_17_4133;
    v67 = a1;
    if (mdns_cfarray_enumerate(v26, &v64))
    {
      CFArrayAppendValue(*(v25 + 24), a1);
      v23 = 0;
      if (Count)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v23 = 4294960537;
      if (Count)
      {
        goto LABEL_18;
      }
    }

    if (!CFArrayGetCount(*(gProxyManager + 24)))
    {
      goto LABEL_18;
    }

    v28 = socket(2, 2, 17);
    LODWORD(v64) = v28;
    v29 = socket(30, 2, 17);
    DWORD1(v64) = v29;
    v30 = socket(2, 1, 6);
    DWORD2(v64) = v30;
    v31 = socket(30, 1, 6);
    HIDWORD(v64) = v31;
    if ((v28 & 0x80000000) == 0 && (v29 & 0x80000000) == 0 && (v30 & 0x80000000) == 0)
    {
      v32 = v31;
      if ((v31 & 0x80000000) == 0)
      {
        BindDPSocket(v28, 2, 2);
        BindDPSocket(v29, 30, 2);
        BindDPSocket(v30, 2, 1);
        BindDPSocket(v32, 30, 1);
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInitDNSProxySkts: Opened Listener Sockets for DNS Proxy : %d, %d, %d, %d", v33, v34, v35, v36, v37, v28);
        }

        v38 = mDNSStorage[0];
        *(mDNSStorage[0] + 976) = ProxyUDPCallback;
        *(v38 + 984) = ProxyTCPCallback;
        *(v38 + 704) = 13568;
        *(v38 + 872) = mDNSStorage;
        *(v38 + 800) = 13568;
        *(v38 + 960) = mDNSStorage;
        *(v38 + 888) = 13568;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: %d, %d, %d, %d", v33, v34, v35, v36, v37, v28);
        *(v38 + 792) = 1;
        if (SetupUDPProxySocket(v28, v38 + 704, 2, v39, v40, v41, v42, v43))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! UDPv4 Socket", v44, v45, v46, v47, v48, v62);
        }

        if (SetupUDPProxySocket(v29, v38 + 704, 30, v44, v45, v46, v47, v48))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! UDPv6 Socket", v49, v50, v51, v52, v53, v62);
        }

        if (SetupTCPProxySocket(v30, v38 + 800))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! TCPv4 Socket", v54, v55, v56, v57, v58, v62);
        }

        if (SetupTCPProxySocket(v32, v38 + 888))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! TCPv6 Socket", v14, v15, v16, v17, v18, v62);
        }

        dp_listener = v64;
        goto LABEL_18;
      }
    }

    v59 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      *buf = 0;
    }

    else
    {
      v59 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      *buf = 0;
    }

    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "mDNSPlatformInitDNSProxySkts: Failed to create listening sockets", buf, 2u);
LABEL_43:
    v60 = &v64;
    v61 = 4;
    do
    {
      mdns_socket_forget(v60);
      v60 = (v60 + 4);
      --v61;
    }

    while (v61);
  }

LABEL_18:
  KQueueUnlock("DNSProxyStartHandler", v12, v13, v14, v15, v16, v17, v18);
  return v23;
}

void ProxyTCPCallback(unsigned __int16 *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v10 = a5;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: DNS Message from %#a:%d to %#a:%d length %d", a4, a5, a6, a7, a8, a4);
  }

  if (a3 != a2 && gProxyManager && mrcs_dns_proxy_manager_get_proxy_by_input_interface(*(gProxyManager + 24), a8))
  {

    ProxyCallbackCommon(a1, a2, a3, a4, v10, a8, 1, a9);
  }

  else
  {
    v15 = &DNSProxyClients;
    v16 = &DNSProxyClients;
    while (1)
    {
      v17 = v16;
      v16 = v15;
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15[5] == a1)
      {
        *v17 = *v15;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: free", a4, a5, a6, a7, a8, v25);
        }

        mDNSPlatformDisposeProxyContext(a1);
        v18 = *v16;

        FreeDNSProxyClient(v18);
        return;
      }
    }

    mDNSPlatformDisposeProxyContext(a1);
    v24 = mDNSLogCategory_Default;

    LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: socket cannot be found", v19, v20, v21, v22, v23, a9);
  }
}

void FreeDNSProxyClient(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[132];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[133];
  if (v4)
  {
    os_release(v4);
  }

  free(a1);
}

void ProxyCallbackCommon(unsigned __int16 *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (!gProxyManager || (v10 = a7, v11 = a5, (proxy_by_input_interface = mrcs_dns_proxy_manager_get_proxy_by_input_interface(*(gProxyManager + 24), a6)) == 0))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Rejecting DNS Query coming from InterfaceID %p", a4, a5, a6, a7, a8, a6);
    return;
  }

  if (((a3 - a2) & 0xFFFFFFFC) >= 0xCuLL)
  {
    v17 = __rev16(*(a2 + 2));
    *(a2 + 2) = v17;
    v18 = __rev16(*(a2 + 3));
    *(a2 + 3) = v18;
    v19 = __rev16(*(a2 + 4));
    *(a2 + 4) = v19;
    *(a2 + 5) = bswap32(*(a2 + 5)) >> 16;
    if ((a2[2] & 0xF8) != 0)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Not a query(%d) for pkt from %#a:%d", a4, a5, a6, a7, a8, a2[2] & 0xF8);
      }

      v20 = 4;
      goto LABEL_25;
    }

    if (v17 != 1 || v18 || v19)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Malformed pkt from %#a:%d, Q:%d, An:%d, Au:%d", a4, a5, a6, a7, a8, a4);
      }
    }

    else
    {
      v21 = proxy_by_input_interface;
      bzero(v94, 0x2B8uLL);
      if (getQuestion(a2, a2 + 12, a3, a6, v94))
      {
        if (mDNS_LoggingEnabled)
        {
          v90 = mDNSLogCategory_Default;
          DNSTypeName(v95);
          LogMsgWithLevel(v90, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Question %##s (%s)", v27, v28, v29, v30, v31, v97);
        }

        OptRR = LocateOptRR(a2, a3, 0);
        v91 = OptRR;
        if (OptRR)
        {
          v33 = a3;
          v34 = OptRR;
          v35 = skipResourceRecord(a2, OptRR, v33);
          if (v35)
          {
            v41 = v35 - v34;
            v89 = v41;
            if (mDNS_LoggingEnabled == 1)
            {
              v88 = mDNSLogCategory_Default;
              DNSTypeName(v95);
              LogMsgWithLevel(v88, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 opt length %u present in Question %##s (%s)", v42, v43, v44, v45, v46, v41);
            }

LABEL_32:
            v53 = DNSProxyClients;
            if (DNSProxyClients)
            {
              v54 = *a2;
              while (!mDNSSameAddress((v53 + 8), a4) || *(v53 + 28) != v11 || *(v53 + 30) != v54 || *(v53 + 1032) != v95 || *(v53 + 680) != v96 || !SameDomainNameBytes((v53 + 80), v97))
              {
                v53 = *v53;
                if (!v53)
                {
                  goto LABEL_41;
                }
              }

              if (mDNS_LoggingEnabled)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "IsDuplicateClient: Found a duplicate client in the list", v55, v56, v57, v58, v59, v87);
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Found a duplicate for pkt from %#a:%d, ignoring this", v82, v83, v84, v85, v86, a4);
                }
              }

              return;
            }

LABEL_41:
            v60 = malloc_type_calloc(1uLL, 0x430uLL, 0xA6D92F01uLL);
            if (v60)
            {
              v61 = v60;
              DNSProxyPrepareOmsg(0x1F4u, v60);
              *(v61 + 1064) = v21;
              os_retain(v21);
              v67 = a4[4];
              *(v61 + 8) = *a4;
              *(v61 + 24) = v67;
              *(v61 + 28) = v11;
              *(v61 + 30) = *a2;
              *(v61 + 32) = a6;
              *(v61 + 40) = a1;
              *(v61 + 48) = v10;
              *(v61 + 50) = *(a2 + 1);
              *(v61 + 72) = a8;
              v68 = v97;
              do
              {
                if (!v68)
                {
                  break;
                }

                v69 = *v68;
                if (v69 > 0x3F)
                {
                  break;
                }

                if (!*v68)
                {
                  v70 = v68 - v97 + 1;
                  if (v70 <= 0x100u)
                  {
                    memcpy((v61 + 80), v97, v70);
                    goto LABEL_51;
                  }

                  break;
                }

                v68 += v69 + 1;
              }

              while (v68 - v97 <= 255);
              *(v61 + 80) = 0;
LABEL_51:
              if (!v91)
              {
                goto LABEL_57;
              }

              if (v89 <= 0xA)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Invalid EDNS0 option for pkt from %#a:%d, ignoring this", v62, v63, v64, v65, v66, a4);
                }

                goto LABEL_57;
              }

              *(v61 + 68) = bswap32(*(v91 + 3)) >> 16;
              v71 = malloc_type_malloc(v89, 0x1A2F9D09uLL);
              if (v71)
              {
                *(v61 + 56) = v71;
                memcpy(v71, v91, v89);
                *(v61 + 64) = v89;
LABEL_57:
                mDNS_SetupQuestion(v61 + 336, *(*(v61 + 1064) + 64), v97, v95, v61);
                *(v61 + 973) = 1;
                *(v61 + 971) = 1;
                *(v61 + 989) = 1;
                *(v61 + 682) = 0;
                v72 = *(v61 + 1064);
                *(v61 + 584) = *(v72 + 72);
                v73 = *(v61 + 678);
                *(v61 + 1032) = v73;
                if (*(v72 + 76))
                {
                  if (v73 == 28)
                  {
                    if (*(v72 + 77) == 1)
                    {
                      *(v61 + 1036) = 1;
                      *(v61 + 678) = 1;
                    }
                  }

                  else if (v73 == 12)
                  {
                    v92 = 0uLL;
                    if (GetReverseIPv6Addr((v61 + 80), &v92))
                    {
                      if (nw_nat64_extract_v4())
                      {
                        memset(v93, 0, 30);
                        mDNS_snprintf(v93);
                        *(v61 + 712) = 0;
                        AppendDNSNameString((v61 + 712), v93, v74, v75, v76, v77, v78, v79);
                        *(v61 + 536) = DomainNameHashValue(v61 + 712);
                        *(v61 + 1036) = 2;
                      }
                    }
                  }
                }

                v80 = &DNSProxyClients;
                do
                {
                  v81 = v80;
                  v80 = *v80;
                }

                while (v80);
                *v81 = v61;
                mDNS_StartQuery(mDNSStorage, v61 + 336);
                return;
              }
            }

            __break(1u);
            return;
          }

          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 cannot be parsed for pkt from %#a:%d, ignoring", v36, v37, v38, v39, v40, a4);
          }
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          v47 = mDNSLogCategory_Default;
          DNSTypeName(v95);
          LogMsgWithLevel(v47, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 opt not present in Question %##s (%s), ptr %p", v48, v49, v50, v51, v52, v97);
        }

        v89 = 0;
        goto LABEL_32;
      }

      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Question cannot be parsed for pkt from %#a:%d", v22, v23, v24, v25, v26, a4);
      }
    }

    v20 = 1;
LABEL_25:
    SendError(a1, a2, a3, a4, v11, a6, v10, a8, v20);
  }
}

void SendError(unsigned __int16 *a1, uint64_t a2, int a3, unsigned int *a4, unsigned __int16 a5, uint64_t a6, int a7, _DWORD *a8, char a9)
{
  if (a3 - a2 >= 8940)
  {
    v15 = 8940;
  }

  else
  {
    v15 = a3 - a2;
  }

  v16 = *(a2 + 8);
  qword_100174338 = *a2;
  dword_100174340 = v16;
  BYTE2(qword_100174338) |= 0x80u;
  BYTE3(qword_100174338) = a9;
  memcpy(&unk_100174344, (a2 + 12), (v15 - 12));
  v17 = &qword_100174338 + v15;
  if (a7)
  {
    mDNSSendDNSMessage(mDNSStorage, (mDNSStorage + &loc_100007120), v17, a6, a1, 0, a4, a5, 0, 0);
  }

  else
  {
    mDNSSendDNSMessage(mDNSStorage, (mDNSStorage + &loc_100007120), v17, a6, 0, a1, a4, a5, 0, 0);
  }

  mDNSPlatformDisposeProxyContext(a8);
}

void DNSProxyPrepareOmsg(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 12;
  if (*(a2 + 1056))
  {
    v5 = malloc_type_calloc(1uLL, v4, 0xCDE2E1E3uLL);
    if (v5)
    {
      v11 = v5;
      v12 = *(a2 + 1056);
      v13 = *(a2 + 1040) - v12 - 12;
      if (mDNS_LoggingEnabled == 1)
      {
        v17 = *(a2 + 1048);
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNSProxyPrepareOmsg: Preserving offset %ld in size %d", v6, v7, v8, v9, v10, *(a2 + 1040) - v12 - 12);
        v12 = *(a2 + 1056);
      }

      if (*(a2 + 1048) + 12 >= v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = *(a2 + 1048) + 12;
      }

      memcpy(v11, v12, v14);
      v15 = *(a2 + 1056);
      if (v15)
      {
        free(v15);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = malloc_type_calloc(1uLL, v4, 0x73B485AuLL);
    if (v16)
    {
      v11 = v16;
      v13 = 0;
LABEL_12:
      *(a2 + 1056) = v11;
      *(a2 + 1048) = v3;
      *(a2 + 1040) = &v11[v13 + 12];
      return;
    }
  }

  __break(1u);
}

void ProxyClientCallback(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *a3 == 240 || *(a3 + 2) == *(a2 + 342);
  v153 = v10;
  if (!a4)
  {
    return;
  }

  v11 = *(a2 + 176);
  if (mDNS_LoggingEnabled == 1)
  {
    v12 = mDNSLogCategory_Default;
    DNSTypeName(*(v11 + 1032));
    LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: %##s (%s)", v13, v14, v15, v16, v17, v11 + 80);
  }

  v18 = *(v11 + 1036);
  if (*(*(v11 + 1064) + 76) != 1)
  {
    if (v18 != 4)
    {
      goto LABEL_19;
    }

LABEL_130:
    v123 = *(v11 + 1056);
    *v123 = *(v11 + 30);
    *(v123 + 2) = 896;
    *(v123 + 4) = 0;
    v83 = putQuestion(*(v11 + 1056), *(v11 + 1056) + 12, *(v11 + 1056) + 12 + *(v11 + 1048), (v11 + 80), *(v11 + 1032), *(v11 + 680), a7, a8);
    if (v83)
    {
      v124 = 1;
    }

    else
    {
      v124 = mDNS_LoggingEnabled == 0;
    }

    if (!v124)
    {
      v125 = mDNSLogCategory_Default;
      DNSTypeName(*(v11 + 1032));
      LogMsgWithLevel(v125, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: putQuestion NULL for %##s (%s)", v126, v127, v128, v129, v130, v11 + 80);
      v83 = 0;
    }

    goto LABEL_140;
  }

  if (v18 == 4)
  {
    goto LABEL_130;
  }

  if (v18 == 2)
  {
    if (*a3 != 240 && *(v8 + 342) == 12 && *(a3 + 2) == 12 && *(a3 + 3) == 1)
    {
      *(v11 + 1036) = 3;
      goto LABEL_19;
    }

    *(v11 + 1036) = 4;
    goto LABEL_130;
  }

  if (!v18 && *a3 == 240 && *(v8 + 342) == 28 && *(a3 + 2) == 28 && *(a3 + 3) == 1)
  {
    mDNS_StopQuery(a1, v8);
    *(v11 + 1036) = 1;
    *(v8 + 342) = 1;

    mDNS_StartQuery(a1, v8);
    return;
  }

LABEL_19:
  v151 = v8;
  __src = (v11 + 712);
  v19 = (v11 + 80);
  v20 = *(v11 + 1056);
  v155 = *(v11 + 1040);
  v157 = (v11 + 80);
  while (2)
  {
    v165 = *v20;
    v166 = *(v20 + 2);
    v167 = 0;
    mDNS_Lock_(mDNSStorage, "AddResourceRecord", 305);
    v158 = dword_10016D258;
    mDNS_Unlock_(mDNSStorage, "AddResourceRecord", 307);
    if (*(v11 + 48))
    {
      v26 = *(v11 + 1048);
LABEL_23:
      v27 = v26;
      goto LABEL_24;
    }

    v27 = *(v11 + 68);
    v26 = *(v11 + 1048);
    if ((v27 - 1) >= v26)
    {
      goto LABEL_23;
    }

LABEL_24:
    v28 = *(v11 + 1056) + v27 + 12;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Limit is %d", v21, v22, v23, v24, v25, v28 - *(v11 + 1040));
    }

    v29 = CacheGroupForName(mDNSStorage, *(v11 + 536), __src);
    if (!v29)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: CacheGroup not found for %##s", v30, v31, v32, v33, v34, __src);
      }

      v47 = 0;
      v82 = 0;
      goto LABEL_93;
    }

    v154 = v20;
    v35 = v29[2];
    if (!v35)
    {
LABEL_79:
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Did not find any valid ResourceRecords", v30, v31, v32, v33, v34, v150);
      }

      v47 = 0;
      v82 = 0;
      goto LABEL_92;
    }

    v36 = 0;
    v37 = 0;
    v38 = 12;
    v156 = v28;
    while (1)
    {
      v39 = (v35 + 8);
      if (!SameNameRecordAnswersQuestion((v35 + 8), 0, v11 + 336, v30, v31, v32, v33, v34))
      {
        goto LABEL_64;
      }

      v40 = *(v11 + 1056);
      if (!v40[2])
      {
        break;
      }

      if (!v37)
      {
        v37 = *(v11 + 1040);
      }

LABEL_45:
      if (*v39 == 240)
      {
        v48 = 1;
      }

      else
      {
        v181 = 0u;
        memset(v182, 0, sizeof(v182));
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        memset(v168, 0, sizeof(v168));
        v163 = 0u;
        v164 = 0u;
        v49 = *(*(v11 + 1064) + 76);
        v50 = (v35 + 8);
        v161 = 0uLL;
        v162 = 0uLL;
        if (v49)
        {
          v50 = (v35 + 8);
          if (*(v11 + 1036) == 1)
          {
            v50 = (v35 + 8);
            if (*(v35 + 12) == 1)
            {
              v51 = *(v35 + 24);
              v161 = *v39;
              v162 = v51;
              v52 = *(v35 + 40);
              v53 = *(v35 + 56);
              *&v163 = *(v35 + 40);
              v164 = v53;
              WORD2(v161) = 28;
              WORD6(v161) = 16;
              LOWORD(v168[0]) = 16;
              *(&v163 + 1) = v168;
              v160 = *(*(v35 + 48) + 4);
              if (!nw_nat64_synthesize_v6())
              {
                goto LABEL_64;
              }

              *(v168 + 4) = 0uLL;
              v50 = &v161;
            }
          }
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v54 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb(v50, (*(v50 + 5) + 4), word_1001789D0);
          v28 = v156;
          LogMsgWithLevel(v54, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Answering question with %s", v55, v56, v57, v58, v59, word_1001789D0);
        }

        v60 = -274877907 * (v158 - *(v35 + 80));
        v61 = PutResourceRecordTTLWithLimit(*(v11 + 1056), v37, (*(v11 + 1056) + 6), v50, (v60 >> 38) + (v60 >> 63) + *(v35 + 16), v28, v33, v34);
        v47 = *(v11 + 1040);
        if (!v61)
        {
          goto LABEL_91;
        }

        v37 = v61;
        v38 += v61 - v47;
        *(v11 + 1040) = v61;
        v48 = *(v35 + 12) != 5;
      }

      if (*(v35 + 120))
      {
        v36 = *(v35 + 120);
        if (mDNS_LoggingEnabled == 1)
        {
          v62 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb((v35 + 8), (*(v35 + 48) + 4), word_1001789D0);
          LogMsgWithLevel(v62, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: soa set for %s", v63, v64, v65, v66, v67, word_1001789D0);
          v36 = *(v35 + 120);
        }
      }

      v68 = *(v35 + 12);
      if (*(v11 + 678) != v68 && v68 == 5 && mDNS_LoggingEnabled)
      {
        v69 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v35 + 8), (*(v35 + 48) + 4), word_1001789D0);
        v28 = v156;
        LogMsgWithLevel(v69, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: cname set for %s", v70, v71, v72, v73, v74, word_1001789D0);
      }

      if (!v48)
      {
LABEL_65:
        if (v36)
        {
          v19 = (v11 + 80);
          if (mDNS_LoggingEnabled == 1)
          {
            v75 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v36 + 8), (*(v36 + 48) + 4), word_1001789D0);
            v28 = v156;
            LogMsgWithLevel(v75, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: SOA Answering question with %s", v76, v77, v78, v79, v80, word_1001789D0);
          }

          v81 = PutResourceRecordTTLWithLimit(*(v11 + 1056), v37, (*(v11 + 1056) + 8), v36 + 8, *(v36 + 16), v28, v33, v34);
          v47 = *(v11 + 1040);
          if (v81)
          {
            v37 = v81;
            v38 += v81 - v47;
            *(v11 + 1040) = v81;
            goto LABEL_74;
          }

LABEL_89:
          v82 = 1;
          goto LABEL_92;
        }

        v19 = (v11 + 80);
        if (!v37)
        {
          goto LABEL_79;
        }

LABEL_74:
        if (v153 && *(v11 + 68))
        {
          v83 = (v37 + 11);
          if (v37 + 11 <= v28)
          {
            ++*(*(v11 + 1056) + 10);
            *v37 = 271122432;
            *(v37 + 7) = 0;
            v84 = "AddEDNS0 option added to response";
            if (mDNS_LoggingEnabled == 1)
            {
              goto LABEL_83;
            }
          }

          else
          {
            if ((mDNS_LoggingEnabled & 1) == 0)
            {
              v47 = *(v11 + 1040);
              goto LABEL_89;
            }

            v83 = 0;
            v84 = "AddEDNS0Option: not enough space";
LABEL_83:
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v84, v30, v31, v32, v33, v34, v150);
          }

          v47 = *(v11 + 1040);
          if (!v83)
          {
            goto LABEL_89;
          }

          v38 += v83 - v47;
          *(v11 + 1040) = v83;
        }

        else
        {
          v83 = v37;
        }

        v8 = v151;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Added %d bytes to the packet", v30, v31, v32, v33, v34, v38);
        }

        goto LABEL_139;
      }

LABEL_64:
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_65;
      }
    }

    v41 = *(v35 + 110) & 0xFE | *(v11 + 50) & 1 | ((*(v11 + 51) & 0x10 | HIBYTE(*(v35 + 110)) & 0xFFFFFFEF) << 8);
    *v40 = *(v11 + 30);
    v40[1] = v41;
    *(v40 + 2) = 0;
    v42 = putQuestion(*(v11 + 1056), *(v11 + 1056) + 12, v28, v157, *(v11 + 1032), *(v11 + 680), v33, v34);
    if (v42)
    {
      v37 = v42;
      v38 += v42 - *(v11 + 1040);
      *(v11 + 1040) = v42;
      if (*(v11 + 1036) == 3)
      {
        v181 = 0u;
        memset(v182, 0, sizeof(v182));
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        memset(v168, 0, sizeof(v168));
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        LOBYTE(v161) = -64;
        DWORD1(v161) = 65541;
        v43 = (v11 + 712);
        v163 = v157;
        do
        {
          if (!v43)
          {
            break;
          }

          v44 = *v43;
          if (v44 > 0x3F)
          {
            break;
          }

          if (!*v43)
          {
            v45 = v43 - __src + 1;
            if (v45 <= 0x100u)
            {
              memcpy(v168 + 4, __src, v45);
            }

            break;
          }

          v43 += v44 + 1;
        }

        while (v43 - __src <= 255);
        LOWORD(v168[0]) = 264;
        *(&v163 + 1) = v168;
        v46 = PutResourceRecordTTLWithLimit(*(v11 + 1056), v37, (*(v11 + 1056) + 6), &v161, 0, v28, v33, v34);
        v47 = *(v11 + 1040);
        if (!v46)
        {
          goto LABEL_91;
        }

        v37 = v46;
        v38 += v46 - v47;
        *(v11 + 1040) = v46;
      }

      goto LABEL_45;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v85 = mDNSLogCategory_Default;
      v19 = (v11 + 80);
      DNSTypeName(*(v11 + 1032));
      LogMsgWithLevel(v85, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: putQuestion NULL for %##s (%s)", v86, v87, v88, v89, v90, v157);
      v47 = 0;
      goto LABEL_89;
    }

    v47 = 0;
LABEL_91:
    v82 = 1;
    v19 = (v11 + 80);
LABEL_92:
    v20 = v154;
LABEL_93:
    if (*(v11 + 48))
    {
      v91 = 8940;
    }

    else
    {
      v92 = *(v11 + 68);
      if (*(v11 + 68))
      {
        if (v92 - 12 >= 0x22EC)
        {
          v93 = 8940;
        }

        else
        {
          v93 = (v92 - 12);
        }

        if (v92 <= 0xC)
        {
          v91 = 500;
        }

        else
        {
          v91 = v93;
        }
      }

      else
      {
        v91 = 500;
      }
    }

    if (*(v11 + 1048) < v91)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v94 = mDNSLogCategory_Default;
        DNSTypeName(*(v11 + 1032));
        LogMsgWithLevel(v94, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: Increase omsg buffer size to %d for %##s (%s)", v95, v96, v97, v98, v99, v91);
      }

      v100 = v155 - v20 - 12;
      DNSProxyPrepareOmsg(v91, v11);
      v101 = *(v11 + 1056);
      *v101 = v165;
      *(v101 + 8) = v166;
      v20 = *(v11 + 1056);
      v155 = v20 + v100 + 12;
      *(v11 + 1040) = v155;
      continue;
    }

    break;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v102 = mDNSLogCategory_Default;
    DNSTypeName(*(v11 + 1032));
    LogMsgWithLevel(v102, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: AddResourceRecord NULL for %##s (%s)", v103, v104, v105, v106, v107, v19);
  }

  if (v47)
  {
    v108 = v82;
  }

  else
  {
    v108 = 0;
  }

  v8 = v151;
  if (v108 == 1)
  {
    if (*(v11 + 48))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v109 = mDNSLogCategory_Default;
        DNSTypeName(*(v11 + 1032));
        LogMsgWithLevel(v109, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: ERROR!! Not enough space to return in TCP for %##s (%s)", v110, v111, v112, v113, v114, v19);
      }
    }

    else
    {
      *(*(v11 + 1056) + 2) |= 2u;
    }

    v83 = v47;
    goto LABEL_139;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: No response", v30, v31, v32, v33, v34, v150);
  }

  v115 = *(v11 + 682);
  if (!v115)
  {
    v115 = 640;
  }

  v116 = *(v11 + 1056);
  *v116 = *(v11 + 30);
  *(v116 + 2) = v115;
  *(v116 + 4) = 0;
  v83 = putQuestion(*(v11 + 1056), *(v11 + 1056) + 12, *(v11 + 1056) + 12 + *(v11 + 1048), v19, *(v11 + 1032), *(v11 + 680), v33, v34);
  if (v83)
  {
LABEL_139:
    if (!v153)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v144 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(a3, (*(a3 + 5) + 4), (a1 + 47032));
        LogMsgWithLevel(v144, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: Received %s, not answering yet", v145, v146, v147, v148, v149, a1 + 47032);
      }

      return;
    }

LABEL_140:
    v131 = *(v11 + 1056);
    v132 = *(v11 + 32);
    v133 = *(v11 + 40);
    v134 = *(v11 + 28);
    if (*(v11 + 48))
    {
      mDNSSendDNSMessage(a1, v131, v83, v132, v133, 0, (v11 + 8), v134, 0, 0);
    }

    else
    {
      mDNSSendDNSMessage(a1, v131, v83, v132, 0, v133, (v11 + 8), v134, 0, 0);
    }

    goto LABEL_143;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v117 = mDNSLogCategory_Default;
    DNSTypeName(*(v11 + 1032));
    LogMsgWithLevel(v117, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: putQuestion NULL for %##s (%s)", v118, v119, v120, v121, v122, v19);
  }

LABEL_143:
  mDNS_StopQuery(a1, v8);
  v135 = &DNSProxyClients;
  do
  {
    v136 = v135;
    v135 = *v135;
    if (v135)
    {
      v137 = v135 == v11;
    }

    else
    {
      v137 = 1;
    }
  }

  while (!v137);
  if (v135)
  {
    *v136 = *v11;
    mDNSPlatformDisposeProxyContext(*(v11 + 72));
    FreeDNSProxyClient(v11);
  }

  else
  {
    v138 = mDNSLogCategory_Default;
    DNSTypeName(*(v8 + 342));
    LogMsgWithLevel(v138, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: question %##s (%s) not found", v139, v140, v141, v142, v143, v8 + 376);
  }
}