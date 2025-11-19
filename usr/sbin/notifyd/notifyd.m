void sub_100000660(uint64_t a1, uint64_t a2)
{
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();

    mach_msg_destroy(msg);
  }
}

FILE *sub_1000006C8(FILE *result, uint64_t a2)
{
  if ((result->_p & 0x80000000) != 0 || HIDWORD(result->_p) != 52)
  {
    v3 = -304;
  }

  else
  {
    if (!HIDWORD(result->_cookie) && LODWORD(result->_close) > 0x1F)
    {
      v5 = *&result->_bf._size;
      v4 = *&result->_lbfsize;
      cookie = result->_cookie;
      ub = result->_ub;
      v8[0] = *&result->_seek;
      v8[1] = ub;
      result = sub_100000768(v5, v4, cookie, v8, 0);
      *(a2 + 32) = 0;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

FILE *sub_100000768(uint64_t a1, uint64_t a2, int a3, _OWORD *a4, int a5)
{
  egidp = -1;
  euidp = -1;
  pidp = -1;
  ++qword_100014238;
  ++*(&xmmword_100014240 + 1);
  v10 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v10;
  audit_token_to_au32(&atoken, 0, &euidp, &egidp, 0, 0, &pidp, 0, 0);
  if (a3)
  {
    if (euidp)
    {
      v11 = a4[1];
      *atoken.val = *a4;
      *&atoken.val[4] = v11;
      if (sub_1000086BC(&atoken))
      {
        euidp = 0;
      }
    }
  }

  result = os_set_64_ptr_find();
  if (result)
  {
    if (qword_1000142D0 != result)
    {
      v13 = *(&result->_r - qword_1000142D0);
      v14 = a4[1];
      *atoken.val = *a4;
      *&atoken.val[4] = v14;
      result = sub_100000920(v13);
      if (result)
      {
        if (!a5 || (v21 = a4[1], *atoken.val = *a4, *&atoken.val[4] = v21, result = sandbox_check_by_audit_token(), !result))
        {
          result = sub_100000A28(a1, a2, euidp, egidp);
          if (result != 7 && result != 1)
          {
            if (result)
            {
              __assert_rtn("_internal_notify_server_set_state_2", "notify_proc.c", 1372, "status == NOTIFY_STATUS_OK || status == NOTIFY_STATUS_NOT_AUTHORIZED || status == NOTIFY_STATUS_INVALID_NAME");
            }

            return sub_100000AB8(7, "__notify_server_set_state_2 %d %llu %llu [uid %d%s gid %d]\n", v15, v16, v17, v18, v19, v20, pidp);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100000920(const char *a1)
{
  memcpy(__dst, "com.apple.private.darwin-notification.restrict-post.", sizeof(__dst));
  result = strncmp(a1, "com.apple.private.restrict-post.", 0x20uLL);
  if (result)
  {
    return 1;
  }

  if (a1 >= 0xFFFFFFFFFFFFFFE0)
  {
    __break(0x5513u);
  }

  else
  {
    if (__strlcat_chk() <= 0x100)
    {
      v10 = xpc_copy_entitlement_for_token();
      if (v10)
      {
        v11 = v10;
        value = xpc_BOOL_get_value(v10);
        xpc_release(v11);
        if (value)
        {
          return 1;
        }
      }

      v9 = "Post %s rejected: missing entitlement\n";
    }

    else
    {
      v9 = "Post %s rejected: respective restricted notification entitlement would be too long\n";
    }

    sub_100000AB8(3, v9, v3, v4, v5, v6, v7, v8, a1);
    return 0;
  }

  return result;
}

uint64_t sub_100000A28(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = os_set_64_ptr_find();
  if (!v7)
  {
    return 1;
  }

  v8 = v7 - qword_1000142D0;
  if (v7 == qword_1000142D0)
  {
    return 1;
  }

  if (sub_100000BB8(*(v8 + 8), a3, a4, 2))
  {
    return 7;
  }

  *(v8 + 24) = a2;
  v10 = mach_absolute_time();
  result = 0;
  *(v8 + 32) = v10;
  return result;
}

FILE *sub_100000AB8(FILE *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (dword_100014400 >= result)
  {
    result = qword_100014410;
    if (qword_100014410)
    {
      result = fopen(qword_100014410, "a");
      if (result)
      {
        v10 = result;
        v12 = time(0);
        *v13 = 0u;
        v14 = 0u;
        v11 = localtime(&v12);
        strftime(v13, 0x20uLL, "%b %e %T", v11);
        fprintf(v10, "%s: ", v13);
        vfprintf(v10, a2, &a9);
        fflush(v10);
        return fclose(v10);
      }
    }
  }

  return result;
}

uint64_t sub_100000BB8(const char *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return 10;
  }

  if (!a2)
  {
    return 0;
  }

  if (strncmp(a1, "user.uid.", 9uLL))
  {
    v8 = strlen(a1);
    v9 = qword_100014350;
    if (!qword_100014350)
    {
      dword_100014364 = 0;
      return 0;
    }

    v24 = a4;
    if (!dword_100014364)
    {
      return 0;
    }

    v10 = v8;
    v11 = 0;
    v12 = ~qword_100014350;
    v13 = 8 * dword_100014364;
    while (1)
    {
      if (v11 > v12)
      {
        goto LABEL_38;
      }

      v14 = *(v9 + v11);
      if (!v14)
      {
        return 0;
      }

      v15 = *(v14 + 8);
      if (v15)
      {
        v16 = strlen(*(v14 + 8));
        if (v16 <= v10 && !strncmp(v15, a1, v16))
        {
          break;
        }
      }

      v11 += 8;
      if (v13 == v11)
      {
        return 0;
      }
    }

    if (*(v14 + 40) == a2 && (*(v14 + 48) & v24) != 0)
    {
      return 0;
    }

    v21 = *(v14 + 48);
    v22 = *(v14 + 44) != a3 || (v21 & (16 * v24)) == 0;
    if (!v22 || (v21 & (v24 << 8)) != 0)
    {
      return 0;
    }

    return 7;
  }

  snprintf(__str, 0x3FuLL, "%s%d", "user.uid.", a2);
  v18 = strlen(__str);
  if (strncmp(a1, __str, v18))
  {
    return 7;
  }

  if (__CFADD__(a1, v18))
  {
LABEL_38:
    __break(0x5513u);
  }

  v19 = a1[v18];
  if (v19 == 46 || v19 == 0)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_100000D90(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (!v3 && *(result + 4) > 0x1Fu)
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      result = sub_100000E40((a2 + 36), (a2 + 40), (a2 + 44), v6);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 48;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100000E40(_DWORD *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4)
{
  pidp = -1;
  ++*(&xmmword_100014280 + 1);
  v7 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v7;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  sub_100000AB8(7, "__notify_server_checkin %d\n", v8, v9, v10, v11, v12, v13, pidp);
  *a1 = 3;
  result = getpid();
  *a2 = result;
  *a3 = 0;
  return result;
}

void sub_100000EEC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 4);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 36);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(a1, v4))
  {
    __break(0x5513u);
    return;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  if (memchr((a1 + 40), 0, v8))
  {
    v9 = ((v4 + 3) & 0x7FC) + a1;
    if (!*v9 && *(v9 + 4) > 0x1Fu)
    {
      v11 = *(a1 + v6 + 40);
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      sub_100001AF0((a1 + 40), v11, v13);
      *(a2 + 32) = 0;
      return;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
}

FILE *sub_100000FF8(const char *a1, void *a2, _DWORD *a3, int a4, __int128 *a5)
{
  v26 = -1;
  v27 = -1;
  v25 = -1;
  *a2 = 0;
  v10 = a5[1];
  v28 = *a5;
  v29 = v10;
  sub_1000018E4(&v28, 0xFFFFFFFF, &v27, &v26, &v25, 0);
  v11 = v27;
  if (a4 && v27)
  {
    v12 = a5[1];
    v28 = *a5;
    v29 = v12;
    if (sub_1000086BC(&v28))
    {
      v11 = 0;
      v27 = 0;
    }

    else
    {
      v11 = v27;
    }
  }

  result = sub_100000BB8(a1, v11, v26, 2);
  *a3 = result;
  if (!result)
  {
    v14 = a5[1];
    v28 = *a5;
    v29 = v14;
    result = sub_100000920(a1);
    if (result)
    {
      *&xmmword_100014180 = xmmword_100014180 + 1;
      *&xmmword_1000141A0 = xmmword_1000141A0 + 1;
      v15 = sub_100001B48(a1, v27, v26);
      *a3 = v15;
      if (v15 == 10)
      {
        __assert_rtn("__notify_server_post_2", "notify_proc.c", 624, "*status != NOTIFY_STATUS_NULL_INPUT");
      }

      v16 = os_set_str_ptr_find();
      if (!v16 || qword_1000142B0 == v16)
      {
        *a3 = 60;
        *a2 = -1;
        ++*(&xmmword_100014180 + 1);
        return sub_100000AB8(7, "__notify_server_post %s %d\n", v17, v18, v19, v20, v21, v22, a1);
      }

      v23 = v16 - qword_1000142B0;
      ++*(v23 + 64);
      v24 = *(v23 + 16);
      *a2 = v24;
      if (v24 == -1)
      {
        return sub_100000AB8(7, "__notify_server_post %s %d\n", v17, v18, v19, v20, v21, v22, a1);
      }

      return sub_100000AB8(7, "__notify_server_post %s %d [%llu]\n", v17, v18, v19, v20, v21, v22, a1);
    }

    else
    {
      *a3 = 7;
    }
  }

  return result;
}

uint64_t sub_1000011D8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 44) && *(result + 48) > 0x1Fu)
    {
      v4 = *(result + 32);
      v5 = *(result + 40);
      v6 = *(result + 80);
      v24 = *(result + 64);
      v25 = v6;
      v20 = -1;
      v21 = -1;
      v19 = -1;
      result = os_set_64_ptr_find();
      if (result)
      {
        v7 = result - qword_1000142D0;
        if (result != qword_1000142D0)
        {
          ++*(v7 + 64);
          v22 = v24;
          v23 = v25;
          sub_1000018E4(&v22, 0xFFFFFFFF, &v21, &v20, &v19, 0);
          if (v5)
          {
            if (v21)
            {
              v22 = v24;
              v23 = v25;
              if (sub_1000086BC(&v22))
              {
                v21 = 0;
              }
            }
          }

          v8 = *(v7 + 8);
          v22 = v24;
          v23 = v25;
          result = sub_100000920(v8);
          if (result)
          {
            result = sub_100000BB8(*(v7 + 8), v21, v20, 2);
            if (result)
            {
              if (result == 10)
              {
                __assert_rtn("__notify_server_post_3", "notify_proc.c", 568, "status != NOTIFY_STATUS_NULL_INPUT");
              }
            }

            else
            {
              *&xmmword_100014180 = xmmword_100014180 + 1;
              ++qword_100014190;
              sub_100000AB8(7, "__notify_server_post %s %d by nameid: %llu \n", v9, v10, v11, v12, v13, v14, *(v7 + 8));
              v16 = v20;
              v15 = v21;
              result = os_set_64_ptr_find();
              if (result && qword_1000142D0 != result)
              {
                v17 = *(result - qword_1000142D0 + 52);
                if (v17 != -1)
                {
                  if (__CFADD__(qword_1000143E8, 4 * v17))
                  {
                    __break(0x5513u);
                    return result;
                  }

                  ++*(qword_1000143E8 + 4 * v17);
                }

                v18 = os_set_64_ptr_find();
                if (!v18 || qword_1000142D0 == v18 || (result = sub_10000146C(v18 - qword_1000142D0, v15, v16), result))
                {
                  __assert_rtn("__notify_server_post_3", "notify_proc.c", 579, "status == NOTIFY_STATUS_OK");
                }
              }
            }
          }
        }
      }

      *(a2 + 32) = 0;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000146C(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  if (sub_100000BB8(*(a1 + 8), a2, a3, 2))
  {
    return 7;
  }

  ++*(v3 + 60);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    sub_1000014D0(v3, 0, 0);
  }

  return 0;
}

void sub_1000014D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 79);
  if ((v4 & 0x20) != 0)
  {
    v7 = v4 | 0x40;
    goto LABEL_38;
  }

  if (a2)
  {
LABEL_3:
    if ((*(a2 + 20) & 1) == 0)
    {
      v6 = 0;
      goto LABEL_9;
    }

    ++*(a1 + 78);
    v7 = v4 | 0x60;
LABEL_38:
    *(a1 + 79) = v7;
    return;
  }

  v8 = *(a1 + 68);
  v9 = os_set_32_ptr_find();
  if (v9 && qword_100014330 != v9)
  {
    a2 = v9 - qword_100014330;
    v4 = *(a1 + 79);
    goto LABEL_3;
  }

  a2 = 0;
  v4 = *(a1 + 79);
  v6 = 1;
LABEL_9:
  v10 = v4 & 0xF;
  if (v10 <= 4)
  {
    if (v10 != 3)
    {
      if (v10 != 4 || (*(a1 + 56) & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      LODWORD(v29[0]) = bswap32(*(a1 + 64));
      if (write_NOCANCEL() != 4)
      {
        v12 = *(a1 + 56);
        close_NOCANCEL();
        *(a1 + 56) = -1;
        return;
      }

      goto LABEL_36;
    }

    v14 = *(a1 + 56);
LABEL_41:

    sub_100001784(a1, a3, v14);
    return;
  }

  switch(v10)
  {
    case 7u:
      if (v6)
      {
        return;
      }

      v13 = *(a2 + 24);
      if (!v13)
      {
        return;
      }

      v14 = *(v13 + 8);
      goto LABEL_41;
    case 6u:
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v15, "Notification", *(*(a1 + 48) + 8));
      v16 = *(*(a1 + 48) + 16);
      v17 = os_set_64_ptr_find();
      if (v17 && qword_1000142D0 != v17)
      {
        xpc_dictionary_set_uint64(v15, "_State", *(v17 - qword_1000142D0 + 24));
      }

      v18 = *(a1 + 56);
      v19 = xpc_event_publisher_fire_noboost();
      xpc_release(v15);
      if (!v19)
      {
        goto LABEL_36;
      }

      if (v19 == 55 && (*(a1 + 80) & 1) == 0)
      {
        *(a1 + 80) = 1;
        memset(v29, 0, sizeof(v29));
        v20 = *(a1 + 56);
        if (xpc_get_service_identifier_for_token())
        {
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            sub_100009F34(has_internal_diagnostics, v22, v23, v24, v25, v26, v27, v28, v29);
          }
        }
      }

      break;
    case 5u:
      v11 = *(a1 + 68);
      if (!v11)
      {
        v11 = getpid();
      }

      if (!kill(v11, *(a1 + 56)))
      {
LABEL_36:
        v4 = *(a1 + 79);
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:
      v7 = v4 & 0x3F;
      goto LABEL_38;
  }
}

uint64_t sub_100001784(uint64_t a1, uint64_t a2, mach_port_t a3)
{
  v4 = a2;
  if (a2)
  {
    goto LABEL_2;
  }

  v7 = os_set_32_ptr_find();
  if (!v7)
  {
    v4 = 0;
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  v4 = v7 - qword_100014310;
  if (v7 == qword_100014310)
  {
    goto LABEL_9;
  }

LABEL_2:
  if (*(v4 + 12))
  {
    result = 0;
    ++*(a1 + 78);
    v9 = *(a1 + 79) | 0x60;
LABEL_18:
    *(a1 + 79) = v9;
    return result;
  }

  v6 = 0;
LABEL_10:
  if ((dword_100014360 & 2) != 0)
  {
    v10 = 145;
  }

  else
  {
    v10 = 17;
  }

  *&msg.msgh_voucher_port = 0;
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_remote_port = a3;
  msg.msgh_local_port = 0;
  msg.msgh_id = *(a1 + 64);
  result = mach_msg(&msg, v10, 0x18u, 0, 0, 0, 0);
  if (!result)
  {
    v9 = *(a1 + 79) & 0x3F;
    goto LABEL_18;
  }

  if (result != 268435460)
  {
    return 46;
  }

  mach_msg_destroy(&msg);
  if ((dword_100014360 & 2) == 0)
  {
    return 45;
  }

  ++*(a1 + 78);
  *(a1 + 79) |= 0xE0u;
  result = 0;
  if ((v6 & 1) == 0)
  {
    *(v4 + 12) |= 1u;
  }

  return result;
}

void sub_1000018E4(_OWORD *a1, unsigned int a2, uid_t *a3, gid_t *a4, _DWORD *a5, unint64_t *a6)
{
  if (a3)
  {
    v11 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v11;
    *a3 = audit_token_to_euid(&atoken);
  }

  if (a4)
  {
    v12 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v12;
    *a4 = audit_token_to_egid(&atoken);
  }

  v13 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v13;
  v14 = audit_token_to_pid(&atoken);
  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = a2 | (v14 << 32);
  }

  v15 = os_set_64_ptr_find();
  if (v15)
  {
    if (qword_1000142F0 != v15)
    {
      v22 = v15 - qword_1000142F0;
      sub_100000AB8(7, "duplicate token %d sent from PID %d\n", v16, v17, v18, v19, v20, v21, a2);
      sub_100002DBC(v22);
    }
  }
}

uint64_t sub_1000019CC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 76);
  v13[0] = *(result + 60);
  v13[1] = v5;
  v14 = -1;
  v15 = -1;
  *(a2 + 36) = 0;
  sub_1000018E4(v13, 0xFFFFFFFF, &v15, &v14, 0, 0);
  sub_100000AB8(7, "__notify_server_get_state_2 %llu\n", v6, v7, v8, v9, v10, v11, v4);
  *(a2 + 36) = 0;
  result = os_set_64_ptr_find();
  if (result && qword_1000142D0 != result)
  {
    v12 = 0;
    *(a2 + 36) = *(result - qword_1000142D0 + 24);
  }

  else
  {
    v12 = 1;
  }

  *(a2 + 44) = v12;
  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 48;
  return result;
}

int64x2_t sub_100001AF0(const char *a1, int a2, __int128 *a3)
{
  v7 = 0;
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  sub_100000FF8(a1, &v7, &v6, a2, v5);
  result = vaddq_s64(*&qword_100014198, xmmword_10000C4E0);
  *&qword_100014198 = result;
  return result;
}

uint64_t sub_100001B48(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 10;
  }

  result = os_set_str_ptr_find();
  if (result)
  {
    if (qword_1000142B0 == result)
    {
      return 0;
    }

    v6 = *(result - qword_1000142B0 + 52);
    if (v6 != -1)
    {
      if (__CFADD__(qword_1000143E8, 4 * v6))
      {
        __break(0x5513u);
        return result;
      }

      ++*(qword_1000143E8 + 4 * v6);
    }

    v7 = os_set_str_ptr_find();
    if (v7 && qword_1000142B0 != v7)
    {
      v8 = v7 - qword_1000142B0;

      return sub_10000146C(v8, a2, a3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

char *sub_100001C30(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 1) != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = *(result + 6);
  result += 24;
  if (v3 || *(result + 1) <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 32) = 0x10000000000000;
  v6 = *(result + 36);
  v31 = *(result + 20);
  v5 = v31;
  v32 = v6;
  name = 0;
  *(a2 + 48) = 0;
  *(a2 + 28) = 0;
  *atoken.val = v5;
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  sub_100000AB8(7, "__notify_generate_common_port %d\n", v8, v9, v10, v11, v12, v13, v7);
  v14 = os_set_32_ptr_find();
  if (!v14 || (v22 = (v14 - qword_100014330), v14 == qword_100014330))
  {
    v22 = sub_100001F6C(0, v7);
  }

  v23 = v22[3];
  if (v23)
  {
    v24 = *v23;
    if (*v23)
    {
      do
      {
        v25 = *(v24 + 16);
        sub_100002DBC(v24);
        v24 = v25;
      }

      while (v25);
      v23 = v22[3];
    }

    sub_100003510(v23, v15, v16, v17, v18, v19, v20, v21);
    v22[3] = 0;
  }

  *&atoken.val[4] = 0;
  *atoken.val = xmmword_10000C538;
  if (mach_port_construct(mach_task_self_, &atoken, 0, &name))
  {
    __assert_rtn("__notify_generate_common_port", "notify_proc.c", 1751, "kstatus == KERN_SUCCESS");
  }

  if (mach_port_insert_right(mach_task_self_, name, name, 0x14u))
  {
    __assert_rtn("__notify_generate_common_port", "notify_proc.c", 1755, "kstatus == KERN_SUCCESS");
  }

  v26 = name;
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (result)
  {
    v27 = result;
    ++dword_100014380;
    *result = 0;
    *(result + 2) = v26;
    *(result + 3) = 2;
    os_set_32_ptr_insert();
    result = sub_100001EC4(v26);
    v22[3] = v27;
    v28 = name;
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    *(a2 + 28) = v28;
  }

  else
  {
    qword_100014010 = "BUG IN LIBNOTIFY: Unable to allocate portproc";
    __break(0xB001u);
  }

  return result;
}

uint64_t sub_100001EC4(mach_port_name_t name)
{
  previous = 0;
  result = mach_port_request_notification(mach_task_self_, name, 66, 0, dword_100014390, 0x15u, &previous);
  if (result)
  {
    qword_100014010 = "BUG IN LIBNOTIFY: Unable to arm send-possible";
    qword_100014040 = result;
    __break(0xB001u);
    goto LABEL_5;
  }

  if (previous)
  {
LABEL_5:
    qword_100014010 = "BUG IN LIBNOTIFY: send-possible already armed??";
    qword_100014040 = 0;
    __break(0xB001u);
  }

  return result;
}

uint64_t *sub_100001F6C(uint64_t a1, int a2)
{
  v4 = dispatch_source_create(&_dispatch_source_type_proc, a2, 0x80000000uLL, qword_1000143A0);
  dispatch_source_set_event_handler_f(v4, sub_100002EFC);
  result = malloc_type_malloc(0x20uLL, 0x10200407DCD39BEuLL);
  if (result)
  {
    v6 = result;
    ++dword_100014380;
    *result = 0;
    result[1] = v4;
    *(result + 5) = 0;
    *(result + 4) = a2;
    result[3] = 0;
    os_set_32_ptr_insert();
    if (a1)
    {
      v7 = *v6;
      *(a1 + 16) = *v6;
      if (v7)
      {
        *(v7 + 24) = a1 + 16;
      }

      *v6 = a1;
      *(a1 + 24) = v6;
    }

    dispatch_set_context(v4, v6);
    dispatch_source_set_cancel_handler_f(v4, sub_100003424);
    dispatch_activate(v4);
    return v6;
  }

  else
  {
    qword_100014010 = "BUG IN LIBNOTIFY: Unable to allocate portproc";
    __break(0xB001u);
  }

  return result;
}

FILE *sub_100002088(FILE *result, uint64_t a2)
{
  if ((result->_p & 0x80000000) != 0 || HIDWORD(result->_p) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (!*(&result->_bf._size + 1) && result->_lbfsize > 0x1Fu)
  {
    size = result->_bf._size;
    v5 = *&result->_seek;
    v17[0] = *&result->_close;
    v17[1] = v5;
    v19 = -1;
    v20 = -1;
    *(a2 + 36) = 0;
    v18 = -1;
    *(a2 + 44) = 0;
    sub_1000018E4(v17, 0xFFFFFFFF, &v20, &v19, &v18, 0);
    *&xmmword_100014218 = xmmword_100014218 + 1;
    ++qword_100014230;
    v6 = os_set_64_ptr_find();
    if (v6 && qword_1000142F0 != v6)
    {
      v13 = v6 - qword_1000142F0;
      v14 = *(*(v6 - qword_1000142F0 + 48) + 16);
      *(a2 + 36) = 0;
      v15 = os_set_64_ptr_find();
      if (!v15 || qword_1000142D0 == v15)
      {
        *(a2 + 52) = 1;
        __assert_rtn("__notify_server_get_state_3", "notify_proc.c", 1244, "*status == NOTIFY_STATUS_OK || *status == NOTIFY_STATUS_NOT_AUTHORIZED");
      }

      *(a2 + 36) = *(v15 - qword_1000142D0 + 24);
      *(a2 + 52) = 0;
      v16 = *(*(v13 + 48) + 16);
      *(a2 + 44) = v16;
      if (v16 != -1)
      {
        result = sub_100000AB8(7, "__notify_server_get_state_3 %d %d [%llu]\n", v7, v8, v9, v10, v11, v12, v18);
        goto LABEL_13;
      }
    }

    else
    {
      *(a2 + 52) = 50;
      *(a2 + 44) = -1;
    }

    result = sub_100000AB8(7, "__notify_server_get_state_3 %d %d\n", v7, v8, v9, v10, v11, v12, v18);
LABEL_13:
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 56;
    return result;
  }

  v3 = -309;
LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

char *sub_10000226C(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr(result + 40, 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *&v3[v6 + 40];
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_1000023A0(v3 + 40, v11, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 52), v13);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 56;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t *sub_1000023A0(char *a1, unsigned int a2, _DWORD *a3, _DWORD *a4, void *a5, _DWORD *a6, __int128 *a7)
{
  v33 = 0;
  v31 = -1;
  v32 = -1;
  v30 = -1;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v14 = a7[1];
  v34 = *a7;
  v35 = v14;
  sub_1000018E4(&v34, a2, &v32, &v31, &v30, &v33);
  ++*(&xmmword_1000141A0 + 1);
  ++qword_1000141B8;
  if (!dword_1000143E0)
  {
    *a3 = -1;
    *a4 = -1;
    v26 = a7[1];
    v34 = *a7;
    v35 = v26;
    return sub_1000032FC(a1, a2, &v34);
  }

  result = os_set_str_ptr_find();
  if (!result || qword_1000142B0 == result || (v22 = *(result - qword_1000142B0 + 52), v22 == -1))
  {
    if (dword_1000143E0 >= 2)
    {
      v24 = dword_1000143E0 - 1;
      LODWORD(v22) = dword_1000143E4;
      do
      {
        v22 = v22 + 1 < dword_1000143E0 ? (v22 + 1) : 1;
        v23 = 4 * v22;
        if (v23 > ~qword_1000143F0)
        {
          goto LABEL_31;
        }

        if (!*(qword_1000143F0 + 4 * v22))
        {
          dword_1000143E4 = v22;
          goto LABEL_20;
        }
      }

      while (--v24);
    }

    if (dword_1000143E4 + 1 < dword_1000143E0)
    {
      v25 = dword_1000143E4 + 1;
    }

    else
    {
      v25 = 1;
    }

    dword_1000143E4 = v25;
    result = sub_100000AB8(7, "reused shared memory slot %u\n", v16, v17, v18, v19, v20, v21, v25);
    v22 = dword_1000143E4;
    v23 = 4 * dword_1000143E4;
LABEL_20:
    if (__CFADD__(qword_1000143E8, v23))
    {
LABEL_31:
      __break(0x5513u);
      return result;
    }

    *(qword_1000143E8 + 4 * v22) = 1;
  }

  else
  {
    v23 = 4 * v22;
  }

  if (__CFADD__(qword_1000143F0, v23))
  {
    goto LABEL_31;
  }

  ++*(qword_1000143F0 + 4 * v22);
  sub_100000AB8(7, "__notify_server_register_check %s %d %d\n", v16, v17, v18, v19, v20, v21, a1);
  *a3 = 4 * dword_1000143E0;
  *a4 = v22;
  result = sub_1000028AC(a1, v30, a2, v22, v32, v31, a5);
  *a6 = result;
  if (!result)
  {
    v27 = os_set_64_ptr_find();
    if (v27)
    {
      v28 = (v27 - qword_1000142F0);
    }

    else
    {
      v28 = 0;
    }

    if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
    {
      v29 = a7[1];
      v34 = *a7;
      v35 = v29;
      sub_10000A680(a1, v28, &v34);
    }

    return sub_10000293C(v28, v30);
  }

  return result;
}

char *sub_100002644(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr(result + 40, 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *&v3[v6 + 40];
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_1000029DC(v3 + 40, v11, v13);
      *(a2 + 32) = 0;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100002750(const char *a1, uint64_t a2, unsigned int a3, int a4, int a5, void *a6)
{
  if (!a6)
  {
    return 0;
  }

  if (sub_100000BB8(a1, a4, a5, 1))
  {
    return 7;
  }

  *a6 = 0;
  v11 = os_set_str_ptr_find();
  if (!v11 || (v12 = (v11 - qword_1000142B0), v11 == qword_1000142B0))
  {
    v12 = sub_100002BAC(a1);
    if (!v12)
    {
      return 47;
    }
  }

  v13 = a3 | (a2 << 32);
  ++*(v12 + 14);
  v14 = os_set_64_ptr_find();
  if ((!v14 || qword_1000142F0 == v14) && (v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040BED8B209uLL)) != 0)
  {
    v16 = v15;
    ++dword_100014378;
    v15[8] = v13;
    v15[6] = v12;
    v17 = *v12;
    *v15 = *v12;
    if (v17)
    {
      *(v17 + 8) = v15;
    }

    *v12 = v15;
    v15[1] = v12;
    os_set_64_ptr_insert();
    result = 0;
    *a6 = v16;
  }

  else
  {
    sub_1000031A4(v12);
    return 48;
  }

  return result;
}

uint64_t sub_1000028AC(const char *a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, void *a7)
{
  if (!a1)
  {
    return 1;
  }

  v14 = 0;
  result = sub_100002750(a1, a2, a3, a5, a6, &v14);
  if (!result)
  {
    v10 = v14;
    v11 = *(v14 + 79) & 0xF0;
    v12 = *(v14 + 48);
    if (a4 == -1)
    {
      v13 = v11 | 2;
    }

    else
    {
      v13 = v11 | 1;
      *(v12 + 52) = a4;
    }

    result = 0;
    *(v10 + 79) = v13;
    *a7 = *(v12 + 16);
  }

  return result;
}

uint64_t *sub_10000293C(uint64_t *result, int a2)
{
  if (a2 < 1)
  {
    return result;
  }

  v3 = result;
  result = os_set_32_ptr_find();
  if (result)
  {
    if (v3 && result != qword_100014330)
    {
      v4 = (result - qword_100014330);
      v5 = *(result - qword_100014330);
      *(v3 + 16) = v5;
      if (v5)
      {
        *(v5 + 24) = v3 + 16;
      }

      *v4 = v3;
      *(v3 + 24) = v4;
      return result;
    }

    if (qword_100014330 != result)
    {
      return result;
    }
  }

  return sub_100001F6C(v3, a2);
}

uint64_t sub_1000029DC(char *a1, unsigned int a2, __int128 *a3)
{
  v33 = 0;
  v31 = -1;
  v32 = -1;
  v30 = -1;
  v6 = a3[1];
  v28 = *a3;
  v29 = v6;
  sub_1000018E4(&v28, a2, &v32, &v31, &v30, &v33);
  ++*(&xmmword_1000141A0 + 1);
  *&xmmword_1000141E0 = xmmword_1000141E0 + 1;
  sub_100000AB8(7, "_notify_internal_register_common_port %s %d %d\n", v7, v8, v9, v10, v11, v12, a1);
  v13 = os_set_32_ptr_find();
  if (v13 && (v20 = (v13 - qword_100014330), v13 != qword_100014330) && v20[3])
  {
    if (a1)
    {
      *&v28 = 0;
      result = sub_100002750(a1, v30, a2, v32, v31, &v28);
      if (!result)
      {
        *(v28 + 79) = *(v28 + 79) & 0xF0 | 7;
        v22 = os_set_64_ptr_find();
        if (v22)
        {
          v23 = (v22 - qword_1000142F0);
        }

        else
        {
          v23 = 0;
        }

        if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
        {
          v24 = a3[1];
          v28 = *a3;
          v29 = v24;
          sub_10000A680(a1, v23, &v28);
        }

        if (v23)
        {
          v25 = *v20;
          v23[2] = *v20;
          if (v25)
          {
            *(v25 + 24) = v23 + 2;
          }

          *v20 = v23;
          v23[3] = v20;
        }

        v26 = v20[3];
        v27 = *v26;
        v23[4] = *v26;
        if (v27)
        {
          *(v27 + 40) = v23 + 4;
        }

        result = 0;
        *v26 = v23;
        v23[5] = v26;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_100000AB8(7, "_notify_internal_register_common_port FAILED %s %d %d\n", v14, v15, v16, v17, v18, v19, a1);
    return 59;
  }

  return result;
}

void *sub_100002BAC(const char *a1)
{
  v2 = strlen(a1);
  v3 = v2 + 73;
  result = malloc_type_calloc(1uLL, v2 + 73, 0x103004098686315uLL);
  v5 = result;
  if (!result)
  {
    return v5;
  }

  ++dword_100014370;
  if (result < 0xFFFFFFFFFFFFFFB8)
  {
    if (v3 >= 0x10)
    {
      result[1] = result + 9;
      result = memcpy(result + 9, a1, v2 + 1);
      v6 = qword_100014290++;
      if (v3 >= 0x18)
      {
        v5[2] = v6;
        if (v3 >= 0x34)
        {
          *(v5 + 12) = 819;
          if (v3 >= 0x38)
          {
            *(v5 + 13) = -1;
            if (v3 >= 0x40)
            {
              *(v5 + 15) = 1;
              *v5 = 0;
              os_set_str_ptr_insert();
              os_set_64_ptr_insert();
              return v5;
            }
          }
        }
      }
    }

    __break(1u);
  }

  __break(0x5513u);
  return result;
}

void sub_100002CB4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v13[0] = *(a1 + 56);
  v13[1] = v5;
  v14 = -1;
  v15 = -1;
  sub_1000018E4(v13, 0xFFFFFFFF, &v15, 0, &v14, 0);
  ++*(&xmmword_1000141E0 + 1);
  sub_100000AB8(7, "__notify_server_cancel %d %d\n", v6, v7, v8, v9, v10, v11, v14);
  v12 = os_set_64_ptr_find();
  if (v12)
  {
    if (qword_1000142F0 != v12)
    {
      sub_100002DBC(v12 - qword_1000142F0);
    }
  }

  *(a2 + 32) = 0;
}

void sub_100002DBC(uint64_t a1)
{
  ++qword_100014278;
  if (*(a1 + 76))
  {
    v2 = *(a1 + 76) - 1;
    if (__CFADD__(qword_100014398, 8 * v2))
    {
      goto LABEL_27;
    }

    v3 = *(qword_100014398 + 8 * v2);
    *(qword_100014398 + 8 * v2) = 0;
    if ((*v3 - 1) <= 1)
    {
      v4 = v3[1];
      dispatch_assert_queue_V2(qword_1000143A0);
      if (v4)
      {
        v5 = *(v4 + 72);
        if (v5)
        {
          dispatch_source_cancel(v5);
        }

        sub_10000A120(v4);
      }
    }

    free(v3);
    *(a1 + 76) = 0;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    __assert_rtn("port_proc_cancel_client", "notify_proc.c", 331, "n != NULL");
  }

  v7 = *(a1 + 79) & 0xF;
  if (v7 == 7 || v7 == 3)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v9)
    {
      *(v9 + 40) = v10;
    }

    *v10 = v9;
    goto LABEL_21;
  }

  if (v7 == 1)
  {
    v11 = *(v6 + 52);
    if (!__CFADD__(qword_1000143F0, 4 * v11))
    {
      --*(qword_1000143F0 + 4 * v11);
      goto LABEL_21;
    }

LABEL_27:
    __break(0x5513u);
    return;
  }

LABEL_21:
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  if (v12)
  {
    *(v12 + 24) = v13;
  }

  *v13 = v12;

  sub_10000309C(a1);
}

void sub_100002EFC(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 16);
      sub_100002DBC(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[1];

  dispatch_source_cancel(v4);
}

void sub_100002F48(uint64_t a1, uint64_t a2)
{
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();

    mach_msg_destroy(msg);
  }
}

_DWORD *sub_100002FB0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v3 = result[8];
  v4 = os_set_32_ptr_find();
  if (v4)
  {
    v11 = (v4 - qword_100014310);
  }

  else
  {
    v11 = 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = *(v12 + 32);
      sub_100002DBC(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v11[3];
  if ((v14 & 2) == 0)
  {
    goto LABEL_13;
  }

  if ((v14 & 4) != 0)
  {
    sub_100000AB8(7, "do_mach_notify_dead_name freed port %x\n", v5, v6, v7, v8, v9, v10, v3);
LABEL_13:
    sub_1000035A8(v11);
    goto LABEL_14;
  }

  v11[3] = v14 | 4;
LABEL_14:
  result = mach_port_deallocate(mach_task_self_, v3);
  *(a2 + 32) = 0;
  return result;
}

void sub_10000309C(uint64_t *a1)
{
  v2 = a1[6];
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    *(v3 + 8) = v4;
  }

  *v4 = v3;
  sub_100003158(&unk_1000142D8, a1[8], (a1 + 8));
  v5 = *(a1 + 79) & 0xF;
  if (v5 == 3)
  {
    mach_port_deallocate(mach_task_self_, *(a1 + 14));
  }

  else if (v5 == 4 && (a1[7] & 0x80000000) == 0)
  {
    close_NOCANCEL();
  }

  free(a1);
  ++dword_10001437C;

  sub_1000031A4(v2);
}

uint64_t sub_100003158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_64_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete_64", "table.c", 80, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

void sub_1000031A4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (!v2 || (v3 = v2 - 1, (*(a1 + 56) = v3) == 0))
    {
      v4 = dword_100014364;
      if (dword_100014364)
      {
        v5 = 0;
        v6 = qword_100014350;
        v7 = 1;
        v8 = dword_100014364;
        while (1)
        {
          if (v5 > ~qword_100014350)
          {
            goto LABEL_23;
          }

          if (*(qword_100014350 + v5) == a1)
          {
            break;
          }

          v5 += 8;
          ++v7;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        v9 = v7 - 1;
        if (v7 < dword_100014364)
        {
          v10 = v5 + 8;
          v11 = v8 - 1;
          while (!__CFADD__(qword_100014350, v10))
          {
            *(qword_100014350 + 8 * v9) = *(qword_100014350 + v10);
            v10 += 8;
            ++v9;
            if (!--v11)
            {
              v6 = qword_100014350;
              goto LABEL_15;
            }
          }

LABEL_23:
          __break(0x5513u);
          return;
        }

LABEL_15:
        v12 = v4 - 1;
        dword_100014364 = v12;
        if (v12)
        {
          v13 = reallocf(v6, 8 * v12);
        }

        else
        {
          free(v6);
          v13 = 0;
        }

        qword_100014350 = v13;
      }

LABEL_19:
      v14 = *(a1 + 8);
      if (os_set_str_ptr_delete() != a1 + 8)
      {
        __assert_rtn("_nc_table_delete", "table.c", 72, "os_set_delete(&t->set, key) == expected");
      }

      *(a1 + 8) = 0;
      sub_100003158(&unk_1000142B8, *(a1 + 16), a1 + 16);
      free(a1);
      ++dword_100014374;
    }
  }
}

uint64_t sub_1000032FC(char *a1, unsigned int a2, __int128 *a3)
{
  v23 = 0;
  v21 = -1;
  v22 = -1;
  v20 = -1;
  *(&xmmword_1000141A0 + 8) = vaddq_s64(*(&xmmword_1000141A0 + 8), vdupq_n_s64(1uLL));
  v6 = a3[1];
  v18 = *a3;
  v19 = v6;
  sub_1000018E4(&v18, a2, &v22, &v21, &v20, &v23);
  sub_100000AB8(7, "__notify_server_register_plain %s %d %d\n", v7, v8, v9, v10, v11, v12, a1);
  v13 = sub_1000028AC(a1, v20, a2, -1, v22, v21, &v24);
  if (!v13)
  {
    v14 = os_set_64_ptr_find();
    if (v14)
    {
      v15 = (v14 - qword_1000142F0);
    }

    else
    {
      v15 = 0;
    }

    if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
    {
      v16 = a3[1];
      v18 = *a3;
      v19 = v16;
      sub_10000A680(a1, v15, &v18);
    }

    sub_10000293C(v15, v20);
  }

  return v13;
}

void sub_100003424(void *a1)
{
  if (*a1)
  {
    vars0 = v1;
    vars8a = v2;
    qword_100014010 = "BUG IN LIBNOTIFY: port_proc still had clients";
    __break(0xB001u);
  }

  else
  {
    v4 = a1 + 2;
    sub_1000034C4(&unk_100014318, *(a1 + 4), (a1 + 2));
    ++dword_100014384;
    v12 = v4[1];
    if (v12)
    {
      sub_100003510(v12, v5, v6, v7, v8, v9, v10, v11);
    }

    dispatch_release(a1[1]);

    free(a1);
  }
}

uint64_t sub_1000034C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_32_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete_n", "table.c", 76, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

void sub_100003510(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[3];
  if ((v9 & 4) != 0)
  {
    if (*a1)
    {
      qword_100014010 = "BUG IN LIBNOTIFY: port_proc still had clients";
      __break(0xB001u);
    }

    else
    {
      sub_100000AB8(7, "do_mach_notify_dead_name freed port %x\n", a3, a4, a5, a6, a7, a8, a1);

      sub_1000035A8(a1);
    }
  }

  else
  {
    a1[3] = v9 | 4;
  }
}

void sub_1000035A8(unsigned int *a1)
{
  if (*a1)
  {
    vars0 = v1;
    vars8a = v2;
    qword_100014010 = "BUG IN LIBNOTIFY: port_proc still had clients";
    __break(0xB001u);
  }

  else
  {
    v4 = a1 + 2;
    sub_1000034C4(&unk_1000142F8, a1[2], (a1 + 2));
    mach_port_deallocate(mach_task_self_, *v4);
    ++dword_100014384;

    free(a1);
  }
}

char *sub_100003648(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr(result + 40, 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *&v3[v6 + 40];
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_1000032FC(v3 + 40, v11, v13);
      *(a2 + 32) = 0;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_100003754(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 56)))
    {
      if (!*(a1 + 64) && *(a1 + 68) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 52);
        v8 = *(a1 + 60);
        v9 = *(a1 + 100);
        v10[0] = *(a1 + 84);
        v10[1] = v9;
        sub_100003D74(v7, v6, v4, v8, v10);
        *(a2 + 32) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

FILE *sub_100003838(uint64_t a1, uint64_t a2, void *a3, int *a4, int a5, __int128 *a6, int a7)
{
  v33 = -1;
  v34 = -1;
  v32 = -1;
  *a3 = 0;
  v13 = a6[1];
  v35 = *a6;
  v36 = v13;
  sub_1000018E4(&v35, 0xFFFFFFFF, &v34, &v33, &v32, 0);
  if (a5)
  {
    if (v34)
    {
      v14 = a6[1];
      v35 = *a6;
      v36 = v14;
      if (sub_1000086BC(&v35))
      {
        v34 = 0;
      }
    }
  }

  ++qword_100014238;
  ++qword_100014250;
  v15 = os_set_64_ptr_find();
  if (!v15 || qword_1000142F0 == v15)
  {
    v22 = 50;
LABEL_8:
    *a4 = v22;
    *a3 = -1;
    return sub_100000AB8(7, "__notify_server_set_state_3 %d %d %llu [uid %d%s gid %d]\n", v16, v17, v18, v19, v20, v21, v32);
  }

  v24 = v15 - qword_1000142F0;
  v25 = *(*(v15 - qword_1000142F0 + 48) + 8);
  v26 = a6[1];
  v35 = *a6;
  v36 = v26;
  if (!sub_100000920(v25) || a7 && (v31 = a6[1], v35 = *a6, v36 = v31, sandbox_check_by_audit_token()))
  {
    v22 = 7;
    goto LABEL_8;
  }

  v27 = *(v24 + 48);
  if (!v27)
  {
    __assert_rtn("_internal_notify_server_set_state_3", "notify_proc.c", 1298, "c->name_info != NULL");
  }

  v28 = sub_100000A28(*(v27 + 16), a2, v34, v33);
  *a4 = v28;
  if (v28)
  {
    v29 = v28 == 7;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    __assert_rtn("_internal_notify_server_set_state_3", "notify_proc.c", 1300, "*status == NOTIFY_STATUS_OK || *status == NOTIFY_STATUS_NOT_AUTHORIZED");
  }

  v30 = *(*(v24 + 48) + 16);
  *a3 = v30;
  if (v30 != -1)
  {
    return sub_100000AB8(7, "__notify_server_set_state_3 %d %d %llu [%llu] [uid %d%s gid %d]\n", v16, v17, v18, v19, v20, v21, v32);
  }

  return sub_100000AB8(7, "__notify_server_set_state_3 %d %d %llu [uid %d%s gid %d]\n", v16, v17, v18, v19, v20, v21, v32);
}

uint64_t sub_100003A7C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  *v20.val = *(result + 56);
  *&v20.val[4] = v5;
  *atoken.val = *v20.val;
  *&atoken.val[4] = v5;
  v6 = audit_token_to_euid(&atoken);
  *&xmmword_100014200 = xmmword_100014200 + 1;
  sub_100000AB8(7, "__notify_server_suspend_pid %d\n", v7, v8, v9, v10, v11, v12, v4);
  if (v6)
  {
    atoken = v20;
    audit_token_to_pid(&atoken);
    result = sub_100000AB8(4, "__notify_server_suspend_pid %d permission denied for caller %d \n", v13, v14, v15, v16, v17, v18, v4);
  }

  else
  {
    result = os_set_32_ptr_find();
    if (result)
    {
      if (qword_100014330 != result)
      {
        *(result - qword_100014330 + 20) |= 1u;
      }
    }
  }

  *(a2 + 32) = 0;
  return result;
}

void sub_100003BD0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  *v23.val = *(a1 + 56);
  *&v23.val[4] = v5;
  *atoken.val = *v23.val;
  *&atoken.val[4] = v5;
  v6 = audit_token_to_euid(&atoken);
  ++*(&xmmword_100014200 + 1);
  sub_100000AB8(7, "__notify_server_resume_pid %d\n", v7, v8, v9, v10, v11, v12, v4);
  if (v6)
  {
    atoken = v23;
    audit_token_to_pid(&atoken);
    sub_100000AB8(4, "__notify_server_resume_pid %d permission denied for caller %d \n", v13, v14, v15, v16, v17, v18, v4);
  }

  else
  {
    v19 = os_set_32_ptr_find();
    if (v19)
    {
      v20 = v19 - qword_100014330;
      if (v19 != qword_100014330)
      {
        *(v20 + 20) &= ~1u;
        for (i = *v20; i; i = *(i + 16))
        {
          sub_100003D40(i, v20, 0);
        }
      }
    }
  }

  *(a2 + 32) = 0;
}

void sub_100003D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 78) || (v3 = *(a1 + 78) - 1, (*(a1 + 78) = v3) == 0))
  {
    v4 = *(a1 + 79);
    *(a1 + 79) = v4 & 0x5F;
    if ((v4 & 0x40) != 0)
    {
      sub_1000014D0(a1, a2, a3);
    }
  }
}

uint64_t sub_100003D74(uint64_t result, char *a2, int a3, int a4, __int128 *a5)
{
  v23 = -1;
  v24 = -1;
  v22 = -1;
  if (a2 || !a3)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if (a3)
    {
      v8 = (a3 - 1);
      if (__CFADD__(a2, v8))
      {
        __break(0x5513u);
        return result;
      }

      if (!a2[v8])
      {
LABEL_8:
        v9 = a5[1];
        v20 = *a5;
        v21 = v9;
        sub_1000018E4(&v20, 0xFFFFFFFF, &v24, &v23, &v22, 0);
        ++*(&xmmword_100014260 + 1);
        sub_100000AB8(7, "__notify_server_monitor_file %d %d %s 0x%08x\n", v10, v11, v12, v13, v14, v15, v22);
        result = os_set_64_ptr_find();
        if (result)
        {
          v16 = result - qword_1000142F0;
          if (result != qword_1000142F0)
          {
            v17 = *(v16 + 48);
            if (!v17)
            {
              __assert_rtn("__notify_server_monitor_file_2", "notify_proc.c", 1423, "n != NULL");
            }

            v18 = *(v17 + 8);
            v19 = a5[1];
            v20 = *a5;
            v21 = v19;
            return sub_100003F6C(v18, v16, a2, &v20, a4);
          }
        }
      }
    }
  }

  return result;
}

FILE *sub_100003EA8(FILE *result, uint64_t a2)
{
  if ((result->_p & 0x80000000) != 0 || HIDWORD(result->_p) != 48)
  {
    v3 = -304;
  }

  else
  {
    if (!LODWORD(result->_cookie) && HIDWORD(result->_cookie) > 0x1F)
    {
      size = result->_bf._size;
      v5 = *(&result->_bf._size + 1);
      v6 = *(&result->_lbfsize + 1);
      v7 = *(&result->_write + 4);
      v8[0] = *(&result->_read + 4);
      v8[1] = v7;
      result = sub_100003838(size, v5, (a2 + 36), (a2 + 44), v6, v8, 0);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 48;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100003F6C(uint64_t a1, uint64_t a2, char *a3, _OWORD *a4, int a5)
{
  ++qword_100014270;
  if (!a3)
  {
    return 6;
  }

  result = os_set_str_ptr_find();
  v10 = 1;
  if (!result || qword_1000142B0 == result)
  {
    return v10;
  }

  if (!a2)
  {
    return 10;
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 76) - 1;
    if (!__CFADD__(qword_100014398, 8 * v11))
    {
      v12 = *(qword_100014398 + 8 * v11);
      v10 = 6;
      if (*v12 == 2)
      {
        if (!strcmp(a3, **(v12 + 8)))
        {
          return 0;
        }

        else
        {
          return 6;
        }
      }

      return v10;
    }

    goto LABEL_35;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = 1023;
  }

  v14 = a4[1];
  v26[0] = *a4;
  v26[1] = v14;
  v15 = sub_100004310(a3, v26, 0, v13);
  if (!v15)
  {
    return 53;
  }

  v16 = v15;
  *(v15 + 96) = *(a2 + 64);
  v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
  if (!v17)
  {
    __assert_rtn("service_open_path_private", "service.c", 195, "info != NULL");
  }

  v18 = v17;
  *v17 = 2;
  v17[1] = v16;
  if (word_10001440C)
  {
    if (word_10001440C == 0xFFFF)
    {
      __assert_rtn("service_info_add", "service.c", 104, "global.service_info_count != UINT16_MAX");
    }

    v19 = 0;
    v20 = 0;
    result = qword_100014398;
    while (v19 <= ~qword_100014398)
    {
      if (!*(qword_100014398 + 8 * v20))
      {
        *(qword_100014398 + 8 * v20) = v18;
        v22 = v20 + 1;
        goto LABEL_31;
      }

      ++v20;
      v19 += 8;
      if (word_10001440C == v20)
      {
        v21 = 8 * ++word_10001440C;
        result = malloc_type_realloc(qword_100014398, v21, 0x80040B8603338uLL);
        goto LABEL_27;
      }
    }

    goto LABEL_35;
  }

  word_10001440C = 1;
  v21 = 8;
  result = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
LABEL_27:
  qword_100014398 = result;
  v22 = word_10001440C;
  v23 = 8 * (word_10001440C - 1);
  if ((word_10001440C == 0) == v23 <= ~result)
  {
LABEL_35:
    __break(0x5513u);
    goto LABEL_36;
  }

  if (v21 > v23)
  {
    *(result + 8 * (word_10001440C - 1)) = v18;
LABEL_31:
    *(a2 + 76) = v22;
    v24 = *(v16 + 72);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10000A5E0;
    handler[3] = &unk_100010968;
    handler[4] = v16;
    dispatch_source_set_event_handler(v24, handler);
    dispatch_activate(*(v16 + 72));
    return 0;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_100004250(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    sub_100001EC4(a1[8]);
    v3 = os_set_32_ptr_find();
    if (v3)
    {
      v4 = v3 - qword_100014310;
    }

    else
    {
      v4 = 0;
    }

    *(v4 + 12) &= ~1u;
    for (i = *v4; i; i = *(i + 32))
    {
      sub_100003D40(i, 0, v4);
      if (*(v4 + 12))
      {
        break;
      }
    }

    *(a2 + 32) = 0;
  }
}

size_t sub_100004310(char *a1, _OWORD *a2, int a3, __int16 a4)
{
  v8 = qword_1000143A0;
  dispatch_assert_queue_V2(qword_1000143A0);
  if (qword_100014158 != -1)
  {
    dispatch_once(&qword_100014158, &stru_1000108A8);
  }

  if (*a1 == 47)
  {
    result = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040DF2FFA84uLL);
    if (!result)
    {
      __assert_rtn("_path_node_init", "pathwatch.c", 723, "pnode != NULL");
    }

    v10 = result;
    *(result + 8) = 1;
    for (i = *a1; i == 47; i = v12)
    {
      if (a1 == -1)
      {
        goto LABEL_45;
      }

      v12 = *++a1;
    }

    while (1)
    {
LABEL_10:
      v13 = strchr(a1, 47);
      if (!v13)
      {
        v13 = &a1[strlen(a1)];
      }

      v14 = v13 - a1;
      if (v13 == a1)
      {
        break;
      }

      *(v10 + 8) += v14 + 1;
      if (v13)
      {
        result = malloc_type_malloc(v14 + 1, 0x4414ADDCuLL);
        if (!result)
        {
          __assert_rtn("_path_node_init", "pathwatch.c", 747, "name != NULL");
        }

        v15 = result;
        if (a1)
        {
          result = strncpy(result, a1, v13 - a1);
        }

        if (__CFADD__(v15, v14))
        {
          goto LABEL_45;
        }

        if (v14 < 0)
        {
          goto LABEL_46;
        }

        v15[v14] = 0;
      }

      else
      {
        v15 = strdup(a1);
      }

      v16 = *(v10 + 48);
      if (v16)
      {
        v17 = 8 * (v16 + 1);
        result = reallocf(*(v10 + 56), v17);
      }

      else
      {
        result = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
        v17 = 8;
      }

      *(v10 + 56) = result;
      if (!result)
      {
        __assert_rtn("_path_node_init", "pathwatch.c", 763, "pnode->pname != NULL");
      }

      v18 = *(v10 + 48);
      if (__CFADD__(result, 8 * v18))
      {
        goto LABEL_45;
      }

      if (v17 <= 8 * v18)
      {
        goto LABEL_46;
      }

      a1 = 0;
      *(result + 8 * v18) = v15;
      *(v10 + 48) = v18 + 1;
      if (v13)
      {
        a1 = v13;
        if (*v13 == 47)
        {
          a1 = v13;
          while (a1 != -1)
          {
            v19 = *++a1;
            if (v19 != 47)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_45;
        }
      }
    }

    v20 = malloc_type_calloc(1uLL, *(v10 + 8), 0xA2CF18EEuLL);
    *v10 = v20;
    if (!v20)
    {
      __assert_rtn("_path_node_init", "pathwatch.c", 776, "pnode->path != NULL");
    }

    if (!*(v10 + 48))
    {
LABEL_38:
      *(v10 + 104) = 1;
      v24 = a2[1];
      *(v10 + 16) = *a2;
      *(v10 + 32) = v24;
      sub_100004660(v10, 0, 0);
      *(v10 + 72) = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v8);
      *(v10 + 68) = a4 & 0x3FF;
      if (a3)
      {
        *(v10 + 68) = a4 & 0x3FF | 0x20000000;
      }

      return v10;
    }

    v21 = 0;
    v22 = 0;
    while (1)
    {
      result = strlcat(*v10, "/", *(v10 + 8));
      v23 = *(v10 + 56);
      if (__CFADD__(v23, v21))
      {
        break;
      }

      strlcat(*v10, *(v23 + 8 * v22++), *(v10 + 8));
      v21 += 8;
      if (v22 >= *(v10 + 48))
      {
        goto LABEL_38;
      }
    }

LABEL_45:
    __break(0x5513u);
LABEL_46:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_100004660(uint64_t a1, int a2, const char **a3)
{
  if (!a1)
  {
    return;
  }

  memset(&v43, 0, sizeof(v43));
  v6 = *(a1 + 72);
  if (v6)
  {
    if (dispatch_source_testcancel(v6))
    {
      return;
    }
  }

  v7 = *a1;
  v9 = *(a1 + 64);
  v8 = *(a1 + 68);
  v10 = *(a1 + 32);
  *v45.val = *(a1 + 16);
  *&v45.val[4] = v10;
  if (v7)
  {
    memset(&v46, 0, sizeof(v46));
    *(a1 + 64) = 0;
    if (*v7 == 47)
    {
      if (v7 == -1)
      {
LABEL_75:
        __break(0x5513u);
      }

      if (v7[1])
      {
        if ((v8 & 0x20000000) == 0)
        {
          v11 = *(a1 + 32);
          *atoken.val = *(a1 + 16);
          *&atoken.val[4] = v11;
          if (sandbox_check_by_audit_token())
          {
LABEL_10:
            a2 |= 0x40u;
            goto LABEL_18;
          }
        }

        memset(&v46, 0, sizeof(v46));
        if (lstat(v7, &v46))
        {
          goto LABEL_18;
        }

        v12 = v46.st_mode & 0xF000;
        switch(v12)
        {
          case 16384:
            v14 = 0;
            v13 = 0;
            v15 = 3;
            goto LABEL_57;
          case 40960:
            v14 = 0;
            v15 = 2;
            v13 = 1;
            goto LABEL_57;
          case 32768:
            v13 = 0;
            v14 = 1;
            v15 = 1;
LABEL_57:
            *(a1 + 64) = v15;
            if ((v8 & 0x20000000) != 0)
            {
              goto LABEL_18;
            }

            atoken = v45;
            if (!audit_token_to_euid(&atoken))
            {
              goto LABEL_18;
            }

            bzero(__str, 0x401uLL);
            if (!realpath_DARWIN_EXTSN(v7, __str) || qword_100014170 && !strncasecmp(__str, qword_100014170, qword_100014178))
            {
              goto LABEL_18;
            }

            if (v14)
            {
              atoken = v45;
              v36 = audit_token_to_euid(&atoken);
              atoken = v45;
              v37 = audit_token_to_egid(&atoken);
              v38 = v7;
              v39 = 0;
            }

            else
            {
              if (!v13)
              {
                snprintf(__str, 0x400uLL, "%s/.", v7);
                atoken = v45;
                v41 = audit_token_to_euid(&atoken);
                atoken = v45;
                v37 = audit_token_to_egid(&atoken);
                v38 = __str;
                v39 = 0;
                v40 = v41;
                goto LABEL_72;
              }

              atoken = v45;
              v36 = audit_token_to_euid(&atoken);
              atoken = v45;
              v37 = audit_token_to_egid(&atoken);
              v38 = v7;
              v39 = 1;
            }

            v40 = v36;
LABEL_72:
            if (sub_10000A258(v38, v39, v40, v37) != 2)
            {
              goto LABEL_18;
            }

            *(a1 + 64) = 0;
            goto LABEL_10;
        }

        v16 = 4;
      }

      else
      {
        v16 = 3;
      }

      *(a1 + 64) = v16;
    }
  }

LABEL_18:
  if (a3)
  {
    if ((a2 & 0x61) != 0)
    {
      *(a1 + 64) = 0;
      v17 = a2 & 0x60 | 1;
    }

    else
    {
      v17 = 0;
    }

    if (*a3 && *a1 && !strcmp(*a3, *a1))
    {
      v17 |= a2;
    }

    v18 = *(a1 + 68);
    v19 = v17 | (*(a1 + 64) == 0);
    v20 = v17 | 0x80;
    if (!*(a1 + 64))
    {
      v20 = 0;
    }

    if (!v9)
    {
      v19 = v20;
    }

    v21 = v18 & v19 & 0x3FFLL;
    if (v21)
    {
      v22 = *(a1 + 72);
      if ((v18 & 0x10000000) == 0)
      {
        *(a1 + 68) = v18 | 0x10000000;
        if (v22)
        {
          dispatch_suspend(v22);
        }

        v23 = dispatch_time(0, 100000000);
        ++*(a1 + 104);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_10000A3B0;
        block[3] = &unk_1000108E8;
        block[4] = a1;
        dispatch_after(v23, qword_1000143A0, block);
        v22 = *(a1 + 72);
      }

      if (v22)
      {
        dispatch_source_merge_data(v22, v21);
      }
    }
  }

  v24 = *(a1 + 8);
  if (v24 <= 0x400)
  {
    v25 = malloc_type_malloc(v24, 0xF54B7DuLL);
    if (!v25)
    {
      __assert_rtn("_path_node_update", "pathwatch.c", 874, "buf != NULL");
    }
  }

  else
  {
    v25 = &v46;
  }

  sub_1000050F4(a1);
  sub_100004C34(0, 0, a1);
  bzero(v25, *(a1 + 8));
  if (*(a1 + 48))
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = strlen(v25);
      v29 = *(a1 + 8);
      if (v28 + 1 > v29)
      {
        __assert_rtn("_path_node_update", "pathwatch.c", 885, "(strlen(buf) + 1) <= pnode->plen");
      }

      strlcat(v25, "/", v29);
      v30 = *(a1 + 56);
      if (__CFADD__(v30, v26))
      {
        goto LABEL_75;
      }

      v31 = *(v30 + 8 * v27);
      if (!v31)
      {
        __assert_rtn("_path_node_update", "pathwatch.c", 888, "pnode->pname[i] != NULL");
      }

      v32 = strlen(v25);
      v33 = strlen(v31);
      v34 = *(a1 + 8);
      if (v33 + v32 > v34)
      {
        __assert_rtn("_path_node_update", "pathwatch.c", 889, "(strlen(buf) + strlen(pnode->pname[i])) <= pnode->plen");
      }

      strlcat(v25, v31, v34);
      memset(&v43, 0, sizeof(v43));
      if (lstat(v25, &v43) < 0)
      {
        goto LABEL_52;
      }

      v35 = v25;
      if ((v43.st_mode & 0xF000) != 0xA000)
      {
        goto LABEL_50;
      }

      sub_100004C34(v25, 1, a1);
      if (realpath_DARWIN_EXTSN(v25, __str))
      {
        break;
      }

LABEL_51:
      ++v27;
      v26 += 8;
      if (v27 >= *(a1 + 48))
      {
        goto LABEL_52;
      }
    }

    v35 = __str;
LABEL_50:
    sub_100004C34(v35, 0, a1);
    goto LABEL_51;
  }

LABEL_52:
  sub_100005170();
  if (v25 != &v46)
  {
    free(v25);
  }
}

void sub_100004C34(const char *a1, int a2, uint64_t a3)
{
  memset(&v25, 0, sizeof(v25));
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = "/";
  }

  if (*v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "/";
  }

  if (dword_100014160)
  {
    v7 = 0;
    v8 = qword_100014168;
    v9 = ~qword_100014168;
    v10 = 8 * dword_100014160;
    while (v7 <= v9)
    {
      v11 = *(v8 + v7);
      if (v11 && *(v11 + 8) == a2 && !strcmp(v6, *v11))
      {

        sub_100004FDC(v11, a3);
        return;
      }

      v7 += 8;
      if (v10 == v7)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_37;
  }

LABEL_14:
  v12 = open_NOCANCEL();
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    v14 = dispatch_source_create(&_dispatch_source_type_vnode, v12, 0x7FuLL, qword_1000143A0);
    if (v14)
    {
      v15 = v14;
      v16 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B004012F3CC1DuLL);
      if (!v16)
      {
        __assert_rtn("_vnode_create", "pathwatch.c", 430, "vnode != NULL");
      }

      v17 = v16;
      v16[2] = a2;
      v18 = strdup(v6);
      *v17 = v18;
      if (!v18)
      {
        __assert_rtn("_vnode_create", "pathwatch.c", 434, "vnode->path != NULL");
      }

      *(v17 + 12) = v13;
      *(v17 + 48) = v15;
      memset(&v25, 0, sizeof(v25));
      if (!fstat(v13, &v25))
      {
        *(v17 + 16) = v25.st_mtimespec;
        *(v17 + 32) = v25.st_ctimespec;
      }

      sub_100004FDC(v17, a3);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10000A3FC;
      handler[3] = &unk_100010908;
      handler[4] = v17;
      dispatch_source_set_event_handler(v15, handler);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 0x40000000;
      v22[2] = sub_10000A530;
      v22[3] = &unk_100010928;
      v23 = v13;
      dispatch_source_set_cancel_handler(v15, v22);
      if (dword_100014160)
      {
        v19 = 8 * (dword_100014160 + 1);
        v20 = reallocf(qword_100014168, v19);
      }

      else
      {
        v19 = 8;
        v20 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      }

      qword_100014168 = v20;
      if (!v20)
      {
        __assert_rtn("_vnode_create", "pathwatch.c", 460, "_global.vnode != NULL");
      }

      v21 = dword_100014160++;
      if (__CFADD__(v20, 8 * v21))
      {
LABEL_37:
        __break(0x5513u);
        goto LABEL_38;
      }

      if (v19 <= 8 * v21)
      {
LABEL_38:
        __break(1u);
        return;
      }

      v20[v21] = v17;
      dispatch_resume(v15);
    }

    else
    {

      close_NOCANCEL();
    }
  }
}

unint64_t sub_100004FDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    result = *(a1 + 64);
    v7 = ~result;
    while (v5 <= v7)
    {
      if (*(result + v5) == a2)
      {
        return result;
      }

      v5 += 8;
      if (8 * v4 == v5)
      {
        v8 = 0;
        while (v7 >= 8 * v8)
        {
          if (!*(result + 8 * v8))
          {
            v11 = (result + 8 * v8);
            goto LABEL_17;
          }

          if (++v8 == v4)
          {
            v9 = 8 * (v4 + 1);
            result = reallocf(result, v9);
            goto LABEL_12;
          }
        }

        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

  v9 = 8;
  result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
LABEL_12:
  *(a1 + 64) = result;
  if (!result)
  {
    __assert_rtn("_vnode_add_pnode", "pathwatch.c", 319, "vnode->path_node != NULL");
  }

  v10 = *(a1 + 56);
  *(a1 + 56) = v10 + 1;
  if (__CFADD__(result, 8 * v10))
  {
LABEL_20:
    __break(0x5513u);
    goto LABEL_21;
  }

  if (v9 <= 8 * v10)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v11 = (result + 8 * v10);
LABEL_17:
  *v11 = a2;
  return result;
}

uint64_t sub_1000050F4(uint64_t result)
{
  v1 = dword_100014160;
  if (dword_100014160)
  {
    v2 = 0;
    v3 = qword_100014168;
    while (!__CFADD__(v3, 8 * v2))
    {
      v4 = *(v3 + 8 * v2);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 64);
          while (~v7 >= (8 * v6))
          {
            if (*(v7 + 8 * v6) == result)
            {
              *(v7 + 8 * v6) = 0;
              v3 = qword_100014168;
              goto LABEL_12;
            }

            if (++v6 == v5)
            {
              goto LABEL_12;
            }
          }

          break;
        }
      }

LABEL_12:
      if (++v2 == v1)
      {
        return result;
      }
    }

    __break(0x5513u);
  }

  return result;
}

