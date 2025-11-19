void omr_watcher_wakeup_release(void *a1)
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
    v7 = "omr_watcher_wakeup_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "watcher";
    *&v9[24] = 2080;
    *&v9[26] = "omr-watcher.c";
    v10 = 1024;
    v11 = 674;
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
    v7 = "omr_watcher_wakeup_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "watcher";
    *&v9[24] = 2080;
    *&v9[26] = "omr-watcher.c";
    v10 = 1024;
    v11 = 674;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "omr_watcher_wakeup_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "watcher";
    *&v9[24] = 2080;
    *&v9[26] = "omr-watcher.c";
    v10 = 1024;
    v11 = 674;
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
      v7 = "omr_watcher_wakeup_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "watcher";
      *&v9[18] = 2080;
      *&v9[20] = "omr-watcher.c";
      *&v9[28] = 1024;
      *&v9[30] = 674;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++omr_watcher_finalized;
    omr_watcher_finalize(a1);
  }
}

uint64_t omr_watcher_prefix_recheck_wakeup(uint64_t result)
{
  *(result + 110) = 0;
  v1 = *(result + 72);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      while ((*(v1 + 62) & 1) != 0 || (*(v1 + 63) & 1) != 0)
      {
        v1 = *(v1 + 8);
        v3 = 1;
        if (!v1)
        {
          goto LABEL_10;
        }
      }

      v1 = *(v1 + 8);
    }

    while (v1);
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "omr_watcher_prefix_recheck_wakeup";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: prefixes expected to be refreshed were not.", &v5, 0xCu);
    }

    return omr_watcher_onmesh_prefix_list_fetch(v2);
  }

  return result;
}

void omr_watcher_netdata_callback(void *a1, int **a2, int a3)
{
  if (a3 == -65569)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if (a3 != -65563)
    {
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446466;
        v17 = "omr_watcher_netdata_callback";
        v18 = 1024;
        *v19 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: unhandled error %d", &v16, 0x12u);
      }

LABEL_14:
      if (a3 != -65563 && a3 != -65569)
      {
        return;
      }

      cti_events_discontinue(a1[6]);
      a1[6] = 0;
      v12 = *a1;
      if (*a1)
      {
        v13 = global_os_log;
        if (v12 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136447490;
            v17 = "omr_watcher_netdata_callback";
            v18 = 1024;
            *v19 = v12;
            *&v19[4] = 2048;
            *&v19[6] = a1;
            *&v19[14] = 2080;
            *&v19[16] = "omw";
            *&v19[24] = 2080;
            *&v19[26] = "omr-watcher.c";
            v20 = 1024;
            v21 = 666;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
            v12 = *a1;
          }

          *a1 = v12 - 1;
          if (v12 == 1)
          {
            v14 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 136447234;
              v17 = "omr_watcher_netdata_callback";
              v18 = 2048;
              *v19 = a1;
              *&v19[8] = 2080;
              *&v19[10] = "omw";
              *&v19[18] = 2080;
              *&v19[20] = "omr-watcher.c";
              *&v19[28] = 1024;
              *&v19[30] = 666;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v16, 0x30u);
            }

            ++omr_watcher_finalized;
            omr_watcher_finalize(a1);
          }

          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_32:
          abort();
        }

        v16 = 136447490;
        v17 = "omr_watcher_netdata_callback";
        v18 = 1024;
        *v19 = v12;
        *&v19[4] = 2048;
        *&v19[6] = a1;
        *&v19[14] = 2080;
        *&v19[16] = "omw";
        *&v19[24] = 2080;
        *&v19[26] = "omr-watcher.c";
        v20 = 1024;
        v21 = 666;
        v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v13 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }

        v16 = 136447490;
        v17 = "omr_watcher_netdata_callback";
        v18 = 1024;
        *v19 = 0;
        *&v19[4] = 2048;
        *&v19[6] = a1;
        *&v19[14] = 2080;
        *&v19[16] = "omw";
        *&v19[24] = 2080;
        *&v19[26] = "omr-watcher.c";
        v20 = 1024;
        v21 = 666;
        v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v15, &v16, 0x36u);
      goto LABEL_32;
    }

LABEL_4:
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "omr_watcher_netdata_callback";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", &v16, 0xCu);
    }

    v6 = a1[10];
    if (v6)
    {
      v6(a1[1]);
    }

    goto LABEL_14;
  }

  v8 = *a2;
  v9 = global_os_log;
  if (*a2)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v8;
      v16 = 136446722;
      v17 = "omr_watcher_netdata_callback";
      v18 = 2048;
      *v19 = v8;
      *&v19[8] = 1024;
      *&v19[10] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: prefixes: %p  count: %d", &v16, 0x1Cu);
      v8 = *a2;
    }

    omr_watcher_onmesh_prefixes_update(a1, v8);
  }

  else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
  {
    v16 = 136446210;
    v17 = "omr_watcher_netdata_callback";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s: got null prefixes from netdata callback", &v16, 0xCu);
  }
}

const char *dns_qclass_to_string(int a1)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return "in";
    }

    if (a1 == 3)
    {
      return "chaos";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return "hesiod";
      case 254:
        return "none";
      case 255:
        return "any";
    }
  }

  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
  {
    v4 = 136446466;
    v5 = "dns_qclass_to_string";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%{public}s: Invalid qclass - qclass: %u", &v4, 0x12u);
  }

  return "<INVALID dns_qclass>";
}

const char *dns_rrtype_to_string(int a1)
{
  if (a1 > 248)
  {
    if (a1 > 255)
    {
      if (a1 <= 258)
      {
        if (a1 == 256)
        {
          return "uri";
        }

        else if (a1 == 257)
        {
          return "caa";
        }

        else
        {
          return "avc";
        }
      }

      else
      {
        if (a1 >= 0x8000)
        {
          if (a1 == 0x8000)
          {
            return "ta";
          }

          if (a1 == 32769)
          {
            return "dlv";
          }
        }

        else
        {
          if (a1 == 259)
          {
            return "doa";
          }

          if (a1 == 260)
          {
            return "amtrelay";
          }
        }

LABEL_106:
        v4 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v5 = 136446466;
          v6 = "dns_rrtype_to_string";
          v7 = 1024;
          v8 = a1;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%{public}s: Invalid dns_rrtype - rrtype: %u", &v5, 0x12u);
        }

        return "<INVALID dns_rrtype>";
      }
    }

    else if (a1 <= 251)
    {
      if (a1 == 249)
      {
        return "tkey";
      }

      else if (a1 == 250)
      {
        return "tsig";
      }

      else
      {
        return "ixfr";
      }
    }

    else if (a1 > 253)
    {
      if (a1 == 254)
      {
        return "maila";
      }

      else
      {
        return "any";
      }
    }

    else if (a1 == 252)
    {
      return "axfr";
    }

    else
    {
      return "mailb";
    }
  }

  else
  {
    v2 = a1 - 1;
    result = "a";
    switch(v2)
    {
      case 0:
        return result;
      case 1:
        result = "ns";
        break;
      case 2:
        result = "md";
        break;
      case 3:
        result = "mf";
        break;
      case 4:
        result = "cname";
        break;
      case 5:
        result = "soa";
        break;
      case 6:
        result = "mb";
        break;
      case 7:
        result = "mg";
        break;
      case 8:
        result = "mr";
        break;
      case 9:
        result = "null";
        break;
      case 10:
        result = "wks";
        break;
      case 11:
        result = "ptr";
        break;
      case 12:
        result = "hinfo";
        break;
      case 13:
        result = "minfo";
        break;
      case 14:
        result = "mx";
        break;
      case 15:
        result = "txt";
        break;
      case 16:
        result = "rp";
        break;
      case 17:
        result = "afsdb";
        break;
      case 18:
        result = "x25";
        break;
      case 19:
        result = "isdn";
        break;
      case 20:
        result = "rt";
        break;
      case 21:
        result = "nsap";
        break;
      case 22:
        result = "nsap_ptr";
        break;
      case 23:
        result = "sig";
        break;
      case 24:
        result = "key";
        break;
      case 25:
        result = "px";
        break;
      case 26:
        result = "gpos";
        break;
      case 27:
        result = "aaaa";
        break;
      case 28:
        result = "loc";
        break;
      case 29:
        result = "nxt";
        break;
      case 30:
        result = "eid";
        break;
      case 31:
        result = "nimloc";
        break;
      case 32:
        result = "srv";
        break;
      case 33:
        result = "atma";
        break;
      case 34:
        result = "naptr";
        break;
      case 35:
        result = "kx";
        break;
      case 36:
        result = "cert";
        break;
      case 37:
        result = "a6";
        break;
      case 38:
        result = "dname";
        break;
      case 39:
        result = "sink";
        break;
      case 40:
        result = "opt";
        break;
      case 41:
        result = "apl";
        break;
      case 42:
        result = "ds";
        break;
      case 43:
        result = "sshfp";
        break;
      case 44:
        result = "ipseckey";
        break;
      case 45:
        result = "rrsig";
        break;
      case 46:
        result = "nsec";
        break;
      case 47:
        result = "dnskey";
        break;
      case 48:
        result = "dhcid";
        break;
      case 49:
        result = "nsec3";
        break;
      case 50:
        result = "nsec3param";
        break;
      case 51:
        result = "tlsa";
        break;
      case 52:
        result = "smimea";
        break;
      case 54:
        result = "hip";
        break;
      case 55:
        result = "ninfo";
        break;
      case 56:
        result = "rkey";
        break;
      case 57:
        result = "talink";
        break;
      case 58:
        result = "cds";
        break;
      case 59:
        result = "cdnskey";
        break;
      case 60:
        result = "openpgpkey";
        break;
      case 61:
        result = "csync";
        break;
      case 62:
        result = "zonemd";
        break;
      case 63:
        result = "svcb";
        break;
      case 64:
        result = "https";
        break;
      case 98:
        result = "spf";
        break;
      case 99:
        result = "uinfo";
        break;
      case 100:
        result = "uid";
        break;
      case 101:
        result = "gid";
        break;
      case 102:
        result = "unspec";
        break;
      case 103:
        result = "nid";
        break;
      case 104:
        result = "l32";
        break;
      case 105:
        result = "l64";
        break;
      case 106:
        result = "lp";
        break;
      case 107:
        result = "eui48";
        break;
      case 108:
        result = "eui64";
        break;
      default:
        goto LABEL_106;
    }
  }

  return result;
}

BOOL dp_start_dropping()
{
  v0 = connection_dropper;
  if (!connection_dropper)
  {
    v0 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 667);
    connection_dropper = v0;
  }

  return ioloop_add_wake_event(v0, 0, dp_drop_connections, 0, 0x15F90u);
}

uint64_t dp_drop_connections()
{
  for (i = dso_connections; i; i = *i)
  {
    if (*(i + 24) == dns_push_callback)
    {
      v1 = *(i + 8);
      v2 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(i + 152);
        *buf = 136446723;
        v7 = "dp_drop_connections";
        v8 = 2160;
        v9 = 1752392040;
        v10 = 2081;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: dropping connection for %{private, mask.hash}s.", buf, 0x20u);
      }

      v4 = *(v1 + 8);
      if (v4)
      {
        ioloop_comm_cancel(v4);
      }
    }
  }

  return dp_start_dropping();
}

void dns_push_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 0:
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v7 = *(a3 + 48);
        }

        else
        {
          v7 = 0;
        }

        v51 = (*(a2 + 90) >> 3) & 0xF;
        v52 = *(a3 + 152);
        *buf = 136447235;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v7;
        *&v112[4] = 1024;
        *&v112[6] = v51;
        *&v112[10] = 2160;
        *&v112[12] = 1752392040;
        *&v112[20] = 2081;
        *&v112[22] = v52;
        v34 = "%{public}s: [DSO%d] DNS Message (opcode=%d) received from %{private, mask.hash}s";
        goto LABEL_75;
      }

      return;
    case 1:
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v21 = *(a3 + 48);
        }

        else
        {
          v21 = 0;
        }

        v53 = (*(a2 + 90) >> 3) & 0xF;
        v54 = *(a3 + 152);
        *buf = 136447235;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v21;
        *&v112[4] = 1024;
        *&v112[6] = v53;
        *&v112[10] = 2160;
        *&v112[12] = 1752392040;
        *&v112[20] = 2081;
        *&v112[22] = v54;
        v34 = "%{public}s: [DSO%d] DNS Response (opcode=%d) received from %{private, mask.hash}s";
LABEL_75:
        v35 = buf;
        v36 = v6;
        goto LABEL_76;
      }

      return;
    case 2:
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v17 = *(a3 + 48);
        }

        else
        {
          v17 = 0;
        }

        v43 = *(a3 + 88);
        v44 = *(a2 + 88);
        v45 = *(a3 + 152);
        *buf = 136447491;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v17;
        *&v112[4] = 1024;
        *&v112[6] = v43;
        *&v112[10] = 1024;
        *&v112[12] = v44;
        *&v112[16] = 2160;
        *&v112[18] = 1752392040;
        *&v112[26] = 2081;
        *&v112[28] = v45;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d] DSO Message (Primary TLV=%d) (xid=%x) received from %{private, mask.hash}s", buf, 0x32u);
      }

      v46 = (a2 + 88);
      v47 = *(a2 + 88);
      if (*(a1 + 40) || *(a3 + 88) == -1780)
      {
        goto LABEL_93;
      }

      if (num_push_sessions == 15)
      {
        v48 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(a1 + 4);
          *buf = 136446722;
          *&buf[4] = "dso_limit";
          v111 = 1024;
          *v112 = v49;
          *&v112[4] = 1024;
          *&v112[6] = 15;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d] no more DNS Push connections allowed--sending retry-delay: %d", buf, 0x18u);
          LOWORD(v47) = *v46;
        }

        dso_retry_delay_response(*(a1 + 8), a2, v47, *(a2 + 90));
        ++num_push_sessions_dropped_for_load;
        dp_tracker_idle_after(a1, 5, 0);
        return;
      }

      v59 = ++num_push_sessions;
      v60 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = *(a1 + 4);
        *buf = 136446722;
        *&buf[4] = "dso_limit";
        v111 = 1024;
        *v112 = v61;
        *&v112[4] = 1024;
        *&v112[6] = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d] new DNS Push connection, count is now %d", buf, 0x18u);
      }

      *(a1 + 40) = 1;
LABEL_93:
      v62 = *(a3 + 88);
      if (v62 <= 0x41)
      {
        if (v62 != 64)
        {
          if (v62 == 65)
          {
            v63 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(a3 + 48);
              v65 = *(a1 + 4);
              *buf = 136446978;
              *&buf[4] = "dso_message";
              v111 = 1024;
              *v112 = v64;
              *&v112[4] = 1024;
              *&v112[6] = v65;
              *&v112[10] = 1024;
              *&v112[12] = 65;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][TRK%d] bogus push update message %d", buf, 0x1Eu);
            }

            dso_state_cancel(a3);
            return;
          }

          goto LABEL_109;
        }

        v82 = "DNS Push Subscribe";
LABEL_114:
        dns_push_subscription_change(v82, a1, (a2 + 88), a3, v47);
        return;
      }

      if (v62 == 66)
      {
        v82 = "DNS Push Unsubscribe";
        goto LABEL_114;
      }

      if (v62 != 67)
      {
LABEL_109:
        v79 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *(a3 + 48);
          v81 = *(a1 + 4);
          *buf = 136446978;
          *&buf[4] = "dso_message";
          v111 = 1024;
          *v112 = v80;
          *&v112[4] = 1024;
          *&v112[6] = v81;
          *&v112[10] = 1024;
          *&v112[12] = v62;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][TRK%d] unexpected primary TLV %d", buf, 0x1Eu);
        }

        dso_simple_response(*(a1 + 8), 0, v46, 11);
        return;
      }

      v66 = *(a1 + 8);
      v101 = 0;
      memset(rrtype, 0, sizeof(rrtype));
      v67 = a2 + 100;
      v100 = *(a3 + 96) - v67;
      v68 = v100 + *(a3 + 90);
      v69 = *(v66 + 200);
      if (dns_rr_parse_() && dns_u16_parse(v67, v68, &v100, &v101))
      {
        v70 = v100;
        v71 = v100 + v101;
        if (v71 == v68)
        {
          v72 = v101;
          if (dp_served(*rrtype, buf))
          {
            v73 = strlen(buf);
            if (v73 - 249 <= 0xFFFFFFFFFFFFFEFELL)
            {
              dso_simple_response(v66, 0, v46, 1);
              v75 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_127;
              }

              v76 = *(a3 + 48);
              v77 = *(v66 + 180);
              if (v69)
              {
                v78 = *(v69 + 4);
              }

              else
              {
                v78 = 0;
              }

              *v102 = 136447234;
              *&v102[4] = "dns_push_reconfirm";
              *&v102[12] = 1024;
              *&v102[14] = v76;
              v103 = 1024;
              v104 = v77;
              v105 = 1024;
              v106 = v78;
              v107 = 2080;
              v108 = buf;
              v88 = "%{public}s: [DSO%d][C%d][TRK%d] name is too long for .local suffix: %s";
              v89 = v102;
LABEL_125:
              v90 = v75;
              v91 = 40;
LABEL_126:
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, v88, v89, v91);
              goto LABEL_127;
            }

            *&buf[v73] = 0x2E6C61636F6C2ELL;
          }

          else
          {
            dns_name_print_to_limit(*rrtype, 0, &buf[8], 0xF8uLL);
          }

          DNSServiceReconfirmRecord(0, buf, rrtype[4], rrtype[5], v72, v67 + v70, v74);
          dso_simple_response(v66, 0, v46, 0);
        }

        else
        {
          dso_simple_response(v66, 0, v46, 1);
          v94 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v95 = *(a3 + 48);
            v96 = *(v66 + 180);
            if (v69)
            {
              v97 = *(v69 + 4);
            }

            else
            {
              v97 = 0;
            }

            v98 = *(a3 + 152);
            *buf = 136447746;
            *&buf[4] = "dns_push_reconfirm";
            v111 = 1024;
            *v112 = v95;
            *&v112[4] = 1024;
            *&v112[6] = v96;
            *&v112[10] = 1024;
            *&v112[12] = v97;
            *&v112[16] = 2080;
            *&v112[18] = v98;
            *&v112[26] = 1024;
            *&v112[28] = v71;
            *&v112[32] = 1024;
            *&v112[34] = v68;
            v88 = "%{public}s: [DSO%d][C%d][TRK%d] RRdata parse from %s failed: length mismatch (%d != %d)";
            v89 = buf;
            v90 = v94;
            v91 = 52;
            goto LABEL_126;
          }
        }

LABEL_127:
        dns_rrdata_free(rrtype);
        v92 = *rrtype;
        do
        {
          if (!v92)
          {
            break;
          }

          v93 = *v92;
          free(v92);
          v92 = v93;
        }

        while (v93);
        return;
      }

      dso_simple_response(v66, 0, v46, 1);
      v75 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_127;
      }

      v83 = *(a3 + 48);
      v84 = *(v66 + 180);
      if (v69)
      {
        v85 = *(v69 + 4);
      }

      else
      {
        v85 = 0;
      }

      v87 = *(a3 + 152);
      *buf = 136447234;
      *&buf[4] = "dns_push_reconfirm";
      v111 = 1024;
      *v112 = v83;
      *&v112[4] = 1024;
      *&v112[6] = v84;
      *&v112[10] = 1024;
      *&v112[12] = v85;
      *&v112[16] = 2080;
      *&v112[18] = v87;
      v88 = "%{public}s: [DSO%d][C%d][TRK%d] RR parse from %s failed";
      v89 = buf;
      goto LABEL_125;
    case 3:
      v12 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v18 = *(a3 + 48);
        }

        else
        {
          v18 = 0;
        }

        *buf = 136446466;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v18;
        v34 = "%{public}s: [DSO%d] Finalize";
        goto LABEL_83;
      }

      return;
    case 4:
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v11 = *(a3 + 48);
        }

        else
        {
          v11 = 0;
        }

        v41 = *(a3 + 88);
        v42 = *(a3 + 152);
        *buf = 136447235;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v11;
        *&v112[4] = 1024;
        *&v112[6] = v41;
        *&v112[10] = 2160;
        *&v112[12] = 1752392040;
        *&v112[20] = 2081;
        *&v112[22] = v42;
        v34 = "%{public}s: [DSO%d] DSO Response (Primary TLV=%d) received from %{private, mask.hash}s";
        v35 = buf;
        v36 = v10;
LABEL_76:
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 44;
        goto LABEL_87;
      }

      return;
    case 5:
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v22 = *(a3 + 48);
        }

        else
        {
          v22 = 0;
        }

        v55 = *(a3 + 152);
        *buf = 136446979;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v22;
        *&v112[4] = 2160;
        *&v112[6] = 1752392040;
        *&v112[14] = 2081;
        *&v112[16] = v55;
        v34 = "%{public}s: [DSO%d] Connected to %{private, mask.hash}s";
        goto LABEL_86;
      }

      return;
    case 6:
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v23 = *(a3 + 48);
        }

        else
        {
          v23 = 0;
        }

        v56 = *(a3 + 152);
        *buf = 136446979;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v23;
        *&v112[4] = 2160;
        *&v112[6] = 1752392040;
        *&v112[14] = 2081;
        *&v112[16] = v56;
        v34 = "%{public}s: [DSO%d] Connection to %{private, mask.hash}s failed";
        goto LABEL_86;
      }

      return;
    case 7:
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v20 = *(a3 + 48);
        }

        else
        {
          v20 = 0;
        }

        v50 = *(a3 + 152);
        *buf = 136446979;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v20;
        *&v112[4] = 2160;
        *&v112[6] = 1752392040;
        *&v112[14] = 2081;
        *&v112[16] = v50;
        v34 = "%{public}s: [DSO%d] Connection to %{private, mask.hash}s disconnected";
        goto LABEL_86;
      }

      return;
    case 8:
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v25 = *(a3 + 48);
        }

        else
        {
          v25 = 0;
        }

        v57 = *(a3 + 152);
        *buf = 136446979;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v25;
        *&v112[4] = 2160;
        *&v112[6] = 1752392040;
        *&v112[14] = 2081;
        *&v112[16] = v57;
        v34 = "%{public}s: [DSO%d] Connection to %{private, mask.hash}s should reconnect (not for a server)";
LABEL_86:
        v35 = buf;
        v36 = v19;
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 38;
        goto LABEL_87;
      }

      return;
    case 9:
      v12 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v14 = *(a3 + 48);
        }

        else
        {
          v14 = 0;
        }

        *buf = 136446466;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v14;
        v34 = "%{public}s: [DSO%d] Inactivity timer went off, closing connection.";
        goto LABEL_83;
      }

      return;
    case 10:
      v12 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v24 = *(a3 + 48);
        }

        else
        {
          v24 = 0;
        }

        *buf = 136446466;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v24;
        v34 = "%{public}s: [DSO%d] should send a keepalive now.";
        goto LABEL_83;
      }

      return;
    case 11:
      *(a2 + 10) = 0;
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v9 = *(a3 + 48);
        }

        else
        {
          v9 = 0;
        }

        v26 = *(*(a3 + 32) + 192);
        v27 = *(a2 + 8);
        *buf = 136447235;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v9;
        *&v112[4] = 2160;
        *&v112[6] = 1752392040;
        *&v112[14] = 2081;
        *&v112[16] = v26;
        *&v112[24] = 1024;
        *&v112[26] = v27;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d] %{private, mask.hash}s: keepalive received, xid %04x.", buf, 0x2Cu);
      }

      if (*(a3 + 52) != 1)
      {
        return;
      }

      if (!*(a3 + 32))
      {
        v39 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v40 = *(a3 + 152);
          *buf = 136446723;
          *&buf[4] = "dp_keepalive_response_send";
          v111 = 2160;
          *v112 = 1752392040;
          *&v112[8] = 2081;
          *&v112[10] = v40;
          v34 = "%{public}s: dso state %{private, mask.hash}s has no transport";
          v35 = buf;
          v36 = v39;
          v37 = OS_LOG_TYPE_ERROR;
          v38 = 32;
          goto LABEL_87;
        }

        return;
      }

      v28 = *(a2 + 8);
      *buf = 11534336;
      *&buf[8] = 0;
      if ((*(a3 + 53) & 1) == 0)
      {
        v99 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *rrtype = 136446210;
          *&rrtype[2] = "dso_make_message";
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s: dso_make_message: FATAL: server attempting to make a DSO message with no session!", rrtype, 0xCu);
        }

        __assert_rtn("dso_make_message", "dso.c", 651, "0");
      }

      *buf = v28;
      v111 = 256;
      if (&v112[6] >= v113)
      {
        v58 = 3916;
        goto LABEL_119;
      }

      *&v112[2] = bswap32(*a2);
      if (&v112[10] >= v113)
      {
        v58 = 3917;
LABEL_119:
        v86 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *rrtype = 136446722;
          *&rrtype[2] = "dp_keepalive_response_send";
          rrtype[6] = 2082;
          *&rrtype[7] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c";
          rrtype[11] = 1024;
          *&rrtype[12] = v58;
          v34 = "%{public}s: ran out of message space at %{public}s, :%d";
          v35 = rrtype;
          v36 = v86;
          v37 = OS_LOG_TYPE_ERROR;
          v38 = 28;
          goto LABEL_87;
        }

        return;
      }

      *&v112[6] = bswap32(*(a2 + 4));
      v112[0] = (&v112[10] - v112 - 2) >> 8;
      v112[1] = &v112[10] - v112 - 2;
      *v102 = buf;
      *&v102[8] = &v112[10] - buf;
      v29 = ioloop_send_message(*(a3 + 32), 0, v102);
      v30 = global_os_log;
      v31 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v32 = *(a2 + 8);
          v33 = *(*(a3 + 32) + 192);
          *rrtype = 136447747;
          *&rrtype[2] = "dp_keepalive_response_send";
          rrtype[6] = 2048;
          *&rrtype[7] = *&v102[8];
          rrtype[11] = 1024;
          *&rrtype[12] = buf[0];
          rrtype[14] = 1024;
          *&rrtype[15] = buf[1];
          rrtype[17] = 1024;
          *&rrtype[18] = v32;
          rrtype[20] = 2160;
          *&rrtype[21] = 1752392040;
          rrtype[25] = 2081;
          *&rrtype[26] = v33;
          v34 = "%{public}s: sent %zd byte response Keepalive, xid %02x%02x (was %04x), to %{private, mask.hash}s";
          v35 = rrtype;
          v36 = v30;
          v37 = OS_LOG_TYPE_DEFAULT;
          v38 = 60;
          goto LABEL_87;
        }
      }

      else if (v31)
      {
        *rrtype = 136446210;
        *&rrtype[2] = "dp_keepalive_response_send";
        v34 = "%{public}s: send failed";
        v35 = rrtype;
        v36 = v30;
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 12;
        goto LABEL_87;
      }

      return;
    case 12:
      v12 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v13 = *(a3 + 48);
        }

        else
        {
          v13 = 0;
        }

        *buf = 136446466;
        *&buf[4] = "dns_push_callback";
        v111 = 1024;
        *v112 = v13;
        v34 = "%{public}s: [DSO%d] keepalive received.";
