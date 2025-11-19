uint64_t __cti_log_object_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    **(a1 + 32) = 0;
  }

  else if (type == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = __cti_log_object_block_invoke_2;
    applier[3] = &__block_descriptor_tmp_89;
    applier[4] = *(a1 + 32);
    xpc_array_apply(object, applier);
  }

  return 1;
}

uint64_t __cti_log_object_block_invoke_3(uint64_t a1, int a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary || type == &_xpc_type_array)
  {
    **(a1 + 32) = 0;
  }

  return 1;
}

uint64_t __cti_log_object_block_invoke_95(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(a1 + 32) + 8 * **(a1 + 40)) = cti_xpc_copy_description(a3);
  *(*(a1 + 48) + 8 * (**(a1 + 40))++) = a2;
  return 1;
}

uint64_t __cti_log_object_block_invoke_104(uint64_t a1, int a2, xpc_object_t object)
{
  v3 = *(a1 + 48);
  cti_log_object(*(a1 + 32), *(a1 + 56), *(a1 + 40), a2, ": ", object);
  return 1;
}

uint64_t __cti_log_object_block_invoke_2_107(uint64_t a1, uint64_t a2, void *a3)
{
  snprintf(__str, 0x17uLL, "%zd", a2);
  v5 = *(a1 + 48);
  cti_log_object(*(a1 + 32), *(a1 + 56), *(a1 + 40), __str, ": ", a3);
  return 1;
}

char *cti_xpc_copy_description(void *a1)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_uint64)
  {
    xpc_uint64_get_value(a1);
    snprintf(__str, 0x17uLL, "%llu");
    goto LABEL_12;
  }

  if (type == &_xpc_type_int64)
  {
    xpc_int64_get_value(a1);
    snprintf(__str, 0x17uLL, "%lld");
LABEL_12:
    v4 = strdup(__str);
    if (!v4)
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      v44 = 136446210;
      v45 = "strict_strdup";
      j = "%{public}s: strdup() failed";
      v40 = &v44;
      goto LABEL_77;
    }

    return v4;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
    if (length == -3)
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *__str = 136446210;
      v43 = "cti_xpc_copy_description";
      j = "%{public}s: strict_malloc called with size 0";
    }

    else
    {
      v8 = malloc_type_malloc(length + 3, 0x178785BEuLL);
      if (v8)
      {
        v5 = v8;
        *v8 = 34;
        v9 = v8 + 1;
        if (v8 == -1)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          *__str = 136446210;
          v43 = "_strict_strlcpy";
          j = "%{public}s: strict_strlcpy called with NULL dst";
        }

        else
        {
          if (string_ptr)
          {
            if (length + 1 < 2)
            {
              v10 = length + 1;
LABEL_30:
              if (length != -1 && v10)
              {
                *v9 = 0;
              }
            }

            else
            {
              v10 = 1;
              v11 = length + 1;
              while (1)
              {
                v12 = *string_ptr;
                *v9 = v12;
                if (!v12)
                {
                  break;
                }

                ++v9;
                ++string_ptr;
                if (--v11 <= 1)
                {
                  goto LABEL_30;
                }
              }
            }

            v8[length + 1] = 34;
            v8[length + 2] = 0;
            return v5;
          }

          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          *__str = 136446210;
          v43 = "_strict_strlcpy";
          j = "%{public}s: strict_strlcpy called with NULL src";
        }
      }

      else
      {
        v37 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *__str = 136446210;
        v43 = "cti_xpc_copy_description";
        j = "%{public}s: strict allocator failed";
      }
    }

    goto LABEL_76;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    v14 = xpc_data_get_length(a1);
    v15 = malloc_type_malloc(2 * v14 + 3, 0xE56DD94BuLL);
    if (!v15)
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *__str = 136446210;
      v43 = "cti_xpc_copy_description";
      j = "%{public}s: strict allocator failed";
      goto LABEL_76;
    }

    v5 = v15;
    if (v14)
    {
      *v15 = 30768;
      v16 = (v15 + 1);
      v17 = (2 * v14) | 1;
      do
      {
        v18 = *bytes_ptr++;
        snprintf(v16, v17, "%02x", v18);
        v17 -= 2;
        v16 += 2;
        --v14;
      }

      while (v14);
      return v5;
    }

    v36 = 15932;
    goto LABEL_67;
  }

  if (type == &_xpc_type_BOOL)
  {
    if (xpc_BOOL_get_value(a1))
    {
      v19 = "true";
    }

    else
    {
      v19 = "false";
    }

    v4 = strdup(v19);
    if (!v4)
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *__str = 136446210;
      v43 = "strict_strdup";
      j = "%{public}s: strdup() failed";
      goto LABEL_76;
    }

    return v4;
  }

  if (type == &_xpc_type_array)
  {
    count = xpc_array_get_count(a1);
    if (count)
    {
      v21 = count;
      v22 = 8 * count;
      if (v22)
      {
        v23 = malloc_type_malloc(v22, 0x2721E1FFuLL);
        if (!v23)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          *__str = 136446210;
          v43 = "cti_xpc_copy_description";
          j = "%{public}s: strict allocator failed";
          goto LABEL_76;
        }

        v24 = v23;
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 0x40000000;
        applier[2] = __cti_xpc_copy_description_block_invoke;
        applier[3] = &__block_descriptor_tmp_115;
        applier[4] = v23;
        xpc_array_apply(a1, applier);
        v25 = 0;
        for (i = 0; i != v21; ++i)
        {
          v27 = v24[i];
          if (v27)
          {
            v25 += strlen(v27) + 2;
          }

          else
          {
            v25 += 6;
          }
        }

        if (v25 == -3)
        {
          goto LABEL_79;
        }

        v28 = malloc_type_malloc(v25 + 3, 0x144730F9uLL);
        if (v28)
        {
          v5 = v28;
          v29 = 0;
          *v28 = 91;
          v30 = v28 + 1;
          do
          {
            if (v30)
            {
              v31 = " ";
              if (!v29)
              {
                v31 = "";
              }

              v32 = v24[v29];
              if (!v32)
              {
                v32 = "NULL";
              }

              if (v21 == 1)
              {
                v33 = "";
              }

              else
              {
                v33 = ",";
              }

              snprintf(v30, v25, "%s%s%s", v31, v32, v33);
              v34 = strlen(v30);
              v30 += v34;
              v25 -= v34;
            }

            v35 = v24[v29];
            if (v35)
            {
              free(v35);
              v24[v29] = 0;
            }

            ++v29;
            --v21;
          }

          while (v21);
          *v30 = 93;
          free(v24);
          return v5;
        }

        goto LABEL_87;
      }

      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *__str = 136446210;
      v43 = "cti_xpc_copy_description";
      for (j = "%{public}s: strict_malloc called with size 0"; ; j = "%{public}s: strict_malloc called with size 0")
      {
LABEL_76:
        v40 = __str;
LABEL_77:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, j, v40, 0xCu);
        do
        {
LABEL_78:
          __break(1u);
LABEL_79:
          v37 = global_os_log;
        }

        while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
        *__str = 136446210;
        v43 = "cti_xpc_copy_description";
      }
    }

    v39 = malloc_type_malloc(3uLL, 0x144730F9uLL);
    if (!v39)
    {
LABEL_87:
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *__str = 136446210;
      v43 = "cti_xpc_copy_description";
      j = "%{public}s: strict allocator failed";
      goto LABEL_76;
    }

    v5 = v39;
    v36 = 23899;
LABEL_67:
    *v5 = v36;
    v5[2] = 0;
    return v5;
  }

  return xpc_copy_description(a1);
}

uint64_t __cti_log_object_block_invoke_2(uint64_t a1, int a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary || type == &_xpc_type_array)
  {
    **(a1 + 32) = 0;
  }

  return 1;
}

void cti_internal_reply_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cti_internal_event_reply_callback(a1, a2, a3);
  *(a1 + 8) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 80);
      v7 = 136446722;
      v8 = "cti_internal_reply_callback";
      v9 = 1024;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] canceling connection %p", &v7, 0x1Cu);
      v4 = *(a1 + 16);
    }

    xpc_connection_cancel(v4);
  }

  cti_connection_release_(a1, 672);
}

void cti_internal_event_reply_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v6 = *(a1 + 80);
    }

    else
    {
      v6 = 0;
    }

    v8 = 136446722;
    v9 = "cti_internal_event_reply_callback";
    v10 = 1024;
    v11 = v6;
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] conn_ref = %p", &v8, 0x1Cu);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v7(*(a1 + 64), a3);
  }
}

uint64_t cti_get_tunnel_name_(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v8, "path", "/org/wpantund/utun2");
  xpc_dictionary_set_string(v8, "method", "PropGet");
  xpc_dictionary_set_string(v8, "property_name", "Config:TUN:InterfaceName");
  v9 = setup_for_command(0, "get_tunnel_name", 0, "Config:TUN:InterfaceName", v8, a1, a2, cti_internal_string_property_reply, 0, a3, a4);
  if (v8)
  {
    xpc_release(v8);
  }

  return v9;
}

void cti_internal_string_property_reply(uint64_t a1, void *a2, uint64_t a3)
{
  cti_internal_string_event_reply(a1, a2, a3);
  *(a1 + 8) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 80);
      v11 = 136446722;
      v12 = "cti_internal_string_property_reply";
      v13 = 1024;
      *v14 = v6;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] canceling connection %p", &v11, 0x1Cu);
      v4 = *(a1 + 16);
    }

    xpc_connection_cancel(v4);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v11 = 136447490;
    v12 = "cti_internal_string_property_reply";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "conn_ref";
    *&v14[24] = 2080;
    *&v14[26] = "cti-services.c";
    v15 = 1024;
    v16 = 924;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_18;
  }

  v8 = global_os_log;
  if (v7 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v11 = 136447490;
    v12 = "cti_internal_string_property_reply";
    v13 = 1024;
    *v14 = v7;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "conn_ref";
    *&v14[24] = 2080;
    *&v14[26] = "cti-services.c";
    v15 = 1024;
    v16 = 924;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_19:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "cti_internal_string_property_reply";
    v13 = 1024;
    *v14 = v7;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "conn_ref";
    *&v14[24] = 2080;
    *&v14[26] = "cti-services.c";
    v15 = 1024;
    v16 = 924;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v7 = *a1;
  }

  *a1 = v7 - 1;
  if (v7 == 1)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "cti_internal_string_property_reply";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "conn_ref";
      *&v14[18] = 2080;
      *&v14[20] = "cti-services.c";
      *&v14[28] = 1024;
      *&v14[30] = 924;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++cti_connection_finalized;
    cti_connection_finalize(a1);
  }
}

void cti_internal_string_event_reply(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  v6 = *(a1 + 8);
  xpc_retain(object);
  if (a3)
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(object, "commandResult");
  if (!value)
  {
    dictionary = xpc_dictionary_get_dictionary(object, "eventData");
    if (dictionary)
    {
      array = xpc_dictionary_get_array(dictionary, "value");
      if (!array)
      {
        v21 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v27 = *(a1 + 80);
        v32 = 136446466;
        v33 = "cti_internal_string_event_reply";
        v34 = 1024;
        v35 = v27;
        v13 = "%{public}s: [CX%d] eventData dictionary contains no 'value' key";
        goto LABEL_29;
      }

      v18 = array;
      count = xpc_array_get_count(array);
      if (count != 1)
      {
        v20 = count;
        if (!count)
        {
          v21 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v22 = *(a1 + 80);
          v32 = 136446466;
          v33 = "cti_internal_string_event_reply";
          v34 = 1024;
          v35 = v22;
          v13 = "%{public}s: [CX%d] eventData value array has no elements";
LABEL_29:
          v14 = v21;
          v15 = 18;
          goto LABEL_30;
        }

        v28 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 80);
          v32 = 136446722;
          v33 = "cti_internal_string_event_reply";
          v34 = 1024;
          v35 = v29;
          v36 = 2048;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] eventData value array has %zd elements", &v32, 0x1Cu);
        }
      }

      string = xpc_array_get_string(v18, 0);
      if (string)
      {
        v7 = string;
        a3 = 0;
        goto LABEL_32;
      }

      v21 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v31 = *(a1 + 80);
      v32 = 136446466;
      v33 = "cti_internal_string_event_reply";
      v34 = 1024;
      v35 = v31;
      v13 = "%{public}s: [CX%d] eventData value array's first element is not a string";
      goto LABEL_29;
    }

    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v26 = *(a1 + 80);
    v32 = 136446466;
    v33 = "cti_internal_string_event_reply";
    v34 = 1024;
    v35 = v26;
    v13 = "%{public}s: [CX%d] no eventData dictionary";
    goto LABEL_29;
  }

  v9 = xpc_int64_get_value(value);
  if (v9)
  {
    v10 = v9;
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 80);
      v32 = 136446722;
      v33 = "cti_internal_string_event_reply";
      v34 = 1024;
      v35 = v12;
      v36 = 2048;
      v37 = v10;
      v13 = "%{public}s: [CX%d] nonzero result %llu";
      v14 = v11;
      v15 = 28;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, &v32, v15);
    }

LABEL_31:
    v7 = 0;
    a3 = 4294901759;
    goto LABEL_32;
  }

  v23 = xpc_dictionary_get_dictionary(object, "commandData");
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  v25 = xpc_dictionary_get_string(v23, "property_name");
  if (!v25)
  {
    goto LABEL_31;
  }

  a3 = 4294901759;
  if (strcmp(v25, *(a1 + 48)))
  {
LABEL_2:
    v7 = 0;
    goto LABEL_32;
  }

  v7 = xpc_dictionary_get_string(v24, "value");
  if (v7)
  {
    a3 = 0;
  }

  else
  {
    a3 = 4294901759;
  }

LABEL_32:
  if (v6)
  {
    v6(*(a1 + 64), v7, a3);
  }

  if (object)
  {
    xpc_release(object);
  }
}

uint64_t cti_track_active_data_set_(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v10, "path", "/org/wpantund/utun2");
  v11 = setup_for_command(a1, "track_active_data_set", "ActiveDataSetChanged", 0, v10, a2, a3, cti_internal_event_reply_callback, 1, a4, a5);
  if (v10)
  {
    xpc_release(v10);
  }

  return v11;
}

uint64_t cti_internal_state_reply_callback(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 8);
  if (a3)
  {
    v5 = a3;
LABEL_5:
    v6 = 12;
    goto LABEL_6;
  }

  *xdict = 0;
  result = cti_event_or_response_extract(a2, xdict);
  if (result)
  {
    v5 = result;
    goto LABEL_5;
  }

  result = xpc_dictionary_get_string(*xdict, "value");
  if (result)
  {
    v9 = result;
    result = strcmp(result, "uninitialized");
    if (result)
    {
      result = strcmp(v9, "uninitialized:fault");
      if (result)
      {
        result = strcmp(v9, "uninitialized:upgrading");
        if (result)
        {
          result = strcmp(v9, "offline:deep-sleep");
          if (result)
          {
            result = strcmp(v9, "offline");
            if (result)
            {
              result = strcmp(v9, "offline:commissioned");
              if (result)
              {
                result = strcmp(v9, "associating");
                if (result)
                {
                  result = strcmp(v9, "associating:credentials-needed");
                  if (result)
                  {
                    result = strcmp(v9, "associated");
                    if (result)
                    {
                      result = strcmp(v9, "associated:no-parent");
                      if (result)
                      {
                        result = strcmp(v9, "associated:netwake-asleep");
                        if (result)
                        {
                          result = strcmp(v9, "associated:netwake-waking");
                          v5 = 0;
                          if (result)
                          {
                            v6 = 12;
                          }

                          else
                          {
                            v6 = 11;
                          }
                        }

                        else
                        {
                          v5 = 0;
                          v6 = 10;
                        }
                      }

                      else
                      {
                        v5 = 0;
                        v6 = 9;
                      }
                    }

                    else
                    {
                      v5 = 0;
                      v6 = 8;
                    }
                  }

                  else
                  {
                    v5 = 0;
                    v6 = 7;
                  }
                }

                else
                {
                  v5 = 0;
                  v6 = 6;
                }
              }

              else
              {
                v5 = 0;
                v6 = 5;
              }
            }

            else
            {
              v5 = 0;
              v6 = 4;
            }
          }

          else
          {
            v5 = 0;
            v6 = 3;
          }
        }

        else
        {
          v5 = 0;
          v6 = 2;
        }
      }

      else
      {
        v5 = 0;
        v6 = 1;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = 12;
    v5 = 4294901759;
  }

LABEL_6:
  if (v4)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v3 + 80);
      *xdict = 136446722;
      *&xdict[4] = "cti_internal_state_reply_callback";
      v11 = 1024;
      v12 = v8;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", xdict, 0x1Cu);
    }

    return v4(*(v3 + 64), v6, v5);
  }

  return result;
}

uint64_t cti_event_or_response_extract(void *a1, void *a2)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "commandData");
  if (dictionary)
  {
    v5 = dictionary;
    int64 = xpc_dictionary_get_int64(a1, "commandResult");
    if (int64)
    {
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446466;
        v15 = "cti_event_or_response_extract";
        v16 = 1024;
        v17 = int64;
        v8 = "%{public}s: nonzero status %d";
        v9 = v7;
        v10 = 18;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
        return 4294901759;
      }

      return 4294901759;
    }

LABEL_7:
    result = 0;
    *a2 = v5;
    return result;
  }

  v11 = xpc_dictionary_get_dictionary(a1, "eventData");
  if (v11)
  {
    v5 = v11;
    goto LABEL_7;
  }

  v13 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "cti_event_or_response_extract";
    v8 = "%{public}s: null result";
    v9 = v13;
    v10 = 12;
    goto LABEL_10;
  }

  return 4294901759;
}

uint64_t cti_get_netdata_mode_(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v8, "path", "/org/wpantund/utun2");
  xpc_dictionary_set_string(v8, "method", "PropGet");
  xpc_dictionary_set_string(v8, "property_name", "Current:Srp:NetdataMode");
  v9 = setup_for_command(0, "get_netdata_mode", "Current:Srp:NetdataMode", 0, v8, a1, a2, cti_internal_netdata_mode_reply_callback, 0, a3, a4);
  if (v8)
  {
    xpc_release(v8);
  }

  return v9;
}

void cti_internal_netdata_mode_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = a3;
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  *xdict = 0;
  v5 = cti_event_or_response_extract(a2, xdict);
  if (v5)
  {
    goto LABEL_4;
  }

  if (xpc_dictionary_get_int64(*xdict, "value"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

LABEL_5:
  if (v4)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 80);
      *xdict = 136446722;
      *&xdict[4] = "cti_internal_netdata_mode_reply_callback";
      v13 = 1024;
      v14 = v8;
      v15 = 2048;
      v16 = a1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", xdict, 0x1Cu);
    }

    v4(*(a1 + 64), v6, v5);
  }

  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 80);
      *xdict = 136446722;
      *&xdict[4] = "cti_internal_netdata_mode_reply_callback";
      v13 = 1024;
      v14 = v11;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] canceling connection %p after successful response", xdict, 0x1Cu);
      v9 = *(a1 + 16);
    }

    xpc_connection_cancel(v9);
  }

  cti_connection_release_(a1, 1114);
}

void cti_internal_network_node_type_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = a3;
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  xdict = 0;
  v5 = cti_event_or_response_extract(a2, &xdict);
  if (v5)
  {
    goto LABEL_4;
  }

  v9 = xdict;
  value = xpc_dictionary_get_value(xdict, "value");
  if (!value)
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 80);
      *buf = 136446466;
      v19 = "cti_internal_network_node_type_callback";
      v20 = 1024;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] No node type returned.", buf, 0x12u);
    }

    goto LABEL_4;
  }

  v11 = value;
  if (xpc_get_type(value) == &_xpc_type_string)
  {
    string = xpc_dictionary_get_string(v9, "value");
    if (!strcmp(string, "unknown"))
    {
      goto LABEL_4;
    }

    if (!strcmp(string, "router"))
    {
      v6 = 1;
    }

    else if (!strcmp(string, "end-device"))
    {
      v6 = 2;
    }

    else if (!strcmp(string, "sleepy-end-device"))
    {
      v6 = 3;
    }

    else if (!strcmp(string, "synchronized-sleepy-end-device"))
    {
      v6 = 4;
    }

    else if (!strcmp(string, "nl-lurker"))
    {
      v6 = 5;
    }

    else if (!strcmp(string, "commissioner"))
    {
      v6 = 6;
    }

    else if (!strcmp(string, "leader"))
    {
      v6 = 7;
    }

    else
    {
      v6 = 8 * (strcmp(string, "sleepy-router") == 0);
    }
  }

  else
  {
    v6 = xpc_copy_description(v11);
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 80);
      *buf = 136446722;
      v19 = "cti_internal_network_node_type_callback";
      v20 = 1024;
      v21 = v13;
      v22 = 2082;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] node type type is %{public}s instead of string.", buf, 0x1Cu);
    }

    if (v6)
    {
      free(v6);
      goto LABEL_4;
    }
  }

LABEL_5:
  if (v4)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 80);
      *buf = 136446722;
      v19 = "cti_internal_network_node_type_callback";
      v20 = 1024;
      v21 = v8;
      v22 = 2048;
      v23 = a1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(a1 + 64), v6, v5);
  }
}

size_t *cti_service_vec_create_(size_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xF3711E62uLL);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  if (a1)
  {
    if (a1 >> 61)
    {
      v13 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v20 = "cti_service_vec_create_";
      i = "%{public}s: strict_calloc count * size would overflow";
      v15 = v13;
      v16 = 12;
      goto LABEL_17;
    }

    v6 = malloc_type_calloc(a1, 8uLL, 0xEA0FF6EuLL);
    if (!v6)
    {
      v17 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136446722;
      v20 = "cti_service_vec_create_";
      v21 = 2048;
      *v22 = a1;
      *&v22[8] = 2048;
      *&v22[10] = 8;
      for (i = "%{public}s: strict_calloc(%zu, %zu) failed"; ; i = "%{public}s: strict_calloc(%zu, %zu) failed")
      {
        v15 = v17;
        v16 = 32;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, i, buf, v16);
        do
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v17 = global_os_log;
        }

        while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
        *buf = 136446722;
        v20 = "cti_service_vec_create_";
        v21 = 2048;
        *v22 = 1;
        *&v22[8] = 2048;
        *&v22[10] = 24;
      }
    }

    v5[2] = v6;
  }

  *v5 = a1;
  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v5 + 2);
    *buf = 136447490;
    v20 = "cti_service_vec_create_";
    v21 = 1024;
    *v22 = v8;
    *&v22[4] = 2048;
    *&v22[6] = v5;
    *&v22[14] = 2080;
    *&v22[16] = "services";
    v23 = 2080;
    v24 = "cti-services.c";
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v9 = *(v5 + 2);
  if (v9)
  {
    v10 = v9 + 1;
    *(v5 + 2) = v10;
    if (v10 >= 10001)
    {
      v18 = v10;
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v20 = "cti_service_vec_create_";
        v21 = 1024;
        *v22 = v18;
        *&v22[4] = 2048;
        *&v22[6] = v5;
        *&v22[14] = 2080;
        *&v22[16] = "services";
        v23 = 2080;
        v24 = "cti-services.c";
        v25 = 1024;
        v26 = a2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++cti_service_vec_created;
    *(v5 + 2) = 1;
  }

  return v5;
}

void cti_service_vec_finalize(unint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_20;
  }

  if (!*a1)
  {
    goto LABEL_19;
  }

  v3 = 0;
  do
  {
    v4 = *(a1[2] + 8 * v3);
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = *(v4 + 48);
    if (!v5)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v14 = "cti_service_vec_finalize";
      v15 = 1024;
      *v16 = 0;
      *&v16[4] = 2048;
      *&v16[6] = v4;
      *&v16[14] = 2080;
      *&v16[16] = "services->services[i]";
      *&v16[24] = 2080;
      *&v16[26] = "cti-services.c";
      v17 = 1024;
      v18 = 1380;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v12 = v10;
      goto LABEL_25;
    }

    v6 = global_os_log;
    if (v5 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v14 = "cti_service_vec_finalize";
      v15 = 1024;
      *v16 = v5;
      *&v16[4] = 2048;
      *&v16[6] = v4;
      *&v16[14] = 2080;
      *&v16[16] = "services->services[i]";
      *&v16[24] = 2080;
      *&v16[26] = "cti-services.c";
      v17 = 1024;
      v18 = 1380;
      v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v12 = v6;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v11, buf, 0x36u);
LABEL_26:
      abort();
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v14 = "cti_service_vec_finalize";
      v15 = 1024;
      *v16 = v5;
      *&v16[4] = 2048;
      *&v16[6] = v4;
      *&v16[14] = 2080;
      *&v16[16] = "services->services[i]";
      *&v16[24] = 2080;
      *&v16[26] = "cti-services.c";
      v17 = 1024;
      v18 = 1380;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v4 = *(a1[2] + 8 * v3);
      v5 = *(v4 + 48);
    }

    *(v4 + 48) = v5 - 1;
    if (v5 == 1)
    {
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v14 = "cti_service_vec_finalize";
        v15 = 2048;
        *v16 = v4;
        *&v16[8] = 2080;
        *&v16[10] = "services->services[i]";
        *&v16[18] = 2080;
        *&v16[20] = "cti-services.c";
        *&v16[28] = 1024;
        *&v16[30] = 1380;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v4 = *(a1[2] + 8 * v3);
      }

      ++cti_service_finalized;
      v8 = *(v4 + 24);
      if (v8)
      {
        free(v8);
        *(v4 + 24) = 0;
      }

      v9 = *(v4 + 16);
      if (v9)
      {
        free(v9);
      }

      free(v4);
    }

LABEL_17:
    ++v3;
  }

  while (v3 < *a1);
  v2 = a1[2];
  if (v2)
  {
LABEL_19:
    free(v2);
  }

LABEL_20:
  free(a1);
}

