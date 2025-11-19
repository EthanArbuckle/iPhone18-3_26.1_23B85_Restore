uint64_t register_host_record(uint64_t a1, uint64_t a2, int a3)
{
  result = srp_mdns_shared_registration_txn_setup(*(a1 + 8));
  if (!result)
  {
    return result;
  }

  v7 = *(a2 + 8);
  if (v7 && (a3 & 1) == 0)
  {
    if (*(a2 + 32))
    {
      srp_mdns_shared_record_remove_(*(a1 + 8), a2, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2841);
      v7 = *(a2 + 8);
    }

    v8 = *(a2 + 24);
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
  }

  v9 = *(a1 + 8);
  v10 = *(*(v9 + 16) + 8);
  v11 = *(a2 + 72);
  v12 = global_os_log;
  v13 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v11 == 28)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    if (a3)
    {
      v22 = "skipping ";
    }

    else
    {
      v22 = "";
    }

    v23 = *(v9 + 368);
    v24 = *(a1 + 56);
    v25 = *(a2 + 74);
    v26 = *(a2 + 64);
    v27 = *v26;
    if ((v27 & 0xFE) == 0xFC)
    {
      v28 = "ULA: ";
    }

    else if (v27 == 254 && (v26[1] & 0xC0) == 0x80)
    {
      v28 = "LUA: ";
    }

    else if ((v27 & 0xE0) == 0x20)
    {
      v28 = "GUA: ";
    }

    else
    {
      v28 = "";
    }

    *buf = 136451843;
    v54 = "register_host_record";
    v55 = 2082;
    *v56 = v22;
    *&v56[8] = 2048;
    *&v56[10] = v10;
    *&v56[18] = 2048;
    *&v56[20] = a2 + 8;
    *&v56[28] = 1024;
    *&v56[30] = 16;
    *&v56[34] = 1024;
    *&v56[36] = v23;
    *v57 = 2080;
    *&v57[2] = v24;
    v58 = 1024;
    v59 = 28;
    v60 = 1024;
    v61 = 1;
    v62 = 1024;
    v63 = v25;
    v64 = 2082;
    v65 = v28;
    v66 = 2160;
    *v67 = 1752392040;
    *&v67[8] = 1041;
    *&v67[10] = 6;
    v68 = 2097;
    *v69 = v26;
    *&v69[8] = 2160;
    *&v69[10] = 1752392040;
    *&v69[18] = 1042;
    *&v69[20] = 2;
    v70 = 2098;
    v71 = v26 + 6;
    v72 = 2160;
    v73 = 1752392040;
    v74 = 1041;
    v75 = 8;
    v76 = 2097;
    v77 = v26 + 8;
    v78 = 1024;
    v79 = 4500;
    v80 = 2048;
    v81 = register_host_record_completion;
    v82 = 2048;
    v83 = a2;
    v19 = "%{public}s: %{public}sDNSServiceRegisterRecord(%p %p %d %d %s %d %d %d {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} %d %p %p)";
    v20 = v12;
    v21 = 196;
  }

  else if (v11 == 1)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = *(v9 + 368);
    v15 = "";
    v16 = *(a1 + 56);
    v17 = *(a2 + 74);
    if (a3)
    {
      v15 = "skipping ";
    }

    v18 = *(a2 + 64);
    *buf = 136450051;
    v54 = "register_host_record";
    v55 = 2082;
    *v56 = v15;
    *&v56[8] = 2048;
    *&v56[10] = v10;
    *&v56[18] = 2048;
    *&v56[20] = a2 + 8;
    *&v56[28] = 1024;
    *&v56[30] = 16;
    *&v56[34] = 1024;
    *&v56[36] = v14;
    *v57 = 2080;
    *&v57[2] = v16;
    v58 = 1024;
    v59 = 1;
    v60 = 1024;
    v61 = 1;
    v62 = 1024;
    v63 = v17;
    v64 = 2160;
    v65 = 1752392040;
    v66 = 1041;
    *v67 = 4;
    *&v67[4] = 2097;
    *&v67[6] = v18;
    v68 = 1024;
    *v69 = 4500;
    *&v69[4] = 2048;
    *&v69[6] = register_host_record_completion;
    *&v69[14] = 2048;
    *&v69[16] = a2;
    v19 = "%{public}s: %{public}sDNSServiceRegisterRecord(%p %p %d %d %s %d %d %d %{private, mask.hash, network:in_addr}.4P %d %p %p)";
    v20 = v12;
    v21 = 134;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    v29 = *(v9 + 368);
    v30 = "";
    v31 = *(a1 + 56);
    v32 = *(a2 + 74);
    if (a3)
    {
      v30 = "skipping ";
    }

    v33 = *(a2 + 64);
    *buf = 136449538;
    v54 = "register_host_record";
    v55 = 2082;
    *v56 = v30;
    *&v56[8] = 2048;
    *&v56[10] = v10;
    *&v56[18] = 2048;
    *&v56[20] = a2 + 8;
    *&v56[28] = 1024;
    *&v56[30] = 16;
    *&v56[34] = 1024;
    *&v56[36] = v29;
    *v57 = 2080;
    *&v57[2] = v31;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = 1;
    v62 = 1024;
    v63 = v32;
    v64 = 2048;
    v65 = v33;
    v66 = 1024;
    *v67 = 4500;
    *&v67[4] = 2048;
    *&v67[6] = register_host_record_completion;
    v68 = 2048;
    *v69 = a2;
    v19 = "%{public}s: %{public}sDNSServiceRegisterRecord(%p %p %d %d %s %d %d %d %p %d %p %p)";
    v20 = v12;
    v21 = 118;
  }

  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_31:
  if (a3)
  {
    return 1;
  }

  v34 = *(a1 + 40);
  if (v34)
  {
    v35 = *(v34 + 16);
    if (!v35 || (v36 = *(v35 + 32)) == 0)
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = *(a1 + 64);
  }

  v37 = srp_message_tsr_attribute_generate(v36, *(a1 + 176), v52 + 4);
  v38 = DNSServiceRegisterRecordWithAttribute(v10, (a2 + 8), *(*(a1 + 8) + 368), *(a1 + 56), *(a2 + 72), *(a2 + 74), *(a2 + 64), v37, register_host_record_completion, a2, v52[0], v52[1], v52[2]);
  DNSServiceAttributeDeallocate(v37);
  if (v38)
  {
    if ((v38 + 65569) <= 0x1D && ((1 << (v38 + 33)) & 0x30000041) != 0)
    {
LABEL_43:
      v40 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 48);
        v42 = "defunct";
        *buf = 136446978;
        v54 = "register_host_record";
        v55 = 2082;
        if (v38 == -65563)
        {
          v42 = "not running";
        }

        *v56 = v41;
        *&v56[8] = 2082;
        *&v56[10] = v42;
        *&v56[18] = 2048;
        *&v56[20] = a2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegisterRecord failed on host %{public}s: %{public}s (record %p)", buf, 0x2Au);
      }

      service_disconnected(*(a1 + 8), *(*(a1 + 8) + 16), 0);
      return 0;
    }

    if (v38 == 1)
    {
      v50 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v54 = "register_host_record";
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "%{public}s: bogus error code 1", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v51 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 136446722;
      v54 = "register_host_record";
      v55 = 1024;
      *v56 = v38;
      *&v56[4] = 2048;
      *&v56[6] = a2;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegisterRecord failed: %d (record %p)", buf, 0x1Cu);
      return 0;
    }
  }

  else
  {
    v43 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 48);
      v45 = *(a2 + 8);
      *buf = 136447491;
      v54 = "register_host_record";
      v55 = 2160;
      *v56 = 1752392040;
      *&v56[8] = 2081;
      *&v56[10] = v44;
      *&v56[18] = 2082;
      *&v56[20] = v52 + 4;
      *&v56[28] = 2048;
      *&v56[30] = a2;
      *&v56[38] = 2048;
      *v57 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegisterRecord for %{private, mask.hash}s, TSR set to %{public}s (record %p rref %p)", buf, 0x3Eu);
      v43 = global_os_log;
    }

    *(a2 + 24) = *(*(a1 + 8) + 16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *a2;
      *buf = 136447490;
      v54 = "register_host_record";
      v55 = 1024;
      *v56 = v46;
      *&v56[4] = 2048;
      *&v56[6] = a2;
      *&v56[14] = 2080;
      *&v56[16] = "record";
      *&v56[24] = 2080;
      *&v56[26] = "srp-mdns-proxy.c";
      *&v56[34] = 1024;
      *&v56[36] = 2925;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v47 = *a2;
    if (*a2)
    {
      v48 = v47 + 1;
      *a2 = v47 + 1;
      if (v47 + 1 >= 10001)
      {
        v49 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v54 = "register_host_record";
          v55 = 1024;
          *v56 = v48;
          *&v56[4] = 2048;
          *&v56[6] = a2;
          *&v56[14] = 2080;
          *&v56[16] = "record";
          *&v56[24] = 2080;
          *&v56[26] = "srp-mdns-proxy.c";
          *&v56[34] = 1024;
          *&v56[36] = 2925;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++adv_record_created;
      v48 = 1;
      *a2 = 1;
    }

    srp_log_ref_final(a2, v48, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2925);
    result = 1;
    if (*(a1 + 40))
    {
      *(a2 + 76) = 1;
    }
  }

  return result;
}

void update_failed(uint64_t a1, unsigned int a2, int a3)
{
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1;
    *v18 = 136447490;
    *&v18[4] = "update_failed";
    *&v18[12] = 1024;
    *&v18[14] = v7;
    *&v18[18] = 2048;
    *&v18[20] = a1;
    *&v18[28] = 2080;
    *&v18[30] = "update";
    *&v18[38] = 2080;
    *&v18[40] = "srp-mdns-proxy.c";
    v19 = 1024;
    v20 = 1131;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v18, 0x36u);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = v8 + 1;
    *a1 = v8 + 1;
    if (v8 + 1 >= 10001)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = v9;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1131;
      v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_38;
    }
  }

  else
  {
    ++adv_update_created;
    *a1 = 1;
  }

  v12 = *(a1 + 8);
  *(v12 + 257) = 0;
  v13 = *(a1 + 16);
  adv_update_cancel(a1);
  if (v13)
  {
    advertise_finished(*(v12 + 48), v13[1], v13[4], a2, 0, 1);
    srp_parse_client_updates_free_(v13, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1142);
    *(a1 + 16) = 0;
    if (a3)
    {
      v14 = *(v12 + 248);
      if (!v14 || (*v18 = 0, *&v18[8] = 0, gettimeofday(v18, 0), v14 <= 1000 * *v18 + *&v18[8] / 1000))
      {
        delete_host(v12);
      }
    }

    v15 = *a1;
    if (!*a1)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = 0;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1151;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_38;
    }

    v10 = global_os_log;
    if (v15 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = v15;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1151;
      v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_38;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = v15;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1151;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v18, 0x36u);
      v15 = *a1;
    }

    *a1 = v15 - 1;
    if (v15 == 1)
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136447234;
        *&v18[4] = "update_failed";
        *&v18[12] = 2048;
        *&v18[14] = a1;
        *&v18[22] = 2080;
        *&v18[24] = "update";
        *&v18[32] = 2080;
        *&v18[34] = "srp-mdns-proxy.c";
        *&v18[42] = 1024;
        *&v18[44] = 1151;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v18, 0x30u);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v17 = *a1;
    if (!*a1)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = 0;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1155;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_38;
    }

    v10 = global_os_log;
    if (v17 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = v17;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1155;
      v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, v18, 0x36u);
LABEL_39:
      abort();
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136447490;
      *&v18[4] = "update_failed";
      *&v18[12] = 1024;
      *&v18[14] = v17;
      *&v18[18] = 2048;
      *&v18[20] = a1;
      *&v18[28] = 2080;
      *&v18[30] = "update";
      *&v18[38] = 2080;
      *&v18[40] = "srp-mdns-proxy.c";
      v19 = 1024;
      v20 = 1155;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v18, 0x36u);
      v17 = *a1;
    }

    *a1 = v17 - 1;
    if (v17 == 1)
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136447234;
        *&v18[4] = "update_failed";
        *&v18[12] = 2048;
        *&v18[14] = a1;
        *&v18[22] = 2080;
        *&v18[24] = "update";
        *&v18[32] = 2080;
        *&v18[34] = "srp-mdns-proxy.c";
        *&v18[42] = 1024;
        *&v18[44] = 1155;
        goto LABEL_27;
      }

LABEL_28:
      ++adv_update_finalized;
      adv_update_finalize(a1);
    }
  }
}

uint64_t register_instance(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  result = srp_mdns_shared_registration_txn_setup(v2);
  if (result)
  {
    v4 = *(*(v2 + 16) + 8);
    sdRef = v4;
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      if (*(a1 + 135))
      {
        v8 = "skipping ";
      }

      else
      {
        v8 = "";
      }

      v9 = *(*(a1 + 40) + 56);
      v10 = *(a1 + 80);
      *buf = 136448771;
      v37 = "register_instance";
      v38 = 2082;
      *v39 = v8;
      *&v39[8] = 2048;
      *&v39[10] = v4;
      *&v39[18] = 2160;
      *&v39[20] = 1752392040;
      *&v39[28] = 2081;
      *&v39[30] = v6;
      *&v39[38] = 2160;
      v40 = 1752392040;
      v41 = 2081;
      v42 = v7;
      v43 = 2160;
      v44 = 1752392040;
      v45 = 2081;
      v46 = v9;
      v47 = 1024;
      v48 = v10;
      v49 = 2048;
      v50 = a1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}sDNSServiceRegister(%p, %{private, mask.hash}s, %{private, mask.hash}s, %{private, mask.hash}s, %d, %p)", buf, 0x6Cu);
    }

    if (*(a1 + 135) == 1)
    {
      v11 = *(*(a1 + 48) + 16);
      if (v11)
      {
        *(a1 + 112) = *(v11 + 32);
      }

      return 1;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      ioloop_dnssd_txn_cancel(v12);
      ioloop_dnssd_txn_release_(*(a1 + 24), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2298);
      *(a1 + 24) = 0;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      *(a1 + 24) = v13;
      ioloop_dnssd_txn_retain_(v13, 2306);
      ioloop_dnssd_txn_release_(*(a1 + 8), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2307);
      *(a1 + 8) = 0;
      *(a1 + 32) = *(a1 + 16);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (!v15 || (v16 = *(v15 + 32)) == 0)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = *(a1 + 104);
    }

    v17 = srp_message_tsr_attribute_generate(v16, *(*(a1 + 40) + 176), v35);
    v18 = DNSServiceRegisterWithAttribute(&sdRef, *(v2 + 368), *(a1 + 64), *(a1 + 72), "local", *(*(a1 + 40) + 56), (bswap32(*(a1 + 80)) >> 16), *(a1 + 96), *(a1 + 88), v17, register_instance_completion, a1, v33);
    DNSServiceAttributeDeallocate(v17);
    if (!v18)
    {
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 64);
        v24 = *(*(a1 + 40) + 48);
        if (!v24)
        {
          v24 = "<null>";
        }

        *buf = 136448003;
        v37 = "register_instance";
        v38 = 2160;
        *v39 = 1752392040;
        *&v39[8] = 2081;
        *&v39[10] = v23;
        *&v39[18] = 2160;
        *&v39[20] = 1752392040;
        *&v39[28] = 2081;
        *&v39[30] = v24;
        *&v39[38] = 2082;
        v40 = v35;
        v41 = 2048;
        v42 = a1;
        v43 = 2048;
        v44 = sdRef;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister, TSR for instance %{private, mask.hash}s host %{private, mask.hash}s set to %{public}s(instance %p sdref %p)", buf, 0x52u);
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        ++*(v25 + 88);
        *(a1 + 133) = 1;
      }

      *(a1 + 8) = ioloop_dnssd_txn_add_subordinate_(sdRef, a1, adv_instance_context_release, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2358);
      *(a1 + 16) = *(v2 + 16);
      v26 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *a1;
        *buf = 136447490;
        v37 = "register_instance";
        v38 = 1024;
        *v39 = v27;
        *&v39[4] = 2048;
        *&v39[6] = a1;
        *&v39[14] = 2080;
        *&v39[16] = "instance";
        *&v39[24] = 2080;
        *&v39[26] = "srp-mdns-proxy.c";
        *&v39[34] = 1024;
        *&v39[36] = 2364;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v28 = *a1;
      if (*a1)
      {
        v29 = v28 + 1;
        *a1 = v28 + 1;
        if (v28 + 1 >= 10001)
        {
          v30 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v37 = "register_instance";
            v38 = 1024;
            *v39 = v29;
            *&v39[4] = 2048;
            *&v39[6] = a1;
            *&v39[14] = 2080;
            *&v39[16] = "instance";
            *&v39[24] = 2080;
            *&v39[26] = "srp-mdns-proxy.c";
            *&v39[34] = 1024;
            *&v39[36] = 2364;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++adv_instance_created;
        *a1 = 1;
      }

      return 1;
    }

    if ((v18 + 65569) <= 0x1D && ((1 << (v18 + 33)) & 0x30000041) != 0)
    {
      goto LABEL_24;
    }

    if (v18 == 1)
    {
      v31 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v37 = "register_instance";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "%{public}s: bogus error code 1", buf, 0xCu);
      }

LABEL_24:
      v20 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "defunct";
        v37 = "register_instance";
        *buf = 136446722;
        if (v18 == -65563)
        {
          v21 = "not running";
        }

        v38 = 2082;
        *v39 = v21;
        *&v39[8] = 2048;
        *&v39[10] = a1;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister failed: %{public}s (instance %p)", buf, 0x20u);
      }

      service_disconnected(v2, *(v2 + 16), 0);
      return 0;
    }

    v32 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 136446722;
      v37 = "register_instance";
      v38 = 1024;
      *v39 = v18;
      *&v39[4] = 2048;
      *&v39[6] = a1;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister failed: %d (instance %p)", buf, 0x1Cu);
      return 0;
    }
  }

  return result;
}

uint64_t service_disconnected(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v4 + 8);
      *buf = 136446722;
      v21 = "service_disconnected";
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: server_state->shared_registration_txn = %p  sdref = %p", buf, 0x20u);
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v6 = 0;
      do
      {
        v12 = record_vec_txns_forget(v11[11], a2, "host", v11, v11[6], a3);
        instance_vec_txns_forget(v11[13], a2, "host", v11, v11[6]);
        v13 = v11[12];
        v14 = (v13 == a3) | v12;
        record_txn_forget(v13, a2, "host key", v11, v11[6]);
        v15 = v11[5];
        if (v15)
        {
          v16 = record_vec_txns_forget(*(v15 + 32), a2, "host update remove addresses", v15, v11[6], a3);
          v17 = record_vec_txns_forget(*(v11[5] + 40), a2, "host update add addresses", v11[5], v11[6], a3);
          v18 = v11[5];
          v14 |= (*(v18 + 48) == a3) | v17 | v16;
          record_txn_forget(*(v18 + 48), a2, "host update key", v18, v11[6]);
          instance_vec_txns_forget(*(v11[5] + 56), a2, "host update update instances", v11[5], v11[6]);
          instance_vec_txns_forget(*(v11[5] + 64), a2, "host update remove instances", v11[5], v11[6]);
          instance_vec_txns_forget(*(v11[5] + 72), a2, "host update renew instances", v11[5], v11[6]);
          instance_vec_txns_forget(*(v11[5] + 80), a2, "host update add instances", v11[5], v11[6]);
        }

        v6 |= v14;
        v11 = v11[4];
      }

      while (v11);
    }

    else
    {
      v6 = 0;
    }

    dns_service_op_not_to_be_freed = 0;
    ioloop_dnssd_txn_cancel(*(a1 + 16));
    ioloop_dnssd_txn_release_(*(a1 + 16), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 923);
    *(a1 + 16) = 0;
  }

  else
  {
    v6 = 0;
  }

  return (a3 != 0) & v6;
}

uint64_t record_vec_txns_forget(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && *(a1 + 4) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 8) + 8 * v12);
      if (v14)
      {
        v15 = v14 == a6;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v13 |= v16;
      record_txn_forget(v14, a2, a3, a4, a5);
      ++v12;
    }

    while (v12 < *(a1 + 4));
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void instance_vec_txns_forget(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(a1 + 4);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v11 = *(*(a1 + 8) + 8 * i);
        if (v11)
        {
          v12 = v11[1];
          if (v12)
          {
            v13 = *(v12 + 8);
            if (v13)
            {
              if (v11[2] == a2)
              {
                v14 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = v11[8];
                  v16 = v11[9];
                  *buf = 136448515;
                  v19 = "instance_vec_txns_forget";
                  v20 = 2048;
                  v21 = v13;
                  v22 = 2082;
                  v23 = a3;
                  v24 = 2048;
                  v25 = a4;
                  v26 = 2160;
                  v27 = 1752392040;
                  v28 = 2081;
                  v29 = a5;
                  v30 = 2160;
                  v31 = 1752392040;
                  v32 = 2081;
                  v33 = v15;
                  v34 = 2160;
                  v35 = 1752392040;
                  v36 = 2081;
                  v37 = v16;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: forgetting sdref %p on %{public}s %p %{private, mask.hash}s instance %{private, mask.hash}s . %{private, mask.hash}s", buf, 0x66u);
                  v12 = v11[1];
                  v6 = *(a1 + 4);
                }

                *(v12 + 8) = 0;
              }
            }
          }
        }
      }
    }
  }
}

void record_txn_forget(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      if (*(a1 + 24) == a2)
      {
        v10 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136447747;
          v12 = "record_txn_forget";
          v13 = 2048;
          v14 = a1;
          v15 = 2048;
          v16 = v6;
          v17 = 2082;
          v18 = a3;
          v19 = 2048;
          v20 = a4;
          v21 = 2160;
          v22 = 1752392040;
          v23 = 2081;
          v24 = a5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: forgetting record %p rref %p on %{public}s %p %{private, mask.hash}s", &v11, 0x48u);
        }

        *(a1 + 8) = 0;
      }
    }
  }
}

void register_instance_completion(uint64_t a1, int a2, int a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7)
{
  if (a3 == -65563 || a3 == -65569)
  {
    v12 = srp_log_ref_check(a7, "adv_instance", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2060);
    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "yes";
      *buf = 136447490;
      v74 = "register_instance_completion";
      v75 = 2048;
      *v76 = a1;
      if (v12)
      {
        v14 = "indeterminate";
      }

      *&v76[8] = 1024;
      *&v76[10] = a2;
      *&v76[14] = 1024;
      *&v76[16] = a3;
      *&v76[20] = 2048;
      *&v76[22] = a7;
      *&v76[30] = 2082;
      *&v76[32] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: instance defunct: sdref %p flags %x error %d context %p freed %{public}s.", buf, 0x36u);
    }

    return;
  }

  v19 = *(a7 + 40);
  v18 = *(a7 + 48);
  v20 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *a7;
    *buf = 136447490;
    v74 = "register_instance_completion";
    v75 = 1024;
    *v76 = v22;
    *&v76[4] = 2048;
    *&v76[6] = a7;
    *&v76[14] = 2080;
    *&v76[16] = "instance";
    *&v76[24] = 2080;
    *&v76[26] = "srp-mdns-proxy.c";
    *&v76[34] = 1024;
    *&v76[36] = 2068;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v23 = *a7;
  if (*a7)
  {
    v24 = v23 + 1;
    *a7 = v23 + 1;
    if (v23 + 1 >= 10001)
    {
      v25 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_114;
      }

      *buf = 136447490;
      v74 = "register_instance_completion";
      v75 = 1024;
      *v76 = v24;
      *&v76[4] = 2048;
      *&v76[6] = a7;
      *&v76[14] = 2080;
      *&v76[16] = "instance";
      *&v76[24] = 2080;
      *&v76[26] = "srp-mdns-proxy.c";
      *&v76[34] = 1024;
      *&v76[36] = 2068;
      v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_112:
      v71 = v25;
LABEL_113:
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, v26, buf, 0x36u);
      goto LABEL_114;
    }
  }

  else
  {
    ++adv_instance_created;
    *a7 = 1;
  }

  if (!srp_mdns_cancel_previous_instance(v19, a7, a1, a6, a3, "update"))
  {
    v27 = global_os_log;
    if (v18)
    {
      v28 = *(v19 + 40);
      v29 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v28 != v18)
      {
        if (v29)
        {
          *buf = 136447235;
          v74 = "register_instance_completion";
          v75 = 2160;
          *v76 = 1752392040;
          *&v76[8] = 2081;
          *&v76[10] = a4;
          *&v76[18] = 2160;
          *&v76[20] = 1752392040;
          *&v76[28] = 2081;
          *&v76[30] = a5;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: registration for service %{private, mask.hash}s.%{private, mask.hash}s completed with invalid state.", buf, 0x34u);
        }

        v30 = *(a7 + 48);
        if (!v30)
        {
          goto LABEL_31;
        }

        v31 = *v30;
        if (*v30)
        {
          v32 = global_os_log;
          if (v31 < 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              v74 = "register_instance_completion";
              v75 = 1024;
              *v76 = v31;
              *&v76[4] = 2048;
              *&v76[6] = v30;
              *&v76[14] = 2080;
              *&v76[16] = "instance->update";
              *&v76[24] = 2080;
              *&v76[26] = "srp-mdns-proxy.c";
              *&v76[34] = 1024;
              *&v76[36] = 2083;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v30 = *(a7 + 48);
              v31 = *v30;
            }

            *v30 = v31 - 1;
            if (v31 == 1)
            {
              v33 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v74 = "register_instance_completion";
                v75 = 2048;
                *v76 = v30;
                *&v76[8] = 2080;
                *&v76[10] = "instance->update";
                *&v76[18] = 2080;
                *&v76[20] = "srp-mdns-proxy.c";
                *&v76[28] = 1024;
                *&v76[30] = 2083;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                v30 = *(a7 + 48);
              }

              ++adv_update_finalized;
              adv_update_finalize(v30);
            }

LABEL_31:
            *(a7 + 48) = 0;
            goto LABEL_99;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v74 = "register_instance_completion";
            v75 = 1024;
            *v76 = v31;
            *&v76[4] = 2048;
            *&v76[6] = v30;
            *&v76[14] = 2080;
            *&v76[16] = "instance->update";
            *&v76[24] = 2080;
            *&v76[26] = "srp-mdns-proxy.c";
            *&v76[34] = 1024;
            *&v76[36] = 2083;
            v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v71 = v32;
            goto LABEL_113;
          }

LABEL_114:
          abort();
        }

        v37 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_114;
        }

        *buf = 136447490;
        v74 = "register_instance_completion";
        v75 = 1024;
        *v76 = 0;
        *&v76[4] = 2048;
        *&v76[6] = v30;
        *&v76[14] = 2080;
        *&v76[16] = "instance->update";
        *&v76[24] = 2080;
        *&v76[26] = "srp-mdns-proxy.c";
        *&v76[34] = 1024;
        *&v76[36] = 2083;
        v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_133:
        v71 = v37;
        goto LABEL_113;
      }

      if (v29)
      {
        v34 = *v18;
        *buf = 136447490;
        v74 = "register_instance_completion";
        v75 = 1024;
        *v76 = v34;
        *&v76[4] = 2048;
        *&v76[6] = v18;
        *&v76[14] = 2080;
        *&v76[16] = "update";
        *&v76[24] = 2080;
        *&v76[26] = "srp-mdns-proxy.c";
        *&v76[34] = 1024;
        *&v76[36] = 2092;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v35 = *v18;
      if (*v18)
      {
        v36 = v35 + 1;
        *v18 = v35 + 1;
        if (v35 + 1 >= 10001)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_114;
          }

          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v36;
          *&v76[4] = 2048;
          *&v76[6] = v18;
          *&v76[14] = 2080;
          *&v76[16] = "update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2092;
          v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_133;
        }
      }

      else
      {
        ++adv_update_created;
        *v18 = 1;
      }

      v38 = *(a7 + 48);
      if (v38)
      {
        v39 = *v38;
        if (!*v38)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_114;
          }

          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = 0;
          *&v76[4] = 2048;
          *&v76[6] = v38;
          *&v76[14] = 2080;
          *&v76[16] = "instance->update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2093;
          v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_133;
        }

        if (v39 >= 10001)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_114;
          }

          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v39;
          *&v76[4] = 2048;
          *&v76[6] = v38;
          *&v76[14] = 2080;
          *&v76[16] = "instance->update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2093;
          v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_133;
        }

        log = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v39;
          *&v76[4] = 2048;
          *&v76[6] = v38;
          *&v76[14] = 2080;
          *&v76[16] = "instance->update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2093;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v38 = *(a7 + 48);
          v39 = *v38;
        }

        *v38 = v39 - 1;
        if (v39 == 1)
        {
          v40 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v74 = "register_instance_completion";
            v75 = 2048;
            *v76 = v38;
            *&v76[8] = 2080;
            *&v76[10] = "instance->update";
            *&v76[18] = 2080;
            *&v76[20] = "srp-mdns-proxy.c";
            *&v76[28] = 1024;
            *&v76[30] = 2093;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            v38 = *(a7 + 48);
          }

          ++adv_update_finalized;
          adv_update_finalize(v38);
        }
      }

      *(a7 + 48) = 0;
      v27 = global_os_log;
    }

    v41 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v41)
      {
        v42 = *(a7 + 64);
        v43 = *(a7 + 72);
        v44 = *(v19 + 56);
        *buf = 136448515;
        v74 = "register_instance_completion";
        v75 = 2160;
        *v76 = 1752392040;
        *&v76[8] = 2081;
        *&v76[10] = v42;
        *&v76[18] = 2160;
        *&v76[20] = 1752392040;
        *&v76[28] = 2081;
        *&v76[30] = v43;
        *&v76[38] = 2160;
        v77 = 1752392040;
        v78 = 2081;
        v79 = a6;
        v80 = 2160;
        v81 = 1752392040;
        v82 = 2081;
        v83 = v44;
        v84 = 1024;
        LODWORD(v85) = a3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: registration for service %{private, mask.hash}s.%{private, mask.hash}s.%{private, mask.hash}s -> %{private, mask.hash}s failed with code %d", buf, 0x62u);
      }

      if (!v18)
      {
        goto LABEL_74;
      }

      if (a3 == -65548)
      {
        v45 = 6;
      }

      else
      {
        v45 = 2;
      }

      update_failed(v18, v45, 1);
      v46 = *(a7 + 48);
      if (v46)
      {
        v47 = *v46;
        if (!*v46)
        {
          v37 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_114;
          }

          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = 0;
          *&v76[4] = 2048;
          *&v76[6] = v46;
          *&v76[14] = 2080;
          *&v76[16] = "instance->update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2147;
          v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_133;
        }

        v48 = global_os_log;
        if (v47 >= 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v74 = "register_instance_completion";
            v75 = 1024;
            *v76 = v47;
            *&v76[4] = 2048;
            *&v76[6] = v46;
            *&v76[14] = 2080;
            *&v76[16] = "instance->update";
            *&v76[24] = 2080;
            *&v76[26] = "srp-mdns-proxy.c";
            *&v76[34] = 1024;
            *&v76[36] = 2147;
            v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v71 = v48;
            goto LABEL_113;
          }

          goto LABEL_114;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v47;
          *&v76[4] = 2048;
          *&v76[6] = v46;
          *&v76[14] = 2080;
          *&v76[16] = "instance->update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2147;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v46 = *(a7 + 48);
          v47 = *v46;
        }

        *v46 = v47 - 1;
        if (v47 == 1)
        {
          v49 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v74 = "register_instance_completion";
            v75 = 2048;
            *v76 = v46;
            *&v76[8] = 2080;
            *&v76[10] = "instance->update";
            *&v76[18] = 2080;
            *&v76[20] = "srp-mdns-proxy.c";
            *&v76[28] = 1024;
            *&v76[30] = 2147;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            v46 = *(a7 + 48);
          }

          ++adv_update_finalized;
          adv_update_finalize(v46);
        }

        *(a7 + 48) = 0;
      }

      v50 = *v18;
      if (!*v18)
      {
        v37 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_114;
        }

        *buf = 136447490;
        v74 = "register_instance_completion";
        v75 = 1024;
        *v76 = 0;
        *&v76[4] = 2048;
        *&v76[6] = v18;
        *&v76[14] = 2080;
        *&v76[16] = "update";
        *&v76[24] = 2080;
        *&v76[26] = "srp-mdns-proxy.c";
        *&v76[34] = 1024;
        *&v76[36] = 2150;
        v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_133;
      }

      v51 = global_os_log;
      if (v50 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v50;
          *&v76[4] = 2048;
          *&v76[6] = v18;
          *&v76[14] = 2080;
          *&v76[16] = "update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2150;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v50 = *v18;
        }

        *v18 = v50 - 1;
        if (v50 == 1)
        {
          v52 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v74 = "register_instance_completion";
            v75 = 2048;
            *v76 = v18;
            *&v76[8] = 2080;
            *&v76[10] = "update";
            *&v76[18] = 2080;
            *&v76[20] = "srp-mdns-proxy.c";
            *&v76[28] = 1024;
            *&v76[30] = 2150;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++adv_update_finalized;
          adv_update_finalize(v18);
        }

LABEL_74:
        v53 = *(a7 + 8);
        if (v53)
        {
          ioloop_dnssd_txn_cancel(v53);
          ioloop_dnssd_txn_release_(*(a7 + 8), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2177);
          *(a7 + 8) = 0;
          goto LABEL_99;
        }

        v62 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_99;
        }

        *buf = 136446466;
        v74 = "register_instance_completion";
        v75 = 2048;
        *v76 = a7;
        v63 = "%{public}s: instance->txn is NULL for instance %p!";
        v64 = v62;
        v65 = OS_LOG_TYPE_FAULT;
        v66 = 22;
LABEL_98:
        _os_log_impl(&_mh_execute_header, v64, v65, v63, buf, v66);
        goto LABEL_99;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_114;
      }

      *buf = 136447490;
      v74 = "register_instance_completion";
      v75 = 1024;
      *v76 = v50;
      *&v76[4] = 2048;
      *&v76[6] = v18;
      *&v76[14] = 2080;
      *&v76[16] = "update";
      *&v76[24] = 2080;
      *&v76[26] = "srp-mdns-proxy.c";
      *&v76[34] = 1024;
      *&v76[36] = 2150;
      v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      if (v41)
      {
        v54 = *(a7 + 64);
        v55 = *(a7 + 72);
        v56 = *(v19 + 56);
        *buf = 136449795;
        v74 = "register_instance_completion";
        v75 = 2160;
        *v76 = 1752392040;
        *&v76[8] = 2081;
        *&v76[10] = v54;
        *&v76[18] = 2160;
        *&v76[20] = 1752392040;
        *&v76[28] = 2081;
        *&v76[30] = v55;
        *&v76[38] = 2160;
        v77 = 1752392040;
        v78 = 2081;
        v79 = a6;
        v80 = 2160;
        v81 = 1752392040;
        v82 = 2081;
        v83 = v56;
        v84 = 2160;
        v85 = 1752392040;
        v86 = 2081;
        v87 = a4;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2081;
        v91 = a5;
        v92 = 2160;
        v93 = 1752392040;
        v94 = 2081;
        v95 = a6;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: registration for service %{private, mask.hash}s.%{private, mask.hash}s.%{private, mask.hash}s -> %{private, mask.hash}s has completed under %{private, mask.hash}s.%{private, mask.hash}s%{private, mask.hash}s", buf, 0x98u);
      }

      if (!v18)
      {
        v67 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_99;
        }

        v68 = *(a7 + 64);
        *buf = 136448259;
        v74 = "register_instance_completion";
        v75 = 2160;
        *v76 = 1752392040;
        *&v76[8] = 2081;
        *&v76[10] = v68;
        *&v76[18] = 2160;
        *&v76[20] = 1752392040;
        *&v76[28] = 2081;
        *&v76[30] = a4;
        *&v76[38] = 2160;
        v77 = 1752392040;
        v78 = 2081;
        v79 = a5;
        v80 = 2160;
        v81 = 1752392040;
        v82 = 2081;
        v83 = a6;
        v63 = "%{public}s: unexpected post-update success for instance %{private, mask.hash}s (%{private, mask.hash}s %{private, mask.hash}s %{private, mask.hash}s)";
        v64 = v67;
        v65 = OS_LOG_TYPE_DEFAULT;
        v66 = 92;
        goto LABEL_98;
      }

      if (*(a7 + 133) != 1)
      {
        goto LABEL_99;
      }

      v57 = *(v18 + 16);
      if (v57)
      {
        *(a7 + 112) = *(v57 + 32);
      }

      v58 = *(v18 + 96);
      v59 = *(v18 + 92) + 1;
      *(v18 + 92) = v59;
      if (*(v18 + 100) == v58 && v59 == *(v18 + 88))
      {
        srp_mdns_update_finished(v18);
      }

      v60 = *v18;
      if (!*v18)
      {
        v37 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_114;
        }

        *buf = 136447490;
        v74 = "register_instance_completion";
        v75 = 1024;
        *v76 = 0;
        *&v76[4] = 2048;
        *&v76[6] = v18;
        *&v76[14] = 2080;
        *&v76[16] = "update";
        *&v76[24] = 2080;
        *&v76[26] = "srp-mdns-proxy.c";
        *&v76[34] = 1024;
        *&v76[36] = 2116;
        v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_133;
      }

      v51 = global_os_log;
      if (v60 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v74 = "register_instance_completion";
          v75 = 1024;
          *v76 = v60;
          *&v76[4] = 2048;
          *&v76[6] = v18;
          *&v76[14] = 2080;
          *&v76[16] = "update";
          *&v76[24] = 2080;
          *&v76[26] = "srp-mdns-proxy.c";
          *&v76[34] = 1024;
          *&v76[36] = 2116;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v60 = *v18;
        }

        *v18 = v60 - 1;
        if (v60 == 1)
        {
          v61 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v74 = "register_instance_completion";
            v75 = 2048;
            *v76 = v18;
            *&v76[8] = 2080;
            *&v76[10] = "update";
            *&v76[18] = 2080;
            *&v76[20] = "srp-mdns-proxy.c";
            *&v76[28] = 1024;
            *&v76[30] = 2116;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++adv_update_finalized;
          adv_update_finalize(v18);
        }

        *(a7 + 133) = 0;
        goto LABEL_99;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_114;
      }

      *buf = 136447490;
      v74 = "register_instance_completion";
      v75 = 1024;
      *v76 = v60;
      *&v76[4] = 2048;
      *&v76[6] = v18;
      *&v76[14] = 2080;
      *&v76[16] = "update";
      *&v76[24] = 2080;
      *&v76[26] = "srp-mdns-proxy.c";
      *&v76[34] = 1024;
      *&v76[36] = 2116;
      v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    v71 = v51;
    goto LABEL_113;
  }