void sub_100005170()
{
  v0 = dword_100014160;
  if (dword_100014160)
  {
    v1 = 0;
    v2 = qword_100014168;
    do
    {
      if (__CFADD__(v2, 8 * v1))
      {
        goto LABEL_54;
      }

      v3 = v1;
      v4 = *(v2 + 8 * v1);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          LODWORD(v6) = 0;
          v7 = *(v4 + 64);
          *(&v9 + 1) = ~v7 >= 0xFFFFFFFFFFFFFFF8;
          *&v9 = 7 - v7;
          v8 = v9 >> 3;
          v10 = *(v4 + 56);
          do
          {
            if (v8 <= v5 - 1)
            {
              goto LABEL_54;
            }

            v11 = *v7;
            v7 += 8;
            if (v11)
            {
              v6 = (v6 + 1);
            }

            else
            {
              v6 = v6;
            }

            --v10;
          }

          while (v10);
          if (v6 != v5)
          {
            if (v6)
            {
              v12 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
              if (!v12)
              {
                __assert_rtn("_vnode_sweep", "pathwatch.c", 515, "new_path_node != NULL");
              }

              v13 = v12;
              v14 = *(v4 + 56);
              if (v14)
              {
                v15 = 0;
                v16 = 0;
                v17 = 8 * v14;
                while (1)
                {
                  v18 = *(v4 + 64);
                  if (__CFADD__(v18, v15))
                  {
                    goto LABEL_54;
                  }

                  v19 = *(v18 + v15);
                  if (v19)
                  {
                    if (~v12 < 8 * v16)
                    {
                      goto LABEL_54;
                    }

                    if (v6 <= v16)
                    {
LABEL_56:
                      __break(1u);
                      return;
                    }

                    *(v12 + 8 * v16++) = v19;
                  }

                  v15 += 8;
                  if (v17 == v15)
                  {
                    goto LABEL_26;
                  }
                }
              }

              v16 = 0;
            }

            else
            {
              v16 = 0;
              v13 = 0;
            }

LABEL_26:
            free(*(v4 + 64));
            *(v4 + 64) = v13;
            *(v4 + 56) = v16;
            v0 = dword_100014160;
            v2 = qword_100014168;
          }
        }
      }

      v1 = v3 + 1;
    }

    while (v3 + 1 < v0);
    if (v0)
    {
      v20 = 0;
      v21 = v0;
      *(&v23 + 1) = ~v2 >= 0xFFFFFFFFFFFFFFF8;
      *&v23 = 7 - v2;
      v22 = v23 >> 3;
      do
      {
        if (v22 <= v0 - 1)
        {
          goto LABEL_54;
        }

        if (*v2)
        {
          if (*(*v2 + 56))
          {
            ++v20;
          }
        }

        v2 += 8;
        --v21;
      }

      while (v21);
      if (v20 != v0)
      {
        if (v20)
        {
          v24 = malloc_type_calloc(v20, 8uLL, 0x2004093837F09uLL);
          if (!v24)
          {
            goto LABEL_55;
          }

          v25 = v24;
          v26 = dword_100014160;
          if (dword_100014160)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = ~v24;
            while (!__CFADD__(qword_100014168, v27))
            {
              v31 = *(qword_100014168 + 8 * v28);
              if (v31)
              {
                if (*(v31 + 56))
                {
                  if (v30 < 8 * v29)
                  {
                    break;
                  }

                  if (v20 <= v29)
                  {
                    goto LABEL_56;
                  }

                  *(v25 + 8 * v29++) = v31;
                }

                else
                {
                  dispatch_source_cancel(*(v31 + 48));
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 0x40000000;
                  block[2] = sub_10000A200;
                  block[3] = &unk_1000108C8;
                  block[4] = v31;
                  dispatch_async(qword_1000143A0, block);
                  v26 = dword_100014160;
                }
              }

              ++v28;
              v27 += 8;
              if (v28 >= v26)
              {
                goto LABEL_51;
              }
            }

LABEL_54:
            __break(0x5513u);
LABEL_55:
            __assert_rtn("_vnode_sweep", "pathwatch.c", 548, "new_source != NULL");
          }

          v29 = 0;
        }

        else
        {
          v29 = 0;
          v25 = 0;
        }

LABEL_51:
        free(qword_100014168);
        qword_100014168 = v25;
        dword_100014160 = v29;
      }
    }
  }
}