_WORD *cti_service_create_(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, int a10, int a11)
{
  v19 = malloc_type_calloc(1uLL, 0x38uLL, 0x2EDB8B90uLL);
  if (!v19)
  {
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "cti_service_create_";
      v30 = 2048;
      *v31 = 1;
      *&v31[8] = 2048;
      *&v31[10] = 56;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v28, 0x20u);
    }

    __break(1u);
  }

  v20 = v19;
  *v19 = a1;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a2;
  *(v19 + 2) = a5;
  *(v19 + 3) = a7;
  *(v19 + 4) = a6;
  *(v19 + 5) = a8;
  v19[7] = a9;
  *(v19 + 13) = a10;
  v21 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(v20 + 12);
    v28 = 136447490;
    v29 = "cti_service_create_";
    v30 = 1024;
    *v31 = v22;
    *&v31[4] = 2048;
    *&v31[6] = v20;
    *&v31[14] = 2080;
    *&v31[16] = "service";
    v32 = 2080;
    v33 = "cti-services.c";
    v34 = 1024;
    v35 = a11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v28, 0x36u);
  }

  v23 = *(v20 + 12);
  if (v23)
  {
    v24 = v23 + 1;
    *(v20 + 12) = v23 + 1;
    if (v23 + 1 >= 10001)
    {
      v25 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v28 = 136447490;
        v29 = "cti_service_create_";
        v30 = 1024;
        *v31 = v24;
        *&v31[4] = 2048;
        *&v31[6] = v20;
        *&v31[14] = 2080;
        *&v31[16] = "service";
        v32 = 2080;
        v33 = "cti-services.c";
        v34 = 1024;
        v35 = a11;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v28, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++cti_service_created;
    *(v20 + 12) = 1;
  }

  return v20;
}

void cti_internal_service_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 8);
  v5 = &unk_1000A9000;
  if (a3)
  {
    v6 = a3;
    goto LABEL_5;
  }

  xdict = 0;
  v7 = cti_event_or_response_extract(a2, &xdict);
  if (v7)
  {
    v6 = v7;
    goto LABEL_5;
  }

  array = xpc_dictionary_get_array(xdict, "value");
  if (!array)
  {
    v61 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(v3 + 80);
      *buf = 136446466;
      v82 = "cti_internal_service_reply_callback";
      v83 = 1024;
      *v84 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] services array not present in Thread:Services event.", buf, 0x12u);
    }

    v8 = 0;
    goto LABEL_122;
  }

  v68 = array;
  count = xpc_array_get_count(array);
  v16 = cti_service_vec_create_(count, 1592);
  v8 = v16;
  v67 = count;
  if (!count)
  {
LABEL_122:
    v6 = 0;
    goto LABEL_6;
  }

  v64 = v3;
  v65 = v4;
  v66 = v16;
  v17 = 0;
  v73 = 0;
  v19 = count;
  v18 = v68;
  do
  {
    value = xpc_array_get_value(v18, v17);
    v79 = 0;
    v80 = 0;
    if (value)
    {
      v21 = value;
      v22 = xpc_array_get_count(value);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v69 = 0;
        int64 = 0;
        v76 = 0;
        v77 = 0;
        v71 = 0;
        v74 = 0;
        uint64 = 0;
        v72 = 0;
        v75 = 0;
        while (1)
        {
          v28 = xpc_array_get_value(v21, v23);
          if (!v28)
          {
            v5 = &unk_1000A9000;
            v44 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_102;
            }

            *buf = 136446722;
            v82 = "cti_parse_services_array";
            v83 = 2048;
            *v84 = v17;
            *&v84[8] = 2048;
            *&v84[10] = v23;
            v45 = v44;
            v46 = "%{public}s: can't get service_array %zd subdictionary %zd";
            goto LABEL_75;
          }

          v29 = v28;
          string = xpc_dictionary_get_string(v28, "key");
          if (!string)
          {
            v5 = &unk_1000A9000;
            v47 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_102;
            }

            *buf = 136446722;
            v82 = "cti_parse_services_array";
            v83 = 2048;
            *v84 = v17;
            *&v84[8] = 2048;
            *&v84[10] = v23;
            v45 = v47;
            v46 = "%{public}s: Invalid services array %zd subdictionary %zd: no key";
LABEL_75:
            v48 = 32;
            goto LABEL_101;
          }

          v31 = string;
          if (!strcmp(string, "EnterpriseNumber"))
          {
            if (v25)
            {
              v5 = &unk_1000A9000;
              v51 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v51;
              v46 = "%{public}s: services array %zd: Enterprise number appears twice.";
              goto LABEL_100;
            }

            uint64 = xpc_dictionary_get_uint64(v29, "value");
            v25 = 1;
          }

          else if (!strcmp(v31, "Origin"))
          {
            if (v26)
            {
              v5 = &unk_1000A9000;
              v52 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v52;
              v46 = "%{public}s: Services array %zd: Origin appears twice.";
              goto LABEL_100;
            }

            v33 = xpc_dictionary_get_string(v29, "value");
            if (!v33)
            {
              v5 = &unk_1000A9000;
              v53 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v53;
              v46 = "%{public}s: Unable to get origin string from services array %zd";
              goto LABEL_100;
            }

            v34 = v33;
            if (strcmp(v33, "user"))
            {
              if (strcmp(v34, "ncp"))
              {
                v5 = &unk_1000A9000;
                v55 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_102;
                }

                *buf = 136446466;
                v82 = "cti_parse_services_array";
                v83 = 2082;
                *v84 = v34;
                v45 = v55;
                v46 = "%{public}s: unknown origin %{public}s";
                goto LABEL_100;
              }

              HIDWORD(v77) |= 2u;
            }

            v26 = 1;
          }

          else if (!strcmp(v31, "ServerData"))
          {
            if (v77)
            {
              v5 = &unk_1000A9000;
              v54 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v54;
              v46 = "%{public}s: Services array %zd: Server data appears twice.";
              goto LABEL_100;
            }

            v35 = xpc_dictionary_get_array(v29, "value");
            cti_array_to_bytes(v35, &v80);
            v76 = v36;
            LOBYTE(v77) = 1;
          }

          else if (!strcmp(v31, "ServiceData"))
          {
            if (v71)
            {
              v5 = &unk_1000A9000;
              v56 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v56;
              v46 = "%{public}s: Services array %zd: Service data appears twice.";
              goto LABEL_100;
            }

            v37 = xpc_dictionary_get_array(v29, "value");
            cti_array_to_bytes(v37, &v79);
            v75 = v38;
            v71 = 1;
          }

          else if (!strcmp(v31, "Stable"))
          {
            if ((v69 & 0x100000000) != 0)
            {
              v5 = &unk_1000A9000;
              v57 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

LABEL_99:
              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v17;
              v45 = v57;
              v46 = "%{public}s: Services array %zd: Stable state appears twice.";
LABEL_100:
              v48 = 22;
LABEL_101:
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v46, buf, v48);
              goto LABEL_102;
            }

            HIDWORD(v77) |= xpc_dictionary_get_BOOL(v29, "value");
            BYTE4(v69) = 1;
          }

          else if (!strcmp(v31, "RLOC16"))
          {
            if (v69)
            {
              v5 = &unk_1000A9000;
              v57 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_102;
              }

              goto LABEL_99;
            }

            v72 = xpc_dictionary_get_uint64(v29, "value");
            LOBYTE(v69) = 1;
          }

          else
          {
            if (strcmp(v31, "ServiceId"))
            {
              v32 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                v82 = "cti_parse_services_array";
                v83 = 2048;
                *v84 = v17;
                *&v84[8] = 2048;
                *&v84[10] = v23;
                *&v84[18] = 2082;
                *&v84[20] = v31;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Unknown key in service array %zd subdictionary %zd: %{public}s", buf, 0x2Au);
              }

              goto LABEL_56;
            }

            if (v74)
            {
              v5 = &unk_1000A9000;
              v57 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_99;
              }

LABEL_102:
              v19 = v67;
              v18 = v68;
              v22 = v75;
              v39 = v76;
              goto LABEL_103;
            }

            int64 = xpc_dictionary_get_int64(v29, "value");
            v74 = 1;
          }

          ++v24;
LABEL_56:
          if (v22 == ++v23)
          {
            v5 = &unk_1000A9000;
            v19 = v67;
            v18 = v68;
            v22 = v75;
            v39 = v76;
            if (v24 != 7)
            {
              goto LABEL_62;
            }

            goto LABEL_66;
          }
        }
      }

      v24 = 0;
      v74 = 0;
      uint64 = 0;
      v72 = 0;
      v39 = 0;
      HIDWORD(v77) = 0;
      int64 = 0;
      v5 = &unk_1000A9000;
LABEL_62:
      v41 = *(v5 + 22);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v82 = "cti_parse_services_array";
        v83 = 1024;
        *v84 = 7;
        *&v84[4] = 2048;
        *&v84[6] = v17;
        *&v84[14] = 1024;
        *&v84[16] = v24;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s: expecting %d sub-dictionaries to service array %zd, but got %d.", buf, 0x22u);
      }

      if (v24 >= 6 && ((v24 == 6) & v74) == 0)
      {
LABEL_66:
        v42 = v79;
        if (uint64 == 63)
        {
          if (v79 != 1)
          {
            v43 = *(v5 + 22);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_81;
            }

            goto LABEL_82;
          }
        }

        else
        {
          if (uint64 != 44970)
          {
            goto LABEL_82;
          }

          if ((v79 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v43 = *(v5 + 22);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
LABEL_81:
              *buf = 136446466;
              v82 = "cti_parse_services_array";
              v83 = 2048;
              *v84 = v42;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalid service data: length = %zd", buf, 0x16u);
            }

LABEL_82:
            v49 = 0;
            v50 = 0;
LABEL_83:
            *(v66[2] + 8 * v17) = cti_service_create_(uint64, v72, v49, v50, v22, v42, v39, v80, int64, SHIDWORD(v77), 1743);
            goto LABEL_109;
          }
        }

        v49 = *v22;
        v50 = 1;
        goto LABEL_83;
      }

LABEL_103:
      v58 = v73;
      if (!v73)
      {
        v58 = -65537;
      }

      v73 = v58;
      if (v39)
      {
        free(v39);
      }

      if (v22)
      {
        free(v22);
      }
    }

    else
    {
      v40 = *(v5 + 22);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v82 = "cti_parse_services_array";
        v83 = 2048;
        *v84 = v17;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s: Unable to get service array %zd", buf, 0x16u);
      }
    }

LABEL_109:
    ++v17;
  }

  while (v17 != v19);
  v3 = v64;
  v4 = v65;
  v6 = v73;
  if (!v73)
  {
    v8 = v66;
    goto LABEL_6;
  }

  v59 = *(v66 + 2);
  if (!v59)
  {
    v12 = *(v5 + 22);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *buf = 136447490;
    v82 = "cti_parse_services_array";
    v83 = 1024;
    *v84 = 0;
    *&v84[4] = 2048;
    *&v84[6] = v66;
    *&v84[14] = 2080;
    *&v84[16] = "service_vec";
    *&v84[24] = 2080;
    *&v84[26] = "cti-services.c";
    v85 = 1024;
    v86 = 1766;
    v63 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_128;
  }

  v12 = *(v5 + 22);
  if (v59 >= 10001)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *buf = 136447490;
    v82 = "cti_parse_services_array";
    v83 = 1024;
    *v84 = v59;
    *&v84[4] = 2048;
    *&v84[6] = v66;
    *&v84[14] = 2080;
    *&v84[16] = "service_vec";
    *&v84[24] = 2080;
    *&v84[26] = "cti-services.c";
    v85 = 1024;
    v86 = 1766;
    v63 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_128:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v63, buf, 0x36u);
    goto LABEL_129;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v82 = "cti_parse_services_array";
    v83 = 1024;
    *v84 = v59;
    *&v84[4] = 2048;
    *&v84[6] = v66;
    *&v84[14] = 2080;
    *&v84[16] = "service_vec";
    *&v84[24] = 2080;
    *&v84[26] = "cti-services.c";
    v85 = 1024;
    v86 = 1766;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v59 = *(v66 + 2);
  }

  *(v66 + 2) = v59 - 1;
  if (v59 == 1)
  {
    v60 = *(v5 + 22);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v82 = "cti_parse_services_array";
      v83 = 2048;
      *v84 = v66;
      *&v84[8] = 2080;
      *&v84[10] = "service_vec";
      *&v84[18] = 2080;
      *&v84[20] = "cti-services.c";
      *&v84[28] = 1024;
      *&v84[30] = 1766;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_service_vec_finalized;
    cti_service_vec_finalize(v66);
  }

LABEL_5:
  v8 = 0;
LABEL_6:
  if (v4)
  {
    v9 = *(v5 + 22);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v3 + 80);
      *buf = 136446722;
      v82 = "cti_internal_service_reply_callback";
      v83 = 1024;
      *v84 = v10;
      *&v84[4] = 2048;
      *&v84[6] = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(v3 + 64), v8, v6);
  }

  if (v8)
  {
    v11 = *(v8 + 2);
    if (v11)
    {
      v12 = *(v5 + 22);
      if (v11 < 10001)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v82 = "cti_internal_service_reply_callback";
          v83 = 1024;
          *v84 = v11;
          *&v84[4] = 2048;
          *&v84[6] = v8;
          *&v84[14] = 2080;
          *&v84[16] = "vec";
          *&v84[24] = 2080;
          *&v84[26] = "cti-services.c";
          v85 = 1024;
          v86 = 1796;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v11 = *(v8 + 2);
        }

        *(v8 + 2) = v11 - 1;
        if (v11 == 1)
        {
          v13 = *(v5 + 22);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v82 = "cti_internal_service_reply_callback";
            v83 = 2048;
            *v84 = v8;
            *&v84[8] = 2080;
            *&v84[10] = "vec";
            *&v84[18] = 2080;
            *&v84[20] = "cti-services.c";
            *&v84[28] = 1024;
            *&v84[30] = 1796;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++cti_service_vec_finalized;
          cti_service_vec_finalize(v8);
        }

        return;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v82 = "cti_internal_service_reply_callback";
        v83 = 1024;
        *v84 = v11;
        *&v84[4] = 2048;
        *&v84[6] = v8;
        *&v84[14] = 2080;
        *&v84[16] = "vec";
        *&v84[24] = 2080;
        *&v84[26] = "cti-services.c";
        v85 = 1024;
        v86 = 1796;
        v63 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_128;
      }
    }

    else
    {
      v12 = *(v5 + 22);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v82 = "cti_internal_service_reply_callback";
        v83 = 1024;
        *v84 = 0;
        *&v84[4] = 2048;
        *&v84[6] = v8;
        *&v84[14] = 2080;
        *&v84[16] = "vec";
        *&v84[24] = 2080;
        *&v84[26] = "cti-services.c";
        v85 = 1024;
        v86 = 1796;
        v63 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_128;
      }
    }

LABEL_129:
    abort();
  }
}

void cti_array_to_bytes(void *a1, size_t *a2)
{
  count = xpc_array_get_count(a1);
  v5 = count;
  if (count)
  {
    v6 = malloc_type_malloc(count, 0xE4807F95uLL);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v7[v8] = xpc_array_get_uint64(a1, v8);
        ++v8;
      }

      while (v5 != v8);
      goto LABEL_7;
    }

    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446210;
      v11 = "cti_array_to_bytes";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: strict allocator failed", &v10, 0xCu);
    }
  }

  else
  {
    if (malloc_type_malloc(1uLL, 0xC3292786uLL))
    {
LABEL_7:
      *a2 = v5;
      return;
    }

    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446210;
      v11 = "cti_array_to_bytes";
      goto LABEL_12;
    }
  }

  __break(1u);
}

size_t *cti_prefix_vec_create_(size_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xED7405A7uLL);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  if (a1)
  {
    if (a1 >> 61)
    {
      v13 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v20 = "cti_prefix_vec_create_";
      i = "%{public}s: strict_calloc count * size would overflow";
      v15 = v13;
      v16 = 12;
      goto LABEL_17;
    }

    v6 = malloc_type_calloc(a1, 8uLL, 0xB092E57BuLL);
    if (!v6)
    {
      v17 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136446722;
      v20 = "cti_prefix_vec_create_";
      v21 = 2048;
      *v22 = a1;
      *&v22[8] = 2048;
      *&v22[10] = 8;
      for (i = "%{public}s: strict_calloc(%zu, %zu) failed"; ; i = "%{public}s: strict_calloc(%zu, %zu) failed")
      {
        v15 = v17;
        v16 = 32;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, i, buf, v16);
        do
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v17 = global_os_log;
        }

        while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
        *buf = 136446722;
        v20 = "cti_prefix_vec_create_";
        v21 = 2048;
        *v22 = 1;
        *&v22[8] = 2048;
        *&v22[10] = 24;
      }
    }

    v5[2] = v6;
  }

  *v5 = a1;
  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v5 + 2);
    *buf = 136447490;
    v20 = "cti_prefix_vec_create_";
    v21 = 1024;
    *v22 = v8;
    *&v22[4] = 2048;
    *&v22[6] = v5;
    *&v22[14] = 2080;
    *&v22[16] = "prefixes";
    v23 = 2080;
    v24 = "cti-services.c";
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v9 = *(v5 + 2);
  if (v9)
  {
    v10 = v9 + 1;
    *(v5 + 2) = v10;
    if (v10 >= 10001)
    {
      v18 = v10;
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v20 = "cti_prefix_vec_create_";
        v21 = 1024;
        *v22 = v18;
        *&v22[4] = 2048;
        *&v22[6] = v5;
        *&v22[14] = 2080;
        *&v22[16] = "prefixes";
        v23 = 2080;
        v24 = "cti-services.c";
        v25 = 1024;
        v26 = a2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++cti_prefix_vec_created;
    *(v5 + 2) = 1;
  }

  return v5;
}

void cti_prefix_vec_finalize(unint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_18;
  }

  if (!*a1)
  {
    goto LABEL_17;
  }

  v3 = 0;
  do
  {
    v4 = *(a1[2] + 8 * v3);
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = v4[10];
    if (!v5)
    {
      v8 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 136447490;
      v12 = "cti_prefix_vec_finalize";
      v13 = 1024;
      *v14 = 0;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "prefixes->prefixes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 1838;
      v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v10 = v8;
      goto LABEL_23;
    }

    v6 = global_os_log;
    if (v5 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 136447490;
      v12 = "cti_prefix_vec_finalize";
      v13 = 1024;
      *v14 = v5;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "prefixes->prefixes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 1838;
      v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v10 = v6;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v9, buf, 0x36u);
LABEL_24:
      abort();
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v12 = "cti_prefix_vec_finalize";
      v13 = 1024;
      *v14 = v5;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "prefixes->prefixes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 1838;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v4 = *(a1[2] + 8 * v3);
      v5 = v4[10];
    }

    v4[10] = v5 - 1;
    if (v5 == 1)
    {
      v7 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        ++cti_prefix_finalized;
LABEL_14:
        free(v4);
        goto LABEL_15;
      }

      *buf = 136447234;
      v12 = "cti_prefix_vec_finalize";
      v13 = 2048;
      *v14 = v4;
      *&v14[8] = 2080;
      *&v14[10] = "prefixes->prefixes[i]";
      *&v14[18] = 2080;
      *&v14[20] = "cti-services.c";
      *&v14[28] = 1024;
      *&v14[30] = 1838;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      v4 = *(a1[2] + 8 * v3);
      ++cti_prefix_finalized;
      if (v4)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v3;
  }

  while (v3 < *a1);
  v2 = a1[2];
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  free(a1);
}

_DWORD *cti_prefix_create_(_OWORD *a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8, int a9, int a10, int a11)
{
  v19 = malloc_type_calloc(1uLL, 0x2CuLL, 0x9543BF73uLL);
  if (!v19)
  {
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "cti_prefix_create_";
      v30 = 2048;
      *v31 = 1;
      *&v31[8] = 2048;
      *&v31[10] = 44;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v28, 0x20u);
    }

    __break(1u);
  }

  v20 = v19;
  if (a1)
  {
    *v19 = *a1;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = a4;
    v19[7] = a5;
    *(v19 + 32) = a6;
    *(v19 + 33) = a7;
    *(v19 + 34) = a8;
    v19[9] = a9;
    v21 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20[10];
      v28 = 136447490;
      v29 = "cti_prefix_create_";
      v30 = 1024;
      *v31 = v22;
      *&v31[4] = 2048;
      *&v31[6] = v20;
      *&v31[14] = 2080;
      *&v31[16] = "prefix_ret";
      v32 = 2080;
      v33 = "cti-services.c";
      v34 = 1024;
      v35 = a11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v28, 0x36u);
    }

    v23 = v20[10];
    if (v23)
    {
      v24 = v23 + 1;
      v20[10] = v23 + 1;
      if (v23 + 1 >= 10001)
      {
        v25 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v28 = 136447490;
          v29 = "cti_prefix_create_";
          v30 = 1024;
          *v31 = v24;
          *&v31[4] = 2048;
          *&v31[6] = v20;
          *&v31[14] = 2080;
          *&v31[16] = "prefix_ret";
          v32 = 2080;
          v33 = "cti-services.c";
          v34 = 1024;
          v35 = a11;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v28, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++cti_prefix_created;
      v20[10] = 1;
    }
  }

  return v20;
}

void cti_internal_prefix_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 8);
  xdict = 0;
  if (a3)
  {
    v5 = a3;
    goto LABEL_5;
  }

  v6 = cti_event_or_response_extract(a2, &xdict);
  if (v6)
  {
    v5 = v6;
    goto LABEL_5;
  }

  array = xpc_dictionary_get_array(xdict, "value");
  if (!array)
  {
    v55 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v69 = "cti_internal_prefix_reply_callback";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: prefixes array not present in IPv6:Routes event.", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_86;
  }

  v16 = array;
  count = xpc_array_get_count(array);
  v18 = cti_prefix_vec_create_(count, 1909);
  v7 = v18;
  if (!count)
  {
LABEL_86:
    v5 = 0;
    goto LABEL_6;
  }

  v59 = v3;
  v60 = v18;
  v19 = 0;
  v5 = 0;
  v63 = v16;
  v64 = v4;
  v62 = count;
  do
  {
    value = xpc_array_get_value(v16, v19);
    v67 = 0uLL;
    if (!value)
    {
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v69 = "cti_parse_prefixes_array";
        v70 = 2048;
        *v71 = v19;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s: Unable to get prefix array %zu", buf, 0x16u);
      }

      goto LABEL_65;
    }

    v21 = value;
    v22 = xpc_array_get_count(value);
    if (!v22)
    {
LABEL_46:
      v37 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v69 = "cti_parse_prefixes_array";
        v70 = 1024;
        *v71 = 2;
        *&v71[4] = 2048;
        *&v71[6] = v19;
        *&v71[14] = 1024;
        *&v71[16] = v22;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s: expecting %d sub-dictionaries to prefix array %zu, but got %d.", buf, 0x22u);
      }

      v5 = 4294901759;
      goto LABEL_65;
    }

    v61 = v5;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    uint64 = 0;
    do
    {
      v28 = xpc_array_get_value(v21, v23);
      if (!v28)
      {
        v38 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446722;
        v69 = "cti_parse_prefixes_array";
        v70 = 2048;
        *v71 = v19;
        *&v71[8] = 2048;
        *&v71[10] = v23;
        v39 = v38;
        v40 = OS_LOG_TYPE_ERROR;
        v41 = "%{public}s: can't get prefix_array %zu subdictionary %zu";
        goto LABEL_53;
      }

      v29 = v28;
      string = xpc_dictionary_get_string(v28, "key");
      if (!string)
      {
        v42 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446722;
        v69 = "cti_parse_prefixes_array";
        v70 = 2048;
        *v71 = v19;
        *&v71[8] = 2048;
        *&v71[10] = v23;
        v39 = v42;
        v40 = OS_LOG_TYPE_ERROR;
        v41 = "%{public}s: Invalid prefixes array %zu subdictionary %zu: no key";
LABEL_53:
        v43 = 32;
        goto LABEL_63;
      }

      v31 = string;
      if (strcmp(string, "Addreess") && strcmp(v31, "Address"))
      {
        if (!strcmp(v31, "Metric"))
        {
          if ((v25 & 1) == 0)
          {
            uint64 = xpc_dictionary_get_uint64(v29, "value");
            v25 = 1;
            goto LABEL_38;
          }

          v47 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v69 = "cti_parse_prefixes_array";
            v70 = 2048;
            *v71 = v19;
            v39 = v47;
            v40 = OS_LOG_TYPE_ERROR;
            v41 = "%{public}s: prefixes array %zu: Metric appears twice.";
            goto LABEL_62;
          }

          goto LABEL_64;
        }

        v46 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446978;
        v69 = "cti_parse_prefixes_array";
        v70 = 2048;
        *v71 = v19;
        *&v71[8] = 2048;
        *&v71[10] = v23;
        *&v71[18] = 2082;
        *&v71[20] = v31;
        v39 = v46;
        v40 = OS_LOG_TYPE_ERROR;
        v41 = "%{public}s: Unknown key in prefix array %zu subdictionary %zu: %{public}s";
        v43 = 42;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v39, v40, v41, buf, v43);
        goto LABEL_64;
      }

      if (v24)
      {
        v44 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v69 = "cti_parse_prefixes_array";
          v70 = 2048;
          *v71 = v19;
          v39 = v44;
          v40 = OS_LOG_TYPE_ERROR;
          v41 = "%{public}s: prefixes array %zu: Address appears twice.";
LABEL_62:
          v43 = 22;
          goto LABEL_63;
        }

LABEL_64:
        v5 = 4294901759;
        v16 = v63;
        v4 = v64;
        count = v62;
        goto LABEL_65;
      }

      v32 = xpc_dictionary_get_string(v29, "value");
      if (!v32)
      {
        v45 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        *buf = 136446210;
        v69 = "cti_parse_prefixes_array";
        v39 = v45;
        v40 = OS_LOG_TYPE_DEFAULT;
        v41 = "%{public}s: null address";
        v43 = 12;
        goto LABEL_63;
      }

      v26 = v32;
      v24 = 1;