LABEL_99:
  v69 = *a7;
  if (!*a7)
  {
    v25 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    *buf = 136447490;
    v74 = "register_instance_completion";
    v75 = 1024;
    *v76 = 0;
    *&v76[4] = 2048;
    *&v76[6] = a7;
    *&v76[14] = 2080;
    *&v76[16] = "instance";
    *&v76[24] = 2080;
    *&v76[26] = "srp-mdns-proxy.c";
    *&v76[34] = 1024;
    *&v76[36] = 2182;
    v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_112;
  }

  v25 = global_os_log;
  if (v69 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    *buf = 136447490;
    v74 = "register_instance_completion";
    v75 = 1024;
    *v76 = v69;
    *&v76[4] = 2048;
    *&v76[6] = a7;
    *&v76[14] = 2080;
    *&v76[16] = "instance";
    *&v76[24] = 2080;
    *&v76[26] = "srp-mdns-proxy.c";
    *&v76[34] = 1024;
    *&v76[36] = 2182;
    v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_112;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v74 = "register_instance_completion";
    v75 = 1024;
    *v76 = v69;
    *&v76[4] = 2048;
    *&v76[6] = a7;
    *&v76[14] = 2080;
    *&v76[16] = "instance";
    *&v76[24] = 2080;
    *&v76[26] = "srp-mdns-proxy.c";
    *&v76[34] = 1024;
    *&v76[36] = 2182;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v69 = *a7;
  }

  *a7 = v69 - 1;
  if (v69 == 1)
  {
    v70 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v74 = "register_instance_completion";
      v75 = 2048;
      *v76 = a7;
      *&v76[8] = 2080;
      *&v76[10] = "instance";
      *&v76[18] = 2080;
      *&v76[20] = "srp-mdns-proxy.c";
      *&v76[28] = 1024;
      *&v76[30] = 2182;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_instance_finalized;
    adv_instance_finalize(a7);
  }
}

BOOL srp_mdns_cancel_previous_instance(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, int a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = "<null>";
  }

  v7 = a2[3];
  if (v7)
  {
    v13 = *(v7 + 8);
    v14 = global_os_log;
    v15 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    v16 = v13 == a3;
    v17 = v13 == a3;
    if (v16)
    {
      if (v15)
      {
        v24 = a2[8];
        v25 = a2[9];
        v26 = *(a1 + 56);
        v28 = 136448771;
        v29 = "srp_mdns_cancel_previous_instance";
        v30 = 2082;
        v31 = a6;
        v32 = 2160;
        v33 = 1752392040;
        v34 = 2081;
        v35 = v24;
        v36 = 2160;
        v37 = 1752392040;
        v38 = 2081;
        v39 = v25;
        v40 = 2160;
        v41 = 1752392040;
        v42 = 2081;
        v43 = v6;
        v44 = 2160;
        v45 = 1752392040;
        v46 = 2081;
        v47 = v26;
        v48 = 1024;
        v49 = a5;
        v21 = "%{public}s: %{public}s previous registration for service %{private, mask.hash}s.%{private, mask.hash}s.%{private, mask.hash}s -> %{private, mask.hash}s got code %d";
        v22 = v14;
        v23 = 108;
        goto LABEL_11;
      }
    }

    else if (v15)
    {
      v18 = a2[8];
      v19 = a2[9];
      v20 = *(a1 + 56);
      v28 = 136448515;
      v29 = "srp_mdns_cancel_previous_instance";
      v30 = 2082;
      v31 = a6;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2081;
      v35 = v18;
      v36 = 2160;
      v37 = 1752392040;
      v38 = 2081;
      v39 = v19;
      v40 = 2160;
      v41 = 1752392040;
      v42 = 2081;
      v43 = v6;
      v44 = 2160;
      v45 = 1752392040;
      v46 = 2081;
      v47 = v20;
      v21 = "%{public}s: %{public}s cancelling previous registration for service %{private, mask.hash}s.%{private, mask.hash}s.%{private, mask.hash}s -> %{private, mask.hash}s";
      v22 = v14;
      v23 = 102;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
    }

    ioloop_dnssd_txn_cancel(a2[3]);
    ioloop_dnssd_txn_release_(a2[3], "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2040);
    a2[3] = 0;
    return v17;
  }

  return 0;
}

_WORD *srp_message_tsr_attribute_generate(uint64_t a1, int a2, char *a3)
{
  ++saref_created;
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xE8C1C0ABuLL);
  if (result)
  {
    v7 = result;
    if (a1 && *(a1 + 72))
    {
      v9.tv_sec = 0;
      v9.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, &v9);
      v8 = LODWORD(v9.tv_sec) - *(a1 + 72);
      srp_format_time_offset(a3, v8);
    }

    else
    {
      v8 = 0;
      *a3 = 7827310;
    }

    v7[6] = 257;
    *(v7 + 1) = a2;
    *(v7 + 2) = v8;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t srp_format_time_offset(char *a1, uint64_t a2)
{
  memset(&v5, 0, sizeof(v5));
  v4 = time(0) - a2;
  localtime_r(&v4, &v5);
  return strftime(a1, 0x1CuLL, "%F %T", &v5);
}

void adv_update_cancel(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v4;
    *&v63[4] = 2048;
    *&v63[6] = a1;
    *&v63[14] = 2080;
    *&v63[16] = "update";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1044;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = v5 + 1;
    *a1 = v5 + 1;
    if (v5 + 1 >= 10001)
    {
      v7 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_174;
      }

      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = v6;
      *&v63[4] = 2048;
      *&v63[6] = a1;
      *&v63[14] = 2080;
      *&v63[16] = "update";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1044;
      v8 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_143;
    }
  }

  else
  {
    ++adv_update_created;
    *a1 = 1;
  }

  v9 = global_os_log;
  v10 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v10)
    {
      v11 = *v2;
      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = v11;
      *&v63[4] = 2048;
      *&v63[6] = v2;
      *&v63[14] = 2080;
      *&v63[16] = "host";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1047;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v12 = *v2;
    if (*v2)
    {
      v13 = v12 + 1;
      *v2 = v12 + 1;
      if (v12 + 1 >= 10001)
      {
        v14 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v13;
        *&v63[4] = 2048;
        *&v63[6] = v2;
        *&v63[14] = 2080;
        *&v63[16] = "host";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1047;
        v8 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_172:
        v59 = v14;
        goto LABEL_173;
      }
    }

    else
    {
      ++adv_host_created;
      *v2 = 1;
    }

    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = *v15;
      if (!*v15)
      {
        v14 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = 0;
        *&v63[4] = 2048;
        *&v63[6] = v15;
        *&v63[14] = 2080;
        *&v63[16] = "update->host";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1048;
        v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_172;
      }

      v17 = global_os_log;
      if (v16 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v16;
        *&v63[4] = 2048;
        *&v63[6] = v15;
        *&v63[14] = 2080;
        *&v63[16] = "update->host";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1048;
        v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_164;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v16;
        *&v63[4] = 2048;
        *&v63[6] = v15;
        *&v63[14] = 2080;
        *&v63[16] = "update->host";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1048;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v15 = *(a1 + 8);
        v16 = *v15;
      }

      *v15 = v16 - 1;
      if (v16 == 1)
      {
        v18 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v61 = "adv_update_cancel";
          v62 = 2048;
          *v63 = v15;
          *&v63[8] = 2080;
          *&v63[10] = "update->host";
          *&v63[18] = 2080;
          *&v63[20] = "srp-mdns-proxy.c";
          *&v63[28] = 1024;
          *&v63[30] = 1048;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v15 = *(a1 + 8);
        }

        ++adv_host_finalized;
        adv_host_finalize(v15);
      }
    }

    *(a1 + 8) = 0;
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v2 + 56);
      *buf = 136446979;
      v61 = "adv_update_cancel";
      v62 = 2048;
      *v63 = a1;
      *&v63[8] = 2160;
      *&v63[10] = 1752392040;
      *&v63[18] = 2081;
      *&v63[20] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: cancelling update %p for host %{private, mask.hash}s", buf, 0x2Au);
    }

    v21 = *(v2 + 40);
    if (v21 == a1)
    {
      v22 = *v21;
      if (!*v21)
      {
        v7 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = 0;
        *&v63[4] = 2048;
        *&v63[6] = a1;
        *&v63[14] = 2080;
        *&v63[16] = "host->update";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1054;
        v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_143;
      }

      v23 = global_os_log;
      if (v22 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v22;
        *&v63[4] = 2048;
        *&v63[6] = a1;
        *&v63[14] = 2080;
        *&v63[16] = "host->update";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1054;
        v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_169;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v22;
        *&v63[4] = 2048;
        *&v63[6] = a1;
        *&v63[14] = 2080;
        *&v63[16] = "host->update";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1054;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v21 = *(v2 + 40);
        v22 = *v21;
      }

      *v21 = v22 - 1;
      if (v22 == 1)
      {
        v24 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v61 = "adv_update_cancel";
          v62 = 2048;
          *v63 = v21;
          *&v63[8] = 2080;
          *&v63[10] = "host->update";
          *&v63[18] = 2080;
          *&v63[20] = "srp-mdns-proxy.c";
          *&v63[28] = 1024;
          *&v63[30] = 1054;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v21 = *(v2 + 40);
        }

        ++adv_update_finalized;
        adv_update_finalize(v21);
      }

      *(v2 + 40) = 0;
    }

    v25 = *(v2 + 88);
    if (v25 && *(v25 + 4) >= 1)
    {
      for (i = 0; i < *(v25 + 4); ++i)
      {
        v27 = *(*(v25 + 8) + 8 * i);
        v28 = *(v27 + 48);
        if (v28 == a1)
        {
          v29 = *v28;
          if (!*v28)
          {
            v7 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_174;
            }

            *buf = 136447490;
            v61 = "adv_update_cancel";
            v62 = 1024;
            *v63 = 0;
            *&v63[4] = 2048;
            *&v63[6] = a1;
            *&v63[14] = 2080;
            *&v63[16] = "host->addresses->vec[i]->update";
            *&v63[24] = 2080;
            *&v63[26] = "srp-mdns-proxy.c";
            v64 = 1024;
            v65 = 1063;
            v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_143;
          }

          v30 = global_os_log;
          if (v29 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v61 = "adv_update_cancel";
              v62 = 1024;
              *v63 = v29;
              *&v63[4] = 2048;
              *&v63[6] = a1;
              *&v63[14] = 2080;
              *&v63[16] = "host->addresses->vec[i]->update";
              *&v63[24] = 2080;
              *&v63[26] = "srp-mdns-proxy.c";
              v64 = 1024;
              v65 = 1063;
              v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v59 = v30;
              goto LABEL_173;
            }

LABEL_174:
            abort();
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v61 = "adv_update_cancel";
            v62 = 1024;
            *v63 = v29;
            *&v63[4] = 2048;
            *&v63[6] = a1;
            *&v63[14] = 2080;
            *&v63[16] = "host->addresses->vec[i]->update";
            *&v63[24] = 2080;
            *&v63[26] = "srp-mdns-proxy.c";
            v64 = 1024;
            v65 = 1063;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v25 = *(v2 + 88);
            v28 = *(*(*(v25 + 8) + 8 * i) + 48);
            v29 = *v28;
          }

          *v28 = v29 - 1;
          if (v29 == 1)
          {
            v31 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v61 = "adv_update_cancel";
              v62 = 2048;
              *v63 = v28;
              *&v63[8] = 2080;
              *&v63[10] = "host->addresses->vec[i]->update";
              *&v63[18] = 2080;
              *&v63[20] = "srp-mdns-proxy.c";
              *&v63[28] = 1024;
              *&v63[30] = 1063;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v28 = *(*(*(*(v2 + 88) + 8) + 8 * i) + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v28);
            v25 = *(v2 + 88);
          }

          *(v27 + 48) = 0;
        }
      }
    }
  }

  else if (v10)
  {
    *buf = 136446210;
    v61 = "adv_update_cancel";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: canceling update with no host.", buf, 0xCu);
  }

  adv_update_free_instance_vectors(a1);
  v32 = *(a1 + 40);
  if (v32)
  {
    if (*(v32 + 4) < 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = *(*(v32 + 8) + 8 * v33);
        if (v35)
        {
          if (v2)
          {
            if (v35[1].isa)
            {
              srp_mdns_shared_record_remove_(*(v2 + 8), v35, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1086);
              srp_mdns_shared_record_remove_(*(v2 + 8), v35, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1087);
            }
          }

          else
          {
            if ((v34 & 1) == 0)
            {
              v36 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                v61 = "adv_update_cancel";
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%{public}s: unable to clean up host address registration because host object is gone from update.", buf, 0xCu);
              }
            }

            v34 = 1;
          }
        }

        ++v33;
        v32 = *(a1 + 40);
      }

      while (v33 < *(v32 + 4));
    }

    adv_record_vec_remove_update(v32, a1);
    v37 = *(a1 + 40);
    if (v37)
    {
      v38 = *v37;
      if (!*v37)
      {
        v14 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = 0;
        *&v63[4] = 2048;
        *&v63[6] = v37;
        *&v63[14] = 2080;
        *&v63[16] = "update->add_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1093;
        v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_172;
      }

      v17 = global_os_log;
      if (v38 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v38;
        *&v63[4] = 2048;
        *&v63[6] = v37;
        *&v63[14] = 2080;
        *&v63[16] = "update->add_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1093;
        v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_164;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v38;
        *&v63[4] = 2048;
        *&v63[6] = v37;
        *&v63[14] = 2080;
        *&v63[16] = "update->add_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1093;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v37 = *(a1 + 40);
        v38 = *v37;
      }

      *v37 = v38 - 1;
      if (v38 == 1)
      {
        v39 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v61 = "adv_update_cancel";
          v62 = 2048;
          *v63 = v37;
          *&v63[8] = 2080;
          *&v63[10] = "update->add_addresses";
          *&v63[18] = 2080;
          *&v63[20] = "srp-mdns-proxy.c";
          *&v63[28] = 1024;
          *&v63[30] = 1093;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v37 = *(a1 + 40);
        }

        ++adv_record_vec_finalized;
        adv_record_vec_finalize(v37);
      }
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v34 = 0;
  }

  v40 = *(a1 + 32);
  if (v40)
  {
    adv_record_vec_remove_update(v40, a1);
    v41 = *(a1 + 32);
    if (v41)
    {
      v42 = *v41;
      if (!*v41)
      {
        v14 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = 0;
        *&v63[4] = 2048;
        *&v63[6] = v41;
        *&v63[14] = 2080;
        *&v63[16] = "update->remove_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1099;
        v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_172;
      }

      v17 = global_os_log;
      if (v42 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_174;
        }

        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v42;
        *&v63[4] = 2048;
        *&v63[6] = v41;
        *&v63[14] = 2080;
        *&v63[16] = "update->remove_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1099;
        v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_164;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v42;
        *&v63[4] = 2048;
        *&v63[6] = v41;
        *&v63[14] = 2080;
        *&v63[16] = "update->remove_addresses";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1099;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v41 = *(a1 + 32);
        v42 = *v41;
      }

      *v41 = v42 - 1;
      if (v42 == 1)
      {
        v43 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v61 = "adv_update_cancel";
          v62 = 2048;
          *v63 = v41;
          *&v63[8] = 2080;
          *&v63[10] = "update->remove_addresses";
          *&v63[18] = 2080;
          *&v63[20] = "srp-mdns-proxy.c";
          *&v63[28] = 1024;
          *&v63[30] = 1099;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v41 = *(a1 + 32);
        }

        ++adv_record_vec_finalized;
        adv_record_vec_finalize(v41);
      }
    }

    *(a1 + 32) = 0;
  }

  v44 = *(a1 + 48);
  if (!v44)
  {
    goto LABEL_117;
  }

  isa = v44[6].isa;
  if (isa)
  {
    v46 = *isa;
    if (!*isa)
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_174;
      }

      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = 0;
      *&v63[4] = 2048;
      *&v63[6] = isa;
      *&v63[14] = 2080;
      *&v63[16] = "update->key->update";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1105;
      v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_172;
    }

    v17 = global_os_log;
    if (v46 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v61 = "adv_update_cancel";
        v62 = 1024;
        *v63 = v46;
        *&v63[4] = 2048;
        *&v63[6] = isa;
        *&v63[14] = 2080;
        *&v63[16] = "update->key->update";
        *&v63[24] = 2080;
        *&v63[26] = "srp-mdns-proxy.c";
        v64 = 1024;
        v65 = 1105;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v44 = *(a1 + 48);
        isa = v44[6].isa;
        v46 = *isa;
      }

      *isa = v46 - 1;
      if (v46 == 1)
      {
        v47 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v61 = "adv_update_cancel";
          v62 = 2048;
          *v63 = isa;
          *&v63[8] = 2080;
          *&v63[10] = "update->key->update";
          *&v63[18] = 2080;
          *&v63[20] = "srp-mdns-proxy.c";
          *&v63[28] = 1024;
          *&v63[30] = 1105;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          isa = *(*(a1 + 48) + 48);
        }

        ++adv_update_finalized;
        adv_update_finalize(isa);
        v44 = *(a1 + 48);
      }

      v44[6].isa = 0;
      goto LABEL_100;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_174;
    }

    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v46;
    *&v63[4] = 2048;
    *&v63[6] = isa;
    *&v63[14] = 2080;
    *&v63[16] = "update->key->update";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1105;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_164:
    v59 = v17;
    goto LABEL_173;
  }

LABEL_100:
  if (v2)
  {
    srp_mdns_shared_record_remove_(*(v2 + 8), v44, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1115);
    srp_mdns_shared_record_remove_(*(v2 + 8), *(a1 + 48), 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1116);
  }

  else if ((v34 & 1) == 0)
  {
    v48 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v61 = "adv_update_cancel";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "%{public}s: unable to clean up host key registration because host object is gone from update.", buf, 0xCu);
    }
  }

  v49 = *(a1 + 48);
  if (v49 && srp_log_ref_check(v49, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1118))
  {
    v50 = *(a1 + 48);
    v51 = *v50;
    if (!*v50)
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_174;
      }

      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = 0;
      *&v63[4] = 2048;
      *&v63[6] = v50;
      *&v63[14] = 2080;
      *&v63[16] = "update->key";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1118;
      v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_172;
    }

    v52 = global_os_log;
    if (v51 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_174;
      }

      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = v51;
      *&v63[4] = 2048;
      *&v63[6] = v50;
      *&v63[14] = 2080;
      *&v63[16] = "update->key";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1118;
      v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v59 = v52;
LABEL_173:
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, v8, buf, 0x36u);
      goto LABEL_174;
    }

    v53 = v51 - 1;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v61 = "adv_update_cancel";
      v62 = 1024;
      *v63 = v51;
      *&v63[4] = 2048;
      *&v63[6] = v50;
      *&v63[14] = 2080;
      *&v63[16] = "update->key";
      *&v63[24] = 2080;
      *&v63[26] = "srp-mdns-proxy.c";
      v64 = 1024;
      v65 = 1118;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v50 = *(a1 + 48);
      v51 = *v50;
    }

    *v50 = v51 - 1;
    if (v51 == 1)
    {
      v54 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v61 = "adv_update_cancel";
        v62 = 2048;
        *v63 = v50;
        *&v63[8] = 2080;
        *&v63[10] = "update->key";
        *&v63[18] = 2080;
        *&v63[20] = "srp-mdns-proxy.c";
        *&v63[28] = 1024;
        *&v63[30] = 1118;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v50 = *(a1 + 48);
      }

      ++adv_record_finalized;
      adv_record_finalize(v50);
      v50 = *(a1 + 48);
    }

    srp_log_ref_final(v50, v53, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1118);
  }

  *(a1 + 48) = 0;
LABEL_117:
  if (!v2)
  {
    goto LABEL_126;
  }

  v55 = *v2;
  if (!*v2)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_174;
    }

    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = 0;
    *&v63[4] = 2048;
    *&v63[6] = v2;
    *&v63[14] = 2080;
    *&v63[16] = "host";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1122;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_172;
  }

  v23 = global_os_log;
  if (v55 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_174;
    }

    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v55;
    *&v63[4] = 2048;
    *&v63[6] = v2;
    *&v63[14] = 2080;
    *&v63[16] = "host";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1122;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_169:
    v59 = v23;
    goto LABEL_173;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v55;
    *&v63[4] = 2048;
    *&v63[6] = v2;
    *&v63[14] = 2080;
    *&v63[16] = "host";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1122;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v55 = *v2;
  }

  *v2 = v55 - 1;
  if (v55 == 1)
  {
    v56 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v61 = "adv_update_cancel";
      v62 = 2048;
      *v63 = v2;
      *&v63[8] = 2080;
      *&v63[10] = "host";
      *&v63[18] = 2080;
      *&v63[20] = "srp-mdns-proxy.c";
      *&v63[28] = 1024;
      *&v63[30] = 1122;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_host_finalized;
    adv_host_finalize(v2);
  }

LABEL_126:
  v57 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_174;
    }

    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = 0;
    *&v63[4] = 2048;
    *&v63[6] = a1;
    *&v63[14] = 2080;
    *&v63[16] = "update";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1124;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_143:
    v59 = v7;
    goto LABEL_173;
  }

  v7 = global_os_log;
  if (v57 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_174;
    }

    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v57;
    *&v63[4] = 2048;
    *&v63[6] = a1;
    *&v63[14] = 2080;
    *&v63[16] = "update";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1124;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_143;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v61 = "adv_update_cancel";
    v62 = 1024;
    *v63 = v57;
    *&v63[4] = 2048;
    *&v63[6] = a1;
    *&v63[14] = 2080;
    *&v63[16] = "update";
    *&v63[24] = 2080;
    *&v63[26] = "srp-mdns-proxy.c";
    v64 = 1024;
    v65 = 1124;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v57 = *a1;
  }

  *a1 = v57 - 1;
  if (v57 == 1)
  {
    v58 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v61 = "adv_update_cancel";
      v62 = 2048;
      *v63 = a1;
      *&v63[8] = 2080;
      *&v63[10] = "update";
      *&v63[18] = 2080;
      *&v63[20] = "srp-mdns-proxy.c";
      *&v63[28] = 1024;
      *&v63[30] = 1124;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_update_finalized;
    adv_update_finalize(a1);
  }
}

void delete_host(uint64_t a1)
{
  v2 = host_ready(a1);
  if (v2)
  {
    v3 = v2;
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = 136446723;
      v7 = "delete_host";
      v8 = 2160;
      v9 = 1752392040;
      v10 = 2081;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: deleting host %{private, mask.hash}s", &v6, 0x20u);
    }

    *v3 = *(a1 + 32);
    host_remove(a1);
  }
}

void *host_ready(uint64_t a1)
{
  v2 = (*(a1 + 8) + 8);
  do
  {
    result = v2;
    v4 = *v2;
    v2 = (*v2 + 32);
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v4)
  {
    if (*(a1 + 40))
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        *buf = 136446723;
        *&buf[4] = "host_ready";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2081;
        *&buf[24] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: reached with pending updates on host %{private, mask.hash}s.", buf, 0x20u);
      }

      ioloop_add_wake_event(*(a1 + 24), a1, lease_callback, srp_adv_host_context_release, 0x2710u);
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        *buf = 136447490;
        *&buf[4] = "host_ready";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "host";
        v15 = 2080;
        v16 = "srp-mdns-proxy.c";
        v17 = 1024;
        v18 = 1357;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      if (*a1)
      {
        v10 = *a1 + 1;
        *a1 = v10;
        if (v10 >= 10001)
        {
          v13 = v10;
          v11 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "host_ready";
            *&buf[12] = 1024;
            *&buf[14] = v13;
            *&buf[18] = 2048;
            *&buf[20] = a1;
            *&buf[28] = 2080;
            *&buf[30] = "host";
            v15 = 2080;
            v16 = "srp-mdns-proxy.c";
            v17 = 1024;
            v18 = 1357;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++adv_host_created;
        *a1 = 1;
      }

      *buf = 0;
      *&buf[8] = 0;
      gettimeofday(buf, 0);
      result = 0;
      *(a1 + 248) = 1000 * *buf + *&buf[8] / 1000 + 10000;
    }
  }

  else
  {
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "host_ready";
      *&buf[12] = 2048;
      *&buf[14] = a1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: called with nonexistent host %p.", buf, 0x16u);
    }

    return 0;
  }

  return result;
}

void host_remove(int *a1)
{
  host_invalidate(a1);
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "host_remove";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 1332;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "host_remove";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 1332;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "host_remove";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 1332;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "host_remove";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "host";
      *&v9[18] = 2080;
      *&v9[20] = "srp-mdns-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 1332;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++adv_host_finalized;
    adv_host_finalize(a1);
  }
}

void register_host_record_completion(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (a4 == -65563 || a4 == -65569)
  {
    v11 = srp_log_ref_check(a5, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2533);
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "yes";
      *v75 = 136447746;
      *&v75[4] = "register_host_record_completion";
      *&v75[12] = 2048;
      *&v75[14] = a1;
      if (v11)
      {
        v13 = "indeterminate";
      }

      *&v75[22] = 2048;
      *&v75[24] = a2;
      *&v75[32] = 1024;
      *&v75[34] = a3;
      *&v75[38] = 1024;
      *&v75[40] = a4;
      *&v75[44] = 2048;
      *&v75[46] = a5;
      *&v75[54] = 2082;
      *&v75[56] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: service defunct: sdref %p rref %p flags %x error %d context %p freed %{public}s.", v75, 0x40u);
    }

    if ((*(srp_servers + 413) & 1) == 0)
    {
      *(srp_servers + 413) = 1;
      *v75 = _NSConcreteStackBlock;
      *&v75[8] = 0x40000000;
      *&v75[16] = __ioloop_run_async_block_invoke;
      *&v75[24] = &__block_descriptor_tmp_41;
      *&v75[32] = srp_mdns_record_disconnect;
      *&v75[40] = a5;
      *&v75[48] = 0;
      dispatch_async(ioloop_main_queue, v75);
    }

    return;
  }

  if (a5)
  {
    if (*(a5 + 8) != a2 && *(a5 + 32) != a2)
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *v75 = 136446210;
        *&v75[4] = "register_host_record_completion";
        v15 = "%{public}s: forgotten rref";
LABEL_26:
        v23 = v14;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v15, v75, 0xCu);
        return;
      }

      return;
    }

    v16 = *(a5 + 16);
    v17 = global_os_log;
    if (!v16)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *v75 = 136446210;
        *&v75[4] = "register_host_record_completion";
        v15 = "%{public}s: no host";
        v23 = v17;
        goto LABEL_27;
      }

      return;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a5;
      *v75 = 136447490;
      *&v75[4] = "register_host_record_completion";
      *&v75[12] = 1024;
      *&v75[14] = v18;
      *&v75[18] = 2048;
      *&v75[20] = a5;
      *&v75[28] = 2080;
      *&v75[30] = "record";
      *&v75[38] = 2080;
      *&v75[40] = "srp-mdns-proxy.c";
      *&v75[48] = 1024;
      *&v75[50] = 2564;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v75, 0x36u);
    }

    v19 = *a5;
    if (*a5)
    {
      v20 = v19 + 1;
      *a5 = v19 + 1;
      if (v19 + 1 >= 10001)
      {
        v21 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_143;
        }

        *v75 = 136447490;
        *&v75[4] = "register_host_record_completion";
        *&v75[12] = 1024;
        *&v75[14] = v20;
        *&v75[18] = 2048;
        *&v75[20] = a5;
        *&v75[28] = 2080;
        *&v75[30] = "record";
        *&v75[38] = 2080;
        *&v75[40] = "srp-mdns-proxy.c";
        *&v75[48] = 1024;
        *&v75[50] = 2564;
        v22 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_129:
        v74 = v21;
LABEL_142:
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_FAULT, v22, v75, 0x36u);
        goto LABEL_143;
      }
    }

    else
    {
      ++adv_record_created;
      v20 = 1;
      *a5 = 1;
    }

    srp_log_ref_final(a5, v20, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2564);
    if (srp_mdns_cancel_previous_record(v16, a5, a2, a4, "register"))
    {
      goto LABEL_116;
    }

    v24 = *(a5 + 48);
    if (v24)
    {
      v25 = v16[5];
      v26 = global_os_log;
      v27 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v25 != v24)
      {
        if (v27)
        {
          *v75 = 136446210;
          *&v75[4] = "register_host_record_completion";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: registration for host record completed with invalid state.", v75, 0xCu);
          v24 = *(a5 + 48);
        }

        adv_update_cancel(v24);
        v28 = *(a5 + 48);
        if (!v28)
        {
LABEL_45:
          *(a5 + 48) = 0;
          srp_mdns_shared_record_remove_(v16[1], a5, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2578);
          srp_mdns_shared_record_remove_(v16[1], a5, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2579);
          goto LABEL_116;
        }

        v29 = *v28;
        if (*v28)
        {
          v30 = global_os_log;
          if (v29 >= 10001)
          {
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_143;
            }

            *v75 = 136447490;
            *&v75[4] = "register_host_record_completion";
            *&v75[12] = 1024;
            *&v75[14] = v29;
            *&v75[18] = 2048;
            *&v75[20] = v28;
            *&v75[28] = 2080;
            *&v75[30] = "record->update";
            *&v75[38] = 2080;
            *&v75[40] = "srp-mdns-proxy.c";
            *&v75[48] = 1024;
            *&v75[50] = 2576;
            v22 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v74 = v30;
            goto LABEL_142;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 136447490;
            *&v75[4] = "register_host_record_completion";
            *&v75[12] = 1024;
            *&v75[14] = v29;
            *&v75[18] = 2048;
            *&v75[20] = v28;
            *&v75[28] = 2080;
            *&v75[30] = "record->update";
            *&v75[38] = 2080;
            *&v75[40] = "srp-mdns-proxy.c";
            *&v75[48] = 1024;
            *&v75[50] = 2576;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v75, 0x36u);
            v28 = *(a5 + 48);
            v29 = *v28;
          }

          *v28 = v29 - 1;
          if (v29 == 1)
          {
            v31 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *v75 = 136447234;
              *&v75[4] = "register_host_record_completion";
              *&v75[12] = 2048;
              *&v75[14] = v28;
              *&v75[22] = 2080;
              *&v75[24] = "record->update";
              *&v75[32] = 2080;
              *&v75[34] = "srp-mdns-proxy.c";
              *&v75[42] = 1024;
              *&v75[44] = 2576;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v75, 0x30u);
              v28 = *(a5 + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v28);
          }

          goto LABEL_45;
        }

        v35 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_143;
        }

        *v75 = 136447490;
        *&v75[4] = "register_host_record_completion";
        *&v75[12] = 1024;
        *&v75[14] = 0;
        *&v75[18] = 2048;
        *&v75[20] = v28;
        *&v75[28] = 2080;
        *&v75[30] = "record->update";
        *&v75[38] = 2080;
        *&v75[40] = "srp-mdns-proxy.c";
        *&v75[48] = 1024;
        *&v75[50] = 2576;
        v22 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_139:
        v74 = v35;
        goto LABEL_142;
      }

      if (v27)
      {
        v32 = *v24;
        *v75 = 136447490;
        *&v75[4] = "register_host_record_completion";
        *&v75[12] = 1024;
        *&v75[14] = v32;
        *&v75[18] = 2048;
        *&v75[20] = v24;
        *&v75[28] = 2080;
        *&v75[30] = "update";
        *&v75[38] = 2080;
        *&v75[40] = "srp-mdns-proxy.c";
        *&v75[48] = 1024;
        *&v75[50] = 2585;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v75, 0x36u);
      }

      v33 = *v24;
      if (*v24)
      {
        v34 = v33 + 1;
        *v24 = v33 + 1;
        if (v33 + 1 >= 10001)
        {
          v35 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *v75 = 136447490;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 1024;
          *&v75[14] = v34;
          *&v75[18] = 2048;
          *&v75[20] = v24;
          *&v75[28] = 2080;
          *&v75[30] = "update";
          *&v75[38] = 2080;
          *&v75[40] = "srp-mdns-proxy.c";
          *&v75[48] = 1024;
          *&v75[50] = 2585;
          v22 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_139;
        }
      }

      else
      {
        ++adv_update_created;
        *v24 = 1;
      }
    }

    if (!a4)
    {
      if (*(a5 + 76) == 1)
      {
        *(a5 + 76) = 0;
        if (v24)
        {
          v44 = v24[24];
          v45 = v24[25] + 1;
          v24[25] = v45;
          if (v45 == v44 && v24[23] == v24[22])
          {
            srp_mdns_update_finished(v24);
          }
        }

        v46 = " has completed.";
      }

      else
      {
        v46 = " got spurious success callback after completion.";
      }

      v47 = *(a5 + 72);
      v48 = global_os_log;
      v49 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      switch(v47)
      {
        case 28:
          if (!v49)
          {
            goto LABEL_99;
          }

          v62 = v16[7];
          v63 = *(a5 + 64);
          v64 = *v63;
          if ((v64 & 0xFE) == 0xFC)
          {
            v65 = "ULA: ";
          }

          else if (v64 == 254 && (v63[1] & 0xC0) == 0x80)
          {
            v65 = "LUA: ";
          }

          else if ((v64 & 0xE0) == 0x20)
          {
            v65 = "GUA: ";
          }

          else
          {
            v65 = "";
          }

          *v75 = 136449539;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v62;
          *&v75[32] = 2082;
          *&v75[34] = v65;
          *&v75[42] = 2160;
          *&v75[44] = 1752392040;
          *&v75[52] = 1041;
          *&v75[54] = 6;
          *&v75[58] = 2097;
          *&v75[60] = v63;
          v76 = 2160;
          v77 = 1752392040;
          v78 = 1042;
          v79 = 2;
          v80 = 2098;
          v81 = v63 + 6;
          v82 = 2160;
          v83 = 1752392040;
          v84 = 1041;
          v85 = 8;
          v86 = 2097;
          v87 = v63 + 8;
          v88 = 2082;
          v89 = v46;
          v52 = "%{public}s: registration for host %{private, mask.hash}s address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}%{public}s";
          v53 = v48;
          v54 = 130;
          break;
        case 25:
          if (!v49)
          {
            goto LABEL_99;
          }

          v61 = v16[7];
          *v75 = 136446979;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v61;
          *&v75[32] = 2082;
          *&v75[34] = v46;
          v52 = "%{public}s: registration for host %{private, mask.hash}s key%{public}s";
          v53 = v48;
          v54 = 42;
          break;
        case 1:
          if (!v49)
          {
            goto LABEL_99;
          }

          v50 = v16[7];
          v51 = *(a5 + 64);
          *v75 = 136447747;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v50;
          *&v75[32] = 2160;
          *&v75[34] = 1752392040;
          *&v75[42] = 1041;
          *&v75[44] = 4;
          *&v75[48] = 2097;
          *&v75[50] = v51;
          *&v75[58] = 2082;
          *&v75[60] = v46;
          v52 = "%{public}s: registration for host %{private, mask.hash}s address %{private, mask.hash, network:in_addr}.4P%{public}s";
          v53 = v48;
          v54 = 68;
          break;
        default:
          if (!v49)
          {
            goto LABEL_99;
          }

          v66 = v16[7];
          *v75 = 136447235;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v66;
          *&v75[32] = 1024;
          *&v75[34] = v47;
          *&v75[38] = 2082;
          *&v75[40] = v46;
          v52 = "%{public}s: registration for host %{private, mask.hash}s unknown record type %d %{public}s";
          v53 = v48;
          v54 = 48;
          break;
      }

      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, v75, v54);
      if (!v24)
      {
        goto LABEL_116;
      }

LABEL_100:
      v68 = *v24;
      if (*v24)
      {
        v69 = global_os_log;
        if (v68 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *v75 = 136447490;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 1024;
          *&v75[14] = v68;
          *&v75[18] = 2048;
          *&v75[20] = v24;
          *&v75[28] = 2080;
          *&v75[30] = "update";
          *&v75[38] = 2080;
          *&v75[40] = "srp-mdns-proxy.c";
          *&v75[48] = 1024;
          *&v75[50] = 2682;
          v22 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_136;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136447490;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 1024;
          *&v75[14] = v68;
          *&v75[18] = 2048;
          *&v75[20] = v24;
          *&v75[28] = 2080;
          *&v75[30] = "update";
          *&v75[38] = 2080;
          *&v75[40] = "srp-mdns-proxy.c";
          *&v75[48] = 1024;
          *&v75[50] = 2682;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v75, 0x36u);
          v68 = *v24;
        }

        *v24 = v68 - 1;
        if (v68 == 1)
        {
          v70 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 136447234;
            *&v75[4] = "register_host_record_completion";
            *&v75[12] = 2048;
            *&v75[14] = v24;
            *&v75[22] = 2080;
            *&v75[24] = "update";
            *&v75[32] = 2080;
            *&v75[34] = "srp-mdns-proxy.c";
            *&v75[42] = 1024;
            *&v75[44] = 2682;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v75, 0x30u);
          }

          ++adv_update_finalized;
          adv_update_finalize(v24);
        }