LABEL_83:
        v35 = buf;
        v36 = v12;
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 18;
LABEL_87:
        _os_log_impl(&_mh_execute_header, v36, v37, v34, v35, v38);
      }

      return;
    default:
      return;
  }
}

void dp_tracker_idle_after(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 424) & 0x200) == 0 && !*(a1 + 24) && (!a3 || (v6 = *(a1 + 16)) == 0 || v6 == a3 && !*(a3 + 16)))
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
        v7 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 896);
        *(a1 + 32) = v7;
      }

      ioloop_add_wake_event(v7, a1, dp_tracker_idle, dp_tracker_context_release, 1000 * a2);
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        *buf = 136447490;
        v14 = "dp_tracker_idle_after";
        v15 = 1024;
        v16 = v9;
        v17 = 2048;
        v18 = a1;
        v19 = 2080;
        v20 = "tracker";
        v21 = 2080;
        v22 = "dnssd-proxy.c";
        v23 = 1024;
        v24 = 902;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      if (*a1)
      {
        v10 = *a1 + 1;
        *a1 = v10;
        if (v10 >= 10001)
        {
          v12 = v10;
          v11 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v14 = "dp_tracker_idle_after";
            v15 = 1024;
            v16 = v12;
            v17 = 2048;
            v18 = a1;
            v19 = 2080;
            v20 = "tracker";
            v21 = 2080;
            v22 = "dnssd-proxy.c";
            v23 = 1024;
            v24 = 902;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++dp_tracker_created;
        *a1 = 1;
      }
    }
  }
}

void *dns_push_subscription_change(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, int a5)
{
  v9 = (a3 + 6);
  v10 = *(a4 + 96) - (a3 + 12);
  v87 = v10;
  v11 = v10 + *(a4 + 90);
  v12 = 0uLL;
  v85 = 0u;
  v86 = 0u;
  *v83 = 0u;
  v84 = 0u;
  v82 = bswap32(*a3) >> 16;
  v13 = v11;
  if (!a5)
  {
    v14 = global_os_log;
    v15 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    v12 = 0uLL;
    v13 = v11;
    if (v15)
    {
      v16 = *(a4 + 48);
      if (a2)
      {
        v17 = *(a2 + 4);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a4 + 152);
      buf = 136447491;
      v105 = "dns_push_subscription_change";
      v106 = 1024;
      *v107 = v16;
      *&v107[4] = 1024;
      *&v107[6] = v17;
      *&v107[10] = 2160;
      *&v107[12] = 1752392040;
      *&v107[20] = 2081;
      *&v107[22] = v18;
      *&v107[30] = 2082;
      *&v107[32] = a1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: [DSO%d][TRK%d] push subscribe with zero xid received from %{private, mask.hash}s(opcode %{public}s)", &buf, 0x36u);
      v13 = v10 + *(a4 + 90);
      v12 = 0uLL;
    }
  }

  v85 = v12;
  v86 = v12;
  *v83 = v12;
  v84 = v12;
  if (*(a4 + 88) == 64)
  {
    if ((dns_rr_parse_() & 1) == 0)
    {
      dso_simple_response(*(a2 + 8), 0, a3, 1);
      v26 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v27 = *(a4 + 48);
      v28 = *(a2 + 4);
      v29 = *(a4 + 152);
      buf = 136447491;
      v105 = "dns_push_subscription_change";
      v106 = 1024;
      *v107 = v27;
      *&v107[4] = 1024;
      *&v107[6] = v28;
      *&v107[10] = 2160;
      *&v107[12] = 1752392040;
      *&v107[20] = 2081;
      *&v107[22] = a1;
      *&v107[30] = 2082;
      *&v107[32] = v29;
      v30 = "%{public}s: [DSO%d][TRK%d] RR parse for %{private, mask.hash}s from %{public}s failed";
      v31 = v26;
LABEL_29:
      v33 = 54;
      goto LABEL_30;
    }

    dns_name_print_to_limit(v83[0], 0, v91, 0x100uLL);
  }

  else
  {
    if (!dns_u16_parse(v9, v13, &v87, &v82))
    {
      v32 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      buf = 136446210;
      v105 = "dns_push_subscription_change";
      v30 = "%{public}s: unable to get subscribe xid from primary";
      v31 = v32;
      v33 = 12;
      goto LABEL_30;
    }

    strcpy(v91, "none");
  }

  v19 = v87;
  if (v87 != v11)
  {
    if (*(a4 + 88) == 64)
    {
      dso_simple_response(*(a2 + 8), 0, a3, 1);
    }

    v34 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v35 = *(a4 + 152);
    if (*(a4 + 88) == 64)
    {
      v36 = "subscribe";
    }

    else
    {
      v36 = "unsubscribe";
    }

    buf = 136447491;
    v105 = "dns_push_subscription_change";
    v106 = 2082;
    *v107 = v36;
    *&v107[8] = 2160;
    *&v107[10] = 1752392040;
    *&v107[18] = 2081;
    *&v107[20] = v35;
    *&v107[28] = 1024;
    *&v107[30] = v19;
    *&v107[34] = 1024;
    *&v107[36] = v11;
    v30 = "%{public}s: DNS push %{public}s parse from %{private, mask.hash}s failed: length mismatch (%d != %d)";
    v31 = v34;
    goto LABEL_29;
  }

  v20 = v82;
  snprintf(__str, 5uLL, "%04x", v82);
  activity = dso_find_activity(a4, __str, 0);
  v22 = *(a4 + 88);
  if (!activity)
  {
    v39 = global_os_log;
    if (v22 == 64)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a4 + 48);
        if (a2)
        {
          v41 = *(a2 + 4);
        }

        else
        {
          v41 = 0;
        }

        buf = 136448003;
        v105 = "dns_push_subscription_change";
        v106 = 1024;
        *v107 = v40;
        *&v107[4] = 1024;
        *&v107[6] = v41;
        *&v107[10] = 2082;
        *&v107[12] = a1;
        *&v107[20] = 2160;
        *&v107[22] = 1752392040;
        *&v107[30] = 2081;
        *&v107[32] = v91;
        *&v107[40] = 2082;
        *&v107[42] = __str;
        v108 = 1024;
        v109 = LOWORD(v83[1]);
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][TRK%d] %{public}s for %{private, mask.hash}s (%{public}s) type %d.", &buf, 0x46u);
      }

      v90 = 0;
      v54 = dp_query_create(a2, v83, 0, a4, &v90);
      if (!v54)
      {
        v51 = *(a2 + 8);
        v53 = v90;
        v52 = a3;
LABEL_51:
        dso_simple_response(v51, 0, v52, v53);
        goto LABEL_31;
      }

      v55 = v54;
      v56 = strlen(__str);
      if (dso_find_activity(a4, __str, v55))
      {
        v57 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v58 = *(a4 + 48);
          buf = 136447491;
          v105 = "dso_add_activity";
          v106 = 1024;
          *v107 = v58;
          *&v107[4] = 2160;
          *&v107[6] = 1752392040;
          *&v107[14] = 2081;
          *&v107[16] = __str;
          *&v107[24] = 2082;
          *&v107[26] = "push subscription";
          *&v107[34] = 2048;
          *&v107[36] = v55;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%{public}s: [DSO%u] Trying to add a duplicate activity - activity name: %{private, mask.hash}s, activity type: %{public}s, activity context: %p.", &buf, 0x3Au);
        }

        v59 = 0;
      }

      else
      {
        if (v56 == -41 || (v60 = malloc_type_calloc(1uLL, (v56 + 41), 0x38FCC111uLL)) == 0)
        {
          __break(1u);
        }

        v59 = v60;
        v61 = v56 + 1;
        if (v56 == -1)
        {
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v62 = (v60 + 5);
          memcpy(v60 + 5, __str, v61);
          v63 = v59 + 5;
        }

        v59[3] = v55;
        v59[4] = v62;
        v59[1] = dns_push_cancel;
        v59[2] = "push subscription";
        v64 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(a4 + 48);
          buf = 136447491;
          v105 = "dso_add_activity";
          v106 = 1024;
          *v107 = v65;
          *&v107[4] = 2160;
          *&v107[6] = 1752392040;
          *&v107[14] = 2081;
          *&v107[16] = v63;
          *&v107[24] = 2082;
          *&v107[26] = "push subscription";
          *&v107[34] = 2048;
          *&v107[36] = v55;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] Adding a DSO activity - activity name: %{private, mask.hash}s, activity type: %{public}s, activity context: %p.", &buf, 0x3Au);
        }

        *v59 = *(a4 + 80);
        *(a4 + 80) = v59;
      }

      v66 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *v55;
        buf = 136447490;
        v105 = "dns_push_subscribe";
        v106 = 1024;
        *v107 = v67;
        *&v107[4] = 2048;
        *&v107[6] = v55;
        *&v107[14] = 2080;
        *&v107[16] = "query";
        *&v107[24] = 2080;
        *&v107[26] = "dnssd-proxy.c";
        *&v107[34] = 1024;
        *&v107[36] = 3631;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &buf, 0x36u);
      }

      v68 = *v55;
      if (*v55)
      {
        v69 = v68 + 1;
        *v55 = v68 + 1;
        if (v68 + 1 >= 10001)
        {
          v70 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_104;
          }

          buf = 136447490;
          v105 = "dns_push_subscribe";
          v106 = 1024;
          *v107 = v69;
          *&v107[4] = 2048;
          *&v107[6] = v55;
          *&v107[14] = 2080;
          *&v107[16] = "query";
          *&v107[24] = 2080;
          *&v107[26] = "dnssd-proxy.c";
          *&v107[34] = 1024;
          *&v107[36] = 3631;
          v71 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_103;
        }
      }

      else
      {
        ++dnssd_query_created;
        *v55 = 1;
      }

      *(v55 + 80) = v59;
      v89 = 0;
      if (dp_query_start(v55, &v90, &v89))
      {
        dns_name_print_to_limit(v83[0], 0, &buf, 0x100uLL);
        dso_simple_response(*(a2 + 8), 0, a3, 0);
        if (v89 == 1)
        {
          v72 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v73 = *(a4 + 48);
            v74 = *(v55 + 4);
            v92 = 136447747;
            v93 = "dns_push_subscribe";
            v94 = 1024;
            v95 = v73;
            v96 = 1024;
            v97 = v74;
            v98 = 2160;
            *v99 = 1752392040;
            *&v99[8] = 2081;
            *&v99[10] = &buf;
            *&v99[18] = 1024;
            *&v99[20] = LOWORD(v83[1]);
            v100 = 1024;
            v101 = WORD1(v83[1]);
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][Q%d] hardwired response for %{private, mask.hash}s %d %d", &v92, 0x38u);
          }

          dp_push_response(v55, v83);
        }

        else
        {
          v75 = *(v55 + 200);
          if (v75)
          {
            v76 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v77 = *(a4 + 48);
              v78 = *(v55 + 4);
              v79 = *(v75 + 64);
              v92 = 136448003;
              v93 = "dns_push_subscribe";
              v94 = 1024;
              v95 = v77;
              v96 = 1024;
              v97 = v78;
              v98 = 1024;
              *v99 = v79;
              *&v99[4] = 2160;
              *&v99[6] = 1752392040;
              *&v99[14] = 2081;
              *&v99[16] = &buf;
              v100 = 1024;
              v101 = LOWORD(v83[1]);
              v102 = 1024;
              v103 = WORD1(v83[1]);
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][Q%d][QU%d] replying from cache for %{private, mask.hash}s %d %d", &v92, 0x3Eu);
              v75 = *(v55 + 200);
            }

            dp_query_reply_from_cache(v75, v55, 0);
          }
        }
      }

      else
      {
        dso_simple_response(*(a2 + 8), 0, a3, v90);
        dp_question_cache_remove_queries(*(v55 + 200));
        dnssd_query_cancel(v55);
      }

      v80 = *v55;
      if (*v55)
      {
        v70 = global_os_log;
        if (v80 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136447490;
            v105 = "dns_push_subscribe";
            v106 = 1024;
            *v107 = v80;
            *&v107[4] = 2048;
            *&v107[6] = v55;
            *&v107[14] = 2080;
            *&v107[16] = "query";
            *&v107[24] = 2080;
            *&v107[26] = "dnssd-proxy.c";
            *&v107[34] = 1024;
            *&v107[36] = 3663;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &buf, 0x36u);
            v80 = *v55;
          }

          *v55 = v80 - 1;
          if (v80 == 1)
          {
            v81 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136447234;
              v105 = "dns_push_subscribe";
              v106 = 2048;
              *v107 = v55;
              *&v107[8] = 2080;
              *&v107[10] = "query";
              *&v107[18] = 2080;
              *&v107[20] = "dnssd-proxy.c";
              *&v107[28] = 1024;
              *&v107[30] = 3663;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &buf, 0x30u);
            }

            ++dnssd_query_finalized;
            dnssd_query_finalize(v55);
          }

          goto LABEL_31;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_104:
          abort();
        }

        buf = 136447490;
        v105 = "dns_push_subscribe";
        v106 = 1024;
        *v107 = v80;
        *&v107[4] = 2048;
        *&v107[6] = v55;
        *&v107[14] = 2080;
        *&v107[16] = "query";
        *&v107[24] = 2080;
        *&v107[26] = "dnssd-proxy.c";
        *&v107[34] = 1024;
        *&v107[36] = 3663;
        v71 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v70 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_104;
        }

        buf = 136447490;
        v105 = "dns_push_subscribe";
        v106 = 1024;
        *v107 = 0;
        *&v107[4] = 2048;
        *&v107[6] = v55;
        *&v107[14] = 2080;
        *&v107[16] = "query";
        *&v107[24] = 2080;
        *&v107[26] = "dnssd-proxy.c";
        *&v107[34] = 1024;
        *&v107[36] = 3663;
        v71 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

LABEL_103:
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_FAULT, v71, &buf, 0x36u);
      goto LABEL_104;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v46 = *(a4 + 48);
    if (a2)
    {
      v47 = *(a2 + 4);
    }

    else
    {
      v47 = 0;
    }

    buf = 136447747;
    v105 = "dns_push_subscription_change";
    v106 = 1024;
    *v107 = v46;
    *&v107[4] = 1024;
    *&v107[6] = v47;
    *&v107[10] = 2082;
    *&v107[12] = a1;
    *&v107[20] = 2160;
    *&v107[22] = 1752392040;
    *&v107[30] = 2081;
    *&v107[32] = v91;
    *&v107[40] = 2082;
    *&v107[42] = __str;
    v30 = "%{public}s: [DSO%d][TRK%d] %{public}s for %{private, mask.hash}s (%{public}s) when no subscription exists.";
    v31 = v39;
    v33 = 64;
LABEL_30:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, &buf, v33);
    goto LABEL_31;
  }

  if (v22 == 64)
  {
    v23 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a4 + 48);
      if (a2)
      {
        v25 = *(a2 + 4);
      }

      else
      {
        v25 = 0;
      }

      buf = 136448003;
      v105 = "dns_push_subscription_change";
      v106 = 1024;
      *v107 = v24;
      *&v107[4] = 1024;
      *&v107[6] = v25;
      *&v107[10] = 2082;
      *&v107[12] = a1;
      *&v107[20] = 2160;
      *&v107[22] = 1752392040;
      *&v107[30] = 2081;
      *&v107[32] = v91;
      *&v107[40] = 2082;
      *&v107[42] = __str;
      v108 = 1024;
      v109 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: [DSO%d][TRK%d] %{public}s for %{private, mask.hash}s (%{public}s) xid %d when subscription already exists.", &buf, 0x46u);
    }

    v51 = *(a2 + 8);
    v52 = a3;
    v53 = 5;
    goto LABEL_51;
  }

  v42 = activity;
  v43 = activity[3];
  v44 = *(v43 + 200);
  if (v44)
  {
    v45 = *(v44 + 32);
  }

  else
  {
    v45 = v91;
  }

  v48 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v49 = *(a4 + 48);
    if (a2)
    {
      v50 = *(a2 + 4);
    }

    else
    {
      v50 = 0;
    }

    buf = 136448003;
    v105 = "dns_push_subscription_change";
    v106 = 1024;
    *v107 = v49;
    *&v107[4] = 1024;
    *&v107[6] = v50;
    *&v107[10] = 2082;
    *&v107[12] = a1;
    *&v107[20] = 2160;
    *&v107[22] = 1752392040;
    *&v107[30] = 2081;
    *&v107[32] = v45;
    *&v107[40] = 2082;
    *&v107[42] = __str;
    v108 = 1024;
    v109 = LOWORD(v83[1]);
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%d][TRK%d] %{public}s for %{private, mask.hash}s (%{public}s) type %d.", &buf, 0x46u);
    v43 = v42[3];
  }

  dnssd_query_cancel(v43);
LABEL_31:
  dns_rrdata_free(v83);
  result = v83[0];
  do
  {
    if (!result)
    {
      break;
    }

    v38 = *result;
    free(result);
    result = v38;
  }

  while (v38);
  return result;
}

uint64_t *dp_served(uint64_t *a1, uint64_t a2)
{
  v4 = &served_domains;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = dns_name_subdomain_of(a1, v4[3]);
    if (v5)
    {
      dns_name_print_to_limit(a1, v5, a2, 0x100uLL);
      return v4;
    }
  }

  return v4;
}

_DWORD *dp_query_create(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = dp_served(*a2, v82);
  if (a3)
  {
    v81 = bswap32(*(a3 + 88)) >> 16;
  }

  else
  {
    v81 = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0xD8uLL, 0x8562CED1uLL);
  v11 = global_os_log;
  if (!v10)
  {
    goto LABEL_82;
  }

  v12 = v10;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *v12;
    *buf = 136447490;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v13;
    *&v91[4] = 2048;
    *&v91[6] = v12;
    *&v91[14] = 2080;
    *&v91[16] = "query";
    *&v91[24] = 2080;
    *&v91[26] = "dnssd-proxy.c";
    *&v91[34] = 1024;
    *v92 = 3460;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v14 = *v12;
  if (*v12)
  {
    v15 = v14 + 1;
    *v12 = v14 + 1;
    if (v14 + 1 >= 10001)
    {
      v16 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_96;
      }

      *buf = 136447490;
      v89 = "dp_query_create";
      v90 = 1024;
      *v91 = v15;
      *&v91[4] = 2048;
      *&v91[6] = v12;
      *&v91[14] = 2080;
      *&v91[16] = "query";
      *&v91[24] = 2080;
      *&v91[26] = "dnssd-proxy.c";
      *&v91[34] = 1024;
      *v92 = 3460;
LABEL_30:
      v35 = buf;
LABEL_94:
      v78 = v16;
LABEL_95:
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", v35, 0x36u);
LABEL_96:
      abort();
    }
  }

  else
  {
    ++dnssd_query_created;
    *v12 = 1;
  }

  v17 = cur_query_serial + 1;
  cur_query_serial = v17;
  v12[1] = v17;
  if (v9)
  {
    v11 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v18 = *(a2 + 8);
    v19 = "push";
    v20 = *(a2 + 10);
    v21 = v9[1];
    if (!a4)
    {
      v19 = " dns";
    }

    *buf = 136449283;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v17;
    *&v91[4] = 1024;
    *&v91[6] = v81;
    *&v91[10] = 2048;
    *&v91[12] = a3;
    *&v91[20] = 2082;
    *&v91[22] = v19;
    *&v91[30] = 1024;
    *&v91[32] = v18;
    *v92 = 1024;
    *&v92[2] = v20;
    v93 = 2160;
    v94 = 1752392040;
    v95 = 2081;
    v96 = v82;
    v97 = 2160;
    v98 = 1752392040;
    v99 = 2081;
    v100 = v21;
    v101 = 2160;
    v102 = 1752392040;
    v103 = 2081;
    v104 = v82;
    v22 = "%{public}s: [Q%d][QID%x] msg %p %{public}s question: type %d class %d %{private, mask.hash}s.%{private, mask.hash}s -> %{private, mask.hash}s.local.";
    v23 = v11;
    v24 = 116;
  }

  else
  {
    v11 = v82;
    dns_name_print_to_limit(*a2, 0, v82, 0x100uLL);
    v25 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v26 = v12[1];
    v27 = "push";
    v28 = *(a2 + 8);
    v29 = *(a2 + 10);
    if (!a4)
    {
      v27 = " dns";
    }

    *buf = 136448259;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v26;
    *&v91[4] = 1024;
    *&v91[6] = v81;
    *&v91[10] = 2048;
    *&v91[12] = a3;
    *&v91[20] = 2082;
    *&v91[22] = v27;
    *&v91[30] = 1024;
    *&v91[32] = v28;
    *v92 = 1024;
    *&v92[2] = v29;
    v93 = 2160;
    v94 = 1752392040;
    v95 = 2081;
    v96 = v82;
    v22 = "%{public}s: [Q%d][QID%x] msg %p %{public}s question: type %d class %d %{private, mask.hash}s";
    v23 = v25;
    v24 = 76;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_22:
  v30 = malloc_type_malloc(0x582uLL, 0x2C45F07BuLL);
  if (!v30)
  {
    v73 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v89 = "dp_query_create";
    v74 = "%{public}s: strict allocator failed";
    v75 = buf;
LABEL_79:
    v76 = v73;
    for (i = 12; ; i = 32)
    {
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, v74, v75, i);
      do
      {
LABEL_81:
        __break(1u);
LABEL_82:
        ;
      }

      while (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR));
      *buf = 136446722;
      v89 = "dp_query_create";
      v90 = 2048;
      *v91 = 1;
      *&v91[8] = 2048;
      *&v91[10] = 216;
      v74 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v75 = buf;
      v76 = v11;
LABEL_90:
      ;
    }
  }

  *(v12 + 21) = v30;
  *(v12 + 23) = 1398;
  v30[2] = 0;
  *v30 = 0;
  *(v12 + 1) = a1;
  if (a1)
  {
    v31 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *a1;
      *buf = 136447490;
      v89 = "dp_query_create";
      v90 = 1024;
      *v91 = v32;
      *&v91[4] = 2048;
      *&v91[6] = a1;
      *&v91[14] = 2080;
      *&v91[16] = "query->tracker";
      *&v91[24] = 2080;
      *&v91[26] = "dnssd-proxy.c";
      *&v91[34] = 1024;
      *v92 = 3488;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      a1 = *(v12 + 1);
    }

    v33 = *a1;
    if (*a1)
    {
      v34 = v33 + 1;
      *a1 = v33 + 1;
      if (v33 + 1 >= 10001)
      {
        v16 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_96;
        }

        *buf = 136447490;
        v89 = "dp_query_create";
        v90 = 1024;
        *v91 = v34;
        *&v91[4] = 2048;
        *&v91[6] = a1;
        *&v91[14] = 2080;
        *&v91[16] = "query->tracker";
        *&v91[24] = 2080;
        *&v91[26] = "dnssd-proxy.c";
        *&v91[34] = 1024;
        *v92 = 3488;
        goto LABEL_30;
      }
    }

    else
    {
      ++dp_tracker_created;
      *a1 = 1;
    }
  }

  *(v12 + 9) = a4;
  if (a3)
  {
    *(v12 + 8) = a3;
    ioloop_message_retain_(a3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 3496);
  }

  v36 = *(v12 + 21);
  v37 = v36 + 12 + *(v12 + 23);
  *(v12 + 12) = v36;
  *(v12 + 13) = v36 + 12;
  *(v12 + 20) = 0;
  *(v12 + 15) = 0;
  *(v12 + 16) = 0;
  *(v12 + 14) = v37;
  v38 = dp_served(*a2, buf);
  if (v38)
  {
    v39 = v38 + 6;
  }

  else
  {
    dns_name_print_to_limit(*a2, 0, buf, 0x100uLL);
    v39 = &questions_without_domain;
  }

  v40 = *v39;
  if (*v39)
  {
    v41 = *(a2 + 8);
    while (1)
    {
      v39 = v40;
      if (v41 == *(v40 + 72) && *(a2 + 10) == *(v40 + 74) && !strcmp(buf, *(v40 + 32)))
      {
        break;
      }

      v40 = *v39;
      if (!*v39)
      {
        goto LABEL_43;
      }
    }

    v53 = 0;
    goto LABEL_57;
  }