LABEL_38:
      ++v23;
    }

    while (v22 != v23);
    v16 = v63;
    v4 = v64;
    count = v62;
    if (v22 != 2)
    {
      goto LABEL_46;
    }

    v33 = strchr(v26, 47);
    v34 = v33 - v26;
    if ((v33 - v26) < 0x2D)
    {
      v48 = v33;
      __memcpy_chk();
      v74[v34] = 0;
      inet_pton(30, v74, &v67);
      __endptr = 0;
      v49 = strtol(++v48, &__endptr, 10);
      if (__endptr == v48 || *__endptr)
      {
        v50 = global_os_log;
        v4 = v64;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v69 = "cti_parse_prefixes_array";
          v70 = 2082;
          *v71 = v26;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: bogus prefix length provided by thread: %{public}s", buf, 0x16u);
        }

        v51 = 64;
      }

      else
      {
        v51 = v49;
        v4 = v64;
      }

      v58 &= 0xFFFFFFFF00000000;
      *(v60[2] + 8 * v19) = cti_prefix_create_(&v67, v51, uint64, 0, 0, 0, 0, 0, v58, SHIDWORD(v58), 1996);
      v5 = v61;
    }

    else
    {
      v35 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v69 = "cti_parse_prefixes_array";
        v70 = 2048;
        *v71 = v22;
        *&v71[8] = 2082;
        *&v71[10] = v26;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s: prefixes array %zu: destination is longer than maximum IPv6 address string: %{public}s", buf, 0x20u);
      }

      v5 = 4294901759;
      v4 = v64;
    }

LABEL_65:
    ++v19;
  }

  while (v19 != count);
  v3 = v59;
  if (!v5)
  {
    v7 = v60;
    goto LABEL_6;
  }

  v52 = *(v60 + 2);
  if (!v52)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_94;
    }

    *buf = 136447490;
    v69 = "cti_parse_prefixes_array";
    v70 = 1024;
    *v71 = 0;
    *&v71[4] = 2048;
    *&v71[6] = v60;
    *&v71[14] = 2080;
    *&v71[16] = "prefixes";
    *&v71[24] = 2080;
    *&v71[26] = "cti-services.c";
    v72 = 1024;
    v73 = 2010;
    v56 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_92:
    v57 = v13;
    goto LABEL_93;
  }

  v53 = global_os_log;
  if (v52 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_94;
    }

    *buf = 136447490;
    v69 = "cti_parse_prefixes_array";
    v70 = 1024;
    *v71 = v52;
    *&v71[4] = 2048;
    *&v71[6] = v60;
    *&v71[14] = 2080;
    *&v71[16] = "prefixes";
    *&v71[24] = 2080;
    *&v71[26] = "cti-services.c";
    v72 = 1024;
    v73 = 2010;
    v56 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v57 = v53;
LABEL_93:
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, v56, buf, 0x36u);
    goto LABEL_94;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v69 = "cti_parse_prefixes_array";
    v70 = 1024;
    *v71 = v52;
    *&v71[4] = 2048;
    *&v71[6] = v60;
    *&v71[14] = 2080;
    *&v71[16] = "prefixes";
    *&v71[24] = 2080;
    *&v71[26] = "cti-services.c";
    v72 = 1024;
    v73 = 2010;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v52 = *(v60 + 2);
  }

  *(v60 + 2) = v52 - 1;
  if (v52 == 1)
  {
    v54 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v69 = "cti_parse_prefixes_array";
      v70 = 2048;
      *v71 = v60;
      *&v71[8] = 2080;
      *&v71[10] = "prefixes";
      *&v71[18] = 2080;
      *&v71[20] = "cti-services.c";
      *&v71[28] = 1024;
      *&v71[30] = 2010;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_prefix_vec_finalized;
    cti_prefix_vec_finalize(v60);
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  v8 = global_os_log;
  v9 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v9)
    {
      v10 = *(v3 + 80);
      *buf = 136446722;
      v69 = "cti_internal_prefix_reply_callback";
      v70 = 1024;
      *v71 = v10;
      *&v71[4] = 2048;
      *&v71[6] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(v3 + 64), v7, v5);
  }

  else if (v9)
  {
    v11 = *(v3 + 80);
    *buf = 136446466;
    v69 = "cti_internal_prefix_reply_callback";
    v70 = 1024;
    *v71 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] Not calling callback.", buf, 0x12u);
  }

  if (v7)
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = global_os_log;
      if (v12 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v69 = "cti_internal_prefix_reply_callback";
          v70 = 1024;
          *v71 = v12;
          *&v71[4] = 2048;
          *&v71[6] = v7;
          *&v71[14] = 2080;
          *&v71[16] = "vec";
          *&v71[24] = 2080;
          *&v71[26] = "cti-services.c";
          v72 = 1024;
          v73 = 2042;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v12 = *(v7 + 2);
        }

        *(v7 + 2) = v12 - 1;
        if (v12 == 1)
        {
          v14 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v69 = "cti_internal_prefix_reply_callback";
            v70 = 2048;
            *v71 = v7;
            *&v71[8] = 2080;
            *&v71[10] = "vec";
            *&v71[18] = 2080;
            *&v71[20] = "cti-services.c";
            *&v71[28] = 1024;
            *&v71[30] = 2042;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++cti_prefix_vec_finalized;
          cti_prefix_vec_finalize(v7);
        }

        return;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v69 = "cti_internal_prefix_reply_callback";
        v70 = 1024;
        *v71 = v12;
        *&v71[4] = 2048;
        *&v71[6] = v7;
        *&v71[14] = 2080;
        *&v71[16] = "vec";
        *&v71[24] = 2080;
        *&v71[26] = "cti-services.c";
        v72 = 1024;
        v73 = 2042;
        v56 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_92;
      }
    }

    else
    {
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v69 = "cti_internal_prefix_reply_callback";
        v70 = 1024;
        *v71 = 0;
        *&v71[4] = 2048;
        *&v71[6] = v7;
        *&v71[14] = 2080;
        *&v71[16] = "vec";
        *&v71[24] = 2080;
        *&v71[26] = "cti-services.c";
        v72 = 1024;
        v73 = 2042;
        v56 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_92;
      }
    }

LABEL_94:
    abort();
  }
}

void cti_route_vec_finalize(unint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_18;
  }

  if (!*a1)
  {
    goto LABEL_17;
  }

  v3 = 0;
  do
  {
    v4 = *(a1[2] + 8 * v3);
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = v4[10];
    if (!v5)
    {
      v8 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 136447490;
      v12 = "cti_route_vec_finalize";
      v13 = 1024;
      *v14 = 0;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "routes->routes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 2084;
      v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v10 = v8;
      goto LABEL_23;
    }

    v6 = global_os_log;
    if (v5 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 136447490;
      v12 = "cti_route_vec_finalize";
      v13 = 1024;
      *v14 = v5;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "routes->routes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 2084;
      v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v10 = v6;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v9, buf, 0x36u);
LABEL_24:
      abort();
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v12 = "cti_route_vec_finalize";
      v13 = 1024;
      *v14 = v5;
      *&v14[4] = 2048;
      *&v14[6] = v4;
      *&v14[14] = 2080;
      *&v14[16] = "routes->routes[i]";
      *&v14[24] = 2080;
      *&v14[26] = "cti-services.c";
      v15 = 1024;
      v16 = 2084;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v4 = *(a1[2] + 8 * v3);
      v5 = v4[10];
    }

    v4[10] = v5 - 1;
    if (v5 == 1)
    {
      v7 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        ++cti_route_finalized;
LABEL_14:
        free(v4);
        goto LABEL_15;
      }

      *buf = 136447234;
      v12 = "cti_route_vec_finalize";
      v13 = 2048;
      *v14 = v4;
      *&v14[8] = 2080;
      *&v14[10] = "routes->routes[i]";
      *&v14[18] = 2080;
      *&v14[20] = "cti-services.c";
      *&v14[28] = 1024;
      *&v14[30] = 2084;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      v4 = *(a1[2] + 8 * v3);
      ++cti_route_finalized;
      if (v4)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v3;
  }

  while (v3 < *a1);
  v2 = a1[2];
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  free(a1);
}

uint64_t cti_track_network_data_(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v10, "path", "/org/wpantund/utun2");
  v11 = setup_for_command(a1, "track_thread_network_data", "Thread:NetworkData", 0, v10, a2, a3, cti_internal_thread_netdata_reply_callback, 1, a4, a5);
  v12 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "cti_track_network_data_";
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: result %d", buf, 0x12u);
  }

  if (v10)
  {
    xpc_release(v10);
  }

  return v11;
}

void cti_internal_thread_netdata_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v63 = 0u;
  v64 = 0u;
  if (a3)
  {
    netdata_from_thread_tlvs = a3;
LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  v62 = 0;
  v7 = cti_event_or_response_extract(a2, &v62);
  if (v7)
  {
    netdata_from_thread_tlvs = v7;
    goto LABEL_30;
  }

  xdict = 0;
  netdata_from_thread_tlvs = cti_event_or_response_extract(a2, &xdict);
  v8 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    *v67 = 1024;
    *&v67[2] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] got a response for thread network data", buf, 0x12u);
  }

  if (netdata_from_thread_tlvs)
  {
    goto LABEL_30;
  }

  array = xpc_dictionary_get_array(xdict, "value");
  if (!array)
  {
    v15 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v16 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    *v67 = 1024;
    *&v67[2] = v16;
    v14 = "%{public}s: [CX%d] value field not present in Thread NetworkData reply";
LABEL_15:
    v17 = v15;
    v18 = 18;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v14, buf, v18);
    goto LABEL_29;
  }

  v11 = array;
  if (!xpc_array_get_count(array))
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "cti_extract_thread_network_data_reply";
      v14 = "%{public}s: received an empty array in the Thread NetworkData reply";
      goto LABEL_27;
    }

LABEL_29:
    netdata_from_thread_tlvs = 4294901759;
    goto LABEL_30;
  }

  value = xpc_array_get_value(v11, 0);
  if (xpc_get_type(value) != &_xpc_type_array)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "cti_extract_thread_network_data_reply";
      v14 = "%{public}s: non-dictionary element of value array";
LABEL_27:
      v17 = v13;
      v18 = 12;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (xpc_array_get_count(value) != 4)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "cti_extract_thread_network_data_reply";
      v14 = "%{public}s: response array does not have the required format (should have exactly 4 entries)";
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  dictionary = xpc_array_get_dictionary(value, 0);
  if (!dictionary)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "cti_extract_thread_network_data_reply";
      v14 = "%{public}s: response array does not have the required format (entry 0 should be a dictionary)";
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v20 = dictionary;
  string = xpc_dictionary_get_string(dictionary, "key");
  if (strcmp("aThreadVersion", string))
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "cti_extract_thread_network_data_reply";
      v14 = "%{public}s: wrong response format: array entry 0 should contain thread data version";
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  int64 = xpc_dictionary_get_int64(v20, "value");
  if (int64 - 3 >= 3)
  {
    v15 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    *v67 = 1024;
    *&v67[2] = 0;
    v14 = "%{public}s: Cound not decode Thread version (recieved version was %d)";
    goto LABEL_15;
  }

  v38 = int64;
  v39 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    *v67 = 1024;
    *&v67[2] = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: received thread version %d", buf, 0x12u);
  }

  v40 = xpc_array_get_dictionary(value, 1uLL);
  if (!v40)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: response array does not have the required format (entry 2 should be a dictionary)";
    goto LABEL_27;
  }

  v41 = v40;
  v42 = xpc_dictionary_get_string(v40, "key");
  if (strcmp("aType", v42) || (v43 = xpc_dictionary_get_string(v41, "value"), strcmp("RAW", v43)))
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: wrong response format: network data should be of RAW type.";
    goto LABEL_27;
  }

  v44 = xpc_array_get_dictionary(value, 2uLL);
  v45 = xpc_dictionary_get_string(v44, "key");
  if (strcmp("aVersion", v45))
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: wrong response format: array entry 2 should contain network data version";
    goto LABEL_27;
  }

  v46 = xpc_array_get_dictionary(value, 3uLL);
  if (!v46)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: response array does not have the required format (entry 3 should be a dictionary)";
    goto LABEL_27;
  }

  v47 = v46;
  v48 = xpc_dictionary_get_string(v46, "key");
  if (strcmp("data", v48))
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: wrong response format: array entry 3 should contain network data";
    goto LABEL_27;
  }

  v49 = xpc_dictionary_get_array(v47, "value");
  if (!v49)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "cti_extract_thread_network_data_reply";
    v14 = "%{public}s: wrong response format: network data should be an array of u8";
    goto LABEL_27;
  }

  v50 = v49;
  count = xpc_array_get_count(v49);
  xdict = count;
  if (count >= 0x100)
  {
    v52 = count;
    v53 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 2048;
      *&v67[2] = v52;
      *&v67[10] = 1024;
      *&v67[12] = 255;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%{public}s: Received invalid network data length (was %lu, but the maximum allowed is %d)", buf, 0x1Cu);
    }

    v22 = 0;
LABEL_93:
    netdata_from_thread_tlvs = 4294901759;
    goto LABEL_31;
  }

  cti_array_to_bytes(v50, &xdict);
  v22 = v54;
  v55 = global_os_log;
  v56 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
  v57 = xdict;
  if (v56)
  {
    *buf = 136446466;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 2048;
    *&v67[2] = xdict;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%{public}s: got %lu bytes of network data", buf, 0x16u);
  }

  if (v57 == 1)
  {
    v58 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 1024;
      *&v67[2] = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s: could not initialize Thread netdata iterator: status %d", buf, 0x12u);
    }

    goto LABEL_93;
  }

  *buf = v22;
  *&buf[8] = v57;
  *&buf[10] = 0;
  *v67 = v38;
  netdata_from_thread_tlvs = cti_get_netdata_from_thread_tlvs(&v63, &v63 + 1, &v64, buf);
  if (!netdata_from_thread_tlvs)
  {
    *(&v64 + 1) = *&buf[8];
  }

LABEL_31:
  v23 = global_os_log;
  v24 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v24)
    {
      v25 = *(a1 + 80);
      *buf = 136446722;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 1024;
      *&v67[2] = v25;
      *&v67[6] = 2048;
      *&v67[8] = a1;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(a1 + 64), &v63, netdata_from_thread_tlvs);
  }

  else if (v24)
  {
    v26 = *(a1 + 80);
    *buf = 136446722;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = v26;
    *&v67[6] = 2048;
    *&v67[8] = a1;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] Not calling callback for %p", buf, 0x1Cu);
  }

  v27 = v63;
  if (v63)
  {
    v28 = *(v63 + 8);
    if (!v28)
    {
      v59 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_116;
      }

      *buf = 136447490;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 1024;
      *&v67[2] = 0;
      *&v67[6] = 2048;
      *&v67[8] = v27;
      *&v67[16] = 2080;
      *&v67[18] = "netdata.prefixes";
      *&v67[26] = 2080;
      *&v67[28] = "cti-services.c";
      v68 = 1024;
      v69 = 2518;
      v60 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_111:
      v61 = v59;
LABEL_115:
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, v60, buf, 0x36u);
LABEL_116:
      abort();
    }

    v29 = global_os_log;
    if (v28 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_116;
      }

      *buf = 136447490;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 1024;
      *&v67[2] = v28;
      *&v67[6] = 2048;
      *&v67[8] = v27;
      *&v67[16] = 2080;
      *&v67[18] = "netdata.prefixes";
      *&v67[26] = 2080;
      *&v67[28] = "cti-services.c";
      v68 = 1024;
      v69 = 2518;
      v60 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_114:
      v61 = v29;
      goto LABEL_115;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 1024;
      *&v67[2] = v28;
      *&v67[6] = 2048;
      *&v67[8] = v27;
      *&v67[16] = 2080;
      *&v67[18] = "netdata.prefixes";
      *&v67[26] = 2080;
      *&v67[28] = "cti-services.c";
      v68 = 1024;
      v69 = 2518;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v27 = v63;
      v28 = *(v63 + 8);
    }

    *(v27 + 8) = v28 - 1;
    if (v28 == 1)
    {
      v30 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "cti_internal_thread_netdata_reply_callback";
        *v67 = 2048;
        *&v67[2] = v27;
        *&v67[10] = 2080;
        *&v67[12] = "netdata.prefixes";
        *&v67[20] = 2080;
        *&v67[22] = "cti-services.c";
        *&v67[30] = 1024;
        *&v67[32] = 2518;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v27 = v63;
      }

      ++cti_prefix_vec_finalized;
      cti_prefix_vec_finalize(v27);
    }
  }

  v31 = *(&v63 + 1);
  if (!*(&v63 + 1))
  {
    goto LABEL_55;
  }

  v32 = *(*(&v63 + 1) + 8);
  if (!v32)
  {
    v59 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_116;
    }

    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = 0;
    *&v67[6] = 2048;
    *&v67[8] = v31;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.offmesh_routes";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2521;
    v60 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_111;
  }

  v29 = global_os_log;
  if (v32 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_116;
    }

    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = v32;
    *&v67[6] = 2048;
    *&v67[8] = v31;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.offmesh_routes";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2521;
    v60 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_114;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = v32;
    *&v67[6] = 2048;
    *&v67[8] = v31;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.offmesh_routes";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2521;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v31 = *(&v63 + 1);
    v32 = *(*(&v63 + 1) + 8);
  }

  *(v31 + 8) = v32 - 1;
  if (v32 == 1)
  {
    v33 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 2048;
      *&v67[2] = v31;
      *&v67[10] = 2080;
      *&v67[12] = "netdata.offmesh_routes";
      *&v67[20] = 2080;
      *&v67[22] = "cti-services.c";
      *&v67[30] = 1024;
      *&v67[32] = 2521;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      v31 = *(&v63 + 1);
    }

    ++cti_route_vec_finalized;
    cti_route_vec_finalize(v31);
  }

LABEL_55:
  v34 = v64;
  if (!v64)
  {
    goto LABEL_64;
  }

  v35 = *(v64 + 8);
  if (!v35)
  {
    v59 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_116;
    }

    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = 0;
    *&v67[6] = 2048;
    *&v67[8] = v34;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.services";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2524;
    v60 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_111;
  }

  v29 = global_os_log;
  if (v35 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_116;
    }

    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = v35;
    *&v67[6] = 2048;
    *&v67[8] = v34;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.services";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2524;
    v60 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_114;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "cti_internal_thread_netdata_reply_callback";
    *v67 = 1024;
    *&v67[2] = v35;
    *&v67[6] = 2048;
    *&v67[8] = v34;
    *&v67[16] = 2080;
    *&v67[18] = "netdata.services";
    *&v67[26] = 2080;
    *&v67[28] = "cti-services.c";
    v68 = 1024;
    v69 = 2524;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v34 = v64;
    v35 = *(v64 + 8);
  }

  *(v34 + 8) = v35 - 1;
  if (v35 == 1)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "cti_internal_thread_netdata_reply_callback";
      *v67 = 2048;
      *&v67[2] = v34;
      *&v67[10] = 2080;
      *&v67[12] = "netdata.services";
      *&v67[20] = 2080;
      *&v67[22] = "cti-services.c";
      *&v67[30] = 1024;
      *&v67[32] = 2524;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      v34 = v64;
    }

    ++cti_service_vec_finalized;
    cti_service_vec_finalize(v34);
  }

LABEL_64:
  if (v22)
  {
    free(v22);
  }
}

uint64_t cti_get_netdata_from_thread_tlvs(size_t **a1, size_t **a2, size_t **a3, uint64_t a4)
{
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v8 = cti_iterate_through_netdata(a4, &v42, 0, &v41, 0, &v40, 0);
  if (v8)
  {
    v9 = v8;
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "cti_get_netdata_from_thread_tlvs";
      v45 = 1024;
      *v46 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: could not get the number of onmesh prefixes from the Thread netdata iterator: %d", buf, 0x12u);
    }

    return v9;
  }

  v11 = cti_prefix_vec_create_(v42, 2400);
  v12 = v41;
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x2A43D609uLL);
  if (!v13)
  {
    v38 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v44 = "cti_route_vec_create_";
      v45 = 2048;
      *v46 = 1;
      *&v46[8] = 2048;
      *&v46[10] = 24;
      v35 = "%{public}s: strict_calloc(%zu, %zu) failed";
LABEL_69:
      v36 = v38;
      v37 = 32;
LABEL_47:
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    }

LABEL_48:
    __break(1u);
  }

  v14 = v13;
  if (!v12)
  {
    goto LABEL_9;
  }

  if (v12 >> 61)
  {
    v34 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v44 = "cti_route_vec_create_";
    v35 = "%{public}s: strict_calloc count * size would overflow";
    v36 = v34;
    v37 = 12;
    goto LABEL_47;
  }

  v15 = malloc_type_calloc(v12, 8uLL, 0x9E1EDF3uLL);
  if (!v15)
  {
    v38 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v44 = "cti_route_vec_create_";
      v45 = 2048;
      *v46 = v12;
      *&v46[8] = 2048;
      *&v46[10] = 8;
      v35 = "%{public}s: strict_calloc(%zu, %zu) failed";
      goto LABEL_69;
    }

    goto LABEL_48;
  }

  v14[2] = v15;
LABEL_9:
  *v14 = v12;
  v16 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v14 + 2);
    *buf = 136447490;
    v44 = "cti_route_vec_create_";
    v45 = 1024;
    *v46 = v17;
    *&v46[4] = 2048;
    *&v46[6] = v14;
    *&v46[14] = 2080;
    *&v46[16] = "routes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2407;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v18 = *(v14 + 2);
  if (v18)
  {
    v19 = v18 + 1;
    *(v14 + 2) = v18 + 1;
    if (v18 + 1 >= 10001)
    {
      v20 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_66;
      }

      *buf = 136447490;
      v44 = "cti_route_vec_create_";
      v45 = 1024;
      *v46 = v19;
      *&v46[4] = 2048;
      *&v46[6] = v14;
      *&v46[14] = 2080;
      *&v46[16] = "routes";
      *&v46[24] = 2080;
      *&v46[26] = "cti-services.c";
      v47 = 1024;
      v48 = 2407;
      v21 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_57:
      v39 = v20;
LABEL_65:
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, v21, buf, 0x36u);
LABEL_66:
      abort();
    }
  }

  else
  {
    ++cti_route_vec_created;
    *(v14 + 2) = 1;
  }

  v22 = cti_service_vec_create_(v40, 2414);
  *(a4 + 10) = 0;
  v9 = cti_iterate_through_netdata(a4, &v42, v11, &v41, v14, &v40, v22);
  if (!v9)
  {
    *a1 = v11;
    *a2 = v14;
    *a3 = v22;
    return v9;
  }

  v23 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v9;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: could not get the Thread netdata information from the TLV iterator: %d", buf, 0x12u);
  }

  v24 = *(v11 + 2);
  if (!v24)
  {
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = 0;
    *&v46[4] = 2048;
    *&v46[6] = v11;
    *&v46[14] = 2080;
    *&v46[16] = "prefixes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2438;
    v21 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_64:
    v39 = v31;
    goto LABEL_65;
  }

  v25 = global_os_log;
  if (v24 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v24;
    *&v46[4] = 2048;
    *&v46[6] = v11;
    *&v46[14] = 2080;
    *&v46[16] = "prefixes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2438;
    v21 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v39 = v25;
    goto LABEL_65;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v24;
    *&v46[4] = 2048;
    *&v46[6] = v11;
    *&v46[14] = 2080;
    *&v46[16] = "prefixes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2438;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v24 = *(v11 + 2);
  }

  *(v11 + 2) = v24 - 1;
  if (v24 == 1)
  {
    v26 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v44 = "cti_get_netdata_from_thread_tlvs";
      v45 = 2048;
      *v46 = v11;
      *&v46[8] = 2080;
      *&v46[10] = "prefixes";
      *&v46[18] = 2080;
      *&v46[20] = "cti-services.c";
      *&v46[28] = 1024;
      *&v46[30] = 2438;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_prefix_vec_finalized;
    cti_prefix_vec_finalize(v11);
  }

  v27 = *(v14 + 2);
  if (!v27)
  {
    v20 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = 0;
    *&v46[4] = 2048;
    *&v46[6] = v14;
    *&v46[14] = 2080;
    *&v46[16] = "routes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2441;
    v21 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_57;
  }

  v28 = global_os_log;
  if (v27 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v27;
    *&v46[4] = 2048;
    *&v46[6] = v14;
    *&v46[14] = 2080;
    *&v46[16] = "routes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2441;
    v21 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v39 = v28;
    goto LABEL_65;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v27;
    *&v46[4] = 2048;
    *&v46[6] = v14;
    *&v46[14] = 2080;
    *&v46[16] = "routes";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2441;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v27 = *(v14 + 2);
  }

  *(v14 + 2) = v27 - 1;
  if (v27 == 1)
  {
    v29 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v44 = "cti_get_netdata_from_thread_tlvs";
      v45 = 2048;
      *v46 = v14;
      *&v46[8] = 2080;
      *&v46[10] = "routes";
      *&v46[18] = 2080;
      *&v46[20] = "cti-services.c";
      *&v46[28] = 1024;
      *&v46[30] = 2441;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_route_vec_finalized;
    cti_route_vec_finalize(v14);
  }

  v30 = *(v22 + 2);
  if (!v30)
  {
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = 0;
    *&v46[4] = 2048;
    *&v46[6] = v22;
    *&v46[14] = 2080;
    *&v46[16] = "services";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2444;
    v21 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_64;
  }

  v31 = global_os_log;
  if (v30 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v30;
    *&v46[4] = 2048;
    *&v46[6] = v22;
    *&v46[14] = 2080;
    *&v46[16] = "services";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2444;
    v21 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_64;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v44 = "cti_get_netdata_from_thread_tlvs";
    v45 = 1024;
    *v46 = v30;
    *&v46[4] = 2048;
    *&v46[6] = v22;
    *&v46[14] = 2080;
    *&v46[16] = "services";
    *&v46[24] = 2080;
    *&v46[26] = "cti-services.c";
    v47 = 1024;
    v48 = 2444;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v30 = *(v22 + 2);
  }

  *(v22 + 2) = v30 - 1;
  if (v30 == 1)
  {
    v32 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v44 = "cti_get_netdata_from_thread_tlvs";
      v45 = 2048;
      *v46 = v22;
      *&v46[8] = 2080;
      *&v46[10] = "services";
      *&v46[18] = 2080;
      *&v46[20] = "cti-services.c";
      *&v46[28] = 1024;
      *&v46[30] = 2444;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_service_vec_finalized;
    cti_service_vec_finalize(v22);
  }

  return v9;
}