LABEL_116:
        if (!srp_log_ref_check(a5, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2685))
        {
          return;
        }

        v71 = *a5;
        if (!*a5)
        {
          v21 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *v75 = 136447490;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 1024;
          *&v75[14] = 0;
          *&v75[18] = 2048;
          *&v75[20] = a5;
          *&v75[28] = 2080;
          *&v75[30] = "record";
          *&v75[38] = 2080;
          *&v75[40] = "srp-mdns-proxy.c";
          *&v75[48] = 1024;
          *&v75[50] = 2685;
          v22 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_129;
        }

        v69 = global_os_log;
        if (v71 < 10001)
        {
          v72 = v71 - 1;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 136447490;
            *&v75[4] = "register_host_record_completion";
            *&v75[12] = 1024;
            *&v75[14] = v71;
            *&v75[18] = 2048;
            *&v75[20] = a5;
            *&v75[28] = 2080;
            *&v75[30] = "record";
            *&v75[38] = 2080;
            *&v75[40] = "srp-mdns-proxy.c";
            *&v75[48] = 1024;
            *&v75[50] = 2685;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v75, 0x36u);
            v71 = *a5;
          }

          *a5 = v71 - 1;
          if (v71 == 1)
          {
            v73 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *v75 = 136447234;
              *&v75[4] = "register_host_record_completion";
              *&v75[12] = 2048;
              *&v75[14] = a5;
              *&v75[22] = 2080;
              *&v75[24] = "record";
              *&v75[32] = 2080;
              *&v75[34] = "srp-mdns-proxy.c";
              *&v75[42] = 1024;
              *&v75[44] = 2685;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v75, 0x30u);
            }

            ++adv_record_finalized;
            adv_record_finalize(a5);
          }

          srp_log_ref_final(a5, v72, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2685);
          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_143:
          abort();
        }

        *v75 = 136447490;
        *&v75[4] = "register_host_record_completion";
        *&v75[12] = 1024;
        *&v75[14] = v71;
        *&v75[18] = 2048;
        *&v75[20] = a5;
        *&v75[28] = 2080;
        *&v75[30] = "record";
        *&v75[38] = 2080;
        *&v75[40] = "srp-mdns-proxy.c";
        *&v75[48] = 1024;
        *&v75[50] = 2685;
        v22 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_136:
        v74 = v69;
        goto LABEL_142;
      }

      v35 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_143;
      }

      *v75 = 136447490;
      *&v75[4] = "register_host_record_completion";
      *&v75[12] = 1024;
      *&v75[14] = 0;
      *&v75[18] = 2048;
      *&v75[20] = v24;
      *&v75[28] = 2080;
      *&v75[30] = "update";
      *&v75[38] = 2080;
      *&v75[40] = "srp-mdns-proxy.c";
      *&v75[48] = 1024;
      *&v75[50] = 2682;
      v22 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_139;
    }

    v36 = *(a5 + 72);
    v37 = global_os_log;
    v38 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    switch(v36)
    {
      case 28:
        if (v38)
        {
          v56 = v16[7];
          v57 = *(a5 + 64);
          v58 = *v57;
          if ((v58 & 0xFE) == 0xFC)
          {
            v59 = "ULA: ";
          }

          else if (v58 == 254 && (v57[1] & 0xC0) == 0x80)
          {
            v59 = "LUA: ";
          }

          else if ((v58 & 0xE0) == 0x20)
          {
            v59 = "GUA: ";
          }

          else
          {
            v59 = "";
          }

          *v75 = 136449539;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v56;
          *&v75[32] = 2082;
          *&v75[34] = v59;
          *&v75[42] = 2160;
          *&v75[44] = 1752392040;
          *&v75[52] = 1041;
          *&v75[54] = 6;
          *&v75[58] = 2097;
          *&v75[60] = v57;
          v76 = 2160;
          v77 = 1752392040;
          v78 = 1042;
          v79 = 2;
          v80 = 2098;
          v81 = v57 + 6;
          v82 = 2160;
          v83 = 1752392040;
          v84 = 1041;
          v85 = 8;
          v86 = 2097;
          v87 = v57 + 8;
          v88 = 1024;
          LODWORD(v89) = a4;
          v41 = "%{public}s: registration for host %{private, mask.hash}s address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} failed, error code = %d.";
          v42 = v37;
          v43 = 126;
          goto LABEL_92;
        }

        break;
      case 25:
        if (v38)
        {
          v55 = v16[7];
          *v75 = 136446979;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v55;
          *&v75[32] = 1024;
          *&v75[34] = a4;
          v41 = "%{public}s: registration for host %{private, mask.hash}s key failed, error code = %d.";
          v42 = v37;
          v43 = 38;
          goto LABEL_92;
        }

        break;
      case 1:
        if (v38)
        {
          v39 = v16[7];
          v40 = *(a5 + 64);
          *v75 = 136447747;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v39;
          *&v75[32] = 2160;
          *&v75[34] = 1752392040;
          *&v75[42] = 1041;
          *&v75[44] = 4;
          *&v75[48] = 2097;
          *&v75[50] = v40;
          *&v75[58] = 1024;
          *&v75[60] = a4;
          v41 = "%{public}s: registration for host %{private, mask.hash}s address %{private, mask.hash, network:in_addr}.4P failed, error code = %d.";
          v42 = v37;
          v43 = 64;
LABEL_92:
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, v75, v43);
        }

        break;
      default:
        if (v38)
        {
          v60 = v16[7];
          *v75 = 136447235;
          *&v75[4] = "register_host_record_completion";
          *&v75[12] = 2160;
          *&v75[14] = 1752392040;
          *&v75[22] = 2081;
          *&v75[24] = v60;
          *&v75[32] = 1024;
          *&v75[34] = v36;
          *&v75[38] = 1024;
          *&v75[40] = a4;
          v41 = "%{public}s: registration for host %{private, mask.hash}s unknown record type %d failed, error code = %d.";
          v42 = v37;
          v43 = 44;
          goto LABEL_92;
        }

        break;
    }

    if (v24)
    {
      if (a4 == -65548)
      {
        v67 = 6;
      }

      else
      {
        v67 = 2;
      }

      update_failed(v24, v67, 1);
    }

    srp_mdns_shared_record_remove_(v16[1], a5, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2679);
LABEL_99:
    if (!v24)
    {
      goto LABEL_116;
    }

    goto LABEL_100;
  }

  v14 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *v75 = 136446210;
    *&v75[4] = "register_host_record_completion";
    v15 = "%{public}s: null record";
    goto LABEL_26;
  }
}

BOOL srp_mdns_cancel_previous_record(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v9 = v5 == a3;
    if (v5 == a3)
    {
      v11 = __str;
      snprintf(__str, 0x28uLL, ", result code = %d", a4);
      v10 = "ended";
    }

    else
    {
      v10 = "removed";
      v11 = "";
    }

    v12 = *(a2 + 72);
    v13 = global_os_log;
    v14 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    switch(v12)
    {
      case 28:
        if (v14)
        {
          v21 = *(a1 + 56);
          v22 = *(a2 + 64);
          v23 = *v22;
          if ((v23 & 0xFE) == 0xFC)
          {
            v24 = "ULA: ";
          }

          else if (v23 == 254 && (v22[1] & 0xC0) == 0x80)
          {
            v24 = "LUA: ";
          }

          else if ((v23 & 0xE0) == 0x20)
          {
            v24 = "GUA: ";
          }

          else
          {
            v24 = "";
          }

          *buf = 136450051;
          v28 = "srp_mdns_cancel_previous_record";
          v29 = 2082;
          v30 = a5;
          v31 = 2160;
          v32 = 1752392040;
          v33 = 2081;
          v34 = v21;
          v35 = 2082;
          *v36 = v24;
          *&v36[8] = 2160;
          *&v36[10] = 1752392040;
          *&v36[18] = 1041;
          *&v36[20] = 6;
          v37 = 2097;
          v38 = v22;
          v39 = 2160;
          v40 = 1752392040;
          v41 = 1042;
          v42 = 2;
          v43 = 2098;
          v44 = v22 + 6;
          v45 = 2160;
          v46 = 1752392040;
          v47 = 1041;
          v48 = 8;
          v49 = 2097;
          v50 = v22 + 8;
          v51 = 2082;
          v52 = v10;
          v53 = 2082;
          v54 = v11;
          v17 = "%{public}s: %{public}s: previous registration for host %{private, mask.hash}s address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}%{public}s%{public}s.";
          v18 = v13;
          v19 = 150;
          goto LABEL_25;
        }

        break;
      case 25:
        if (v14)
        {
          v20 = *(a1 + 56);
          *buf = 136447491;
          v28 = "srp_mdns_cancel_previous_record";
          v29 = 2082;
          v30 = a5;
          v31 = 2160;
          v32 = 1752392040;
          v33 = 2081;
          v34 = v20;
          v35 = 2082;
          *v36 = v10;
          *&v36[8] = 2082;
          *&v36[10] = v11;
          v17 = "%{public}s: %{public}s: previous registration for host %{private, mask.hash}s key %{public}s%{public}s.";
          v18 = v13;
          v19 = 62;
          goto LABEL_25;
        }

        break;
      case 1:
        if (v14)
        {
          v15 = *(a1 + 56);
          v16 = *(a2 + 64);
          *buf = 136448259;
          v28 = "srp_mdns_cancel_previous_record";
          v29 = 2082;
          v30 = a5;
          v31 = 2160;
          v32 = 1752392040;
          v33 = 2081;
          v34 = v15;
          v35 = 2160;
          *v36 = 1752392040;
          *&v36[8] = 1041;
          *&v36[10] = 4;
          *&v36[14] = 2097;
          *&v36[16] = v16;
          v37 = 2082;
          v38 = v10;
          v39 = 2082;
          v40 = v11;
          v17 = "%{public}s: %{public}s: previous registration for host %{private, mask.hash}s address %{private, mask.hash, network:in_addr}.4P%{public}s%{public}s.";
          v18 = v13;
          v19 = 88;
LABEL_25:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }

        break;
      default:
        if (v14)
        {
          v25 = *(a1 + 56);
          *buf = 136447747;
          v28 = "srp_mdns_cancel_previous_record";
          v29 = 2082;
          v30 = a5;
          v31 = 2160;
          v32 = 1752392040;
          v33 = 2081;
          v34 = v25;
          v35 = 1024;
          *v36 = v12;
          *&v36[4] = 2082;
          *&v36[6] = v10;
          *&v36[14] = 2082;
          *&v36[16] = v11;
          v17 = "%{public}s: %{public}s: registration for host %{private, mask.hash}s unknown record type %d%{public}s%{public}s.";
          v18 = v13;
          v19 = 68;
          goto LABEL_25;
        }

        break;
    }

    srp_mdns_shared_record_remove_(*(a1 + 8), a2, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 2497);
    return v9;
  }

  return 0;
}

void srp_mdns_record_disconnect(uint64_t a1)
{
  v2 = srp_servers;
  *(srp_servers + 413) = 0;
  v3 = service_disconnected(v2, *(v2 + 16), a1);
  v4 = global_os_log;
  if (a1 && (v3 & 1) == 0)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446466;
      v6 = "srp_mdns_record_disconnect";
      v7 = 2048;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%{public}s: record %p was not seen", &v5, 0x16u);
    }

    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "srp_mdns_record_disconnect";
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: successfully disconnected services: %p", &v5, 0x16u);
  }
}

void srp_ml_eid_mapping_callback(void *a1, int a2)
{
  v4 = a1[2];
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      if (!v6)
      {
        goto LABEL_45;
      }

      v7 = a1[8];
      v8 = *v7;
      if ((v8 & 0xFE) == 0xFC)
      {
        v9 = "ULA: ";
      }

      else if (v8 == 254 && (v7[1] & 0xC0) == 0x80)
      {
        v9 = "LUA: ";
      }

      else if ((v8 & 0xE0) == 0x20)
      {
        v9 = "GUA: ";
      }

      else
      {
        v9 = "";
      }

      v19 = *(v4 + 48);
      v31 = 136449539;
      v32 = "srp_ml_eid_mapping_callback";
      v33 = 2082;
      *v34 = v9;
      *&v34[8] = 2160;
      *&v34[10] = 1752392040;
      *&v34[18] = 1041;
      *&v34[20] = 6;
      *&v34[24] = 2097;
      *&v34[26] = v7;
      v35 = 2160;
      v36 = 1752392040;
      v37 = 1042;
      v38 = 2;
      v39 = 2098;
      v40 = v7 + 6;
      v41 = 2160;
      v42 = 1752392040;
      v43 = 1041;
      v44 = 8;
      v45 = 2097;
      v46 = v7 + 8;
      v47 = 2160;
      v48 = 1752392040;
      v49 = 2081;
      v50 = v19;
      v51 = 1024;
      v52 = a2;
      v20 = "%{public}s: mapping for address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} to host %{private, mask.hash}s failed: %d";
      v21 = v5;
      v22 = 126;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_45;
      }

      v13 = a1[8];
      v14 = *v13;
      if ((v14 & 0xFE) == 0xFC)
      {
        v15 = "ULA: ";
      }

      else if (v14 == 254 && (v13[1] & 0xC0) == 0x80)
      {
        v15 = "LUA: ";
      }

      else if ((v14 & 0xE0) == 0x20)
      {
        v15 = "GUA: ";
      }

      else
      {
        v15 = "";
      }

      v31 = 136449027;
      v32 = "srp_ml_eid_mapping_callback";
      v33 = 2082;
      *v34 = v15;
      *&v34[8] = 2160;
      *&v34[10] = 1752392040;
      *&v34[18] = 1041;
      *&v34[20] = 6;
      *&v34[24] = 2097;
      *&v34[26] = v13;
      v35 = 2160;
      v36 = 1752392040;
      v37 = 1042;
      v38 = 2;
      v39 = 2098;
      v40 = v13 + 6;
      v41 = 2160;
      v42 = 1752392040;
      v43 = 1041;
      v44 = 8;
      v45 = 2097;
      v46 = v13 + 8;
      v47 = 1024;
      LODWORD(v48) = a2;
      v20 = "%{public}s: orphaned mapping for address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} failed: %d";
      v21 = v5;
      v22 = 106;
    }
  }

  else if (v4)
  {
    if (!v6)
    {
      goto LABEL_45;
    }

    v10 = a1[8];
    v11 = *v10;
    if ((v11 & 0xFE) == 0xFC)
    {
      v12 = "ULA: ";
    }

    else if (v11 == 254 && (v10[1] & 0xC0) == 0x80)
    {
      v12 = "LUA: ";
    }

    else if ((v11 & 0xE0) == 0x20)
    {
      v12 = "GUA: ";
    }

    else
    {
      v12 = "";
    }

    v23 = *(v4 + 48);
    v31 = 136449283;
    v32 = "srp_ml_eid_mapping_callback";
    v33 = 2082;
    *v34 = v12;
    *&v34[8] = 2160;
    *&v34[10] = 1752392040;
    *&v34[18] = 1041;
    *&v34[20] = 6;
    *&v34[24] = 2097;
    *&v34[26] = v10;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 1042;
    v38 = 2;
    v39 = 2098;
    v40 = v10 + 6;
    v41 = 2160;
    v42 = 1752392040;
    v43 = 1041;
    v44 = 8;
    v45 = 2097;
    v46 = v10 + 8;
    v47 = 2160;
    v48 = 1752392040;
    v49 = 2081;
    v50 = v23;
    v20 = "%{public}s: mapping for address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} to host %{private, mask.hash}s succeeded";
    v21 = v5;
    v22 = 120;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_45;
    }

    v16 = a1[8];
    v17 = *v16;
    if ((v17 & 0xFE) == 0xFC)
    {
      v18 = "ULA: ";
    }

    else if (v17 == 254 && (v16[1] & 0xC0) == 0x80)
    {
      v18 = "LUA: ";
    }

    else if ((v17 & 0xE0) == 0x20)
    {
      v18 = "GUA: ";
    }

    else
    {
      v18 = "";
    }

    v31 = 136448771;
    v32 = "srp_ml_eid_mapping_callback";
    v33 = 2082;
    *v34 = v18;
    *&v34[8] = 2160;
    *&v34[10] = 1752392040;
    *&v34[18] = 1041;
    *&v34[20] = 6;
    *&v34[24] = 2097;
    *&v34[26] = v16;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 1042;
    v38 = 2;
    v39 = 2098;
    v40 = v16 + 6;
    v41 = 2160;
    v42 = 1752392040;
    v43 = 1041;
    v44 = 8;
    v45 = 2097;
    v46 = v16 + 8;
    v20 = "%{public}s: mapping for address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} was orphaned.";
    v21 = v5;
    v22 = 100;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v31, v22);
LABEL_45:
  if (!srp_log_ref_check(a1, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 654))
  {
    return;
  }

  v24 = *a1;
  if (!*a1)
  {
    v28 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v31 = 136447490;
    v32 = "srp_ml_eid_mapping_callback";
    v33 = 1024;
    *v34 = 0;
    *&v34[4] = 2048;
    *&v34[6] = a1;
    *&v34[14] = 2080;
    *&v34[16] = "arec";
    *&v34[24] = 2080;
    *&v34[26] = "srp-mdns-proxy.c";
    v35 = 1024;
    LODWORD(v36) = 654;
    v29 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    v30 = v28;
    goto LABEL_60;
  }

  v25 = global_os_log;
  if (v24 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v31 = 136447490;
    v32 = "srp_ml_eid_mapping_callback";
    v33 = 1024;
    *v34 = v24;
    *&v34[4] = 2048;
    *&v34[6] = a1;
    *&v34[14] = 2080;
    *&v34[16] = "arec";
    *&v34[24] = 2080;
    *&v34[26] = "srp-mdns-proxy.c";
    v35 = 1024;
    LODWORD(v36) = 654;
    v29 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v30 = v25;
LABEL_60:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, v29, &v31, 0x36u);
LABEL_61:
    abort();
  }

  v26 = v24 - 1;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136447490;
    v32 = "srp_ml_eid_mapping_callback";
    v33 = 1024;
    *v34 = v24;
    *&v34[4] = 2048;
    *&v34[6] = a1;
    *&v34[14] = 2080;
    *&v34[16] = "arec";
    *&v34[24] = 2080;
    *&v34[26] = "srp-mdns-proxy.c";
    v35 = 1024;
    LODWORD(v36) = 654;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v31, 0x36u);
    v24 = *a1;
  }

  *a1 = v24 - 1;
  if (v24 == 1)
  {
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136447234;
      v32 = "srp_ml_eid_mapping_callback";
      v33 = 2048;
      *v34 = a1;
      *&v34[8] = 2080;
      *&v34[10] = "arec";
      *&v34[18] = 2080;
      *&v34[20] = "srp-mdns-proxy.c";
      *&v34[28] = 1024;
      *&v34[30] = 654;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v31, 0x30u);
    }

    ++adv_record_finalized;
    adv_record_finalize(a1);
  }

  srp_log_ref_final(a1, v26, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 654);
}

void srp_adv_host_context_release(int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "srp_adv_host_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 746;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "srp_adv_host_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 746;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "srp_adv_host_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "host";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 746;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "srp_adv_host_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "host";
      *&v9[18] = 2080;
      *&v9[20] = "srp-mdns-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 746;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++adv_host_finalized;
    adv_host_finalize(a1);
  }
}

void lease_callback(uint64_t a1)
{
  *v48 = 0;
  *&v48[8] = 0;
  gettimeofday(v48, 0);
  v2 = *v48;
  v3 = *&v48[8];
  v4 = host_ready(a1);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v6)
    {
      return;
    }

    *v48 = 136446210;
    *&v48[4] = "lease_callback";
    v9 = "%{public}s: host expired";
    v10 = v5;
    goto LABEL_40;
  }

  v7 = 1000 * v2 + v3 / 1000;
  if (v6)
  {
    v8 = *(a1 + 48);
    *v48 = 136446723;
    *&v48[4] = "lease_callback";
    *&v48[12] = 2160;
    *&v48[14] = 1752392040;
    *&v48[22] = 2081;
    *&v48[24] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s", v48, 0x20u);
  }

  if (*(a1 + 248) < v7)
  {
    delete_host(a1);
    return;
  }

  v11 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 48);
    *v48 = 136446723;
    *&v48[4] = "lease_callback";
    *&v48[12] = 2160;
    *&v48[14] = 1752392040;
    *&v48[22] = 2081;
    *&v48[24] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s is still alive", v48, 0x20u);
  }

  v13 = *(a1 + 104);
  if (!v13)
  {
    v36 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v48 = 136446210;
    *&v48[4] = "lease_callback";
    v9 = "%{public}s: no instances";
    v10 = v36;
LABEL_40:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, v48, 0xCu);
    return;
  }

  LODWORD(v14) = *(v13 + 4);
  if (v14 <= 0)
  {
    v32 = 0;
    v30 = *(a1 + 248);
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *(*(v13 + 8) + 8 * v15);
      if (v16)
      {
        v17 = *(v16 + 15);
        v18 = global_os_log;
        v19 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if (v17 >= v7)
        {
          if (v19)
          {
            v27 = *(a1 + 48);
            v28 = *(v16 + 8);
            v29 = *(v16 + 9);
            *v48 = 136447747;
            *&v48[4] = "lease_callback";
            *&v48[12] = 2160;
            *&v48[14] = 1752392040;
            *&v48[22] = 2081;
            *&v48[24] = v27;
            *&v48[32] = 2160;
            *&v48[34] = 1752392040;
            *&v48[42] = 2081;
            *&v48[44] = v28;
            *&v48[52] = 2160;
            v49 = 1752392040;
            v50 = 2081;
            v51 = v29;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s has not expired", v48, 0x48u);
          }
        }

        else
        {
          if (v19)
          {
            v20 = *(a1 + 48);
            v21 = *(v16 + 8);
            v22 = *(v16 + 9);
            *v48 = 136447747;
            *&v48[4] = "lease_callback";
            *&v48[12] = 2160;
            *&v48[14] = 1752392040;
            *&v48[22] = 2081;
            *&v48[24] = v20;
            *&v48[32] = 2160;
            *&v48[34] = 1752392040;
            *&v48[42] = 2081;
            *&v48[44] = v21;
            *&v48[52] = 2160;
            v49 = 1752392040;
            v50 = 2081;
            v51 = v22;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s has expired", v48, 0x48u);
          }

          v23 = *(v16 + 1);
          if (v23)
          {
            *(v16 + 1) = 0;
            ioloop_dnssd_txn_release_(v23, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1406);
          }

          *(*(*(a1 + 104) + 8) + 8 * v15) = 0;
          v24 = *v16;
          if (!*v16)
          {
            v47 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *v48 = 136447490;
              *&v48[4] = "lease_callback";
              *&v48[12] = 1024;
              *&v48[14] = 0;
              *&v48[18] = 2048;
              *&v48[20] = v16;
              *&v48[28] = 2080;
              *&v48[30] = "instance";
              *&v48[38] = 2080;
              *&v48[40] = "srp-mdns-proxy.c";
              *&v48[48] = 1024;
              *&v48[50] = 1409;
              v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              v46 = v47;
LABEL_60:
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, v45, v48, 0x36u);
            }

LABEL_61:
            abort();
          }

          v25 = global_os_log;
          if (v24 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *v48 = 136447490;
              *&v48[4] = "lease_callback";
              *&v48[12] = 1024;
              *&v48[14] = v24;
              *&v48[18] = 2048;
              *&v48[20] = v16;
              *&v48[28] = 2080;
              *&v48[30] = "instance";
              *&v48[38] = 2080;
              *&v48[40] = "srp-mdns-proxy.c";
              *&v48[48] = 1024;
              *&v48[50] = 1409;
              v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v46 = v25;
              goto LABEL_60;
            }

            goto LABEL_61;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 136447490;
            *&v48[4] = "lease_callback";
            *&v48[12] = 1024;
            *&v48[14] = v24;
            *&v48[18] = 2048;
            *&v48[20] = v16;
            *&v48[28] = 2080;
            *&v48[30] = "instance";
            *&v48[38] = 2080;
            *&v48[40] = "srp-mdns-proxy.c";
            *&v48[48] = 1024;
            *&v48[50] = 1409;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v48, 0x36u);
            v24 = *v16;
          }

          *v16 = v24 - 1;
          if (v24 == 1)
          {
            v26 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 136447234;
              *&v48[4] = "lease_callback";
              *&v48[12] = 2048;
              *&v48[14] = v16;
              *&v48[22] = 2080;
              *&v48[24] = "instance";
              *&v48[32] = 2080;
              *&v48[34] = "srp-mdns-proxy.c";
              *&v48[42] = 1024;
              *&v48[44] = 1409;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v48, 0x30u);
            }

            ++adv_instance_finalized;
            adv_instance_finalize(v16);
          }
        }
      }

      ++v15;
      v13 = *(a1 + 104);
      v14 = *(v13 + 4);
    }

    while (v15 < v14);
    v30 = *(a1 + 248);
    if (v14 < 1)
    {
      v32 = 0;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = *(v13 + 8);
        v34 = *(v33 + 8 * v31);
        if (v34)
        {
          *(v33 + 8 * v32++) = v34;
          v35 = *(v34 + 120);
          if (v30 >= v35)
          {
            v30 = v35;
          }

          v13 = *(a1 + 104);
        }

        ++v31;
        v14 = *(v13 + 4);
      }

      while (v31 < v14);
    }
  }

  v37 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a1 + 48);
    *v48 = 136446979;
    *&v48[4] = "lease_callback";
    *&v48[12] = 2160;
    *&v48[14] = 1752392040;
    *&v48[22] = 2081;
    *&v48[24] = v38;
    *&v48[32] = 1024;
    *&v48[34] = v14 - v32;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s lost %d instances", v48, 0x26u);
    v13 = *(a1 + 104);
  }

  *(v13 + 4) = v32;
  if ((v30 - v7) >= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v30 - v7;
  }

  ioloop_add_wake_event(*(a1 + 24), a1, lease_callback, srp_adv_host_context_release, v39);
  v40 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *a1;
    *v48 = 136447490;
    *&v48[4] = "lease_callback";
    *&v48[12] = 1024;
    *&v48[14] = v41;
    *&v48[18] = 2048;
    *&v48[20] = a1;
    *&v48[28] = 2080;
    *&v48[30] = "host";
    *&v48[38] = 2080;
    *&v48[40] = "srp-mdns-proxy.c";
    *&v48[48] = 1024;
    *&v48[50] = 1441;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v48, 0x36u);
  }

  v42 = *a1;
  if (*a1)
  {
    v43 = v42 + 1;
    *a1 = v42 + 1;
    if (v42 + 1 >= 10001)
    {
      v44 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *v48 = 136447490;
        *&v48[4] = "lease_callback";
        *&v48[12] = 1024;
        *&v48[14] = v43;
        *&v48[18] = 2048;
        *&v48[20] = a1;
        *&v48[28] = 2080;
        *&v48[30] = "host";
        *&v48[38] = 2080;
        *&v48[40] = "srp-mdns-proxy.c";
        *&v48[48] = 1024;
        *&v48[50] = 1441;
        v45 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        v46 = v44;
        goto LABEL_60;
      }

      goto LABEL_61;
    }
  }

  else
  {
    ++adv_host_created;
    *a1 = 1;
  }
}

void srp_mdns_flush(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "srp_mdns_flush";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: flushing all host entries.", buf, 0xCu);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      v4 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 48);
        v6 = *(v3 + 56);
        *buf = 136447235;
        v10 = "srp_mdns_flush";
        v11 = 2160;
        v12 = 1752392040;
        v13 = 2081;
        v14 = v5;
        v15 = 2160;
        v16 = 1752392040;
        v17 = 2081;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Flushing services and host entry for %{private, mask.hash}s (%{private, mask.hash}s)", buf, 0x34u);
      }

      v7 = *(v3 + 40);
      if (v7)
      {
        update_failed(v7, 5u, 0);
      }

      v8 = *(v3 + 32);
      host_remove(v3);
      v3 = v8;
    }

    while (v8);
  }

  *(a1 + 8) = 0;
}

int main(int argc, const char **argv, const char **envp)
{
  __endptr = 0;
  v5 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x478B488AuLL);
  if (!v5)
  {
    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    *&buf[4] = "server_state_create";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    v51 = 2048;
    v52 = 432;
    v28 = "%{public}s: strict_calloc(%zu, %zu) failed";
    v29 = v31;
    v30 = 32;
    goto LABEL_42;
  }

  v6 = v5;
  v7 = strdup("srp-mdns-proxy");
  if (!v7)
  {
    v27 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      usage();
    }

    *buf = 136446210;
    *&buf[4] = "strict_strdup";
    v28 = "%{public}s: strdup() failed";
    v29 = v27;
    v30 = 12;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_43;
  }

  *v6 = v7;
  *(v6 + 384) = xmmword_100085EF0;
  *(v6 + 404) = 0;
  v8 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "server_state_create";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: priority set to %d", buf, 0x12u);
  }

  srp_servers = v6;
  v9 = _os_feature_enabled_impl();
  *(srp_servers + 412) = v9;
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "disabled";
    if (v9)
    {
      v11 = "enabled";
    }

    *buf = 136446466;
    *&buf[4] = "main";
    *&buf[12] = 2082;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: srp replication is %{public}s", buf, 0x16u);
  }

  v12 = if_nametoindex("lo0");
  v13 = srp_servers;
  *(srp_servers + 368) = v12;
  if (argc < 2)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v15) = 1;
  do
  {
    while (1)
    {
      v16 = v15;
      v17 = argv[v15];
      if (!strcmp(v17, "--max-lease-time"))
      {
        break;
      }

      if (!strcmp(v17, "--min-lease-time"))
      {
        v15 = v15 + 1;
        if (v16 + 1 == argc)
        {
          goto LABEL_44;
        }

        v19 = strtoul(argv[v15], &__endptr, 10);
        v13 = srp_servers;
        *(srp_servers + 388) = v19;
        v20 = __endptr;
        v21 = argv[v15];
LABEL_27:
        if (v20 == v21 || *v20)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }

      if (strcmp(v17, "--log-stderr"))
      {
        if (!strcmp(v17, "--enable-replication"))
        {
          v24 = 1;
        }

        else
        {
          if (strcmp(v17, "--disable-replication"))
          {
            if (strcmp(v17, "--fake-xpanid"))
            {
              goto LABEL_44;
            }

            v22 = v15 + 1;
            if (v15 + 1 == argc)
            {
              goto LABEL_44;
            }

            v23 = strtoul(argv[v22], &__endptr, 16);
            v13 = srp_servers;
            *(srp_servers + 360) = v23;
            v20 = __endptr;
            v21 = argv[v22];
            goto LABEL_27;
          }

          v24 = 0;
        }

        *(v13 + 412) = v24;
        goto LABEL_33;
      }

      LODWORD(v15) = v15 + 1;
      v14 = 1;
      if (v15 >= argc)
      {
        goto LABEL_35;
      }
    }

    v15 = v15 + 1;
    if (v16 + 1 == argc)
    {
      goto LABEL_44;
    }

    v18 = strtoul(argv[v15], &__endptr, 10);
    v13 = srp_servers;
    *(srp_servers + 384) = v18;
    if (__endptr == argv[v15] || *__endptr)
    {
      goto LABEL_44;
    }

LABEL_33:
    LODWORD(v15) = v15 + 1;
  }

  while (v15 < argc);
  if (v14)
  {
LABEL_35:
    putenv("ACTIVITY_LOG_STDERR=1");
  }

LABEL_36:
  v25 = os_log_create("com.apple.srp-mdns-proxy", "0");
  global_os_log = v25;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "main";
    *&buf[12] = 2082;
    *&buf[14] = "Oct 11 2025";
    v51 = 2082;
    v52 = "00:34:03";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: --------------------------------srp-mdns-proxy starting, compiled on %{public}s, %{public}s--------------------------------", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
  *(srp_servers + 376) = *buf;
  ioloop_main_queue = &_dispatch_main_q;
  dispatch_retain(&_dispatch_main_q);
  ifpermit_add_permitted_interface_to_server_(srp_servers, "lo0", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 4471);
  if (srp_mdns_shared_registration_txn_setup(srp_servers))
  {
    dns_service_op_not_to_be_freed = *(*(srp_servers + 16) + 8);
    init_dnssd_proxy(srp_servers);
    if ((v32 & 1) == 0)
    {
      v33 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "main";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: failed to setup dnssd-proxy", buf, 0xCu);
      }
    }

    v34 = srp_servers;
    xpc_service = ioloop_create_xpc_service(srp_servers);
    *(v34 + 160) = xpc_service;
    if (!xpc_service)
    {
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "main";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s: Can't start advertising proxy control server.", buf, 0xCu);
      }
    }

    v48.rlim_cur = 0;
    v48.rlim_max = 0;
    if (getrlimit(8, &v48) < 0)
    {
      v37 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v38 = __error();
        v39 = strerror(*v38);
        *buf = 136446466;
        *&buf[4] = "main";
        *&buf[12] = 2082;
        *&buf[14] = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s: getrlimit failed: %{public}s", buf, 0x16u);
      }
    }

    rlim_cur = v48.rlim_cur;
    if (v48.rlim_cur <= 0x3FF)
    {
      rlim_max = v48.rlim_max;
      if (v48.rlim_max > 0x3FF)
      {
        v48.rlim_cur = 1024;
      }

      else
      {
        v42 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "main";
          *&buf[12] = 2048;
          *&buf[14] = rlim_max;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s: file descriptor hard limit is %llu", buf, 0x16u);
          rlim_cur = v48.rlim_cur;
          rlim_max = v48.rlim_max;
        }

        if (rlim_cur != rlim_max)
        {
          v48.rlim_cur = rlim_max;
        }
      }

      if (setrlimit(8, &v48) < 0)
      {
        v43 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v44 = __error();
          v45 = strerror(*v44);
          *buf = 136446466;
          *&buf[4] = "main";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s: setrlimit failed: %{public}s", buf, 0x16u);
        }
      }
    }

    srp_proxy_init();
    v46 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 4585);
    v47 = srp_servers;
    *(srp_servers + 248) = v46;
    *(v47 + 400) = 1;
    object_allocation_stats_dump_callback(v47);
    ioloop();
  }

  return 1;
}

void usage()
{
  v0 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "usage";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: srp-mdns-proxy [--max-lease-time <seconds>] [--min-lease-time <seconds>] [--log-stderr]", &v1, 0xCu);
    v0 = global_os_log;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "usage";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s:                [--enable-replication | --disable-replication]", &v1, 0xCu);
  }

  exit(1);
}

void service_publisher_unadvertise_all(uint64_t a1)
{
  v1 = *(a1 + 80);
  *(a1 + 165) = 0;
  for (i = *(v1 + 8); i; i = *(i + 32))
  {
    v3 = *(i + 40);
    if (v3)
    {
      srp_mdns_update_finished(v3);
    }

    v4 = *(i + 88);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(v4 + 8) + 8 * v5);
        if (v6)
        {
          if (*(v6 + 72) == 28 && *(v6 + 74) == 16)
          {
            v7 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v8 = *(v6 + 64);
              v9 = *v8;
              v10 = "ULA: ";
              if ((v9 & 0xFE) != 0xFC)
              {
                if (v9 != 254 || (v10 = "LUA: ", (v8[1] & 0xC0) != 0x80))
                {
                  v10 = "";
                  if ((v9 & 0xE0) == 0x20)
                  {
                    v10 = "GUA: ";
                  }
                }
              }

              v11 = *(a1 + 72);
              v12 = *(i + 48);
              v13 = *(v6 + 8);
              *buf = 136450051;
              v27 = "service_publisher_unadvertise_all";
              v28 = 2082;
              v29 = v11;
              v30 = 2160;
              v31 = 1752392040;
              v32 = 2081;
              v33 = v12;
              v34 = 2082;
              v35 = v10;
              v36 = 2160;
              v37 = 1752392040;
              v38 = 1041;
              *v39 = 6;
              *&v39[4] = 2097;
              *&v39[6] = v8;
              *&v39[14] = 2160;
              *&v39[16] = 1752392040;
              v40 = 1042;
              v41 = 2;
              v42 = 2098;
              v43 = v8 + 6;
              v44 = 2160;
              v45 = 1752392040;
              v46 = 1041;
              v47 = 8;
              v48 = 2097;
              v49 = v8 + 8;
              v50 = 2048;
              v51 = v6;
              v52 = 2048;
              v53 = v13;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s unadvertising %{private, mask.hash}s IN AAAA {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} rec %p rref %p", buf, 0x96u);
            }
          }

          srp_mdns_shared_record_remove_(v1, v6, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 180);
          srp_mdns_shared_record_remove_(v1, v6, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 181);
          DNSServiceReconfirmRecord(*(v1 + 368), *(i + 48), *(v6 + 72), 1u, *(v6 + 74), *(v6 + 64), v14);
          v4 = *(i + 88);
        }

        ++v5;
      }

      while (v5 < *(v4 + 4));
    }

    v15 = *(i + 96);
    if (v15)
    {
      srp_mdns_shared_record_remove_(v1, v15, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 189);
      srp_mdns_shared_record_remove_(v1, *(i + 96), 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 190);
    }

    v16 = *(i + 104);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(*(v16 + 8) + 8 * v17);
        if (v18)
        {
          v19 = v18[1];
          if (v19)
          {
            v20 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(a1 + 72);
              v22 = v18[8];
              v23 = v18[9];
              v24 = *(v19 + 8);
              *buf = 136448003;
              v27 = "service_publisher_unadvertise_all";
              v28 = 2082;
              v29 = v21;
              v30 = 2160;
              v31 = 1752392040;
              v32 = 2081;
              v33 = v22;
              v34 = 2160;
              v35 = 1752392040;
              v36 = 2081;
              v37 = v23;
              v38 = 2048;
              *v39 = v18;
              *&v39[8] = 2048;
              *&v39[10] = v24;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s unadvertising %{private, mask.hash}s.%{private, mask.hash}s instance %p sdref %p", buf, 0x52u);
              v19 = v18[1];
            }

            ioloop_dnssd_txn_cancel(v19);
            ioloop_dnssd_txn_release_(v18[1], "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 199);
            v18[1] = 0;
            v16 = *(i + 104);
          }
        }

        ++v17;
      }

      while (v17 < *(v16 + 4));
    }
  }
}

