uint64_t mDNSPlatformInterfaceIsD2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == -5)
  {
    return 0;
  }

  if (a1 == -3)
  {
    return 1;
  }

  if ((a1 + 2) < 3)
  {
    return 0;
  }

  if (AWDLInterfaceID == a1 || WiFiAwareInterfaceID == a1)
  {
    return 1;
  }

  v10 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    while (!*(v10 + 3768) || *(v10 + 3720) != a1)
    {
      v10 = *(v10 + 3680);
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    return *(v10 + 3699);
  }

  else
  {
LABEL_14:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInterfaceIsD2D: Invalid interface index %d", a4, a5, a6, a7, a8, a1);
    }

    return 0;
  }
}

uint64_t mDNSPlatformValidRecordForInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    goto LABEL_6;
  }

  while (!*(v10 + 3768) || *(v10 + 3720) != a2)
  {
    v10 = *(v10 + 3680);
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  if (*(v10 + 3777))
  {
    v16 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      result = os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = *(a1 + 40);
          while (1)
          {
            if (!v19 || (v20 = *v19, v20 > 0x3F))
            {
LABEL_29:
              v21 = 257;
              goto LABEL_42;
            }

            if (!*v19)
            {
              break;
            }

            v19 += v20 + 1;
            if (&v19[-v18] >= 256)
            {
              goto LABEL_29;
            }
          }

          v21 = (v19 - v18 + 1);
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v16 = mDNSLogCategory_mDNS_redacted;
      result = os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v22 = *(a1 + 40);
          while (1)
          {
            if (!v22 || (v23 = *v22, v23 > 0x3F))
            {
LABEL_37:
              v21 = 257;
              goto LABEL_42;
            }

            if (!*v22)
            {
              break;
            }

            v22 += v23 + 1;
            if (&v22[-v18] >= 256)
            {
              goto LABEL_37;
            }
          }

          v21 = (v22 - v18 + 1);
        }

        else
        {
          v21 = 0;
        }

LABEL_42:
        v24 = *(v10 + 3552);
        v25 = 141559043;
        v26 = 1752392040;
        v27 = 1040;
        v28 = v21;
        v29 = 2101;
        v30 = v18;
        v31 = 2082;
        v32 = v10 + 3606;
        v33 = 1024;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "mDNSPlatformValidRecordForInterface: Filtering privacy risk -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, ifname: %{public}s, ifid: %d", &v25, 0x2Cu);
        return 0;
      }
    }
  }

  else
  {
LABEL_6:
    if (*(a1 + 32) == a2 || !mDNSPlatformInterfaceIsD2D(a2, a2, a3, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    else
    {
      v11 = *(a1 + 172);
      v12 = ((v11 - 1) & 0xFFFFFFFD) == 0;
      v13 = (v11 & 0xFFFFFFFE) == 2;
      if (AWDLInterfaceID == a2 || WiFiAwareInterfaceID == a2)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

uint64_t mDNSPlatformValidQuestionForInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 136);
  v10 = *(a2 + 3552);
  if (v9 == v10 || !mDNSPlatformInterfaceIsD2D(v10, a2, a3, a4, a5, a6, a7, a8))
  {
    return 1;
  }

  v12 = *(a2 + 3552);
  v13 = *(a1 + 324);
  if (v12 == AWDLInterfaceID || v12 == WiFiAwareInterfaceID)
  {
    return (v13 >> 20) & 1;
  }

  else
  {
    return (v13 >> 17) & 1;
  }
}

void _mrcs_dns_proxy_finalize(void *a1)
{
  v4 = a1 + 5;
  v2 = a1[5];
  v3 = v4[1];
  if (v3)
  {
    v5 = 0;
    for (i = 0; i < v3; ++i)
    {
      if (*&v2[v5])
      {
        free(*&v2[v5]);
        v2 = a1[5];
        v3 = a1[6];
        *&v2[v5] = 0;
      }

      v5 += 16;
    }
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  free(v2);
  a1[5] = 0;
LABEL_9:
  v7 = a1[7];
  if (v7)
  {
    free(v7);
    a1[7] = 0;
  }
}

char *_mrcs_dns_proxy_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__s1 = 0u;
  v18 = 0u;
  v16 = 0;
  if (_mrcs_dns_proxy_print_description(a1, a2, __s1, 128, 0, &v16, a7, a8))
  {
    return 0;
  }

  if (v16 > 0x7F)
  {
    v11 = v16 + 1;
    if (v16 == -1)
    {
      goto LABEL_9;
    }

    v12 = malloc_type_malloc(v16 + 1, 0x7841B66FuLL);
    if (!v12)
    {
      goto LABEL_9;
    }

    v8 = v12;
    if (_mrcs_dns_proxy_print_description(a1, a2, v12, v11, 0, 0, v13, v14))
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

uint64_t _mrcs_dns_proxy_print_description(uint64_t a1, int a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a3;
  if (a2)
  {
    v13 = mdns_snprintf_add(&v53, &a3[a4], "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8));
    if ((v13 & 0x80000000) != 0)
    {
      return 4294960596;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = mdns_snprintf_add(&v53, &a3[a4], "input interfaces: {", a4, a5, a6, a7, a8, v50);
  if (v15 < 0)
  {
    return 4294960596;
  }

  v21 = v14 + (v15 & ~(v15 >> 31));
  if (*(a1 + 48))
  {
    v22 = 0;
    v23 = 0;
    v24 = "";
    do
    {
      v25 = *(a1 + 40) + v22;
      *v25;
      v52 = *(v25 + 8);
      v26 = mdns_snprintf_add(&v53, &a3[a4], "%s%s/%u", v16, v17, v18, v19, v20, v24);
      if ((v26 & 0x80000000) != 0)
      {
        return 4294960596;
      }

      v21 += v26;
      ++v23;
      v22 += 16;
      v24 = ", ";
    }

    while (v23 < *(a1 + 48));
  }

  v27 = *(a1 + 56);
  if (!v27)
  {
    v27 = "";
  }

  v51 = *(a1 + 64);
  v28 = mdns_snprintf_add(&v53, &a3[a4], "}, output interface: %s/%u", v16, v17, v18, v19, v20, v27);
  if (v28 < 0)
  {
    return 4294960596;
  }

  v34 = v21 + (v28 & ~(v28 >> 31));
  v35 = a6;
  if (*(a1 + 76) != 1)
  {
    goto LABEL_22;
  }

  v56 = *(a1 + 28);
  v57 = *(a1 + 36);
  v58 = 0;
  *v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = inet_ntop(30, &v56, v54, 0x2Eu);
  v42 = v36;
  if (!v36)
  {
    if (*__error())
    {
      result = *__error();
      if (result)
      {
        return result;
      }

      goto LABEL_17;
    }

    return 4294960596;
  }

LABEL_17:
  v44 = (*(a1 + 24) - 4);
  if (v44 <= 8 && (v44 - 8) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v45 = (8 * dword_10010D9B0[v44]);
  }

  v46 = mdns_snprintf_add(&v53, &a3[a4], ", nat64 prefix: %s/%d", v37, v38, v39, v40, v41, v42);
  if ((v46 & 0x80000000) != 0)
  {
    return 4294960596;
  }

  v34 += v46;
LABEL_22:
  if (*(a1 + 77))
  {
    v47 = "yes";
  }

  else
  {
    v47 = "no";
  }

  v48 = mdns_snprintf_add(&v53, &a3[a4], ", forces AAAA synthesis: %s", v29, v30, v31, v32, v33, v47);
  if (v48 < 0)
  {
    return 4294960596;
  }

  v49 = v48;
  if (a5)
  {
    *a5 = v53 - a3;
  }

  result = 0;
  if (v35)
  {
    *v35 = v34 + (v49 & ~(v49 >> 31));
  }

  return result;
}

void _mrcs_dns_proxy_manager_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

char *_mrcs_dns_proxy_manager_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v17 = 0;
  if (_mrcs_dns_proxy_manager_print_description(a1, a2, __s1, 512, &v17, a6, a7, a8))
  {
    return 0;
  }

  if (v17 > 0x1FF)
  {
    v11 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_9;
    }

    v12 = malloc_type_malloc(v17 + 1, 0xC0D66D09uLL);
    if (!v12)
    {
      goto LABEL_9;
    }

    v8 = v12;
    if (_mrcs_dns_proxy_manager_print_description(a1, a2, v12, v11, 0, v13, v14, v15))
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

uint64_t _mrcs_dns_proxy_manager_print_description(uint64_t a1, int a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a3;
  v10 = &a3[a4];
  if (a2)
  {
    v11 = mdns_snprintf_add(&v36, v10, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8));
    if ((v11 & 0x80000000) != 0)
    {
      return 4294960596;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = mdns_snprintf_add(&v36, v10, "{", a4, a5, a6, a7, a8, v32);
  if ((v13 & 0x80000000) != 0)
  {
    return 4294960596;
  }

  v14 = v12 + v13;
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v21 = Count;
    v22 = 0;
    do
    {
      v23 = v22 ? "," : "";
      v24 = mdns_snprintf_add(&v36, v10, "%s\n\t", v16, v17, v18, v19, v20, v23);
      if ((v24 & 0x80000000) != 0)
      {
        return 4294960596;
      }

      v25 = v24;
      v34 = 0;
      v35 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v22);
      result = _mrcs_dns_proxy_print_description(ValueAtIndex, 0, v36, v10 - v36, &v35, &v34, v27, v28);
      if (result)
      {
        return result;
      }

      v36 += v35;
      v14 += v25 + v34;
    }

    while (v21 != ++v22);
  }

  v30 = mdns_snprintf_add(&v36, v10, "\n}", v16, v17, v18, v19, v20, v33);
  if (v30 < 0)
  {
    return 4294960596;
  }

  if (!a5)
  {
    return 0;
  }

  v31 = v30;
  result = 0;
  *a5 = v14 + (v31 & ~(v31 >> 31));
  return result;
}

uint64_t mrcs_dns_proxy_create(int *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mrcs_dns_proxy_kind;
    *(v2 + 16) = &_mrcs_dns_proxy_kind;
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
  }

  if (a1)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -6728;
    }

    *a1 = v6;
  }

  return v3;
}

char *mrcs_dns_proxy_set_output_interface(uint64_t a1, unsigned int a2)
{
  *(a1 + 64) = a2;
  v3 = *(a1 + 56);
  if (v3)
  {
    free(v3);
    *(a1 + 56) = 0;
    a2 = *(a1 + 64);
  }

  result = mdns_system_interface_index_to_name(a2);
  *(a1 + 56) = result;
  return result;
}

uint64_t mrcs_dns_proxy_set_nat64_prefix(uint64_t a1, void *__src, unint64_t a3)
{
  v3 = __ROR8__(a3 - 32, 3);
  if (v3 > 8 || ((0x11Fu >> v3) & 1) == 0)
  {
    return 4294960553;
  }

  v4 = a3;
  v7 = dword_10010D98C[v3];
  *(a1 + 28) = 0;
  v8 = a1 + 28;
  *(a1 + 36) = 0;
  v9 = a3 >> 3;
  if (a3 >= 8)
  {
    memcpy((a1 + 28), __src, a3 >> 3);
  }

  if ((v4 & 7) != 0)
  {
    *(v8 + v9) = *(v8 + v9) & ~(-1 << (8 - (v4 & 7))) | *(__src + v9) & (-1 << (8 - (v4 & 7)));
  }

  result = 0;
  *(a1 + 24) = v7;
  *(a1 + 76) = 1;
  return result;
}

uint64_t ___mrcs_dns_proxy_manager_conflicts_with_proxy_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v7 = 1;
  do
  {
    if (v6)
    {
      v8 = *(*(a2 + 40) + 16 * v4 + 8);
      v9 = *(v5 + 40);
      if (*(v9 + 8) == v8)
      {
        break;
      }

      v10 = 0;
      v11 = (v9 + 24);
      while (v6 - 1 != v10)
      {
        v12 = *v11;
        v11 += 4;
        ++v10;
        if (v12 == v8)
        {
          if (v10 < v6)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v7 = ++v4 < v2;
  }

  while (v4 != v2);
LABEL_10:
  if (!v7)
  {
    return 1;
  }

  if (*(a2 + 64) == *(v5 + 64))
  {
    v13 = (a2 + 24);
    if (!*(a2 + 76))
    {
      v13 = 0;
    }

    v14 = (v5 + 24);
    if (!*(v5 + 76))
    {
      v14 = 0;
    }

    v15 = (*(a2 + 76) & *(v5 + 76));
    if (v13 == v14)
    {
      if ((*(a2 + 76) & *(v5 + 76)) == 0)
      {
        return 1;
      }
    }

    else
    {
      if ((*(a2 + 76) & *(v5 + 76)) == 0)
      {
        return 0;
      }

      if (*v13 != *v14)
      {
        return 0;
      }

      v16 = (*v13 - 4);
      if (v16 > 8 || (v16 - 5) < 3 || memcmp(v13 + 1, v14 + 1, dword_10010D9B0[v16]))
      {
        return 0;
      }
    }

    if (*(a2 + 77) == *(v5 + 77))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mrcs_dns_proxy_manager_get_proxy_by_input_interface(const __CFArray *a1, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = __mrcs_dns_proxy_manager_get_proxy_by_input_interface_block_invoke;
  v4[3] = &unk_100150D48;
  v5 = a2;
  v4[4] = &v6;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

BOOL __mrcs_dns_proxy_manager_get_proxy_by_input_interface_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a2 + 40);
    if (*(v4 + 8) == v3)
    {
LABEL_3:
      *(*(*(a1 + 32) + 8) + 24) = a2;
    }

    else
    {
      v6 = 0;
      v7 = (v4 + 24);
      while (v2 - 1 != v6)
      {
        v8 = *v7;
        v7 += 4;
        ++v6;
        if (v8 == v3)
        {
          if (v6 < v2)
          {
            goto LABEL_3;
          }

          return *(*(*(a1 + 32) + 8) + 24) == 0;
        }
      }
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void _mdns_trust_finalize(void *a1)
{
  if (a1[7])
  {
    v2 = a1[8];
    if (v2)
    {
      (*(v2 + 16))();
    }

    a1[7] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    dispatch_release(v4);
    a1[5] = 0;
  }

  v5 = a1[13];
  if (v5)
  {
    free(v5);
    a1[13] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    _Block_release(v6);
    a1[8] = 0;
  }

  v7 = a1[6];
  if (v7)
  {
    _Block_release(v7);
    a1[6] = 0;
  }

  v8 = a1[14];
  if (v8)
  {
    os_release(v8);
    a1[14] = 0;
  }
}

char *_mdns_trust_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  p_s1 = &__s1;
  __s1 = 0;
  if (a2 && (mdns_snprintf_add(&p_s1, &v35, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8)) & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 88);
  *atoken.val = *(a1 + 72);
  *&atoken.val[4] = v9;
  v10 = audit_token_to_pid(&atoken);
  if ((mdns_snprintf_add(&p_s1, &v35, "for pid %d", v11, v12, v13, v14, v15, v10) & 0x80000000) != 0)
  {
    return 0;
  }

  result = strdup(&__s1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void _mdns_trust_state_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

char *_mdns_trust_state_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  p_s1 = &__s1;
  __s1 = 0;
  if (a2 && (mdns_snprintf_add(&p_s1, &v36, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8)) & 0x80000000) != 0)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(*(a1 + 24), 0x8000100u);
  v15 = *(a1 + 36);
  if (v15 <= 3)
  {
    v16 = off_100150E68[v15];
  }

  v18 = *(a1 + 32);
  if ((mdns_snprintf_add(&p_s1, &v36, "effective_bundle_id %s status %s flags 0x%x", v10, v11, v12, v13, v14, CStringPtr) & 0x80000000) != 0)
  {
    return 0;
  }

  result = strdup(&__s1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

char *mdns_trust_create(_OWORD *a1, const char *a2, void *a3)
{
  v6 = _os_object_alloc();
  v7 = v6;
  if (v6)
  {
    v8 = &_mdns_trust_kind;
    *(v6 + 16) = &_mdns_trust_kind;
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
  }

  *(v7 + 32) = dispatch_queue_create("trust-internal", 0);
  v10 = a1[1];
  *(v7 + 72) = *a1;
  *(v7 + 88) = v10;
  if (!a2)
  {
    goto LABEL_9;
  }

  result = strdup(a2);
  if (result)
  {
    *(v7 + 104) = result;
LABEL_9:
    os_retain(a3);
    *(v7 + 112) = a3;
    return v7;
  }

  __break(1u);
  return result;
}

void _mdns_trust_activate_if_ready(NSObject **object)
{
  if (*(object + 26) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    if (object[5])
    {
      if ((object[3] & 1) == 0)
      {
        os_retain(object);
        v4 = object[4];
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___mdns_trust_activate_internal_block_invoke;
        block[3] = &__block_descriptor_tmp_8_4167;
        block[4] = object;
        dispatch_async(v4, block);
      }
    }
  }
}

void ___mdns_trust_activate_internal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v2[24] = 1;
  os_retain(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6 = *(v3 + 104);
  v5 = *(v3 + 112);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = ___mdns_trust_activate_internal_block_invoke_2;
  v21[3] = &__block_descriptor_tmp_7_4169;
  v21[4] = v3;
  v7 = v4;
  v8 = v5;
  v9 = v21;
  v10 = objc_autoreleasePoolPush();
  v11 = v8[3];
  if (!objc_opt_class() || !v11)
  {
    if (!v11)
    {
      v15 = _mdns_trust_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(v3 + 88);
        *buf.val = *(v3 + 72);
        *&buf.val[4] = v16;
        v17 = audit_token_to_pid(&buf);
        buf.val[0] = 67109120;
        buf.val[1] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No bundle id found for local network access policy update for PID(%d).", &buf, 8u);
      }
    }

    goto LABEL_14;
  }

  if (*(v8 + 9) != 2)
  {
LABEL_14:
    *buf.val = _NSConcreteStackBlock;
    *&buf.val[2] = 3221225472;
    *&buf.val[4] = __mdns_trust_checks_local_network_access_policy_update_block_invoke_13;
    *&buf.val[6] = &unk_100153DE8;
    v23 = v9;
    dispatch_async(v7, &buf);
    v14 = v23;
    goto LABEL_17;
  }

  v12 = _mdns_trust_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "local";
    if (v6)
    {
      v13 = v6;
    }

    buf.val[0] = 138543618;
    *&buf.val[1] = v11;
    LOWORD(buf.val[3]) = 2082;
    *(&buf.val[3] + 2) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Local network alert for (%{public}@) query(%{public}s).", &buf, 0x16u);
  }

  if (v6)
  {
    v14 = [NSString stringWithUTF8String:v6];
  }

  else
  {
    v14 = @"local";
  }

  v18 = +[NEConfigurationManager sharedManagerForAllUsers];
  v19 = *(v8 + 8);
  *buf.val = _NSConcreteStackBlock;
  *&buf.val[2] = 3221225472;
  *&buf.val[4] = __mdns_trust_checks_local_network_access_policy_update_block_invoke;
  *&buf.val[6] = &unk_100153DC0;
  v20 = v11;
  v23 = v20;
  v24 = v9;
  [v18 showLocalNetworkAlertForApp:v20 withCompletionQueue:v7 query:v14 hasEntitlement:v19 & 1 handler:&buf];

LABEL_17:
  objc_autoreleasePoolPop(v10);

  os_release(*(a1 + 32));
}

void ___mdns_trust_activate_internal_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if ((v3[25] & 1) == 0)
  {
    v3[25] = 1;
    os_retain(v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___mdns_trust_activate_internal_block_invoke_3;
    v7[3] = &__block_descriptor_tmp_4171;
    v7[4] = v5;
    v8 = a2;
    dispatch_async(v6, v7);
    v3 = *(a1 + 32);
  }

  os_release(v3);
}

void ___mdns_trust_activate_internal_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    (*(v3 + 16))(v2[6], 0, *(a1 + 40) == 1);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void mdns_trust_invalidate(uint64_t a1)
{
  if ((*(a1 + 27) & 1) == 0)
  {
    *(a1 + 27) = 1;
    os_retain(a1);
    v2 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___mdns_trust_invalidate_internal_block_invoke;
    block[3] = &__block_descriptor_tmp_9_4174;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void ___mdns_trust_invalidate_internal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 27) == 1 && (*(v2 + 25) & 1) == 0)
  {
    *(v2 + 25) = 1;
    v3 = *(v2 + 48);
    if (v3)
    {
      (*(v3 + 16))(*(v2 + 48), 1, 0);
      v2 = *(a1 + 32);
    }
  }

  os_release(v2);
}

void mdns_trust_set_queue(NSObject **object, dispatch_object_t a2)
{
  if (*(object + 26) != 1 || !object[5])
  {
    if (a2)
    {
      dispatch_retain(a2);
    }

    v4 = object[5];
    if (v4)
    {
      dispatch_release(v4);
    }

    object[5] = a2;

    _mdns_trust_activate_if_ready(object);
  }
}

void mdns_trust_set_event_handler(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 48) = v3;
}

void _mdns_client_finalize(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = a1[3];
      if (v5)
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = ___mdns_client_finalize_block_invoke;
        v7[3] = &__block_descriptor_tmp_6_4184;
        v7[4] = v4;
        v7[5] = v2;
        dispatch_async(v5, v7);
      }
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v6 = a1[3];
  if (v6)
  {
    dispatch_release(v6);
    a1[3] = 0;
  }
}

void mdns_client_replace(void **a1, void *object)
{
  if (object)
  {
    os_retain(object);
  }

  if (*a1)
  {
    os_release(*a1);
  }

  *a1 = object;
}

void mdns_client_set_queue(uint64_t a1, dispatch_object_t object)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (object)
    {
      dispatch_retain(object);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 24) = object;
  }
}

void mdns_client_activate(uint64_t a1)
{
  *(a1 + 61) = 1;
  v2 = os_retain(a1);
  v3 = (*(*(a1 + 16) + 48))(v2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_client_activate_block_invoke;
  block[3] = &__block_descriptor_tmp_4202;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __mdns_client_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 60))
  {
    v2 = *(*(v1 + 16) + 64);
    v3 = *(a1 + 32);
    if (v2)
    {
      v2(*(a1 + 32));
      v3 = *(a1 + 32);
    }

    *(v1 + 60) = 1;
    v1 = v3;
  }

  os_release(v1);
}

void mdns_client_invalidate(uint64_t a1)
{
  *(a1 + 61) = 1;
  v2 = os_retain(a1);
  v3 = (*(*(a1 + 16) + 48))(v2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_client_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_2_4207;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __mdns_client_invalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 60) != 2)
  {
    v3 = *(*(v1 + 16) + 80);
    if (v3)
    {
      v3(*(a1 + 32));
    }

    v4 = *(v1 + 48);
    if (v4)
    {
      dispatch_source_cancel(*(v1 + 48));
      dispatch_release(v4);
      *(v1 + 48) = 0;
    }

    *(v1 + 60) = 2;
    v1 = *(a1 + 32);
  }

  os_release(v1);
}