LABEL_43:
  v42 = malloc_type_calloc(1uLL, 0x50uLL, 0x1B3EC32AuLL);
  if (!v42)
  {
    v79 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *__tp = 136446722;
    *&__tp[4] = "dp_query_question_cache_copy";
    *&__tp[12] = 2048;
    *&__tp[14] = 1;
    *&__tp[22] = 2048;
    *&__tp[24] = 80;
    v74 = "%{public}s: strict_calloc(%zu, %zu) failed";
    v75 = __tp;
    v76 = v79;
    goto LABEL_90;
  }

  v43 = v42;
  v44 = strdup(buf);
  if (!v44)
  {
    v73 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *__tp = 136446210;
    *&__tp[4] = "strict_strdup";
    v74 = "%{public}s: strdup() failed";
    v75 = __tp;
    goto LABEL_79;
  }

  v43[4] = v44;
  *(v43 + 18) = *(a2 + 8);
  *__tp = 0;
  *&__tp[8] = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
  v45 = *&__tp[8] / 1000 + 1000000 * *__tp;
  v43[5] = 0;
  v43[6] = v45;
  v43[1] = v38;
  v43[2] = 0;
  *(v43 + 76) = 0;
  *(v43 + 16) = ++cur_question_serial;
  if (!v38)
  {
    LODWORD(v46) = 0;
    goto LABEL_49;
  }

  v46 = v38[5];
  if (!v46)
  {
LABEL_49:
    v47 = 4096;
    goto LABEL_50;
  }

  LODWORD(v46) = *v46;
  v47 = 1024;
LABEL_50:
  *(v43 + 17) = v46;
  *(v43 + 14) = v47;
  *v43 = *v39;
  *v39 = v43;
  v48 = global_os_log;
  v49 = v43;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(v43 + 15);
    *__tp = 136447490;
    *&__tp[4] = "dp_query_question_cache_copy";
    *&__tp[12] = 1024;
    *&__tp[14] = v50;
    *&__tp[18] = 2048;
    *&__tp[20] = v43;
    *&__tp[28] = 2080;
    *&__tp[30] = "*questions";
    v84 = 2080;
    v85 = "dnssd-proxy.c";
    v86 = 1024;
    v87 = 3298;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", __tp, 0x36u);
    v49 = *v39;
  }

  v51 = *(v49 + 60);
  if (v51)
  {
    v52 = v51 + 1;
    *(v49 + 60) = v51 + 1;
    if (v51 + 1 >= 10001)
    {
      v16 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_96;
      }

      *__tp = 136447490;
      *&__tp[4] = "dp_query_question_cache_copy";
      *&__tp[12] = 1024;
      *&__tp[14] = v52;
      *&__tp[18] = 2048;
      *&__tp[20] = v49;
      *&__tp[28] = 2080;
      *&__tp[30] = "*questions";
      v84 = 2080;
      v85 = "dnssd-proxy.c";
      v86 = 1024;
      v87 = 3298;
      goto LABEL_93;
    }

    v53 = 1;
  }

  else
  {
    ++question_created;
    v53 = 1;
    *(v49 + 60) = 1;
  }

  v39 = v43;
LABEL_57:
  v54 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v55 = *(v39 + 15);
    *__tp = 136447490;
    *&__tp[4] = "dp_query_question_cache_copy";
    *&__tp[12] = 1024;
    *&__tp[14] = v55;
    *&__tp[18] = 2048;
    *&__tp[20] = v39;
    *&__tp[28] = 2080;
    *&__tp[30] = "ret";
    v84 = 2080;
    v85 = "dnssd-proxy.c";
    v86 = 1024;
    v87 = 3310;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", __tp, 0x36u);
  }

  v56 = *(v39 + 15);
  if (v56)
  {
    v57 = v56 + 1;
    *(v39 + 15) = v56 + 1;
    if (v56 + 1 >= 10001)
    {
      v16 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_96;
      }

      *__tp = 136447490;
      *&__tp[4] = "dp_query_question_cache_copy";
      *&__tp[12] = 1024;
      *&__tp[14] = v57;
      *&__tp[18] = 2048;
      *&__tp[20] = v39;
      *&__tp[28] = 2080;
      *&__tp[30] = "ret";
      v84 = 2080;
      v85 = "dnssd-proxy.c";
      v86 = 1024;
      v87 = 3310;
LABEL_93:
      v35 = __tp;
      goto LABEL_94;
    }
  }

  else
  {
    ++question_created;
    *(v39 + 15) = 1;
  }

  *(v12 + 25) = v39;
  v58 = (v39 + 2);
  do
  {
    v59 = v58;
    v60 = *v58;
    v58 = (*v58 + 48);
  }

  while (v60);
  *v59 = v12;
  v61 = global_os_log;
  v62 = v12;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v63 = *v12;
    *buf = 136447490;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v63;
    *&v91[4] = 2048;
    *&v91[6] = v12;
    *&v91[14] = 2080;
    *&v91[16] = "*qr";
    *&v91[24] = 2080;
    *&v91[26] = "dnssd-proxy.c";
    *&v91[34] = 1024;
    *v92 = 3513;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v62 = *v59;
  }

  v64 = *v62;
  if (!*v62)
  {
    ++dnssd_query_created;
    v64 = *v62;
  }

  v65 = v64 + 1;
  *v62 = v64 + 1;
  v66 = global_os_log;
  if (v64 + 1 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_96;
    }

    *buf = 136447490;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v65;
    *&v91[4] = 2048;
    *&v91[6] = v62;
    *&v91[14] = 2080;
    *&v91[16] = "*qr";
    *&v91[24] = 2080;
    *&v91[26] = "dnssd-proxy.c";
    *&v91[34] = 1024;
    *v92 = 3513;
    v35 = buf;
    v78 = v66;
    goto LABEL_95;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v67 = v12[1];
    v68 = " existing";
    v69 = *(v12 + 8);
    v70 = *(a2 + 8);
    if (v53)
    {
      v68 = "new";
    }

    v71 = *(a2 + 10);
    *buf = 136448259;
    v89 = "dp_query_create";
    v90 = 1024;
    *v91 = v67;
    *&v91[4] = 1024;
    *&v91[6] = v81;
    *&v91[10] = 2048;
    *&v91[12] = v69;
    *&v91[20] = 2082;
    *&v91[22] = v68;
    *&v91[30] = 1024;
    *&v91[32] = v70;
    *v92 = 1024;
    *&v92[2] = v71;
    v93 = 2160;
    v94 = 1752392040;
    v95 = 2081;
    v96 = v82;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QID%x] msg %p %{public}s cache entry for question: type %d class %d %{private, mask.hash}s", buf, 0x4Cu);
  }

  *a5 = 0;
  ++dp_num_outstanding_queries;
  return v12;
}

uint64_t dp_query_start(uint64_t a1, _DWORD *a2, _BYTE *i)
{
  v5 = *(a1 + 200);
  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_31;
  }

  v8 = *(v5 + 32);
  if (!strcasecmp(v8, &uuid_name))
  {
    v19 = *(v5 + 72);
    if (v19 == 28 || v19 == 1)
    {
      v21 = *(a1 + 64);
      v175 = i;
      if (v21)
      {
        v22 = v21 + 32;
      }

      else
      {
        v22 = *(*(a1 + 72) + 32) + 344;
      }

      v36 = *(v22 + 1);
      if (v19 == 1)
      {
        if (v36 == 30)
        {
          if (!(*(v22 + 8) | *(v22 + 16) ^ 0xFFFF0000))
          {
            dp_query_add_data_to_response(a1, v8, 1, 1, 4uLL, (v22 + 20), 3600, 1, 1, (*(a1 + 168) + 6));
            goto LABEL_19;
          }
        }

        else if (v36 == 2)
        {
          dp_query_add_data_to_response(a1, v8, 1, 1, 4uLL, (v22 + 4), 300, 1, 1, (*(a1 + 168) + 6));
          goto LABEL_19;
        }
      }

      else
      {
        v37 = v19 == 28 && v36 == 30;
        if (v37 && *(v22 + 8) | *(v22 + 16) ^ 0xFFFF0000 && (*(v22 + 16) != -16777216 || *(v22 + 19) != -67043585) && (*(v22 + 16) != -16777216 || *(v22 + 20) != 254))
        {
          *v191 = *(v22 + 8);
          dp_query_add_data_to_response(a1, v8, 28, 1, 0x10uLL, v191, 300, 1, 1, (*(a1 + 168) + 6));
          v40 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v41 = *(v5 + 32);
          if ((v191[0] & 0xFE) == 0xFC)
          {
            v42 = "ULA: ";
          }

          else if (v191[0] == 254 && (v191[1] & 0xC0) == 0x80)
          {
            v42 = "LUA: ";
          }

          else if ((v191[0] & 0xE0) == 0x20)
          {
            v42 = "GUA: ";
          }

          else
          {
            v42 = "";
          }

          *buf = 136449283;
          *&buf[4] = "dnssd_hardwired_response";
          *&buf[12] = 2082;
          *&buf[14] = v41;
          *&buf[22] = 2082;
          *&buf[24] = v42;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 1041;
          *&buf[44] = 6;
          *&buf[48] = 2097;
          *&buf[50] = v191;
          *&buf[58] = 2160;
          *&buf[60] = 1752392040;
          *&buf[68] = 1042;
          *&buf[70] = 2;
          *&buf[74] = 2098;
          *&buf[76] = &v191[6];
          *&buf[84] = 2160;
          *&buf[86] = 1752392040;
          *&buf[94] = 1041;
          *&buf[96] = 8;
          *&buf[100] = 2097;
          *&buf[102] = &v191[8];
          *&buf[110] = 2082;
          *&v180 = "local host IPv6 address";
          v162 = "%{public}s: %{public}s IN AAAA {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} %{public}s";
LABEL_303:
          v163 = v40;
          v164 = 120;
          goto LABEL_304;
        }
      }

      v174 = v22;
      v173 = *(v5 + 72);
      v177 = 0;
      v178 = 0;
      v176 = 0;
      if ((getifaddrs(&v178) & 0x80000000) == 0)
      {
        v171 = v5;
        v172 = a2;
        v45 = v178;
        if (!v178)
        {
          goto LABEL_193;
        }

        v46 = &v176;
        v170 = &v177;
        while (1)
        {
          if (!v45->ifa_name)
          {
            goto LABEL_149;
          }

          ifa_addr = v45->ifa_addr;
          if (!ifa_addr)
          {
            goto LABEL_149;
          }

          sa_family = ifa_addr->sa_family;
          if (sa_family == 30)
          {
            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            v180 = 0u;
            memset(buf, 0, sizeof(buf));
            v49 = strlen(v45->ifa_name);
            if (v49 >= 0xF)
            {
              v50 = 15;
            }

            else
            {
              v50 = v49;
            }

            __memcpy_chk();
            *(buf | v50) = 0;
            v51 = socket(30, 2, 0);
            if (v51 < 0)
            {
              v59 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                v60 = __error();
                v61 = strerror(*v60);
                *v191 = 136446466;
                *&v191[4] = "ioloop_map_interface_addresses_here_";
                *&v191[12] = 2082;
                *&v191[14] = v61;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}s: socket(AF_INET6, SOCK_DGRAM): %{public}s", v191, 0x16u);
              }

              goto LABEL_149;
            }

            v52 = v51;
            v53 = v45->ifa_addr;
            v54 = *v53;
            *&buf[28] = *&v53->sa_data[10];
            *&buf[16] = v54;
            if (ioctl(v51, 0xC1206949uLL, buf) < 0)
            {
              v89 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                v90 = __error();
                v91 = strerror(*v90);
                *v191 = 136446466;
                *&v191[4] = "ioloop_map_interface_addresses_here_";
                *&v191[12] = 2082;
                *&v191[14] = v91;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%{public}s: ioctl(SIOCGIFAFLAG_IN6): %{public}s", v191, 0x16u);
              }

              close(v52);
              goto LABEL_149;
            }

            v55 = *&buf[16];
            v56 = buf[16] & 0x8B;
            close(v52);
            if (v56)
            {
              goto LABEL_149;
            }

            ifa_addr = v45->ifa_addr;
            if (!ifa_addr)
            {
              goto LABEL_149;
            }

            v57 = (v55 >> 4) & 1;
            sa_family = ifa_addr->sa_family;
          }

          else
          {
            LOBYTE(v57) = 0;
          }

          if (sa_family != 30)
          {
            if (sa_family == 18)
            {
              goto LABEL_106;
            }

            if (sa_family != 2)
            {
              goto LABEL_107;
            }
          }

          if (!v45->ifa_netmask)
          {
            goto LABEL_107;
          }

LABEL_106:
          if ((v45->ifa_flags & 1) == 0)
          {
LABEL_107:
            v58 = v46;
            goto LABEL_150;
          }

          v62 = interface_addresses;
          if (!interface_addresses)
          {
LABEL_140:
            v77 = strlen(v45->ifa_name);
            v78 = v77 + 81;
            if (v77 == -81)
            {
              v165 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                *&buf[4] = "ioloop_map_interface_addresses_here_";
                v166 = "%{public}s: strict_calloc called with size 0";
                v167 = v165;
                v168 = 12;
                goto LABEL_307;
              }
            }

            else
            {
              v79 = v77;
              v80 = malloc_type_calloc(1uLL, v78, 0x4924F2C0uLL);
              if (v80)
              {
                v58 = v80;
                v81 = (v80 + 10);
                v80[1] = v80 + 10;
                memcpy(v80 + 10, v45->ifa_name, v79);
                v81[v79] = 0;
                v82 = v45->ifa_addr;
                v83 = v82->sa_family;
                if (v83 == 30)
                {
                  v92 = *v82;
                  *(v58 + 28) = *&v82->sa_data[10];
                  *(v58 + 1) = v92;
                  ifa_netmask = v45->ifa_netmask;
                  v94 = *ifa_netmask;
                  *(v58 + 7) = *&ifa_netmask->sa_data[10];
                  *(v58 + 44) = v94;
                  v95 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    v96 = *(v58 + 24);
                    v97 = "ULA: ";
                    if ((v96 & 0xFE) != 0xFC)
                    {
                      if (v96 != 254 || (v97 = "LUA: ", (*(v58 + 25) & 0xC0) != 0x80))
                      {
                        v97 = "";
                        if ((v96 & 0xE0) == 0x20)
                        {
                          v97 = "GUA: ";
                        }
                      }
                    }

                    v98 = v58[1];
                    *buf = 136449027;
                    *&buf[4] = "ioloop_map_interface_addresses_here_";
                    *&buf[12] = 2082;
                    *&buf[14] = v98;
                    *&buf[22] = 2082;
                    *&buf[24] = v97;
                    *&buf[32] = 2160;
                    *&buf[34] = 1752392040;
                    *&buf[42] = 1041;
                    *&buf[44] = 6;
                    *&buf[48] = 2097;
                    *&buf[50] = v58 + 3;
                    *&buf[58] = 2160;
                    *&buf[60] = 1752392040;
                    *&buf[68] = 1042;
                    *&buf[70] = 2;
                    *&buf[74] = 2098;
                    *&buf[76] = v58 + 30;
                    *&buf[84] = 2160;
                    *&buf[86] = 1752392040;
                    *&buf[94] = 1041;
                    *&buf[96] = 8;
                    *&buf[100] = 2097;
                    *&buf[102] = v58 + 4;
                    v86 = v95;
                    v87 = "%{public}s: new IPv6 interface address added - ifname: %{public}s, addr: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
                    v88 = 110;
LABEL_159:
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, v87, buf, v88);
                  }

LABEL_162:
                  *(v58 + 18) = v45->ifa_flags;
                  *v46 = v58;
                  goto LABEL_150;
                }

                if (v83 == 2)
                {
                  *(v58 + 1) = *v82;
                  *(v58 + 44) = *v45->ifa_netmask;
                  v84 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = v58[1];
                    *buf = 136447235;
                    *&buf[4] = "ioloop_map_interface_addresses_here_";
                    *&buf[12] = 2082;
                    *&buf[14] = v85;
                    *&buf[22] = 2160;
                    *&buf[24] = 1752392040;
                    *&buf[32] = 1041;
                    *&buf[34] = 4;
                    *&buf[38] = 2097;
                    *&buf[40] = v58 + 20;
                    v86 = v84;
                    v87 = "%{public}s: new IPv4 interface address added - ifname: %{public}s, addr: %{private, mask.hash, network:in_addr}.4P";
                    v88 = 48;
                    goto LABEL_159;
                  }

                  goto LABEL_162;
                }

                *(v58 + 52) = 0;
                *(v58 + 44) = 0;
                *(v58 + 17) = 0;
                *(v58 + 60) = 0;
                if (v82->sa_data[4] == 6)
                {
                  *(v58 + 16) = 6;
                  v99 = &v82->sa_len + v82->sa_data[3];
                  v100 = *(v99 + 2);
                  *(v58 + 14) = *(v99 + 6);
                  *(v58 + 6) = v100;
                  *(v58 + 5) = *v82->sa_data;
                  *(v58 + 17) = 18;
                  goto LABEL_162;
                }

                free(v58);
LABEL_149:
                v58 = v46;
                goto LABEL_150;
              }

              v169 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "ioloop_map_interface_addresses_here_";
                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                *&buf[24] = v78;
                v166 = "%{public}s: strict_calloc(%zu, %zu) failed";
                v167 = v169;
                v168 = 32;
LABEL_307:
                _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, v166, buf, v168);
              }
            }

            __break(1u);
          }

          v63 = &ifa_addr->sa_data[6];
          v64 = &interface_addresses;
          while (1)
          {
            v65 = v64;
            v64 = v62;
            if ((v57 & 1) != 0 || strcmp(*(v62 + 8), v45->ifa_name) || sa_family != *(v64 + 17))
            {
              goto LABEL_139;
            }

            v66 = v45->ifa_netmask;
            if (sa_family == 30)
            {
              break;
            }

            if (sa_family == 18)
            {
              if (ifa_addr->sa_data[4] == 6)
              {
                v69 = &v63[ifa_addr->sa_data[3]];
                v70 = *v69;
                v71 = *(v69 + 2);
                if (v70 == *(v64 + 6) && v71 == *(v64 + 14))
                {
                  v67 = *(v64 + 5);
                  v68 = *ifa_addr->sa_data;
LABEL_127:
                  if (v67 == v68)
                  {
                    goto LABEL_164;
                  }
                }
              }
            }

            else if (v66->sa_family == 2 && *&ifa_addr->sa_data[2] == *(v64 + 5))
            {
              v67 = *&v66->sa_data[2];
              v68 = *(v64 + 12);
              goto LABEL_127;
            }

LABEL_139:
            v62 = *v64;
            if (!*v64)
            {
              goto LABEL_140;
            }
          }

          if (v66->sa_family != 30)
          {
            goto LABEL_139;
          }

          if (*v63 != v64[3] || *&ifa_addr[1].sa_len != v64[4])
          {
            goto LABEL_139;
          }

          v75 = *&v66->sa_data[6];
          v74 = *&v66[1].sa_len;
          if (v75 != *(v64 + 52) || v74 != *(v64 + 60))
          {
            goto LABEL_139;
          }

LABEL_164:
          *v65 = *v64;
          *v170 = v64;
          *v64 = 0;
          v58 = v46;
          v170 = v64;
LABEL_150:
          v45 = v45->ifa_next;
          v46 = v58;
          if (!v45)
          {
            v101 = v176;
            if (!v176)
            {
              goto LABEL_193;
            }

            v102 = &v176;
            while (1)
            {
              v103 = v101;
              if (*(v101 + 17) != 18)
              {
                goto LABEL_192;
              }

              v104 = 1;
              while (1)
              {
                v105 = v176;
                v106 = v177;
                v107 = v104;
LABEL_170:
                v108 = v107;
                v109 = ((v107 & 1) != 0 ? v105 : v106);
                if (!v109)
                {
                  break;
                }

                v110 = *v102;
                while (1)
                {
                  if (v109 != v110)
                  {
                    v111 = *(v109 + 17);
                    if (v111 != 18 && !strcmp(v109[1], *(v110 + 8)))
                    {
                      break;
                    }
                  }

                  v109 = *v109;
                  if (!v109)
                  {
                    goto LABEL_179;
                  }
                }

                if (v111 == 30 || v111 == 2)
                {
                  inet_ntop(v111, v109 + 3, v191, 0x2Eu);
                }

                v112 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v113 = *(*v102 + 8);
                  v114 = *v102 + 24;
                  *buf = 136447747;
                  *&buf[4] = "ioloop_map_interface_addresses_here_";
                  *&buf[12] = 2160;
                  *&buf[14] = 1752392040;
                  *&buf[22] = 2081;
                  *&buf[24] = v191;
                  *&buf[32] = 2082;
                  *&buf[34] = v113;
                  *&buf[42] = 2160;
                  *&buf[44] = 1752392040;
                  *&buf[52] = 1041;
                  *&buf[54] = 6;
                  *&buf[58] = 2097;
                  *&buf[60] = v114;
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}s: new link-layer address not dropped because %{private, mask.hash}s - ifname: %{public}s, addr: %{private, mask.hash, srp:mac_addr}.6P", buf, 0x44u);
                }

                v104 = 0;
                if ((v108 & 1) == 0)
                {
                  v103 = *v102;
                  goto LABEL_192;
                }
              }

LABEL_179:
              v107 = 0;
              if (v108)
              {
                goto LABEL_170;
              }

              v103 = *v102;
              if (v104)
              {
                v115 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v116 = v103[1];
                  *buf = 136447235;
                  *&buf[4] = "ioloop_map_interface_addresses_here_";
                  *&buf[12] = 2082;
                  *&buf[14] = v116;
                  *&buf[22] = 2160;
                  *&buf[24] = 1752392040;
                  *&buf[32] = 1041;
                  *&buf[34] = 6;
                  *&buf[38] = 2097;
                  *&buf[40] = v103 + 3;
                  _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%{public}s: new link-layer interface address dropped - ifname: %{public}s, addr: %{private, mask.hash, srp:mac_addr}.6P", buf, 0x30u);
                  v103 = *v102;
                }

                *v102 = *v103;
                free(v103);
                v103 = v102;
              }