void service_publisher_re_advertise_matching(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v41 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v42 = *(a1 + 72);
    *buf = 136446466;
    v52 = "service_publisher_re_advertise_matching";
    v53 = 2082;
    *v54 = v42;
    v43 = "%{public}s: %{public}s publisher is in an invalid state, so we shouldn't re-advertise anything.";
    v44 = v41;
    v45 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_63;
  }

  v2 = *(a1 + 80);
  if (srp_mdns_shared_registration_txn_setup(v2))
  {
    if (*(a1 + 136))
    {
      v3 = *(v2 + 8);
      if (!v3)
      {
        goto LABEL_58;
      }

      context = 136449795;
      while (1)
      {
        v4 = *(v3 + 88);
        if (!v4 || (LODWORD(v5) = *(v4 + 4), v5 < 1))
        {
LABEL_54:
          if (!*(*(a1 + 80) + 312))
          {
            v39 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(v3 + 48);
              *buf = 136446723;
              v52 = "service_publisher_re_advertise_matching";
              v53 = 2160;
              *v54 = 1752392040;
              *&v54[8] = 2081;
              *&v54[10] = v40;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s has no address on current mesh-local prefix", buf, 0x20u);
            }
          }

          goto LABEL_57;
        }

        v6 = 0;
        v7 = 0;
        while (2)
        {
          v8 = *(v4 + 8);
          while (1)
          {
            v9 = *(v8 + 8 * v6);
            if (!v9 || *(v9 + 72) != 28 || *(v9 + 74) != 16)
            {
              goto LABEL_21;
            }

            v10 = *(a1 + 80);
            v11 = *(v9 + 64);
            if (!v10[39])
            {
              break;
            }

            v13 = v10[15];
            v12 = v10[16];
            if (v13 == *v11 && v12 == *(v11 + 1))
            {
              v15 = "re-advertise WED mle-id ";
              goto LABEL_24;
            }

LABEL_21:
            if (++v6 >= v5)
            {
              if ((v7 & 1) == 0)
              {
                goto LABEL_54;
              }

              goto LABEL_34;
            }
          }

          if (**(a1 + 136) != *v11)
          {
            goto LABEL_21;
          }

          v15 = "re-advertise ml-eid ";
LABEL_24:
          v16 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v11;
            v18 = "ULA: ";
            if ((v17 & 0xFE) != 0xFC)
            {
              if (v17 != 254 || (v18 = "LUA: ", (v11[1] & 0xC0) != 0x80))
              {
                v18 = "";
                if ((v17 & 0xE0) == 0x20)
                {
                  v18 = "GUA: ";
                }
              }
            }

            v19 = *(a1 + 72);
            v20 = *(v3 + 48);
            *buf = context;
            v52 = "service_publisher_re_advertise_matching";
            v53 = 2082;
            *v54 = v19;
            *&v54[8] = 2082;
            *&v54[10] = v15;
            *&v54[18] = 2160;
            *&v54[20] = 1752392040;
            *&v54[28] = 2081;
            *&v54[30] = v20;
            *&v54[38] = 2082;
            *v55 = v18;
            *&v55[8] = 2160;
            *&v55[10] = 1752392040;
            v56 = 1041;
            *v57 = 6;
            *&v57[4] = 2097;
            *&v57[6] = v11;
            v58 = 2160;
            v59 = 1752392040;
            v60 = 1042;
            v61 = 2;
            v62 = 2098;
            v63 = v11 + 6;
            v64 = 2160;
            v65 = 1752392040;
            v66 = 1041;
            v67 = 8;
            v68 = 2097;
            v69 = v11 + 8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s %{public}s%{private, mask.hash}s IN AAAA {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0x8Cu);
          }

          service_publisher_re_advertise_record(v2, v3, v9, *(a1 + 165));
          v4 = *(v3 + 88);
          ++v6;
          v5 = *(v4 + 4);
          v7 = 1;
          if (v6 < v5)
          {
            continue;
          }

          break;
        }

LABEL_34:
        v21 = *(v3 + 96);
        if (v21)
        {
          service_publisher_re_advertise_record(v2, v3, v21, *(a1 + 165));
        }

        v22 = *(v3 + 104);
        if (v22 && *(v22 + 4) >= 1)
        {
          v23 = 0;
          do
          {
            v24 = *(*(v22 + 8) + 8 * v23);
            if (v24 && !*(v24 + 8))
            {
              sdRef = *(*(v2 + 16) + 8);
              v25 = srp_message_tsr_attribute_generate(0, *(v3 + 176), v70);
              v26 = DNSServiceRegisterWithAttribute(&sdRef, *(v2 + 368), *(v24 + 64), *(v24 + 72), 0, *(v3 + 56), (bswap32(*(v24 + 80)) >> 16), *(v24 + 96), *(v24 + 88), v25, service_publisher_instance_callback, v24, context);
              v27 = global_os_log;
              v28 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
              if (v26)
              {
                if (v28)
                {
                  v29 = *(v24 + 64);
                  v30 = *(v24 + 72);
                  v31 = *(v3 + 56);
                  *buf = 136447747;
                  v52 = "service_publisher_re_advertise_instance";
                  v53 = 2082;
                  *v54 = v29;
                  *&v54[8] = 2082;
                  *&v54[10] = v30;
                  *&v54[18] = 2160;
                  *&v54[20] = 1752392040;
                  *&v54[28] = 2081;
                  *&v54[30] = v31;
                  *&v54[38] = 1024;
                  *v55 = v26;
                  *&v55[4] = 2048;
                  *&v55[6] = v24;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister failed: %{public}s.%{public}s host %{private, mask.hash}s: %d (instance %p)", buf, 0x44u);
                }
              }

              else
              {
                if (v28)
                {
                  v32 = *(v24 + 64);
                  v33 = *(v24 + 72);
                  v34 = *(v3 + 56);
                  *buf = 136448003;
                  v52 = "service_publisher_re_advertise_instance";
                  v53 = 2082;
                  *v54 = v32;
                  *&v54[8] = 2082;
                  *&v54[10] = v33;
                  *&v54[18] = 2160;
                  *&v54[20] = 1752392040;
                  *&v54[28] = 2081;
                  *&v54[30] = v34;
                  *&v54[38] = 2082;
                  *v55 = v70;
                  *&v55[8] = 2048;
                  *&v55[10] = v24;
                  v56 = 2048;
                  *v57 = sdRef;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister succeeded: %{public}s.%{public}s host %{private, mask.hash}s at %{public}s (instance %p sdref %p)", buf, 0x52u);
                }

                *(v24 + 8) = ioloop_dnssd_txn_add_subordinate_(sdRef, v24, adv_instance_context_release, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 286);
                *(v24 + 16) = *(v2 + 16);
                v35 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = *v24;
                  *buf = 136447490;
                  v52 = "adv_instance_retain_";
                  v53 = 1024;
                  *v54 = v36;
                  *&v54[4] = 2048;
                  *&v54[6] = v24;
                  *&v54[14] = 2080;
                  *&v54[16] = "instance";
                  *&v54[24] = 2080;
                  *&v54[26] = "service-publisher.c";
                  *&v54[34] = 1024;
                  *&v54[36] = 293;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                }

                v37 = *v24;
                if (!*v24)
                {
                  ++adv_instance_created;
                  v37 = *v24;
                }

                v38 = v37 + 1;
                *v24 = v37 + 1;
                if (v37 + 1 >= 10001)
                {
                  v48 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136447490;
                    v52 = "adv_instance_retain_";
                    v53 = 1024;
                    *v54 = v38;
                    *&v54[4] = 2048;
                    *&v54[6] = v24;
                    *&v54[14] = 2080;
                    *&v54[16] = "instance";
                    *&v54[24] = 2080;
                    *&v54[26] = "service-publisher.c";
                    *&v54[34] = 1024;
                    *&v54[36] = 293;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                  }

                  abort();
                }
              }

              DNSServiceAttributeDeallocate(v25);
              v22 = *(v3 + 104);
            }

            ++v23;
          }

          while (v23 < *(v22 + 4));
        }

LABEL_57:
        v3 = *(v3 + 32);
        if (!v3)
        {
LABEL_58:
          *(a1 + 165) = 1;
          return;
        }
      }
    }

    v46 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v47 = *(a1 + 72);
      *buf = 136446466;
      v52 = "service_publisher_re_advertise_matching";
      v53 = 2082;
      *v54 = v47;
      v43 = "%{public}s: %{public}s listener address should not be NULL here.";
      v44 = v46;
      v45 = OS_LOG_TYPE_FAULT;
LABEL_63:
      _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, 0x16u);
    }
  }
}

void service_publisher_re_advertise_record(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a2 + 8);
  v8 = *(*(v7 + 16) + 8);
  v9 = (a3 + 8);
  v10 = *(a3 + 8);
  if (v10)
  {
    if (*(a3 + 24) == *(a1 + 16))
    {
      if ((a4 & 1) == 0)
      {
        v11 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a2 + 56);
          *buf = 136446978;
          v28 = "service_publisher_re_advertise_record";
          v29 = 2082;
          *v30 = v12;
          *&v30[8] = 2048;
          *&v30[10] = a3;
          *&v30[18] = 2048;
          *&v30[20] = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: host is already registered: %{public}s (record %p rref %p)", buf, 0x2Au);
        }
      }

      return;
    }

    v13 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a2 + 56);
      *buf = 136446978;
      v28 = "service_publisher_re_advertise_record";
      v29 = 2082;
      *v30 = v14;
      *&v30[8] = 2048;
      *&v30[10] = a3;
      *&v30[18] = 2048;
      *&v30[20] = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: host registration is stale: %{public}s (record %p rref %p)", buf, 0x2Au);
      v7 = *(a2 + 8);
    }

    srp_mdns_shared_record_remove_(v7, a3, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 337);
    srp_mdns_shared_record_remove_(*(a2 + 8), a3, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 338);
  }

  v15 = srp_message_tsr_attribute_generate(0, *(a2 + 176), v26 + 4);
  v16 = DNSServiceRegisterRecordWithAttribute(v8, v9, *(a1 + 368), *(a2 + 56), *(a3 + 72), *(a3 + 74), *(a3 + 64), v15, service_publisher_record_callback, a3, v26[0], v26[1], v26[2]);
  v17 = global_os_log;
  v18 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = *(a2 + 48);
      *buf = 136446978;
      v28 = "service_publisher_re_advertise_record";
      v29 = 2082;
      *v30 = v19;
      *&v30[8] = 1024;
      *&v30[10] = v16;
      *&v30[14] = 2048;
      *&v30[16] = a3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegisterRecord failed on host %{public}s: %d (record %p)", buf, 0x26u);
    }
  }

  else
  {
    if (v18)
    {
      v20 = *(a2 + 48);
      v21 = *(a3 + 8);
      *buf = 136447234;
      v28 = "service_publisher_re_advertise_record";
      v29 = 2082;
      *v30 = v20;
      *&v30[8] = 2082;
      *&v30[10] = v26 + 4;
      *&v30[18] = 2048;
      *&v30[20] = a3;
      *&v30[28] = 2048;
      *&v30[30] = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegisterRecord succeeded on host %{public}s at %{public}s (record %p rref %p)", buf, 0x34u);
      v17 = global_os_log;
    }

    *(a3 + 24) = *(*(a2 + 8) + 16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a3;
      *buf = 136447490;
      v28 = "adv_record_retain_";
      v29 = 1024;
      *v30 = v22;
      *&v30[4] = 2048;
      *&v30[6] = a3;
      *&v30[14] = 2080;
      *&v30[16] = "record";
      *&v30[24] = 2080;
      *&v30[26] = "service-publisher.c";
      *&v30[34] = 1024;
      *&v30[36] = 361;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v23 = *a3;
    if (*a3)
    {
      v24 = v23 + 1;
      *a3 = v23 + 1;
      if (v23 + 1 >= 10001)
      {
        v25 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v28 = "adv_record_retain_";
          v29 = 1024;
          *v30 = v24;
          *&v30[4] = 2048;
          *&v30[6] = a3;
          *&v30[14] = 2080;
          *&v30[16] = "record";
          *&v30[24] = 2080;
          *&v30[26] = "service-publisher.c";
          *&v30[34] = 1024;
          *&v30[36] = 361;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++adv_record_created;
      v24 = 1;
      *a3 = 1;
    }

    srp_log_ref_final(a3, v24, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 361);
  }

  DNSServiceAttributeDeallocate(v15);
}

void service_publisher_instance_callback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t *a7)
{
  if (!srp_mdns_cancel_previous_instance(a7[5], a7, a1, a6, a3, "cache"))
  {
    v12 = global_os_log;
    v13 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v13)
      {
        v14 = a7[1];
        if (v14)
        {
          v14 = *(v14 + 8);
        }

        v19 = 136448003;
        v20 = "service_publisher_instance_callback";
        v21 = 2082;
        v22 = a4;
        v23 = 2082;
        v24 = a5;
        v25 = 2160;
        v26 = 1752392040;
        v27 = 2081;
        v28 = a6;
        v29 = 1024;
        *v30 = a3;
        *&v30[4] = 2048;
        *&v30[6] = a7;
        *&v30[14] = 2048;
        *&v30[16] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister failed: %{public}s.%{public}s host %{private, mask.hash}s: %d (instance %p sdref %p)", &v19, 0x4Eu);
      }

      ioloop_dnssd_txn_cancel(a7[1]);
      ioloop_dnssd_txn_release_(a7[1], "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 222);
      a7[1] = 0;
    }

    else if (v13)
    {
      v16 = a7[8];
      v15 = a7[9];
      v17 = *(a7[5] + 56);
      v18 = a7[1];
      if (v18)
      {
        v18 = *(v18 + 8);
      }

      v19 = 136447747;
      v20 = "service_publisher_instance_callback";
      v21 = 2082;
      v22 = v16;
      v23 = 2082;
      v24 = v15;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2081;
      v28 = v17;
      v29 = 2048;
      *v30 = a7;
      *&v30[8] = 2048;
      *&v30[10] = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: DNSServiceRegister succeeded: %{public}s.%{public}s host %{private, mask.hash}s (instance %p sdref %p)", &v19, 0x48u);
    }
  }
}

void service_publisher_record_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v8 = a5[2];
  if (v8)
  {
    v9 = *(v8 + 48);
    if (srp_mdns_cancel_previous_record(v8, a5, a2, a4, "cache"))
    {
      return;
    }
  }

  else
  {
    v9 = "<null>";
  }

  v10 = global_os_log;
  if (a4)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v18 = 136447491;
      v19 = "service_publisher_record_callback";
      v20 = 2160;
      *v21 = 1752392040;
      *&v21[8] = 2081;
      *&v21[10] = v9;
      *&v21[18] = 2048;
      *&v21[20] = a5;
      *&v21[28] = 2048;
      *&v21[30] = a2;
      *&v21[38] = 1024;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: re-registration for %{private, mask.hash}s (record %p rref %p) failed with code %d", &v18, 0x3Au);
    }

    a5[1] = 0;
    a5[3] = 0;
    if (srp_log_ref_check(a5, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 313))
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = global_os_log;
        if (v11 < 10001)
        {
          v13 = v11 - 1;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136447490;
            v19 = "adv_record_release_";
            v20 = 1024;
            *v21 = v11;
            *&v21[4] = 2048;
            *&v21[6] = a5;
            *&v21[14] = 2080;
            *&v21[16] = "record";
            *&v21[24] = 2080;
            *&v21[26] = "service-publisher.c";
            *&v21[34] = 1024;
            *&v21[36] = 313;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
            v11 = *a5;
          }

          *a5 = v11 - 1;
          if (v11 == 1)
          {
            v14 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136447234;
              v19 = "adv_record_release_";
              v20 = 2048;
              *v21 = a5;
              *&v21[8] = 2080;
              *&v21[10] = "record";
              *&v21[18] = 2080;
              *&v21[20] = "service-publisher.c";
              *&v21[28] = 1024;
              *&v21[30] = 313;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v18, 0x30u);
            }

            ++adv_record_finalized;
            adv_record_finalize(a5);
          }

          srp_log_ref_final(a5, v13, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 313);
          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_26:
          abort();
        }

        v18 = 136447490;
        v19 = "adv_record_release_";
        v20 = 1024;
        *v21 = v11;
        *&v21[4] = 2048;
        *&v21[6] = a5;
        *&v21[14] = 2080;
        *&v21[16] = "record";
        *&v21[24] = 2080;
        *&v21[26] = "service-publisher.c";
        *&v21[34] = 1024;
        *&v21[36] = 313;
        v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v17 = v12;
      }

      else
      {
        v15 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_26;
        }

        v18 = 136447490;
        v19 = "adv_record_release_";
        v20 = 1024;
        *v21 = 0;
        *&v21[4] = 2048;
        *&v21[6] = a5;
        *&v21[14] = 2080;
        *&v21[16] = "record";
        *&v21[24] = 2080;
        *&v21[26] = "service-publisher.c";
        *&v21[34] = 1024;
        *&v21[36] = 313;
        v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        v17 = v15;
      }

      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, &v18, 0x36u);
      goto LABEL_26;
    }
  }

  else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136447235;
    v19 = "service_publisher_record_callback";
    v20 = 2160;
    *v21 = 1752392040;
    *&v21[8] = 2081;
    *&v21[10] = v9;
    *&v21[18] = 2048;
    *&v21[20] = a5;
    *&v21[28] = 2048;
    *&v21[30] = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: re-registration for %{private, mask.hash}s (record %p rref %p) succeeded.", &v18, 0x34u);
  }
}

void service_publisher_release_(int *a1, char *a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "service_publisher_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "service_publisher_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "service_publisher_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v11 = 136447234;
      v12 = "service_publisher_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "omw";
      *&v14[18] = 2080;
      *&v14[20] = v9 + 1;
      *&v14[28] = 1024;
      *&v14[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++service_publisher_finalized;
    service_publisher_finalize(a1);
  }
}

void service_publisher_finalize(uint64_t a1)
{
  thread_service_release_(*(a1 + 112), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 496);
  thread_service_release_(*(a1 + 120), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 497);
  v2 = *(a1 + 128);
  if (v2)
  {
    while (1)
    {
      *(a1 + 128) = v2[1];
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v4 = global_os_log;
      if (v3 >= 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v12 = "thread_service_list_release";
          v13 = 1024;
          *v14 = v3;
          *&v14[4] = 2048;
          *&v14[6] = v2;
          *&v14[14] = 2080;
          *&v14[16] = "service";
          *&v14[24] = 2080;
          *&v14[26] = "thread-service.c";
          v15 = 1024;
          v16 = 107;
          v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v10 = v4;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v9, buf, 0x36u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v12 = "thread_service_list_release";
        v13 = 1024;
        *v14 = v3;
        *&v14[4] = 2048;
        *&v14[6] = v2;
        *&v14[14] = 2080;
        *&v14[16] = "service";
        *&v14[24] = 2080;
        *&v14[26] = "thread-service.c";
        v15 = 1024;
        v16 = 107;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v3 = *v2;
      }

      *v2 = v3 - 1;
      if (v3 == 1)
      {
        v5 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v12 = "thread_service_list_release";
          v13 = 2048;
          *v14 = v2;
          *&v14[8] = 2080;
          *&v14[10] = "service";
          *&v14[18] = 2080;
          *&v14[20] = "thread-service.c";
          *&v14[28] = 1024;
          *&v14[30] = 107;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++thread_service_finalized;
        free(v2);
      }

      v2 = *(a1 + 128);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447490;
      v12 = "thread_service_list_release";
      v13 = 1024;
      *v14 = 0;
      *&v14[4] = 2048;
      *&v14[6] = v2;
      *&v14[14] = 2080;
      *&v14[16] = "service";
      *&v14[24] = 2080;
      *&v14[26] = "thread-service.c";
      v15 = 1024;
      v16 = 107;
      v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v10 = v8;
      goto LABEL_22;
    }

LABEL_23:
    abort();
  }

LABEL_11:
  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
    *(a1 + 8) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    free(v7);
    *(a1 + 72) = 0;
  }

  ioloop_wakeup_release_(*(a1 + 88), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 502);

  free(a1);
}

BOOL service_publisher_have_competing_unicast_service(void *a1)
{
  v1 = a1[10];
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v5 = 0;
      while (1)
      {
        if ((*(v3 + 27) & 1) != 0 || *(v3 + 20) != 2)
        {
          goto LABEL_31;
        }

        v6 = a1[14];
        if (v6)
        {
          if (*(v3 + 64) == *(v6 + 64))
          {
            v11 = bswap64(*(v3 + 64));
            v12 = bswap64(*(v6 + 64));
            if (v11 == v12)
            {
              v11 = bswap64(*(v3 + 72));
              v12 = bswap64(*(v6 + 72));
              if (v11 == v12)
              {
                v7 = a1[9];
                v8 = v3;
                if (*(v3 + 80) == *(v6 + 80))
                {
                  v10 = "is the one we are publishing.";
                }

                else
                {
                  v10 = "is on our ml-eid but is not the one we are publishing, so it's stale.";
                }

                goto LABEL_30;
              }
            }

            if (v11 < v12)
            {
              v17 = -1;
            }

            else
            {
              v17 = 1;
            }

            if (*(v3 + 16) == *(v1 + 408))
            {
              v7 = a1[9];
              v8 = v3;
              v10 = "is a stale service published on our rloc16 with a different ml-eid.";
              goto LABEL_30;
            }

            v7 = a1[9];
            v8 = v3;
            if ((v17 & 0x80000000) == 0)
            {
              v10 = "is not ours, and loses.";
              goto LABEL_30;
            }

            v9 = "is not ours, and wins.";
          }

          else
          {
            v7 = a1[9];
            v8 = v3;
            v9 = "is a competing service on an OMR prefix, so it wins.";
          }
        }

        else
        {
          if (*(v3 + 16) == *(v1 + 408) || (v13 = a1[17]) != 0 && ((v15 = *v13, v14 = v13[1], *(v3 + 64) == v15) ? (v16 = *(v3 + 72) == v14) : (v16 = 0), v16))
          {
            v7 = a1[9];
            v8 = v3;
            v10 = "is on our ml-eid or rloc16 but we aren't publishing it, so it's stale.";
LABEL_30:
            thread_service_note(v7, v8, v10);
            goto LABEL_31;
          }

          v7 = a1[9];
          v8 = v3;
          v9 = "is not ours and we aren't publishing.";
        }

        thread_service_note(v7, v8, v9);
        ++v5;
LABEL_31:
        v3 = *(v3 + 8);
        if (!v3)
        {
          return v5 != 0;
        }
      }
    }
  }

  return 0;
}

uint64_t service_publisher_anycast_service_present(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 48);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      LOBYTE(v1) = 0;
      do
      {
        if ((*(v2 + 27) & 1) == 0 && *(v2 + 20) == 3)
        {
          thread_service_note(*(a1 + 72), v2, "is present and supersedes our unicast service");
          LOBYTE(v1) = 1;
        }

        v2 = *(v2 + 8);
      }

      while (v2);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

void service_publisher_wanted_service_added(uint64_t a1)
{
  v2 = state_machine_event_create(19);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_wanted_service_added";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 915;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_wanted_service_added";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 915;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "service_publisher_wanted_service_added";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 915;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "service_publisher_wanted_service_added";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "service-publisher.c";
      *&v11[28] = 1024;
      *&v11[30] = 915;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

void service_publisher_stop_publishing(uint64_t a1)
{
  *(a1 + 163) = 1;
  v2 = state_machine_event_create(14);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_stop_publishing";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 1606;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_stop_publishing";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 1606;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "service_publisher_stop_publishing";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 1606;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "service_publisher_stop_publishing";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "service-publisher.c";
      *&v11[28] = 1024;
      *&v11[30] = 1606;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

void service_publisher_cancel(uint64_t *a1)
{
  ioloop_cancel_wake_event(a1[11]);
  service_publisher_listener_cancel(a1);
  service_tracker_callback_cancel(*(a1[10] + 48), a1);
  thread_tracker_callback_cancel(*(a1[10] + 80), a1);
  v2 = *(a1[10] + 88);
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      v4 = v3 + 3;
      if (v3[3] == a1)
      {
        v5 = v2 + 6;
      }

      else
      {
        do
        {
          v5 = v3;
          v3 = *v3;
          if (!v3)
          {
            goto LABEL_19;
          }
        }

        while (v3[3] != a1);
        v4 = v3 + 3;
      }

      *v5 = *v3;
      v6 = v3[1];
      if (v6)
      {
        v6(*v4);
      }

      free(v3);
      if (!v2[6])
      {
        v7 = *v2;
        if (*v2)
        {
          v8 = global_os_log;
          if (v7 < 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v13 = 136447490;
              v14 = "node_type_tracker_callback_cancel";
              v15 = 1024;
              *v16 = v7;
              *&v16[4] = 2048;
              *&v16[6] = v2;
              *&v16[14] = 2080;
              *&v16[16] = "tracker";
              *&v16[24] = 2080;
              *&v16[26] = "node-type-tracker.c";
              v17 = 1024;
              v18 = 283;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v13, 0x36u);
              v7 = *v2;
            }

            *v2 = v7 - 1;
            if (v7 == 1)
            {
              v9 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v13 = 136447234;
                v14 = "node_type_tracker_callback_cancel";
                v15 = 2048;
                *v16 = v2;
                *&v16[8] = 2080;
                *&v16[10] = "tracker";
                *&v16[18] = 2080;
                *&v16[20] = "node-type-tracker.c";
                *&v16[28] = 1024;
                *&v16[30] = 283;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v13, 0x30u);
              }

              ++node_type_tracker_finalized;
              free(v2);
            }

            goto LABEL_19;
          }

          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            abort();
          }

          v13 = 136447490;
          v14 = "node_type_tracker_callback_cancel";
          v15 = 1024;
          *v16 = v7;
          *&v16[4] = 2048;
          *&v16[6] = v2;
          *&v16[14] = 2080;
          *&v16[16] = "tracker";
          *&v16[24] = 2080;
          *&v16[26] = "node-type-tracker.c";
          v17 = 1024;
          v18 = 283;
          v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v12 = v8;
        }

        else
        {
          v10 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_27;
          }

          v13 = 136447490;
          v14 = "node_type_tracker_callback_cancel";
          v15 = 1024;
          *v16 = 0;
          *&v16[4] = 2048;
          *&v16[6] = v2;
          *&v16[14] = 2080;
          *&v16[16] = "tracker";
          *&v16[24] = 2080;
          *&v16[26] = "node-type-tracker.c";
          v17 = 1024;
          v18 = 283;
          v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          v12 = v10;
        }

        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v11, &v13, 0x36u);
        goto LABEL_27;
      }
    }
  }

LABEL_19:

  state_machine_cancel(a1 + 1);
}

void service_publisher_listener_cancel(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    if ((*(v2 + 424) & 0x800) != 0)
    {
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v11 = *(v2 + 192);
        *v12 = 136446723;
        *&v12[4] = "ioloop_listener_cancel";
        *&v12[12] = 2160;
        *&v12[14] = 1752392040;
        *&v12[22] = 2081;
        *&v12[24] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: cancel on canceled connection %{private, mask.hash}s", v12, 0x20u);
      }
    }

    else
    {
      v3 = *(v2 + 424) | 0x800;
      *(v2 + 424) = v3;
      v4 = *(v2 + 8);
      if (v4)
      {
        nw_listener_cancel(v4);
        v3 = *(v2 + 424);
      }

      if ((v3 & 0x20) == 0 && !*v2 && *(v2 + 148) != -1)
      {
        ioloop_close(v2 + 56);
        if (*(v2 + 248))
        {
          v5 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(v2 + 32);
            *v12 = 136447490;
            *&v12[4] = "ioloop_listener_cancel";
            *&v12[12] = 1024;
            *&v12[14] = v6;
            *&v12[18] = 2048;
            *&v12[20] = v2;
            *&v12[28] = 2080;
            *&v12[30] = "connection";
            *&v12[38] = 2080;
            v13 = "macos-ioloop.c";
            v14 = 1024;
            v15 = 1179;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v12, 0x36u);
          }

          v7 = *(v2 + 32);
          if (v7)
          {
            v8 = v7 + 1;
            *(v2 + 32) = v7 + 1;
            if (v7 + 1 >= 10001)
            {
              v9 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *v12 = 136447490;
                *&v12[4] = "ioloop_listener_cancel";
                *&v12[12] = 1024;
                *&v12[14] = v8;
                *&v12[18] = 2048;
                *&v12[20] = v2;
                *&v12[28] = 2080;
                *&v12[30] = "connection";
                *&v12[38] = 2080;
                v13 = "macos-ioloop.c";
                v14 = 1024;
                v15 = 1179;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", v12, 0x36u);
              }

              abort();
            }
          }

          else
          {
            ++listener_created;
            *(v2 + 32) = 1;
          }

          *v12 = _NSConcreteStackBlock;
          *&v12[8] = 0x40000000;
          *&v12[16] = __ioloop_listener_cancel_block_invoke;
          *&v12[24] = &__block_descriptor_tmp_8_1460;
          *&v12[32] = v2;
          dispatch_async(ioloop_main_queue, v12);
        }
      }
    }

    ioloop_comm_release_(*(a1 + 104), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1733);
    *(a1 + 104) = 0;
  }

  *(a1 + 161) = 0;

  service_publisher_unadvertise_all(a1);
}

void service_publisher_node_type_tracker_callback(uint64_t a1)
{
  v2 = state_machine_event_create(10);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_node_type_tracker_callback";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 976;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_node_type_tracker_callback";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 976;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "service_publisher_node_type_tracker_callback";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 976;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "service_publisher_node_type_tracker_callback";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "service-publisher.c";
      *&v11[28] = 1024;
      *&v11[30] = 976;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

void service_publisher_context_release(int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "service_publisher_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "publisher";
    *&v9[24] = 2080;
    *&v9[26] = "service-publisher.c";
    v10 = 1024;
    v11 = 512;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "service_publisher_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "publisher";
    *&v9[24] = 2080;
    *&v9[26] = "service-publisher.c";
    v10 = 1024;
    v11 = 512;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "service_publisher_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "publisher";
    *&v9[24] = 2080;
    *&v9[26] = "service-publisher.c";
    v10 = 1024;
    v11 = 512;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "service_publisher_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "publisher";
      *&v9[18] = 2080;
      *&v9[20] = "service-publisher.c";
      *&v9[28] = 1024;
      *&v9[30] = 512;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++service_publisher_finalized;
    service_publisher_finalize(a1);
  }
}

void service_publisher_service_tracker_callback(uint64_t a1)
{
  v2 = *(*(a1 + 80) + 80);
  if (v2 && *(v2 + 72))
  {
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 72);
      v11 = 136446466;
      v12 = "service_publisher_service_tracker_callback";
      v13 = 2082;
      *v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s setting seen_service_list to true", &v11, 0x16u);
    }

    *(a1 + 162) = 1;
  }

  v5 = state_machine_event_create(4);
  state_machine_event_deliver(a1 + 8, v5);
  v6 = *v5;
  if (!*v5)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v11 = 136447490;
    v12 = "service_publisher_service_tracker_callback";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 959;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_21;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v11 = 136447490;
    v12 = "service_publisher_service_tracker_callback";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 959;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_22:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "service_publisher_service_tracker_callback";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 959;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *v5;
  }

  *v5 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "service_publisher_service_tracker_callback";
      v13 = 2048;
      *v14 = v5;
      *&v14[8] = 2080;
      *&v14[10] = "event";
      *&v14[18] = 2080;
      *&v14[20] = "service-publisher.c";
      *&v14[28] = 1024;
      *&v14[30] = 959;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++state_machine_event_finalized;
    v9 = *(v5 + 4);
    if (v9)
    {
      v9(v5);
    }

    free(v5);
  }
}

uint64_t service_publisher_action_unpublishing_stale_service(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 2)
  {
    v13 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v21 = 136446466;
    v22 = "service_publisher_action_unpublishing_stale_service";
    v23 = 1024;
    LODWORD(v24) = v2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't service_publisher: %d", &v21, 0x12u);
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      v14 = *(v4 + 40);
      v15 = *(v4 + 8);
      v16 = *(v4 + 24);
      v21 = 136447235;
      v22 = "service_publisher_action_unpublishing_stale_service";
      v23 = 2082;
      v24 = v14;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2081;
      v28 = v15;
      v29 = 2082;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", &v21, 0x34u);
    }

    *(v4 + 152) = 5;
LABEL_19:
    v18 = *(v4 + 120);
    if (v18)
    {
      service_publisher_queue_update(v4, v18, 7);
      thread_service_release_(*(v4 + 120), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 730);
      *(v4 + 120) = 0;
    }

    v19 = *(v4 + 152);
    v20 = arc4random();
    service_publisher_start_wait(v4, ((v20 % (1000 * *(v4 + 152))) >> 1) + 1000 * v19);
    result = service_publisher_can_publish(v4);
    if (result)
    {
      service_publisher_re_advertise_matching(v4);
      return 0;
    }

    return result;
  }

  if (v6)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 8);
    v9 = *(a2 + 8);
    v10 = *(v4 + 24);
    v21 = 136447491;
    v22 = "service_publisher_action_unpublishing_stale_service";
    v23 = 2082;
    v24 = v7;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2081;
    v28 = v8;
    v29 = 2082;
    v30 = v9;
    v31 = 2082;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", &v21, 0x3Eu);
  }

  v11 = *(a2 + 16);
  if (v11 == 1)
  {
    service_tracker_start(*(*(v4 + 80) + 48));
    v17 = *(v4 + 152);
    if (v17 <= 3599)
    {
      *(v4 + 152) = 2 * v17;
    }

    service_publisher_stale_service_present(v4);
    goto LABEL_19;
  }

  if (v11 != 4)
  {
    goto LABEL_9;
  }

  if (service_publisher_stale_service_present(v4))
  {
    v11 = *(a2 + 16);
LABEL_9:
    if (v11 == 7)
    {
      service_publisher_listener_cancel(v4);
      service_publisher_service_unpublish(v4);
      return 1;
    }

    return 0;
  }

  if (!service_publisher_can_publish(v4))
  {
    return 3;
  }

  ioloop_cancel_wake_event(*(v4 + 88));
  return 4;
}

void service_publisher_queue_update(void *a1, int *a2, int a3)
{
  v4 = a2[5];
  if ((v4 - 2) >= 3)
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[9];
      v16 = 136446722;
      v17 = "service_publisher_queue_update";
      v18 = 2082;
      v19 = v15;
      v20 = 1024;
      LODWORD(v21) = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s unsupported service type %d", &v16, 0x1Cu);
    }
  }

  else
  {
    v7 = a1[14];
    if (thread_service_equal(v7, a2))
    {
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[9];
        v16 = 136446722;
        v17 = "service_publisher_queue_update";
        v18 = 2082;
        v19 = v9;
        v20 = 2048;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s published service still present: %p", &v16, 0x20u);
      }
    }

    a2[8] = a3;
    if (a3 == 6)
    {
      v10 = a1[14];
      if (v10)
      {
        thread_service_release_(v10, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 661);
      }

      a1[14] = a2;
      thread_service_retain_(a2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 664);
      *(a1[10] + 423) = 1;
    }

    v11 = (a1 + 16);
    do
    {
      v12 = v11;
      v13 = *v11;
      v11 = (*v11 + 2);
    }

    while (v13);
    *v12 = a2;
    thread_service_retain_(a2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 672);
    service_publisher_queue_run(a1);
  }
}

void service_publisher_start_wait(uint64_t a1, unsigned int a2)
{
  ioloop_add_wake_event(*(a1 + 88), a1, service_publisher_wait_expired, service_publisher_context_release, a2);
  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    *buf = 136447490;
    v9 = "service_publisher_start_wait";
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a1;
    v14 = 2080;
    v15 = "publisher";
    v16 = 2080;
    v17 = "service-publisher.c";
    v18 = 1024;
    v19 = 752;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*a1)
  {
    v5 = *a1 + 1;
    *a1 = v5;
    if (v5 >= 10001)
    {
      v7 = v5;
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v9 = "service_publisher_start_wait";
        v10 = 1024;
        v11 = v7;
        v12 = 2048;
        v13 = a1;
        v14 = 2080;
        v15 = "publisher";
        v16 = 2080;
        v17 = "service-publisher.c";
        v18 = 1024;
        v19 = 752;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++service_publisher_created;
    *a1 = 1;
  }
}