const char *sub_100005498(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr((result + 40), 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *&v3[v6 + 40];
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_100000FF8(v3 + 40, (a2 + 36), (a2 + 44), v11, v13);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 48;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000056EC(char *a1, unsigned int a2, int a3, __int128 *a4)
{
  v26 = 0;
  v24 = -1;
  v25 = -1;
  v23 = -1;
  v8 = a4[1];
  v21 = *a4;
  v22 = v8;
  sub_1000018E4(&v21, a2, &v25, &v24, &v23, &v26);
  ++*(&xmmword_1000141A0 + 1);
  *&xmmword_1000141C0 = xmmword_1000141C0 + 1;
  sub_100000AB8(7, "__notify_server_register_signal %s %d %d %d\n", v9, v10, v11, v12, v13, v14, a1);
  if (!a1)
  {
    return 1;
  }

  v15 = v23;
  *&v21 = 0;
  result = sub_100002750(a1, v23, a2, v25, v24, &v21);
  if (!result)
  {
    v17 = v21;
    *(v21 + 79) = *(v21 + 79) & 0xF0 | 5;
    *(v17 + 68) = v15;
    *(v17 + 56) = a3;
    v18 = os_set_64_ptr_find();
    if (v18)
    {
      v19 = (v18 - qword_1000142F0);
    }

    else
    {
      v19 = 0;
    }

    if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
    {
      v20 = a4[1];
      v21 = *a4;
      v22 = v20;
      sub_10000A680(a1, v19, &v21);
    }

    sub_10000293C(v19, v23);
    return 0;
  }

  return result;
}

uint64_t sub_100005850(char *a1, unsigned int a2, mach_port_name_t a3, __int128 *a4)
{
  v26 = 0;
  v24 = -1;
  v25 = -1;
  v23 = -1;
  v8 = a4[1];
  v21 = *a4;
  v22 = v8;
  sub_1000018E4(&v21, a2, &v25, &v24, &v23, &v26);
  ++*(&xmmword_1000141A0 + 1);
  ++*(&xmmword_1000141C0 + 1);
  sub_100000AB8(7, "__notify_server_register_file_descriptor %s %d %d\n", v9, v10, v11, v12, v13, v14, a1);
  v15 = fileport_makefd();
  result = mach_port_deallocate(mach_task_self_, a3);
  if ((v15 & 0x80000000) == 0)
  {
    result = fcntl_NOCANCEL();
    if ((result & 0x80000000) == 0)
    {
      result = fcntl_NOCANCEL();
      if ((result & 0x80000000) == 0)
      {
        if (a1)
        {
          *&v21 = 0;
          result = sub_100002750(a1, v23, a2, v25, v24, &v21);
          if (!result)
          {
            v17 = v21;
            *(v21 + 79) = *(v21 + 79) & 0xF0 | 4;
            *(v17 + 56) = v15;
            v18 = os_set_64_ptr_find();
            if (v18)
            {
              v19 = (v18 - qword_1000142F0);
            }

            else
            {
              v19 = 0;
            }

            if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
            {
              v20 = a4[1];
              v21 = *a4;
              v22 = v20;
              sub_10000A680(a1, v19, &v21);
            }

            return sub_10000293C(v19, v23);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000059EC(char *a1, unsigned int a2, mach_port_name_t a3, __int128 *a4)
{
  v8 = os_set_32_ptr_find();
  if (v8)
  {
    v9 = qword_100014310 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = mach_task_self_;

    return mach_port_deallocate(v10, a3);
  }

  else
  {
    v11 = a4[1];
    v13[0] = *a4;
    v13[1] = v11;
    return sub_100005AA8(a1, a2, a3, v13);
  }
}

uint64_t sub_100005AA8(char *a1, unsigned int a2, mach_port_name_t a3, __int128 *a4)
{
  v30 = 0;
  v28 = -1;
  v29 = -1;
  v27 = -1;
  if (a3 + 1 < 2)
  {
    return 59;
  }

  v9 = a4[1];
  v25 = *a4;
  v26 = v9;
  sub_1000018E4(&v25, a2, &v29, &v28, &v27, &v30);
  ++*(&xmmword_1000141A0 + 1);
  ++qword_1000141D0;
  sub_100000AB8(7, "__notify_server_register_mach_port %s %d %d\n", v10, v11, v12, v13, v14, v15, a1);
  if (a1 && (*&v25 = 0, !sub_100002750(a1, v27, a2, v29, v28, &v25)))
  {
    v16 = v25;
    *(v25 + 79) = *(v25 + 79) & 0xF0 | 3;
    *(v16 + 56) = a3;
    v17 = os_set_64_ptr_find();
    if (v17)
    {
      v18 = (v17 - qword_1000142F0);
    }

    else
    {
      v18 = 0;
    }

    if (!strncmp(a1, "com.apple.system.notify.service.", 0x20uLL))
    {
      v19 = a4[1];
      v25 = *a4;
      v26 = v19;
      sub_10000A680(a1, v18, &v25);
    }

    sub_10000293C(v18, v27);
    v20 = os_set_32_ptr_find();
    if (v20 && (v21 = (v20 - qword_100014310), v20 != qword_100014310))
    {
      v24 = *v21;
      v18[4] = *v21;
      if (v24)
      {
        *(v24 + 40) = v18 + 4;
      }

      result = 0;
      *v21 = v18;
      v18[5] = v21;
    }

    else
    {
      result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      if (result)
      {
        v22 = result;
        ++dword_100014380;
        *result = 0;
        *(result + 8) = a3;
        os_set_32_ptr_insert();
        v23 = *v22;
        v18[4] = *v22;
        if (v23)
        {
          *(v23 + 40) = v18 + 4;
        }

        *v22 = v18;
        v18[5] = v22;
        if (mach_port_insert_right(mach_task_self_, a3, a3, 0x13u))
        {
          sub_100002DBC(v18);
        }

        else
        {
          sub_100001EC4(a3);
        }

        return 0;
      }

      else
      {
        qword_100014010 = "BUG IN LIBNOTIFY: Unable to allocate portproc";
        __break(0xB001u);
      }
    }
  }

  else
  {
    mach_port_deallocate(mach_task_self_, a3);
    return 7;
  }

  return result;
}

char *sub_100005D20(char *result, uint64_t a2, int a3, int a4, int a5, signed int a6, uint64_t a7, unint64_t a8, char *a9, int a10, int a11, int *a12, void *a13, int *a14, _OWORD *a15)
{
  v18 = result;
  pidp[0] = -1;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  if (!a9 && a10)
  {
    goto LABEL_3;
  }

  if (a9)
  {
    if (!a10)
    {
      goto LABEL_3;
    }

    v20 = (a10 - 1);
    if (__CFADD__(a9, v20))
    {
      goto LABEL_41;
    }

    if (a9[v20])
    {
      goto LABEL_3;
    }
  }

  *&xmmword_100014280 = xmmword_100014280 + 1;
  v21 = a15[1];
  *atoken.val = *a15;
  *&atoken.val[4] = v21;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, pidp, 0, 0);
  v42 = a7;
  v23 = a2;
  sub_100000AB8(7, "__notify_server_regenerate %s %d %d %d %u %d %d %llu %s %d\n", v24, v25, v26, v27, v28, v29, v18);
  result = os_set_64_ptr_find();
  if (result && qword_1000142F0 != result)
  {
    v19 = 51;
    goto LABEL_4;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v30 = a15;
      v38 = a15[1];
      *atoken.val = *a15;
      *&atoken.val[4] = v38;
      v32 = sub_1000056EC(v18, a2, a5, &atoken);
      goto LABEL_32;
    }

    if (a3 == 7)
    {
      v30 = a15;
      v33 = a15[1];
      *atoken.val = *a15;
      *&atoken.val[4] = v33;
      v32 = sub_1000029DC(v18, a2, &atoken);
      goto LABEL_32;
    }

LABEL_20:
    v19 = 52;
    goto LABEL_4;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v30 = a15;
      v31 = a15[1];
      *atoken.val = *a15;
      *&atoken.val[4] = v31;
      v32 = sub_1000032FC(v18, a2, &atoken);
LABEL_32:
      *a14 = v32;
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (dword_1000143E0 <= a6)
  {
LABEL_3:
    v19 = 6;
LABEL_4:
    *a14 = v19;
    return result;
  }

  v30 = a15;
  v34 = a15[1];
  *atoken.val = *a15;
  *&atoken.val[4] = v34;
  result = sub_1000023A0(v18, a2, &v46, a12, a13, a14, &atoken);
  if (!*a14)
  {
    v35 = *a12;
    if (v35 != -1)
    {
      v36 = qword_1000143F8;
      if (qword_1000143F8)
      {
        if (v35 < 0 != ~qword_1000143E8 >= (4 * v35))
        {
          v37 = __CFADD__(qword_1000143F8, 4 * a6);
          if (a6 >= 0 != v37)
          {
            *(qword_1000143E8 + 4 * v35) = *(qword_1000143E8 + 4 * v35) + *(qword_1000143F8 + 4 * a6) - 1;
            *(v36 + 4 * a6) = 0;
            v23 = a2;
            goto LABEL_33;
          }
        }

LABEL_41:
        __break(0x5513u);
        return result;
      }
    }
  }

LABEL_33:
  if (a9)
  {
    v39 = v30[1];
    *atoken.val = *v30;
    *&atoken.val[4] = v39;
    sub_100003D74(v23, a9, a10, a11, &atoken);
  }

  result = os_set_64_ptr_find();
  if (result && (v40 = qword_1000142F0, qword_1000142F0 != result))
  {
    *a14 = 0;
    v41 = *&result[-v40 + 48];
    *a13 = v41[2];
    if (v41[4] < a8)
    {
      v41[3] = v42;
    }
  }

  else if (!*a14)
  {
    v19 = 50;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10000605C(mach_port_name_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v4;
  if (audit_token_to_euid(&atoken))
  {
    return mach_port_deallocate(mach_task_self_, a1);
  }

  v5 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v5;
  if (sandbox_check_by_audit_token())
  {
    return mach_port_deallocate(mach_task_self_, a1);
  }

  v6 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v6;
  if (!sub_1000086BC(&atoken))
  {
    return mach_port_deallocate(mach_task_self_, a1);
  }

  v7 = fileport_makefd();
  result = mach_port_deallocate(mach_task_self_, a1);
  if ((v7 & 0x80000000) == 0)
  {
    if ((fcntl_NOCANCEL() & 0x80000000) == 0 && (fcntl_NOCANCEL() & 0x80000000) == 0)
    {
      sub_100006418(0, v7);
    }

    return close_NOCANCEL();
  }

  return result;
}

uint64_t sub_100006154(char *a1, unsigned int a2, _DWORD *a3, mach_port_name_t *a4, __int128 *a5)
{
  *a3 = 0;
  name = 0;
  *a4 = 0;
  *&options.flags = xmmword_10000C538;
  options.reserved[1] = 0;
  if (mach_port_construct(mach_task_self_, &options, 0, &name))
  {
    __assert_rtn("__notify_server_register_mach_port_3", "notify_proc.c", 1844, "kstatus == KERN_SUCCESS");
  }

  if (mach_port_insert_right(mach_task_self_, name, name, 0x14u))
  {
    __assert_rtn("__notify_server_register_mach_port_3", "notify_proc.c", 1848, "kstatus == KERN_SUCCESS");
  }

  v10 = a5[1];
  v12[0] = *a5;
  v12[1] = v10;
  result = sub_100005AA8(a1, a2, name, v12);
  *a3 = result;
  if (result)
  {
    return mach_port_destruct(mach_task_self_, name, 0, 0);
  }

  *a4 = name;
  return result;
}

int64x2_t sub_100006278(const char *a1, int a2, __int128 *a3)
{
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  if (!sandbox_check_by_audit_token())
  {
    v8 = a3[1];
    v9 = *a3;
    v10 = v8;
    v12 = 0;
    sub_100000FF8(a1, &v12, &v11, a2, &v9);
    result = vaddq_s64(*&qword_100014198, xmmword_10000C4E0);
    *&qword_100014198 = result;
  }

  return result;
}

char *sub_100006314(char *a1, uint64_t a2, int a3, int a4, int a5, signed int a6, uint64_t a7, unint64_t a8, char *a9, int a10, int a11, int *a12, void *a13, int *a14, __int128 *a15)
{
  v18 = a15[1];
  v27 = *a15;
  v28 = v18;
  if (sandbox_check_by_audit_token())
  {
    v19 = a15[1];
    v27 = *a15;
    v28 = v19;
    return sub_100005D20(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10, a11, a12, a13, a14, &v27);
  }

  else
  {
    v21 = a15[1];
    v27 = *a15;
    v28 = v21;
    return sub_100005D20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, &v27);
  }
}

uint64_t sub_100006418(int a1, int a2)
{
  if (a2 < 0)
  {
    result = qword_100014150;
    if (!qword_100014150)
    {
      v4 = getpid();
      asprintf(&qword_100014150, "/var/run/notifyd_%u.status", v4);
      result = qword_100014150;
      if (!qword_100014150)
      {
        return result;
      }
    }

    unlink(result);
    result = fopen(qword_100014150, "w");
  }

  else
  {
    result = fdopen(a2, "w");
  }

  v5 = result;
  if (!result)
  {
    return result;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = fopen("/var/run/notifyd_jetsam.log", "r");
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        v8 = fgetc(v7);
        if (v8 == -1)
        {
          break;
        }

        fputc(v8, v5);
      }

      fclose(v7);
    }
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      sub_100007164(v5);
    }

    return fclose(v5);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  if (fprintf(v5, "--- GLOBALS ---\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "%u slots (current id %u)\n", dword_1000143E0, dword_1000143E4) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "%u log_cutoff (default %u)\n", dword_100014400, dword_100014404) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "--- STATISTICS ---\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "post         %llu\n", xmmword_100014180) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    id       %llu\n", qword_100014190) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    name     %llu\n", qword_100014198) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    fetch    %llu\n", xmmword_1000141A0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    no_op    %llu\n", *(&xmmword_100014180 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "register     %llu\n", *(&xmmword_1000141A0 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    plain    %llu\n", unk_1000141B0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    check    %llu\n", qword_1000141B8) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    signal   %llu\n", xmmword_1000141C0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    file     %llu\n", *(&xmmword_1000141C0 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    port     %llu\n", qword_1000141D0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    event    %llu\n", qword_1000141D8) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    common   %llu\n", xmmword_1000141E0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "check        %llu\n", qword_100014210) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "cancel       %llu\n", *(&xmmword_1000141E0 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "cleanup      %llu\n", qword_100014278) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "regenerate   %llu\n", xmmword_100014280) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "checkin      %llu\n", *(&xmmword_100014280 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "suspend      %llu\n", qword_1000141F0) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "resume       %llu\n", qword_1000141F8) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "suspend_pid  %llu\n", xmmword_100014200) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "resume_pid   %llu\n", *(&xmmword_100014200 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "get_state    %llu\n", xmmword_100014218) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    id       %llu\n", unk_100014228) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    client   %llu\n", *(&xmmword_100014218 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    fetch    %llu\n", qword_100014230) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "set_state    %llu\n", qword_100014238) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    id       %llu\n", *(&xmmword_100014240 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    client   %llu\n", xmmword_100014240) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "    fetch    %llu\n", qword_100014250) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "set_owner    %llu\n", qword_100014258) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "set_access   %llu\n", xmmword_100014260) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "monitor      %llu\n", *(&xmmword_100014260 + 1)) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "svc_path     %llu\n", qword_100014270) < 0)
  {
    goto LABEL_141;
  }

  v9 = localtime(&qword_1000143D8);
  strftime(v38, 0x80uLL, "%a, %d %b %Y %T %z", v9);
  if (fprintf(v5, "last reset time was %s\n", v38) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "name         alloc %9u   free %9u   extant %9u\n", dword_100014370, dword_100014374, dword_100014370 - dword_100014374) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "subscription alloc %9u   free %9u   extant %9u\n", dword_100014378, dword_10001437C, dword_100014378 - dword_10001437C) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "portproc     alloc %9u   free %9u   extant %9u\n", dword_100014380, dword_100014384, dword_100014380 - dword_100014384) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  v10 = os_set_32_ptr_count();
  if (fprintf(v5, "port count   %u\n", v10) < 0)
  {
    goto LABEL_141;
  }

  v11 = os_set_32_ptr_count();
  if (fprintf(v5, "proc count   %u\n", v11) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "--- NAME TABLE ---\n") < 0)
  {
    goto LABEL_141;
  }

  *v38 = _NSConcreteStackBlock;
  v39 = 0x40000000;
  v40 = sub_100007B30;
  v41 = &unk_100010760;
  v42 = &v34;
  v43 = v5;
  sub_1000055C4();
  v12 = os_set_str_ptr_count();
  if (fprintf(v5, "--- NAME COUNT %u ---\n", v12) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "--- SUBSCRIPTION TABLE ---\n") < 0)
  {
    goto LABEL_141;
  }

  sub_100005658();
  v13 = os_set_64_ptr_count();
  if (fprintf(v5, "--- SUBSCRIPTION COUNT %u ---\n", v13) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  result = fprintf(v5, "--- CONTROLLED NAME ---\n");
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_141;
  }

  v14 = dword_100014364;
  if (dword_100014364)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (__CFADD__(qword_100014350, v15))
      {
        __break(0x5513u);
LABEL_145:
        __break(0x5500u);
        return result;
      }

      result = fprintf(v5, "%s %u %u %03x\n", *(*(qword_100014350 + v15) + 8), *(*(qword_100014350 + v15) + 40), *(*(qword_100014350 + v15) + 44), *(*(qword_100014350 + v15) + 48));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_141;
      }

      ++v16;
      v14 = dword_100014364;
      v15 += 8;
    }

    while (v16 < dword_100014364);
  }

  if (fprintf(v5, "--- CONTROLLED NAME COUNT %u ---\n", v14) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "--- PUBLIC SERVICE ---\n") < 0)
  {
    goto LABEL_141;
  }

  sub_100005658();
  v17 = os_set_str_ptr_count();
  if (fprintf(v5, "--- PUBLIC SERVICE COUNT %u ---\n", v17) < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "\n") < 0)
  {
    goto LABEL_141;
  }

  if (fprintf(v5, "--- PRIVATE SERVICE ---\n") < 0)
  {
    goto LABEL_141;
  }

  sub_100005658();
  v18 = os_set_64_ptr_count();
  if (fprintf(v5, "--- PRIVATE SERVICE COUNT %u ---\n", v18) < 0 || fprintf(v5, "\n") < 0 || fprintf(v5, "--- PROCESSES ---\n") < 0)
  {
    goto LABEL_141;
  }

  if ((v35[3] & 0x80000000) != 0)
  {
LABEL_140:
    fwrite("-- END --\n", 0xAuLL, 1uLL, v5);
    goto LABEL_141;
  }

  v19 = 0;
  while (1)
  {
    result = os_set_32_ptr_find();
    if (result)
    {
      v33 = (result - qword_100014330);
      if (result != qword_100014330)
      {
        break;
      }
    }

LABEL_138:
    v29 = __OFADD__(v19++, 1);
    if (v29)
    {
      goto LABEL_145;
    }

    if (v19 > *(v35 + 6))
    {
      goto LABEL_140;
    }
  }

  v20 = *v33;
  if (*v33)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *(v20 + 79) & 0xF;
      if (v28 <= 3)
      {
        switch(v28)
        {
          case 1u:
            v29 = __OFADD__(v27++, 1);
            if (v29)
            {
              goto LABEL_145;
            }

            break;
          case 2u:
            v29 = __OFADD__(v26++, 1);
            if (v29)
            {
              goto LABEL_145;
            }

            break;
          case 3u:
            v29 = __OFADD__(v24++, 1);
            if (v29)
            {
              goto LABEL_145;
            }

            break;
        }
      }

      else if ((*(v20 + 79) & 0xFu) > 5)
      {
        if (v28 == 6)
        {
          v29 = __OFADD__(v22++, 1);
          if (v29)
          {
            goto LABEL_145;
          }
        }

        else if (v28 == 7)
        {
          v29 = __OFADD__(v21++, 1);
          if (v29)
          {
            goto LABEL_145;
          }
        }
      }

      else if (v28 == 4)
      {
        v29 = __OFADD__(v25++, 1);
        if (v29)
        {
          goto LABEL_145;
        }
      }

      else if (v28 == 5)
      {
        v29 = __OFADD__(v23++, 1);
        if (v29)
        {
          goto LABEL_145;
        }
      }

      v20 = *(v20 + 16);
      if (!v20)
      {
        goto LABEL_130;
      }
    }
  }

  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