void mdns_client_set_time_limit_ms(void *a1, int a2)
{
  v4 = os_retain(a1);
  v5 = (*(a1[2] + 48))(v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = __mdns_client_set_time_limit_ms_block_invoke;
  v6[3] = &__block_descriptor_tmp_3_4210;
  v6[4] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

void __mdns_client_set_time_limit_ms_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 60) != 2)
  {
    *(v2 + 56) = *(a1 + 40);
    (*(*(v2 + 16) + 112))();
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

uint64_t mdns_client_activate_time_limit_timer(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 48));
    dispatch_release(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*(a1 + 16) + 48))();
  monotonic_timer = _mdns_dispatch_create_monotonic_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 5u, v4);
  *(a1 + 48) = monotonic_timer;
  if (monotonic_timer)
  {
    os_retain(a1);
    v6 = *(a1 + 48);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = __mdns_client_activate_time_limit_timer_block_invoke;
    handler[3] = &__block_descriptor_tmp_4_4211;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = __mdns_client_activate_time_limit_timer_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_5_4212;
    v9[4] = a1;
    dispatch_source_set_cancel_handler(v7, v9);
    dispatch_activate(*(a1 + 48));
    return 0;
  }

  return 4294960567;
}

uint64_t __mdns_client_activate_time_limit_timer_block_invoke(uint64_t a1)
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

  v4 = *(*(v2 + 16) + 120);

  return v4();
}

void mdns_client_deactivate_time_limit_timer(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 48));
    dispatch_release(v1);
    *(a1 + 48) = 0;
  }
}

void _dnssec_obj_rr_validator_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1[2] + 8 * i);
      if (v4)
      {
        ref_count_obj_release(v4);
        v2 = a1[3];
        *(a1[2] + 8 * i) = 0;
      }
    }
  }

  v5 = a1[2];
  if (v5)
  {
    free(v5);
    a1[2] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    for (j = 0; j < v6; ++j)
    {
      v8 = *(a1[4] + 8 * j);
      if (v8)
      {
        ref_count_obj_release(v8);
        v6 = a1[5];
        *(a1[4] + 8 * j) = 0;
      }
    }
  }

  v9 = a1[4];
  if (v9)
  {
    free(v9);
    a1[4] = 0;
  }

  v10 = a1[7];
  if (v10)
  {
    for (k = 0; k < v10; ++k)
    {
      v12 = *(a1[6] + 8 * k);
      if (v12)
      {
        ref_count_obj_release(v12);
        v10 = a1[7];
        *(a1[6] + 8 * k) = 0;
      }
    }
  }

  v13 = a1[6];
  if (v13)
  {
    free(v13);
    a1[6] = 0;
  }

  v14 = a1[9];
  if (v14)
  {
    for (m = 0; m < v14; ++m)
    {
      v16 = *(a1[8] + 8 * m);
      if (v16)
      {
        ref_count_obj_release(v16);
        v14 = a1[9];
        *(a1[8] + 8 * m) = 0;
      }
    }
  }

  v17 = a1[8];
  if (v17)
  {
    free(v17);
    a1[8] = 0;
  }

  v18 = a1[12];
  if (v18)
  {
    for (n = 0; n < v18; ++n)
    {
      v20 = *(a1[10] + 8 * n);
      if (v20)
      {
        ref_count_obj_release(v20);
        *(a1[10] + 8 * n) = 0;
        v18 = a1[12];
      }
    }
  }

  v21 = a1[10];
  if (v21)
  {
    free(v21);
    a1[10] = 0;
  }
}

void *dnssec_obj_rr_validator_create(_DWORD **a1, size_t a2, _DWORD **a3, size_t a4, _DWORD **a5, size_t a6, _DWORD **a7, size_t a8, _DWORD **a9, size_t a10, _DWORD *a11)
{
  result = malloc_type_calloc(1uLL, 0x68uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    goto LABEL_45;
  }

  v19 = result;
  v21 = &_dnssec_obj_rr_validator_kind;
  result[1] = &_dnssec_obj_rr_validator_kind;
  do
  {
    v22 = v21[2];
    if (v22)
    {
      result = v22(v19);
    }

    v21 = *v21;
  }

  while (v21);
  ++*v19;
  if (a2)
  {
    result = a2;
    if (a2 >> 61)
    {
      goto LABEL_45;
    }

    v23 = a8;
    result = malloc_type_calloc(a2, 8uLL, 0x5351801uLL);
    v46 = result;
    if (!result)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v46 = 0;
    v23 = a8;
  }

  v24 = a6;
  if (!a4)
  {
    v44 = 0;
    if (a6)
    {
      goto LABEL_15;
    }

LABEL_22:
    v43 = 0;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  if (a4 >> 61)
  {
    goto LABEL_45;
  }

  result = malloc_type_calloc(a4, 8uLL, 0x3421DEE5uLL);
  v44 = result;
  if (!result)
  {
    goto LABEL_45;
  }

  if (!a6)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a6 >> 61)
  {
    goto LABEL_45;
  }

  result = malloc_type_calloc(a6, 8uLL, 0x9A713C88uLL);
  v43 = result;
  if (!result)
  {
    goto LABEL_45;
  }

  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v23 >> 61)
  {
    goto LABEL_45;
  }

  result = malloc_type_calloc(v23, 8uLL, 0xEAC52D04uLL);
  v25 = result;
  if (!result)
  {
    goto LABEL_45;
  }

LABEL_24:
  result = a10;
  if (a10)
  {
    if (a10 >> 61 || (v26 = v23, v27 = v25, result = malloc_type_calloc(a10, 8uLL, 0xD7CE14F7uLL), v25 = v27, v23 = v26, v24 = a6, !result))
    {
LABEL_45:
      __break(1u);
      return result;
    }
  }

  if (a2)
  {
    v28 = v46;
    v29 = a2;
    do
    {
      v30 = *a1++;
      *v28++ = v30;
      ++*v30;
      --v29;
    }

    while (v29);
  }

  if (a4)
  {
    v31 = v44;
    v32 = a4;
    do
    {
      v33 = *a3++;
      *v31++ = v33;
      ++*v33;
      --v32;
    }

    while (v32);
  }

  if (v24)
  {
    v34 = v43;
    v35 = v24;
    do
    {
      v36 = *a5++;
      *v34++ = v36;
      ++*v36;
      --v35;
    }

    while (v35);
  }

  if (v23)
  {
    v37 = v25;
    v38 = v23;
    do
    {
      v39 = *a7++;
      *v37++ = v39;
      ++*v39;
      --v38;
    }

    while (v38);
  }

  if (a10)
  {
    v40 = result;
    v41 = a10;
    do
    {
      v42 = *a9++;
      *v40++ = v42;
      ++*v42;
      --v41;
    }

    while (v41);
  }

  v19[2] = v46;
  v19[3] = a2;
  v19[4] = v44;
  v19[5] = a4;
  v19[6] = v43;
  v19[7] = v24;
  v19[8] = v25;
  v19[9] = v23;
  v19[10] = result;
  v19[12] = a10;
  *(v19 + 22) = 0;
  ++*v19;
  if (a11)
  {
    *a11 = 0;
  }

  ref_count_obj_release(v19);
  return v19;
}

uint64_t dnssec_obj_rr_validator_validate_rrset(uint64_t a1, int *a2)
{
  v20 = 0;
  if (!*(a1 + 24))
  {
    v9 = 0;
    v18 = -89888;
    goto LABEL_39;
  }

  if (*(**(a1 + 16) + 32) != 48)
  {
    v9 = dnssec_obj_rr_validator_validate_rrset_with_key_tag(a1, 0, 0, &v20);
    if (!a2)
    {
      return v9;
    }

    goto LABEL_40;
  }

  if (*(a1 + 96))
  {
    v22 = -6700;
    if (*(a1 + 40))
    {
      v4 = 0;
      v5 = *(a1 + 88);
      while (1)
      {
        v6 = *(*(a1 + 80) + 8 * v4);
        v7 = *(v6 + 16);
        if (*(v7 + 32) == 43)
        {
          v8 = bswap32(**(v7 + 24)) >> 16;
        }

        else
        {
          v8 = *(v7 + 80);
        }

        v21 = 0;
        v9 = dnssec_obj_rr_validator_validate_rrset_with_key_tag(a1, v8, &v21, &v22);
        if (v9 != 1)
        {
          goto LABEL_18;
        }

        v10 = v21;
        v11 = time(0);
        if (v11 - *(v6 + 24) < 0 || *(v6 + 28) - v11 < 0)
        {
          break;
        }

        v12 = *(v6 + 16);
        if (*(v12 + 32) == 43)
        {
          if ((dnssec_obj_rr_ds_validates_dnskey(v12, v10, 0) & 1) == 0)
          {
            break;
          }
        }

        else if (ref_count_obj_compare(v12, v10, 1))
        {
          break;
        }

        v13 = 0;
        v9 = 1;
LABEL_17:
        v22 = v13;
LABEL_18:
        if (v21)
        {
          ref_count_obj_release(v21);
        }

        v14 = v9 != 1;
        if (v5)
        {
          v14 = v9 == 0;
        }

        if (++v4 >= *(a1 + 96) || !v14)
        {
          goto LABEL_38;
        }
      }

      v9 = 3;
      v13 = -89893;
      goto LABEL_17;
    }

    goto LABEL_43;
  }

  if (*(a1 + 72))
  {
    v22 = -6700;
    if (!*(a1 + 40))
    {
LABEL_43:
      v9 = 0;
      v18 = -89889;
      goto LABEL_39;
    }

    v15 = 0;
    do
    {
      v16 = *(*(a1 + 64) + 8 * v15);
      v17 = bswap32(**(v16 + 24)) >> 16;
      v21 = 0;
      v9 = dnssec_obj_rr_validator_validate_rrset_with_key_tag(a1, v17, &v21, &v22);
      if (v9 == 1)
      {
        if (dnssec_obj_rr_ds_validates_dnskey(v16, v21, &v22))
        {
          v9 = 1;
        }

        else
        {
          v9 = 3;
        }
      }

      if (v21)
      {
        ref_count_obj_release(v21);
      }

      ++v15;
    }

    while (v15 < *(a1 + 72) && !v9);
LABEL_38:
    v18 = v22;
  }

  else
  {
    v9 = 0;
    v18 = -89892;
  }

LABEL_39:
  v20 = v18;
  if (a2)
  {
LABEL_40:
    *a2 = v20;
  }

  return v9;
}

uint64_t dnssec_obj_rr_validator_validate_rrset_with_key_tag(void *a1, int a2, void *a3, _DWORD *a4)
{
  if (!a1[5])
  {
    v35 = 0;
    v102 = -89889;
LABEL_107:
    v109 = v102;
    goto LABEL_42;
  }

  if (!a1[7])
  {
    v35 = 0;
    v102 = -89890;
    goto LABEL_107;
  }

  v6 = a1[3];
  if (!v6)
  {
    v103 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v104 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v104 = 1;
    }

    if (v104)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
LABEL_117:
        v109 = -89891;
        v35 = 3;
        goto LABEL_42;
      }
    }

    else
    {
      v103 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_117;
      }
    }

    *buf = 136447234;
    *&buf[4] = "count > 0";
    *&buf[12] = 2082;
    *&buf[14] = "";
    *&buf[22] = 2082;
    *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr.c";
    LOWORD(v113) = 1024;
    *(&v113 + 2) = 266;
    WORD3(v113) = 2048;
    *(&v113 + 1) = 0;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
    goto LABEL_117;
  }

  v9 = v6 - 1;
  if (v6 == 1)
  {
    v109 = -89889;
  }

  else
  {
    v10 = a1[2];
    v11 = *(*v10 + 34);
    v12 = *(*v10 + 32);
    v13 = *(*v10 + 16);
    v14 = v10 + 1;
    do
    {
      v15 = *v14;
      if (*(*v14 + 34) != v11 || *(v15 + 32) != v12 || ref_count_obj_compare(*(v15 + 16), v13, 1))
      {
        goto LABEL_117;
      }

      ++v14;
      --v9;
    }

    while (v9);
    v16 = a1[5];
    v109 = -89889;
    if (!v16)
    {
      v35 = 0;
      goto LABEL_42;
    }
  }

  v106 = a3;
  v108 = a4;
  v17 = 0;
  while (1)
  {
    v18 = *(a1[4] + 8 * v17);
    v19 = *(v18 + 24);
    v20 = *(v19 + 16);
    if (a2)
    {
      v21 = *(v19 + 17) | (v20 << 8);
      if (v21 != a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v19 + 17) | (v20 << 8);
    }

    v22 = a1[7];
    if (v22)
    {
      v23 = a1[6];
      while (1)
      {
        v24 = *v23;
        if (*v23)
        {
          if (*(v24 + 80) == v21 && (dnssec_obj_rr_dnskey_is_valid_for_dnssec(*(v24 + 24), &v109) & 1) != 0)
          {
            break;
          }
        }

        ++v23;
        if (!--v22)
        {
          goto LABEL_23;
        }
      }

      v25 = *a1[2];
      v26 = bswap32(*(v19 + 12));
      v27 = bswap32(*(v19 + 8));
      v28 = time(0);
      v29 = v28;
      if (v28 - v26 < 0 || ((v27 - v28) & 0x80000000) != 0)
      {
        v34 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v34 = mDNSLogCategory_DNSSEC_redacted;
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            *buf = 67109632;
            *&buf[4] = v26;
            *&buf[8] = 1024;
            *&buf[10] = v29;
            *&buf[14] = 1024;
            *&buf[16] = v27;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Invalid RRSIG timestamp - inception: %u, now: %u, expiration: %u", buf, 0x14u);
          }
        }

        v33 = -90000;
LABEL_40:
        v109 = v33;
        goto LABEL_23;
      }

      v109 = 0;
      if (dnssec_obj_rr_rrsig_covers_rr(v18, v25, &v109))
      {
        break;
      }
    }

LABEL_23:
    if (++v17 >= a1[5])
    {
      v35 = 0;
      a4 = v108;
      goto LABEL_42;
    }
  }

  v30 = *(v24 + 24);
  if ((*v30 & 1) == 0)
  {
    v33 = -88888;
    goto LABEL_40;
  }

  v31 = *(v18 + 24);
  v32 = v30[3];
  v33 = -89895;
  if (*(v31 + 2) != v32)
  {
    goto LABEL_40;
  }

  v33 = -89895;
  if (*(v24 + 80) != bswap32(*(v31 + 16)) >> 16)
  {
    goto LABEL_40;
  }

  if (ref_count_obj_compare(*(v18 + 80), *(v24 + 16), 1))
  {
    v33 = -89895;
    goto LABEL_40;
  }

  v109 = 0;
  v37 = a1[2];
  v38 = a1[3];
  if (v38)
  {
    v39 = *(v18 + 24);
    v40 = bswap32(*(v39 + 4));
    v41 = *(v39 + 3);
    v42 = a1[2];
    v43 = a1[3];
    do
    {
      v44 = *v42++;
      *(v44 + 44) = v40;
      *(v44 + 48) = v41;
      --v43;
    }

    while (v43);
  }

  dnssec_objs_sort(v37, v38);
  v45 = *(v18 + 24);
  v46 = *(v18 + 36);
  v49 = *(v45 + 18);
  v47 = v45 + 18;
  v48 = v49;
  LOWORD(v50) = v47;
  if (v49)
  {
    v50 = v47;
    do
    {
      v51 = v50 + v48;
      v52 = *(v51 + 1);
      v50 = v51 + 1;
      v48 = v52;
    }

    while (v52);
  }

  v53 = v46 + v47 - 18 + ~v50;
  RSAPublicKey = (v46 - v53);
  v55 = RSAPublicKey;
  if (v38)
  {
    v26 = v37;
    v56 = v38;
    v55 = v46 - v53;
    do
    {
      v57 = *v26;
      v26 += 8;
      dnssec_obj_rr_get_signed_data(v57);
      v55 += *(v57 + 64);
      --v56;
    }

    while (v56);
  }

  if (!v55)
  {
    goto LABEL_118;
  }

  v58 = malloc_type_malloc(v55, 0x311767B8uLL);
  if (!v58)
  {
    goto LABEL_118;
  }

  v59 = v58;
  memcpy(v58, *(v18 + 24), RSAPublicKey);
  v107 = v59;
  if (v38)
  {
    v60 = RSAPublicKey + v59;
    v61 = v37;
    v62 = v38;
    do
    {
      v63 = *v61;
      dnssec_obj_rr_get_signed_data(*v61);
      v64 = *(v63 + 64);
      v65 = *v61++;
      signed_data = dnssec_obj_rr_get_signed_data(v65);
      memcpy(v60, signed_data, v64);
      v60 += v64;
      --v62;
    }

    while (v62);
    v109 = 0;
    v67 = v106;
    do
    {
      v68 = *v37;
      *(v68 + 44) = 0;
      *(v68 + 48) = 0;
      *(v68 + 64) = 0;
      v69 = *(v68 + 56);
      if (v69)
      {
        free(v69);
        *(v68 + 56) = 0;
      }

      v37 += 8;
      --v38;
    }

    while (v38);
  }

  else
  {
    v109 = 0;
    v67 = v106;
  }

  if (v67)
  {
    *v67 = v24;
    ++*v24;
  }

  v70 = *(v24 + 24);
  v71 = *(v70 + 3);
  public_key_size = rdata_parser_dnskey_get_public_key_size(*(v24 + 36));
  v73 = *(v18 + 24);
  v76 = *(v73 + 18);
  v75 = (v73 + 18);
  v74 = v76;
  v26 = v75;
  if (v76)
  {
    v26 = v75;
    do
    {
      v77 = &v26[v74];
      v78 = v77[1];
      v26 = (v77 + 1);
      v74 = v78;
    }

    while (v78);
  }

  RSAPublicKey = 0;
  v79 = -88890;
  if (v71 > 0xE)
  {
LABEL_126:
    v35 = 0;
    v109 = v79;
    a4 = v108;
    v26 = v107;
    if (RSAPublicKey)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  v80 = *(v18 + 36);
  v37 = public_key_size;
  if (((1 << v71) & 0x5A0) == 0)
  {
    if (((1 << v71) & 0x6000) == 0)
    {
      goto LABEL_126;
    }

    v84 = v80;
    bytes = 4;
    v86 = kCFAllocatorDefault;
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, public_key_size + 1);
    if (!Mutable)
    {
      RSAPublicKey = 0;
LABEL_122:
      v79 = -6728;
      goto LABEL_126;
    }

    v88 = Mutable;
    CFDataAppendBytes(Mutable, &bytes, 1);
    CFDataAppendBytes(v88, (v70 + 4), v37);
    *buf = kSecAttrKeyType;
    *&buf[8] = kSecAttrKeyClass;
    values[0] = kSecAttrKeyTypeECSECPrimeRandom;
    values[1] = kSecAttrKeyClassPublic;
    v89 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v89)
    {
      v90 = v89;
      RSAPublicKey = SecKeyCreateWithData(v88, v89, 0);
      CFRelease(v90);
      if (RSAPublicKey)
      {
        CFRelease(v88);
        goto LABEL_84;
      }

      v79 = -6700;
    }

    else
    {
      v79 = -6728;
    }

    CFRelease(v88);
    RSAPublicKey = 0;
    goto LABEL_126;
  }

  if (!public_key_size || (v81 = malloc_type_malloc(public_key_size, 0x8A1D2467uLL)) == 0)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v82 = v81;
  memcpy(v81, (v70 + 4), v37);
  v83 = *v82;
  v84 = v80;
  if (*v82)
  {
    v85 = 1;
  }

  else
  {
    v83 = __rev16(*(v82 + 1));
    v85 = 3;
  }

  *&buf[16] = &v82[v85];
  *&buf[24] = v83;
  *buf = &v82[v85 + v83];
  *&buf[8] = v37 - v85 - v83;
  v86 = kCFAllocatorDefault;
  RSAPublicKey = SecKeyCreateRSAPublicKey();
  free(v82);
