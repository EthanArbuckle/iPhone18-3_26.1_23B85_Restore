xpc_object_t mrc_xpc_create_reply(void *a1, int a2, void *a3)
{
  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    uint64 = xpc_dictionary_get_uint64(a1, "id");
    xpc_dictionary_set_uint64(reply, "id", uint64);
    xpc_dictionary_set_int64(reply, "error", a2);
    if (a3)
    {
      xpc_dictionary_set_value(reply, "result", a3);
    }
  }

  return reply;
}

void *mrc_xpc_dns_proxy_params_get_output_interface(void *a1, BOOL *a2)
{
  v9 = 0;
  value = xpc_dictionary_get_value(a1, "output_interface");
  uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFuLL, &v9);
  if (a2)
  {
    v6 = v9;
    if (!v9)
    {
      v7 = xpc_dictionary_get_value(a1, "output_interface");
      v6 = v9;
      if (!v7)
      {
        v6 = 1;
      }
    }

    *a2 = v6;
  }

  return uint64_limited;
}

const char *mrc_xpc_dns_proxy_params_get_nat64_prefix(void *a1, void *a2)
{
  v8 = 0;
  value = xpc_dictionary_get_value(a1, "nat64_prefix.bit_len");
  uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFFFFFFFFFLL, &v8);
  result = 0;
  if (!v8 || uint64_limited > 0x80)
  {
    return result;
  }

  if (!uint64_limited)
  {
    result = "";
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  result = xpc_dictionary_get_data(a1, "nat64_prefix.bits", &v7);
  if (!result || v7 < (uint64_limited + 7) >> 3)
  {
    return 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = uint64_limited;
  }

  return result;
}

BOOL mrc_xpc_dns_proxy_params_get_force_aaaa_synthesis(void *a1, BOOL *a2)
{
  object = _mdns_xpc_dictionary_get_object(a1, "force_aaaa_synth", &_xpc_type_BOOL);
  v5 = object;
  v6 = object != 0;
  if (a2)
  {
    if (!object && !xpc_dictionary_get_value(a1, "force_aaaa_synth"))
    {
      v6 = 1;
    }

    *a2 = v6;
  }

  return v5 == &_xpc_BOOL_true;
}

uint64_t mrc_xpc_dns_service_registration_params_get_definition_type(void *a1, BOOL *a2)
{
  v6 = 0;
  value = xpc_dictionary_get_value(a1, "definition_type");
  result = _mdns_xpc_object_get_uint64_limited(value, 0xFFuLL, &v6);
  if (a2)
  {
    v5 = v6 && (result - 1) < 2;
    *a2 = v5;
  }

  return result;
}

void _mdns_dns_push_service_definition_finalize(void *a1)
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
    os_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    free(v7);
    a1[8] = 0;
  }
}

void *_mdns_dns_push_service_definition_copy_description(uint64_t a1, int a2, int a3)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    v12 = 0;
    goto LABEL_37;
  }

  v7 = v6;
  if (a2)
  {
    appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
    *(v40 + 6) = appended;
    if (appended)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a1 + 64);
  if (!v9)
  {
    v9 = "";
  }

  v10 = mdns_string_builder_append_formatted(v7, "interface: %s/%u", v9, *(a1 + 72));
  *(v40 + 6) = v10;
  if (v10)
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(*(a1 + 40)) < 1)
  {
    v13 = mdns_string_builder_append_formatted(v7, ", hostname: ");
    *(v40 + 6) = v13;
    if (!v13)
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        if (a3)
        {
          v15 = (v14 + 16);
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            v16 = v15[3];
            if (v16)
            {
              v17 = v16();
              goto LABEL_24;
            }
          }

          v17 = 0;
LABEL_24:
          v20 = "«REDACTED»";
          if (v17)
          {
            v20 = v17;
          }
        }

        else
        {
          v17 = 0;
          v20 = *(v14 + 40);
        }
      }

      else
      {
        v17 = 0;
        v20 = "«NO HOSTNAME»";
      }

      v21 = mdns_string_builder_append_formatted(v7, "%s", v20);
      *(v40 + 6) = v21;
      if (v21)
      {
        goto LABEL_34;
      }

      v22 = mdns_string_builder_append_formatted(v7, ", port: %u", *(a1 + 76));
      *(v40 + 6) = v22;
      if (v22)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_36;
  }

  v11 = mdns_string_builder_append_formatted(v7, ", servers: {");
  *(v40 + 6) = v11;
  if (v11)
  {
    goto LABEL_9;
  }

  v36[3] = 0;
  v18 = *(a1 + 40);
  if (v18)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 0x40000000;
    v33[2] = ___mdns_dns_push_service_definition_copy_description_block_invoke;
    v33[3] = &unk_10014DE00;
    v33[4] = &v39;
    v33[5] = &v35;
    v33[6] = v7;
    v34 = a3;
    mdns_cfarray_enumerate(v18, v33);
    if (*(v40 + 6))
    {
      goto LABEL_9;
    }
  }

  v19 = mdns_string_builder_append_formatted(v7, "}");
  v17 = 0;
  v12 = 0;
  *(v40 + 6) = v19;
  if (v19)
  {
    goto LABEL_36;
  }

LABEL_28:
  v23 = mdns_string_builder_append_formatted(v7, ", domains: {");
  *(v40 + 6) = v23;
  if (!v23)
  {
    v36[3] = "";
    v24 = *(a1 + 48);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 0x40000000;
    v31[2] = ___mdns_dns_push_service_definition_copy_description_block_invoke_2;
    v31[3] = &unk_10014DE28;
    v32 = a3;
    v31[4] = &v35;
    v31[5] = v7;
    if (mdns_cfset_enumerate(v24, v31))
    {
      v25 = mdns_string_builder_append_formatted(v7, "}");
      *(v40 + 6) = v25;
      if (!v25)
      {
        v36[3] = "";
        if ((*(a1 + 79) & 1) == 0 && *(a1 + 80) != 1)
        {
LABEL_45:
          v12 = mdns_string_builder_copy_string(v7);
          if (!v17)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v26 = mdns_string_builder_append_formatted(v7, ", attributes: {");
        *(v40 + 6) = v26;
        if (v26)
        {
          goto LABEL_34;
        }

        if (*(a1 + 79) == 1)
        {
          v28 = mdns_string_builder_append_formatted(v7, "%slocal-purview", v36[3]);
          *(v40 + 6) = v28;
          if (v28)
          {
            goto LABEL_34;
          }

          v36[3] = ", ";
        }

        if (*(a1 + 80) == 1)
        {
          v29 = mdns_string_builder_append_formatted(v7, "%smdns-alternative", v36[3]);
          *(v40 + 6) = v29;
          if (v29)
          {
            goto LABEL_34;
          }

          v36[3] = ", ";
        }

        v30 = mdns_string_builder_append_formatted(v7, "}");
        *(v40 + 6) = v30;
        if (!v30)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_34:
  v12 = 0;
  if (v17)
  {
LABEL_35:
    free(v17);
  }

LABEL_36:
  os_release(v7);
LABEL_37:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v12;
}

BOOL ___mdns_dns_push_service_definition_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_push_service_definition_copy_description_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a2 + 16);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      v4 = v3[3];
      if (v4)
      {
        v5 = v4(a2, 0, 1);
        goto LABEL_8;
      }
    }

    v5 = 0;
LABEL_8:
    v6 = "«REDACTED»";
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 40);
  }

  appended = mdns_string_builder_append_formatted(*(a1 + 40), "%s%s", *(*(*(a1 + 32) + 8) + 24), v6);
  if (v5)
  {
    free(v5);
  }

  result = appended == 0;
  *(*(*(a1 + 32) + 8) + 24) = ", ";
  return result;
}

void *mdns_dns_push_service_definition_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_dns_push_service_definition_kind;
    *(v0 + 16) = &_mdns_dns_push_service_definition_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    v1[5] = Mutable;
    if (!Mutable || (v5 = CFSetCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_cf_set_callbacks), (v1[6] = v5) == 0) || (v6 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (v1[7] = v6) == 0))
    {
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t mdns_dns_push_service_definition_create_from_xpc_dictionary(void *a1, int *a2)
{
  v48 = 0;
  v4 = mdns_dns_push_service_definition_create();
  v5 = v4;
  if (!v4)
  {
    v8 = -6729;
    v48 = -6729;
    if (!a2)
    {
      goto LABEL_41;
    }

LABEL_40:
    *a2 = v8;
    goto LABEL_41;
  }

  string = xpc_dictionary_get_string(a1, "srv_name");
  if (string)
  {
    v7 = mdns_domain_name_create(string, &v48);
    v8 = v48;
    if (v48)
    {
      goto LABEL_39;
    }

    v9 = v7;
    mdns_dns_push_service_definition_set_srv_name(v5, v7);
    if (v9)
    {
      os_release(v9);
    }
  }

  optional_array = mdns_xpc_dictionary_get_optional_array(a1, "addresses");
  if (optional_array)
  {
    v11 = optional_array;
    count = xpc_array_get_count(optional_array);
    if (count)
    {
      v13 = count;
      v14 = 0;
      do
      {
        v15 = xpc_array_get_string(v11, v14);
        if (!v15)
        {
          goto LABEL_37;
        }

        v16 = mdns_address_create_from_ip_address_string_and_port(v15, 0);
        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = v16;
        CFArrayAppendValue(*(v5 + 40), v16);
        os_release(v17);
      }

      while (v13 != ++v14);
    }
  }

  v18 = mdns_xpc_dictionary_get_optional_array(a1, "domains");
  if (v18)
  {
    v19 = v18;
    v20 = xpc_array_get_count(v18);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      do
      {
        v23 = xpc_array_get_string(v19, v22);
        if (!v23)
        {
          goto LABEL_37;
        }

        v24 = mdns_domain_name_create(v23, &v48);
        v8 = v48;
        if (v48)
        {
          goto LABEL_39;
        }

        v25 = v24;
        CFSetAddValue(*(v5 + 48), v24);
        if (v25)
        {
          os_release(v25);
        }
      }

      while (v21 != ++v22);
    }
  }

  v26 = mdns_xpc_dictionary_get_optional_array(a1, "certificates");
  if (v26)
  {
    v27 = v26;
    v28 = xpc_array_get_count(v26);
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      do
      {
        length = 0;
        data = xpc_array_get_data(v27, v30, &length);
        if (!data)
        {
          goto LABEL_37;
        }

        v32 = CFDataCreate(kCFAllocatorDefault, data, length);
        if (!v32)
        {
          v8 = -6729;
          goto LABEL_38;
        }

        v33 = v32;
        CFArrayAppendValue(*(v5 + 56), v32);
        CFRelease(v33);
      }

      while (v29 != ++v30);
    }
  }

  v46 = 0;
  value = xpc_dictionary_get_value(a1, "ifindex");
  uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFuLL, &v46);
  if (!v46)
  {
    goto LABEL_37;
  }

  v36 = uint64_limited;
  v46 = 0;
  v49 = 0;
  v37 = xpc_dictionary_get_value(a1, "interface_scope");
  v38 = _mdns_xpc_object_get_uint64_limited(v37, 0xFFuLL, &v49);
  v39 = v49;
  if (v38 >= 3)
  {
    v39 = 0;
  }

  v46 = v39;
  if (!v39)
  {
    goto LABEL_37;
  }

  mdns_dns_push_service_definition_set_interface_index(v5, v36, v38);
  v46 = 0;
  v40 = xpc_dictionary_get_value(a1, "port");
  v41 = _mdns_xpc_object_get_uint64_limited(v40, 0xFFFFuLL, &v46);
  if (!v46)
  {
    goto LABEL_37;
  }

  *(v5 + 76) = v41;
  v46 = 0;
  object = _mdns_xpc_dictionary_get_object(a1, "local_purview", &_xpc_type_BOOL);
  v46 = object != 0;
  if (!object || (*(v5 + 79) = object == &_xpc_BOOL_true, v46 = 0, v43 = _mdns_xpc_dictionary_get_object(a1, "mdns_alternative", &_xpc_type_BOOL), v46 = v43 != 0, !v43))
  {
LABEL_37:
    v8 = -6705;
LABEL_38:
    v48 = v8;
LABEL_39:
    v4 = v5;
    v5 = 0;
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v44 = v43;
  v8 = 0;
  v4 = 0;
  *(v5 + 80) = v44 == &_xpc_BOOL_true;
  v48 = 0;
  if (a2)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

void mdns_dns_push_service_definition_set_srv_name(uint64_t a1, void *object)
{
  if (object)
  {
    os_retain(object);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    os_release(v4);
  }

  *(a1 + 24) = object;
}

void mdns_dns_push_service_definition_set_interface_index(uint64_t a1, unsigned int a2, char a3)
{
  *(a1 + 78) = a3;
  if (*(a1 + 72) != a2)
  {
    *(a1 + 72) = a2;
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
      *(a1 + 64) = 0;
      a2 = *(a1 + 72);
    }
  }

  if (a2)
  {
    if (!*(a1 + 64))
    {
      *(a1 + 64) = mdns_system_interface_index_to_name(a2);
    }
  }

  else
  {
    *(a1 + 78) = 0;
  }
}

void *_dnssec_obj_rr_ds_copy_rdata_rfc_description(uint64_t a1, int *a2)
{
  v4 = snprintf(0, 0, "%u %u %u ", __rev16(**(a1 + 24)), *(*(a1 + 24) + 2), *(*(a1 + 24) + 3));
  v5 = v4 + 2 * rdata_parser_ds_get_digest_length(*(a1 + 36));
  v6 = (v5 + 1);
  if (v5 == -1 || (v7 = malloc_type_calloc(1uLL, (v5 + 1), 0xE6E6861FuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v7;
    v8 = snprintf(v7, v6, "%u %u %u ", __rev16(**(a1 + 24)), *(*(a1 + 24) + 2), *(*(a1 + 24) + 3));
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = v4 + v8;
      v11 = *(a1 + 24);
      digest_length = rdata_parser_ds_get_digest_length(*(a1 + 36));
      v13 = put_hex_from_bytes((v11 + 4), digest_length, v10, v6 - v9);
      v14 = v13 != v10;
      if (v13 == v10)
      {
        v15 = -6751;
      }

      else
      {
        v15 = 0;
      }

      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v14 = 0;
  v15 = -6700;
  if (a2)
  {
LABEL_8:
    *a2 = v15;
  }

LABEL_9:
  if (!v14)
  {
    free(v4);
    return 0;
  }

  return v4;
}

void *dnssec_obj_rr_ds_create(unsigned __int8 *a1, __int16 a2, const void *a3, unsigned int a4, int a5, int *a6)
{
  v18 = 0;
  if (a4 <= 4)
  {
    v13 = 0;
    v17 = 0;
    v16 = -6705;
    v18 = -6705;
  }

  else
  {
    result = malloc_type_calloc(1uLL, 0x50uLL, 0xB7BBD98FuLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = &_dnssec_obj_rr_ds_kind;
    result[1] = &_dnssec_obj_rr_ds_kind;
    do
    {
      v15 = v14[2];
      if (v15)
      {
        v15(v13);
      }

      v14 = *v14;
    }

    while (v14);
    ++*v13;
    dnssec_obj_rr_init_fields(v13, a1, 43, a2, a3, a4, a5, _dnssec_obj_rr_ds_copy_rdata_rfc_description, &v18);
    v16 = v18;
    if (v18)
    {
      v17 = 0;
    }

    else
    {
      ++*v13;
      v17 = v13;
    }
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (v13)
  {
    ref_count_obj_release(v13);
  }

  return v17;
}

uint64_t dnssec_obj_rr_ds_validates_dnskey(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 24);
  if (*(a2 + 80) != bswap32(*v4) >> 16)
  {
    result = 0;
    v6 = -88989;
    goto LABEL_33;
  }

  v5 = *(v4 + 2);
  v6 = -88890;
  if (v5 - 5) > 0xB || ((0xD2uLL >> (v5 - 5)))
  {
LABEL_32:
    result = 0;
LABEL_33:
    v29 = v6;
    goto LABEL_34;
  }

  v7 = *(v4 + 3);
  v8 = v7 > 4;
  v9 = (1 << v7) & 0x16;
  if (v8 || v9 == 0)
  {
    v6 = -88988;
    goto LABEL_32;
  }

  v29 = 0;
  v13 = *(a2 + 24);
  result = dnssec_obj_rr_dnskey_is_valid_for_dnssec(v13, &v29);
  if (!result)
  {
    goto LABEL_34;
  }

  if (v5 != v13[3])
  {
    result = 0;
    v6 = -88990;
    goto LABEL_33;
  }

  if (ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1))
  {
    result = 0;
    v6 = -88991;
    goto LABEL_33;
  }

  memset(__s2, 0, sizeof(__s2));
  v15 = *(*(a1 + 24) + 3) - 1;
  v16 = -88988;
  if (v15 > 3 || *(*(a1 + 24) + 3) == 3 || (v17 = dword_10010D340[v15], bzero(v31, 0x408uLL), v18 = dword_10010D370[v17 - 1], v16 = -6700, CCDigestInit()))
  {
    result = 0;
    v29 = v16;
    goto LABEL_34;
  }

  v19 = *(a2 + 16);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = CCDigestUpdate();
  if (v22)
  {
    v23 = -6700;
  }

  else
  {
    v23 = 0;
  }

  if (v22 || ((v24 = *(a2 + 24), v25 = *(a2 + 36), (v26 = CCDigestUpdate()) != 0) ? (v23 = -6700) : (v23 = 0), v26 || ((v27 = CCDigestFinal()) != 0 ? (v23 = -6700) : (v23 = 0), v27)))
  {
    v29 = v23;
    if (v23)
    {
      result = 0;
      goto LABEL_34;
    }

    OutputSize = 0;
  }

  else
  {
    OutputSize = CCDigestGetOutputSize();
    v29 = 0;
  }

  if (OutputSize == rdata_parser_ds_get_digest_length(*(a1 + 36)) && !memcmp((*(a1 + 24) + 4), __s2, OutputSize))
  {
    v29 = 0;
    result = 1;
  }

  else
  {
    result = 0;
    v29 = -88992;
  }

LABEL_34:
  if (a3)
  {
    *a3 = v29;
  }

  return result;
}

uint64_t mdns_cf_callback_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && (v4 = *(v2 + 32)) != 0)
  {
    return v4(a1, a2);
  }

  else
  {
    return 0;
  }
}

BOOL mdns_cfarray_enumerate(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    for (i = 0; i != v5; v6 = i >= v5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (((*(a2 + 16))(a2, ValueAtIndex) & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  return v6;
}

BOOL mdns_cfset_enumerate(const __CFSet *a1, uint64_t a2)
{
  Count = CFSetGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  v5 = Count;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *values = 0u;
  v12 = 0u;
  if (Count <= 0x40)
  {
    v6 = values;
    CFSetGetValues(a1, values);
    while (((*(a2 + 16))(a2, *v6) & 1) != 0)
    {
      ++v6;
      if (!--v5)
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = a2;
  v9 = 1;
  memset(v10, 0, sizeof(v10));
  CFSetApplyFunction(a1, _mdns_cf_applier_function, &v8);
  return v9 == 1;
}

void _mdns_cf_applier_function(uint64_t a1, _BYTE *a2)
{
  if (a2[8] == 1)
  {
    a2[8] = (*(*a2 + 16))();
  }
}

void mdns_cfbag_enumerate(const __CFBag *a1, uint64_t a2)
{
  Count = CFBagGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *values = 0u;
    v11 = 0u;
    if (Count > 0x40)
    {
      v7 = a2;
      v8 = 1;
      memset(v9, 0, sizeof(v9));
      CFBagApplyFunction(a1, _mdns_cf_applier_function, &v7);
    }

    else
    {
      v6 = values;
      CFBagGetValues(a1, values);
      do
      {
        if (((*(a2 + 16))(a2, *v6) & 1) == 0)
        {
          break;
        }

        ++v6;
        --v5;
      }

      while (v5);
    }
  }
}

void mdns_cfdictionary_apply(const __CFDictionary *a1, uint64_t a2)
{
  Count = CFDictionaryGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
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
    *keys = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *values = 0u;
    v12 = 0u;
    if (Count > 0x40)
    {
      v8 = a2;
      v9 = 1;
      memset(v10, 0, sizeof(v10));
      CFDictionaryApplyFunction(a1, _mdns_cfdictionary_applier_function, &v8);
    }

    else
    {
      v6 = keys;
      v7 = values;
      CFDictionaryGetKeysAndValues(a1, keys, values);
      do
      {
        if (((*(a2 + 16))(a2, *v6, *v7) & 1) == 0)
        {
          break;
        }

        ++v7;
        ++v6;
        --v5;
      }

      while (v5);
    }
  }
}

void _mdns_cfdictionary_applier_function(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[8] == 1)
  {
    a3[8] = (*(*a3 + 16))();
  }
}

BOOL mdns_odoh_config_is_valid_inner(unsigned __int16 *a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 > 0xB)
    {
      v10 = *a1;
      if (v10 == 256 || v10 == 1791)
      {
        v11 = bswap32(a1[1]) >> 16;
        if (v11 + 4 > a2)
        {
          if (_mdns_crypto_log_s_once != -1)
          {
            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
          }

          v12 = _mdns_crypto_log_s_log;
          result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v17 = 67109120;
            LODWORD(v18[0]) = v11;
            v5 = "Config length field is too large: %hu";
            v6 = v12;
            v7 = 8;
            goto LABEL_31;
          }

          return result;
        }

        if ((bswap32(a1[5]) >> 16) + 8 != v11)
        {
          if (_mdns_crypto_log_s_once != -1)
          {
            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
          }

          v15 = _mdns_crypto_log_s_log;
          result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v16 = (bswap32(a1[5]) >> 16) + 8;
            v17 = 67109376;
            LODWORD(v18[0]) = v11;
            WORD2(v18[0]) = 2048;
            *(v18 + 6) = v16;
            v5 = "Config length does not match: %hu != %zu";
            v6 = v15;
            v7 = 18;
            goto LABEL_31;
          }

          return result;
        }

        if (a1[2] == 0x2000 && a1[3] == 256 && a1[4] == 256)
        {
          return 1;
        }

        if (_mdns_crypto_log_s_once != -1)
        {
          dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
        }

        v13 = _mdns_crypto_log_s_log;
        result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        LOWORD(v17) = 0;
        v14 = "Config details are not supported";
      }

      else
      {
        if (_mdns_crypto_log_s_once != -1)
        {
          dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
        }

        v13 = _mdns_crypto_log_s_log;
        result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        LOWORD(v17) = 0;
        v14 = "Config version is not supported";
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, &v17, 2u);
      return 0;
    }

    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v3 = _mdns_crypto_log_s_log;
    result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 134217984;
      v18[0] = a2;
      v5 = "Config length is too short: %zu";
      v6 = v3;
      v7 = 12;
LABEL_31:
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v5, &v17, v7);
      return 0;
    }
  }

  else
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v8 = _mdns_crypto_log_s_log;
    result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v17) = 0;
      v5 = "Config is NULL";
      v6 = v8;
      v7 = 2;
      goto LABEL_31;
    }
  }

  return result;
}