uint64_t service_publisher_can_publish(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = "";
  if (*(a1 + 144) == 2)
  {
    if (*(a1 + 136))
    {
      v4 = "";
    }

    else
    {
      v4 = " / no listener address";
    }

    v5 = *(v2 + 415);
    if (*(v2 + 415))
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    have_competing_unicast_service = service_publisher_have_competing_unicast_service(a1);
    v8 = " / competing present";
    v9 = v5;
    if (have_competing_unicast_service)
    {
      v6 |= 4u;
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = "";
    }

    v55 = v8;
  }

  else
  {
    v9 = *(v2 + 415);
    if (*(v2 + 415))
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    v4 = "";
    LOBYTE(v5) = *(v2 + 415);
    v55 = "";
  }

  v10 = service_publisher_anycast_service_present(a1);
  if (v10)
  {
    v11 = v6 | 0x1000;
  }

  else
  {
    v11 = v6;
  }

  v12 = *(v2 + 80);
  v54 = v10;
  if (v12 && (*(v12 + 72) & 1) != 0)
  {
    v13 = (v10 ^ 1) & v5;
    v14 = "";
  }

  else
  {
    v11 |= 0x2000u;
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 72);
      *buf = 136446466;
      v59 = "service_publisher_can_publish";
      v60 = 2082;
      *v61 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s setting seen_service_list to false", buf, 0x16u);
    }

    v13 = 0;
    *(a1 + 162) = 0;
    v14 = " / not associated ";
  }

  v17 = *(v2 + 88);
  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = 0;
  v19 = *(v17 + 64);
  if (v19 > 2)
  {
    if ((v19 - 3) < 2)
    {
      v57 = 0;
      v18 = 0;
      v56 = 1;
      goto LABEL_38;
    }

    if (v19 != 7)
    {
      if (v19 == 8)
      {
        v57 = 0;
        v56 = 0;
        v18 = 1;
LABEL_38:
        v20 = "";
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v19 = 1;
    goto LABEL_66;
  }

  if (!v19)
  {
LABEL_35:
    v57 = 0;
    v56 = 0;
    v18 = 0;
    v13 = 0;
    v11 |= 0x4000u;
    v20 = " / no node type";
LABEL_39:
    v53 = v20;
    goto LABEL_40;
  }

  if (v19 != 1)
  {
    if (v19 == 2)
    {
      v56 = 0;
      v57 = 0x100000000;
      v18 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v57 = 0;
    v56 = 0;
    v18 = 0;
    goto LABEL_38;
  }

LABEL_66:
  v56 = 0;
  v57 = v19;
  v53 = "";
LABEL_40:
  v21 = *(v2 + 416);
  v22 = v11 | 0x8000;
  if (*(v2 + 416))
  {
    v22 = v11;
  }

  if (!*(a1 + 162))
  {
    v22 |= 0x10000u;
  }

  if (*(a1 + 163))
  {
    v22 |= 0x20000u;
  }

  v23 = (*(a1 + 163) ^ 1) & *(a1 + 162) & v13 & v21;
  if (*(v2 + 312))
  {
    v24 = v23;
  }

  else
  {
    v3 = " / no wed ";
    v24 = (v18 ^ 1) & v23;
  }

  if (((*(v2 + 312) == 0) & v18) != 0)
  {
    v25 = v22 | 0x40000;
  }

  else
  {
    v25 = v22;
  }

  v52 = v9;
  if (*(v2 + 320))
  {
    v26 = *(a1 + 96);
    if (v26)
    {
      ioloop_cancel_wake_event(v26);
      ioloop_wakeup_release_(*(a1 + 96), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1497);
      *(a1 + 96) = 0;
    }

    v27 = "";
  }

  else
  {
    if ((HIDWORD(v57) | v56 | v57) == 1)
    {
      if (!*(a1 + 96))
      {
        v28 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1484);
        *(a1 + 96) = v28;
        ioloop_add_wake_event(v28, a1, service_publisher_sed_timeout_expired, service_publisher_context_release, 0x1F4u);
        v29 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *a1;
          *buf = 136447490;
          v59 = "service_publisher_can_publish";
          v60 = 1024;
          *v61 = v30;
          *&v61[4] = 2048;
          *&v61[6] = a1;
          v62 = 2080;
          v63 = "publisher";
          v64 = 2080;
          v65 = "service-publisher.c";
          v66 = 1024;
          LODWORD(v67) = 1488;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v31 = *a1;
        if (*a1)
        {
          v32 = v31 + 1;
          *a1 = v31 + 1;
          if (v31 + 1 >= 10001)
          {
            v33 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v59 = "service_publisher_can_publish";
              v60 = 1024;
              *v61 = v32;
              *&v61[4] = 2048;
              *&v61[6] = a1;
              v62 = 2080;
              v63 = "publisher";
              v64 = 2080;
              v65 = "service-publisher.c";
              v66 = 1024;
              LODWORD(v67) = 1488;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            }

            abort();
          }
        }

        else
        {
          ++service_publisher_created;
          *a1 = 1;
        }
      }

      v24 = 0;
      v25 |= 0x80000u;
    }

    v27 = " / no neighbor ";
  }

  v34 = *(a1 + 144);
  if (v34 == 3)
  {
    if (*(v2 + 422) == 1)
    {
      goto LABEL_73;
    }

    goto LABEL_75;
  }

  if (v34 == 2)
  {
    if (*(v2 + 421))
    {
LABEL_73:
      v24 = 0;
      v25 |= 0x100000u;
      v35 = " / blocked";
LABEL_76:
      v51 = v35;
      goto LABEL_78;
    }

LABEL_75:
    v35 = "";
    goto LABEL_76;
  }

  v51 = "";
LABEL_78:
  v36 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 72);
    v38 = *(a1 + 162);
    v39 = ": can't publish";
    v40 = *(a1 + 163);
    if (v24)
    {
      v39 = ": can publish";
    }

    *buf = 136453122;
    v59 = "service_publisher_can_publish";
    v60 = 2082;
    *v61 = v37;
    if (v38)
    {
      v41 = "";
    }

    else
    {
      v41 = " / no service list";
    }

    *&v61[8] = 1024;
    v42 = " / anycast present";
    *&v61[10] = v25;
    if (!v54)
    {
      v42 = "";
    }

    v62 = 2082;
    v63 = v39;
    if (v57)
    {
      v43 = " / router ";
    }

    else
    {
      v43 = "";
    }

    v64 = 2082;
    v65 = v41;
    if (v18)
    {
      v44 = " / sleepy router";
    }

    else
    {
      v44 = "";
    }

    v66 = 2082;
    v45 = " / sleepy end device";
    v67 = v55;
    if (!v56)
    {
      v45 = "";
    }

    v68 = 2082;
    v46 = " / end device";
    v69 = "";
    if (!HIDWORD(v57))
    {
      v46 = "";
    }

    v70 = 2082;
    v47 = " / no ml-eid ";
    v71 = "";
    if (v52)
    {
      v47 = "";
    }

    v72 = 2082;
    v73 = v42;
    if (v21)
    {
      v48 = "";
    }

    else
    {
      v48 = " / no interface ";
    }

    v74 = 2082;
    v75 = v14;
    if (v40)
    {
      v49 = " / stopped";
    }

    else
    {
      v49 = "";
    }

    v76 = 2082;
    v77 = v43;
    v78 = 2082;
    v79 = v44;
    v80 = 2082;
    v81 = v45;
    v82 = 2082;
    v83 = v46;
    v84 = 2082;
    v85 = v53;
    v86 = 2082;
    v87 = v47;
    v88 = 2082;
    v89 = v3;
    v90 = 2082;
    v91 = v27;
    v92 = 2082;
    v93 = v48;
    v94 = 2082;
    v95 = v49;
    v96 = 2082;
    v97 = v4;
    v98 = 2082;
    v99 = "";
    v100 = 2082;
    v101 = "";
    v102 = 2082;
    v103 = "";
    v104 = 2082;
    v105 = "";
    v106 = 2082;
    v107 = "";
    v108 = 2082;
    v109 = "";
    v110 = 2082;
    v111 = v51;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s %x%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s", buf, 0x116u);
  }

  return v24;
}

uint64_t service_publisher_stale_service_present(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(v1 + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 144);
  while (1)
  {
    if (*(v3 + 20) != 2 || v5 != 2)
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 112);
    v8 = *(v1 + 417);
    if (v7)
    {
      break;
    }

    if (*(v1 + 417) && *(v3 + 16) == *(v1 + 408))
    {
      thread_service_note(*(a1 + 72), v3, "is on our rloc16 but we aren't publishing it, so it's stale.");
      if (*(a1 + 120))
      {
        return 1;
      }

      goto LABEL_19;
    }

LABEL_16:
    v3 = *(v3 + 8);
    if (!v3)
    {
      return 0;
    }
  }

  if (!*(v1 + 417) || *(v3 + 16) != *(v1 + 408) || thread_service_equal(v3, v7))
  {
    goto LABEL_16;
  }

  thread_service_note(*(a1 + 72), v3, "is on our rloc16 but is not our service, so it's stale.");
  service_for_queue = service_publisher_create_service_for_queue(v3);
  *(a1 + 120) = service_for_queue;
  if (!service_for_queue)
  {
LABEL_19:
    *(a1 + 120) = service_publisher_create_service_for_queue(v3);
  }

  return 1;
}

void service_publisher_service_unpublish(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 164) = 0;
  if (v2)
  {
    service_for_queue = service_publisher_create_service_for_queue(v2);
    service_publisher_queue_update(a1, service_for_queue, 7);
    thread_service_release_(service_for_queue, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 717);

    thread_service_release_(v2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 719);
  }

  else
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 72);
      v6 = 136446466;
      v7 = "service_publisher_service_unpublish";
      v8 = 2082;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s request to unpublished service that's not present", &v6, 0x16u);
    }
  }
}

int *service_publisher_create_service_for_queue(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return thread_service_flag_create_(*(a1 + 16), *(a1 + 18), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 689);
      }

      return 0;
    }

    return thread_service_anycast_create_(*(a1 + 16), *(a1 + 80), *(a1 + 18), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 684);
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return thread_service_unicast_create_(*(a1 + 16), (a1 + 64), (a1 + 80), *(a1 + 18), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 682);
      }

      return 0;
    }

    return thread_service_pref_id_create_(*(a1 + 16), (a1 + 64), (a1 + 68), *(a1 + 18), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 687);
  }
}

void service_publisher_sed_timeout_expired(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  if (v3)
  {
    ioloop_wakeup_release_(v3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 925);
    *(a1 + 96) = 0;
  }

  if (!v2[40])
  {
    v4 = strdup("none");
    if (!v4)
    {
      v5 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446210;
        v12 = "strict_strdup";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: strdup() failed", &v11, 0xCu);
      }

      __break(1u);
      goto LABEL_20;
    }

    v2[40] = v4;
    v2[36] = 0;
    v2[37] = 0;
  }

  v5 = state_machine_event_create(18);
  state_machine_event_deliver(a1 + 8, v5);
  isa = v5->isa;
  if (!LODWORD(v5->isa))
  {
LABEL_20:
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v11 = 136447490;
    v12 = "service_publisher_sed_timeout_expired";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 937;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_24;
  }

  v7 = global_os_log;
  if (isa >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v11 = 136447490;
    v12 = "service_publisher_sed_timeout_expired";
    v13 = 1024;
    *v14 = isa;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 937;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_25:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "service_publisher_sed_timeout_expired";
    v13 = 1024;
    *v14 = isa;
    *&v14[4] = 2048;
    *&v14[6] = v5;
    *&v14[14] = 2080;
    *&v14[16] = "event";
    *&v14[24] = 2080;
    *&v14[26] = "service-publisher.c";
    v15 = 1024;
    v16 = 937;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    isa = v5->isa;
  }

  LODWORD(v5->isa) = isa - 1;
  if (isa == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "service_publisher_sed_timeout_expired";
      v13 = 2048;
      *v14 = v5;
      *&v14[8] = 2080;
      *&v14[10] = "event";
      *&v14[18] = 2080;
      *&v14[20] = "service-publisher.c";
      *&v14[28] = 1024;
      *&v14[30] = 937;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++state_machine_event_finalized;
    v9 = v5[4].isa;
    if (v9)
    {
      v9(v5);
    }

    free(v5);
  }
}

void service_publisher_wait_expired(uint64_t a1)
{
  v2 = state_machine_event_create(1);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_wait_expired";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 744;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "service_publisher_wait_expired";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 744;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "service_publisher_wait_expired";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "service-publisher.c";
    v12 = 1024;
    v13 = 744;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "service_publisher_wait_expired";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "service-publisher.c";
      *&v11[28] = 1024;
      *&v11[30] = 744;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

void service_publisher_queue_run(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = *(a1 + 72);
    *buf = 136446466;
    v31 = "service_publisher_queue_run";
    v32 = 2082;
    *v33 = v13;
    v8 = "%{public}s: %{public}s the queue is empty.";
    goto LABEL_12;
  }

  v3 = *(v2 + 32);
  if ((v3 - 4) < 2)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = *(a1 + 72);
    *buf = 136446466;
    v31 = "service_publisher_queue_run";
    v32 = 2082;
    *v33 = v14;
    v8 = "%{public}s: %{public}s there is a pending update at the head of the queue.";
LABEL_12:
    v9 = v12;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 22;
    goto LABEL_13;
  }

  if (v3 == 6)
  {
    v15 = service_publisher_service_update(a1, *(a1 + 128), 1);
    if (!v15)
    {
      *(v2 + 32) = 4;
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *a1;
        *buf = 136447490;
        v31 = "service_publisher_queue_run";
        v32 = 1024;
        *v33 = v23;
        *&v33[4] = 2048;
        *&v33[6] = a1;
        v34 = 2080;
        v35 = "publisher";
        v36 = 2080;
        v37 = "service-publisher.c";
        v38 = 1024;
        v39 = 629;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v24 = *a1;
      if (*a1)
      {
        v25 = v24 + 1;
        *a1 = v24 + 1;
        if (v24 + 1 < 10001)
        {
          return;
        }

        v26 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v31 = "service_publisher_queue_run";
          v32 = 1024;
          *v33 = v25;
          *&v33[4] = 2048;
          *&v33[6] = a1;
          v34 = 2080;
          v35 = "publisher";
          v36 = 2080;
          v37 = "service-publisher.c";
          v38 = 1024;
          v39 = 629;
LABEL_36:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

LABEL_37:
        abort();
      }

LABEL_38:
      ++service_publisher_created;
      *a1 = v24 + 1;
      return;
    }

    v16 = v15;
    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 72);
      *buf = 136446722;
      v31 = "service_publisher_queue_run";
      v32 = 2082;
      *v33 = v18;
      *&v33[8] = 1024;
      *&v33[10] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s cti_add_service failed: %d", buf, 0x1Cu);
    }

    *(a1 + 128) = *(v2 + 8);
    v19 = v2;
    v20 = 626;
LABEL_22:
    thread_service_release_(v19, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", v20);
    return;
  }

  if (v3 != 7)
  {
    if (v3 > 7)
    {
      v21 = "<unknown>";
    }

    else
    {
      v21 = off_1000A50B0[v3];
    }

    snprintf(buf, 0x100uLL, "is in unexpected state %s on the publication queue", v21);
    thread_service_note(*(a1 + 72), v2, buf);
    *(a1 + 128) = *(v2 + 8);
    v19 = v2;
    v20 = 637;
    goto LABEL_22;
  }

  v4 = service_publisher_service_update(a1, *(a1 + 128), 0);
  if (!v4)
  {
    *(v2 + 32) = 5;
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *a1;
      *buf = 136447490;
      v31 = "service_publisher_queue_run";
      v32 = 1024;
      *v33 = v28;
      *&v33[4] = 2048;
      *&v33[6] = a1;
      v34 = 2080;
      v35 = "publisher";
      v36 = 2080;
      v37 = "service-publisher.c";
      v38 = 1024;
      v39 = 619;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v24 = *a1;
    if (*a1)
    {
      v29 = v24 + 1;
      *a1 = v24 + 1;
      if (v24 + 1 < 10001)
      {
        return;
      }

      v26 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v31 = "service_publisher_queue_run";
        v32 = 1024;
        *v33 = v29;
        *&v33[4] = 2048;
        *&v33[6] = a1;
        v34 = 2080;
        v35 = "publisher";
        v36 = 2080;
        v37 = "service-publisher.c";
        v38 = 1024;
        v39 = 619;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v5 = v4;
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 72);
    *buf = 136446722;
    v31 = "service_publisher_queue_run";
    v32 = 2082;
    *v33 = v7;
    *&v33[8] = 1024;
    *&v33[10] = v5;
    v8 = "%{public}s: %{public}s cti_remove_service failed: %d";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 28;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
  }
}

uint64_t service_publisher_service_update(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 4294901747;
  v6 = *(a2 + 20);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v8 = 0;
      bytes[0] = 92;
      bytes[1] = *(a2 + 80);
      v7 = 44970;
      v9 = 2;
    }

    else
    {
      if (v6 != 4)
      {
        return v5;
      }

      v8 = 0;
      v9 = 1;
      bytes[0] = 1;
      v7 = 63;
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
    return 4294901756;
  }

  if (v6 == 2)
  {
    bytes[0] = 93;
    v13 = *(a2 + 64);
    v14 = *(a2 + 80);
    v7 = 44970;
    v8 = 18;
    v9 = 1;
LABEL_10:
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v10, "service_data", bytes, v9);
    if (a3)
    {
      xpc_dictionary_set_data(v10, "server_data", &v13, v8);
      xpc_dictionary_set_uint64(v10, "enterprise_number", v7);
      xpc_dictionary_set_string(v10, "interface", "org.wpantund.v1");
      xpc_dictionary_set_string(v10, "path", "/org/wpantund/utun2");
      xpc_dictionary_set_string(v10, "method", "ServiceAdd");
      xpc_dictionary_set_BOOL(v10, "stable", 1);
      v11 = setup_for_command(0, "add_service", 0, 0, v10, a1, service_publisher_update_callback, cti_internal_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 593);
    }

    else
    {
      xpc_dictionary_set_uint64(v10, "enterprise_number", v7);
      xpc_dictionary_set_string(v10, "interface", "org.wpantund.v1");
      xpc_dictionary_set_string(v10, "path", "/org/wpantund/utun2");
      xpc_dictionary_set_string(v10, "method", "ServiceRemove");
      v11 = setup_for_command(0, "remove_service", 0, 0, v10, a1, service_publisher_update_callback, cti_internal_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 596);
    }

    v5 = v11;
    if (v10)
    {
      xpc_release(v10);
    }
  }

  return v5;
}

void service_publisher_update_callback(uint64_t a1, int a2)
{
  if (*(a1 + 160) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = global_os_log;
      if (v3 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v25 = "service_publisher_update_callback";
          v26 = 1024;
          *v27 = v3;
          *&v27[4] = 2048;
          *&v27[6] = a1;
          *&v27[14] = 2080;
          *&v27[16] = "publisher";
          *&v27[24] = 2080;
          *&v27[26] = "service-publisher.c";
          v28 = 1024;
          v29 = 522;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v3 = *a1;
        }

        *a1 = v3 - 1;
        if (v3 == 1)
        {
          v5 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v25 = "service_publisher_update_callback";
            v26 = 2048;
            *v27 = a1;
            *&v27[8] = 2080;
            *&v27[10] = "publisher";
            *&v27[18] = 2080;
            *&v27[20] = "service-publisher.c";
            *&v27[28] = 1024;
            *&v27[30] = 522;
            v6 = buf;
LABEL_34:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v6, 0x30u);
            goto LABEL_35;
          }

          goto LABEL_35;
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_48:
        abort();
      }

      *buf = 136447490;
      v25 = "service_publisher_update_callback";
      v26 = 1024;
      *v27 = v3;
      *&v27[4] = 2048;
      *&v27[6] = a1;
      *&v27[14] = 2080;
      *&v27[16] = "publisher";
      *&v27[24] = 2080;
      *&v27[26] = "service-publisher.c";
      v28 = 1024;
      v29 = 522;
      v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v4 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_48;
      }

      *buf = 136447490;
      v25 = "service_publisher_update_callback";
      v26 = 1024;
      *v27 = 0;
      *&v27[4] = 2048;
      *&v27[6] = a1;
      *&v27[14] = 2080;
      *&v27[16] = "publisher";
      *&v27[24] = 2080;
      *&v27[26] = "service-publisher.c";
      v28 = 1024;
      v29 = 522;
      v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    v17 = buf;
LABEL_47:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v16, v17, 0x36u);
    goto LABEL_48;
  }

  v7 = *(a1 + 128);
  if (!v7)
  {
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 72);
      *buf = 136446466;
      v25 = "service_publisher_update_callback";
      v26 = 2082;
      *v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s no pending service update", buf, 0x16u);
    }

    return;
  }

  v9 = *(v7 + 32);
  if (v9 > 7)
  {
    v10 = "<unknown>";
  }

  else
  {
    v10 = off_1000A50B0[v9];
  }

  snprintf(buf, 0x100uLL, "is in state %s, status = %d", v10, a2);
  thread_service_note(*(a1 + 72), v7, buf);
  v13 = *(v7 + 32);
  if (a2)
  {
    if (v13 == 4)
    {
      v14 = 2;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_25;
      }

      v14 = 3;
    }
  }

  else if (v13 == 4)
  {
    v14 = 0;
  }

  else
  {
    if (v13 != 5)
    {
      goto LABEL_25;
    }

    v14 = 1;
  }

  *(v7 + 32) = v14;
LABEL_25:
  *(a1 + 128) = *(v7 + 8);
  thread_service_release_(v7, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 548);
  if ((*(a1 + 160) & 1) == 0)
  {
    service_publisher_queue_run(a1);
  }

  v15 = *a1;
  if (!*a1)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    *v18 = 136447490;
    v19 = "service_publisher_update_callback";
    v20 = 1024;
    *v21 = 0;
    *&v21[4] = 2048;
    *&v21[6] = a1;
    *&v21[14] = 2080;
    *&v21[16] = "publisher";
    *&v21[24] = 2080;
    *&v21[26] = "service-publisher.c";
    v22 = 1024;
    v23 = 553;
    v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_46:
    v17 = v18;
    goto LABEL_47;
  }

  v4 = global_os_log;
  if (v15 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    *v18 = 136447490;
    v19 = "service_publisher_update_callback";
    v20 = 1024;
    *v21 = v15;
    *&v21[4] = 2048;
    *&v21[6] = a1;
    *&v21[14] = 2080;
    *&v21[16] = "publisher";
    *&v21[24] = 2080;
    *&v21[26] = "service-publisher.c";
    v22 = 1024;
    v23 = 553;
    v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_46;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 136447490;
    v19 = "service_publisher_update_callback";
    v20 = 1024;
    *v21 = v15;
    *&v21[4] = 2048;
    *&v21[6] = a1;
    *&v21[14] = 2080;
    *&v21[16] = "publisher";
    *&v21[24] = 2080;
    *&v21[26] = "service-publisher.c";
    v22 = 1024;
    v23 = 553;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v18, 0x36u);
    v15 = *a1;
  }

  *a1 = v15 - 1;
  if (v15 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136447234;
      v19 = "service_publisher_update_callback";
      v20 = 2048;
      *v21 = a1;
      *&v21[8] = 2080;
      *&v21[10] = "publisher";
      *&v21[18] = 2080;
      *&v21[20] = "service-publisher.c";
      *&v21[28] = 1024;
      *&v21[30] = 553;
      v6 = v18;
      goto LABEL_34;
    }

LABEL_35:
    ++service_publisher_finalized;
    service_publisher_finalize(a1);
  }
}

uint64_t service_publisher_action_publishing(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 2)
  {
    v13 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v87 = "service_publisher_action_publishing";
      v88 = 1024;
      LODWORD(v89) = v2;
      v14 = "%{public}s: state header type isn't service_publisher: %d";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 18;
      goto LABEL_11;
    }

    return result;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      v18 = *(v4 + 40);
      v19 = *(v4 + 8);
      v20 = *(v4 + 24);
      *buf = 136447235;
      v87 = "service_publisher_action_publishing";
      v88 = 2082;
      v89 = v18;
      v90 = 2160;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v19;
      v94 = 2082;
      v95 = v20;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", buf, 0x34u);
    }

    if (!*(v4 + 112))
    {
      goto LABEL_23;
    }

    v21 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v22 = *(v4 + 72);
      *buf = 136446466;
      v87 = "service_publisher_action_publishing";
      v88 = 2082;
      v89 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s service still published!", buf, 0x16u);
    }

    return 3;
  }

  if (v6)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 8);
    v9 = *(a2 + 8);
    v10 = *(v4 + 24);
    *buf = 136447491;
    v87 = "service_publisher_action_publishing";
    v88 = 2082;
    v89 = v7;
    v90 = 2160;
    v91 = 1752392040;
    v92 = 2081;
    v93 = v8;
    v94 = 2082;
    v95 = v9;
    v96 = 2082;
    v97 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", buf, 0x3Eu);
  }

  v11 = *(a2 + 16);
  if ((*(v4 + 164) & 1) != 0 || v11 != 1 && v11 != 19 && *(v4 + 112))
  {
    if (v11 == 4)
    {
      if (service_publisher_stale_service_present(v4))
      {
        return 6;
      }

      v11 = *(a2 + 16);
    }

    if (v11 == 7)
    {
      if (*(v4 + 112))
      {
        service_publisher_listener_cancel(v4);
        service_publisher_service_unpublish(v4);
        return 1;
      }

      service_publisher_re_advertise_matching(v4);
    }

    else if (v11 == 6)
    {
      service_publisher_service_unpublish(v4);
      result = 1;
      *(v4 + 148) = 1;
      return result;
    }

    if ((service_publisher_can_publish(v4) & 1) == 0)
    {
      goto LABEL_82;
    }

    if (*(a2 + 16) != 4)
    {
      return 0;
    }

    v55 = *(v4 + 112);
    if (!v55 || (*(v4 + 164) & 1) != 0)
    {
      return 0;
    }

    v56 = *(*(v4 + 80) + 48);
    if (v56 && (v57 = *(v56 + 48)) != 0)
    {
      v58 = 0;
      do
      {
        if (*(v57 + 25) == 1 && thread_service_equal(v55, v57))
        {
          v58 = 1;
          *(v4 + 164) = 1;
        }

        v57 = *(v57 + 8);
      }

      while (v57);
      v59 = global_os_log;
      v60 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v58)
      {
        if (v60)
        {
          v61 = *(v4 + 72);
          *buf = 136446466;
          v87 = "service_publisher_action_publishing";
          v88 = 2082;
          v89 = v61;
          v62 = "%{public}s: %{public}s is in net data";
LABEL_114:
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v62, buf, 0x16u);
        }

LABEL_115:
        if (!*(v4 + 112) || *(v4 + 164))
        {
          ioloop_cancel_wake_event(*(v4 + 88));
        }

        return 0;
      }

      if (!v60)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v59 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }
    }

    v79 = *(v4 + 72);
    *buf = 136446466;
    v87 = "service_publisher_action_publishing";
    v88 = 2082;
    v89 = v79;
    v62 = "%{public}s: %{public}s is not in net data";
    goto LABEL_114;
  }

  if ((service_publisher_can_publish(v4) & 1) == 0)
  {
LABEL_82:
    service_publisher_listener_cancel(v4);
    service_publisher_service_unpublish(v4);
    return 3;
  }

  if (*(a2 + 16) == 7)
  {
    service_publisher_re_advertise_matching(v4);
  }

LABEL_23:
  v23 = *(v4 + 80);
  if (*(v23 + 428) != 1)
  {
    goto LABEL_90;
  }

  if (*(v23 + 429) == 1)
  {
    v24 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v25 = *(v4 + 72);
    *buf = 136446466;
    v87 = "service_publisher_wanted_service_missing";
    v88 = 2082;
    v89 = v25;
    v26 = "%{public}s: %{public}s srp_service_needed == true -> true";
    v27 = v24;
    v28 = 22;
    goto LABEL_89;
  }

  if (!*(v4 + 136))
  {
    v29 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v4 + 72);
      *buf = 136446466;
      v87 = "service_publisher_wanted_service_missing";
      v88 = 2082;
      v89 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s no listener address.", buf, 0x16u);
    }
  }

  v31 = *(v23 + 104);
  if (!v31)
  {
    goto LABEL_65;
  }

  v85 = v23;
  do
  {
    v32 = *(v23 + 8);
    if (!v32)
    {
LABEL_86:
      v68 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      v69 = *(v4 + 72);
      v70 = v31[1];
      v71 = v31[2];
      *buf = 136447491;
      v87 = "service_publisher_wanted_service_missing";
      v88 = 2082;
      v89 = v69;
      v90 = 2160;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v70;
      v94 = 2160;
      v95 = 1752392040;
      v96 = 2081;
      v97 = v71;
      v26 = "%{public}s: %{public}s service %{private, mask.hash}s.%{private, mask.hash}s host not present -> true";
LABEL_88:
      v27 = v68;
      v28 = 62;
LABEL_89:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      goto LABEL_90;
    }

    while (1)
    {
      v33 = v32[13];
      if (v33)
      {
        if (*(v33 + 4) >= 1)
        {
          break;
        }
      }

LABEL_52:
      v32 = v32[4];
      if (!v32)
      {
        goto LABEL_86;
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = *(*(v33 + 8) + 8 * v34);
      if (!v35 || strcasecmp(*(v35 + 64), v31[1]))
      {
        goto LABEL_51;
      }

      v36 = v31[2];
      v37 = *(v35 + 72);
      v38 = strchr(v37, 44);
      if (v38)
      {
        v39 = v38 - v37;
        v40 = __CFADD__(v38 - v37, 1);
        v41 = v38 - v37 + 1;
        if (v40)
        {
          v83 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v87 = "adv_ctl_service_types_compare";
            v84 = "%{public}s: strict_malloc called with size 0";
            goto LABEL_122;
          }
        }

        else
        {
          v42 = malloc_type_malloc(v41, 0xDF5076F7uLL);
          if (v42)
          {
            v43 = v42;
            memcpy(v42, v37, v39);
            v43[v39] = 0;
            v44 = strcasecmp(v36, v43);
            free(v43);
            if (!v44)
            {
              break;
            }

            goto LABEL_50;
          }

          v83 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v87 = "adv_ctl_service_types_compare";
            v84 = "%{public}s: strict allocator failed";
LABEL_122:
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, v84, buf, 0xCu);
          }
        }

        __break(1u);
      }

      if (!strcasecmp(v36, v37))
      {
        break;
      }

LABEL_50:
      v33 = v32[13];
LABEL_51:
      if (++v34 >= *(v33 + 4))
      {
        goto LABEL_52;
      }
    }

    v45 = v32[11];
    if (!v45)
    {
      v68 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_90:
        v72 = *(v4 + 144);
        switch(v72)
        {
          case 4:
            v73 = thread_service_flag_create_(*(*(v4 + 80) + 408), 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1944);
            break;
          case 3:
            v74 = *(v4 + 80);
            if ((*(v74 + 411) & 1) == 0)
            {
              v75 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                v87 = "service_publisher_publish";
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_FAULT, "%{public}s: no anycast sequence number!", buf, 0xCu);
                v74 = *(v4 + 80);
              }
            }

            v73 = thread_service_anycast_create_(*(v74 + 408), *(v74 + 410), 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1942);
            break;
          case 2:
            *buf = bswap32(*(v4 + 156)) >> 16;
            v73 = thread_service_unicast_create_(*(*(v4 + 80) + 408), *(v4 + 136), buf, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1936);
            break;
          default:
            goto LABEL_100;
        }

        v76 = v73;
        service_publisher_queue_update(v4, v73, 6);
        thread_service_release_(v76, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/service-publisher.c", 1948);
LABEL_100:
        if (a2)
        {
          if (*(a2 + 16) == 1)
          {
            service_tracker_start(*(*(v4 + 80) + 48));
          }

          v77 = *(v4 + 152);
          if (v77 > 3599)
          {
            goto LABEL_107;
          }

          v77 *= 2;
        }

        else
        {
          v77 = 5;
        }

        *(v4 + 152) = v77;
LABEL_107:
        v78 = arc4random();
        service_publisher_start_wait(v4, ((v78 % (1000 * *(v4 + 152))) >> 1) + 1000 * v77);
        return 0;
      }

      v80 = *(v4 + 72);
      v81 = v31[1];
      v82 = v31[2];
      *buf = 136447491;
      v87 = "service_publisher_wanted_service_missing";
      v88 = 2082;
      v89 = v80;
      v90 = 2160;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v81;
      v94 = 2160;
      v95 = 1752392040;
      v96 = 2081;
      v97 = v82;
      v26 = "%{public}s: %{public}s srp service %{private, mask.hash}s.%{private, mask.hash}s present but no addresses -> true";
      goto LABEL_88;
    }

    v46 = *(v45 + 4);
    if (v46 < 1)
    {
LABEL_84:
      v63 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      v64 = *(v4 + 72);
      v65 = v31[1];
      v66 = v31[2];
      v67 = *(v35 + 64);
      *buf = 136448003;
      v87 = "service_publisher_wanted_service_missing";
      v88 = 2082;
      v89 = v64;
      v90 = 2160;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v65;
      v94 = 2160;
      v95 = 1752392040;
      v96 = 2081;
      v97 = v66;
      v98 = 2160;
      v99 = 1752392040;
      v100 = 2081;
      v101 = v67;
      v26 = "%{public}s: %{public}s srp service %{private, mask.hash}s.%{private, mask.hash}s present as %{private, mask.hash}s but has no address on local mesh -> true";
      v27 = v63;
      v28 = 82;
      goto LABEL_89;
    }

    v47 = *(v45 + 8);
    while (1)
    {
      v48 = *v47;
      if (*v47)
      {
        if (*(v48 + 74) == 16 && **(v48 + 64) == **(v4 + 136))
        {
          break;
        }
      }

      ++v47;
      if (!--v46)
      {
        goto LABEL_84;
      }
    }

    v49 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v4 + 72);
      v51 = v31[1];
      v52 = v31[2];
      *buf = 136447491;
      v87 = "service_publisher_wanted_service_missing";
      v88 = 2082;
      v89 = v50;
      v90 = 2160;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v51;
      v94 = 2160;
      v95 = 1752392040;
      v96 = 2081;
      v97 = v52;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s service %{private, mask.hash}s.%{private, mask.hash}s is present", buf, 0x3Eu);
    }

    v31 = *v31;
    v23 = v85;
  }

  while (v31);
LABEL_65:
  v53 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v54 = *(v4 + 72);
    *buf = 136446466;
    v87 = "service_publisher_wanted_service_missing";
    v88 = 2082;
    v89 = v54;
    v14 = "%{public}s: %{public}s all needed services present -> false";
    v15 = v53;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
    return 0;
  }

  return result;
}

uint64_t service_publisher_action_start_listeners(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 2)
  {
    v13 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    *&buf[4] = "service_publisher_action_start_listeners";
    *&buf[12] = 1024;
    *&buf[14] = v2;
    v14 = "%{public}s: state header type isn't service_publisher: %d";
    v15 = buf;
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 18;
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      v19 = *(v4 + 40);
      v20 = *(v4 + 8);
      v21 = *(v4 + 24);
      *buf = 136447235;
      *&buf[4] = "service_publisher_action_start_listeners";
      *&buf[12] = 2082;
      *&buf[14] = v19;
      *&buf[22] = 2160;
      v35 = 1752392040;
      v36 = 2081;
      v37 = v20;
      v38 = 2082;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", buf, 0x34u);
    }

    if (*(v4 + 144) != 2)
    {
      return 5;
    }

    service_publisher_re_advertise_matching(v4);
    if (*(v4 + 161) == 1)
    {
      if (*(v4 + 104))
      {
        return 5;
      }

      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v23 = *(v4 + 72);
        *buf = 136446466;
        *&buf[4] = "service_publisher_action_start_listeners";
        *&buf[12] = 2082;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "%{public}s: %{public}s have_srp_listener is true but there's no listener!", buf, 0x16u);
      }

      *(v4 + 161) = 0;
    }

    if (*(v4 + 104))
    {
      v24 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v25 = *(v4 + 72);
        *buf = 136446466;
        *&buf[4] = "service_publisher_listener_start";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%{public}s: %{public}s listener still present", buf, 0x16u);
      }

      service_publisher_listener_cancel(v4);
    }

    v26 = *(v4 + 136);
    if (v26)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v35) = 0;
      *&buf[8] = *v26;
      buf[1] = 30;
      v27 = *(v4 + 80);
      v28 = *(v27 + 40);
      if (v28 && (LODWORD(v28) = if_nametoindex(v28), !v28))
      {
        *(v4 + 104) = 0;
      }

      else
      {
        v29 = ioloop_listener_create(0, 0, buf, "SRP UDP listener", dns_input, service_publisher_listener_cancel_callback, service_publisher_listener_ready, 0, v28, v27);
        *(v4 + 104) = v29;
        if (v29)
        {
          ioloop_listener_permitted_interface_list_set(v29, *(*(v4 + 80) + 96));
          return 0;
        }
      }

      v32 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v33 = *(v4 + 72);
      v42 = 136446466;
      v43 = "service_publisher_listener_start";
      v44 = 2082;
      v45 = v33;
      v14 = "%{public}s: %{public}s failed to setup SRP listener";
      v15 = &v42;
      v16 = v32;
      v17 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v30 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      v31 = *(v4 + 72);
      *buf = 136446466;
      *&buf[4] = "service_publisher_listener_start";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      v14 = "%{public}s: %{public}s no listener address where there must be a listener address";
      v15 = buf;
      v16 = v30;
      v17 = OS_LOG_TYPE_FAULT;
    }

    v18 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v16, v17, v14, v15, v18);
    return 0;
  }

  if (v6)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 8);
    v9 = *(a2 + 8);
    v10 = *(v4 + 24);
    *buf = 136447491;
    *&buf[4] = "service_publisher_action_start_listeners";
    *&buf[12] = 2082;
    *&buf[14] = v7;
    *&buf[22] = 2160;
    v35 = 1752392040;
    v36 = 2081;
    v37 = v8;
    v38 = 2082;
    v39 = v9;
    v40 = 2082;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", buf, 0x3Eu);
  }

  v11 = *(a2 + 16);
  if (v11 == 7)
  {
    service_publisher_listener_cancel(v4);
    service_publisher_service_unpublish(v4);
    return 1;
  }

  else if (v11 == 4 && (service_publisher_stale_service_present(v4) & 1) != 0)
  {
    return 6;
  }

  else if (service_publisher_can_publish(v4))
  {
    if (*(a2 + 16) == 5)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 104))
    {
      service_publisher_listener_cancel(v4);
    }

    return 3;
  }
}

void service_publisher_listener_cancel_callback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (!v2)
  {
    return;
  }

  v3 = state_machine_event_create(6);
  state_machine_event_deliver(v2 + 8, v3);
  v4 = *v3;
  if (!*v3)
  {
    v5 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v9 = 136447490;
    v10 = "service_publisher_listener_cancel_callback";
    v11 = 1024;
    *v12 = 0;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "service-publisher.c";
    v13 = 1024;
    v14 = 1724;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_17;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v9 = 136447490;
    v10 = "service_publisher_listener_cancel_callback";
    v11 = 1024;
    *v12 = v4;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "service-publisher.c";
    v13 = 1024;
    v14 = 1724;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v8, &v9, 0x36u);
LABEL_18:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136447490;
    v10 = "service_publisher_listener_cancel_callback";
    v11 = 1024;
    *v12 = v4;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "service-publisher.c";
    v13 = 1024;
    v14 = 1724;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v9, 0x36u);
    v4 = *v3;
  }

  *v3 = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136447234;
      v10 = "service_publisher_listener_cancel_callback";
      v11 = 2048;
      *v12 = v3;
      *&v12[8] = 2080;
      *&v12[10] = "event";
      *&v12[18] = 2080;
      *&v12[20] = "service-publisher.c";
      *&v12[28] = 1024;
      *&v12[30] = 1724;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v9, 0x30u);
    }

    ++state_machine_event_finalized;
    v7 = *(v3 + 4);
    if (v7)
    {
      v7(v3);
    }

    free(v3);
  }
}

void service_publisher_listener_ready(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return;
  }

  v4 = state_machine_event_create(5);
  *(v2 + 161) = 1;
  *(v2 + 156) = a2;
  state_machine_event_deliver(v2 + 8, v4);
  v5 = *v4;
  if (!*v4)
  {
    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v10 = 136447490;
    v11 = "service_publisher_listener_ready";
    v12 = 1024;
    *v13 = 0;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "service-publisher.c";
    v14 = 1024;
    v15 = 1760;
    v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_17;
  }

  v6 = global_os_log;
  if (v5 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v10 = 136447490;
    v11 = "service_publisher_listener_ready";
    v12 = 1024;
    *v13 = v5;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "service-publisher.c";
    v14 = 1024;
    v15 = 1760;
    v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v9, &v10, 0x36u);