LABEL_84:
  v91 = CFDataCreate(v86, v26 + 1, (~(v26 - v75) + v84 - 18));
  if (!v91)
  {
    goto LABEL_122;
  }

  v37 = v91;
  v92 = -88890;
  v26 = v107;
  if (((1 << v71) & 0x5A0) != 0)
  {
    v93 = v86;
    v94 = v107;
    OutputSize = v55;
    goto LABEL_92;
  }

  if (v71 == 13)
  {
    v96 = 1;
    goto LABEL_91;
  }

  if (v71 != 14)
  {
    goto LABEL_120;
  }

  v96 = 2;
LABEL_91:
  v113 = 0u;
  v114 = 0u;
  memset(buf, 0, sizeof(buf));
  v97 = dword_10010D370[v96];
  CCDigest();
  OutputSize = CCDigestGetOutputSize();
  v94 = buf;
  v93 = v86;
LABEL_92:
  v98 = CFDataCreate(v93, v94, OutputSize);
  if (!v98)
  {
LABEL_119:
    v92 = -6728;
LABEL_120:
    v35 = 0;
    v109 = v92;
    a4 = v108;
    goto LABEL_102;
  }

  v99 = v98;
  v35 = 3;
  if ((0x32Du >> (v71 - 5)))
  {
    v100 = SecKeyVerifySignature(RSAPublicKey, **(&off_1001509A8 + (v71 - 5)), v98, v37, 0);
    if (v100)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    if (v100)
    {
      v101 = 0;
    }

    else
    {
      v101 = -6748;
    }
  }

  else
  {
    v101 = -6735;
  }

  a4 = v108;
  v109 = v101;
  CFRelease(v99);
LABEL_102:
  CFRelease(v37);
  if (RSAPublicKey)
  {
LABEL_103:
    CFRelease(RSAPublicKey);
  }

LABEL_104:
  free(v26);
LABEL_42:
  if (a4)
  {
    *a4 = v109;
  }

  return v35;
}

void _dnssec_obj_rr_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 38) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
      *(a1 + 24) = 0;
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    free(v4);
    *(a1 + 56) = 0;
  }
}

uint64_t _dnssec_obj_rr_compare(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a1 + 34) == *(a2 + 34) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && !ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1))
    {
      return 2 * (memcmp(*(a1 + 24), *(a2 + 24), *(a1 + 36)) != 0);
    }

    else
    {
      return 2;
    }
  }

  else if (!ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1) && *(a1 + 34) == *(a2 + 34) && *(a1 + 32) == *(a2 + 32))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 36);
    v8 = *(a2 + 24);
    v9 = *(a2 + 36);
    if (v7 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = memcmp(v6, v8, v10);
    if (v11 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
      if (v11)
      {
        result = 1;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      if (v7 >= v9 && !v12)
      {
        return v7 > v9;
      }
    }
  }

  else
  {
    return 3;
  }

  return result;
}

void dnssec_obj_rr_init_fields(uint64_t a1, unsigned __int8 *a2, __int16 a3, __int16 a4, const void *a5, unsigned int a6, int a7, uint64_t a8, int *a9)
{
  v20 = 0;
  v16 = dnssec_obj_domain_name_create_with_labels(a2, a7, &v20);
  v17 = v20;
  if (v20)
  {
    goto LABEL_9;
  }

  *(a1 + 38) = a7;
  if (a7)
  {
    if (a6)
    {
      if (!a5)
      {
        v17 = -6705;
        v20 = -6705;
        goto LABEL_9;
      }

      v18 = malloc_type_malloc(a6, 0xF8FE5E77uLL);
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = v18;
      memcpy(v18, a5, a6);
      a5 = v19;
    }

    else
    {
      a5 = 0;
    }
  }

  v17 = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = a5;
  *(a1 + 32) = a3;
  *(a1 + 34) = a4;
  *(a1 + 36) = a6;
  *(a1 + 40) = 3600;
  *(a1 + 72) = a8;
  v20 = 0;
  v16 = 0;
LABEL_9:
  if (a9)
  {
    *a9 = v17;
  }

  if (v16)
  {
    ref_count_obj_release(v16);
  }
}

char *dnssec_obj_rr_get_signed_data(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    v3 = *(a1 + 44);
    if (!v3)
    {
      goto LABEL_22;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 34);
    v7 = *(a1 + 36);
    v8 = *(a1 + 48);
    *buf = 0;
    v9 = v4[2];
    v10 = *v9;
    if (*v9)
    {
      v11 = 0;
      v12 = v4[2];
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

    if (v11 < v8)
    {
      goto LABEL_31;
    }

    if (v11 != v8)
    {
      v27 = 0;
      v26 = 10753;
      v16 = dnssec_obj_domain_name_copy_parent_domain(v9, v11 - v8, buf);
      v15 = v16;
      if (*buf)
      {
        v4 = 0;
      }

      else
      {
        v4 = dnssec_obj_domain_name_create_concatenation_with_subdomain(&v26, *(v16 + 2), buf);
        if (!*buf)
        {
LABEL_14:
          *buf = 0;
          v17 = 1;
          if (!v15)
          {
LABEL_16:
            if (!v17)
            {
              if (v4)
              {
                ref_count_obj_release(v4);
              }

              goto LABEL_31;
            }

            v18 = v7 + v4[3];
            v19 = v18 + 10;
            if (v18 != -10)
            {
              v20 = malloc_type_malloc(v18 + 10, 0xF162A691uLL);
              if (v20)
              {
                v1 = v20;
                memcpy(v20, v4[2], v4[3]);
                v21 = &v1[v4[3]];
                *v21 = HIBYTE(v5);
                v21[1] = v5;
                v21[2] = HIBYTE(v6);
                v21[3] = v6;
                v21[4] = HIBYTE(v3);
                v21[5] = BYTE2(v3);
                v21[6] = BYTE1(v3);
                v21[7] = v3;
                v21[8] = BYTE1(v7);
                v21[9] = v7;
                memcpy(v21 + 10, *(a1 + 24), v7);
                ref_count_obj_release(v4);
                *(a1 + 56) = v1;
                *(a1 + 64) = v19;
                return v1;
              }
            }

            __break(1u);
LABEL_22:
            v23 = mDNSLogCategory_DNSSEC;
            if (mDNS_SensitiveLoggingEnableCount)
            {
              v24 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
            }

            else
            {
              v24 = 1;
            }

            if (v24)
            {
              if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
              {
LABEL_31:
                v1 = 0;
                *(a1 + 56) = 0;
                return v1;
              }
            }

            else
            {
              v23 = mDNSLogCategory_DNSSEC_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_31;
              }
            }

            *buf = 136447234;
            v29 = "me->original_ttl != 0";
            v30 = 2082;
            v31 = "";
            v32 = 2082;
            v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr.c";
            v34 = 1024;
            v35 = 430;
            v36 = 2048;
            v37 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
            goto LABEL_31;
          }

LABEL_15:
          ref_count_obj_release(v15);
          goto LABEL_16;
        }
      }

      v17 = 0;
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v15 = 0;
    ++*v4;
    goto LABEL_14;
  }

  return v1;
}

char *dnssec_obj_rr_copy_rdata_rfc_description(uint64_t a1, int *a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {

    return v4();
  }

  else
  {
    v6 = 2 * *(a1 + 36) + 7;
    result = malloc_type_calloc(1uLL, v6, 0xA3B116C5uLL);
    if (result)
    {
      v7 = result;
      v8 = snprintf(result, v6, "%u ", *(a1 + 36));
      v9 = &v7[v8];
      v10 = put_hex_from_bytes(*(a1 + 24), *(a1 + 36), v9, v6 - v8);
      if (a2)
      {
        if (v10 == v9)
        {
          v11 = -6751;
        }

        else
        {
          v11 = 0;
        }

        *a2 = v11;
      }

      return v7;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void _mdns_dns_service_definition_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
    a1[5] = 0;
  }
}

void *_mdns_dns_service_definition_copy_description(uint64_t a1, int a2, char a3)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v32 + 6) = appended;
      if (appended)
      {
        goto LABEL_20;
      }
    }

    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = "";
    }

    v10 = mdns_string_builder_append_formatted(v7, "interface: %s/%u, interface scope: ", v9, *(a1 + 48));
    *(v32 + 6) = v10;
    if (v10)
    {
      goto LABEL_20;
    }

    v11 = *(a1 + 52);
    if (v11 == 2)
    {
      v12 = mdns_string_builder_append_formatted(v7, "unscoped+scoped");
    }

    else if (v11 == 1)
    {
      v12 = mdns_string_builder_append_formatted(v7, "scoped", v21);
    }

    else if (*(a1 + 52))
    {
      v22 = *(a1 + 52);
      v12 = mdns_string_builder_append_formatted(v7, "«INVALID %d»");
    }

    else
    {
      v12 = mdns_string_builder_append_formatted(v7, "unscoped", v21);
    }

    *(v32 + 6) = v12;
    if (v12)
    {
      goto LABEL_20;
    }

    v14 = mdns_string_builder_append_formatted(v7, ", addresses: {");
    *(v32 + 6) = v14;
    if (v14)
    {
      goto LABEL_20;
    }

    v28[3] = 0;
    v15 = *(a1 + 24);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 0x40000000;
    v25[2] = ___mdns_dns_service_definition_copy_description_block_invoke;
    v25[3] = &unk_100150FA8;
    v25[4] = &v31;
    v25[5] = &v27;
    v25[6] = v7;
    v26 = a3;
    mdns_cfarray_enumerate(v15, v25);
    if (*(v32 + 6))
    {
      goto LABEL_20;
    }

    v16 = mdns_string_builder_append_formatted(v7, "}");
    *(v32 + 6) = v16;
    if (v16)
    {
      goto LABEL_20;
    }

    v17 = mdns_string_builder_append_formatted(v7, ", domains: {");
    *(v32 + 6) = v17;
    if (v17)
    {
      goto LABEL_20;
    }

    v28[3] = 0;
    v19 = *(a1 + 32);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = ___mdns_dns_service_definition_copy_description_block_invoke_2;
    v23[3] = &unk_100150FD0;
    v23[4] = &v31;
    v23[5] = &v27;
    v23[6] = v7;
    v24 = a3;
    mdns_cfset_enumerate(v19, v23);
    if (*(v32 + 6) || (v20 = mdns_string_builder_append_formatted(v7, "}"), (*(v32 + 6) = v20) != 0))
    {
LABEL_20:
      v13 = 0;
    }

    else
    {
      v13 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v13;
}

BOOL ___mdns_dns_service_definition_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_definition_copy_description_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void *mdns_dns_service_definition_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_dns_service_definition_kind;
    *(v0 + 16) = &_mdns_dns_service_definition_kind;
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
    v1[3] = Mutable;
    if (!Mutable || (v5 = CFSetCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_cf_set_callbacks), (v1[4] = v5) == 0))
    {
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t mdns_dns_service_definition_create_from_xpc_dictionary(void *a1, int *a2)
{
  v33 = 0;
  v4 = mdns_dns_service_definition_create();
  v5 = v4;
  if (!v4)
  {
    v21 = -6729;
    v33 = -6729;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  optional_array = mdns_xpc_dictionary_get_optional_array(a1, "addresses");
  if (!optional_array)
  {
LABEL_9:
    v14 = mdns_xpc_dictionary_get_optional_array(a1, "domains");
    if (v14)
    {
      v15 = v14;
      count = xpc_array_get_count(v14);
      if (count)
      {
        v17 = count;
        v18 = 0;
        do
        {
          string = xpc_array_get_string(v15, v18);
          if (!string)
          {
            goto LABEL_25;
          }

          v20 = mdns_domain_name_create(string, &v33);
          v21 = v33;
          if (v33)
          {
            goto LABEL_26;
          }

          v22 = v20;
          CFSetAddValue(*(v5 + 32), v20);
          v33 = 0;
          if (v22)
          {
            os_release(v22);
            v21 = v33;
            if (v33)
            {
              goto LABEL_26;
            }
          }
        }

        while (v17 != ++v18);
      }
    }

    v32 = 0;
    value = xpc_dictionary_get_value(a1, "ifindex");
    uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFuLL, &v32);
    if (!v32)
    {
      goto LABEL_25;
    }

    v25 = uint64_limited;
    v32 = 0;
    v34 = 0;
    v26 = xpc_dictionary_get_value(a1, "interface_scope");
    v27 = _mdns_xpc_object_get_uint64_limited(v26, 0xFFuLL, &v34);
    v28 = v27 < 3u && v34;
    v32 = v28;
    if (!v28)
    {
      goto LABEL_25;
    }

    v32 = 0;
    object = _mdns_xpc_dictionary_get_object(a1, "local_purview", &_xpc_type_BOOL);
    v32 = object != 0;
    if (!object)
    {
      goto LABEL_25;
    }

    v30 = object == &_xpc_BOOL_true;
    mdns_dns_service_definition_set_interface_index(v5, v25, v27);
    v21 = 0;
    v4 = 0;
    *(v5 + 53) = v30;
    v33 = 0;
    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_27:
    *a2 = v21;
    goto LABEL_28;
  }

  v7 = optional_array;
  v8 = xpc_array_get_count(optional_array);
  if (!v8)
  {
LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = xpc_array_get_string(v7, v10);
    if (!v11)
    {
      break;
    }

    v12 = mdns_address_create_from_ip_address_string_and_port(v11, 0);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    CFArrayAppendValue(*(v5 + 24), v12);
    os_release(v13);
    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v21 = -6705;
  v33 = -6705;
LABEL_26:
  v4 = v5;
  v5 = 0;
  if (a2)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

void mdns_dns_service_definition_set_interface_index(uint64_t a1, unsigned int a2, char a3)
{
  *(a1 + 52) = a3;
  if (*(a1 + 48) != a2)
  {
    *(a1 + 48) = a2;
    v4 = *(a1 + 40);
    if (v4)
    {
      free(v4);
      *(a1 + 40) = 0;
      a2 = *(a1 + 48);
    }
  }

  if (a2)
  {
    if (!*(a1 + 40))
    {
      *(a1 + 40) = mdns_system_interface_index_to_name(a2);
    }
  }

  else
  {
    *(a1 + 52) = 0;
  }
}

void _mrcs_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 32) = 0;
  }
}

char *_mrcs_session_copy_description(void *a1)
{
  v2 = 0;
  asprintf(&v2, "<%s: %p>", *(a1[2] + 8), a1);
  return v2;
}

void _mrcs_dns_proxy_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }
}

char *_mrcs_dns_proxy_request_copy_description(void *a1)
{
  v2 = 0;
  asprintf(&v2, "<%s: %p>", *(a1[2] + 8), a1);
  return v2;
}

void _mrcs_dns_service_registration_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    os_release(v3);
    *(a1 + 40) = 0;
  }
}

void *_mrcs_dns_service_registration_request_copy_description(void *a1, int a2, char a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v8 = 0;
  }

  else
  {
    v9 = a1[4];
    if (v9 || (v9 = a1[5]) != 0)
    {
      mdns_string_builder_append_description(v7, v9, a3);
    }

    else
    {
      mdns_string_builder_append_formatted(v7, "<empty dns service definition>");
    }

    v8 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v8;
}

uint64_t __mrcs_server_set_dns_proxy_handlers_block_invoke(uint64_t result)
{
  if ((g_activated & 1) == 0)
  {
    g_dns_proxy_handlers = *(result + 32);
  }

  return result;
}

uint64_t __mrcs_server_set_dns_service_registration_handlers_block_invoke(uint64_t result)
{
  if ((g_activated & 1) == 0)
  {
    g_dns_service_registration_handlers = *(result + 32);
  }

  return result;
}

uint64_t __mrcs_server_set_discovery_proxy_handlers_block_invoke(uint64_t result)
{
  if ((g_activated & 1) == 0)
  {
    g_discovery_proxy_handlers = *(result + 32);
  }

  return result;
}

uint64_t __mrcs_server_set_record_cache_handlers_block_invoke(uint64_t result)
{
  if ((g_activated & 1) == 0)
  {
    g_record_cache_handlers = *(result + 32);
  }

  return result;
}

void __mrcs_server_activate_block_invoke(id a1)
{
  if (!_mrcs_dns_service_registration_request_kind_block_invoke_s_listener)
  {
    if (_mrcs_server_queue_s_once != -1)
    {
      dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder.control", _mrcs_server_queue_s_queue, 1uLL);
    _mrcs_dns_service_registration_request_kind_block_invoke_s_listener = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_12);
      xpc_connection_activate(_mrcs_dns_service_registration_request_kind_block_invoke_s_listener);
      g_activated = 1;
    }

    else
    {
      if (_mdns_server_log_s_once_4329 != -1)
      {
        dispatch_once(&_mdns_server_log_s_once_4329, &__block_literal_global_15_4330);
      }

      v2 = _mdns_server_log_s_log_4331;
      if (os_log_type_enabled(_mdns_server_log_s_log_4331, OS_LOG_TYPE_FAULT))
      {
        v3 = 136446210;
        v4 = "com.apple.mDNSResponder.control";
        _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Failed to create XPC listener for %{public}s", &v3, 0xCu);
      }
    }
  }
}

void __mrcs_server_activate_block_invoke_8(id a1, const void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    v3 = _os_object_alloc();
    if (v3)
    {
      v4 = v3;
      v5 = &_mrcs_session_kind;
      *(v3 + 16) = &_mrcs_session_kind;
      do
      {
        v6 = v5[2];
        if (v6)
        {
          v6(v4);
        }

        v5 = *v5;
      }

      while (v5);
      *(v4 + 32) = a2;
      xpc_retain(a2);
      v7 = &g_session_list_4335;
      do
      {
        v8 = v7;
        v9 = *v7;
        v7 = (*v7 + 24);
      }

      while (v9);
      *(v4 + 24) = 0;
      *v8 = v4;
      os_retain(v4);
      os_retain(v4);
      v10 = *(v4 + 32);
      if (_mrcs_server_queue_s_once != -1)
      {
        dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
      }

      xpc_connection_set_target_queue(v10, _mrcs_server_queue_s_queue);
      v11 = *(v4 + 32);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mrcs_session_activate_block_invoke;
      handler[3] = &__block_descriptor_tmp_22_4336;
      handler[4] = v4;
      xpc_connection_set_event_handler(v11, handler);
      xpc_connection_activate(*(v4 + 32));
      os_release(v4);
    }

    else
    {

      xpc_connection_cancel(a2);
    }
  }
}