dispatch_data_t mdns_decrypt_oblivious_response(NSObject *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  if (!a2 || !a3 || !a4)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v21 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v22 = "Parameters are invalid";
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    return 0;
  }

  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v9 = cchpke_params_sizeof_kdf_hash();
  v10 = cchpke_params_sizeof_aead_tag();
  v11 = cchpke_params_sizeof_aead_key();
  v12 = dispatch_data_get_size(a1);
  if (v12 <= v10 + 5)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
    }

    v21 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v22 = "Invalid encrypted response length";
    goto LABEL_22;
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, v12, 0x4833B2AuLL);
  if (!v14)
  {
    goto LABEL_91;
  }

  v5 = v14;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = __mdns_decrypt_oblivious_response_block_invoke;
  applier[3] = &__block_descriptor_tmp_3;
  applier[4] = v14;
  dispatch_data_apply(a1, applier);
  if (*v5 == 2)
  {
    size = v11;
    v11 = *(v5 + 1);
    v15 = __rev16(v11);
    if (v13 <= v15 + 5 + v10)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
      }

      v26 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 67109120;
      LODWORD(v62) = v15;
      v18 = "Invalid response nonce length %hu";
      v19 = v26;
      v20 = 8;
LABEL_34:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_66:
      v24 = 0;
LABEL_67:
      free(v5);
      return v24;
    }

    v58 = v5;
    v5 = (bswap32(*&v5[v15 + 3]) >> 16);
    if (v13 != &v5[v15 + 5])
    {
      v11 = v15 + 3;
      if (_mdns_crypto_log_s_once == -1)
      {
LABEL_36:
        v27 = _mdns_crypto_log_s_log;
        if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v62 = v13;
          v63 = 2048;
          v64 = v11;
          v65 = 2048;
          *v66 = 2;
          *&v66[8] = 2048;
          *&v66[10] = v5;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid ciphertext length: %zu != %zu + %zu + %zu", buf, 0x2Au);
        }

        v24 = 0;
        v5 = v58;
        goto LABEL_67;
      }

LABEL_92:
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
      goto LABEL_36;
    }

    if (&v5[-v10] <= 3)
    {
      v16 = &v5[-v10];
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
      }

      v5 = v58;
      v17 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 134217984;
      v62 = v16;
      v18 = "Invalid plaintext length: %zu";
      v19 = v17;
      v20 = 12;
      goto LABEL_34;
    }

    v57 = &v5[-v10];
    ccsha256_di();
    if (a5 + v15 != -2)
    {
      v28 = malloc_type_calloc(1uLL, a5 + v15 + 2, 0xAE295AE8uLL);
      v5 = v58;
      if (v28)
      {
        v13 = v28;
        memcpy(v28, a4, a5);
        *&v13[a5] = v11;
        memcpy(&v13[a5 + 2], v58 + 3, v15);
        v11 = size;
        if (size)
        {
          v29 = malloc_type_calloc(1uLL, size, 0xC3AF052EuLL);
          if (v29)
          {
            v30 = v29;
            if (cchpke_initiator_export())
            {
              if (_mdns_crypto_log_s_once != -1)
              {
                dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
              }

              v31 = _mdns_crypto_log_s_log;
              if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "cchpke_initiator_export failed", buf, 2u);
              }

              v32 = v30;
LABEL_49:
              free(v32);
              v33 = v13;
LABEL_65:
              free(v33);
              goto LABEL_66;
            }

            if (v9)
            {
              v35 = malloc_type_calloc(1uLL, v9, 0xA9010126uLL);
              if (v35)
              {
                v36 = v35;
                v37 = cchkdf_extract();
                free(v30);
                free(v13);
                if (v37)
                {
                  if (_mdns_crypto_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
                  }

                  v38 = _mdns_crypto_log_s_log;
                  if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v62) = v37;
                    _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Secret extract error: %d", buf, 8u);
                  }

                  v33 = v36;
                  goto LABEL_65;
                }

                v39 = malloc_type_calloc(1uLL, size, 0x16697948uLL);
                if (v39)
                {
                  v40 = v39;
                  v41 = cchkdf_expand();
                  if (v41)
                  {
                    v42 = v41;
                    if (_mdns_crypto_log_s_once != -1)
                    {
                      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
                    }

                    v43 = _mdns_crypto_log_s_log;
                    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109120;
                      LODWORD(v62) = v42;
                      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Secret key expand error: %d", buf, 8u);
                    }

                    free(v36);
                    v33 = v40;
                    goto LABEL_65;
                  }

                  v44 = cchpke_params_sizeof_aead_nonce();
                  if (v44)
                  {
                    v45 = malloc_type_calloc(1uLL, v44, 0xBD56E2B4uLL);
                    if (v45)
                    {
                      v13 = v45;
                      v46 = cchkdf_expand();
                      free(v36);
                      if (v46)
                      {
                        if (_mdns_crypto_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
                        }

                        v47 = _mdns_crypto_log_s_log;
                        if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109120;
                          LODWORD(v62) = v46;
                          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Secret nonce expand error: %d", buf, 8u);
                        }

                        v32 = v40;
                        goto LABEL_49;
                      }

                      v11 = v57;
                      v48 = malloc_type_calloc(1uLL, v57, 0x89E03E3CuLL);
                      if (v48)
                      {
                        v49 = v48;
                        ccaes_gcm_decrypt_mode();
                        v50 = ccgcm_one_shot();
                        free(v40);
                        free(v13);
                        free(v58);
                        if (v50)
                        {
                          if (_mdns_crypto_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
                          }

                          v51 = _mdns_crypto_log_s_log;
                          if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_88;
                          }

                          *buf = 0;
                          v52 = "Decrypt error: decrypt_error";
                          v53 = v51;
                          v54 = 2;
                        }

                        else
                        {
                          v55 = bswap32(*v49) >> 16;
                          if (v57 >= v55 + 4)
                          {
                            v24 = dispatch_data_create(v49 + 1, v55, 0, 0);
                            goto LABEL_89;
                          }

                          if (_mdns_crypto_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
                          }

                          v56 = _mdns_crypto_log_s_log;
                          if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                          {
LABEL_88:
                            v24 = 0;
LABEL_89:
                            v5 = v49;
                            goto LABEL_67;
                          }

                          *buf = 134218752;
                          v62 = v57;
                          v63 = 2048;
                          v64 = 2;
                          v65 = 1024;
                          *v66 = v55;
                          *&v66[4] = 2048;
                          *&v66[6] = 2;
                          v52 = "Invalid plaintext length: %zu < %zu + %hu + %zu";
                          v53 = v56;
                          v54 = 38;
                        }

                        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v52, buf, v54);
                        goto LABEL_88;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (_mdns_crypto_log_s_once != -1)
  {
    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_142);
  }

  v23 = _mdns_crypto_log_s_log;
  if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v34 = *v5;
    *buf = 67109120;
    LODWORD(v62) = v34;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid message type %u", buf, 8u);
  }

  free(v5);
  return 0;
}

void mdns_power_cancel_all_events(const void *a1)
{
  v2 = IOPMCopyScheduledPowerEvents();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
        if (Value)
        {
          v9 = Value;
          if (CFEqual(Value, a1))
          {
            v10 = CFDictionaryGetValue(ValueAtIndex, @"time");
            v11 = CFDictionaryGetValue(ValueAtIndex, @"eventtype");
            v12 = IOPMCancelScheduledPowerEvent(v10, v9, v11);
            if (_mdns_power_log_s_once != -1)
            {
              dispatch_once(&_mdns_power_log_s_once, &__block_literal_global_180);
            }

            v13 = _mdns_power_log_s_log;
            if (v12)
            {
              v14 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v14 = OS_LOG_TYPE_INFO;
            }

            if (os_log_type_enabled(_mdns_power_log_s_log, v14))
            {
              *buf = 134218754;
              v16 = v12;
              v17 = 2112;
              v18 = v9;
              v19 = 2112;
              v20 = v11;
              v21 = 2112;
              v22 = v10;
              _os_log_impl(&_mh_execute_header, v13, v14, "IOPMCancelScheduledPowerEvent -- error: %{mdns:err}ld, id: %@, type: %@, time: %@", buf, 0x2Au);
            }
          }
        }
      }
    }

    CFRelease(v3);
  }
}

uint64_t mdns_power_schedule_wake(int a1)
{
  valuePtr = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(kCFAllocatorDefault, Current + a1);
  if (!v3)
  {
    return 4294960567;
  }

  v4 = v3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    *keys = *&off_10014DF08;
    v20 = @"leeway";
    values[0] = @"com.apple.mDNSResponder";
    values[1] = v4;
    values[2] = v5;
    v7 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v7)
    {
      v8 = v7;
      v9 = IOPMRequestSysWake();
      if (_mdns_power_log_s_once != -1)
      {
        dispatch_once(&_mdns_power_log_s_once, &__block_literal_global_180);
      }

      v10 = _mdns_power_log_s_log;
      if (v9)
      {
        v11 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v11 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(_mdns_power_log_s_log, v11))
      {
        *buf = 134218242;
        v15 = v9;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v10, v11, "IOPMRequestSysWake -- error: %{mdns:err}ld, request: %@", buf, 0x16u);
      }

      CFRelease(v8);
    }

    else
    {
      v9 = 4294960567;
    }

    CFRelease(v4);
  }

  else
  {
    v9 = 4294960567;
    v6 = v4;
  }

  CFRelease(v6);
  return v9;
}

void _mdns_resource_record_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }
}

char *_mdns_resource_record_copy_description(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__s1 = 0u;
  v19 = 0u;
  v16 = 0;
  v17 = 0;
  if (_mdns_resource_record_copy_description_bytes(a1, a2, a3, __s1, 512, &v17, &v16, a8))
  {
    return 0;
  }

  if (v16 > 0x1FF)
  {
    v12 = v16 + 1;
    if (v16 == -1)
    {
      goto LABEL_9;
    }

    v13 = malloc_type_malloc(v16 + 1, 0x2B3D914uLL);
    if (!v13)
    {
      goto LABEL_9;
    }

    v8 = v13;
    if (_mdns_resource_record_copy_description_bytes(a1, a2, a3, v13, v12, 0, 0, v14))
    {
LABEL_10:
      free(v8);
      return 0;
    }
  }

  else
  {
    v8 = strdup(__s1);
    if (!v8)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  return v8;
}

uint64_t _mdns_resource_record_copy_description_bytes(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v14 = 0;
  v22 = 0;
  v23 = a4;
  if (a2)
  {
    v15 = mdns_snprintf_add(&v23, a4 + a5, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v14 = v15;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = DNSRecordDataToStringEx(v16, *(a1 + 56), *(a1 + 52), 0, 0, a3, &v22);
    if (v17)
    {
      v20 = v17;
      goto LABEL_16;
    }

    v18 = v22;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v18 = "<NO RDATA>";
  }

  v19 = mdns_snprintf_add(&v23, a4 + a5, "%s", a4, a5, a6, a7, a8, v18);
  if ((v19 & 0x80000000) != 0)
  {
LABEL_15:
    v20 = 4294960596;
    goto LABEL_16;
  }

  if (a6)
  {
    *a6 = &v23[-a4];
  }

  v20 = 0;
  if (a7)
  {
    *a7 = v14 + v19;
  }

LABEL_16:
  if (v22)
  {
    free(v22);
  }

  return v20;
}

void *mdns_resource_record_create(void *a1, __int16 a2, __int16 a3, int a4, const void *a5, unsigned int a6)
{
  v12 = _os_object_alloc();
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v14 = &_mdns_resource_record_kind;
  *(v12 + 16) = &_mdns_resource_record_kind;
  do
  {
    v15 = v14[2];
    if (v15)
    {
      v15(v13);
    }

    v14 = *v14;
  }

  while (v14);
  *(v13 + 24) = a1;
  os_retain(a1);
  *(v13 + 40) = a4;
  *(v13 + 44) = 0;
  *(v13 + 52) = a2;
  *(v13 + 54) = a3;
  *(v13 + 56) = a6;
  if (!a6)
  {
    return v13;
  }

  result = malloc_type_malloc(a6, 0xFE29915uLL);
  if (result)
  {
    v17 = result;
    memcpy(result, a5, a6);
    *(v13 + 32) = v17;
    return v13;
  }

  __break(1u);
  return result;
}

void _mdns_string_builder_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_string_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1) || mdns_string_builder_append_formatted(v5, "capacity: %zu, string length: %zu", a1[4], a1[5]))
  {
    goto LABEL_4;
  }

  v7 = v5[3];
  if (v7)
  {
    v8 = v5[5];
    v9 = v8 + 1;
    if (v8 == -1)
    {
LABEL_4:
      v6 = 0;
LABEL_12:
      os_release(v5);
      return v6;
    }
  }

  else
  {
    v7 = "";
    v9 = 1;
  }

  result = malloc_type_malloc(v9, 0xFE29915uLL);
  if (result)
  {
    v6 = result;
    memcpy(result, v7, v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t mdns_string_builder_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_string_builder_kind;
    *(v0 + 16) = &_mdns_string_builder_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  return v1;
}

uint64_t mdns_string_builder_append_formatted(void *a1, char *__format, ...)
{
  va_start(va, __format);
  if (a1[3] || (result = _mdns_string_builder_grow_buffer(a1, a1[4]), !result))
  {
    for (i = 1; ; i = 0)
    {
      v6 = a1[4] - a1[5];
      v7 = vsnprintf((a1[3] + a1[5]), v6, __format, va);
      if ((v7 & 0x80000000) != 0)
      {
        *(a1[3] + a1[5]) = 0;
        return 4294960596;
      }

      v8 = v7;
      if (v6 > v7)
      {
        result = 0;
        a1[5] += v8;
        return result;
      }

      if ((i & 1) == 0)
      {
        break;
      }

      v9 = a1[5];
      v10 = v7 + 1;
      v11 = __CFADD__(v9, v10);
      v12 = v9 + v10;
      if (v11)
      {
        return 4294960567;
      }

      v13 = a1[4];
      if (v13 < 0)
      {
        return 4294960567;
      }

      if (v12 <= 2 * v13)
      {
        v14 = 2 * v13;
      }

      else
      {
        v14 = v12;
      }

      result = _mdns_string_builder_grow_buffer(a1, v14);
      if (result)
      {
        return result;
      }
    }

    return 4294960534;
  }

  return result;
}

uint64_t _mdns_string_builder_grow_buffer(void *a1, unint64_t a2)
{
  if (a1[3] && a1[4] >= a2)
  {
    return 0;
  }

  if (a2 <= 0x40)
  {
    v3 = 64;
  }

  else
  {
    v3 = a2;
  }

  v4 = malloc_good_size(v3);
  if (v4 < v3)
  {
    return 4294960534;
  }

  v5 = v4;
  result = malloc_type_calloc(v4, 1uLL, 0x4B3A0919uLL);
  if (result)
  {
    v7 = result;
    v8 = a1[3];
    if (v8)
    {
      memcpy(result, v8, a1[5] + 1);
      v9 = a1[3];
      if (v9)
      {
        free(v9);
      }
    }

    result = 0;
    a1[3] = v7;
    a1[4] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t mdns_string_builder_append_description(void *a1, uint64_t a2, char a3)
{
  v4 = (a2 + 16);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v4[3];
    if (v5)
    {
      v6 = v5(a2, 0, a3 & 1);
      if (v6)
      {
        v7 = v6;
        appended = mdns_string_builder_append_formatted(a1, "%s", v6);
        free(v7);
        return appended;
      }

      return 4294960567;
    }
  }

  return 4294960567;
}

uint64_t mdns_string_builder_append_description_with_prefix(void *a1, const char *a2, uint64_t a3, char a4)
{
  if (!a2 || (result = mdns_string_builder_append_formatted(a1, "%s", a2), !result))
  {

    return mdns_string_builder_append_description(a1, a3, a4);
  }

  return result;
}

uint64_t mdns_string_builder_append_sockaddr_description(void *a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 1);
  if (v6 != 30)
  {
    if (v6 != 2)
    {
      v16 = *(a2 + 1);
      return mdns_string_builder_append_formatted(a1, "«UNHANDLED ADDRESS FAMILY: %d»");
    }

    if ((a3 & 1) == 0)
    {
      memset(v19, 0, sizeof(v19));
      if (inet_ntop(2, (a2 + 4), v19, 0x10u))
      {
LABEL_5:
        result = mdns_string_builder_append_formatted(a1, "%s");
LABEL_22:
        if (result)
        {
          return result;
        }

        if ((a3 & 2) == 0 && *(a2 + 2))
        {
          return mdns_string_builder_append_formatted(a1, ":%d");
        }

        return 0;
      }

      if (*__error())
      {
        result = *__error();
        if (result)
        {
          return result;
        }

        goto LABEL_5;
      }

      return 4294960596;
    }

    v21 = 0u;
    *v19 = 0u;
    memset(v20, 0, sizeof(v20));
    v9 = bswap32(*(a2 + 4));
    v17 = *(a2 + 4);
    v18 = v9;
    if (v9)
    {
      v10 = v9 == 2130706433;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (_GetCUSymAddr_SNPrintF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
      }

      if (_GetCUSymAddr_SNPrintF_sAddr && (_GetCUSymAddr_SNPrintF_sAddr(v19, 64, "%#.4a", COERCE_DOUBLE(&v18)) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = _DNSMessagePrintObfuscatedIPAddress(v19, &v17, 4);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v19[0] = 0;
LABEL_21:
    result = mdns_string_builder_append_formatted(a1, "<IPv4:%s>");
    goto LABEL_22;
  }

  if ((a3 & 2) != 0 || !*(a2 + 2))
  {
    v8 = 1;
  }

  else
  {
    result = mdns_string_builder_append_formatted(a1, "[");
    if (result)
    {
      return result;
    }

    v8 = 0;
  }

  v11 = (a2 + 8);
  if (a3)
  {
    v21 = 0uLL;
    *v19 = 0uLL;
    memset(v20, 0, sizeof(v20));
    if (*(a2 + 8) | *(a2 + 15))
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a2 + 23) >= 2u;
    }

    if (v12)
    {
      if ((_DNSMessagePrintObfuscatedIPAddress(v19, v11, 16) & 0x80000000) == 0)
      {
LABEL_42:
        result = mdns_string_builder_append_formatted(a1, "<IPv6:%s>");
        goto LABEL_43;
      }
    }

    else
    {
      if (_GetCUSymAddr_SNPrintF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
        v11 = (a2 + 8);
      }

      if (_GetCUSymAddr_SNPrintF_sAddr && (_GetCUSymAddr_SNPrintF_sAddr(v19, 64, "%.16a", *&v11) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    v19[0] = 0;
    goto LABEL_42;
  }

  *v19 = 0uLL;
  memset(v20, 0, 30);
  if (!inet_ntop(30, v11, v19, 0x2Eu))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = mdns_string_builder_append_formatted(a1, "%s");
LABEL_43:
  if (!result)
  {
    v13 = *(a2 + 24);
    if (!v13 || ((memset(v19, 0, sizeof(v19)), LOBYTE(v20[0]) = 0, !if_indextoname(v13, v19)) ? (v15 = *(a2 + 24), result = mdns_string_builder_append_formatted(a1, "%%%u")) : (result = mdns_string_builder_append_formatted(a1, "%%%s")), !result))
    {
      if ((v8 & 1) == 0)
      {
        return mdns_string_builder_append_formatted(a1, "]:%d");
      }

      return 0;
    }
  }

  return result;
}

void *mdns_string_builder_copy_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 1;
    if (v2 == -1)
    {
      return 0;
    }
  }

  else
  {
    v1 = "";
    v3 = 1;
  }

  result = malloc_type_malloc(v3, 0xFE29915uLL);
  if (result)
  {

    return memcpy(result, v1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t resource_record_as_rrsig_get_covered_type(uint64_t a1)
{
  if (*(a1 + 4) != 46)
  {
    return 0;
  }

  result = rdata_parser_rrsig_check_validity(*(a1 + 40) + 4, *(a1 + 12));
  if (result)
  {
    return bswap32(*(*(a1 + 40) + 4)) >> 16;
  }

  return result;
}

uint64_t resource_record_as_ds_refers_to_supported_key_algorithm(uint64_t a1)
{
  if (*(a1 + 4) == 43)
  {
    v1 = *(*(a1 + 40) + 6) - 5;
    v2 = v1 > 0xB;
    v3 = (0xF2DuLL >> v1) & 1;
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  v5 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

LABEL_14:
    v7 = 136447234;
    v8 = "me->rrtype == kDNSRecordType_DS";
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
    v13 = 1024;
    v14 = 183;
    v15 = 2048;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v7, 0x30u);
    return 0;
  }

  v5 = mDNSLogCategory_DNSSEC_redacted;
  result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
  if (result)
  {
    goto LABEL_14;
  }

  return result;
}

BOOL resource_record_as_rrsig_covers_wildcard_rr(uint64_t a1)
{
  if (*(a1 + 4) != 46)
  {
    return 0;
  }

  result = rdata_parser_rrsig_check_validity(*(a1 + 40) + 4, *(a1 + 12));
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        ++v5;
        v6 = &v3[v4];
        v7 = v6[1];
        v3 = v6 + 1;
        v4 = v7;
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }

    return v5 > *(*(a1 + 40) + 7);
  }

  return result;
}

uint64_t resource_record_get_insecure_validation_usable(unsigned __int8 *a1)
{
  if (*a1 != 240)
  {
    goto LABEL_24;
  }

  v1 = *(a1 + 7);
  if (!v1)
  {
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v3 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v5 = mDNSLogCategory_DNSSEC;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    v9 = 136447234;
    v10 = "me->dnssec != NULL";
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
    v15 = 1024;
    v16 = 354;
    v17 = 2048;
    v18 = 0;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v9, 0x30u);
    goto LABEL_24;
  }

  if (*(v1 + 32) != 1)
  {
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v5 = mDNSLogCategory_DNSSEC;
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
    {
LABEL_22:
      v9 = 136447234;
      v10 = "me->aware_type == dnssec_aware_rr_validated";
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
      v15 = 1024;
      v16 = 226;
      v17 = 2048;
      v18 = 0;
      goto LABEL_23;
    }

LABEL_24:
    v2 = 0;
    return v2 & 1;
  }

  v2 = *(v1 + 44);
  return v2 & 1;
}

uint64_t resource_record_get_cache_record(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  v2 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v2 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    v5 = 136447234;
    v6 = "me->dnssec != NULL";
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
    v11 = 1024;
    v12 = 324;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v5, 0x30u);
  }

  return 0;
}

