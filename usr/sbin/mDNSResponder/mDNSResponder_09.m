void ___mdns_dns_service_decrement_use_count_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 224))
  {
    _mdns_dns_service_clear_use_count(v2);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v3 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 24);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deregistered orphaned DNS service due to timeout -- service id: %llu", &v6, 0xCu);
    }

    v5 = *(*(a1 + 40) + 96);
    if (v5)
    {
      dispatch_source_merge_data(v5, 1uLL);
    }
  }
}

BOOL ___mdns_dns_service_manager_get_service_by_id_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void mdns_dns_service_manager_deregister_discovered_push_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_discovered_push_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_9;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_discovered_push_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 64), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

void __mdns_dns_service_manager_register_custom_push_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 131) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = -6752;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = _mdns_dns_service_manager_register_push_service_internal_from_definition(v2, *(v2 + 72), *(a1 + 64), *(a1 + 80), *(a1 + 72), *(a1 + 32), (*(*(a1 + 48) + 8) + 24));
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v3 = *(*(a1 + 56) + 96);
      if (v3)
      {

        dispatch_source_merge_data(v3, 1uLL);
      }
    }
  }
}

uint64_t _mdns_dns_service_manager_register_push_service_internal_from_definition(CFArrayRef *a1, __CFArray *a2, uint64_t a3, int a4, NSObject *a5, const void *a6, int *a7)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v13 = *(a3 + 72);
  v14 = *(a3 + 78);
  if (*(a3 + 78))
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15 || v14 > 2)
  {
    v17 = 0;
    v18 = 0;
    v19 = -6705;
    goto LABEL_10;
  }

  v22 = _mdns_dns_service_create(5, 1, (0x50201u >> (8 * (v14 & 0x1F))) & 7, &v37);
  v18 = v22;
  v19 = *(v35 + 6);
  if (!v19)
  {
    *(v22 + 256) = v13;
    if (v13)
    {
      *(v22 + 104) = mdns_system_interface_index_to_name(v13);
    }

    *(v18 + 276) = 6;
    v23 = *(a3 + 79);
    if (*(a3 + 79))
    {
      v24 = 8198;
    }

    else
    {
      v24 = 6;
    }

    *(v18 + 276) = v24;
    if (*(a3 + 80) == 1)
    {
      if (v23)
      {
        v25 = 24582;
      }

      else
      {
        v25 = 16390;
      }

      *(v18 + 276) = v25;
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v39 = ___mdns_dns_service_create_push_service_from_definition_block_invoke;
    v40 = &unk_10014F138;
    v41 = &v34;
    v42 = v18;
    mdns_cfset_enumerate(*(a3 + 48), &buf);
    v19 = *(v35 + 6);
    if (v19)
    {
      goto LABEL_26;
    }

    v29 = *(a3 + 24);
    if (v29)
    {
      os_retain(*(a3 + 24));
      v30 = *(v18 + 216);
      if (v30)
      {
        os_release(v30);
      }

      *(v18 + 216) = v29;
    }

    else
    {
      if (CFArrayGetCount(*(a3 + 40)) < 1 || !CFArrayGetValueAtIndex(*(a3 + 40), 0))
      {
        v19 = -6705;
        goto LABEL_56;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 0x40000000;
      v33[2] = ___mdns_dns_service_create_push_service_from_definition_block_invoke_2;
      v33[3] = &unk_10014F160;
      v33[4] = &v34;
      v33[5] = v18;
      mdns_cfarray_enumerate(*(a3 + 40), v33);
      v19 = *(v35 + 6);
      if (v19)
      {
LABEL_26:
        v20 = 0;
        goto LABEL_27;
      }
    }

    v31 = *(a3 + 56);
    if (!v31 || (Copy = CFArrayCreateCopy(kCFAllocatorDefault, v31), (*(v18 + 232) = Copy) != 0))
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_10;
    }

    v19 = -6729;
LABEL_56:
    v17 = v18;
    v18 = 0;
LABEL_10:
    v20 = v18;
    *(v35 + 6) = v19;
    v18 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_27:
    os_release(v18);
    goto LABEL_28;
  }

  v20 = 0;
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_28:
  _Block_object_dispose(&v34, 8);
  if (v19)
  {
    v26 = 0;
    if (!a7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  *(v20 + 272) = a4;
  if (a5 && a6)
  {
    *(v20 + 240) = a5;
    dispatch_retain(a5);
    *(v20 + 248) = _Block_copy(a6);
  }

  _mdns_dns_service_increment_use_count(v20);
  CFArrayAppendValue(a2, v20);
  _mdns_dns_service_manager_update_interface_properties_for_service(a1, v20);
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v28 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Registered push service -- %@", &buf, 0xCu);
  }

  v26 = *(v20 + 24);
  if (a7)
  {
LABEL_30:
    *a7 = v19;
  }

LABEL_31:
  if (v20)
  {
    os_release(v20);
  }

  return v26;
}

BOOL ___mdns_dns_service_create_push_service_from_definition_block_invoke(uint64_t a1, void *a2)
{
  _mdns_dns_service_add_domain(*(a1 + 40), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void mdns_dns_service_manager_deregister_custom_push_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_custom_push_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_11_854;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_custom_push_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 72), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

void __mdns_dns_service_manager_apply_dns_config_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 131))
  {
    return;
  }

  v2 = *(a1 + 40);
  Count = CFArrayGetCount(*(v1 + 48));
  if (Count > 3)
  {
    v5 = Count;
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v6 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purging %u discovered services down to 4", buf, 8u);
    }

    v4 = kCFAllocatorDefault;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(v1 + 48));
    v32.location = 0;
    v32.length = v5;
    CFArraySortValues(MutableCopy, v32, _mdns_dns_service_compare_time, 0);
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
      if (i < 4)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        _mdns_dns_service_manager_terminate_service(v1, ValueAtIndex);
      }
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v11 = *(v1 + 48);
    if (v11)
    {
      CFRelease(v11);
    }

    *(v1 + 48) = Mutable;
  }

  else
  {
    v4 = kCFAllocatorDefault;
  }

  v12 = CFArrayCreateMutable(v4, 0, &mdns_cfarray_callbacks);
  if (!v12)
  {
    v24 = -6729;
    goto LABEL_36;
  }

  v13 = v12;
  appended = _mdns_append_dns_service_from_config_by_scope(v12, v2, 1);
  if (appended || (appended = _mdns_append_dns_service_from_config_by_scope(v13, v2, 2)) != 0 || (appended = _mdns_append_dns_service_from_config_by_scope(v13, v2, 3)) != 0)
  {
    v24 = appended;
    CFRelease(v13);
LABEL_36:
    _mdns_dns_service_manager_terminate(v1, v24);
    return;
  }

  v15 = CFArrayGetCount(v13);
  v16 = CFArrayGetCount(*(v1 + 32));
  if (v16 - 1 >= 0)
  {
    v17 = v16;
    do
    {
      v18 = CFArrayGetValueAtIndex(*(v1 + 32), --v17);
      v33.location = 0;
      v33.length = v15;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v33, v18);
      if (FirstIndexOfValue < 0)
      {
        _mdns_dns_service_manager_terminate_service(v1, v18);
      }

      else
      {
        v20 = FirstIndexOfValue;
        v21 = *(CFArrayGetValueAtIndex(v13, FirstIndexOfValue) + 138) & 0xE;
        *(v18 + 138) = *(v18 + 138) & 0xFFF1 | v21;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 0x40000000;
        v25[2] = ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke;
        v25[3] = &__block_descriptor_tmp_69;
        v26 = v21;
        v22 = v18[18];
        if (v22)
        {
          mdns_cfarray_enumerate(v22, v25);
        }

        CFArraySetValueAtIndex(v13, v20, v18);
      }
    }

    while (v17 > 0);
  }

  v23 = *(v1 + 32);
  if (v23)
  {
    CFRelease(v23);
  }

  *(v1 + 32) = v13;
  *buf = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke_2;
  v30 = &__block_descriptor_tmp_70;
  v31 = v1;
  mdns_cfarray_enumerate(v13, buf);
  _mdns_dns_service_manager_remove_unneeded_interface_monitors(v1);
}

uint64_t _mdns_append_dns_service_from_config_by_scope(const __CFArray *a1, unsigned int *a2, int a3)
{
  v3 = a3;
  if (a3 == 3)
  {
    v5 = (a2 + 9);
    a2 += 8;
  }

  else if (a3 == 2)
  {
    v5 = (a2 + 4);
    a2 += 3;
  }

  else
  {
    v5 = (a2 + 1);
  }

  v6 = *a2;
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *v5;
  appended = 0;
  v36 = v8;
  while (1)
  {
    v9 = *(v8 + 8 * v7);
    if (*(v9 + 20) == 5353 || !*(v9 + 8))
    {
      goto LABEL_64;
    }

    if (*v9)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      memset(buf, 0, sizeof(buf));
      if (DomainNameFromString(buf, *v9))
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v10 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v35 = *v9;
          *v39 = 136315138;
          *&v39[4] = v35;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Encountered invalid dns_config_t resolver domain name: %s", v39, 0xCu);
        }

        goto LABEL_64;
      }
    }

    v11 = _mdns_dns_service_create(1, 2, v3, &appended);
    result = appended;
    if (appended)
    {
      goto LABEL_68;
    }

    v13 = *(v9 + 8);
    if (v13 >= 1)
    {
      break;
    }

LABEL_40:
    *(v11 + 256) = *(v9 + 64);
    v3 = a3;
    if (a3 == 3)
    {
      v27 = *(v9 + 76);
    }

    else
    {
      v27 = 0;
    }

    v8 = v36;
    *(v11 + 260) = v27;
    *(v11 + 276) = 0;
    if (*v9)
    {
      v28 = *v9;
    }

    else
    {
      v28 = ".";
    }

    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
LABEL_51:
      v33 = *(v9 + 68);
      if ((v33 & 2) != 0)
      {
        *(v11 + 276) |= 2u;
      }

      if ((v33 & 4) != 0)
      {
        *(v11 + 276) |= 4u;
      }

      if ((*(v9 + 74) & 4) != 0)
      {
        *(v11 + 276) |= 8u;
      }

      v34 = *(v11 + 256);
      if (v34)
      {
        *(v11 + 104) = mdns_system_interface_index_to_name(v34);
      }

      appended = _mdns_dns_service_add_domain_by_string(v11, v28, *(v9 + 60));
      if (appended)
      {
        goto LABEL_69;
      }

      CFArrayAppendValue(a1, v11);
    }

    else
    {
      v30 = Count;
      v31 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v31);
        if (_mdns_dns_service_equal_ex(ValueAtIndex, v11, 1))
        {
          break;
        }

        if (v30 == ++v31)
        {
          v3 = a3;
          v8 = v36;
          if (!v11)
          {
            goto LABEL_64;
          }

          goto LABEL_51;
        }
      }

      result = _mdns_dns_service_add_domain_by_string(ValueAtIndex, v28, *(v9 + 60));
      appended = result;
      if (result)
      {
        goto LABEL_68;
      }

      v3 = a3;
      v8 = v36;
      if (!v11)
      {
        goto LABEL_64;
      }
    }

    os_release(v11);
LABEL_64:
    if (++v7 == v6)
    {
      return 0;
    }
  }

  v14 = 0;
  v15 = *(v9 + 20);
  if (!*(v9 + 20))
  {
    v15 = 53;
  }

  v16 = __rev16(v15);
  while (1)
  {
    v17 = *(*(v9 + 12) + 8 * v14);
    v18 = v17[1];
    if (v18 == 30)
    {
      break;
    }

    if (v18 == 2)
    {
      v19 = *(v17 + 1);
      v20 = _mdns_address_new();
      if (!v20)
      {
        goto LABEL_67;
      }

      v21 = v20;
      *(v20 + 24) = 528;
      *(v20 + 26) = v16;
      *(v20 + 28) = v19;
      goto LABEL_37;
    }

LABEL_39:
    if (++v14 >= v13)
    {
      goto LABEL_40;
    }
  }

  memset(v39, 0, sizeof(v39));
  v41 = 0;
  v40 = 0;
  if (v17[8] == 254 && (v17[9] & 0xC0) == 0x80)
  {
    v22 = *(v9 + 64);
    if (v22)
    {
      if (*(v17 + 6) != v22)
      {
        *v39 = *v17;
        v40 = *(v17 + 2);
        v41 = v22;
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v23 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(v17 + 6);
          *buf = 68158466;
          *&buf[4] = 28;
          *&buf[8] = 2096;
          *&buf[10] = v17;
          *&buf[18] = 1024;
          *&buf[20] = v24;
          *&buf[24] = 1024;
          *&buf[26] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Corrected scope ID of link-local server address %{network:sockaddr}.*P from %u to %u", buf, 0x1Eu);
        }

        v17 = v39;
      }
    }
  }

  v25 = *(v17 + 6);
  v26 = _mdns_address_new();
  if (v26)
  {
    v21 = v26;
    *(v26 + 24) = 7708;
    *(v26 + 26) = v16;
    *(v26 + 32) = *(v17 + 8);
    *(v26 + 48) = v25;
LABEL_37:
    appended = _mdns_dns_service_append_address(v11, v21);
    os_release(v21);
    result = appended;
    if (appended)
    {
      goto LABEL_68;
    }

    v13 = *(v9 + 8);
    goto LABEL_39;
  }

LABEL_67:
  result = 4294960568;
  appended = -6728;
LABEL_68:
  if (v11)
  {
LABEL_69:
    os_release(v11);
    return appended;
  }

  return result;
}

uint64_t ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 276) & 0xFFF1;
  *(a2 + 276) = v2;
  *(a2 + 276) = *(a1 + 32) | v2;
  return 1;
}

uint64_t ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 264))
  {
    _mdns_dns_service_increment_use_count(a2);
    _mdns_dns_service_manager_update_interface_properties_for_service(*(a1 + 32), a2);
  }

  return 1;
}

void _mdns_dns_service_manager_remove_unneeded_interface_monitors(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 80));
  if (Count - 1 >= 0)
  {
    v3 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), --v3);
      v5 = ValueAtIndex[34];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = ___mdns_dns_service_manager_uses_interface_block_invoke;
      v6[3] = &__block_descriptor_tmp_125;
      v7 = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
      v8[3] = &unk_10014F518;
      v8[4] = v6;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
      v9[3] = &unk_10014F4F0;
      v9[4] = v8;
      if (_mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v9))
      {
        mdns_interface_monitor_invalidate(ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(a1 + 80), v3);
      }
    }

    while (v3 > 0);
  }
}

uint64_t _mdns_dns_service_add_domain_by_string(uint64_t a1, char *a2, unsigned int a3)
{
  v8 = 0;
  v5 = mdns_domain_name_create(a2, &v8);
  if (v5)
  {
    v6 = v5;
    _mdns_dns_service_add_domain(a1, v5, a3);
    v8 = 0;
    os_release(v6);
  }

  return v8;
}

uint64_t _mdns_dns_service_compare_time(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 > v3;
  v5 = v2 < v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void __mdns_dns_service_manager_register_path_resolver_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    v2 = *(a1 + 40);
    service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v1 + 40), v2);
    if (service_by_uuid)
    {
      v10 = service_by_uuid;
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v11 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v10 + 24);
        *v20 = 134218498;
        *&v20[4] = v12;
        *&v20[12] = 1040;
        *&v20[14] = 16;
        *&v20[18] = 2096;
        *&v20[20] = v2;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Already registered service -- service id: %llu, uuid: %{uuid_t}.16P", v20, 0x1Cu);
      }
    }

    else
    {
      v4 = nw_resolver_config_create();
      nw_resolver_config_set_identifier();
      os_retain(v1);
      nw_retain(v4);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      *v20 = _NSConcreteStackBlock;
      *&v20[8] = 0x40000000;
      *&v20[16] = ___mdns_dns_service_manager_register_path_resolver_internal_block_invoke;
      *&v20[24] = &__block_descriptor_tmp_73;
      v21 = v1;
      v22 = v4;
      nw_resolver_config_watch_updates();
      v13 = 0;
      v5 = _mdns_dns_service_create_from_resolver_config(v4, 3, 4, &v13);
      if (v5)
      {
        v6 = v5;
        *(v5 + 284) = 1;
        v7 = *(v1 + 40);
        _mdns_dns_service_increment_use_count(v5);
        CFArrayAppendValue(v7, v6);
        _mdns_dns_service_manager_update_interface_properties_for_service(v1, v6);
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v8 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v15 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered service -- %@", buf, 0xCu);
        }

        os_release(v6);
      }

      else
      {
        _mdns_dns_service_manager_cancel_resolver_config_updates();
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v9 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158466;
          *v15 = 16;
          *&v15[4] = 2096;
          *&v15[6] = v2;
          v16 = 2112;
          v17 = v4;
          v18 = 2048;
          v19 = v13;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to register service -- uuid: %{uuid_t}.16P, config: %@, error: %{mdns:err}ld", buf, 0x26u);
        }
      }

      nw_release(v4);
    }
  }
}

uint64_t _mdns_dns_service_manager_get_service_by_uuid(const __CFArray *a1, const unsigned __int8 *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v13 = 3;
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___mdns_dns_service_manager_get_service_by_uuid_block_invoke;
  v9[3] = &unk_10014EB50;
  v10 = *dst;
  v11 = v13;
  v9[4] = &v5;
  mdns_cfarray_enumerate(a1, v9);
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

void ___mdns_dns_service_manager_register_path_resolver_internal_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
LABEL_2:

    _mdns_dns_service_manager_deregister_service_by_config(v2, v3);
    return;
  }

  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 40);
  if (nw_resolver_config_get_protocol() != 3)
  {
    return;
  }

  path_service_by_config = _mdns_dns_service_manager_get_path_service_by_config(*(v2 + 40), v3);
  if (!path_service_by_config)
  {
    return;
  }

  v6 = path_service_by_config;
  v7 = *(path_service_by_config + 160);
  if (v7)
  {
    string_ptr = xpc_string_get_string_ptr(v7);
  }

  else
  {
    string_ptr = 0;
  }

  v9 = v6[12];
  provider_name = nw_resolver_config_get_provider_name();
  if (string_ptr)
  {
    if (!provider_name || strcmp(string_ptr, provider_name))
    {
      goto LABEL_2;
    }
  }

  else if (provider_name)
  {
    goto LABEL_2;
  }

  v11 = v6[21];
  v12 = v6[12];
  provider_path = nw_resolver_config_get_provider_path();
  if (v11)
  {
    if (!provider_path || strcmp(v11, provider_path))
    {
      goto LABEL_2;
    }
  }

  else if (provider_path)
  {
    goto LABEL_2;
  }

  v14 = v6[12];
  odoh_config = nw_resolver_config_get_odoh_config();
  v16 = v6[12];
  v17 = nw_resolver_config_copy_proxy_config();
  if (v17)
  {
    nw_proxy_config_set_prohibit_direct();
  }

  v18 = v6[8];
  if (v18)
  {
    v19 = *(*(v18 + 16) + 96);
    if (v19)
    {
      v19();
    }

    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v20 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated ODoH config -- %@", &buf, 0xCu);
    }
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v23 = ___mdns_dns_service_manager_handle_resolver_config_update_block_invoke;
  v24 = &__block_descriptor_tmp_77;
  v25 = odoh_config;
  v26 = 0;
  v27 = v17;
  v21 = v6[16];
  if (v21)
  {
    mdns_cfarray_enumerate(v21, &buf);
  }

  if (v17)
  {
    nw_release(v17);
  }
}

uint64_t _mdns_dns_service_create_from_resolver_config(void *a1, char a2, char a3, int *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v8 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Creating DNS service from resolver config -- %@", buf, 0xCu);
  }

  protocol = nw_resolver_config_get_protocol();
  if (protocol < 4)
  {
    v10 = protocol + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = _mdns_dns_service_create(v10, a2, a3, v18 + 6);
  v12 = v18[6];
  if (!v12)
  {
    if (__isPlatformVersionAtLeast(2, 19, 0, 0))
    {
      nw_resolver_config_get_port();
    }

    nw_resolver_config_enumerate_name_servers();
    v12 = v18[6];
    if (!v12)
    {
      nw_resolver_config_enumerate_match_domains();
      *(v11 + 96) = a1;
      nw_retain(a1);
      interface_name = nw_resolver_config_get_interface_name();
      if (interface_name)
      {
        v14 = interface_name;
        v15 = strdup(interface_name);
        if (!v15)
        {
          __break(1u);
        }

        *(v11 + 104) = v15;
        *(v11 + 256) = if_nametoindex(v14);
      }

      *(v11 + 276) = 6;
      _mdns_dns_service_update_nw_config_data(v11);
      v12 = 0;
      v18[6] = 0;
    }
  }

  if (a4)
  {
    *a4 = v12;
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

BOOL ___mdns_dns_service_create_from_resolver_config_block_invoke(uint64_t a1, char *a2)
{
  v3 = mdns_address_create_from_ip_address_string_and_port(a2, *(a1 + 48));
  result = 1;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = _mdns_dns_service_append_address(*(a1 + 40), v3);
    os_release(v4);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      return 0;
    }
  }

  return result;
}

uint64_t _mdns_dns_service_update_nw_config_data(uint64_t a1)
{
  result = *(a1 + 96);
  if (result && !*(a1 + 136))
  {
    provider_name = nw_resolver_config_get_provider_name();
    v4 = *(a1 + 160);
    if (v4)
    {
      string_ptr = xpc_string_get_string_ptr(v4);
      if (string_ptr)
      {
        if (!provider_name)
        {
          v11 = *(a1 + 160);
          if (!v11)
          {
            goto LABEL_15;
          }

          xpc_release(v11);
          v7 = 0;
LABEL_14:
          *(a1 + 160) = v7;
          goto LABEL_15;
        }

        if (!strcmp(string_ptr, provider_name))
        {
          goto LABEL_15;
        }
      }

      else if (!provider_name)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 160);
      if (v6)
      {
        xpc_release(v6);
        *(a1 + 160) = 0;
      }
    }

    else if (!provider_name)
    {
LABEL_15:
      v8 = *(a1 + 96);
      result = nw_resolver_config_get_provider_path();
      v9 = result;
      v10 = *(a1 + 168);
      if (v10)
      {
        if (!result)
        {
          goto LABEL_22;
        }

        result = strcmp(*(a1 + 168), result);
        if (!result)
        {
          return result;
        }

        free(v10);
        *(a1 + 168) = 0;
      }

      else if (!result)
      {
        return result;
      }

      result = strdup(v9);
      if (result)
      {
LABEL_23:
        *(a1 + 168) = result;
        return result;
      }

      __break(1u);
LABEL_22:
      free(v10);
      result = 0;
      goto LABEL_23;
    }

    v7 = xpc_string_create(provider_name);
    goto LABEL_14;
  }

  return result;
}

void _mdns_dns_service_manager_deregister_service_by_config(uint64_t a1, uint64_t a2)
{
  path_service_by_config = _mdns_dns_service_manager_get_path_service_by_config(*(a1 + 40), a2);
  if (path_service_by_config)
  {
    v4 = path_service_by_config;
    _mdns_dns_service_manager_deregister_service(a1, path_service_by_config);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v5 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deregistered service -- %@", &v6, 0xCu);
    }
  }
}