void ___mrcs_session_activate_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v6 = *(a1 + 32);
    if (!*(v6 + 32))
    {
      return;
    }

    string = xpc_dictionary_get_string(object, "command");
    if (!string)
    {
      goto LABEL_48;
    }

    v8 = string;
    v9 = 0;
    v172 = 5;
    v174 = 9;
    v173 = "record_cache.flush";
    v175 = "shared_assist_cache.enablement";
    v176 = 10;
    v158 = 8;
    v160 = 6;
    v162 = 7;
    length = "record_cache.local_record_inquiry";
    v164 = 1;
    v159 = "discovery_proxy.start";
    v166 = 2;
    v161 = "discovery_proxy.stop";
    v168 = 3;
    v163 = "dns_proxy.start";
    v170 = 4;
    v165 = "dns_proxy.stop";
    v167 = "dns_proxy.get_state";
    v169 = "dns_service_registration.start";
    v171 = "dns_service_registration.stop";
    p_length = &length;
    while (strcmp(v8, *p_length))
    {
      ++v9;
      p_length += 2;
      if (v9 == 10)
      {
        goto LABEL_48;
      }
    }

    v23 = *(&length + 16 * v9 + 8);
    if ((v23 - 1) > 9)
    {
LABEL_48:
      LODWORD(v32) = -6707;
LABEL_49:
      v33 = object;
      v34 = v32;
      goto LABEL_50;
    }

    v24 = off_100151260[(v23 - 1)];
    v25 = *(v6 + 32);
    if (!mdns_xpc_connection_is_entitled())
    {
      LODWORD(v32) = -71168;
      goto LABEL_49;
    }

    if (v23 <= 5)
    {
      if (v23 > 2)
      {
        if (v23 != 3)
        {
          if (v23 == 4)
          {
            v156 = 0;
            uint64 = xpc_dictionary_get_uint64(object, "id");
            v27 = uint64;
            v29 = (v6 + 48);
            v28 = *(v6 + 48);
            if (!v28)
            {
              goto LABEL_182;
            }

            if (*(v28 + 48) != uint64)
            {
              while (1)
              {
                v30 = *(v28 + 24);
                if (!v30)
                {
                  break;
                }

                v28 = *(v28 + 24);
                if (*(v30 + 48) == uint64)
                {
                  goto LABEL_47;
                }
              }

              v29 = (v28 + 24);
LABEL_182:
              v133 = _mdns_xpc_dictionary_get_object(object, "params", &_xpc_type_dictionary);
              if (v133)
              {
                v134 = v133;
                v135 = _mdns_xpc_dictionary_get_object(v133, "definition", &_xpc_type_dictionary);
                if (v135)
                {
                  v136 = v135;
                  v155 = 0;
                  definition_type = mrc_xpc_dns_service_registration_params_get_definition_type(v134, &v155);
                  if (v155)
                  {
                    v138 = definition_type;
                    v139 = _os_object_alloc();
                    if (v139)
                    {
                      v66 = v139;
                      v140 = &_mrcs_dns_service_registration_request_kind;
                      *(v139 + 16) = &_mrcs_dns_service_registration_request_kind;
                      do
                      {
                        v141 = v140[2];
                        if (v141)
                        {
                          v141(v66);
                        }

                        v140 = *v140;
                      }

                      while (v140);
                      if (v138 == 2)
                      {
                        *(v66 + 5) = mdns_dns_push_service_definition_create_from_xpc_dictionary(v136, &v156);
                        if (!v156)
                        {
                          v143 = _mdns_xpc_dictionary_get_object(v134, "reports_connection_errors", &_xpc_type_BOOL);
                          if (v143 == &_xpc_BOOL_true)
                          {
                            if (_mrcs_server_queue_s_once != -1)
                            {
                              dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
                            }

                            v145 = _mrcs_server_queue_s_queue;
                            v144 = &length;
                            length = _NSConcreteStackBlock;
                            v158 = 0x40000000;
                            v159 = ___mrcs_session_handle_dns_service_registration_start_block_invoke;
                            v160 = &__block_descriptor_tmp_30;
                            v161 = v6;
                            v162 = v27;
                          }

                          else
                          {
                            v144 = 0;
                            v145 = 0;
                          }

                          if (!*g_dns_service_registration_handlers)
                          {
                            goto LABEL_223;
                          }

                          v148 = (*g_dns_service_registration_handlers)(*(v66 + 5), v145, v144);
                          if (v148)
                          {
                            v149 = 0;
                          }

                          else
                          {
                            v149 = -6700;
                          }

                          v156 = v149;
                          *(v66 + 7) = v148;
                          if (v143 == &_xpc_BOOL_true && v148)
                          {
                            os_retain(v6);
                            goto LABEL_225;
                          }

                          if (v148)
                          {
                            goto LABEL_225;
                          }
                        }
                      }

                      else if (v138 == 1)
                      {
                        *(v66 + 4) = mdns_dns_service_definition_create_from_xpc_dictionary(v136, &v156);
                        if (!v156)
                        {
                          if (*g_dns_service_registration_handlers)
                          {
                            v142 = (*g_dns_service_registration_handlers)();
                            if (v142)
                            {
                              v156 = 0;
                              *(v66 + 7) = v142;
LABEL_225:
                              *(v66 + 6) = v27;
                              *v29 = v66;
                              goto LABEL_198;
                            }

LABEL_227:
                            v150 = -6700;
                            goto LABEL_228;
                          }

LABEL_223:
                          v150 = -6714;
LABEL_228:
                          v156 = v150;
                          *(v66 + 7) = 0;
                        }
                      }

                      else
                      {
                        v156 = -6705;
                      }

                      os_release(v66);
                      goto LABEL_198;
                    }

                    v31 = -6728;
                    goto LABEL_197;
                  }
                }
              }

              goto LABEL_196;
            }

LABEL_47:
            v31 = -6721;
LABEL_197:
            v156 = v31;
LABEL_198:
            LODWORD(v32) = v156;
            goto LABEL_49;
          }

          v52 = xpc_dictionary_get_uint64(object, "id");
          v53 = (v6 + 48);
          v54 = *(v6 + 48);
          if (!v54)
          {
            goto LABEL_94;
          }

          if (*(v54 + 48) != v52)
          {
            while (1)
            {
              v55 = v54;
              v54 = *(v54 + 24);
              if (!v54)
              {
                goto LABEL_94;
              }

              if (*(v54 + 48) == v52)
              {
                v53 = (v55 + 24);
                break;
              }
            }
          }

          *v53 = *(v54 + 24);
          *(v54 + 24) = 0;
          v56 = *(g_dns_service_registration_handlers + 8);
          if (v56)
          {
            v56(*(v54 + 56));
            LODWORD(v32) = 0;
          }

          else
          {
LABEL_143:
            LODWORD(v32) = -6714;
          }

LABEL_144:
          os_release(v54);
          goto LABEL_49;
        }

        empty = xpc_dictionary_create_empty();
        if (!empty)
        {
          LODWORD(v32) = -6729;
          goto LABEL_49;
        }

        v46 = empty;
        v47 = *(g_dns_proxy_handlers + 16);
        if (v47)
        {
          v48 = v47();
          if (v48)
          {
            v49 = v48;
            xpc_dictionary_set_string(v46, "description", v48);
            free(v49);
LABEL_76:
            v51 = 0;
            goto LABEL_176;
          }

          v51 = -6728;
LABEL_176:
          reply = mrc_xpc_create_reply(object, v51, v46);
          xpc_release(v46);
          if (!reply)
          {
            return;
          }

LABEL_51:
          xpc_connection_send_message(*(v6 + 32), reply);
          xpc_release(reply);
          return;
        }

LABEL_97:
        v51 = -6714;
        goto LABEL_176;
      }

      if (v23 == 1)
      {
        v42 = xpc_dictionary_get_uint64(object, "id");
        v43 = *(v6 + 40);
        if (v43)
        {
          while (1)
          {
            v44 = v43;
            if (*(v43 + 40) == v42)
            {
              break;
            }

            v43 = *(v43 + 24);
            if (!v43)
            {
              v151 = (v44 + 24);
              allocator = v42;
              goto LABEL_99;
            }
          }

          LODWORD(v32) = -6709;
          goto LABEL_49;
        }

        v151 = (v6 + 40);
        allocator = v42;
LABEL_99:
        v65 = _mdns_xpc_dictionary_get_object(object, "params", &_xpc_type_dictionary);
        if (v65)
        {
          v66 = v65;
          v156 = 0;
          v54 = mrcs_dns_proxy_create(&v156);
          LODWORD(v32) = v156;
          if (!v156)
          {
            optional_array = mdns_xpc_dictionary_get_optional_array(v66, "input_interfaces");
            if (optional_array)
            {
              v68 = optional_array;
              v153 = v66;
              count = xpc_array_get_count(optional_array);
              if (count)
              {
                v70 = count;
                v71 = 0;
                v155 = 0;
                while (1)
                {
                  value = xpc_array_get_value(v68, v71);
                  uint64_limited = _mdns_xpc_object_get_uint64_limited(value, 0xFFFFFFFFuLL, &v155);
                  if (!v155)
                  {
                    goto LABEL_211;
                  }

                  v74 = uint64_limited;
                  v75 = *(v54 + 48);
                  if (!v75)
                  {
                    break;
                  }

                  v76 = *(v54 + 40);
                  if (*(v76 + 8) != uint64_limited)
                  {
                    v77 = 0;
                    v78 = (v76 + 24);
                    while (v75 - 1 != v77)
                    {
                      v79 = *v78;
                      v78 += 4;
                      ++v77;
                      if (v79 == uint64_limited)
                      {
                        goto LABEL_113;
                      }
                    }

                    v77 = *(v54 + 48);
LABEL_113:
                    if (v77 >= v75 && v75 != -1)
                    {
                      if (v75 >= 0xFFFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_226;
                      }

                      v80 = v75 + 1;
LABEL_117:
                      v81 = malloc_type_calloc(v80, 0x10uLL, 0xD7CF34DuLL);
                      if (!v81)
                      {
LABEL_226:
                        __break(1u);
                        goto LABEL_227;
                      }

                      v82 = v81;
                      if (*(v54 + 48))
                      {
                        v83 = 0;
                        v84 = 0;
                        v85 = *(v54 + 40);
                        do
                        {
                          *&v81[v83] = *(v85 + v83);
                          v85 = *(v54 + 40);
                          *(v85 + v83) = 0;
                          ++v84;
                          v86 = *(v54 + 48);
                          v83 += 16;
                        }

                        while (v84 < v86);
                      }

                      else
                      {
                        v86 = 0;
                      }

                      v66 = &v81[16 * v86];
                      *(v66 + 2) = v74;
                      *v66 = mdns_system_interface_index_to_name(v74);
                      v87 = *(v54 + 40);
                      if (v87)
                      {
                        free(v87);
                      }

                      *(v54 + 40) = v82;
                      *(v54 + 48) = v80;
                    }
                  }

                  if (++v71 == v70)
                  {
                    output_interface = mrc_xpc_dns_proxy_params_get_output_interface(v153, &v155);
                    if (!v155)
                    {
                      goto LABEL_211;
                    }

                    mrcs_dns_proxy_set_output_interface(v54, output_interface);
                    length = 0;
                    nat64_prefix = mrc_xpc_dns_proxy_params_get_nat64_prefix(v153, &length);
                    if (nat64_prefix)
                    {
                      v90 = mrcs_dns_proxy_set_nat64_prefix(v54, nat64_prefix, length);
                      v156 = v90;
                      if (v90)
                      {
                        LODWORD(v32) = v90;
                        goto LABEL_140;
                      }
                    }

                    force_aaaa_synthesis = mrc_xpc_dns_proxy_params_get_force_aaaa_synthesis(v153, &v155);
                    if (!v155)
                    {
                      goto LABEL_211;
                    }

                    *(v54 + 77) = force_aaaa_synthesis;
                    LODWORD(v32) = v156;
                    if (v156)
                    {
                      goto LABEL_144;
                    }

                    *(v54 + 72) = xpc_connection_get_euid(*(v6 + 32));
                    if (!*g_dns_proxy_handlers)
                    {
                      goto LABEL_143;
                    }

                    v92 = (*g_dns_proxy_handlers)(v54);
                    if (v92)
                    {
                      LODWORD(v32) = v92;
                      goto LABEL_144;
                    }

                    v93 = _os_object_alloc();
                    if (!v93)
                    {
                      LODWORD(v32) = -6728;
                      goto LABEL_144;
                    }

                    v94 = v93;
                    v32 = &_mrcs_dns_proxy_request_kind;
                    *(v93 + 16) = &_mrcs_dns_proxy_request_kind;
                    do
                    {
                      v95 = v32[2];
                      if (v95)
                      {
                        v95(v94);
                      }

                      v32 = *v32;
                    }

                    while (v32);
                    *(v94 + 32) = v54;
                    os_retain(v54);
                    *(v94 + 40) = allocator;
                    *v151 = v94;
                    goto LABEL_140;
                  }
                }

                v80 = 1;
                goto LABEL_117;
              }
            }

LABEL_211:
            LODWORD(v32) = -6705;
            v156 = -6705;
          }

LABEL_140:
          if (!v54)
          {
            goto LABEL_49;
          }

          goto LABEL_144;
        }

LABEL_142:
        LODWORD(v32) = -6705;
        goto LABEL_49;
      }

      v59 = xpc_dictionary_get_uint64(object, "id");
      v60 = (v6 + 40);
      v61 = *(v6 + 40);
      if (!v61)
      {
LABEL_94:
        LODWORD(v32) = -6708;
        goto LABEL_49;
      }

      if (v61[5] != v59)
      {
        while (1)
        {
          v62 = v61;
          v61 = v61[3];
          if (!v61)
          {
            goto LABEL_94;
          }

          if (v61[5] == v59)
          {
            v60 = v62 + 3;
            break;
          }
        }
      }

      *v60 = v61[3];
      v61[3] = 0;
      v63 = *(g_dns_proxy_handlers + 8);
      if (v63)
      {
        v63(v61[4]);
      }

      os_release(v61);
      goto LABEL_180;
    }

    if (v23 > 7)
    {
      if (v23 == 8)
      {
        v50 = xpc_dictionary_create_empty();
        if (!v50)
        {
          v33 = object;
          v34 = -6729;
LABEL_50:
          reply = mrc_xpc_create_reply(v33, v34, 0);
          if (!reply)
          {
            return;
          }

          goto LABEL_51;
        }

        v46 = v50;
        length = _NSConcreteStackBlock;
        v158 = 0x40000000;
        v159 = ___mrcs_session_handle_record_cache_local_record_inquiry_block_invoke;
        v160 = &__block_descriptor_tmp_32_4337;
        v161 = v50;
        if (*g_record_cache_handlers)
        {
          (*g_record_cache_handlers)(&length);
          goto LABEL_76;
        }

        goto LABEL_97;
      }

      if (v23 == 9)
      {
        v36 = _mdns_xpc_dictionary_get_object(object, "params", &_xpc_type_dictionary);
        if (!v36)
        {
          goto LABEL_142;
        }

        v37 = v36;
        v38 = xpc_dictionary_get_string(v36, "record_name");
        if (!v38)
        {
          goto LABEL_142;
        }

        v39 = v38;
        LOBYTE(length) = 0;
        key_tag = mrc_xpc_record_cache_flush_params_get_key_tag(v37, &length);
        if (length == 1)
        {
          v41 = *(g_record_cache_handlers + 16);
          if (v41)
          {
            v41(v39, key_tag);
            goto LABEL_180;
          }
        }

        else
        {
          v132 = *(g_record_cache_handlers + 8);
          if (v132)
          {
            v132(v39);
            goto LABEL_180;
          }
        }

        LODWORD(v32) = -6714;
        goto LABEL_49;
      }

      v57 = _mdns_xpc_dictionary_get_object(object, "params", &_xpc_type_dictionary);
      if (!v57)
      {
        goto LABEL_142;
      }

      v58 = xpc_dictionary_get_BOOL(v57, "enable");
      mrcs_prefs_set_shared_assist_cache_enable(v58);
LABEL_180:
      LODWORD(v32) = 0;
      goto LABEL_49;
    }

    if (v23 != 6)
    {
      v64 = g_current_discovery_proxy_owner;
      if (g_current_discovery_proxy_owner == v6)
      {
        v131 = *(g_discovery_proxy_handlers + 8);
        if (v131)
        {
          LODWORD(v32) = v131();
          v64 = g_current_discovery_proxy_owner;
        }

        else
        {
          LODWORD(v32) = -6714;
        }

        if (v64)
        {
          os_release(v64);
          g_current_discovery_proxy_owner = 0;
        }
      }

      else
      {
        LODWORD(v32) = -6718;
      }

      goto LABEL_49;
    }

    v156 = 0;
    if (g_current_discovery_proxy_owner)
    {
      v31 = -6719;
      goto LABEL_197;
    }

    v96 = _mdns_xpc_dictionary_get_object(object, "params", &_xpc_type_dictionary);
    if (!v96 || (v97 = v96, v155 = 0, interface = mrc_xpc_discovery_proxy_params_get_interface(v96, &v155), !v155) || (v99 = interface, (v100 = mdns_xpc_dictionary_get_optional_array(v97, "addresses")) == 0) || (v101 = v100, (v102 = xpc_array_get_count(v100)) == 0))
    {
LABEL_196:
      v31 = -6705;
      goto LABEL_197;
    }

    v103 = v102;
    v154 = v99;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v102, &mdns_cfarray_callbacks);
    if (!Mutable)
    {
      v31 = -6729;
      goto LABEL_197;
    }

    v105 = Mutable;
    for (i = 0; i != v103; ++i)
    {
      v107 = xpc_array_get_string(v101, i);
      if (!v107)
      {
        goto LABEL_207;
      }

      v108 = mdns_address_create_from_ip_address_string_and_port(v107, 0);
      if (!v108)
      {
        goto LABEL_207;
      }

      v109 = v108;
      CFArrayAppendValue(v105, v108);
      os_release(v109);
    }

    v110 = mdns_xpc_dictionary_get_optional_array(v97, "match_domains");
    if (v110 && (v111 = v110, (v112 = xpc_array_get_count(v110)) != 0))
    {
      v113 = v112;
      v114 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      if (v114)
      {
        v115 = v114;
        for (j = 0; j != v113; ++j)
        {
          v117 = xpc_array_get_string(v111, j);
          if (!v117)
          {
            goto LABEL_238;
          }

          v118 = mdns_domain_name_create(v117, &v156);
          if (v156)
          {
            v125 = 0;
            goto LABEL_240;
          }

          v119 = v118;
          CFArrayAppendValue(v115, v118);
          if (v119)
          {
            os_release(v119);
          }
        }

        v120 = mdns_xpc_dictionary_get_optional_array(v97, "server_certificates");
        if (v120)
        {
          v121 = v120;
          v122 = xpc_array_get_count(v120);
          if (v122)
          {
            v123 = v122;
            v124 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if (v124)
            {
              v125 = v124;
              v126 = 0;
              while (1)
              {
                length = 0;
                data = xpc_array_get_data(v121, v126, &length);
                v128 = -6705;
                if (!data || !length)
                {
                  goto LABEL_239;
                }

                v129 = CFDataCreate(kCFAllocatorDefault, data, length);
                if (!v129)
                {
                  v128 = -6729;
                  goto LABEL_239;
                }

                v130 = v129;
                CFArrayAppendValue(v125, v129);
                CFRelease(v130);
                if (v123 == ++v126)
                {
                  goto LABEL_235;
                }
              }
            }
          }

          goto LABEL_238;
        }

        v125 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (!v125)
        {
LABEL_238:
          v125 = 0;
          v128 = -6705;
LABEL_239:
          v156 = v128;
          goto LABEL_240;
        }

LABEL_235:
        if (!*g_discovery_proxy_handlers)
        {
          v128 = -6714;
          goto LABEL_239;
        }

        v156 = (*g_discovery_proxy_handlers)(v154, v105, v115, v125);
        if (!v156)
        {
          g_current_discovery_proxy_owner = v6;
          os_retain(v6);
        }

LABEL_240:
        CFRelease(v105);
        CFRelease(v115);
        if (!v125)
        {
          goto LABEL_198;
        }

        v147 = v125;
LABEL_209:
        CFRelease(v147);
        goto LABEL_198;
      }

      v146 = -6729;
    }

    else
    {
LABEL_207:
      v146 = -6705;
    }

    v156 = v146;
    v147 = v105;
    goto LABEL_209;
  }

  v4 = *(a1 + 32);
  if (object == &_xpc_error_connection_invalid)
  {
    v11 = &g_session_list_4335;
    do
    {
      v12 = v11;
      v13 = *v11;
      v11 = (*v11 + 24);
      if (v13)
      {
        v14 = v13 == v4;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
    if (v13)
    {
      *v12 = *(v4 + 24);
      *(v4 + 24) = 0;
      os_release(v4);
      v4 = *(a1 + 32);
    }

    v15 = *(v4 + 32);
    if (v15)
    {
      xpc_connection_cancel(*(v4 + 32));
      xpc_release(v15);
      *(v4 + 32) = 0;
    }

    for (k = *(v4 + 40); k; k = *(v4 + 40))
    {
      *(v4 + 40) = k[3];
      v17 = *(g_dns_proxy_handlers + 8);
      if (v17)
      {
        v17(k[4]);
      }

      os_release(k);
    }

    for (m = *(v4 + 48); m; m = *(v4 + 48))
    {
      *(v4 + 48) = m[3];
      v19 = *(g_dns_service_registration_handlers + 8);
      if (v19)
      {
        v19(m[7]);
      }

      os_release(m);
    }

    v20 = g_current_discovery_proxy_owner;
    if (g_current_discovery_proxy_owner == v4)
    {
      v21 = *(g_discovery_proxy_handlers + 8);
      if (v21)
      {
        v21();
        v20 = g_current_discovery_proxy_owner;
      }

      if (v20)
      {
        os_release(v20);
        g_current_discovery_proxy_owner = 0;
      }
    }

    v22 = *(a1 + 32);

    os_release(v22);
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

void ___mrcs_session_handle_dns_service_registration_start_block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 32))
    {
      return;
    }

    v6 = *(a1 + 40);
    empty = xpc_dictionary_create_empty();
    if (!empty)
    {
      return;
    }

    v8 = empty;
    xpc_dictionary_set_int64(empty, "connection_error", a3);
    v9 = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(v9, "id", v6);
    xpc_dictionary_set_value(v9, "body", v8);
    xpc_release(v8);
    if (!v9)
    {
      return;
    }

    xpc_connection_send_message(*(v4 + 32), v9);
    v3 = v9;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v3 = *(a1 + 32);
  }

  os_release(v3);
}

void ___mrcs_session_handle_record_cache_local_record_inquiry_block_invoke(uint64_t a1, const char *a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v18 = 0;
  if (a3)
  {
    v8 = DNSRecordDataToStringEx(a3, a4, 16, 0, 0, 0, &v18);
    if (!v18)
    {
      v9 = v8;
      if (_mdns_server_log_s_once_4329 != -1)
      {
        dispatch_once(&_mdns_server_log_s_once_4329, &__block_literal_global_15_4330);
      }

      v10 = _mdns_server_log_s_log_4331;
      if (os_log_type_enabled(_mdns_server_log_s_log_4331, OS_LOG_TYPE_FAULT))
      {
        *buf = 136380931;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to create device-info TXT RDATA string -- record name: '%{private}s', error: %{mdns:err}ld", buf, 0x16u);
      }
    }
  }

  memset(buf, 0, 46);
  v11 = *(a5 + 1);
  if (v11 == 2)
  {
    v12 = 4;
    goto LABEL_11;
  }

  if (v11 == 30)
  {
    v12 = 8;
LABEL_11:
    v13 = inet_ntop(v11, (a5 + v12), buf, 0x2Eu);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:
  v14 = *(a1 + 32);
  v15 = v18;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "name", a2);
  if (v15)
  {
    xpc_dictionary_set_string(empty, "rdata", v15);
  }

  if (v13)
  {
    xpc_dictionary_set_string(empty, "source_address", v13);
  }

  optional_array = mdns_xpc_dictionary_get_optional_array(v14, "record_info");
  if (!optional_array)
  {
    optional_array = xpc_array_create_empty();
    xpc_dictionary_set_value(v14, "record_info", optional_array);
    if (optional_array)
    {
      xpc_release(optional_array);
    }
  }

  xpc_array_append_value(optional_array, empty);
  if (empty)
  {
    xpc_release(empty);
  }

  if (v18)
  {
    free(v18);
  }
}