uint64_t resource_record_get_expiration_time(uint64_t a1)
{
  if (!a1)
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
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v9 = 136447234;
    v10 = "me->dnssec != NULL";
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
    v15 = 1024;
    v16 = 364;
    v17 = 2048;
    v18 = 0;
LABEL_27:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v9, 0x30u);
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    v4 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
    {
LABEL_26:
      v9 = 136447234;
      v10 = "cr != NULL";
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
      v15 = 1024;
      v16 = 367;
      v17 = 2048;
      v18 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  if (*(v1 + 109))
  {
    v2 = dword_10016D258 + 939524096;
  }

  else
  {
    v2 = *(v1 + 80) + 1000 * *(v1 + 16);
  }

  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t resource_record_get_actual_ttl(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    return 0;
  }

  expiration_time = resource_record_get_expiration_time(*(a2 + 56));
  if (expiration_time)
  {
    if (expiration_time - *(a1 + 64) >= 0)
    {
      return (expiration_time - *(a1 + 64)) / 0x3E8u;
    }

    else
    {
      return 0;
    }
  }

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
    v6 = mDNSLogCategory_DNSSEC;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = mDNSLogCategory_DNSSEC_redacted;
  result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
  if (result)
  {
LABEL_14:
    v7 = 136447234;
    v8 = "expiration_time != 0";
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
    v13 = 1024;
    v14 = 394;
    v15 = 2048;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v7, 0x30u);
    return 0;
  }

  return result;
}

uint64_t resource_records_have_same_dnssec_rr_category(uint64_t a1, uint64_t a2)
{
  if ((a1 != 0) != (a2 != 0))
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 0;
    if (!a2)
    {
      v6 = 0;
      return v5 ^ v6 ^ 1u;
    }

    result = 0;
    v4 = *(a2 + 32);
    if (!v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 32);
  if (!a2)
  {
    if (v3)
    {
      v6 = 0;
      v5 = v3 == 1;
      return v5 ^ v6 ^ 1u;
    }

    return 0;
  }

  v4 = *(a2 + 32);
  if ((v3 == 0) != (v4 == 0))
  {
    return 0;
  }

  v5 = v3 == 1;
LABEL_9:
  v6 = v4 == 1;
  return v5 ^ v6 ^ 1u;
}

BOOL identical_dnssec_validated_same_name_resource_record(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 32))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4 || *(v4 + 32) != 1 || *(a1 + 4) != *(a2 + 4) || *(a1 + 6) != *(a2 + 6) || *(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  if (*(a1 + 12))
  {
    return SameRDataBody(a1, (*(a2 + 40) + 4), SameDomainName) != 0;
  }

  return 1;
}

uint64_t _mdns_symptoms_report_dns_server_symptom(uint64_t a1, uint64_t a2)
{
  if (_mdns_symptoms_get_reporter_s_once != -1)
  {
    dispatch_once(&_mdns_symptoms_get_reporter_s_once, &__block_literal_global_390);
  }

  result = _mdns_symptoms_get_reporter_s_reporter;
  if (_mdns_symptoms_get_reporter_s_reporter)
  {
    v4 = *(a2 + 1);
    if (v4 == 2 || v4 == 30)
    {
      v5 = symptom_new();
      symptom_set_additional_qualifier();

      return _symptom_send(v5);
    }
  }

  return result;
}

void ___mdns_symptoms_get_reporter_block_invoke(id a1)
{
  if (&_symptom_framework_init)
  {
    _mdns_symptoms_get_reporter_s_reporter = symptom_framework_init();
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __http_task_create_dns_query_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = getHeuristicsQueue();
    dispatch_async(v11, &__block_literal_global_6629);
    goto LABEL_17;
  }

  if (!v8)
  {
    nw_activity_complete_with_reason();
    goto LABEL_10;
  }

  nw_activity_complete_with_reason();
LABEL_5:
  v9 = [v8 domain];
  if ([v9 isEqualToString:NSURLErrorDomain])
  {
    v10 = [v8 code] == -999 || objc_msgSend(v8, "code") == -1009;
  }

  else
  {
    v10 = 0;
  }

  v12 = [v8 domain];
  if ([v12 isEqualToString:NSURLErrorDomain])
  {
    v13 = [v8 code] == -1001;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    goto LABEL_18;
  }

  v14 = [*(a1 + 32) URL];
  v15 = getHeuristicsQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __dns_heuristics_report_resolution_failure_block_invoke;
  block[3] = &unk_1001530E0;
  v19 = v14;
  v20 = v13;
  v11 = v14;
  dispatch_async(v15, block);

LABEL_17:
LABEL_18:
  [v7 statusCode];
  v16 = [v17 _createDispatchData];
  (*(*(a1 + 40) + 16))();
}

id _http_task_create_data_task(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = ___http_task_create_data_task_block_invoke;
  v7[3] = &unk_10014FF38;
  v7[5] = v4;
  v7[6] = &v8;
  v7[4] = v3;
  _http_task_shared_session_critical_region(v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1000570D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___http_task_create_data_task_block_invoke(void *a1)
{
  v2 = g_shared_session;
  if (!g_shared_session)
  {
    if (_http_task_create_shared_session_s_once != -1)
    {
      dispatch_once(&_http_task_create_shared_session_s_once, &__block_literal_global_146);
    }

    v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v3 setHTTPCookieStorage:0];
    [v3 setURLCache:0];
    [v3 setURLCredentialStorage:0];
    v4 = [NSSet setWithObjects:@"User-Agent", @"Accept-Language", 0];
    [v3 set_suppressedAutoAddedHTTPHeaders:v4];

    [v3 set_allowsTLSSessionTickets:1];
    [v3 set_allowsTCPFastOpen:1];
    [v3 set_disableAPWakeOnIdleConnections:1];
    v5 = objc_alloc_init(NSOperationQueue);
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    v6 = _mdns_resolver_queue_s_queue;
    [v5 setUnderlyingQueue:v6];

    v7 = [NSURLSession sessionWithConfiguration:v3 delegate:_http_task_create_shared_session_delegate delegateQueue:v5];

    v8 = g_shared_session;
    g_shared_session = v7;

    v2 = g_shared_session;
  }

  v9 = [v2 dataTaskWithRequest:a1[4] completionHandler:a1[5]];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return _objc_release_x1();
}

void _http_task_shared_session_critical_region(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_http_task_shared_session_critical_region_s_lock);
  v1[2](v1);

  os_unfair_lock_unlock(&_http_task_shared_session_critical_region_s_lock);
}

void ___http_task_create_shared_session_block_invoke(id a1)
{
  +[NSURLSession _disableAppSSO];
  +[NSURLSession _disableATS];
  _http_task_create_shared_session_delegate = objc_alloc_init(MDNSHTTPSessionDelegate);

  _objc_release_x1();
}

void *http_task_create_pvd_query(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = [NSString stringWithFormat:@"https://%s/.well-known/pvd%s", a2, a3];
  v11 = [NSMutableURLRequest alloc];
  v12 = [[NSURL alloc] initWithString:v10];
  v13 = [v11 initWithURL:v12];

  [v13 setHTTPMethod:@"GET"];
  [v13 setValue:@"application/pvd+json" forHTTPHeaderField:@"accept"];
  [v13 setValue:@"application/pvd+json" forHTTPHeaderField:@"content-type"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = nw_activity_create();
  if (v24[5])
  {
    nw_activity_activate();
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __http_task_create_pvd_query_block_invoke;
  v19[3] = &unk_10014E008;
  v14 = v7;
  v20 = v14;
  v22 = &v23;
  v15 = v8;
  v21 = v15;
  v16 = _http_task_create_data_task(v13, v19);
  if (v16 && v24[5])
  {
    v17 = nw_activity_create();
    [v16 set_nw_activity:v17];
  }

  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v9);

  return v16;
}

void sub_10005759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __http_task_create_pvd_query_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __http_task_create_pvd_query_block_invoke_2;
  block[3] = &unk_10014FF38;
  block[4] = a2;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = a2;
  dispatch_async(v3, block);
}

void __http_task_create_pvd_query_block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v15 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = _CFXPCCreateXPCObjectFromCFObject();
      v4 = [v15 objectForKeyedSubscript:@"expires"];
      v5 = [v15 objectForKeyedSubscript:@"seconds-remaining"];
      if (v3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || v5)
        {
          if (v5)
          {
            xpc_dictionary_set_uint64(v3, "seconds-remaining", [v5 unsignedLongLongValue]);
          }
        }

        else
        {
          v6 = objc_alloc_init(NSDateFormatter);
          v7 = [NSTimeZone timeZoneForSecondsFromGMT:0];
          [v6 setTimeZone:v7];

          v8 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v6 setLocale:v8];

          [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
          [v6 setFormatterBehavior:0];
          v9 = [v6 dateFromString:v4];
          [v9 timeIntervalSinceNow];
          xpc_dictionary_set_uint64(v3, "seconds-remaining", v10);
        }
      }

      v14 = *(*(a1[6] + 8) + 40);
      nw_activity_complete_with_reason();
      (*(a1[5] + 16))();
    }

    else
    {
      v13 = *(*(a1[6] + 8) + 40);
      nw_activity_complete_with_reason();
      (*(a1[5] + 16))();
    }
  }

  else
  {
    v11 = *(*(a1[6] + 8) + 40);
    nw_activity_complete_with_reason();
    v12 = *(a1[5] + 16);

    v12();
  }
}

void http_task_cancel(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 cancel];

  objc_autoreleasePoolPop(v2);
}

void __http_task_prepare_for_system_sleep_block_invoke(id a1)
{
  if (g_shared_session)
  {
    [g_shared_session invalidateAndCancel];
    v1 = g_shared_session;
    g_shared_session = 0;
  }
}

void _dnssec_obj_domain_name_finalize(uint64_t a1)
{
  if (*(a1 + 37) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    ref_count_obj_release(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _dnssec_obj_domain_name_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_10;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 32) = domain_name_labels_compute_hash(*(a1 + 16));
    *(a1 + 36) = 1;
  }

  if (*(a2 + 36) == 1)
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = domain_name_labels_compute_hash(v7);
    *(a2 + 32) = v8;
    *(a2 + 36) = 1;
  }

  if (*(a1 + 32) != v8)
  {
LABEL_10:
    if (a3)
    {
      return 2;
    }
  }

  return domain_name_labels_canonical_compare();
}

void *dnssec_obj_domain_name_create_with_labels(unsigned __int8 *a1, char a2, int *a3)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = &_dnssec_obj_domain_name_kind;
  result[1] = &_dnssec_obj_domain_name_kind;
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
  ++*v7;
  if ((a2 & 1) == 0)
  {
    v19 = *a1;
    if (*a1)
    {
      v20 = a1;
      do
      {
        v21 = v20 + 1;
        v20 += v19 + 1;
        while (1)
        {
          v22 = __OFSUB__(v19--, 1);
          if (v19 < 0 != v22)
          {
            break;
          }

          v23 = *v21++;
          if ((v23 - 65) < 0x1A)
          {
            goto LABEL_7;
          }
        }

        v19 = *v20;
      }

      while (*v20);
    }

    v7[2] = a1;
    v24 = *a1;
    v25 = a1;
    if (*a1)
    {
      v25 = a1;
      do
      {
        v26 = &v25[v24];
        v27 = v26[1];
        v25 = v26 + 1;
        v24 = v27;
      }

      while (v27);
    }

    v17 = 0;
    v16 = v25 - a1;
    goto LABEL_12;
  }

LABEL_7:
  v28 = 0;
  v10 = domain_name_labels_create(a1, &v28);
  v11 = v28;
  if (!v28)
  {
    v12 = *v10;
    v13 = v10;
    if (*v10)
    {
      v13 = v10;
      do
      {
        v14 = &v13[v12];
        v15 = v14[1];
        v13 = v14 + 1;
        v12 = v15;
      }

      while (v15);
    }

    v16 = v13 - v10;
    v7[2] = v10;
    v17 = 1;
LABEL_12:
    *(v7 + 37) = v17;
    v7[3] = v16 + 1;
    *(v7 + 8) = 0;
    *(v7 + 36) = 0;
    v7[5] = 0;
    goto LABEL_13;
  }

  if (!v10 || (free(v10), (v11 = v28) != 0))
  {
    v18 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
  v18 = v7;
  v7 = 0;
  if (a3)
  {
LABEL_14:
    *a3 = v11;
  }

LABEL_15:
  if (v7)
  {
    ref_count_obj_release(v7);
  }

  return v18;
}

void *dnssec_obj_domain_name_create_concatenation_with_subdomain(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  memset(__dst, 0, sizeof(__dst));
  domain_name_labels_concatenate(a1, a2, __dst, &v5);
  if (v5)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = dnssec_obj_domain_name_create_with_labels(__dst, 1, &v5);
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v5;
  return result;
}

unsigned __int8 *dnssec_obj_domain_name_copy_parent_domain(_BYTE *a1, unint64_t a2, int *a3)
{
  result = domain_name_labels_get_parent(a1, a2);
  if (result)
  {
    v6 = 0;
    result = dnssec_obj_domain_name_create_with_labels(result, 1, &v6);
    v5 = v6;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v5 = -6710;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v5;
  return result;
}

BOOL dnssec_obj_domain_name_is_sub_domain_of(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    v4 = a1;
    do
    {
      ++v3;
      v5 = &v4[v2];
      v6 = v5[1];
      v4 = v5 + 1;
      v2 = v6;
    }

    while (v6);
  }

  else
  {
    v3 = 0;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      ++v8;
      v10 = &v9[v7];
      v11 = v10[1];
      v9 = v10 + 1;
      v7 = v11;
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

  v12 = v3 - v8;
  if (v3 > v8)
  {
    if (v12 >= 0x100)
    {
      v14 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = mDNSLogCategory_Default_redacted;
        result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      v15 = 136447234;
      v16 = "sub_labels_label_count - labels_label_count <= UINT8_MAX";
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/domain_name_labels.c";
      v21 = 1024;
      v22 = 159;
      v23 = 2048;
      v24 = 0;
    }

    else
    {
      if (domain_name_labels_get_parent(a1, v12))
      {
        return domain_name_labels_canonical_compare() == 0;
      }

      v14 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = mDNSLogCategory_Default_redacted;
        result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      v15 = 136447234;
      v16 = "parent_labels != NULL";
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/domain_name_labels.c";
      v21 = 1024;
      v22 = 163;
      v23 = 2048;
      v24 = 0;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v15, 0x30u);
  }

  return 0;
}

void *dnssec_obj_domain_name_copy_closest_common_ancestor(unsigned __int8 *a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    v12 = a1;
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      v8 = *a1;
      v9 = a1;
      do
      {
        ++v7;
        v10 = &v9[v8];
        v11 = v10[1];
        v9 = v10 + 1;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = 0;
      v15 = a2;
      do
      {
        ++v14;
        v16 = &v15[v13];
        v17 = v16[1];
        v15 = v16 + 1;
        v13 = v17;
      }

      while (v17);
    }

    else
    {
      v14 = 0;
    }

    v12 = a1;
    if (*a1)
    {
      v12 = a1;
      do
      {
        v18 = &v12[v6];
        v19 = v18[1];
        v12 = v18 + 1;
        v6 = v19;
      }

      while (v19);
    }

    if (v7 >= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v7;
    }

    if (v20)
    {
      v21 = v14 - 1;
      v22 = v7 - 1;
      v23 = 1;
      do
      {
        parent = domain_name_labels_get_parent(a1, v22);
        v25 = domain_name_labels_get_parent(a2, v21);
        if (domain_name_label_canonical_compare(parent, v25, 1))
        {
          break;
        }

        ++v23;
        --v21;
        --v22;
        v12 = parent;
      }

      while (v23 <= v20);
    }
  }

  v27 = 0;
  result = dnssec_obj_domain_name_create_with_labels(v12, 1, &v27);
  if (a3)
  {
    *a3 = v27;
  }

  return result;
}

uint64_t dnssec_obj_domain_name_get_nsec3_hashed_name(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (a2 && !result)
  {
    v4 = *(*(a2 + 16) + 16);
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_32;
    }

    v6 = 0;
    v7 = *(a2 + 24);
    v8 = *v7;
    v9 = v7[2] << 8;
    v10 = v7[3];
    v11 = v7[4];
    v12 = *(*(a2 + 16) + 16);
    do
    {
      ++v6;
      v13 = v12 + v5;
      v14 = *(v13 + 1);
      v12 = v13 + 1;
      v5 = v14;
    }

    while (v14);
    if (!v6)
    {
LABEL_32:
      v34 = -6742;
      goto LABEL_33;
    }

    parent = domain_name_labels_get_parent(v4, 1uLL);
    if (v8 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = -6735;
    }

    v36 = v16;
    if (v8 != 1)
    {
      v34 = -6735;
      goto LABEL_33;
    }

    v35 = parent;
    v17 = domain_name_labels_create(*(a1 + 16), &v36);
    v18 = v17;
    v19 = v36;
    if (!v36)
    {
      v20 = *v17;
      if (*v17)
      {
        v21 = v17;
        do
        {
          v22 = &v21[v20];
          v23 = v22[1];
          v21 = v22 + 1;
          v20 = v23;
        }

        while (v23);
      }

      memset(__dst, 0, 511);
      memset(__src, 0, 511);
      bzero(buf, 0x408uLL);
      if (!CCDigestInit())
      {
        __memcpy_chk();
        v24 = v9 + v10 + 1;
        while (!CCDigestUpdate() && !CCDigestUpdate() && !CCDigestFinal())
        {
          OutputSize = CCDigestGetOutputSize();
          if (!OutputSize)
          {
            v27 = -6735;
            goto LABEL_24;
          }

          v26 = OutputSize;
          CCDigestReset();
          if (!--v24)
          {
            memcpy(__dst, __src, v26);
            v27 = 0;
            goto LABEL_24;
          }
        }
      }

      v27 = -6700;
LABEL_24:
      v36 = v27;
      v28 = CCDigestGetOutputSize();
      memset(v39, 0, sizeof(v39));
      v40 = 0;
      encoded_string_length = base_x_get_encoded_string_length(2, v28);
      if (encoded_string_length >= 0x40)
      {
        v19 = -6751;
        v36 = -6751;
        if (!v18)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v38 = encoded_string_length;
      v39[encoded_string_length] = 0;
      base_32_hex_encode(__dst, v28, 1, v39);
      memset(v37, 0, sizeof(v37));
      domain_name_labels_concatenate(&v38, v35, v37, &v36);
      v19 = v36;
      if (!v36)
      {
        v30 = dnssec_obj_domain_name_create_with_labels(v37, 1, &v36);
        v19 = v36;
        if (!v36)
        {
          *(a1 + 40) = v30;
        }
      }
    }

    if (!v18)
    {
LABEL_30:
      if (!v19)
      {
        return *(a1 + 40);
      }

      v34 = v19;
LABEL_33:
      v31 = mDNSLogCategory_DNSSEC;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v32 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }
      }

      else
      {
        v31 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }
      }

      *buf = 136447234;
      v43 = "err == 0";
      v44 = 2082;
      v45 = "";
      v46 = 2082;
      v47 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_domain_name.c";
      v48 = 1024;
      v49 = 413;
      v50 = 2048;
      v51 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      return 0;
    }