uint64_t _mdns_dns_service_manager_get_path_service_by_config(const __CFArray *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_manager_get_path_service_by_config_block_invoke;
  v4[3] = &unk_10014EB78;
  v4[4] = &v5;
  v4[5] = a2;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___mdns_dns_service_manager_handle_resolver_config_update_block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    v4 = *(*(v3 + 16) + 96);
    if (v4)
    {
      v5 = a1[5];
      v6 = a1[6];
      v7 = a1[4];
      v4();
    }
  }

  return 1;
}

BOOL ___mdns_dns_service_manager_get_path_service_by_config_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_manager_get_service_by_uuid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_scope_id_match(a2, a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_scope_id_match(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 280);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      return !*(a2 + 16);
    }

    if (v3 != 2)
    {
      return 0;
    }

    v4 = *(a2 + 16);
    goto LABEL_10;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      if (*(a2 + 16) == 3)
      {
        if (*(a1 + 96))
        {
          *uu1 = 0;
          v8 = 0;
          nw_resolver_config_get_identifier();
          if (!uuid_compare(uu1, a2))
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (v3 != 5)
    {
      return 0;
    }

    v4 = *(a2 + 16);
    if (!*(a2 + 16))
    {
      return 1;
    }

LABEL_10:
    if (v4 == 1)
    {
      v5 = *(a1 + 256);
      return v5 == *a2;
    }

    return 0;
  }

  if (*(a2 + 16) == 2)
  {
    v5 = *(a1 + 260);
    return v5 == *a2;
  }

  return 0;
}

uint64_t mdns_dns_service_manager_register_custom_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_register_custom_service_block_invoke;
  block[3] = &unk_10014E4F0;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __mdns_dns_service_manager_register_custom_service_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 131))
  {
    goto LABEL_21;
  }

  v3 = a1[6];
  v4 = nw_resolver_config_create_with_dictionary();
  if (!v4)
  {
    v16 = xpc_copy_description(v3);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v17 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v18 = "<NO DESC.>";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 136315138;
      *v21 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create nw_resolver_config for dictionary: %s", buf, 0xCu);
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    else if (!v16)
    {
      goto LABEL_21;
    }

    free(v16);
    goto LABEL_21;
  }

  v5 = v4;
  v26[0] = 0;
  v26[1] = 0;
  nw_resolver_config_get_identifier();
  service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 56), v26);
  if (!service_by_uuid)
  {
    v19 = 0;
    v11 = _mdns_dns_service_create_from_resolver_config(v5, 5, 4, &v19);
    if (v11)
    {
      v7 = v11;
      v12 = *(v2 + 56);
      _mdns_dns_service_increment_use_count(v11);
      CFArrayAppendValue(v12, v7);
      _mdns_dns_service_manager_update_interface_properties_for_service(v2, v7);
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v13 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v21 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registered custom service -- %@", buf, 0xCu);
      }

      os_release(v7);
      goto LABEL_14;
    }

    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v15 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158466;
      *v21 = 16;
      *&v21[4] = 2096;
      *&v21[6] = v26;
      v22 = 2112;
      v23 = v5;
      v24 = 2048;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to register custom service -- uuid: %{uuid_t}.16P, config: %@, error: %{mdns:err}ld", buf, 0x26u);
    }

    nw_release(v5);
LABEL_21:
    v14 = 0;
    goto LABEL_15;
  }

  v7 = service_by_uuid;
  v8 = _mdns_dns_service_increment_use_count(service_by_uuid);
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v9 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
  {
    v10 = v7[3];
    *buf = 134218240;
    *v21 = v10;
    *&v21[8] = 1024;
    *&v21[10] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Registered existing custom service -- service id: %llu, use count: %d", buf, 0x12u);
  }

LABEL_14:
  nw_release(v5);
  v14 = v7[3];
LABEL_15:
  *(*(a1[4] + 8) + 24) = v14;
}

void __mdns_dns_service_manager_deregister_custom_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 56), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

void __mdns_dns_service_manager_register_doh_uri_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 131) & 1) == 0)
  {
    if (!*(a1 + 40) || (v4 = *(a1 + 48), (v5 = strdup(*(a1 + 40))) == 0))
    {
      __break(1u);
      goto LABEL_36;
    }

    v1 = v5;
    v6 = strchr(v5, 123);
    if (v6)
    {
      *v6 = 0;
    }

    url = nw_endpoint_create_url(v1);
    if (url)
    {
      v2 = url;
      url_scheme = nw_endpoint_get_url_scheme();
      if (!url_scheme || strcasecmp("https", url_scheme))
      {
LABEL_30:
        free(v1);
        nw_release(v2);
        return;
      }

      v24 = v4;
      hostname = nw_endpoint_get_hostname(v2);
      url_path = nw_endpoint_get_url_path();
      if (hostname)
      {
        v11 = url_path;
        if (url_path)
        {
          Count = CFArrayGetCount(*(v3 + 48));
          if (Count >= 1)
          {
            v13 = Count;
            v14 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 48), v14);
              if (*(ValueAtIndex + 96))
              {
                if (nw_resolver_config_get_protocol() == 2)
                {
                  v16 = *(ValueAtIndex + 96);
                  provider_name = nw_resolver_config_get_provider_name();
                  v18 = *(ValueAtIndex + 96);
                  provider_path = nw_resolver_config_get_provider_path();
                  if (!strcasecmp(hostname, provider_name) && !strcasecmp(v11, provider_path))
                  {
                    break;
                  }
                }
              }

              if (v13 == ++v14)
              {
                goto LABEL_18;
              }
            }

LABEL_24:
            if (v24)
            {
              if (_mdns_dns_service_log_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
              }

              v23 = _mdns_dns_service_log_s_log;
              if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = v24;
                *&buf[12] = 2080;
                *&buf[14] = v1;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Adding domain %s to DoH resolver at %s", buf, 0x16u);
              }

              _mdns_dns_service_add_domain_by_string(ValueAtIndex, v24, 0);
            }

            goto LABEL_30;
          }
        }
      }

LABEL_18:
      if (_mdns_dns_service_log_s_once == -1)
      {
LABEL_19:
        v20 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v1;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Registering discovered DoH resolver at %s", buf, 0xCu);
        }

        v21 = nw_resolver_config_create();
        nw_resolver_config_set_class();
        nw_resolver_config_set_protocol();
        nw_endpoint_get_hostname(v2);
        nw_resolver_config_set_provider_name();
        nw_endpoint_get_url_path();
        nw_resolver_config_set_provider_path();
        *buf = 0;
        *&buf[8] = 0;
        uuid_generate(buf);
        nw_resolver_config_set_identifier();
        v25 = 0;
        ValueAtIndex = _mdns_dns_service_create(3, 4, 4, &v25);
        if (v25)
        {
          if (v21)
          {
            nw_release(v21);
          }

          if (!ValueAtIndex)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *(ValueAtIndex + 48) = nw_retain(v2);
          *(ValueAtIndex + 56) = 1;
          *(ValueAtIndex + 96) = v21;
          *(ValueAtIndex + 276) = 6;
          _mdns_dns_service_update_nw_config_data(ValueAtIndex);
        }

        v22 = *(v3 + 48);
        _mdns_dns_service_increment_use_count(ValueAtIndex);
        CFArrayAppendValue(v22, ValueAtIndex);
        _mdns_dns_service_manager_update_interface_properties_for_service(v3, ValueAtIndex);
        os_release(ValueAtIndex);
        _mdns_dns_service_manager_fetch_doh_pvd(ValueAtIndex);
        goto LABEL_24;
      }

LABEL_36:
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      goto LABEL_19;
    }

    free(v1);
  }
}

void _mdns_dns_service_manager_fetch_doh_pvd(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  os_retain(a1);
  v2 = a1[6];
  nw_retain(v2);
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v3 = _mdns_dns_service_queue_s_queue;
  hostname = nw_endpoint_get_hostname(v2);
  url_path = nw_endpoint_get_url_path();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke;
  v8[3] = &unk_10014EC68;
  v8[5] = v2;
  v8[6] = a1;
  v8[4] = &v9;
  pvd_query = http_task_create_pvd_query(v3, hostname, url_path, v8);
  v10[3] = pvd_query;
  v7 = objc_autoreleasePoolPush();
  [pvd_query resume];
  objc_autoreleasePoolPop(v7);
  _Block_object_dispose(&v9, 8);
}

void ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    string = xpc_dictionary_get_string(xdict, "dohTemplate");
    if (string)
    {
      v5 = string;
      v6 = strlen(string);
      v7 = strchr(v5, 123);
      if (v7)
      {
        v6 = v7 - v5;
      }

      url = nw_endpoint_get_url(*(a1 + 40));
      if (url && (v9 = url, strlen(url) == v6) && !strncasecmp(v5, v9, v6))
      {
        uint64 = xpc_dictionary_get_uint64(xdict, "secondsRemaining");
        if (uint64 || (uint64 = xpc_dictionary_get_uint64(xdict, "seconds-remaining")) != 0)
        {
          v17 = uint64;
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v18 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            v19 = *(a1 + 40);
            *buf = 138412546;
            v32 = v19;
            v33 = 2048;
            v34 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "DoH resolver for %@ will expire in %llu seconds", buf, 0x16u);
          }

          if (_mdns_get_future_continuous_time_onceToken != -1)
          {
            dispatch_once(&_mdns_get_future_continuous_time_onceToken, &__block_literal_global_96);
          }

          v20 = 1000000000 * v17 * *algn_10016210C / _mdns_get_future_continuous_time_time_base;
          v21 = mach_continuous_time() + v20;
        }

        else
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v26 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            v27 = *(a1 + 40);
            *buf = 138412290;
            v32 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "DoH resolver for %@ does not specify an expiration", buf, 0xCu);
          }

          v21 = 0;
        }

        *(*(a1 + 48) + 40) = v21;
        value = xpc_dictionary_get_value(xdict, "dnsZones");
        v23 = xpc_dictionary_get_value(xdict, "trustedNames");
        if (v23)
        {
          v24 = v23;
          if (xpc_get_type(v23) == &_xpc_type_array)
          {
            applier[0] = _NSConcreteStackBlock;
            applier[1] = 0x40000000;
            applier[2] = ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke_89;
            applier[3] = &__block_descriptor_tmp_91;
            v29 = *(a1 + 40);
            v30 = value;
            xpc_array_apply(v24, applier);
          }
        }
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v10 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 40);
          *buf = 138412546;
          v32 = v11;
          v33 = 2080;
          v34 = v5;
          v12 = "DoH resolver for %@ does not match DoH template %s";
          v13 = v10;
          v14 = 22;
LABEL_29:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        }
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v15 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138412290;
        v32 = v25;
        v12 = "DoH resolver for %@ missing DoH template";
        v13 = v15;
        v14 = 12;
        goto LABEL_29;
      }
    }
  }

  http_task_cancel(*(*(*(a1 + 32) + 8) + 24));
  os_release(*(a1 + 48));
  nw_release(*(a1 + 40));
}

uint64_t ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke_89(void *a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v7 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 136315394;
      *&buf[4] = string_ptr;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Query trusted name %s for DoH resolver for %@", buf, 0x16u);
    }

    v9 = a1[6];
    if (v9)
    {
      if (string_ptr)
      {
        v10 = a1[4];
        if (v10)
        {
          v11 = a1[5];
          if (xpc_get_type(v9) == &_xpc_type_array)
          {
            v21 = 0;
            asprintf(&v21, ".%s", string_ptr);
            v12 = xpc_array_create(0, 0);
            applier[0] = _NSConcreteStackBlock;
            applier[1] = 0x40000000;
            applier[2] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke;
            applier[3] = &__block_descriptor_tmp_98;
            applier[4] = string_ptr;
            applier[5] = v12;
            applier[6] = v21;
            xpc_array_apply(v9, applier);
            if (v21)
            {
              free(v21);
              v21 = 0;
            }

            if (xpc_array_get_count(v12))
            {
              v16 = 0;
              v17 = &v16;
              v18 = 0x2000000000;
              v19 = 0;
              nw_retain(v10);
              os_retain(v11);
              host = nw_endpoint_create_host(string_ptr, "443");
              if (_mdns_dns_service_queue_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 0x40000000;
              *&buf[16] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_2;
              v23 = &unk_10014ED10;
              v26 = v10;
              v27 = v12;
              v28 = v11;
              v24 = &v16;
              v25 = host;
              pvd_query = http_task_create_pvd_query(_mdns_dns_service_queue_s_queue, string_ptr, "", buf);
              v17[3] = pvd_query;
              v15 = objc_autoreleasePoolPush();
              [pvd_query resume];
              objc_autoreleasePoolPop(v15);
              _Block_object_dispose(&v16, 8);
            }

            else if (v12)
            {
              xpc_release(v12);
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    if (!strcasecmp(*(a1 + 32), string_ptr) || (v6 = strlen(*(a1 + 48)), v7 = strlen(string_ptr), v7 >= v6) && !strcasecmp(*(a1 + 48), &string_ptr[v7 - v6]))
    {
      xpc_array_append_value(*(a1 + 40), object);
    }
  }

  return 1;
}

void ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    string = xpc_dictionary_get_string(xdict, "dohTemplate");
    if (string)
    {
      v4 = string;
      url = nw_endpoint_get_url(*(a1 + 48));
      if (url && !strcasecmp(v4, url))
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v17 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          v18 = *(a1 + 48);
          *buf = 138412546;
          v25 = v18;
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DoH resolver at %@ is trusted for %@", buf, 0x16u);
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 0x40000000;
        v23[2] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_100;
        v23[3] = &__block_descriptor_tmp_101;
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v23[4] = *(a1 + 48);
        v23[5] = v21;
        xpc_array_apply(v20, v23);
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v6 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 40);
          v7 = *(a1 + 48);
          *buf = 138412802;
          v25 = v7;
          v26 = 2080;
          v27 = v4;
          v28 = 2112;
          v29 = v8;
          v9 = "DoH resolver for %@ does not match trusted DoH template %s for %@";
          v10 = v6;
          v11 = 32;
LABEL_17:
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
        }
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v15 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        *buf = 138412290;
        v25 = v16;
        v9 = "Trusted name %@ missing DoH template";
        v10 = v15;
        v11 = 12;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v12 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v9 = "No PvD file found at %@ for DoH server %@";
      v10 = v12;
      v11 = 22;
      goto LABEL_17;
    }
  }

  http_task_cancel(*(*(*(a1 + 32) + 8) + 24));
  nw_release(*(a1 + 40));
  nw_release(*(a1 + 48));
  v22 = *(a1 + 56);
  if (v22)
  {
    xpc_release(v22);
  }

  os_release(*(a1 + 64));
}

uint64_t ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_100(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v5 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = string_ptr;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding domain %s to discovered DoH resolver for %@", &v8, 0x16u);
  }

  _mdns_dns_service_add_domain_by_string(*(a1 + 40), string_ptr, 0);
  return 1;
}

uint64_t mdns_dns_service_manager_register_discovered_push_service(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_register_discovered_push_service_block_invoke;
  block[3] = &unk_10014E558;
  block[4] = &v16;
  block[5] = &v20;
  block[6] = a1;
  block[7] = a2;
  v15 = 2;
  v13 = a3;
  v14 = 30000;
  block[8] = a4;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  if (a5)
  {
    *a5 = *(v21 + 6);
  }

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v10;
}

void __mdns_dns_service_manager_register_discovered_push_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 131) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *(*(*(a1 + 40) + 8) + 24) = -6752;
    return;
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v6 = *(a1 + 72);
  v5 = *(a1 + 76);
  v7 = *(*(a1 + 40) + 8);
  v18 = 0;
  discovered_push_service = _mdns_dns_service_manager_get_discovered_push_service(*(v2 + 64), v3, v6);
  v9 = discovered_push_service;
  if (discovered_push_service)
  {
    _mdns_dns_service_increment_use_count(discovered_push_service);
    v10 = *(v9 + 24);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v11 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Re-registered discovered push service -- id: %llu", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_9;
  }

  v14 = mdns_dns_push_service_definition_create();
  if (!v14)
  {
    v10 = 0;
    v12 = -6729;
LABEL_9:
    v13 = v9 != 0;
    *(v7 + 24) = v12;
    goto LABEL_12;
  }

  v15 = v14;
  mdns_dns_push_service_definition_set_srv_name(v14, v3);
  mdns_dns_push_service_definition_set_interface_index(v15, v6, v4);
  *(v15 + 79) = 1;
  v10 = _mdns_dns_service_manager_register_push_service_internal_from_definition(v2, *(v2 + 64), v15, v5, 0, 0, &v18);
  *(v7 + 24) = v18;
  os_release(v15);
  v13 = 0;
LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = v10;
  if (!v9)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v16 = *(*(a1 + 48) + 96);
      if (v16)
      {
        dispatch_source_merge_data(v16, 1uLL);
      }
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *v17 = v13;
  }
}

uint64_t _mdns_dns_service_manager_get_discovered_push_service(const __CFArray *a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___mdns_dns_service_manager_get_discovered_push_service_block_invoke;
  v9[3] = &unk_10014F188;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3 != 0;
  v14 = 0;
  v15 = 0;
  v9[4] = &v5;
  v9[5] = a2;
  mdns_cfarray_enumerate(a1, v9);
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

BOOL ___mdns_dns_service_manager_get_discovered_push_service_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_scope_id_match(a2, a1 + 48) && _mdns_domain_name_equal(*(a2 + 216), *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void __mdns_dns_service_manager_terminate_discovered_push_service_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 131))
  {
    v3 = -6752;
  }

  else
  {
    Count = CFArrayGetCount(*(v2 + 64));
    if (Count < 1)
    {
LABEL_7:
      v3 = -6727;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1[5] + 64), v6);
        if (ValueAtIndex[3] == a1[6])
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_7;
        }
      }

      _mdns_dns_service_manager_terminate_service(a1[5], ValueAtIndex);
      CFArrayRemoveValueAtIndex(*(a1[5] + 64), v6);
      v8 = *(a1[5] + 96);
      if (v8)
      {
        dispatch_source_merge_data(v8, 1uLL);
      }

      v3 = 0;
    }
  }

  *(*(a1[4] + 8) + 24) = v3;
}

void __mdns_dns_service_manager_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 130) & 1) == 0)
  {
    _mdns_dns_service_manager_terminate(v2, 0);
    *(*(a1 + 32) + 130) = 1;
  }
}