LABEL_130:
  if (fprintf(v5, "pid: %u   ", v19) < 0 || fprintf(v5, "memory %u   plain %u   port %u   file %u   signal %u   event %u   common %u\n", v27, v26, v24, v25, v23, v22, v21) < 0)
  {
    goto LABEL_141;
  }

  v30 = *v33;
  if (!*v33)
  {
LABEL_137:
    result = fprintf(v5, "\n");
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_141;
    }

    goto LABEL_138;
  }

  while (1)
  {
    v31 = *(v30 + 79) & 0xF;
    v32 = "unknown";
    if (v31 <= 7)
    {
      v32 = (&off_100010848)[v31];
    }

    if (fprintf(v5, "  %s: %s\n", v32, *(*(v30 + 48) + 8)) < 0)
    {
      break;
    }

    v30 = *(v30 + 16);
    if (!v30)
    {
      goto LABEL_137;
    }
  }

LABEL_141:
  _Block_object_dispose(&v34, 8);
  return fclose(v5);
}

size_t sub_100007164(FILE *a1)
{
  result = fprintf(a1, "--- GLOBALS ---\n");
  if ((result & 0x80000000) == 0)
  {
    result = fprintf(a1, "%u slots (current id %u)\n", dword_1000143E0, dword_1000143E4);
    if ((result & 0x80000000) == 0)
    {
      result = fprintf(a1, "%u log_cutoff (default %u)\n", dword_100014400, dword_100014404);
      if ((result & 0x80000000) == 0)
      {
        result = fprintf(a1, "\n");
        if ((result & 0x80000000) == 0)
        {
          result = fprintf(a1, "--- STATISTICS ---\n");
          if ((result & 0x80000000) == 0)
          {
            result = fprintf(a1, "post         %llu\n", xmmword_100014180);
            if ((result & 0x80000000) == 0)
            {
              result = fprintf(a1, "    id       %llu\n", qword_100014190);
              if ((result & 0x80000000) == 0)
              {
                result = fprintf(a1, "    name     %llu\n", qword_100014198);
                if ((result & 0x80000000) == 0)
                {
                  result = fprintf(a1, "    fetch    %llu\n", xmmword_1000141A0);
                  if ((result & 0x80000000) == 0)
                  {
                    result = fprintf(a1, "    no_op    %llu\n", *(&xmmword_100014180 + 1));
                    if ((result & 0x80000000) == 0)
                    {
                      result = fprintf(a1, "\n");
                      if ((result & 0x80000000) == 0)
                      {
                        result = fprintf(a1, "register     %llu\n", *(&xmmword_1000141A0 + 1));
                        if ((result & 0x80000000) == 0)
                        {
                          result = fprintf(a1, "    plain    %llu\n", unk_1000141B0);
                          if ((result & 0x80000000) == 0)
                          {
                            result = fprintf(a1, "    check    %llu\n", qword_1000141B8);
                            if ((result & 0x80000000) == 0)
                            {
                              result = fprintf(a1, "    signal   %llu\n", xmmword_1000141C0);
                              if ((result & 0x80000000) == 0)
                              {
                                result = fprintf(a1, "    file     %llu\n", *(&xmmword_1000141C0 + 1));
                                if ((result & 0x80000000) == 0)
                                {
                                  result = fprintf(a1, "    port     %llu\n", qword_1000141D0);
                                  if ((result & 0x80000000) == 0)
                                  {
                                    result = fprintf(a1, "    event    %llu\n", qword_1000141D8);
                                    if ((result & 0x80000000) == 0)
                                    {
                                      result = fprintf(a1, "    common   %llu\n", xmmword_1000141E0);
                                      if ((result & 0x80000000) == 0)
                                      {
                                        result = fprintf(a1, "\n");
                                        if ((result & 0x80000000) == 0)
                                        {
                                          result = fprintf(a1, "check        %llu\n", qword_100014210);
                                          if ((result & 0x80000000) == 0)
                                          {
                                            result = fprintf(a1, "cancel       %llu\n", *(&xmmword_1000141E0 + 1));
                                            if ((result & 0x80000000) == 0)
                                            {
                                              result = fprintf(a1, "cleanup      %llu\n", qword_100014278);
                                              if ((result & 0x80000000) == 0)
                                              {
                                                result = fprintf(a1, "regenerate   %llu\n", xmmword_100014280);
                                                if ((result & 0x80000000) == 0)
                                                {
                                                  result = fprintf(a1, "checkin      %llu\n", *(&xmmword_100014280 + 1));
                                                  if ((result & 0x80000000) == 0)
                                                  {
                                                    result = fprintf(a1, "\n");
                                                    if ((result & 0x80000000) == 0)
                                                    {
                                                      result = fprintf(a1, "suspend      %llu\n", qword_1000141F0);
                                                      if ((result & 0x80000000) == 0)
                                                      {
                                                        result = fprintf(a1, "resume       %llu\n", qword_1000141F8);
                                                        if ((result & 0x80000000) == 0)
                                                        {
                                                          result = fprintf(a1, "suspend_pid  %llu\n", xmmword_100014200);
                                                          if ((result & 0x80000000) == 0)
                                                          {
                                                            result = fprintf(a1, "resume_pid   %llu\n", *(&xmmword_100014200 + 1));
                                                            if ((result & 0x80000000) == 0)
                                                            {
                                                              result = fprintf(a1, "\n");
                                                              if ((result & 0x80000000) == 0)
                                                              {
                                                                result = fprintf(a1, "get_state    %llu\n", xmmword_100014218);
                                                                if ((result & 0x80000000) == 0)
                                                                {
                                                                  result = fprintf(a1, "    id       %llu\n", unk_100014228);
                                                                  if ((result & 0x80000000) == 0)
                                                                  {
                                                                    result = fprintf(a1, "    client   %llu\n", *(&xmmword_100014218 + 1));
                                                                    if ((result & 0x80000000) == 0)
                                                                    {
                                                                      result = fprintf(a1, "    fetch    %llu\n", qword_100014230);
                                                                      if ((result & 0x80000000) == 0)
                                                                      {
                                                                        result = fprintf(a1, "\n");
                                                                        if ((result & 0x80000000) == 0)
                                                                        {
                                                                          result = fprintf(a1, "set_state    %llu\n", qword_100014238);
                                                                          if ((result & 0x80000000) == 0)
                                                                          {
                                                                            result = fprintf(a1, "    id       %llu\n", *(&xmmword_100014240 + 1));
                                                                            if ((result & 0x80000000) == 0)
                                                                            {
                                                                              result = fprintf(a1, "    client   %llu\n", xmmword_100014240);
                                                                              if ((result & 0x80000000) == 0)
                                                                              {
                                                                                result = fprintf(a1, "    fetch    %llu\n", qword_100014250);
                                                                                if ((result & 0x80000000) == 0)
                                                                                {
                                                                                  result = fprintf(a1, "\n");
                                                                                  if ((result & 0x80000000) == 0)
                                                                                  {
                                                                                    result = fprintf(a1, "set_owner    %llu\n", qword_100014258);
                                                                                    if ((result & 0x80000000) == 0)
                                                                                    {
                                                                                      result = fprintf(a1, "\n");
                                                                                      if ((result & 0x80000000) == 0)
                                                                                      {
                                                                                        result = fprintf(a1, "set_access   %llu\n", xmmword_100014260);
                                                                                        if ((result & 0x80000000) == 0)
                                                                                        {
                                                                                          result = fprintf(a1, "\n");
                                                                                          if ((result & 0x80000000) == 0)
                                                                                          {
                                                                                            result = fprintf(a1, "monitor      %llu\n", *(&xmmword_100014260 + 1));
                                                                                            if ((result & 0x80000000) == 0)
                                                                                            {
                                                                                              result = fprintf(a1, "svc_path     %llu\n", qword_100014270);
                                                                                              if ((result & 0x80000000) == 0)
                                                                                              {
                                                                                                v3 = localtime(&qword_1000143D8);
                                                                                                strftime(v12, 0x80uLL, "%a, %d %b %Y %T %z", v3);
                                                                                                result = fprintf(a1, "last reset time was %s\n", v12);
                                                                                                if ((result & 0x80000000) == 0)
                                                                                                {
                                                                                                  result = fprintf(a1, "\n");
                                                                                                  if ((result & 0x80000000) == 0)
                                                                                                  {
                                                                                                    result = fprintf(a1, "name         alloc %9u   free %9u   extant %9u\n", dword_100014370, dword_100014374, dword_100014370 - dword_100014374);
                                                                                                    if ((result & 0x80000000) == 0)
                                                                                                    {
                                                                                                      result = fprintf(a1, "subscription alloc %9u   free %9u   extant %9u\n", dword_100014378, dword_10001437C, dword_100014378 - dword_10001437C);
                                                                                                      if ((result & 0x80000000) == 0)
                                                                                                      {
                                                                                                        result = fprintf(a1, "portproc     alloc %9u   free %9u   extant %9u\n", dword_100014380, dword_100014384, dword_100014380 - dword_100014384);
                                                                                                        if ((result & 0x80000000) == 0)
                                                                                                        {
                                                                                                          result = fprintf(a1, "\n");
                                                                                                          if ((result & 0x80000000) == 0)
                                                                                                          {
                                                                                                            v4 = os_set_32_ptr_count();
                                                                                                            result = fprintf(a1, "port count   %u\n", v4);
                                                                                                            if ((result & 0x80000000) == 0)
                                                                                                            {
                                                                                                              v5 = os_set_32_ptr_count();
                                                                                                              result = fprintf(a1, "proc count   %u\n", v5);
                                                                                                              if ((result & 0x80000000) == 0)
                                                                                                              {
                                                                                                                result = fprintf(a1, "\n");
                                                                                                                if ((result & 0x80000000) == 0)
                                                                                                                {
                                                                                                                  result = fprintf(a1, "--- NAME TABLE ---\n");
                                                                                                                  if ((result & 0x80000000) == 0)
                                                                                                                  {
                                                                                                                    result = fprintf(a1, "Name Info: id, uid, gid, access, refcount, postcount, last hour postcount, slot, val, state\n");
                                                                                                                    if ((result & 0x80000000) == 0)
                                                                                                                    {
                                                                                                                      result = fprintf(a1, "Client Info: client_id, pid,token, lastval, suspend_count, pending, 0, type, type-info\n\n\n");
                                                                                                                      if ((result & 0x80000000) == 0)
                                                                                                                      {
                                                                                                                        sub_1000055C4();
                                                                                                                        v6 = os_set_str_ptr_count();
                                                                                                                        result = fprintf(a1, "--- NAME COUNT %u ---\n", v6);
                                                                                                                        if ((result & 0x80000000) == 0)
                                                                                                                        {
                                                                                                                          result = fprintf(a1, "\n");
                                                                                                                          if ((result & 0x80000000) == 0)
                                                                                                                          {
                                                                                                                            result = fprintf(a1, "--- CONTROLLED NAME ---\n");
                                                                                                                            if ((result & 0x80000000) == 0)
                                                                                                                            {
                                                                                                                              v7 = dword_100014364;
                                                                                                                              if (dword_100014364)
                                                                                                                              {
                                                                                                                                v8 = 0;
                                                                                                                                v9 = 0;
                                                                                                                                while (!__CFADD__(qword_100014350, v8))
                                                                                                                                {
                                                                                                                                  result = fprintf(a1, "%s %u %u %03x\n", *(*(qword_100014350 + v8) + 8), *(*(qword_100014350 + v8) + 40), *(*(qword_100014350 + v8) + 44), *(*(qword_100014350 + v8) + 48));
                                                                                                                                  if ((result & 0x80000000) != 0)
                                                                                                                                  {
                                                                                                                                    return result;
                                                                                                                                  }

                                                                                                                                  ++v9;
                                                                                                                                  v7 = dword_100014364;
                                                                                                                                  v8 += 8;
                                                                                                                                  if (v9 >= dword_100014364)
                                                                                                                                  {
                                                                                                                                    goto LABEL_68;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                __break(0x5513u);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
LABEL_68:
                                                                                                                                result = fprintf(a1, "--- CONTROLLED NAME COUNT %u ---\n", v7);
                                                                                                                                if ((result & 0x80000000) == 0)
                                                                                                                                {
                                                                                                                                  result = fprintf(a1, "\n");
                                                                                                                                  if ((result & 0x80000000) == 0)
                                                                                                                                  {
                                                                                                                                    result = fprintf(a1, "--- PUBLIC SERVICE ---\n");
                                                                                                                                    if ((result & 0x80000000) == 0)
                                                                                                                                    {
                                                                                                                                      sub_100005658();
                                                                                                                                      v10 = os_set_str_ptr_count();
                                                                                                                                      result = fprintf(a1, "--- PUBLIC SERVICE COUNT %u ---\n", v10);
                                                                                                                                      if ((result & 0x80000000) == 0)
                                                                                                                                      {
                                                                                                                                        result = fprintf(a1, "\n");
                                                                                                                                        if ((result & 0x80000000) == 0)
                                                                                                                                        {
                                                                                                                                          result = fprintf(a1, "--- PRIVATE SERVICE ---\n");
                                                                                                                                          if ((result & 0x80000000) == 0)
                                                                                                                                          {
                                                                                                                                            sub_100005658();
                                                                                                                                            v11 = os_set_64_ptr_count();
                                                                                                                                            result = fprintf(a1, "--- PRIVATE SERVICE COUNT %u ---\n", v11);
                                                                                                                                            if ((result & 0x80000000) == 0)
                                                                                                                                            {
                                                                                                                                              result = fprintf(a1, "\n");
                                                                                                                                              if ((result & 0x80000000) == 0)
                                                                                                                                              {
                                                                                                                                                return fwrite("-- END --\n", 0xAuLL, 1uLL, a1);
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100007B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  if (fprintf(v4, "name: %s\n", *(a2 + 8)) < 0 || fprintf(v4, "id: %llu\n", *(a2 + 16)) < 0 || fprintf(v4, "uid: %u\n", *(a2 + 40)) < 0 || fprintf(v4, "gid: %u\n", *(a2 + 44)) < 0 || fprintf(v4, "access: %03x\n", *(a2 + 48)) < 0 || fprintf(v4, "refcount: %u\n", *(a2 + 56)) < 0 || fprintf(v4, "postcount: %u\n", *(a2 + 64)) < 0 || fprintf(v4, "last hour postcount: %u\n", *(a2 + 68)) < 0)
  {
    return fprintf(*(a1 + 40), "\n") >= 0;
  }

  if (*(a2 + 52) == -1)
  {
    v8 = fprintf(v4, "slot: -unassigned-");
    goto LABEL_16;
  }

  result = fprintf(v4, "slot: %u", *(a2 + 52));
  if ((result & 0x80000000) != 0)
  {
    return fprintf(*(a1 + 40), "\n") >= 0;
  }

  v7 = *(a2 + 52);
  if (__CFADD__(qword_1000143F0, 4 * v7))
  {
    goto LABEL_64;
  }

  if (*(qword_1000143F0 + 4 * v7) != -1)
  {
    if (__CFADD__(qword_1000143E8, 4 * v7))
    {
      goto LABEL_64;
    }

    v22 = *(qword_1000143E8 + 4 * v7);
    v8 = fprintf(v4, " = %u (%u)");
LABEL_16:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    return fprintf(*(a1 + 40), "\n") >= 0;
  }

LABEL_17:
  if (fprintf(v4, "\n") < 0)
  {
    return fprintf(*(a1 + 40), "\n") >= 0;
  }

  if (fprintf(v4, "val: %u\n", *(a2 + 60)) < 0)
  {
    return fprintf(*(a1 + 40), "\n") >= 0;
  }

  result = fprintf(v4, "state: %llu\n", *(a2 + 24));
  if ((result & 0x80000000) != 0)
  {
    return fprintf(*(a1 + 40), "\n") >= 0;
  }

  v23 = 0u;
  v24 = 0u;
  v9 = *a2;
  if (*a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(v9 + 17);
      if (v18 != -1 && v18 > *(v5 + 24))
      {
        *(v5 + 24) = v18;
      }

      result = *(v9 + 79) & 0xF;
      if ((*(v9 + 79) & 0xFu) > 3)
      {
        break;
      }

      switch(result)
      {
        case 1:
          DWORD1(v23) = ++v10;
          break;
        case 2:
          DWORD2(v23) = ++v11;
          break;
        case 3:
          HIDWORD(v23) = ++v12;
          break;
        default:
          goto LABEL_40;
      }

LABEL_46:
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_49;
      }
    }

    if ((*(v9 + 79) & 0xFu) > 5)
    {
      if (result == 6)
      {
        if (&v23 > 0xFFFFFFFFFFFFFFE7)
        {
          goto LABEL_64;
        }

        DWORD2(v24) = ++v15;
        goto LABEL_46;
      }

      if (result == 7)
      {
        if (&v23 > 0xFFFFFFFFFFFFFFE3)
        {
          goto LABEL_64;
        }

        HIDWORD(v24) = ++v16;
        goto LABEL_46;
      }
    }

    else
    {
      if (result == 4)
      {
        if (&v23 > 0xFFFFFFFFFFFFFFEFLL)
        {
          goto LABEL_64;
        }

        LODWORD(v24) = ++v13;
        goto LABEL_46;
      }

      if (result == 5)
      {
        if (&v23 > 0xFFFFFFFFFFFFFFEBLL)
        {
          goto LABEL_64;
        }

        DWORD1(v24) = ++v14;
        goto LABEL_46;
      }
    }

LABEL_40:
    LODWORD(v23) = ++v17;
    goto LABEL_46;
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v17 = 0;
LABEL_49:
  v19 = (&v24 + 5) != 0 && &v23 >= 0xFFFFFFFFFFFFFFEBLL;
  if (&v23 <= 0xFFFFFFFFFFFFFFEFLL && !v19)
  {
    v20 = (&v24 + 13) != 0 && &v23 >= 0xFFFFFFFFFFFFFFE3;
    if (&v23 <= 0xFFFFFFFFFFFFFFE7 && !v20)
    {
      if ((fprintf(v4, "types: none %u   memory %u   plain %u   port %u   file %u   signal %u   event %u   common %u\n", v17, v10, v11, v12, v13, v14, v15, v16) & 0x80000000) == 0)
      {
        for (i = *a2; i; i = *i)
        {
          if (fprintf(v4, "\n") < 0)
          {
            break;
          }

          sub_100008108(v4, i);
        }
      }

      return fprintf(*(a1 + 40), "\n") >= 0;
    }
  }

LABEL_64:
  __break(0x5513u);
  return result;
}

uint64_t sub_100007F6C(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 76))
  {
    return 1;
  }

  v2 = *(a2 + 76) - 1;
  if (!__CFADD__(qword_100014398, 8 * v2))
  {
    v3 = *(qword_100014398 + 8 * v2);
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 48);
      v6 = *v3;
      if (!*v3)
      {
        if (fprintf(*(result + 32), "Null service: %s\n", *(v5 + 8)) < 0)
        {
          return 0;
        }

        v6 = *v3;
      }

      if (v6 == 1)
      {
        v7 = *(v5 + 8);
        v8 = **(v3 + 1);
        v9 = fprintf(*(v4 + 32), "Path Service: %s <- %s\n");
      }

      else
      {
        v10 = *(v5 + 8);
        v9 = fprintf(*(v4 + 32), "Unknown service: %s (%u)\n");
      }

      return (v9 & 0x80000000) == 0;
    }

    return 1;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100008040(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 76))
  {
    return 1;
  }

  v2 = *(a2 + 76) - 1;
  if (!__CFADD__(qword_100014398, 8 * v2))
  {
    v4 = result;
    v5 = *(qword_100014398 + 8 * v2);
    v6 = *(a2 + 48);
    v7 = *v5;
    if (!*v5)
    {
      if (fprintf(*(result + 32), "PID %u Null service: %s\n", *(a2 + 68), *(v6 + 8)) < 0)
      {
        return 0;
      }

      v7 = *v5;
    }

    if (v7 != 2)
    {
      return 1;
    }

    v8 = *(v6 + 8);
    return (fprintf(*(v4 + 32), "PID %u Path Service: %s <- %s\n", *(a2 + 68), v8, *v5[1]) & 0x80000000) == 0;
  }

  __break(0x5513u);
  return result;
}

size_t sub_100008108(FILE *a1, uint64_t a2)
{
  result = fprintf(a1, "client_id: %llu\n", *(a2 + 64));
  if ((result & 0x80000000) == 0)
  {
    result = fprintf(a1, "pid: %d\n", *(a2 + 68));
    if ((result & 0x80000000) == 0)
    {
      result = fprintf(a1, "token: %d\n", *(a2 + 64));
      if ((result & 0x80000000) == 0)
      {
        result = fprintf(a1, "lastval: %u\n", *(a2 + 72));
        if ((result & 0x80000000) == 0)
        {
          result = fprintf(a1, "suspend_count: %u\n", *(a2 + 78));
          if ((result & 0x80000000) == 0)
          {
            v5 = *(a2 + 79) & 0xF;
            v6 = v5 > 7 ? "unknown" : (&off_100010848)[v5];
            result = fprintf(a1, "type: %s\n", v6);
            if ((result & 0x80000000) == 0)
            {
              v7 = *(a2 + 79) & 0xF;
              if (v7 <= 4)
              {
                if (v7 == 3)
                {
                  v11 = *(a2 + 56);
                  return fprintf(a1, "mach port: 0x%08x\n");
                }

                else if (v7 == 4)
                {
                  v8 = *(a2 + 56);
                  return fprintf(a1, "fd: %d\n");
                }
              }

              else
              {
                switch(v7)
                {
                  case 5u:
                    v9 = *(a2 + 56);
                    return fprintf(a1, "signal: %d\n");
                  case 6u:
                    v10 = *(a2 + 56);
                    return fprintf(a1, "xpc event: %llu\n");
                  case 7u:

                    return fwrite("common port\n", 0xCuLL, 1uLL, a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1000082BC(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if ((fprintf(v4, "name:%s\n", a2[1]) & 0x80000000) == 0 && (fprintf(v4, "info:%llu,%u,%u,%03x,%u,%u,%u,", a2[2], *(a2 + 10), *(a2 + 11), *(a2 + 12), *(a2 + 14), *(a2 + 16), *(a2 + 17)) & 0x80000000) == 0)
    {
      if (*(a2 + 13) == -1)
      {
        v5 = fprintf(v4, "-1,");
      }

      else
      {
        v15 = *(a2 + 13);
        v5 = fprintf(v4, "%u,");
      }

      if ((v5 & 0x80000000) == 0 && (fprintf(v4, "%u,%llu\n", *(a2 + 15), a2[3]) & 0x80000000) == 0 && (fprintf(v4, "clients:\n") & 0x80000000) == 0)
      {
        for (i = *a2; i; i = *i)
        {
          if ((fprintf(v4, "%llu,%d,%d,%u,%u,%u,", i[8], HIDWORD(i[8]), i[8], *(i + 18), *(i + 78), 0) & 0x80000000) == 0)
          {
            v7 = *(i + 79) & 0xF;
            if (v7 > 4)
            {
              if (v7 != 5)
              {
                if (v7 == 6)
                {
                  v13 = i[7];
                  fprintf(v4, "event,%llu\n");
                  continue;
                }

                if (v7 == 7)
                {
                  v9 = "common-port\n";
                  v10 = 12;
LABEL_25:
                  fwrite(v9, v10, 1uLL, v4);
                  continue;
                }

LABEL_23:
                v9 = "other,0\n";
LABEL_24:
                v10 = 8;
                goto LABEL_25;
              }

              v11 = *(i + 14);
              fprintf(v4, "signal,%d\n");
            }

            else
            {
              if (v7 == 1)
              {
                v9 = "check,0\n";
                goto LABEL_24;
              }

              if (v7 == 3)
              {
                v12 = *(i + 14);
                fprintf(v4, "port,0x%08x\n");
                continue;
              }

              if (v7 != 4)
              {
                goto LABEL_23;
              }

              v8 = *(i + 14);
              fprintf(v4, "fd,%d\n");
            }
          }
        }

        fputc(10, v4);
      }
    }
  }

  return fprintf(*(a1 + 32), "\n") >= 0;
}

uint64_t sub_100008520(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 76))
  {
    return 1;
  }

  v2 = *(a2 + 76) - 1;
  if (!__CFADD__(qword_100014398, 8 * v2))
  {
    v3 = *(qword_100014398 + 8 * v2);
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 48);
      v6 = *v3;
      if (!*v3)
      {
        if (fprintf(*(result + 32), "Null service: %s\n", *(v5 + 8)) < 0)
        {
          return 0;
        }

        v6 = *v3;
      }

      if (v6 == 1)
      {
        v7 = *(v5 + 8);
        v8 = **(v3 + 1);
        v9 = fprintf(*(v4 + 32), "Path Service: %s <- %s\n");
      }

      else
      {
        v10 = *(v5 + 8);
        v9 = fprintf(*(v4 + 32), "Unknown service: %s (%u)\n");
      }

      return (v9 & 0x80000000) == 0;
    }

    return 1;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1000085F4(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 76))
  {
    return 1;
  }

  v2 = *(a2 + 76) - 1;
  if (!__CFADD__(qword_100014398, 8 * v2))
  {
    v4 = result;
    v5 = *(qword_100014398 + 8 * v2);
    v6 = *(a2 + 48);
    v7 = *v5;
    if (!*v5)
    {
      if (fprintf(*(result + 32), "PID %u Null service: %s\n", *(a2 + 68), *(v6 + 8)) < 0)
      {
        return 0;
      }

      v7 = *v5;
    }

    if (v7 != 2)
    {
      return 1;
    }

    v8 = *(v6 + 8);
    return (fprintf(*(v4 + 32), "PID %u Path Service: %s <- %s\n", *(a2 + 68), v8, *v5[1]) & 0x80000000) == 0;
  }

  __break(0x5513u);
  return result;
}

BOOL sub_1000086BC(_OWORD *a1)
{
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  v2 = audit_token_to_pid(&atoken);
  sub_100000AB8(5, "-> has_root_entitlement (PID %d)\n", v3, v4, v5, v6, v7, v8, v2);
  v9 = xpc_copy_entitlement_for_token();
  if (v9)
  {
    v16 = v9;
    value = xpc_BOOL_get_value(v9);
    xpc_release(v16);
  }

  else
  {
    value = 0;
  }

  sub_100000AB8(5, "<- has_root_entitlement (PID %d) = %s\n", v10, v11, v12, v13, v14, v15, v2);
  return value;
}

size_t start(int a1, unint64_t a2)
{
  notify_set_options();
  os_trace_set_mode();
  v100 = xmmword_10000C4F0;
  setrlimit(8, &v100);
  signal(13, 1);
  signal(1, 1);
  signal(30, 1);
  signal(31, 1);
  signal(28, 1);
  xmmword_100014180 = 0u;
  *&qword_100014190 = 0u;
  xmmword_1000141A0 = 0u;
  unk_1000141B0 = 0u;
  xmmword_1000141C0 = 0u;
  *&qword_1000141D0 = 0u;
  xmmword_1000141E0 = 0u;
  *&qword_1000141F0 = 0u;
  xmmword_100014200 = 0u;
  *&qword_100014210 = 0u;
  *(&xmmword_100014218 + 8) = 0u;
  *&qword_100014230 = 0u;
  xmmword_100014240 = 0u;
  *&qword_100014250 = 0u;
  xmmword_100014260 = 0u;
  *&qword_100014270 = 0u;
  xmmword_100014280 = 0u;
  v4 = &unk_100014298;
  v96 = getpagesize() >> 2;
  dword_1000143E0 = v96;
  dword_100014360 = 2;
  qword_100014368 = 0xFFFFFFFF00000000;
  os_set_str_ptr_init();
  qword_1000142B0 = 8;
  os_set_64_ptr_init();
  qword_1000142D0 = 16;
  os_set_64_ptr_init();
  qword_1000142F0 = 64;
  os_set_32_ptr_init();
  qword_100014310 = 8;
  os_set_32_ptr_init();
  qword_100014330 = 16;
  os_map_64_init();
  dword_100014408 = 1;
  v5 = 3;
  dword_100014400 = 3;
  v6 = strdup("/var/log/notifyd.log");
  qword_100014410 = v6;
  dword_1000143E4 = -1;
  if (a1 >= 2)
  {
    v13 = v6;
    v14 = ~a2;
    v15 = 1;
    v97 = "apple.shm.notification_center";
    v99 = "com.apple.system.notification_center";
    v16 = "-log_cutoff";
    while (1)
    {
      if (v15 < 0 == v14 >= 8 * v15)
      {
LABEL_144:
        __break(0x5513u);
LABEL_145:
        __break(0x5500u);
LABEL_146:
        sub_100000AB8(3, "config file %s not owned by root: ignored\n", v7, v8, v9, v10, v11, v12, a2);
LABEL_148:
        *&port_info[0].flags = *"!";
        port_info[0].reserved[1] = 0;
        v90 = mach_port_construct(*v16, port_info, &qword_100014290, &dword_100014390);
        if (v90)
        {
          qword_100014010 = "BUG IN LIBNOTIFY: Unable to allocate Mach notification port";
          qword_100014040 = v90;
          __break(0xB001u);
LABEL_157:
          __break(1u);
        }

        else
        {
          qword_100014388 = dispatch_mach_create_f();
          dispatch_set_qos_class_fallback();
          qword_1000143A8 = dispatch_mach_create_f();
          dispatch_set_qos_class_fallback();
          qword_100014358 = xpc_event_publisher_create();
          xpc_event_publisher_set_handler();
          xpc_event_publisher_set_error_handler();
          xpc_event_publisher_set_throttling();
          xpc_event_publisher_activate();
          v91 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, qword_1000143A0);
          qword_1000143B0 = v91;
          if (v91)
          {
            dispatch_set_context(v91, 0);
            dispatch_source_set_event_handler_f(*(v4 + 0x10), sub_100009C5C);
            dispatch_activate(*(v4 + 0x10));
            v92 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, *v4);
            *(v4 + 0x18) = v92;
            if (v92)
            {
              dispatch_set_context(v92, 1);
              dispatch_source_set_event_handler_f(*(v4 + 0x18), sub_100009C5C);
              dispatch_activate(*(v4 + 0x18));
              v93 = dispatch_source_create(&_dispatch_source_type_signal, 0x1CuLL, 0, *v4);
              *(v4 + 0x20) = v93;
              if (v93)
              {
                dispatch_source_set_event_handler(v93, &stru_100010618);
                dispatch_activate(*(v4 + 0x20));
                *(v4 + 0x28) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *v4);
                v94 = dispatch_walltime(0, 0);
                dispatch_source_set_timer(*(v4 + 0x28), v94, 0x34630B8A000uLL, 0);
                dispatch_source_set_event_handler(*(v4 + 0x28), &stru_100010658);
                dispatch_activate(*(v4 + 0x28));
                if (os_variant_has_internal_diagnostics())
                {
                  v95 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x10uLL, *v4);
                  *(v4 + 0x30) = v95;
                  if (!v95)
                  {
                    __assert_rtn("main", "notifyd.c", 1479, "global.memory_pressure_src != NULL");
                  }

                  dispatch_source_set_event_handler(v95, &stru_100010698);
                  dispatch_activate(qword_1000143D0);
                }

                dispatch_async(qword_1000143A0, &stru_1000106D8);
                dispatch_main();
              }

              __assert_rtn("main", "notifyd.c", 1458, "global.sig_winch_src != NULL");
            }

            __assert_rtn("main", "notifyd.c", 1450, "global.sig_usr2_src != NULL");
          }
        }

        __assert_rtn("main", "notifyd.c", 1442, "global.sig_usr1_src != NULL");
      }

      v4 = *(a2 + 8 * v15);
      if (*v4 == 45 && *(v4 + 1) == 100 && !*(v4 + 2))
      {
        dword_100014400 = 7;
        goto LABEL_25;
      }

      if (!strcmp(*(a2 + 8 * v15), "-log_cutoff"))
      {
        break;
      }

      if (!strcmp(v4, "-log_file"))
      {
        free(v13);
        v4 = v15 + 1;
        if (v15 < -1 == v14 >= 8 * v4)
        {
          goto LABEL_144;
        }

        v13 = strdup(*(a2 + 8 * v4));
        qword_100014410 = v13;
        goto LABEL_18;
      }

      if (!strcmp(v4, "-service"))
      {
        v17 = v15 + 1;
        if (v15 < -1 == v14 >= 8 * v17)
        {
          goto LABEL_144;
        }

        v99 = *(a2 + 8 * v17);
LABEL_24:
        v15 = v17;
        goto LABEL_25;
      }

      if (!strcmp(v4, "-shm"))
      {
        v17 = v15 + 1;
        if (v15 < -1 == v14 >= 8 * v17)
        {
          goto LABEL_144;
        }

        v97 = *(a2 + 8 * v17);
        goto LABEL_24;
      }

      if (!strcmp(v4, "-shm_pages"))
      {
        v4 = v15 + 1;
        if (v15 < -1 == v14 >= 8 * v4)
        {
          goto LABEL_144;
        }

        dword_1000143E0 = atoi(*(a2 + 8 * v4)) * v96;
LABEL_18:
        v15 = v4;
      }

LABEL_25:
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_145;
      }

      if (v15 >= a1)
      {
        v5 = dword_100014400;
        v20 = v97;
        v19 = v99;
        goto LABEL_29;
      }
    }

    v4 = v15 + 1;
    if (v15 < -1 == v14 >= 8 * v4)
    {
      goto LABEL_144;
    }

    dword_100014400 = atoi(*(a2 + 8 * v4));
    goto LABEL_18;
  }

  v19 = "com.apple.system.notification_center";
  v20 = "apple.shm.notification_center";
LABEL_29:
  dword_100014404 = v5;
  v21 = getpid();
  sub_100000AB8(7, "--------------------\nnotifyd start PID %u\n", v22, v23, v24, v25, v26, v27, v21);
  v28 = bootstrap_check_in(bootstrap_port, v19, &dword_100014394);
  if (v28)
  {
    v41 = v28;
    v42 = __stderrp;
    v43 = getpid();
    fprintf(v42, "%d bootstrap_check_in failed (%d)\n", v43, v41);
    exit(1);
  }

  port_info[0].flags = 32;
  v16 = &mach_task_self_;
  mach_port_set_attributes(mach_task_self_, dword_100014394, 1, port_info, 4u);
  v29 = dword_1000143E0;
  if (dword_1000143E0)
  {
    v30 = shm_open(v20, 2, 420);
    v31 = v30;
    if (v30 == -1)
    {
      v32 = shm_open(v20, 514, 420);
      if (v32 == -1)
      {
        v33 = __error();
        v34 = strerror(*v33);
        snprintf(port_info, 0x400uLL, "shm_open %s failed: %s\n", v20, v34);
        qword_100014010 = port_info;
        sub_100000AB8(5, "%s", v35, v36, v37, v38, v39, v40, port_info);
        goto LABEL_41;
      }

      v44 = v32;
    }

    else
    {
      v44 = v30;
    }

    v45 = (4 * v29);
    ftruncate(v44, v45);
    qword_1000143E8 = mmap(0, v45, 3, 1, v44, 0);
    close_NOCANCEL();
    if (v31 != -1)
    {
      v46 = malloc_type_malloc(v45, 0xEA3BCECDuLL);
      qword_1000143F8 = v46;
      if (v46)
      {
        memcpy(v46, qword_1000143E8, v45);
      }
    }

    bzero(qword_1000143E8, v45);
    v47 = malloc_type_malloc(v45, 0x100004052888210uLL);
    qword_1000143F0 = v47;
    if (!v47)
    {
LABEL_41:
      __assert_rtn("main", "notifyd.c", 1380, "status == 0");
    }

    bzero(v47, v45);
    *qword_1000143E8 = getpid();
    *qword_1000143F0 = 1;
    dword_1000143E4 = 0;
  }

  v4 = &qword_1000143A0;
  qword_1000143A0 = dispatch_workloop_create_inactive("com.apple.notifyd.main");
  dispatch_set_qos_class_fallback();
  dispatch_activate(qword_1000143A0);
  memset(&v104, 0, sizeof(v104));
  v102 = 0;
  v48 = (getpid() << 32) | 3;
  v49 = dword_100014408++;
  sub_1000028AC("com.apple.system.notify.ipc_version", 0xFFFFFFFFLL, v49, -1, 0, 0, &v102);
  sub_100000A28(v102, v48, 0, 0);
  a2 = "/etc/notify.conf";
  if (stat("/etc/notify.conf", &v104))
  {
    goto LABEL_148;
  }

  if (v104.st_uid)
  {
    goto LABEL_146;
  }

  if ((v104.st_mode & 2) != 0)
  {
    sub_100000AB8(3, "config file %s is world-writable: ignored\n", v7, v8, v9, v10, v11, v12, "/etc/notify.conf");
    goto LABEL_148;
  }

  v50 = fopen("/etc/notify.conf", "r");
  if (!v50)
  {
    goto LABEL_148;
  }

  v51 = v50;
  v98 = v50;
  while (1)
  {
    do
    {
      if (!fgets(port_info, 1024, v51))
      {
LABEL_162:
        fclose(v51);
        v4 = &qword_1000143A0;
        v16 = &mach_task_self_;
        goto LABEL_148;
      }
    }

    while (!LOBYTE(port_info[0].flags) || LOBYTE(port_info[0].flags) == 35);
    result = strlen(port_info);
    v53 = result - 1;
    if (result - 1 > 0x3FF)
    {
      break;
    }

    if (v53 > ~port_info)
    {
      goto LABEL_144;
    }

    v54 = 0;
    v4 = 0;
    v55 = 0;
    v56 = port_info;
    *(&port_info[0].flags + v53) = 0;
    while (1)
    {
      if (v4 > 0x3FF)
      {
        goto LABEL_157;
      }

      if (!*v56)
      {
        break;
      }

      v57 = 0;
      a2 = ~v56;
      v58 = v55;
      v59 = v4;
      v60 = v56;
      while (1)
      {
        if (v58 > 0x3FF || v59 > 0x3FF)
        {
          goto LABEL_157;
        }

        v61 = *v60;
        v62 = v61 > 0x20;
        v63 = (1 << v61) & 0x100000201;
        if (!v62 && v63 != 0)
        {
          break;
        }

        v65 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_145;
        }

        v57 = v65;
        v58 = v55 + v65;
        v59 = v4 + v65;
        v60 = (v56 + v65);
        if (a2 < v65)
        {
          goto LABEL_144;
        }
      }

      v66 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_145;
      }

      v67 = v66;
      v68 = malloc_type_malloc(v66, 0xB295EEF2uLL);
      v16 = v68;
      v69 = ~v68;
      if (v57 < 1)
      {
        v71 = 0;
      }

      else
      {
        for (i = 0; i != v57; ++i)
        {
          if (i > a2)
          {
            goto LABEL_144;
          }

          if (1024 - v55 == i || 1024 - v4 == i)
          {
            goto LABEL_157;
          }

          if (i > v69)
          {
            goto LABEL_144;
          }

          if (v67 == i || i > v67)
          {
            goto LABEL_157;
          }

          v68[i] = *(v56 + i);
        }

        v71 = v57;
      }

      if (v57 > v69)
      {
        goto LABEL_144;
      }

      if (v57 < 0 || v57 >= v67)
      {
        goto LABEL_157;
      }

      v68[v57] = 0;
      v54 = sub_100009714(v68, v54);
      free(v16);
      if (a2 < v71)
      {
        goto LABEL_144;
      }

      v72 = v55 + v71;
      if (v72 > 0x3FF)
      {
        goto LABEL_157;
      }

      v16 = (v4 + v71);
      if (v16 > 0x3FF)
      {
        goto LABEL_157;
      }

      v73 = (v56 + v71);
      if (!*v73)
      {
        break;
      }

      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_145;
      }

      if (v74 < 0 == a2 >= v74)
      {
        goto LABEL_144;
      }

      if (v55 + v74 > 0x3FF || v4 + v74 > 0x3FF)
      {
        goto LABEL_157;
      }

      if (!*(v56 + v74))
      {
        v54 = sub_100009714(&unk_10000DEF1, v54);
      }

      if (v73 == -1)
      {
        goto LABEL_144;
      }

      v55 = v72 + 1;
      v4 = (v16 + 1);
      v56 = (v73 + 1);
      if (v72 == 1023)
      {
        goto LABEL_157;
      }
    }

    v51 = v98;
    if (v54)
    {
      LODWORD(a2) = 0;
      v75 = v54;
      while (*v75)
      {
        v76 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_145;
        }

        v75 = (v54 + 8 * v76);
        LODWORD(a2) = a2 + 1;
        if (8 * v76 > ~v54)
        {
          goto LABEL_144;
        }
      }

      if (!a2)
      {
        goto LABEL_139;
      }

      v16 = *v54;
      if (!strcasecmp(*v54, "monitor"))
      {
        if (a2 <= 2)
        {
          goto LABEL_139;
        }

        if (v54 > 0xFFFFFFFFFFFFFFF7)
        {
          goto LABEL_144;
        }

        v77 = *(v54 + 8);
        a2 = &qword_1000143A0;
        v78 = dword_100014408++;
        sub_1000028AC(v77, 0xFFFFFFFFLL, v78, -1, 0, 0, &v102);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_1000098B0;
        block[3] = &unk_1000107E0;
        block[4] = v54;
        dispatch_async(qword_1000143A0, block);
      }

      else
      {
        if (!strcasecmp(v16, "set"))
        {
          if (a2 != 1 && a2 < 4)
          {
            if (v54 > 0xFFFFFFFFFFFFFFF7)
            {
              goto LABEL_144;
            }

            v79 = *(v54 + 8);
            v80 = dword_100014408++;
            sub_1000028AC(v79, 0xFFFFFFFFLL, v80, -1, 0, 0, &v102);
            if (a2 == 3)
            {
              if (v54 > 0xFFFFFFFFFFFFFFEFLL)
              {
                goto LABEL_144;
              }

              v81 = atoll(*(v54 + 16));
              sub_100000A28(v102, v81, 0, 0);
            }
          }

          goto LABEL_139;
        }

        if (!strcasecmp(v16, "reserve"))
        {
          if (a2 == 1)
          {
            goto LABEL_139;
          }

          if (a2 < 3)
          {
            v16 = 0;
            v82 = 0;
            goto LABEL_122;
          }

          if (v54 > 0xFFFFFFFFFFFFFFEFLL)
          {
            goto LABEL_144;
          }

          v82 = atoi(*(v54 + 16));
          if (a2 == 3)
          {
            v16 = 0;
LABEL_122:
            LODWORD(a2) = 819;
            goto LABEL_123;
          }

          if (v54 > 0xFFFFFFFFFFFFFFE7)
          {
            goto LABEL_144;
          }

          v16 = atoi(*(v54 + 24));
          if (a2 < 5)
          {
            goto LABEL_122;
          }

          if (v54 > 0xFFFFFFFFFFFFFFDFLL)
          {
            goto LABEL_144;
          }

          LODWORD(a2) = sub_1000099D0(*(v54 + 32));
LABEL_123:
          if (!(v82 | v16))
          {
            goto LABEL_131;
          }

          if (v54 > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_144;
          }

          v83 = *(v54 + 8);
          if (!v83)
          {
            goto LABEL_131;
          }

          v84 = *(v54 + 8);
          v85 = os_set_str_ptr_find();
          if (v85)
          {
            v86 = (v85 - qword_1000142B0);
            if (v86)
            {
              goto LABEL_130;
            }
          }

          v86 = sub_100002BAC(v83);
          if (v86)
          {
            ++v86[14];
LABEL_130:
            v86[10] = v82;
            v86[11] = v16;
            sub_100009FB0(v86);
          }

LABEL_131:
          if (a2 != 819)
          {
            if (v54 > 0xFFFFFFFFFFFFFFF7)
            {
              goto LABEL_144;
            }

            v16 = *(v54 + 8);
            if (v16)
            {
              v87 = *(v54 + 8);
              v88 = os_set_str_ptr_find();
              if (!v88 || (v89 = (v88 - qword_1000142B0)) == 0)
              {
                v89 = sub_100002BAC(v16);
                if (!v89)
                {
                  goto LABEL_139;
                }

                ++*(v89 + 14);
              }

              *(v89 + 12) = a2;
              sub_100009FB0(v89);
            }
          }

LABEL_139:
          sub_100009820(v54);
        }

        else
        {
          v16 = strcasecmp(v16, "quit");
          sub_100009820(v54);
          if (!v16)
          {
            goto LABEL_162;
          }
        }
      }
    }
  }

  __break(0x5512u);
  return result;
}

char *sub_100009714(const char *a1, unint64_t ptr)
{
  v5 = ptr;
  if (!a1)
  {
    return v5;
  }

  if (ptr)
  {
    v4 = 0;
    v2 = 0;
    v7 = 0;
    do
    {
      v3 = (v7 + 1);
      if (!*(ptr + 8 * v2))
      {
        goto LABEL_7;
      }

      v4 = 8 * (v7 + 1);
      v2 = ++v7;
    }

    while (v4 <= ~ptr);
    goto LABEL_6;
  }

  v5 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
  *v5 = strdup(a1);
  if (v5 < 0xFFFFFFFFFFFFFFF8)
  {
    v10 = (v5 + 8);
LABEL_14:
    *v10 = 0;
    return v5;
  }

  while (1)
  {
    do
    {
LABEL_6:
      __break(0x5513u);
LABEL_7:
      v8 = (v7 + 2);
      v5 = malloc_type_realloc(v5, 8 * v8, 0x10040436913F5uLL);
      result = strdup(a1);
    }

    while (v4 > ~v5);
    if (v2 >= v8)
    {
      break;
    }

    *(v5 + 8 * v2) = result;
    if (~v5 >= 8 * v3)
    {
      if (v8 >= v3)
      {
        v10 = (v5 + 8 * v3);
        goto LABEL_14;
      }

      break;
    }
  }

  __break(1u);
  return result;
}

void sub_100009820(unint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = ~a1;
    v4 = a1;
    while (*v4)
    {
      free(*v4);
      *v4 = 0;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(0x5500u);
        return;
      }

      v4 = (a1 + 8 * v5);
      ++v2;
      if (8 * v5 > v3)
      {
        __break(0x5513u);
        break;
      }
    }

    free(a1);
  }
}

void sub_1000098B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 > 0xFFFFFFFFFFFFFFF7 || v3 >= 0xFFFFFFFFFFFFFFF0)
  {
    __break(0x5513u);
  }

  else
  {
    v18 = v1;
    v19 = v2;
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    ++qword_100014270;
    if (v7)
    {
      v8 = os_set_str_ptr_find();
      if (v8 && qword_1000142B0 != v8)
      {
        v14 = 0u;
        v15 = 0u;
        v10 = sub_100004310(v7, &v14, 1, 1023);
        if (v10)
        {
          v11 = v10;
          *(v10 + 80) = strdup(v6);
          v12 = *(v11 + 72);
          *&v14 = _NSConcreteStackBlock;
          *(&v14 + 1) = 0x40000000;
          *&v15 = sub_10000A5CC;
          *(&v15 + 1) = &unk_100010948;
          v16 = v11;
          v17 = 0;
          dispatch_source_set_event_handler(v12, &v14);
          dispatch_activate(*(v11 + 72));
        }
      }
    }

    v13 = *(a1 + 32);

    sub_100009820(v13);
  }
}

const char *sub_1000099D0(const char *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result == 6)
    {
      if (v1 > 0xFFFFFFFFFFFFFFFALL)
      {
        __break(0x5513u);
      }

      else
      {
        if (*v1 == 114)
        {
          v2 = 3;
        }

        else
        {
          v2 = 2;
        }

        if (v1[1] == 119)
        {
          v3 = v2;
        }

        else
        {
          v3 = *v1 == 114;
        }

        if (v1[2] == 114)
        {
          v4 = v3 | 0x10;
        }

        else
        {
          v4 = v3;
        }

        if (v1[3] == 119)
        {
          v5 = v4 | 0x20;
        }

        else
        {
          v5 = v4;
        }

        if (v1[4] == 114)
        {
          v6 = v5 | 0x100;
        }

        else
        {
          v6 = v5;
        }

        if (v1[5] == 119)
        {
          return (v6 | 0x200);
        }

        else
        {
          return v6;
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

BOOL sub_100009B08(id a1, void *a2)
{
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 17) = v2;
  return 1;
}

void sub_100009B18(id a1)
{
  unlink("/var/run/notifyd_jetsam.log");
  v1 = fopen("/var/run/notifyd_jetsam.log", "w");
  if (v1)
  {
    v2 = v1;
    if ((fprintf(v1, "-- JETSAM LOG BEGIN ---\n") & 0x80000000) == 0)
    {
      sub_100007164(v2);
      if ((fprintf(v2, "-- JETSAM LOG END ---\n") & 0x80000000) == 0)
      {

        fclose(v2);
      }
    }
  }
}

void sub_100009C3C(id a1)
{
  if (dword_100014400 == 7)
  {
    v1 = dword_100014404;
  }

  else
  {
    v1 = 7;
  }

  dword_100014400 = v1;
}

void sub_100009C64(id a1, int a2)
{
  qword_100014010 = "BUG IN LIBNOTIFY: Event publisher error";
  qword_100014040 = a2;
  __break(0xB001u);
}

void sub_100009C8C(id a1, unsigned int a2, unint64_t a3, void *a4)
{
  if (a2 == 2)
  {
    dispatch_mach_connect();

    dispatch_mach_connect();
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if (xpc_get_type(a4) != &_xpc_type_dictionary)
      {
        __assert_rtn("notifyd_matching_register", "notify_proc.c", 1659, "xpc_get_type(descriptor) == XPC_TYPE_DICTIONARY");
      }

      string = xpc_dictionary_get_string(a4, "Notification");
      v7 = dword_100014408++;
      ++*(&xmmword_1000141A0 + 1);
      ++qword_1000141D8;
      sub_100000AB8(7, "notifyd_matching_register %s %d %llu\n", v8, v9, v10, v11, v12, v13, string);
      v24 = 0;
      if (!string)
      {
        LOBYTE(v20) = 1;
        goto LABEL_18;
      }

      if (!qword_100014358)
      {
        __assert_rtn("_notify_lib_register_xpc_event", "libnotify.c", 1109, "ns->event_publisher != NULL");
      }

      v20 = sub_100002750(string, 0xFFFFFFFFLL, v7, 0, -101, &v24);
      if (v20)
      {
        if (v20 == 7)
        {
          return;
        }

LABEL_18:
        sub_100000AB8(4, "_notify_lib_register_xpc_event failed with status %u\n", v14, v15, v16, v17, v18, v19, v20);
        return;
      }

      v22 = v24;
      *(v24 + 79) = *(v24 + 79) & 0xF0 | 6;
      *(v22 + 56) = a3;
      v23 = os_set_64_ptr_find();
      if (!v23 || v23 == qword_1000142F0)
      {
        qword_100014010 = "BUG IN LIBNOTIFY: Can't find client after registering an event";
        __break(0xB001u);
      }

      else if (!os_map_64_find())
      {
        os_map_64_insert();
        ++dword_100014380;
        return;
      }

      qword_100014010 = "BUG IN LIBNOTIFY: Event token is already registered";
      qword_100014040 = a3;
      __break(0xB001u);
      return;
    }

    v21 = os_map_64_delete();
    if (v21)
    {
      ++dword_100014384;

      sub_10000309C(v21);
    }
  }
}

void sub_100009F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0;
  if (getpid() != 1)
  {
    v9 = vasprintf(&v10, "BUG IN CLIENT OF NOTIFYD: %s has not dequeued the last %d messages", &a9);
    if (v10)
    {
      if (__OFADD__(v9, 1))
      {
        __break(0x5500u);
      }

      else
      {
        os_fault_with_payload();
        free(v10);
      }
    }
  }
}

uint64_t sub_100009FB0(uint64_t a1)
{
  result = qword_100014350;
  if (qword_100014350)
  {
    if (dword_100014364)
    {
      v3 = 0;
      while (v3 <= ~qword_100014350)
      {
        if (*(qword_100014350 + v3) == a1)
        {
          return result;
        }

        v3 += 8;
        if (8 * dword_100014364 == v3)
        {
          v4 = 8 * (dword_100014364 + 1);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    dword_100014364 = 0;
  }

  v4 = 8;
LABEL_10:
  result = reallocf(qword_100014350, v4);
  v5 = result;
  qword_100014350 = result;
  v6 = dword_100014364;
  if (dword_100014364)
  {
    v7 = 0;
    v8 = 0;
    v9 = ~result;
    v10 = *(a1 + 8);
    v11 = v4 >> 3;
    while (v7 <= v9)
    {
      if (v11 == v8)
      {
        goto LABEL_28;
      }

      result = strcmp(v10, *(*(v5 + 8 * v8) + 8));
      if (result > 0)
      {
        if (v6 <= v8)
        {
          goto LABEL_24;
        }

        v12 = v6;
        while (1)
        {
          v13 = v12 - 1;
          if (~qword_100014350 < 8 * v13 || ~qword_100014350 < 8 * v12)
          {
            goto LABEL_27;
          }

          *(qword_100014350 + 8 * v12--) = *(qword_100014350 + 8 * v13);
          if (v13 <= v8)
          {
            v5 = qword_100014350;
            goto LABEL_24;
          }
        }
      }

      ++v8;
      v7 += 8;
      if (v6 == v8)
      {
        LODWORD(v8) = v6;
        goto LABEL_24;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
LABEL_24:
    if (!__CFADD__(v5, 8 * v8))
    {
      *(v5 + 8 * v8) = a1;
      dword_100014364 = v6 + 1;
      return result;
    }
  }

LABEL_27:
  __break(0x5513u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_10000A120(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = v2 - 1;
    *(a1 + 104) = v3;
    if (v3)
    {
      return;
    }
  }

  sub_1000050F4(a1);
  sub_100005170();
  free(*a1);
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (!v5)
  {
LABEL_12:
    free(v4);
LABEL_13:
    free(*(a1 + 80));
    dispatch_release(*(a1 + 72));

    free(a1);
    return;
  }

  v6 = 0;
  v7 = 8 * v5;
  while (1)
  {
    v8 = *(a1 + 56);
    if (__CFADD__(v8, v6))
    {
      break;
    }

    free(*(v8 + v6));
    v9 = *(a1 + 56);
    if (__CFADD__(v9, v6))
    {
      break;
    }

    *(v9 + v6) = 0;
    v6 += 8;
    if (v7 == v6)
    {
      v4 = *(a1 + 56);
      goto LABEL_12;
    }
  }

  __break(0x5513u);
}

void sub_10000A200(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 48));
  free(**(a1 + 32));
  free(*(*(a1 + 32) + 64));
  v2 = *(a1 + 32);

  free(v2);
}

uint64_t sub_10000A258(const char *a1, int a2, uid_t a3, gid_t a4)
{
  memset(&v16, 0, sizeof(v16));
  v8 = gL1CacheEnabled;
  gL1CacheEnabled = 0;
  *v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = getgroups(16, v17);
  if ((v9 & 0x80000000) != 0)
  {
    return 1;
  }

  v10 = v9;
  v11 = getpwuid(a3);
  if (!v11)
  {
    gL1CacheEnabled = v8;
    return 1;
  }

  v12 = initgroups(v11->pw_name, a4);
  gL1CacheEnabled = v8;
  if (v12 < 0)
  {
    return 1;
  }

  pthread_setugid_np(a3, a4);
  v13 = a2 ? lstat(a1, &v16) : stat(a1, &v16);
  v14 = v13;
  pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
  if (syscall(243, v10, v17, 0) < 0)
  {
    return 1;
  }

  if (!v14)
  {
    return 0;
  }

  if (*__error() == 13)
  {
    return 2;
  }

  return 1;
}

void sub_10000A3B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 68) &= ~0x10000000u;
  dispatch_resume(*(v2 + 72));
  v3 = *(a1 + 32);

  sub_10000A120(v3);
}

uint64_t sub_10000A3FC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    memset(&v6, 0, sizeof(v6));
    data = *(v1 + 48);
    if (data)
    {
      result = dispatch_source_testcancel(*(v1 + 48));
      if (result)
      {
        return result;
      }

      data = dispatch_source_get_data(data);
    }

    result = fstat(*(v1 + 12), &v6);
    if (!result)
    {
      if (*(v1 + 16) != *&v6.st_mtimespec)
      {
        data = data | 0x100;
        *(v1 + 16) = v6.st_mtimespec;
      }

      if (*(v1 + 32) != *&v6.st_ctimespec)
      {
        data = data | 0x200;
        *(v1 + 32) = v6.st_ctimespec;
      }
    }

    if (data)
    {
      *(v1 + 8) = 2;
    }

    if (*(v1 + 56))
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v5 = *(v1 + 64);
        if (__CFADD__(v5, v3))
        {
          break;
        }

        result = sub_100004660(*(v5 + 8 * v4++), data, v1);
        v3 += 8;
        if (v4 >= *(v1 + 56))
        {
          return result;
        }
      }

      __break(0x5513u);
    }
  }

  return result;
}

void sub_10000A538(id a1)
{
  qword_100014170 = 0;
  qword_100014178 = 0;
  if (realpath_DARWIN_EXTSN("/var/db/timezone/zoneinfo", __s))
  {
    qword_100014178 = strlen(__s);
    qword_100014170 = strdup(__s);
    if (!qword_100014170)
    {
      qword_100014178 = 0;
    }
  }
}

void sub_10000A5E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = os_set_64_ptr_find();
  if (v2)
  {
    v3 = v2 - qword_1000142F0;
    if (v3)
    {
      if ((*(v3 + 79) & 0xF) == 1)
      {
        v4 = *(v3 + 48);
        if (v4)
        {
          v5 = *(v4 + 52);
          if (v5 != -1)
          {
            if (__CFADD__(qword_1000143E8, 4 * v5))
            {
              __break(0x5513u);
              return;
            }

            ++*(qword_1000143E8 + 4 * v5);
          }
        }
      }

      sub_1000014D0(v3, 0, 0);
    }
  }
}

uint64_t sub_10000A680(char *a1, uint64_t a2, _OWORD *a3)
{
  result = strncmp(a1, "com.apple.system.notify.service.", 0x20uLL);
  if (!result)
  {
    if (a1 < 0xFFFFFFFFFFFFFFE0)
    {
      result = strncmp(a1 + 32, "path:", 5uLL);
      if (result)
      {
        return result;
      }

      result = strchr(a1, 58);
      if (result)
      {
        if (result == -1)
        {
          goto LABEL_14;
        }

        v7 = (result + 1);
      }

      else
      {
        v7 = 0;
      }

      v8 = strchr(v7, 58);
      if (!v8)
      {
        v10 = 0;
        goto LABEL_12;
      }

      v9 = v8;
      result = strtol(v7, 0, 0);
      if (v9 != -1)
      {
        v10 = result;
        v7 = v9 + 1;
LABEL_12:
        v11 = a3[1];
        v12[0] = *a3;
        v12[1] = v11;
        return sub_100003F6C(a1, a2, v7, v12, v10);
      }
    }

LABEL_14:
    __break(0x5513u);
  }

  return result;
}

_DWORD *sub_10000A774(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 24)
  {
    sub_1000087D4();
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10000A7B4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    sub_1000087B4();
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000A7F4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 0x100000)
    {
      sub_100008794();
    }

    v2 = -300;
  }

  else
  {
    v2 = -304;
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10000A858(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    sub_100008774();
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000A898(uint64_t result)
{
  v1 = *(result + 20);
  v2 = __OFSUB__(v1, 64);
  v3 = v1 - 64;
  if (v2)
  {
    __break(0x5515u);
  }

  else
  {
    if (v3 > 8)
    {
      return 0;
    }

    if (40 * v3 <= ~&unk_1000109A8)
    {
      return *(&off_100010988 + 5 * v3 + 5);
    }
  }

  __break(0x5513u);
  return result;
}

FILE *sub_10000A8F4(FILE *result, uint64_t a2)
{
  if ((result->_p & 0x80000000) != 0 || HIDWORD(result->_p) != 48)
  {
    v3 = -304;
  }

  else
  {
    if (!LODWORD(result->_cookie) && HIDWORD(result->_cookie) > 0x1F)
    {
      size = result->_bf._size;
      v5 = *(&result->_bf._size + 1);
      v6 = *(&result->_lbfsize + 1);
      v7 = *(&result->_write + 4);
      v8[0] = *(&result->_read + 4);
      v8[1] = v7;
      result = sub_100003838(size, v5, (a2 + 36), (a2 + 44), v6, v8, 1);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 48;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

FILE *sub_10000A9B8(FILE *result, uint64_t a2)
{
  if ((result->_p & 0x80000000) != 0 || HIDWORD(result->_p) != 52)
  {
    v3 = -304;
  }

  else
  {
    if (!HIDWORD(result->_cookie) && LODWORD(result->_close) > 0x1F)
    {
      v5 = *&result->_bf._size;
      v4 = *&result->_lbfsize;
      cookie = result->_cookie;
      ub = result->_ub;
      v8[0] = *&result->_seek;
      v8[1] = ub;
      result = sub_100000768(v5, v4, cookie, v8, 1);
      *(a2 + 32) = 0;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10000AA58(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if ((v5 - 625) < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 68);
  if (v6 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v3 = -304;
  if (v5 - 112 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 112)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 52);
  if (v9 != *(v8 + 104))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (__CFADD__(a1, v5))
  {
    __break(0x5513u);
    return;
  }

  if (v5 >= 0x248)
  {
    v10 = 512;
  }

  else
  {
    v10 = v5 - 72;
  }

  if (!memchr((a1 + 72), 0, v10))
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0x7FC) + a1;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v12 = *(v8 + 72);
  v13 = *(v8 + 76);
  v14 = *(a1 + 28);
  v15 = *(v8 + 80);
  v16 = *(v8 + 84);
  v17 = *(v8 + 88);
  v18 = *(a1 + 40);
  v19 = *(v8 + 96);
  v20 = *(v8 + 108);
  v21 = *(v11 + 36);
  v23[0] = *(v11 + 20);
  v23[1] = v21;
  sub_100006314((a1 + 72), v12, v13, v14, v15, v16, v17, v19, v18, v9, v20, (a2 + 36), (a2 + 40), (a2 + 48), v23);
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 40), *(a1 + 52));
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  v22 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v22)
  {
    *(a2 + 4) = 52;
  }
}

void sub_10000AC28(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 4);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 36);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(a1, v4))
  {
    __break(0x5513u);
    return;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  if (memchr((a1 + 40), 0, v8))
  {
    v9 = ((v4 + 3) & 0x7FC) + a1;
    if (!*v9 && *(v9 + 4) > 0x1Fu)
    {
      v11 = *(a1 + v6 + 40);
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      sub_100006278((a1 + 40), v11, v13);
      *(a2 + 32) = 0;
      return;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_10000AD34(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (!v3 && *(result + 4) > 0x1Fu)
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      result = sub_100000E40((a2 + 36), (a2 + 40), (a2 + 44), v6);
      *(a2 + 32) = 0;
      *(a2 + 24) = NDR_record;
      *(a2 + 4) = 48;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

char *sub_10000ADE4(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 557) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 44 < v5 || v4 != v6 + 44)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr(result + 40, 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      *(a2 + 32) = 0x10000000000000;
      v11 = *&v3[v6 + 40];
      v12 = *(v9 + 36);
      v13[0] = *(v9 + 20);
      v13[1] = v12;
      result = sub_100006154(v3 + 40, v11, (a2 + 48), (a2 + 28), v13);
      *(a2 + 40) = NDR_record;
      *a2 |= 0x80000000;
      *(a2 + 4) = 52;
      *(a2 + 24) = 1;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000AF28(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      v3 = result + 40;
      if (*(result + 40) || *(result + 44) < 0x20u)
      {
        v4 = -309;
      }

      else
      {
        v5 = *(result + 28);
        v6 = *(v3 + 36);
        v7[0] = *(v3 + 20);
        v7[1] = v6;
        result = sub_10000605C(v5, v7);
        v4 = 0;
      }
    }

    else
    {
      v4 = -300;
    }
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10000AFE0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if ((v5 - 625) < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 68);
  if (v6 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v3 = -304;
  if (v5 - 112 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 112)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 52);
  if (v9 != *(v8 + 104))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (__CFADD__(a1, v5))
  {
    __break(0x5513u);
    return;
  }

  if (v5 >= 0x248)
  {
    v10 = 512;
  }

  else
  {
    v10 = v5 - 72;
  }

  if (!memchr((a1 + 72), 0, v10))
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0x7FC) + a1;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v12 = *(v8 + 72);
  v13 = *(v8 + 76);
  v14 = *(a1 + 28);
  v15 = *(v8 + 80);
  v16 = *(v8 + 84);
  v17 = *(v8 + 88);
  v18 = *(a1 + 40);
  v19 = *(v8 + 96);
  v20 = *(v8 + 108);
  v21 = *(v11 + 36);
  v23[0] = *(v11 + 20);
  v23[1] = v21;
  sub_100005D20((a1 + 72), v12, v13, v14, v15, v16, v17, v19, v18, v9, v20, (a2 + 36), (a2 + 40), (a2 + 48), v23);
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 40), *(a1 + 52));
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  v22 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v22)
  {
    *(a2 + 4) = 52;
  }
}

uint64_t sub_10000B1B0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    v4 = result;
    v3 = -304;
    if (*(result + 24) != 1)
    {
      goto LABEL_3;
    }

    v5 = *(result + 4);
    if ((v5 - 573) < 0xFFFFFDFF)
    {
      goto LABEL_3;
    }

    if (*(result + 38) << 16 != 1114112)
    {
      v3 = -300;
      goto LABEL_3;
    }

    v6 = *(result + 52);
    if (v6 <= 0x200)
    {
      v3 = -304;
      if (v5 - 60 < v6)
      {
        goto LABEL_3;
      }

      v7 = (v6 + 3) & 0xFFFFFFFC;
      if (v5 != v7 + 60)
      {
        goto LABEL_3;
      }

      if (__CFADD__(result, v5))
      {
        __break(0x5513u);
        return result;
      }

      if (v5 >= 0x238)
      {
        v8 = 512;
      }

      else
      {
        v8 = v5 - 56;
      }

      result = memchr((result + 56), 0, v8);
      if (result)
      {
        v9 = ((v5 + 3) & 0x7FC) + v4;
        if (!*v9 && *(v9 + 4) > 0x1Fu)
        {
          v10 = *(v4 + v7 + 56);
          v11 = *(v4 + 28);
          v12 = *(v9 + 36);
          v13[0] = *(v9 + 20);
          v13[1] = v12;
          result = sub_1000059EC((v4 + 56), v10, v11, v13);
          *(a2 + 32) = 0;
          return result;
        }

        v3 = -309;
        goto LABEL_3;
      }
    }
  }

  v3 = -304;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000B2F0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    v4 = result;
    v3 = -304;
    if (*(result + 24) != 1)
    {
      goto LABEL_3;
    }

    v5 = *(result + 4);
    if ((v5 - 573) < 0xFFFFFDFF)
    {
      goto LABEL_3;
    }

    if (*(result + 38) << 16 != 1114112)
    {
      v3 = -300;
      goto LABEL_3;
    }

    v6 = *(result + 52);
    if (v6 <= 0x200)
    {
      v3 = -304;
      if (v5 - 60 < v6)
      {
        goto LABEL_3;
      }

      v7 = (v6 + 3) & 0xFFFFFFFC;
      if (v5 != v7 + 60)
      {
        goto LABEL_3;
      }

      if (__CFADD__(result, v5))
      {
        __break(0x5513u);
        return result;
      }

      if (v5 >= 0x238)
      {
        v8 = 512;
      }

      else
      {
        v8 = v5 - 56;
      }

      result = memchr((result + 56), 0, v8);
      if (result)
      {
        v9 = ((v5 + 3) & 0x7FC) + v4;
        if (!*v9 && *(v9 + 4) > 0x1Fu)
        {
          v10 = *(v4 + v7 + 56);
          v11 = *(v4 + 28);
          v12 = *(v9 + 36);
          v13[0] = *(v9 + 20);
          v13[1] = v12;
          result = sub_100005850((v4 + 56), v10, v11, v13);
          *(a2 + 32) = 0;
          return result;
        }

        v3 = -309;
        goto LABEL_3;
      }
    }
  }

  v3 = -304;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

char *sub_10000B430(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 561) < 0xFFFFFDFF)
  {
    goto LABEL_17;
  }

  v5 = *(result + 9);
  if (v5 > 0x200)
  {
    goto LABEL_17;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 48 < v5 || v4 != v6 + 48)
  {
    goto LABEL_17;
  }

  if (__CFADD__(result, v4))
  {
    __break(0x5513u);
    return result;
  }

  v8 = v4 >= 0x228 ? 512 : v4 - 40;
  result = memchr(result + 40, 0, v8);
  if (result)
  {
    v9 = &v3[(v4 + 3) & 0x7FC];
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *&v3[v6 + 40];
      v12 = *&v3[v6 + 44];
      v13 = *(v9 + 36);
      v14[0] = *(v9 + 20);
      v14[1] = v13;
      result = sub_1000056EC(v3 + 40, v11, v12, v14);
      *(a2 + 32) = 0;
      return result;
    }

    v10 = -309;
  }

  else
  {
LABEL_17:
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10000B540(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v14[0] = *(a1 + 56);
  v14[1] = v5;
  v15 = -1;
  sub_1000018E4(v14, 0xFFFFFFFF, 0, 0, &v15, 0);
  ++qword_1000141F8;
  sub_100000AB8(7, "__notify_server_resume %d %d\n", v6, v7, v8, v9, v10, v11, v15);
  v12 = os_set_64_ptr_find();
  if (v12 && qword_1000142F0 != v12)
  {
    sub_100003D40(v12 - qword_1000142F0, 0, 0);
    v13 = 0;
  }

  else
  {
    v13 = 50;
  }

  *(a2 + 32) = 0;
  *(a2 + 36) = v13;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
}

uint64_t sub_10000B674(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v16[0] = *(result + 56);
  v16[1] = v5;
  v17 = -1;
  sub_1000018E4(v16, 0xFFFFFFFF, 0, 0, &v17, 0);
  ++qword_1000141F0;
  sub_100000AB8(7, "__notify_server_suspend %d %d\n", v6, v7, v8, v9, v10, v11, v17);
  result = os_set_64_ptr_find();
  if (result && (v12 = qword_1000142F0, qword_1000142F0 != result))
  {
    v14 = result - qword_1000142F0;
    *(result - qword_1000142F0 + 79) |= 0x20u;
    v15 = *(result - v12 + 78);
    v13 = 0;
    if (v15 != 255)
    {
      *(v14 + 78) = v15 + 1;
    }
  }

  else
  {
    v13 = 50;
  }

  *(a2 + 32) = 0;
  *(a2 + 36) = v13;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
  return result;
}

uint64_t sub_10000B7C4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v14[0] = *(result + 56);
  v14[1] = v5;
  v16 = -1;
  v17 = -1;
  v15 = -1;
  *(a2 + 36) = 0;
  sub_1000018E4(v14, 0xFFFFFFFF, &v17, &v16, &v15, 0);
  xmmword_100014218 = vaddq_s64(xmmword_100014218, vdupq_n_s64(1uLL));
  sub_100000AB8(7, "__notify_server_get_state %d %d\n", v6, v7, v8, v9, v10, v11, v15);
  result = os_set_64_ptr_find();
  if (result && qword_1000142F0 != result)
  {
    v13 = *(*(result - qword_1000142F0 + 48) + 16);
    *(a2 + 36) = 0;
    result = os_set_64_ptr_find();
    if (!result || qword_1000142D0 == result)
    {
      *(a2 + 44) = 1;
      __assert_rtn("__notify_server_get_state", "notify_proc.c", 1183, "*status == NOTIFY_STATUS_OK || *status == NOTIFY_STATUS_NOT_AUTHORIZED");
    }

    v12 = 0;
    *(a2 + 36) = *(result - qword_1000142D0 + 24);
  }

  else
  {
    v12 = 50;
  }

  *(a2 + 44) = v12;
  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 48;
  return result;
}

uint64_t sub_10000B964(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v6 = *(result + 72);
  v18 = *(result + 56);
  v5 = v18;
  v19 = v6;
  pidp = -1;
  *(a2 + 36) = 0;
  ++qword_100014210;
  *atoken.val = v5;
  *&atoken.val[4] = v6;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  sub_100000AB8(7, "__notify_server_check %d %d\n", v7, v8, v9, v10, v11, v12, pidp);
  result = os_set_64_ptr_find();
  if (result && qword_1000142F0 != result)
  {
    v14 = *(*(result - qword_1000142F0 + 48) + 60);
    if (v14 == *(result - qword_1000142F0 + 72))
    {
      v15 = 0;
    }

    else
    {
      *(result - qword_1000142F0 + 72) = v14;
      v15 = 1;
    }

    v13 = 0;
    *(a2 + 36) = v15;
  }

  else
  {
    v13 = 2;
  }

  *(a2 + 40) = v13;
  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 44;
  return result;
}

void sub_10000BAF8(_DWORD *a1, int a2)
{
  v2 = a1[5];
  v3 = __OFSUB__(v2, 1000);
  v4 = v2 - 1000;
  if (v3)
  {
    __break(0x5515u);
  }

  else
  {
    if (v4 > 0x20)
    {
      return;
    }

    if (40 * v4 <= ~&unk_100010B30)
    {
      v5 = *(&off_100010B10 + 5 * v4 + 5);
      return;
    }
  }

  __break(0x5513u);
  _Block_object_dispose(a1, a2);
}