LABEL_29:
    free(v18);
    v19 = v36;
    goto LABEL_30;
  }

  return result;
}

uint64_t *AuthGroupForName(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  for (i = *(a1 + 8 * (a2 % 0x1F3) + 24); i; i = *i)
  {
    if (*(i + 2) == a2 && SameDomainNameBytes(i[4], a3))
    {
      break;
    }
  }

  return i;
}

uint64_t *InsertAuthRecord(uint64_t a1, uint64_t a2)
{
  v9 = AuthGroupForName(a1, *(a2 + 24), *(a2 + 40));
  if (v9)
  {
    goto LABEL_2;
  }

  v10 = *(a2 + 40);
  v11 = v10;
  while (1)
  {
    if (!v11 || (v12 = *v11, v12 > 0x3F))
    {
LABEL_8:
      v13 = 257;
      goto LABEL_10;
    }

    if (!*v11)
    {
      break;
    }

    v11 += v12 + 1;
    if (v11 - v10 >= 256)
    {
      goto LABEL_8;
    }
  }

  v13 = v11 - v10 + 1;
LABEL_10:
  if (*(a1 + 12))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetFreeCacheRR ERROR! Cache already locked!", v4, v5, v6, v7, v8, v50);
    v14 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a2 + 40);
        if (v16)
        {
          v17 = *(a2 + 40);
          while (1)
          {
            if (!v17 || (v18 = *v17, v18 > 0x3F))
            {
LABEL_23:
              v19 = 257;
              goto LABEL_83;
            }

            if (!*v17)
            {
              break;
            }

            v17 += v18 + 1;
            if (&v17[-v16] >= 256)
            {
              goto LABEL_23;
            }
          }

          v19 = (v17 - v16 + 1);
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_83;
      }

      return 0;
    }

LABEL_39:
    v14 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a2 + 40);
      if (v16)
      {
        v27 = *(a2 + 40);
        while (1)
        {
          if (!v27 || (v28 = *v27, v28 > 0x3F))
          {
LABEL_46:
            v19 = 257;
            goto LABEL_83;
          }

          if (!*v27)
          {
            break;
          }

          v27 += v28 + 1;
          if (&v27[-v16] >= 256)
          {
            goto LABEL_46;
          }
        }

        v19 = (v27 - v16 + 1);
      }

      else
      {
        v19 = 0;
      }

LABEL_83:
      *buf = 141558531;
      v52 = 1752392040;
      v53 = 1040;
      v54 = v19;
      v55 = 2101;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "GetAuthGroup: Failed to allocate memory for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
      return 0;
    }

    return 0;
  }

  *(a1 + 12) = 1;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v20 = malloc_type_calloc(1uLL, 0xB0uLL, 0x3A023AB3uLL);
    if (!v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v9 = v20;
    *v20 = 0;
    *(a1 + 16) = v20;
  }

  *(a1 + 16) = *v9;
  v21 = *(a1 + 8);
  v22 = *(a1 + 4) + 1;
  *(a1 + 4) = v22;
  if (v22 >= v21)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RR Auth now using %ld objects", v4, v5, v6, v7, v8, v22);
      v21 = *(a1 + 8);
    }

    if (v21 >= 0x3E8)
    {
      v23 = 1000;
    }

    else
    {
      v23 = 100;
    }

    if (v21 < 0x64)
    {
      v23 = 10;
    }

    *(a1 + 8) = v23 + v21;
  }

  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 1) = 0u;
  *v9 = 0u;
  *(a1 + 12) = 0;
  v24 = *(a2 + 24);
  v25 = v24 % 0x1F3;
  *v9 = *(a1 + 24 + 8 * (v24 % 0x1F3));
  *(v9 + 2) = v24;
  v9[2] = 0;
  v9[3] = (v9 + 2);
  v9[5] = 0;
  if (v13 < 0x81u)
  {
    v26 = v9 + 6;
  }

  else
  {
    v26 = malloc_type_malloc(v13, 0x5A6A1610uLL);
    if (!v26)
    {
      goto LABEL_38;
    }
  }

  v9[4] = v26;
  v29 = *(a2 + 40);
  v30 = v29;
  do
  {
    if (!v30)
    {
      break;
    }

    v31 = *v30;
    if (v31 > 0x3F)
    {
      break;
    }

    if (!*v30)
    {
      v32 = v30 - v29 + 1;
      if (v32 <= 0x100u)
      {
        memcpy(v26, v29, v32);
        goto LABEL_57;
      }

      break;
    }

    v30 += v31 + 1;
  }

  while (v30 - v29 <= 255);
  *v26 = 0;
LABEL_57:
  if (AuthGroupForName(a1, *(a2 + 24), *(a2 + 40)))
  {
    v33 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v34 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_91;
      }

      v35 = *(a2 + 40);
      if (v35)
      {
        v36 = *(a2 + 40);
        while (1)
        {
          if (!v36 || (v37 = *v36, v37 > 0x3F))
          {
LABEL_70:
            v38 = 257;
            goto LABEL_90;
          }

          if (!*v36)
          {
            break;
          }

          v36 += v37 + 1;
          if (&v36[-v35] >= 256)
          {
            goto LABEL_70;
          }
        }

        v38 = (v36 - v35 + 1);
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_90;
    }

    v33 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a2 + 40);
      if (v35)
      {
        v40 = *(a2 + 40);
        while (1)
        {
          if (!v40 || (v41 = *v40, v41 > 0x3F))
          {
LABEL_78:
            v38 = 257;
            goto LABEL_90;
          }

          if (!*v40)
          {
            break;
          }

          v40 += v41 + 1;
          if (&v40[-v35] >= 256)
          {
            goto LABEL_78;
          }
        }

        v38 = (v40 - v35 + 1);
      }

      else
      {
        v38 = 0;
      }

LABEL_90:
      *buf = 141558531;
      v52 = 1752392040;
      v53 = 1040;
      v54 = v38;
      v55 = 2101;
      v56 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "GetAuthGroup: Already have AuthGroup for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
    }
  }

LABEL_91:
  *(a1 + 24 + 8 * v25) = v9;
  if (AuthGroupForName(a1, *(a2 + 24), *(a2 + 40)) != v9)
  {
    v43 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(a2 + 40);
        if (v44)
        {
          v48 = *(a2 + 40);
          while (1)
          {
            if (!v48 || (v49 = *v48, v49 > 0x3F))
            {
LABEL_109:
              v47 = 257;
              goto LABEL_114;
            }

            if (!*v48)
            {
              break;
            }

            v48 += v49 + 1;
            if (&v48[-v44] >= 256)
            {
              goto LABEL_109;
            }
          }

          v47 = (v48 - v44 + 1);
        }

        else
        {
          v47 = 0;
        }

        goto LABEL_114;
      }
    }

    else
    {
      v43 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(a2 + 40);
        if (v44)
        {
          v45 = *(a2 + 40);
          while (1)
          {
            if (!v45 || (v46 = *v45, v46 > 0x3F))
            {
LABEL_101:
              v47 = 257;
              goto LABEL_114;
            }

            if (!*v45)
            {
              break;
            }

            v45 += v46 + 1;
            if (&v45[-v44] >= 256)
            {
              goto LABEL_101;
            }
          }

          v47 = (v45 - v44 + 1);
        }

        else
        {
          v47 = 0;
        }

LABEL_114:
        *buf = 141558531;
        v52 = 1752392040;
        v53 = 1040;
        v54 = v47;
        v55 = 2101;
        v56 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "GetAuthGroup: Not finding AuthGroup for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
      }
    }
  }

LABEL_2:
  *v9[3] = a2;
  v9[3] = a2;
  return v9;
}

uint64_t *RemoveAuthRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AuthGroupForName(a2, *(a3 + 24), *(a3 + 40));
  v6 = v5;
  if (!v5)
  {
    v14 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return v6;
      }
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return v6;
      }
    }

    v17 = (a1 + 47032);
    GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v17);
    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2085;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RemoveAuthRecord: ERROR!! AuthGroup not found for %{sensitive, mask.hash}s", buf, 0x16u);
    return v6;
  }

  v8 = (v5 + 2);
  v7 = v5[2];
  if (v7)
  {
    v9 = (a1 + 47032);
    while (v7 != a3)
    {
      v10 = *v7;
      v8 = v7;
LABEL_16:
      v7 = v10;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v11 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:
        v10 = **v8;
        *v8 = v10;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }
    }

    GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v9);
    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2085;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RemoveAuthRecord: removing auth record %{sensitive, mask.hash}s from table", buf, 0x16u);
    goto LABEL_15;
  }

LABEL_17:
  v6[3] = v8;
  return v6;
}

uint64_t mDNS_AddressIsLocalSubnet(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 6)
  {
    v4 = *(a1 + 12656);
    if (v4)
    {
      while (*(v4 + 890) != 6 || v4[444] != a2 || !*(v4 + 3671) || ((a3[1] ^ *(v4 + 891)) & v4[448]) != 0 || ((a3[2] ^ *(v4 + 892)) & *(v4 + 897)) != 0 || ((a3[3] ^ *(v4 + 893)) & v4[449]) != 0 || ((a3[4] ^ *(v4 + 894)) & *(v4 + 899)) != 0)
      {
        v4 = *v4;
        if (!v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (*a3 == 4)
  {
    v3 = *(a1 + 12656);
    if (v3)
    {
      while (*(v3 + 890) != 4 || v3[444] != a2 || !*(v3 + 3671) || ((a3[1] ^ *(v3 + 891)) & v3[448]) != 0)
      {
        v3 = *v3;
        if (!v3)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

void AnswerQuestionByFollowingCNAME(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 40) + 4);
  v7 = SameDomainNameBytes((a2 + 376), v6);
  v8 = *(a2 + 353);
  if (v8 <= 9 && v7 == 0)
  {
    v53 = *(a2 + 72);
    v52 = *(a2 + 340);
    *(a2 + 72) = 0;
    v17 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v18 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_49:
        v29 = (a2 + 260);
        v55 = *(a2 + 268);
        v54 = *(a2 + 260);
        *(a2 + 268) = 0;
        *(a2 + 260) = 0;
        v30 = *(a2 + 340);
        if (*(a2 + 340))
        {
          v31 = *(a2 + 80);
          if (v31)
          {
            v32 = *(v31 + 24);
          }

          else
          {
            v32 = -1;
          }

          v33 = *(a2 + 96);
          *(a2 + 88) = v32;
          *(a2 + 96) = 0;
        }

        else
        {
          v33 = 0;
        }

        mDNS_StopQuery_internal(a1, a2);
        v34 = (*(a3 + 40) + 4);
        v35 = v34;
        do
        {
          if (!v35)
          {
            break;
          }

          v36 = *v35;
          if (v36 > 0x3F)
          {
            break;
          }

          if (!*v35)
          {
            v37 = v35 - v34 + 1;
            if (v37 <= 0x100u)
            {
              memcpy((a2 + 376), v34, v37);
              goto LABEL_64;
            }

            break;
          }

          v35 += v36 + 1;
        }

        while (v35 - v34 <= 255);
        *(a2 + 376) = 0;
LABEL_64:
        *(a2 + 200) = DomainNameHashValue(a2 + 376);
        if (!*(a2 + 340) || !IsLocalDomain((a2 + 376)))
        {
LABEL_86:
          v45 = *(a2 + 353) + 1;
          *(a2 + 353) = v45;
          mDNS_StartQuery_internal(a1, a2);
          *(a2 + 353) = v45;
          *v29 = v54;
          *(a2 + 268) = v55;
          if (v30)
          {
            v46 = v53;
            if (!v33)
            {
              goto LABEL_96;
            }

            if (*(a2 + 40))
            {
              goto LABEL_110;
            }

            if (*(a2 + 96))
            {
              goto LABEL_110;
            }

            v48 = *(a2 + 80);
            if (!v48)
            {
              goto LABEL_110;
            }

            v49 = *(v33 + 32);
            v50 = *(v48 + 24);
            if (v49)
            {
              v49 = *(v49 + 24);
            }

            if (v50 != v49)
            {
LABEL_110:
              if (*(v33 + 16) == &_mdns_querier_kind && *(*(*(v33 + 72) + 16) + 144))
              {
                v47 = atomic_load((v33 + 208));
                *v29 += v47;
              }

              mdns_client_invalidate(v33);
            }

            else
            {
              os_retain(v33);
              v51 = *(a2 + 96);
              if (v51)
              {
                os_release(v51);
              }

              *(a2 + 96) = v33;
            }
          }

          else
          {
            v46 = v53;
            if (!v33)
            {
              goto LABEL_96;
            }
          }

          os_release(v33);
LABEL_96:
          if (v46)
          {
            if (*(a2 + 40))
            {
              CloseSocketSet(v46);
              free(v46);
            }

            else
            {
              *(a2 + 72) = v46;
              *(a2 + 340) = v52;
            }
          }

          return;
        }

        v38 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v39 = bswap32(*(a2 + 340)) >> 16;
            v43 = v6;
            while (1)
            {
              if (!v43 || (v44 = *v43, v44 > 0x3F))
              {
LABEL_81:
                v42 = 257;
                goto LABEL_84;
              }

              if (!*v43)
              {
                break;
              }

              v43 += v44 + 1;
              if (v43 - v6 >= 256)
              {
                goto LABEL_81;
              }
            }

            v42 = (v43 - v6 + 1);
            goto LABEL_84;
          }
        }

        else
        {
          v38 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v39 = bswap32(*(a2 + 340)) >> 16;
            v40 = v6;
            while (1)
            {
              if (!v40 || (v41 = *v40, v41 > 0x3F))
              {
LABEL_74:
                v42 = 257;
                goto LABEL_84;
              }

              if (!*v40)
              {
                break;
              }

              v40 += v41 + 1;
              if (v40 - v6 >= 256)
              {
                goto LABEL_74;
              }
            }

            v42 = (v40 - v6 + 1);
LABEL_84:
            *buf = 67109891;
            v57 = v39;
            v58 = 2160;
            v59 = 1752392040;
            v60 = 1040;
            v61 = v42;
            v62 = 2101;
            v63 = v6;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[Q%d] AnswerQuestionByFollowingCNAME: Resolving a .local CNAME -- CNAME: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x22u);
          }
        }

        *(a2 + 638) = 1;
        goto LABEL_86;
      }

      v19 = __rev16(v52);
      v20 = v6;
      while (1)
      {
        if (!v20 || (v21 = *v20, v21 > 0x3F))
        {
LABEL_28:
          v22 = 257;
          goto LABEL_48;
        }

        if (!*v20)
        {
          break;
        }

        v20 += v21 + 1;
        if (v20 - v6 >= 256)
        {
          goto LABEL_28;
        }
      }

      v22 = (v20 - v6 + 1);
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v19 = __rev16(v52);
      v27 = v6;
      while (1)
      {
        if (!v27 || (v28 = *v27, v28 > 0x3F))
        {
LABEL_42:
          v22 = 257;
          goto LABEL_48;
        }

        if (!*v27)
        {
          break;
        }

        v27 += v28 + 1;
        if (v27 - v6 >= 256)
        {
          goto LABEL_42;
        }
      }

      v22 = (v27 - v6 + 1);
    }

LABEL_48:
    *buf = 67110147;
    v57 = v19;
    v58 = 2160;
    v59 = 1752392040;
    v60 = 1040;
    v61 = v22;
    v62 = 2101;
    v63 = v6;
    v64 = 1024;
    v65 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Q%u] AnswerQuestionByFollowingCNAME: following CNAME referral -- CNAME: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, referral count: %u", buf, 0x28u);
    goto LABEL_49;
  }

  v10 = v7;
  v11 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = bswap32(*(a2 + 340)) >> 16;
      v14 = v6;
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_16:
          v16 = 257;
          goto LABEL_46;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (v14 - v6 >= 256)
        {
          goto LABEL_16;
        }
      }

      v16 = (v14 - v6 + 1);
      goto LABEL_46;
    }
  }

  else
  {
    v11 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v13 = bswap32(*(a2 + 340)) >> 16;
      v24 = v6;
      while (1)
      {
        if (!v24 || (v25 = *v24, v25 > 0x3F))
        {
LABEL_35:
          v16 = 257;
          goto LABEL_46;
        }

        if (!*v24)
        {
          break;
        }

        v24 += v25 + 1;
        if (v24 - v6 >= 256)
        {
          goto LABEL_35;
        }
      }

      v16 = (v24 - v6 + 1);
LABEL_46:
      *buf = 67110403;
      v57 = v13;
      v58 = 2160;
      v59 = 1752392040;
      v60 = 1040;
      v61 = v16;
      v62 = 2101;
      v63 = v6;
      v64 = 1024;
      v65 = v8;
      v66 = 1024;
      v67 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Q%u] AnswerQuestionByFollowingCNAME: Not following CNAME referral -- CNAME: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, referral count: %u, self referential: %{mdns:yesno}d", buf, 0x2Eu);
    }
  }
}

uint64_t PerformNextPunycodeConversion(uint64_t a1, char *a2)
{
  LODWORD(v2) = *(a1 + 376);
  if (!*(a1 + 376))
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 376);
  v6 = a1 + 632;
  v7 = (a1 + 376);
  while (1)
  {
    result = 0;
    if (v2 > 0x3F)
    {
      return result;
    }

    v9 = (v7 + 1);
    v10 = &v7[v2 + 1];
    if (v10 >= v6)
    {
      return result;
    }

    v2 = v2;
    while (1)
    {
      v11 = *v9++;
      if (v11 < 0)
      {
        break;
      }

      if (!--v2)
      {
        goto LABEL_10;
      }
    }

    v4 = v7;
LABEL_10:
    LODWORD(v2) = *v10;
    v7 = v10;
    if (!*v10)
    {
      if (!v4)
      {
        return 0;
      }

      v12 = &a2[v4 - v5];
      v13 = a2 + 256;
      pErrorCode = U_ZERO_ERROR;
      v21 = xmmword_10010D350;
      v14 = uidna_openUTS46(0x22u, &pErrorCode);
      v15 = uidna_nameToASCII_UTF8(v14, v4 + 1, *v4, v12 + 1, v13 - (v12 + 1), &v21, &pErrorCode);
      uidna_close(v14);
      if (pErrorCode)
      {
        return 0;
      }

      if (v21.errors)
      {
        return 0;
      }

      if (v15 >= 64)
      {
        return 0;
      }

      *v12 = v15;
      v16 = &v12[v15 + 1];
      if (!v16)
      {
        return 0;
      }

      v17 = &v4[*v4 + 1];
      v18 = 257;
      v19 = v17;
      do
      {
        if (!v19)
        {
          break;
        }

        v20 = *v19;
        if (v20 > 0x3F)
        {
          break;
        }

        if (!*v19)
        {
          v18 = (v19 - v17 + 1);
          break;
        }

        v19 += v20 + 1;
      }

      while (v19 - v17 < 256);
      if (&v16[v18] > v13)
      {
        return 0;
      }

      memcpy(a2, v5, (v4 - v5));
      memcpy(v16, v17, v18);
      return 1;
    }
  }
}

void mDNSEnableSensitiveLoggingForQuestion(int a1)
{
  v2 = mDNS_SensitiveLoggingEnableCount;
  v3 = mDNS_SensitiveLoggingEnableCount + 1;
  v4 = mDNS_SensitiveLoggingEnableCount++ == -1;
  v5 = mDNSLogCategory_Default;
  v6 = mDNSLogCategory_Default == mDNSLogCategory_State || v4;
  if (v2)
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return;
      }
    }

    else
    {
      v5 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return;
      }
    }

    v11 = 67109376;
    v12 = a1;
    v13 = 1024;
    v14 = v3;
    v7 = "[Q%u] sensitive logging enable count increased: %u";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 14;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = 67109120;
      v12 = a1;
      v7 = "[Q%u] sensitive logging enabled";
    }

    else
    {
      v5 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = 67109120;
      v12 = a1;
      v7 = "[Q%u] sensitive logging enabled";
    }

    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 8;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
}