LABEL_18:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136447490;
    v11 = "service_publisher_listener_ready";
    v12 = 1024;
    *v13 = v5;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "service-publisher.c";
    v14 = 1024;
    v15 = 1760;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
    v5 = *v4;
  }

  *v4 = v5 - 1;
  if (v5 == 1)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136447234;
      v11 = "service_publisher_listener_ready";
      v12 = 2048;
      *v13 = v4;
      *&v13[8] = 2080;
      *&v13[10] = "event";
      *&v13[18] = 2080;
      *&v13[20] = "service-publisher.c";
      *&v13[28] = 1024;
      *&v13[30] = 1760;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
    }

    ++state_machine_event_finalized;
    v8 = *(v4 + 4);
    if (v8)
    {
      v8(v4);
    }

    free(v4);
  }
}

uint64_t service_publisher_action_not_publishing(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 == 2)
  {
    v4 = *(a1 + 8);
    v5 = global_os_log;
    v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v7 = *(v4 + 40);
        v8 = *(v4 + 8);
        v9 = *(a2 + 8);
        v10 = *(v4 + 24);
        v16 = 136447491;
        v17 = "service_publisher_action_not_publishing";
        v18 = 2082;
        v19 = v7;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2081;
        v23 = v8;
        v24 = 2082;
        v25 = v9;
        v26 = 2082;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", &v16, 0x3Eu);
      }

      if (*(a2 + 16) == 4 && (service_publisher_stale_service_present(v4) & 1) != 0)
      {
        return 6;
      }

      else
      {
        result = service_publisher_can_publish(v4);
        if (result)
        {
          *(v4 + 148) = 5000;
          return 1;
        }
      }
    }

    else
    {
      if (v6)
      {
        v13 = *(v4 + 40);
        v14 = *(v4 + 8);
        v15 = *(v4 + 24);
        v16 = 136447235;
        v17 = "service_publisher_action_not_publishing";
        v18 = 2082;
        v19 = v13;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2081;
        v23 = v14;
        v24 = 2082;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", &v16, 0x34u);
      }

      service_publisher_unadvertise_all(v4);
      if (*(v4 + 112))
      {
        service_publisher_service_unpublish(v4);
      }

      if (service_publisher_stale_service_present(v4))
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v16 = 136446466;
      v17 = "service_publisher_action_not_publishing";
      v18 = 1024;
      LODWORD(v19) = v2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't service_publisher: %d", &v16, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t service_publisher_action_waiting_to_publish(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 == 2)
  {
    v4 = *(a1 + 8);
    v5 = global_os_log;
    v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v7 = v4[5];
        v8 = v4[1];
        v9 = *(a2 + 8);
        v10 = v4[3];
        v16 = 136447491;
        v17 = "service_publisher_action_waiting_to_publish";
        v18 = 2082;
        v19 = v7;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2081;
        v23 = v8;
        v24 = 2082;
        v25 = v9;
        v26 = 2082;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", &v16, 0x3Eu);
      }

      if (*(a2 + 16) != 4)
      {
LABEL_13:
        if (service_publisher_can_publish(v4))
        {
          ioloop_cancel_wake_event(v4[11]);
          return 4;
        }

        else
        {
          result = service_publisher_have_competing_unicast_service(v4);
          if (result)
          {
            ioloop_cancel_wake_event(v4[11]);
            return 3;
          }
        }

        return result;
      }
    }

    else if (v6)
    {
      v13 = v4[5];
      v14 = v4[1];
      v15 = v4[3];
      v16 = 136447235;
      v17 = "service_publisher_action_waiting_to_publish";
      v18 = 2082;
      v19 = v13;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2081;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", &v16, 0x34u);
    }

    if (service_publisher_stale_service_present(v4))
    {
      return 6;
    }

    goto LABEL_13;
  }

  v11 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136446466;
    v17 = "service_publisher_action_waiting_to_publish";
    v18 = 1024;
    LODWORD(v19) = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't service_publisher: %d", &v16, 0x12u);
    return 0;
  }

  return result;
}

uint64_t service_publisher_action_startup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 == 2)
  {
    v4 = *(a1 + 8);
    v5 = global_os_log;
    v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v7 = v4[5];
        v8 = v4[1];
        v9 = *(a2 + 8);
        v10 = v4[3];
        v19 = 136447491;
        v20 = "service_publisher_action_startup";
        v21 = 2082;
        v22 = v7;
        v23 = 2160;
        v24 = 1752392040;
        v25 = 2081;
        v26 = v8;
        v27 = 2082;
        v28 = v9;
        v29 = 2082;
        v30 = v10;
        v11 = "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s";
        v12 = v5;
        v13 = 62;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v19, v13);
      }
    }

    else if (v6)
    {
      v16 = v4[5];
      v17 = v4[1];
      v18 = v4[3];
      v19 = 136447235;
      v20 = "service_publisher_action_startup";
      v21 = 2082;
      v22 = v16;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2081;
      v26 = v17;
      v27 = 2082;
      v28 = v18;
      v11 = "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s";
      v12 = v5;
      v13 = 52;
      goto LABEL_9;
    }

    return 2;
  }

  v14 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v19 = 136446466;
    v20 = "service_publisher_action_startup";
    v21 = 1024;
    LODWORD(v22) = v2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't service_publisher: %d", &v19, 0x12u);
    return 0;
  }

  return result;
}

void service_publisher_deliver_event_to_all_publishers(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {
    state_machine_event_deliver(v4 + 8, a2);
  }

  v5 = a1[9];
  if (v5)
  {
    state_machine_event_deliver(v5 + 8, a2);
  }

  v6 = a1[8];
  if (v6)
  {

    state_machine_event_deliver(v6 + 8, a2);
  }
}

void srp_parse_client_updates_free_(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = a1;
    do
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v21 = "srp_parse_client_updates_free_";
        v22 = 2048;
        v23 = v5;
        v24 = 2082;
        v25 = a2;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %p at %{public}s:%d", buf, 0x26u);
      }

      v7 = *v5;
      v8 = v5[6];
      if (v8)
      {
        do
        {
          v9 = *v8;
          free(v8);
          v8 = v9;
        }

        while (v9);
      }

      v10 = v5[7];
      if (v10)
      {
        do
        {
          v11 = *v10;
          free(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v5[8];
      if (v12)
      {
        do
        {
          v13 = *v12;
          free(v12);
          v12 = v13;
        }

        while (v13);
      }

      v14 = v5[5];
      if (v14)
      {
        v15 = v14[1];
        if (!v15)
        {
          goto LABEL_15;
        }

        do
        {
          v16 = *v15;
          free(v15);
          v15 = v16;
        }

        while (v16);
        v14 = v5[5];
        if (v14)
        {
LABEL_15:
          free(v14);
          v5[5] = 0;
        }
      }

      v17 = v5[3];
      if (v17)
      {
        dns_message_free(v17);
      }

      v18 = v5[4];
      if (v18)
      {
        ioloop_message_release_(v18, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-parse.c", 91);
      }

      v19 = v5[1];
      if (v19)
      {
        ioloop_comm_release_(v19, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-parse.c", 100);
      }

      free(v5);
      v5 = v7;
    }

    while (v7);
  }
}

void make_delete(void *a1, void *a2, uint64_t **a3, uint64_t **a4)
{
  if (*a3)
  {
    while (1)
    {
      v8 = *a1;
      if (!*a1)
      {
        break;
      }

      a1 = *a1;
      if (dns_names_equal(v8[1], *a3))
      {
        if (*a3)
        {
          dns_name_print_to_limit(*a3, 0, v30, 0x3F2uLL);
        }

        else
        {
          strcpy(v30, "<null>");
        }

        v12 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446723;
          *&buf[4] = "make_delete";
          v26 = 2160;
          v27 = 1752392040;
          v28 = 2081;
          v29 = v30;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: two deletes for the same name: %{private, mask.hash}s", buf, 0x20u);
        }

        return;
      }
    }

    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0xA524DC92uLL);
    if (v9)
    {
      v10 = v9;
      *a1 = v9;
      v11 = dns_name_subdomain_of(*a3, a4);
      v10[2] = v11;
      if (v11)
      {
        v10[1] = *a3;
        if (a2)
        {
          *a2 = v10;
        }
      }

      else
      {
        if (a4)
        {
          dns_name_print_to_limit(a4, 0, v30, 0x3F2uLL);
        }

        else
        {
          strcpy(v30, "<null>");
        }

        if (*a3)
        {
          dns_name_print_to_limit(*a3, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v13 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v15 = 136447235;
          v16 = "make_delete";
          v17 = 2160;
          v18 = 1752392040;
          v19 = 2081;
          v20 = v30;
          v21 = 2160;
          v22 = 1752392040;
          v23 = 2081;
          v24 = buf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: delete for record not in update zone %{private, mask.hash}s: %{private, mask.hash}s", &v15, 0x34u);
        }

        free(v10);
      }
    }

    else
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v30[0] = 136446722;
        *&v30[1] = "make_delete";
        v31 = 2048;
        v32 = 1;
        v33 = 2048;
        v34 = 32;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", v30, 0x20u);
      }

      __break(1u);
    }
  }
}

void replace_zone_name(void *a1, void *a2, uint64_t *a3)
{
  do
  {
    v4 = a1;
    a1 = *a1;
    if (a1)
    {
      v5 = a1 == a2;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (!a1)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v17 = "replace_zone_name";
    v13 = "%{public}s: replace_zone: dns_name_subdomain_of returned bogus pointer.";
    goto LABEL_18;
  }

  do
  {
    v6 = *a1;
    free(a1);
    a1 = v6;
  }

  while (v6);
  v15 = 0;
  v7 = &v15;
  do
  {
    v8 = *(a3 + 8) + 10;
    v9 = malloc_type_calloc(1uLL, v8, 0xC3995AECuLL);
    if (!v9)
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "dns_name_copy";
        v18 = 2048;
        v19 = 1;
        v20 = 2048;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
      }

      __break(1u);
    }

    *v7 = v9;
    v10 = *(a3 + 8);
    if (*(a3 + 8))
    {
      memcpy(v9 + 9, a3 + 9, v10 + 1);
      LOBYTE(v10) = *(a3 + 8);
      v9 = *v7;
    }

    v9[8] = v10;
    a3 = *a3;
    v7 = v9;
  }

  while (a3);
  v11 = v15;
  *v4 = v15;
  if (!v11)
  {
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "replace_zone_name";
      v13 = "%{public}s: replace_zone_name: no memory for replacement zone";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }
  }
}

void srp_dns_evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = buf;
  v5 = *(a3 + 90);
  if ((v5 & 0x80) != 0)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446466;
    *&buf[4] = "srp_dns_evaluate";
    *&buf[12] = 1024;
    *&buf[14] = (v5 >> 3) & 0xF;
    v9 = "%{public}s: received a message that was a DNS response: %d";
    v10 = v8;
    goto LABEL_16;
  }

  v6 = a3;
  v7 = a1;
  if ((v5 & 0x78) != 0x28)
  {
    if ((v5 & 0x78) == 0)
    {
      dns_proxy_input_for_server(a1, a3, 0);
LABEL_17:
      v5 = 0;
LABEL_18:
      srp_parse_client_updates_free_(v5, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-parse.c", 962);
      return;
    }

    send_fail_response(a1, a3, 5u);
    v18 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = (*(v6 + 90) >> 3) & 0xF;
    *buf = 136446466;
    *&buf[4] = "srp_dns_evaluate";
    *&buf[12] = 1024;
    *&buf[14] = v19;
    v9 = "%{public}s: received a message that was not a DNS update: %d";
    v10 = v18;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_17;
  }

  if ((~v5 & 0x2C) != 0)
  {
    goto LABEL_467;
  }

  v12 = a3 + 88;
  v13 = *(a3 + 64);
  v456 = (a3 + 88);
  if (v13 < 3 || (v5 & 0x7C) != 0x2C)
  {
    goto LABEL_394;
  }

  v14 = *(a2 + 208);
  memset(v471, 0, 64);
  memset(&v465[24], 0, 32);
  v466 = 0;
  *v465 = a3 + 88;
  *&v465[8] = a3 + 88;
  v3 = v12 + v13;
  *&v465[16] = v12 + v13;
  v15 = malloc_type_malloc(0x2710uLL, 0x6C4BE4C0uLL);
  if (!v15)
  {
    v7 = buf;
    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_831;
    }

    *buf = 136446210;
    *&buf[4] = "srpk_message_decompress";
    v427 = "%{public}s: strict allocator failed";
    goto LABEL_829;
  }

  v16 = v15;
  memset(&v471[1] + 8, 0, 40);
  *&v471[0] = v15;
  *(&v471[0] + 1) = v15 + 12;
  *&v471[1] = v15 + 10000;
  if (!srpk_space_(v6 + 88, v3, 3, 842))
  {
    goto LABEL_393;
  }

  *v16 = *(v6 + 88);
  *(v16 + 2) = 16777256;
  v17 = *(v6 + 90);
  *&v465[8] = v6 + 91;
  memset(v472, 0, sizeof(v472));
  v475 = 0;
  v474 = 7200;
  v473 = v14;
  if (v17)
  {
    srpk_full_name_from_wire(v465, v472);
    if ((v20 & 1) == 0)
    {
      goto LABEL_393;
    }
  }

  else
  {
    *v472 = dns_pres_name_parse("default.service.arpa.");
  }

  if ((v17 & 2) != 0 && !srpk_integer_from_wire_max_(v465, &v474, 127, 128, 869))
  {
    goto LABEL_393;
  }

  srpk_full_name_from_wire(v465, &v472[8]);
  if (!v21)
  {
    goto LABEL_393;
  }

  *&v472[64] = 0u;
  *&v472[48] = 0;
  *&v472[56] = v471[0];
  v22 = *v472;
  if (*v472)
  {
    do
    {
      if (DWORD2(v471[3]) <= 1)
      {
        v23 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 1) >= *&v471[1])
        {
          DWORD2(v471[3]) = 111;
          LODWORD(v471[3]) = 399;
        }

        else
        {
          v24 = *(v22 + 8);
          ++*(&v471[0] + 1);
          *v23 = v24;
          if (DWORD2(v471[3]) <= 1)
          {
            v25 = *(v22 + 8);
            if ((*(&v471[0] + 1) + v25) <= *&v471[1])
            {
              memcpy(*(&v471[0] + 1), v22 + 9, *(v22 + 8));
              *(&v471[0] + 1) += v25;
            }

            else
            {
              DWORD2(v471[3]) = 111;
              LODWORD(v471[3]) = 400;
            }
          }
        }
      }

      v22 = *v22;
    }

    while (v22);
  }

  if (DWORD2(v471[3]) <= 1)
  {
    v26 = *(&v471[0] + 1);
    if ((*(&v471[0] + 1) + 2) >= *&v471[1])
    {
      v30 = 881;
      goto LABEL_39;
    }

    ++*(&v471[0] + 1);
    *v26 = 0;
    v27 = (*(&v471[0] + 1))++;
    *v27 = 6;
    if (DWORD2(v471[3]) <= 1)
    {
      v28 = *(&v471[0] + 1);
      if ((*(&v471[0] + 1) + 2) < *&v471[1])
      {
        ++*(&v471[0] + 1);
        *v28 = 0;
        v29 = (*(&v471[0] + 1))++;
        *v29 = 1;
        goto LABEL_40;
      }

      v30 = 882;
LABEL_39:
      DWORD2(v471[3]) = 111;
      LODWORD(v471[3]) = v30;
    }
  }

LABEL_40:
  if (!srpk_space_(*&v465[8], *&v465[16], 1, 884))
  {
    goto LABEL_393;
  }

  v31 = 0;
  while (1)
  {
    v32 = *&v465[8];
    if ((**&v465[8] & 0xE0) == 0xC0)
    {
      break;
    }

    v33 = ++*&v465[8];
    v34 = *v32;
    v35 = v34 >> 6;
    if (v34 >> 6 <= 1)
    {
      if (!v35)
      {
        v462 = v474;
        v463 = v474;
        memset(buf, 0, 32);
        memset(v467, 0, sizeof(v467));
        v36 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
        {
          *v468 = 136446466;
          *&v468[4] = "srpk_decompress_service_add_block";
          *&v468[12] = 1024;
          *&v468[14] = v34;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: dispatch: %x", v468, 0x12u);
          if ((v34 & 0x20) != 0)
          {
            goto LABEL_47;
          }
        }

        else if ((v34 & 0x20) != 0)
        {
LABEL_47:
          srpk_integer_from_wire_max_(v465, &v463, 127, 128, 696);
          if ((v34 & 0x10) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        if ((v34 & 0x10) == 0)
        {
LABEL_81:
          *&v455 = v463;
          srpk_decompress_instance_labels(v465, v471, v472, 0, buf, v467, v463);
          if ((v34 & 8) == 0)
          {
            v64 = 4;
LABEL_83:
            v460 = 0;
            v461 = 0;
            v459 = 0;
            if (srpk_integer_from_wire_max_(v465, &v461, 127, 128, 738) && ((v34 & 4) == 0 || srpk_integer_from_wire_max_(v465, &v460, 127, 128, 741)))
            {
              if ((v34 & 2) == 0)
              {
                v65 = 0;
                LOBYTE(v66) = 0;
                goto LABEL_215;
              }

              if (srpk_integer_from_wire_max_(v465, &v459, 127, 128, 744))
              {
                v65 = v459;
                v66 = v459 >> 8;
LABEL_215:
                if (DWORD2(v471[3]) > 1)
                {
                  goto LABEL_264;
                }

                v140 = *&v467[16] - *&v467[8];
                if (((*&v467[16] - *&v467[8]) & 0x8000) != 0)
                {
                  v172 = DWORD2(v471[3]) | 0x76;
                  v173 = 749;
                }

                else
                {
                  v141 = *(&v471[0] + 1);
                  if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                  {
                    v173 = 749;
                  }

                  else
                  {
                    ++*(&v471[0] + 1);
                    *v141 = HIBYTE(v140) | 0xC0;
                    v142 = (*(&v471[0] + 1))++;
                    *v142 = v140;
                    if (DWORD2(v471[3]) > 1)
                    {
                      goto LABEL_264;
                    }

                    v143 = *(&v471[0] + 1);
                    if ((*(&v471[0] + 1) + 2) < *&v471[1])
                    {
                      ++*(&v471[0] + 1);
                      *v143 = 0;
                      v144 = (*(&v471[0] + 1))++;
                      *v144 = -1;
                      if (DWORD2(v471[3]) > 1)
                      {
                        goto LABEL_264;
                      }

                      v145 = *(&v471[0] + 1);
                      if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                      {
                        v173 = 751;
                      }

                      else
                      {
                        ++*(&v471[0] + 1);
                        *v145 = 0;
                        v146 = (*(&v471[0] + 1))++;
                        *v146 = -1;
                        if (DWORD2(v471[3]) > 1)
                        {
                          goto LABEL_264;
                        }

                        v147 = *(&v471[0] + 1);
                        if ((*(&v471[0] + 1) + 4) >= *&v471[1])
                        {
                          v173 = 752;
                        }

                        else
                        {
                          ++*(&v471[0] + 1);
                          *v147 = 0;
                          v148 = (*(&v471[0] + 1))++;
                          *v148 = 0;
                          v149 = (*(&v471[0] + 1))++;
                          *v149 = 0;
                          v150 = (*(&v471[0] + 1))++;
                          *v150 = 0;
                          if (DWORD2(v471[3]) > 1)
                          {
                            goto LABEL_264;
                          }

                          v151 = *(&v471[0] + 1);
                          if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                          {
                            v173 = 753;
                          }

                          else
                          {
                            ++*(&v471[0] + 1);
                            *v151 = 0;
                            v152 = (*(&v471[0] + 1))++;
                            *v152 = 0;
                            if (DWORD2(v471[3]) > 1)
                            {
                              goto LABEL_264;
                            }

                            v153 = *&v467[16] - *&v467[8];
                            if (((*&v467[16] - *&v467[8]) & 0x8000) != 0)
                            {
                              v172 = DWORD2(v471[3]) | 0x76;
                              v173 = 756;
                              goto LABEL_263;
                            }

                            v154 = *(&v471[0] + 1);
                            if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                            {
                              v173 = 756;
                            }

                            else
                            {
                              ++*(&v471[0] + 1);
                              *v154 = HIBYTE(v153) | 0xC0;
                              v155 = (*(&v471[0] + 1))++;
                              *v155 = v153;
                              if (DWORD2(v471[3]) > 1)
                              {
                                goto LABEL_264;
                              }

                              v156 = *(&v471[0] + 1);
                              if ((*(&v471[0] + 1) + 2) < *&v471[1])
                              {
                                ++*(&v471[0] + 1);
                                *v156 = 0;
                                v157 = (*(&v471[0] + 1))++;
                                *v157 = 33;
                                if (DWORD2(v471[3]) <= 1)
                                {
                                  v158 = *(&v471[0] + 1);
                                  if ((*(&v471[0] + 1) + 2) < *&v471[1])
                                  {
                                    ++*(&v471[0] + 1);
                                    *v158 = 0;
                                    v159 = (*(&v471[0] + 1))++;
                                    *v159 = 1;
                                    v160 = v462;
                                    if (DWORD2(v471[3]) <= 1)
                                    {
                                      v161 = *(&v471[0] + 1);
                                      if ((*(&v471[0] + 1) + 4) >= *&v471[1])
                                      {
                                        DWORD2(v471[3]) = 111;
                                        v213 = 759;
LABEL_370:
                                        LODWORD(v471[3]) = v213;
                                        goto LABEL_265;
                                      }

                                      ++*(&v471[0] + 1);
                                      *v161 = BYTE3(v462);
                                      v162 = (*(&v471[0] + 1))++;
                                      *v162 = BYTE2(v160);
                                      v163 = (*(&v471[0] + 1))++;
                                      *v163 = BYTE1(v160);
                                      v164 = (*(&v471[0] + 1))++;
                                      *v164 = v160;
                                      if (DWORD2(v471[3]) <= 1)
                                      {
                                        v165 = (*(&v471[0] + 1) + 2);
                                        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                        {
                                          v166 = 111;
                                          goto LABEL_369;
                                        }

                                        if (*(&v471[1] + 1))
                                        {
                                          v166 = DWORD2(v471[3]) | 0x2C;
LABEL_369:
                                          DWORD2(v471[3]) = v166;
                                          v213 = 760;
                                          goto LABEL_370;
                                        }

                                        *(&v471[1] + 1) = *(&v471[0] + 1);
                                        *(&v471[0] + 1) += 2;
                                        if ((v165 + 2) >= *&v471[1])
                                        {
                                          DWORD2(v471[3]) = 111;
                                          v213 = 761;
                                          goto LABEL_370;
                                        }

                                        v214 = v460;
                                        *(&v471[0] + 1) = v165 + 1;
                                        *v165 = BYTE1(v460);
                                        v215 = (*(&v471[0] + 1))++;
                                        *v215 = v214;
                                        if (DWORD2(v471[3]) > 1)
                                        {
                                          goto LABEL_265;
                                        }

                                        v216 = *(&v471[0] + 1);
                                        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                        {
                                          DWORD2(v471[3]) = 111;
                                          v213 = 762;
                                          goto LABEL_370;
                                        }

                                        ++*(&v471[0] + 1);
                                        *v216 = v66;
                                        v217 = (*(&v471[0] + 1))++;
                                        *v217 = v65;
                                        if (DWORD2(v471[3]) > 1)
                                        {
                                          goto LABEL_265;
                                        }

                                        v218 = *(&v471[0] + 1);
                                        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                        {
                                          DWORD2(v471[3]) = 111;
                                          v213 = 763;
                                          goto LABEL_370;
                                        }

                                        v219 = v461;
                                        ++*(&v471[0] + 1);
                                        *v218 = BYTE1(v461);
                                        v220 = (*(&v471[0] + 1))++;
                                        *v220 = v219;
                                      }
                                    }

LABEL_265:
                                    srpk_hostname_to_wire(v471, v472);
                                    if (DWORD2(v471[3]) <= 1)
                                    {
                                      if (!*(&v471[1] + 1))
                                      {
                                        DWORD2(v471[3]) |= 0x2Cu;
                                        LODWORD(v471[3]) = 765;
                                        if ((v34 & 1) == 0)
                                        {
                                          goto LABEL_323;
                                        }

                                        goto LABEL_298;
                                      }

                                      v180 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
                                      **(&v471[1] + 1) = HIBYTE(v180);
                                      *(*(&v471[1] + 1) + 1) = v180;
                                      *(&v471[1] + 1) = 0;
                                      if (DWORD2(v471[3]) <= 1)
                                      {
                                        v181 = *&v467[16] - *&v467[8];
                                        if (((*&v467[16] - *&v467[8]) & 0x8000) != 0)
                                        {
                                          v197 = DWORD2(v471[3]) | 0x76;
                                        }

                                        else
                                        {
                                          v182 = *(&v471[0] + 1);
                                          if ((*(&v471[0] + 1) + 2) < *&v471[1])
                                          {
                                            ++*(&v471[0] + 1);
                                            *v182 = HIBYTE(v181) | 0xC0;
                                            v183 = (*(&v471[0] + 1))++;
                                            *v183 = v181;
                                            if (DWORD2(v471[3]) <= 1)
                                            {
                                              v184 = *(&v471[0] + 1);
                                              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                              {
                                                DWORD2(v471[3]) = 111;
                                                v212 = 770;
                                                goto LABEL_342;
                                              }

                                              ++*(&v471[0] + 1);
                                              *v184 = 0;
                                              v185 = (*(&v471[0] + 1))++;
                                              *v185 = 16;
                                              if (DWORD2(v471[3]) <= 1)
                                              {
                                                v186 = *(&v471[0] + 1);
                                                if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                                {
                                                  DWORD2(v471[3]) = 111;
                                                  v212 = 771;
                                                  goto LABEL_342;
                                                }

                                                ++*(&v471[0] + 1);
                                                *v186 = 0;
                                                v187 = (*(&v471[0] + 1))++;
                                                *v187 = 1;
                                                if (DWORD2(v471[3]) <= 1)
                                                {
                                                  v188 = *(&v471[0] + 1);
                                                  if ((*(&v471[0] + 1) + 4) >= *&v471[1])
                                                  {
                                                    DWORD2(v471[3]) = 111;
                                                    v212 = 772;
                                                    goto LABEL_342;
                                                  }

                                                  ++*(&v471[0] + 1);
                                                  *v188 = HIBYTE(v160);
                                                  v189 = (*(&v471[0] + 1))++;
                                                  *v189 = BYTE2(v160);
                                                  v190 = (*(&v471[0] + 1))++;
                                                  *v190 = BYTE1(v160);
                                                  v191 = (*(&v471[0] + 1))++;
                                                  *v191 = v160;
                                                  if (DWORD2(v471[3]) <= 1)
                                                  {
                                                    if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                                                    {
                                                      v192 = 111;
                                                    }

                                                    else
                                                    {
                                                      if (!*(&v471[1] + 1))
                                                      {
                                                        *(&v471[1] + 1) = *(&v471[0] + 1);
                                                        *(&v471[0] + 1) += 2;
LABEL_343:
                                                        if ((v34 & 1) == 0)
                                                        {
                                                          goto LABEL_323;
                                                        }

                                                        goto LABEL_298;
                                                      }

                                                      v192 = DWORD2(v471[3]) | 0x2C;
                                                    }

                                                    DWORD2(v471[3]) = v192;
                                                    v212 = 773;
LABEL_342:
                                                    LODWORD(v471[3]) = v212;
                                                    goto LABEL_343;
                                                  }
                                                }
                                              }
                                            }

                                            goto LABEL_297;
                                          }

                                          v197 = 111;
                                        }

                                        DWORD2(v471[3]) = v197;
                                        LODWORD(v471[3]) = 769;
                                      }
                                    }

LABEL_297:
                                    if ((v34 & 1) == 0)
                                    {
                                      goto LABEL_323;
                                    }

LABEL_298:
                                    srpk_space_(*&v465[8], *&v465[16], 1, 634);
                                    if (**&v465[8] < 0)
                                    {
                                      v464 = 0;
                                      if (srpk_integer_from_wire_max_(v465, &v464, 63, 64, 637))
                                      {
                                        v204 = v464;
                                        v205 = global_os_log;
                                        v206 = &v465[40];
                                        while (1)
                                        {
                                          v206 = *v206;
                                          if (!v206)
                                          {
                                            break;
                                          }

                                          if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
                                          {
                                            v207 = *(v206 + 26);
                                            *v468 = 136446722;
                                            *&v468[4] = "srpk_decompress_txt_data";
                                            *&v468[12] = 1024;
                                            *&v468[14] = v207;
                                            v469 = 2048;
                                            v470 = v204;
                                            _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "%{public}s: txt record back-pointer offset: %u %llu", v468, 0x1Cu);
                                            v205 = global_os_log;
                                          }

                                          if (v204 == *(v206 + 26))
                                          {
                                            v208 = *(v206 + 4);
                                            if (v208)
                                            {
                                              if (DWORD2(v471[3]) <= 1)
                                              {
                                                v209 = *(v206 + 5);
                                                if ((*(&v471[0] + 1) + v209) <= *&v471[1])
                                                {
                                                  memcpy(*(&v471[0] + 1), v208, *(v206 + 5));
                                                  *(&v471[0] + 1) += v209;
                                                }

                                                else
                                                {
                                                  DWORD2(v471[3]) = 111;
                                                  LODWORD(v471[3]) = 650;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                                              {
                                                *v468 = 136446210;
                                                *&v468[4] = "srpk_decompress_txt_data";
                                                _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_ERROR, "%{public}s: txt record back pointer is not to a txt record.", v468, 0xCu);
                                              }

                                              LODWORD(v466) = v466 & 1 | 0x2C;
                                              *&v465[48] = 647;
                                            }

                                            goto LABEL_323;
                                          }
                                        }

                                        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                                        {
                                          *v468 = 136446210;
                                          *&v468[4] = "srpk_decompress_txt_data";
                                          _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_ERROR, "%{public}s: no match.", v468, 0xCu);
                                        }

                                        LODWORD(v466) = v466 & 1 | 4;
                                        *&v465[48] = 656;
                                      }
                                    }

                                    else
                                    {
                                      v199 = global_os_log;
                                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
                                      {
                                        *v468 = 136446210;
                                        *&v468[4] = "srpk_decompress_txt_data";
                                        _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEBUG, "%{public}s: literal txt record", v468, 0xCu);
                                      }

                                      srpk_label_cache_(v465, 5, 660);
                                      v201 = v200;
                                      *v468 = 0;
                                      if (srpk_integer_from_wire_max_(v465, v468, 63, 64, 662))
                                      {
                                        v202 = *v468;
                                        if (srpk_space_(*&v465[8], *&v465[16], *v468, 665))
                                        {
                                          v203 = *&v465[8];
                                          *(v201 + 32) = *&v465[8];
                                          *(v201 + 40) = v202;
                                          if (DWORD2(v471[3]) <= 1)
                                          {
                                            if (*(&v471[0] + 1) + v202 <= *&v471[1])
                                            {
                                              memcpy(*(&v471[0] + 1), v203, v202);
                                              *(&v471[0] + 1) += v202;
                                              v203 = *&v465[8];
                                            }

                                            else
                                            {
                                              DWORD2(v471[3]) = 111;
                                              LODWORD(v471[3]) = 670;
                                            }
                                          }

                                          *&v465[8] = &v203[v202];
                                        }
                                      }
                                    }

LABEL_323:
                                    if (DWORD2(v471[3]) <= 1)
                                    {
                                      if (*(&v471[1] + 1))
                                      {
                                        v210 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
                                        **(&v471[1] + 1) = HIBYTE(v210);
                                        *(*(&v471[1] + 1) + 1) = v210;
                                        *(&v471[1] + 1) = 0;
                                      }

                                      else
                                      {
                                        DWORD2(v471[3]) |= 0x2Cu;
                                        LODWORD(v471[3]) = 778;
                                      }
                                    }

                                    if (v466 <= 1)
                                    {
                                      if (DWORD2(v471[3]) >= 2)
                                      {
                                        v63 = -1;
                                      }

                                      else
                                      {
                                        v63 = v64;
                                      }

                                      goto LABEL_332;
                                    }

                                    goto LABEL_331;
                                  }

                                  v173 = 758;
                                  goto LABEL_346;
                                }

LABEL_264:
                                v160 = v462;
                                goto LABEL_265;
                              }

                              v173 = 757;
                            }
                          }
                        }
                      }

LABEL_346:
                      v172 = 111;
                      goto LABEL_263;
                    }

                    v173 = 750;
                  }

                  v172 = 111;
                }

LABEL_263:
                DWORD2(v471[3]) = v172;
                LODWORD(v471[3]) = v173;
                goto LABEL_264;
              }
            }

LABEL_331:
            v63 = -1;
            goto LABEL_332;
          }

          if (!srpk_space_(*&v465[8], *&v465[16], 1, 708))
          {
            goto LABEL_331;
          }

          v67 = 2;
          while (1)
          {
            v68 = v67;
            *v468 = 0;
            srpk_label_from_wire_(v465, v468, 713);
            if ((v69 & 1) == 0)
            {
              goto LABEL_291;
            }

            v70 = *v468;
            if (*v468)
            {
              do
              {
                if (DWORD2(v471[3]) <= 1)
                {
                  v71 = *(&v471[0] + 1);
                  if ((*(&v471[0] + 1) + 1) >= *&v471[1])
                  {
                    DWORD2(v471[3]) = 111;
                    v74 = 399;
LABEL_98:
                    LODWORD(v471[3]) = v74;
                    goto LABEL_99;
                  }

                  v72 = *(v70 + 8);
                  ++*(&v471[0] + 1);
                  *v71 = v72;
                  if (DWORD2(v471[3]) <= 1)
                  {
                    v73 = *(v70 + 8);
                    if ((*(&v471[0] + 1) + v73) <= *&v471[1])
                    {
                      memcpy(*(&v471[0] + 1), v70 + 9, *(v70 + 8));
                      *(&v471[0] + 1) += v73;
                      goto LABEL_99;
                    }

                    DWORD2(v471[3]) = 111;
                    v74 = 400;
                    goto LABEL_98;
                  }
                }

LABEL_99:
                v70 = *v70;
              }

              while (v70);
            }

            dns_name_to_wire_(0, v471, "_sub", 719);
            if (DWORD2(v471[3]) <= 1)
            {
              v75 = *&buf[16] - *&buf[8];
              if (((*&buf[16] - *&buf[8]) & 0x8000) != 0)
              {
                v87 = DWORD2(v471[3]) | 0x76;
LABEL_117:
                DWORD2(v471[3]) = v87;
                v88 = 720;
LABEL_118:
                LODWORD(v471[3]) = v88;
                goto LABEL_119;
              }

              v76 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
              {
                v87 = 111;
                goto LABEL_117;
              }

              ++*(&v471[0] + 1);
              *v76 = HIBYTE(v75) | 0xC0;
              v77 = (*(&v471[0] + 1))++;
              *v77 = v75;
              if (DWORD2(v471[3]) > 1)
              {
                goto LABEL_119;
              }

              v78 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
              {
                DWORD2(v471[3]) = 111;
                v88 = 723;
                goto LABEL_118;
              }

              ++*(&v471[0] + 1);
              *v78 = 0;
              v79 = (*(&v471[0] + 1))++;
              *v79 = 12;
              if (DWORD2(v471[3]) > 1)
              {
                goto LABEL_119;
              }

              v80 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
              {
                DWORD2(v471[3]) = 111;
                v88 = 724;
                goto LABEL_118;
              }

              ++*(&v471[0] + 1);
              *v80 = 0;
              v81 = (*(&v471[0] + 1))++;
              *v81 = 1;
              if (DWORD2(v471[3]) > 1)
              {
                goto LABEL_119;
              }

              v82 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 4) >= *&v471[1])
              {
                DWORD2(v471[3]) = 111;
                v88 = 725;
                goto LABEL_118;
              }

              ++*(&v471[0] + 1);
              *v82 = BYTE3(v455);
              v83 = (*(&v471[0] + 1))++;
              *v83 = BYTE2(v455);
              v84 = (*(&v471[0] + 1))++;
              *v84 = BYTE1(v455);
              v85 = (*(&v471[0] + 1))++;
              *v85 = v455;
              if (DWORD2(v471[3]) > 1)
              {
                goto LABEL_119;
              }

              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
              {
                v86 = 111;
LABEL_126:
                DWORD2(v471[3]) = v86;
                v89 = 726;
                goto LABEL_127;
              }

              if (*(&v471[1] + 1))
              {
                v86 = DWORD2(v471[3]) | 0x2C;
                goto LABEL_126;
              }

              *(&v471[1] + 1) = *(&v471[0] + 1);
              *(&v471[0] + 1) += 2;
              v90 = *&v467[16] - *&v467[8];
              if (((*&v467[16] - *&v467[8]) & 0x8000) != 0)
              {
                v94 = DWORD2(v471[3]) | 0x76;
                goto LABEL_135;
              }

              v91 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 2) >= *&v471[1])
              {
                v94 = 111;
LABEL_135:
                DWORD2(v471[3]) = v94;
                v89 = 727;
LABEL_127:
                LODWORD(v471[3]) = v89;
                goto LABEL_119;
              }

              ++*(&v471[0] + 1);
              *v91 = HIBYTE(v90) | 0xC0;
              v92 = (*(&v471[0] + 1))++;
              *v92 = v90;
              if (DWORD2(v471[3]) <= 1)
              {
                if (!*(&v471[1] + 1))
                {
                  DWORD2(v471[3]) |= 0x2Cu;
                  v89 = 728;
                  goto LABEL_127;
                }

                v93 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
                **(&v471[1] + 1) = HIBYTE(v93);
                *(*(&v471[1] + 1) + 1) = v93;
                *(&v471[1] + 1) = 0;
              }
            }

LABEL_119:
            if (!srpk_space_(*&v465[8], *&v465[16], 1, 731))
            {
              goto LABEL_291;
            }

            v67 = v68 + 1;
            if (!**&v465[8])
            {
              ++*&v465[8];
              v64 = v68 + 3;
              goto LABEL_83;
            }
          }
        }