char *_dnssec_obj_rr_dnskey_copy_rdata_rfc_description(uint64_t a1, int *a2)
{
  v6 = (rdata_parser_dnskey_get_public_key_size(*(a1 + 36)) + 2) / 3u;
  v7 = snprintf(0, 0, "%u %u %u  (Key Tag: %u)", __rev16(**(a1 + 24)), *(*(a1 + 24) + 2), *(*(a1 + 24) + 3), *(a1 + 80)) + 4 * v6;
  v8 = v7 + 1;
  if (v7 == -1 || (v9 = malloc_type_calloc(1uLL, v7 + 1, 0xA751582AuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v9;
    v10 = snprintf(v9, v8, "%u %u %u ", __rev16(**(a1 + 24)), *(*(a1 + 24) + 2), *(*(a1 + 24) + 3));
    v3 = -6700;
    if (v10 >= 1)
    {
      v11 = &v2[v8];
      v12 = *(a1 + 24);
      v13 = &v2[v10];
      public_key_size = rdata_parser_dnskey_get_public_key_size(*(a1 + 36));
      base_x_encode(0, (v12 + 4), public_key_size, v13);
      v15 = snprintf(&v13[4 * v6], v11 - &v13[4 * v6], " (Key Tag: %u)", *(a1 + 80));
      v16 = v15 > 0;
      if (v15 <= 0)
      {
        v3 = -6700;
      }

      else
      {
        v3 = 0;
      }

      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v16 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = v3;
  }

LABEL_9:
  if (!v16)
  {
    free(v2);
    return 0;
  }

  return v2;
}

void *dnssec_obj_rr_dnskey_create(unsigned __int8 *a1, __int16 a2, _BYTE *a3, unsigned int a4, int *a5)
{
  v21 = 0;
  if (a4 <= 4)
  {
    v11 = 0;
    v19 = 0;
    v14 = -6705;
    v21 = -6705;
    goto LABEL_15;
  }

  result = malloc_type_calloc(1uLL, 0x58uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = &_dnssec_obj_rr_dnskey_kind;
  result[1] = &_dnssec_obj_rr_dnskey_kind;
  do
  {
    v13 = v12[2];
    if (v13)
    {
      v13(v11);
    }

    v12 = *v12;
  }

  while (v12);
  ++*v11;
  dnssec_obj_rr_init_fields(v11, a1, 48, a2, a3, a4, 0, _dnssec_obj_rr_dnskey_copy_rdata_rfc_description, &v21);
  v14 = v21;
  if (v21)
  {
    v19 = 0;
    goto LABEL_15;
  }

  if (a3[3] != 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = a3[v15];
      if ((v15 & 1) == 0)
      {
        v17 <<= 8;
      }

      v16 += v17;
      ++v15;
    }

    while (a4 != v15);
    v18 = v16 + HIWORD(v16);
    goto LABEL_14;
  }

  v20 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
    {
LABEL_27:
      *buf = 136447234;
      v23 = "rdata_parser_dnskey_get_algorithm(rdata) != DNSKEY_ALGORITHM_RSAMD5";
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_dnskey.c";
      v28 = 1024;
      v29 = 364;
      v30 = 2048;
      v31 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
    }
  }

  else
  {
    v20 = mDNSLogCategory_DNSSEC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }
  }

  LOWORD(v18) = 0;
LABEL_14:
  v14 = 0;
  *(v11 + 80) = v18;
  ++*v11;
  v21 = 0;
  v19 = v11;
LABEL_15:
  if (a5)
  {
    *a5 = v14;
  }

  if (v11)
  {
    ref_count_obj_release(v11);
  }

  return v19;
}

uint64_t dnssec_obj_rr_dnskey_is_valid_for_dnssec(_BYTE *a1, int *a2)
{
  if (*a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = a1[3] - 5;
      v4 = (0xF2DuLL >> (a1[3] - 5)) & 1;
      if (v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = -88890;
      }

      v6 = v3 > 0xB;
      if (v3 <= 0xB)
      {
        v2 = v4;
      }

      else
      {
        v2 = 0;
      }

      if (v6)
      {
        v7 = -88890;
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      v7 = -88889;
    }
  }

  else
  {
    v2 = 0;
    v7 = -88888;
  }

  if (a2)
  {
    *a2 = v7;
  }

  return v2 & 1;
}

void *_mdns_xpc_dictionary_get_int64_limited(void *a1, const char *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  result = _mdns_xpc_dictionary_get_object(a1, a2, &_xpc_type_int64);
  if (!result)
  {
    v9 = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = xpc_int64_get_value(result);
  v9 = result >= a3 && result <= a4;
  if (!v9)
  {
    result = 0;
  }

  if (a5)
  {
LABEL_5:
    *a5 = v9;
  }

  return result;
}

xpc_object_t _mdns_xpc_dictionary_get_object(void *a1, const char *a2, const _xpc_type_s *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  v5 = value;
  if (value && xpc_get_type(value) != a3)
  {
    return 0;
  }

  return v5;
}

void *_mdns_xpc_object_get_uint64_limited(void *result, unint64_t a2, BOOL *a3)
{
  if (result)
  {
    v5 = result;
    if (xpc_get_type(result) == &_xpc_type_uint64)
    {
      result = xpc_uint64_get_value(v5);
      v6 = result <= a2;
      if (result > a2)
      {
        result = 0;
      }
    }

    else
    {
      v6 = 0;
      result = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

xpc_object_t mdns_xpc_dictionary_get_optional_array(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value && xpc_get_type(value) != &_xpc_type_array)
  {
    return 0;
  }

  return v3;
}

BOOL mdns_xpc_connection_is_entitled()
{
  v0 = xpc_connection_copy_entitlement_value();
  v1 = v0;
  if (v0)
  {
    xpc_release(v0);
  }

  return v1 == &_xpc_BOOL_true;
}

uint64_t mdns_xpc_string_recreate(xpc_object_t *a1, char *string)
{
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_6;
  }

  string_ptr = xpc_string_get_string_ptr(v4);
  if (!string_ptr || (result = strcmp(string_ptr, string), result))
  {
    if (*a1)
    {
      xpc_release(*a1);
      *a1 = 0;
    }

LABEL_6:
    result = xpc_string_create(string);
    *a1 = result;
  }

  return result;
}

BOOL _mdns_address_equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  if (v2 != *(a2 + 25))
  {
    return 0;
  }

  if (v2 == 30)
  {
    return *(a1 + 26) == *(a2 + 26) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return v2 == 2 && *(a1 + 26) == *(a2 + 26) && *(a1 + 28) == *(a2 + 28);
}

void *_mdns_address_copy_description(void *a1, int a2, char a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || mdns_string_builder_append_sockaddr_description(v7, (a1 + 3), a3))
  {
    v8 = 0;
  }

  else
  {
    v8 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v8;
}

uint64_t _mdns_address_new()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_address_kind;
    *(v0 + 16) = &_mdns_address_kind;
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
  }

  return v1;
}

uint64_t mdns_address_create_from_ip_address_string_and_port(char *a1, unsigned int a2)
{
  v20 = 0;
  v29 = 0uLL;
  v4 = *a1;
  if (v4 == 91)
  {
    result = strchr(a1 + 1, 93);
    if (!result)
    {
      return result;
    }

    v6 = result;
    if (_mdns_address_parse_ipv6(a1 + 1, result, &v29, &v20))
    {
      return 0;
    }

    if (*(v6 + 1) == 58)
    {
      v7 = (v6 + 2);
      if (v6 == -2)
      {
LABEL_22:
        v15 = v20;
        result = _mdns_address_new();
        if (result)
        {
          *(result + 24) = 7708;
          *(result + 26) = bswap32(a2) >> 16;
          *(result + 32) = v29;
          *(result + 48) = v15;
        }

        return result;
      }

      goto LABEL_12;
    }

    if (!*(v6 + 1))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!_mdns_address_parse_ipv6(a1, 0, &v29, &v20))
  {
    goto LABEL_22;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v8 = strchr(a1, 58);
  if (v8)
  {
    v9 = v8;
    v10 = v8 - a1;
    if ((v8 - a1) > 0x7F)
    {
      return 0;
    }

    __memcpy_chk();
    v21[v10] = 0;
    if (inet_pton(2, v21, &v29) != 1)
    {
      return 0;
    }

    v7 = (v9 + 1);
    if (v9 != -1)
    {
LABEL_12:
      v11 = *v7;
      if ((v11 - 48) <= 9)
      {
        v12 = 0;
        v13 = v7 + 1;
        while (1)
        {
          v12 = 10 * v12 + v11 - 48;
          if (HIWORD(v12))
          {
            break;
          }

          v14 = *v13++;
          v11 = v14;
          if ((v14 - 48) >= 0xA)
          {
            if (v11)
            {
              return 0;
            }

            if (!a2)
            {
              a2 = v12;
            }

            if (v4 == 91)
            {
              goto LABEL_22;
            }

            goto LABEL_25;
          }
        }
      }

      return 0;
    }
  }

  else if (inet_pton(2, a1, &v29) != 1)
  {
    return 0;
  }

LABEL_25:
  v16 = v29;
  v17 = BYTE1(v29);
  v18 = BYTE2(v29);
  v19 = BYTE3(v29);
  result = _mdns_address_new();
  if (result)
  {
    *(result + 24) = 528;
    *(result + 26) = bswap32(a2) >> 16;
    *(result + 28) = bswap32((v16 << 24) | (v17 << 16) | (v18 << 8) | v19);
  }

  return result;
}

uint64_t _mdns_address_parse_ipv6(unsigned __int8 *a1, unsigned __int8 *a2, _OWORD *a3, _DWORD *a4)
{
  v6 = a2;
  if (!a2)
  {
    v6 = a1 - 1;
      ;
    }
  }

  if (v6 <= a1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v8 = a1;
    while (*v8 != 37)
    {
      if (++v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v27 = 0u;
  v28 = 0u;
  v10 = v9 - a1;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  if (v9 - a1 > 0x7F)
  {
    return 4294960554;
  }

  __memcpy_chk();
  v21[v10] = 0;
  v20 = 0uLL;
  if (inet_pton(30, v21, &v20) != 1)
  {
    return 4294960554;
  }

  if (v8)
  {
    v11 = (v8 + 1);
    v12 = &v6[-v8 - 1];
    __dst[0] = 0;
    __dst[1] = 0;
    v19 = 0;
    if (v12 >= 0x11)
    {
      if (v12 == -1 || (v13 = malloc_type_malloc(&v6[-v8], 0x7D69791BuLL), (v14 = v13) == 0))
      {
        __break(1u);
      }
    }

    else
    {
      v13 = 0;
      v14 = __dst;
    }

    memcpy(v14, (v8 + 1), &v6[-v8 - 1]);
    *(v14 + v12) = 0;
    LODWORD(v12) = if_nametoindex(v14);
    if (v13)
    {
      free(v13);
    }

    if (!v12)
    {
      if (v11 >= v6)
      {
        return 4294960554;
      }

      v12 = 0;
      v16 = &v6[~v8];
      while (1)
      {
        v17 = *v11;
        if ((v17 - 48) > 9)
        {
          break;
        }

        v12 = (v17 - 48) + 10 * v12;
        if (HIDWORD(v12))
        {
          return 4294960554;
        }

        ++v11;
        if (!--v16)
        {
          v11 = v6;
          break;
        }
      }

      if (v11 != v6)
      {
        return 4294960554;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (a3)
  {
    *a3 = v20;
  }

  result = 0;
  if (a4)
  {
    *a4 = v12;
  }

  return result;
}

void _dnssec_obj_denial_of_existence_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 8 * v4);
      if (v5)
      {
        ref_count_obj_release(v5);
        *(*(a1 + 32) + 8 * v4) = 0;
        v3 = *(a1 + 40);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    free(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 44);
  v8 = *(a1 + 72);
  if (v7 == 1)
  {
    if (!*(a1 + 72))
    {
      return;
    }

    v12 = 0;
    v13 = a1 + 48;
    do
    {
      v14 = *(v13 + 8 * v12);
      if (v14)
      {
        ref_count_obj_release(v14);
        *(v13 + 8 * v12) = 0;
        v8 = *(a1 + 72);
      }

      ++v12;
    }

    while (v12 < v8);
  }

  else if (v7 == 2)
  {
    if (!*(a1 + 72))
    {
      return;
    }

    v9 = 0;
    v10 = a1 + 48;
    do
    {
      v11 = *(v10 + 8 * v9);
      if (v11)
      {
        ref_count_obj_release(v11);
        *(v10 + 8 * v9) = 0;
        v8 = *(a1 + 72);
      }

      ++v9;
    }

    while (v9 < v8);
  }

  if (v8)
  {
    v15 = 0;
    v16 = a1 + 104;
    v17 = a1 + 80;
    do
    {
      v18 = *(v16 + v15);
      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          v20 = *(*(v17 + 8 * v15) + 8 * i);
          if (v20)
          {
            ref_count_obj_release(v20);
            *(*(v17 + 8 * v15) + 8 * i) = 0;
            v18 = *(v16 + v15);
          }
        }
      }

      v21 = *(v17 + 8 * v15);
      if (v21)
      {
        free(v21);
        *(v17 + 8 * v15) = 0;
      }

      ++v15;
    }

    while (v15 < *(a1 + 72));
  }
}

uint64_t _dnssec_obj_denial_of_existence_compare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 2;
  }

  if (*(a1 + 44) != *(a2 + 44))
  {
    return 2;
  }

  v4 = *(a1 + 72);
  if (v4 != *(a2 + 72) || *(a1 + 40) != *(a2 + 40))
  {
    return 2;
  }

  if (*(a1 + 72))
  {
    v5 = (a1 + 104);
    v6 = (a2 + 104);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      if (v7 != v9)
      {
        return 2;
      }
    }

    while (--v4);
  }

  if (ref_count_obj_compare(*(a1 + 24), *(a2 + 24), 1))
  {
    return 2;
  }

  if (*(a1 + 40))
  {
    v11 = 0;
    while (!ref_count_obj_compare(*(*(a1 + 32) + 8 * v11), *(*(a2 + 32) + 8 * v11), 1))
    {
      if (++v11 >= *(a1 + 40))
      {
        goto LABEL_16;
      }
    }

    return 2;
  }

LABEL_16:
  if (*(a1 + 72))
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 44);
      if (ref_count_obj_compare(*(a1 + 48 + 8 * v12), *(a2 + 48 + 8 * v12), 1))
      {
        return 2;
      }

      ++v12;
      v14 = *(a1 + 72);
      if (v12 >= v14)
      {
        if (!*(a1 + 72))
        {
          return 0;
        }

        v15 = 0;
        v16 = a1 + 104;
        v17 = a2 + 80;
        while (!*(v16 + v15))
        {
LABEL_27:
          result = 0;
          if (++v15 >= v14)
          {
            return result;
          }
        }

        v18 = 0;
        while (!ref_count_obj_compare(*(*(a1 + 80 + 8 * v15) + 8 * v18), *(*(v17 + 8 * v15) + 8 * v18), 1))
        {
          if (++v18 >= *(v16 + v15))
          {
            LODWORD(v14) = *(a1 + 72);
            goto LABEL_27;
          }
        }

        return 2;
      }
    }
  }

  return 0;
}