uint64_t CheckForSoonToExpireRecordsEx(uint64_t a1, _BYTE *a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  v9 = *(a1 + 64);
  v10 = CacheGroupForName(a1, a3, a2);
  if (v10)
  {
    v11 = v10[2];
    if (v11)
    {
      v13 = a4 < 0 || a4 == 255;
      v14 = v9 - 0x10000000;
      while (1)
      {
        if (v13)
        {
          v15 = 1;
          if ((a5 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v15 = *(v11 + 12) == a4;
          if ((a5 & 0x80000000) == 0)
          {
LABEL_12:
            v16 = *(v11 + 14) == a5;
            if (a6)
            {
              goto LABEL_13;
            }

            goto LABEL_16;
          }
        }

        v16 = 1;
        if (a6)
        {
LABEL_13:
          v17 = *(v11 + 32) == a6;
          goto LABEL_17;
        }

LABEL_16:
        v17 = 1;
LABEL_17:
        if (v15 && v16 && v17)
        {
          v18 = dword_10016D258 + 939524096;
          if (!*(v11 + 109))
          {
            v18 = *(v11 + 80) + 1000 * *(v11 + 16);
          }

          if ((v18 - v14) > 0 && v9 + 1000 - v18 > -1)
          {
            v14 = v18;
          }
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v14 = v9 - 0x10000000;
LABEL_29:
  if (v14 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v14;
  }

  if ((v14 - (v9 - 0x10000000)) <= 0)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t DetermineUnicastQuerySuppression(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 655))
  {
    v3 = 1;
    v4 = " (blocked by policy)";
    goto LABEL_3;
  }

  if (a2)
  {
    v16 = *(a1 + 324);
    if ((v16 & 0x8000000) != 0 && (*(a2 + 276) & 8) != 0)
    {
      v3 = 3;
      v4 = " (interface is cellular)";
    }

    else if ((v16 & 0x20000000) != 0 && (*(a2 + 276) & 0x40) != 0)
    {
      v3 = 4;
      v4 = " (interface is expensive)";
    }

    else if ((v16 & 0x2000) != 0 && (*(a2 + 276) & 0x80) != 0)
    {
      v3 = 5;
      v4 = " (interface is constrained)";
    }

    else
    {
      if (!*(a1 + 636) || *(a1 + 673) - 3 < 2)
      {
        return 0;
      }

      v17 = *(a1 + 342);
      if (v17 != 28)
      {
        if (v17 == 1 && (*(a2 + 276) & 2) == 0)
        {
          v3 = 6;
          v4 = " (A records are unusable)";
          goto LABEL_3;
        }

        return 0;
      }

      if ((*(a2 + 276) & 4) != 0)
      {
        return 0;
      }

      v3 = 6;
      v4 = " (AAAA records are unusable)";
    }
  }

  else
  {
    if (*(a1 + 638))
    {
      return 0;
    }

    v3 = 2;
    v4 = " (no DNS service)";
  }

LABEL_3:
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
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = bswap32(*(a1 + 340)) >> 16;
      v8 = a1 + 376;
      v9 = (a1 + 376);
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_14:
          v11 = 257;
          goto LABEL_41;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (&v9[-v8] >= 256)
        {
          goto LABEL_14;
        }
      }

      v11 = (v9 - v8 + 1);
      goto LABEL_41;
    }
  }

  else
  {
    v5 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v7 = bswap32(*(a1 + 340)) >> 16;
      v13 = a1 + 376;
      v14 = (a1 + 376);
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_21:
          v11 = 257;
          goto LABEL_41;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (&v14[-v13] >= 256)
        {
          goto LABEL_21;
        }
      }

      v11 = (v14 - v13 + 1);
LABEL_41:
      v18 = DNSTypeName(*(a1 + 342));
      v20[0] = 67110403;
      v20[1] = v7;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 1040;
      v24 = v11;
      v25 = 2101;
      v26 = a1 + 376;
      v27 = 2082;
      v28 = v18;
      v29 = 2082;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Q%u] DetermineUnicastQuerySuppression: Query suppressed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s%{public}s", v20, 0x36u);
    }
  }

  return v3;
}

BOOL QuestionSendsMDNSQueriesViaUnicast(uint64_t a1)
{
  if (*(a1 + 340))
  {
    return 0;
  }

  v2 = *(a1 + 304);
  if (v2 == 6)
  {
    v3 = *(a1 + 312) | *(a1 + 308) | *(a1 + 316) | *(a1 + 320);
  }

  else
  {
    if (v2 != 4)
    {
      return 0;
    }

    v3 = *(a1 + 308);
  }

  return v3 != 0;
}

uint64_t mDNS_PurgeBeforeResolve(uint64_t a1, uint64_t a2)
{
  result = CacheGroupForName(a1, *(a2 + 200), (a2 + 376));
  if (result)
  {
    v10 = *(result + 16);
    if (v10)
    {
      while (1)
      {
        result = SameNameRecordAnswersQuestion((v10 + 8), 0, a2, v5, v6, v7, v8, v9);
        if (result)
        {
          break;
        }

LABEL_14:
        v10 = *v10;
        if (!v10)
        {
          return result;
        }
      }

      v11 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:
          result = mDNS_PurgeCacheResourceRecord(a1, v10);
          goto LABEL_14;
        }
      }

      else
      {
        v11 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }
      }

      GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), (a1 + 47032));
      *buf = 141558275;
      v15 = 1752392040;
      v16 = 2085;
      v17 = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mDNS_PurgeBeforeResolve: Flushing %{sensitive, mask.hash}s", buf, 0x16u);
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t SetNextCacheCheckTimeForRecord(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 109))
  {
    v4 = dword_10016D258 + 939524096;
  }

  else
  {
    v4 = *(a2 + 80) + 1000 * *(a2 + 16);
  }

  *(a2 + 88) = v4;
  v5 = *(a2 + 64);
  if (v5 && *(v5 + 32) == 1 && *(a2 + 108) != 4)
  {
    *(a2 + 108) = 4;
  }

  v6 = *(a2 + 96);
  if (!v6)
  {
    v12 = *(a2 + 24);
    goto LABEL_20;
  }

  v7 = *(a2 + 108);
  if (v7 < 4)
  {
    if (*(a2 + 108) || *(a2 + 130))
    {
      v8 = -4;
    }

    else if (*(v6 + 340))
    {
      v8 = -4;
    }

    else
    {
      v8 = -5;
    }

    v9 = 1000 * *(a2 + 16);
    *(a2 + 88) = v4 + v9 / 20 * (v8 + v7);
    v10 = v9 / 0x32;
    v11 = 1;
    if (v9 >= 0x64)
    {
      do
      {
        v11 = (2 * v11) | 1;
      }

      while (v11 < v10);
    }

    do
    {
      result = arc4random();
    }

    while ((result & v11) > v10);
    v4 = *(a2 + 88) + (result & v11);
    *(a2 + 88) = v4;
    v12 = *(a2 + 24);
    if (*(a2 + 96))
    {
      v13 = *(a2 + 16);
      if (*(a2 + 108) <= 3u)
      {
        v14 = (1000 * v13) / 50;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_20:
    v14 = 60000;
    goto LABEL_28;
  }

  v12 = *(a2 + 24);
  v13 = *(a2 + 16);
LABEL_22:
  if (v13)
  {
    v15 = 100;
  }

  else
  {
    v15 = 0;
  }

  if (v13 <= 0xA)
  {
    v14 = v15;
  }

  else
  {
    v14 = 1000;
  }

LABEL_28:
  v16 = v12 % 0x1F3;
  v17 = v14 + v4;
  if (*(v3 + 4264 + 4 * v16) - v17 >= 1)
  {
    *(v3 + 4264 + 4 * v16) = v17;
  }

  if (*(v3 + 88) - v17 >= 1)
  {
    *(v3 + 88) = v17;
  }

  return result;
}

void mDNSDisableSensitiveLoggingForQuestion(int a1)
{
  v2 = mDNSLogCategory_Default;
  v3 = --mDNS_SensitiveLoggingEnableCount;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    if (mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return;
      }
    }

    else
    {
      v2 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return;
      }
    }

    v8 = 67109376;
    v9 = a1;
    v10 = 1024;
    v11 = v3;
    v4 = "[Q%u] sensitive logging enable count decreased: %u";
    v5 = v2;
    v6 = OS_LOG_TYPE_DEBUG;
    v7 = 14;
  }

  else
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 67109120;
    v9 = a1;
    v4 = "[Q%u] sensitive logging disabled";
    v5 = v2;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 8;
  }

  _os_log_impl(&_mh_execute_header, v5, v6, v4, &v8, v7);
}

BOOL SameResourceRecordNameClassInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = *(a1 + 32);
    if (!v8 || ((v9 = *(a2 + 32)) != 0 ? (v10 = v8 == v9) : (v10 = 1), v10))
    {
      if (*(a1 + 14) == *(a2 + 14) && *(a1 + 24) == *(a2 + 24))
      {
        return SameDomainNameBytes(*(a1 + 40), *(a2 + 40)) != 0;
      }
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SameResourceRecordSignature ERROR: r2 is NULL", a4, a5, a6, a7, a8, vars0);
  }

  return 0;
}

void ActivateUnicastRegistration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4 == 12)
  {
    v5 = 72;
  }

  else
  {
    if (v4 != 16)
    {
      goto LABEL_11;
    }

    v5 = 88;
  }

  v6 = *(a2 + v5);
  if (v6)
  {
    if (*(v6 + 12) == 33)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v7 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
        v8 = *(v6 + 344);
        v40 = *(a2 + 40);
        DNSTypeName(*(a2 + 12));
        LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "ActivateUnicastRegistration: Found Service Record %s in state %d for %##s (%s)", v9, v10, v11, v12, v13, a1 + 47032);
      }

      *(a2 + 344) = *(v6 + 344);
    }

    else
    {
      v14 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "ActivateUnicastRegistration: ERROR!! Resource record %s wrong, expecting SRV type", v15, v16, v17, v18, v19, a1 + 47032);
    }
  }

LABEL_11:
  if (*(a2 + 344) == 8)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v20 = mDNSLogCategory_Default;
      v21 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v21);
      LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "ActivateUnicastRegistration record %s in regState_NoTarget, not activating", v22, v23, v24, v25, v26, v21);
    }
  }

  else
  {
    v27 = *(a2 + 8);
    if (v27 == 1)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      if (v27 == 1)
      {
        v29 = "ActivateUnicastRegistration: Resource record %s, current state %d, moving to DeregPending";
      }

      else
      {
        v29 = "ActivateUnicastRegistration: Resource record %s, current state %d, moving to Pending";
      }

      v30 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      v39 = *(a2 + 344);
      LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, v29, v31, v32, v33, v34, v35, a1 + 47032);
    }

    *(a2 + 344) = v28;
    *(a2 + 180) = 0;
    *(a2 + 184) = 0;
    *(a2 + 189) = 0;
    *(a2 + 191) = 0;
    *(a2 + 280) = 1000;
    *(a2 + 284) = *(a1 + 64) - 1000;
    *(a2 + 352) = 0;
    *(a2 + 348) = 1;
    *(a2 + 358) = 0;
    *(a2 + 592) = 0;
    *(a2 + 604) = 0;
    if (*(a2 + 584))
    {
      mDNS_StopNATOperation_internal(a1, a2 + 392);
      *(a2 + 584) = 0;
    }

    v36 = *(a2 + 376);
    if (v36)
    {
      CancelGetZoneData(a1, v36);
      *(a2 + 376) = 0;
    }

    v37 = *(a2 + 384);
    if (v37)
    {
      DisposeTCPConn(v37);
      *(a2 + 384) = 0;
    }

    v38 = *(a2 + 280) + *(a2 + 284);
    if (*(a1 + 12680) - v38 >= 0)
    {
      *(a1 + 12680) = v38;
    }
  }
}

uint64_t *CheckAuthRecordConflict(uint64_t a1, uint64_t a2)
{
  result = AuthGroupForName(a1, *(a2 + 24), *(a2 + 40));
  if (result)
  {
    v10 = result[2];
    if (v10)
    {
      while (1)
      {
        v11 = *(a2 + 96);
        if (!v11)
        {
          v11 = a2;
        }

        v12 = *(v10 + 96);
        if (!v12)
        {
          v12 = v10;
        }

        if (v11 != v12 && *(v10 + 8) != 1 && *(v10 + 12) == *(a2 + 12) && SameResourceRecordNameClassInterface(v10, a2, v4, v5, v6, v7, v8, v9) && (!resource_records_have_same_dnssec_rr_category(*(v10 + 64), *(a2 + 64)) || *(v10 + 12) != *(a2 + 12) || *(v10 + 14) != *(a2 + 14) || *(v10 + 20) != *(a2 + 20) || *(v10 + 28) != *(a2 + 28) || !SameRDataBody(v10 + 8, (*(a2 + 48) + 4), SameDomainName)))
        {
          break;
        }

        v10 = *v10;
        if (!v10)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IdenticalResourceRecord(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = resource_records_have_same_dnssec_rr_category(*(a1 + 56), *(a2 + 56));
  if (result)
  {
    if (*(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6) && *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20))
    {
      result = SameRDataBody(a1, (*(a2 + 40) + 4), SameDomainName);
      if (result)
      {
        return SameDomainNameBytes(*(a1 + 32), *(a2 + 32)) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CheckAuthIdenticalRecord(uint64_t a1, uint64_t a2)
{
  v3 = AuthGroupForName(a1, *(a2 + 24), *(a2 + 40));
  if (!v3)
  {
    return 0;
  }

  for (i = v3[2]; i; i = *i)
  {
    if (*(i + 32) == *(a2 + 32))
    {
      v5 = *(i + 8);
      v6 = *(a2 + 8);
      v7 = v6 == 1 || v5 == 1;
      v8 = v7 || v5 == v6;
      v9 = v8 || (v6 | v5) == 18;
      if (v9 && *(i + 24) == *(a2 + 24) && resource_records_have_same_dnssec_rr_category(*(i + 64), *(a2 + 64)) && *(i + 12) == *(a2 + 12) && *(i + 14) == *(a2 + 14) && *(i + 20) == *(a2 + 20) && *(i + 28) == *(a2 + 28) && SameRDataBody(i + 8, (*(a2 + 48) + 4), SameDomainName) && SameDomainNameBytes(*(i + 40), *(a2 + 40)))
      {
        if (*(i + 8) != 1)
        {
          return i;
        }

        *(i + 191) = 0;
      }
    }
  }

  return i;
}

void IncrementAutoTargetServices(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v4 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v5);
      v17 = 141558275;
      *v18 = 1752392040;
      *&v18[8] = 2085;
      *&v18[10] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "IncrementAutoTargetServices: called for RRLocalOnly() record: %{sensitive, mask.hash}s", &v17, 0x16u);
    }

    return;
  }

  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 19904) + 1;
  *(a1 + 19904) = v6;
  v7 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 19908);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    v17 = 67109891;
    *v18 = v6;
    *&v18[4] = 1024;
    *&v18[6] = v8;
    *&v18[10] = 2160;
    *&v18[12] = 1752392040;
    *&v18[20] = 2085;
    *&v18[22] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "IncrementAutoTargetServices: NumAllInterfaceRecords %u NumAllInterfaceQuestions %u %{sensitive, mask.hash}s", &v17, 0x22u);
    v6 = *(a1 + 19904);
  }

  if (*(a1 + 19908) + v6 == 1)
  {
    *(a1 + 116) = 0;
    v9 = 1;
    if (!*(a1 + 120))
    {
      *(a1 + 120) = 1;
      *(a1 + 8) = *(a1 + 64);
      v9 = 0;
    }
  }

  else
  {
LABEL_12:
    v9 = 1;
  }

  if ((*(a2 + 32) || *(a2 + 122) || IsLocalDomain(*(a2 + 40))) && *(a2 + 12) == 33 && *(a2 + 120) == 1)
  {
    if ((*(a2 + 172) & 0xFFFFFFFE) == 2)
    {
      v10 = *(a1 + 10920) + 1;
      *(a1 + 10920) = v10;
      v11 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
      {
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        v17 = 67109635;
        *v18 = v10;
        *&v18[4] = 2160;
        *&v18[6] = 1752392040;
        *&v18[14] = 2085;
        *&v18[16] = a1 + 47032;
        v12 = "IncrementAutoTargetServices: AutoTargetAWDLIncludedCount %u Record %{sensitive, mask.hash}s";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, &v17, 0x1Cu);
      }
    }

    else
    {
      v13 = *(a2 + 32);
      if (AWDLInterfaceID && AWDLInterfaceID == v13)
      {
        v11 = mDNSLogCategory_State;
      }

      else
      {
        v11 = mDNSLogCategory_State;
        if (!WiFiAwareInterfaceID || WiFiAwareInterfaceID != v13)
        {
          v15 = *(a1 + 19900) + 1;
          *(a1 + 19900) = v15;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
            v17 = 67109635;
            *v18 = v15;
            *&v18[4] = 2160;
            *&v18[6] = 1752392040;
            *&v18[14] = 2085;
            *&v18[16] = a1 + 47032;
            v12 = "IncrementAutoTargetServices: AutoTargetServices %u Record %{sensitive, mask.hash}s";
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      v14 = *(a1 + 10924) + 1;
      *(a1 + 10924) = v14;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        v17 = 67109635;
        *v18 = v14;
        *&v18[4] = 2160;
        *&v18[6] = 1752392040;
        *&v18[14] = 2085;
        *&v18[16] = a1 + 47032;
        v12 = "IncrementAutoTargetServices: AutoTargetAWDLOnlyCount %u Record %{sensitive, mask.hash}s";
        goto LABEL_30;
      }
    }

LABEL_31:
    if (v9)
    {
      for (i = *(a1 + 12656); i; i = *i)
      {
        if (*(i + 3670))
        {
          AdvertiseInterfaceIfNeeded(a1, i);
        }
      }
    }
  }
}

void mDNS_UpdateAllowSleep(uint64_t a1)
{
  memset(v30, 0, sizeof(v30));
  if (!*(a1 + 144))
  {
    goto LABEL_11;
  }

  if (*(a1 + 19888))
  {
    v27 = *(a1 + 19888);
    mDNS_snprintf(v30);
    v2 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 19888);
      *buf = 67109120;
      LODWORD(v29) = v14;
      v4 = "mDNS_UpdateAllowSleep: Sleep disabled because we are proxying %d records";
    }

    else
    {
      v2 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v3 = *(a1 + 19888);
      *buf = 67109120;
      LODWORD(v29) = v3;
      v4 = "mDNS_UpdateAllowSleep: Sleep disabled because we are proxying %d records";
    }

    v15 = v2;
    v16 = 8;
    goto LABEL_19;
  }

  if (!mDNSCoreHaveAdvertisedMulticastServices(*(a1 + 12616)) || (v12 = *(a1 + 12656)) == 0)
  {
LABEL_11:
    if (!*(mDNSStorage[0] + 584))
    {
      return;
    }

    v13 = mDNSLogCategory_SPS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v13 = mDNSLogCategory_SPS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetAllowSleep Destroying NoIdleSleep power assertion", buf, 2u);
      }
    }

    IOPMAssertionRelease(*(mDNSStorage[0] + 584));
    *(mDNSStorage[0] + 584) = 0;
    return;
  }

  while (!*(v12 + 16))
  {
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_11;
    }
  }

LABEL_42:
  if (!*(v12 + 3671) || *(v12 + 3673) || *(v12 + 3678) || mDNSPlatformInterfaceIsD2D(*(v12 + 3552), v5, v6, v7, v8, v9, v10, v11))
  {
LABEL_40:
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_11;
      }

      if (*(v12 + 16))
      {
        goto LABEL_42;
      }
    }
  }

  if (*(v12 + 3672))
  {
    if (SupportsInNICProxy(v12))
    {
      goto LABEL_40;
    }

    v26 = v12 + 3606;
    mDNS_snprintf(v30);
    v25 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v29 = v26;
        v4 = "mDNS_UpdateAllowSleep: Sleep disabled because %{public}s has no sleep proxy server";
        goto LABEL_59;
      }
    }

    else
    {
      v25 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v29 = v26;
        v4 = "mDNS_UpdateAllowSleep: Sleep disabled because %{public}s has no sleep proxy server";
        goto LABEL_59;
      }
    }
  }

  else
  {
    v24 = v12 + 3606;
    mDNS_snprintf(v30);
    v25 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v29 = v24;
        v4 = "mDNS_UpdateAllowSleep: Sleep disabled because %{public}s does not support NetWake";
        goto LABEL_59;
      }
    }

    else
    {
      v25 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v29 = v24;
        v4 = "mDNS_UpdateAllowSleep: Sleep disabled because %{public}s does not support NetWake";
LABEL_59:
        v15 = v25;
        v16 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v4, buf, v16);
      }
    }
  }

LABEL_20:
  v17 = *(mDNSStorage[0] + 584);
  if (v17)
  {
    IOPMAssertionRelease(v17);
    *(mDNSStorage[0] + 584) = 0;
  }

  v18 = getprogname();
  v19 = getpid();
  v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s.%d %s", v18, v19, v30);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"mDNSResponder";
  }

  IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v22, (mDNSStorage[0] + 584));
  if (v21)
  {
    CFRelease(v21);
  }

  v23 = mDNSLogCategory_SPS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v23 = mDNSLogCategory_SPS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetAllowSleep Creating NoIdleSleep power assertion", buf, 2u);
    }
  }
}