uint64_t __mdns_dns_service_manager_get_unscoped_custom_push_service_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = a1[6];
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v7, 0, 0);
    result = _mdns_dns_service_manager_prepare_service(a1[5], service);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _mdns_dns_service_manager_get_service(const __CFArray *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = -1;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___mdns_dns_service_manager_get_service_block_invoke;
  v11[3] = &unk_10014EE88;
  v11[8] = a3;
  v11[9] = a2;
  v11[4] = a5;
  v11[5] = v14;
  v11[6] = v12;
  v11[7] = &v16;
  mdns_cfarray_enumerate(a1, v11);
  v6 = v17;
  if (a4)
  {
    v7 = v17[3];
    if (v7)
    {
      preferred_encrypted_alt = _mdns_dns_service_get_preferred_encrypted_alt(v7, (a4 & 2) != 0);
      v6 = v17;
      if (preferred_encrypted_alt)
      {
        v17[3] = preferred_encrypted_alt;
      }
    }
  }

  v9 = v6[3];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t _mdns_dns_service_manager_prepare_service(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v3 = *(a2 + 281);
  if (v3 != 5)
  {
    if (*(a2 + 64))
    {
      return v2;
    }

    if ((v3 - 3) < 2)
    {
      v16 = *(a2 + 256);
      v21 = _os_object_alloc();
      if (v21)
      {
        v18 = v21;
        v22 = &_mdns_https_resolver_kind;
        *(v21 + 16) = &_mdns_https_resolver_kind;
        do
        {
          v23 = v22[2];
          if (v23)
          {
            v23(v18);
          }

          v22 = *v22;
        }

        while (v22);
        goto LABEL_36;
      }
    }

    else if (v3 == 1)
    {
      v16 = *(a2 + 256);
      v32 = _os_object_alloc();
      if (v32)
      {
        v18 = v32;
        v33 = &_mdns_normal_resolver_kind;
        *(v32 + 16) = &_mdns_normal_resolver_kind;
        do
        {
          v34 = v33[2];
          if (v34)
          {
            v34(v18);
          }

          v33 = *v33;
        }

        while (v33);
        v24 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_170;
      }

      v16 = *(a2 + 256);
      v17 = _os_object_alloc();
      if (v17)
      {
        v18 = v17;
        v19 = &_mdns_tls_resolver_kind;
        *(v17 + 16) = &_mdns_tls_resolver_kind;
        do
        {
          v20 = v19[2];
          if (v20)
          {
            v20(v18);
          }

          v19 = *v19;
        }

        while (v19);
LABEL_36:
        v24 = 1;
LABEL_53:
        Mutable = CFArrayCreateMutable(0, 0, &mdns_cfarray_callbacks);
        *(v18 + 56) = Mutable;
        if (Mutable)
        {
          if (!v16 || (v36 = nw_interface_create_with_index(), (*(v18 + 48) = v36) != 0))
          {
            if (*(v2 + 96))
            {
              provider_name = nw_resolver_config_get_provider_name();
              v38 = *(v2 + 96);
              provider_path = nw_resolver_config_get_provider_path();
              if ((*(v18 + 137) & 1) == 0)
              {
                v40 = *(*(v18 + 16) + 56);
                if (!v40 || (v40(v18, provider_name), (*(v18 + 137) & 1) == 0))
                {
                  v41 = *(*(v18 + 16) + 80);
                  if (v41)
                  {
                    v41(v18, provider_path);
                  }
                }
              }

              v42 = *(v2 + 96);
              identity_reference = nw_resolver_config_get_identity_reference();
              if (identity_reference)
              {
                if ((*(v18 + 137) & 1) != 0 || (v44 = *(*(v18 + 16) + 88)) != 0 && v44(v18, identity_reference, 0))
                {
                  if (_mdns_dns_service_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                  }

                  v45 = _mdns_dns_service_log_s_log;
                  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    v90 = *(v2 + 24);
                    *buf = 134217984;
                    *&buf[4] = v90;
                    _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to set identity reference for service -- service id: %llu", buf, 0xCu);
                  }
                }
              }

              v46 = *(v2 + 96);
              if (nw_resolver_config_get_protocol() == 3)
              {
                v47 = *(v2 + 96);
                odoh_config = nw_resolver_config_get_odoh_config();
                v49 = *(v2 + 96);
                v50 = nw_resolver_config_copy_proxy_config();
                if (v50)
                {
                  nw_proxy_config_set_prohibit_direct();
                }

                if (_mdns_dns_service_log_s_once != -1)
                {
                  dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                }

                v51 = _mdns_dns_service_log_s_log;
                if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v50;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Resolver proxy config: %@", buf, 0xCu);
                }

                v52 = *(*(v18 + 16) + 96);
                if (v52)
                {
                  v52(v18, provider_name, provider_path, odoh_config, 0, v50);
                }

                if (v50)
                {
                  nw_release(v50);
                }

                if (*(a1 + 129) == 1 && *(v2 + 282) != 4)
                {
                  *(v2 + 276) |= 0x1000u;
                  if ((*(v18 + 137) & 1) == 0)
                  {
                    *(v18 + 140) = 1;
                  }
                }
              }
            }

            if (*(v2 + 176))
            {
              if ((*(v18 + 137) & 1) == 0)
              {
                v53 = *(*(v18 + 16) + 64);
                if (v53)
                {
                  v53(v18);
                }
              }
            }

            if (*(v2 + 278))
            {
              if ((*(v18 + 137) & 1) == 0)
              {
                v54 = *(*(v18 + 16) + 72);
                if (v54)
                {
                  v54(v18);
                }
              }
            }

            v55 = *(v18 + 137);
            if (*(v2 + 56) == 1)
            {
              if ((v55 & 1) == 0)
              {
                v55 = 0;
                *(v18 + 133) = 1;
                goto LABEL_97;
              }
            }

            else if ((v55 & 1) == 0)
            {
LABEL_97:
              if ((*(v2 + 276) & 8) != 0)
              {
                v56 = 2000;
              }

              else
              {
                v56 = 1000;
              }

              *(v18 + 124) = v56;
              *(v18 + 132) = *(a1 + 128);
              if (((v24 | v55) & 1) == 0)
              {
                *(v18 + 138) = 1;
                v57 = *(a1 + 120);
                if (v57 >= 0x64)
                {
                  v58 = 100;
                }

                else
                {
                  v58 = *(a1 + 120);
                }

                if (v57 <= 0)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v58;
                }

                *(v18 + 128) = v59;
              }
            }

            v60 = *(v2 + 80);
            if (!v60)
            {
              goto LABEL_136;
            }

            Count = CFArrayGetCount(v60);
            v62 = Count;
            if (Count < 1)
            {
              v73 = 1;
              if (!Count)
              {
                goto LABEL_136;
              }

              goto LABEL_135;
            }

            v98 = a1;
            v63 = 0;
            v64 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 80), v64);
              v66 = ValueAtIndex;
              if (*(v18 + 137))
              {
                break;
              }

              *&buf[24] = 0;
              *&buf[16] = 0;
              v67 = ValueAtIndex[25];
              if (v67 == 30)
              {
                *buf = *(ValueAtIndex + 24);
                *&buf[12] = *(ValueAtIndex + 36);
              }

              else
              {
                if (v67 != 2)
                {
                  v70 = -6756;
LABEL_124:
                  if (_mdns_dns_service_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                  }

                  v71 = _mdns_dns_service_log_s_log;
                  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    v72 = *(v2 + 24);
                    *buf = 134218498;
                    *&buf[4] = v72;
                    *&buf[12] = 2112;
                    *&buf[14] = v66;
                    *&buf[22] = 2048;
                    *&buf[24] = v70;
                    _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Failed to add address to resolver -- service id: %llu, address: %@, error: %{mdns:err}ld", buf, 0x20u);
                  }

                  goto LABEL_128;
                }

                *buf = *(ValueAtIndex + 24);
              }

              if (!*&buf[2])
              {
                *&buf[2] = bswap32(*(*(v18 + 16) + 156)) >> 16;
              }

              address = nw_endpoint_create_address(buf);
              if (!address)
              {
                v70 = -6700;
                goto LABEL_124;
              }

              v69 = address;
              if (*(v18 + 48))
              {
                nw_endpoint_set_interface();
              }

              v70 = _mdns_resolver_add_server_by_endpoint(v18, v69);
              nw_release(v69);
              if (v70)
              {
                goto LABEL_124;
              }

              ++v63;
LABEL_128:
              if (v62 == ++v64)
              {
                v73 = v63 < 1;
                a1 = v98;
                if (!v62)
                {
LABEL_136:
                  if (_mdns_dns_service_queue_s_once != -1)
                  {
                    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                  }

                  if ((*(v18 + 137) & 1) == 0)
                  {
                    v74 = _mdns_dns_service_queue_s_queue;
                    dispatch_retain(_mdns_dns_service_queue_s_queue);
                    v75 = *(v18 + 72);
                    if (v75)
                    {
                      dispatch_release(v75);
                    }

                    *(v18 + 72) = v74;
                  }

                  os_retain(a1);
                  os_retain(v18);
                  os_retain(v2);
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 0x40000000;
                  v100 = ___mdns_dns_service_manager_prepare_resolver_block_invoke;
                  v101 = &__block_descriptor_tmp_204;
                  v102 = a1;
                  v103 = v2;
                  v104 = v18;
                  if ((*(v18 + 137) & 1) == 0)
                  {
                    v76 = _Block_copy(&aBlock);
                    v77 = *(v18 + 80);
                    if (v77)
                    {
                      _Block_release(v77);
                    }

                    *(v18 + 80) = v76;
                  }

                  *(v2 + 64) = v18;
                  if (*(v2 + 283) == 1)
                  {
                    *(v2 + 283) = 0;
                    v78 = *(a1 + 96);
                    if (v78)
                    {
                      dispatch_source_merge_data(v78, 1uLL);
                      v18 = *(v2 + 64);
                    }
                  }

                  if ((*(v18 + 137) & 1) == 0)
                  {
                    *(v18 + 137) = 1;
                    os_retain(v18);
                    if (_mdns_resolver_queue_s_once != -1)
                    {
                      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
                    }

                    *buf = _NSConcreteStackBlock;
                    *&buf[8] = 0x40000000;
                    *&buf[16] = __mdns_resolver_activate_block_invoke;
                    *&buf[24] = &__block_descriptor_tmp_4761;
                    v106 = v18;
                    dispatch_async(_mdns_resolver_queue_s_queue, buf);
                  }

                  if (*(v2 + 281) - 2 >= 4 && nw_settings_get_ddr_enabled() && !*(v2 + 200))
                  {
                    if (_mdns_dns_service_queue_s_once != -1)
                    {
                      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                    }

                    v79 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, _mdns_dns_service_queue_s_queue);
                    *(v2 + 200) = v79;
                    if (v79)
                    {
                      if (_mdns_os_variant_has_internal_diagnostics_s_once != -1)
                      {
                        dispatch_once(&_mdns_os_variant_has_internal_diagnostics_s_once, &__block_literal_global_253);
                      }

                      if (_mdns_os_variant_has_internal_diagnostics_s_result == 1 && (v80 = *(a1 + 124)) != 0)
                      {
                        if (v80 <= 0xA)
                        {
                          v81 = 10;
                        }

                        else
                        {
                          v81 = *(a1 + 124);
                        }
                      }

                      else
                      {
                        v81 = 1800;
                      }

                      v82 = *(v2 + 200);
                      v83 = dispatch_time(0x8000000000000000, 1000000000 * v81);
                      dispatch_source_set_timer(v82, v83, 1000000000 * v81, 50000000 * v81);
                      v84 = *(v2 + 200);
                      *buf = _NSConcreteStackBlock;
                      *&buf[8] = 0x40000000;
                      *&buf[16] = ___mdns_dns_service_manager_schedule_ddr_probe_block_invoke;
                      *&buf[24] = &__block_descriptor_tmp_213;
                      v106 = a1;
                      v107 = v2;
                      dispatch_source_set_event_handler(v84, buf);
                      dispatch_activate(*(v2 + 200));
                      _mdns_dns_service_forget_all_ddr_queriers(v2);
                      _mdns_dns_service_manager_start_ddr_querier_ex(a1, v2, 0);
                      goto LABEL_169;
                    }

                    if (_mdns_dns_service_log_s_once != -1)
                    {
                      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                    }

                    v97 = _mdns_dns_service_log_s_log;
                    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v93 = "Failed to create DDR timer";
                      v94 = v97;
                      v95 = 2;
                      goto LABEL_187;
                    }
                  }

                  goto LABEL_169;
                }

LABEL_135:
                if (!v73)
                {
                  goto LABEL_136;
                }

                os_release(v18);
                goto LABEL_169;
              }
            }

            v70 = -6719;
            goto LABEL_124;
          }
        }

        os_release(v18);
      }
    }

    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v91 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v92 = *(v2 + 24);
      *buf = 134217984;
      *&buf[4] = v92;
      v93 = "Failed to create resolver for service -- service id: %llu";
      v94 = v91;
      v95 = 12;
LABEL_187:
      _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
    }

LABEL_169:
    if (*(v2 + 64))
    {
      return v2;
    }

LABEL_170:
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v85 = _mdns_dns_service_log_s_log;
    if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v88 = *(v2 + 24);
    LODWORD(aBlock) = 134217984;
    *(&aBlock + 4) = v88;
    v89 = "Failed to prepare resolver -- service id: %llu";
    goto LABEL_181;
  }

  if (!*(a2 + 72))
  {
    v4 = mdns_push_server_create();
    *(v2 + 72) = v4;
    if (!v4)
    {
LABEL_188:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v85 = _mdns_dns_service_log_s_log;
      if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v96 = *(v2 + 24);
      LODWORD(aBlock) = 134217984;
      *(&aBlock + 4) = v96;
      v89 = "Failed to prepare push server -- service id: %llu";
LABEL_181:
      _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, v89, &aBlock, 0xCu);
      return 0;
    }

    v5 = *(v2 + 232);
    if (v5)
    {
      v6 = CFArrayGetCount(v5);
      if (v6 >= 1)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = CFArrayGetValueAtIndex(*(v2 + 232), i);
          v10 = *(v2 + 72);
          if ((*(v10 + 103) & 1) == 0)
          {
            CFArrayAppendValue(*(v10 + 72), v9);
          }
        }
      }
    }

    v11 = *(v2 + 72);
    if ((*(v11 + 103) & 1) == 0)
    {
      v12 = *(v2 + 256);
      if (*(v11 + 96) != v12)
      {
        *(v11 + 96) = v12;
        if (*(v11 + 56))
        {
          free(*(v11 + 56));
          *(v11 + 56) = 0;
          v12 = *(v11 + 96);
        }
      }

      if (v12 && !*(v11 + 56))
      {
        *(v11 + 56) = mdns_system_interface_index_to_name(v12);
      }
    }

    v13 = *(v2 + 80);
    if (v13 && CFArrayGetCount(v13) >= 1)
    {
      v14 = *(v2 + 80);
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 0x40000000;
      v100 = ___mdns_dns_service_manager_prepare_push_service_block_invoke;
      v101 = &__block_descriptor_tmp_243;
      v102 = v2;
      mdns_cfarray_enumerate(v14, &aBlock);
    }

    else
    {
      v25 = *(v2 + 216);
      if (!v25)
      {
        goto LABEL_178;
      }

      mdns_push_server_set_srv_name(*(v2 + 72), v25);
    }

    v26 = *(v2 + 240);
    if (v26)
    {
      v27 = *(v2 + 248);
      v28 = *(v2 + 72);
      if (v27)
      {
        dispatch_retain(*(v2 + 240));
        v29 = _Block_copy(v27);
        v30 = *(v28 + 80);
        if (v30)
        {
          dispatch_release(v30);
        }

        *(v28 + 80) = v26;
        v31 = *(v28 + 88);
        if (v31)
        {
          _Block_release(v31);
        }

        *(v28 + 88) = v29;
        v26 = *(v2 + 240);
        *(*(v2 + 72) + 103) = 1;
        if (!v26)
        {
          goto LABEL_176;
        }
      }

      else
      {
        *(v28 + 103) = 1;
      }

      dispatch_release(v26);
      *(v2 + 240) = 0;
    }

    else
    {
      *(*(v2 + 72) + 103) = 1;
    }

LABEL_176:
    v86 = *(v2 + 248);
    if (v86)
    {
      _Block_release(v86);
      *(v2 + 248) = 0;
    }

LABEL_178:
    if (*(v2 + 72))
    {
      return v2;
    }

    goto LABEL_188;
  }

  return v2;
}

void ___mdns_dns_service_manager_prepare_resolver_block_invoke(void *a1, int a2, xpc_object_t xdict)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  switch(a2)
  {
    case 1:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v16 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v17 = *(v3 + 24);
        v32 = 134218242;
        v33 = v17;
        v34 = 2112;
        v35 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Resolver has been invalidated -- service id: %llu, resolver: %@", &v32, 0x16u);
      }

      os_release(v5);
      os_release(v3);
      os_release(v4);
      break;
    case 3:
      if (!xdict || *(v3 + 64) != v5)
      {
        return;
      }

      int64 = xpc_dictionary_get_int64(xdict, "error_code");
      if (*(v3 + 282) == 4)
      {
        if (int64 == -6736)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v13 = _mdns_dns_service_log_s_log;
          if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          v23 = *(v3 + 24);
          v32 = 134217984;
          v33 = v23;
          v15 = "Received unexpected error for discovered service id: %llu";
        }

        else
        {
          if (int64 != -6776)
          {
            return;
          }

          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v13 = _mdns_dns_service_log_s_log;
          if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          v14 = *(v3 + 24);
          v32 = 134217984;
          v33 = v14;
          v15 = "Received authentication error for discovered service id: %llu";
        }

        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, &v32, 0xCu);
        return;
      }

      if (!*(v3 + 96))
      {
        return;
      }

      if (int64)
      {
        if (int64 == -6736)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v24 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v30 = *(v3 + 24);
            v32 = 134217984;
            v33 = v30;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Reporting EBADMSG error for service id: %llu", &v32, 0xCu);
          }

          v25 = *(v3 + 96);
        }

        else
        {
          if (int64 != -6776)
          {
            return;
          }

          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v19 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v31 = *(v3 + 24);
            v32 = 134217984;
            v33 = v31;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Reporting EAUTH error for service id: %llu", &v32, 0xCu);
          }

          v20 = *(v3 + 96);
        }
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v26 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
        {
          v27 = *(v3 + 24);
          v32 = 134217984;
          v33 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Reporting success for service id: %llu", &v32, 0xCu);
        }

        v28 = *(v3 + 96);
      }

      nw_resolver_config_report_error();
      break;
    case 2:
      if (xdict && *(v3 + 64) == v5)
      {
        v8 = xpc_dictionary_get_BOOL(xdict, "cannot_connect");
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v9 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "";
          v11 = *(v3 + 24);
          v32 = 136446722;
          if (v8)
          {
            v10 = "not";
          }

          v33 = v10;
          v34 = 2048;
          v35 = v11;
          v36 = 2112;
          v37 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resolver can%{public}s connect -- service id: %llu, resolver: %@", &v32, 0x20u);
        }

        if (v8)
        {
          if (*(v3 + 283))
          {
            return;
          }

          *(v3 + 283) = 1;
        }

        else
        {
          if (!*(v3 + 283))
          {
            return;
          }

          *(v3 + 283) = 0;
        }

        v21 = v4[12];
        if (v21)
        {
          dispatch_source_merge_data(v21, 1uLL);
        }
      }

      break;
    default:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        if (xdict)
        {
          v18 = xpc_copy_description(xdict);
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }
        }

        else
        {
          v18 = 0;
        }

        v22 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
        {
          v29 = "<invalid event value>";
          v32 = 138412802;
          v33 = v3;
          if (!a2)
          {
            v29 = "null";
          }

          v34 = 2080;
          v35 = v29;
          v36 = 2082;
          v37 = v18;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "DNS service (%@) got unhandled event: %s info: %{public}s", &v32, 0x20u);
          if (!v18)
          {
            return;
          }
        }

        else if (!v18)
        {
          return;
        }

        free(v18);
      }

      break;
  }
}

void ___mdns_dns_service_manager_schedule_ddr_probe_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  _mdns_dns_service_forget_all_ddr_queriers(v2);

  _mdns_dns_service_manager_start_ddr_querier_ex(v1, v2, 0);
}

void _mdns_dns_service_manager_start_ddr_querier_ex(void *a1, uint64_t a2, char *a3)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    if (a3 && !*(a2 + 192))
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      *(a2 + 192) = Mutable;
      if (!Mutable)
      {
        return;
      }

      v4 = *(a2 + 64);
    }

    querier = mdns_resolver_create_querier(v4);
    if (querier)
    {
      v15 = querier;
      ++*(a2 + 268);
      mdns_querier_set_log_label(querier, "S%llu.DDR%u", v9, v10, v11, v12, v13, v14, *(a2 + 24));
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      mdns_client_set_queue(v15, _mdns_dns_service_queue_s_queue);
      if (a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = "\x04_dns\bresolver\x04arpa";
      }

      mdns_querier_set_query(v15, v16, 64);
      if ((*(v15 + 61) & 1) == 0)
      {
        *(v15 + 236) = -1;
      }

      if (a3)
      {
        CFArrayAppendValue(*(a2 + 192), v15);
      }

      else
      {
        v17 = *(a2 + 184);
        if (v17)
        {
          mdns_client_invalidate(v17);
          os_release(*(a2 + 184));
        }

        *(a2 + 184) = v15;
        os_retain(v15);
      }

      os_retain(a1);
      os_retain(a2);
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = ___mdns_dns_service_manager_start_ddr_querier_ex_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_217;
      aBlock[4] = a2;
      aBlock[5] = v15;
      aBlock[6] = a1;
      aBlock[7] = a3;
      mdns_querier_set_result_handler(v15, aBlock);
      mdns_client_set_time_limit_ms(v15, 15000);
      mdns_client_activate(v15);
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v18 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v19 = "alias ";
        if (!a3)
        {
          v19 = "";
        }

        *buf = 136446210;
        v22 = v19;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to create DDR %{public}squerier", buf, 0xCu);
      }
    }
  }
}

uint64_t ___mdns_dns_service_manager_prepare_push_service_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(*(a1 + 32) + 72);
  if ((*(v2 + 103) & 1) == 0)
  {
    CFArrayAppendValue(*(v2 + 64), a2);
  }

  return 1;
}