LABEL_192:
              v101 = *v103;
              v102 = v103;
              if (!*v103)
              {
LABEL_193:
                v117 = 0;
                v118 = &interface_addresses;
                while (1)
                {
                  if (v117)
                  {
                    if (v117 == 2)
                    {
                      v119 = &v176;
                      v120 = "    new";
                    }

                    else
                    {
                      v119 = &v177;
                      v120 = "   kept";
                    }
                  }

                  else
                  {
                    v119 = &interface_addresses;
                    v120 = "deleted";
                  }

                  v121 = *v119;
                  if (*v119)
                  {
                    break;
                  }

                  v122 = buf;
LABEL_213:
                  *v122 = 0;
                  v131 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *v191 = 136446722;
                    *&v191[4] = "ioloop_map_interface_addresses_here_";
                    *&v191[12] = 2082;
                    *&v191[14] = v120;
                    v192 = 2082;
                    v193 = buf;
                    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s:%{public}s", v191, 0x20u);
                  }

                  if (++v117 == 3)
                  {
                    while (1)
                    {
                      v132 = interface_addresses;
                      if (!interface_addresses)
                      {
                        break;
                      }

                      v133 = *(interface_addresses + 8);
                      interface_addresses = *interface_addresses;
                      dnssd_proxy_ifaddr_callback(v133, (v132 + 16), v132 + 44, *(v132 + 72), 1);
                      free(v132);
                    }

                    v134 = v176;
                    a2 = v172;
                    for (i = v175; v134; v134 = *v134)
                    {
                      dnssd_proxy_ifaddr_callback(*(v134 + 8), (v134 + 16), v134 + 44, *(v134 + 72), 0);
                    }

                    v135 = v177;
                    v5 = v171;
                    if (v177)
                    {
                      interface_addresses = v177;
                      do
                      {
                        v118 = v135;
                        v135 = *v135;
                      }

                      while (v135);
                    }

                    else
                    {
                      interface_addresses = 0;
                    }

                    *v118 = v176;
                    freeifaddrs(v178);
                    goto LABEL_228;
                  }
                }

                v122 = buf;
                v123 = 1000;
                while (2)
                {
                  snprintf(v122, v123, "\n%p %s (", v121, v121[1]);
                  v124 = strlen(v122);
                  v125 = v123 - v124;
                  v126 = &v122[v124];
                  v127 = *(v121 + 17);
                  switch(v127)
                  {
                    case 2:
                      v128 = v121 + 20;
                      v129 = 2;
LABEL_207:
                      inet_ntop(v129, v128, v126, v125);
                      break;
                    case 18:
                      snprintf(v126, v125, "%02x:%02x:%02x:%02x:%02x:%02x", *(v121 + 24), *(v121 + 25), *(v121 + 26), *(v121 + 27), *(v121 + 28), *(v121 + 29));
                      break;
                    case 30:
                      v128 = v121 + 3;
                      v129 = 30;
                      goto LABEL_207;
                  }

                  v130 = strlen(v126);
                  v123 = v125 - v130;
                  v122 = &v126[v130];
                  if (v123 >= 2)
                  {
                    *v122++ = 41;
                    --v123;
                  }

                  v121 = *v121;
                  if (!v121)
                  {
                    goto LABEL_213;
                  }

                  continue;
                }
              }
            }
          }
        }
      }

      v136 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v137 = __error();
        v138 = strerror(*v137);
        *buf = 136446466;
        *&buf[4] = "ioloop_map_interface_addresses_here_";
        *&buf[12] = 2082;
        *&buf[14] = v138;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%{public}s: getifaddrs failed: %{public}s", buf, 0x16u);
      }

LABEL_228:
      v139 = served_domains;
      if (served_domains)
      {
        do
        {
          v140 = v139[5];
          if (v140)
          {
            v141 = *(v140 + 16);
            if (v141)
            {
              v142 = *(v174 + 1);
              v143 = v141;
              do
              {
                if (*(v143 + 9) == v142)
                {
                  if (v142 == 30)
                  {
                    if (v143[2] == *(v174 + 8) && v143[3] == *(v174 + 16))
                    {
LABEL_247:
                      v150 = global_os_log;
                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        v151 = v139[1];
                        *buf = 136446466;
                        *&buf[4] = "dnssd_proxy_find_usable_interface_address";
                        *&buf[12] = 2082;
                        *&buf[14] = v151;
                        _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "%{public}s: matched %{public}s", buf, 0x16u);
                        v141 = *(v139[5] + 16);
                      }

                      for (; v141; v141 = *v141)
                      {
                        if (v173 == 1)
                        {
                          if (*(v141 + 9) == 2 && (*(v141 + 12) != 169 || *(v141 + 13) != 254))
                          {
                            break;
                          }
                        }

                        else if (v173 == 28 && *(v141 + 9) == 30 && (*(v141 + 16) != 254 || (*(v141 + 17) & 0xC0) != 0x80) && (*(v141 + 6) != -16777216 || *(v141 + 27) != -67043585) && (*(v141 + 6) != -16777216 || *(v141 + 14) != 254))
                        {
                          break;
                        }
                      }

LABEL_281:
                      v157 = *(v5 + 72);
                      if (v157 == 28)
                      {
                        if (!v141)
                        {
                          goto LABEL_19;
                        }

                        *v191 = *(v141 + 1);
                        dp_query_add_data_to_response(a1, *(v5 + 32), 28, 1, 0x10uLL, v191, 300, 1, 1, (*(a1 + 168) + 6));
                        v40 = global_os_log;
                        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_19;
                        }

                        v158 = *(v5 + 32);
                        if ((v191[0] & 0xFE) == 0xFC)
                        {
                          v159 = "ULA: ";
                        }

                        else if (v191[0] == 254 && (v191[1] & 0xC0) == 0x80)
                        {
                          v159 = "LUA: ";
                        }

                        else if ((v191[0] & 0xE0) == 0x20)
                        {
                          v159 = "GUA: ";
                        }

                        else
                        {
                          v159 = "";
                        }

                        *buf = 136449283;
                        *&buf[4] = "dnssd_hardwired_response";
                        *&buf[12] = 2082;
                        *&buf[14] = v158;
                        *&buf[22] = 2082;
                        *&buf[24] = v159;
                        *&buf[32] = 2160;
                        *&buf[34] = 1752392040;
                        *&buf[42] = 1041;
                        *&buf[44] = 6;
                        *&buf[48] = 2097;
                        *&buf[50] = v191;
                        *&buf[58] = 2160;
                        *&buf[60] = 1752392040;
                        *&buf[68] = 1042;
                        *&buf[70] = 2;
                        *&buf[74] = 2098;
                        *&buf[76] = &v191[6];
                        *&buf[84] = 2160;
                        *&buf[86] = 1752392040;
                        *&buf[94] = 1041;
                        *&buf[96] = 8;
                        *&buf[100] = 2097;
                        *&buf[102] = &v191[8];
                        *&buf[110] = 2082;
                        *&v180 = "local host IPv6 address matching interface";
                        v162 = "%{public}s: %{public}s IN AAAA {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} %{public}s";
                        goto LABEL_303;
                      }

                      if (!v141)
                      {
                        goto LABEL_19;
                      }

                      *v191 = *(v141 + 3);
                      dp_query_add_data_to_response(a1, *(v5 + 32), v157, 1, 0x10uLL, v191, 300, 1, 1, (*(a1 + 168) + 6));
                      v160 = global_os_log;
                      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_19;
                      }

                      v161 = *(v5 + 32);
                      *buf = 136447491;
                      *&buf[4] = "dnssd_hardwired_response";
                      *&buf[12] = 2082;
                      *&buf[14] = v161;
                      *&buf[22] = 2160;
                      *&buf[24] = 1752392040;
                      *&buf[32] = 1041;
                      *&buf[34] = 4;
                      *&buf[38] = 2097;
                      *&buf[40] = v191;
                      *&buf[48] = 2082;
                      *&buf[50] = "local host IPv4 address matching interface";
                      v162 = "%{public}s: %{public}s IN A %{private, mask.hash, network:in_addr}.4P %{public}s";
                      v163 = v160;
                      v164 = 58;
LABEL_304:
                      _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, v162, buf, v164);
                      goto LABEL_19;
                    }
                  }

                  else if (v142 == 2 && *(v143 + 3) == *(v174 + 4))
                  {
                    goto LABEL_247;
                  }
                }

                v143 = *v143;
              }

              while (v143);
            }
          }

          v139 = *v139;
        }

        while (v139);
      }

      v145 = *(v174 + 1);
      v146 = global_os_log;
      v147 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
      if (v145 == 30)
      {
        if (v147)
        {
          v148 = *(v174 + 8);
          if ((v148 & 0xFE) == 0xFC)
          {
            v149 = "ULA: ";
          }

          else if (v148 == 254 && (*(v174 + 9) & 0xC0) == 0x80)
          {
            v149 = "LUA: ";
          }

          else if ((v148 & 0xE0) == 0x20)
          {
            v149 = "GUA: ";
          }

          else
          {
            v149 = "";
          }

          *buf = 136448771;
          *&buf[4] = "dnssd_proxy_find_usable_interface_address";
          *&buf[12] = 2082;
          *&buf[14] = v149;
          *&buf[22] = 2160;
          *&buf[24] = 1752392040;
          *&buf[32] = 1041;
          *&buf[34] = 6;
          *&buf[38] = 2097;
          *&buf[40] = v174 + 8;
          *&buf[48] = 2160;
          *&buf[50] = 1752392040;
          *&buf[58] = 1042;
          *&buf[60] = 2;
          *&buf[64] = 2098;
          *&buf[66] = v174 + 14;
          *&buf[74] = 2160;
          *&buf[76] = 1752392040;
          *&buf[84] = 1041;
          *&buf[86] = 8;
          *&buf[90] = 2097;
          *&buf[92] = v174 + 16;
          v154 = "%{public}s: local address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} is not seen as present on any known interface.";
          v155 = v146;
          v156 = 100;
          goto LABEL_279;
        }
      }

      else if (v147)
      {
        *buf = 136446979;
        *&buf[4] = "dnssd_proxy_find_usable_interface_address";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 1041;
        *&buf[24] = 4;
        *&buf[28] = 2097;
        *&buf[30] = v174 + 4;
        v154 = "%{public}s: local address %{private, mask.hash, network:in_addr}.4P is not seen as present on any known interface.";
        v155 = v146;
        v156 = 38;
LABEL_279:
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, v154, buf, v156);
      }

      v141 = 0;
      goto LABEL_281;
    }
  }

  v9 = *(v6 + 32);
  v10 = v6;
  if (!v9)
  {
    goto LABEL_29;
  }

  v11 = 0;
  do
  {
    v12 = *(a1 + 200);
    v13 = *(v12 + 72);
    v14 = *(v9 + 4);
    v15 = v13 == 255 || v13 == v14;
    if (v15 && *(v12 + 74) == 1 && !strcasecmp(v9[2], *(v12 + 32)))
    {
      if (*(a1 + 72))
      {
        dp_query_add_data_to_response(a1, v9[3], v14, 1, *(v9 + 20), v9[4], 3600, 1, 0, 0);
      }

      else
      {
        v11 = "hardwired";
        if (*(a1 + 152))
        {
          goto LABEL_17;
        }

        dp_query_add_data_to_response(a1, v9[3], v14, 1, *(v9 + 20), v9[4], 3600, 1, 0, (*(a1 + 168) + 6));
      }

      v11 = "hardwired";
    }

LABEL_17:
    v9 = *v9;
  }

  while (v9);
  if (v11)
  {
LABEL_19:
    *a2 = 0;
    v16 = 1;
    *i = 1;
    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 4);
      *buf = 136446466;
      *&buf[4] = "dp_query_start";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] hardwired response", buf, 0x12u);
    }

    return v16;
  }

  v10 = *(v5 + 8);
  if (!v10)
  {
LABEL_31:
    if (*(v5 + 24))
    {
      if (*(v5 + 40) || *(v5 + 76) == 1)
      {
        v23 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 4);
          *buf = 136446466;
          *&buf[4] = "dp_query_start";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] answering immediately from cache", buf, 0x12u);
        }

        *a2 = 0;
        return 1;
      }
    }

    else
    {
      started = dp_start_question(v5);
      if (started)
      {
        if (started != -65553)
        {
          *a2 = 2;
          v34 = global_os_log;
          v16 = 0;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 4);
            *buf = 136446466;
            *&buf[4] = "dp_query_start";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] couldn't start question", buf, 0x12u);
            return 0;
          }

          return v16;
        }

        *a2 = 2;
        v26 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = "dp_query_start";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: question was refused", buf, 0xCu);
        }
      }
    }

    if (v6)
    {
      v27 = *(a1 + 72) == 0;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v29 = *(a1 + 24);
      if (!v29)
      {
        v29 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 3436);
        *(a1 + 24) = v29;
      }

      ioloop_add_wake_event(v29, a1, dp_query_wakeup, dp_query_context_release, 0x320u);
      v30 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *a1;
        *buf = 136447490;
        *&buf[4] = "dp_query_start";
        *&buf[12] = 1024;
        *&buf[14] = v31;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "query";
        *&buf[38] = 2080;
        *&buf[40] = "dnssd-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3443;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v32 = *a1;
      if (*a1)
      {
        v33 = v32 + 1;
        *a1 = v32 + 1;
        v28 = global_os_log;
        if (v32 + 1 >= 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "dp_query_start";
            *&buf[12] = 1024;
            *&buf[14] = v33;
            *&buf[18] = 2048;
            *&buf[20] = a1;
            *&buf[28] = 2080;
            *&buf[30] = "query";
            *&buf[38] = 2080;
            *&buf[40] = "dnssd-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 3443;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++dnssd_query_created;
        *a1 = 1;
        v28 = global_os_log;
      }
    }

    else
    {
      v28 = global_os_log;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 4);
      *buf = 136446466;
      *&buf[4] = "dp_query_start";
      *&buf[12] = 1024;
      *&buf[14] = v43;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] waiting for wakeup or response", buf, 0x12u);
    }

    return 1;
  }

LABEL_29:
  if (!*(v10 + 40) || **(v5 + 32))
  {
    goto LABEL_31;
  }

  v16 = 1;
  if (!*(a1 + 72))
  {
    *i = 1;
  }

  return v16;
}

void dp_question_cache_remove_queries(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 60);
    *buf = 136447490;
    v29 = "dp_question_cache_remove_queries";
    v30 = 1024;
    *v31 = v3;
    *&v31[4] = 2048;
    *&v31[6] = v1;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 826;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v4 = *(v1 + 60);
  if (v4)
  {
    v5 = v4 + 1;
    *(v1 + 60) = v4 + 1;
    if (v4 + 1 >= 10001)
    {
      v6 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_70;
      }

      *buf = 136447490;
      v29 = "dp_question_cache_remove_queries";
      v30 = 1024;
      *v31 = v5;
      *&v31[4] = 2048;
      *&v31[6] = v1;
      *&v31[14] = 2080;
      *&v31[16] = "question";
      *&v31[24] = 2080;
      *&v31[26] = "dnssd-proxy.c";
      v32 = 1024;
      v33 = 826;
      v7 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_68:
      v25 = v6;
LABEL_69:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v7, buf, 0x36u);
LABEL_70:
      abort();
    }
  }

  else
  {
    ++question_created;
    *(v1 + 60) = 1;
  }

  v8 = (v1 + 16);
  v9 = *(v1 + 16);
  if (!v9)
  {
    goto LABEL_23;
  }

  v27 = v1;
  v26 = (v1 + 16);
  do
  {
    if (*(v9 + 208) == 1)
    {
      *v8 = *(v9 + 192);
      v10 = *v9;
      if (!*v9)
      {
        v24 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_70;
        }

        *buf = 136447490;
        v29 = "dp_question_cache_remove_queries";
        v30 = 1024;
        *v31 = 0;
        *&v31[4] = 2048;
        *&v31[6] = v9;
        *&v31[14] = 2080;
        *&v31[16] = "cquery";
        *&v31[24] = 2080;
        *&v31[26] = "dnssd-proxy.c";
        v32 = 1024;
        v33 = 832;
        v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        v25 = v24;
        goto LABEL_69;
      }

      v11 = global_os_log;
      if (v10 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_70;
        }

        *buf = 136447490;
        v29 = "dp_question_cache_remove_queries";
        v30 = 1024;
        *v31 = v10;
        *&v31[4] = 2048;
        *&v31[6] = v9;
        *&v31[14] = 2080;
        *&v31[16] = "cquery";
        *&v31[24] = 2080;
        *&v31[26] = "dnssd-proxy.c";
        v32 = 1024;
        v33 = 832;
        v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v25 = v11;
        goto LABEL_69;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v29 = "dp_question_cache_remove_queries";
        v30 = 1024;
        *v31 = v10;
        *&v31[4] = 2048;
        *&v31[6] = v9;
        *&v31[14] = 2080;
        *&v31[16] = "cquery";
        *&v31[24] = 2080;
        *&v31[26] = "dnssd-proxy.c";
        v32 = 1024;
        v33 = 832;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v10 = *v9;
      }

      *v9 = v10 - 1;
      if (v10 == 1)
      {
        v12 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v29 = "dp_question_cache_remove_queries";
          v30 = 2048;
          *v31 = v9;
          *&v31[8] = 2080;
          *&v31[10] = "cquery";
          *&v31[18] = 2080;
          *&v31[20] = "dnssd-proxy.c";
          *&v31[28] = 1024;
          *&v31[30] = 832;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++dnssd_query_finalized;
        dnssd_query_finalize(v9);
      }
    }

    else
    {
      v8 = (v9 + 192);
    }

    v9 = *v8;
  }

  while (*v8);
  v1 = v27;
  if (*v26)
  {
    goto LABEL_23;
  }

  v15 = *(v27 + 24);
  if (v15)
  {
    v16 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v27 + 64);
      v18 = *(v15 + 8);
      *buf = 136446978;
      v29 = "dp_question_cancel";
      v30 = 1024;
      *v31 = v17;
      *&v31[4] = 2048;
      *&v31[6] = v15;
      *&v31[14] = 2048;
      *&v31[16] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] question->txn = %p sdref=%p", buf, 0x26u);
      v15 = *(v27 + 24);
    }

    ioloop_dnssd_txn_cancel(v15);
    ioloop_dnssd_txn_release_(*(v27 + 24), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 747);
    *(v27 + 24) = 0;
  }

  v19 = *(v27 + 8);
  v20 = v19 + 6;
  if (!v19)
  {
    v20 = &questions_without_domain;
  }

  while (1)
  {
    v21 = v20;
    v20 = *v20;
    if (!v20)
    {
      break;
    }

    if (v20 == v27)
    {
      *v21 = *v20;
      v19 = *(v27 + 8);
      break;
    }
  }

  if (v19 && !v19[6])
  {
    v22 = &served_domains;
    while (1)
    {
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      if (v22 == v19)
      {
        goto LABEL_48;
      }
    }

    served_domain_free(v19);
    *(v27 + 8) = 0;
  }

LABEL_48:
  v23 = *(v27 + 60);
  if (!v23)
  {
    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_70;
    }

    *buf = 136447490;
    v29 = "dp_question_cancel";
    v30 = 1024;
    *v31 = 0;
    *&v31[4] = 2048;
    *&v31[6] = v27;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 783;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_68;
  }

  v6 = global_os_log;
  if (v23 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_70;
    }

    *buf = 136447490;
    v29 = "dp_question_cancel";
    v30 = 1024;
    *v31 = v23;
    *&v31[4] = 2048;
    *&v31[6] = v27;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 783;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_68;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v29 = "dp_question_cancel";
    v30 = 1024;
    *v31 = v23;
    *&v31[4] = 2048;
    *&v31[6] = v27;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 783;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v23 = *(v27 + 60);
    v6 = global_os_log;
  }

  v13 = v23 - 1;
  *(v27 + 60) = v13;
  if (!v13)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v29 = "dp_question_cancel";
      v30 = 2048;
      *v31 = v27;
      *&v31[8] = 2080;
      *&v31[10] = "question";
      *&v31[18] = 2080;
      *&v31[20] = "dnssd-proxy.c";
      *&v31[28] = 1024;
      *&v31[30] = 783;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++question_finalized;
    question_finalize(v27);
LABEL_23:
    v13 = *(v1 + 60);
    v6 = global_os_log;
    if (!v13)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_70;
      }

      *buf = 136447490;
      v29 = "dp_question_cache_remove_queries";
      v30 = 1024;
      *v31 = 0;
      *&v31[4] = 2048;
      *&v31[6] = v1;
      *&v31[14] = 2080;
      *&v31[16] = "question";
      *&v31[24] = 2080;
      *&v31[26] = "dnssd-proxy.c";
      v32 = 1024;
      v33 = 841;
      v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_68;
    }
  }

  if (v13 >= 10001)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_70;
    }

    *buf = 136447490;
    v29 = "dp_question_cache_remove_queries";
    v30 = 1024;
    *v31 = v13;
    *&v31[4] = 2048;
    *&v31[6] = v1;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 841;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_68;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v29 = "dp_question_cache_remove_queries";
    v30 = 1024;
    *v31 = v13;
    *&v31[4] = 2048;
    *&v31[6] = v1;
    *&v31[14] = 2080;
    *&v31[16] = "question";
    *&v31[24] = 2080;
    *&v31[26] = "dnssd-proxy.c";
    v32 = 1024;
    v33 = 841;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v13 = *(v1 + 60);
  }

  *(v1 + 60) = v13 - 1;
  if (v13 == 1)
  {
    v14 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v29 = "dp_question_cache_remove_queries";
      v30 = 2048;
      *v31 = v1;
      *&v31[8] = 2080;
      *&v31[10] = "question";
      *&v31[18] = 2080;
      *&v31[20] = "dnssd-proxy.c";
      *&v31[28] = 1024;
      *&v31[30] = 841;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++question_finalized;
    question_finalize(v1);
  }
}