void getKeepaliveRaddr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  if (*(a2 + 12) == 10)
  {
    v6 = *(a2 + 40);
    v7 = *v6 ? *v6 + 1 : 0;
    if (SameDomainLabelPointer(&v6[v7], "\n_keepalive"))
    {
      mDNS_ExtractKeepaliveInfo(a2, &v19, &v23, a3, v22, &v18, &v17, &v21, &v20, &v16);
      if (!v19 || v23 == 4 || v23 == 6 && !(v24 | HIDWORD(v24) | v25 | HIDWORD(v23)))
      {
        goto LABEL_8;
      }

      if (*a3 == 6)
      {
        if (vorr_s8(*(a3 + 4), *&vextq_s8(*(a3 + 4), *(a3 + 4), 8uLL)))
        {
          v15 = v21 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          goto LABEL_8;
        }
      }

      else if (*a3 == 4 && !*(a3 + 4) || !v21)
      {
        goto LABEL_8;
      }

      if (!v20)
      {
LABEL_8:
        v8 = mDNSLogCategory_Default;
        v9 = (a1 + 47032);
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v9);
        LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "getKeepaliveRaddr: not a valid record %s for keepalive %#a:%d %#a:%d", v10, v11, v12, v13, v14, v9);
      }
    }
  }
}

void mDNS_ExtractKeepaliveInfo(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, _WORD *a8, _WORD *a9, _WORD *a10)
{
  if (*(a1 + 12) != 10)
  {
    return;
  }

  v16 = *(a1 + 40);
  v17 = *v16 ? *v16 + 1 : 0;
  if (!SameDomainLabelPointer(&v16[v17], "\n_keepalive"))
  {
    return;
  }

  v23 = (*(a1 + 48) + 5);
  v24 = &v23[*(a1 + 20)];
  v25 = v24 - 1;
  if (v23 >= v24 - 1)
  {
    return;
  }

  v26 = 0;
  v41 = v24 - 2;
  while (1)
  {
    v29 = *v23;
    ValueForIPv6Addr = v23 + 2;
    v28 = v29;
    if (v29 <= 99)
    {
      if (v28 == 68)
      {
        *a4 = 6;
        v31 = a4 + 1;
      }

      else
      {
        if (v28 != 72)
        {
          goto LABEL_40;
        }

        *a3 = 6;
        v31 = a3 + 1;
      }

      ValueForIPv6Addr = GetValueForIPv6Addr(ValueForIPv6Addr, v25, v31, v18, v19, v20, v21, v22);
      goto LABEL_21;
    }

    switch(v28)
    {
      case 'd':
        *a4 = 4;
        v30 = (a4 + 1);
        goto LABEL_17;
      case 'm':
        ValueForIPv6Addr = GetValueForMACAddr(ValueForIPv6Addr, v25, a5, v18, v19, v20, v21, v22);
        goto LABEL_21;
      case 'h':
        *a3 = 4;
        v30 = (a3 + 1);
LABEL_17:
        ValueForIPv6Addr = GetValueForIPv4Addr(ValueForIPv6Addr, v25, v30, v18, v19, v20, v21, v22);
        goto LABEL_21;
    }

LABEL_40:
    if (ValueForIPv6Addr >= v25)
    {
      break;
    }

    v26 = 0;
    v32 = ValueForIPv6Addr;
    while (1)
    {
      v35 = *v32;
      if (v35 == 32)
      {
        break;
      }

      ValueForIPv6Addr = v32 + 1;
      if ((v35 - 58) <= 0xFFFFFFF5)
      {
        if (v32 != v41 || *v32)
        {
          v40 = v32[1];
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForKeepalive: *ptr %d, ptr %p, limit %p, ptr +1 %d", v18, v19, v20, v21, v22, v35);
          goto LABEL_62;
        }

        goto LABEL_21;
      }

      v26 = v35 + 10 * v26 - 48;
      ++v32;
      if (ValueForIPv6Addr == v25)
      {
        ValueForIPv6Addr = v25;
        goto LABEL_21;
      }
    }

LABEL_22:
    if (v28 <= 107)
    {
      if (v28 <= 98)
      {
        if (v28 == 68 || v28 == 72)
        {
          goto LABEL_51;
        }

        if (v28 == 97)
        {
          *a7 = bswap32(v26);
          goto LABEL_51;
        }
      }

      else if ((v28 - 99) < 2 || (v28 - 104) < 2)
      {
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v28 > 114)
    {
      switch(v28)
      {
        case 's':
          *a6 = bswap32(v26);
          goto LABEL_51;
        case 'w':
          v33 = bswap32(v26) >> 16;
          v34 = a10;
          goto LABEL_50;
        case 't':
          *a2 = v26;
          goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v28 == 108)
    {
      v33 = bswap32(v26) >> 16;
      v34 = a8;
      goto LABEL_50;
    }

    if (v28 != 109)
    {
      if (v28 == 114)
      {
        v33 = bswap32(v26) >> 16;
        v34 = a9;
LABEL_50:
        *v34 = v33;
        goto LABEL_51;
      }

LABEL_53:
      v36 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        v38 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
        v32 = v25;
        if (v38)
        {
LABEL_58:
          *buf = 67109120;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "mDNS_ExtractKeepaliveInfo: unknown value %c\n", buf, 8u);
          v32 = v25;
        }
      }

      else
      {
        v36 = mDNSLogCategory_Default_redacted;
        v37 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
        v32 = v25;
        if (v37)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_51:
    v23 = v32 + 1;
    if (v32 + 1 >= v25)
    {
      return;
    }
  }

  v26 = 0;
LABEL_21:
  v32 = ValueForIPv6Addr;
  if (ValueForIPv6Addr)
  {
    goto LABEL_22;
  }

LABEL_62:
  v39 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_68:
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "mDNS_ExtractKeepaliveInfo: Cannot parse\n", buf, 2u);
    }
  }

  else
  {
    v39 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_68;
    }
  }
}

_BYTE *GetValueForIPv4Addr(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= a2)
  {
    v8 = 0;
LABEL_15:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv4Addr: Address malformed dots %d", a4, a5, a6, a7, a8, v8);
    return 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *result;
      if (v10 == 32)
      {
        goto LABEL_12;
      }

      if ((v10 - 48) > 9)
      {
        if (v10 != 46)
        {
          if (!*result && result == a2 - 1 && v8 == 3)
          {
            *(a3 + 3) = v9;
            return ++result;
          }

          v11 = mDNSLogCategory_Default;
          v12 = *result;
          goto LABEL_22;
        }

        if (v9 > 0xFF || v8 >= 3)
        {
          v11 = mDNSLogCategory_Default;
LABEL_22:
          LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "GetValueForIPv4Addr: something wrong ptr(%p) %c, limit %p, dots %d", a4, a5, a6, a7, a8, result);
          return 0;
        }

        *(a3 + v8++) = v9;
        v9 = 0;
      }

      else
      {
        v9 = v10 + 10 * v9 - 48;
      }

      ++result;
    }

    while (result != a2);
    result = a2;
LABEL_12:
    if (v8 != 3)
    {
      goto LABEL_15;
    }

    *(a3 + 3) = v9;
  }

  return result;
}

_BYTE *GetValueForIPv6Addr(unint64_t a1, _BYTE *a2, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= a2)
  {
    v12 = 0;
LABEL_26:
    v20 = mDNSLogCategory_Default;
    v26 = v12;
    v21 = "GetValueForIPv6Addr: no trailing bytes after colon, numBytes is %d";
LABEL_27:
    LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, v21, a4, a5, a6, a7, a8, v26);
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  __src = 0uLL;
  v14 = (a1 + 1);
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15 == 32)
    {
      break;
    }

    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) >= 6)
      {
        if ((v15 - 97) > 5)
        {
          goto LABEL_12;
        }

        v16 = -87;
      }

      else
      {
        v16 = -55;
      }
    }

    else
    {
      v16 = -48;
    }

    v17 = v16 + v15;
    if (v17 == -1)
    {
LABEL_12:
      if (v15 == 58)
      {
        if (v11)
        {
          if (v14 < a2 && *v14 == 32)
          {
            v20 = mDNSLogCategory_Default;
            v21 = "GetValueForIPv6Addr: Trailing colon";
            goto LABEL_27;
          }

          if (v12 >= 14)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv6Addr:1: numBytes is %d", a4, a5, a6, a7, a8, v12);
            return 0;
          }

          *(&__src + v12) = bswap32(v13) >> 16;
          if (v12 == 13)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv6Addr:2: numBytes is %d", a4, a5, a6, a7, a8, 15);
            return 0;
          }

          v13 = 0;
          v11 = 0;
          v12 += 2;
        }

        else
        {
          if (v9)
          {
            if (!v12)
            {
              v19 = v14;
              if (v14 < a2 && *v14 == 32)
              {
                *__dst = 0;
                __dst[1] = 0;
                return v19;
              }
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv6Addr: zeroFillStart non-zero %d", a4, a5, a6, a7, a8, v10);
            return 0;
          }

          v11 = 0;
          v9 = 1;
          v10 = v12;
        }
      }

      goto LABEL_21;
    }

    v13 = v17 | (16 * v13);
    v11 = 1;
LABEL_21:
    if (v14++ == a2)
    {
      v19 = a2;
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  v19 = v14 - 1;
  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v12 >= 15)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv6Addr:3: numBytes is %d", a4, a5, a6, a7, a8, v12);
    return 0;
  }

  *(&__src + v12) = bswap32(v13) >> 16;
  if (v10)
  {
    if (v10 < 1)
    {
      v10 = 0;
    }

    else
    {
      memcpy(__dst, &__src, v10);
    }

    LODWORD(v23) = v10;
    if (14 - v12 >= 1)
    {
      v24 = v12 - 14;
      LODWORD(v23) = v10;
      do
      {
        *(__dst + v23) = 0;
        LODWORD(v23) = v23 + 1;
      }

      while (!__CFADD__(v24++, 1));
    }

    if (v23 <= 15)
    {
      v23 = v23;
      do
      {
        *(__dst + v23++) = *(&__src + v10++);
      }

      while (v23 != 16);
    }

    return v19;
  }

  if (v12 == 14)
  {
    *__dst = __src;
    return v19;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForIPv6addr: Not enough bytes for IPv6 address, numBytes is %d", a4, a5, a6, a7, a8, v12 + 2);
  return 0;
}

unsigned __int8 *GetValueForMACAddr(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result < a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *result;
      if (v11 == 32 || v10 > 0x10)
      {
LABEL_19:
        if (v9 != 5)
        {
          goto LABEL_21;
        }

        *(a3 + 5) = v8;
        return result;
      }

      v13 = v11 - 48;
      if ((v11 - 48) >= 0xA)
      {
        if ((v11 - 65) > 5)
        {
          if ((v11 - 97) > 5)
          {
            if (v11 == 58)
            {
              if (v9 >= 5)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForMACAddr: Address malformed colons %d val %d", a4, a5, a6, a7, a8, v9);
                return 0;
              }

              *(a3 + v9) = v8;
              v8 = 0;
              ++v9;
            }

            goto LABEL_13;
          }

          v13 = v11 - 87;
        }

        else
        {
          v13 = v11 - 55;
        }
      }

      v8 = v13 | (16 * v8);
LABEL_13:
      ++v10;
      if (++result == a2)
      {
        result = a2;
        goto LABEL_19;
      }
    }
  }

  v9 = 0;
LABEL_21:
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetValueForMACAddr: Address malformed colons %d", a4, a5, a6, a7, a8, v9);
  return 0;
}

uint64_t mDNSCoreHaveAdvertisedMulticastServices(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      v2 = *(v1 + 12);
      if (v2 == 10)
      {
        v3 = *(v1 + 40);
        if (*v3)
        {
          v4 = *v3 + 1;
        }

        else
        {
          v4 = 0;
        }

        if (SameDomainLabelPointer(&v3[v4], "\n_keepalive"))
        {
          return 1;
        }

        v2 = *(v1 + 12);
      }

      if (v2 == 33 && (*(v1 + 32) || *(v1 + 122) || IsLocalDomain(*(v1 + 40))) && *(*(v1 + 48) + 8) != 2304)
      {
        return 1;
      }

      v1 = *v1;
      if (!v1)
      {
        return 0;
      }
    }
  }

  return result;
}

void AdvertiseInterfaceIfNeeded(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 3552);
  if (AWDLInterfaceID)
  {
    v5 = AWDLInterfaceID == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (WiFiAwareInterfaceID ? (v6 = WiFiAwareInterfaceID == v4) : (v6 = 0), v6))
  {
    if (!a1[2730] && !a1[2731])
    {
      return;
    }

    v7 = 0;
    goto LABEL_16;
  }

  if (a1[4975])
  {
    AdvertiseInterface(a1, a2, 0);
  }

  if (a1[2730])
  {
    v7 = 1;
LABEL_16:

    AdvertiseInterface(a1, a2, v7);
  }
}

uint64_t *GetFirstAddressRecordEx(uint64_t *result, int a2)
{
  if (result)
  {
    while (1)
    {
      if (*(result + 3670))
      {
        v2 = result[444];
        v3 = WiFiAwareInterfaceID && WiFiAwareInterfaceID == v2;
        v4 = !v3;
        v5 = AWDLInterfaceID != v2 || AWDLInterfaceID == 0;
        if (v5 && v4)
        {
          break;
        }
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    v7 = 2376;
    if (!a2)
    {
      v7 = 24;
    }

    return (result + v7);
  }

  return result;
}

void mDNS_RandomizedHostNameCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65548)
  {
    memset(v33, 0, sizeof(v33));
    GetRandomUUIDLabel(v33);
    if (SameDomainLabelPointer(v33, a1 + 10664))
    {
      IncrementLabelSuffix(v33, 0);
    }

    mDNS_Lock_(a1, "mDNS_RandomizedHostNameCallback", 16916);
    *(a1 + 10664) = 0;
    AppendDomainLabel((a1 + 10664), v33);
    AppendLiteralLabelString((a1 + 10664), "local");
    DeadvertiseAllInterfaceRecords(a1, 2);
    AdvertiseNecessaryInterfaceRecords(a1);
    for (i = *(a1 + 12616); i; i = *i)
    {
      if (*(i + 120))
      {
        if ((*(i + 172) & 0xFFFFFFFE) == 2 || ((v12 = *(i + 32), AWDLInterfaceID) ? (v13 = AWDLInterfaceID == v12) : (v13 = 0), v13 || (WiFiAwareInterfaceID ? (v14 = WiFiAwareInterfaceID == v12) : (v14 = 0), v14)))
        {
          D2D_stop_advertising_record(i, v4, v5, v6, v7, v8, v9, v10);
          SetTargetToHostName(a1, i);
          D2D_start_advertising_record(i, v15, v16, v17, v18, v19, v20, v21);
        }
      }
    }

    for (j = *(a1 + 12624); j; j = *j)
    {
      if (*(j + 120))
      {
        if ((*(j + 172) & 0xFFFFFFFE) == 2 || ((v23 = *(j + 32), AWDLInterfaceID) ? (v24 = AWDLInterfaceID == v23) : (v24 = 0), v24 || (WiFiAwareInterfaceID ? (v25 = WiFiAwareInterfaceID == v23) : (v25 = 0), v25)))
        {
          D2D_stop_advertising_record(j, v4, v5, v6, v7, v8, v9, v10);
          SetTargetToHostName(a1, j);
          D2D_start_advertising_record(j, v26, v27, v28, v29, v30, v31, v32);
        }
      }
    }

    mDNS_Unlock_(a1, "mDNS_RandomizedHostNameCallback", 16933);
  }
}

void DeadvertiseAllInterfaceRecords(uint64_t a1, char a2)
{
  for (i = *(a1 + 12656); i; i = *i)
  {
    if (*(i + 3670))
    {
      DeadvertiseInterface(a1, i, a2);
    }
  }
}

uint64_t AdvertiseNecessaryInterfaceRecords(uint64_t result)
{
  v1 = *(result + 12656);
  if (v1)
  {
    v2 = result;
    do
    {
      if (*(v1 + 3670))
      {
        result = AdvertiseInterfaceIfNeeded(v2, v1);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

unint64_t CompleteRDataUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 20);
  result = SetNewRData(a2 + 8, *(a2 + 304), *(a2 + 312), a4, a5, a6, a7, a8);
  *(a2 + 304) = 0;
  v13 = *(a2 + 320);
  if (v13)
  {

    return v13(a1, a2, v10, v11);
  }

  return result;
}

void RecordProbeFailure(_DWORD *a1, uint64_t a2)
{
  v2 = a1[16];
  a1[3166] = v2;
  v3 = a1[3167] + 1;
  a1[3167] = v3;
  if (v3 >= 0xF)
  {
    v5 = v2 + 5000;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    a1[3168] = v5;
    v6 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = *(a2 + 40);
      if (v8)
      {
        v9 = *(a2 + 40);
        while (1)
        {
          if (!v9 || (v10 = *v9, v10 > 0x3F))
          {
LABEL_16:
            v11 = 257;
            goto LABEL_29;
          }

          if (!*v9)
          {
            break;
          }

          v9 += v10 + 1;
          if (&v9[-v8] >= 256)
          {
            goto LABEL_16;
          }
        }

        v11 = (v9 - v8 + 1);
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_29;
    }

    v6 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 40);
      if (v8)
      {
        v13 = *(a2 + 40);
        while (1)
        {
          if (!v13 || (v14 = *v13, v14 > 0x3F))
          {
LABEL_24:
            v11 = 257;
            goto LABEL_29;
          }

          if (!*v13)
          {
            break;
          }

          v13 += v14 + 1;
          if (&v13[-v8] >= 256)
          {
            goto LABEL_24;
          }
        }

        v11 = (v13 - v8 + 1);
      }

      else
      {
        v11 = 0;
      }

LABEL_29:
      v15 = DNSTypeName(*(a2 + 12));
      v16[0] = 67110147;
      v16[1] = v3;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 1040;
      v20 = v11;
      v21 = 2101;
      v22 = v8;
      v23 = 2082;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Excessive name conflicts (%u) for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s); rate limiting in effect", v16, 0x2Cu);
    }
  }
}

uint64_t *mDNSGetTSRForAuthRecordNamed(uint64_t *a1, _BYTE *a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    while (*(v3 + 6) != 41 || *(v3 + 6) != a3 || !SameDomainNameBytes(v3[5], a2))
    {
      v3 = *v3;
      if (!v3)
      {
        return v3;
      }
    }

    v7 = *(v3[6] + 4);
    if (v7 != 65002)
    {
      v8 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          v9 = 67109120;
          v10 = v7;
          goto LABEL_14;
        }
      }

      else
      {
        v8 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          v9 = 67109120;
          v10 = v7;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "mDNSGetTSRForAuthRecordNamed: Found OPT that is not kDNSOpt_TSR (%d)", &v9, 8u);
        }
      }

      return 0;
    }
  }

  return v3;
}

uint64_t *mDNSGetTSRForCacheGroup(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    while (*(result + 6) != 41)
    {
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    v2 = *(result[6] + 4);
    if (v2 != 65002)
    {
      v3 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v6 = 67109120;
        v7 = v2;
      }

      else
      {
        v3 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v6 = 67109120;
        v7 = v2;
      }

      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "mDNSGetTSRForCacheGroup: Found OPT that is not kDNSOpt_TSR (%d)", &v6, 8u);
      return 0;
    }
  }

  return result;
}