void ___mdns_dns_service_manager_start_ddr_querier_ex_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 184);
  if (v4 == v2)
  {
    if (v2)
    {
      os_release(v4);
      *(v3 + 184) = 0;
    }
  }

  else
  {
    v5 = *(v3 + 192);
    if (!v5)
    {
      goto LABEL_164;
    }

    v144.length = CFArrayGetCount(v5);
    v144.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v3 + 192), v144, v2);
    if (FirstIndexOfValue < 0)
    {
      goto LABEL_164;
    }

    CFArrayRemoveValueAtIndex(*(v3 + 192), FirstIndexOfValue);
  }

  v7 = *(a1 + 40);
  if (*(v7 + 248) == 1)
  {
    v8 = *(v7 + 136);
    if (v8)
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    if (*(a1 + 56))
    {
      v79 = *(*(*(v7 + 96) + 56) + 24);
    }

    else
    {
      v79 = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    AnswerSection = 0;
    *v90 = 0;
    v13 = DNSMessageCollapse(v9, v10, v90, &AnswerSection);
    if (!AnswerSection)
    {
      v14 = *(v11 + 152);
      if (v14)
      {
        CFRelease(v14);
        *(v11 + 152) = 0;
      }

      *(v11 + 287) = 0;
      if (*v90 >= 0xCuLL)
      {
        v15 = __rev16(v13[3]);
        if (v15)
        {
          v89 = 0;
          AnswerSection = DNSMessageGetAnswerSection(v13, *v90, &v89);
          if (!AnswerSection)
          {
            v16 = dispatch_group_create();
            v17 = 0;
            v88 = v89;
            group = v16;
            while (1)
            {
              v86 = 0;
              v87 = 0;
              AnswerSection = _DNSMessageExtractRecordEx(v13, *v90, v88, 0, 0, 0, 0, &v87, &v86, 0, 0, 0, 0, &v88);
              if (AnswerSection)
              {
                goto LABEL_162;
              }

              v18 = v87;
              if (v87)
              {
                v19 = v86;
                if (v86 >= 2)
                {
                  if (*v87)
                  {
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x2000000000;
                    LOBYTE(v117) = 0;
                    block = _NSConcreteStackBlock;
                    v108 = 0x40000000;
                    v109 = __dnssd_svcb_is_valid_block_invoke;
                    v110 = &unk_100152DF0;
                    v111 = buf;
                    _dnssd_svcb_extract_values(v87, v86, 0, &block);
                    v20 = *(*&buf[8] + 24);
                    _Block_object_dispose(buf, 8);
                    if ((v20 & 1) == 0)
                    {
                      v19 = v86;
                      v18 = v87;
                      if (v86 >= 2)
                      {
LABEL_29:
                        if (!*v18)
                        {
                          if (!v79)
                          {
                            v21 = v18 + 1;
                            if (v18 != -2 && (v18 + v19) > v21)
                            {
                              v22 = v18 + 1;
                              while (*v22)
                              {
                                v22 += *v22 + 1;
                                if (v22)
                                {
                                  v23 = v22 >= v18 + v19;
                                }

                                else
                                {
                                  v23 = 1;
                                }

                                if (v23)
                                {
                                  goto LABEL_33;
                                }
                              }

                              if ((v22 - v21 + 1) <= 0x100uLL)
                              {
                                _mdns_dns_service_manager_start_ddr_querier_ex(v12, v11);
                              }
                            }
                          }

                          goto LABEL_33;
                        }
                      }

                      v82 = 0;
                      v83 = &v82;
                      v84 = 0x2000000000;
                      v85 = 0;
                      v81[0] = _NSConcreteStackBlock;
                      v81[1] = 0x40000000;
                      v81[2] = ___mdns_dns_service_manager_process_ddr_response_block_invoke;
                      v81[3] = &unk_10014F328;
                      v81[4] = &v82;
                      block = _NSConcreteStackBlock;
                      v108 = 0x40000000;
                      v109 = __dnssd_svcb_access_alpn_values_block_invoke;
                      v110 = &unk_100152EB8;
                      v111 = v81;
                      _dnssd_svcb_extract_values(v18, v19, 1, &block);
                      if (!*(v83 + 24))
                      {
                        goto LABEL_32;
                      }

                      if (v86 < 2)
                      {
                        goto LABEL_32;
                      }

                      v24 = v87;
                      v25 = v87 + 1;
                      if (v87 == -2 || (v87 + v86) <= v25)
                      {
                        goto LABEL_32;
                      }

                      v26 = v87 + 1;
                      while (*v26)
                      {
                        v26 = (v26 + *v26 + 1);
                        if (v26)
                        {
                          v27 = v26 >= (v87 + v86);
                        }

                        else
                        {
                          v27 = 1;
                        }

                        if (v27)
                        {
                          goto LABEL_32;
                        }
                      }

                      if ((v26 - v25 + 1) > 0x100uLL)
                      {
                        goto LABEL_32;
                      }

                      v28 = malloc_type_calloc(1uLL, 0x3F1uLL, 0x33987EBBuLL);
                      if (!v28)
                      {
                        __break(1u);
                        return;
                      }

                      LODWORD(v29) = *(v24 + 2);
                      v30 = v28;
                      if (*(v24 + 2) || (*v28 = 46, v30 = v28 + 1, LODWORD(v29) = *v25, *v25))
                      {
                        while (v29 <= 0x3F)
                        {
                          v31 = v25 + 1;
                          v32 = v25 + v29 + 1;
                          if (v32 >= (v24 + 129))
                          {
                            break;
                          }

                          if (v31 < v32)
                          {
                            v29 = v29;
                            do
                            {
                              v34 = *v31++;
                              v33 = v34;
                              if (v34 == 92 || v33 == 46)
                              {
                                *v30++ = 92;
                              }

                              else if (v33 <= 0x20)
                              {
                                *v30 = 12380;
                                v35 = (205 * v33) >> 11;
                                v30[2] = v35 | 0x30;
                                v30 += 3;
                                LOBYTE(v33) = (v33 - 10 * v35) | 0x30;
                              }

                              *v30++ = v33;
                              --v29;
                            }

                            while (v29);
                          }

                          *v30 = 0;
                          v36 = v25 + *v25;
                          *v30++ = 46;
                          v37 = v36[1];
                          v25 = (v36 + 1);
                          LODWORD(v29) = v37;
                          if (!v37)
                          {
                            goto LABEL_72;
                          }
                        }

LABEL_148:
                        free(v28);
LABEL_32:
                        _Block_object_dispose(&v82, 8);
                        goto LABEL_33;
                      }

LABEL_72:
                      *v30 = 0;
                      if (v30 == -1)
                      {
                        goto LABEL_148;
                      }

                      __s = v28;
                      bzero(&block, 0x3F1uLL);
                      is_empty = dnssd_svcb_service_name_is_empty(v87, v86);
                      v39 = __s;
                      p_block = __s;
                      if (is_empty)
                      {
                        if (!v79)
                        {
                          goto LABEL_147;
                        }

                        p_block = &block;
                        v41 = DomainNameToString(v79, 0, &block, 0);
                        v39 = __s;
                        if (v41)
                        {
                          goto LABEL_147;
                        }
                      }

                      v42 = strlen(p_block);
                      if (v42 && p_block[v42 - 1] == 46)
                      {
                        p_block[v42 - 1] = 0;
                      }

                      log = p_block;
                      *out = 0;
                      *&out[8] = out;
                      v137 = 0x2000000000;
                      LOWORD(v138) = 0;
                      *buf = _NSConcreteStackBlock;
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_get_port_block_invoke;
                      *&v117 = &unk_100152E18;
                      *(&v117 + 1) = out;
                      _dnssd_svcb_extract_values(v87, v86, 3, buf);
                      v70 = *(*&out[8] + 24);
                      _Block_object_dispose(out, 8);
                      *out = 0;
                      *&out[8] = out;
                      v137 = 0x2000000000;
                      v138 = 0;
                      *buf = _NSConcreteStackBlock;
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_copy_doh_path_block_invoke;
                      *&v117 = &unk_100152E68;
                      *(&v117 + 1) = out;
                      _dnssd_svcb_extract_values(v87, v86, 7, buf);
                      v43 = *(*&out[8] + 24);
                      _Block_object_dispose(out, 8);
                      if (v43)
                      {
                        v44 = strchr(v43, 123);
                        if (v44)
                        {
                          *v44 = 0;
                        }
                      }

                      v80 = 0;
                      *out = 0;
                      *&out[8] = out;
                      v137 = 0x2000000000;
                      v138 = 0;
                      *buf = _NSConcreteStackBlock;
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_copy_odoh_config_block_invoke;
                      *&v117 = &unk_100152E90;
                      *(&v117 + 1) = out;
                      p_isa = &v80;
                      _dnssd_svcb_extract_values(v87, v86, 32769, buf);
                      v45 = *(*&out[8] + 24);
                      _Block_object_dispose(out, 8);
                      v46 = *(v83 + 24);
                      endpoint = v80;
                      if (v46 == 3 && v45 && v80)
                      {
                        v46 = 4;
                        *(v83 + 24) = 4;
                      }

                      v74 = v45;
                      *out = 0;
                      *&out[8] = out;
                      v137 = 0x2000000000;
                      v138 = 0;
                      *buf = _NSConcreteStackBlock;
                      *&buf[8] = 0x40000000;
                      *&buf[16] = ___mdns_dns_service_get_discovered_alt_block_invoke;
                      *&v117 = &unk_10014F390;
                      v73 = v46;
                      LOBYTE(v119) = v46;
                      p_isa = &log->isa;
                      *(&v117 + 1) = out;
                      v47 = *(v11 + 144);
                      if (v47)
                      {
                        mdns_cfarray_enumerate(v47, buf);
                        v48 = *(*&out[8] + 24);
                        _Block_object_dispose(out, 8);
                        if (v48)
                        {
                          _mdns_dns_service_manager_add_pending_alt(v12, v11, v48);
                          if (!v43)
                          {
                            goto LABEL_144;
                          }

LABEL_143:
                          free(v43);
                          goto LABEL_144;
                        }
                      }

                      else
                      {
                        _Block_object_dispose(out, 8);
                      }

                      if ((v73 - 2) > 2)
                      {
                        goto LABEL_107;
                      }

                      v68 = v43;
                      v49 = nw_resolver_config_create();
                      nw_resolver_config_set_class();
                      nw_resolver_config_set_protocol();
                      nw_resolver_config_set_provider_name();
                      if (v43)
                      {
                        nw_resolver_config_set_provider_path();
                      }

                      obj = v49;
                      if (v74 != 0 && endpoint != 0)
                      {
                        nw_resolver_config_set_odoh_config();
                      }

                      memset(buf, 0, 17);
                      if (*(v11 + 104) || (v59 = *(v11 + 256)) != 0 && if_indextoname(v59, buf))
                      {
                        nw_resolver_config_set_interface_name();
                      }

                      memset(out, 0, sizeof(out));
                      uuid_generate(out);
                      nw_resolver_config_set_identifier();
                      if (v49)
                      {
                        if (nw_resolver_config_get_class() == 4)
                        {
                          *out = 0;
                          discovered_alt = _mdns_dns_service_create_discovered_alt(v11, v49, v70, 0, 0, out);
                          if (discovered_alt)
                          {
                            v51 = discovered_alt;
                            *out = _mdns_dns_service_manager_add_pending_alt(v12, v11, discovered_alt);
                            nw_release(obj);
                            os_release(v51);
                          }

                          else
                          {
                            if (_mdns_dns_service_log_s_once != -1)
                            {
                              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                            }

                            v65 = _mdns_dns_service_log_s_log;
                            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              *&buf[4] = *out;
                              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to create discovered oblivious DNS service -- error: %{mdns:err}ld", buf, 0xCu);
                            }

                            nw_release(obj);
                          }

                          if (v43)
                          {
                            goto LABEL_143;
                          }

LABEL_144:
                          if (v74)
                          {
                            free(v74);
                          }

                          v39 = __s;
LABEL_147:
                          v28 = v39;
                          goto LABEL_148;
                        }

                        if (_mdns_dns_service_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                        }

                        v54 = _mdns_dns_service_log_s_log;
                        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109891;
                          v55 = "";
                          if (v43)
                          {
                            v55 = v43;
                          }

                          *&buf[4] = v73;
                          *&buf[8] = 2081;
                          *&buf[10] = log;
                          *&buf[18] = 1024;
                          *&buf[20] = v70;
                          LOWORD(v117) = 2081;
                          *(&v117 + 2) = v55;
                          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Verifying discovered service -- type: %{mdns:dns_service_type}d, provider name: %{private}s, port: %d, path: %{private}s", buf, 0x22u);
                        }

                        aBlock[0] = _NSConcreteStackBlock;
                        aBlock[1] = 0x40000000;
                        aBlock[2] = ___mdns_dns_service_manager_register_discovered_service_block_invoke;
                        aBlock[3] = &__block_descriptor_tmp_223;
                        aBlock[4] = v11;
                        aBlock[5] = obj;
                        v93 = v70;
                        aBlock[6] = v12;
                        v106[0] = 0;
                        v106[1] = v106;
                        v106[2] = 0x2000000000;
                        v106[3] = 0;
                        v105[0] = 0;
                        v105[1] = v105;
                        v105[2] = 0x2000000000;
                        v105[3] = 0;
                        v103[0] = 0;
                        v103[1] = v103;
                        v103[2] = 0x2000000000;
                        v104 = 0;
                        endpointa = nw_endpoint_create_host_with_numeric_port();
                        *out = _NSConcreteStackBlock;
                        *&out[8] = 0x40000000;
                        v137 = ___mdns_dns_service_manager_probe_discovered_service_block_invoke;
                        v138 = &unk_10014F408;
                        v143 = v73;
                        v139 = v103;
                        v140 = v106;
                        v141 = v105;
                        v142 = log;
                        secure_tcp = nw_parameters_create_secure_tcp(out, _nw_parameters_configure_protocol_default_configuration);
                        *v133 = 0;
                        v134 = 0;
                        v135 = 0;
                        v57 = *(v11 + 104);
                        if (v57 || (v60 = *(v11 + 256)) != 0 && (v57 = if_indextoname(v60, v133)) != 0)
                        {
                          if (_mdns_dns_service_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                          }

                          loga = _mdns_dns_service_log_s_log;
                          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v128) = 136446210;
                            *(&v128 + 4) = v57;
                            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "Scoping discovered service to %{public}s", &v128, 0xCu);
                          }

                          v58 = nw_interface_create_with_name();
                          nw_parameters_require_interface(secure_tcp, v58);
                          if (v58)
                          {
                            nw_release(v58);
                          }
                        }

                        v99 = 0;
                        v100 = &v99;
                        v101 = 0x2000000000;
                        v102 = nw_connection_create(endpointa, secure_tcp);
                        if (endpointa)
                        {
                          nw_release(endpointa);
                        }

                        if (secure_tcp)
                        {
                          nw_release(secure_tcp);
                        }

                        v61 = v100[3];
                        if (_mdns_dns_service_queue_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                        }

                        nw_connection_set_queue(v61, _mdns_dns_service_queue_s_queue);
                        os_retain(v11);
                        dispatch_group_enter(group);
                        v97[0] = 0;
                        v97[1] = v97;
                        v97[2] = 0x2000000000;
                        v98 = 0;
                        v95[0] = 0;
                        v95[1] = v95;
                        v95[2] = 0x2000000000;
                        v96 = 0;
                        v94[0] = 0;
                        v94[1] = v94;
                        v94[2] = 0x2000000000;
                        v94[3] = 0;
                        *&v128 = 0;
                        *(&v128 + 1) = &v128;
                        v129 = 0x3002000000;
                        v130 = __Block_byref_object_copy__915;
                        v131 = __Block_byref_object_dispose__916;
                        v132 = _Block_copy(aBlock);
                        v62 = v100[3];
                        *buf = _NSConcreteStackBlock;
                        *&buf[8] = 0x40000000;
                        *&buf[16] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_231;
                        *&v117 = &unk_10014F458;
                        *(&v117 + 1) = &v99;
                        p_isa = v97;
                        v127 = v73;
                        v119 = v106;
                        v120 = v105;
                        v121 = v95;
                        v122 = v94;
                        v125 = v11;
                        v126 = group;
                        v123 = &v128;
                        v124 = v103;
                        nw_connection_set_event_handler();
                        nw_connection_start(v100[3]);
                        v63 = v100[3];
                        if (*(v11 + 208) || (v64 = nw_array_create(), (*(v11 + 208) = v64) != 0))
                        {
                          nw_array_append();
                        }

                        else
                        {
                          if (_mdns_dns_service_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                          }

                          v66 = _mdns_dns_service_log_s_log;
                          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                          {
                            v67 = *(v11 + 24);
                            *v114 = 134217984;
                            v115 = v67;
                            _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Cancelling service's DDR verification connection because of lack of resources -- service id: %llu", v114, 0xCu);
                          }

                          nw_connection_cancel(v100[3]);
                        }

                        v43 = v68;
                        _Block_object_dispose(&v128, 8);
                        _Block_object_dispose(v94, 8);
                        _Block_object_dispose(v95, 8);
                        _Block_object_dispose(v97, 8);
                        _Block_object_dispose(&v99, 8);
                        _Block_object_dispose(v103, 8);
                        _Block_object_dispose(v105, 8);
                        _Block_object_dispose(v106, 8);
                      }

                      else
                      {
LABEL_107:
                        if (_mdns_dns_service_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                        }

                        v52 = _mdns_dns_service_log_s_log;
                        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109891;
                          v53 = "";
                          if (v43)
                          {
                            v53 = v43;
                          }

                          *&buf[4] = v73;
                          *&buf[8] = 2081;
                          *&buf[10] = log;
                          *&buf[18] = 1024;
                          *&buf[20] = v70;
                          LOWORD(v117) = 2081;
                          *(&v117 + 2) = v53;
                          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to create discovered DNS config -- type: %{mdns:dns_service_type}d, provider name: %{private}s, port: %d, path: %{private}s", buf, 0x22u);
                          if (v43)
                          {
                            goto LABEL_143;
                          }

                          goto LABEL_144;
                        }
                      }

                      if (!v43)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_143;
                    }
                  }

                  else if ((dnssd_svcb_service_name_is_empty(v87, v86) & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }
              }

LABEL_33:
              if (++v17 == v15)
              {
                os_retain(v12);
                os_retain(v11);
                if (_mdns_dns_service_queue_s_once != -1)
                {
                  dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                }

                block = _NSConcreteStackBlock;
                v108 = 0x40000000;
                v109 = ___mdns_dns_service_manager_process_ddr_response_block_invoke_2;
                v110 = &__block_descriptor_tmp_221;
                v111 = v11;
                v112 = v12;
                v113 = group;
                dispatch_group_notify(group, _mdns_dns_service_queue_s_queue, &block);
                goto LABEL_162;
              }
            }
          }
        }

        goto LABEL_163;
      }
    }

LABEL_162:
    if (v13)
    {
LABEL_163:
      free(v13);
    }
  }

LABEL_164:
  os_release(*(a1 + 48));
  os_release(*(a1 + 32));
  os_release(*(a1 + 40));
}

uint64_t ___mdns_dns_service_manager_process_ddr_response_block_invoke(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "dot"))
  {
    v4 = 2;
    goto LABEL_7;
  }

  if (*__s1 == 104 && __s1[1] == 50 && !__s1[2])
  {
    v4 = 3;
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return 1;
}

BOOL ___mdns_dns_service_get_discovered_alt_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (*(a2 + 281) == *(a1 + 48))
    {
      provider_name = nw_resolver_config_get_provider_name();
      if (!strcasecmp(provider_name, *(a1 + 40)))
      {
        *(*(*(a1 + 32) + 8) + 24) = a2;
      }
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_manager_add_pending_alt(CFArrayRef *a1, uint64_t a2, const void *a3)
{
  Mutable = *(a2 + 152);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a2 + 152) = Mutable;
    if (!Mutable)
    {
      return 4294960567;
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___mdns_dns_service_array_contains_service_block_invoke;
  v9[3] = &__block_descriptor_tmp_145_939;
  v9[4] = a3;
  result = mdns_cfarray_enumerate(Mutable, v9);
  if (result)
  {
    v8 = *(a2 + 152);
    _mdns_dns_service_increment_use_count(a3);
    CFArrayAppendValue(v8, a3);
    _mdns_dns_service_manager_update_interface_properties_for_service(a1, a3);
    return 0;
  }

  return result;
}

const char *_mdns_dns_service_create_discovered_alt(uint64_t a1, void *a2, unsigned int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = nw_resolver_config_get_provider_name();
  if (a5)
  {
    if (!result || (result = strdup(result)) == 0)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    nw_resolver_config_set_provider_name();
  }

  else
  {
    v13 = 0;
  }

  v30 = 0;
  v14 = _mdns_dns_service_create_from_resolver_config(a2, 4, *(a1 + 280), &v30);
  v15 = v14;
  if (!v30)
  {
    *(v14 + 136) = a1;
    os_retain(a1);
    *(v15 + 276) = *(a1 + 276) & 0xE;
    *(v15 + 278) = a3;
    if (v13)
    {
      *(v15 + 176) = v13;
    }

    if (a4)
    {
      v16 = *(v15 + 80);
      if (v16)
      {
        CFRelease(v16);
        *(v15 + 80) = 0;
      }

      v17 = *(a1 + 80);
      if (v17)
      {
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v19 = Count;
          v20 = 0;
          v21 = __rev16(a3);
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v20);
            v23 = ValueAtIndex;
            v24 = *(ValueAtIndex + 25);
            if (v24 == 30)
            {
              break;
            }

            if (v24 == 2)
            {
              v25 = ValueAtIndex[7];
              v26 = _mdns_address_new();
              if (!v26)
              {
                goto LABEL_24;
              }

              v27 = v26;
              *(v26 + 24) = 528;
              *(v26 + 26) = v21;
              *(v26 + 28) = v25;
LABEL_21:
              _mdns_dns_service_append_address(v15, v27);
              os_release(v27);
            }

LABEL_22:
            if (v19 == ++v20)
            {
              goto LABEL_25;
            }
          }

          v28 = ValueAtIndex[12];
          v29 = _mdns_address_new();
          if (!v29)
          {
LABEL_24:
            _mdns_dns_service_append_address(v15, 0);
            goto LABEL_22;
          }

          v27 = v29;
          *(v29 + 24) = 7708;
          *(v29 + 26) = v21;
          *(v29 + 32) = *(v23 + 2);
          *(v29 + 48) = v28;
          goto LABEL_21;
        }
      }
    }

LABEL_25:
    v13 = 0;
  }

  if (a6)
  {
    *a6 = v30;
  }

  if (v13)
  {
    free(v13);
  }

  return v15;
}

void ___mdns_dns_service_manager_register_discovered_service_block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v6 = *(a1 + 32);
  if (*(v6 + 276))
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v10 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 24);
      *buf = 134217984;
      v19 = v11;
      v12 = "Service became defunct before discovered child service could be validated -- service id: %llu";
      v13 = v10;
      v14 = 12;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }

LABEL_20:
    nw_release(*(a1 + 40));
    if (!a4)
    {
      return;
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v15 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "Failed to validate discovered service, ignoring";
      v13 = v15;
      v14 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v17 = 0;
  v7 = _mdns_dns_service_create_discovered_alt(v6, *(a1 + 40), *(a1 + 56), a3, a4, &v17);
  if (!v7)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v16 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = v17;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create discovered DNS service -- error: %{mdns:err}ld", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v8 = v7;
  v17 = _mdns_dns_service_manager_add_pending_alt(*(a1 + 48), *(a1 + 32), v7);
  if (!v17)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v9 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Registered discovered service -- %@", buf, 0xCu);
    }
  }

  nw_release(*(a1 + 40));
  os_release(v8);
  if (a4)
  {
LABEL_21:
    free(a4);
  }
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sec_protocol_options_set_tls_server_name(v3, *(a1 + 56));
  sec_protocol_options_set_peer_authentication_required(v4, 1);
  v5 = *(a1 + 64);
  if (v5 == 2)
  {
    v6 = "dot";
LABEL_6:
    sec_protocol_options_add_tls_application_protocol(v4, v6);
    goto LABEL_7;
  }

  if ((v5 - 3) <= 1)
  {
    v6 = "h2";
    goto LABEL_6;
  }

LABEL_7:
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2;
  v8[3] = &unk_10014F3E0;
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v7;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  sec_protocol_options_set_verify_block(v4, v8, _mdns_dns_service_queue_s_queue);
  sec_release(v4);
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_231(uint64_t a1, int a2)
{
  if (*(*(a1 + 96) + 208))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (nw_array_contains_object())
    {
      if (a2 <= 3)
      {
        if (a2 != 1)
        {
          if (a2 == 3)
          {
            v5 = *(*(*(a1 + 32) + 8) + 24);
            if (_mdns_dns_service_queue_s_once != -1)
            {
              v16 = *(*(*(a1 + 32) + 8) + 24);
              dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
              v5 = v16;
            }

            v17[0] = _NSConcreteStackBlock;
            v17[1] = 0x40000000;
            v17[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2_232;
            v17[3] = &unk_10014F430;
            v21 = *(a1 + 96);
            v22 = *(a1 + 112);
            v6 = *(a1 + 48);
            v18 = *(a1 + 32);
            v19 = v6;
            v20 = *(a1 + 64);
            nw_connection_access_establishment_report(v5, _mdns_dns_service_queue_s_queue, v17);
          }

          return;
        }

        goto LABEL_21;
      }

      if (a2 == 4)
      {
LABEL_21:
        v14 = *(*(*(a1 + 32) + 8) + 24);
        v15 = *(*(a1 + 96) + 208);

        _mdns_dns_service_forget_ddr_connection(v15, v14);
        return;
      }
    }
  }

  if (a2 == 5)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(*(*(a1 + 64) + 8) + 24);
    v9 = *(*(*(a1 + 72) + 8) + 24);
    (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
    v10 = *(*(*(a1 + 80) + 8) + 40);
    if (v10)
    {
      _Block_release(v10);
      *(*(*(a1 + 80) + 8) + 40) = 0;
    }

    dispatch_group_leave(*(a1 + 104));
    v11 = *(*(*(a1 + 32) + 8) + 24);
    if (v11)
    {
      nw_release(v11);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    os_release(*(a1 + 96));
    v12 = *(*(*(a1 + 48) + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v13 = *(*(*(a1 + 56) + 8) + 24);
    if (v13)
    {
      CFRelease(v13);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    *(*(*(a1 + 88) + 8) + 24) = 1;
  }
}

void ___mdns_dns_service_manager_process_ddr_response_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 152))
  {
    Count = CFArrayGetCount(*(v2 + 152));
    v2 = *(a1 + 32);
    if (Count >= 1)
    {
      *(v2 + 287) = 1;
      if (*(*(a1 + 40) + 96))
      {
        dispatch_source_merge_data(*(*(a1 + 40) + 96), 1uLL);
        v2 = *(a1 + 32);
      }
    }
  }

  os_release(v2);
  os_release(*(a1 + 40));
  v4 = *(a1 + 48);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2_232(CFIndex a1, NSObject *a2)
{
  v3 = a1;
  if (*(*(a1 + 80) + 208))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    if (nw_array_contains_object())
    {
      v41 = *(v3 + 80);
      v6 = *(v41 + 136);
      if (!v6 || !*(v6 + 96))
      {
        v6 = *(v3 + 80);
      }

      v7 = *(*(v3 + 64) + 8);
      v8 = *(v3 + 88);
      v9 = *(*(*(v3 + 48) + 8) + 24);
      v38 = *(*(v3 + 72) + 8);
      v10 = *(v6 + 160);
      if (!v10 || ((v11 = *(*(*(v3 + 56) + 8) + 24), string_ptr = xpc_string_get_string_ptr(v10), v11) ? (v13 = string_ptr == 0) : (v13 = 1), v13))
      {
        v39 = 0;
      }

      else
      {
        v14 = CFStringCreateWithCString(kCFAllocatorDefault, string_ptr, 0x8000100u);
        v54.length = CFArrayGetCount(v11);
        v54.location = 0;
        v15 = CFArrayContainsValue(v11, v54, v14);
        v39 = v15 != 0;
        if (v15)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          MaximumSizeForEncoding = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v14;
            _os_log_impl(&_mh_execute_header, MaximumSizeForEncoding, OS_LOG_TYPE_INFO, "Discovered service verified, name %{public}@ in certificate", &buf, 0xCu);
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

      v16 = *(v41 + 80);
      if (v16)
      {
        Count = CFArrayGetCount(v16);
        if (Count >= 1)
        {
          v35 = v7;
          v36 = a2;
          v37 = v3;
          v3 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v41 + 80), v3);
            if (v9)
            {
              v18 = ValueAtIndex;
              v19 = CFArrayGetCount(v9);
              if (v19 >= 1)
              {
                break;
              }
            }

            MaximumSizeForEncoding = 0;
LABEL_64:
            if (++v3 >= Count || (MaximumSizeForEncoding & 1) != 0)
            {
              a2 = v36;
              v3 = v37;
              v7 = v35;
              goto LABEL_69;
            }
          }

          v20 = v19;
          v21 = 1;
          while (1)
          {
            v22 = CFArrayGetValueAtIndex(v9, v21 - 1);
            CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
            if (CStringPtr)
            {
              break;
            }

            Length = CFStringGetLength(v22);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            if (MaximumSizeForEncoding == -1 || (v26 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x1E250E3AuLL)) == 0)
            {
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

            v24 = v26;
            *&buf = 0;
            v55.location = 0;
            v55.length = Length;
            if (CFStringGetBytes(v22, v55, 0x8000100u, 0, 0, v26, MaximumSizeForEncoding, &buf) == Length)
            {
              v24[buf] = 0;
              goto LABEL_33;
            }

            free(v24);
            MaximumSizeForEncoding = 0;
LABEL_57:
            if (v21++ >= v20)
            {
              goto LABEL_64;
            }
          }

          v24 = strdup(CStringPtr);
          if (!v24)
          {
            goto LABEL_81;
          }

LABEL_33:
          host = nw_endpoint_create_host(v24, "0");
          if (!host)
          {
            MaximumSizeForEncoding = 0;
            goto LABEL_56;
          }

          v28 = host;
          if (nw_endpoint_get_type(host) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(v28);
            sa_family = address->sa_family;
            if (sa_family == *(v18 + 25) && address->sa_len == *(v18 + 24))
            {
              if (sa_family == 30)
              {
                if (*&address->sa_data[6] == v18[4] && *&address[1].sa_len == v18[5])
                {
                  goto LABEL_40;
                }
              }

              else if (sa_family == 2 && *&address->sa_data[2] == *(v18 + 7))
              {
LABEL_40:
                if (_mdns_dns_service_log_s_once != -1)
                {
                  dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                }

                MaximumSizeForEncoding = _mdns_dns_service_log_s_log;
                if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v28;
                  _os_log_impl(&_mh_execute_header, MaximumSizeForEncoding, OS_LOG_TYPE_INFO, "Discovered service verified, address %{public}@ in certificate", &buf, 0xCu);
                }

                if (!v39 && !*(v38 + 24))
                {
                  if ((v8 - 3) <= 1 && sa_family == 30)
                  {
                    asprintf((v38 + 24), "[%s]", v24);
                  }

                  else
                  {
                    v33 = strdup(v24);
                    if (!v33)
                    {
                      goto LABEL_81;
                    }

                    *(v38 + 24) = v33;
                  }
                }

                MaximumSizeForEncoding = 1;
                goto LABEL_55;
              }
            }
          }

          MaximumSizeForEncoding = 0;
LABEL_55:
          nw_release(v28);
LABEL_56:
          free(v24);
          if (MaximumSizeForEncoding)
          {
            goto LABEL_64;
          }

          goto LABEL_57;
        }
      }

      else
      {
        Count = 0;
      }

      LODWORD(MaximumSizeForEncoding) = 0;
LABEL_69:
      v42 = 0;
      v43 = &v42;
      v44 = 0x2000000000;
      v45 = 0;
      if (a2)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 0x40000000;
        v49 = ___mdns_dns_server_validate_discovered_service_connection_block_invoke;
        v50 = &unk_10014F4A8;
        v51 = &v42;
        v52 = Count;
        v53 = v41;
        nw_establishment_report_enumerate_resolution_reports(a2, &buf);
      }

      if ((v39 | MaximumSizeForEncoding))
      {
        v34 = 1;
      }

      else if (v43[3])
      {
        v34 = 1;
        *(v7 + 24) = 1;
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        MaximumSizeForEncoding = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
LABEL_82:
          *v46 = 138412290;
          v47 = v41;
          _os_log_error_impl(&_mh_execute_header, MaximumSizeForEncoding, OS_LOG_TYPE_ERROR, "Discovered service could not be verified for %@", v46, 0xCu);
        }

        v34 = 0;
      }

      _Block_object_dispose(&v42, 8);
      *(*(*(v3 + 40) + 8) + 24) = v34;
      _mdns_dns_service_forget_ddr_connection(*(*(v3 + 80) + 208), *(*(*(v3 + 32) + 8) + 24));
    }
  }
}