void dnssd_query_cancel(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v3 = *(a1 + 4);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 200);
    v5 = "";
    if (v4)
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 32);
      v8 = *(v4 + 8);
      if (v8)
      {
        if (*(v8 + 40))
        {
          v9 = ".local.";
        }

        else
        {
          v9 = *(v8 + 16);
        }
      }

      else
      {
        v9 = "";
      }
    }

    else
    {
      v6 = 0;
      v7 = "<null>";
      v9 = "";
    }

    if (*(a1 + 209))
    {
      v5 = " canceled";
    }

    *buf = 136447747;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v3;
    *&v46[4] = 1024;
    *&v46[6] = v6;
    *&v46[10] = 2160;
    *&v46[12] = 1752392040;
    *&v46[20] = 2081;
    *&v46[22] = v7;
    *&v46[30] = 2082;
    *&v46[32] = v9;
    v47 = 2082;
    v48 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] %{private, mask.hash}s%{public}s%{public}s", buf, 0x40u);
  }

  if (*(a1 + 209))
  {
    return;
  }

  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a1;
    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v11;
    *&v46[4] = 2048;
    *&v46[6] = a1;
    *&v46[14] = 2080;
    *&v46[16] = "query";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 935;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v12 = *a1;
  if (*a1)
  {
    v13 = v12 + 1;
    *a1 = v12 + 1;
    if (v12 + 1 >= 10001)
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_118;
      }

      *buf = 136447490;
      v44 = "dnssd_query_cancel";
      v45 = 1024;
      *v46 = v13;
      *&v46[4] = 2048;
      *&v46[6] = a1;
      *&v46[14] = 2080;
      *&v46[16] = "query";
      *&v46[24] = 2080;
      *&v46[26] = "dnssd-proxy.c";
      *&v46[34] = 1024;
      *&v46[36] = 935;
      v15 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_97:
      v42 = v14;
      goto LABEL_117;
    }
  }

  else
  {
    ++dnssd_query_created;
    *a1 = 1;
  }

  *(a1 + 209) = 1;
  v16 = *(a1 + 8);
  if (!v16)
  {
    v22 = *(a1 + 24);
    if (v22)
    {
      ioloop_wakeup_release_(v22, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 1012);
      *(a1 + 24) = 0;
    }

    goto LABEL_84;
  }

  v17 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v16;
    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v18;
    *&v46[4] = 2048;
    *&v46[6] = v16;
    *&v46[14] = 2080;
    *&v46[16] = "tracker";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 941;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v19 = *v16;
  if (*v16)
  {
    v20 = v19 + 1;
    *v16 = v19 + 1;
    if (v19 + 1 >= 10001)
    {
      v21 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v44 = "dnssd_query_cancel";
        v45 = 1024;
        *v46 = v20;
        *&v46[4] = 2048;
        *&v46[6] = v16;
        *&v46[14] = 2080;
        *&v46[16] = "tracker";
        *&v46[24] = 2080;
        *&v46[26] = "dnssd-proxy.c";
        *&v46[34] = 1024;
        *&v46[36] = 941;
        v15 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_113;
      }

      goto LABEL_118;
    }
  }

  else
  {
    ++dp_tracker_created;
    v20 = 1;
    *v16 = 1;
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = *(a1 + 80);
    if (v24)
    {
      dso_drop_activity(v23, v24);
      *(a1 + 80) = 0;
      v20 = *v16;
    }

    *(a1 + 8) = 0;
    if (!v20)
    {
      v21 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_118;
      }

      *buf = 136447490;
      v44 = "dnssd_query_cancel";
      v45 = 1024;
      *v46 = 0;
      *&v46[4] = 2048;
      *&v46[6] = v16;
      *&v46[14] = 2080;
      *&v46[16] = "tracker";
      *&v46[24] = 2080;
      *&v46[26] = "dnssd-proxy.c";
      *&v46[34] = 1024;
      *&v46[36] = 991;
      v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_113;
    }

    v25 = global_os_log;
    if (v20 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_118;
      }

      *buf = 136447490;
      v44 = "dnssd_query_cancel";
      v45 = 1024;
      *v46 = v20;
      *&v46[4] = 2048;
      *&v46[6] = v16;
      *&v46[14] = 2080;
      *&v46[16] = "tracker";
      *&v46[24] = 2080;
      *&v46[26] = "dnssd-proxy.c";
      *&v46[34] = 1024;
      *&v46[36] = 991;
      v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_116;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v44 = "dnssd_query_cancel";
      v45 = 1024;
      *v46 = v20;
      *&v46[4] = 2048;
      *&v46[6] = v16;
      *&v46[14] = 2080;
      *&v46[16] = "tracker";
      *&v46[24] = 2080;
      *&v46[26] = "dnssd-proxy.c";
      *&v46[34] = 1024;
      *&v46[36] = 991;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v20 = *v16;
    }

    *v16 = v20 - 1;
    if (v20 == 1)
    {
      v26 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v44 = "dnssd_query_cancel";
        v45 = 2048;
        *v46 = v16;
        *&v46[8] = 2080;
        *&v46[10] = "tracker";
        *&v46[18] = 2080;
        *&v46[20] = "dnssd-proxy.c";
        *&v46[28] = 1024;
        *&v46[30] = 991;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      }

      ++dp_tracker_finalized;
      dp_tracker_finalize(v16);
    }
  }

  else
  {
    v27 = v16 + 2;
    v28 = v16[2];
    if (v28)
    {
      v29 = 0;
      v30 = v16[2];
      do
      {
        if (*(a1 + 64) == *(v30 + 64))
        {
          v29 |= *(a1 + 208) ^ 1;
        }

        v30 = *(v30 + 16);
      }

      while (v30);
      if ((v29 & 1) == 0)
      {
        do
        {
          if (*(a1 + 64) == v28[8])
          {
            *v27 = v28[2];
            v31 = v28[3];
            if (v31)
            {
              ioloop_wakeup_release_(v31, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 966);
              v28[3] = 0;
            }

            v32 = *v16;
            if (!*v16)
            {
              v21 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136447490;
                v44 = "dnssd_query_cancel";
                v45 = 1024;
                *v46 = 0;
                *&v46[4] = 2048;
                *&v46[6] = v16;
                *&v46[14] = 2080;
                *&v46[16] = "tracker";
                *&v46[24] = 2080;
                *&v46[26] = "dnssd-proxy.c";
                *&v46[34] = 1024;
                *&v46[36] = 971;
                v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
                goto LABEL_113;
              }

LABEL_118:
              abort();
            }

            v33 = global_os_log;
            if (v32 >= 10001)
            {
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_118;
              }

              *buf = 136447490;
              v44 = "dnssd_query_cancel";
              v45 = 1024;
              *v46 = v32;
              *&v46[4] = 2048;
              *&v46[6] = v16;
              *&v46[14] = 2080;
              *&v46[16] = "tracker";
              *&v46[24] = 2080;
              *&v46[26] = "dnssd-proxy.c";
              *&v46[34] = 1024;
              *&v46[36] = 971;
              v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_106:
              v42 = v33;
LABEL_117:
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, v15, buf, 0x36u);
              goto LABEL_118;
            }

            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              v44 = "dnssd_query_cancel";
              v45 = 1024;
              *v46 = v32;
              *&v46[4] = 2048;
              *&v46[6] = v16;
              *&v46[14] = 2080;
              *&v46[16] = "tracker";
              *&v46[24] = 2080;
              *&v46[26] = "dnssd-proxy.c";
              *&v46[34] = 1024;
              *&v46[36] = 971;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v32 = *v16;
            }

            *v16 = v32 - 1;
            if (v32 == 1)
            {
              v34 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v44 = "dnssd_query_cancel";
                v45 = 2048;
                *v46 = v16;
                *&v46[8] = 2080;
                *&v46[10] = "tracker";
                *&v46[18] = 2080;
                *&v46[20] = "dnssd-proxy.c";
                *&v46[28] = 1024;
                *&v46[30] = 971;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              }

              ++dp_tracker_finalized;
              dp_tracker_finalize(v16);
            }

            v28[1] = 0;
            v35 = *v28;
            if (!*v28)
            {
              v21 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_118;
              }

              *buf = 136447490;
              v44 = "dnssd_query_cancel";
              v45 = 1024;
              *v46 = 0;
              *&v46[4] = 2048;
              *&v46[6] = v28;
              *&v46[14] = 2080;
              *&v46[16] = "list_query";
              *&v46[24] = 2080;
              *&v46[26] = "dnssd-proxy.c";
              *&v46[34] = 1024;
              *&v46[36] = 975;
              v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_113:
              v42 = v21;
              goto LABEL_117;
            }

            v33 = global_os_log;
            if (v35 >= 10001)
            {
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_118;
              }

              *buf = 136447490;
              v44 = "dnssd_query_cancel";
              v45 = 1024;
              *v46 = v35;
              *&v46[4] = 2048;
              *&v46[6] = v28;
              *&v46[14] = 2080;
              *&v46[16] = "list_query";
              *&v46[24] = 2080;
              *&v46[26] = "dnssd-proxy.c";
              *&v46[34] = 1024;
              *&v46[36] = 975;
              v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              goto LABEL_106;
            }

            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              v44 = "dnssd_query_cancel";
              v45 = 1024;
              *v46 = v35;
              *&v46[4] = 2048;
              *&v46[6] = v28;
              *&v46[14] = 2080;
              *&v46[16] = "list_query";
              *&v46[24] = 2080;
              *&v46[26] = "dnssd-proxy.c";
              *&v46[34] = 1024;
              *&v46[36] = 975;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v35 = *v28;
            }

            *v28 = v35 - 1;
            if (v35 == 1)
            {
              v36 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v44 = "dnssd_query_cancel";
                v45 = 2048;
                *v46 = v28;
                *&v46[8] = 2080;
                *&v46[10] = "list_query";
                *&v46[18] = 2080;
                *&v46[20] = "dnssd-proxy.c";
                *&v46[28] = 1024;
                *&v46[30] = 975;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              }

              ++dnssd_query_finalized;
              dnssd_query_finalize(v28);
            }
          }

          else
          {
            v27 = v28 + 2;
          }

          v28 = *v27;
        }

        while (*v27);
      }
    }
  }

  v37 = v16[1];
  if (v37 && !v16[2])
  {
    if ((*(v37 + 424) & 0x20) != 0)
    {
      dp_tracker_idle_after(v16, 15, a1);
    }

    else
    {
      ioloop_comm_release_(v37, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 1002);
      v16[1] = 0;
    }
  }

  v38 = *v16;
  if (!*v16)
  {
    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_118;
    }

    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = 0;
    *&v46[4] = 2048;
    *&v46[6] = v16;
    *&v46[14] = 2080;
    *&v46[16] = "tracker";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1009;
    v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_113;
  }

  v25 = global_os_log;
  if (v38 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_118;
    }

    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v38;
    *&v46[4] = 2048;
    *&v46[6] = v16;
    *&v46[14] = 2080;
    *&v46[16] = "tracker";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1009;
    v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_116:
    v42 = v25;
    goto LABEL_117;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v38;
    *&v46[4] = 2048;
    *&v46[6] = v16;
    *&v46[14] = 2080;
    *&v46[16] = "tracker";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1009;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v38 = *v16;
  }

  *v16 = v38 - 1;
  if (v38 == 1)
  {
    v39 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v44 = "dnssd_query_cancel";
      v45 = 2048;
      *v46 = v16;
      *&v46[8] = 2080;
      *&v46[10] = "tracker";
      *&v46[18] = 2080;
      *&v46[20] = "dnssd-proxy.c";
      *&v46[28] = 1024;
      *&v46[30] = 1009;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++dp_tracker_finalized;
    dp_tracker_finalize(v16);
  }

LABEL_84:
  *(a1 + 208) = 1;
  v40 = *a1;
  if (!*a1)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_118;
    }

    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = 0;
    *&v46[4] = 2048;
    *&v46[6] = a1;
    *&v46[14] = 2080;
    *&v46[16] = "query";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1017;
    v15 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_97;
  }

  v14 = global_os_log;
  if (v40 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_118;
    }

    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v40;
    *&v46[4] = 2048;
    *&v46[6] = a1;
    *&v46[14] = 2080;
    *&v46[16] = "query";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1017;
    v15 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_97;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v44 = "dnssd_query_cancel";
    v45 = 1024;
    *v46 = v40;
    *&v46[4] = 2048;
    *&v46[6] = a1;
    *&v46[14] = 2080;
    *&v46[16] = "query";
    *&v46[24] = 2080;
    *&v46[26] = "dnssd-proxy.c";
    *&v46[34] = 1024;
    *&v46[36] = 1017;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v40 = *a1;
  }

  *a1 = v40 - 1;
  if (v40 == 1)
  {
    v41 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v44 = "dnssd_query_cancel";
      v45 = 2048;
      *v46 = a1;
      *&v46[8] = 2080;
      *&v46[10] = "query";
      *&v46[18] = 2080;
      *&v46[20] = "dnssd-proxy.c";
      *&v46[28] = 1024;
      *&v46[30] = 1017;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++dnssd_query_finalized;
    dnssd_query_finalize(a1);
  }
}

void dp_push_response(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else if (a2)
  {
    v4 = v38;
    dns_name_print_to_limit(*a2, 0, v38, 0x3F2uLL);
  }

  else
  {
    v4 = "<null question name>";
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = *(a1 + 4);
    *buf = 136446466;
    v27 = "dp_push_response";
    v28 = 1024;
    v29 = v15;
    v16 = "%{public}s: [Q%d] query->tracker NULL for query!";
    v17 = v14;
    v18 = 18;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    return;
  }

  if (!*(v5 + 8))
  {
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v20 = *(a1 + 4);
    v21 = *(v5 + 4);
    *buf = 136446722;
    v27 = "dp_push_response";
    v28 = 1024;
    v29 = v20;
    v30 = 1024;
    v31 = v21;
    v16 = "%{public}s: [Q%d][TRK%d] query->tracker->connection NULL";
    v17 = v19;
    v18 = 24;
    goto LABEL_16;
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    v7 = *(a1 + 104);
    v8 = v7 - *(a1 + 168);
    v25.iov_base = *(a1 + 168);
    v25.iov_len = v8;
    v9 = global_os_log;
    v10 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    v11 = v6;
    if (v10)
    {
      v12 = *(a1 + 4);
      if (v3)
      {
        v13 = *(v3 + 64);
      }

      else
      {
        v13 = 0;
      }

      *buf = 136447491;
      v27 = "dp_push_response";
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v13;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2081;
      v35 = v4;
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] %{private, mask.hash}s (len %zd)", buf, 0x36u);
      v11 = *(a1 + 160);
    }

    *(a1 + 104) = v11;
    if (*(a1 + 152) <= 1u)
    {
      if ((v11 + 2) >= *(a1 + 112))
      {
        *(a1 + 152) = 111;
        *(a1 + 144) = 2718;
      }

      else
      {
        *(a1 + 104) = v11 + 1;
        *v11 = (v7 - v6 - 2) >> 8;
        v22 = *(a1 + 104);
        *(a1 + 104) = v22 + 1;
        *v22 = v7 - v6 - 2;
      }
    }

    ioloop_send_message(*(*(a1 + 8) + 8), *(a1 + 64), &v25);
    v23 = *(a1 + 168);
    v24 = v23 + 12 + *(a1 + 184);
    *(a1 + 96) = v23;
    *(a1 + 104) = v23 + 12;
    *(a1 + 160) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = v24;
  }
}

void dp_query_reply_from_cache(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 72) || (*(a1 + 76) & 1) == 0 && (*(a1 + 40) || (*buf = 0, *&buf[8] = 0, clock_gettime(_CLOCK_MONOTONIC_RAW, buf), *&buf[8] / 1000 + 1000000 * *buf - *(a1 + 48) < 800001)))
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }

    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v8 = *(a2 + 4);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 74);
    v12 = *(a1 + 32);
    *buf = 136447747;
    *&buf[4] = "dp_query_reply_from_cache";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2081;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] reply from cache for question - type %d class %d %{private, mask.hash}s", buf, 0x38u);
    v6 = *(a1 + 40);
    if (v6)
    {
LABEL_5:
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      do
      {
        v14 = *v6;
        if (*v6)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = v13;
        }

        if (*(a2 + 72))
        {
          dns_push_query_answer_process(v15, 0, v6[1], *(v6 + 16), *(v6 + 17), *(v6 + 18), v6[2], *(v6 + 7), a2, 1);
        }

        else if ((a3 & 1) == 0)
        {
          dns_query_answer_process(v15, 0, v6[1], *(v6 + 16), *(v6 + 17), *(v6 + 18), v6[2], *(v6 + 7), a2, 1);
        }

        v6 = v14;
      }

      while (v14);
    }
  }

  else
  {
    v16 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 4);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v20 = *(a1 + 74);
      v21 = *(a1 + 32);
      *buf = 136447747;
      *&buf[4] = "dp_query_reply_from_cache";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      v23 = 1024;
      v24 = v18;
      v25 = 1024;
      v26 = v19;
      v27 = 1024;
      v28 = v20;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2081;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] no data for question - type %d class %d %{private, mask.hash}s", buf, 0x38u);
    }

    dns_query_answer_process(0, -65554, *(a1 + 32), *(a1 + 72), *(a1 + 74), 0, 0, 0, a2, 1);
  }

  dp_question_cache_remove_queries(a1);
}

void dnssd_query_finalize(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
      v13 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v16 = 136447490;
      v17 = "dnssd_query_finalize";
      v18 = 1024;
      *v19 = 0;
      *&v19[4] = 2048;
      *&v19[6] = v2;
      *&v19[14] = 2080;
      *&v19[16] = "query->tracker";
      *&v19[24] = 2080;
      *&v19[26] = "dnssd-proxy.c";
      v20 = 1024;
      v21 = 792;
      v14 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_35;
    }

    v4 = global_os_log;
    if (v3 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v16 = 136447490;
      v17 = "dnssd_query_finalize";
      v18 = 1024;
      *v19 = v3;
      *&v19[4] = 2048;
      *&v19[6] = v2;
      *&v19[14] = 2080;
      *&v19[16] = "query->tracker";
      *&v19[24] = 2080;
      *&v19[26] = "dnssd-proxy.c";
      v20 = 1024;
      v21 = 792;
      v14 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_38:
      v15 = v4;
      goto LABEL_39;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136447490;
      v17 = "dnssd_query_finalize";
      v18 = 1024;
      *v19 = v3;
      *&v19[4] = 2048;
      *&v19[6] = v2;
      *&v19[14] = 2080;
      *&v19[16] = "query->tracker";
      *&v19[24] = 2080;
      *&v19[26] = "dnssd-proxy.c";
      v20 = 1024;
      v21 = 792;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
      v2 = a1[1];
      v3 = *v2;
    }

    *v2 = v3 - 1;
    if (v3 == 1)
    {
      v5 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136447234;
        v17 = "dnssd_query_finalize";
        v18 = 2048;
        *v19 = v2;
        *&v19[8] = 2080;
        *&v19[10] = "query->tracker";
        *&v19[18] = 2080;
        *&v19[20] = "dnssd-proxy.c";
        *&v19[28] = 1024;
        *&v19[30] = 792;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v16, 0x30u);
        v2 = a1[1];
      }

      ++dp_tracker_finalized;
      dp_tracker_finalize(v2);
    }

    a1[1] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    ioloop_message_release_(v6, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 796);
    a1[8] = 0;
  }

  v7 = a1[3];
  if (v7)
  {
    ioloop_wakeup_release_(v7, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 800);
    a1[3] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    free(v8);
    a1[21] = 0;
  }

  v9 = a1[22];
  if (v9)
  {
    dns_message_free(v9);
    a1[22] = 0;
  }

  v10 = a1[25];
  if (v10)
  {
    v11 = *(v10 + 60);
    if (v11)
    {
      v4 = global_os_log;
      if (v11 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136447490;
          v17 = "dnssd_query_finalize";
          v18 = 1024;
          *v19 = v11;
          *&v19[4] = 2048;
          *&v19[6] = v10;
          *&v19[14] = 2080;
          *&v19[16] = "query->question";
          *&v19[24] = 2080;
          *&v19[26] = "dnssd-proxy.c";
          v20 = 1024;
          v21 = 809;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
          v10 = a1[25];
          v11 = *(v10 + 60);
        }

        *(v10 + 60) = v11 - 1;
        if (v11 == 1)
        {
          v12 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136447234;
            v17 = "dnssd_query_finalize";
            v18 = 2048;
            *v19 = v10;
            *&v19[8] = 2080;
            *&v19[10] = "query->question";
            *&v19[18] = 2080;
            *&v19[20] = "dnssd-proxy.c";
            *&v19[28] = 1024;
            *&v19[30] = 809;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v16, 0x30u);
            v10 = a1[25];
          }

          ++question_finalized;
          question_finalize(v10);
        }

        goto LABEL_28;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_40:
        abort();
      }

      v16 = 136447490;
      v17 = "dnssd_query_finalize";
      v18 = 1024;
      *v19 = v11;
      *&v19[4] = 2048;
      *&v19[6] = v10;
      *&v19[14] = 2080;
      *&v19[16] = "query->question";
      *&v19[24] = 2080;
      *&v19[26] = "dnssd-proxy.c";
      v20 = 1024;
      v21 = 809;
      v14 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_38;
    }

    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_40;
    }

    v16 = 136447490;
    v17 = "dnssd_query_finalize";
    v18 = 1024;
    *v19 = 0;
    *&v19[4] = 2048;
    *&v19[6] = v10;
    *&v19[14] = 2080;
    *&v19[16] = "query->question";
    *&v19[24] = 2080;
    *&v19[26] = "dnssd-proxy.c";
    v20 = 1024;
    v21 = 809;
    v14 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_35:
    v15 = v13;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v14, &v16, 0x36u);
    goto LABEL_40;
  }

LABEL_28:
  free(a1);
  --dp_num_outstanding_queries;
}

void dp_tracker_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    ioloop_wakeup_release_(v2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 697);
  }

  v3 = a1[1];
  if (v3)
  {
    ioloop_comm_release_(v3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 702);
  }

  free(a1);
}

void question_finalize(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v3 = *(a1 + 64);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 72);
    v5 = *(a1 + 74);
    v6 = *(a1 + 32);
    v10 = 136447491;
    v11 = "question_finalize";
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] type %d class %d %{private, mask.hash}s", &v10, 0x32u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    do
    {
      v8 = *v7;
      dp_answer_free(v7);
      v7 = v8;
    }

    while (v8);
  }

  *(a1 + 40) = 0;
  v9 = *(a1 + 32);
  if (v9)
  {
    free(v9);
  }

  free(a1);
}

void dp_answer_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void dns_query_answer_process(char a1, int a2, uint8_t *a3, int a4, int a5, size_t a6, int32x4_t *a7, unsigned int a8, uint64_t a9, char a10)
{
  v15 = *(a9 + 200);
  v16 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a9 + 4);
    v36 = v15;
    if (v15)
    {
      v18 = *(v15 + 64);
    }

    else
    {
      v18 = 0;
    }

    if (a1)
    {
      v19 = " m ";
    }

    else
    {
      v19 = " ";
    }

    *buf = 136448771;
    v41 = "dns_query_answer_process";
    v42 = 1024;
    v43 = v17;
    v44 = 1024;
    v45 = v18;
    v46 = 2160;
    v47 = 1752392040;
    v48 = 2081;
    v49 = a3;
    v50 = 2082;
    v51 = v19;
    v52 = 2082;
    v53 = dns_rrtype_to_string(a4);
    v54 = 1024;
    v55 = a5;
    v56 = 1024;
    v57 = a6;
    v58 = 1024;
    v59 = a2;
    v60 = 2048;
    v61 = a9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] %{private, mask.hash}s%{public}s%{public}s %d %x %d %p", buf, 0x5Cu);
    v15 = v36;
  }

  v20 = *(a9 + 8);
  if (!v20)
  {
    v23 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v24 = *(a9 + 4);
    *buf = 136446466;
    v41 = "dns_query_answer_process";
    v42 = 1024;
    v43 = v24;
    v25 = "%{public}s: [Q%d] query->tracker NULL for query!";
    v26 = v23;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 18;
    goto LABEL_25;
  }

  if (!*(v20 + 8))
  {
    v29 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v30 = *(a9 + 4);
    v31 = *(v20 + 4);
    *buf = 136446722;
    v41 = "dns_query_answer_process";
    v42 = 1024;
    v43 = v30;
    v44 = 1024;
    v45 = v31;
    v25 = "%{public}s: [Q%d][TRK%d] query->tracker->connection NULL";
    v26 = v29;
    v27 = OS_LOG_TYPE_ERROR;
    goto LABEL_24;
  }

  if (a2 == -65554)
  {
    v35 = "no such record";
LABEL_35:
    dp_query_send_dns_response(a9, v35);
    return;
  }

  if (a2)
  {
    *(*(a9 + 168) + 2) = *(*(a9 + 168) + 2) & 0xF0FF | 0x200;
    v35 = "unhandled error";
    goto LABEL_35;
  }

  if (a10)
  {
    if (a8 >= 0x12C)
    {
      v21 = 300;
    }

    else
    {
      v21 = a8;
    }

    while (1)
    {
      v22 = *(a9 + 104);
      dp_query_add_data_to_response(a9, a3, a4, a5, a6, a7, v21, 0, 0, (*(a9 + 168) + 6));
      if ((*(a9 + 152) & 1) == 0)
      {
        break;
      }

      *(a9 + 104) = v22;
      if ((*(*(*(a9 + 8) + 8) + 424) & 0x20) == 0)
      {
        break;
      }

      embiggen(a9);
      *(a9 + 152) = 0;
    }
  }

  if ((a1 & 1) != 0 && (*(a9 + 152) & 1) == 0)
  {
    return;
  }

  if (a4 != 5 || *(v15 + 72) == 5)
  {
    v35 = "normal success";
    goto LABEL_35;
  }

  v32 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a9 + 4);
    v34 = *(v15 + 64);
    *buf = 136446722;
    v41 = "dns_query_answer_process";
    v42 = 1024;
    v43 = v33;
    v44 = 1024;
    v45 = v34;
    v25 = "%{public}s: [Q%d][QU%d] not responding yet because CNAME.";
    v26 = v32;
    v27 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
    v28 = 24;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, v28);
  }
}

void dns_push_query_answer_process(char a1, int a2, uint8_t *a3, int a4, int a5, size_t a6, int32x4_t *a7, int a8, uint64_t a9, char a10)
{
  v10 = *(a9 + 8);
  if (!v10)
  {
    v32 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v33 = *(a9 + 4);
    *buf = 136446466;
    v46 = "dns_push_query_answer_process";
    v47 = 1024;
    v48 = v33;
    v34 = "%{public}s: [Q%d] query->tracker NULL for query!";
    v35 = v32;
    v36 = 18;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    return;
  }

  v11 = global_os_log;
  if (!*(v10 + 8))
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v37 = *(a9 + 4);
    v38 = *(v10 + 4);
    *buf = 136446722;
    v46 = "dns_push_query_answer_process";
    v47 = 1024;
    v48 = v37;
    v49 = 1024;
    LODWORD(v50) = v38;
    v34 = "%{public}s: [Q%d][TRK%d] query->tracker->connection NULL";
    v35 = v11;
    v36 = 24;
    goto LABEL_25;
  }

  v43 = *(a9 + 104);
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a9 + 4);
    *buf = 136448259;
    v46 = "dns_push_query_answer_process";
    v47 = 1024;
    v48 = v19;
    v49 = 2160;
    v50 = 1752392040;
    v51 = 2081;
    v52 = a3;
    v53 = 1024;
    *v54 = a4;
    *&v54[4] = 1024;
    *&v54[6] = a5;
    LOWORD(v55) = 1024;
    *(&v55 + 2) = a6;
    HIWORD(v55) = 1024;
    *v56 = a2;
    *&v56[4] = 2048;
    v57 = a9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] PUSH %{private, mask.hash}s %d %d %x %d %p", buf, 0x48u);
  }

  if (a2 != -65554)
  {
    if (a2)
    {
      v39 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a9 + 4);
        *buf = 136446722;
        v46 = "dns_push_query_answer_process";
        v47 = 1024;
        v48 = v40;
        v49 = 1024;
        LODWORD(v50) = a2;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d] unexpected error code %d", buf, 0x18u);
      }

      dnssd_query_cancel(a9);
    }

    else
    {
      if (a10)
      {
        if (a6)
        {
          v20 = -1;
        }

        else
        {
          v20 = -2;
        }

        v21 = a7;
        if (!a6)
        {
          v21 = 0;
        }

        v42 = v21;
        v41 = a8;
        while (1)
        {
          v22 = global_os_log;
          v23 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
          if ((a1 & 2) != 0)
          {
            v24 = a8;
            v25 = a7;
            if (v23)
            {
              v29 = *(a9 + 4);
              v30 = dns_rrtype_to_string(a4);
              v31 = dns_qclass_to_string(a5);
              *buf = 136448003;
              v46 = "dns_push_query_answer_process";
              v47 = 1024;
              v48 = v29;
              a8 = v41;
              v49 = 2160;
              v50 = 1752392040;
              v51 = 2081;
              v52 = a3;
              v53 = 2082;
              *v54 = v30;
              *&v54[8] = 2082;
              v55 = v31;
              *v56 = 1024;
              *&v56[2] = a6;
              LOWORD(v57) = 1024;
              *(&v57 + 2) = v41;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] DNS Push adding record - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u, ttl: %u.", buf, 0x46u);
              v24 = v41;
              v25 = a7;
            }
          }

          else
          {
            v24 = v20;
            v25 = v42;
            if (v23)
            {
              v26 = *(a9 + 4);
              v27 = dns_rrtype_to_string(a4);
              v28 = dns_qclass_to_string(a5);
              *buf = 136448003;
              v46 = "dns_push_query_answer_process";
              v47 = 1024;
              v48 = v26;
              a8 = v41;
              v49 = 2160;
              v50 = 1752392040;
              v51 = 2081;
              v52 = a3;
              v53 = 2082;
              *v54 = v27;
              *&v54[8] = 2082;
              v55 = v28;
              *v56 = 1024;
              *&v56[2] = a6;
              LOWORD(v57) = 1024;
              *(&v57 + 2) = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] DNS Push removing record - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u, ttl: 0x%X.", buf, 0x46u);
              v24 = v20;
              v25 = v42;
            }
          }

          dp_query_add_data_to_response(a9, a3, a4, a5, a6, v25, v24, 0, 0, 0);
          if ((*(a9 + 152) & 1) == 0)
          {
            break;
          }

          *(a9 + 104) = v43;
          *(a9 + 152) = 0;
          dp_push_response(a9, 0);
          dns_push_start(a9);
        }
      }

      if ((a1 & 1) == 0)
      {
        dp_push_response(a9, 0);
      }
    }
  }
}