BOOL ResourceRecordIsValidAnswer(uint64_t a1)
{
  result = 0;
  if ((*(a1 + 8) & 0x3C) != 0 && *(a1 + 12) != 41)
  {
    v2 = *(a1 + 72);
    if (!v2 || (*(v2 + 8) & 0x3C) != 0)
    {
      v3 = *(a1 + 80);
      if (!v3 || (*(v3 + 8) & 0x3C) != 0)
      {
        v4 = *(a1 + 88);
        if (!v4 || (*(v4 + 8) & 0x3C) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CompleteDeregistration(uint64_t a1, uint64_t a2)
{
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    v13 = 141558275;
    v14 = 1752392040;
    v15 = 2085;
    v16 = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CompleteDeregistration: called for Resource record %{sensitive, mask.hash}s", &v13, 0x16u);
  }

LABEL_10:
  *(a2 + 8) = 8;
  *(a2 + 192) = 0;
  *(a2 + 126) = 0;
  *(a2 + 130) = 0;
  if (*(a2 + 193))
  {
    AnswerAllLocalQuestionsWithLocalAuthRecord(a1, a2, 0, v7, v8, v9, v10, v11);
    *(a2 + 193) = 0;
  }

  return mDNS_Deregister_internal(a1, a2, 0);
}

BOOL FollowCNAME(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (!a3 || *(a1 + 342) == 5 || *(a2 + 2) != 5 || *a2 == 240)
  {
    return 0;
  }

  if (!*(a1 + 144))
  {
    return 1;
  }

  v4 = *(a2 + 7);
  if (!v4)
  {
    return 0;
  }

  return *(v4 + 32) == 1;
}

uint64_t CacheGroupHasAddressOnInterface(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v8 = dword_10016D258;
      v9 = dword_10016D258 + 939524096;
      while (1)
      {
        if (*(v4 + 6) == a2 && v4[4] == a4)
        {
          v10 = v9;
          if (!*(v4 + 109))
          {
            v10 = *(v4 + 20) + 1000 * *(v4 + 4);
          }

          if (v10 - v8 >= 60001 && mDNSSameAddress(v4 + 33, a3))
          {
            break;
          }
        }

        v4 = *v4;
        if (!v4)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mDNSCoreRestartQuestion(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 340) && *(a2 + 212) >= 1 && !*(a2 + 40))
  {
    *(a2 + 352) = 2;
    v2 = *(result + 64);
    *(a2 + 208) = v2 - 334;
    *(a2 + 212) = 334;
    *(a2 + 224) = 0;
    *(a2 + 689) = 0;
    v3 = *(a2 + 56);
    if (v3)
    {
      v4 = (v3 + 8);
      v5 = 8;
      do
      {
        if (*v4 - v2 < 0)
        {
          *(v4 - 1) = 0;
        }

        v4 += 4;
        --v5;
      }

      while (v5);
    }

    *(result + 92) = v2;
  }

  return result;
}

void AdjustUnansweredQueries(uint64_t a1, uint64_t a2)
{
  v2 = 1000 * *(a2 + 16);
  if (*(a2 + 109))
  {
    v3 = dword_10016D258 + 939524096;
  }

  else
  {
    v3 = v2 + *(a2 + 80);
  }

  v4 = *(a1 + 64);
  if (v4 - v3 < 0)
  {
    v5 = *(a2 + 108);
    if (v5 <= 3)
    {
      if ((v2 + 19) > 0x26)
      {
        v12 = v3 - v4;
        v13 = v12 / (v2 / 20);
        if (v13 >= 4)
        {
          v13 = 4;
        }

        if (v13 < 4 - v5)
        {
          if (v2 / 20 <= v12)
          {
            v14 = 4 - v13;
          }

          else
          {
            v14 = 3;
          }

          *(a2 + 108) = v14;
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        v6 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "AdjustUnansweredQueries: WARNING: unusually small TTL (%d ticks) for %s", v7, v8, v9, v10, v11, v2);
      }
    }
  }
}

void ReleaseCacheRecord(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4 == (a2 + 152);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    free(v4);
  }

  *(a2 + 48) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    os_release(v6);
    *(a2 + 56) = 0;
  }

  v7 = CacheGroupForName(a1, *(a2 + 24), *(a2 + 40));
  if (v7)
  {
    v8 = v7;
    v9 = *(a2 + 40);
    if (v9 && v9 != v8[4])
    {
      free(v9);
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v15 = *(a2 + 40);
        while (1)
        {
          if (!v15 || (v16 = *v15, v16 > 0x3F))
          {
LABEL_29:
            v14 = 257;
            goto LABEL_34;
          }

          if (!*v15)
          {
            break;
          }

          v15 += v16 + 1;
          if (&v15[-v11] >= 256)
          {
            goto LABEL_29;
          }
        }

        v14 = (v15 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v12 = *(a2 + 40);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_21:
            v14 = 257;
            goto LABEL_34;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_21;
          }
        }

        v14 = (v12 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_34:
    v17 = DNSTypeName(*(a2 + 12));
    v25 = 141558787;
    v26 = 1752392040;
    v27 = 1040;
    v28 = v14;
    v29 = 2101;
    v30 = v11;
    v31 = 2082;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ReleaseCacheRecord: ERROR!! cg NULL for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", &v25, 0x26u);
  }

LABEL_35:
  *(a2 + 40) = 0;
  if (!*(a2 + 32))
  {
    *(a1 + 248) -= *(a2 + 20);
  }

  v18 = *(a2 + 64);
  if (v18)
  {
    ref_count_obj_release(v18);
    *(a2 + 64) = 0;
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    do
    {
      v20 = v19;
      *(a2 + 120) = *v19;
      v21 = v19[6];
      v22 = v19 + 19;
      if (v21)
      {
        v23 = v21 == v22;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        free(v21);
        v20[6] = 0;
      }

      v24 = v20[5];
      if (v24)
      {
        free(v24);
        v20[5] = 0;
      }

      if (!v20[4])
      {
        *(a1 + 248) -= *(v20 + 10);
      }

      *v20 = *(a1 + 264);
      *(a1 + 264) = v20;
      --*(a1 + 244);
      v19 = *(a2 + 120);
    }

    while (v19);
  }

  else
  {
    v20 = *(a1 + 264);
  }

  *a2 = v20;
  *(a1 + 264) = a2;
  --*(a1 + 244);
}

uint64_t CheckProxyRecords(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(result + 12640) = a2;
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = (result + 47032);
    do
    {
      result = v8 + 8;
      if (*(v8 + 8) != 1 && *(v8 + 126))
      {
        if (*(v9 + 15120) && (v11 = *(v8 + 168), *(v9 + 64) - v11 < 0))
        {
          if (*(v9 + 108) - v11 >= 1)
          {
            *(v9 + 108) = v11;
          }
        }

        else
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v12 = mDNSLogCategory_Default;
            v13 = *(v8 + 125);
            v14 = *(v9 + 19888);
            GetRRDisplayString_rdb(result, (*(v8 + 48) + 4), v10);
            LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "CheckProxyRecords: Removing %d H-MAC %.6a I-MAC %.6a %d %s", v15, v16, v17, v18, v19, v14);
          }

          v20 = *(v9 + 15112);
          if (v20)
          {
            if (v20 != *(v8 + 32))
            {
              mDNSPlatformUpdateProxyList(v20, a2, a3, a4, a5, a6, a7, a8);
            }
          }

          *(v9 + 15112) = *(v8 + 32);
          result = mDNS_Deregister_internal(v9, v8, 0);
          v21 = *(v9 + 12640);
          if (v21 != v8)
          {
            goto LABEL_17;
          }
        }
      }

      v21 = *v8;
      *(v9 + 12640) = *v8;
LABEL_17:
      v8 = v21;
    }

    while (v21);
  }

  return result;
}

void mDNS_SendKeepalives(uint64_t a1)
{
  for (i = *(a1 + 12616); i; i = *i)
  {
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v14 = 0;
    v15 = 0;
    if (*(i + 126))
    {
      mDNS_ExtractKeepaliveInfo(i, &v25, &v20, &v17, v16, &v24 + 1, &v24, &v15, &v14, &v23);
      v8 = v25;
      if (v25)
      {
        if (v20 != 4 && (v20 != 6 || v21 | HIDWORD(v21) | v22 | HIDWORD(v20)) && v17 != 4 && (v17 != 6 || v18 | HIDWORD(v18) | v19 | HIDWORD(v17)))
        {
          v9 = HIDWORD(v24);
          if (HIDWORD(v24))
          {
            v10 = v24;
            if (v24)
            {
              if (v15)
              {
                if (v14)
                {
                  v11 = v23;
                  if (v23)
                  {
                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SendKeepalives: laddr %#a raddr %#a lport %d rport %d", v3, v4, v5, v6, v7, &v20);
                    v13 = *(i + 176);
                    if (!v13 || (*(a1 + 64) - v13) >= 0)
                    {
                      mDNSPlatformSendKeepalive(&v20, &v17, &v15, &v14, v9, v10, v11, v12);
                      v13 = *(a1 + 64) + 1000 * v8;
                      if (v13 <= 1)
                      {
                        v13 = 1;
                      }

                      *(i + 176) = v13;
                    }

                    if ((*(a1 + 112) - v13) >= 1)
                    {
                      *(a1 + 112) = v13;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mDNS_SetUpDomainEnumeration(unsigned int *a1, uint64_t a2, int a3)
{
  if (a3 != 2)
  {
    return 4294901752;
  }

  v4 = *(a2 + 272);
  if (!v4)
  {
    return 0;
  }

  v6 = v4[176];
  if (v6 == 2)
  {
    v16 = v4[177];
    if (v16 != 1)
    {
      if (v16 || (a1[16] - v4[178]) < 0)
      {
        return 0;
      }

      v17 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_97;
        }

        v31 = a2;
        while (1)
        {
          if (!v31 || (v32 = *v31, v32 > 0x3F))
          {
LABEL_77:
            v20 = 257;
            goto LABEL_96;
          }

          if (!*v31)
          {
            break;
          }

          v31 += v32 + 1;
          if (&v31[-a2] >= 256)
          {
            goto LABEL_77;
          }
        }

        v20 = (v31 - a2 + 1);
      }

      else
      {
        v17 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_97;
        }

        v18 = a2;
        while (1)
        {
          if (!v18 || (v19 = *v18, v19 > 0x3F))
          {
LABEL_38:
            v20 = 257;
            goto LABEL_96;
          }

          if (!*v18)
          {
            break;
          }

          v18 += v19 + 1;
          if (&v18[-a2] >= 256)
          {
            goto LABEL_38;
          }
        }

        v20 = (v18 - a2 + 1);
      }

LABEL_96:
      v39 = 136446979;
      v40 = "automatic browse domain";
      v41 = 2160;
      *v42 = 1752392040;
      *&v42[8] = 1040;
      *&v42[10] = v20;
      v43 = 2101;
      *v44 = a2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Stopping the %{public}s enumeration - domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P.", &v39, 0x26u);
LABEL_97:
      result = mDNS_StopQuery_internal(a1, (v4 + 2));
      if (!result)
      {
        mDNS_DeregisterDomainsDiscoveredForDomainEnumeration(a1, a2, 2, v34, v35, v36, v37, v38);
        result = 0;
        v4[176] = 0;
      }

      return result;
    }

    v21 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v29 = a2;
        while (1)
        {
          if (!v29 || (v30 = *v29, v30 > 0x3F))
          {
LABEL_70:
            v24 = 257;
            goto LABEL_91;
          }

          if (!*v29)
          {
            break;
          }

          v29 += v30 + 1;
          if (&v29[-a2] >= 256)
          {
            goto LABEL_70;
          }
        }

        v24 = (v29 - a2 + 1);
        goto LABEL_91;
      }
    }

    else
    {
      v21 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a2;
        while (1)
        {
          if (!v22 || (v23 = *v22, v23 > 0x3F))
          {
LABEL_49:
            v24 = 257;
            goto LABEL_91;
          }

          if (!*v22)
          {
            break;
          }

          v22 += v23 + 1;
          if (&v22[-a2] >= 256)
          {
            goto LABEL_49;
          }
        }

        v24 = (v22 - a2 + 1);
LABEL_91:
        v39 = 136447235;
        v40 = "automatic browse domain";
        v41 = 1024;
        *v42 = 1;
        *&v42[4] = 2160;
        *&v42[6] = 1752392040;
        v43 = 1040;
        *v44 = v24;
        *&v44[4] = 2101;
        *&v44[6] = a2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Resuming the %{public}s enumeration - active client count: %u, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P.", &v39, 0x2Cu);
      }
    }

    result = 0;
LABEL_93:
    v4[176] = 1;
    return result;
  }

  if (v6 == 1)
  {
    if (v4[177])
    {
      return 0;
    }

    v12 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        v27 = a2;
        while (1)
        {
          if (!v27 || (v28 = *v27, v28 > 0x3F))
          {
LABEL_63:
            v15 = 257;
            goto LABEL_85;
          }

          if (!*v27)
          {
            break;
          }

          v27 += v28 + 1;
          if (&v27[-a2] >= 256)
          {
            goto LABEL_63;
          }
        }

        v15 = (v27 - a2 + 1);
        goto LABEL_85;
      }
    }

    else
    {
      v12 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        v13 = a2;
        while (1)
        {
          if (!v13 || (v14 = *v13, v14 > 0x3F))
          {
LABEL_26:
            v15 = 257;
            goto LABEL_85;
          }

          if (!*v13)
          {
            break;
          }

          v13 += v14 + 1;
          if (&v13[-a2] >= 256)
          {
            goto LABEL_26;
          }
        }

        v15 = (v13 - a2 + 1);
LABEL_85:
        v39 = 136447235;
        v40 = "automatic browse domain";
        v41 = 2160;
        *v42 = 1752392040;
        *&v42[8] = 1040;
        *&v42[10] = v15;
        v43 = 2101;
        *v44 = a2;
        *&v44[8] = 1024;
        *&v44[10] = 60;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Planning to stop the %{public}s enumeration - domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, grace period: %ds.", &v39, 0x2Cu);
      }
    }

    result = 0;
    v4[176] = 2;
    v33 = a1[16] + 60000;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v4[178] = v33;
    return result;
  }

  if (v6 || v4[177] != 1)
  {
    return 0;
  }

  v7 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_81;
    }

    v25 = a2;
    while (1)
    {
      if (!v25 || (v26 = *v25, v26 > 0x3F))
      {
LABEL_56:
        v10 = 257;
        goto LABEL_80;
      }

      if (!*v25)
      {
        break;
      }

      v25 += v26 + 1;
      if (&v25[-a2] >= 256)
      {
        goto LABEL_56;
      }
    }

    v10 = (v25 - a2 + 1);
  }

  else
  {
    v7 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_81;
    }

    v8 = a2;
    while (1)
    {
      if (!v8 || (v9 = *v8, v9 > 0x3F))
      {
LABEL_15:
        v10 = 257;
        goto LABEL_80;
      }

      if (!*v8)
      {
        break;
      }

      v8 += v9 + 1;
      if (&v8[-a2] >= 256)
      {
        goto LABEL_15;
      }
    }

    v10 = (v8 - a2 + 1);
  }

LABEL_80:
  v39 = 136446979;
  v40 = "automatic browse domain";
  v41 = 2160;
  *v42 = 1752392040;
  *&v42[8] = 1040;
  *&v42[10] = v10;
  v43 = 2101;
  *v44 = a2;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting the %{public}s enumeration - domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P.", &v39, 0x26u);
LABEL_81:
  result = mDNS_GetDomains_Internal(a1, (v4 + 2), 2, a2, 0, FoundNonLocalOnlyAutomaticBrowseDomain, 0);
  if (!result)
  {
    goto LABEL_93;
  }

  return result;
}

void BeginSleepProcessing(uint64_t a1)
{
  bzero(v135, 0x400uLL);
  *(a1 + 180) = *(a1 + 64);
  v2 = SCDynamicStoreCreate(0, @"mDNSResponder:SPSAddresses", 0, 0);
  v3 = SCDynamicStoreCreate(0, @"mDNSResponder:SPSOPTRecord", 0, 0);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, @"BonjourSleepProxyAddress");
  if (NetworkInterfaceEntity)
  {
    v5 = SCDynamicStoreCopyKeyList(v2, NetworkInterfaceEntity);
    if (v5)
    {
      v6 = v5;
      if (SCDynamicStoreSetMultiple(v2, 0, v5, 0))
      {
        v7 = 1;
      }

      else
      {
        v7 = mDNS_LoggingEnabled == 0;
      }

      if (!v7)
      {
        v8 = mDNSLogCategory_Default;
        CStringPtr = CFStringGetCStringPtr(NetworkInterfaceEntity, 0x600u);
        v10 = SCError();
        SCErrorString(v10);
        LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "mDNSPlatformClearSPSData: Unable to remove %s : error %s", v11, v12, v13, v14, v15, CStringPtr);
      }

      CFRelease(v6);
    }
  }

  v23 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, @"BonjourSleepProxyOPTRecord");
  if (v23)
  {
    v24 = SCDynamicStoreCopyKeyList(v2, v23);
    if (v24)
    {
      v25 = v24;
      if (SCDynamicStoreSetMultiple(v3, 0, v24, 0))
      {
        v26 = 1;
      }

      else
      {
        v26 = mDNS_LoggingEnabled == 0;
      }

      if (!v26)
      {
        v27 = mDNSLogCategory_Default;
        v28 = CFStringGetCStringPtr(v23, 0x600u);
        v29 = SCError();
        SCErrorString(v29);
        LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "mDNSPlatformClearSPSData: Unable to remove %s : error %s", v30, v31, v32, v33, v34, v28);
      }

      CFRelease(v25);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v35 = &unk_10016D000;
  if (v3)
  {
    CFRelease(v3);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (!*(a1 + 143))
  {
    if (mDNS_LoggingEnabled)
    {
      v37 = "BeginSleepProcessing: m->SystemWakeOnLANEnabled is false";
LABEL_35:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v37, v18, v19, v20, v21, v22, v122);
      goto LABEL_36;
    }

LABEL_39:
    v38 = 0;
    v40 = 1;
    v39 = 1;
LABEL_40:
    v41 = *(a1 + 12616);
    *(a1 + 12640) = v41;
    if (v41)
    {
      do
      {
        if (*(v41 + 6) == 10)
        {
          v42 = *(v41 + 5);
          v43 = *v42 ? *v42 + 1 : 0;
          if (SameDomainLabelPointer(&v42[v43], "\n_keepalive") && v41[8] != 1)
          {
            if (v35[208] == 1)
            {
              v44 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb(v41 + 8, (*(v41 + 6) + 4), (a1 + 47032));
              v45 = v44;
              v35 = &unk_10016D000;
              LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "DoKeepaliveCallbacks: Invoking the callback for %s", v46, v47, v48, v49, v50, a1 + 47032);
            }

            v51 = *(v41 + 13);
            if (v51)
            {
              v51(a1, v41, 4294901754);
            }
          }
        }

        v52 = *(a1 + 12640);
        if (v52 == v41)
        {
          v52 = *v41;
          *(a1 + 12640) = *v41;
        }

        v41 = v52;
      }

      while (v52);
    }

    goto LABEL_54;
  }

  if (!mDNSCoreHaveAdvertisedMulticastServices(*(a1 + 12616)))
  {
    if (mDNS_LoggingEnabled)
    {
      v37 = "BeginSleepProcessing: No advertised services";
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  v36 = *(a1 + 12656);
  if (!v36)
  {
LABEL_36:
    v38 = 0;
    v39 = 1;
    v40 = 1;
LABEL_37:
    if (v35[208] == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: Did not register with an in-NIC proxy - invoking the callbacks for KA records", v18, v19, v20, v21, v22, v122);
    }

    goto LABEL_40;
  }

  while (!*(v36 + 16))
  {
    v36 = *v36;
    if (!v36)
    {
      goto LABEL_36;
    }
  }

  v56 = 0;
  v126 = 0;
  i = 0;
  v58 = kIOMainPortDefault;
  v59 = 1;
  v60 = 1;
LABEL_69:
  *(v36 + 3675) = 0;
  if (!*(v36 + 3671) || mDNSPlatformInterfaceIsD2D(*(v36 + 3552), v16, v17, v18, v19, v20, v21, v22))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: %-6s Ignoring for registrations", v18, v19, v20, v21, v22, v36 + 3606);
    }

    goto LABEL_73;
  }

  if (*(v36 + 3672))
  {
    v61 = *(v36 + 3552);
    v62 = a1 + 12656;
    while (1)
    {
      v62 = *v62;
      if (!v62)
      {
        break;
      }

      if (*(v62 + 3552) == v61)
      {
        do
        {
          if (*(v62 + 3552) == v61 && v126 && *(v62 + 3560) == 4)
          {
            v63 = 0;
            while (2)
            {
              v64 = v135[v63];
              v65 = a1 + 12656;
              while (1)
              {
                v65 = *v65;
                if (!v65)
                {
                  break;
                }

                if (*(v65 + 3552) == v64)
                {
                  while (*(v65 + 3552) != v64 || *(v65 + 3560) != 4 || (*(v65 + 3584) & *(v65 + 3564)) != (*(v62 + 3584) & *(v62 + 3564)))
                  {
                    v65 = *v65;
                    if (!v65)
                    {
                      goto LABEL_93;
                    }
                  }

                  if (mDNS_LoggingEnabled)
                  {
                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s : Already registered for the same subnet (IPv4) for interface %s", v18, v19, v20, v21, v22, "skipSameSubnetRegistration");
                    if (mDNS_LoggingEnabled == 1)
                    {
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s : Skipping full sleep proxy registration on %s", v67, v68, v69, v70, v71, "BeginSleepProcessing");
                    }
                  }

                  v66 = 1;
                  goto LABEL_103;
                }
              }

LABEL_93:
              if (++v63 != v126)
              {
                continue;
              }

              break;
            }
          }

          v62 = *v62;
        }

        while (v62);
        break;
      }
    }

    v66 = 0;
LABEL_103:
    if (!SupportsInNICProxy(v36))
    {
      goto LABEL_73;
    }

    v72 = IOBSDNameMatching(v58, 0, (v36 + 3606));
    v125 = v58;
    MatchingService = IOServiceGetMatchingService(v58, v72);
    if (!MatchingService)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: No service for interface %s", v74, v75, v76, v77, v78, v36 + 3606);
      goto LABEL_73;
    }

    v79 = MatchingService;
    memset(className, 0, sizeof(className));
    memset(v136, 0, sizeof(v136));
    IOObjectGetClass(MatchingService, className);
    cf = 0;
    object = 0;
    v80 = RegistryEntrySearchCFPropertyAndIOObject(v79, @"mDNS_KEY", &cf, &object);
    IOObjectRelease(v79);
    if (v80)
    {
      v58 = v125;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: No mDNS_IOREG_KEY for interface %s/%s kr %d", v18, v19, v20, v21, v22, v36 + 3606);
      }

      goto LABEL_73;
    }

    IOObjectGetClass(object, v136);
    v58 = v125;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: Interface %s service %s parent %s", v81, v82, v83, v84, v85, v36 + 3606);
    }

    v86 = CFGetTypeID(cf);
    if (v86 != CFStringGetTypeID() || !CFEqual(cf, @"2009-07-30"))
    {
      v97 = mDNSLogCategory_Default;
      CFStringGetCStringPtr(cf, 0);
      LogMsgWithLevel(v97, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: mDNS_IOREG_KEY for interface %s/%s/%s value %s != %s", v98, v99, v100, v101, v102, v36 + 3606);
      goto LABEL_117;
    }

    if (!UseInternalSleepProxy)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: Not using internal (NIC) sleep proxy for interface %s", v87, v88, v89, v90, v91, v36 + 3606);
      }

      goto LABEL_117;
    }

    connect = 0;
    if (IOServiceOpen(object, mach_task_self_, 0x6D444E53u, &connect))
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: IOServiceOpen for %s/%s/%s failed %d", v92, v93, v94, v95, v96, v36 + 3606);
LABEL_117:
      v103 = 1;