uint64_t cti_iterate_through_netdata(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, void *a7)
{
  v8 = a7;
  v9 = a6;
  v113 = (size | 0xC);
  memset(v116, 0, 480);
  *size = 0u;
  *__src = 0u;
  *a2 = 0;
  *a4 = 0;
  *a6 = 0;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v12 = *(a1 + 10);
      v13 = *(a1 + 8);
      v14 = v13 >= v12;
      v15 = v13 - v12;
      if (v15 == 0 || !v14 || v15 < 2)
      {
        return 0;
      }

      if (thread_netdata_tlv_iterator_next(a1, size))
      {
        v102 = global_os_log;
        v99 = 4294901759;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "cti_iterate_through_netdata";
          *&buf[12] = 1024;
          *&buf[14] = -65537;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%{public}s: could not get the next TLV from iterator: %d", buf, 0x12u);
        }

        return v99;
      }

      v17 = size[0];
      v18 = global_os_log;
      v19 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
      if (v17 == 5)
      {
        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "cti_iterate_through_netdata";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: Found Service entry in Thread network data", buf, 0xCu);
        }

        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v153 = 0u;
        v152 = 0u;
        v151 = 0u;
        v150 = 0u;
        v149 = 0u;
        v148 = 0u;
        v147 = 0u;
        v146 = 0u;
        v145 = 0u;
        v144 = 0u;
        v143 = 0u;
        v142 = 0u;
        v141 = 0u;
        v140 = 0u;
        v139 = 0u;
        v138 = 0u;
        memset(buf, 0, sizeof(buf));
        while (1)
        {
          do
          {
            if (LOWORD(v116[0]) <= WORD1(v116[0]) || LOWORD(v116[0]) - WORD1(v116[0]) < 2)
            {
              goto LABEL_2;
            }

            if (thread_netdata_tlv_iterator_next(&__src[1], buf))
            {
              v93 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                return 4294901759;
              }

              *v117 = 136446466;
              v118 = "cti_iterate_through_netdata";
              v119 = 1024;
              *v120 = -65537;
              v94 = "%{public}s: could not get the next sub-TLV from sub-tlv iterator: %d";
LABEL_136:
              v97 = v93;
              v98 = 18;
              goto LABEL_137;
            }
          }

          while (*buf != 6);
          v27 = *v9;
          if (v8)
          {
            break;
          }

LABEL_61:
          *v9 = v27 + 1;
        }

        if ((v27 + 1) > *v8)
        {
          v101 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *v117 = 136446210;
            v118 = "cti_iterate_through_netdata";
            v94 = "%{public}s: Could not store all services in service vector.";
            goto LABEL_149;
          }

          return 4294901759;
        }

        if (LODWORD(size[1]) == 63)
        {
          v31 = BYTE5(size[1]);
          if (BYTE5(size[1]) == 1)
          {
            v7 = *__src[0];
            v32 = 1;
LABEL_48:
            v34 = malloc_type_malloc(v31, 0x5209A6EFuLL);
            if (!v34)
            {
              v83 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_153;
              }

              *v117 = 136446210;
              v118 = "cti_service_create_from_tlv";
              v103 = "%{public}s: strict allocator failed";
              goto LABEL_161;
            }

            v35 = v34;
            memcpy(v34, __src[0], BYTE5(size[1]));
            goto LABEL_52;
          }

          v33 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 0;
            v7 = 0;
            if (v31)
            {
              goto LABEL_48;
            }

            goto LABEL_51;
          }

          *v117 = 136446466;
          v118 = "cti_iterate_through_netdata";
          v119 = 1024;
          *v120 = v31;
          v30 = v33;
        }

        else
        {
          if (LODWORD(size[1]) != 44970)
          {
            goto LABEL_46;
          }

          v28 = BYTE5(size[1]);
          if (BYTE5(size[1]) - 3 > 0xFFFFFFFD)
          {
            v7 = *__src[0];
            v32 = 1;
            goto LABEL_47;
          }

          v29 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:
            v32 = 0;
            v7 = 0;
LABEL_47:
            v31 = BYTE5(size[1]);
            if (BYTE5(size[1]))
            {
              goto LABEL_48;
            }

LABEL_51:
            v35 = 0;
LABEL_52:
            if (*&buf[10])
            {
              v36 = malloc_type_malloc(*&buf[10], 0x68D45D97uLL);
              if (!v36)
              {
                v83 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_153;
                }

                *v117 = 136446210;
                v118 = "cti_service_create_from_tlv";
                v103 = "%{public}s: strict allocator failed";
LABEL_161:
                v104 = v83;
                v105 = 12;
LABEL_152:
                _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, v103, v117, v105);
LABEL_153:
                __break(1u);
LABEL_154:
                if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
                {
                  *v117 = 136447490;
                  v118 = "cti_route_create_";
                  v119 = 1024;
                  *v120 = a5;
                  *&v120[4] = 2048;
                  *&v120[6] = v7;
                  *&v120[14] = 2080;
                  *&v120[16] = "route_ret";
                  *&v120[24] = 2080;
                  *&v120[26] = "cti-services.c";
                  *v121 = 1024;
                  *&v121[2] = 2161;
                  _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", v117, 0x36u);
                }

                abort();
              }

              v37 = v36;
              memcpy(v36, *&buf[16], *&buf[10]);
              v38 = *&buf[10];
            }

            else
            {
              v38 = 0;
              v37 = 0;
            }

            if (BYTE4(size[0]))
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v40 = cti_service_create_(LODWORD(size[1]), *&buf[8], v7, v32, v35, BYTE5(size[1]), v37, v38, BYTE4(size[1]), v39, 1353);
            v9 = a6;
            v8 = a7;
            v27 = *a6;
            *(a7[2] + 8 * *a6) = v40;
            v41 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v40[7];
              v43 = *v40;
              v44 = v40[4];
              v45 = v40[5];
              v46 = v40[6];
              v47 = *(v40 + 4);
              v48 = *(v40 + 5);
              *v117 = 136448002;
              v118 = "cti_iterate_through_netdata";
              v119 = 1024;
              *v120 = v42;
              *&v120[4] = 2048;
              *&v120[6] = v43;
              *&v120[14] = 1024;
              *&v120[16] = v44;
              *&v120[20] = 1024;
              *&v120[22] = v45;
              *&v120[26] = 1024;
              *&v120[28] = v46;
              *&v120[32] = 2048;
              *v121 = v47;
              *&v121[8] = 2048;
              *&v122 = v48;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: Got service id:%d enterprise_number:%llu (type:%d version:%d) rloc:0x%04x service_data_length:%zu server_data_length:%zu", v117, 0x42u);
              v27 = *a6;
            }

            goto LABEL_61;
          }

          *v117 = 136446466;
          v118 = "cti_iterate_through_netdata";
          v119 = 1024;
          *v120 = v28;
          v30 = v29;
        }

        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalid service data: length = %u", v117, 0x12u);
        goto LABEL_46;
      }

      if (v17 == 1)
      {
        break;
      }

      if (v19)
      {
        *buf = 136446466;
        *&buf[4] = "cti_iterate_through_netdata";
        *&buf[12] = 1024;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: Ignoring Thread TLV of type %d", buf, 0x12u);
      }
    }

    if (v19)
    {
      *buf = 136446210;
      *&buf[4] = "cti_iterate_through_netdata";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: found Prefix entry in Thread network data", buf, 0xCu);
    }

    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    v150 = 0u;
    v149 = 0u;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v143 = 0u;
    v142 = 0u;
    v141 = 0u;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      v21 = WORD4(v116[0]) > WORD5(v116[0]) && WORD4(v116[0]) - WORD5(v116[0]) > 1;
      v112 = v21;
      if (!v21)
      {
        v109 = 0;
        goto LABEL_65;
      }

      v22 = thread_netdata_tlv_iterator_next(v116, buf);
      if (v22)
      {
        v95 = v22;
        v93 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          return 4294901759;
        }

        *v117 = 136446466;
        v118 = "cti_iterate_through_netdata";
        v119 = 1024;
        *v120 = v95;
        v94 = "%{public}s: could not try to get a 6LoWPAN sub-TLV from sub-tlv iterator: %d";
        goto LABEL_136;
      }
    }

    while (*buf != 3);
    v23 = buf[9];
    v24 = buf[8];
    v25 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v117 = 136446722;
      v118 = "cti_iterate_through_netdata";
      v119 = 1024;
      *v120 = v23;
      *&v120[4] = 1024;
      *&v120[6] = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: found 6LoWPAN context ID: %d, compression allowed = %d", v117, 0x18u);
    }

    v109 = v23 | (v24 << 16);
LABEL_65:
    v49 = 0;
    WORD5(v116[0]) = 0;
LABEL_66:
    v14 = WORD4(v116[0]) >= v49;
    v50 = WORD4(v116[0]) - v49;
    if (v50 != 0 && v14 && v50 >= 2)
    {
      break;
    }

    v9 = a6;
    v8 = a7;
  }

  v52 = thread_netdata_tlv_iterator_next(v116, buf);
  if (v52)
  {
    v96 = v52;
    v93 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294901759;
    }

    *v117 = 136446466;
    v118 = "cti_iterate_through_netdata";
    v119 = 1024;
    *v120 = v96;
    v94 = "%{public}s: could not get the next sub-TLV from sub-tlv iterator: %d";
    goto LABEL_136;
  }

  v53 = *buf;
  if (*buf)
  {
    if (*buf == 3)
    {
      goto LABEL_128;
    }

    if (*buf != 2)
    {
      v92 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *v117 = 136446466;
        v118 = "cti_iterate_through_netdata";
        v119 = 1024;
        *v120 = v53;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "%{public}s: ignore Thread sub-TLV of type %d inside Prefix TLV", v117, 0x12u);
      }

      goto LABEL_128;
    }

    v54 = *&buf[8];
    v55 = *a2;
    if (!a3)
    {
      goto LABEL_90;
    }

    if ((*&buf[8] + v55) <= *a3)
    {
      if (*&buf[8])
      {
        v56 = 0;
        v57 = &buf[18];
        do
        {
          v58 = cti_prefix_create_(v113, BYTE1(size[1]), 0, *v57, *(v57 - 1), SBYTE4(size[0]), 1, v112, v109, SHIDWORD(v109), 2169);
          v7 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v58[6];
            v60 = "onmesh";
            if ((v59 & 0x100) == 0)
            {
              v60 = "offmesh";
            }

            v61 = *v58;
            v62 = "ULA: ";
            if ((v61 & 0xFE) != 0xFC)
            {
              if (v61 != 254 || (v62 = "LUA: ", (*(v58 + 1) & 0xC0) != 0x80))
              {
                v62 = "";
                if ((v61 & 0xE0) == 0x20)
                {
                  v62 = "GUA: ";
                }
              }
            }

            v63 = "no";
            if (*(v58 + 32))
            {
              v63 = "yes";
            }

            v64 = v58[4];
            v65 = v58[5];
            v66 = v58[7];
            *v117 = 136450307;
            v118 = "cti_iterate_through_netdata";
            v119 = 2082;
            *v120 = v60;
            *&v120[8] = 2082;
            *&v120[10] = v62;
            *&v120[18] = 2160;
            *&v120[20] = 1752392040;
            *&v120[28] = 1041;
            *&v120[30] = 6;
            *v121 = 2097;
            *&v121[2] = v58;
            LOWORD(v122) = 2160;
            *(&v122 + 2) = 1752392040;
            WORD5(v122) = 1042;
            HIDWORD(v122) = 2;
            v123 = 2098;
            v124 = v58 + 6;
            v125 = 2160;
            *v126 = 1752392040;
            *&v126[8] = 1041;
            *&v126[10] = 8;
            v127 = 2097;
            *v128 = v58 + 2;
            *&v128[8] = 1024;
            *&v128[10] = v64;
            v129 = 2082;
            v130 = v63;
            v131 = 1024;
            v132 = v59;
            v133 = 1024;
            v134 = v65;
            v135 = 1024;
            LODWORD(v136) = v66;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Got prefix (%{public}s) {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} len %d stable:%{public}s flags:0x%04x metric:%d rloc:0x%04x", v117, 0x90u);
          }

          v57 += 4;
          v55 = *a2;
          *(a3[2] + 8 * *a2 + 8 * v56++) = v58;
          v54 = *&buf[8];
        }

        while (v56 < *&buf[8]);
      }

LABEL_90:
      v67 = v55 + v54;
      v68 = a2;
LABEL_125:
      *v68 = v67;
LABEL_128:
      v49 = WORD5(v116[0]);
      goto LABEL_66;
    }

    v101 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 4294901759;
    }

    *v117 = 136446210;
    v118 = "cti_iterate_through_netdata";
    v94 = "%{public}s: Could not store all prefixes in prefix vector.";
LABEL_149:
    v97 = v101;
    v98 = 12;
LABEL_137:
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, v94, v117, v98);
    return 4294901759;
  }

  v69 = *&buf[8];
  v70 = *a4;
  if (!a5)
  {
LABEL_124:
    v67 = v70 + v69;
    v68 = a4;
    goto LABEL_125;
  }

  if ((*&buf[8] + v70) <= *a5)
  {
    if (*&buf[8])
    {
      v71 = 0;
      v72 = &buf[24];
      while (1)
      {
        v73 = *(v72 - 1);
        if (v73 >= 2)
        {
          if (v73 != 3)
          {
            v74 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *v117 = 136446210;
              v118 = "cti_route_create_from_tlv";
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}s: received reserved route preference, defaulting to low", v117, 0xCu);
            }
          }

          v73 = -1;
        }

        v75 = a5;
        v76 = BYTE1(size[1]);
        v77 = *v72;
        v78 = BYTE4(size[0]);
        LODWORD(a5) = *(v72 - 4);
        v79 = malloc_type_calloc(1uLL, 0x2CuLL, 0x507EFEA7uLL);
        if (!v79)
        {
          break;
        }

        v7 = v79;
        *v79 = *v113;
        v79[4] = v76;
        v79[5] = 1;
        *(v79 + 24) = v77;
        *(v79 + 25) = v78;
        v79[7] = v73;
        v79[8] = a5;
        *(v79 + 36) = 0;
        v80 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v81 = *(v7 + 40);
          *v117 = 136447490;
          v118 = "cti_route_create_";
          v119 = 1024;
          *v120 = v81;
          *&v120[4] = 2048;
          *&v120[6] = v7;
          *&v120[14] = 2080;
          *&v120[16] = "route_ret";
          *&v120[24] = 2080;
          *&v120[26] = "cti-services.c";
          *v121 = 1024;
          *&v121[2] = 2161;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v117, 0x36u);
        }

        v82 = *(v7 + 40);
        if (v82)
        {
          LODWORD(a5) = v82 + 1;
          *(v7 + 40) = v82 + 1;
          v83 = global_os_log;
          if (v82 + 1 >= 10001)
          {
            goto LABEL_154;
          }
        }

        else
        {
          ++cti_route_created;
          *(v7 + 40) = 1;
          v83 = global_os_log;
        }

        a5 = v75;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *v7;
          v85 = "ULA: ";
          if ((v84 & 0xFE) != 0xFC)
          {
            if (v84 != 254 || (v85 = "LUA: ", (*(v7 + 1) & 0xC0) != 0x80))
            {
              v85 = "";
              if ((v84 & 0xE0) == 0x20)
              {
                v85 = "GUA: ";
              }
            }
          }

          v86 = *(v7 + 16);
          if (*(v7 + 24))
          {
            v87 = "yes";
          }

          else
          {
            v87 = "no";
          }

          if (*(v7 + 25))
          {
            v88 = "yes";
          }

          else
          {
            v88 = "no";
          }

          v89 = *(v7 + 28);
          v90 = *(v7 + 32);
          if (*(v7 + 36))
          {
            v91 = "yes";
          }

          else
          {
            v91 = "no";
          }

          *v117 = 136450307;
          v118 = "cti_iterate_through_netdata";
          v119 = 2082;
          *v120 = v85;
          *&v120[8] = 2160;
          *&v120[10] = 1752392040;
          *&v120[18] = 1041;
          *&v120[20] = 6;
          *&v120[24] = 2097;
          *&v120[26] = v7;
          strcpy(v121, "p\bhash");
          v121[7] = 0;
          *&v121[8] = 0;
          LOWORD(v122) = 1042;
          *(&v122 + 2) = 2;
          WORD3(v122) = 2098;
          *(&v122 + 1) = v7 + 6;
          v123 = 2160;
          v124 = 1752392040;
          v125 = 1041;
          *v126 = 8;
          *&v126[4] = 2097;
          *&v126[6] = v7 + 8;
          v127 = 1024;
          *v128 = v86;
          *&v128[4] = 2082;
          *&v128[6] = v87;
          v129 = 2082;
          v130 = v88;
          v131 = 1024;
          v132 = v89;
          v133 = 1024;
          v134 = v90;
          v135 = 2082;
          v136 = v91;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s: Got offmesh route {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} len %d nat64:%{public}s stable:%{public}s preference:%d rloc:0x%04x next_hop_is_host:%{public}s", v117, 0x94u);
        }

        v70 = *a4;
        *(v75[2] + 8 * *a4 + 8 * v71++) = v7;
        v69 = *&buf[8];
        v72 += 12;
        if (v71 >= *&buf[8])
        {
          goto LABEL_124;
        }
      }

      v83 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *v117 = 136446722;
        v118 = "cti_route_create_";
        v119 = 2048;
        *v120 = 1;
        *&v120[8] = 2048;
        *&v120[10] = 44;
        v103 = "%{public}s: strict_calloc(%zu, %zu) failed";
        v104 = v83;
        v105 = 32;
        goto LABEL_152;
      }

      goto LABEL_153;
    }

    goto LABEL_124;
  }

  v101 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *v117 = 136446210;
    v118 = "cti_iterate_through_netdata";
    v94 = "%{public}s: Could not store all routes in route vector.";
    goto LABEL_149;
  }

  return 4294901759;
}

void cti_internal_onmesh_prefix_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  xdict = 0;
  if (a3)
  {
    v5 = a3;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = cti_event_or_response_extract(a2, &xdict);
  if (v6)
  {
    v5 = v6;
    goto LABEL_5;
  }

  array = xpc_dictionary_get_array(xdict, "value");
  if (!array)
  {
    v29 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: onmesh prefix array not present in Thread:OnMeshPrefixes event.", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_73;
  }

  v16 = array;
  count = xpc_array_get_count(array);
  v7 = cti_prefix_vec_create_(count, 2748);
  v46 = count;
  if (!count)
  {
LABEL_73:
    v5 = 0;
    goto LABEL_6;
  }

  v18 = 0;
  v45 = v16;
  while (1)
  {
    string = xpc_array_get_string(v16, v18);
    v53 = 0uLL;
    if (!string)
    {
      v41 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "strict_strdup";
      v42 = "%{public}s: strict_strdup called with NULL string";
      goto LABEL_106;
    }

    v20 = strdup(string);
    if (!v20)
    {
      v41 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "strict_strdup";
      v42 = "%{public}s: strdup() failed";
LABEL_106:
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
LABEL_107:
      __break(1u);
    }

    v21 = 0;
    v48 = 0;
    v49 = 0;
    v22 = 0;
    v50 = 0;
    __lasts = v20;
    v47 = v20;
LABEL_28:
    v23 = strtok_r(v20, " ", &__lasts);
    if (v23)
    {
      break;
    }

    v25 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "ULA: ";
      if ((v53 & 0xFE) != 0xFC)
      {
        if (v53 != 254 || (v26 = "LUA: ", (BYTE1(v53) & 0xC0) != 0x80))
        {
          v26 = "";
          if ((v53 & 0xE0) == 0x20)
          {
            v26 = "GUA: ";
          }
        }
      }

      *buf = 136450051;
      v27 = "user";
      if ((v48 & 0x100000000) != 0)
      {
        v27 = "ncp";
      }

      *&buf[4] = "cti_parse_onmesh_prefix_array";
      v28 = "no";
      if (v48)
      {
        v28 = "yes";
      }

      v55 = 2082;
      *v56 = v26;
      *&v56[8] = 2160;
      *&v56[10] = 1752392040;
      *&v56[18] = 1041;
      *&v56[20] = 6;
      *&v56[24] = 2097;
      *&v56[26] = &v53;
      v57 = 2160;
      v58 = 1752392040;
      v59 = 1042;
      v60 = 2;
      v61 = 2098;
      v62 = &v53 + 6;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 1041;
      v66 = 8;
      v67 = 2097;
      v68 = &v53 + 8;
      v69 = 1024;
      v70 = v49;
      v71 = 2082;
      v72 = v27;
      v73 = 2082;
      v74 = v28;
      v75 = 1024;
      v76 = v22;
      v77 = 1024;
      v78 = v50;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: got prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} len %d origin:%{public}s stable:%{public}s flags:%x rloc:%04x", buf, 0x8Au);
    }

    *(v7[2] + 8 * v18) = cti_prefix_create_(&v53, v49, 0, v22, v50, v48 & 1, BYTE4(v48) & 1, 0, 0, 0, 2832);
    free(v47);
    ++v18;
    v16 = v45;
    if (v18 == v46)
    {
      goto LABEL_73;
    }
  }

  v24 = v23;
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        if (strncmp(v23, "prefix_len:", 0xBuLL))
        {
          v31 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }

          *buf = 136446979;
          *&buf[4] = "cti_parse_onmesh_prefix_array";
          v55 = 2160;
          *v56 = 1752392040;
          *&v56[8] = 2081;
          *&v56[10] = v24;
          *&v56[18] = 1024;
          *&v56[20] = 1;
          v30 = "%{public}s: expecting prefix_len rather than %{private, mask.hash}s at %d";
          goto LABEL_88;
        }

        *buf = 0;
        v49 = strtol(v24 + 11, buf, 10);
      }

      else
      {
        if (v21 != 2)
        {
          goto LABEL_56;
        }

        if (strncmp(v23, "origin:", 7uLL))
        {
          v31 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }

          *buf = 136446979;
          *&buf[4] = "cti_parse_onmesh_prefix_array";
          v55 = 2160;
          *v56 = 1752392040;
          *&v56[8] = 2081;
          *&v56[10] = v24;
          *&v56[18] = 1024;
          *&v56[20] = 2;
          v30 = "%{public}s: expecting origin rather than %{private, mask.hash}s at %d";
LABEL_88:
          v34 = v31;
          v35 = 38;
          goto LABEL_92;
        }

        if (!strcmp(v24 + 7, "ncp"))
        {
          BYTE4(v48) = 1;
        }

        else if (strcmp(v24 + 7, "user"))
        {
          v36 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }

          *buf = 136446723;
          *&buf[4] = "cti_parse_onmesh_prefix_array";
          v55 = 2160;
          *v56 = 1752392040;
          *&v56[8] = 2081;
          *&v56[10] = v24 + 7;
          v30 = "%{public}s: unexpected origin: %{private, mask.hash}s";
LABEL_91:
          v34 = v36;
          v35 = 32;
          goto LABEL_92;
        }
      }
    }

    else if (!inet_pton(30, v23, &v53))
    {
      v32 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_93;
      }

      *buf = 136446466;
      *&buf[4] = "cti_parse_onmesh_prefix_array";
      v55 = 2082;
      *v56 = v24;
      v30 = "%{public}s: invalid ipv6 address %{public}s";
      v34 = v32;
      v35 = 22;
LABEL_92:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v30, buf, v35);
      goto LABEL_93;
    }

    goto LABEL_56;
  }

  if (v21 != 3)
  {
    if (v21 == 4)
    {
      if (strncmp(v23, "flags:", 6uLL))
      {
        v31 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        *buf = 136446979;
        *&buf[4] = "cti_parse_onmesh_prefix_array";
        v55 = 2160;
        *v56 = 1752392040;
        *&v56[8] = 2081;
        *&v56[10] = v24;
        *&v56[18] = 1024;
        *&v56[20] = 4;
        v30 = "%{public}s: expecting flags rather than %{private, mask.hash}s at %d";
        goto LABEL_88;
      }

      *buf = 0;
      v22 = bswap32(strtol(v24 + 6, buf, 16)) >> 16;
    }

    else if (v21 == 14)
    {
      if (strncmp(v23, "rloc:", 5uLL))
      {
        v31 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        *buf = 136446979;
        *&buf[4] = "cti_parse_onmesh_prefix_array";
        v55 = 2160;
        *v56 = 1752392040;
        *&v56[8] = 2081;
        *&v56[10] = v24;
        *&v56[18] = 1024;
        *&v56[20] = 14;
        v30 = "%{public}s: expecting rloc rather than %{private, mask.hash}s at %d";
        goto LABEL_88;
      }

      *buf = 0;
      v50 = strtol(v24 + 5, buf, 16);
    }

    goto LABEL_56;
  }

  if (strncmp(v23, "stable:", 7uLL))
  {
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    *buf = 136446979;
    *&buf[4] = "cti_parse_onmesh_prefix_array";
    v55 = 2160;
    *v56 = 1752392040;
    *&v56[8] = 2081;
    *&v56[10] = v24;
    *&v56[18] = 1024;
    *&v56[20] = 3;
    v30 = "%{public}s: expecting table rather than %{private, mask.hash}s at %d";
    goto LABEL_88;
  }

  if (!strcmp(v24 + 7, "yes"))
  {
    LOBYTE(v48) = 1;
    goto LABEL_56;
  }

  if (v24[7] == 110 && v24[8] == 111 && !v24[9])
  {
LABEL_56:
    ++v21;
    v20 = __lasts;
    goto LABEL_28;
  }

  v36 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446723;
    *&buf[4] = "cti_parse_onmesh_prefix_array";
    v55 = 2160;
    *v56 = 1752392040;
    *&v56[8] = 2081;
    *&v56[10] = v24 + 7;
    v30 = "%{public}s: unexpected BOOLean state: %{private, mask.hash}s";
    goto LABEL_91;
  }