void _mdns_dns_service_forget_ddr_connection(uint64_t a1, NSObject *a2)
{
  if (a1 && nw_array_remove_object())
  {

    nw_connection_cancel(a2);
  }
}

BOOL ___mdns_dns_server_validate_discovered_service_connection_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  nw_resolution_report_enumerate_endpoints();
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL ___mdns_dns_server_validate_discovered_service_connection_block_invoke_2(void *a1, nw_endpoint_t endpoint)
{
  if (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(endpoint);
    LOBYTE(v5) = *(*(a1[4] + 8) + 24);
    if ((v5 & 1) == 0)
    {
      if (a1[5] < 1)
      {
LABEL_21:
        LOBYTE(v5) = 0;
      }

      else
      {
        v6 = address;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1[6] + 80), v7);
          sa_family = v6->sa_family;
          if (sa_family == *(ValueAtIndex + 25) && sa_family == 2 && v6->sa_len == *(ValueAtIndex + 24))
          {
            v11 = *&v6->sa_data[2];
            if (v11 == ValueAtIndex[7] && (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(bswap32(v11)), xmmword_10010D260), xmmword_10010D270))) & 1) != 0)
            {
              *(*(a1[4] + 8) + 24) = 1;
              if (_mdns_dns_service_log_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
              }

              v12 = _mdns_dns_service_log_s_log;
              if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v15 = endpoint;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Discovered service verified, private address %{public}@ used", buf, 0xCu);
              }
            }
          }

          v5 = *(*(a1[4] + 8) + 24);
          if (v5 == 1)
          {
            break;
          }

          if (++v7 >= a1[5])
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = *(*(a1[4] + 8) + 24);
  }

  return (v5 & 1) == 0;
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2(uint64_t a1, int a2, sec_trust_t trust, void (**a4)(void, void))
{
  v6 = sec_trust_copy_ref(trust);
  v7 = _Block_copy(a4);
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_3;
  v11[3] = &unk_10014F3B8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v11[4] = v7;
  v8 = SecTrustEvaluateAsyncWithError(v6, _mdns_dns_service_queue_s_queue, v11);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v9 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      *buf = 136315394;
      v15 = v10;
      v16 = 2048;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to start asynchronous trust evaluation -- provider name: %s, error: %{mdns:err}ld", buf, 0x16u);
    }

    a4[2](a4, 0);
    if (v7)
    {
      _Block_release(v7);
    }
  }
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_3(void *a1, SecTrustRef trust, int a3, uint64_t a4)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if (a3)
    {
      v5 = SecTrustCopyCertificateChain(trust);
      if (v5)
      {
        v6 = v5;
        if (CFArrayGetCount(v5) >= 1)
        {
          CFArrayGetValueAtIndex(v6, 0);
          v7 = *(*(a1[6] + 8) + 24);
          if (v7)
          {
            CFRelease(v7);
            *(*(a1[6] + 8) + 24) = 0;
          }

          v8 = *(*(a1[7] + 8) + 24);
          if (v8)
          {
            CFRelease(v8);
            *(*(a1[7] + 8) + 24) = 0;
          }

          *(*(a1[6] + 8) + 24) = SecCertificateCopyIPAddresses();
          *(*(a1[7] + 8) + 24) = SecCertificateCopyDNSNames();
        }

        CFRelease(v6);
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v10 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = a4;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Asynchronous trust evaluation failed: %@", &v12, 0xCu);
      }
    }
  }

  (*(a1[4] + 16))();
  v11 = a1[4];
  if (v11)
  {
    _Block_release(v11);
  }
}

uint64_t ___mdns_dns_service_manager_get_service_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (!v4 || ((*(v4 + 16))(v4, a2) & 1) == 0)
  {
    if (_mdns_dns_service_scope_id_match(a2, *(a1 + 64)))
    {
      v9 = 0;
      v5 = _mdns_dns_service_handles_domain_name(a2, *(a1 + 72), &v9);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        if (v5 > v6)
        {
          v7 = v9;
LABEL_7:
          *(*(*(a1 + 56) + 8) + 24) = a2;
          *(*(*(a1 + 40) + 8) + 24) = v5;
          *(*(*(a1 + 48) + 8) + 24) = v7;
          return 1;
        }

        if (v5 == v6)
        {
          v7 = v9;
          if (v9 < *(*(*(a1 + 48) + 8) + 24))
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t _mdns_dns_service_get_preferred_encrypted_alt(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v3 = *(a1 + 144);
  if (v3 && *(a1 + 281) - 2 >= 4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___mdns_dns_service_get_preferred_encrypted_alt_block_invoke;
    v6[3] = &unk_10014EEB0;
    v7 = a2;
    v6[4] = v8;
    v6[5] = &v10;
    mdns_cfarray_enumerate(v3, v6);
    v4 = v11[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

BOOL ___mdns_dns_service_get_preferred_encrypted_alt_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 276) & 0x801) != 0)
  {
    return 1;
  }

  if (*(a2 + 96))
  {
    v5 = nw_resolver_config_get_class() == 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 48) != v5)
  {
    return 1;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if ((v6 - 3) >= 2)
  {
    v7 = *(a2 + 281);
    if ((v7 - 3) < 2 || v7 == 2 && (v8 = v6 == 2, v6 = 2, !v8))
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
      *(*(*(a1 + 32) + 8) + 24) = v7;
      v6 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  return (v6 - 5) < 0xFFFFFFFE;
}

uint64_t _mdns_dns_service_handles_domain_name(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  v5 = (a1 + 88);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
    if (*a2)
    {
      v7 = 0;
      v8 = a2;
      while (v6 <= 0x3F)
      {
        v8 += v6 + 1;
        if (v8 - a2 > 255)
        {
          break;
        }

        ++v7;
        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
    v9 = v5[1];
    v10 = *(v9 + 48);
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v12 < 0 == v11)
    {
      if (!v10)
      {
        break;
      }

      v13 = a2;
      if (v12 >= 1)
      {
        v13 = a2;
        do
        {
          if (!*v13)
          {
            break;
          }

          v13 += *v13 + 1;
          --v12;
        }

        while (v12);
      }

      if (DomainNameEqual(v13, *(v9 + 24)))
      {
        break;
      }
    }
  }

  if (a3)
  {
    *a3 = *(v5 + 4);
  }

  return v10;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_custom_push_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v9 = 0;
    v10 = 0x100000000;
    v8 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v8, 0, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_unscoped_native_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_unscoped_native_service_block_invoke;
  block[3] = &unk_10014E618;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_unscoped_native_service_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = a1[6];
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v7, 0, 0);
    result = _mdns_dns_service_manager_prepare_service(a1[5], service);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_native_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v9 = 0;
    v10 = 0x100000000;
    v8 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v8, 0, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_unscoped_system_service_with_options(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_unscoped_system_service_with_options_block_invoke;
  v8[3] = &unk_10014E668;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_unscoped_system_service_with_options_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v8, v5, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_interface_scoped_system_service_with_options(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = __mdns_dns_service_manager_get_interface_scoped_system_service_with_options_block_invoke;
  v10[3] = &unk_10014E690;
  v10[4] = &v13;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;
  v12 = a4;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v10);
  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_system_service_with_options_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 60);
    v10 = 0;
    v11 = 0x100000000;
    v9 = v6;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v9, v5, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_service_scoped_system_service(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_service_scoped_system_service_block_invoke;
  v8[3] = &unk_10014E6B8;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_service_scoped_system_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v9 = 0;
    v10 = 0x200000000;
    v8 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v8, 0, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_custom_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_custom_service_block_invoke;
  block[3] = &unk_10014E6E0;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_custom_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v2 + 56), *(a1 + 48));
    if (service_by_id)
    {
      service_by_id = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), service_by_id, 0);
    }

    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service_by_id);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFArray *_mdns_dns_service_manager_get_usable_service_instance(CFArrayRef *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 256);
  if (a3)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v5 && (v7 & 1) != 0)
  {
    return 0;
  }

  if ((v7 & 1) == 0 && (*(a2 + 276) & 1) == 0)
  {
    return a2;
  }

  if (v5)
  {
    v9 = *(a2 + 256);
  }

  else
  {
    v9 = a3;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = ___mdns_dns_service_get_variant_for_interface_block_invoke;
  v17[3] = &unk_10014EF68;
  v18 = v9;
  v17[4] = &v19;
  v10 = *(a2 + 128);
  if (v10)
  {
    mdns_cfarray_enumerate(v10, v17);
    Mutable = v20[3];
    _Block_object_dispose(&v19, 8);
    if (Mutable)
    {
      return Mutable;
    }
  }

  else
  {
    _Block_object_dispose(&v19, 8);
  }

  LODWORD(v17[0]) = 0;
  v11 = _mdns_dns_service_create(*(a2 + 281), *(a2 + 282), *(a2 + 280), v17);
  v12 = v11;
  if (!LODWORD(v17[0]))
  {
    *(v11 + 136) = a2;
    os_retain(a2);
    *(v12 + 256) = v9;
    *(v12 + 276) = *(a2 + 276) & 6;
    v13 = *(a2 + 80);
    *(v12 + 80) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v14 = *(a2 + 96);
    *(v12 + 96) = v14;
    if (v14)
    {
      nw_retain(v14);
    }

    v15 = *(v12 + 256);
    if (v15)
    {
      *(v12 + 104) = mdns_system_interface_index_to_name(v15);
    }

    goto LABEL_26;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_26:
  Mutable = *(a2 + 128);
  if (Mutable || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (*(a2 + 128) = Mutable) != 0))
  {
    _mdns_dns_service_increment_use_count(v12);
    CFArrayAppendValue(Mutable, v12);
    _mdns_dns_service_manager_update_interface_properties_for_service(a1, v12);
    Mutable = v12;
  }

  os_release(v12);
  return Mutable;
}

BOOL ___mdns_dns_service_get_variant_for_interface_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_mdns_alternative_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v9 = 0;
    v10 = 0x100000000;
    v8 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v8, 0, &__block_literal_global_31);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __mdns_dns_service_manager_get_unscoped_mdns_alternative_service_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = a1[6];
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v7, 0, &__block_literal_global_35);
    result = _mdns_dns_service_manager_prepare_service(a1[5], service);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_uuid_scoped_service(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_uuid_scoped_service_block_invoke;
  v8[3] = &unk_10014E7D8;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_uuid_scoped_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
    goto LABEL_7;
  }

  v3 = *(a1 + 48);
  service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 48), v3);
  if (service_by_uuid)
  {
    usable_service_instance = service_by_uuid;
LABEL_5:
    usable_service_instance = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), usable_service_instance, *(a1 + 56));
    goto LABEL_6;
  }

  usable_service_instance = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 40), v3);
  if (usable_service_instance)
  {
    goto LABEL_5;
  }

LABEL_6:
  result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), usable_service_instance);
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_discovered_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_discovered_service_block_invoke;
  block[3] = &unk_10014E800;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_discovered_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(a1 + 48);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v11 = -1;
    v4 = *(v2 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___mdns_dns_service_manager_get_discovered_service_block_invoke;
    v9[3] = &unk_10014ED38;
    v9[5] = &v12;
    v9[6] = v3;
    v9[4] = v10;
    mdns_cfarray_enumerate(v4, v9);
    if (v13[3])
    {
      v5 = mach_continuous_approximate_time();
      v6 = v13[3];
      *(v6 + 32) = v5;
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v12, 8);
    if (v6)
    {
      usable_service_instance = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), v6, 0);
    }

    else
    {
      usable_service_instance = 0;
    }

    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), usable_service_instance);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___mdns_dns_service_manager_get_discovered_service_block_invoke(uint64_t a1, void *a2)
{
  v4 = _mdns_dns_service_handles_domain_name(a2, *(a1 + 48), 0);
  if (a2[12] && v4 > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  v5 = a2[5];
  if (v5 && v5 < mach_continuous_time())
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v6 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v7 = a2[6];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "DoH resolver for %@ has passed expiration", &v10, 0xCu);
    }

    a2[5] = 0;
    while (1)
    {
      v8 = a2[11];
      if (!v8)
      {
        break;
      }

      a2[11] = *v8;
      _domain_item_free(v8);
    }

    _mdns_dns_service_manager_fetch_doh_pvd(a2);
  }

  return 1;
}

uint64_t mdns_dns_service_manager_get_discovered_oblivious_service(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 96))
  {
    return 0;
  }

  if (nw_resolver_config_get_class() != 4)
  {
    return 0;
  }

  v6 = *(a2 + 96);
  proxy_agent = nw_resolver_config_get_proxy_agent();
  if (!proxy_agent)
  {
    return 0;
  }

  v8 = proxy_agent;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = __mdns_dns_service_manager_get_discovered_oblivious_service_block_invoke;
  v11[3] = &unk_10014E828;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = v8;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v11);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __mdns_dns_service_manager_get_discovered_oblivious_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(a1 + 48);
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  result = _mdns_dns_service_manager_get_service(v3, v4, v10, 3, 0);
  if (!result)
  {
    goto LABEL_7;
  }

  v6 = result;
  result = *(result + 96);
  if (!result)
  {
    goto LABEL_7;
  }

  if (nw_resolver_config_get_class() != 4)
  {
LABEL_8:
    result = 0;
    goto LABEL_7;
  }

  result = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), v6, 0);
  if (result)
  {
    v7 = result;
    v8 = *(result + 96);
    v9 = *(a1 + 56);
    nw_resolver_config_set_proxy_agent();
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), v7);
  }

LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __mdns_dns_service_manager_get_discovered_push_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    discovered_push_service = _mdns_dns_service_manager_get_discovered_push_service(*(v2 + 64), *(a1 + 48), *(a1 + 56));
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), discovered_push_service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __mdns_dns_service_manager_apply_pending_updates_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 131) & 1) == 0)
  {
    v28 = _NSConcreteStackBlock;
    v29 = 0x40000000;
    v30 = ___mdns_dns_service_manager_remove_unused_services_block_invoke;
    v31 = &__block_descriptor_tmp_104;
    v32 = v2;
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &v28;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v2, &v33);
    v3 = *(a1 + 32);
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &__block_literal_global_139;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v3, &v33);
    v4 = *(a1 + 32);
    v19 = _NSConcreteStackBlock;
    v20 = 0x40000000;
    v21 = ___mdns_dns_service_manager_handle_pending_alts_block_invoke;
    v22 = &__block_descriptor_tmp_144;
    v23 = v4;
    v28 = _NSConcreteStackBlock;
    v29 = 0x40000000;
    v30 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v31 = &unk_10014F518;
    v32 = &v19;
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &v28;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v4, &v33);
    v5 = *(a1 + 32);
    v28 = _NSConcreteStackBlock;
    v29 = 0x40000000;
    v30 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v31 = &unk_10014F518;
    v32 = &__block_literal_global_107;
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &v28;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v5, &v33);
    _mdns_dns_service_manager_remove_unneeded_interface_monitors(*(a1 + 32));
    v6 = *(a1 + 32);
    v19 = _NSConcreteStackBlock;
    v20 = 0x40000000;
    v21 = ___mdns_dns_service_manager_update_interface_properties_block_invoke;
    v22 = &__block_descriptor_tmp_124;
    v23 = v6;
    v28 = _NSConcreteStackBlock;
    v29 = 0x40000000;
    v30 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v31 = &unk_10014F518;
    v32 = &v19;
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &v28;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v6, &v33);
    v7 = *(a1 + 32);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 0x40000000;
    v21 = ___mdns_dns_service_manager_update_policies_block_invoke;
    v22 = &unk_10014EF00;
    v23 = &v24;
    v28 = _NSConcreteStackBlock;
    v29 = 0x40000000;
    v30 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v31 = &unk_10014F518;
    v32 = &v19;
    v33 = _NSConcreteStackBlock;
    v34 = 0x40000000;
    v35 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v36 = &unk_10014F4F0;
    v37 = &v28;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v7, &v33);
    v8 = *(v7 + 112);
    if (*(v25 + 24) == 1)
    {
      if (!v8)
      {
        v9 = objc_autoreleasePoolPush();
        if (objc_opt_class())
        {
          v10 = [[NEPolicySession alloc] initFromPrivilegedProcess];
          [v10 setPriority:500];
          if (__isPlatformVersionAtLeast(2, 19, 0, 0))
          {
            v11 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
            v12 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
            v13 = [NEPolicyResult removeNetworkAgentDomain:v11 agentType:v12];
            v14 = [NEPolicy alloc];
            v15 = +[NEPolicyCondition allInterfaces];
            v33 = v15;
            v16 = +[NEPolicyCondition flowRemoteAddressEmpty];
            v34 = v16;
            v17 = [NSArray arrayWithObjects:&v33 count:2];
            v18 = [v14 initWithOrder:0 result:v13 conditions:v17];
            [v10 addPolicy:v18];
          }

          [v10 apply];
        }

        else
        {
          v10 = 0;
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_11;
      }
    }

    else if (v8)
    {
      mdns_system_remove_network_policy(v8);
      v10 = 0;
LABEL_11:
      *(v7 + 112) = v10;
    }

    _Block_object_dispose(&v24, 8);
  }
}

uint64_t ___mdns_dns_service_manager_remove_unused_services_block_invoke(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count - 1 >= 0)
  {
    v5 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, --v5);
      if (!ValueAtIndex[66])
      {
        _mdns_dns_service_manager_terminate_service(*(a1 + 32), ValueAtIndex);
        CFArrayRemoveValueAtIndex(theArray, v5);
      }
    }

    while (v5 > 0);
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_handle_pending_alts_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 287) == 1)
  {
    v11[8] = v2;
    v11[9] = v3;
    *(a2 + 287) = 0;
    v6 = *(a2 + 152);
    if (v6)
    {
      if (CFArrayGetCount(v6) >= 1)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = ___mdns_dns_service_manager_handle_pending_alts_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_143;
        v7 = *(a1 + 32);
        v11[4] = a2;
        v11[5] = v7;
        v8 = *(a2 + 144);
        if (v8)
        {
          mdns_cfarray_enumerate(v8, v11);
          v9 = *(a2 + 144);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        *(a2 + 144) = *(a2 + 152);
        *(a2 + 152) = 0;
      }
    }
  }

  return 1;
}

BOOL ___mdns_dns_service_manager_update_policies_block_invoke(uint64_t a1, uint64_t a2)
{
  preferred_encrypted_alt = _mdns_dns_service_get_preferred_encrypted_alt(a2, 1);
  if (preferred_encrypted_alt)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return preferred_encrypted_alt == 0;
}

BOOL ___mdns_dns_service_manager_update_service_usability_block_invoke(id a1, const mdns_dns_service_s *a2)
{
  var32 = a2->var32;
  if (a2->var37)
  {
    if ((a2->var32 & 0x800) == 0)
    {
      v3 = var32 | 0x800;
LABEL_6:
      a2->var32 = v3;
    }
  }

  else if ((a2->var32 & 0x800) != 0)
  {
    v3 = var32 & 0xF7FF;
    goto LABEL_6;
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_handle_pending_alts_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 152);
  *&v8 = _NSConcreteStackBlock;
  *(&v8 + 1) = 0x40000000;
  v9 = ___mdns_dns_service_array_contains_service_block_invoke;
  v10 = &__block_descriptor_tmp_145_939;
  v11 = a2;
  if (mdns_cfarray_enumerate(v4, &v8))
  {
    _mdns_dns_service_manager_terminate_service(*(a1 + 40), a2);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v5 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v6 = *(a2 + 24);
      LODWORD(v8) = 134217984;
      *(&v8 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deregistered discovered service -- id: %llu", &v8, 0xCu);
    }
  }

  return 1;
}