LABEL_118:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      IOObjectRelease(object);
      if (((v66 | v103) & 1) == 0)
      {
        v104 = *(a1 + 12616);
        for (i = 0; v104; v104 = *v104)
        {
          if ((*(v104 + 123) & 1) != 0 && *(v104 + 8) == 8 && *(v104 + 192))
          {
            v104[26] = -1;
            i = 1;
          }
        }

        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: %-6s using local proxy", v18, v19, v20, v21, v22, v36 + 3606);
        }

        v60 = 0;
        v59 = 0;
        v135[v126++] = *(v36 + 3552);
      }

      goto LABEL_73;
    }

    *v130 = 0u;
    *v131 = 0u;
    inputStruct = 0u;
    LODWORD(inputStruct) = 21;
    DWORD2(inputStruct) = GetPortArray(1, 0);
    HIDWORD(inputStruct) = GetPortArray(2, 0);
    v105 = CountProxyRecords(&inputStruct + 1);
    v130[0] = (v105 | 0xC00000000);
    v124 = malloc_type_calloc(1uLL, DWORD1(inputStruct) + 12, 0xC733137EuLL);
    if (!v124)
    {
      goto LABEL_165;
    }

    if (v105)
    {
      v111 = malloc_type_calloc(1uLL, 8 * v105, 0x15108602uLL);
      if (!v111)
      {
LABEL_165:
        __break(1u);
        return;
      }
    }

    else
    {
      v111 = 0;
    }

    v130[1] = v111;
    v123 = v111;
    if (DWORD2(inputStruct))
    {
      v112 = malloc_type_calloc(1uLL, 2 * DWORD2(inputStruct), 0x49A0A19DuLL);
      if (!v112)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v112 = 0;
    }

    v131[0] = v112;
    if (HIDWORD(inputStruct))
    {
      v113 = v112;
      v114 = malloc_type_calloc(1uLL, 2 * HIDWORD(inputStruct), 0xFA09A25FuLL);
      v112 = v113;
      if (!v114)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v114 = 0;
    }

    v131[1] = v114;
    if (mDNS_LoggingEnabled == 1)
    {
      v115 = v112;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: msg %p %u RR %p %u, UDP %p %u, TCP %p %u", v106, v107, v108, v109, v110, v124);
      v112 = v115;
    }

    if (v123)
    {
      GetProxyRecords(v124, &inputStruct + 1, v123, v130, v107, v108, v109, v110);
      v112 = v131[0];
    }

    if (v112)
    {
      DWORD2(inputStruct) = GetPortArray(1, v112);
    }

    if (v131[1])
    {
      HIDWORD(inputStruct) = GetPortArray(2, v131[1]);
    }

    outputStruct = 0;
    outputStructCnt = 2;
    v121 = IOConnectCallStructMethod(connect, 0, &inputStruct, 0x30uLL, &outputStruct, &outputStructCnt);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ActivateLocalProxy: IOConnectCallStructMethod for %s/%s/%s %d", v116, v117, v118, v119, v120, v36 + 3606);
    }

    v103 = v121 != 0;
    if (v131[1])
    {
      free(v131[1]);
      v131[1] = 0;
    }

    v58 = v125;
    if (v131[0])
    {
      free(v131[0]);
      v131[0] = 0;
    }

    if (v130[1])
    {
      free(v130[1]);
      v130[1] = 0;
    }

    free(v124);
    IOServiceClose(connect);
    goto LABEL_118;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: %-6s not capable of magic packet wakeup", v18, v19, v20, v21, v22, v36 + 3606);
  }

  *(v36 + 3675) = 1;
  ++v56;
LABEL_73:
  while (1)
  {
    v36 = *v36;
    if (!v36)
    {
      break;
    }

    if (*(v36 + 16))
    {
      goto LABEL_69;
    }
  }

  v38 = v59 == 0;
  v39 = v56 == 0;
  v40 = i == 0;
  v35 = &unk_10016D000;
  if (v60)
  {
    goto LABEL_37;
  }

LABEL_54:
  if (!v38)
  {
    if (v35[208] == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: Not registering with Sleep Proxy Server", v18, v19, v20, v21, v22, v122);
    }

    v53 = a1;
    v54 = 1;
    v55 = 1;
    goto LABEL_66;
  }

  if (!v39)
  {
    if (v35[208] == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: Not registering with Sleep Proxy Server on all interfaces", v18, v19, v20, v21, v22, v122);
    }

    v53 = a1;
    v54 = 0;
    v55 = 0;
LABEL_66:
    SendSleepGoodbyes(v53, v54, v55, v18, v19, v20, v21, v22);
    return;
  }

  if (!v40)
  {
    if (v35[208] == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BeginSleepProcessing: Sending goodbyes for WakeOnlyService", v18, v19, v20, v21, v22, v122);
    }

    SendResponses(a1, v16, v17, v18, v19, v20, v21, v22);
  }
}

void *__mDNSPostResponseDelayMetrics_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  v3 = empty;
  if (empty)
  {
    v4 = 0;
    v5 = *(v1 + 24);
    for (i = 28; i != 62; i += 2)
    {
      v4 += *(v1 + i);
    }

    v7 = v5 + v4;
    xpc_dictionary_set_uint64(empty, "answer_count_cache_hit", v5);
    xpc_dictionary_set_uint64(v3, "answer_count_total", v7);
    xpc_dictionary_set_uint64(v3, "delay_1s", *(v1 + 28));
    xpc_dictionary_set_uint64(v3, "delay_2s", *(v1 + 30));
    xpc_dictionary_set_uint64(v3, "delay_3s", *(v1 + 32));
    xpc_dictionary_set_uint64(v3, "delay_4s", *(v1 + 34));
    xpc_dictionary_set_uint64(v3, "delay_5s", *(v1 + 36));
    xpc_dictionary_set_uint64(v3, "delay_6s", *(v1 + 38));
    xpc_dictionary_set_uint64(v3, "delay_7s", *(v1 + 40));
    xpc_dictionary_set_uint64(v3, "delay_8s", *(v1 + 42));
    xpc_dictionary_set_uint64(v3, "delay_9s", *(v1 + 44));
    xpc_dictionary_set_uint64(v3, "delay_10s", *(v1 + 46));
    xpc_dictionary_set_uint64(v3, "delay_11s", *(v1 + 48));
    xpc_dictionary_set_uint64(v3, "delay_12s", *(v1 + 50));
    xpc_dictionary_set_uint64(v3, "delay_13s", *(v1 + 52));
    xpc_dictionary_set_uint64(v3, "delay_14s", *(v1 + 54));
    xpc_dictionary_set_uint64(v3, "delay_15s", *(v1 + 56));
    xpc_dictionary_set_uint64(v3, "delay_20s", *(v1 + 58));
    xpc_dictionary_set_uint64(v3, "delay_infinity", *(v1 + 60));
  }

  return v3;
}

void GenerateNegativeResponseEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a1 + 208);
  if (v9)
  {
    v10 = a4;
    v14 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        MakeNegativeCacheRecord(a1, a1 + 37912, v9 + 376, *(v9 + 200), *(v9 + 342), *(v9 + 344), 60, a2, *(v9 + 80), v10);
        AnswerCurrentQuestionWithResourceRecord(a1, a1 + 37912, a3);
        if (*(a1 + 208) == v9)
        {
          *(v9 + 212) = 0;
        }

        *(a1 + 37920) = 0;
        *(a1 + 38022) = 0;
        v19 = *(a1 + 37976);
        if (v19)
        {
          ref_count_obj_release(v19);
          *(a1 + 37976) = 0;
        }

        return;
      }
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    v18 = bswap32(*(v9 + 340)) >> 16;
    *buf = 67109120;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Q%d] GenerateNegativeResponse: Generating negative response for question", buf, 8u);
    goto LABEL_14;
  }

  v16 = mDNSLogCategory_Default;

  LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "GenerateNegativeResponse: ERROR!! CurrentQuestion not set", a4, a5, a6, a7, a8, a9);
}

void CheckRmvEventsForLocalRecords(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1580];
  if (v8)
  {
    while (*(v8 + 193) && *(v8 + 8) == 1)
    {
      *(v8 + 8) = 8;
      AnswerAllLocalQuestionsWithLocalAuthRecord(a1, v8, 0, a4, a5, a6, a7, a8);
      v10 = a1[1580];
      if (v10 == v8)
      {
        *(v8 + 8) = 1;
        *(v8 + 193) = 0;
        if ((*(v8 + 172) & 0xFFFFFFFE) != 4)
        {
          break;
        }

        CompleteDeregistration(a1, v8);
        v10 = a1[1580];
      }

      if (v10 == v8)
      {
        break;
      }

LABEL_9:
      v8 = v10;
      if (!v10)
      {
        return;
      }
    }

    v10 = *v8;
    a1[1580] = *v8;
    goto LABEL_9;
  }
}

void DiscardDeregistrations(uint64_t a1)
{
  v2 = *(a1 + 12640);
  if (v2)
  {
    v3 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v3 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
      v7 = 141558275;
      v8 = 1752392040;
      v9 = 2085;
      v10 = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiscardDeregistrations ERROR m->CurrentRecord already set %{sensitive, mask.hash}s", &v7, 0x16u);
    }
  }

LABEL_11:
  v6 = *(a1 + 12616);
  for (*(a1 + 12640) = v6; v6; *(a1 + 12640) = v6)
  {
    while ((*(v6 + 32) || *(v6 + 122) || IsLocalDomain(*(v6 + 40))) && *(v6 + 8) == 1)
    {
      CompleteDeregistration(a1, v6);
      v6 = *(a1 + 12640);
      if (!v6)
      {
        return;
      }
    }

    v6 = *v6;
  }
}

BOOL __SendQueries_block_invoke(void *a1, unsigned int *a2, uint64_t a3, char a4)
{
  v8 = a1[6];
  v9 = *(v8 + 342);
  HasAddressOnInterface = CacheGroupHasAddressOnInterface(*(*(a1[4] + 8) + 24), v9, a2, a3);
  v11 = HasAddressOnInterface;
  v12 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v13 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (!HasAddressOnInterface)
  {
    if (v14)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
      {
        v21 = bswap32(*(v8 + 340)) >> 16;
        v22 = v8 + 376;
        v23 = (v8 + 376);
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_23:
            v25 = 257;
            goto LABEL_45;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v22] >= 256)
          {
            goto LABEL_23;
          }
        }

        v25 = (v23 - v22 + 1);
LABEL_45:
        v37 = *(v8 + 200);
        *buf = 67111427;
        *v45 = v21;
        *&v45[4] = 2160;
        *&v45[6] = 1752392040;
        v46 = 1045;
        *v47 = 20;
        *&v47[4] = 2101;
        *&v47[6] = a2;
        v48 = 1024;
        *v49 = a3;
        *&v49[4] = 2160;
        *&v49[6] = 1752392040;
        v50 = 1040;
        *v51 = v25;
        *&v51[4] = 2101;
        *&v51[6] = v8 + 376;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v37;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[Q%u] Sending unicast assist query - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %d %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x4Eu);
      }
    }

    else
    {
      v12 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
      {
        v21 = bswap32(*(v8 + 340)) >> 16;
        v31 = v8 + 376;
        v32 = (v8 + 376);
        while (1)
        {
          if (!v32 || (v33 = *v32, v33 > 0x3F))
          {
LABEL_37:
            v25 = 257;
            goto LABEL_45;
          }

          if (!*v32)
          {
            break;
          }

          v32 += v33 + 1;
          if (&v32[-v31] >= 256)
          {
            goto LABEL_37;
          }
        }

        v25 = (v32 - v31 + 1);
        goto LABEL_45;
      }
    }

    v38 = a1[7];
    *(v38 + 28960) = *(a1[6] + 340);
    *(v38 + 28962) = 0;
    *(v38 + 28964) = 0;
    v39 = putQuestion(a1[7] + 28960, a1[7] + 28972, a1[7] + 37912, (a1[6] + 376), *(a1[6] + 342), *(a1[6] + 344) | 0x8000u, v19, v20);
    mDNSSendDNSMessage(a1[7], (a1[7] + 28960), v39, a3, 0, 0, a2, 0xE914u, 0, *(a1[6] + 640));
    v40 = a1[6];
    v41 = *(a1[7] + 64);
    *(v40 + 208) = v41;
    *(v40 + 256) = v41;
    *(v40 + 224) = 0;
    *(v40 + 64) = 0;
    v42 = *(a1[7] + 64);
    if (v42 <= 1)
    {
      v42 = 1;
    }

    *(a1[6] + 216) = v42;
    *(*(a1[5] + 8) + 24) = a4;
    return v11 == 0;
  }

  if (v14)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v15 = v8 + 376;
      v16 = (v8 + 376);
      while (1)
      {
        if (!v16 || (v17 = *v16, v17 > 0x3F))
        {
LABEL_15:
          v18 = 257;
          goto LABEL_39;
        }

        if (!*v16)
        {
          break;
        }

        v16 += v17 + 1;
        if (&v16[-v15] >= 256)
        {
          goto LABEL_15;
        }
      }

      v18 = (v16 - v15 + 1);
LABEL_39:
      v34 = *(v8 + 200);
      *buf = 141560067;
      *v45 = 1752392040;
      *&v45[8] = 1045;
      *&v45[10] = 20;
      v46 = 2101;
      *v47 = a2;
      *&v47[8] = 1024;
      *&v47[10] = a3;
      v48 = 2160;
      *v49 = 1752392040;
      *&v49[8] = 1040;
      *&v49[10] = v18;
      v50 = 2101;
      *v51 = v8 + 376;
      *&v51[8] = 1024;
      *&v51[10] = v9;
      v52 = 1024;
      v53 = v34;
      v35 = v12;
LABEL_42:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "SKIPPED unicast assist query - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %d %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x48u);
    }
  }

  else
  {
    v26 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v27 = v8 + 376;
      v28 = (v8 + 376);
      while (1)
      {
        if (!v28 || (v29 = *v28, v29 > 0x3F))
        {
LABEL_30:
          v30 = 257;
          goto LABEL_41;
        }

        if (!*v28)
        {
          break;
        }

        v28 += v29 + 1;
        if (&v28[-v27] >= 256)
        {
          goto LABEL_30;
        }
      }

      v30 = (v28 - v27 + 1);
LABEL_41:
      v36 = *(v8 + 200);
      *buf = 141560067;
      *v45 = 1752392040;
      *&v45[8] = 1045;
      *&v45[10] = 20;
      v46 = 2101;
      *v47 = a2;
      *&v47[8] = 1024;
      *&v47[10] = a3;
      v48 = 2160;
      *v49 = 1752392040;
      *&v49[8] = 1040;
      *&v49[10] = v30;
      v50 = 2101;
      *v51 = v8 + 376;
      *&v51[8] = 1024;
      *&v51[10] = v9;
      v52 = 1024;
      v53 = v36;
      v35 = v26;
      goto LABEL_42;
    }
  }

  return v11 == 0;
}

uint64_t *CacheHasAddressTypeForName(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  result = CacheGroupForName(a1, a3, a2);
  if (result)
  {
    for (result = result[2]; result; result = *result)
    {
      v4 = *(result + 6);
      if (v4 == 1 || v4 == 28)
      {
        break;
      }
    }
  }

  return result;
}

void SendARP(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v9 = (a1 + 28972);
  v10 = *(a3 + 32);
  v11 = (a1 + 12656);
  do
  {
    v11 = *v11;
    if (!v11)
    {
      v25 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v25, OS_LOG_TYPE_DEFAULT, "SendARP: No interface with InterfaceID %p found %s", v26, v27, v28, v29, v30, v10);
      return;
    }
  }

  while (v11[444] != v10);
  v12 = 6;
  v13 = v9;
  do
  {
    v14 = *a7++;
    *v13++ = v14;
    --v12;
  }

  while (v12);
  v15 = v11 + 450;
  v16 = *(v11 + 3600);
  v17 = 6;
  do
  {
    v18 = v13;
    *v13++ = v16;
    --v17;
  }

  while (v17);
  v19 = 0;
  *v13 = 0x406000801000608;
  v13[8] = 0;
  v20 = v18 + 11;
  v13[9] = a2;
  do
  {
    *v20++ = *(v15 + v19++);
  }

  while (v19 != 6);
  for (i = 0; i != 4; ++i)
  {
    *v20++ = *(a4 + i);
  }

  for (j = 0; j != 6; ++j)
  {
    *v20++ = *(a5 + j);
  }

  for (k = 0; k != 4; ++k)
  {
    *v20++ = *(a6 + k);
  }

  v24 = *(a3 + 32);

  mDNSPlatformSendRawPacket(v9, v20, v24);
}

void SendNDP(uint64_t a1, int a2, char a3, uint64_t a4, int8x8_t *a5, int *a6, uint64_t a7, char *a8)
{
  v10 = (a1 + 28972);
  v49 = 767;
  v50 = 0;
  v51 = 0;
  v52 = -255;
  v53 = *(a7 + 13);
  v54 = *(a7 + 14);
  if (a2 == 135)
  {
    v11 = &v49;
  }

  else
  {
    v11 = a7;
  }

  v12 = *(a4 + 32);
  v13 = (a1 + 12656);
  do
  {
    v13 = *v13;
    if (!v13)
    {
      v32 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a4 + 8), (*(a4 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "SendNDP: No interface with InterfaceID %p found %s", v33, v34, v35, v36, v37, v12);
      return;
    }
  }

  while (v13[444] != v12);
  v14 = 6;
  v15 = (a1 + 28972);
  do
  {
    v16 = *a8++;
    *v15++ = v16;
    --v14;
  }

  while (v14);
  v17 = v13 + 450;
  v18 = &v47;
  v19 = 6;
  do
  {
    v20 = v15;
    if (a6)
    {
      v47 = *a6;
      v21 = *(a6 + 2);
    }

    else
    {
      v47 = *v17;
      v21 = *(v17 + 2);
    }

    v48 = v21;
    v22 = *v18++;
    *v20 = v22;
    v15 = v20 + 1;
    --v19;
  }

  while (v19);
  v23 = 0;
  *v15 = -8826;
  v20[3] = 96;
  *(v20 + 1) = 0;
  *(v20 + 4) = 14880;
  v24 = v20 + 11;
  v15[9] = -1;
  do
  {
    *v24++ = a5->i8[v23++];
  }

  while (v23 != 16);
  for (i = 0; i != 16; ++i)
  {
    v26 = v24;
    *v24++ = *(v11 + i);
  }

  *v24 = a2;
  *(v24 + 1) = 0;
  v24[3] = 0;
  v24[4] = a3;
  *(v24 + 5) = 0;
  v27 = v26 + 9;
  v24[7] = 0;
  if (a2 == 135)
  {
    for (j = 0; j != 16; ++j)
    {
      v29 = v27;
      *v27++ = *(a7 + j);
    }

    if (vorr_s8(*a5, *&vextq_s8(*a5->i8, *a5->i8, 8uLL)))
    {
      v30 = 0;
      *v27 = 257;
      v27 = v29 + 3;
      do
      {
        if (a6)
        {
          v45 = *a6;
          v31 = *(a6 + 2);
        }

        else
        {
          v45 = *v17;
          v31 = *(v17 + 2);
        }

        v46 = v31;
        *v27++ = *(&v45 + v30++);
      }

      while (v30 != 6);
    }
  }

  else
  {
    for (k = 0; k != 16; ++k)
    {
      v39 = v27;
      *v27++ = a5->i8[k];
    }

    v40 = 0;
    *v27 = 258;
    v27 = v39 + 3;
    do
    {
      if (a6)
      {
        v43 = *a6;
        v41 = *(a6 + 2);
      }

      else
      {
        v43 = *v17;
        v41 = *(v17 + 2);
      }

      v44 = v41;
      *v27++ = *(&v43 + v40++);
    }

    while (v40 != 6);
  }

  *(a1 + 28991) = v27 - (a1 + 98);
  *(a1 + 29028) = ~IPv6CheckSum(a5, v11, (a1 + 29026), (v27 - (a1 + 98)));
  v42 = *(a4 + 32);

  mDNSPlatformSendRawPacket(v10, v27, v42);
}