LABEL_80:
        srpk_integer_from_wire_max_(v465, &v462, 127, 128, 701);
        goto LABEL_81;
      }

      if (v466 > 1 || DWORD2(v471[3]) > 1)
      {
        goto LABEL_331;
      }

      memset(buf, 0, 32);
      srpk_decompress_instance_labels(v465, v471, v472, 1, 0, buf, 0);
      if (!v49 || DWORD2(v471[3]) > 1)
      {
        goto LABEL_331;
      }

      v50 = *&buf[16] - *&buf[8];
      if (((*&buf[16] - *&buf[8]) & 0x8000) != 0)
      {
        v170 = DWORD2(v471[3]) | 0x76;
        v171 = 603;
      }

      else
      {
        v51 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          v171 = 603;
        }

        else
        {
          ++*(&v471[0] + 1);
          *v51 = HIBYTE(v50) | 0xC0;
          v52 = (*(&v471[0] + 1))++;
          *v52 = v50;
          if (DWORD2(v471[3]) > 1)
          {
            goto LABEL_331;
          }

          v53 = *(&v471[0] + 1);
          if ((*(&v471[0] + 1) + 2) < *&v471[1])
          {
            ++*(&v471[0] + 1);
            *v53 = 0;
            v54 = (*(&v471[0] + 1))++;
            *v54 = -1;
            if (DWORD2(v471[3]) > 1)
            {
              goto LABEL_209;
            }

            v55 = *(&v471[0] + 1);
            if ((*(&v471[0] + 1) + 2) >= *&v471[1])
            {
              DWORD2(v471[3]) = 111;
              v211 = 605;
            }

            else
            {
              ++*(&v471[0] + 1);
              *v55 = 0;
              v56 = (*(&v471[0] + 1))++;
              *v56 = -1;
              if (DWORD2(v471[3]) >= 2)
              {
                goto LABEL_209;
              }

              v57 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 4) < *&v471[1])
              {
                ++*(&v471[0] + 1);
                *v57 = 0;
                v58 = (*(&v471[0] + 1))++;
                *v58 = 0;
                v59 = (*(&v471[0] + 1))++;
                *v59 = 0;
                v60 = (*(&v471[0] + 1))++;
                *v60 = 0;
                if (DWORD2(v471[3]) <= 1)
                {
                  v61 = *(&v471[0] + 1);
                  if ((*(&v471[0] + 1) + 2) < *&v471[1])
                  {
                    ++*(&v471[0] + 1);
                    *v61 = 0;
                    v62 = (*(&v471[0] + 1))++;
                    *v62 = 0;
                    if (DWORD2(v471[3]) >= 2)
                    {
                      v63 = -1;
                    }

                    else
                    {
                      v63 = 2;
                    }

                    goto LABEL_332;
                  }

                  DWORD2(v471[3]) = 111;
                  v211 = 607;
                  goto LABEL_350;
                }

LABEL_209:
                v63 = -1;
                goto LABEL_332;
              }

              DWORD2(v471[3]) = 111;
              v211 = 606;
            }

LABEL_350:
            LODWORD(v471[3]) = v211;
            goto LABEL_209;
          }

          v171 = 604;
        }

        v170 = 111;
      }

      DWORD2(v471[3]) = v170;
      LODWORD(v471[3]) = v171;
      goto LABEL_331;
    }

    if (v35 != 2)
    {
      v223 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "srpk_message_decompress";
        *&buf[12] = 1024;
        *&buf[14] = v34;
        v224 = "%{public}s: Unknown dispatch byte %x";
LABEL_391:
        v225 = v223;
        v226 = 18;
LABEL_392:
        _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_ERROR, v224, buf, v226);
      }

      goto LABEL_393;
    }

    v37 = v474;
    *v468 = v474;
    v464 = v474;
    srpk_space_(v33, *&v465[16], 1, 427);
    v455 = v471[0];
    srpk_hostname_to_wire(v471, v472);
    if (DWORD2(v471[3]) <= 1)
    {
      v38 = *(&v471[0] + 1);
      if ((*(&v471[0] + 1) + 2) >= *&v471[1])
      {
        v95 = 432;
LABEL_138:
        DWORD2(v471[3]) = 111;
LABEL_139:
        LODWORD(v471[3]) = v95;
        goto LABEL_140;
      }

      ++*(&v471[0] + 1);
      *v38 = 0;
      v39 = (*(&v471[0] + 1))++;
      *v39 = -1;
      if (DWORD2(v471[3]) <= 1)
      {
        v40 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          v95 = 433;
          goto LABEL_138;
        }

        ++*(&v471[0] + 1);
        *v40 = 0;
        v41 = (*(&v471[0] + 1))++;
        *v41 = -1;
        if (DWORD2(v471[3]) <= 1)
        {
          v42 = *(&v471[0] + 1);
          if ((*(&v471[0] + 1) + 4) >= *&v471[1])
          {
            DWORD2(v471[3]) = 111;
            v95 = 434;
            goto LABEL_139;
          }

          ++*(&v471[0] + 1);
          *v42 = 0;
          v43 = (*(&v471[0] + 1))++;
          *v43 = 0;
          v44 = (*(&v471[0] + 1))++;
          *v44 = 0;
          v45 = (*(&v471[0] + 1))++;
          *v45 = 0;
          if (DWORD2(v471[3]) < 2)
          {
            v46 = *(&v471[0] + 1);
            if ((*(&v471[0] + 1) + 2) >= *&v471[1])
            {
              DWORD2(v471[3]) = 111;
              v95 = 435;
              goto LABEL_139;
            }

            ++*(&v471[0] + 1);
            *v46 = 0;
            v47 = (*(&v471[0] + 1))++;
            *v47 = 0;
          }
        }
      }
    }

LABEL_140:
    if ((v34 & 0x20) != 0)
    {
      if ((v34 & 0x10) == 0)
      {
        v96 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          dns_name_print_to_limit(*&v472[8], 0, buf, 0x3F1uLL);
          *v467 = 136446723;
          *&v467[4] = "srpk_decompress_host_block";
          *&v467[12] = 2160;
          *&v467[14] = 1752392040;
          *&v467[22] = 2081;
          *&v467[24] = buf;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%{public}s: %{private, mask.hash}s: host TTL provided when there are no address records.", v467, 0x20u);
        }
      }

      if (!srpk_integer_from_wire_max_(v465, v468, 127, 128, 445))
      {
        v138 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          dns_name_print_to_limit(*&v472[8], 0, buf, 0x3F1uLL);
          *v467 = 136446723;
          *&v467[4] = "srpk_decompress_host_block";
          *&v467[12] = 2160;
          *&v467[14] = 1752392040;
          *&v467[22] = 2081;
          *&v467[24] = buf;
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%{public}s: %{private, mask.hash}s: malformed host ttl", v467, 0x20u);
        }

        LODWORD(v466) = v466 & 1 | 0x2C;
        v139 = 448;
        goto LABEL_242;
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v442 = *v468;
      v449 = v473;
      v450 = *&v472[32] - *&v472[24];
      v446 = ((*&v472[32] - *&v472[24]) >> 8) | 0xFFFFFFC0;
      v111 = 1;
      v444 = v37;
      while (1)
      {
        if (!srpk_space_(*&v465[8], *&v465[16], 1, 457))
        {
          goto LABEL_291;
        }

        v112 = *&v465[8];
        v113 = ++*&v465[8];
        LODWORD(v112) = *v112;
        v114 = v112;
        if ((v112 & 0x80000000) != 0)
        {
          if (!srpk_space_(v113, *&v465[16], 8, 464))
          {
            goto LABEL_291;
          }

          if (!v449)
          {
            v198 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_209;
            }

            *v467 = 136446466;
            *&v467[4] = "srpk_decompress_host_block";
            *&v467[12] = 1024;
            *&v467[14] = v114 & 0xF;
            _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "%{public}s: Context ID %d present but no prefixes", v467, 0x12u);
            goto LABEL_291;
          }

          v132 = *v449;
          if (!*v449)
          {
LABEL_206:
            v137 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *v467 = 136446466;
              *&v467[4] = "srpk_decompress_host_block";
              *&v467[12] = 1024;
              *&v467[14] = v114 & 0xF;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "%{public}s: invalid prefix context id %d", v467, 0x12u);
            }

            LODWORD(v466) = v466 & 1 | 4;
            *&v465[48] = 486;
            goto LABEL_209;
          }

          v133 = v449[2];
          while (1)
          {
            v134 = *v133;
            if (*v133)
            {
              if (*(v134 + 34) == 1 && *(v134 + 18) == (v114 & 0xF))
              {
                break;
              }
            }

            ++v133;
            if (!--v132)
            {
              goto LABEL_206;
            }
          }

          v115 = *v134;
          v117 = *&v465[8] + 8;
          v116 = **&v465[8];
          v37 = v444;
        }

        else
        {
          if (!srpk_space_(v113, *&v465[16], 16, 490))
          {
            goto LABEL_291;
          }

          v115 = *&v465[8];
          v116 = *&v465[16];
          v117 = *&v465[8] + 16;
        }

        *&v465[8] = v117;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_195;
        }

        if (v450 < 0)
        {
          v135 = DWORD2(v471[3]) | 0x76;
          v136 = 497;
          goto LABEL_193;
        }

        v118 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          v136 = 497;
          goto LABEL_192;
        }

        ++*(&v471[0] + 1);
        *v118 = v446;
        v119 = (*(&v471[0] + 1))++;
        *v119 = v450;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_195;
        }

        v120 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          v136 = 498;
LABEL_192:
          v135 = 111;
LABEL_193:
          DWORD2(v471[3]) = v135;
LABEL_194:
          LODWORD(v471[3]) = v136;
LABEL_195:
          if ((v114 & 0x40) == 0)
          {
            goto LABEL_259;
          }

          goto LABEL_196;
        }

        ++*(&v471[0] + 1);
        *v120 = 0;
        v121 = (*(&v471[0] + 1))++;
        *v121 = 28;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_195;
        }

        v122 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          DWORD2(v471[3]) = 111;
          v136 = 499;
          goto LABEL_194;
        }

        ++*(&v471[0] + 1);
        *v122 = 0;
        v123 = (*(&v471[0] + 1))++;
        *v123 = 1;
        if (DWORD2(v471[3]) >= 2)
        {
          goto LABEL_195;
        }

        v124 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 4) >= *&v471[1])
        {
          break;
        }

        ++*(&v471[0] + 1);
        *v124 = HIBYTE(v442);
        v125 = (*(&v471[0] + 1))++;
        *v125 = BYTE2(v442);
        v126 = (*(&v471[0] + 1))++;
        *v126 = BYTE1(v442);
        v127 = (*(&v471[0] + 1))++;
        *v127 = v442;
        v37 = v444;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_195;
        }

        v128 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
        {
          DWORD2(v471[3]) = 111;
          v131 = 501;
          goto LABEL_201;
        }

        ++*(&v471[0] + 1);
        *v128 = 0;
        v129 = (*(&v471[0] + 1))++;
        *v129 = 16;
        v37 = v444;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_195;
        }

        v130 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 16) > *&v471[1])
        {
          DWORD2(v471[3]) = 111;
          v131 = 502;
LABEL_201:
          LODWORD(v471[3]) = v131;
          goto LABEL_202;
        }

        **(&v471[0] + 1) = v115;
        *(v130 + 8) = v116;
        *(&v471[0] + 1) += 16;
LABEL_202:
        v37 = v444;
        if ((v114 & 0x40) == 0)
        {
LABEL_259:
          v63 = v111 + 2;
          if ((v34 & 8) != 0)
          {
            goto LABEL_147;
          }

          goto LABEL_149;
        }

LABEL_196:
        ++v111;
      }

      DWORD2(v471[3]) = 111;
      v131 = 500;
      goto LABEL_201;
    }

    v63 = 2;
    if ((v34 & 8) == 0)
    {
      goto LABEL_149;
    }

LABEL_147:
    if (srpk_integer_from_wire_max_(v465, &v464, 127, 128, 513))
    {
      v37 = v464;
LABEL_149:
      if (DWORD2(v471[3]) > 1)
      {
        goto LABEL_250;
      }

      v97 = WORD4(v455) - v455;
      if (((DWORD2(v455) - v455) & 0x8000) != 0)
      {
        v168 = DWORD2(v471[3]) | 0x76;
        v169 = 522;
        goto LABEL_249;
      }

      v98 = *(&v471[0] + 1);
      if ((*(&v471[0] + 1) + 2) >= *&v471[1])
      {
        v169 = 522;
      }

      else
      {
        ++*(&v471[0] + 1);
        *v98 = HIBYTE(v97) | 0xC0;
        v99 = (*(&v471[0] + 1))++;
        *v99 = v97;
        if (DWORD2(v471[3]) > 1)
        {
          goto LABEL_250;
        }

        v100 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) < *&v471[1])
        {
          ++*(&v471[0] + 1);
          *v100 = 0;
          v101 = (*(&v471[0] + 1))++;
          *v101 = 25;
          if (DWORD2(v471[3]) <= 1)
          {
            v102 = *(&v471[0] + 1);
            if ((*(&v471[0] + 1) + 2) >= *&v471[1])
            {
              v169 = 524;
              goto LABEL_339;
            }

            ++*(&v471[0] + 1);
            *v102 = 0;
            v103 = (*(&v471[0] + 1))++;
            *v103 = 1;
            if (DWORD2(v471[3]) <= 1)
            {
              v104 = *(&v471[0] + 1);
              if ((*(&v471[0] + 1) + 4) < *&v471[1])
              {
                ++*(&v471[0] + 1);
                *v104 = HIBYTE(v37);
                v105 = (*(&v471[0] + 1))++;
                *v105 = BYTE2(v37);
                v106 = (*(&v471[0] + 1))++;
                *v106 = BYTE1(v37);
                v107 = (*(&v471[0] + 1))++;
                *v107 = v37;
                v109 = *(&v471[0] + 1);
                v108 = *&v471[1];
                if (DWORD2(v471[3]) <= 1)
                {
                  if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                  {
                    v110 = 111;
LABEL_354:
                    DWORD2(v471[3]) = v110;
                    LODWORD(v471[3]) = 526;
                  }

                  else
                  {
                    if (*(&v471[1] + 1))
                    {
                      v110 = DWORD2(v471[3]) | 0x2C;
                      goto LABEL_354;
                    }

                    *(&v471[1] + 1) = *(&v471[0] + 1);
                    *(&v471[0] + 1) += 2;
                    v109 += 2;
                  }
                }

LABEL_251:
                if (srpk_space_(v109, v108, 68, 528) && srpk_space_(*&v465[8], *&v465[16], 64, 531))
                {
                  v174 = (*(&v471[0] + 1))++;
                  *v174 = 2;
                  v175 = (*(&v471[0] + 1))++;
                  *v175 = 1;
                  v176 = (*(&v471[0] + 1))++;
                  *v176 = 3;
                  v177 = (*(&v471[0] + 1))++;
                  *v177 = 13;
                  v178 = *&v465[8];
                  v179 = *(&v471[0] + 1);
                  if (DWORD2(v471[3]) <= 1)
                  {
                    if ((*(&v471[0] + 1) + 64) <= *&v471[1])
                    {
                      v193 = **&v465[8];
                      v194 = *(*&v465[8] + 16);
                      v195 = *(*&v465[8] + 48);
                      *(*(&v471[0] + 1) + 32) = *(*&v465[8] + 32);
                      v179[3] = v195;
                      *v179 = v193;
                      v179[1] = v194;
                      v179 = (*(&v471[0] + 1) + 64);
                      *(&v471[0] + 1) += 64;
                      v178 = *&v465[8];
                    }

                    else
                    {
                      DWORD2(v471[3]) = 111;
                      LODWORD(v471[3]) = 538;
                    }
                  }

                  *&v465[8] = v178 + 64;
                  LOWORD(v475) = dns_key_tag_compute(v179 - v109, v109);
                  if (DWORD2(v471[3]) <= 1)
                  {
                    if (*(&v471[1] + 1))
                    {
                      v196 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
                      **(&v471[1] + 1) = HIBYTE(v196);
                      *(*(&v471[1] + 1) + 1) = v196;
                      *(&v471[1] + 1) = 0;
                    }

                    else
                    {
                      DWORD2(v471[3]) |= 0x2Cu;
                      LODWORD(v471[3]) = 541;
                    }
                  }

                  goto LABEL_332;
                }

                goto LABEL_291;
              }

              v169 = 525;
LABEL_339:
              v168 = 111;
LABEL_249:
              DWORD2(v471[3]) = v168;
              LODWORD(v471[3]) = v169;
            }
          }

LABEL_250:
          v109 = *(&v471[0] + 1);
          v108 = *&v471[1];
          goto LABEL_251;
        }

        v169 = 523;
      }

      v168 = 111;
      goto LABEL_249;
    }

    v167 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      dns_name_print_to_limit(*&v472[8], 0, buf, 0x3F1uLL);
      *v467 = 136446723;
      *&v467[4] = "srpk_decompress_host_block";
      *&v467[12] = 2160;
      *&v467[14] = 1752392040;
      *&v467[22] = 2081;
      *&v467[24] = buf;
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "%{public}s: %{private, mask.hash}s: malformed key ttl", v467, 0x20u);
    }

    LODWORD(v466) = v466 & 1 | 0x2C;
    v139 = 516;
LABEL_242:
    *&v465[48] = v139;
LABEL_291:
    v63 = -1;
LABEL_332:
    if ((v63 & 0x80000000) == 0)
    {
      v31 += v63;
      if (srpk_space_(*&v465[8], *&v465[16], 1, 919))
      {
        continue;
      }
    }

    goto LABEL_393;
  }

  *(v16 + 3) = 0;
  *(v16 + 4) = bswap32(v31) >> 16;
  *&v465[8] = v32 + 1;
  v221 = *v32;
  v5 = (*v32 & 3);
  if (v5 != 1)
  {
    v223 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "srpk_message_decompress";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      v224 = "%{public}s: Unsupported signature type: %d";
      goto LABEL_391;
    }

    goto LABEL_393;
  }

  v458 = 0;
  if ((v221 & 0x10) != 0 && !srpk_integer_from_wire_max_(v465, &v458, 127, 128, 938))
  {
    goto LABEL_393;
  }

  v457 = 0;
  if ((v221 & 8) != 0)
  {
    if (!srpk_integer_from_wire_max_(v465, &v457, 127, 128, 944))
    {
      goto LABEL_393;
    }

    v222 = v457;
  }

  else
  {
    v222 = 0;
  }

  dns_edns0_header_to_wire_(v471, 950);
  if (DWORD2(v471[3]) <= 1)
  {
    v238 = (*(&v471[0] + 1) + 2);
    if ((*(&v471[0] + 1) + 2) >= *&v471[1])
    {
      DWORD2(v471[3]) = 111;
      LODWORD(v471[3]) = 951;
      goto LABEL_428;
    }

    if (*(&v471[1] + 1))
    {
      v239 = DWORD2(v471[3]) | 0x2C;
      v240 = 951;
      goto LABEL_427;
    }

    *(&v471[1] + 1) = *(&v471[0] + 1);
    *(&v471[0] + 1) += 2;
    if ((v238 + 2) >= *&v471[1])
    {
      v239 = 111;
      v240 = 952;
    }

    else
    {
      *(&v471[0] + 1) = v238 + 1;
      *v238 = 0;
      v241 = (*(&v471[0] + 1))++;
      *v241 = 2;
      if (DWORD2(v471[3]) > 1)
      {
        goto LABEL_428;
      }

      v242 = (*(&v471[0] + 1) + 2);
      if ((*(&v471[0] + 1) + 2) >= *&v471[1])
      {
        v239 = 111;
LABEL_426:
        v240 = 953;
      }

      else
      {
        if (*&v471[2])
        {
          v239 = DWORD2(v471[3]) | 0x2C;
          goto LABEL_426;
        }

        *&v471[2] = *(&v471[0] + 1);
        *(&v471[0] + 1) += 2;
        if ((v242 + 4) >= *&v471[1])
        {
          v239 = 111;
          v240 = 954;
        }

        else
        {
          v391 = v458;
          *(&v471[0] + 1) = v242 + 1;
          *v242 = BYTE3(v458);
          v392 = (*(&v471[0] + 1))++;
          *v392 = BYTE2(v391);
          v393 = (*(&v471[0] + 1))++;
          *v393 = BYTE1(v391);
          v394 = (*(&v471[0] + 1))++;
          *v394 = v391;
          if (DWORD2(v471[3]) > 1)
          {
            goto LABEL_428;
          }

          v395 = *(&v471[0] + 1);
          if ((*(&v471[0] + 1) + 4) >= *&v471[1])
          {
            v239 = 111;
            v240 = 955;
          }

          else
          {
            ++*(&v471[0] + 1);
            *v395 = HIBYTE(v222);
            v396 = (*(&v471[0] + 1))++;
            *v396 = BYTE2(v222);
            v397 = (*(&v471[0] + 1))++;
            *v397 = BYTE1(v222);
            v398 = (*(&v471[0] + 1))++;
            *v398 = v222;
            if (DWORD2(v471[3]) > 1)
            {
              goto LABEL_428;
            }

            if (*&v471[2])
            {
              v399 = WORD4(v471[0]) - LOWORD(v471[2]) - 2;
              **&v471[2] = HIBYTE(v399);
              *(*&v471[2] + 1) = v399;
              *&v471[2] = 0;
              if (DWORD2(v471[3]) > 1)
              {
                goto LABEL_428;
              }

              if (*(&v471[1] + 1))
              {
                v400 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
                **(&v471[1] + 1) = HIBYTE(v400);
                *(*(&v471[1] + 1) + 1) = v400;
                *(&v471[1] + 1) = 0;
                if (DWORD2(v471[3]) > 1)
                {
                  goto LABEL_428;
                }

                v401 = *(&v471[0] + 1);
                if ((*(&v471[0] + 1) + 1) >= *&v471[1])
                {
                  v239 = 111;
                  v240 = 960;
                }

                else
                {
                  ++*(&v471[0] + 1);
                  *v401 = 0;
                  if (DWORD2(v471[3]) > 1)
                  {
                    goto LABEL_428;
                  }

                  v402 = *(&v471[0] + 1);
                  if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                  {
                    v239 = 111;
                    v240 = 961;
                  }

                  else
                  {
                    ++*(&v471[0] + 1);
                    *v402 = 0;
                    v403 = (*(&v471[0] + 1))++;
                    *v403 = 24;
                    if (DWORD2(v471[3]) > 1)
                    {
                      goto LABEL_428;
                    }

                    v404 = *(&v471[0] + 1);
                    if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                    {
                      v239 = 111;
                      v240 = 962;
                    }

                    else
                    {
                      ++*(&v471[0] + 1);
                      *v404 = 0;
                      v405 = (*(&v471[0] + 1))++;
                      *v405 = -1;
                      if (DWORD2(v471[3]) > 1)
                      {
                        goto LABEL_428;
                      }

                      v406 = *(&v471[0] + 1);
                      if ((*(&v471[0] + 1) + 4) >= *&v471[1])
                      {
                        v239 = 111;
                        v240 = 963;
                      }

                      else
                      {
                        ++*(&v471[0] + 1);
                        *v406 = 0;
                        v407 = (*(&v471[0] + 1))++;
                        *v407 = 0;
                        v408 = (*(&v471[0] + 1))++;
                        *v408 = 0;
                        v409 = (*(&v471[0] + 1))++;
                        *v409 = 0;
                        if (DWORD2(v471[3]) > 1)
                        {
                          goto LABEL_428;
                        }

                        v410 = *(&v471[0] + 1);
                        if ((*(&v471[0] + 1) + 2) >= *&v471[1])
                        {
                          v239 = 111;
LABEL_853:
                          v240 = 964;
                        }

                        else
                        {
                          if (*(&v471[1] + 1))
                          {
                            v239 = DWORD2(v471[3]) | 0x2C;
                            goto LABEL_853;
                          }

                          *(&v471[1] + 1) = *(&v471[0] + 1);
                          *(&v471[0] + 1) += 2;
                          if ((v410 + 4) >= *&v471[1])
                          {
                            v239 = 111;
                            v240 = 965;
                          }

                          else
                          {
                            *(&v471[0] + 1) = v410 + 3;
                            *(v410 + 2) = 0;
                            v435 = (*(&v471[0] + 1))++;
                            *v435 = 0;
                            if (DWORD2(v471[3]) > 1)
                            {
                              goto LABEL_428;
                            }

                            v436 = *(&v471[0] + 1);
                            if ((*(&v471[0] + 1) + 1) >= *&v471[1])
                            {
                              v239 = 111;
                              v240 = 966;
                            }

                            else
                            {
                              ++*(&v471[0] + 1);
                              *v436 = 13;
                              if (DWORD2(v471[3]) > 1)
                              {
                                goto LABEL_428;
                              }

                              v437 = *(&v471[0] + 1);
                              if ((*(&v471[0] + 1) + 1) >= *&v471[1])
                              {
                                v239 = 111;
                                v240 = 967;
                              }

                              else
                              {
                                ++*(&v471[0] + 1);
                                *v437 = 0;
                                if (DWORD2(v471[3]) > 1)
                                {
                                  goto LABEL_428;
                                }

                                v438 = *(&v471[0] + 1);
                                if ((*(&v471[0] + 1) + 4) < *&v471[1])
                                {
                                  ++*(&v471[0] + 1);
                                  *v438 = 0;
                                  v439 = (*(&v471[0] + 1))++;
                                  *v439 = 0;
                                  v440 = (*(&v471[0] + 1))++;
                                  *v440 = 0;
                                  v441 = (*(&v471[0] + 1))++;
                                  *v441 = 0;
                                  goto LABEL_428;
                                }

                                v239 = 111;
                                v240 = 968;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v239 = DWORD2(v471[3]) | 0x2C;
                v240 = 957;
              }
            }

            else
            {
              v239 = DWORD2(v471[3]) | 0x2C;
              v240 = 956;
            }
          }
        }
      }
    }

LABEL_427:
    DWORD2(v471[3]) = v239;
    LODWORD(v471[3]) = v240;
  }

LABEL_428:
  if ((v221 & 4) == 0)
  {
    if (DWORD2(v471[3]) <= 1)
    {
      v243 = *(&v471[0] + 1);
      if ((*(&v471[0] + 1) + 4) >= *&v471[1])
      {
        DWORD2(v471[3]) = 111;
        LODWORD(v471[3]) = 981;
      }

      else
      {
        ++*(&v471[0] + 1);
        *v243 = 0;
        v244 = (*(&v471[0] + 1))++;
        *v244 = 0;
        v245 = (*(&v471[0] + 1))++;
        *v245 = 0;
        v246 = (*(&v471[0] + 1))++;
        *v246 = 0;
        if (DWORD2(v471[3]) <= 1)
        {
          v247 = *(&v471[0] + 1);
          if ((*(&v471[0] + 1) + 4) < *&v471[1])
          {
            ++*(&v471[0] + 1);
            *v247 = 0;
            v248 = (*(&v471[0] + 1))++;
            *v248 = 0;
            v249 = (*(&v471[0] + 1))++;
            *v249 = 0;
            v250 = (*(&v471[0] + 1))++;
            *v250 = 0;
            goto LABEL_443;
          }

          v268 = 111;
          v269 = 982;
LABEL_455:
          DWORD2(v471[3]) = v268;
          LODWORD(v471[3]) = v269;
        }
      }
    }

    goto LABEL_456;
  }

  *buf = 0;
  *v467 = 0;
  if (!srpk_space_(*&v465[8], *&v465[16], 4, 971))
  {
    goto LABEL_393;
  }

  *v468 = 0;
  dns_u32_parse(*&v465[8], *&v465[16] - *&v465[8], v468, buf);
  dns_u32_parse(*&v465[8], *&v465[16] - *&v465[8], v468, v467);
  *&v465[8] += *v468;
  if (DWORD2(v471[3]) <= 1)
  {
    v251 = *(&v471[0] + 1);
    if ((*(&v471[0] + 1) + 4) >= *&v471[1])
    {
      v261 = 978;
      goto LABEL_442;
    }

    v252 = *buf;
    ++*(&v471[0] + 1);
    *v251 = buf[3];
    v253 = (*(&v471[0] + 1))++;
    *v253 = BYTE2(v252);
    v254 = (*(&v471[0] + 1))++;
    *v254 = BYTE1(v252);
    v255 = (*(&v471[0] + 1))++;
    *v255 = v252;
    if (DWORD2(v471[3]) <= 1)
    {
      v256 = *(&v471[0] + 1);
      if ((*(&v471[0] + 1) + 4) < *&v471[1])
      {
        v257 = *v467;
        ++*(&v471[0] + 1);
        *v256 = v467[3];
        v258 = (*(&v471[0] + 1))++;
        *v258 = BYTE2(v257);
        v259 = (*(&v471[0] + 1))++;
        *v259 = BYTE1(v257);
        v260 = (*(&v471[0] + 1))++;
        *v260 = v257;
        goto LABEL_443;
      }

      v261 = 979;
LABEL_442:
      DWORD2(v471[3]) = 111;
      LODWORD(v471[3]) = v261;
    }
  }

LABEL_443:
  if (DWORD2(v471[3]) <= 1)
  {
    v262 = *(&v471[0] + 1);
    if ((*(&v471[0] + 1) + 2) >= *&v471[1])
    {
      v268 = 111;
      v269 = 984;
      goto LABEL_455;
    }

    v263 = v475;
    ++*(&v471[0] + 1);
    *v262 = BYTE1(v475);
    v264 = (*(&v471[0] + 1))++;
    *v264 = v263;
    if (DWORD2(v471[3]) <= 1)
    {
      v265 = *&v472[32] - *&v472[24];
      if (((*&v472[32] - *&v472[24]) & 0x8000) != 0)
      {
        v268 = DWORD2(v471[3]) | 0x76;
      }

      else
      {
        v266 = *(&v471[0] + 1);
        if ((*(&v471[0] + 1) + 2) < *&v471[1])
        {
          ++*(&v471[0] + 1);
          *v266 = HIBYTE(v265) | 0xC0;
          v267 = (*(&v471[0] + 1))++;
          *v267 = v265;
          goto LABEL_456;
        }

        v268 = 111;
      }

      v269 = 985;
      goto LABEL_455;
    }
  }

LABEL_456:
  if (!srpk_space_(*&v465[8], *&v465[16], 64, 986) || !srpk_space_(*(&v471[0] + 1), *&v471[1], 64, 986))
  {
    goto LABEL_393;
  }

  if (DWORD2(v471[3]) <= 1)
  {
    v270 = *(&v471[0] + 1);
    if ((*(&v471[0] + 1) + 64) > *&v471[1])
    {
      v271 = 111;
      v272 = 989;
      goto LABEL_461;
    }

    v273 = **&v465[8];
    v274 = *(*&v465[8] + 16);
    v275 = *(*&v465[8] + 48);
    *(*(&v471[0] + 1) + 32) = *(*&v465[8] + 32);
    v270[3] = v275;
    *v270 = v273;
    v270[1] = v274;
    *(&v471[0] + 1) += 64;
    if (DWORD2(v471[3]) <= 1)
    {
      if (*(&v471[1] + 1))
      {
        v276 = WORD4(v471[0]) - WORD4(v471[1]) - 2;
        **(&v471[1] + 1) = HIBYTE(v276);
        *(*(&v471[1] + 1) + 1) = v276;
        *(&v471[1] + 1) = 0;
      }

      else
      {
        v271 = DWORD2(v471[3]) | 0x2C;
        v272 = 990;
LABEL_461:
        DWORD2(v471[3]) = v271;
        LODWORD(v471[3]) = v272;
      }
    }
  }

  *(v16 + 5) = 512;
  ioloop_message_create_(*(&v471[0] + 1) - v16, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-decompress.c", 1002);
  if (!v277)
  {
    v371 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srpk_message_decompress";
      v224 = "%{public}s: No memory for message!";
      v225 = v371;
      v226 = 12;
      goto LABEL_392;
    }

LABEL_393:
    free(v16);
LABEL_394:
    send_fail_response(v7, v6, 1u);
    v227 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "srp_dns_evaluate";
      _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "%{public}s: received a message marked compressed that we could not decompress", buf, 0xCu);
    }

    v228 = *(v6 + 64);
    if (*(v6 + 64))
    {
      v229 = 0;
      do
      {
        v230 = 0;
        v231 = buf;
        v232 = v229;
        do
        {
          if ((v230 | v229) >= v228)
          {
            break;
          }

          if (v231 < v488 && v230)
          {
            *v231++ = 32;
          }

          v233 = (v488 - v231);
          v234 = v232;
          v235 = 4;
          do
          {
            if (v234 >= v228)
            {
              break;
            }

            snprintf(v231, v233, "%02x", *(v456 + v234));
            v231 += 2;
            ++v234;
            v233 -= 2;
            --v235;
          }

          while (v235);
          v232 += 4;
          v236 = v230 >= 0x1C;
          v230 += 4;
        }

        while (!v236);
        v231[-(v231 == v488)] = 0;
        v237 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *v472 = 136447234;
          *&v472[4] = "srpk_hex_dump_";
          *&v472[12] = 2080;
          *&v472[14] = "srp-parse.c";
          *&v472[22] = 1024;
          *&v472[24] = 936;
          *&v472[28] = 2048;
          *&v472[30] = v229;
          *&v472[38] = 2082;
          *&v472[40] = buf;
          _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "%{public}s: %s:%d: %03lx: %{public}s", v472, 0x30u);
        }

        v229 += 32;
      }

      while (v229 < v228);
    }

    goto LABEL_17;
  }

  v3 = v277;
  memcpy((v277 + 88), v16, *(&v471[0] + 1) - v16);
  free(v16);
  v278 = *(v6 + 4);
  *(v3 + 16) = *(v6 + 16);
  *(v3 + 4) = v278;
  v279 = *(v6 + 32);
  *(v3 + 44) = *(v6 + 44);
  *(v3 + 32) = v279;
  *(v3 + 60) = *(v6 + 60);
  *(v3 + 72) = *(v6 + 72);
  *(v3 + 80) = *(v6 + 80);
  v6 = v3;
  v4 = buf;
LABEL_467:
  v463 = 0;
  v464 = 0;
  v461 = 0;
  v462 = 0;
  v460 = 0;
  *v468 = 0;
  *&v468[8] = 0;
  v280 = malloc_type_calloc(1uLL, 0x70uLL, 0x82D4608EuLL);
  if (!v280)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "srp_evaluate";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 112;
      v427 = "%{public}s: strict_calloc(%zu, %zu) failed";
      goto LABEL_817;
    }

    goto LABEL_831;
  }

  v5 = v280;
  *(v280 + 110) = 0;
  *(v280 + 108) = 2;
  dns_wire_parse_(v280 + 3, v6 + 88, *(v6 + 64));
  if (!v281)
  {
    v288 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      _os_log_impl(&_mh_execute_header, v288, OS_LOG_TYPE_ERROR, "%{public}s: dns_wire_parse failed.", buf, 0xCu);
    }

    v289 = 0;
    v4 = 0;
    v290 = 0;
    v3 = 0;
    goto LABEL_504;
  }

  v5[4] = v6;
  v282 = global_os_log;
  v283 = v6;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v284 = *v6;
    *buf = 136447490;
    *&buf[4] = "srp_evaluate";
    *&buf[12] = 1024;
    *&buf[14] = v284;
    *&buf[18] = 2048;
    *&buf[20] = v6;
    *&buf[28] = 2080;
    *&buf[30] = "ret->message";
    *&buf[38] = 2080;
    *&buf[40] = "srp-parse.c";
    *&buf[48] = 1024;
    *v477 = 309;
    _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v283 = v5[4];
  }

  v285 = *v283;
  if (*v283)
  {
    v286 = v285 + 1;
    *v283 = v285 + 1;
    if (v285 + 1 >= 10001)
    {
      v287 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "srp_evaluate";
        *&buf[12] = 1024;
        *&buf[14] = v286;
        *&buf[18] = 2048;
        *&buf[20] = v283;
        *&buf[28] = 2080;
        *&buf[30] = "ret->message";
        *&buf[38] = 2080;
        *&buf[40] = "srp-parse.c";
        *&buf[48] = 1024;
        *v477 = 309;
        _os_log_impl(&_mh_execute_header, v287, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++message_created;
    *v283 = 1;
  }

  v291 = v5[3];
  *v472 = 3600;
  *v465 = 604800;
  v292 = *(v291 + 56);
  if (!v292)
  {
    goto LABEL_500;
  }

  v293 = 0;
  do
  {
    while (*(v292 + 5) == 2)
    {
      LODWORD(v459) = 0;
      v294 = *(v292 + 4);
      if (v294 != 4 && v294 != 8)
      {
        v349 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "srp_parse_lease_times";
          *&buf[12] = 1024;
          *&buf[14] = v294;
          v300 = "%{public}s: edns0 update-lease option length bogus: %d";
          v301 = v349;
          v302 = 18;
LABEL_502:
          _os_log_impl(&_mh_execute_header, v301, OS_LOG_TYPE_ERROR, v300, buf, v302);
        }

LABEL_503:
        v289 = 0;
        v4 = 0;
        v290 = 0;
        v3 = 0;
        *(v5 + 108) = 1;
        goto LABEL_504;
      }

      dns_u32_parse(v292 + 12, *(v292 + 4), &v459, v472);
      if (*(v292 + 4) == 8)
      {
        dns_u32_parse(v292 + 12, 8u, &v459, v465);
      }

      else
      {
        *v465 = 7 * *v472;
      }

      v292 = *v292;
      v293 = 1;
      if (!v292)
      {
        goto LABEL_496;
      }
    }

    v292 = *v292;
  }

  while (v292);
  if ((v293 & 1) == 0)
  {
LABEL_500:
    v299 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srp_parse_lease_times";
      v300 = "%{public}s: no update-lease edns0 option found in supposed SRP update";
      v301 = v299;
      v302 = 12;
      goto LABEL_502;
    }

    goto LABEL_503;
  }