void dp_query_add_data_to_response(uint64_t a1, uint8_t *a2, int a3, int a4, size_t a5, int32x4_t *a6, int a7, char a8, char a9, _WORD *a10)
{
  v12 = a4;
  v16 = *(a1 + 104);
  v155 = v16;
  v156 = *(a1 + 200);
  if (!*(v156 + 8))
  {
    a8 = 1;
  }

  if (!a5)
  {
    v41 = *(a1 + 72);
    v42 = global_os_log;
    v43 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (!v41)
    {
      if (!v43)
      {
        return;
      }

      v83 = *(a1 + 4);
      v84 = *(v156 + 64);
      *buf = 136447747;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v83;
      *&v184[4] = 1024;
      *&v184[6] = v84;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = a2;
      v188 = 2082;
      *v189 = dns_rrtype_to_string(a3);
      *&v189[8] = 1024;
      *&v189[10] = a4;
      v39 = "%{public}s: [Q%d][QU%d] eliding zero-length response for %{private, mask.hash}s %{public}s %d";
      v85 = v42;
      v86 = 60;
LABEL_147:
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, v39, buf, v86);
      return;
    }

    v12 = a4;
    if (v43)
    {
      v44 = *(a1 + 4);
      v45 = a8;
      v46 = *(v156 + 64);
      *buf = 136447747;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v44;
      v12 = a4;
      *&v184[4] = 1024;
      *&v184[6] = v46;
      a8 = v45;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = a2;
      v188 = 2082;
      *v189 = dns_rrtype_to_string(a3);
      *&v189[8] = 1024;
      *&v189[10] = a4;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] adding zero-length DSO response for %{private, mask.hash}s %{public}s %d", buf, 0x3Cu);
    }
  }

  if (a9)
  {
    goto LABEL_6;
  }

  if (a3 == 1 && a5 == 4)
  {
    v35 = a6->u8[0];
    if (v35 == 169)
    {
      if (a6->u8[1] == 254)
      {
        v36 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v97 = *(a1 + 4);
        v98 = *(v156 + 64);
        *buf = 136448003;
        v182 = "dp_query_add_data_to_response";
        v183 = 1024;
        *v184 = v97;
        *&v184[4] = 1024;
        *&v184[6] = v98;
        strcpy(v185, "p\bhash");
        v185[7] = 0;
        *&v185[8] = 0;
        v186 = 2081;
        v187 = a2;
        v188 = 2160;
        *v189 = 1752392040;
        *&v189[8] = 1041;
        *&v189[10] = 4;
        *&v189[14] = 2097;
        *&v189[16] = a6;
        v39 = "%{public}s: [Q%d][QU%d] eliding link-local response for %{private, mask.hash}s: %{private, mask.hash, network:in_addr}.4P";
        goto LABEL_129;
      }
    }

    else if (v35 == 127)
    {
      v36 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v37 = *(a1 + 4);
      v38 = *(v156 + 64);
      *buf = 136448003;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v37;
      *&v184[4] = 1024;
      *&v184[6] = v38;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = a2;
      v188 = 2160;
      *v189 = 1752392040;
      *&v189[8] = 1041;
      *&v189[10] = 4;
      *&v189[14] = 2097;
      *&v189[16] = a6;
      v39 = "%{public}s: [Q%d][QU%d] eliding localhost response for %{private, mask.hash}s: %{private, mask.hash, network:in_addr}.4P";
LABEL_129:
      v85 = v36;
      v86 = 70;
      goto LABEL_147;
    }
  }

  else if (a3 == 28 && a5 == 16)
  {
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a6, xmmword_100085EE0)))))
    {
      if ((*a6 & 0xC0FF) != 0x80FE)
      {
        goto LABEL_6;
      }

      v64 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v65 = *(a1 + 4);
      v66 = *(v156 + 64);
      *buf = 136449795;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v65;
      *&v184[4] = 1024;
      *&v184[6] = v66;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = a2;
      v188 = 2082;
      *v189 = "LUA: ";
      *&v189[8] = 2160;
      *&v189[10] = 1752392040;
      *&v189[18] = 1041;
      *&v189[20] = 6;
      v190 = 2097;
      v191 = a6;
      v192 = 2160;
      v193 = 1752392040;
      v194 = 1042;
      v195 = 2;
      v196 = 2098;
      v197 = &a6->i8[6];
      v198 = 2160;
      v199 = 1752392040;
      v200 = 1041;
      v201 = 8;
      v202 = 2097;
      v203 = &a6->i64[1];
      v39 = "%{public}s: [Q%d][QU%d] eliding link-local response for %{private, mask.hash}s: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
    }

    else
    {
      v64 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v107 = *(a1 + 4);
      v108 = *(v156 + 64);
      *buf = 136449795;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v107;
      *&v184[4] = 1024;
      *&v184[6] = v108;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = a2;
      v188 = 2082;
      *v189 = "";
      *&v189[8] = 2160;
      *&v189[10] = 1752392040;
      *&v189[18] = 1041;
      *&v189[20] = 6;
      v190 = 2097;
      v191 = a6;
      v192 = 2160;
      v193 = 1752392040;
      v194 = 1042;
      v195 = 2;
      v196 = 2098;
      v197 = &a6->i8[6];
      v198 = 2160;
      v199 = 1752392040;
      v200 = 1041;
      v201 = 8;
      v202 = 2097;
      v203 = &a6->i64[1];
      v39 = "%{public}s: [Q%d][QU%d] eliding localhost response for %{private, mask.hash}s: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
    }

    v85 = v64;
    v86 = 132;
    goto LABEL_147;
  }

LABEL_6:
  __src = a6;
  v18 = &unk_1000A9000;
  v19 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = dns_rrtype_to_string(a3);
    *buf = 136446722;
    v182 = "dp_query_add_data_to_response";
    v183 = 2082;
    *v184 = v20;
    *&v184[8] = 1024;
    *v185 = a5;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: survived for rrtype %{public}s rdlen %d", buf, 0x1Cu);
  }

  if (*(a1 + 72))
  {
    dns_push_start(a1);
  }

  v21 = *(v156 + 8);
  v22 = *(v156 + 32);
  v152 = a8;
  if (v21)
  {
    dns_concatenate_name_to_wire_(a1 + 96, 0, v22, *(v21 + 8), 1247);
    if (*(a1 + 152) >= 2u)
    {
      v23 = "concatenate_name_to_wire";
    }

    else
    {
      v23 = 0;
    }

    v24 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v12;
      v26 = *(a1 + 4);
      v27 = *(v156 + 64);
      if (*(a1 + 72))
      {
        v28 = "PUSH";
      }

      else
      {
        v28 = "DNS ";
      }

      v29 = dns_rrtype_to_string(a3);
      v30 = *(v156 + 32);
      v31 = *(*(v156 + 8) + 8);
      *buf = 136448515;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v26;
      v12 = v25;
      *&v184[4] = 1024;
      *&v184[6] = v27;
      *v185 = 2082;
      *&v185[2] = v28;
      v18 = &unk_1000A9000;
      v186 = 2082;
      v187 = v29;
      v188 = 1024;
      *v189 = v12;
      *&v189[4] = 2160;
      *&v189[6] = 1752392040;
      *&v189[14] = 2081;
      *&v189[16] = v30;
      v190 = 2160;
      v191 = 1752392040;
      v192 = 2081;
      v193 = v31;
      v32 = "%{public}s: [Q%d][QU%d] %{public}s answer:  type %{public}s class %02d %{private, mask.hash}s.%{private, mask.hash}s";
      v33 = v24;
      v34 = 90;
LABEL_36:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    }
  }

  else
  {
    dns_concatenate_name_to_wire_(a1 + 96, 0, 0, v22, 1251);
    if (*(a1 + 152) >= 2u)
    {
      v23 = "compress_name_to_wire";
    }

    else
    {
      v23 = 0;
    }

    v47 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v12;
      v12 = *(a1 + 4);
      v49 = *(v156 + 64);
      if (*(a1 + 72))
      {
        v50 = "push";
      }

      else
      {
        v50 = " dns";
      }

      v51 = dns_rrtype_to_string(a3);
      v52 = *(v156 + 32);
      *buf = 136448003;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v12;
      LOWORD(v12) = v48;
      *&v184[4] = 1024;
      *&v184[6] = v49;
      *v185 = 2082;
      *&v185[2] = v50;
      v18 = &unk_1000A9000;
      v186 = 2082;
      v187 = v51;
      v188 = 1024;
      *v189 = v48;
      *&v189[4] = 2160;
      *&v189[6] = 1752392040;
      *&v189[14] = 2081;
      *&v189[16] = v52;
      v32 = "%{public}s: [Q%d][QU%d] %{public}s answer:  type %{public}s class %02d %{private, mask.hash}s (p)";
      v33 = v47;
      v34 = 70;
      goto LABEL_36;
    }
  }

  v53 = *(a1 + 152);
  if (v53 > 1)
  {
    goto LABEL_61;
  }

  v54 = *(a1 + 104);
  if ((v54 + 2) >= *(a1 + 112))
  {
    v53 = 111;
    *(a1 + 152) = 111;
    *(a1 + 144) = 1255;
LABEL_61:
    if (v23)
    {
      v67 = 0;
    }

    else
    {
      v67 = v53 > 1;
    }

    v57 = "rrtype";
    if (!v67)
    {
      v57 = v23;
    }

    goto LABEL_66;
  }

  *(a1 + 104) = v54 + 1;
  *v54 = BYTE1(a3);
  v55 = *(a1 + 104);
  *(a1 + 104) = v55 + 1;
  *v55 = a3;
  v53 = *(a1 + 152);
  if (v23)
  {
    v56 = 0;
  }

  else
  {
    v56 = v53 > 1;
  }

  v57 = "rrtype";
  if (!v56)
  {
    v57 = v23;
  }

  if (v53 > 1)
  {
LABEL_66:
    if (v57)
    {
      v68 = 0;
    }

    else
    {
      v68 = v53 > 1;
    }

    if (v68)
    {
      v62 = "rrclass";
    }

    else
    {
      v62 = v57;
    }

    goto LABEL_72;
  }

  v58 = *(a1 + 104);
  if ((v58 + 2) >= *(a1 + 112))
  {
    *(a1 + 152) = 111;
    *(a1 + 144) = 1256;
    if (v57)
    {
      v62 = v57;
    }

    else
    {
      v62 = "rrclass";
    }
  }

  else
  {
    *(a1 + 104) = v58 + 1;
    *v58 = BYTE1(v12);
    v59 = *(a1 + 104);
    *(a1 + 104) = v59 + 1;
    *v59 = v12;
    v60 = *(a1 + 152);
    if (v57)
    {
      v61 = 0;
    }

    else
    {
      v61 = v60 > 1;
    }

    if (v61)
    {
      v62 = "rrclass";
    }

    else
    {
      v62 = v57;
    }

    if (v60 <= 1)
    {
      dns_u32_to_wire_(a1 + 96, a7, 1257);
      v63 = *(a1 + 152) > 1u;
      goto LABEL_73;
    }
  }

LABEL_72:
  v63 = 1;
LABEL_73:
  v160 = 0u;
  v161 = 0u;
  if (v63 && v62 == 0)
  {
    v69 = "ttl";
  }

  else
  {
    v69 = v62;
  }

  v158 = 0uLL;
  v159 = 0uLL;
  v157 = 0;
  WORD4(v158) = a3;
  WORD5(v158) = v12;
  if (!a5)
  {
    v73 = v18[22];
    if (*(a1 + 72))
    {
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_101;
      }

      *buf = 136446210;
      v182 = "dp_query_add_data_to_response";
      v74 = "%{public}s: Adding a special 0-length rdata response for DSO, possibly a removing update";
      v75 = v73;
      v76 = OS_LOG_TYPE_DEFAULT;
      v77 = 12;
      goto LABEL_100;
    }

    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

LABEL_99:
    v87 = *(a1 + 4);
    v88 = *(v156 + 64);
    *buf = 136446722;
    v182 = "dp_query_add_data_to_response";
    v183 = 1024;
    *v184 = v87;
    *&v184[4] = 1024;
    *&v184[6] = v88;
    v74 = "%{public}s: [Q%d][QU%d] rdata didn't parse!!";
    v75 = v73;
    v76 = OS_LOG_TYPE_ERROR;
    v77 = 24;
LABEL_100:
    _os_log_impl(&_mh_execute_header, v75, v76, v74, buf, v77);
    goto LABEL_101;
  }

  if (a3 > 0x21 || ((1 << a3) & 0x200001024) == 0)
  {
    goto LABEL_101;
  }

  if ((dns_rdata_parse_data_(&v158, __src, &v157, a5, a5, 0) & 1) == 0)
  {
    v73 = v18[22];
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  if (a3 <= 11)
  {
    if (a3 != 2 && a3 != 5)
    {
      goto LABEL_83;
    }

    goto LABEL_91;
  }

  if (a3 == 33)
  {
    v78 = v159;
    v99 = "rdlength begin";
    v100 = *(a1 + 152);
    v101 = "answer.data.srv.priority";
    v102 = "answer.data.srv.weight";
    if (v100 <= 1)
    {
      v103 = *(a1 + 104);
      v104 = (v103 + 2);
      if ((v103 + 2) >= *(a1 + 112))
      {
        v100 = 111;
      }

      else
      {
        if (!*(a1 + 120))
        {
          *(a1 + 120) = v103;
          *(a1 + 104) = v104;
          if (v69)
          {
            v137 = 0;
          }

          else
          {
            v137 = v100 > 1;
          }

          if (!v137)
          {
            v99 = v69;
          }

          if ((v103 + 4) < *(a1 + 112))
          {
            v138 = BYTE8(v159);
            v139 = HIBYTE(WORD4(v159));
            *(a1 + 104) = v104 + 1;
            *v104 = v139;
            v140 = *(a1 + 104);
            *(a1 + 104) = v140 + 1;
            *v140 = v138;
            v100 = *(a1 + 152);
            if (v99)
            {
              v141 = 0;
            }

            else
            {
              v141 = v100 > 1;
            }

            if (!v141)
            {
              v101 = v99;
            }

            v106 = v152;
            if (v100 > 1)
            {
              v81 = v18;
            }

            else
            {
              v142 = *(a1 + 104);
              if ((v142 + 2) < *(a1 + 112))
              {
                v143 = BYTE10(v159);
                v144 = HIBYTE(WORD5(v159));
                *(a1 + 104) = v142 + 1;
                *v142 = v144;
                v145 = *(a1 + 104);
                *(a1 + 104) = v145 + 1;
                *v145 = v143;
                v146 = *(a1 + 152);
                if (v101)
                {
                  v147 = 0;
                }

                else
                {
                  v147 = v146 > 1;
                }

                if (!v147)
                {
                  v102 = v101;
                }

                v81 = v18;
                if (v146 <= 1)
                {
                  v148 = *(a1 + 104);
                  if ((v148 + 2) < *(a1 + 112))
                  {
                    v149 = BYTE12(v159);
                    v150 = HIBYTE(WORD6(v159));
                    *(a1 + 104) = v148 + 1;
                    *v148 = v150;
                    v151 = *(a1 + 104);
                    *(a1 + 104) = v151 + 1;
                    *v151 = v149;
                    v112 = *(a1 + 152) > 1u;
LABEL_168:
                    if (v112 && v102 == 0)
                    {
                      v93 = "answer.data.srv.port";
                    }

                    else
                    {
                      v93 = v102;
                    }

                    goto LABEL_171;
                  }

                  *(a1 + 152) = 111;
                  *(a1 + 144) = 1285;
                }

LABEL_167:
                v112 = 1;
                goto LABEL_168;
              }

              v81 = v18;
              v100 = 111;
              *(a1 + 152) = 111;
              *(a1 + 144) = 1284;
            }

LABEL_162:
            if (v101)
            {
              v111 = 0;
            }

            else
            {
              v111 = v100 > 1;
            }

            if (!v111)
            {
              v102 = v101;
            }

            goto LABEL_167;
          }

          v81 = v18;
          v100 = 111;
          *(a1 + 152) = 111;
          *(a1 + 144) = 1283;
LABEL_157:
          v106 = v152;
          if (v99)
          {
            v110 = 0;
          }

          else
          {
            v110 = v100 > 1;
          }

          if (!v110)
          {
            v101 = v99;
          }

          goto LABEL_162;
        }

        v100 |= 0x2Cu;
      }

      *(a1 + 152) = v100;
      *(a1 + 144) = 1282;
    }

    v81 = v18;
    if (v69)
    {
      v109 = 0;
    }

    else
    {
      v109 = v100 > 1;
    }

    if (!v109)
    {
      v99 = v69;
    }

    goto LABEL_157;
  }

  if (a3 != 12)
  {
LABEL_83:
    v70 = v18;
    v71 = v18[22];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      v72 = dns_rrtype_to_string(a3);
      *buf = 136446466;
      v182 = "dp_query_add_data_to_response";
      v183 = 2082;
      *v184 = v72;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, "%{public}s: mismatch between rrtypes mapped and rrtypes thought to be mappable for rrtype %{public}s", buf, 0x16u);
    }

    dns_rrdata_free(&v158);
    v18 = v70;
LABEL_101:
    v89 = *(a1 + 152);
    if (v89 <= 1)
    {
      v90 = *(a1 + 104);
      if ((v90 + 2) < *(a1 + 112))
      {
        *(a1 + 104) = v90 + 1;
        *v90 = BYTE1(a5);
        v91 = *(a1 + 104);
        *(a1 + 104) = v91 + 1;
        *v91 = a5;
        v89 = *(a1 + 152);
        if (v69)
        {
          v92 = 0;
        }

        else
        {
          v92 = v89 > 1;
        }

        if (v92)
        {
          v93 = "rdlen";
        }

        else
        {
          v93 = v69;
        }

        if (v89 <= 1)
        {
          v94 = *(a1 + 104);
          if (v94 + a5 <= *(a1 + 112))
          {
            memcpy(v94, __src, a5);
            *(a1 + 104) += a5;
            v89 = *(a1 + 152);
          }

          else
          {
            v89 = 111;
            *(a1 + 152) = 111;
            *(a1 + 144) = 1328;
          }
        }

LABEL_119:
        if (v93)
        {
          v96 = 0;
        }

        else
        {
          v96 = v89 > 1;
        }

        if (v96)
        {
          v93 = "rdata";
        }

        if (v89)
        {
          goto LABEL_215;
        }

        goto LABEL_210;
      }

      v89 = 111;
      *(a1 + 152) = 111;
      *(a1 + 144) = 1327;
    }

    if (v69)
    {
      v95 = 0;
    }

    else
    {
      v95 = v89 > 1;
    }

    if (v95)
    {
      v93 = "rdlen";
    }

    else
    {
      v93 = v69;
    }

    goto LABEL_119;
  }

LABEL_91:
  v78 = v159;
  v79 = *(a1 + 152);
  if (v79 > 1)
  {
    v81 = v18;
  }

  else
  {
    v80 = *(a1 + 104);
    if ((v80 + 2) >= *(a1 + 112))
    {
      v81 = v18;
      v82 = 111;
    }

    else
    {
      if (!*(a1 + 120))
      {
        v81 = v18;
        v105 = 0;
        *(a1 + 120) = v80;
        *(a1 + 104) = v80 + 2;
        goto LABEL_137;
      }

      v81 = v18;
      v82 = v79 | 0x2C;
    }

    *(a1 + 152) = v82;
    *(a1 + 144) = 1278;
  }

  v105 = 1;
LABEL_137:
  if ((v105 & (v69 == 0)) != 0)
  {
    v93 = "rdlength begin";
  }

  else
  {
    v93 = v69;
  }

  v106 = v152;
LABEL_171:
  dns_name_print_to_limit(v78, 0, v180, 0x100uLL);
  if (v106)
  {
    goto LABEL_195;
  }

  v113 = 0;
  v114 = v78;
  do
  {
    v115 = v113;
    v113 = v114;
    v114 = *v114;
  }

  while (v114);
  if (v115 && *(v115 + 8) == 5 && dns_labels_equal(v115 + 9, "local", 5uLL))
  {
    if (v78 && *(v78 + 8))
    {
      v116 = 0;
      v117 = v78;
      while (1)
      {
        v118 = v116;
        v116 = v117;
        v117 = *v117;
        if (!v117)
        {
          break;
        }

        if (!v117[8])
        {
          if (v118 && v116[8] == 5 && dns_labels_equal((v116 + 9), "local", 5uLL))
          {
            do
            {
              v119 = *v116;
              free(v116);
              v116 = v119;
            }

            while (v119);
            *v118 = 0;
          }

          break;
        }
      }
    }

    dns_name_print_to_limit(v78, 0, buf, 0x100uLL);
    dns_concatenate_name_to_wire_(a1 + 96, v78, 0, *(*(v156 + 8) + 8), 1301);
    if (v93)
    {
      v120 = 0;
    }

    else
    {
      v120 = *(a1 + 152) > 1u;
    }

    if (v120)
    {
      v93 = "concatenate_name_to_wire 2";
    }

    v121 = v81[22];
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      v122 = *(a1 + 4);
      v123 = *(v156 + 64);
      v124 = *(*(v156 + 8) + 8);
      *v162 = 136448259;
      v163 = "dp_query_add_data_to_response";
      v164 = 1024;
      v165 = v122;
      v166 = 1024;
      v167 = v123;
      v168 = 2160;
      v169 = 1752392040;
      v170 = 2081;
      v171 = v180;
      v172 = 2160;
      v173 = 1752392040;
      v174 = 2081;
      v175 = buf;
      v176 = 2160;
      v177 = 1752392040;
      v178 = 2081;
      v179 = v124;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] translating %{private, mask.hash}s to %{private, mask.hash}s . %{private, mask.hash}s", v162, 0x54u);
    }

    v18 = v81;
  }

  else
  {
LABEL_195:
    dns_concatenate_name_to_wire_(a1 + 96, v78, 0, 0, 1306);
    if (v93)
    {
      v125 = 0;
    }

    else
    {
      v125 = *(a1 + 152) > 1u;
    }

    if (v125)
    {
      v93 = "concatenate_name_to_wire 2";
    }

    v18 = v81;
    v126 = v81[22];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      v127 = *(a1 + 4);
      v128 = v156;
      if (v156)
      {
        v128 = *(v156 + 64);
      }

      *buf = 136447235;
      v182 = "dp_query_add_data_to_response";
      v183 = 1024;
      *v184 = v127;
      *&v184[4] = 1024;
      *&v184[6] = v128;
      strcpy(v185, "p\bhash");
      v185[7] = 0;
      *&v185[8] = 0;
      v186 = 2081;
      v187 = v180;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] compressing %{private, mask.hash}s", buf, 0x2Cu);
    }
  }

  do
  {
    if (!v78)
    {
      break;
    }

    v129 = *v78;
    free(v78);
    v78 = v129;
  }

  while (v129);
  v130 = *(a1 + 152);
  if (v130 <= 1)
  {
    v131 = *(a1 + 120);
    if (!v131)
    {
      v133 = v130 | 0x2C;
      *(a1 + 152) = v133;
      *(a1 + 144) = 1311;
      if (v133)
      {
        goto LABEL_215;
      }

      goto LABEL_210;
    }

    v132 = *(a1 + 104) - v131 - 2;
    *v131 = BYTE1(v132);
    *(*(a1 + 120) + 1) = v132;
    *(a1 + 120) = 0;
    v130 = *(a1 + 152);
  }

  if (v130)
  {
LABEL_215:
    v134 = v18[22];
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      v135 = *(a1 + 4);
      v136 = v156;
      if (v156)
      {
        v136 = *(v156 + 64);
      }

      *v162 = 136446978;
      v163 = "dp_query_add_data_to_response";
      v164 = 1024;
      v165 = v135;
      v166 = 1024;
      v167 = v136;
      v168 = 2082;
      v169 = v93;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d][QU%d] RR ADD FAIL: %{public}s", v162, 0x22u);
    }

    *(a1 + 104) = v155;
    return;
  }