LABEL_93:
  free(v47);
  v38 = *(v7 + 2);
  if (!v38)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    *buf = 136447490;
    *&buf[4] = "cti_parse_onmesh_prefix_array";
    v55 = 1024;
    *v56 = 0;
    *&v56[4] = 2048;
    *&v56[6] = v7;
    *&v56[14] = 2080;
    *&v56[16] = "prefixes";
    *&v56[24] = 2080;
    *&v56[26] = "cti-services.c";
    v57 = 1024;
    LODWORD(v58) = 2851;
    v43 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_112:
    v44 = v13;
    goto LABEL_113;
  }

  v39 = global_os_log;
  if (v38 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    *buf = 136447490;
    *&buf[4] = "cti_parse_onmesh_prefix_array";
    v55 = 1024;
    *v56 = v38;
    *&v56[4] = 2048;
    *&v56[6] = v7;
    *&v56[14] = 2080;
    *&v56[16] = "prefixes";
    *&v56[24] = 2080;
    *&v56[26] = "cti-services.c";
    v57 = 1024;
    LODWORD(v58) = 2851;
    v43 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v44 = v39;
LABEL_113:
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, v43, buf, 0x36u);
    goto LABEL_114;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "cti_parse_onmesh_prefix_array";
    v55 = 1024;
    *v56 = v38;
    *&v56[4] = 2048;
    *&v56[6] = v7;
    *&v56[14] = 2080;
    *&v56[16] = "prefixes";
    *&v56[24] = 2080;
    *&v56[26] = "cti-services.c";
    v57 = 1024;
    LODWORD(v58) = 2851;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v38 = *(v7 + 2);
  }

  *(v7 + 2) = v38 - 1;
  if (v38 == 1)
  {
    v40 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "cti_parse_onmesh_prefix_array";
      v55 = 2048;
      *v56 = v7;
      *&v56[8] = 2080;
      *&v56[10] = "prefixes";
      *&v56[18] = 2080;
      *&v56[20] = "cti-services.c";
      *&v56[28] = 1024;
      *&v56[30] = 2851;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++cti_prefix_vec_finalized;
    cti_prefix_vec_finalize(v7);
  }

  v7 = 0;
  v5 = 4294901759;
LABEL_6:
  v8 = global_os_log;
  v9 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v9)
    {
      v10 = *(a1 + 80);
      *buf = 136446722;
      *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
      v55 = 1024;
      *v56 = v10;
      *&v56[4] = 2048;
      *&v56[6] = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(a1 + 64), v7, v5);
  }

  else if (v9)
  {
    v11 = *(a1 + 80);
    *buf = 136446722;
    *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
    v55 = 1024;
    *v56 = v11;
    *&v56[4] = 2048;
    *&v56[6] = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] not calling callback for %p", buf, 0x1Cu);
  }

  if (v7)
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = global_os_log;
      if (v12 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
          v55 = 1024;
          *v56 = v12;
          *&v56[4] = 2048;
          *&v56[6] = v7;
          *&v56[14] = 2080;
          *&v56[16] = "vec";
          *&v56[24] = 2080;
          *&v56[26] = "cti-services.c";
          v57 = 1024;
          LODWORD(v58) = 2883;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v12 = *(v7 + 2);
        }

        *(v7 + 2) = v12 - 1;
        if (v12 == 1)
        {
          v14 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
            v55 = 2048;
            *v56 = v7;
            *&v56[8] = 2080;
            *&v56[10] = "vec";
            *&v56[18] = 2080;
            *&v56[20] = "cti-services.c";
            *&v56[28] = 1024;
            *&v56[30] = 2883;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++cti_prefix_vec_finalized;
          cti_prefix_vec_finalize(v7);
        }

        return;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
        v55 = 1024;
        *v56 = v12;
        *&v56[4] = 2048;
        *&v56[6] = v7;
        *&v56[14] = 2080;
        *&v56[16] = "vec";
        *&v56[24] = 2080;
        *&v56[26] = "cti-services.c";
        v57 = 1024;
        LODWORD(v58) = 2883;
        v43 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_112;
      }
    }

    else
    {
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "cti_internal_onmesh_prefix_reply_callback";
        v55 = 1024;
        *v56 = 0;
        *&v56[4] = 2048;
        *&v56[6] = v7;
        *&v56[14] = 2080;
        *&v56[16] = "vec";
        *&v56[24] = 2080;
        *&v56[26] = "cti-services.c";
        v57 = 1024;
        LODWORD(v58) = 2883;
        v43 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_112;
      }
    }

LABEL_114:
    abort();
  }
}

uint64_t cti_get_rloc16_(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v4, "path", "/org/wpantund/utun2");
  xpc_dictionary_set_string(v4, "method", "PropGet");
  xpc_dictionary_set_string(v4, "property_name", "Thread:RLOC16");
  v5 = setup_for_command(0, "get_rloc16", 0, 0, v4, a1, thread_device_rloc16_callback, cti_internal_rloc16_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", a2);
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "cti_get_rloc16_";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: get_rloc16 result %d", buf, 0x12u);
  }

  if (v4)
  {
    xpc_release(v4);
  }

  return v5;
}

void cti_internal_rloc16_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  xdict = 0;
  if (a3)
  {
    v5 = a3;
LABEL_5:
    LOWORD(uint64) = 0;
    goto LABEL_6;
  }

  v6 = cti_event_or_response_extract(a2, &xdict);
  if (v6)
  {
    v5 = v6;
    goto LABEL_5;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "value");
  if (uint64 >> 16)
  {
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 80);
      *buf = 136446722;
      v19 = "cti_internal_rloc16_reply_callback";
      v20 = 1024;
      v21 = v16;
      v22 = 2048;
      v23 = uint64;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] got invalid RLOC16 value: 0x%llX is too large", buf, 0x1Cu);
    }

    LOWORD(uint64) = 0;
    v5 = 4294901759;
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  v8 = global_os_log;
  v9 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v9)
    {
      v10 = *(a1 + 80);
      *buf = 136446722;
      v19 = "cti_internal_rloc16_reply_callback";
      v20 = 1024;
      v21 = v10;
      v22 = 2048;
      v23 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(a1 + 64), uint64, v5);
  }

  else if (v9)
  {
    v11 = *(a1 + 80);
    *buf = 136446722;
    v19 = "cti_internal_rloc16_reply_callback";
    v20 = 1024;
    v21 = v11;
    v22 = 2048;
    v23 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] not calling callback for %p", buf, 0x1Cu);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 80);
      *buf = 136446722;
      v19 = "cti_internal_rloc16_reply_callback";
      v20 = 1024;
      v21 = v14;
      v22 = 2048;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] canceling connection %p after successful response", buf, 0x1Cu);
      v12 = *(a1 + 16);
    }

    xpc_connection_cancel(v12);
  }

  cti_connection_release_(a1, 2943);
}

void cti_internal_wed_reply_callback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    if (v4)
    {
      v5 = a3;
      v6 = 0;
      v7 = 0;
      goto LABEL_8;
    }

    return;
  }

  xdict = 0;
  v5 = cti_event_or_response_extract(a2, &xdict);
  if (v5)
  {
    goto LABEL_5;
  }

  array = xpc_dictionary_get_array(xdict, "value");
  if (!array)
  {
    v25 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 80);
      *buf = 136446466;
      v36 = "cti_internal_wed_reply_callback";
      v37 = 1024;
      *v38 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] wed status array not present in wed status event.", buf, 0x12u);
    }

    goto LABEL_5;
  }

  v14 = array;
  count = xpc_array_get_count(array);
  if (!count)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_6;
  }

  v7 = 0;
  v6 = 0;
  v15 = 0;
  v8 = 1;
  while (1)
  {
    value = xpc_array_get_value(v14, v15);
    if (xpc_get_type(value) != &_xpc_type_dictionary)
    {
      v27 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 136446210;
      v36 = "cti_internal_wed_reply_callback";
      v28 = "%{public}s: non-dictionary element of value array";
LABEL_48:
      v29 = v27;
      v30 = 12;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
      goto LABEL_6;
    }

    string = xpc_dictionary_get_string(value, "key");
    if (!string)
    {
      v27 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 136446210;
      v36 = "cti_internal_wed_reply_callback";
      v28 = "%{public}s: no key in value array";
      goto LABEL_48;
    }

    v18 = string;
    v19 = xpc_dictionary_get_string(value, "value");
    if (strcmp(v18, "extendedMACAddress"))
    {
      break;
    }

    v7 = v19;
LABEL_38:
    if (count == ++v15)
    {
      goto LABEL_6;
    }
  }

  if (!strcmp(v18, "mleid"))
  {
    v6 = v19;
    goto LABEL_38;
  }

  if (strcmp(v18, "status"))
  {
    v32 = v8;
    v20 = global_os_log;
    v21 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 136446979;
        v36 = "cti_internal_wed_reply_callback";
        v37 = 2082;
        *v38 = v18;
        *&v38[8] = 2160;
        *&v38[10] = 1752392040;
        v39 = 2081;
        v40 = v19;
        v22 = v20;
        v23 = "%{public}s: unknown key %{public}s with value %{private, mask.hash}s";
        v24 = 42;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
      }
    }

    else if (v21)
    {
      *buf = 136446466;
      v36 = "cti_internal_wed_reply_callback";
      v37 = 2082;
      *v38 = v18;
      v22 = v20;
      v23 = "%{public}s: unknown key in response: %{public}s";
      v24 = 22;
      goto LABEL_36;
    }

    v8 = v32;
    goto LABEL_38;
  }

  if (!strcmp(v19, "wed_present"))
  {
    v8 = 1;
    goto LABEL_38;
  }

  if (!strcmp(v19, "wed_removed"))
  {
    v8 = 0;
    goto LABEL_38;
  }

  v31 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v36 = "cti_internal_wed_reply_callback";
    v37 = 2082;
    *v38 = v19;
    v28 = "%{public}s: unknown wed status %{public}s";
    v29 = v31;
    v30 = 22;
    goto LABEL_49;
  }

LABEL_6:
  if (v4)
  {
    if (v8)
    {
LABEL_8:
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 80);
      *buf = 136446722;
      v36 = "cti_internal_wed_reply_callback";
      v37 = 1024;
      *v38 = v12;
      *&v38[4] = 2048;
      *&v38[6] = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] calling callback for %p", buf, 0x1Cu);
    }

    v4(*(a1 + 64), v7, v6, v10, v5);
  }
}

void cti_events_discontinue(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 80);
      v5 = 136446722;
      v6 = "cti_events_discontinue";
      v7 = 1024;
      v8 = v4;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] canceling connection %p", &v5, 0x1Cu);
      v2 = *(a1 + 16);
    }

    xpc_connection_cancel(v2);
  }

  cti_connection_release_(a1, 3117);
}

uint64_t state_machine_next_state(uint64_t a1, unsigned int a2)
{
  do
  {
    result = state_machine_state_get(a1, a2);
    if (!result)
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *a1;
        v9 = 136447235;
        v10 = "state_machine_next_state";
        v11 = 2082;
        v12 = v7;
        v13 = 2160;
        v14 = 1752392040;
        v15 = 2081;
        v16 = v8;
        v17 = 1024;
        v18 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s/%{private, mask.hash}s next state is invalid: %d", &v9, 0x30u);
      }

      abort();
    }

    *(a1 + 48) = a2;
    v5 = *(result + 16);
    *(a1 + 16) = *(result + 8);
    if (v5)
    {
      result = v5(a1, 0);
      a2 = result;
    }
  }

  while (a2);
  return result;
}

uint64_t state_machine_state_get(uint64_t *a1, unsigned int a2)
{
  v2 = a1[5];
  if ((a1[7] & 1) == 0)
  {
    if (v2)
    {
      v3 = 0;
      v4 = a1[3];
      v5 = v4;
      while (1)
      {
        v6 = *v5;
        v5 += 6;
        if (v3 != v6)
        {
          break;
        }

        if (v2 == ++v3)
        {
          goto LABEL_6;
        }
      }

      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v10 = a1[4];
        v11 = *a1;
        v12 = *&v4[6 * v3 + 2];
        v13 = 136447491;
        v14 = "state_machine_state_get";
        v15 = 2082;
        v16 = v10;
        v17 = 2160;
        v18 = 1752392040;
        v19 = 2081;
        v20 = v11;
        v21 = 2048;
        v22 = v3;
        v23 = 2082;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s/%{private, mask.hash}s state %zu doesn't match %{public}s", &v13, 0x3Eu);
      }

LABEL_11:
      abort();
    }

LABEL_6:
    *(a1 + 56) = 1;
  }

  if (v2 <= a2)
  {
    goto LABEL_11;
  }

  return a1[3] + 24 * a2;
}

void state_machine_event_deliver(uint64_t a1, uint64_t a2)
{
  v4 = state_machine_state_get(a1, *(a1 + 48));
  if (!v4)
  {
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *a1;
      v16 = *(a2 + 8);
      v17 = *(a1 + 48);
      v18 = 136447491;
      v19 = "state_machine_event_deliver";
      v20 = 2082;
      v21 = v14;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2081;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in invalid state %d", &v18, 0x3Au);
    }

    abort();
  }

  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v6(a1, a2);
    if (v7)
    {

      state_machine_next_state(a1, v7);
    }
  }

  else
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v10 = *a1;
      v11 = *(a2 + 8);
      v12 = *(v5 + 8);
      v18 = 136447491;
      v19 = "state_machine_event_deliver";
      v20 = 2082;
      v21 = v9;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2081;
      v25 = v10;
      v26 = 2082;
      v27 = v11;
      v28 = 2082;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s with NULL action", &v18, 0x3Eu);
    }
  }
}

int *state_machine_event_create(int a1)
{
  if ((state_machine_event_configuration_get_once & 1) == 0)
  {
    v2 = 0;
    v3 = state_machine_event_configurations;
    while (v2 == *v3)
    {
      ++v2;
      v3 += 4;
      if (v2 == 23)
      {
        state_machine_event_configuration_get_once = 1;
        goto LABEL_6;
      }
    }

    v15 = v3;
    v16 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v15 + 1);
      *buf = 136446722;
      v22 = "state_machine_event_configuration_get";
      v23 = 1024;
      *v24 = v2;
      *&v24[4] = 2082;
      *&v24[6] = v17;
      v10 = "%{public}s: event %d doesn't match %{public}s";
      v11 = v16;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 28;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_6:
  if (!&state_machine_event_configurations[4 * a1])
  {
    v18 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "state_machine_event_create";
      v23 = 1024;
      *v24 = a1;
      v10 = "%{public}s: invalid event type %d";
      v11 = v18;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 18;
      goto LABEL_18;
    }

LABEL_19:
    abort();
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0xAFA355F1uLL);
  if (!v4)
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "state_machine_event_create";
      v23 = 2048;
      *v24 = 1;
      *&v24[8] = 2048;
      *&v24[10] = 40;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
    }

    __break(1u);
  }

  v5 = v4;
  v4[4] = a1;
  *(v4 + 1) = *&state_machine_event_configurations[4 * a1 + 2];
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v5;
    *buf = 136447490;
    v22 = "state_machine_event_create";
    v23 = 1024;
    *v24 = v7;
    *&v24[4] = 2048;
    *&v24[6] = v5;
    *&v24[14] = 2080;
    *&v24[16] = "event";
    v25 = 2080;
    v26 = "state-machine.c";
    v27 = 1024;
    v28 = 217;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v5)
  {
    v8 = *v5 + 1;
    *v5 = v8;
    if (v8 >= 10001)
    {
      v20 = v8;
      v9 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }

      *buf = 136447490;
      v22 = "state_machine_event_create";
      v23 = 1024;
      *v24 = v20;
      *&v24[4] = 2048;
      *&v24[6] = v5;
      *&v24[14] = 2080;
      *&v24[16] = "event";
      v25 = 2080;
      v26 = "state-machine.c";
      v27 = 1024;
      v28 = 217;
      v10 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      v11 = v9;
      v12 = OS_LOG_TYPE_FAULT;
      v13 = 54;
      goto LABEL_18;
    }
  }

  else
  {
    ++state_machine_event_created;
    *v5 = 1;
  }

  *(v5 + 4) = 0;
  return v5;
}

BOOL state_machine_header_setup(uint64_t a1, uint64_t a2, char *__s1, int a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = &state_machine_types;
  v11 = 4;
  while (*v10 != a4)
  {
    v10 += 4;
    if (!--v11)
    {
      return 0;
    }
  }

  v13 = *(v10 + 1);
  *(a1 + 32) = v13;
  v12 = v13 != 0;
  if (v13)
  {
    *(a1 + 8) = a2;
    v14 = strdup(__s1);
    if (!v14)
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v17 = 136446210;
        v18 = "strict_strdup";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: strdup() failed", &v17, 0xCu);
      }

      __break(1u);
    }

    *a1 = v14;
    *(a1 + 52) = a4;
    *(a1 + 24) = a5;
    *(a1 + 40) = a6;
  }

  return v12;
}

void state_machine_cancel(uint64_t *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = 136446466;
    v5 = "state_machine_cancel";
    v6 = 2082;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: canceling %{public}s", &v4, 0x16u);
  }

  *(a1 + 12) = 0;
}

uint64_t __nr_device_monitor_set_handler_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(v2 + 40) = v3;
  return (*(*(v2 + 16) + 16))();
}

size_t dns_name_to_wire_(size_t result, uint64_t *a2, char *__s, int a4)
{
  if (*(a2 + 14) > 1u)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *a2;
  v11 = a2[1];
  v12 = v11;
  do
  {
    for (i = __s; ; i += v15)
    {
      v14 = *i;
      if (v14 == 92)
      {
        if (!i[1])
        {
          goto LABEL_47;
        }

        v15 = 2;
        continue;
      }

      if (!*i)
      {
        break;
      }

      if (v14 == 46)
      {
        if (i == __s)
        {
LABEL_47:
          v25 = 44;
        }

        else
        {
          v16 = i + 1;
LABEL_15:
          v17 = 0;
          if (i > __s)
          {
            v18 = __s;
            do
            {
              if (*v18 == 92)
              {
                if (v18 + 4 > i || v18[1] - 48 > 9 || v18[2] - 48 > 9 || v18[3] - 48 >= 0xA)
                {
                  if (v18 + 2 <= i)
                  {
                    ++v18;
                  }
                }

                else
                {
                  v18 += 3;
                }
              }

              ++v17;
              ++v18;
            }

            while (v18 < i);
          }

          if ((a2[2] + ~v12) <= v17)
          {
            *(a2 + 14) |= 1u;
            v25 = 110;
          }

          else
          {
            if (i - __s <= 63)
            {
              *v12 = v17;
              if (i > __s)
              {
                v19 = (v12 + 1);
                v20 = __s;
                do
                {
                  v21 = *v20;
                  if (v21 == 92)
                  {
                    if (v20 + 4 > i || v20[1] - 48 > 9 || (v22 = v20[2], (v22 - 48) > 9) || (v23 = v20[3] - 48, v23 > 9))
                    {
                      if (v20 + 2 > i)
                      {
                        goto LABEL_47;
                      }

                      v24 = *++v20;
                      LOBYTE(v21) = v24;
                    }

                    else
                    {
                      v21 = ((10 * v22 + 32) & 0xFE) + 100 * (v20[1] - 48) + v23;
                      if (v21 > 0xFE)
                      {
                        goto LABEL_47;
                      }

                      v20 += 3;
                    }
                  }

                  *v19++ = v21;
                  ++v20;
                }

                while (v20 < i);
              }

              goto LABEL_42;
            }

            v25 = 126;
          }
        }

        *(a2 + 14) = a2[7] & 1 | v25;
LABEL_49:
        *(a2 + 12) = a4;
        return result;
      }

      v15 = 1;
    }

    result = strlen(__s);
    v16 = 0;
    if (result)
    {
      i = &__s[result];
      goto LABEL_15;
    }

    *v12 = 0;
LABEL_42:
    v12 = a2[1];
    if (*v12)
    {
      ++v8;
      v9 += *v12 + 1;
      v12 += *v12 + 1;
      a2[1] = v12;
      __s = v16;
    }
  }

  while (v16);
  if (v9 >= 256)
  {
    *(a2 + 14) = a2[7] & 1 | 0x7E;
    goto LABEL_49;
  }

  if (v7)
  {
    *v7 = 0;
    *(v7 + 8) = v10;
    *(v7 + 16) = v11;
    *(v7 + 24) = v8;
    *(v7 + 28) = v9;
  }

  return result;
}

int32x2_t dns_full_name_to_wire_(_OWORD *a1, uint64_t a2, char *a3, int a4)
{
  if (*(a2 + 56) <= 1u)
  {
    v14 = v4;
    v15 = v5;
    v12 = 0u;
    v13 = 0u;
    dns_name_to_wire_(&v12, a2, a3, 206);
    if (*(a2 + 56) <= 1u)
    {
      v10 = *(a2 + 8);
      if ((v10 + 1) >= *(a2 + 16))
      {
        *(a2 + 56) = 111;
        goto LABEL_7;
      }

      *(a2 + 8) = v10 + 1;
      *v10 = 0;
      result = vadd_s32(*(&v13 + 8), 0x100000001);
      *(&v13 + 1) = result;
      if (result.i32[1] >= 256)
      {
        *(a2 + 56) = *(a2 + 56) & 1 | 0x7E;
LABEL_7:
        *(a2 + 48) = a4;
        return result;
      }

      if (a1)
      {
        result = v12;
        v11 = v13;
        *a1 = v12;
        a1[1] = v11;
      }
    }
  }

  return result;
}

uint64_t dns_pointer_to_wire_(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 56);
  if (v3 <= 1)
  {
    v4 = *(a2 + 16) - *(a2 + 8);
    if ((v4 & 0x8000) != 0)
    {
      v7 = v3 | 0x76;
    }

    else
    {
      v5 = *(result + 8);
      if ((v5 + 2) < *(result + 16))
      {
        *(result + 8) = v5 + 1;
        *v5 = BYTE1(v4) | 0xC0;
        v6 = *(result + 8);
        *(result + 8) = v6 + 1;
        *v6 = v4;
        return result;
      }

      v7 = 111;
    }

    *(result + 56) = v7;
    *(result + 48) = a3;
  }

  return result;
}

uint64_t dns_u32_to_wire_(uint64_t result, int a2, int a3)
{
  if (*(result + 56) <= 1u)
  {
    v3 = *(result + 8);
    if ((v3 + 4) >= *(result + 16))
    {
      *(result + 56) = 111;
      *(result + 48) = a3;
    }

    else
    {
      *(result + 8) = v3 + 1;
      *v3 = HIBYTE(a2);
      v4 = *(result + 8);
      *(result + 8) = v4 + 1;
      *v4 = BYTE2(a2);
      v5 = *(result + 8);
      *(result + 8) = v5 + 1;
      *v5 = BYTE1(a2);
      v6 = *(result + 8);
      *(result + 8) = v6 + 1;
      *v6 = a2;
    }
  }

  return result;
}

uint64_t dns_key_tag_compute(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v5 += *(a2 + v4) << (~v3 & 8);
      v4 = v6++;
      v3 += 8;
    }

    while (v4 < a1);
  }

  v7 = v5 + HIWORD(v5);
  v8 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "dns_key_tag_compute";
    v12 = 2048;
    v13 = a1;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: rdlen = %zd  tag = %x", &v10, 0x1Cu);
  }

  return v7;
}

uint64_t dns_edns0_header_to_wire_(uint64_t result, int a2)
{
  if (*(result + 56) <= 1u)
  {
    v2 = *(result + 8);
    if ((v2 + 9) < *(result + 16))
    {
      *(result + 8) = v2 + 1;
      *v2 = 0;
      v3 = *(result + 8);
      if (*(result + 56) <= 1u)
      {
        if ((v3 + 2) >= *(result + 16))
        {
          *(result + 56) = 111;
          v6 = 513;
          goto LABEL_11;
        }

        *(result + 8) = v3 + 1;
        *v3 = 0;
        v4 = *(result + 8);
        *(result + 8) = v4 + 1;
        *v4 = 41;
        v3 = *(result + 8);
        if (*(result + 56) <= 1u)
        {
          if ((v3 + 2) < *(result + 16))
          {
            *(result + 8) = v3 + 1;
            *v3 = 5;
            v5 = *(result + 8);
            *(result + 8) = v5 + 1;
            *v5 = -126;
            v3 = *(result + 8);
            goto LABEL_12;
          }

          *(result + 56) = 111;
          v6 = 514;
LABEL_11:
          *(result + 48) = v6;
        }
      }

LABEL_12:
      *(result + 8) = v3 + 1;
      *v3 = 0;
      v7 = *(result + 8);
      *(result + 8) = v7 + 1;
      *v7 = 0;
      v8 = *(result + 8);
      *(result + 8) = v8 + 1;
      *v8 = 0x80;
      v9 = *(result + 8);
      *(result + 8) = v9 + 1;
      *v9 = 0;
      return result;
    }

    *(result + 56) = 111;
    *(result + 48) = a2;
  }

  return result;
}