void *dnssec_obj_denial_of_existence_create(unsigned __int8 *a1, int a2, unsigned int a3, unsigned __int8 *a4, int a5, _DWORD *a6, uint64_t *a7, unsigned int a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, int *a15)
{
  if (a6)
  {
    v19 = a7;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = a8;
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = a10;
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = a12;
  }

  else
  {
    v22 = 0;
  }

  v247 = v21;
  if (v21)
  {
    v23 = a9;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = a11;
  }

  else
  {
    v24 = 0;
  }

  if (!(v23 | v24))
  {
    a13 = 0;
  }

  v250 = a13;
  if (a13)
  {
    v25 = (v23 | v24) == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = a14;
  }

  v258 = v26;
  v27 = malloc_type_calloc(1uLL, 0x70uLL, 0xB7BBD98FuLL);
  if (!v27)
  {
    goto LABEL_426;
  }

  v28 = v27;
  v29 = &_dnssec_obj_denial_of_existence_kind;
  v27[1] = &_dnssec_obj_denial_of_existence_kind;
  do
  {
    v30 = v29[2];
    if (v30)
    {
      v30(v28);
    }

    v29 = *v29;
  }

  while (v29);
  ++*v28;
  if (!(v22 | v247))
  {
    v86 = 0;
    v87 = -6705;
    goto LABEL_416;
  }

  if (!v22)
  {
    if (!v247)
    {
      v86 = 0;
      *(v28 + 11) = 0;
      *(v28 + 4) = 0;
      v87 = -6705;
      v88 = v28;
      *(v28 + 72) = 0;
      goto LABEL_375;
    }

    v242 = v20;
    v244 = v19;
    v246 = a6;
    LODWORD(v263) = 0;
    v49 = a5 == a3 || a5 == 5;
    *(v28 + 11) = 1;
    *(v28 + 4) = 2;
    *(v28 + 107) = 0;
    *(v28 + 72) = 0;
    v50 = dnssec_obj_domain_name_create_with_labels(a1, 0, &v263);
    if (v263)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v53 = 0;
      v39 = v250;
      goto LABEL_209;
    }

    v51 = 0;
    while (1)
    {
      does_not_exist = dnssec_obj_rr_nsec_asserts_name_exists_data_does_not_exist(*(v23 + 8 * v51), v50, a2, a3);
      v53 = *(v23 + 8 * v51);
      if (does_not_exist)
      {
        ++*v53;
        v28[*(v28 + 72) + 6] = v53;
        v89 = *(v28 + 72);
        ++*v28[v89 + 6];
        *(v28 + 72) = v89 + 1;
        *(v28 + 4) = 3;
        v90 = *(v53 + 24);
        v91 = *(v53 + 36);
        if (dnssec_obj_rr_nsec_covers_dns_type(v90, v91, 0x2Bu))
        {
          v92 = 0;
          v39 = v250;
        }

        else
        {
          v39 = v250;
          if (dnssec_obj_rr_nsec_covers_dns_type(v90, v91, 6u))
          {
            v92 = 0;
          }

          else
          {
            v92 = dnssec_obj_rr_nsec_covers_dns_type(v90, v91, 2u);
          }
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(v28 + 107) = v92;
        goto LABEL_208;
      }

      if (dnssec_obj_rr_nsec_asserts_name_does_not_exist(*(v23 + 8 * v51), v50, a2))
      {
        break;
      }

      if (v247 == ++v51)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        goto LABEL_203;
      }
    }

    v93 = *(v23 + 8 * v51);
    ++*v93;
    *buf = 0;
    v94 = v50[2];
    v256 = v93;
    if (*v94)
    {
      v95 = dnssec_obj_domain_name_copy_parent_domain(v94, 1uLL, buf);
      v96 = v95;
      v254 = v49;
      if (!*buf)
      {
        v97 = v93[2];
        v98 = v93[10];
        v99 = dnssec_obj_domain_name_copy_closest_common_ancestor(*(v97 + 16), *(v95 + 2), buf);
        if (!*buf)
        {
          v100 = dnssec_obj_domain_name_copy_closest_common_ancestor(*(v98 + 16), *(v96 + 2), buf);
          v101 = v100;
          if (*buf)
          {
            LODWORD(v263) = *buf;
            ref_count_obj_release(v96);
            v57 = 0;
            if (v101)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v102 = *(v99 + 3);
            v103 = *(v100 + 3);
            if (v102 <= v103)
            {
              v104 = v100;
            }

            else
            {
              v104 = v99;
            }

            LOWORD(v259) = 10753;
            BYTE2(v259) = 0;
            v57 = dnssec_obj_domain_name_create_concatenation_with_subdomain(&v259, *(v104 + 2), buf);
            LODWORD(v263) = *buf;
            ref_count_obj_release(v96);
            ref_count_obj_release(v104);
            if (v102 > v103)
            {
              v99 = 0;
LABEL_131:
              ref_count_obj_release(v101);
            }
          }

          v96 = v99;
          v105 = a3;
          v106 = v247;
          if (!v99)
          {
LABEL_134:
            if (!v263)
            {
              v107 = 0;
              while (1)
              {
                v108 = dnssec_obj_rr_nsec_asserts_name_does_not_exist(*(v23 + 8 * v107), v57, a2);
                v56 = *(v23 + 8 * v107);
                if (v108)
                {
                  break;
                }

                if (dnssec_obj_rr_nsec_asserts_name_exists_data_does_not_exist(*(v23 + 8 * v107), v57, a2, v105))
                {
                  v55 = *(v23 + 8 * v107);
                  ++*v55;
                  v151 = v28 + 6;
                  v54 = v256;
                  v28[*(v28 + 72) + 6] = v256;
                  v152 = *(v28 + 72);
                  ++*v28[v152 + 6];
                  v153 = v152 + 1;
                  *(v28 + 72) = v153;
                  if (v55 != v256)
                  {
                    v151[v153] = v55;
                    v154 = *(v28 + 72);
                    ++*v151[v154];
                    *(v28 + 72) = v154 + 1;
                  }

                  v53 = 0;
                  v56 = 0;
                  v110 = 6;
                  goto LABEL_202;
                }

                if (v106 == ++v107)
                {
                  if (v254)
                  {
                    v53 = 0;
                    v55 = 0;
                    v56 = 0;
                    v54 = v256;
                    v28[*(v28 + 72) + 6] = v256;
                    v109 = *(v28 + 72);
                    ++*v28[v109 + 6];
                    *(v28 + 72) = v109 + 1;
                    v110 = 5;
                    goto LABEL_202;
                  }

                  v53 = 0;
                  v55 = 0;
                  v56 = 0;
                  v39 = v250;
                  v54 = v256;
LABEL_208:
                  LODWORD(v263) = 0;
LABEL_209:
                  dnssec_objs_sort((v28 + 6), *(v28 + 72));
                  v87 = v263;
                  if (v55)
                  {
                    ref_count_obj_release(v55);
                  }

                  if (v56)
                  {
                    ref_count_obj_release(v56);
                  }

                  if (v57)
                  {
                    ref_count_obj_release(v57);
                  }

                  if (v54)
                  {
                    ref_count_obj_release(v54);
                  }

                  if (v53)
                  {
                    ref_count_obj_release(v53);
                  }

                  if (v50)
                  {
                    ref_count_obj_release(v50);
                  }

                  v157 = v244;
                  v156 = v246;
                  v158 = v242;
                  if (!v87)
                  {
                    goto LABEL_317;
                  }

                  v159 = mDNSLogCategory_DNSSEC;
                  if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_DNSSEC != mDNSLogCategory_State)
                  {
                    v159 = mDNSLogCategory_DNSSEC_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                    {
                      v160 = a1;
                      if (a1)
                      {
                        LODWORD(v161) = a1;
                        v162 = *a1;
                        if (*a1)
                        {
                          v161 = a1;
                          do
                          {
                            v163 = &v161[v162];
                            v164 = v163[1];
                            v161 = v163 + 1;
                            v162 = v164;
                          }

                          while (v164);
                        }

                        v160 = v161 - a1 + 1;
                      }

                      goto LABEL_413;
                    }

LABEL_415:
                    v86 = 0;
LABEL_416:
                    v88 = v28;
                    goto LABEL_375;
                  }

                  if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_415;
                  }

                  v160 = a1;
                  if (a1)
                  {
                    LODWORD(v234) = a1;
                    v235 = *a1;
                    if (*a1)
                    {
                      v234 = a1;
                      do
                      {
                        v236 = &v234[v235];
                        v237 = v236[1];
                        v234 = v236 + 1;
                        v235 = v237;
                      }

                      while (v237);
                    }

                    v160 = v234 - a1 + 1;
                  }

LABEL_413:
                  *buf = 141559299;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 1040;
                  *&buf[14] = v160;
                  *&buf[18] = 2101;
                  *&buf[20] = a1;
                  *&buf[28] = 1024;
                  *&buf[30] = a3;
                  *v261 = 1024;
                  *&v261[2] = v247;
                  LOWORD(v262[0]) = 2082;
                  *(v262 + 2) = "Unknown DNSSEC error.";
                  v229 = "Failed to find out a provable denial of existence NSEC set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %u, NSEC count: %u, error: %{public}s";
LABEL_414:
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, v229, buf, 0x32u);
                  goto LABEL_415;
                }
              }

              ++*v56;
              v147 = v28 + 6;
              v54 = v256;
              v28[*(v28 + 72) + 6] = v256;
              v148 = *(v28 + 72);
              ++*v28[v148 + 6];
              v149 = v148 + 1;
              *(v28 + 72) = v149;
              if (v56 != v256)
              {
                v147[v149] = v56;
                v150 = *(v28 + 72);
                ++*v147[v150];
                *(v28 + 72) = v150 + 1;
              }

              v53 = 0;
              v55 = 0;
              v110 = 4;
LABEL_202:
              *(v28 + 4) = v110;
LABEL_203:
              v39 = v250;
              goto LABEL_208;
            }

            v55 = 0;
            v56 = 0;
LABEL_420:
            v53 = 0;
            v39 = v250;
            v54 = v256;
            goto LABEL_209;
          }

LABEL_133:
          ref_count_obj_release(v96);
          goto LABEL_134;
        }

        v57 = 0;
        LODWORD(v263) = *buf;
        v101 = v96;
        goto LABEL_131;
      }

      LODWORD(v263) = *buf;
      if (v95)
      {
        v57 = 0;
        v105 = a3;
        v106 = v247;
        goto LABEL_133;
      }
    }

    else
    {
      LODWORD(v263) = -6736;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_420;
  }

  v259 = 0;
  *(v28 + 11) = 2;
  *(v28 + 4) = 2;
  *(v28 + 107) = 0;
  *(v28 + 72) = 0;
  v243 = v19;
  v245 = a6;
  v241 = v20;
  if (v22 != 1)
  {
    v31 = 0;
    v32 = v24 + 1;
    v33 = *v24;
    v34 = v22 - 1;
    v35 = 2;
    do
    {
      if (v33 != *v32)
      {
        v36 = *(v33 + 24);
        v37 = *(*v32 + 24);
        if (*v36 != *v37)
        {
          break;
        }

        if (__rev16(*(v36 + 1)) != bswap32(*(v37 + 1)) >> 16)
        {
          break;
        }

        v38 = v36[4];
        if (v38 != v37[4] || memcmp(v36 + 5, v37 + 5, v38))
        {
          break;
        }
      }

      v31 = v35 >= v22;
      ++v32;
      ++v35;
      --v34;
    }

    while (v34);
    if (!v31)
    {
      goto LABEL_381;
    }
  }

  if ((a4 == 0) == (a5 == a3))
  {
LABEL_381:
    v60 = 0;
    v252 = 0;
    v255 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v22 = 0;
    v41 = 0;
    v239 = 0;
    v39 = v250;
    goto LABEL_296;
  }

  v39 = v250;
  if (__rev16(*(*(*v24 + 24) + 2)) >= 0x65)
  {
    if (v22 <= 3)
    {
      *(v28 + 4) = 1;
      v58 = v28 + 6;
      do
      {
        v59 = *v24++;
        *v58++ = v59;
        ++*v59;
        ++*(v28 + 72);
        --v22;
      }

      while (v22);
      v60 = 0;
      v252 = 0;
      v255 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v41 = 0;
      v239 = 0;
      goto LABEL_295;
    }

    v60 = 0;
    v252 = 0;
    v255 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v22 = 0;
    v41 = 0;
    v239 = 0;
    goto LABEL_296;
  }

  v239 = dnssec_obj_domain_name_create_with_labels(a1, 0, &v259);
  if (v259)
  {
    v60 = 0;
    v252 = 0;
    v255 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v22 = 0;
    v41 = 0;
    goto LABEL_296;
  }

  if (a4)
  {
    v40 = dnssec_obj_domain_name_create_with_labels(a4, 0, &v259);
    v41 = v40;
    if (v259)
    {
      goto LABEL_392;
    }

    if (v40)
    {
      v41 = dnssec_obj_domain_name_create_with_labels(a4, 1, &v259);
      if (!v259)
      {
        if (!dnssec_obj_domain_name_is_sub_domain_of(v239[2], v41[2]))
        {
          goto LABEL_402;
        }

        v42 = v239[2];
        v43 = *v42;
        if (*v42)
        {
          v44 = 0;
          v45 = v239[2];
          do
          {
            ++v44;
            v46 = v45 + v43;
            v47 = *(v46 + 1);
            v45 = v46 + 1;
            v43 = v47;
          }

          while (v47);
        }

        else
        {
          v44 = 0;
        }

        v131 = v41[2];
        v132 = *v131;
        if (*v131)
        {
          v133 = 0;
          do
          {
            ++v133;
            v134 = &v131[v132];
            v135 = v134[1];
            v131 = v134 + 1;
            v132 = v135;
          }

          while (v135);
        }

        else
        {
          v133 = 0;
        }

        if (v44 <= v133)
        {
LABEL_402:
          v60 = 0;
          v252 = 0;
          v255 = 0;
LABEL_190:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v22 = 0;
          goto LABEL_295;
        }

        v255 = dnssec_obj_domain_name_copy_parent_domain(v42, v44 + ~v133, &v259);
        if (!v259)
        {
          v136 = 0;
          while (1)
          {
            v137 = v24[v136];
            v138 = *(v137 + 24);
            if (*v138 == 1 && v138[1] <= 1u && (dnssec_obj_rr_nsec3_asserts_name_does_not_exist(v137, v255, a2) & 1) != 0)
            {
              break;
            }

            if (v22 == ++v136)
            {
              v139 = 0;
LABEL_189:
              v252 = v139;
              v60 = 0;
              goto LABEL_190;
            }
          }

          v139 = v24[v136];
          ++*v139;
          if (a5 != a3)
          {
            goto LABEL_189;
          }

          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v22 = 0;
          v28[*(v28 + 72) + 6] = v139;
          v155 = *(v28 + 72);
          ++*v28[v155 + 6];
          *(v28 + 72) = v155 + 1;
          *(v28 + 4) = 5;
          goto LABEL_294;
        }

        v60 = 0;
        v252 = 0;
        goto LABEL_406;
      }

LABEL_392:
      v60 = 0;
      v252 = 0;
      v255 = 0;
LABEL_406:
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v22 = 0;
      goto LABEL_296;
    }
  }

  for (i = 0; i != v22; ++i)
  {
    v66 = v24[i];
    v67 = *(v66 + 24);
    if (*v67 == 1 && v67[1] <= 1u && dnssec_obj_rr_nsec3_asserts_name_exists_data_does_not_exist(v66, v239, a2, a3))
    {
      v22 = v24[i];
      ++*v22;
      v28[*(v28 + 72) + 6] = v22;
      v140 = *(v28 + 72);
      ++*v28[v140 + 6];
      *(v28 + 72) = v140 + 1;
      *(v28 + 4) = 3;
      v141 = *(v22 + 24);
      v142 = v141 + *(v141 + 4) + 5 + *(v141 + *(v141 + 4) + 5);
      v143 = (v142 + 1);
      v144 = v142 + 1 + (*(v22 + 36) - (*(v141 + 4) + 5 + *(v141 + *(v141 + 4) + 5) + 1));
      v145 = v142 + 2;
      if (v145 < v144)
      {
        v165 = 0;
        v166 = v143;
        do
        {
          v167 = v166[1];
          v168 = &v166[v167 + 2];
          if (v168 > v144)
          {
            break;
          }

          if (*v166)
          {
            v169 = 0;
          }

          else
          {
            v169 = v167 >= 6;
          }

          if (v169)
          {
            v165 |= (v166[7] & 0x10) >> 4;
          }

          v166 += v167 + 2;
        }

        while (v168 + 1 < v144);
        LOBYTE(v146) = 0;
        if ((v165 & 1) == 0 && v145 < v144)
        {
          v170 = 0;
          v171 = v143;
          do
          {
            v172 = v171[1];
            v173 = &v171[v172 + 2];
            if (v173 > v144)
            {
              break;
            }

            if (*v171)
            {
              v174 = 1;
            }

            else
            {
              v174 = v172 == 0;
            }

            if (!v174)
            {
              v170 |= (v171[2] & 2) >> 1;
            }

            v171 += v172 + 2;
          }

          while (v173 + 1 < v144);
          LOBYTE(v146) = 0;
          if ((v170 & 1) == 0 && v145 < v144)
          {
            v146 = 0;
            do
            {
              v175 = v143[1];
              v176 = &v143[v175 + 2];
              if (v176 > v144)
              {
                break;
              }

              if (*v143)
              {
                v177 = 1;
              }

              else
              {
                v177 = v175 == 0;
              }

              if (!v177)
              {
                v146 |= (v143[2] & 0x20) >> 5;
              }

              v143 += v175 + 2;
            }

            while (v176 + 1 < v144);
          }
        }
      }

      else
      {
        LOBYTE(v146) = 0;
      }

      v60 = 0;
      v139 = 0;
      v61 = 0;
      v255 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v41 = 0;
      *(v28 + 107) = v146 & 1;
      goto LABEL_294;
    }
  }

  v248 = 0;
  v68 = 0;
  v60 = 0;
  v255 = 0;
  v238 = 0;
  LODWORD(v263) = 0;
  parent = a1;
  v70 = a2;
  while (2)
  {
    if (!*parent)
    {
      goto LABEL_142;
    }

    v251 = v60;
    v253 = v68;
    v71 = dnssec_obj_domain_name_create_with_labels(parent, 0, &v263);
    v72 = v24;
    v73 = v22;
    do
    {
      v74 = *v72;
      if (*v72)
      {
        v75 = *(v74 + 24);
        if (*v75 == 1 && v75[1] <= 1u)
        {
          if (dnssec_obj_rr_nsec3_asserts_name_does_not_exist(*v72, v71, v70))
          {
            ++*v74;
            if (v255)
            {
              ref_count_obj_release(v255);
            }

            ++*v71;
            if (v253)
            {
              ref_count_obj_release(v253);
            }

            v81 = 0;
            ++*v74;
            v248 = 1;
            v82 = v74;
            v255 = v71;
            goto LABEL_108;
          }

          if (*(v74 + 34) == v70)
          {
            nsec3_hashed_name = dnssec_obj_domain_name_get_nsec3_hashed_name(v71, v74);
            if (nsec3_hashed_name)
            {
              v77 = nsec3_hashed_name;
              v78 = ref_count_obj_compare(*(v74 + 16), nsec3_hashed_name, 1);
              v79 = ref_count_obj_compare(*(v74 + 80), v77, 1);
              v70 = a2;
              if (!v78 || !v79)
              {
                ++*v74;
                if (v248)
                {
                  ++*v71;
                  ++*v74;
                  v251 = v74;
                  v238 = v71;
                }

                v81 = v248 ^ 1;
                v82 = v253;
                goto LABEL_108;
              }
            }

            else
            {
              v80 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                v70 = a2;
                if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v80 = mDNSLogCategory_DNSSEC_redacted;
                v70 = a2;
                if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_88;
                }
              }

              *buf = 136447234;
              *&buf[4] = "hashed_name != NULL";
              *&buf[12] = 2082;
              *&buf[14] = "";
              *&buf[22] = 2082;
              *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
              *&buf[32] = 1024;
              *v261 = 281;
              *&v261[4] = 2048;
              v262[0] = 0;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
            }
          }
        }
      }

LABEL_88:
      ++v72;
      --v73;
    }

    while (v73);
    if (v255)
    {
      ref_count_obj_release(v255);
    }

    v81 = 0;
    v248 = 0;
    v82 = 0;
    v255 = 0;
    v83 = 0;
    v68 = 0;
    v74 = v253;
    if (v253)
    {
LABEL_108:
      ref_count_obj_release(v74);
      v83 = v81;
      v68 = v82;
    }

    v39 = v250;
    if (v71)
    {
      ref_count_obj_release(v71);
    }

    v60 = v251;
    if (v251)
    {
      v84 = v68 == 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = !v84;
    v70 = a2;
    if (((v85 | v83) & 1) == 0)
    {
      parent = domain_name_labels_get_parent(parent, 1uLL);
      continue;
    }

    break;
  }

  if (v83)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v22 = 0;
    v41 = 0;
    v259 = 0;
    v252 = v68;
    goto LABEL_274;
  }

LABEL_142:
  v252 = v68;
  if (!v60 || !v68)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v22 = 0;
    v41 = 0;
    v259 = 0;
LABEL_274:
    v61 = v238;
    goto LABEL_296;
  }

  v111 = *(v60 + 24);
  v112 = v111 + *(v111 + 4) + 5 + *(v111 + *(v111 + 4) + 5);
  v113 = (v112 + 1);
  v114 = v112 + 1 + (*(v60 + 36) - (*(v111 + 4) + 5 + *(v111 + *(v111 + 4) + 5) + 1));
  v115 = v112 + 2;
  if (v115 < v114)
  {
    v116 = 0;
    v117 = v113;
    do
    {
      v118 = v117[1];
      v119 = &v117[v118 + 2];
      if (v119 > v114)
      {
        break;
      }

      if (*v117)
      {
        v120 = 0;
      }

      else
      {
        v120 = v118 >= 5;
      }

      if (v120)
      {
        v116 |= v117[6];
      }

      v117 += v118 + 2;
    }

    while (v119 + 1 < v114);
    if (v116)
    {
      goto LABEL_417;
    }

    if (v115 < v114)
    {
      v121 = 0;
      v122 = v113;
      do
      {
        v123 = v122[1];
        v124 = &v122[v123 + 2];
        if (v124 > v114)
        {
          break;
        }

        if (*v122)
        {
          v125 = 1;
        }

        else
        {
          v125 = v123 == 0;
        }

        if (!v125)
        {
          v121 |= (v122[2] & 0x20) >> 5;
        }

        v122 += v123 + 2;
      }

      while (v124 + 1 < v114);
      v126 = v121 ^ 1;
      if (v115 >= v114)
      {
        v127 = 0;
      }

      else
      {
        v127 = 0;
        do
        {
          v128 = v113[1];
          v129 = &v113[v128 + 2];
          if (v129 > v114)
          {
            break;
          }

          if (*v113)
          {
            v130 = 1;
          }

          else
          {
            v130 = v128 == 0;
          }

          if (!v130)
          {
            v127 |= (v113[2] & 2) >> 1;
          }

          v113 += v128 + 2;
        }

        while (v129 + 1 < v114);
      }

      if (((v126 | v127) & 1) == 0)
      {
LABEL_417:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v22 = 0;
        v41 = 0;
        v259 = -90040;
        goto LABEL_274;
      }
    }
  }

  buf[2] = 0;
  *buf = 10753;
  v64 = dnssec_obj_domain_name_create_concatenation_with_subdomain(buf, *(v238 + 2), &v259);
  if (v259)
  {
LABEL_273:
    v62 = 0;
    v63 = 0;
    v22 = 0;
    v41 = 0;
    goto LABEL_274;
  }

  while (2)
  {
    v178 = *(*v24 + 24);
    if (*v178 == 1 && v178[1] <= 1u)
    {
      v179 = dnssec_obj_rr_nsec3_asserts_name_does_not_exist(*v24, v64, v70);
      v63 = *v24;
      if (v179)
      {
        ++*v63;
        v180 = v28 + 6;
        v28[*(v28 + 72) + 6] = v60;
        v181 = *(v28 + 72);
        ++*v28[v181 + 6];
        v182 = v181 + 1;
        *(v28 + 72) = v182;
        v139 = v68;
        if (v68 != v60)
        {
          v180[v182] = v68;
          v183 = *(v28 + 72);
          ++*v180[v183];
          v182 = v183 + 1;
          *(v28 + 72) = v182;
        }

        v61 = v238;
        if (v63 != v60 && v63 != v68)
        {
          v180[v182] = v63;
          v184 = *(v28 + 72);
          ++*v180[v184];
          *(v28 + 72) = v184 + 1;
        }

        if (a3 == 43 && (*(v68[3] + 1) & 1) != 0)
        {
          v62 = 0;
          *(v28 + 4) = 3;
          *(v28 + 107) = 1;
          goto LABEL_293;
        }

        v62 = 0;
        v185 = 4;
      }

      else
      {
        if (!dnssec_obj_rr_nsec3_asserts_name_exists_data_does_not_exist(*v24, v64, v70, a3))
        {
          goto LABEL_269;
        }

        v62 = *v24;
        ++**v24;
        v190 = v28 + 6;
        v28[*(v28 + 72) + 6] = v60;
        v191 = *(v28 + 72);
        ++*v28[v191 + 6];
        v192 = v191 + 1;
        *(v28 + 72) = v192;
        v139 = v68;
        if (v68 != v60)
        {
          v190[v192] = v68;
          v193 = *(v28 + 72);
          ++*v190[v193];
          v192 = v193 + 1;
          *(v28 + 72) = v192;
        }

        v61 = v238;
        if (v62 != v60 && v62 != v68)
        {
          v190[v192] = v62;
          v194 = *(v28 + 72);
          ++*v190[v194];
          *(v28 + 72) = v194 + 1;
        }

        v63 = 0;
        v185 = 6;
      }

      *(v28 + 4) = v185;
      goto LABEL_293;
    }

LABEL_269:
    ++v24;
    if (--v22)
    {
      continue;
    }

    break;
  }

  if (a3 != 43 || (*(v68[3] + 1) & 1) == 0)
  {
    v259 = 0;
    goto LABEL_273;
  }

  v186 = v28 + 6;
  v28[*(v28 + 72) + 6] = v60;
  v187 = *(v28 + 72);
  ++*v28[v187 + 6];
  v188 = v187 + 1;
  *(v28 + 72) = v188;
  v139 = v68;
  if (v68 != v60)
  {
    v186[v188] = v68;
    v189 = *(v28 + 72);
    ++*v186[v189];
    *(v28 + 72) = v189 + 1;
  }

  v62 = 0;
  v63 = 0;
  *(v28 + 4) = 3;
  *(v28 + 107) = 1;
  v61 = v238;
LABEL_293:
  v22 = 0;
  v41 = 0;
LABEL_294:
  v252 = v139;
LABEL_295:
  v259 = 0;