BOOL ___mdns_dns_service_manager_handle_network_changes_block_invoke_2(id a1, const mdns_dns_service_s *a2)
{
  if (a2->var40)
  {
    a2->var40 = 0;
    _mdns_dns_service_make_defunct(a2);
  }

  var11 = a2->var11;
  if (var11)
  {
    Count = CFArrayGetCount(var11);
    if (Count - 1 >= 0)
    {
      v5 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2->var11, --v5);
        if (ValueAtIndex[286] == 1)
        {
          ValueAtIndex[286] = 0;
          _mdns_dns_service_make_defunct(ValueAtIndex);
          CFArrayRemoveValueAtIndex(a2->var11, v5);
        }
      }

      while (v5 > 0);
    }
  }

  return 1;
}

void mdns_dns_service_manager_apply_pending_connection_problem_updates(uint64_t a1)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_apply_pending_connection_problem_updates_block_invoke;
  block[3] = &__block_descriptor_tmp_42;
  block[4] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
}

uint64_t __mdns_dns_service_manager_apply_pending_connection_problem_updates_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 131) & 1) == 0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 0x40000000;
    v2[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v2[3] = &unk_10014F518;
    v2[4] = &__block_literal_global_107;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v3[3] = &unk_10014F4F0;
    v3[4] = v2;
    return _mdns_dns_service_manager_enumerate_all_service_array_pointers(result, v3);
  }

  return result;
}

void mdns_dns_service_manager_enumerate(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_enumerate_block_invoke;
  block[3] = &unk_10014E8B8;
  block[5] = v5;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  _Block_object_dispose(v5, 8);
}

uint64_t __mdns_dns_service_manager_enumerate_block_invoke(void *a1)
{
  result = a1[6];
  if (*(result + 131) == 1)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v3 = a1[4];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v4[3] = &unk_10014F518;
    v4[4] = v3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v5[3] = &unk_10014F4F0;
    v5[4] = v4;
    result = _mdns_dns_service_manager_enumerate_all_service_array_pointers(result, v5);
    *(*(a1[5] + 8) + 24) = result;
  }

  return result;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((*(result + 131) & 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = __mdns_dns_service_manager_get_count_block_invoke_2;
    v3[3] = &unk_10014E908;
    v3[4] = *(a1 + 32);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v4[3] = &unk_10014F4F0;
    v4[4] = v3;
    return _mdns_dns_service_manager_enumerate_all_service_array_pointers(result, v4);
  }

  return result;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke_2(uint64_t a1, const __CFArray *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = __mdns_dns_service_manager_get_count_block_invoke_3;
  v3[3] = &unk_10014E8E0;
  v3[4] = *(a1 + 32);
  mdns_cfarray_enumerate(a2, v3);
  return 1;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke_3(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = *(a2 + 128);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) += Count;
    }
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
    if (v7 >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) += v7;
    }
  }

  return 1;
}

BOOL __mdns_dns_service_manager_handle_sleep_block_invoke(id a1, const mdns_dns_service_s *a2)
{
  if (a2->var35 - 2 <= 2)
  {
    var3 = a2->var3;
    if (var3)
    {
      mdns_resolver_invalidate(var3);
      os_release(a2->var3);
      a2->var3 = 0;
      a2->var39 = 1;
    }
  }

  return 1;
}

uint64_t __mdns_dns_service_manager_handle_wake_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 285) == 1)
  {
    _mdns_dns_service_manager_prepare_service(*(a1 + 32), a2);
    *(a2 + 285) = 0;
  }

  return 1;
}

void __dnssd_server_init_block_invoke(id a1)
{
  if (_dx_server_queue_once != -1)
  {
    dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
  }

  dnssd_server_init_s_listener = xpc_connection_create_mach_service("com.apple.dnssd.service", _dx_server_queue_queue, 1uLL);
  xpc_connection_set_event_handler(dnssd_server_init_s_listener, &__block_literal_global_5);
  xpc_connection_activate(dnssd_server_init_s_listener);
  if (_dx_server_queue_once != -1)
  {
    dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(0x1B7740u, 0x1A3185C5000uLL, 5u, _dx_server_queue_queue);
  dnssd_server_init_s_powerlog_progress_timer = monotonic_timer;
  if (monotonic_timer)
  {
    dispatch_source_set_event_handler(monotonic_timer, &__block_literal_global_8);
    v2 = dnssd_server_init_s_powerlog_progress_timer;

    dispatch_activate(v2);
  }

  else
  {
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v3 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to create periodic powerlog report timer", v4, 2u);
    }
  }
}

void __dnssd_server_init_block_invoke_3(id a1)
{
  if (_mdns_server_log_s_once != -1)
  {
    dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
  }

  v1 = _mdns_server_log_s_log;
  if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "periodic powerlog report timer fired", buf, 2u);
  }

  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    if (_mdns_powerlog_log_s_once != -1)
    {
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
    }

    v11 = _mdns_powerlog_log_s_log;
    if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to create top-level client summary dictionary", buf, 2u);
    }
  }

  monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
  v20 = g_client_info_list;
  v52 = g_client_info_list;
  if (g_client_info_list)
  {
    v21 = monotonic_time_ns;
    v22 = &g_client_info_list;
    do
    {
      if (*(v20 + 24))
      {
        v23 = *(v20 + 8);
        v24 = v21 - *v20;
        v25 = __CFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          v26 = -1;
        }

        *(v20 + 8) = v26;
      }

      *v20 = v21;
      if (*(v20 + 56))
      {
        v27 = *(v20 + 40);
        v28 = v21 - *(v20 + 32);
        v25 = __CFADD__(v27, v28);
        v29 = v27 + v28;
        if (v25)
        {
          v29 = -1;
        }

        *(v20 + 40) = v29;
      }

      *(v20 + 32) = v21;
      if (!Mutable)
      {
        goto LABEL_51;
      }

      v30 = *(v20 + 72);
      if (v30)
      {
        v31 = CFStringCreateWithFormat(0, 0, @"%s/%s", v20 + 80, v30);
        if (v31)
        {
          v32 = v31;
          v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v33)
          {
            goto LABEL_32;
          }

          if (_mdns_powerlog_log_s_once != -1)
          {
            dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
          }

          v34 = _mdns_powerlog_log_s_log;
          if (!os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_49;
          }

          *buf = 136446467;
          v54 = (v20 + 80);
          v55 = 2081;
          v56 = v30;
          v35 = v34;
          v36 = "Failed to create powerlog client dictionary -- client name: %{public}s, service type: %{private}s";
          v37 = 22;
          goto LABEL_57;
        }

        if (_mdns_powerlog_log_s_once != -1)
        {
          dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
        }

        v42 = _mdns_powerlog_log_s_log;
        if (!os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_51;
        }

        *buf = 136446467;
        v54 = (v20 + 80);
        v55 = 2081;
        v56 = v30;
        v43 = v42;
        v44 = "Failed to create powerlog client name/service type string for client dictionary -- client name: %{public}s, service type: %{private}s";
        v45 = 22;
      }

      else
      {
        v38 = CFStringCreateWithCString(0, (v20 + 80), 0x8000100u);
        if (v38)
        {
          v32 = v38;
          v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v33)
          {
LABEL_32:
            v39 = v33;
            _mdns_powerlog_set_client_stats(v33, v20, @"durationInfra", @"startCountInfra", @"stopCountInfra", @"carryoverCountInfra");
            _mdns_powerlog_set_client_stats(v39, v20 + 32, @"durationAWDL", @"startCountAWDL", @"stopCountAWDL", @"carryoverCountAWDL");
            CFDictionarySetValue(Mutable, v32, v39);
            if (_mdns_powerlog_log_s_once != -1)
            {
              dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
            }

            v40 = _mdns_powerlog_log_s_log;
            if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v54 = v32;
              v55 = 2112;
              v56 = v39;
              _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Will submit client dictionary -- client name: %@, dictionary: %@", buf, 0x16u);
            }

            CFRelease(v32);
            v41 = v39;
            goto LABEL_50;
          }

          if (_mdns_powerlog_log_s_once != -1)
          {
            dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
          }

          v47 = _mdns_powerlog_log_s_log;
          if (!os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
          {
LABEL_49:
            v41 = v32;
LABEL_50:
            CFRelease(v41);
            goto LABEL_51;
          }

          *buf = 136446210;
          v54 = (v20 + 80);
          v35 = v47;
          v36 = "Failed to create powerlog client dictionary -- client name: %{public}s";
          v37 = 12;
LABEL_57:
          _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, v36, buf, v37);
          goto LABEL_49;
        }

        if (_mdns_powerlog_log_s_once != -1)
        {
          dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
        }

        v46 = _mdns_powerlog_log_s_log;
        if (!os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_51;
        }

        *buf = 136446210;
        v54 = (v20 + 80);
        v43 = v46;
        v44 = "Failed to create powerlog client name string for client dictionary -- client name: %{public}s";
        v45 = 12;
      }

      _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, v44, buf, v45);
LABEL_51:
      v48 = *(v20 + 24);
      v49 = *(v20 + 56);
      if (v48 | v49)
      {
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        *(v20 + 28) = v48;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 60) = v49;
        v22 = v52 + 8;
      }

      else
      {
        *v22 = *(v20 + 64);
        v52[8] = 0;
        _mdns_powerlog_client_info_forget(&v52);
      }

      v20 = *v22;
      v52 = v20;
    }

    while (v20);
  }

  if (Mutable)
  {
    if (_mdns_powerlog_log_s_once != -1)
    {
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
    }

    v50 = _mdns_powerlog_log_s_log;
    if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      Count = CFDictionaryGetCount(Mutable);
      *buf = 134218242;
      v54 = Count;
      v55 = 2112;
      v56 = Mutable;
      _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Submitting client summary dictionary with %lld entries: %@", buf, 0x16u);
    }

    if (&_PLLogRegisteredEvent)
    {
      PLLogRegisteredEvent();
    }

    CFRelease(Mutable);
  }

  KQueueUnlock("dnssd_server: submitting client summary to powerlog", v13, v14, v15, v16, v17, v18, v19);
}

void __dnssd_server_init_block_invoke_2(id a1, void *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_connection)
  {
    return;
  }

  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0xDC17C132uLL);
  if (!v4)
  {
    __break(1u);
LABEL_15:
    dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    goto LABEL_11;
  }

  v5 = v4;
  *v4 = &_dx_session_kind;
  v4[2] = 1;
  _dx_recursive_init(v4, &_dx_session_kind);
  *(v5 + 32) = a2;
  xpc_retain(a2);
  memset(handler, 0, sizeof(handler));
  v6 = *(v5 + 32);
  xpc_connection_get_audit_token();
  v7 = mdns_audit_token_create(handler);
  *(v5 + 64) = v7;
  if (v7)
  {
    *(v5 + 76) = xpc_connection_get_pid(*(v5 + 32));
    *(v5 + 72) = xpc_connection_get_euid(*(v5 + 32));
    mdns_system_pid_to_name(*(v5 + 76), v5 + 84);
    atomic_fetch_add((v5 + 8), 1u);
    v8 = *(v5 + 32);
    if (_dx_server_queue_once != -1)
    {
      dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
    }

    xpc_connection_set_target_queue(v8, _dx_server_queue_queue);
    v9 = *(v5 + 32);
    *&handler[0] = _NSConcreteStackBlock;
    *(&handler[0] + 1) = 0x40000000;
    *&handler[1] = ___dx_session_activate_block_invoke;
    *(&handler[1] + 1) = &__block_descriptor_tmp_34;
    v16 = v5;
    xpc_connection_set_event_handler(v9, handler);
    xpc_connection_activate(*(v5 + 32));
    _dx_session_reset_idle_timer(v5);
    v10 = &g_session_list;
    do
    {
      v11 = v10;
      v12 = *v10;
      v10 = (*v10 + 16);
    }

    while (v12);
    *(v5 + 16) = 0;
    *v11 = v5;
    atomic_fetch_add((v5 + 8), 1u);
    _dx_release(v5);
    return;
  }

  _dx_release(v5);
  pid = xpc_connection_get_pid(a2);
  v14[0] = 0;
  v14[1] = 0;
  mdns_system_pid_to_name(pid, v14);
  if (_mdns_server_log_s_once != -1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = _mdns_server_log_s_log;
  if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_FAULT))
  {
    LODWORD(handler[0]) = 67109378;
    DWORD1(handler[0]) = pid;
    WORD4(handler[0]) = 2082;
    *(handler + 10) = v14;
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to create session for connection -- client pid: %d (%{public}s)", handler, 0x12u);
  }

  xpc_connection_cancel(a2);
}

uint64_t _dx_recursive_init(uint64_t result, void *a2)
{
  v3 = result;
  if (*a2)
  {
    result = _dx_recursive_init(result);
  }

  v4 = a2[1];
  if (v4)
  {

    return v4(v3);
  }

  return result;
}