BOOL srp_tls_init()
{
  v0 = -67672;
  *result = 0;
  *cf = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v3 = 0;
    v4 = -6729;
    goto LABEL_21;
  }

  v2 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = v2;
  v4 = -67672;
  if (v2)
  {
    CFDictionaryAddValue(v2, kSecClass, kSecClassCertificate);
    CFDictionaryAddValue(v3, kSecReturnRef, kCFBooleanTrue);
    CFDictionaryAddValue(v3, kSecMatchLimit, kSecMatchLimitAll);
    CFDictionaryAddValue(v3, kSecAttrAccessGroup, @"com.apple.srp-mdns-proxy");
    CFDictionaryAddValue(v3, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
    CFDictionaryAddValue(v3, kSecUseDataProtectionKeychain, kCFBooleanTrue);
    CFDictionaryAddValue(v3, kSecAttrSynchronizable, kCFBooleanTrue);
    CFDictionaryAddValue(v3, kSecAttrSyncViewHint, kSecAttrViewHintLimitedPeersAllowed);
    CFDictionaryAddValue(v3, kSecReturnAttributes, kCFBooleanTrue);
    SecItemCopyMatching(v3, result);
    if (*result)
    {
      Count = CFArrayGetCount(*result);
      if (Count >= 1)
      {
        v70.length = Count;
        v70.location = 0;
        CFArrayAppendArray(Mutable, *result, v70);
      }
    }

    CFDictionaryRemoveValue(v3, kSecAttrAccessible);
    SecItemCopyMatching(v3, cf);
    if (*cf)
    {
      v6 = CFArrayGetCount(*cf);
      if (v6 >= 1)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*cf, i);
          if (ValueAtIndex)
          {
            v10 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrAccessible);
            if (!Value || CFStringCompare(Value, kSecAttrAccessibleAfterFirstUnlock, 0))
            {
              CFArrayAppendValue(Mutable, v10);
            }
          }
        }
      }
    }

    if (CFArrayGetCount(Mutable) > 0)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v4 = -25300;
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_19:
  if (*cf)
  {
    CFRelease(*cf);
    *cf = 0;
  }

LABEL_21:
  if (*result)
  {
    CFRelease(*result);
    *result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    v12 = 0;
  }

  else
  {
    if (Mutable)
    {
      v13 = CFArrayGetCount(Mutable);
    }

    else
    {
      v13 = 0;
    }

    v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v12)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (v13 >= 1)
      {
        v15 = Current;
        for (j = 0; j != v13; ++j)
        {
          v17 = CFArrayGetValueAtIndex(Mutable, j);
          if (v17)
          {
            v18 = v17;
            v19 = CFGetTypeID(v17);
            if (v19 == CFDictionaryGetTypeID())
            {
              v20 = CFDictionaryGetValue(v18, kSecAttrCreationDate);
              if (v20)
              {
                if (v15 - CFDateGetAbsoluteTime(v20) >= 2419200.0)
                {
                  CFArrayAppendValue(v12, v18);
                }
              }
            }
          }
        }
      }

      v21 = CFArrayGetCount(v12);
      if (v21 >= 1)
      {
        v22 = v21;
        for (k = 0; k != v22; ++k)
        {
          v24 = CFArrayGetValueAtIndex(v12, k);
          v25 = CFGetTypeID(v24);
          if (v25 == CFDictionaryGetTypeID())
          {
            v26 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v26)
            {
              v27 = v26;
              v28 = CFDictionaryGetValue(v24, kSecValueRef);
              if (v28)
              {
                CFDictionaryAddValue(v27, kSecValueRef, v28);
                v29 = CFDictionaryGetValue(v24, kSecAttrAccessGroup);
                if (v29)
                {
                  CFDictionaryAddValue(v27, kSecAttrAccessGroup, v29);
                  v30 = CFDictionaryGetValue(v24, kSecAttrAccessible);
                  if (v30)
                  {
                    CFDictionaryAddValue(v27, kSecAttrAccessible, v30);
                    CFDictionaryAddValue(v27, kSecUseDataProtectionKeychain, kCFBooleanTrue);
                    CFDictionaryAddValue(v27, kSecAttrSynchronizable, kCFBooleanTrue);
                    SecItemDelete(v27);
                  }
                }
              }

              CFRelease(v27);
            }
          }
        }

        v0 = -67672;
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v31 = g_tls_identity;
  if (g_tls_identity)
  {
    v32 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT) || (*result = 136446210, *&result[4] = "tls_identity_init", _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Identity already initialized, reconfirming if it is still valid.", result, 0xCu), (v31 = g_tls_identity) != 0))
    {
      sec_release(v31);
      g_tls_identity = 0;
    }
  }

  if (!keychain_identity_query(0, &g_tls_identity, &g_tls_identity_creation_time))
  {
    return 1;
  }

  v33 = keychain_identity_query(1, 0, 0);
  if (!v33 || v33 == -25300)
  {
    v34 = CFUUIDCreate(kCFAllocatorDefault);
    if (!v34 || (v35 = v34, v36 = CFUUIDCreateString(kCFAllocatorDefault, v34), CFRelease(v35), !v36))
    {
      v57 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *result = 136446210;
        *&result[4] = "tls_identity_init";
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%{public}s: Failed to generate an UUID.", result, 0xCu);
      }

      goto LABEL_132;
    }

    *&v65[8] = 0;
    v37 = CFStringCreateF();
    *v65 = CFPropertyListCreateFormatted();
    if (!*v65)
    {
      error = 0;
      v38 = SecKeyCreateRandomKey(*&v65[4], &error);
      if (v38)
      {
LABEL_65:
        if (*&v65[4])
        {
          CFRelease(*&v65[4]);
          *&v65[4] = 0;
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v38)
        {
          LODWORD(error) = 0;
          *&v65[4] = 0;
          *cf = 0;
          v39 = CFStringCreateF();
          if (error || (LODWORD(error) = CFPropertyListCreateFormatted(), error))
          {
            v40 = 0;
            v41 = 0;
          }

          else
          {
            v41 = CFStringCreateF();
            if (error || (LODWORD(error) = CFPropertyListCreateFormatted(), error))
            {
              v40 = 0;
            }

            else
            {
              SelfSignedCertificate = SecGenerateSelfSignedCertificate();
              if (SelfSignedCertificate)
              {
                v40 = SelfSignedCertificate;
              }

              else
              {
                v63 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                {
                  *result = 136446210;
                  *&result[4] = "certificate_generate";
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "%{public}s: SecGenerateSelfSignedCertificate failed.", result, 0xCu);
                }

                v40 = 0;
                v0 = -67672;
              }
            }
          }

          if (*&v65[4])
          {
            CFRelease(*&v65[4]);
            *&v65[4] = 0;
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (*cf)
          {
            CFRelease(*cf);
            *cf = 0;
          }

          if (v39)
          {
            CFRelease(v39);
          }

          if (v40)
          {
            v42 = SecIdentityCreate();
            if (v42)
            {
              v43 = v42;
              *result = 0;
              *cf = 0;
              v44 = CFStringCreateMutable(kCFAllocatorDefault, 0);
              v45 = v44;
              if (v44)
              {
                CFStringAppend(v44, @"Key ");
                CFStringAppend(v45, v36);
                v46 = CFStringCreateMutable(kCFAllocatorDefault, 0);
                v47 = v46;
                if (v46)
                {
                  CFStringAppend(v46, @"Certificate ");
                  CFStringAppend(v47, v36);
                  v48 = SecIdentityCopyPrivateKey(v43, result);
                  if (v48 || (v48 = SecIdentityCopyCertificate(v43, cf)) != 0)
                  {
                    v0 = v48;
                  }

                  else
                  {
                    v53 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    if (v53)
                    {
                      v54 = v53;
                      CFDictionaryAddValue(v53, kSecAttrLabel, v45);
                      CFDictionaryAddValue(v54, kSecAttrAccessGroup, @"com.apple.srp-mdns-proxy");
                      CFDictionaryAddValue(v54, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
                      CFDictionaryAddValue(v54, kSecAttrSynchronizable, kCFBooleanFalse);
                      CFDictionaryAddValue(v54, kSecUseDataProtectionKeychain, kCFBooleanTrue);
                      CFDictionaryAddValue(v54, kSecValueRef, *result);
                      v0 = SecItemAdd(v54, 0);
                      if (!v0)
                      {
                        CFDictionaryReplaceValue(v54, kSecAttrLabel, v47);
                        CFDictionaryReplaceValue(v54, kSecValueRef, *cf);
                        CFDictionaryReplaceValue(v54, kSecAttrSynchronizable, kCFBooleanTrue);
                        CFDictionaryAddValue(v54, kSecAttrSyncViewHint, kSecAttrViewHintLimitedPeersAllowed);
                        v55 = SecItemAdd(v54, 0);
                        if (v55)
                        {
                          v0 = v55;
                          keychain_key_remove();
                        }

                        else
                        {
                          v0 = 0;
                        }
                      }

                      CFRelease(v54);
                    }

                    else
                    {
                      v0 = 0;
                    }
                  }
                }

                if (*cf)
                {
                  CFRelease(*cf);
                  *cf = 0;
                }
              }

              else
              {
                v47 = 0;
              }

              if (*result)
              {
                CFRelease(*result);
                *result = 0;
              }

              if (v47)
              {
                CFRelease(v47);
              }

              if (v45)
              {
                CFRelease(v45);
              }

              if (!v0)
              {
                v49 = keychain_identity_query(0, &g_tls_identity, &g_tls_identity_creation_time);
                CFRelease(v43);
                CFRelease(v40);
                CFRelease(v38);
                CFRelease(v36);
                if (!v49)
                {
                  return 1;
                }

                goto LABEL_132;
              }

              v61 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *result = 136446210;
                *&result[4] = "tls_identity_init";
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "%{public}s: Failed to add the identity into keychain.", result, 0xCu);
              }

              CFRelease(v43);
            }

            else
            {
              v60 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *result = 136446210;
                *&result[4] = "tls_identity_init";
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "%{public}s: Failed to create the identity with the given private key and certificate.", result, 0xCu);
              }
            }

            CFRelease(v40);
          }

          else
          {
            v59 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *result = 136446210;
              *&result[4] = "tls_identity_init";
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "%{public}s: Failed to generate a new TLS certificate.", result, 0xCu);
            }
          }

          CFRelease(v38);
        }

        else
        {
          v58 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *result = 136446210;
            *&result[4] = "tls_identity_init";
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "%{public}s: Failed to generate a new TLS key.", result, 0xCu);
          }
        }

        CFRelease(v36);
        goto LABEL_132;
      }

      v51 = CFErrorCopyDescription(error);
      CFStringGetCString(v51, result, 200, 0x8000100u);
      v52 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *cf = 136446466;
        *&cf[4] = "private_key_generate";
        v67 = 2080;
        v68 = result;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "%{public}s: SecKeyCreateRandomKey failed to create private key - error description: %s.", cf, 0x16u);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }
    }

    v38 = 0;
    goto LABEL_65;
  }

LABEL_132:
  v62 = global_os_log;
  v50 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (v50)
  {
    *result = 136446210;
    *&result[4] = "srp_tls_init";
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}s: srp_tls_init: tls_identity_init failed.", result, 0xCu);
    return 0;
  }

  return v50;
}

void srp_tls_configure(nw_protocol_options_t *a1)
{
  v2 = nw_tls_copy_sec_protocol_options(*a1);
  v3 = sec_identity_create(g_tls_identity);
  if (v3)
  {
    v4 = v3;
    sec_protocol_options_set_tls_server_name(v2, "com.apple.dnssd-proxy");
    sec_protocol_options_set_local_identity(v2, v4);
    sec_protocol_options_append_tls_ciphersuite_group(v2, tls_ciphersuite_group_default);
    sec_protocol_options_set_min_tls_protocol_version(v2, tls_protocol_version_TLSv12);
    sec_protocol_options_set_verify_block(v2, &__block_literal_global_555, a1[1]);
    sec_release(v4);
  }

  else
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446210;
      v7 = "srp_tls_configure";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: configure_tls: sec_identity_create failed", &v6, 0xCu);
    }
  }

  if (v2)
  {
    nw_release(v2);
  }
}

void tls_certificate_rotate(uint64_t a1)
{
  if (g_tls_identity)
  {
    if (*&g_tls_identity_creation_time > 0.0)
    {
      v2 = CFDateCreate(kCFAllocatorDefault, *&g_tls_identity_creation_time);
      if (v2)
      {
        v3 = v2;
        Current = CFAbsoluteTimeGetCurrent();
        v5 = CFDateCreate(kCFAllocatorDefault, Current);
        if (v5)
        {
          v6 = v5;
          v7 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
          if (v7)
          {
            v8 = v7;
            StringWithDate = CFDateFormatterCreateStringWithDate(0, v7, v6);
            if (StringWithDate)
            {
              v10 = CFDateFormatterCreateStringWithDate(0, v8, v3);
              if (v10)
              {
                TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v6, v3);
                v12 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = 136446978;
                  v17 = "srp_tls_dispose";
                  v18 = 2114;
                  v19 = StringWithDate;
                  v20 = 2114;
                  v21 = v10;
                  v22 = 2048;
                  v23 = TimeIntervalSinceDate;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Rotating the expired TLS certificate - creation date: %{public}@, now: %{public}@, elapsed: %lf.", &v16, 0x2Au);
                }

                if (g_tls_identity)
                {
                  sec_release(g_tls_identity);
                  g_tls_identity = 0;
                }

                g_tls_identity_creation_time = 0xBFF0000000000000;
              }
            }

            else
            {
              v10 = 0;
            }

            CFRelease(v8);
            CFRelease(v6);
            if (StringWithDate)
            {
              CFRelease(StringWithDate);
            }

            if (!v10)
            {
              goto LABEL_19;
            }

            v13 = v10;
          }

          else
          {
            v13 = v6;
          }

          CFRelease(v13);
        }

LABEL_19:
        CFRelease(v3);
      }
    }
  }

  if (a1 && (v14 = *(a1 + 8)) != 0)
  {
    *(a1 + 424) |= 0x10u;

    nw_listener_cancel(v14);
  }

  else
  {
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446210;
      v17 = "tls_certificate_rotate";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%{public}s: TLS listener does not exist while the TLS certificate rotation timer is triggered.", &v16, 0xCu);
    }
  }
}

BOOL srpk_space_(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a1 + a3;
  if (a1 + a3 > a2)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136447234;
      v12 = "srpk_space_";
      v13 = 2048;
      v14 = a3;
      v15 = 2048;
      v16 = a2 - a1;
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-decompress.c";
      v19 = 1024;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: Need %lx, have %lx: no space in transaction at %{public}s:%d", &v11, 0x30u);
    }
  }

  return v5 <= a2;
}

void srpk_full_name_from_wire(uint64_t a1, void *a2)
{
  if (srpk_space_(*(a1 + 8), *(a1 + 16), 1, 791))
  {
    while (1)
    {
      v4 = *(a1 + 8);
      if (!*v4)
      {
        break;
      }

      srpk_label_from_wire_(a1, a2, 795);
      if (v5)
      {
        a2 = *a2;
        if (srpk_space_(*(a1 + 8), *(a1 + 16), 1, 799))
        {
          continue;
        }
      }

      return;
    }

    *(a1 + 8) = v4 + 1;
  }
}

BOOL srpk_integer_from_wire_max_(uint64_t a1, unint64_t *a2, int a3, int a4, int a5)
{
  v9 = 0;
  v10 = *(a1 + 8);
  while (1)
  {
    v11 = *v10;
    v9 = a3 & v11 | (v9 << 7);
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v18 = "srpk_integer_from_wire_max_";
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = a3 & v11;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: rv = %llu  byte = %llx  mask = %x", buf, 0x26u);
    }

    v13 = *(a1 + 8);
    v14 = a4 & v11;
    if (!v14)
    {
      break;
    }

    if (!srpk_space_(v13, *(a1 + 16), 1, a5))
    {
      return v14 == 0;
    }

    v10 = (*(a1 + 8) + 1);
    *(a1 + 8) = v10;
    a3 = 127;
    a4 = 128;
  }

  *(a1 + 8) = v13 + 1;
  *a2 = v9;
  return v14 == 0;
}

void *srpk_name_to_wire(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*(v3 + 14) <= 1u)
      {
        v4 = v3[1];
        if ((v4 + 1) >= v3[2])
        {
          *(v3 + 14) = 111;
          *(v3 + 12) = 399;
        }

        else
        {
          v5 = *(v2 + 8);
          v3[1] = v4 + 1;
          *v4 = v5;
          if (*(v3 + 14) <= 1u)
          {
            v6 = *(v2 + 8);
            result = v3[1];
            if (result + v6 <= v3[2])
            {
              result = memcpy(result, v2 + 9, *(v2 + 8));
              v3[1] += v6;
            }

            else
            {
              *(v3 + 14) = 111;
              *(v3 + 12) = 400;
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t srpk_hostname_to_wire(void *a1, uint64_t a2)
{
  if (*(a2 + 98) == 1)
  {
    v4 = a2 + 16;

    return dns_pointer_to_wire_(a1, v4, 408);
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 24) = *a1;
    srpk_name_to_wire(a1, *(a2 + 8));
    result = dns_pointer_to_wire_(a1, a2 + 48, 412);
    *(a2 + 98) = 1;
  }

  return result;
}

void srpk_decompress_instance_labels(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _OWORD *a5, uint64_t a6, int a7)
{
  v34 = 0;
  v35 = 0;
  srpk_label_from_wire_(a1, &v34, 554);
  if (!v14)
  {
    return;
  }

  srpk_label_from_wire_(a1, &v35, 558);
  if (!v15)
  {
    return;
  }

  v16 = v35;
  srpk_label_from_wire_(a1, v35, 561);
  if (!v17)
  {
    return;
  }

  memset(v33, 0, sizeof(v33));
  *(v33 + 8) = *a2;
  if (a5)
  {
    v18 = v33[1];
    *a5 = v33[0];
    a5[1] = v18;
  }

  srpk_name_to_wire(a2, v16);
  dns_pointer_to_wire_(a2, a3 + 48, 575);
  if (*(a2 + 56) > 1u)
  {
LABEL_20:
    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v19 = *(a2 + 8);
  if ((v19 + 2) >= *(a2 + 16))
  {
    *(a2 + 56) = 111;
    v27 = 578;
LABEL_19:
    *(a2 + 48) = v27;
    goto LABEL_20;
  }

  *(a2 + 8) = v19 + 1;
  *v19 = 0;
  v20 = *(a2 + 8);
  *(a2 + 8) = v20 + 1;
  *v20 = 12;
  if (*(a2 + 56) > 1u)
  {
    goto LABEL_20;
  }

  v21 = *(a2 + 8);
  if ((v21 + 2) >= *(a2 + 16))
  {
    *(a2 + 56) = 111;
    v27 = 579;
    goto LABEL_19;
  }

  *(a2 + 8) = v21 + 1;
  *v21 = 0;
  if (a4)
  {
    v22 = -2;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(a2 + 8);
  *(a2 + 8) = v23 + 1;
  *v23 = v22;
  if (*(a2 + 56) > 1u)
  {
    goto LABEL_20;
  }

  dns_u32_to_wire_(a2, a7, 580);
  v24 = *(a2 + 56);
  if (v24 > 1)
  {
    goto LABEL_20;
  }

  v25 = *(a2 + 8);
  if ((v25 + 2) >= *(a2 + 16))
  {
    v26 = 111;
    goto LABEL_30;
  }

  if (*(a2 + 24))
  {
    v26 = v24 | 0x2C;
LABEL_30:
    *(a2 + 56) = v26;
    v27 = 581;
    goto LABEL_19;
  }

  *(a2 + 24) = v25;
  *(a2 + 8) = v25 + 2;
  if (a6)
  {
LABEL_21:
    v28 = *a2;
    *a6 = 0;
    *(a6 + 8) = v28;
    *(a6 + 24) = 0;
  }

LABEL_22:
  srpk_name_to_wire(a2, v34);
  dns_pointer_to_wire_(a2, v33, 593);
  v29 = *(a2 + 56);
  if (v29 <= 1)
  {
    v30 = *(a2 + 24);
    if (v30)
    {
      v31 = *(a2 + 8) - v30 - 2;
      *v30 = BYTE1(v31);
      *(*(a2 + 24) + 1) = v31;
      *(a2 + 24) = 0;
      v32 = *(a2 + 56) < 2u;
    }

    else
    {
      *(a2 + 56) = v29 | 0x2C;
      *(a2 + 48) = 594;
    }
  }
}

void srpk_label_from_wire_(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 56) > 1u || !srpk_space_(*(a1 + 8), *(a1 + 16), 1, 159))
  {
    return;
  }

  v6 = *(a1 + 8);
  v7 = *v6;
  if ((v7 & 0xE0) == 0xC0)
  {
    *(a1 + 8) = v6 + 1;
    v8 = *v6;
    if ((v8 + 64) < 6u)
    {
      v9 = (v8 + 64);
      v10 = off_1000A5080[v9];
      v11 = qword_1000860F0[v9];
      v12 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v84 = "srpk_label_from_wire_";
        v85 = 2082;
        v86 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: abbreviation: %{public}s", buf, 0x16u);
      }

      v13 = 0;
LABEL_95:
      v78 = 0;
      dns_label_create_(&v78, v10, v11);
      v70 = v78;
      *a2 = v78;
      if (v13)
      {
        *(v13 + 8) = v70;
      }

      v71 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *v79 = 136446723;
        *&v79[4] = "srpk_label_from_wire_";
        v80 = 2160;
        *v81 = 1752392040;
        *&v81[8] = 2081;
        v82 = v70 + 9;
        v48 = "%{public}s: resulting label is %{private, mask.hash}s";
        v49 = v79;
        v50 = v71;
        v51 = 32;
        goto LABEL_99;
      }

      return;
    }

    v20 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136446978;
    v84 = "srpk_label_from_wire_";
    v85 = 2082;
    v86 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-decompress.c";
    v87 = 1024;
    v88 = a3;
    v89 = 1024;
    LODWORD(v90) = v8;
    v21 = "%{public}s: %{public}s:%d: unrecognized direct abbreviation %x";
    v22 = v20;
    v23 = 34;
    goto LABEL_47;
  }

  v14 = v7 & 0xC0;
  if (v14 != 128)
  {
    if (v14 == 64)
    {
      v24 = 3;
      goto LABEL_52;
    }

    if ((v7 & 0xC0) == 0)
    {
      v24 = 4;
LABEL_52:
      srpk_label_cache_(a1, v24, 249);
      if (v40)
      {
        v13 = v40;
        v41 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
        {
          v42 = "normal label";
          v43 = **(a1 + 8);
          if (v14 == 64)
          {
            v42 = "underline label";
          }

          *buf = 136446722;
          v84 = "srpk_label_from_wire_";
          v85 = 2082;
          v86 = v42;
          v87 = 1024;
          v88 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%{public}s: %{public}s %x", buf, 0x1Cu);
        }

        v78 = 0;
        if (!srpk_integer_from_wire_max_(a1, &v78, 31, 32, 260))
        {
          return;
        }

        v44 = v78;
        if (v78 >= 0x40)
        {
          v45 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v84 = "srpk_label_from_wire_";
            v85 = 2048;
            v86 = v44;
            v87 = 1024;
            v88 = a3;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s: length > 63 (%llu) at %d", buf, 0x1Cu);
          }

          *(a1 + 56) = *(a1 + 56) & 1 | 0xE;
          *(a1 + 48) = a3;
          return;
        }

        if (!srpk_space_(*(a1 + 8), *(a1 + 16), v78, 271))
        {
          return;
        }

        if (v14 == 64)
        {
          buf[0] = 95;
          v52 = *(a1 + 8);
          __memcpy_chk();
          LOBYTE(v11) = v44 + 1;
        }

        else
        {
          v52 = *(a1 + 8);
          __memcpy_chk();
          LOBYTE(v11) = v44;
        }

        *(a1 + 8) = v52 + v44;
        v55 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_94;
        }

        *v79 = 136446210;
        *&v79[4] = "srpk_label_from_wire_";
        v56 = "%{public}s: literal label";
        v57 = v55;
        v58 = 12;
        goto LABEL_93;
      }

LABEL_76:
      v38 = *(a1 + 56);
      v39 = 24;
      goto LABEL_49;
    }

    if ((v7 & 0xE0) != 0xE0)
    {
      v46 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *v79 = 136446210;
        *&v79[4] = "srpk_label_from_wire_";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}s: falling through", v79, 0xCu);
      }

      v13 = 0;
      LOBYTE(v11) = 0;
      goto LABEL_94;
    }

    if (v7 == 227)
    {
      v13 = 0;
      v25 = (v6 + 1);
      *(a1 + 8) = v6 + 1;
      v78 = 0;
      v26 = 18;
      v27 = 1;
    }

    else
    {
      srpk_label_cache_(a1, 4, 295);
      if (!v53)
      {
        goto LABEL_76;
      }

      v13 = v53;
      v25 = *(a1 + 8) + 1;
      *(a1 + 8) = v25;
      v78 = 0;
      switch(v7)
      {
        case 224:
          v26 = 16;
          v27 = 8;
          break;
        case 226:
          v26 = 18;
          v27 = 9;
          break;
        case 225:
          v26 = 33;
          v27 = 16;
          break;
        default:
          v72 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
LABEL_108:
            v54 = 44;
            goto LABEL_109;
          }

          *buf = 136446466;
          v84 = "srpk_label_from_wire_";
          v85 = 1024;
          LODWORD(v86) = v7 & 0x1F;
          v73 = "%{public}s: Unexpected generative pattern type %d";
          v74 = v72;
          v75 = 18;
LABEL_107:
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
          goto LABEL_108;
      }
    }

    if (!srpk_space_(v25, *(a1 + 16), v27, 330))
    {
      v54 = 56;
LABEL_109:
      *(a1 + 56) = *(a1 + 56) & 1 | v54;
      goto LABEL_50;
    }

    if (v7 == 226)
    {
      v77 = v26;
      v59 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        v60 = **(a1 + 8);
        *buf = 136446466;
        v84 = "srpk_label_from_wire_";
        v85 = 1024;
        LODWORD(v86) = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "%{public}s: underline char hex %x", buf, 0x12u);
      }

      buf[0] = 95;
      v61 = *(a1 + 8);
      v62 = v61 + 1;
      *(a1 + 8) = v61 + 1;
      v63 = &buf[2];
      buf[1] = *v61;
    }

    else
    {
      if (v7 == 227)
      {
        v28 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
        {
          v29 = **(a1 + 8);
          *buf = 136446466;
          v84 = "srpk_label_from_wire_";
          v85 = 1024;
          LODWORD(v86) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}s: underline char ptr %x", buf, 0x12u);
        }

        v30 = *(a1 + 8);
        *(a1 + 8) = v30 + 1;
        v31 = *v30;
        if (!srpk_integer_from_wire_max_(a1, &v78, 127, 128, 339))
        {
          goto LABEL_108;
        }

        v32 = v78;
        v33 = *a1 + v78;
        if ((v33 + 8) < *(a1 + 8))
        {
          v77 = v26;
          v34 = 0;
          buf[0] = 95;
          buf[1] = v31;
          v35 = &buf[2];
          do
          {
            snprintf(v35, 3uLL, "%02X", *(v33 + v34++));
            v35 += 2;
          }

          while (v34 != 8);
LABEL_91:
          LOBYTE(v11) = v77;
          v69 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
          {
LABEL_94:
            v10 = buf;
            goto LABEL_95;
          }

          *v79 = 136446722;
          *&v79[4] = "srpk_label_from_wire_";
          v80 = 1024;
          *v81 = v27;
          *&v81[4] = 1024;
          *&v81[6] = v77;
          v56 = "%{public}s: generative pattern inlen %d len %d";
          v57 = v69;
          v58 = 24;
LABEL_93:
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, v56, v79, v58);
          goto LABEL_94;
        }

        v76 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_108;
        }

        *buf = 136446466;
        v84 = "srpk_label_from_wire_";
        v85 = 2048;
        v86 = v32;
        v73 = "%{public}s: bogus underline-char-ptr offset %llu";
        v74 = v76;
        v75 = 22;
        goto LABEL_107;
      }

      v77 = v26;
      v62 = *(a1 + 8);
      v63 = buf;
    }

    v64 = 0;
    v65 = v63;
    do
    {
      snprintf(v65, 3uLL, "%02X", v62[v64]);
      v65 += 2;
      ++v64;
    }

    while (v64 != 8);
    v66 = *(a1 + 8) + 8;
    *(a1 + 8) = v66;
    if (v7 == 225)
    {
      v67 = 0;
      v68 = (v63 + 17);
      v63[16] = 45;
      do
      {
        snprintf(v68, 3uLL, "%02X", *(v66 + v67));
        v68 += 2;
        ++v67;
      }

      while (v67 != 8);
      *(a1 + 8) += 8;
    }

    goto LABEL_91;
  }

  *v79 = 0;
  v15 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v84 = "srpk_label_from_wire_";
    v85 = 1024;
    LODWORD(v86) = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: pointer to label: %x", buf, 0x12u);
  }

  if (!srpk_integer_from_wire_max_(a1, v79, 63, 64, 205))
  {
    return;
  }

  v16 = *(a1 + 40);
  if (!v16)
  {
    v18 = 0;
    v17 = *(a1 + 16) - a1 - 12;
LABEL_43:
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v84 = "srpk_label_from_wire_";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: back pointer missing for label pointer", buf, 0xCu);
    }