LABEL_296:
  dnssec_objs_sort((v28 + 6), *(v28 + 72));
  v87 = v259;
  if (v62)
  {
    ref_count_obj_release(v62);
  }

  if (v63)
  {
    ref_count_obj_release(v63);
  }

  if (v64)
  {
    ref_count_obj_release(v64);
  }

  if (v252)
  {
    ref_count_obj_release(v252);
  }

  if (v60)
  {
    ref_count_obj_release(v60);
  }

  if (v255)
  {
    ref_count_obj_release(v255);
  }

  if (v61)
  {
    ref_count_obj_release(v61);
  }

  if (v22)
  {
    ref_count_obj_release(v22);
  }

  if (v41)
  {
    ref_count_obj_release(v41);
  }

  if (v239)
  {
    ref_count_obj_release(v239);
  }

  v157 = v243;
  v156 = v245;
  v158 = v241;
  if (v87)
  {
    v159 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_415;
      }

      v224 = a1;
      if (a1)
      {
        LODWORD(v230) = a1;
        v231 = *a1;
        if (*a1)
        {
          v230 = a1;
          do
          {
            v232 = &v230[v231];
            v233 = v232[1];
            v230 = v232 + 1;
            v231 = v233;
          }

          while (v233);
        }

        v224 = v230 - a1 + 1;
      }
    }

    else
    {
      v159 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_415;
      }

      v224 = a1;
      if (a1)
      {
        LODWORD(v225) = a1;
        v226 = *a1;
        if (*a1)
        {
          v225 = a1;
          do
          {
            v227 = &v225[v226];
            v228 = v227[1];
            v225 = v227 + 1;
            v226 = v228;
          }

          while (v228);
        }

        v224 = v225 - a1 + 1;
      }
    }

    *buf = 141559299;
    *&buf[4] = 1752392040;
    *&buf[12] = 1040;
    *&buf[14] = v224;
    *&buf[18] = 2101;
    *&buf[20] = a1;
    *&buf[28] = 1024;
    *&buf[30] = a3;
    *v261 = 1024;
    *&v261[2] = v247;
    LOWORD(v262[0]) = 2082;
    *(v262 + 2) = "Unknown DNSSEC error.";
    v229 = "Failed to find out a provable denial of existence NSEC3 set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %u, NSEC3 count: %u, error: %{public}s";
    goto LABEL_414;
  }

LABEL_317:
  if (!v258)
  {
    if (!v156)
    {
      goto LABEL_374;
    }

    goto LABEL_364;
  }

  v195 = 0;
  v259 = 0;
  memset(buf, 0, 24);
  v263 = 0;
  v264 = 0;
  v196 = v28 + 6;
  LODWORD(v197) = *(v28 + 72);
  v198 = v197;
  while (2)
  {
    if (!v198)
    {
      goto LABEL_328;
    }

    v199 = 0;
    v200 = *(v39 + 8 * v195);
    while (2)
    {
      if (*(v28 + 11) != 1)
      {
        if (!dnssec_obj_rr_rrsig_covers_rr(v200, v196[v199], &v259))
        {
          goto LABEL_326;
        }

        goto LABEL_325;
      }

      if (dnssec_obj_rr_rrsig_covers_rr(v200, v196[v199], &v259))
      {
LABEL_325:
        ++*(&v263 + v199);
      }

LABEL_326:
      ++v199;
      v197 = *(v28 + 72);
      if (v199 < v197)
      {
        continue;
      }

      break;
    }

    v198 = *(v28 + 72);
LABEL_328:
    if (++v195 != v258)
    {
      continue;
    }

    break;
  }

  if (v197)
  {
    v201 = 0;
    do
    {
      v202 = *(&v263 + v201);
      if (v202)
      {
        v203 = malloc_type_calloc(v202, 8uLL, 0x8BA5FA36uLL);
        if (!v203)
        {
          goto LABEL_426;
        }

        *&buf[8 * v201] = v203;
        LODWORD(v197) = *(v28 + 72);
      }

      ++v201;
    }

    while (v201 < v197);
  }

  v204 = 0;
  v205 = v28 + 13;
  LODWORD(v206) = v197;
  while (2)
  {
    if (!v197)
    {
      goto LABEL_346;
    }

    v207 = 0;
    v208 = *(v39 + 8 * v204);
    while (2)
    {
      v209 = &v205[v207];
      if (*(v28 + 11) == 1)
      {
        if (!dnssec_obj_rr_rrsig_covers_rr(v208, *(v209 - 7), &v259))
        {
          goto LABEL_344;
        }
      }

      else if (!dnssec_obj_rr_rrsig_covers_rr(v208, *(v209 - 7), &v259))
      {
        goto LABEL_344;
      }

      v210 = *&buf[8 * v207];
      if (v210)
      {
        *(v210 + 8 * *(v205 + v207)) = v208;
        ++*v208;
        ++*(v205 + v207);
      }

LABEL_344:
      ++v207;
      v206 = *(v28 + 72);
      if (v207 < v206)
      {
        continue;
      }

      break;
    }

    LODWORD(v197) = *(v28 + 72);
LABEL_346:
    if (++v204 != v258)
    {
      continue;
    }

    break;
  }

  if (v206)
  {
    v211 = v28 + 10;
    v206 = v206;
    v212 = buf;
    do
    {
      *v211++ = *v212;
      *v212 = 0;
      v212 += 8;
      --v206;
    }

    while (v206);
  }

  v213 = 0;
  v259 = 0;
  do
  {
    v214 = *&buf[v213];
    if (v214)
    {
      free(v214);
      *&buf[v213] = 0;
    }

    v213 += 8;
  }

  while (v213 != 24);
  v87 = v259;
  if (v259)
  {
    v86 = 0;
  }

  else
  {
    v86 = v28;
  }

  if (v259)
  {
    v88 = v28;
  }

  else
  {
    v88 = 0;
  }

  if (v156 && !v259)
  {
LABEL_364:
    v28[3] = v156;
    ++*v156;
    if (v158)
    {
      LODWORD(v215) = 0;
      *buf = 0;
      v216 = v157;
      v217 = v158;
      do
      {
        v218 = *v216++;
        v215 = (v215 + dnssec_obj_rr_rrsig_covers_rr(v218, v156, buf));
        --v217;
      }

      while (v217);
      if (v215)
      {
        v219 = malloc_type_calloc(8uLL, v215, 0xE04D81B6uLL);
        if (v219)
        {
          v220 = v219;
          do
          {
            v221 = *v157;
            if (dnssec_obj_rr_rrsig_covers_rr(*v157, v156, buf))
            {
              v222 = *(v28 + 40);
              v220[v222] = v221;
              ++*v221;
              *(v28 + 40) = v222 + 1;
            }

            ++v157;
            --v158;
          }

          while (v158);
          v28[4] = v220;
          goto LABEL_374;
        }

LABEL_426:
        __break(1u);
      }
    }

LABEL_374:
    v87 = 0;
    v88 = 0;
    v86 = v28;
  }

LABEL_375:
  if (a15)
  {
    *a15 = v87;
  }

  if (v88)
  {
    ref_count_obj_release(v88);
  }

  return v86;
}

id _unicast_assist_cache_log()
{
  if (_unicast_assist_cache_log_s_once != -1)
  {
    dispatch_once(&_unicast_assist_cache_log_s_once, &__block_literal_global_299);
  }

  v1 = _unicast_assist_cache_log_s_log;

  return v1;
}

void ___unicast_assist_cache_log_block_invoke(id a1)
{
  _unicast_assist_cache_log_s_log = os_log_create("com.apple.mDNSResponder", "ua_cache");

  _objc_release_x1();
}

uint64_t _unicast_assist_data_to_addr(void *a1, int *a2)
{
  v3 = a1;
  if ([v3 length] == 4)
  {
    v4 = 4;
LABEL_5:
    memcpy(a2 + 1, [v3 bytes], objc_msgSend(v3, "length"));
    v5 = 0;
    *a2 = v4;
    goto LABEL_9;
  }

  if ([v3 length] == 16)
  {
    v4 = 6;
    goto LABEL_5;
  }

  v6 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = [v3 length];
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unicast assist _unicate_assist_data_to_addr bad addr size %lu", &v8, 0xCu);
  }

  v5 = 4294960553;
LABEL_9:

  return v5;
}

void *_unicast_assist_records_for_interface(uint64_t a1, int a2, int a3, int a4)
{
  v7 = s_interface_head_0;
  if (s_interface_head_0)
  {
    while (a1 && *(v7 + 24) != a1 || *(v7 + 32) != a2 || a3 != -1 && *(v7 + 36) != a3)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    return (v7 + 8);
  }

  else
  {
LABEL_8:
    result = 0;
    if (a1 && a4)
    {
      result = malloc_type_calloc(1uLL, 0x28uLL, 0x18E6492AuLL);
      if (result)
      {
        v9 = result;
        result[1] = 0;
        *(v9 + 16) = ++result;
        *(v9 + 24) = a1;
        *(v9 + 32) = a2;
        *(v9 + 36) = a3;
        *v9 = s_interface_head_0;
        s_interface_head_0 = v9;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t _unicast_assist_hash_for_interface(int a1, int a2, _DWORD *a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
LABEL_5:
    v6 = 4294960569;
LABEL_6:
    v18 = v6;
    goto LABEL_7;
  }

  while (!*(v3 + 3768) || *(v3 + 3720) != a1)
  {
    v3 = *(v3 + 3680);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (!strcmp((v3 + 3606), "lo0"))
  {
    v6 = 4294960591;
    goto LABEL_6;
  }

  if (_unicast_assist_hash_for_interface_onceToken != -1)
  {
    dispatch_once(&_unicast_assist_hash_for_interface_onceToken, &__block_literal_global_316);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = ___unicast_assist_hash_for_interface_block_invoke_319;
  v9[3] = &unk_1001516F8;
  v10 = a2;
  v9[4] = &v15;
  v9[5] = &v11;
  v9[6] = v3;
  _unicast_assist_nwi_locked(v9);
  v8 = v16;
  v6 = *(v16 + 6);
  if (a3 && !v6)
  {
    *a3 = *(v12 + 6);
    v6 = *(v8 + 6);
  }

LABEL_7:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

void sub_1000CB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _unicast_assist_addr_update_ex(_BYTE *a1, int a2, int a3, int a4, int *a5, uint64_t a6, int a7, int a8, char a9, void ***a10)
{
  v11 = a6;
  v15 = _unicast_assist_records_for_interface(a6, a7, *a5, a6 != 0);
  if (!v15)
  {
    return 4294960569;
  }

  v16 = v15;
  v17 = 0;
  v18 = v15;
  v56 = v11;
  do
  {
    v19 = v17;
    v17 = *v18;
    if (!*v18)
    {
      v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x9F403447uLL);
      if (v22)
      {
        v17 = v22;
        v22[1] = 0;
        v23 = *a5;
        *(v22 + 8) = a5[4];
        *(v22 + 1) = v23;
        goto LABEL_10;
      }

      goto LABEL_90;
    }

    v20 = mDNSSameAddress(v17 + 4, a5);
    v18 = v17;
  }

  while (!v20);
  if (*v16 == v17)
  {
    v44 = **v16;
    *v16 = v44;
    if (!v44)
    {
      v16[1] = v16;
    }
  }

  else
  {
    v21 = **v19;
    *v19 = v21;
    if (!v21)
    {
      v16[1] = v19;
    }
  }

LABEL_10:
  *v17 = 0;
  *v16[1] = v17;
  v16[1] = v17;
  v24 = dword_10016D258;
  v25 = v17[1];
  if (!v25)
  {
    goto LABEL_37;
  }

  v57 = a8;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v17[1];
  while (2)
  {
    v31 = *v30;
    if (v26 || *(v30 + 2) != a2)
    {
      if (v27 == 18)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0;
      }

      if (!v29)
      {
        v29 = v33;
        ++v27;
      }

      v32 = v30;
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *(v30 + 3) = v24;
      v32 = 0;
      if (v25 == v30)
      {
        v25 = *v25;
        v17[1] = v25;
      }

      else
      {
        *v28 = **v28;
      }

      v26 = v30;
      if (!v30)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (v29)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v32)
    {
      v28 = v32;
    }

    v30 = v31;
    if (v31)
    {
      continue;
    }

    break;
  }

  if (!v29)
  {
    goto LABEL_35;
  }

LABEL_31:
  for (i = *v29; *v29; i = *v29)
  {
    *v29 = *i;
    v35 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(i + 2);
      *buf = 141558787;
      v62 = 1752392040;
      v63 = 1045;
      *v64 = 20;
      *&v64[4] = 2101;
      *&v64[6] = v17 + 2;
      *&v64[14] = 1024;
      *&v64[16] = v36;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "unicast assist qhash flushed (overflow) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P qhash %x", buf, 0x22u);
    }

    free(i);
  }

LABEL_35:
  a8 = v57;
  if (v26)
  {
    v37 = 0;
    goto LABEL_39;
  }

LABEL_37:
  v38 = malloc_type_calloc(1uLL, 0x18uLL, 0xCCD0F637uLL);
  if (!v38)
  {
LABEL_90:
    __break(1u);
  }

  v26 = v38;
  *(v38 + 2) = a2;
  *(v38 + 3) = v24;
  v37 = 1;
LABEL_39:
  *v26 = v17[1];
  v17[1] = v26;
  if (a3 == 12)
  {
    *(v26 + 20) = 1;
  }

  if (a8)
  {
    if ((*(v26 + 19) & 1) == 0 && *(v26 + 18) == 1)
    {
      v39 = 12;
      if (*(v26 + 16))
      {
        v39 = 13;
      }

      ++*off_100153B70[v39];
    }

    *(v26 + 19) = 1;
  }

  else
  {
    if ((*(v26 + 18) & 1) == 0 && *(v26 + 19) == 1)
    {
      ++sUAPresence_Count_qhashes_found_multicast;
    }

    *(v26 + 18) = 1;
  }

  v40 = *(v26 + 16);
  *(v26 + 16) = 0;
  *(v26 + 17) = (a4 & 0x10) != 0;
  if (((v37 | v40) & 1) != 0 || *(v26 + 18) == 1)
  {
    v41 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v45 = "update";
      if (v37)
      {
        v45 = "add";
      }

      if (a9)
      {
        v46 = "refresh";
      }

      else
      {
        v46 = v45;
      }

      v58 = a8;
      if (a8)
      {
        v47 = "network";
      }

      else
      {
        v47 = "presence";
      }

      if (v40)
      {
        v48 = " (pending)";
      }

      else
      {
        v48 = "";
      }

      if (a1)
      {
        v50 = a1;
        while (1)
        {
          if (!v50 || (v51 = *v50, v51 > 0x3F))
          {
LABEL_83:
            v49 = v46;
            v52 = 257;
            goto LABEL_85;
          }

          if (!*v50)
          {
            break;
          }

          v50 += v51 + 1;
          if (v50 - a1 >= 256)
          {
            goto LABEL_83;
          }
        }

        v49 = v46;
        v52 = (v50 - a1 + 1);
LABEL_85:
        v55 = v52;
      }

      else
      {
        v49 = v46;
        v55 = 0;
      }

      v53 = DNSTypeName(a3);
      *buf = 136318467;
      v54 = "*";
      v62 = v49;
      if ((a4 & 0x10) == 0)
      {
        v54 = "";
      }

      v63 = 2080;
      *v64 = v47;
      *&v64[8] = 2080;
      *&v64[10] = v48;
      *&v64[18] = 2160;
      v65 = 1752392040;
      v66 = 1045;
      v67 = 20;
      v68 = 2101;
      v69 = a5;
      v70 = 1024;
      v71 = v56;
      v72 = 2160;
      v73 = 1752392040;
      v74 = 1040;
      v75 = v55;
      v76 = 2101;
      v77 = a1;
      v78 = 2082;
      v79 = v53;
      v80 = 1024;
      v81 = a2;
      v82 = 1024;
      v83 = a4;
      v84 = 2080;
      v85 = v54;
      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "unicast assist record %s %s%s - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %2.2u %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s qhash %x rectype 0x%X%s", buf, 0x7Au);
      a8 = v58;
    }

    v42 = v37 ^ 1;
  }

  else
  {
    v42 = 1;
  }

  if (a10)
  {
    *a10 = v26;
  }

  if (((v42 | a8) & 1) != 0 || *(v26 + 19) != 1)
  {
    return 0;
  }

  result = 0;
  ++sUAPresence_Count_qhashes_found_multicast;
  return result;
}

uint64_t ___unicast_assist_hash_for_interface_block_invoke_319(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = nwi_state_get_ifstate();
  if (result && (*(a1 + 56), (result = nwi_ifstate_get_signature()) != 0))
  {
    v4 = -2128831035;
    v5 = 40;
  }

  else
  {
    v4 = -6727;
    v5 = 32;
  }

  *(*(*(a1 + v5) + 8) + 24) = v4;
  return result;
}

void _unicast_assist_nwi_locked(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_unicast_assist_nwi_locked_s_lock);
  v1[2](v1);

  os_unfair_lock_unlock(&_unicast_assist_nwi_locked_s_lock);
}

void ___unicast_assist_hash_for_interface_block_invoke(id a1)
{
  notify_key = nwi_state_get_notify_key();
  v2 = _unicast_assist_internal_queue();
  v3 = notify_register_dispatch(notify_key, &_unicast_assist_hash_for_interface_s_nwi_notify_token, v2, &__block_literal_global_318);

  if (_unicast_assist_hash_for_interface_s_nwi_notify_token == -1)
  {
    v4 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to register for NWI state notifications (status %u)", v5, 8u);
    }
  }

  else
  {

    _unicast_assist_nwi_state_update();
  }
}

id _unicast_assist_internal_queue()
{
  if (_unicast_assist_internal_queue_s_once != -1)
  {
    dispatch_once(&_unicast_assist_internal_queue_s_once, &__block_literal_global_312);
  }

  v1 = _unicast_assist_internal_queue_s_queue;

  return v1;
}

void _unicast_assist_nwi_state_update()
{
  v0 = nwi_state_copy();
  if (!v0)
  {
    v1 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to copy NWI state", buf, 2u);
    }
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = ___unicast_assist_nwi_state_update_block_invoke;
  v11[3] = &unk_100151720;
  v11[4] = buf;
  v11[5] = v0;
  _unicast_assist_nwi_locked(v11);
  if (*(v13 + 3))
  {
    nwi_state_release();
    *(v13 + 3) = 0;
  }

  if (s_presence)
  {
    v9 = mDNS_TimeNow(mDNSStorage, v2, v3, v4, v5, v6, v7, v8);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [s_presence setNetworkUpdateTime:v10];
  }

  _Block_object_dispose(buf, 8);
}

void sub_1000CBBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___unicast_assist_nwi_state_update_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = g_nwi_state_4557;
  g_nwi_state_4557 = *(result + 40);
  return result;
}

void ___unicast_assist_internal_queue_block_invoke(id a1)
{
  _unicast_assist_internal_queue_s_queue = dispatch_queue_create("com.apple.mDNSResponder.unicast-assist.interface-monitor", 0);

  _objc_release_x1();
}

void __unicast_assist_init_block_invoke(id a1)
{
  out_token = -1;
  v1 = _unicast_assist_internal_queue();
  notify_register_dispatch("com.apple.mrcs.prefs-changed.ahared-assist-cache", &out_token, v1, &__block_literal_global_270);

  _unicast_assist_presence_update_shared_cache_enable();
}

void _unicast_assist_presence_update_shared_cache_enable()
{
  v0 = s_shared_cache_enabled;
  os_unfair_lock_lock(&g_public_lock);
  TypeID = CFBooleanGetTypeID();
  plist = _mrcs_prefs_get_plist();
  if (!plist)
  {
    v6 = -6729;
LABEL_8:
    v7 = OS_LOG_TYPE_ERROR;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(plist, @"shared-assist-cache.enable");
  if (Value)
  {
    v4 = Value;
    if (CFGetTypeID(Value) == TypeID)
    {
      CFRetain(v4);
      CFRelease(v4);
      v5 = v4 == kCFBooleanTrue;
      os_unfair_lock_unlock(&g_public_lock);
      goto LABEL_13;
    }

    v6 = -6756;
    goto LABEL_8;
  }

  v6 = -6727;
  v7 = OS_LOG_TYPE_DEBUG;
LABEL_9:
  v5 = kCFBooleanTrue == 0;
  os_unfair_lock_unlock(&g_public_lock);
  if (_mrcs_prefs_log_s_once != -1)
  {
    dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
  }

  v8 = _mrcs_prefs_log_s_log;
  if (os_log_type_enabled(_mrcs_prefs_log_s_log, v7))
  {
    v10 = 138543618;
    *v11 = @"shared-assist-cache.enable";
    *&v11[8] = 2048;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, v7, "Failed to copy value -- key: %{public}@, error: %{mdns:err}ld", &v10, 0x16u);
  }

LABEL_13:
  s_shared_cache_enabled = v5;
  v9 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109376;
    *v11 = v0;
    *&v11[4] = 1024;
    *&v11[6] = s_shared_cache_enabled;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unicast assist mrcs_prefs_monitor_shared_assist_cache_changes s_shared_cache_enabled (%{BOOL}d) -> (%{BOOL}d)", &v10, 0xEu);
  }
}

void unicast_assist_addr_enumerate(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v8 = 0;
    if (a2)
    {
      for (i = 0; ; ++i)
      {
        if (_unicast_assist_hash_for_interface(a2, dword_10010D258[i], &v8))
        {
          if (i)
          {
            goto LABEL_14;
          }
        }

        else if (_unicast_assist_addr_enumerate_interface_hash(a1, a2, v8, v5) | i)
        {
          goto LABEL_14;
        }
      }
    }

    for (j = s_interface_head_0; j; j = *j)
    {
      if (!_unicast_assist_hash_for_interface(*(j + 24), *(j + 36), &v8) && v8 == *(j + 32) && _unicast_assist_addr_enumerate_interface_hash(a1, *(j + 24), v8, v5))
      {
        break;
      }
    }
  }

LABEL_14:
}