void ___dx_session_activate_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v6 = *(a1 + 32);
    if (!*(v6 + 32))
    {
      return;
    }

    v7 = -65540;
    string = xpc_dictionary_get_string(object, "command");
    if (!string)
    {
      goto LABEL_157;
    }

    v9 = string;
    if (strcmp(string, "getaddrinfo"))
    {
      if (!strcmp(v9, "stop"))
      {
        length[0] = 0;
        value = xpc_dictionary_get_value(object, "id");
        uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFFFFFFFFFLL, length);
        if (length[0] == 1)
        {
          v12 = (v6 + 24);
          v13 = *(v6 + 24);
          v7 = -65541;
          if (v13)
          {
            if (*(v13 + 40) == uint64_limited)
            {
LABEL_15:
              *v12 = *(v13 + 16);
              *(v13 + 16) = 0;
              v15 = v13;
              while (1)
              {
                v15 = *v15;
                if (!v15)
                {
                  break;
                }

                v16 = v15[2];
                if (v16)
                {
                  v16(v13);
                  break;
                }
              }

              _dx_release(v13);
              v7 = 0;
            }

            else
            {
              while (1)
              {
                v14 = v13;
                v13 = *(v13 + 16);
                if (!v13)
                {
                  break;
                }

                if (*(v13 + 40) == uint64_limited)
                {
                  v12 = (v14 + 16);
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }

      goto LABEL_157;
    }

    v148 = 0;
    v22 = xpc_dictionary_get_value(object, "id");
    v23 = _mdns_xpc_object_get_uint64_limited(v22, 0xFFFFFFFFFFFFFFFFLL, &v148);
    if (!v148 || (v24 = v23, (dictionary = xpc_dictionary_get_dictionary(object, "params")) == 0))
    {
      if (_mdns_server_log_s_once != -1)
      {
        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
      }

      v139 = _mdns_server_log_s_log;
      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v146 = *(v6 + 76);
        *length = 134218498;
        *&length[4] = -65540;
        *&length[12] = 2048;
        *&length[14] = v146;
        *&length[22] = 2082;
        *&length[24] = v6 + 84;
        _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "XPC session error -- error: %{mdns:err}ld, client pid: %lld (%{public}s)", length, 0x20u);
      }

      v7 = -65540;
      goto LABEL_157;
    }

    v26 = dictionary;
    v27 = malloc_type_calloc(1uLL, 0x100uLL, 0x896FC593uLL);
    if (!v27)
    {
      goto LABEL_177;
    }

    v9 = v27;
    *v27 = &_dx_gai_request_kind;
    v27[1].i32[0] = 1;
    _dx_recursive_init(v27, &_dx_gai_request_kind);
    v9[5] = v24;
    v9[3] = v6;
    atomic_fetch_add((v6 + 8), 1u);
    v28 = xpc_dictionary_get_string(v26, "hostname");
    if (!v28)
    {
LABEL_102:
      v66 = v7;
LABEL_103:
      _dx_gai_request_log_error(v9, v66);
LABEL_156:
      _dx_release(v9);
      v7 = v66;
LABEL_157:
      _dx_session_reset_idle_timer(v6);
      reply = xpc_dictionary_create_reply(object);
      if (reply)
      {
        v129 = reply;
        xpc_dictionary_set_int64(reply, "error", v7);
        _dx_session_send_message(v6, v129);
        xpc_release(v129);
      }

      else
      {
        _dx_session_terminate(v6, 4);
      }

      return;
    }

    v29 = strdup(v28);
    if (!v29)
    {
      goto LABEL_177;
    }

    v9[13] = v29;
    v150 = 0;
    v30 = xpc_dictionary_get_value(v26, "flags");
    v9[27].i32[0] = _mdns_xpc_object_get_uint64_limited(v30, 0xFFFFFFFFuLL, &v150);
    if (!v150)
    {
      goto LABEL_102;
    }

    v31 = xpc_dictionary_get_value(v26, "interface_index");
    v9[27].i32[1] = _mdns_xpc_object_get_uint64_limited(v31, 0xFFFFFFFFuLL, &v150);
    if (!v150)
    {
      goto LABEL_102;
    }

    v32 = xpc_dictionary_get_value(v26, "protocols");
    v9[28].i32[0] = _mdns_xpc_object_get_uint64_limited(v32, 0xFFFFFFFFuLL, &v150);
    if (!v150)
    {
      goto LABEL_102;
    }

    v33 = v9[3];
    v151 = 0u;
    v152 = 0u;
    *length = 0;
    data = xpc_dictionary_get_data(v26, "delegate_id", length);
    if (data && *length == 32)
    {
      v151 = *data;
      v152 = data[1];
      v35 = mdns_audit_token_create(&v151);
      v9[21] = v35;
      v36 = v9 + 21;
      if (!v35)
      {
        goto LABEL_178;
      }
    }

    else
    {
      v36 = v9 + 21;
      v35 = v9[21];
      if (!v35)
      {
        uuid = xpc_dictionary_get_uuid(v26, "delegate_id");
        if (uuid)
        {
          v39 = uuid;
          v42 = 0;
          int64_limited = 0;
          v40 = 1;
          goto LABEL_50;
        }

        int64_limited = _mdns_xpc_dictionary_get_int64_limited(v26, "delegate_id", 0x8000000000000000, 0x7FFFFFFFFFFFFFFFLL, 0);
LABEL_45:
        v39 = 0;
        v40 = 0;
        v41 = *v36;
        v42 = int64_limited != 0;
        if (!*&v41 && !int64_limited)
        {
          uuid_clear(&v9[29] + 2);
          v39 = 0;
LABEL_55:
          v45 = *(*&v33 + 76);
          goto LABEL_56;
        }

LABEL_50:
        v7 = -65555;
        if (!*(*&v33 + 32) || !mdns_xpc_connection_is_entitled())
        {
          goto LABEL_102;
        }

        v44 = &v9[29] + 2;
        if (v40)
        {
          uuid_copy(v44, v39);
          v45 = 0;
        }

        else
        {
          uuid_clear(v44);
          v45 = int64_limited;
          if (!v42)
          {
            goto LABEL_55;
          }
        }

LABEL_56:
        v9[28].i32[1] = v45;
        v46 = xpc_dictionary_get_string(v26, "service_scheme");
        if (v46)
        {
          v47 = v46;
          if (!strcasecmp(v46, "_443._https"))
          {
            v48 = v9[13];
            v49 = 65;
          }

          else
          {
            asprintf(&v9[25], "%s.%s", v47, *&v9[13]);
            v48 = v9[25];
            if (!*&v48)
            {
LABEL_178:
              v7 = -65539;
              goto LABEL_102;
            }

            v49 = 64;
          }

          v9[17] = v48;
          v9[29].i16[0] = v49;
        }

        v50 = xpc_dictionary_get_value(v26, "fallback_config");
        v9[22] = v50;
        if (v50)
        {
          xpc_retain(v50);
        }

        v51 = xpc_dictionary_get_value(v26, "resolver_uuids");
        if (!v51 || (v52 = v51, !xpc_array_get_count(v51)) || (v53 = xpc_array_get_uuid(v52, 0)) == 0)
        {
LABEL_69:
          if (xpc_dictionary_get_BOOL(v26, "need_encryption"))
          {
            v9[31].i8[3] |= 2u;
          }

          if (xpc_dictionary_get_BOOL(v26, "use_cache_only"))
          {
            if (!*(*&v33 + 32) || !mdns_xpc_connection_is_entitled())
            {
LABEL_101:
              v7 = -65555;
              goto LABEL_102;
            }

            v9[31].i8[3] |= 0x20u;
          }

          v56 = xpc_dictionary_get_string(v26, "account_id");
          if (v56 && !strcmp(v56, "com.apple.WebKit.InAppBrowser"))
          {
            v9[31].i8[3] |= 4u;
          }

          if (xpc_dictionary_get_BOOL(v26, "use_failover"))
          {
            v9[31].i8[3] |= 8u;
          }

          else if ((v9[31].i8[3] & 8) == 0)
          {
LABEL_84:
            length[0] = 0;
            v59 = _mdns_xpc_dictionary_get_int64_limited(v26, "log_privacy_level", -128, 127, length);
            if ((length[0] & (v59 < 2u)) != 0)
            {
              v60 = v59;
            }

            else
            {
              v60 = 0;
            }

            v9[31].i8[4] = v60;
            if (!xpc_dictionary_get_BOOL(v26, "prohibit_encrypted_dns"))
            {
LABEL_91:
              v149 = 0;
              v61 = xpc_dictionary_get_data(v26, "validation_data", &v149);
              if (!v61)
              {
LABEL_100:
                v63 = 0;
                goto LABEL_108;
              }

              LODWORD(v162[0]) = 0;
              v62 = mdns_signed_resolve_result_create_from_data(v61, v149, v162);
              v63 = v62;
              if (v62)
              {
                if (!mdns_signed_resolve_result_contains(v62, *&v9[13], v9[27].u32[1]))
                {
                  if (_mdns_server_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                  }

                  v67 = _mdns_server_log_s_log;
                  if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    v135 = v9[6].i32[0];
                    v136 = v9[13];
                    v137 = v9[27].i32[1];
                    *length = 67109891;
                    *&length[4] = v135;
                    *&length[8] = 2160;
                    *&length[10] = 1752392040;
                    *&length[18] = 2081;
                    *&length[20] = v136;
                    *&length[28] = 1024;
                    *&length[30] = v137;
                    _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "[R%u] Signed resolve result does not cover request -- hostname: %{private,mask.hash}s, ifindex: %u", length, 0x22u);
                  }

LABEL_108:
                  v68 = v9[3];
                  v69 = v9[31].u8[4];
                  if (v39)
                  {
                    if (v69 == 1)
                    {
                      if (_mdns_server_log_s_once != -1)
                      {
                        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                      }

                      v70 = _mdns_server_log_s_log;
                      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                      {
                        v71 = v9[6].i32[0];
                        v72 = v9[27].i32[0];
                        v73 = v9[27].i32[1];
                        v74 = v9[28].i32[0];
                        v75 = v9[13];
                        v76 = v9[31].u8[3];
                        v77 = *(*&v68 + 76);
                        *length = 67111683;
                        *&length[4] = v71;
                        *&length[8] = 1024;
                        *&length[10] = v72;
                        *&length[14] = 1024;
                        *&length[16] = v73;
                        *&length[20] = 1024;
                        *&length[22] = v74;
                        *&length[26] = 2160;
                        *&length[28] = 1752392040;
                        *&length[36] = 2085;
                        *&length[38] = v75;
                        v154 = 1024;
                        v155 = v76;
                        v156 = 2048;
                        v157 = v77;
                        v158 = 2082;
                        v159 = *&v68 + 84;
                        v160 = 1042;
                        LODWORD(v161[0]) = 16;
                        WORD2(v161[0]) = 2098;
                        *(v161 + 6) = v39;
                        v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{sensitive,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s), delegator uuid: %{public,uuid_t}.16P";
LABEL_124:
                        v94 = v70;
                        v95 = 88;
LABEL_141:
                        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, v78, length, v95);
                      }
                    }

                    else
                    {
                      if (_mdns_server_log_s_once != -1)
                      {
                        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                      }

                      v70 = _mdns_server_log_s_log;
                      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                      {
                        v87 = v9[6].i32[0];
                        v88 = v9[27].i32[0];
                        v89 = v9[27].i32[1];
                        v90 = v9[28].i32[0];
                        v91 = v9[13];
                        v92 = v9[31].u8[3];
                        v93 = *(*&v68 + 76);
                        *length = 67111683;
                        *&length[4] = v87;
                        *&length[8] = 1024;
                        *&length[10] = v88;
                        *&length[14] = 1024;
                        *&length[16] = v89;
                        *&length[20] = 1024;
                        *&length[22] = v90;
                        *&length[26] = 2160;
                        *&length[28] = 1752392040;
                        *&length[36] = 2081;
                        *&length[38] = v91;
                        v154 = 1024;
                        v155 = v92;
                        v156 = 2048;
                        v157 = v93;
                        v158 = 2082;
                        v159 = *&v68 + 84;
                        v160 = 1042;
                        LODWORD(v161[0]) = 16;
                        WORD2(v161[0]) = 2098;
                        *(v161 + 6) = v39;
                        v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{private,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s), delegator uuid: %{public,uuid_t}.16P";
                        goto LABEL_124;
                      }
                    }

LABEL_142:
                    v66 = 0;
                    if (!v63)
                    {
                      goto LABEL_144;
                    }

                    goto LABEL_143;
                  }

                  if (int64_limited)
                  {
                    v162[0] = 0;
                    v162[1] = 0;
                    mdns_system_pid_to_name(int64_limited, v162);
                    if (v69 == 1)
                    {
                      if (_mdns_server_log_s_once != -1)
                      {
                        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                      }

                      v79 = _mdns_server_log_s_log;
                      if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_142;
                      }

                      v80 = v9[6].i32[0];
                      v81 = v9[27].i32[0];
                      v82 = v9[27].i32[1];
                      v83 = v9[28].i32[0];
                      v84 = v9[13];
                      v85 = v9[31].u8[3];
                      v86 = *(*&v68 + 76);
                      *length = 67111683;
                      *&length[4] = v80;
                      *&length[8] = 1024;
                      *&length[10] = v81;
                      *&length[14] = 1024;
                      *&length[16] = v82;
                      *&length[20] = 1024;
                      *&length[22] = v83;
                      *&length[26] = 2160;
                      *&length[28] = 1752392040;
                      *&length[36] = 2085;
                      *&length[38] = v84;
                      v154 = 1024;
                      v155 = v85;
                      v156 = 2048;
                      v157 = v86;
                      v158 = 2082;
                      v159 = *&v68 + 84;
                      v160 = 2048;
                      v161[0] = int64_limited;
                      LOWORD(v161[1]) = 2082;
                      *(&v161[1] + 2) = v162;
                      v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{sensitive,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s), delegator pid: %lld (%{public}s)";
                    }

                    else
                    {
                      if (_mdns_server_log_s_once != -1)
                      {
                        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                      }

                      v79 = _mdns_server_log_s_log;
                      if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_142;
                      }

                      v104 = v9[6].i32[0];
                      v105 = v9[27].i32[0];
                      v106 = v9[27].i32[1];
                      v107 = v9[28].i32[0];
                      v108 = v9[13];
                      v109 = v9[31].u8[3];
                      v110 = *(*&v68 + 76);
                      *length = 67111683;
                      *&length[4] = v104;
                      *&length[8] = 1024;
                      *&length[10] = v105;
                      *&length[14] = 1024;
                      *&length[16] = v106;
                      *&length[20] = 1024;
                      *&length[22] = v107;
                      *&length[26] = 2160;
                      *&length[28] = 1752392040;
                      *&length[36] = 2081;
                      *&length[38] = v108;
                      v154 = 1024;
                      v155 = v109;
                      v156 = 2048;
                      v157 = v110;
                      v158 = 2082;
                      v159 = *&v68 + 84;
                      v160 = 2048;
                      v161[0] = int64_limited;
                      LOWORD(v161[1]) = 2082;
                      *(&v161[1] + 2) = v162;
                      v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{private,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s), delegator pid: %lld (%{public}s)";
                    }

                    v94 = v79;
                    v95 = 92;
                    goto LABEL_141;
                  }

                  if (v69 == 1)
                  {
                    if (_mdns_server_log_s_once != -1)
                    {
                      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                    }

                    v96 = _mdns_server_log_s_log;
                    if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v97 = v9[6].i32[0];
                    v98 = v9[27].i32[0];
                    v99 = v9[27].i32[1];
                    v100 = v9[28].i32[0];
                    v101 = v9[13];
                    v102 = v9[31].u8[3];
                    v103 = *(*&v68 + 76);
                    *length = 67111171;
                    *&length[4] = v97;
                    *&length[8] = 1024;
                    *&length[10] = v98;
                    *&length[14] = 1024;
                    *&length[16] = v99;
                    *&length[20] = 1024;
                    *&length[22] = v100;
                    *&length[26] = 2160;
                    *&length[28] = 1752392040;
                    *&length[36] = 2085;
                    *&length[38] = v101;
                    v154 = 1024;
                    v155 = v102;
                    v156 = 2048;
                    v157 = v103;
                    v158 = 2082;
                    v159 = *&v68 + 84;
                    v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{sensitive,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s)";
                  }

                  else
                  {
                    if (_mdns_server_log_s_once != -1)
                    {
                      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                    }

                    v96 = _mdns_server_log_s_log;
                    if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v111 = v9[6].i32[0];
                    v112 = v9[27].i32[0];
                    v113 = v9[27].i32[1];
                    v114 = v9[28].i32[0];
                    v115 = v9[13];
                    v116 = v9[31].u8[3];
                    v117 = *(*&v68 + 76);
                    *length = 67111171;
                    *&length[4] = v111;
                    *&length[8] = 1024;
                    *&length[10] = v112;
                    *&length[14] = 1024;
                    *&length[16] = v113;
                    *&length[20] = 1024;
                    *&length[22] = v114;
                    *&length[26] = 2160;
                    *&length[28] = 1752392040;
                    *&length[36] = 2081;
                    *&length[38] = v115;
                    v154 = 1024;
                    v155 = v116;
                    v156 = 2048;
                    v157 = v117;
                    v158 = 2082;
                    v159 = *&v68 + 84;
                    v78 = "[R%u] getaddrinfo start -- flags: 0x%X, ifindex: %d, protocols: %u, hostname: %{private,mask.hash}s, options: %{mdns:gaiopts}X, client pid: %lld (%{public}s)";
                  }

                  v94 = v96;
                  v95 = 72;
                  goto LABEL_141;
                }

                v64 = (*(v63[2] + 56))(v63);
                if (mdns_system_is_signed_result_uuid_valid(v64))
                {
                  if (_mdns_server_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                  }

                  v65 = _mdns_server_log_s_log;
                  if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEBUG))
                  {
                    v138 = v9[6].i32[0];
                    *length = 67109120;
                    *&length[4] = v138;
                    _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "[R%u] Allowing signed result", length, 8u);
                  }

                  v9[24] = v63;
                  goto LABEL_100;
                }

                if (_mdns_server_log_s_once != -1)
                {
                  dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                }

                v145 = _mdns_server_log_s_log;
                v66 = -65570;
                if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
                {
LABEL_188:
                  if (!v63)
                  {
LABEL_144:
                    if (v66)
                    {
                      goto LABEL_103;
                    }

                    if (*&v9[24] || !_os_feature_enabled_impl())
                    {
                      goto LABEL_152;
                    }

                    v118 = *(*&v9[3] + 64);
                    v119 = v9[13];
                    v120 = *(v118 + 40);
                    v151 = *(v118 + 24);
                    v152 = v120;
                    v121 = mdns_trust_checks_check(&v151, 2u, v119, 0, 0, 0);
                    if (!v121)
                    {
                      v66 = -65539;
                      goto LABEL_103;
                    }

                    v122 = v121;
                    v123 = v121[9];
                    if (v123 > 1)
                    {
                      if (v123 == 3)
                      {
                        v66 = -65555;
                        goto LABEL_170;
                      }

                      if (v123 != 2)
                      {
                        goto LABEL_168;
                      }
                    }

                    else if (v123)
                    {
                      if (v123 == 1)
                      {
                        os_release(v121);
LABEL_152:
                        started = _dx_gai_request_start_client_requests(v9, 1);
                        if (started)
                        {
                          v66 = started;
                          goto LABEL_103;
                        }

LABEL_153:
                        v125 = (v6 + 24);
                        do
                        {
                          v126 = v125;
                          v127 = *v125;
                          v125 = &(*v125)[2];
                        }

                        while (v127);
                        v66 = 0;
                        v9[2] = 0;
                        *v126 = v9;
                        atomic_fetch_add(&v9[1], 1u);
                        goto LABEL_156;
                      }

LABEL_168:
                      v66 = -65537;
                      goto LABEL_170;
                    }

                    v130 = *(v118 + 40);
                    v151 = *(v118 + 24);
                    v152 = v130;
                    v131 = mdns_trust_create(&v151, 0, v121);
                    v9[23] = v131;
                    if (v131)
                    {
                      atomic_fetch_add(&v9[1], 1u);
                      v132 = v9[23];
                      if (_dx_server_queue_once != -1)
                      {
                        dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
                      }

                      mdns_trust_set_queue(v132, _dx_server_queue_queue);
                      v133 = v9[23];
                      *length = _NSConcreteStackBlock;
                      *&length[8] = 0x40000000;
                      *&length[16] = ___dx_gai_request_trust_check_block_invoke;
                      *&length[24] = &__block_descriptor_tmp_51_1030;
                      *&length[32] = v9;
                      mdns_trust_set_event_handler(v133, length);
                      v134 = v9[23];
                      if ((*(*&v134 + 26) & 1) == 0)
                      {
                        *(*&v134 + 26) = 1;
                        _mdns_trust_activate_if_ready(*&v134);
                      }

                      os_release(v122);
                      goto LABEL_153;
                    }

                    v66 = -65539;
LABEL_170:
                    os_release(v122);
                    goto LABEL_103;
                  }

LABEL_143:
                  os_release(v63);
                  goto LABEL_144;
                }

                v147 = v9[6].i32[0];
                *length = 67109120;
                *&length[4] = v147;
                v142 = "[R%u] Signed result UUID revoked.";
                v143 = v145;
                v144 = 8;
              }

              else
              {
                if (_mdns_server_log_s_once != -1)
                {
                  dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
                }

                v140 = _mdns_server_log_s_log;
                v66 = -65549;
                if (!os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_188;
                }

                v141 = v9[6].i32[0];
                *length = 67109376;
                *&length[4] = v141;
                *&length[8] = 2048;
                *&length[10] = SLODWORD(v162[0]);
                v142 = "[R%u] Failed to create signed resolve result from data: %{mdns:err}ld";
                v143 = v140;
                v144 = 18;
              }

              _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, v142, length, v144);
              goto LABEL_188;
            }

            if (*(*&v33 + 32) && mdns_xpc_connection_is_entitled())
            {
              v9[31].i8[3] |= 0x10u;
              goto LABEL_91;
            }

            goto LABEL_101;
          }

          v57 = v9[28].i32[0] & 3;
          v58 = v9[31].i8[2];
          if (v57 == 2 || (v58 |= 1u, v9[31].i8[2] = v58, v57 != 1))
          {
            v9[31].i8[2] = v58 | 2;
          }

          goto LABEL_84;
        }

        v54 = v53;
        v55 = malloc_type_malloc(0x10uLL, 0xFE29915uLL);
        if (v55)
        {
          *v55 = *v54;
          v9[18] = v55;
          goto LABEL_69;
        }

LABEL_177:
        __break(1u);
        goto LABEL_178;
      }
    }

    v37 = *(v35 + 40);
    *length = *(v35 + 24);
    *&length[16] = v37;
    int64_limited = audit_token_to_pid(length);
    goto LABEL_45;
  }

  v4 = *(a1 + 32);
  if (object == &_xpc_error_connection_invalid)
  {
    v17 = &g_session_list;
    do
    {
      v18 = v17;
      v19 = *v17;
      v17 = (*v17 + 16);
      if (v19)
      {
        v20 = v19 == v4;
      }

      else
      {
        v20 = 1;
      }
    }

    while (!v20);
    if (v19)
    {
      *v18 = *(v4 + 16);
      *(v4 + 16) = 0;
      _dx_release(v4);
      v4 = *(a1 + 32);
    }

    _dx_session_invalidate(v4);
    v21 = *(a1 + 32);

    _dx_release(v21);
  }

  else
  {
    v5 = *(v4 + 32);
    if (v5)
    {
      xpc_connection_cancel(*(v4 + 32));
      xpc_release(v5);
      *(*(a1 + 32) + 32) = 0;
    }
  }
}

void _dx_session_reset_idle_timer(uint64_t a1)
{
  if (*(a1 + 48))
  {
    fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "!me->keepalive_reply_timer", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1188, 0);
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_release(v2);
      *(a1 + 40) = 0;
    }

    if (*(a1 + 24))
    {
      v3 = 60000;
    }

    else
    {
      v3 = 300000;
    }

    oneshot_timer = _dx_create_oneshot_timer(v3);
    *(a1 + 40) = oneshot_timer;
    if (oneshot_timer)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___dx_session_reset_idle_timer_block_invoke;
      handler[3] = &__block_descriptor_tmp_64_1002;
      handler[4] = a1;
      dispatch_source_set_event_handler(oneshot_timer, handler);
      dispatch_activate(*(a1 + 40));
    }

    else
    {
      fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "me->idle_timer", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1198, 0);
    }
  }
}

void _dx_release(atomic_uint *a1)
{
  if (atomic_fetch_add(a1 + 2, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      do
      {
        v4 = v3[3];
        if (v4)
        {
          v4(a1);
        }

        v3 = *v3;
      }

      while (v3);
    }

    free(a1);
  }
}

NSObject *_dx_create_oneshot_timer(unsigned int a1)
{
  if (_dx_server_queue_once != -1)
  {
    dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
  }

  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, _dx_server_queue_queue);
  if (v2)
  {
    v3 = dispatch_time(0, 1000000 * a1);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 50000 * a1);
  }

  return v2;
}

void ___dx_session_reset_idle_timer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 40));
    dispatch_release(v2);
    *(*(a1 + 32) + 40) = 0;
    v1 = *(a1 + 32);
  }

  if (*(v1 + 24))
  {
    if (!*(v1 + 32) || *(v1 + 48))
    {
      fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "me->connection && !me->keepalive_reply_timer", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1150, 0);
      return;
    }

    if (!_dx_session_send_keepalive_message_s_keepalive_msg)
    {
      empty = xpc_dictionary_create_empty();
      _dx_session_send_keepalive_message_s_keepalive_msg = empty;
      if (!empty)
      {
        fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "s_keepalive_msg", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1155, 0);
        return;
      }

      xpc_dictionary_set_string(empty, "command", "keepalive");
    }

    oneshot_timer = _dx_create_oneshot_timer(0x1388u);
    *(v1 + 48) = oneshot_timer;
    if (oneshot_timer)
    {
      atomic_fetch_add((v1 + 8), 1u);
      v6 = *(v1 + 32);
      v7 = _dx_session_send_keepalive_message_s_keepalive_msg;
      if (_dx_server_queue_once != -1)
      {
        dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___dx_session_send_keepalive_message_block_invoke;
      handler[3] = &__block_descriptor_tmp_69_1007;
      handler[4] = v1;
      xpc_connection_send_message_with_reply(v6, v7, _dx_server_queue_queue, handler);
      v8 = *(v1 + 48);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = ___dx_session_send_keepalive_message_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_70_1008;
      v9[4] = v1;
      dispatch_source_set_event_handler(v8, v9);
      dispatch_activate(*(v1 + 48));
    }

    else
    {
      fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "me->keepalive_reply_timer", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1160, 0);
    }
  }

  else
  {

    _dx_session_terminate(v1, 1);
  }
}

void ___dx_session_send_keepalive_message_block_invoke(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (*(v3 + 32))
  {
    type = xpc_get_type(object);
    v3 = *(a1 + 32);
    if (type == &_xpc_type_dictionary)
    {
      v5 = *(v3 + 48);
      if (v5)
      {
        dispatch_source_cancel(*(v3 + 48));
        dispatch_release(v5);
        *(*(a1 + 32) + 48) = 0;
        v3 = *(a1 + 32);
      }

      _dx_session_reset_idle_timer(v3);
      v3 = *(a1 + 32);
    }
  }

  _dx_release(v3);
}

void ___dx_session_send_keepalive_message_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 48));
    dispatch_release(v3);
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  _dx_session_terminate(v2, 3);
}

void _dx_session_terminate(uint64_t a1, int a2)
{
  if ((*(a1 + 100) & 1) == 0)
  {
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v4 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, (a2 == 1)))
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 76);
      v8[0] = 67109890;
      v8[1] = a2;
      v9 = 1024;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 2082;
      v14 = a1 + 84;
      _os_log_impl(&_mh_execute_header, v4, (a2 == 1), "Session terminated -- reason: %{mdns:termination_reason}d, pending send count: %u, client pid: %lld (%{public}s)", v8, 0x22u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      xpc_connection_cancel(*(a1 + 32));
      xpc_release(v7);
      *(a1 + 32) = 0;
    }

    *(a1 + 100) = 1;
  }
}

void ___dx_gai_request_trust_check_block_invoke(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 32);
  if (!a2 && *&v4[23])
  {
    if (a3 == 1)
    {
      started = _dx_gai_request_start_client_requests(v4, 1);
      v4 = *(a1 + 32);
      if (!started)
      {
        goto LABEL_9;
      }
    }

    else
    {
      started = -65570;
    }

    v6 = _dx_request_set_error(v4, started);
    v4 = *(a1 + 32);
    if (v6)
    {
      _dx_gai_request_log_error(v4, started);
      _dx_request_send_pending_error(*(a1 + 32));
      v4 = *(a1 + 32);
    }
  }

LABEL_9:
  if (v4[23])
  {
    os_release(*&v4[23]);
    *(*(a1 + 32) + 184) = 0;
    v4 = *(a1 + 32);
  }

  _dx_release(v4);
}

uint64_t _dx_gai_request_start_client_requests(int32x2_t *a1, int a2)
{
  v4 = a1[3];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = a1[13];
  v6 = *a1[27].i8;
  *&v7 = vrev64q_s32(v6).u64[0];
  *(&v7 + 1) = a1[28];
  v27[0] = 0;
  v28 = v7;
  v27[1] = v5;
  LODWORD(v27[0]) = a1[6].i32[0];
  v8 = &a1[29] + 2;
  *&v29 = a1 + 234;
  DWORD2(v29) = *(*&v4 + 72);
  v9 = a1[31].i8[3];
  LOBYTE(v31) = (v9 & 2) != 0;
  v10 = a1[31].i8[2];
  BYTE2(v31) = (v10 & 8) != 0;
  BYTE3(v31) = (v9 & 0x10) != 0;
  BYTE4(v31) = (v9 & 0x20) != 0;
  v11 = a1[21];
  *(&v31 + 1) = *(*&v4 + 64);
  *&v32 = v11;
  BYTE8(v32) = (v9 & 4) != 0;
  BYTE9(v32) = a1[31].i8[4];
  v12 = v6.i8[8] & 3;
  v13 = v12 == 3 || (v6.i8[8] & 3) == 0;
  if (v12 != 3 && (v6.i8[8] & 3) != 0)
  {
    v14 = v10 & 0xEF;
  }

  else
  {
    v14 = v10 | 0x10;
  }

  a1[31].i8[2] = v14;
  v15 = a1[26];
  if (v15)
  {
    _dx_release(v15);
    a1[26] = 0;
  }

  BYTE10(v32) = v13;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = a1[17];
  if (v16)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    LODWORD(v21) = a1[6].i32[0];
    *(&v21 + 1) = v16;
    *&v22 = vrev64_s32(a1[27]);
    WORD4(v22) = a1[29].i16[0];
    WORD5(v22) = 1;
    HIDWORD(v22) = a1[28].i32[1];
    *&v23 = v8;
    DWORD2(v23) = *(*&v4 + 72);
    v17 = a1[31].i8[3];
    LOBYTE(v25) = (v17 & 2) != 0;
    BYTE2(v25) = (a1[31].i8[2] & 8) != 0;
    BYTE3(v25) = (v17 & 0x10) != 0;
    BYTE5(v25) = (v17 & 0x20) != 0;
    v18 = a1[21];
    *(&v25 + 1) = *(*&v4 + 64);
    *&v26 = v18;
    BYTE8(v26) = (v17 & 4) != 0;
    v16 = &v21;
    BYTE10(v26) = a1[31].i8[4];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = ___dx_gai_request_start_client_requests_internal_block_invoke;
  v33[3] = &unk_10014F910;
  v33[6] = v27;
  v33[7] = v16;
  v33[4] = &v34;
  v33[5] = a1;
  _dx_kqueue_locked("dx_gai_request: starting client requests", a2, v33);
  if (*(v35 + 6))
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 0x40000000;
    v38[2] = ___dx_gai_request_stop_client_requests_block_invoke;
    v38[3] = &__block_descriptor_tmp_38_1039;
    v38[4] = a1;
    _dx_kqueue_locked("dx_gai_request: stopping client requests", a2, v38);
    v19 = *(v35 + 6);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v34, 8);
  return v19;
}

void _dx_gai_request_log_error(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (_mdns_server_log_s_once != -1)
  {
    dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
  }

  v5 = _mdns_server_log_s_log;
  if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 104);
    v8 = *(v4 + 76);
    v9[0] = 67110403;
    v9[1] = v6;
    v10 = 2160;
    v11 = 1752392040;
    v12 = 2081;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v8;
    v18 = 2082;
    v19 = v4 + 84;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[R%u] getaddrinfo error -- hostname: %{private,mask.hash}s, error: %{mdns:err}ld, client pid: %lld (%{public}s)", v9, 0x3Au);
  }
}

void _dx_session_send_message(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_connection_send_message(v3, a2);
    v4 = *(a1 + 80);
    *(a1 + 80) = v4 + 1;
    if (v4)
    {
      if (v4 == 1)
      {
        *(a1 + 101) = 1;
      }

      if (_mdns_server_log_s_once != -1)
      {
        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
      }

      v5 = _mdns_server_log_s_log;
      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 80);
        v7 = *(a1 + 76);
        *buf = 134218498;
        v11 = v7;
        v12 = 2082;
        v13 = a1 + 84;
        v14 = 1024;
        v15 = v6;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "XPC session to client with pid %lld (%{public}s) pending send count increased to %u", buf, 0x1Cu);
      }
    }

    else
    {
      *(a1 + 56) = mach_absolute_time();
    }

    atomic_fetch_add((a1 + 8), 1u);
    v8 = *(a1 + 32);
    barrier[0] = _NSConcreteStackBlock;
    barrier[1] = 0x40000000;
    barrier[2] = ___dx_session_send_message_block_invoke;
    barrier[3] = &__block_descriptor_tmp_61_1035;
    barrier[4] = a1;
    xpc_connection_send_barrier(v8, barrier);
  }

  else
  {
    fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "me->connection", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1089, 0);
  }
}