LABEL_45:
    v37 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v84 = "srpk_label_from_wire_";
    v85 = 2082;
    *buf = 136447490;
    v86 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-decompress.c";
    v87 = 1024;
    v88 = a3;
    v89 = 2048;
    v90 = *v79;
    v91 = 2048;
    v92 = v17;
    v93 = 2048;
    v94 = v18;
    v21 = "%{public}s: %{public}s:%d: missing back pointer %llu (between %llu and %llu) doesn't point to a label.";
    v22 = v37;
    v23 = 58;
LABEL_47:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_48:
    v38 = *(a1 + 56);
    v39 = 44;
LABEL_49:
    *(a1 + 56) = v39 & 0xFFFFFFFE | v38 & 1;
LABEL_50:
    *(a1 + 48) = a3;
    return;
  }

  while (1)
  {
    v17 = *(v16 + 26);
    if (*v79 == v17)
    {
      break;
    }

    v16 = *v16;
    if (v16)
    {
      v18 = *(v16 + 26);
    }

    else
    {
      v18 = 0;
    }

    if (*v79 < v17 && v18 < *v79)
    {
      goto LABEL_45;
    }

    if (!v16)
    {
      goto LABEL_43;
    }
  }

  dns_label_create_(a2, v16[1] + 9, *(v16[1] + 8));
  v47 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v84 = "srpk_label_from_wire_";
    v48 = "%{public}s: back pointer match";
    v49 = buf;
    v50 = v47;
    v51 = 12;
LABEL_99:
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, v48, v49, v51);
  }
}

void thread_device_shutdown(void *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "thread_device_shutdown";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: shutting down", &v9, 0xCu);
  }

  v3 = a1[27];
  if (v3)
  {
    cti_events_discontinue(v3);
    a1[27] = 0;
  }

  v4 = a1[33];
  if (v4)
  {
    cti_events_discontinue(v4);
    a1[33] = 0;
  }

  v5 = a1[34];
  if (v5)
  {
    cti_events_discontinue(v5);
    a1[34] = 0;
  }

  v6 = a1[35];
  if (v6)
  {
    cti_events_discontinue(v6);
    a1[35] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    ifpermit_list_remove(a1[12], v7);
    v8 = a1[5];
    if (v8)
    {
      free(v8);
      a1[5] = 0;
    }
  }

  thread_device_stop(a1);
}

void thread_device_active_data_set_changed_callback(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "thread_device_active_data_set_changed_callback";
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: error %d", buf, 0x12u);
    }

    cti_events_discontinue(*(a1 + 264));
    *(a1 + 264) = 0;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "interface", "org.wpantund.v1");
    xpc_dictionary_set_string(v5, "path", "/org/wpantund/utun2");
    xpc_dictionary_set_string(v5, "method", "PropGet");
    xpc_dictionary_set_string(v5, "property_name", "IPv6:MeshLocalAddress");
    v6 = setup_for_command(0, "get_mesh_local_address", 0, "IPv6:MeshLocalAddress", v5, a1, thread_device_get_mesh_local_address_callback, cti_internal_string_property_reply, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 313);
    if (v5)
    {
      xpc_release(v5);
    }

    if (v6)
    {
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v9 = "thread_device_active_data_set_changed_callback";
        v10 = 1024;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: cti_get_mesh_local_address failed with status %d", buf, 0x12u);
      }
    }
  }
}

void thread_device_get_mesh_local_address_callback(uint64_t a1, const char *a2, int a3)
{
  if (a3 == -65563 || a3 == -65569)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v24 = "thread_device_get_mesh_local_address_callback";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", buf, 0xCu);
    }

    v6 = *(a1 + 256);
    if (v6)
    {
      v6(a1);
    }

    goto LABEL_10;
  }

  v9 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "<null>";
    *buf = 136446722;
    v24 = "thread_device_get_mesh_local_address_callback";
    if (a2)
    {
      v11 = a2;
    }

    v25 = 2082;
    *v26 = v11;
    *&v26[8] = 1024;
    *&v26[10] = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s %d", buf, 0x1Cu);
  }

  if (!a2 || a3)
  {
LABEL_10:
    *(a1 + 415) = 0;
    return;
  }

  v22 = 0uLL;
  if (!inet_pton(30, a2, &v22))
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      v24 = "thread_device_get_mesh_local_address_callback";
      v25 = 2160;
      *v26 = 1752392040;
      *&v26[8] = 2081;
      *&v26[10] = a2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: address syntax incorrect: %{private, mask.hash}s", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (*(a1 + 415) != 1 || (v22 == *(a1 + 328) ? (v12 = *(&v22 + 1) == *(a1 + 336)) : (v12 = 0), !v12))
  {
    *(a1 + 328) = v22;
    *(a1 + 415) = 1;
    v13 = *(a1 + 56);
    if (!v13)
    {
      return;
    }

    *(v13 + 136) = *(v13 + 80) + 328;
    v14 = state_machine_event_create(7);
    state_machine_event_deliver(v13 + 8, v14);
    v15 = *v14;
    if (*v14)
    {
      v16 = global_os_log;
      if (v15 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v24 = "service_publisher_mesh_local_address_changed";
          v25 = 1024;
          *v26 = v15;
          *&v26[4] = 2048;
          *&v26[6] = v14;
          *&v26[14] = 2080;
          *&v26[16] = "event";
          *&v26[24] = 2080;
          *&v26[26] = "service-publisher.c";
          v27 = 1024;
          v28 = 2255;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v15 = *v14;
        }

        *v14 = v15 - 1;
        if (v15 == 1)
        {
          v17 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v24 = "service_publisher_mesh_local_address_changed";
            v25 = 2048;
            *v26 = v14;
            *&v26[8] = 2080;
            *&v26[10] = "event";
            *&v26[18] = 2080;
            *&v26[20] = "service-publisher.c";
            *&v26[28] = 1024;
            *&v26[30] = 2255;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++state_machine_event_finalized;
          v18 = *(v14 + 4);
          if (v18)
          {
            v18(v14);
          }

          free(v14);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_44:
        abort();
      }

      *buf = 136447490;
      v24 = "service_publisher_mesh_local_address_changed";
      v25 = 1024;
      *v26 = v15;
      *&v26[4] = 2048;
      *&v26[6] = v14;
      *&v26[14] = 2080;
      *&v26[16] = "event";
      *&v26[24] = 2080;
      *&v26[26] = "service-publisher.c";
      v27 = 1024;
      v28 = 2255;
      v21 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v16 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_44;
      }

      *buf = 136447490;
      v24 = "service_publisher_mesh_local_address_changed";
      v25 = 1024;
      *v26 = 0;
      *&v26[4] = 2048;
      *&v26[6] = v14;
      *&v26[14] = 2080;
      *&v26[16] = "event";
      *&v26[24] = 2080;
      *&v26[26] = "service-publisher.c";
      v27 = 1024;
      v28 = 2255;
      v21 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v21, buf, 0x36u);
    goto LABEL_44;
  }

  v20 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = "thread_device_get_mesh_local_address_callback";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: address didn't change", buf, 0xCu);
  }
}

void thread_device_neighbor_callback(void *a1, char *__s1, int a3)
{
  if (a3 == -65563 || a3 == -65569)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446210;
      v19 = "thread_device_neighbor_callback";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", &v18, 0xCu);
    }
  }

  else
  {
    v6 = __s1;
    if (__s1)
    {
      if (!strcmp(__s1, "none"))
      {
        a1[36] = 0;
        a1[37] = 0;
      }

      else if (!inet_pton(30, v6, a1 + 36))
      {
        v6 = "<none>";
      }
    }

    else
    {
      v6 = "<none>";
    }

    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446979;
      v19 = "thread_device_neighbor_callback";
      v20 = 2160;
      *v21 = 1752392040;
      *&v21[8] = 2081;
      *&v21[10] = v6;
      *&v21[18] = 1024;
      *&v21[20] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ml_eid: %{private, mask.hash}s, status %d", &v18, 0x26u);
    }

    if (!a3)
    {
      v9 = a1[40];
      if (v9)
      {
        free(v9);
        a1[40] = 0;
      }

      if (v6 == "<none>")
      {
        a1[36] = 0;
        a1[37] = 0;
      }

      else
      {
        v10 = strdup(v6);
        if (!v10)
        {
          v16 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v18 = 136446210;
            v19 = "strict_strdup";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: strdup() failed", &v18, 0xCu);
          }

          __break(1u);
        }

        a1[40] = v10;
      }

      v11 = state_machine_event_create(18);
      service_publisher_deliver_event_to_all_publishers(a1, v11);
      v12 = *v11;
      if (*v11)
      {
        v13 = global_os_log;
        if (v12 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136447490;
            v19 = "thread_device_neighbor_callback";
            v20 = 1024;
            *v21 = v12;
            *&v21[4] = 2048;
            *&v21[6] = v11;
            *&v21[14] = 2080;
            *&v21[16] = "event";
            *&v21[24] = 2080;
            *&v21[26] = "thread-device.c";
            v22 = 1024;
            v23 = 479;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
            v12 = *v11;
          }

          *v11 = v12 - 1;
          if (v12 == 1)
          {
            v14 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136447234;
              v19 = "thread_device_neighbor_callback";
              v20 = 2048;
              *v21 = v11;
              *&v21[8] = 2080;
              *&v21[10] = "event";
              *&v21[18] = 2080;
              *&v21[20] = "thread-device.c";
              *&v21[28] = 1024;
              *&v21[30] = 479;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v18, 0x30u);
            }

            ++state_machine_event_finalized;
            v15 = *(v11 + 4);
            if (v15)
            {
              v15(v11);
            }

            free(v11);
          }

          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_43:
          abort();
        }

        v18 = 136447490;
        v19 = "thread_device_neighbor_callback";
        v20 = 1024;
        *v21 = v12;
        *&v21[4] = 2048;
        *&v21[6] = v11;
        *&v21[14] = 2080;
        *&v21[16] = "event";
        *&v21[24] = 2080;
        *&v21[26] = "thread-device.c";
        v22 = 1024;
        v23 = 479;
        v17 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v13 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_43;
        }

        v18 = 136447490;
        v19 = "thread_device_neighbor_callback";
        v20 = 1024;
        *v21 = 0;
        *&v21[4] = 2048;
        *&v21[6] = v11;
        *&v21[14] = 2080;
        *&v21[16] = "event";
        *&v21[24] = 2080;
        *&v21[26] = "thread-device.c";
        v22 = 1024;
        v23 = 479;
        v17 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v17, &v18, 0x36u);
      goto LABEL_43;
    }
  }
}

void thread_device_wed_callback(void *a1, const char *a2, char *a3, int a4, int a5)
{
  if (a5 == -65563 || a5 == -65569)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136446210;
      v26 = "thread_device_wed_callback";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", &v25, 0xCu);
    }
  }

  else
  {
    v9 = a3;
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = "<none>";
    }

    if (a3)
    {
      if (!inet_pton(30, a3, a1 + 15))
      {
        v9 = "<none>";
      }
    }

    else
    {
      v9 = "<none>";
    }

    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = " removed";
      v25 = 136447747;
      v26 = "thread_device_wed_callback";
      v27 = 2160;
      *v28 = 1752392040;
      if (a4)
      {
        v13 = " added";
      }

      *&v28[8] = 2081;
      *&v28[10] = v11;
      *&v28[18] = 2160;
      *&v28[20] = 1752392040;
      *&v28[28] = 2081;
      *&v28[30] = v9;
      *&v28[38] = 2082;
      v29 = v13;
      v30 = 1024;
      v31 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ext_address: %{private, mask.hash}s  ml_eid: %{private, mask.hash}s%{public}s %d", &v25, 0x44u);
    }

    if (!a5)
    {
      v14 = a1[38];
      if (v14)
      {
        free(v14);
        a1[38] = 0;
      }

      v15 = a1[39];
      if (v15)
      {
        free(v15);
        a1[39] = 0;
      }

      if (a4)
      {
        if (v11 != "<none>")
        {
          v16 = strdup(v11);
          if (!v16)
          {
            goto LABEL_44;
          }

          a1[38] = v16;
        }

        if (v9 != "<none>")
        {
          v17 = strdup(v9);
          if (v17)
          {
            a1[39] = v17;
            goto LABEL_33;
          }

LABEL_44:
          v23 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v25 = 136446210;
            v26 = "strict_strdup";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: strdup() failed", &v25, 0xCu);
          }

          __break(1u);
        }

        a1[15] = 0;
        a1[16] = 0;
      }

LABEL_33:
      v18 = state_machine_event_create(17);
      service_publisher_deliver_event_to_all_publishers(a1, v18);
      v19 = *v18;
      if (*v18)
      {
        v20 = global_os_log;
        if (v19 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136447490;
            v26 = "thread_device_wed_callback";
            v27 = 1024;
            *v28 = v19;
            *&v28[4] = 2048;
            *&v28[6] = v18;
            *&v28[14] = 2080;
            *&v28[16] = "event";
            *&v28[24] = 2080;
            *&v28[26] = "thread-device.c";
            *&v28[34] = 1024;
            *&v28[36] = 429;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v25, 0x36u);
            v19 = *v18;
          }

          *v18 = v19 - 1;
          if (v19 == 1)
          {
            v21 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v25 = 136447234;
              v26 = "thread_device_wed_callback";
              v27 = 2048;
              *v28 = v18;
              *&v28[8] = 2080;
              *&v28[10] = "event";
              *&v28[18] = 2080;
              *&v28[20] = "thread-device.c";
              *&v28[28] = 1024;
              *&v28[30] = 429;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v25, 0x30u);
            }

            ++state_machine_event_finalized;
            v22 = *(v18 + 4);
            if (v22)
            {
              v22(v18);
            }

            free(v18);
          }

          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_52:
          abort();
        }

        v25 = 136447490;
        v26 = "thread_device_wed_callback";
        v27 = 1024;
        *v28 = v19;
        *&v28[4] = 2048;
        *&v28[6] = v18;
        *&v28[14] = 2080;
        *&v28[16] = "event";
        *&v28[24] = 2080;
        *&v28[26] = "thread-device.c";
        *&v28[34] = 1024;
        *&v28[36] = 429;
        v24 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v20 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_52;
        }

        v25 = 136447490;
        v26 = "thread_device_wed_callback";
        v27 = 1024;
        *v28 = 0;
        *&v28[4] = 2048;
        *&v28[6] = v18;
        *&v28[14] = 2080;
        *&v28[16] = "event";
        *&v28[24] = 2080;
        *&v28[26] = "thread-device.c";
        *&v28[34] = 1024;
        *&v28[36] = 429;
        v24 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, v24, &v25, 0x36u);
      goto LABEL_52;
    }
  }
}

void thread_device_tunnel_name_callback(uint64_t a1, char *__s1, int a3)
{
  if (a3 == -65569)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if (a3 != -65563)
    {
      v20 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = "<null>";
      v25 = 136446722;
      v26 = "thread_device_tunnel_name_callback";
      if (__s1)
      {
        v21 = __s1;
      }

      v27 = 2082;
      *v28 = v21;
      *&v28[8] = 1024;
      *&v28[10] = a3;
      v6 = "%{public}s: %{public}s %d";
      v7 = v20;
      v8 = 28;
      goto LABEL_31;
    }

LABEL_4:
    v5 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v25 = 136446210;
    v26 = "thread_device_tunnel_name_callback";
    v6 = "%{public}s: disconnected";
    v7 = v5;
    v8 = 12;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v25, v8);
    return;
  }

  *(a1 + 416) = 1;
  v10 = *(a1 + 40);
  if (v10)
  {
    if (!strcmp(__s1, v10))
    {
      goto LABEL_17;
    }

    ifpermit_list_remove(*(a1 + 96), v10);
    v11 = *(a1 + 40);
    if (v11)
    {
      free(v11);
      *(a1 + 40) = 0;
    }
  }

  if (!__s1)
  {
    v22 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v25 = 136446210;
    v26 = "strict_strdup";
    v23 = "%{public}s: strict_strdup called with NULL string";
    goto LABEL_37;
  }

  v12 = strdup(__s1);
  if (!v12)
  {
    v22 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v25 = 136446210;
    v26 = "strict_strdup";
    v23 = "%{public}s: strdup() failed";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, &v25, 0xCu);
LABEL_38:
    __break(1u);
  }

  *(a1 + 40) = v12;
  ifpermit_list_add(*(a1 + 96), __s1);
  v13 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136446466;
    v26 = "thread_device_tunnel_name_callback";
    v27 = 2082;
    *v28 = __s1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: thread interface at %{public}s", &v25, 0x16u);
  }

  if (!*(a1 + 40))
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446466;
      v26 = "thread_device_tunnel_name_callback";
      v27 = 2082;
      *v28 = __s1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: No memory to save thread interface name %{public}s", &v25, 0x16u);
    }
  }

LABEL_17:
  v15 = state_machine_event_create(16);
  service_publisher_deliver_event_to_all_publishers(a1, v15);
  v16 = *v15;
  if (!*v15)
  {
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_44;
    }

    v25 = 136447490;
    v26 = "thread_device_tunnel_name_callback";
    v27 = 1024;
    *v28 = 0;
    *&v28[4] = 2048;
    *&v28[6] = v15;
    *&v28[14] = 2080;
    *&v28[16] = "event";
    *&v28[24] = 2080;
    *&v28[26] = "thread-device.c";
    v29 = 1024;
    v30 = 370;
    v24 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_43;
  }

  v17 = global_os_log;
  if (v16 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_44;
    }

    v25 = 136447490;
    v26 = "thread_device_tunnel_name_callback";
    v27 = 1024;
    *v28 = v16;
    *&v28[4] = 2048;
    *&v28[6] = v15;
    *&v28[14] = 2080;
    *&v28[16] = "event";
    *&v28[24] = 2080;
    *&v28[26] = "thread-device.c";
    v29 = 1024;
    v30 = 370;
    v24 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v24, &v25, 0x36u);
LABEL_44:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136447490;
    v26 = "thread_device_tunnel_name_callback";
    v27 = 1024;
    *v28 = v16;
    *&v28[4] = 2048;
    *&v28[6] = v15;
    *&v28[14] = 2080;
    *&v28[16] = "event";
    *&v28[24] = 2080;
    *&v28[26] = "thread-device.c";
    v29 = 1024;
    v30 = 370;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v25, 0x36u);
    v16 = *v15;
  }

  *v15 = v16 - 1;
  if (v16 == 1)
  {
    v18 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136447234;
      v26 = "thread_device_tunnel_name_callback";
      v27 = 2048;
      *v28 = v15;
      *&v28[8] = 2080;
      *&v28[10] = "event";
      *&v28[18] = 2080;
      *&v28[20] = "thread-device.c";
      *&v28[28] = 1024;
      *&v28[30] = 370;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v25, 0x30u);
    }

    ++state_machine_event_finalized;
    v19 = *(v15 + 4);
    if (v19)
    {
      v19(v15);
    }

    free(v15);
  }
}

void thread_device_rloc16_callback(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v114 = "thread_device_rloc16_callback";
      v115 = 1024;
      *v116 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: rloc16 get failed with status %d", buf, 0x12u);
    }

    return;
  }

  *(a1 + 408) = a2;
  *(a1 + 417) = 1;
  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v114 = "thread_device_rloc16_callback";
    v115 = 1024;
    *v116 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: server_state->rloc16 updated to %x", buf, 0x12u);
  }

  if (*(a1 + 420))
  {
    v8 = state_machine_event_create(21);
    service_publisher_deliver_event_to_all_publishers(a1, v8);
    v9 = *v8;
    if (!*v8)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_221;
      }

      *buf = 136447490;
      v114 = "thread_device_network_state_changed";
      v115 = 1024;
      *v116 = 0;
      *&v116[4] = 2048;
      *&v116[6] = v8;
      *&v116[14] = 2080;
      *&v116[16] = "event";
      *&v116[24] = 2080;
      *&v116[26] = "thread-device.c";
      v117 = 1024;
      v118 = 166;
      v24 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_195;
    }

    v10 = global_os_log;
    if (v9 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v114 = "thread_device_network_state_changed";
        v115 = 1024;
        *v116 = v9;
        *&v116[4] = 2048;
        *&v116[6] = v8;
        *&v116[14] = 2080;
        *&v116[16] = "event";
        *&v116[24] = 2080;
        *&v116[26] = "thread-device.c";
        v117 = 1024;
        v118 = 166;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v9 = *v8;
      }

      *v8 = v9 - 1;
      if (v9 == 1)
      {
        v11 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v114 = "thread_device_network_state_changed";
          v115 = 2048;
          *v116 = v8;
          *&v116[8] = 2080;
          *&v116[10] = "event";
          *&v116[18] = 2080;
          *&v116[20] = "thread-device.c";
          *&v116[28] = 1024;
          *&v116[30] = 166;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++state_machine_event_finalized;
        v12 = *(v8 + 4);
        if (v12)
        {
          v12(v8);
        }

        free(v8);
      }

      return;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447490;
      v114 = "thread_device_network_state_changed";
      v115 = 1024;
      *v116 = v9;
      *&v116[4] = 2048;
      *&v116[6] = v8;
      *&v116[14] = 2080;
      *&v116[16] = "event";
      *&v116[24] = 2080;
      *&v116[26] = "thread-device.c";
      v117 = 1024;
      v118 = 166;
      v24 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_195:
      v110 = buf;
LABEL_219:
      v112 = v10;
LABEL_220:
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_FAULT, v24, v110, 0x36u);
    }

LABEL_221:
    abort();
  }

  v13 = _os_feature_enabled_impl();
  *(a1 + 428) = v13;
  v14 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "disabled";
    if (v13)
    {
      v15 = "enabled";
    }

    *buf = 136446466;
    v114 = "thread_device_start_trackers";
    v115 = 2082;
    *v116 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: srp on demand is %{public}s", buf, 0x16u);
  }

  v16 = *(a1 + 48);
  v17 = v16 == 0;
  if (!v16)
  {
    v18 = malloc_type_calloc(1uLL, 0x40uLL, 0x83F37E3AuLL);
    v19 = global_os_log;
    if (!v18)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_190;
      }

      *buf = 136446722;
      v114 = "service_tracker_create";
      v115 = 2048;
      *v116 = 1;
      *&v116[8] = 2048;
      *&v116[10] = 64;
      v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
LABEL_204:
      v107 = buf;