LABEL_496:
  v296 = *v465;
  *(v5 + 24) = *v472;
  *(v5 + 25) = v296;
  if (*(v291 + 4) != 1)
  {
    v297 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_517;
    }

    *buf = 136446210;
    *&buf[4] = "srp_evaluate";
    v298 = "%{public}s: update received with qdcount > 1";
LABEL_515:
    v310 = v297;
    v311 = 12;
    goto LABEL_516;
  }

  if (*(v291 + 8))
  {
    v297 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      v298 = "%{public}s: update received with ancount > 0";
      goto LABEL_515;
    }

LABEL_517:
    v309 = 1;
    *(v5 + 108) = 1;
LABEL_518:
    if ((*(v5 + 110) & 1) == 0)
    {
      send_fail_response(v7, v6, v309);
    }

    goto LABEL_18;
  }

  v312 = *(*(v291 + 24) + 8);
  if (v312 != 6)
  {
    v313 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_517;
    }

    *buf = 136446466;
    *&buf[4] = "srp_evaluate";
    *&buf[12] = 1024;
    *&buf[14] = v312;
    v298 = "%{public}s: update received with rrtype %d instead of SOA in question section.";
    v310 = v313;
    v311 = 18;
LABEL_516:
    _os_log_impl(&_mh_execute_header, v310, OS_LOG_TYPE_ERROR, v298, buf, v311);
    goto LABEL_517;
  }

  *&buf[8] = 0;
  *buf = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
  *(v6 + 72) = *buf;
  v290 = **(v291 + 24);
  if (service_update_zone)
  {
    if (dns_names_equal_text(**(v291 + 24), "default.service.arpa."))
    {
      v3 = service_update_zone;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  LODWORD(v314) = *(v291 + 12);
  *&v455 = v290;
  if (!v314)
  {
    v347 = 0;
LABEL_616:
    v348 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      _os_log_impl(&_mh_execute_header, v348, OS_LOG_TYPE_ERROR, "%{public}s: SRP update does not include a host description.", buf, 0xCu);
    }

    v4 = 0;
    v289 = 0;
LABEL_678:
    *(v5 + 108) = 1;
    v290 = v455;
    if (!v347)
    {
      goto LABEL_504;
    }

    goto LABEL_679;
  }

  v315 = 0;
  v289 = 0;
  v454 = 0;
  v449 = 0;
  v448 = 0;
  v447 = &v460;
  v445 = &v461;
  LODWORD(v443) = 1;
  do
  {
    v456 = v289;
    v316 = *(v291 + 40) + (v315 << 6);
    v317 = *(v316 + 8);
    if (v317 <= 0x18)
    {
      if (v317 == 1)
      {
        goto LABEL_551;
      }

      if (v317 == 12)
      {
        v328 = *v316;
        v451 = v315;
        if (*v316 && (v329 = *v328) != 0)
        {
          v330 = *v329;
          if (*v329 && !strcmp((v329 + 9), "_sub"))
          {
            v331 = v460;
            if (!v460)
            {
              goto LABEL_614;
            }

            do
            {
              if (dns_names_equal(*(*(v331 + 16) + 16), *(v316 + 16)) && (dns_names_equal(**(v331 + 16), v330) & 1) != 0)
              {
                goto LABEL_570;
              }

              v331 = *v331;
            }

            while (v331);
            v328 = *v316;
            if (!*v316)
            {
              strcpy(buf, "<null>");
            }

            else
            {
LABEL_614:
              dns_name_print_to_limit(v328, 0, buf, 0x3F2uLL);
            }

            v378 = *(v316 + 16);
            if (v378)
            {
              dns_name_print_to_limit(v378, 0, v472, 0x3F2uLL);
            }

            else
            {
              strcpy(v472, "<null>");
            }

            v379 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_776;
            }

            *v465 = 136447235;
            *&v465[4] = "srp_evaluate";
            *&v465[12] = 2160;
            *&v465[14] = 1752392040;
            *&v465[22] = 2081;
            *&v465[24] = buf;
            *&v465[32] = 2160;
            *&v465[34] = 1752392040;
            *&v465[42] = 2081;
            *&v465[44] = v472;
            v373 = "%{public}s: service subtype %{private, mask.hash}s for %{private, mask.hash}s has no preceding base type ";
LABEL_726:
            v374 = v465;
            v375 = v379;
            v376 = 52;
LABEL_775:
            _os_log_impl(&_mh_execute_header, v375, OS_LOG_TYPE_ERROR, v373, v374, v376);
            goto LABEL_776;
          }

          v331 = 0;
LABEL_570:
          v4 = buf;
        }

        else
        {
          v331 = 0;
        }

        if (*(v316 + 10) != 254 || *(v316 + 12))
        {
          v332 = malloc_type_calloc(1uLL, 0x28uLL, 0x476D05AFuLL);
          if (!v332)
          {
            v6 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_831;
            }

            goto LABEL_863;
          }

          v333 = v332;
          *v447 = v332;
          if (v331)
          {
            v334 = v331;
          }

          else
          {
            v334 = v332;
          }

          v332[1] = v334;
          v332[2] = v316;
          v335 = dns_name_subdomain_of(*v316, v455);
          v333[3] = v335;
          if (!v335)
          {
            if (*v316)
            {
              dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
            }

            else
            {
              strcpy(buf, "<null>");
            }

            v383 = *(v316 + 16);
            if (v383)
            {
              dns_name_print_to_limit(v383, 0, v472, 0x3F2uLL);
            }

            else
            {
              strcpy(v472, "<null>");
            }

            v379 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_776;
            }

            *v465 = 136447235;
            *&v465[4] = "srp_evaluate";
            *&v465[12] = 2160;
            *&v465[14] = 1752392040;
            *&v465[22] = 2081;
            *&v465[24] = buf;
            *&v465[32] = 2160;
            *&v465[34] = 1752392040;
            *&v465[42] = 2081;
            *&v465[44] = v472;
            v373 = "%{public}s: service name %{private, mask.hash}s for %{private, mask.hash}s is not in the update zone";
            goto LABEL_726;
          }

          v447 = v333;
          v290 = v455;
          goto LABEL_584;
        }

        v318 = &v463;
        v319 = v316;
        v290 = v455;
LABEL_544:
        make_delete(&v464, v318, v319, v290);
        if (v320)
        {
          v4 = 0;
          *(v5 + 108) = v320;
          goto LABEL_779;
        }

LABEL_584:
        v289 = v456;
        v315 = v451;
        goto LABEL_606;
      }

      if (v317 != 16)
      {
        goto LABEL_680;
      }

LABEL_546:
      v321 = v464;
      if (!v464)
      {
LABEL_619:
        v463 = 0;
        if (*v316)
        {
          dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v347 = v449;
        v351 = global_os_log;
        v289 = v456;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *v472 = 136446723;
          *&v472[4] = "srp_evaluate";
          *&v472[12] = 2160;
          *&v472[14] = 1752392040;
          *&v472[22] = 2081;
          *&v472[24] = buf;
          v352 = "%{public}s: ADD for service instance not preceded by delete: %{private, mask.hash}s";
          goto LABEL_676;
        }

LABEL_677:
        v4 = 0;
        goto LABEL_678;
      }

      v322 = v315;
      while ((dns_names_equal(v321[1], *v316) & 1) == 0)
      {
        v321 = *v321;
        if (!v321)
        {
          goto LABEL_619;
        }
      }

      v463 = v321;
      v4 = &v461;
      v290 = v455;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (dns_names_equal(v4[2], *v316))
        {
          goto LABEL_587;
        }
      }

      v336 = malloc_type_calloc(1uLL, 0x48uLL, 0xDFE62044uLL);
      if (!v336)
      {
        v6 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "srp_evaluate";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 72;
          v427 = "%{public}s: strict_calloc(%zu, %zu) failed";
          goto LABEL_817;
        }

LABEL_831:
        __break(1u);
LABEL_832:
        v386 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_777;
        }

        *buf = 136446210;
        *&buf[4] = "srp_evaluate";
        v387 = "%{public}s: service PTR record zone match fail!!";
        goto LABEL_738;
      }

      v4 = v336;
      v337 = v463;
      v336[3] = v463;
      v337[24] = 1;
      v336[2] = *(v337 + 1);
      *v445 = v336;
      v445 = v336;
LABEL_587:
      v315 = v322;
      v338 = *(v316 + 8);
      if (v338 == 16)
      {
        if (!v4[7])
        {
          v4[7] = v316;
          goto LABEL_604;
        }

        if (*v316)
        {
          dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v377 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_776;
        }

        *v472 = 136446723;
        *&v472[4] = "srp_evaluate";
        *&v472[12] = 2160;
        *&v472[14] = 1752392040;
        *&v472[22] = 2081;
        *&v472[24] = buf;
        v373 = "%{public}s: more than one TXT rr received for service instance: %{private, mask.hash}s";
      }

      else
      {
        if (v338 != 33)
        {
LABEL_604:
          v4 = buf;
          goto LABEL_605;
        }

        if (!v4[6])
        {
          v4[6] = v316;
          goto LABEL_604;
        }

        if (*v316)
        {
          dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v377 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_776;
        }

        *v472 = 136446723;
        *&v472[4] = "srp_evaluate";
        *&v472[12] = 2160;
        *&v472[14] = 1752392040;
        *&v472[22] = 2081;
        *&v472[24] = buf;
        v373 = "%{public}s: more than one SRV rr received for service instance: %{private, mask.hash}s";
      }

LABEL_774:
      v374 = v472;
      v375 = v377;
      v376 = 32;
      goto LABEL_775;
    }

    if (*(v316 + 8) > 0x20u)
    {
      if (v317 != 33)
      {
        if (v317 != 255 || *(v316 + 10) != 255 || *(v316 + 12))
        {
LABEL_680:
          if (*v316)
          {
            dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
          }

          else
          {
            strcpy(buf, "<null>");
          }

          v372 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_776;
          }

          *v472 = 136446979;
          *&v472[4] = "srp_evaluate";
          *&v472[12] = 1024;
          *&v472[14] = v317;
          *&v472[18] = 2160;
          *&v472[20] = 1752392040;
          *&v472[28] = 2081;
          *&v472[30] = buf;
          v373 = "%{public}s: unexpected rrtype %d on %{private, mask.hash}s in update.";
          v374 = v472;
          v375 = v372;
          v376 = 38;
          goto LABEL_775;
        }

        v451 = v315;
        v318 = 0;
        v319 = (*(v291 + 40) + (v315 << 6));
        goto LABEL_544;
      }

      goto LABEL_546;
    }

    if (v317 == 25)
    {
      if (v448)
      {
        if (v448 != 1)
        {
LABEL_563:
          v289 = v456;
          if (v448 >= v443)
          {
            v380 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "srp_evaluate";
              _os_log_impl(&_mh_execute_header, v380, OS_LOG_TYPE_ERROR, "%{public}s: coding error in key allocation", buf, 0xCu);
            }

            v4 = 0;
            goto LABEL_778;
          }

          v449[v448++] = v316;
          goto LABEL_606;
        }

        v453 = v315;
        v326 = v314 - v315;
        if (v326 != -1)
        {
          v443 = (v326 + 1);
          v327 = malloc_type_calloc(v443, 8uLL, 0x26A8C518uLL);
          if (!v327)
          {
            v6 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_831;
            }

            *buf = 136446722;
            *&buf[4] = "srp_evaluate";
            *&buf[12] = 2048;
            *&buf[14] = v443;
            *&buf[22] = 2048;
            *&buf[24] = 8;
            v427 = "%{public}s: strict_calloc(%zu, %zu) failed";
LABEL_817:
            v428 = v6;
            v429 = 32;
LABEL_830:
            _os_log_impl(&_mh_execute_header, v428, OS_LOG_TYPE_ERROR, v427, buf, v429);
            goto LABEL_831;
          }

          v449 = v327;
          v315 = v453;
          *v327 = v454;
          goto LABEL_563;
        }

        v7 = buf;
        v6 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_831;
        }

        *buf = 136446210;
        *&buf[4] = "srp_evaluate";
        v427 = "%{public}s: strict_calloc called with count 0";
LABEL_829:
        v428 = v6;
        v429 = 12;
        goto LABEL_830;
      }

      v448 = 1;
      v454 = (*(v291 + 40) + (v315 << 6));
LABEL_605:
      v289 = v456;
      goto LABEL_606;
    }

    if (v317 != 28)
    {
      goto LABEL_680;
    }

LABEL_551:
    v289 = v456;
    if (!v456)
    {
      v323 = v315;
      v324 = malloc_type_calloc(1uLL, 0x28uLL, 0x342E8E94uLL);
      v315 = v323;
      v289 = v324;
      if (!v324)
      {
        v6 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_831;
        }

        goto LABEL_863;
      }
    }

    v452 = v315;
    if (v289[3])
    {
      goto LABEL_592;
    }

    v325 = v464;
    if (!v464)
    {
LABEL_626:
      v463 = 0;
      if (*v316)
      {
        dns_name_print_to_limit(*v316, 0, buf, 0x3F2uLL);
      }

      else
      {
        strcpy(buf, "<null>");
      }

      v347 = v449;
      v351 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *v472 = 136446723;
        *&v472[4] = "srp_evaluate";
        *&v472[12] = 2160;
        *&v472[14] = 1752392040;
        *&v472[22] = 2081;
        *&v472[24] = buf;
        v352 = "%{public}s: ADD for hostname %{private, mask.hash}s without a preceding delete.";
LABEL_676:
        _os_log_impl(&_mh_execute_header, v351, OS_LOG_TYPE_ERROR, v352, v472, 0x20u);
      }

      goto LABEL_677;
    }

    while ((dns_names_equal(v325[1], *v316) & 1) == 0)
    {
      v325 = *v325;
      if (!v325)
      {
        goto LABEL_626;
      }
    }

    v463 = v325;
    v289[3] = v325;
    *v289 = v325[1];
    *(v463 + 24) = 1;
    v290 = v455;
    v315 = v452;
LABEL_592:
    v339 = *(v316 + 8);
    if (v339 == 28 || v339 == 1)
    {
      v341 = malloc_type_calloc(1uLL, 0x48uLL, 0x90EA0C66uLL);
      if (!v341)
      {
        v6 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "add_host_addr";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 72;
          v427 = "%{public}s: strict_calloc(%zu, %zu) failed";
          goto LABEL_817;
        }

        goto LABEL_831;
      }

      v342 = v289 + 1;
      v315 = v452;
      do
      {
        v343 = v342;
        v342 = *v342;
      }

      while (v342);
      *v343 = v341;
      v344 = *v316;
      v345 = *(v316 + 16);
      v346 = *(v316 + 32);
      *(v341 + 56) = *(v316 + 48);
      *(v341 + 40) = v346;
      *(v341 + 24) = v345;
      *(v341 + 8) = v344;
    }

LABEL_606:
    ++v315;
    v314 = *(v291 + 12);
  }

  while (v315 < v314);
  v456 = v289;
  if (v289)
  {
    goto LABEL_629;
  }

  if (*(v5 + 24) || !v454)
  {
    goto LABEL_690;
  }

  v370 = v464;
  if (!v464)
  {
LABEL_689:
    v463 = 0;
LABEL_690:
    v347 = v449;
    goto LABEL_616;
  }

  while ((dns_names_equal(v370[1], *v454) & 1) == 0)
  {
    v370 = *v370;
    if (!v370)
    {
      goto LABEL_689;
    }
  }

  v463 = v370;
  v456 = malloc_type_calloc(1uLL, 0x28uLL, 0x7EB6D4CAuLL);
  if (!v456)
  {
    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_831;
    }

LABEL_863:
    *buf = 136446722;
    *&buf[4] = "srp_evaluate";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&buf[24] = 40;
    v427 = "%{public}s: strict_calloc(%zu, %zu) failed";
    goto LABEL_817;
  }

  v382 = v463;
  v456[3] = v463;
  *v456 = v382[1];
  *(v382 + 24) = 1;
LABEL_629:
  v353 = v460;
  if (!v460)
  {
    goto LABEL_636;
  }

  do
  {
    if (*(v353 + 8) != v353)
    {
      goto LABEL_635;
    }

    v354 = &v461;
    do
    {
      v354 = *v354;
      if (!v354)
      {
        v369 = **(v353 + 16);
        if (v369)
        {
          dns_name_print_to_limit(v369, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v377 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_776;
        }

        *v472 = 136446723;
        *&v472[4] = "srp_evaluate";
        *&v472[12] = 2160;
        *&v472[14] = 1752392040;
        *&v472[22] = 2081;
        *&v472[24] = buf;
        v373 = "%{public}s: service points to an instance that's not included: %{private, mask.hash}s";
        goto LABEL_774;
      }
    }

    while (!dns_names_equal(v354[2], *(*(v353 + 16) + 16)));
    v354[4] = v353;
    ++*(v354 + 10);
LABEL_635:
    v353 = *v353;
  }

  while (v353);
LABEL_636:
  v355 = v461;
  if (v461)
  {
    while (*(v355 + 40))
    {
      if (dns_names_equal(*v456, *(*(v355 + 48) + 16)))
      {
        *(v355 + 8) = v456;
        ++*(v456 + 8);
      }

      v355 = *v355;
      if (!v355)
      {
        goto LABEL_641;
      }
    }

    v381 = *(v355 + 16);
    if (v381)
    {
      dns_name_print_to_limit(v381, 0, buf, 0x3F2uLL);
    }

    else
    {
      strcpy(buf, "<null>");
    }

    v377 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_776;
    }

    *v472 = 136446723;
    *&v472[4] = "srp_evaluate";
    *&v472[12] = 2160;
    *&v472[14] = 1752392040;
    *&v472[22] = 2081;
    *&v472[24] = buf;
    v373 = "%{public}s: service instance update for %{private, mask.hash}s is not referenced by a service update.";
    goto LABEL_774;
  }

LABEL_641:
  if (!v448)
  {
LABEL_654:
    if (!v456[2])
    {
      if (*v456)
      {
        dns_name_print_to_limit(*v456, 0, buf, 0x3F2uLL);
      }

      else
      {
        strcpy(buf, "<null>");
      }

      v377 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_776;
      }

      *v472 = 136446723;
      *&v472[4] = "srp_evaluate";
      *&v472[12] = 2160;
      *&v472[14] = 1752392040;
      *&v472[22] = 2081;
      *&v472[24] = buf;
      v373 = "%{public}s: host description %{private, mask.hash}s doesn't contain a key.";
      goto LABEL_774;
    }

    v361 = v464;
    if (v464)
    {
      v362 = &v462;
      v363 = &v464;
      do
      {
        v463 = v361;
        if (v361[3])
        {
          v363 = v361;
        }

        else
        {
          v364 = v361[1];
          if (v364)
          {
            dns_name_print_to_limit(v364, 0, buf, 0x3F2uLL);
          }

          else
          {
            strcpy(buf, "<null>");
          }

          v365 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v472 = 136446723;
            *&v472[4] = "srp_evaluate";
            *&v472[12] = 2160;
            *&v472[14] = 1752392040;
            *&v472[22] = 2081;
            *&v472[24] = buf;
            _os_log_impl(&_mh_execute_header, v365, OS_LOG_TYPE_DEFAULT, "%{public}s: delete for presumably previously-registered instance which is being withdrawn: %{private, mask.hash}s", v472, 0x20u);
            v361 = v463;
          }

          *v362 = v361;
          *v363 = *v361;
          *v463 = 0;
          v362 = v361;
        }

        v361 = *v363;
      }

      while (*v363);
    }

    v366 = *(v291 + 16);
    if (!v366)
    {
      v385 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_776;
      }

      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      v373 = "%{public}s: signature not present";
      v374 = buf;
      v375 = v385;
      v376 = 12;
      goto LABEL_775;
    }

    v4 = (*(v291 + 48) + ((v366 - 1) << 6));
    if (*(v4 + 4) != 24)
    {
      v386 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_777;
      }

      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      v387 = "%{public}s: signature is not at the end or is not present";
      goto LABEL_738;
    }

    if (dns_names_equal(v4[5], *v456))
    {
      if (*(v4 + 7) || *(v4 + 6))
      {
        gettimeofday(v468, 0);
        v367 = *(v6 + 72);
        if (v367)
        {
          *&buf[8] = 0;
          *buf = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
          v368 = v367 - *buf + *v468;
          *v468 = v368;
          *&v468[8] = 0;
        }

        else
        {
          v368 = *v468;
        }

        v413 = *(v4 + 6);
        if (v413 < v368 || *(v4 + 7) > v368)
        {
          v414 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v415 = *(v4 + 7);
            *buf = 136446978;
            *&buf[4] = "srp_evaluate";
            *&buf[12] = 2048;
            *&buf[14] = v415;
            *&buf[22] = 2048;
            *&buf[24] = v368;
            *&buf[32] = 2048;
            *&buf[34] = v413;
            v416 = "%{public}s: signature is not timely: %lu < %lu < %lu does not hold";
            v417 = v414;
            v418 = 42;
LABEL_801:
            _os_log_impl(&_mh_execute_header, v417, OS_LOG_TYPE_ERROR, v416, buf, v418);
            goto LABEL_802;
          }

          goto LABEL_802;
        }
      }

      srp_sig0_verify((v6 + 88), v456[2], v4);
      if ((v419 & 1) == 0)
      {
        v421 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "srp_evaluate";
          v416 = "%{public}s: signature is not valid";
          v417 = v421;
          v418 = 12;
          goto LABEL_801;
        }

LABEL_802:
        *(v5 + 110) = 1;
        goto LABEL_778;
      }

      if (!v3)
      {
        goto LABEL_813;
      }

      for (i = v464; ; i = *v463)
      {
        v463 = i;
        if (!i)
        {
          break;
        }

        replace_zone_name(i + 1, i[2], v3);
      }

      for (j = v462; ; j = *v463)
      {
        v463 = j;
        if (!j)
        {
          break;
        }

        replace_zone_name(j + 1, j[2], v3);
      }

      for (k = v460; k; k = *k)
      {
        replace_zone_name(*(k + 16), *(k + 24), v3);
        v424 = dns_name_subdomain_of(*(*(k + 16) + 16), v455);
        if (!v424)
        {
          goto LABEL_832;
        }

        replace_zone_name((*(k + 16) + 16), v424, v3);
      }

      v425 = v461;
      if (!v461)
      {
LABEL_813:
        if (*v456)
        {
          dns_name_print_to_limit(*v456, 0, v471, 0x3F2uLL);
        }

        else
        {
          strcpy(v471, "<null>");
        }

        if (*(v6 + 72))
        {
          *&buf[8] = 0;
          *buf = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
          srp_format_time_offset(v467, *buf - *(v6 + 72));
        }

        else
        {
          strcpy(v467, "not set");
        }

        v430 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v431 = *(v6 + 88);
          v433 = *(v5 + 24);
          v432 = *(v5 + 25);
          v434 = *(v6 + 80);
          *buf = 136449027;
          *&buf[4] = "srp_evaluate";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v471;
          *&buf[32] = 1024;
          *&buf[34] = 0;
          *&buf[38] = 1024;
          *&buf[40] = v431;
          *&buf[44] = 1024;
          *&buf[46] = v432;
          *v477 = 1024;
          *&v477[2] = v433;
          v478 = 1024;
          v479 = v434;
          v480 = 2082;
          v481 = v467;
          v482 = 2160;
          v483 = 1752392040;
          v484 = 2081;
          v485 = "(none)";
          v486 = 2048;
          v487 = v5;
          _os_log_impl(&_mh_execute_header, v430, OS_LOG_TYPE_DEFAULT, "%{public}s: update for %{private, mask.hash}s #%d, xid %x validates, key lease %d, host lease %d, message lease %d, receive_time %{public}s, remote %{private, mask.hash}s -> %p.", buf, 0x66u);
        }

        *(v5 + 108) = 0;
        goto LABEL_778;
      }

      while (1)
      {
        v426 = dns_name_subdomain_of(*(v425[6] + 16), v455);
        if (!v426)
        {
          break;
        }

        replace_zone_name((v425[6] + 16), v426, v3);
        v425 = *v425;
        if (!v425)
        {
          goto LABEL_813;
        }
      }

      v386 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_777;
      }

      *buf = 136446210;
      *&buf[4] = "srp_evaluate";
      v387 = "%{public}s: service instance SRV record zone match fail!!";
LABEL_738:
      v388 = buf;
      v389 = v386;
      v390 = 12;
    }

    else
    {
      v411 = v4[5];
      if (v411)
      {
        dns_name_print_to_limit(v411, 0, buf, 0x3F2uLL);
      }

      else
      {
        strcpy(buf, "<null>");
      }

      if (*v456)
      {
        dns_name_print_to_limit(*v456, 0, v472, 0x3F2uLL);
      }

      else
      {
        strcpy(v472, "<null>");
      }

      v412 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_777;
      }

      *v465 = 136447235;
      *&v465[4] = "srp_evaluate";
      *&v465[12] = 2160;
      *&v465[14] = 1752392040;
      *&v465[22] = 2081;
      *&v465[24] = buf;
      *&v465[32] = 2160;
      *&v465[34] = 1752392040;
      *&v465[42] = 2081;
      *&v465[44] = v472;
      v387 = "%{public}s: signer %{private, mask.hash}s doesn't match host %{private, mask.hash}s";
      v388 = v465;
      v389 = v412;
      v390 = 52;
    }

    _os_log_impl(&_mh_execute_header, v389, OS_LOG_TYPE_ERROR, v387, v388, v390);
    goto LABEL_777;
  }

  v356 = 0;
  v357 = 0;
  while (1)
  {
    if (v356)
    {
      v358 = v449[v356];
      v359 = dns_keys_rdata_equal(v454, v358);
      v454 = v358;
      if (!v359)
      {
        v384 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "srp_evaluate";
          _os_log_impl(&_mh_execute_header, v384, OS_LOG_TYPE_ERROR, "%{public}s: more than one key presented", buf, 0xCu);
        }

        v4 = 0;
        *(v5 + 108) = 1;
        v290 = v455;
        v347 = v449;
        v289 = v456;
        goto LABEL_679;
      }
    }

    if (v456[2] || !dns_names_equal(*v454, *v456))
    {
      break;
    }

    v456[2] = v454;
LABEL_653:
    ++v356;
    v357 = 1;
    if (v356 == v448)
    {
      goto LABEL_654;
    }
  }

  v360 = &v461;
  while (1)
  {
    v360 = *v360;
    if (!v360)
    {
      break;
    }

    if (dns_names_equal(v360[2], *v454))
    {
      goto LABEL_653;
    }
  }

  if (v357)
  {
    goto LABEL_653;
  }

  if (*v454)
  {
    dns_name_print_to_limit(*v454, 0, buf, 0x3F2uLL);
  }

  else
  {
    strcpy(buf, "<null>");
  }

  v377 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *v472 = 136446723;
    *&v472[4] = "srp_evaluate";
    *&v472[12] = 2160;
    *&v472[14] = 1752392040;
    *&v472[22] = 2081;
    *&v472[24] = buf;
    v373 = "%{public}s: key present for name %{private, mask.hash}s which is neither a host nor an instance name.";
    goto LABEL_774;
  }

LABEL_776:
  v4 = 0;
LABEL_777:
  *(v5 + 108) = 1;
LABEL_778:
  v290 = v455;
LABEL_779:
  v347 = v449;
  v289 = v456;
  if (v449)
  {
LABEL_679:
    free(v347);
  }

LABEL_504:
  v303 = v464;
  v463 = v464;
  if (v464)
  {
    do
    {
      v304 = *v303;
      free(v303);
      v463 = v304;
      v303 = v304;
    }

    while (v304);
  }

  v305 = v460;
  v306 = v461;
  v5[5] = v289;
  v5[6] = v306;
  v307 = v462;
  v5[7] = v305;
  v5[8] = v307;
  if (v3)
  {
    v308 = v3;
  }

  else
  {
    v308 = v290;
  }

  v5[9] = v308;
  v5[11] = v4;
  v309 = *(v5 + 108);
  if (*(v5 + 108))
  {
    goto LABEL_518;
  }

  v5[1] = v7;
  ioloop_comm_retain_(v7, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-parse.c", 956);
  v5[10] = a2;

  srp_update_start();
}

uint64_t send_fail_response(uint64_t a1, uint64_t a2, unsigned int a3)
{
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
  v28 = 0u;
  v43 = 0;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 0x17)
    {
      v7 = "Unknown rcode.";
    }

    else
    {
      v7 = off_1000A5370[a3];
    }

    *v9 = 136446466;
    *&v9[4] = "send_fail_response";
    *&v9[12] = 2082;
    *&v9[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: rcode = %{public}s", v9, 0x16u);
  }

  v11 = 0;
  v10[0] = *(a2 + 88);
  v10[1] = bswap32(a3 | (bswap32(*(a2 + 90) & 0xF0FF) >> 16) | 0x8000) >> 16;
  *v9 = v10;
  *&v9[8] = 12;
  return ioloop_send_message(a1, a2, v9);
}

void *srp_proxy_init()
{
  v0 = service_update_zone;
  if (service_update_zone)
  {
    do
    {
      v1 = *v0;
      free(v0);
      v0 = v1;
    }

    while (v1);
  }

  result = dns_pres_name_parse("local");
  service_update_zone = result;
  return result;
}

void ioloop_udp_read_callback(uint64_t a1, uint64_t a2)
{
  memset(v48, 0, 28);
  *(&v47.msg_iovlen + 1) = 0;
  *(&v47.msg_namelen + 1) = 0;
  v46[0] = __src;
  v46[1] = 1410;
  v47.msg_iov = v46;
  v47.msg_iovlen = 1;
  v47.msg_name = v48;
  v47.msg_namelen = 28;
  v47.msg_control = &v91;
  v47.msg_flags = 0;
  v47.msg_controllen = 256;
  v3 = recvmsg(*(a1 + 92), &v47, 0);
  if (v3 < 0)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136446466;
    v50 = "ioloop_udp_read_callback";
    v51 = 2080;
    v52 = v11;
    v9 = "%{public}s: %s";
    goto LABEL_8;
  }

  v4 = v3;
  ioloop_message_create_(v3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/ioloop.c", 612);
  if (!v5)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v50 = "ioloop_udp_read_callback";
    v9 = "%{public}s: out of memory";
    v12 = v14;
    v13 = 12;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = v48[0];
  *(v5 + 16) = *(v48 + 12);
  *(v5 + 4) = v7;
  if (v4 >= 0x10000)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v50 = "ioloop_udp_read_callback";
    v51 = 2048;
    v52 = v4;
    v9 = "%{public}s: message is surprisingly large: %zd";
LABEL_8:
    v12 = v8;
    v13 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v9, buf, v13);
    return;
  }

  *(v5 + 64) = v4;
  memcpy((v5 + 88), __src, v4);
  v15 = 0;
  if (v47.msg_controllen >= 0xC)
  {
    msg_control = v47.msg_control;
    if (v47.msg_control)
    {
      LOBYTE(v15) = 0;
      do
      {
        memset(v45, 0, 28);
        v41 = 0;
        v42 = 0;
        v44 = 0;
        v43 = 0;
        v17 = msg_control[1];
        if (v17)
        {
          if (v17 == 41 && msg_control[2] == 46)
          {
            v18 = *(msg_control + 3);
            *(v6 + 60) = msg_control[7];
            *(v6 + 33) = 30;
            *(v6 + 34) = bswap32(*(a2 + 160)) >> 16;
            *(v6 + 40) = v18;
            *(v6 + 32) = 28;
            goto LABEL_22;
          }
        }

        else if (msg_control[2] == 26)
        {
          v19 = msg_control[5];
          *(v6 + 60) = msg_control[3];
          *(v6 + 36) = v19;
          *(v6 + 32) = 540;
          *(v6 + 34) = bswap32(*(a2 + 160)) >> 16;
          goto LABEL_22;
        }

        if ((v15 & 1) == 0)
        {
          v15 = 0;
          goto LABEL_45;
        }

LABEL_22:
        if (*(&v48[0] + 1) || LOWORD(v48[1]) || WORD1(v48[1]) != 0xFFFF)
        {
          v45[0] = v48[0];
          *(v45 + 12) = *(v48 + 12);
          v20 = BYTE1(v48[0]) == 30;
        }

        else
        {
          v20 = 0;
          BYTE1(v45[0]) = 2;
          DWORD1(v45[0]) = DWORD1(v48[1]);
          WORD1(v45[0]) = WORD1(v48[0]);
        }

        ioloop_normalize_address(&v41, (v6 + 32));
        v21 = global_os_log;
        v22 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v22)
          {
            v23 = "ULA: ";
            if ((v42 & 0xFE) != 0xFC)
            {
              if (v42 != 254 || (v23 = "LUA: ", (BYTE1(v42) & 0xC0) != 0x80))
              {
                v23 = "";
                if ((v42 & 0xE0) == 0x20)
                {
                  v23 = "GUA: ";
                }
              }
            }

            v24 = "ULA: ";
            if ((BYTE8(v45[0]) & 0xFE) != 0xFC)
            {
              if (BYTE8(v45[0]) != 254 || (v24 = "LUA: ", (BYTE9(v45[0]) & 0xC0) != 0x80))
              {
                v24 = "";
                if ((BYTE8(v45[0]) & 0xE0) == 0x20)
                {
                  v24 = "GUA: ";
                }
              }
            }

            v25 = *(v6 + 60);
            *buf = 136452355;
            v50 = "ioloop_udp_read_callback";
            v51 = 2048;
            v52 = v4;
            v53 = 1024;
            v54 = v25;
            v55 = 2082;
            v56 = v23;
            v57 = 2160;
            *v58 = 1752392040;
            *&v58[8] = 1041;
            *&v58[10] = 6;
            v59 = 2097;
            *v60 = &v42;
            *&v60[8] = 2160;
            *&v60[10] = 1752392040;
            *&v60[18] = 1042;
            LODWORD(v61) = 2;
            WORD2(v61) = 2098;
            *(&v61 + 6) = &v42 + 6;
            HIWORD(v61) = 2160;
            v62 = 1752392040;
            v63 = 1041;
            v64 = 8;
            v65 = 2097;
            v66 = &v43;
            v67 = 1024;
            v68 = bswap32(WORD1(v41)) >> 16;
            v69 = 2082;
            v70 = v24;
            v71 = 2160;
            v72 = 1752392040;
            v73 = 1041;
            v74 = 6;
            v75 = 2097;
            v76 = v45 + 8;
            v77 = 2160;
            v78 = 1752392040;
            v79 = 1042;
            v80 = 2;
            v81 = 2098;
            v82 = v45 + 14;
            v83 = 2160;
            v84 = 1752392040;
            v85 = 1041;
            v86 = 8;
            v87 = 2097;
            v88 = &v45[1];
            v89 = 1024;
            v90 = bswap32(WORD1(v45[0])) >> 16;
            v26 = v21;
            v27 = "%{public}s: received %zd byte UDP message on index %d to {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}#%d from {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}#%d";
            v28 = 216;
            goto LABEL_42;
          }
        }

        else if (v22)
        {
          v29 = *(v6 + 60);
          *buf = 136448771;
          v50 = "ioloop_udp_read_callback";
          v51 = 2048;
          v52 = v4;
          v53 = 1024;
          v54 = v29;
          v55 = 2160;
          v56 = 1752392040;
          v57 = 1041;
          *v58 = 4;
          *&v58[4] = 2097;
          *&v58[6] = &v41 + 4;
          v59 = 1024;
          *v60 = bswap32(WORD1(v41)) >> 16;
          *&v60[4] = 2160;
          *&v60[6] = 1752392040;
          *&v60[14] = 1041;
          *&v60[16] = 4;
          LOWORD(v61) = 2097;
          *(&v61 + 2) = &v41 + 4;
          WORD5(v61) = 1024;
          HIDWORD(v61) = bswap32(WORD1(v45[0])) >> 16;
          v26 = v21;
          v27 = "%{public}s: received %zd byte UDP message on index %d to %{private, mask.hash, network:in_addr}.4P#%d from %{private, mask.hash, network:in_addr}.4P#%d";
          v28 = 92;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
        }

        v15 = 1;
LABEL_45:
        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      }

      while ((msg_control + 3) <= v47.msg_control + v47.msg_controllen && msg_control != 0);
    }
  }

  v31 = *(a2 + 408);
  if (v31)
  {
    v32 = *(v6 + 60);
    if (v32)
    {
      if (v31 >= 2)
      {
        v39 = v31 + 8;
        while (1)
        {
          v39 = *v39;
          if (!v39)
          {
            break;
          }

          if (*(v39 + 16) == v32)
          {
            goto LABEL_60;
          }
        }
      }

      v33 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      *buf = 136446466;
      v50 = "ioloop_udp_read_callback";
      v51 = 1024;
      LODWORD(v52) = v32;
      v34 = "%{public}s: dropping message because it arrived on interface index %d which is not permitted";
      v35 = v33;
      v36 = OS_LOG_TYPE_DEFAULT;
      v37 = 18;
      goto LABEL_65;
    }

    v38 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v50 = "ioloop_udp_read_callback";
      v34 = "%{public}s: dropping message because we didn't receive an interface index";
      v35 = v38;
      v36 = OS_LOG_TYPE_DEFAULT;
LABEL_64:
      v37 = 12;
LABEL_65:
      _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, v37);
    }
  }

  else
  {
LABEL_60:
    if (v15)
    {
      (*(a2 + 208))(a2, v6, *(a2 + 200));
    }

    else
    {
      v40 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v50 = "ioloop_udp_read_callback";
        v34 = "%{public}s: dropping incoming packet because we didn't get a destination address.";
        v35 = v40;
        v36 = OS_LOG_TYPE_ERROR;
        goto LABEL_64;
      }
    }
  }

LABEL_66:
  ioloop_message_release_(v6, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/ioloop.c", 707);
}

uint64_t ioloop_normalize_address(uint64_t result, __int128 *a2)
{
  if (*(a2 + 4) || *(a2 + 5) || *(a2 + 6) || *(a2 + 7) || *(a2 + 8) || *(a2 + 9) != -1)
  {
    v2 = *a2;
    *(result + 12) = *(a2 + 12);
    *result = v2;
  }

  else
  {
    *(result + 1) = 2;
    *(result + 4) = *(a2 + 5);
    *(result + 2) = *(a2 + 1);
  }

  return result;
}