void _dx_session_invalidate(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_connection_cancel(*(a1 + 32));
    xpc_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 40));
    dispatch_release(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 48));
    dispatch_release(v4);
    *(a1 + 48) = 0;
  }

  while (1)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      break;
    }

    *(a1 + 24) = v7[2];
    v5 = v7;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[2];
      if (v6)
      {
        v6(v7);
        break;
      }
    }

    _dx_release(v7);
  }
}

void ___dx_session_send_message_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  --*(v2 + 80);
  if (*(v2 + 101) == 1)
  {
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v3 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 76);
      v7 = 134218498;
      v8 = v6;
      v9 = 2082;
      v10 = v2 + 84;
      v11 = 1024;
      v12 = v5;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "XPC session to client with pid %lld (%{public}s) pending send count decreased to %u", &v7, 0x1Cu);
    }
  }

  v4 = *(a1 + 32);
  if (!*(v4 + 80))
  {
    *(v4 + 101) = 0;
  }

  _dx_release(v4);
}

void ___dx_gai_request_start_client_requests_internal_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = v2[18];
  if (v3)
  {
    is_null = uuid_is_null(v3);
    v2 = a1[5];
    if (!is_null)
    {
      Querier_RegisterPathResolver(v2[18]);
      v2 = a1[5];
    }
  }

  if (!v2[8])
  {
    v5 = v2[22];
    if (v5)
    {
      DNSServiceManager = Querier_GetDNSServiceManager();
      if (DNSServiceManager)
      {
        DNSServiceManager = mdns_dns_service_manager_register_custom_service(DNSServiceManager, v5);
      }

      v2 = a1[5];
      v2[8] = DNSServiceManager;
    }
  }

  v7 = a1[6];
  if (v7)
  {
    *(v7 + 48) = v2[18];
    v2 = a1[5];
    *(a1[6] + 56) = v2[8];
  }

  v8 = a1[7];
  if (v8)
  {
    *(v8 + 48) = v2[18];
    v9 = a1[5];
    v10 = a1[7];
    *(v10 + 56) = *(v9 + 64);
    if (!*(v9 + 88))
    {
      v11 = *(a1[4] + 8);
      v12 = malloc_type_calloc(1uLL, 0x320uLL, 0x41604BE4uLL);
      if (!v12)
      {
        goto LABEL_40;
      }

      v17 = v12;
      RecordClientRequestStart = QueryRecordClientRequestStart(v12, v10, _dx_gai_request_query_result_handler, v9, v13, v14, v15, v16);
      if (RecordClientRequestStart)
      {
        free(v17);
        v17 = 0;
      }

      *(v11 + 24) = RecordClientRequestStart;
      *(a1[5] + 88) = v17;
      if (*(*(a1[4] + 8) + 24))
      {
        fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "err == 0", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1796, *(*(a1[4] + 8) + 24));
        return;
      }
    }
  }

  v19 = a1[6];
  if (!v19)
  {
    return;
  }

  v20 = a1[5];
  if (*(v20 + 80))
  {
    return;
  }

  v21 = *(a1[4] + 8);
  v22 = malloc_type_calloc(1uLL, 0x20uLL, 0xC75B2477uLL);
  if (!v22)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v27 = v22;
  AddrInfoClientRequestStart = GetAddrInfoClientRequestStart(v22, v19, _dx_gai_request_gai_result_handler, v20, v23, v24, v25, v26);
  if (AddrInfoClientRequestStart)
  {
    free(v27);
    v27 = 0;
  }

  *(v21 + 24) = AddrInfoClientRequestStart;
  *(a1[5] + 80) = v27;
  if (*(*(a1[4] + 8) + 24))
  {
    fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "err == 0", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1801, *(*(a1[4] + 8) + 24));
  }

  else
  {
    v29 = a1[5];
    v30 = *(v29 + 80);
    if (v30 && *(v29 + 220) != -1)
    {
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v31 + 376);
      }

      else
      {
        v33 = *(v30 + 24);
        v32 = v33 ? (v33 + 376) : "";
      }

      if (IsLocalDomain(v32))
      {
        v34 = a1[5];
        v35 = *(v34 + 24);
        v36 = *(v34 + 220);
        if (v36)
        {
          v37 = AWDLInterfaceID == v36 || WiFiAwareInterfaceID == v36;
        }

        else
        {
          v37 = (*(v34 + 218) >> 4) & 1;
        }

        monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
        _mdns_powerlog_bonjour_event(4u, v37, (v35 + 84), 0, monotonic_time_ns);
        *(a1[5] + 72) = monotonic_time_ns;
      }
    }
  }
}

void _dx_kqueue_locked(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    (*(a3 + 16))(a3);

    KQueueUnlock(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = *(a3 + 16);

    v20(a3);
  }
}

void ___dx_gai_request_stop_client_requests_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  if (v10)
  {
    GetAddrInfoClientRequestStop(v10, a2, a3, a4, a5, a6, a7, a8);
    v11 = *(v9 + 80);
    if (v11)
    {
      free(v11);
      *(v9 + 80) = 0;
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 72);
  if (v13)
  {
    v14 = *(v12 + 220);
    if (v14)
    {
      v15 = AWDLInterfaceID == v14 || WiFiAwareInterfaceID == v14;
    }

    else
    {
      v15 = (*(v12 + 218) >> 4) & 1;
    }

    _mdns_powerlog_bonjour_event(6u, v15, (*(v12 + 24) + 84), 0, v13);
    v12 = *(a1 + 32);
    *(v12 + 72) = 0;
  }

  v16 = *(v12 + 88);
  if (v16)
  {
    QueryRecordClientRequestStop(v16, a2, a3, a4, v13, a6, a7, a8, v18);
    v17 = *(v12 + 88);
    if (v17)
    {
      free(v17);
      *(v12 + 88) = 0;
    }
  }
}

void _dx_gai_request_gai_result_handler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  if (a6 && a6 != -65554)
  {

    _dx_request_set_error(a7, a6);
    return;
  }

  if ((*(a7 + 250) & 3) != 0 && (*(a7 + 250) & 4) == 0)
  {
    v14 = *(a3 + 48);
    if (v14)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        if (*(v15 + 96) && nw_resolver_config_get_allow_failover())
        {
          *(a7 + 250) |= 4u;
        }
      }
    }
  }

  if (!*(a2 + 353))
  {
    v16 = *(a2 + 342);
    if (v16 == 1)
    {
      v17 = 253;
      v18 = 152;
      goto LABEL_21;
    }

    if (v16 == 28)
    {
      v17 = 254;
      v18 = 160;
LABEL_21:
      v19 = *(a7 + v18);
      if (v19)
      {
        xpc_release(v19);
        *(a7 + v18) = 0;
      }

      *(a7 + v18) = xpc_array_create_empty();
      *(a7 + v17) = 1;
    }
  }

  v20 = *(a3 + 4);
  if (v20 == 5)
  {
    if (a6)
    {
      return;
    }

    v21 = *(a2 + 342);
    v22 = *(a3 + 40);
    if (v21 == 1)
    {
      v23 = 253;
      v24 = 152;
    }

    else
    {
      if (v21 != 28)
      {
        goto LABEL_41;
      }

      v23 = 254;
      v24 = 160;
    }

    v28 = a7 + v24;
    v29 = a7 + v23;
    bzero(v40, 0x3F1uLL);
    if (!ConvertDomainNameToCString_withescape((v22 + 4), v40))
    {
      v40[0] = 0;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 0x40000000;
    v39[2] = ___dx_gai_request_append_cname_block_invoke;
    v39[3] = &__block_descriptor_tmp_59;
    v39[4] = v40;
    v39[5] = v28;
    v39[6] = v29;
    os_unfair_lock_lock((a7 + 56));
    ___dx_gai_request_append_cname_block_invoke(v39);
    os_unfair_lock_unlock((a7 + 56));
    if (v21 == 1 && !a4 && (*(a7 + 250) & 0x10) != 0)
    {
      v30 = *(a7 + 208);
      if (v30)
      {
        _dx_release(v30);
        *(a7 + 208) = 0;
      }
    }

LABEL_41:
    v31 = *(a3 + 4);
    if (v31 != 1)
    {
      if (v31 != 28)
      {
        return;
      }

LABEL_46:
      v27 = 16;
      goto LABEL_47;
    }

LABEL_45:
    v27 = 4;
LABEL_47:
    v26 = (*(a3 + 40) + 4);
    v25 = 1;
LABEL_48:
    if (_dx_gai_request_check_for_failover_restart(a7, a3, a4 != 0, v25))
    {
      _dx_gai_request_restart_client_requests_in_failover_mode(a7, v32, v33, v34, v35, v36, v37, v38);
    }

    else
    {
      _dx_gai_request_enqueue_result(a7, a5, a3, a4 != 0, v26, v27, a6, a2);
    }

    return;
  }

  if (v20 == 1 || v20 == 28)
  {
    if (a6)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_48;
    }

    if (v20 != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }
}

void ___dx_gai_request_append_cname_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = **(a1 + 40);
    if (!v3)
    {
      v3 = xpc_array_create(0, 0);
      **(a1 + 40) = v3;
      if (!v3)
      {
        return;
      }

      v1 = *(a1 + 32);
    }

    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, v1);
    **(a1 + 48) = 1;
  }
}

uint64_t _dx_gai_request_check_for_failover_restart(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if ((*(a1 + 250) & 3) != 0 && (a3 & 1) == 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___dx_gai_request_check_for_failover_restart_block_invoke;
    v9[3] = &unk_10014F938;
    v10 = a4;
    v9[6] = a2;
    v9[7] = a1;
    v9[4] = &v15;
    v9[5] = &v11;
    os_unfair_lock_lock((a1 + 56));
    ___dx_gai_request_check_for_failover_restart_block_invoke(v9);
    os_unfair_lock_unlock((a1 + 56));
    v5 = v12[3];
    if (v5)
    {
      v12[3] = 0;
      do
      {
        v6 = *(v5 + 16);
        _dx_release(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  v7 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

void _dx_gai_request_enqueue_result(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, int a7, uint64_t a8)
{
  if (a6 || (a4 & 1) == 0)
  {
    v16 = malloc_type_calloc(1uLL, 0x68uLL, 0x5305C31BuLL);
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    *v16 = &_dx_gai_result_kind;
    v16[2] = 1;
    _dx_recursive_init(v16, &_dx_gai_result_kind);
    v18 = *(a3 + 32);
    v19 = *(a1 + 112);
    if (v19)
    {
      v20 = SameDomainNameBytes(*(v19 + 24), *(a3 + 32));
      v21 = *(a1 + 112);
      if (v20)
      {
        goto LABEL_9;
      }

      if (v21)
      {
        os_release(v21);
        *(a1 + 112) = 0;
      }
    }

    v21 = mdns_domain_name_create_with_labels(v18, 0);
    *(a1 + 112) = v21;
LABEL_9:
    if (v21)
    {
      v22 = mdns_resource_record_create(v21, *(a3 + 4), *(a3 + 6), 0, a5, a6);
      *(v17 + 24) = v22;
      if (v22)
      {
        if (a2)
        {
          if (*(a8 + 357))
          {
            v23 = 2;
          }

          else
          {
            v23 = 1073741826;
          }

          v24 = *(a3 + 48);
          if (!a6)
          {
            if (v24 && *(v24 + 24))
            {
              if (a2 == 4)
              {
                v25 = 3;
              }

              else
              {
                if (*(a3 + 1) == 3)
                {
                  v26 = 2;
                }

                else
                {
                  v26 = 5;
                }

                if (*(a3 + 1))
                {
                  v25 = v26;
                }

                else
                {
                  v25 = 1;
                }
              }
            }

            else if (*(a3 + 24))
            {
              v25 = 1;
            }

            else
            {
              v25 = 4;
            }

            *(v17 + 84) = v25;
          }

          if (v24)
          {
            v27 = *(v24 + 32);
            *(v17 + 72) = v27;
            if (v27)
            {
              os_retain(v27);
            }
          }

          else
          {
            *(v17 + 72) = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v28 = v23 | 0x80000000;
        if (!a4)
        {
          v28 = v23;
        }

        *(v17 + 80) = v28;
        *(v17 + 88) = a7;
        v29 = *(a3 + 24);
        v30 = v29 + 5;
        if (v29 + 5) < 6 && ((0x2Du >> v30))
        {
          LODWORD(v29) = dword_10010DEE0[v30];
        }

        *(v17 + 92) = v29;
        v31 = *(a3 + 48);
        if (v31)
        {
          *(v17 + 96) = *(v31 + 48);
          *(v17 + 100) = bswap32(*(a8 + 340)) >> 16;
          v32 = *(v31 + 24);
          if (v32)
          {
            v33 = *(v32 + 136);
            if (!v33 || !*(v33 + 96))
            {
              v33 = v32;
            }

            v34 = *(v33 + 160);
            if (v34)
            {
              v34 = xpc_retain(v34);
            }

            *(v17 + 32) = v34;
          }
        }

        else
        {
          *(v17 + 96) = 0;
          *(v17 + 100) = bswap32(*(a8 + 340)) >> 16;
        }

        *(v17 + 102) = *(v17 + 102) & 0xFD | (2 * (*(a1 + 252) == 1));
        v35 = *(*(v17 + 24) + 52);
        if (!a2)
        {
          goto LABEL_59;
        }

        if (a7)
        {
          goto LABEL_59;
        }

        v36 = *(a1 + 192);
        if (!v36 || v35 != 28 && v35 != 1)
        {
          goto LABEL_59;
        }

        LODWORD(string) = 0;
        v37 = v35 == 1 ? mdns_signed_hostname_result_create_ipv4(v36, a5, &string) : mdns_signed_hostname_result_create_ipv6(v36, a5, *(v17 + 92), &string);
        *(v17 + 64) = v37;
        if (v37)
        {
          goto LABEL_59;
        }

        if (_mdns_server_log_s_once != -1)
        {
          dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
        }

        v38 = _mdns_server_log_s_log;
        if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a1 + 48);
          if (v35 == 1)
          {
            v47 = 4;
          }

          else
          {
            v47 = 6;
          }

          *buf = 67109632;
          *&buf[4] = v46;
          v51 = 1024;
          v52 = v47;
          v53 = 2048;
          v54 = string;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[R%u] Failed to create IPv%d signed hostname result: %{mdns:err}ld", buf, 0x18u);
        }

        else
        {
LABEL_59:
          if (!a2)
          {
            goto LABEL_71;
          }
        }

        if (!&_NEHelperTrackerGetAppInfo || (string = 0, *buf = 0, v48 = 0, resolved_cache_get_tracker_state(a8, buf, &string, &v48 + 1, &v48) != 2) || !*buf)
        {
LABEL_71:
          v41 = *(a1 + 250);
          if (v41 & 0x10) == 0 || (a4)
          {
            goto LABEL_86;
          }

          if (v35 == 28)
          {
            v44 = (a1 + 208);
            v43 = *(a1 + 208);
            if (!v43)
            {
              goto LABEL_84;
            }

            _dx_gai_request_append_result(a1, v43);
            v45 = *(a1 + 208);
            if (!v45)
            {
              goto LABEL_84;
            }
          }

          else
          {
            if (v35 != 1)
            {
LABEL_86:
              _dx_gai_request_append_result(a1, v17);
LABEL_87:
              _dx_release(v17);
              return;
            }

            if (*(v17 + 84) == 3)
            {
              atomic_fetch_add((v17 + 8), 1u);
              v42 = *(a1 + 208);
              if (v42)
              {
                _dx_release(v42);
              }

              *(a1 + 208) = v17;
              goto LABEL_87;
            }

            v44 = (a1 + 208);
            v45 = *(a1 + 208);
            if (!v45)
            {
LABEL_85:
              *(a1 + 250) = v41 & 0xEF;
              goto LABEL_86;
            }
          }

          _dx_release(v45);
          *v44 = 0;
LABEL_84:
          v41 = *(a1 + 250);
          goto LABEL_85;
        }

        mdns_xpc_string_recreate((a1 + 120), *buf);
        v39 = *(a1 + 120);
        if (v39)
        {
          *(v17 + 48) = v39;
          xpc_retain(v39);
          if (!string)
          {
LABEL_67:
            if (HIBYTE(v48) == 1)
            {
              *(v17 + 102) |= 1u;
            }

            if (v48 == 1)
            {
              *(v17 + 102) |= 4u;
            }

            goto LABEL_71;
          }

          mdns_xpc_string_recreate((a1 + 128), string);
          v40 = *(a1 + 128);
          if (v40)
          {
            *(v17 + 56) = v40;
            xpc_retain(v40);
            goto LABEL_67;
          }
        }
      }
    }

    _dx_release(v17);
    _dx_request_set_error(a1, -65539);
  }
}

uint64_t _dx_request_set_error(os_unfair_lock_s *a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___dx_request_set_error_block_invoke;
  v5[3] = &unk_10014F8A0;
  v6 = a2;
  v5[4] = &v7;
  v5[5] = a1;
  os_unfair_lock_lock(a1 + 14);
  ___dx_request_set_error_block_invoke(v5);
  os_unfair_lock_unlock(a1 + 14);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t _dx_gai_request_restart_client_requests_in_failover_mode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(result + 250) & 8) == 0)
  {
    v8 = result;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___dx_gai_request_stop_client_requests_block_invoke;
    v11[3] = &__block_descriptor_tmp_38_1039;
    v11[4] = result;
    ___dx_gai_request_stop_client_requests_block_invoke(v11, a2, a3, a4, a5, a6, a7, a8);
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v9 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v8 + 48);
      LODWORD(v11[0]) = 67109120;
      HIDWORD(v11[0]) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[R%u] getaddrinfo failover restart", v11, 8u);
    }

    *(v8 + 250) |= 8u;
    return _dx_gai_request_start_client_requests(v8, 0);
  }

  return result;
}

uint64_t ___dx_request_set_error_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(v1 + 52))
  {
    *(v1 + 52) = *(result + 48);
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void _dx_gai_request_append_result(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) + 52);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (v4 == 1)
  {
    v6 = 253;
    v7 = 38;
    goto LABEL_5;
  }

  v5 = 0;
  if (v4 == 28)
  {
    v6 = 254;
    v7 = 40;
LABEL_5:
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___dx_gai_request_copy_cname_update_block_invoke;
    v9[3] = &unk_10014F9A0;
    v9[5] = a1 + v6;
    v9[6] = &a1[v7];
    v9[4] = &v10;
    os_unfair_lock_lock(a1 + 14);
    ___dx_gai_request_copy_cname_update_block_invoke(v9);
    os_unfair_lock_unlock(a1 + 14);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  *(a2 + 40) = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___dx_gai_request_append_result_block_invoke;
  v8[3] = &__block_descriptor_tmp_57;
  v8[4] = a1;
  v8[5] = a2;
  os_unfair_lock_lock(a1 + 14);
  ___dx_gai_request_append_result_block_invoke(v8);
  os_unfair_lock_unlock(a1 + 14);
}

void *___dx_gai_request_copy_cname_update_block_invoke(void *result)
{
  v1 = result[5];
  if (*v1 == 1)
  {
    v2 = result;
    result = *result[6];
    if (result)
    {
      result = xpc_copy(result);
      *(*(v2[4] + 8) + 24) = result;
      v1 = v2[5];
    }

    *v1 = 0;
  }

  return result;
}

uint64_t ___dx_gai_request_append_result_block_invoke(uint64_t result)
{
  v1 = (*(result + 32) + 96);
  do
  {
    v2 = v1;
    v3 = *v1;
    v1 = (*v1 + 16);
  }

  while (v3);
  v4 = *(result + 40);
  *v2 = v4;
  atomic_fetch_add((v4 + 8), 1u);
  return result;
}

void _dx_gai_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    os_release(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    xpc_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    xpc_release(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    xpc_release(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    xpc_release(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    os_release(v7);
    a1[8] = 0;
  }

  v8 = a1[9];
  if (v8)
  {
    os_release(v8);
    a1[9] = 0;
  }
}

uint64_t ___dx_gai_request_check_for_failover_restart_block_invoke(uint64_t result)
{
  v1 = *(*(result + 48) + 4);
  if (*(result + 64) == 1)
  {
    if (v1 == 1 || (v1 != 65 ? (v2 = v1 == 28) : (v2 = 1), v2))
    {
      *(*(result + 56) + 250) &= 0xFCu;
    }

    return result;
  }

  v3 = *(result + 56);
  v4 = *(v3 + 250);
  if (v1 == 1)
  {
    v5 = -2;
  }

  else
  {
    if (v1 != 28)
    {
      goto LABEL_14;
    }

    v5 = -3;
  }

  v4 &= v5;
  *(v3 + 250) = v4;
LABEL_14:
  if ((v4 & 7) == 4)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = *(v3 + 96);
    *(*(result + 56) + 96) = 0;
  }

  return result;
}

void _dx_gai_request_query_result_handler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, os_unfair_lock_s *a7)
{
  if (a6 && a6 != -65554)
  {

    _dx_request_set_error(a7, a6);
  }

  else if (*(a3 + 4) - 66 >= 0xFFFFFFFE)
  {
    if (a6)
    {
      v13 = 0;
      LODWORD(v14) = 0;
    }

    else
    {
      v13 = (*(a3 + 40) + 4);
      v14 = *(a3 + 12);
      block = 0;
      p_block = &block;
      v29 = 0x2000000000;
      v30 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 0x40000000;
      v34[2] = __dnssd_svcb_copy_doh_uri_block_invoke;
      v34[3] = &unk_100152E40;
      v34[4] = &block;
      _dnssd_svcb_extract_values(v13, v14, 0x8000, v34);
      v15 = *(p_block + 24);
      _Block_object_dispose(&block, 8);
      if (v15)
      {
        bzero(v34, 0x3F1uLL);
        v16 = *(a3 + 56);
        if (v16 && dnssec_obj_resource_record_member_get_validation_result(v16) == 1)
        {
          v17 = v34;
          if (!ConvertDomainNameToCString_withescape(*(a3 + 32), v34))
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        DNSServiceManager = Querier_GetDNSServiceManager();
        if (DNSServiceManager)
        {
          if (_mdns_dns_service_queue_s_once != -1)
          {
            v26 = DNSServiceManager;
            dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
            DNSServiceManager = v26;
          }

          block = _NSConcreteStackBlock;
          p_block = 0x40000000;
          v29 = __mdns_dns_service_manager_register_doh_uri_block_invoke;
          v30 = &__block_descriptor_tmp_16;
          v31 = DNSServiceManager;
          v32 = v15;
          v33 = v17;
          dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
        }

        free(v15);
      }
    }

    if (_dx_gai_request_check_for_failover_restart(a7, a3, a4 != 0, v14 != 0))
    {
      _dx_gai_request_restart_client_requests_in_failover_mode(a7, v19, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      _dx_gai_request_enqueue_result(a7, a5, a3, a4 != 0, v13, v14, a6, a2);
    }
  }
}