LABEL_210:
  if (v93)
  {
    goto LABEL_215;
  }

  if (a10 && !*(a1 + 72))
  {
    *a10 = bswap32((bswap32(*a10) >> 16) + 1) >> 16;
  }
}

void dns_push_start(uint64_t a1)
{
  if (!*(a1 + 160))
  {
    v2 = *(a1 + 168);
    *(v2 + 8) = 0;
    *v2 = 0;
    *(*(a1 + 168) + 2) = *(*(a1 + 168) + 2) & 0xF007 | 0x30;
    if (*(a1 + 152) <= 1u)
    {
      v3 = *(a1 + 104);
      if ((v3 + 2) >= *(a1 + 112))
      {
        *(a1 + 152) = 111;
        *(a1 + 144) = 2682;
      }

      else
      {
        *(a1 + 104) = v3 + 1;
        *v3 = 0;
        v4 = *(a1 + 104);
        *(a1 + 104) = v4 + 1;
        *v4 = 65;
      }
    }

    v5 = *(a1 + 104);
    if ((v5 + 2) <= *(a1 + 112))
    {
      v10 = *(a1 + 152);
      *(a1 + 160) = v5;
      *(a1 + 104) = v5 + 2;
      if (v10 >= 2)
      {
        v11 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 4);
          v13 = 136446722;
          v14 = "dns_push_start";
          v15 = 1024;
          v16 = v12;
          v17 = 2080;
          v18 = "kDSOType_DNSPushUpdate";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d] couldn't start update: %s", &v13, 0x1Cu);
        }
      }
    }

    else
    {
      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 4);
        v13 = 136446466;
        v14 = "dns_push_start";
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d] No room for dso length in DNS Push notification message.", &v13, 0x12u);
      }

      v8 = *(a1 + 168);
      v9 = v8 + 12 + *(a1 + 184);
      *(a1 + 96) = v8;
      *(a1 + 104) = v8 + 12;
      *(a1 + 160) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = v9;
    }
  }
}

void embiggen(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2 == -1410)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = 136446210;
    v11 = "embiggen";
    v9 = "%{public}s: strict_malloc called with size 0";
    goto LABEL_8;
  }

  v3 = malloc_type_malloc(v2 + 1410, 0xD52864FCuLL);
  if (!v3)
  {
    while (1)
    {
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v10 = 136446210;
        v11 = "embiggen";
        v9 = "%{public}s: strict allocator failed";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0xCu);
      }

LABEL_9:
      __break(1u);
    }
  }

  v4 = v3;
  memcpy(v3, *(a1 + 168), *(a1 + 184) + 12);
  v5 = *(a1 + 184) + 1398;
  *(a1 + 184) = v5;
  v6 = *(a1 + 168);
  v7 = &v4[*(a1 + 104) - v6];
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = v7;
  *(a1 + 112) = &v4[v5 + 12];
  *(a1 + 96) = v4;
  if (v6)
  {
    free(v6);
  }

  *(a1 + 168) = v4;
}

void dp_query_send_dns_response(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v243.iov_base = 0;
  v243.iov_len = 0;
  v3 = *(a1 + 104);
  v4 = *(a1 + 152);
  if (v4)
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 168) + 2);
  v7 = *(a1 + 200);
  *(a1 + 208) = 1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    v53 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v54 = *(v2 + 4);
    *buf = 136446466;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v54;
    v55 = "%{public}s: [Q%d] query->tracker NULL for query!";
    v56 = v53;
    v57 = 18;
    goto LABEL_154;
  }

  if (!*(v8 + 8))
  {
    v58 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v59 = *(v2 + 4);
    v60 = *(v8 + 4);
    *buf = 136446722;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v59;
    *&v247[4] = 1024;
    *&v247[6] = v60;
    v55 = "%{public}s: [Q%d][TRK%d] query->tracker->connection NULL";
    v56 = v58;
    v57 = 24;
LABEL_154:
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
    return;
  }

  v9 = a2;
  v10 = a1 + 96;
  v11 = bswap32(v6) >> 16;
  v12 = *(v7 + 8);
  v210 = v7;
  if (v12 && *(v12 + 40) && (v4 & 1) == 0 && (*(v7 + 72) != 6 || **(v7 + 32)))
  {
    v239 = v11;
    v222 = 0;
    while (1)
    {
      dns_pointer_to_wire_(v10, v2 + 32, 2462);
      v13 = *(v2 + 152);
      v14 = v222;
      if (v222)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13 > 1;
      }

      if (v15)
      {
        v14 = "&query->enclosing_domain_pointer 1";
      }

      if (v13 >= 2)
      {
        if (!v14)
        {
          v14 = "dns_rrtype_soa";
        }

LABEL_44:
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v13 > 1;
        }

        if (v28)
        {
          v22 = "dns_qclass_in";
        }

        else
        {
          v22 = v14;
        }

LABEL_50:
        if (v22)
        {
          v29 = 0;
        }

        else
        {
          v29 = v13 > 1;
        }

        v25 = "ttl";
        if (!v29)
        {
          v25 = v22;
        }

        goto LABEL_59;
      }

      v16 = *(v2 + 104);
      if ((v16 + 2) >= *(v2 + 112))
      {
        break;
      }

      *(v2 + 104) = v16 + 1;
      *v16 = 0;
      v17 = *(v2 + 104);
      *(v2 + 104) = v17 + 1;
      *v17 = 6;
      v13 = *(v2 + 152);
      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 > 1;
      }

      if (v18)
      {
        v14 = "dns_rrtype_soa";
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }

      v19 = *(v2 + 104);
      if ((v19 + 2) >= *(v2 + 112))
      {
        *(v2 + 152) = 111;
        *(v2 + 144) = 2466;
        v30 = v14 == 0;
        v25 = "dns_qclass_in";
LABEL_57:
        if (!v30)
        {
          v25 = v14;
        }

        goto LABEL_59;
      }

      *(v2 + 104) = v19 + 1;
      *v19 = 0;
      v20 = *(v2 + 104);
      *(v2 + 104) = v20 + 1;
      *v20 = 1;
      v13 = *(v2 + 152);
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v13 > 1;
      }

      if (v21)
      {
        v22 = "dns_qclass_in";
      }

      else
      {
        v22 = v14;
      }

      if (v13 >= 2)
      {
        goto LABEL_50;
      }

      dns_u32_to_wire_(v10, 3600, 2467);
      v23 = *(v2 + 152);
      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 > 1;
      }

      v25 = "ttl";
      if (!v24)
      {
        v25 = v22;
      }

      if (v23 > 1)
      {
        goto LABEL_59;
      }

      v26 = *(v2 + 104);
      if ((v26 + 2) >= *(v2 + 112))
      {
        v27 = 111;
LABEL_146:
        *(v2 + 152) = v27;
        *(v2 + 144) = 2468;
LABEL_59:
        v31 = 1;
        goto LABEL_60;
      }

      if (*(v2 + 120))
      {
        v27 = v23 | 0x2C;
        goto LABEL_146;
      }

      v31 = 0;
      *(v2 + 120) = v26;
      *(v2 + 104) = v26 + 2;
LABEL_60:
      if ((v31 & (v25 == 0)) != 0)
      {
        v32 = "rdlength_begin ";
      }

      else
      {
        v32 = v25;
      }

      if (uuid_name)
      {
        dns_name_to_wire_(0, v10, &uuid_name, 2475);
        v33 = 2477;
        v34 = "uuid_name";
      }

      else
      {
        dns_name_to_wire_(0, v10, "ns", 2479);
        v33 = 2481;
        v34 = "ns";
      }

      if (v32)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(a1 + 152) > 1u;
      }

      if (v35)
      {
        v32 = v34;
      }

      dns_pointer_to_wire_(v10, a1 + 32, v33);
      if (v32)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(a1 + 152) > 1u;
      }

      if (v36)
      {
        v32 = "&query->enclosing_domain_pointer 2";
      }

      dns_name_to_wire_(0, v10, "postmaster", 2484);
      if (v32)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(a1 + 152) > 1u;
      }

      if (v37)
      {
        v32 = "postmaster";
      }

      dns_pointer_to_wire_(v10, a1 + 32, 2486);
      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(a1 + 152) > 1u;
      }

      if (v38)
      {
        v32 = "&query->enclosing_domain_pointer 3";
      }

      dns_u32_to_wire_(v10, 0, 2487);
      v39 = *(a1 + 152);
      if (v32)
      {
        v40 = 0;
      }

      else
      {
        v40 = v39 > 1;
      }

      if (v40)
      {
        v32 = "serial";
      }

      if (v39 >= 2)
      {
        if (!v32)
        {
          v32 = "refresh";
        }

LABEL_122:
        if (v32)
        {
          v48 = 0;
        }

        else
        {
          v48 = v39 > 1;
        }

        if (v48)
        {
          v32 = "retry";
        }

LABEL_127:
        if (v32)
        {
          v49 = 0;
        }

        else
        {
          v49 = v39 > 1;
        }

        if (v49)
        {
          v32 = "expire";
        }

LABEL_132:
        if (v32)
        {
          v50 = 0;
        }

        else
        {
          v50 = v39 > 1;
        }

        if (v50)
        {
          v51 = "minimum";
        }

        else
        {
          v51 = v32;
        }

        v222 = v51;
LABEL_139:
        if ((v39 & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_140;
      }

      dns_u32_to_wire_(v10, 7200, 2488);
      v39 = *(a1 + 152);
      if (v32)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39 > 1;
      }

      if (v41)
      {
        v32 = "refresh";
      }

      if (v39 >= 2)
      {
        goto LABEL_122;
      }

      dns_u32_to_wire_(v10, 3600, 2489);
      v39 = *(a1 + 152);
      if (v32)
      {
        v42 = 0;
      }

      else
      {
        v42 = v39 > 1;
      }

      if (v42)
      {
        v32 = "retry";
      }

      if (v39 >= 2)
      {
        goto LABEL_127;
      }

      dns_u32_to_wire_(v10, 86400, 2490);
      v39 = *(a1 + 152);
      if (v32)
      {
        v43 = 0;
      }

      else
      {
        v43 = v39 > 1;
      }

      if (v43)
      {
        v32 = "expire";
      }

      if (v39 >= 2)
      {
        goto LABEL_132;
      }

      dns_u32_to_wire_(v10, 120, 2491);
      v39 = *(a1 + 152);
      if (v32)
      {
        v44 = 0;
      }

      else
      {
        v44 = v39 > 1;
      }

      if (v44)
      {
        v45 = "minimum";
      }

      else
      {
        v45 = v32;
      }

      v222 = v45;
      if (v39 > 1)
      {
        goto LABEL_139;
      }

      v46 = *(a1 + 120);
      if (v46)
      {
        v47 = *(a1 + 104) - v46 - 2;
        *v46 = BYTE1(v47);
        *(*(a1 + 120) + 1) = v47;
        *(a1 + 120) = 0;
        if ((*(a1 + 152) & 1) == 0)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v52 = v39 | 0x2C;
        *(a1 + 152) = v52;
        *(a1 + 144) = 2492;
        if ((v52 & 1) == 0)
        {
LABEL_156:
          v2 = a1;
          *(*(a1 + 168) + 8) = 256;
          goto LABEL_158;
        }
      }

LABEL_140:
      v2 = a1;
      *(a1 + 104) = v3;
      if ((*(*(*(a1 + 8) + 8) + 424) & 0x20) == 0)
      {
        v5 = 512;
LABEL_158:
        v9 = a2;
        LOWORD(v11) = v239;
LABEL_159:
        v211 = v11 & 0xFF7F | v5 | 0x400;
        v209 = v5 != 0;
        goto LABEL_160;
      }

      embiggen(a1);
      *(a1 + 152) = 0;
    }

    *(v2 + 152) = 111;
    *(v2 + 144) = 2464;
    v30 = v14 == 0;
    v25 = "dns_rrtype_soa";
    goto LABEL_57;
  }

  if (*(v7 + 72) == 6)
  {
    v222 = 0;
    goto LABEL_159;
  }

  v209 = v4;
  v222 = 0;
  v211 = v5 | v11 & 0xFBFF | 0x80;
LABEL_160:
  v61 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(v2 + 4);
    if (v7)
    {
      v63 = *(v7 + 64);
    }

    else
    {
      v63 = 0;
    }

    v64 = bswap32(*(*(v2 + 64) + 88));
    v65 = *(v2 + 104);
    v66 = *(v2 + 96) + 12;
    v67 = *(*(v2 + 168) + 3) & 0xF;
    *buf = 136448258;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v62;
    *&v247[4] = 1024;
    *&v247[6] = v63;
    LOWORD(v248) = 1024;
    *(&v248 + 2) = HIWORD(v64);
    WORD3(v248) = 2048;
    *(&v248 + 1) = v65;
    v249 = 2048;
    v250 = v66;
    v251 = 2048;
    v252 = v65 - v66;
    v253 = 1024;
    v254 = v67;
    v255 = 2082;
    v256 = v9;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d][QID %x] ->p %p ->lim %p len %zd rcode %d %{public}s", buf, 0x4Cu);
  }

  v68 = (v6 >> 8) & 0xF;
  if (*(v2 + 152) > 1u || v68)
  {
    v167 = *(v2 + 168);
    v74 = v2;
LABEL_374:
    v167[1] = bswap32(v211 & 0x7ECF | 0xFFFF8000) >> 16;
    if (v68)
    {
      v171 = __rev16(v211 & 0x7EC0 | 0x8000 | v68);
      goto LABEL_494;
    }

    goto LABEL_377;
  }

  v69 = *(v2 + 8);
  v70 = *(v2 + 200);
  if (v70)
  {
    v71 = *(v70 + 32);
    if (v69)
    {
      goto LABEL_169;
    }

LABEL_369:
    *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
    v168 = global_os_log;
    v74 = v2;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_372;
    }

    *buf = 136446723;
    v245 = "dp_dns_queries_finished";
    v246 = 2160;
    *v247 = 1752392040;
    *&v247[8] = 2081;
    *&v248 = v71;
    v169 = "%{public}s: NULL tracker on %{private, mask.hash}s";
LABEL_509:
    _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, v169, buf, 0x20u);
LABEL_506:
    v74 = v2;
    goto LABEL_372;
  }

  v71 = "(null)";
  if (!v69)
  {
    goto LABEL_369;
  }

LABEL_169:
  v212 = *(v2 + 8);
  v72 = *(v69 + 16);
  if (!v72)
  {
    *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
    v168 = global_os_log;
    v74 = v2;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_372;
    }

    *buf = 136446723;
    v245 = "dp_dns_queries_finished";
    v246 = 2160;
    *v247 = 1752392040;
    *&v247[8] = 2081;
    *&v248 = v71;
    v169 = "%{public}s: NULL tracker->dns_queries on %{private, mask.hash}s";
    goto LABEL_509;
  }

  v73 = *(v2 + 88);
  v74 = v2;
  if (v73 == 1)
  {
    goto LABEL_372;
  }

  v75 = 0;
  v76 = v72;
  do
  {
    if (!*(v76 + 168))
    {
      v207 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v245 = "dp_dns_queries_finished";
        _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_ERROR, "%{public}s: null response on match query", buf, 0xCu);
      }

LABEL_505:
      *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
      goto LABEL_506;
    }

    if (*(v76 + 64) == *(v2 + 64))
    {
      if (*(v76 + 208) != 1)
      {
        return;
      }

      ++v75;
    }

    v76 = *(v76 + 16);
  }

  while (v76);
  if (v75 != v73)
  {
    return;
  }

  v77 = 0;
  v225 = 0;
  count = 0;
  v221 = 0;
  v74 = 0;
  do
  {
    if (*(v72 + 64) == *(v2 + 64))
    {
      dns_wire_parse_((v72 + 176), *(v72 + 168), *(v72 + 104) - *(v72 + 168));
      if ((v78 & 1) == 0)
      {
        goto LABEL_505;
      }

      v79 = *(v72 + 176);
      if (!v74)
      {
        v74 = v72;
        v77 = *(v72 + 176);
      }

      v225 += v79[1];
      count += v79[2];
      LODWORD(v221) = v79[4] + v221;
      HIDWORD(v221) += v79[3];
    }

    v72 = *(v72 + 16);
  }

  while (v72);
  v218 = (v77 + 16);
  v219 = (v77 + 48);
  v216 = (v77 + 12);
  v217 = (v77 + 40);
  v214 = (v77 + 8);
  v215 = (v77 + 32);
  v213 = (v77 + 24);
  v220 = (v77 + 4);
  while (2)
  {
    v80 = *(v212 + 16);
    if (v80)
    {
      v81 = 0;
      v240 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      do
      {
        if (*(v2 + 64) != v80[8])
        {
          break;
        }

        if (v72 > 1)
        {
          if (v72 == 2)
          {
            v109 = v80[22];
            v83 = (v109 + 40);
            v240 = *(v109 + 12);
            v81 = v216;
            v84 = v217;
            v82 = HIDWORD(v221);
            if (!HIDWORD(v221))
            {
              goto LABEL_261;
            }
          }

          else
          {
            if (v72 != 3)
            {
              goto LABEL_199;
            }

            v86 = v80[22];
            v83 = (v86 + 48);
            v240 = *(v86 + 16);
            v81 = v218;
            v84 = v219;
            v82 = v221;
            if (!v221)
            {
              goto LABEL_261;
            }
          }
        }

        else
        {
          if (!v72)
          {
            v87 = v80[22];
            v83 = (v87 + 24);
            v240 = *(v87 + 4);
            v84 = v213;
            v82 = v225;
            v81 = v220;
LABEL_199:
            if (!v82)
            {
              goto LABEL_261;
            }

            goto LABEL_200;
          }

          if (v72 != 1)
          {
            goto LABEL_199;
          }

          v85 = v80[22];
          v83 = (v85 + 32);
          v240 = *(v85 + 8);
          v81 = v214;
          v84 = v215;
          v82 = count;
          if (!count)
          {
            goto LABEL_261;
          }
        }

LABEL_200:
        if (v84 == v83)
        {
          v106 = v83;
          v107 = malloc_type_calloc(v82, 0x40uLL, 0x2AEA17BDuLL);
          if (!v107)
          {
            v208 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v245 = "dp_dns_queries_finished";
              v246 = 2048;
              *v247 = v82;
              *&v247[8] = 2048;
              *&v248 = 64;
              _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
            }

            __break(1u);
          }

          v108 = v107;
          memcpy(v107, *v84, v240 << 6);
          bzero(*v84, v240 << 6);
          if (*v84)
          {
            free(*v84);
          }

          *v84 = v108;
          v83 = v106;
        }

        else
        {
          v231 = v80;
          v233 = v84;
          v227 = v81;
          v229 = v83;
          v88 = v81->i32[0];
          if (v240)
          {
            v89 = 0;
            v90 = *v83;
            v235 = *v233;
            v237 = *v233 + 16;
            while (1)
            {
              v91 = &v90[64 * v89];
              if (v88)
              {
                break;
              }

LABEL_250:
              if (v88 >= v82)
              {
                v105 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v245 = "dp_move_rrs";
                  v246 = 1024;
                  *v247 = v88;
                  *&v247[4] = 1024;
                  *&v247[6] = v82;
                  LOWORD(v248) = 1024;
                  *(&v248 + 2) = v89;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%{public}s: first_count %d unexpectedly equal to count %d with i = %d", buf, 0x1Eu);
                }
              }

              else
              {
                v101 = *v91;
                v102 = *(v91 + 1);
                v103 = *(v91 + 3);
                v104 = &v235[64 * v88];
                *(v104 + 2) = *(v91 + 2);
                *(v104 + 3) = v103;
                *v104 = v101;
                *(v104 + 1) = v102;
                ++v88;
                *(v91 + 4) = 0;
              }

LABEL_254:
              if (++v89 == v240)
              {
                goto LABEL_255;
              }
            }

            v92 = v88;
            v93 = v237;
            while (2)
            {
              if (*(v93 - 4) != *(v91 + 4) || *(v93 - 3) != *(v91 + 5))
              {
                goto LABEL_232;
              }

              v94 = dns_names_equal(*(v93 - 2), *v91);
              if (v94)
              {
                v95 = v72 == 0;
              }

              else
              {
                v95 = 1;
              }

              if (v95)
              {
                goto LABEL_231;
              }

              v96 = *(v93 - 4);
              if (v96 > 0xF)
              {
                if (*(v93 - 4) <= 0x18u)
                {
                  if (v96 != 16)
                  {
                    if (v96 == 24)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_234;
                  }

                  v97 = *v93;
                  if (v97 != v91[16])
                  {
                    goto LABEL_232;
                  }

                  v98 = v93[1];
                  v99 = *(v91 + 3);
                }

                else
                {
                  switch(v96)
                  {
                    case 0x19u:
                      if (dns_keys_rdata_equal((v93 - 2), &v90[64 * v89]))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_232;
                    case 0x1Cu:
                      if (*v93 == *(v91 + 2) && v93[1] == *(v91 + 3))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_232;
                    case 0x21u:
                      if (*(v93 + 4) != *(v91 + 12) || *(v93 + 5) != *(v91 + 13) || *(v93 + 6) != *(v91 + 14))
                      {
                        goto LABEL_232;
                      }

LABEL_230:
                      LOBYTE(v94) = dns_names_equal(*v93, *(v91 + 2));
LABEL_231:
                      if (v94)
                      {
                        goto LABEL_254;
                      }

LABEL_232:
                      v93 += 8;
                      if (!--v92)
                      {
                        goto LABEL_250;
                      }

                      continue;
                  }

LABEL_234:
                  v97 = *(v93 + 4);
                  if (v97 != *(v91 + 12))
                  {
                    goto LABEL_232;
                  }

                  v98 = *v93;
                  v99 = *(v91 + 2);
                }

                if (!memcmp(v98, v99, v97))
                {
                  goto LABEL_254;
                }

                goto LABEL_232;
              }

              break;
            }

            if (*(v93 - 4) > 4u)
            {
              if (v96 == 5 || v96 == 12)
              {
                goto LABEL_230;
              }
            }

            else
            {
              if (v96 == 1)
              {
                if (*v93 == *(v91 + 4))
                {
                  goto LABEL_254;
                }

                goto LABEL_232;
              }

              if (v96 == 2)
              {
                goto LABEL_230;
              }

              if (!*(v93 - 4))
              {
                goto LABEL_254;
              }
            }

            goto LABEL_234;
          }

LABEL_255:
          v83 = v229;
          v227->i32[0] = v88;
          v81 = v227;
          v2 = a1;
          v80 = v231;
          v84 = v233;
        }

LABEL_261:
        v80 = v80[2];
      }

      while (v80);
    }

    LODWORD(v72) = v72 + 1;
    if (v72 != 4)
    {
      continue;
    }

    break;
  }

  while (2)
  {
    v110 = 0;
    v111 = *(v74 + 168);
    v112 = *(v74 + 176);
    v113 = v111 + 12 + *(v74 + 184);
    *(v74 + 96) = v111;
    *(v74 + 104) = v111 + 12;
    *(v74 + 160) = 0;
    *(v74 + 120) = 0;
    *(v74 + 128) = 0;
    v238 = (v112 + 48);
    v241 = (v112 + 16);
    v234 = (v112 + 40);
    v236 = (v112 + 12);
    *(v74 + 112) = v113;
    v230 = (v112 + 32);
    v232 = (v112 + 8);
    v226 = (v112 + 24);
    v228 = (v112 + 4);
    v114 = 1;
    while (2)
    {
      v115 = v241;
      if (v110 == 2)
      {
        v115 = v236;
      }

      v116 = v234;
      if (v110 != 2)
      {
        v116 = v238;
      }

      v117 = v232;
      if (!v110)
      {
        v117 = v228;
      }

      v118 = v230;
      if (!v110)
      {
        v118 = v226;
      }

      if (v110 <= 1)
      {
        v119 = v118;
      }

      else
      {
        v117 = v115;
        v119 = v116;
      }

      v120 = *v117;
      if (v120 >= 1)
      {
        v121 = 0;
        v122 = 0;
        v123 = *v119;
        v124 = v120 << 6;
        while (1)
        {
          if (*(v74 + 152))
          {
            goto LABEL_354;
          }

          v125 = *(v74 + 104);
          v126 = v123 + v121;
          dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121), 0, 0, 661);
          v127 = *(v74 + 152);
          if (v127 > 1)
          {
            goto LABEL_283;
          }

          v128 = *(v74 + 104);
          if ((v128 + 2) < *(v74 + 112))
          {
            break;
          }

          v127 = 111;
          *(v74 + 152) = 111;
          *(v74 + 144) = 662;
          if (v114)
          {
            goto LABEL_348;
          }

LABEL_286:
          if (v127 <= 1)
          {
            dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 12), 667);
            v127 = *(v74 + 152);
            if (v127 <= 1)
            {
              v134 = *(v74 + 104);
              if ((v134 + 2) >= *(v74 + 112))
              {
                v127 = 111;
                goto LABEL_294;
              }

              if (*(v74 + 120))
              {
                v127 |= 0x2Cu;
LABEL_294:
                *(v74 + 152) = v127;
                *(v74 + 144) = 668;
                goto LABEL_295;
              }

              *(v74 + 120) = v134;
              *(v74 + 104) = v134 + 2;
            }
          }