LABEL_214:
      v108 = v19;
      goto LABEL_215;
    }

    v20 = v18;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *v20;
      *buf = 136447490;
      v114 = "service_tracker_create";
      v115 = 1024;
      *v116 = v21;
      *&v116[4] = 2048;
      *&v116[6] = v20;
      *&v116[14] = 2080;
      *&v116[16] = "tracker";
      *&v116[24] = 2080;
      *&v116[26] = "service-tracker.c";
      v117 = 1024;
      v118 = 393;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v22 = *v20;
    if (*v20)
    {
      v23 = v22 + 1;
      *v20 = v22 + 1;
      if (v22 + 1 >= 10001)
      {
        v10 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_221;
        }

        *buf = 136447490;
        v114 = "service_tracker_create";
        v115 = 1024;
        *v116 = v23;
        *&v116[4] = 2048;
        *&v116[6] = v20;
        *&v116[14] = 2080;
        *&v116[16] = "tracker";
        *&v116[24] = 2080;
        *&v116[26] = "service-tracker.c";
        v117 = 1024;
        v118 = 393;
        v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_195;
      }
    }

    else
    {
      ++service_tracker_created;
      *v20 = 1;
    }

    v20[1] = ++service_tracker_serial_number;
    v20[3] = a1;
    *(a1 + 48) = v20;
  }

  if (*(a1 + 80))
  {
    goto LABEL_41;
  }

  v25 = malloc_type_calloc(1uLL, 0x50uLL, 0x2D9F0C5BuLL);
  v19 = global_os_log;
  if (!v25)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_190;
    }

    *buf = 136446722;
    v114 = "thread_tracker_create";
    v115 = 2048;
    *v116 = 1;
    *&v116[8] = 2048;
    *&v116[10] = 80;
    v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
    goto LABEL_204;
  }

  v26 = v25;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *v26;
    *buf = 136447490;
    v114 = "thread_tracker_create";
    v115 = 1024;
    *v116 = v27;
    *&v116[4] = 2048;
    *&v116[6] = v26;
    *&v116[14] = 2080;
    *&v116[16] = "tracker";
    *&v116[24] = 2080;
    *&v116[26] = "thread-tracker.c";
    v117 = 1024;
    v118 = 202;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v28 = *v26;
  if (*v26)
  {
    v29 = v28 + 1;
    *v26 = v28 + 1;
    if (v28 + 1 >= 10001)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_221;
      }

      *buf = 136447490;
      v114 = "thread_tracker_create";
      v115 = 1024;
      *v116 = v29;
      *&v116[4] = 2048;
      *&v116[6] = v26;
      *&v116[14] = 2080;
      *&v116[16] = "tracker";
      *&v116[24] = 2080;
      *&v116[26] = "thread-tracker.c";
      v117 = 1024;
      v118 = 202;
      v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_195;
    }
  }

  else
  {
    ++thread_tracker_created;
    *v26 = 1;
  }

  v26[1] = ++thread_tracker_serial_number;
  v26[4] = a1;
  v26[8] = 0;
  *(v26 + 36) = 0;
  *(a1 + 80) = v26;
  v17 = 1;
LABEL_41:
  if (*(a1 + 88))
  {
    goto LABEL_51;
  }

  v30 = malloc_type_calloc(1uLL, 0x48uLL, 0xC0AC03F5uLL);
  v19 = global_os_log;
  if (!v30)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_190;
    }

    *buf = 136446722;
    v114 = "node_type_tracker_create";
    v115 = 2048;
    *v116 = 1;
    *&v116[8] = 2048;
    *&v116[10] = 72;
    v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
    goto LABEL_204;
  }

  v31 = v30;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *v31;
    *buf = 136447490;
    v114 = "node_type_tracker_create";
    v115 = 1024;
    *v116 = v32;
    *&v116[4] = 2048;
    *&v116[6] = v31;
    *&v116[14] = 2080;
    *&v116[16] = "tracker";
    *&v116[24] = 2080;
    *&v116[26] = "node-type-tracker.c";
    v117 = 1024;
    v118 = 175;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v33 = *v31;
  if (*v31)
  {
    v34 = v33 + 1;
    *v31 = v33 + 1;
    if (v33 + 1 >= 10001)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_221;
      }

      *buf = 136447490;
      v114 = "node_type_tracker_create";
      v115 = 1024;
      *v116 = v34;
      *&v116[4] = 2048;
      *&v116[6] = v31;
      *&v116[14] = 2080;
      *&v116[16] = "tracker";
      *&v116[24] = 2080;
      *&v116[26] = "node-type-tracker.c";
      v117 = 1024;
      v118 = 175;
      v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_195;
    }
  }

  else
  {
    ++node_type_tracker_created;
    *v31 = 1;
  }

  v31[1] = ++node_type_tracker_serial_number;
  v31[4] = a1;
  v31[8] = 0;
  *(a1 + 88) = v31;
  v17 = 1;
LABEL_51:
  if (*(a1 + 56))
  {
    v35 = (a1 + 152);
    if (*(a1 + 152))
    {
      if (!v17)
      {
        goto LABEL_161;
      }

LABEL_126:
      v71 = *(a1 + 80);
      v72 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v72, "interface", "org.wpantund.v1");
      xpc_dictionary_set_string(v72, "path", "/org/wpantund/utun2");
      xpc_dictionary_set_string(v72, "method", "PropGet");
      xpc_dictionary_set_string(v72, "property_name", "NCP:State");
      v73 = setup_for_command((v71 + 40), "get_state", "NCP:State", 0, v72, v71, thread_tracker_callback, cti_internal_state_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-tracker.c", 220);
      if (v72)
      {
        xpc_release(v72);
      }

      v74 = global_os_log;
      if (v73 && os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v75 = *(v71 + 8);
        *buf = 136446722;
        v114 = "thread_tracker_start";
        v115 = 2048;
        *v116 = v75;
        *&v116[8] = 1024;
        *&v116[10] = v73;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s: [TT%lld] service list get failed: %d", buf, 0x1Cu);
        v74 = global_os_log;
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *v71;
        *buf = 136447490;
        v114 = "thread_tracker_start";
        v115 = 1024;
        *v116 = v76;
        *&v116[4] = 2048;
        *&v116[6] = v71;
        *&v116[14] = 2080;
        *&v116[16] = "tracker";
        *&v116[24] = 2080;
        *&v116[26] = "thread-tracker.c";
        v117 = 1024;
        v118 = 224;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v77 = *v71;
      if (*v71)
      {
        v78 = v77 + 1;
        *v71 = v77 + 1;
        if (v77 + 1 >= 10001)
        {
          v10 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_221;
          }

          *buf = 136447490;
          v114 = "thread_tracker_start";
          v115 = 1024;
          *v116 = v78;
          *&v116[4] = 2048;
          *&v116[6] = v71;
          *&v116[14] = 2080;
          *&v116[16] = "tracker";
          *&v116[24] = 2080;
          *&v116[26] = "thread-tracker.c";
          v117 = 1024;
          v118 = 224;
          v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_195;
        }
      }

      else
      {
        ++thread_tracker_created;
        *v71 = 1;
      }

      if ((*(a1 + 419) & 1) == 0)
      {
        v79 = *(a1 + 88);
        v80 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v80, "interface", "org.wpantund.v1");
        xpc_dictionary_set_string(v80, "path", "/org/wpantund/utun2");
        xpc_dictionary_set_string(v80, "method", "PropGet");
        xpc_dictionary_set_string(v80, "property_name", "Network:NodeType");
        v81 = setup_for_command((v79 + 40), "get_network_node_type", "Network:NodeType", 0, v80, v79, node_type_tracker_callback, cti_internal_network_node_type_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/node-type-tracker.c", 193);
        if (v80)
        {
          xpc_release(v80);
        }

        v82 = global_os_log;
        if (v81 && os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v83 = *(v79 + 8);
          *buf = 136446722;
          v114 = "node_type_tracker_start";
          v115 = 2048;
          *v116 = v83;
          *&v116[8] = 1024;
          *&v116[10] = v81;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s: [TT%lld] service list get failed: %d", buf, 0x1Cu);
          v82 = global_os_log;
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *v79;
          *buf = 136447490;
          v114 = "node_type_tracker_start";
          v115 = 1024;
          *v116 = v84;
          *&v116[4] = 2048;
          *&v116[6] = v79;
          *&v116[14] = 2080;
          *&v116[16] = "tracker";
          *&v116[24] = 2080;
          *&v116[26] = "node-type-tracker.c";
          v117 = 1024;
          v118 = 197;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v85 = *v79;
        if (*v79)
        {
          v86 = v85 + 1;
          *v79 = v85 + 1;
          if (v85 + 1 >= 10001)
          {
            v10 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_221;
            }

            *buf = 136447490;
            v114 = "node_type_tracker_start";
            v115 = 1024;
            *v116 = v86;
            *&v116[4] = 2048;
            *&v116[6] = v79;
            *&v116[14] = 2080;
            *&v116[16] = "tracker";
            *&v116[24] = 2080;
            *&v116[26] = "node-type-tracker.c";
            v117 = 1024;
            v118 = 197;
            v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
            goto LABEL_195;
          }
        }

        else
        {
          ++node_type_tracker_created;
          *v79 = 1;
        }

        *(a1 + 419) = 1;
      }

      state_machine_next_state(*(a1 + 56) + 8, 1u);
      v87 = *(a1 + 152);
      if (v87)
      {
        cti_track_active_data_set_((v87 + 96), *(a1 + 152), dnssd_client_active_data_set_changed_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 721);
        v88 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v89 = *v87;
          *buf = 136447490;
          v114 = "dnssd_client_start";
          v115 = 1024;
          *v116 = v89;
          *&v116[4] = 2048;
          *&v116[6] = v87;
          *&v116[14] = 2080;
          *&v116[16] = "client";
          *&v116[24] = 2080;
          *&v116[26] = "dnssd-client.c";
          v117 = 1024;
          v118 = 722;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v90 = *v87;
        if (*v87)
        {
          v91 = v90 + 1;
          *v87 = v90 + 1;
          if (v90 + 1 >= 10001)
          {
            v10 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_221;
            }

            *buf = 136447490;
            v114 = "dnssd_client_start";
            v115 = 1024;
            *v116 = v91;
            *&v116[4] = 2048;
            *&v116[6] = v87;
            *&v116[14] = 2080;
            *&v116[16] = "client";
            *&v116[24] = 2080;
            *&v116[26] = "dnssd-client.c";
            v117 = 1024;
            v118 = 722;
            v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
            goto LABEL_195;
          }
        }

        else
        {
          ++dnssd_client_created;
          *v87 = 1;
        }

        dnssd_client_active_data_set_changed_callback(v87, 0);
        state_machine_next_state(v87 + 8, 1u);
      }

      goto LABEL_161;
    }

    goto LABEL_94;
  }

  v36 = malloc_type_calloc(1uLL, 0xA8uLL, 0xA348DF12uLL);
  v19 = global_os_log;
  if (!v36)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_190;
    }

    *v119 = 136446722;
    v120 = "service_publisher_create";
    v121 = 2048;
    *v122 = 1;
    *&v122[8] = 2048;
    *&v122[10] = 168;
    v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
LABEL_213:
    v107 = v119;
    goto LABEL_214;
  }

  v37 = v36;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *v37;
    *v119 = 136447490;
    v120 = "service_publisher_create";
    v121 = 1024;
    *v122 = v38;
    *&v122[4] = 2048;
    *&v122[6] = v37;
    *&v122[14] = 2080;
    *&v122[16] = "publisher";
    *&v122[24] = 2080;
    *&v122[26] = "service-publisher.c";
    v123 = 1024;
    v124 = 2184;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
  }

  v39 = *v37;
  if (*v37)
  {
    v40 = v39 + 1;
    *v37 = v39 + 1;
    if (v39 + 1 >= 10001)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_221;
      }

      *v119 = 136447490;
      v120 = "service_publisher_create";
      v121 = 1024;
      *v122 = v40;
      *&v122[4] = 2048;
      *&v122[6] = v37;
      *&v122[14] = 2080;
      *&v122[16] = "publisher";
      *&v122[24] = 2080;
      *&v122[26] = "service-publisher.c";
      v123 = 1024;
      v124 = 2184;
      v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_218:
      v110 = v119;
      goto LABEL_219;
    }
  }

  else
  {
    ++service_publisher_created;
    *v37 = 1;
  }

  *(v37 + 88) = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 2185);
  snprintf(buf, 0x64uLL, "[SP%lld %s]", ++service_publisher_serial_number, "uni");
  v41 = strdup(buf);
  if (!v41)
  {
    v105 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_190;
    }

    *v119 = 136446210;
    v120 = "strict_strdup";
    v106 = "%{public}s: strdup() failed";
    goto LABEL_188;
  }

  *(v37 + 72) = v41;
  *(v37 + 144) = 2;
  if (state_machine_header_setup(v37 + 8, v37, v41, 2, &service_publisher_states, 7))
  {
    *(v37 + 80) = a1;
    service_tracker_callback_add(*(a1 + 48), service_publisher_service_tracker_callback, service_publisher_context_release, v37);
    if (v42)
    {
      v43 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *v37;
        *v119 = 136447490;
        v120 = "service_publisher_create";
        v121 = 1024;
        *v122 = v44;
        *&v122[4] = 2048;
        *&v122[6] = v37;
        *&v122[14] = 2080;
        *&v122[16] = "publisher";
        *&v122[24] = 2080;
        *&v122[26] = "service-publisher.c";
        v123 = 1024;
        v124 = 2216;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
      }

      v45 = *v37;
      if (*v37)
      {
        v46 = v45 + 1;
        *v37 = v45 + 1;
        if (v45 + 1 >= 10001)
        {
          v10 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_221;
          }

          *v119 = 136447490;
          v120 = "service_publisher_create";
          v121 = 1024;
          *v122 = v46;
          *&v122[4] = 2048;
          *&v122[6] = v37;
          *&v122[14] = 2080;
          *&v122[16] = "publisher";
          *&v122[24] = 2080;
          *&v122[26] = "service-publisher.c";
          v123 = 1024;
          v124 = 2216;
          v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_218;
        }
      }

      else
      {
        ++service_publisher_created;
        *v37 = 1;
      }

      node_type_tracker_callback_add(*(a1 + 88), service_publisher_node_type_tracker_callback, service_publisher_context_release, v37);
      if (v49)
      {
        v50 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *v37;
          *v119 = 136447490;
          v120 = "service_publisher_create";
          v121 = 1024;
          *v122 = v51;
          *&v122[4] = 2048;
          *&v122[6] = v37;
          *&v122[14] = 2080;
          *&v122[16] = "publisher";
          *&v122[24] = 2080;
          *&v122[26] = "service-publisher.c";
          v123 = 1024;
          v124 = 2223;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
        }

        v52 = *v37;
        if (*v37)
        {
          v53 = v52 + 1;
          *v37 = v52 + 1;
          if (v52 + 1 >= 10001)
          {
            v10 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_221;
            }

            *v119 = 136447490;
            v120 = "service_publisher_create";
            v121 = 1024;
            *v122 = v53;
            *&v122[4] = 2048;
            *&v122[6] = v37;
            *&v122[14] = 2080;
            *&v122[16] = "publisher";
            *&v122[24] = 2080;
            *&v122[26] = "service-publisher.c";
            v123 = 1024;
            v124 = 2223;
            v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
            goto LABEL_218;
          }
        }

        else
        {
          ++service_publisher_created;
          *v37 = 1;
        }

        *(v37 + 158) = 1;
        *(v37 + 148) = 750;
        v35 = (a1 + 152);
        v57 = *(a1 + 152);
        *(a1 + 56) = v37;
        if (v57)
        {
          goto LABEL_126;
        }

LABEL_94:
        v58 = malloc_type_calloc(1uLL, 0xB0uLL, 0xA3DDC3D2uLL);
        v19 = global_os_log;
        if (v58)
        {
          v59 = v58;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v60 = *v59;
            *v119 = 136447490;
            v120 = "dnssd_client_create";
            v121 = 1024;
            *v122 = v60;
            *&v122[4] = 2048;
            *&v122[6] = v59;
            *&v122[14] = 2080;
            *&v122[16] = "client";
            *&v122[24] = 2080;
            *&v122[26] = "dnssd-client.c";
            v123 = 1024;
            v124 = 633;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
          }

          v61 = *v59;
          if (*v59)
          {
            v62 = v61 + 1;
            *v59 = v61 + 1;
            if (v61 + 1 >= 10001)
            {
              v10 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_221;
              }

              *v119 = 136447490;
              v120 = "dnssd_client_create";
              v121 = 1024;
              *v122 = v62;
              *&v122[4] = 2048;
              *&v122[6] = v59;
              *&v122[14] = 2080;
              *&v122[16] = "client";
              *&v122[24] = 2080;
              *&v122[26] = "dnssd-client.c";
              v123 = 1024;
              v124 = 633;
              v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_218;
            }
          }

          else
          {
            ++dnssd_client_created;
            *v59 = 1;
          }

          *(v59 + 88) = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 634);
          snprintf(buf, 0x64uLL, "[DC%lld]", ++dnssd_client_serial_number);
          v63 = strdup(buf);
          if (v63)
          {
            *(v59 + 72) = v63;
            *(v59 + 160) = 0xFFFFFFFF00000002;
            *(v59 + 168) = 853;
            if (state_machine_header_setup(v59 + 8, v59, v63, 3, &dnssd_client_states, 5))
            {
              *(v59 + 80) = a1;
              service_tracker_callback_add(*(a1 + 48), dnssd_client_service_tracker_callback, dnssd_client_context_release, v59);
              if (v64)
              {
                v65 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = *v59;
                  *v119 = 136447490;
                  v120 = "dnssd_client_create";
                  v121 = 1024;
                  *v122 = v66;
                  *&v122[4] = 2048;
                  *&v122[6] = v59;
                  *&v122[14] = 2080;
                  *&v122[16] = "client";
                  *&v122[24] = 2080;
                  *&v122[26] = "dnssd-client.c";
                  v123 = 1024;
                  v124 = 666;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
                }

                v67 = *v59;
                if (*v59)
                {
                  v68 = v67 + 1;
                  *v59 = v67 + 1;
                  if (v67 + 1 >= 10001)
                  {
                    v10 = global_os_log;
                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_221;
                    }

                    *v119 = 136447490;
                    v120 = "dnssd_client_create";
                    v121 = 1024;
                    *v122 = v68;
                    *&v122[4] = 2048;
                    *&v122[6] = v59;
                    *&v122[14] = 2080;
                    *&v122[16] = "client";
                    *&v122[24] = 2080;
                    *&v122[26] = "dnssd-client.c";
                    v123 = 1024;
                    v124 = 666;
                    v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                    goto LABEL_218;
                  }
                }

                else
                {
                  ++dnssd_client_created;
                  *v59 = 1;
                }

                *v35 = v59;
                goto LABEL_126;
              }
            }

            else
            {
              v69 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *v119 = 136446210;
                v120 = "dnssd_client_create";
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%{public}s: header setup failed", v119, 0xCu);
              }
            }

            v70 = *v59;
            if (!*v59)
            {
              v10 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_221;
              }

              *v119 = 136447490;
              v120 = "dnssd_client_create";
              v121 = 1024;
              *v122 = 0;
              *&v122[4] = 2048;
              *&v122[6] = v59;
              *&v122[14] = 2080;
              *&v122[16] = "client";
              *&v122[24] = 2080;
              *&v122[26] = "dnssd-client.c";
              v123 = 1024;
              v124 = 672;
              v24 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              goto LABEL_218;
            }

            v55 = global_os_log;
            if (v70 < 10001)
            {
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *v119 = 136447490;
                v120 = "dnssd_client_create";
                v121 = 1024;
                *v122 = v70;
                *&v122[4] = 2048;
                *&v122[6] = v59;
                *&v122[14] = 2080;
                *&v122[16] = "client";
                *&v122[24] = 2080;
                *&v122[26] = "dnssd-client.c";
                v123 = 1024;
                v124 = 672;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
                v70 = *v59;
                v55 = global_os_log;
              }

              *v59 = v70 - 1;
              if (v70 == 1)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *v119 = 136447234;
                  v120 = "dnssd_client_create";
                  v121 = 2048;
                  *v122 = v59;
                  *&v122[8] = 2080;
                  *&v122[10] = "client";
                  *&v122[18] = 2080;
                  *&v122[20] = "dnssd-client.c";
                  *&v122[28] = 1024;
                  *&v122[30] = 672;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v119, 0x30u);
                }

                ++dnssd_client_finalized;
                dnssd_client_finalize(v59);
                v55 = global_os_log;
              }

              *v35 = 0;
              if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_161;
              }

              *buf = 136446210;
              v114 = "thread_device_start_trackers";
              v56 = "%{public}s: can't create dnssd client";
              goto LABEL_123;
            }

            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_221;
            }

            *v119 = 136447490;
            v120 = "dnssd_client_create";
            v121 = 1024;
            *v122 = v70;
            *&v122[4] = 2048;
            *&v122[6] = v59;
            *&v122[14] = 2080;
            *&v122[16] = "client";
            *&v122[24] = 2080;
            *&v122[26] = "dnssd-client.c";
            v123 = 1024;
            v124 = 672;
            v24 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_224:
            v110 = v119;
            v112 = v55;
            goto LABEL_220;
          }

          v105 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_190;
          }

          *v119 = 136446210;
          v120 = "strict_strdup";
          v106 = "%{public}s: strdup() failed";
LABEL_188:
          v107 = v119;
          v108 = v105;
          v109 = 12;
LABEL_189:
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, v106, v107, v109);
          goto LABEL_190;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        *v119 = 136446722;
        v120 = "dnssd_client_create";
        v121 = 2048;
        *v122 = 1;
        *&v122[8] = 2048;
        *&v122[10] = 176;
        v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
        goto LABEL_213;
      }
    }
  }

  else
  {
    v47 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v48 = *(v37 + 72);
      *v119 = 136446466;
      v120 = "service_publisher_create";
      v121 = 2082;
      *v122 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s header setup failed", v119, 0x16u);
    }
  }

  v54 = *v37;
  if (!*v37)
  {
    v10 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_221;
    }

    *v119 = 136447490;
    v120 = "service_publisher_create";
    v121 = 1024;
    *v122 = 0;
    *&v122[4] = 2048;
    *&v122[6] = v37;
    *&v122[14] = 2080;
    *&v122[16] = "publisher";
    *&v122[24] = 2080;
    *&v122[26] = "service-publisher.c";
    v123 = 1024;
    v124 = 2232;
    v24 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_218;
  }

  v55 = global_os_log;
  if (v54 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_221;
    }

    *v119 = 136447490;
    v120 = "service_publisher_create";
    v121 = 1024;
    *v122 = v54;
    *&v122[4] = 2048;
    *&v122[6] = v37;
    *&v122[14] = 2080;
    *&v122[16] = "publisher";
    *&v122[24] = 2080;
    *&v122[26] = "service-publisher.c";
    v123 = 1024;
    v124 = 2232;
    v24 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_224;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *v119 = 136447490;
    v120 = "service_publisher_create";
    v121 = 1024;
    *v122 = v54;
    *&v122[4] = 2048;
    *&v122[6] = v37;
    *&v122[14] = 2080;
    *&v122[16] = "publisher";
    *&v122[24] = 2080;
    *&v122[26] = "service-publisher.c";
    v123 = 1024;
    v124 = 2232;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v119, 0x36u);
    v54 = *v37;
    v55 = global_os_log;
  }

  *v37 = v54 - 1;
  if (v54 == 1)
  {
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *v119 = 136447234;
      v120 = "service_publisher_create";
      v121 = 2048;
      *v122 = v37;
      *&v122[8] = 2080;
      *&v122[10] = "publisher";
      *&v122[18] = 2080;
      *&v122[20] = "service-publisher.c";
      *&v122[28] = 1024;
      *&v122[30] = 2232;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v119, 0x30u);
    }

    ++service_publisher_finalized;
    service_publisher_finalize(v37);
    v55 = global_os_log;
  }

  *(a1 + 56) = 0;
  if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_161;
  }

  *buf = 136446210;
  v114 = "thread_device_start_trackers";
  v56 = "%{public}s: can't create unicast service publisher.";
LABEL_123:
  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, v56, buf, 0xCu);
LABEL_161:
  v92 = *(a1 + 80);
  v93 = v92 + 12;
  do
  {
    v94 = *v93;
    if (!*v93)
    {
      v97 = malloc_type_calloc(1uLL, 0x20uLL, 0xC69E3B29uLL);
      if (v97)
      {
        v98 = v97;
        v97[1] = 0;
        v97[2] = thread_device_thread_tracker_callback;
        v97[3] = a1;
        if (v92 && !*(v92 + 6))
        {
          v99 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v100 = *v92;
            *buf = 136447490;
            v114 = "thread_tracker_callback_add";
            v115 = 1024;
            *v116 = v100;
            *&v116[4] = 2048;
            *&v116[6] = v92;
            *&v116[14] = 2080;
            *&v116[16] = "tracker";
            *&v116[24] = 2080;
            *&v116[26] = "thread-tracker.c";
            v117 = 1024;
            v118 = 253;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          v101 = *v92;
          if (*v92)
          {
            v102 = v101 + 1;
            *v92 = v101 + 1;
            if (v101 + 1 >= 10001)
            {
              v10 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_221;
              }

              *buf = 136447490;
              v114 = "thread_tracker_callback_add";
              v115 = 1024;
              *v116 = v102;
              *&v116[4] = 2048;
              *&v116[6] = v92;
              *&v116[14] = 2080;
              *&v116[16] = "tracker";
              *&v116[24] = 2080;
              *&v116[26] = "thread-tracker.c";
              v117 = 1024;
              v118 = 253;
              v24 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_195;
            }
          }

          else
          {
            ++thread_tracker_created;
            *v92 = 1;
          }
        }

        *v93 = v98;
        goto LABEL_179;
      }

      v111 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v114 = "thread_tracker_callback_add";
        v115 = 2048;
        *v116 = 1;
        *&v116[8] = 2048;
        *&v116[10] = 32;
        v106 = "%{public}s: strict_calloc(%zu, %zu) failed";
        v107 = buf;
        v108 = v111;
LABEL_215:
        v109 = 32;
        goto LABEL_189;
      }

LABEL_190:
      __break(1u);
    }

    v93 = *v93;
  }

  while (v94[3] != a1);
  v95 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
  {
    v96 = *(v92 + 1);
    *buf = 136446722;
    v114 = "thread_tracker_callback_add";
    v115 = 2048;
    *v116 = v96;
    *&v116[8] = 2048;
    *&v116[10] = a1;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, "%{public}s: [TT%lld] duplicate context %p", buf, 0x20u);
    v95 = global_os_log;
  }

  if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v114 = "thread_device_rloc16_callback";
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, "%{public}s: could not add thread_tracker_callback", buf, 0xCu);
  }

LABEL_179:
  node_type_tracker_callback_add(*(a1 + 88), thread_device_node_type_callback, 0, a1);
  if ((v103 & 1) == 0)
  {
    v104 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v114 = "thread_device_rloc16_callback";
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_FAULT, "%{public}s: could not add node_type_tracker_callback", buf, 0xCu);
    }
  }

  *(a1 + 420) = 1;
}