uint64_t _unicast_assist_addr_enumerate_interface_hash(int a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = s_interface_head_0;
  if (!s_interface_head_0)
  {
    goto LABEL_6;
  }

  while (a2 && *(v8 + 24) != a2 || *(v8 + 32) != a3)
  {
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v11 = *(v8 + 8);
  if (v11)
  {
    v12 = 0;
    v13 = dword_10016D258;
    while (1)
    {
      v14 = v11[1];
      if (v14)
      {
        break;
      }

LABEL_15:
      v9 = 0;
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    while (1)
    {
      if (*(v14 + 2) == a1)
      {
        if ((*(v7 + 2))(v7, v11 + 2, a2, *(v14 + 17)))
        {
          *(v14 + 3) = v13;
          *(v14 + 16) = 1;
          if (++v12 >= 20)
          {
            break;
          }
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v15 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16[0] = 67109120;
      v16[1] = a1;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "unicast assist max limit reached - %x", v16, 8u);
    }

    v9 = 4294960545;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

void _unicast_assist_cache_free_addr(void *a1)
{
  for (i = a1[1]; i; i = a1[1])
  {
    a1[1] = *i;
    free(i);
  }

  free(a1);
}

void _unicast_assist_cache_free_interface(uint64_t **a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    do
    {
      v4 = *v2;
      *v3 = *v2;
      if (!v4)
      {
        a1[2] = v3;
      }

      _unicast_assist_cache_free_addr(v2);
      v2 = *v3;
    }

    while (*v3);
  }

  free(a1);
}

uint64_t _unicast_assist_network_ready_for_presence()
{
  if (!byte_10016D290)
  {
    return 0;
  }

  v0 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    return 0;
  }

  while (1)
  {
    if (*(v0 + 3606) == 101 && *(v0 + 3607) == 110)
    {
      if (*(v0 + 3696))
      {
        if (*(v0 + 3768))
        {
          if (*(v0 + 3671))
          {
            v2 = 0;
            if (!_unicast_assist_hash_for_interface(*(v0 + 3552), *(v0 + 3560), &v2))
            {
              break;
            }
          }
        }
      }
    }

    v0 = *(v0 + 3680);
    if (!v0)
    {
      return 0;
    }
  }

  return 1;
}

void ___unicast_assist_should_activate_presence_block_invoke(id a1)
{
  if (_os_feature_enabled_impl() && objc_opt_class())
  {
    if (_os_feature_enabled_impl())
    {
      _unicast_assist_should_activate_presence_should_activate = 1;
    }
  }
}

uint64_t unicast_assist_addr_add(_BYTE *a1, int a2, int a3, int a4, int *a5, uint64_t a6)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v13 = 0;
    result = _unicast_assist_hash_for_interface(a6, *a5, &v13);
    if (!result)
    {
      return _unicast_assist_addr_update_ex(a1, a2, a3, a4, a5, a6, v13, 1, 0, 0);
    }
  }

  return result;
}

uint64_t unicast_assist_addr_refresh(_BYTE *a1, int a2, int a3, int a4, int *a5, uint64_t a6)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v13 = 0;
    result = _unicast_assist_hash_for_interface(a6, *a5, &v13);
    if (!result)
    {
      return _unicast_assist_addr_update_ex(a1, a2, a3, a4, a5, a6, v13, 1, 1, 0);
    }
  }

  return result;
}

void _mdns_resolver_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    nw_release(v2);
    a1[6] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    free(v3);
    a1[8] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    dispatch_release(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    _Block_release(v6);
    a1[10] = 0;
  }
}

void *_mdns_resolver_copy_description(uint64_t a1, int a2, char a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v22[3] = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v24 + 6) = appended;
      if (appended)
      {
        goto LABEL_5;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "%s", *(*(a1 + 16) + 48));
    *(v24 + 6) = v9;
    if (v9)
    {
      goto LABEL_5;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      name = nw_interface_get_name(v12);
      v14 = name ? name : "???";
      index = nw_interface_get_index(*(a1 + 48));
      v16 = mdns_string_builder_append_formatted(v7, " using interface %s (%u)", v14, index);
      *(v24 + 6) = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v17 = mdns_string_builder_append_formatted(v7, " with servers [");
    *(v24 + 6) = v17;
    if (v17)
    {
      goto LABEL_5;
    }

    v18 = *(a1 + 56);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = ___mdns_resolver_copy_description_block_invoke;
    v20[3] = &unk_100151D90;
    v20[4] = &v23;
    v20[5] = v22;
    v20[6] = v7;
    v21 = a3;
    mdns_cfarray_enumerate(v18, v20);
    if (*(v24 + 6) || (v19 = mdns_string_builder_append_formatted(v7, "]"), (*(v24 + 6) = v19) != 0))
    {
LABEL_5:
      v10 = 0;
    }

    else
    {
      v10 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v23, 8);
  return v10;
}

BOOL ___mdns_resolver_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void _mdns_server_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    nw_release(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    nw_release(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      do
      {
        v6 = *v5;
        _pqw_qname_item_free(v5);
        v5 = v6;
      }

      while (v6);
    }

    free(v4);
    a1[8] = 0;
  }
}

void _pqw_qname_item_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void *_mdns_server_copy_description(uint64_t a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1))
    {
      if (nw_endpoint_get_type(*(a1 + 48)) == nw_endpoint_type_address)
      {
        address = nw_endpoint_get_address(*(a1 + 48));
        if (*(a1 + 111))
        {
          v9 = a3 | 2;
        }

        else
        {
          v9 = a3;
        }

        if (!mdns_string_builder_append_sockaddr_description(v7, address, v9))
        {
LABEL_19:
          v10 = mdns_string_builder_copy_string(v7);
          goto LABEL_20;
        }
      }

      else
      {
        memset(v16, 0, sizeof(v16));
        hostname = nw_endpoint_get_hostname(*(a1 + 48));
        v12 = "«MISSING HOSTNAME»";
        if (hostname)
        {
          v12 = hostname;
          if (a3)
          {
            v13 = DNSMessagePrintObfuscatedString(v16, hostname);
            v12 = "«REDACTED HOSTNAME»";
            if (v13 >= 0)
            {
              v12 = v16;
            }
          }
        }

        if (!mdns_string_builder_append_formatted(v7, "%s", v12))
        {
          if (*(a1 + 111))
          {
            goto LABEL_19;
          }

          port = nw_endpoint_get_port(*(a1 + 48));
          if (!mdns_string_builder_append_formatted(v7, ":%u", port))
          {
            goto LABEL_19;
          }
        }
      }
    }

    v10 = 0;
LABEL_20:
    os_release(v7);
    return v10;
  }

  return 0;
}

void _mdns_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }

  *(a1 + 48) = 0;
}

void *_mdns_session_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

uint64_t _mdns_https_resolver_get_effective_connection_hostname(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    return *(a1 + 144);
  }

  return result;
}

nw_parameters_t _mdns_https_resolver_get_stream_params(void *a1, int *a2)
{
  v3 = a1[23];
  if (!v3)
  {
    if (a1[18])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      v17 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = ___mdns_https_resolver_create_stream_params_block_invoke;
      v13[3] = &unk_100151CC0;
      v13[4] = &v14;
      v13[5] = a1;
      tcp = _mdns_nw_parameters_create_tcp(v13);
      if (!tcp)
      {
        _Block_object_dispose(&v14, 8);
        v4 = -6729;
        goto LABEL_22;
      }

      v3 = tcp;
      v8 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
      if ((v8 & 1) == 0)
      {
        nw_release(v3);
        v4 = -6700;
LABEL_22:
        v3 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v3 = _mdns_nw_parameters_create_tcp(_nw_parameters_configure_protocol_default_configuration);
      if (!v3)
      {
        v4 = -6729;
        goto LABEL_19;
      }
    }

    v12 = 0;
    v9 = a1[18];
    v10 = a1[20];
    if (!v10)
    {
      v10 = "";
    }

    asprintf(&v12, "https://%s%s", a1[18], v10);
    nw_parameters_set_url();
    if (v12)
    {
      free(v12);
    }

    v11 = a1[6];
    if (v11)
    {
      nw_parameters_require_interface(v3, v11);
    }

    if (__isPlatformVersionAtLeast(2, 19, 0, 0))
    {
      nw_parameters_set_is_encrypted_dns_resolver_connection();
    }

    v4 = 0;
LABEL_19:
    a1[23] = v3;
    if (!a2)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v4 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v4;
  }

  return v3;
}

void ___mdns_https_resolver_create_stream_params_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  if (v3)
  {
    v4 = v3;
    sec_protocol_options_set_tls_server_name(v3, *(*(a1 + 40) + 144));
    sec_protocol_options_set_peer_authentication_required(v4, 1);
    sec_protocol_options_add_tls_application_protocol(v4, "h2");
    sec_release(v4);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

nw_parameters_t _mdns_nw_parameters_create_tcp(void *a1)
{
  secure_tcp = nw_parameters_create_secure_tcp(a1, _nw_parameters_configure_protocol_default_configuration);
  if (secure_tcp)
  {
    nw_parameters_set_indefinite();
    nw_parameters_set_no_wake_from_sleep();
  }

  return secure_tcp;
}

uint64_t _mdns_https_resolver_update_odoh_config_async(void *a1, char *__s1, char *a3, const void *a4, size_t a5, void *a6)
{
  v10 = a3;
  if (__s1)
  {
    v12 = strdup(__s1);
    if (!v12)
    {
      goto LABEL_14;
    }

    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = strdup(v10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
LABEL_13:
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___mdns_https_resolver_update_odoh_config_async_block_invoke;
    block[3] = &__block_descriptor_tmp_43_4685;
    block[4] = v12;
    block[5] = a1;
    block[6] = v10;
    block[7] = v6;
    block[8] = a6;
    dispatch_async(_mdns_resolver_queue_s_queue, block);
    return 0;
  }

  v12 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = 0;
  if (!a4 || !a5 || (v6 = xpc_data_create(a4, a5)) != 0)
  {
    if (a6)
    {
      nw_retain(a6);
    }

    os_retain(a1);
    if (_mdns_resolver_queue_s_once == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v12)
  {
    free(v12);
  }

  if (v10)
  {
    free(v10);
  }

  return 4294960567;
}

void ___mdns_https_resolver_update_odoh_config_async_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = *(v3 + 144);
    if (v4)
    {
      free(v4);
      *(a1[5] + 144) = 0;
      v2 = a1[4];
      v3 = a1[5];
    }

    *(v3 + 144) = v2;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[5];
    v7 = *(v6 + 160);
    if (v7)
    {
      free(v7);
      *(a1[5] + 160) = 0;
      v6 = a1[5];
      v5 = a1[6];
    }

    *(v6 + 160) = v5;
  }

  v8 = a1[5];
  v10 = a1[7];
  v9 = a1[8];
  v11 = v8[23];
  if (v11)
  {
    nw_release(v11);
    v8[23] = 0;
  }

  v12 = v8[21];
  if (v12 != v10)
  {
    if (v12)
    {
      xpc_release(v12);
    }

    v8[21] = v10;
    if (v10)
    {
      xpc_retain(v10);
    }
  }

  v13 = v8[22];
  if (v13 != v9)
  {
    if (v13)
    {
      nw_release(v13);
    }

    v8[22] = v9;
    if (v9)
    {
      nw_retain(v9);
    }
  }

  v14 = a1[7];
  if (v14)
  {
    xpc_release(v14);
  }

  v15 = a1[8];
  if (v15)
  {
    nw_release(v15);
  }

  v16 = a1[5];

  os_release(v16);
}

uint64_t _mdns_https_resolver_set_identity(uint64_t a1, UInt8 *bytes, CFIndex length)
{
  v7 = 0;
  if (bytes)
  {
    v4 = _mdns_copy_sec_identity(bytes, length, &v7);
    result = v7;
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    CFRelease(v6);
  }

  result = 0;
  *(a1 + 192) = v4;
  return result;
}

CFTypeRef _mdns_copy_sec_identity(UInt8 *bytes, CFIndex length, int *a3)
{
  result = 0;
  v4 = CFDataCreate(0, bytes, length);
  if (!v4)
  {
LABEL_21:
    v10 = 0;
    v12 = -6729;
    if (!a3)
    {
      return v10;
    }

    goto LABEL_14;
  }

  v5 = v4;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    CFRelease(v5);
    goto LABEL_21;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, kSecReturnRef, kCFBooleanTrue);
  CFDictionarySetValue(v7, kSecValuePersistentRef, v5);
  CFDictionarySetValue(v7, kSecClass, kSecClassIdentity);
  CFDictionarySetValue(v7, kSecUseSystemKeychain, kCFBooleanTrue);
  v8 = SecItemCopyMatching(v7, &result);
  if (v8)
  {
    v12 = v8;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v15 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v5;
      v21 = 2048;
      v22 = v12;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to find identity item -- reference: %@, error: %{mdns:err}ld", buf, 0x16u);
    }

    v10 = 0;
  }

  else if (result && (v9 = CFGetTypeID(result), v9 == SecIdentityGetTypeID()))
  {
    v10 = result;
    result = 0;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v11 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Found identity with reference %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v14 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
    {
      if (result)
      {
        v17 = CFGetTypeID(result);
        v16 = CFCopyTypeIDDescription(v17);
      }

      else
      {
        v16 = @"none";
      }

      *buf = 138412546;
      v20 = v5;
      v21 = 2114;
      v22 = v16;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unexpected identity item type -- reference: %@, type: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    v12 = -6756;
  }

  CFRelease(v5);
  CFRelease(v7);
  if (result)
  {
    CFRelease(result);
  }

  if (a3)
  {
LABEL_14:
    *a3 = v12;
  }

  return v10;
}

void _mdns_https_resolver_finalize(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    free(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    free(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    free(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    xpc_release(v5);
    a1[21] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    nw_release(v6);
    a1[22] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    nw_release(v7);
    a1[23] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    CFRelease(v8);
    a1[24] = 0;
  }
}

uint64_t _mdns_tls_resolver_get_effective_connection_hostname(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    return *(a1 + 144);
  }

  return result;
}

nw_parameters_t _mdns_tls_resolver_get_stream_params(void *a1, int *a2)
{
  v3 = a1[20];
  if (!v3)
  {
    if (a1[18] || a1[21])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = ___mdns_tls_resolver_create_stream_params_block_invoke;
      v11[3] = &unk_100151BD0;
      v11[4] = &v12;
      v11[5] = a1;
      tcp = _mdns_nw_parameters_create_tcp(v11);
      if (!tcp)
      {
        _Block_object_dispose(&v12, 8);
        v4 = -6729;
LABEL_23:
        v3 = 0;
        goto LABEL_15;
      }

      v3 = tcp;
      v8 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
      if ((v8 & 1) == 0)
      {
        v4 = -6777;
LABEL_22:
        nw_release(v3);
        goto LABEL_23;
      }
    }

    else
    {
      v3 = _mdns_nw_parameters_create_tcp(_nw_parameters_configure_protocol_default_configuration);
      if (!v3)
      {
        v4 = -6729;
        goto LABEL_15;
      }
    }

    v9 = a1[6];
    if (v9)
    {
      nw_parameters_require_interface(v3, v9);
    }

    v10 = _mdns_add_dns_over_bytestream_framer(v3);
    if (!v10)
    {
      if (__isPlatformVersionAtLeast(2, 19, 0, 0))
      {
        nw_parameters_set_is_encrypted_dns_resolver_connection();
      }

      v4 = 0;
LABEL_15:
      a1[20] = v3;
      if (!a2)
      {
        return v3;
      }

      goto LABEL_3;
    }

    v4 = v10;
    goto LABEL_22;
  }

  v4 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v4;
  }

  return v3;
}

void ___mdns_tls_resolver_create_stream_params_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 40);
    v6 = *(v5 + 144);
    if (v6)
    {
      sec_protocol_options_set_tls_server_name(v3, v6);
      sec_protocol_options_set_peer_authentication_required(v4, 1);
      v5 = *(a1 + 40);
    }

    v7 = *(v5 + 168);
    if (v7)
    {
      sec_protocol_options_set_local_identity(v4, v7);
      v5 = *(a1 + 40);
    }

    verify_block[0] = _NSConcreteStackBlock;
    verify_block[1] = 0x40000000;
    verify_block[2] = ___mdns_tls_resolver_create_stream_params_block_invoke_2;
    verify_block[3] = &__block_descriptor_tmp_38_4718;
    verify_block[4] = v5;
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    sec_protocol_options_set_verify_block(v4, verify_block, _mdns_resolver_queue_s_queue);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    sec_release(v4);
  }
}

uint64_t _mdns_add_dns_over_bytestream_framer(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  if (!v1)
  {
    return 4294960567;
  }

  v2 = v1;
  if (_mdns_copy_dns_over_bytestream_framer_s_once != -1)
  {
    dispatch_once(&_mdns_copy_dns_over_bytestream_framer_s_once, &__block_literal_global_11_4702);
  }

  if (!_mdns_copy_dns_over_bytestream_framer_s_framer_def || (nw_retain(_mdns_copy_dns_over_bytestream_framer_s_framer_def), (v3 = _mdns_copy_dns_over_bytestream_framer_s_framer_def) == 0))
  {
    v5 = 4294960567;
    options = v2;
LABEL_9:
    nw_release(options);
    return v5;
  }

  options = nw_framer_create_options(_mdns_copy_dns_over_bytestream_framer_s_framer_def);
  if (options)
  {
    nw_protocol_stack_prepend_application_protocol(v2, options);
    v5 = 0;
  }

  else
  {
    v5 = 4294960567;
  }

  nw_release(v2);
  nw_release(v3);
  if (options)
  {
    goto LABEL_9;
  }

  return v5;
}

int ___mdns_create_dns_over_bytestream_framer_block_invoke(id a1, nw_framer *a2)
{
  nw_framer_set_input_handler(a2, &__block_literal_global_15_4708);
  nw_framer_set_output_handler(a2, &__block_literal_global_23);
  return 1;
}

void _mdns_normal_resolver_kind_block_invoke_3(id a1, nw_framer *a2, nw_protocol_metadata *a3, unint64_t a4, BOOL a5)
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

unint64_t _mdns_normal_resolver_kind_block_invoke(id a1, nw_framer *a2)
{
  do
  {
    *temp_buffer = 0;
    if (!nw_framer_parse_input(a2, 2uLL, 2uLL, temp_buffer, &__block_literal_global_19_4714))
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

void ___mdns_tls_resolver_create_stream_params_block_invoke_2(uint64_t a1, int a2, sec_trust_t trust, uint64_t a4)
{
  v6 = sec_trust_copy_ref(trust);
  Allowed = SecTrustSetNetworkFetchAllowed(v6, 0);
  if (Allowed)
  {
    v9 = Allowed;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v10 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v11 = *(*(a1 + 32) + 144);
    *buf = 136315394;
    v17 = v11;
    v18 = 2048;
    v19 = v9;
    v12 = "Failed to disable network fetch for trust evaluation -- provider name: %s, error: %{mdns:err}ld";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    goto LABEL_15;
  }

  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  result[0] = _NSConcreteStackBlock;
  result[1] = 0x40000000;
  result[2] = ___mdns_tls_resolver_create_stream_params_block_invoke_34;
  result[3] = &unk_100151B88;
  result[4] = a4;
  v8 = SecTrustEvaluateAsyncWithError(v6, _mdns_resolver_queue_s_queue, result);
  if (!v8)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_6;
  }

  v13 = v8;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
  }

  v10 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v14 = *(*(a1 + 32) + 144);
    *buf = 136315394;
    v17 = v14;
    v18 = 2048;
    v19 = v13;
    v12 = "Failed to start aynchronous trust evaluation -- provider name: %s, error: %{mdns:err}ld";
    goto LABEL_18;
  }

LABEL_15:
  (*(a4 + 16))(a4, 0);
  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }
}

uint64_t ___mdns_tls_resolver_create_stream_params_block_invoke_34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53_4688);
    }

    v6 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Aynchronous trust evaluation failed: %@", &v8, 0xCu);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t _mdns_tls_resolver_set_identity(uint64_t a1, UInt8 *bytes, CFIndex length)
{
  v8 = 0;
  if (bytes)
  {
    v4 = _mdns_copy_sec_identity(bytes, length, &v8);
    result = v8;
    if (v8)
    {
      return result;
    }

    v6 = sec_identity_create(v4);
    if (v4)
    {
      CFRelease(v4);
    }

    if (!v6)
    {
      return 4294960567;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    sec_release(v7);
  }

  result = 0;
  *(a1 + 168) = v6;
  return result;
}

void _mdns_tls_resolver_finalize(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    free(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    free(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    nw_release(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    sec_release(v5);
    a1[21] = 0;
  }
}

NSObject *_mdns_create_tcp_parameters(int *a1)
{
  tcp = _mdns_nw_parameters_create_tcp(_nw_parameters_configure_protocol_disable);
  v3 = tcp;
  if (tcp)
  {
    v4 = _mdns_add_dns_over_bytestream_framer(tcp);
    if (v4)
    {
      nw_release(v3);
      v3 = 0;
    }

    else
    {
      nw_parameters_set_prefer_no_proxy(v3, 1);
    }
  }

  else
  {
    v4 = -6729;
  }

  if (a1)
  {
    *a1 = v4;
  }

  return v3;
}

NSObject *_mdns_normal_resolver_get_stream_params(uint64_t a1, int *a2)
{
  result = *(a1 + 152);
  if (!result && (v6 = 0, result = _mdns_create_tcp_parameters(&v6), *(a1 + 152) = result, (v5 = v6) != 0))
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v5;
  return result;
}

nw_parameters_t _mdns_normal_resolver_get_datagram_params(uint64_t a1, int *a2)
{
  secure_udp = *(a1 + 144);
  if (secure_udp)
  {
    v4 = 0;
    if (a2)
    {
LABEL_3:
      *a2 = v4;
    }
  }

  else
  {
    secure_udp = nw_parameters_create_secure_udp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    if (secure_udp)
    {
      nw_parameters_set_no_wake_from_sleep();
      v4 = 0;
    }

    else
    {
      v4 = -6729;
    }

    *(a1 + 144) = secure_udp;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  return secure_udp;
}