LABEL_295:
          v135 = *(v126 + 8);
          if (v135 <= 0xB)
          {
            if (*(v126 + 8) <= 1u)
            {
              if (!*(v126 + 8))
              {
                v154 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v245 = "dns_rr_to_wire";
                  v137 = v154;
                  v138 = "%{public}s: invalid rr!";
                  goto LABEL_332;
                }

LABEL_333:
                *(v74 + 152) = v127 & 1 | 0x2C;
                goto LABEL_353;
              }

              if (v127 > 1)
              {
                goto LABEL_345;
              }

              v152 = *(v74 + 104);
              if ((v152 + 1) > *(v74 + 112))
              {
                *(v74 + 152) = 111;
                v153 = 706;
                goto LABEL_352;
              }

              *v152 = *(v123 + v121 + 16);
              v159 = *(v74 + 104) + 4;
              goto LABEL_360;
            }

            if (v135 == 2 || v135 == 5)
            {
LABEL_317:
              v149 = *(v123 + v121 + 16);
              v150 = v74 + 96;
              v151 = 695;
LABEL_344:
              dns_concatenate_name_to_wire_(v150, v149, 0, 0, v151);
              goto LABEL_345;
            }

            if (v135 == 6)
            {
              dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121 + 16), 0, 0, 682);
              dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121 + 24), 0, 0, 683);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 32), 684);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 36), 685);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 40), 686);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 44), 687);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 48), 688);
              goto LABEL_345;
            }

            goto LABEL_334;
          }

          if (*(v126 + 8) <= 0x18u)
          {
            switch(v135)
            {
              case 0xCu:
                goto LABEL_317;
              case 0x10u:
                if (v127 <= 1)
                {
                  v155 = *(v123 + v121 + 16);
                  v156 = *(v74 + 104);
                  if (v156 + v155 > *(v74 + 112))
                  {
                    *(v74 + 152) = 111;
                    v153 = 725;
                    goto LABEL_352;
                  }

                  v160 = *(v123 + v121 + 24);
                  goto LABEL_359;
                }

                goto LABEL_345;
              case 0x18u:
                v136 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v245 = "dns_rr_to_wire";
                  v137 = v136;
                  v138 = "%{public}s: signature not valid here!";
                  goto LABEL_332;
                }

                goto LABEL_333;
            }

            goto LABEL_334;
          }

          if (v135 == 25)
          {
            v158 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v245 = "dns_rr_to_wire";
              v137 = v158;
              v138 = "%{public}s: key not valid here!";
LABEL_332:
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, v138, buf, 0xCu);
              v127 = *(v74 + 152);
            }

            goto LABEL_333;
          }

          if (v135 != 28)
          {
            if (v135 == 33)
            {
              v139 = v123 + v121;
              if (v127 <= 1)
              {
                v140 = *(v74 + 104);
                if ((v140 + 2) >= *(v74 + 112))
                {
                  *(v74 + 152) = 111;
                  v161 = 699;
                  goto LABEL_342;
                }

                v141 = *(v139 + 24);
                *(v74 + 104) = v140 + 1;
                *v140 = HIBYTE(v141);
                v142 = *(v74 + 104);
                *(v74 + 104) = v142 + 1;
                *v142 = v141;
                if (*(v74 + 152) <= 1u)
                {
                  v143 = *(v74 + 104);
                  if ((v143 + 2) >= *(v74 + 112))
                  {
                    *(v74 + 152) = 111;
                    v161 = 700;
                    goto LABEL_342;
                  }

                  v144 = *(v123 + v121 + 26);
                  *(v74 + 104) = v143 + 1;
                  *v143 = HIBYTE(v144);
                  v145 = *(v74 + 104);
                  *(v74 + 104) = v145 + 1;
                  *v145 = v144;
                  if (*(v74 + 152) <= 1u)
                  {
                    v146 = *(v74 + 104);
                    if ((v146 + 2) < *(v74 + 112))
                    {
                      v147 = *(v123 + v121 + 28);
                      *(v74 + 104) = v146 + 1;
                      *v146 = HIBYTE(v147);
                      v148 = *(v74 + 104);
                      *(v74 + 104) = v148 + 1;
                      *v148 = v147;
                      goto LABEL_343;
                    }

                    *(v74 + 152) = 111;
                    v161 = 701;
LABEL_342:
                    *(v74 + 144) = v161;
                  }
                }
              }

LABEL_343:
              v149 = *(v139 + 16);
              v150 = v74 + 96;
              v151 = 702;
              goto LABEL_344;
            }

LABEL_334:
            if (v127 <= 1)
            {
              v155 = *(v123 + v121 + 24);
              v156 = *(v74 + 104);
              if (v156 + v155 > *(v74 + 112))
              {
                *(v74 + 152) = 111;
                v153 = 678;
                goto LABEL_352;
              }

              v160 = *(v123 + v121 + 16);
LABEL_359:
              memcpy(v156, v160, v155);
              v159 = *(v74 + 104) + v155;
LABEL_360:
              *(v74 + 104) = v159;
              goto LABEL_345;
            }

            goto LABEL_345;
          }

          if (v127 <= 1)
          {
            v157 = *(v74 + 104);
            if ((v157 + 1) > *(v74 + 112))
            {
              *(v74 + 152) = 111;
              v153 = 710;
              goto LABEL_352;
            }

            *v157 = *(v123 + v121 + 16);
            v159 = *(v74 + 104) + 16;
            goto LABEL_360;
          }

LABEL_345:
          v162 = *(v74 + 152);
          if (v162 > 1)
          {
            goto LABEL_353;
          }

          v163 = *(v74 + 120);
          if (!v163)
          {
            *(v74 + 152) = v162 | 0x2C;
            v153 = 728;
LABEL_352:
            *(v74 + 144) = v153;
LABEL_353:
            *(v74 + 104) = v125;
LABEL_354:
            v165 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v166 = *(v123 + v121 + 8);
              *buf = 136446978;
              v245 = "dns_message_rrs_to_wire";
              v246 = 1024;
              *v247 = v110;
              *&v247[4] = 1024;
              *&v247[6] = v122;
              LOWORD(v248) = 1024;
              *(&v248 + 2) = v166;
              _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%{public}s: no space in message for rr %d/%d %d", buf, 0x1Eu);
            }

            goto LABEL_356;
          }

          v164 = *(v74 + 104) - v163 - 2;
          *v163 = BYTE1(v164);
          *(*(v74 + 120) + 1) = v164;
          *(v74 + 120) = 0;
          v127 = *(v74 + 152);
LABEL_348:
          if (v127 > 1 || (v127 & 1) != 0)
          {
            goto LABEL_353;
          }

LABEL_356:
          ++v122;
          v121 += 64;
          if (v124 == v121)
          {
            goto LABEL_363;
          }
        }

        v129 = *(v126 + 8);
        *(v74 + 104) = v128 + 1;
        *v128 = HIBYTE(v129);
        v130 = *(v74 + 104);
        *(v74 + 104) = v130 + 1;
        *v130 = v129;
        v127 = *(v74 + 152);
        if (v127 <= 1)
        {
          v131 = *(v74 + 104);
          if ((v131 + 2) >= *(v74 + 112))
          {
            v127 = 111;
            *(v74 + 152) = 111;
            *(v74 + 144) = 663;
            if (v114)
            {
              goto LABEL_353;
            }

            goto LABEL_295;
          }

          v132 = *(v123 + v121 + 10);
          *(v74 + 104) = v131 + 1;
          *v131 = HIBYTE(v132);
          v133 = *(v74 + 104);
          *(v74 + 104) = v133 + 1;
          *v133 = v132;
          v127 = *(v74 + 152);
        }

LABEL_283:
        if (v114)
        {
          goto LABEL_348;
        }

        goto LABEL_286;
      }

LABEL_363:
      v114 = 0;
      if (++v110 != 4)
      {
        continue;
      }

      break;
    }

    if ((*(v74 + 152) & 1) != 0 && (*(*(*(v74 + 8) + 8) + 424) & 0x20) != 0)
    {
      embiggen(v74);
      *(v74 + 152) = 0;
      continue;
    }

    break;
  }

  *(*(v74 + 168) + 4) = vrev16_s8(vmovn_s32(*v220));
  v2 = a1;
LABEL_372:
  v167 = *(v74 + 168);
  v170 = v167[1];
  v10 = v74 + 96;
  v3 = *(v74 + 104);
  if ((v170 & 0xF00) != 0)
  {
    v68 = (v170 >> 8) & 0xF;
    goto LABEL_374;
  }

  v167[1] = __rev16(v211 & 0x7ECF | 0x8000);
LABEL_377:
  if (*(v74 + 92) != 1)
  {
    goto LABEL_483;
  }

  while (2)
  {
    v172 = *(v10 + 56);
    if (v172 > 1)
    {
      goto LABEL_424;
    }

    v173 = *(v10 + 8);
    if ((v173 + 1) >= *(v10 + 16))
    {
      v172 = 111;
      *(v10 + 56) = 111;
      *(v10 + 48) = 2606;
LABEL_424:
      v174 = v222;
      if (v222)
      {
        v191 = 0;
      }

      else
      {
        v191 = v172 > 1;
      }

      if (v191)
      {
        v174 = "Root label";
      }

      goto LABEL_429;
    }

    *(v10 + 8) = v173 + 1;
    *v173 = 0;
    v172 = *(v10 + 56);
    v174 = v222;
    if (v222)
    {
      v175 = 0;
    }

    else
    {
      v175 = v172 > 1;
    }

    if (v175)
    {
      v174 = "Root label";
    }

    if (v172 > 1)
    {
LABEL_429:
      if (v174)
      {
        v192 = 0;
      }

      else
      {
        v192 = v172 > 1;
      }

      if (v192)
      {
        v174 = "dns_rrtype_opt";
      }

LABEL_434:
      if (v174)
      {
        v193 = 0;
      }

      else
      {
        v193 = v172 > 1;
      }

      if (v193)
      {
        v174 = "UDP Payload size";
      }

LABEL_439:
      if (v174)
      {
        v194 = 0;
      }

      else
      {
        v194 = v172 > 1;
      }

      if (v194)
      {
        v174 = "extended-rcode";
      }

LABEL_444:
      if (v174)
      {
        v195 = 0;
      }

      else
      {
        v195 = v172 > 1;
      }

      if (v195)
      {
        v174 = "EDNS version 0";
      }

LABEL_449:
      if (v174)
      {
        v196 = 0;
      }

      else
      {
        v196 = v172 > 1;
      }

      if (v196)
      {
        v174 = "No extended flags";
      }

      break;
    }

    v176 = *(v10 + 8);
    if ((v176 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2607;
      if (!v174)
      {
        v174 = "dns_rrtype_opt";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v176 + 1;
    *v176 = 0;
    v177 = *(v10 + 8);
    *(v10 + 8) = v177 + 1;
    *v177 = 41;
    v172 = *(v10 + 56);
    if (v174)
    {
      v178 = 0;
    }

    else
    {
      v178 = v172 > 1;
    }

    if (v178)
    {
      v174 = "dns_rrtype_opt";
    }

    if (v172 > 1)
    {
      goto LABEL_434;
    }

    v179 = *(v10 + 8);
    if ((v179 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2608;
      if (!v174)
      {
        v174 = "UDP Payload size";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v179 + 1;
    *v179 = 16;
    v180 = *(v10 + 8);
    *(v10 + 8) = v180 + 1;
    *v180 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v181 = 0;
    }

    else
    {
      v181 = v172 > 1;
    }

    if (v181)
    {
      v174 = "UDP Payload size";
    }

    if (v172 > 1)
    {
      goto LABEL_439;
    }

    v182 = *(v10 + 8);
    if ((v182 + 1) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2609;
      if (!v174)
      {
        v174 = "extended-rcode";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v182 + 1;
    *v182 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v183 = 0;
    }

    else
    {
      v183 = v172 > 1;
    }

    if (v183)
    {
      v174 = "extended-rcode";
    }

    if (v172 > 1)
    {
      goto LABEL_444;
    }

    v184 = *(v10 + 8);
    if ((v184 + 1) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2610;
      if (!v174)
      {
        v174 = "EDNS version 0";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v184 + 1;
    *v184 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v185 = 0;
    }

    else
    {
      v185 = v172 > 1;
    }

    if (v185)
    {
      v174 = "EDNS version 0";
    }

    if (v172 > 1)
    {
      goto LABEL_449;
    }

    v186 = *(v10 + 8);
    if ((v186 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2611;
      if (!v174)
      {
        v174 = "No extended flags";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v186 + 1;
    *v186 = 0;
    v187 = *(v10 + 8);
    *(v10 + 8) = v187 + 1;
    *v187 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v188 = 0;
    }

    else
    {
      v188 = v172 > 1;
    }

    if (v188)
    {
      v174 = "No extended flags";
    }

    if (v172 <= 1)
    {
      v189 = *(v10 + 8);
      if ((v189 + 2) < *(v10 + 16))
      {
        *(v10 + 8) = v189 + 1;
        *v189 = 0;
        v190 = *(v10 + 8);
        *(v10 + 8) = v190 + 1;
        *v190 = 0;
        v172 = *(v10 + 56);
        break;
      }

      *(v10 + 56) = 111;
      *(v10 + 48) = 2612;
LABEL_464:
      if (v174)
      {
        v198 = v174;
      }

      else
      {
        v198 = "No payload";
      }

      v222 = v198;
LABEL_460:
      *(v74 + 104) = v3;
      if ((*(*(*(v74 + 8) + 8) + 424) & 0x20) == 0)
      {
        goto LABEL_482;
      }

      embiggen(v74);
      *(v74 + 152) = 0;
      continue;
    }

    break;
  }

  if (v174)
  {
    v197 = 0;
  }

  else
  {
    v197 = v172 > 1;
  }

  if (v197)
  {
    v174 = "No payload";
  }

  v222 = v174;
  if (v172)
  {
    goto LABEL_460;
  }

  *(*(v74 + 168) + 10) = 256;
LABEL_482:
  v2 = a1;
LABEL_483:
  if (*(v10 + 56) >= 2u)
  {
    v199 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        v200 = *(v2 + 4);
      }

      else
      {
        v200 = 0;
      }

      v201 = v210;
      if (v210)
      {
        v201 = *(v210 + 64);
      }

      v202 = bswap32(*(*(v74 + 64) + 88));
      *buf = 136447234;
      v245 = "dp_query_send_dns_response";
      v246 = 1024;
      *v247 = v200;
      *&v247[4] = 1024;
      *&v247[6] = v201;
      LOWORD(v248) = 1024;
      *(&v248 + 2) = HIWORD(v202);
      WORD3(v248) = 2080;
      *(&v248 + 1) = v222;
      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d][QU%d][QID%x] failed on %s", buf, 0x28u);
    }

    v167 = *(v74 + 168);
    v171 = v167[1] & 0xF0FF;
    if (!v209)
    {
      v171 |= 0x200u;
    }
  }

  else
  {
    v167 = *(v74 + 168);
    v171 = v167[1] & 0xF0FF;
  }

LABEL_494:
  v167[1] = v171;
  v203 = *(v74 + 104) - v167;
  v243.iov_base = v167;
  v243.iov_len = v203;
  v204 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v205 = *(v2 + 4);
    }

    else
    {
      v205 = 0;
    }

    v206 = v210;
    if (v210)
    {
      v206 = *(v210 + 64);
    }

    *buf = 136446978;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v205;
    *&v247[4] = 1024;
    *&v247[6] = v206;
    LOWORD(v248) = 2048;
    *(&v248 + 2) = v203;
    _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] (len %zd)", buf, 0x22u);
  }

  ioloop_send_message(*(*(v74 + 8) + 8), *(v74 + 64), &v243);
  dnssd_query_cancel(v74);
}

void served_domain_free(void *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v12 = 136446723;
    v13 = "served_domain_free";
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2081;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: served domain removed - domain name: %{private, mask.hash}s", &v12, 0x20u);
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      do
      {
        v6 = *v5;
        free(v5);
        v5 = v6;
      }

      while (v6);
      v4 = a1[5];
    }

    if (*(v4 + 8))
    {
      free(*(v4 + 8));
      v4 = a1[5];
      *(v4 + 8) = 0;
    }

    free(v4);
    a1[5] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[3];
  if (v9)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = a1[2];
  if (v11)
  {
    free(v11);
  }

  free(a1);
}

uint64_t dp_start_question(uint64_t a1)
{
  sdRef = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  if (!v2)
  {
LABEL_10:
    v14 = *(a1 + 68);
    if (v14 != -5)
    {
LABEL_16:
      v16 = *(a1 + 56);
      v17 = *(a1 + 72);
      v18 = *(a1 + 74);
      if (!&_ne_tracker_check_is_hostname_blocked || (v17 != 1 ? (v19 = v17 == 28) : (v19 = 1), !v19 ? (v20 = v17 == 255) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v18 == 1 ? (v22 = v21 == 0) : (v22 = 1), v22))
      {
        should_save_stacktrace = 0;
      }

      else
      {
        v33 = ne_tracker_check_is_hostname_blocked();
        if (v33 == 1)
        {
          v6 = 4294901726;
          goto LABEL_61;
        }

        should_save_stacktrace = ne_tracker_should_save_stacktrace();
      }

      v6 = ConnectToServer(&sdRef, v16, 8, handle_query_response, dns_question_callback, a1);
      if (v6)
      {
        goto LABEL_61;
      }

      if (v3)
      {
        v24 = v3;
      }

      else
      {
        v24 = &unk_1000860E8;
      }

      v25 = strlen(v24);
      v53 = v25 + 13;
      os_unfair_lock_lock(&g_defaults_lock);
      os_unfair_lock_unlock(&g_defaults_lock);
      if (should_save_stacktrace)
      {
        v53 = v25 + 18;
      }

      *buf = 0;
      v26 = create_hdr(8, &v53, buf, *(sdRef + 1) != 0, sdRef);
      v27 = *buf;
      v51 = v53;
      **buf = HIBYTE(v16);
      v27[1] = BYTE2(v16);
      v27[2] = BYTE1(v16);
      v27[3] = v16;
      v27[4] = HIBYTE(v14);
      v27[5] = BYTE2(v14);
      v27[6] = BYTE1(v14);
      v27[7] = v14;
      v28 = strlen(v24) + 1;
      memcpy(v27 + 8, v24, v28);
      v29 = &v27[v28 + 8];
      *v29 = BYTE1(v17);
      v29[1] = v17;
      v29[2] = BYTE1(v18);
      v30 = v29 + 4;
      v29[3] = v18;
      *buf = v29 + 4;
      if (should_save_stacktrace)
      {
        if (&v27[v28 + 8] != -4 && &v27[v51] >= v30 && v51 - (v28 + 12) >= 5)
        {
          *(v29 + 1) = 16779264;
          v29[8] = 1;
          v30 = v29 + 9;
        }

        *buf = v30;
        v26->i32[2] |= 2u;
      }

      v31 = deliver_request(v26, sdRef);
      v6 = v31;
      if (!&_ne_tracker_check_is_hostname_blocked || v31 || ((should_save_stacktrace ^ 1) & 1) != 0)
      {
        if (v31)
        {
          if (v31 != -65555)
          {
            goto LABEL_60;
          }

          if (_should_return_noauth_error_s_once != -1)
          {
            dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
          }

          if (_should_return_noauth_error_s_should == 1)
          {
LABEL_60:
            DNSServiceRefDeallocate(sdRef);
            sdRef = 0;
LABEL_61:
            v37 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v38 = *(a1 + 64);
              *buf = 136447235;
              *&buf[4] = "dp_start_question";
              v55 = 1024;
              v56 = v38;
              v57 = 2160;
              v58 = 1752392040;
              v59 = 2081;
              v60 = v3;
              v61 = 1024;
              LODWORD(v62) = v6;
              v9 = "%{public}s: [QU%d] DNSServiceQueryRecord failed for '%{private, mask.hash}s': %d";
              v10 = v37;
              v11 = 44;
              goto LABEL_63;
            }

            return v6;
          }
        }
      }

      else
      {
        v32 = *(sdRef + 15);
        if (v32)
        {
          free(v32);
          *(sdRef + 15) = 0;
        }

        *(sdRef + 15) = ne_tracker_copy_current_stacktrace();
      }

      v40 = global_os_log;
      v41 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      v42 = sdRef;
      if (v41)
      {
        v43 = *(a1 + 64);
        v44 = *(a1 + 24);
        *buf = 136446978;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v43;
        v57 = 2048;
        v58 = v44;
        v59 = 2048;
        v60 = sdRef;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] txn %p new sdref %p", buf, 0x26u);
        v42 = sdRef;
      }

      *(a1 + 24) = ioloop_dnssd_txn_add_(v42, a1, dp_question_context_release, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 532);
      v45 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a1 + 60);
        *buf = 136447490;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v46;
        v57 = 2048;
        v58 = a1;
        v59 = 2080;
        v60 = "question";
        v61 = 2080;
        v62 = "dnssd-proxy.c";
        v63 = 1024;
        LODWORD(v64) = 534;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v47 = *(a1 + 60);
      if (v47)
      {
        v48 = v47 + 1;
        *(a1 + 60) = v47 + 1;
        v49 = global_os_log;
        if (v47 + 1 >= 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "dp_start_question";
            v55 = 1024;
            v56 = v48;
            v57 = 2048;
            v58 = a1;
            v59 = 2080;
            v60 = "question";
            v61 = 2080;
            v62 = "dnssd-proxy.c";
            v63 = 1024;
            LODWORD(v64) = 534;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++question_created;
        *(a1 + 60) = 1;
        v49 = global_os_log;
      }

      v6 = 0;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 64);
        *buf = 136447235;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v50;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v3;
        v61 = 1024;
        LODWORD(v62) = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] DNSServiceQueryRecord started for '%{private, mask.hash}s': %d", buf, 0x2Cu);
        return 0;
      }

      return v6;
    }

    v14 = dp_start_question_en0_ifindex;
    if (!dp_start_question_en0_ifindex)
    {
      v14 = if_nametoindex("en0");
      dp_start_question_en0_ifindex = v14;
      if (!v14)
      {
        v15 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          return 4294901743;
        }

        *buf = 136446210;
        *&buf[4] = "dp_start_question";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: getting en0 ifindex failed!", buf, 0xCu);
        v14 = dp_start_question_en0_ifindex;
      }
    }

    if (v14 >= 1)
    {
      goto LABEL_16;
    }

    return 4294901743;
  }

  v4 = strlen(*(a1 + 32));
  v5 = v4;
  if (v2[5])
  {
    if (v4 - 249 <= 0xFFFFFFFFFFFFFEFELL)
    {
      v6 = 4294901756;
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 64);
        *buf = 136446979;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v8;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v65;
        v9 = "%{public}s: [QU%d] question name %{private, mask.hash}s is too long for .local.";
        v10 = v7;
        v11 = 38;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
        return v6;
      }

      return v6;
    }

    __memcpy_chk();
    *&v65[v5] = 0x2E6C61636F6C2ELL;
    goto LABEL_9;
  }

  v12 = v2[2];
  v13 = strlen(v12) + 1;
  if (v13 + v5 < 0x101)
  {
    __memcpy_chk();
    memcpy(&v65[v5], v12, v13);
LABEL_9:
    v3 = v65;
    goto LABEL_10;
  }

  v6 = 4294901756;
  v34 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 64);
    v36 = v2[1];
    *buf = 136447491;
    *&buf[4] = "dp_start_question";
    v55 = 1024;
    v56 = v35;
    v57 = 2160;
    v58 = 1752392040;
    v59 = 2081;
    v60 = v65;
    v61 = 2160;
    v62 = 1752392040;
    v63 = 2081;
    v64 = v36;
    v9 = "%{public}s: [QU%d] question name %{private, mask.hash}s is too long for %{private, mask.hash}s.";
    v10 = v34;
    v11 = 58;
    goto LABEL_63;
  }

  return v6;
}