uint64_t sub_100000970(const char **a1)
{
  byte_10004799D = 1;
  v1 = strdup(*a1);
  if (!v1)
  {
    novm();
  }

  v2 = v1;
  v3 = getuid();
  seteuid(v3);
  v4 = fopen(v2, "r");
  seteuid(0);
  if (!v4)
  {
    option_error("unable to open user login data file %s", v5, v6, v7, v8, v9, v10, v11, v2);
    return 0;
  }

  sub_1000031D0(v4, v2);
  qword_10004A200 = v2;
  if (!fgets(__s, 255, v4) || !fgets(v22, 255, v4))
  {
    fclose(v4);
    option_error("unable to read user login data file %s", v15, v16, v17, v18, v19, v20, v21, v2);
    return 0;
  }

  fclose(v4);
  v12 = strlen(__s);
  if (v12 && __s[v12 - 1] == 10)
  {
    __s[v12 - 1] = 0;
  }

  v13 = strlen(v22);
  if (v13 && v22[v13 - 1] == 10)
  {
    v22[v13 - 1] = 0;
  }

  if (override_value("user", option_priority, v2))
  {
    __strlcpy_chk();
  }

  if (override_value("passwd", option_priority, v2))
  {
    __strlcpy_chk();
  }

  return 1;
}

uint64_t sub_100000B94(const char **a1)
{
  v2 = getgrnam(*a1);
  if (v2)
  {
    v10 = ngroups;
    if (ngroups < 1)
    {
      return 1;
    }

    else
    {
      v11 = &groups;
      while (1)
      {
        v12 = *v11++;
        if (v12 == v2->gr_gid)
        {
          break;
        }

        if (!--v10)
        {
          return 1;
        }
      }

      result = 1;
      privileged = 1;
    }
  }

  else
  {
    option_error("group %s is unknown", v3, v4, v5, v6, v7, v8, v9, *a1);
    return 0;
  }

  return result;
}

uint64_t sub_100000C30(const char **a1)
{
  v1 = *a1;
  v2 = strlen(*a1);
  v3 = malloc_type_malloc(v2 + 17, 0x30040E4270A41uLL);
  if (!v3)
  {
    novm();
  }

  v4 = v3;
  v5 = v3 + 2;
  *v4 = qword_10004A220;
  v4[1] = v5;
  memcpy(v5, v1, v2 + 1);
  qword_10004A220 = v4;
  return 1;
}

uint64_t sub_100000CB4(const char **a1)
{
  v1 = *a1;
  v2 = strlen(*a1);
  v3 = malloc_type_malloc(v2 + 17, 0x30040E4270A41uLL);
  if (!v3)
  {
    novm();
  }

  v4 = v3;
  v5 = v3 + 2;
  *v4 = qword_10004A240;
  v4[1] = v5;
  memcpy(v5, v1, v2 + 1);
  qword_10004A240 = v4;
  return 1;
}

void link_terminated()
{
  if (phase)
  {
    if (pap_logout_hook)
    {
      pap_logout_hook();
    }

    else if (byte_10004A208 == 1)
    {
      if (devnam ^ 0x7665642F | byte_100048CEC ^ 0x2F)
      {
        v0 = &devnam;
      }

      else
      {
        v0 = &unk_100048CED;
      }

      bzero(&v9, 0x280uLL);
      v9.ut_type = -16376;
      strncpy(v9.ut_line, v0, 0x20uLL);
      pututxline(&v9);
      byte_10004A208 = 0;
    }

    new_phase(0);
    notice("Connection terminated.", v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t link_down(uint64_t a1)
{
  result = notify(link_down_notifier, 0);
  byte_10004A20C = 0;
  if (byte_10004A210 == 1 && dword_10004A214 == 0)
  {
    update_link_stats(a1);
    byte_10004A210 = 0;
    result = sub_100000F78("/etc/ppp/auth-down");
  }

  v4 = protocols;
  if (protocols)
  {
    v5 = &off_100043898;
    do
    {
      if (*(v4 + 80))
      {
        v6 = *v4;
        if (v6 != 49185)
        {
          v7 = *(v4 + 5);
          if (v7)
          {
            result = v7(a1);
            v6 = *v4;
          }

          if (v6 >> 14 <= 2)
          {
            v8 = *(v4 + 7);
            if (v8)
            {
              result = v8(a1, "LCP down");
            }
          }
        }
      }

      v9 = *v5++;
      v4 = v9;
    }

    while (v9);
  }

  dword_10004A218 = 0;
  dword_10004A21C = 0;
  if (phase)
  {

    return new_phase(9);
  }

  return result;
}

uint64_t sub_100000F78(char *a1)
{
  v6[7] = 0;
  v2 = getuid();
  v3 = getpwuid(v2);
  if (!v3 || (pw_name = v3->pw_name) == 0)
  {
    getuid();
    pw_name = v7;
    slprintf(v7, 32, "%d");
  }

  slprintf(v8, 32, "%d");
  v6[0] = a1;
  v6[1] = &ifname;
  v6[2] = &peer_authname;
  v6[3] = pw_name;
  v6[4] = &devnam;
  v6[5] = v8;
  v6[6] = 0;
  result = run_program(a1, v6, 0, sub_100003B38, 0);
  dword_10004A214 = result;
  return result;
}

void link_established(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 17 * a1;
  v10 = protocols;
  if (protocols)
  {
    v11 = &off_100043898;
    do
    {
      if (*v10 != 49185)
      {
        if (*(v10 + 80))
        {
          v12 = *(v10 + 4);
          if (v12)
          {
            v12(a1);
          }
        }
      }

      v13 = *v11++;
      v10 = v13;
    }

    while (v13);
  }

  v14 = &lcp_gotoptions + 4 * v9;
  v15 = auth_required;
  if (auth_required)
  {
    v16 = 1;
  }

  else
  {
    v16 = qword_10004A220 == 0;
  }

  if (!v16)
  {
    sub_1000013D4(a1, 0, 0);
    v15 = auth_required;
  }

  if (v15 && !v14[5] && !v14[6] && !v14[7])
  {
    if (qword_10004A220)
    {
      sub_1000013D4(a1, 0, 0);
    }

    else
    {
      if (*(&lcp_wantoptions + 68 * a1 + 5))
      {
        v40 = uselogin == 0;
      }

      else
      {
        v40 = 0;
      }

      if (!v40 || !sub_1000017B8(a1))
      {
        warning("peer refused to authenticate: terminating link", a2, a3, a4, a5, a6, a7, a8, v47);
        lcp_close(a1, "peer refused to authenticate", v41, v42, v43, v44, v45, v46);
        *status = 11;
        return;
      }
    }
  }

  v17 = &lcp_hisoptions + 4 * v9;
  new_phase(5);
  if (v14[7])
  {
    EapAuthPeer(a1, &our_name, v19, v20, v21, v22, v23, v24);
    v25 = 0;
    v26 = 32;
  }

  else if (v14[6])
  {
    v27 = v14[24];
    if (v27)
    {
      v28 = 129;
    }

    else if ((v27 & 2) != 0)
    {
      v28 = 128;
    }

    else
    {
      v28 = (v27 << 29 >> 31) & 5;
    }

    chap_auth_peer(a1, &our_name, v28, v20, v21, v22, v23, v24, v47);
    v25 = 0;
    v26 = 8;
  }

  else if (v14[5])
  {
    upap_authpeer(a1);
    v25 = 0;
    v26 = 2;
  }

  else
  {
    v26 = 0;
    v25 = 1;
  }

  if (v17[7])
  {
    EapAuthWithPeer(a1);
    v29 = 16;
LABEL_44:
    v26 |= v29;
    dword_10004A22C[a1] = v26;
    auth_done[a1] = 0;
LABEL_45:
    v39 = auth_start_notify;

    notify(v39, v26);
    return;
  }

  if (v17[6])
  {
    v30 = v17[24];
    if (v30)
    {
      v31 = 129;
    }

    else if ((v30 & 2) != 0)
    {
      v31 = 128;
    }

    else
    {
      v31 = (v30 << 29 >> 31) & 5;
    }

    chap_auth_with_peer(a1, &user, v31, v20, v21, v22, v23, v24, v47);
    v29 = 4;
    goto LABEL_44;
  }

  if (v17[5])
  {
    if (!passwd)
    {
      byte_10004A228 = 1;
      if (!sub_100001918(&passwd))
      {
        error("No secret found for PAP login", v32, v33, v34, v35, v36, v37, v38, v47);
      }
    }

    upap_authwithpeer(a1, &user, &passwd);
    v29 = 1;
    goto LABEL_44;
  }

  dword_10004A22C[a1] = v26;
  auth_done[a1] = 0;
  if ((v25 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_100001A28(a1, v18, v19, v20, v21, v22, v23, v24);
}

void *sub_1000013D4(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v58 = a2;
  v6 = qword_10004A238[a1];
  if (v6)
  {
    free(v6);
  }

  qword_10004A238[a1] = 0;
  result = qword_10004A248;
  if (qword_10004A248)
  {
    do
    {
      v8 = *result;
      free(result);
      result = v8;
    }

    while (v8);
  }

  qword_10004A248 = a3;
  for (i = 0; v4; v4 = *v4)
  {
    ++i;
  }

  v10 = qword_10004A220;
  if (qword_10004A220)
  {
    v11 = 0;
    do
    {
      ++v11;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 + i;
  if (!v12)
  {
    return result;
  }

  result = malloc_type_malloc(12 * (v12 + 1), 0x10000403E1C8BA9uLL);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v54 = &ipcp_wantoptions + 52 * a1;
  v55 = a1;
  v14 = &v58;
  do
  {
    v15 = v14;
    v14 = *v14;
  }

  while (v14);
  *v15 = qword_10004A220;
  v16 = v58;
  if (!v58)
  {
    v56 = 0;
    v17 = 0;
    goto LABEL_68;
  }

  v56 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v16[1];
    v19 = *v18;
    if (v19 == 42)
    {
      break;
    }

    if (v19 == 45 && !v18[1])
    {
      goto LABEL_68;
    }

LABEL_23:
    v20 = v13 + 3 * v17;
    *v20 = 1;
    if (*v18 == 33)
    {
      *v20 = 0;
      ++v18;
    }

    v21 = strchr(v18, 47);
    v22 = v21;
    if (v21)
    {
      __endptr = 0;
      v23 = strtol(v21 + 1, &__endptr, 10);
      v30 = "invalid address length %v in auth. address list";
      if ((v23 - 33) < 0xFFFFFFE0 || ((v31 = *__endptr, v31 != 43) ? (v32 = 0) : (v32 = ifunit + 1, v31 = __endptr[1]), v30 = "invalid address length syntax: %v", v31))
      {
        warning(v30, v30, v24, v25, v26, v27, v28, v29, v22 + 1);
        goto LABEL_64;
      }

      *v22 = 0;
      v33 = -1 << (32 - v23);
    }

    else
    {
      v32 = 0;
      v33 = -1;
    }

    v34 = gethostbyname(v18);
    if (v34 && v34->h_addrtype == 2)
    {
      v42 = **v34->h_addr_list;
      if (v22)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v43 = getnetbyname(v18);
      if (!v43 || v43->n_addrtype != 2)
      {
        v42 = inet_addr(v18);
        if (!v22)
        {
          goto LABEL_52;
        }

LABEL_51:
        *v22 = 47;
        goto LABEL_52;
      }

      n_net = v43->n_net;
      v42 = htonl();
      if (v22)
      {
        goto LABEL_51;
      }

      v45 = ntohl();
      if (v45 >> 29 == 6)
      {
        v46 = -256;
      }

      else
      {
        v46 = v33;
      }

      if (v45 >> 30 == 2)
      {
        v47 = -65536;
      }

      else
      {
        v47 = v46;
      }

      if (v45 < 0)
      {
        v33 = v47;
      }

      else
      {
        v33 = -16777216;
      }
    }

LABEL_52:
    if (v42 == -1)
    {
      warning("unknown host %s in auth. address list", v35, v36, v37, v38, v39, v40, v41, v16[1]);
    }

    else
    {
      if (!v32)
      {
        goto LABEL_56;
      }

      if (v32 < ~v33)
      {
        ntohl();
        v42 = htonl();
        v33 = -1;
LABEL_56:
        v48 = htonl();
        v20[1] = v48 & v42;
        v20[2] = v48;
        ++v17;
        v49 = v56;
        if (v56)
        {
          v50 = 0;
        }

        else
        {
          v50 = v33 == -1;
        }

        if (v50)
        {
          v49 = v42;
        }

        v56 = v49;
        goto LABEL_64;
      }

      warning("interface unit %d too large for subnet %v", v35, v36, v37, v38, v39, v40, v41, ifunit);
    }

LABEL_64:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_68;
    }
  }

  if (v18[1])
  {
    goto LABEL_23;
  }

  v51 = v13 + 12 * v17;
  *(v51 + 2) = 0;
  *v51 = 1;
  ++v17;
LABEL_68:
  *v15 = 0;
  v52 = v13 + 12 * v17;
  *v52 = 0;
  *(v52 + 2) = 0;
  result = v55;
  qword_10004A238[v55] = v13;
  if (v56)
  {
    v53 = *(v54 + 8);
    if (!v53 || (result = auth_ip_addr(v55, v53), !result))
    {
      *(v54 + 8) = v56;
      if (v17 >= 2)
      {
        v54[8] = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000017B8(void *a1)
{
  v12 = 0;
  v13 = 0;
  if (null_auth_hook)
  {
    v2 = null_auth_hook(&v13, &v12);
    if (v2 > 0)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  v3 = fopen("/etc/ppp/pap-secrets", "r");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000031D0(v3, "/etc/ppp/pap-secrets");
  v5 = sub_100003248(v4, &unk_10002F9F2, &our_name, v14, &v13, &v12, "/etc/ppp/pap-secrets", 0);
  v6 = v14[0] || v5 < 0;
  v2 = !v6;
  bzero(v14, 0x400uLL);
  fclose(v4);
  if (v2 == 1)
  {
LABEL_11:
    sub_1000013D4(a1, v13, v12);
  }

  else
  {
    v10 = v12;
    if (v12)
    {
      do
      {
        v11 = *v10;
        free(v10);
        v10 = v11;
      }

      while (v11);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = v13;
  if (v13)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  return v2;
}

uint64_t sub_100001918(char *a1)
{
  if (!pap_passwd_hook || (result = pap_passwd_hook(&user, a1), (result & 0x80000000) != 0))
  {
    result = fopen("/etc/ppp/pap-secrets", "r");
    if (result)
    {
      v3 = result;
      sub_1000031D0(result, "/etc/ppp/pap-secrets");
      if (remote_name)
      {
        v4 = &remote_name;
      }

      else
      {
        v4 = 0;
      }

      v5 = sub_100003248(v3, &user, v4, __source, 0, 0, "/etc/ppp/pap-secrets", 0);
      fclose(v3);
      if (v5 < 0)
      {
        return 0;
      }

      else
      {
        if (a1)
        {
          strlcpy(a1, __source, 0x100uLL);
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_100001A28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((phase - 7) >= 2)
  {
    v10 = &lcp_gotoptions + 68 * a1;
    if (remote_number)
    {
      notice("peer from calling number %q authorized", a2, a3, a4, a5, a6, a7, a8, &remote_number);
    }

    if (v10[6] || v10[5] || v10[7])
    {
      notify(auth_up_notifier, 0);
      byte_10004A20C = 1;
      if ((byte_10004A210 & 1) == 0 && !dword_10004A214)
      {
        byte_10004A210 = 1;
        sub_100000F78("/etc/ppp/auth-up");
      }
    }

    if (qword_10004A248)
    {
      options_from_list(qword_10004A248, 1);
      v11 = qword_10004A248;
      if (qword_10004A248)
      {
        do
        {
          v12 = *v11;
          free(v11);
          v11 = v12;
        }

        while (v12);
      }

      qword_10004A248 = 0;
    }

    start_networks(a1);
  }
}

BOOL unexpected_network_packet(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = phase;
  if (phase == 5 && (a2 & 0x8000) != 0 && lcp_hisoptions[68 * a1 + 7])
  {
    EapLostSuccess(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = phase;
  }

  return v8 < 6;
}

void start_networks(int a1)
{
  v2 = new_phase(7);
  v10 = protocols;
  if (protocols)
  {
    v11 = &off_100043898;
    do
    {
      v12 = *v10;
      if (v12 == 33021 || v12 == 32851)
      {
        if (*(v10 + 80))
        {
          v14 = *(v10 + 6);
          if (v14)
          {
            v2 = v14(0);
          }
        }
      }

      v15 = *v11++;
      v10 = v15;
    }

    while (v15);
  }

  if (!(ecp_gotoptions[8 * a1] | ccp_gotoptions[14 * a1 + 6]))
  {

    continue_networks(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void continue_networks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = protocols;
  if (protocols)
  {
    v9 = &off_100043898;
    do
    {
      v10 = *v8;
      if ((*v8 >> 14) <= 2u && v10 != 32851 && v10 != 33021)
      {
        if (*(v8 + 80))
        {
          v14 = *(v8 + 6);
          if (v14)
          {
            v14(0);
            ++dword_10004A218;
          }
        }
      }

      v13 = *v9++;
      v8 = v13;
    }

    while (v13);
  }

  if (!dword_10004A218)
  {

    lcp_close(0, "No network protocols running", a3, a4, a5, a6, a7, a8);
  }
}

void check_protocols_ready()
{
  if (dword_10004A218)
  {
    v0 = protocols;
    if (protocols)
    {
      v1 = &off_100043898;
      while (1)
      {
        v2 = *v0;
        v3 = (*v0 >> 14) > 2u || v2 == 32851;
        v4 = v3 || v2 == 33021;
        if (!v4 && *(v0 + 80) && *(v0 + 6))
        {
          v6 = (*(v0 + 19))(0);
          if (v6 != 9 && v6 != 3)
          {
            break;
          }
        }

        v5 = *v1++;
        v0 = v5;
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v8 = protocolsready_notifier;

      notify(v8, 0);
    }
  }
}

void auth_peer_success(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (acl_hook && !acl_hook(a4, a5))
  {
    lcp_close(a1, "Authorization failed", v10, v11, v12, v13, v14, v15);
    *status = 23;
    return;
  }

  v32[0] = a2;
  v32[1] = a3;
  v33 = a4;
  v34 = v5;
  notify_with_ptr(auth_peer_success_notify, v32);
  switch(a2)
  {
    case 49187:
      v23 = 2;
      break;
    case 49703:
      v23 = 32;
      break;
    case 49699:
      switch(a3)
      {
        case 129:
          v23 = 2056;
          break;
        case 128:
          v23 = 520;
          break;
        case 5:
          v23 = 136;
          break;
        default:
          v23 = 8;
          break;
      }

      break;
    default:
      warning("auth_peer_success: unknown protocol %x", v16, v17, v18, v19, v20, v21, v22, a2);
      return;
  }

  if (v5 >= 0xFF)
  {
    v5 = 255;
  }

  __memcpy_chk();
  peer_authname[v5] = 0;
  script_setenv("PEERNAME", peer_authname);
  auth_done[a1] |= v23;
  v31 = (dword_10004A22C[a1] & ~v23) == 0;
  dword_10004A22C[a1] &= ~v23;
  if (v31)
  {
    sub_100001A28(a1, v24, v25, v26, v27, v28, v29, v30);
  }
}

void auth_withpeer_fail(int a1, int a2)
{
  notify(auth_withpeer_fail_notify, a2);
  if (byte_10004A228 == 1)
  {
    xmmword_1000495E4 = 0u;
    unk_1000495F4 = 0u;
    xmmword_1000495C4 = 0u;
    unk_1000495D4 = 0u;
    xmmword_1000495A4 = 0u;
    unk_1000495B4 = 0u;
    xmmword_100049584 = 0u;
    unk_100049594 = 0u;
    xmmword_100049564 = 0u;
    unk_100049574 = 0u;
    xmmword_100049544 = 0u;
    unk_100049554 = 0u;
    xmmword_100049524 = 0u;
    unk_100049534 = 0u;
    passwd = 0u;
    unk_100049514 = 0u;
  }

  lcp_close(a1, "Failed to authenticate ourselves to peer", v3, v4, v5, v6, v7, v8);
  *status = 19;
}

void auth_withpeer_cancelled(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10004A228 == 1)
  {
    xmmword_1000495E4 = 0u;
    unk_1000495F4 = 0u;
    xmmword_1000495C4 = 0u;
    unk_1000495D4 = 0u;
    xmmword_1000495A4 = 0u;
    unk_1000495B4 = 0u;
    xmmword_100049584 = 0u;
    unk_100049594 = 0u;
    xmmword_100049564 = 0u;
    unk_100049574 = 0u;
    xmmword_100049544 = 0u;
    unk_100049554 = 0u;
    xmmword_100049524 = 0u;
    unk_100049534 = 0u;
    passwd = 0u;
    unk_100049514 = 0u;
  }

  lcp_close(a1, "User cancelled authentication", a3, a4, a5, a6, a7, a8);
  *status = 5;
}

void auth_withpeer_success(int a1, int a2, int a3)
{
  notify(auth_withpeer_success_notify, a2);
  switch(a2)
  {
    case 49187:
      if (byte_10004A228 == 1)
      {
        xmmword_1000495E4 = 0u;
        unk_1000495F4 = 0u;
        xmmword_1000495C4 = 0u;
        unk_1000495D4 = 0u;
        xmmword_1000495A4 = 0u;
        unk_1000495B4 = 0u;
        xmmword_100049584 = 0u;
        unk_100049594 = 0u;
        xmmword_100049564 = 0u;
        unk_100049574 = 0u;
        xmmword_100049544 = 0u;
        unk_100049554 = 0u;
        xmmword_100049524 = 0u;
        unk_100049534 = 0u;
        passwd = 0u;
        unk_100049514 = 0u;
      }

      v13 = 1;
      break;
    case 49703:
      v13 = 16;
      break;
    case 49699:
      switch(a3)
      {
        case 129:
          v13 = 1028;
          break;
        case 128:
          v13 = 260;
          break;
        case 5:
          v13 = 68;
          break;
        default:
          v13 = 4;
          break;
      }

      break;
    default:
      warning("auth_withpeer_success: unknown protocol %x", v6, v7, v8, v9, v10, v11, v12, a2);
      v13 = 0;
      break;
  }

  auth_done[a1] |= v13;
  v14 = dword_10004A22C[a1] & ~v13;
  dword_10004A22C[a1] = v14;
  if (!v14)
  {

    sub_100001A28(a1, v6, v7, v8, v9, v10, v11, v12);
  }
}

void option_change_idle()
{
  untimeout(check_idle, 0);
  if (phase == 8)
  {
    v0 = idle_time_hook ? idle_time_hook(0) : idle_time_limit;
    if (v0 >= 1)
    {

      timeout(check_idle);
    }
  }
}

void check_idle()
{
  v15 = 0;
  if (get_idle_time(0, &v15))
  {
    if (idle_time_hook)
    {
      v6 = idle_time_hook(&v15);
    }

    else
    {
      if (noidlerecv)
      {
        v7 = v15;
      }

      else if (noidlesend)
      {
        v7 = HIDWORD(v15);
      }

      else
      {
        v7 = v15;
        if (v15 >= HIDWORD(v15))
        {
          v7 = HIDWORD(v15);
        }
      }

      v6 = (idle_time_limit - v7);
    }

    if (v6 <= 0)
    {
      notice("Terminating connection due to lack of activity.", v0, v6, v1, v2, v3, v4, v5, v14);
      lcp_close(0, "Link inactive", v8, v9, v10, v11, v12, v13);
      need_holdoff = 0;
      *status = 12;
    }

    else
    {
      timeout(check_idle);
    }
  }
}

void np_up()
{
  if (!dword_10004A21C)
  {
    *status = 0;
    unsuccess = 0;
    new_phase(8);
    if (idle_time_hook)
    {
      v0 = idle_time_hook(0);
    }

    else
    {
      v0 = idle_time_limit;
    }

    if (v0 >= 1)
    {
      timeout(check_idle);
    }

    if (maxconnect >= 1)
    {
      timeout(sub_1000024B0);
    }

    if (updetach)
    {
      v1 = nodetach == 0;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      detach();
    }
  }

  ++dword_10004A21C;

  check_protocols_ready();
}

void sub_1000024B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  info("Connect time expired", a2, a3, a4, a5, a6, a7, a8, v14);
  lcp_close(0, "Connect time expired", v8, v9, v10, v11, v12, v13);
  *status = 13;
}

void np_down()
{
  if (!--dword_10004A21C)
  {
    untimeout(check_idle, 0);
    untimeout(sub_1000024B0, 0);
    if (phase != 9)
    {

      new_phase(7);
    }
  }
}

void np_finished(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_10004A218-- <= 1)
  {
    lcp_close(0, "No network protocols running", a3, a4, a5, a6, a7, a8);
  }

  check_protocols_ready();
}

void auth_hold()
{
  untimeout(check_idle, 0);

  untimeout(sub_1000024B0, 0);
}

void auth_cont()
{
  if (idle_time_hook)
  {
    v0 = idle_time_hook(0);
  }

  else
  {
    v0 = idle_time_limit;
  }

  if (v0 >= 1)
  {
    timeout(check_idle);
  }

  if (maxconnect >= 1)
  {

    timeout(sub_1000024B0);
  }
}

uint64_t auth_check_options(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (our_name)
  {
    v8 = usehostname == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    __strlcpy_chk();
  }

  if (!user)
  {
    __strlcpy_chk();
  }

  if (!(auth_required | allow_any_ip) && have_route_to() && !privileged)
  {
    auth_required = 1;
    byte_10004A230 = 1;
  }

  if (byte_100047928)
  {
    byte_100047916 = 1;
  }

  if (!auth_required)
  {
    byte_100047928 = 0;
    *&byte_100047915 = 0;
    byte_100047917 = 0;
    goto LABEL_19;
  }

  allow_any_ip = 0;
  if (!byte_100047916)
  {
    if (byte_100047915)
    {
LABEL_28:
      v36 = 0;
      goto LABEL_29;
    }

    if (!byte_100047917)
    {
      byte_100047928 = 7;
      *&byte_100047915 = 257;
      byte_100047917 = 1;
      goto LABEL_28;
    }

LABEL_19:
    v36 = 0;
    goto LABEL_20;
  }

  v36 = 0;
  if (!byte_100047915)
  {
    goto LABEL_21;
  }

LABEL_29:
  if (uselogin || sub_100002940(&v36))
  {
    goto LABEL_35;
  }

  if (byte_100047916)
  {
LABEL_21:
    if (explicit_remote)
    {
      v9 = &remote_name;
    }

    else
    {
      v9 = 0;
    }

    if (sub_100002A68(v9, &our_name, 1, &v36) || byte_100047917)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_20:
  if (byte_100047917)
  {
    goto LABEL_21;
  }

LABEL_33:
  if (auth_required && !qword_10004A220)
  {
    if (byte_10004A230 == 1)
    {
      option_error("By default the remote system is required to authenticate itself", a2, a3, a4, a5, a6, a7, a8, v33);
      v18 = "(because this system has a default route to the internet)";
    }

    else if (explicit_remote)
    {
      v33 = &remote_name;
      v18 = "The remote system (%s) is required to authenticate itself";
    }

    else
    {
      v18 = "The remote system is required to authenticate itself";
    }

    option_error(v18, a2, a3, a4, a5, a6, a7, a8, v33);
    option_error("but I couldn't find any suitable secret (password) for it to use to do so.", v19, v20, v21, v22, v23, v24, v25, v34);
    if (v36)
    {
      option_error("(None of the available passwords would let it use an IP address.)", v26, v27, v28, v29, v30, v31, v32, v35);
    }

    exit(1);
  }

LABEL_35:
  result = auth_number();
  if (!result)
  {
    warning("calling number %q is not authorized", v11, v12, v13, v14, v15, v16, v17, &remote_number);
    exit(24);
  }

  return result;
}

uint64_t sub_100002940(_DWORD *a1)
{
  if (!pap_check_hook || (v2 = pap_check_hook(), (v2 & 0x80000000) != 0))
  {
    v3 = fopen("/etc/ppp/pap-secrets", "r");
    v2 = v3;
    if (v3)
    {
      v11 = 0;
      if (explicit_remote)
      {
        v4 = &remote_name;
      }

      else
      {
        v4 = 0;
      }

      v5 = sub_100003248(v3, v4, &our_name, 0, &v11, 0, "/etc/ppp/pap-secrets", 0);
      fclose(v2);
      v6 = v11;
      if ((v5 & 0x80000000) == 0)
      {
        if (v11)
        {
          v7 = v11;
          while (1)
          {
            v8 = *v7[1];
            if (v8 != 33)
            {
              break;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_14;
            }
          }

          if (v8 != 45)
          {
            v2 = 1;
            do
            {
LABEL_18:
              v9 = *v6;
              free(v6);
              v6 = v9;
            }

            while (v9);
            return v2;
          }
        }

LABEL_14:
        if (a1)
        {
          v2 = 0;
          *a1 = 1;
          if (!v6)
          {
            return v2;
          }

          goto LABEL_18;
        }
      }

      v2 = 0;
      if (!v11)
      {
        return v2;
      }

      goto LABEL_18;
    }
  }

  return v2;
}

FILE *sub_100002A68(const char *a1, const char *a2, int a3, _DWORD *a4)
{
  if (!chap_check_hook || (result = chap_check_hook(), (result & 0x80000000) != 0))
  {
    result = fopen("/etc/ppp/chap-secrets", "r");
    if (result)
    {
      v9 = result;
      if (a1 && !*a1)
      {
        a1 = 0;
      }

      else if (a2 && !*a2)
      {
        a2 = 0;
      }

      v15 = 0;
      v10 = sub_100003248(result, a1, a2, 0, &v15, 0, "/etc/ppp/chap-secrets", 0);
      fclose(v9);
      v11 = v15;
      if (a3 && (v10 & 0x80000000) == 0)
      {
        if (!v15)
        {
          goto LABEL_19;
        }

        v12 = v15;
        while (1)
        {
          v13 = *v12[1];
          if (v13 != 33)
          {
            break;
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_19;
          }
        }

        if (v13 == 45)
        {
LABEL_19:
          if (a4)
          {
            *a4 = 1;
          }

          v10 = -1;
        }
      }

      if (v11)
      {
        do
        {
          v14 = *v11;
          free(v11);
          v11 = v14;
        }

        while (v14);
      }

      return (v10 >= 0);
    }
  }

  return result;
}

uint64_t auth_number()
{
  v0 = qword_10004A240;
  if (qword_10004A240)
  {
    while (1)
    {
      v1 = strlen(*(v0 + 8));
      if (!strncasecmp(*(v0 + 8), &remote_number, v1 - (*(*(v0 + 8) + v1 - 1) == 42)))
      {
        break;
      }

      v0 = *v0;
      if (!v0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t auth_reset(uint64_t result)
{
  v1 = &lcp_gotoptions + 68 * result;
  v2 = &lcp_allowoptions + 68 * result;
  if (refuse_pap)
  {
    v3 = 0;
  }

  else if (passwd)
  {
    v3 = 1;
  }

  else
  {
    result = sub_100001918(0);
    v3 = result != 0;
  }

  v2[5] = v3;
  if (refuse_chap)
  {
    v4 = refuse_mschap == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || refuse_mschap_v2 == 0)
  {
    if (passwd)
    {
      v6 = 1;
    }

    else
    {
      if (explicit_remote)
      {
        v7 = &remote_name;
      }

      else
      {
        v7 = 0;
      }

      result = sub_100002A68(&user, v7, 0, 0);
      v6 = result != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v2[6] = v6;
  v2[7] = refuse_eap == 0;
  if (v1[5])
  {
    v8 = uselogin == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = sub_100002940(0);
    if (!result)
    {
      v1[5] = 0;
    }
  }

  if (v1[6])
  {
    if (explicit_remote)
    {
      v9 = &remote_name;
    }

    else
    {
      v9 = 0;
    }

    result = sub_100002A68(v9, &our_name, 1, 0);
    if (!result)
    {
      v1[6] = 0;
    }
  }

  return result;
}

uint64_t check_passwd(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v66 = 0;
  v67 = 0;
  slprintf(__s1, 256, "%.*v");
  slprintf(v69, 256, "%.*v");
  *a6 = &unk_10002F9F2;
  if (pap_auth_hook)
  {
    v8 = pap_auth_hook(v69, __s1, a6, &v67, &v66);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      if (v8)
      {
        sub_1000013D4(a1, v67, v66);
      }

      v85 = 0u;
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      *__s1 = 0u;
      v10 = v67;
      if (v67)
      {
        do
        {
          v11 = *v10;
          free(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v66;
      if (v66)
      {
        do
        {
          v13 = *v12;
          free(v12);
          v12 = v13;
        }

        while (v13);
      }

      if (v9)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  v66 = 0;
  v67 = 0;
  v15 = fopen("/etc/ppp/pap-secrets", "r");
  if (!v15)
  {
    error("Can't open PAP password file %s: %m", v16, v17, v18, v19, v20, v21, v22, "/etc/ppp/pap-secrets");
    goto LABEL_36;
  }

  v23 = v15;
  sub_1000031D0(v15, "/etc/ppp/pap-secrets");
  if ((sub_100003248(v23, v69, &our_name, __s2, &v67, &v66, "/etc/ppp/pap-secrets", 0) & 0x80000000) != 0)
  {
    warning("no PAP secret found for %s", v24, v25, v26, v27, v28, v29, v30, v69);
LABEL_34:
    fclose(v23);
    goto LABEL_36;
  }

  v32 = *__s2 != 1735355456 || *&__s2[3] != 7235943;
  if (uselogin || !v32)
  {
    v41 = getpwnam(v69);
    endpwent();
    if (!v41 || (pw_passwd = v41->pw_passwd) == 0 || strlen(v41->pw_passwd) < 2)
    {
      v33 = 1;
      goto LABEL_29;
    }

    v57 = crypt(__s1, pw_passwd);
    v33 = 1;
    if (strcmp(v57, v41->pw_passwd))
    {
      goto LABEL_29;
    }

    if (devnam ^ 0x7665642F | byte_100048CEC ^ 0x2F)
    {
      v58 = &devnam;
    }

    else
    {
      v58 = &unk_100048CED;
    }

    bzero(&v86, 0x280uLL);
    v86.ut_type = -32762;
    strncpy(v86.ut_line, v58, 0x20uLL);
    pututxline(&v86);
    info("user %s logged in", v59, v60, v61, v62, v63, v64, v65, v69);
    byte_10004A208 = 1;
  }

  v33 = 0;
LABEL_29:
  if (__s2[0] && v32 && (cryptpap || strcmp(__s1, __s2)))
  {
    v43 = crypt(__s1, __s2);
    if (strcmp(v43, __s2))
    {
      goto LABEL_34;
    }
  }

  fclose(v23);
  if (!v33)
  {
    dword_10004A234 = 0;
    if (!**a6)
    {
      *a6 = "Login ok";
    }

    sub_1000013D4(a1, v67, v66);
    v14 = 2;
    goto LABEL_45;
  }

LABEL_36:
  if (!**a6)
  {
    *a6 = "Login incorrect";
  }

  v44 = dword_10004A234;
  v45 = ++dword_10004A234;
  if (v44 >= 10)
  {
    warning("%d LOGIN FAILURES ON %s, %s", v34, v35, v36, v37, v38, v39, v40, v45);
    lcp_close(a1, "login failed", v46, v47, v48, v49, v50, v51);
    v45 = dword_10004A234;
  }

  if (v45 >= 4)
  {
    sleep(5 * v45 - 15);
  }

  v52 = v66;
  if (v66)
  {
    do
    {
      v53 = *v52;
      free(v52);
      v52 = v53;
    }

    while (v53);
  }

  v14 = 3;
LABEL_45:
  v54 = v67;
  if (v67)
  {
    do
    {
      v55 = *v54;
      free(v54);
      v54 = v55;
    }

    while (v55);
  }

  return v14;
}

void sub_1000031D0(FILE *a1, int a2)
{
  memset(&v12, 0, sizeof(v12));
  v3 = fileno(a1);
  if (fstat(v3, &v12) < 0)
  {
    v11 = "cannot stat secret file %s: %m";
  }

  else
  {
    if ((v12.st_mode & 0x3F) == 0)
    {
      return;
    }

    v11 = "Warning - secret file %s has world and/or group access";
  }

  warning(v11, v4, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_100003248(FILE *a1, const char *a2, const char *a3, char *a4, void **a5, void *a6, int a7, int a8)
{
  v9 = a6;
  v10 = a5;
  v62 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v63 = 0;
  v64 = 0;
  if (!getword(a1, &__s1, &v64 + 1, a7))
  {
    return 0xFFFFFFFFLL;
  }

  v59 = 0;
  __dst = a4;
  v15 = 1;
  HIDWORD(v64) = 1;
  v16 = 0xFFFFFFFFLL;
  do
  {
    v17 = v16;
    v18 = 1;
    do
    {
      while (1)
      {
        do
        {
          while (1)
          {
            if (!v18)
            {
              do
              {
                v19 = getword(a1, &__s1, &v64 + 1, a7);
                v15 = HIDWORD(v64);
              }

              while (v19 && !HIDWORD(v64));
            }

            if (!v15)
            {
LABEL_61:
              v16 = v17;
              goto LABEL_62;
            }

            if (!a2)
            {
              break;
            }

            v20 = strcmp(&__s1, a2);
            v21 = __s1;
            v22 = v68;
            if (!v20)
            {
              goto LABEL_18;
            }

            if (__s1 == 42 && !v68)
            {
              v21 = 42;
              goto LABEL_18;
            }

            v15 = 0;
            v18 = 0;
            HIDWORD(v64) = 0;
          }

          v21 = __s1;
          v22 = v68;
LABEL_18:
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v21 == 42;
          }

          if (v23)
          {
            v16 = 0;
          }

          else
          {
            v16 = 2;
          }

          if (!getword(a1, &__s1, &v64 + 1, a7))
          {
            goto LABEL_61;
          }

          v15 = HIDWORD(v64);
          v18 = HIDWORD(v64);
        }

        while (HIDWORD(v64));
        if (__s1 == 42 && !v68)
        {
          break;
        }

        if (!a3 || !strcmp(&__s1, a3))
        {
          v16 = v16 | 1;
          break;
        }

LABEL_46:
        v15 = HIDWORD(v64);
        v18 = HIDWORD(v64);
      }

      if (v16 <= v17)
      {
        goto LABEL_46;
      }

      if (!getword(a1, &__s1, &v64 + 1, a7))
      {
        goto LABEL_61;
      }

      v15 = HIDWORD(v64);
      v18 = HIDWORD(v64);
    }

    while (HIDWORD(v64));
    if (a8)
    {
      v24 = strchr(&__s1, 58);
      if (!v24 || !strchr(v24 + 1, 58))
      {
        goto LABEL_46;
      }
    }

    v58 = v9;
    if (!__dst)
    {
      goto LABEL_49;
    }

    if (__s1 != 64 || v68 != 47)
    {
      goto LABEL_48;
    }

    __strlcpy_chk();
    v25 = fopen(__filename, "r");
    if (!v25)
    {
      warning("can't open indirect secret file %s", v26, v27, v28, v29, v30, v31, v32, __filename);
      goto LABEL_45;
    }

    v33 = v25;
    sub_1000031D0(v25, __filename);
    if (!getword(v33, &__s1, &v64, __filename))
    {
      warning("no secret in indirect secret file %s", v34, v35, v36, v37, v38, v39, v40, __filename);
      fclose(v33);
LABEL_45:
      v9 = v58;
      goto LABEL_46;
    }

    fclose(v33);
LABEL_48:
    __strlcpy_chk();
LABEL_49:
    v41 = &v62;
    v57 = v10;
    if (getword(a1, &__s1, &v64 + 1, a7) && !HIDWORD(v64))
    {
      v42 = &v62;
      do
      {
        v43 = (strlen(&__s1) + 1);
        v44 = malloc_type_malloc(v43 + 16, 0x30040E4270A41uLL);
        if (!v44)
        {
          novm();
        }

        v41 = v44;
        v45 = v44 + 16;
        v41[1] = v45;
        strlcpy(v45, &__s1, v43);
        *v42 = v41;
        if (!getword(a1, &__s1, &v64 + 1, a7))
        {
          break;
        }

        v42 = v41;
      }

      while (!HIDWORD(v64));
    }

    *v41 = 0;
    v46 = v59;
    if (v59)
    {
      do
      {
        v47 = *v46;
        free(v46);
        v46 = v47;
      }

      while (v47);
    }

    v59 = v62;
    v63 = v62;
    v9 = v58;
    if (__dst)
    {
      strlcpy(__dst, __source, 0x400uLL);
    }

    v15 = HIDWORD(v64);
    v10 = v57;
  }

  while (HIDWORD(v64));
LABEL_62:
  v48 = v63;
  if (!v63)
  {
LABEL_68:
    if (!v9)
    {
      goto LABEL_71;
    }

    v52 = 0;
LABEL_70:
    *v9 = v52;
    goto LABEL_71;
  }

  v49 = &v63;
  while (1)
  {
    v50 = v49;
    v49 = v48;
    v51 = v48[1];
    if (*v51 == 45 && v51[1] == 45 && !v51[2])
    {
      break;
    }

    v48 = *v49;
    if (!*v49)
    {
      goto LABEL_68;
    }
  }

  v52 = *v49;
  free(v49);
  *v50 = 0;
  if (v9)
  {
    goto LABEL_70;
  }

  if (v52)
  {
    do
    {
      v56 = *v52;
      free(v52);
      v52 = v56;
    }

    while (v56);
  }

LABEL_71:
  v53 = v63;
  if (v10)
  {
    *v10 = v63;
  }

  else if (v63)
  {
    do
    {
      v54 = *v53;
      free(v53);
      v53 = v54;
    }

    while (v54);
  }

  return v16;
}

uint64_t get_secret(void *a1, const char *a2, const char *a3, void *a4, int *a5, int a6)
{
  v42 = 0;
  v43 = 0;
  if (a6 || !passwd)
  {
    if (a6 || !chap_passwd_hook)
    {
      v43 = 0;
      __s[0] = 0;
      v19 = fopen("/etc/ppp/chap-secrets", "r");
      if (v19)
      {
        v27 = v19;
        sub_1000031D0(v19, "/etc/ppp/chap-secrets");
        v28 = sub_100003248(v27, a2, a3, __s, &v43, &v42, "/etc/ppp/chap-secrets", 0);
        fclose(v27);
        if ((v28 & 0x80000000) == 0)
        {
          if (a6)
          {
            sub_1000013D4(a1, v43, v42);
          }

          else
          {
            v30 = v42;
            if (v42)
            {
              do
              {
                v31 = *v30;
                free(v30);
                v30 = v31;
              }

              while (v31);
            }
          }

          v32 = v43;
          if (v43)
          {
            do
            {
              v33 = *v32;
              free(v32);
              v32 = v33;
            }

            while (v33);
          }

          goto LABEL_18;
        }
      }

      else
      {
        error("Can't open chap secret file %s: %m", v20, v21, v22, v23, v24, v25, v26, "/etc/ppp/chap-secrets");
      }
    }

    else
    {
      if ((chap_passwd_hook(a2, __s) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      error("Unable to obtain CHAP password for %s on %s from plugin", v12, v13, v14, v15, v16, v17, v18, a2);
    }

    return 0;
  }

  __strlcpy_chk();
LABEL_18:
  v41 = strlen(__s);
  if (v41 >= 257)
  {
    error("Secret for %s on %s is too long", v34, v35, v36, v37, v38, v39, v40, a2);
    v41 = 256;
  }

  memcpy(a4, __s, v41);
  *a5 = v41;
  return 1;
}

uint64_t get_srp_secret(void *a1, const char *a2, const char *a3, char *__dst, int a5)
{
  if (!a5 && passwd)
  {
    strlcpy(__dst, &passwd, 0x400uLL);
    return 1;
  }

  v26 = 0;
  v11 = fopen("/etc/ppp/srp-secrets", "r");
  if (v11)
  {
    v19 = v11;
    v25 = 0;
    sub_1000031D0(v11, "/etc/ppp/srp-secrets");
    *__dst = 0;
    v20 = sub_100003248(v19, a2, a3, __dst, &v26, &v25, "/etc/ppp/srp-secrets", a5);
    fclose(v19);
    if ((v20 & 0x80000000) == 0)
    {
      if (a5)
      {
        sub_1000013D4(a1, v26, v25);
      }

      else
      {
        v21 = v25;
        if (v25)
        {
          do
          {
            v22 = *v21;
            free(v21);
            v21 = v22;
          }

          while (v22);
        }
      }

      v23 = v26;
      if (v26)
      {
        do
        {
          v24 = *v23;
          free(v23);
          v23 = v24;
        }

        while (v24);
      }

      return 1;
    }
  }

  else
  {
    error("Can't open srp secret file %s: %m", v12, v13, v14, v15, v16, v17, v18, "/etc/ppp/srp-secrets");
  }

  return 0;
}

uint64_t auth_ip_addr(int a1, uint64_t a2)
{
  v4 = ntohl();
  if (v4 >> 28 == 15 || v4 == 2130706433 || (v4 & 0xF0000000) == -536870912)
  {
    return 0;
  }

  if (!allowed_address_hook || (result = allowed_address_hook(a2), (result & 0x80000000) != 0))
  {
    if ((auth_done[a1] & 0x20) == 0 || (result = EAPAllowedAddr(), (result & 0x80000000) != 0))
    {
      v8 = qword_10004A238[a1];
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = (v8 + 8);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9 & a2;
        v9 += 3;
      }

      while (v11 != v10);
      result = *(v9 - 5);
      if ((result & 0x80000000) != 0)
      {
LABEL_18:
        if (!auth_required)
        {
          if (allow_any_ip)
          {
            v12 = 0;
          }

          else
          {
            v12 = privileged == 0;
          }

          return !v12 || have_route_to() == 0;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t bad_ip_adrs()
{
  v0 = ntohl();
  v1 = v0 == 2130706433;
  if (v0 >> 28 == 14)
  {
    v1 = 1;
  }

  return v0 >> 28 == 15 || v1;
}

void sub_100003B38()
{
  dword_10004A214 = 0;
  if (byte_10004A210 == 1)
  {
    if (byte_10004A20C)
    {
      return;
    }

    v0 = "/etc/ppp/auth-down";
  }

  else
  {
    if (!byte_10004A20C)
    {
      return;
    }

    v0 = "/etc/ppp/auth-up";
  }

  byte_10004A210 ^= 1u;
  sub_100000F78(v0);
}

void sub_100003B84(int a1)
{
  v2 = &ccp_fsm + 80 * a1;
  *v2 = a1;
  *(v2 + 1) = 33021;
  *(v2 + 7) = off_100041E50;
  fsm_init(v2);
  v3 = 7 * a1;
  v4 = &ccp_wantoptions[v3];
  *(v4 + 3) = 0;
  *v4 = 0;
  v5 = (&ccp_gotoptions + v3 * 2);
  *v5 = 0;
  *(v5 + 6) = 0;
  v6 = &ccp_allowoptions[v3];
  *(v6 + 3) = 0;
  *v6 = 0;
  v7 = (&ccp_hisoptions + v3 * 2);
  *v7 = 0;
  *(v7 + 6) = 0;
  word_10004764C = 257;
  word_100047668 = 257;
  ccp_wantoptions[0] = 257;
  dword_100047650 = 983055;
  ccp_allowoptions[0] = 257;
  dword_10004766C = 983055;
  byte_100047666 = 1;
}

void sub_100003C4C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = &ccp_fsm + 80 * a1;
  v12 = *(v11 + 2);
  fsm_input(v11, a2, a3, a4, a5, a6, a7, a8, v34);
  if (v12 == 6)
  {
    if (*a2 == 6)
    {
      v33 = &ccp_gotoptions[14 * v10];
      if (!v33[1] && !*v33 && !v33[2] && !v33[3] && !v33[6])
      {

        sub_100003EFC(a1, "No compression negotiated");
      }
    }
  }

  else if (v12 == 9 && *a2 == 5 && *(v11 + 2) != 9)
  {
    notice("Compression disabled by peer.", v13, v14, v15, v16, v17, v18, v19, v35);
    if (ccp_gotoptions[14 * v10 + 6])
    {
      error("MPPE disabled, closing LCP", v20, v21, v22, v23, v24, v25, v26, v36);

      lcp_close(a1, "MPPE disabled by peer", v27, v28, v29, v30, v31, v32);
    }
  }
}

void sub_100003D9C(uint64_t a1)
{
  v1 = a1;
  ccp_flags_set(a1, 0, 0);
  fsm_protreject(&ccp_fsm + 80 * v1, v2, v3, v4, v5, v6, v7, v8);
  if (ccp_gotoptions[14 * v1 + 6])
  {
    error("MPPE required but peer negotiation failed", v9, v10, v11, v12, v13, v14, v15, v22);

    lcp_close(v1, "MPPE required but peer negotiation failed", v16, v17, v18, v19, v20, v21);
  }
}

void sub_100003E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = (&ccp_fsm + 80 * a1);
  if (v9[2] != 9)
  {
    ccp_flags_set(a1, 1, 0);
  }

  sub_1000047EC(v9, a2, a3, a4, a5, a6, a7, a8);
  v17 = &ccp_gotoptions[14 * v8];
  if (!v17[1] && !*v17 && !v17[2] && !v17[3] && !v17[6])
  {
    v9[3] |= 4u;
  }

  fsm_open(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_100003EFC(uint64_t a1, char *a2)
{
  v3 = a1;
  ccp_flags_set(a1, 0, 0);

  fsm_close(&ccp_fsm + 80 * v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100003F50(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (v11 - 1);
  if (v13 <= 0xE && (v13 - 7) >= 6)
  {
    v15 = off_10003CA30[v13];
    v14 = " %s";
  }

  else
  {
    v42 = *a1;
    v14 = " code=0x%x";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  v16 = a1 + 4;
  if (v13 < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v17 = v16[1];
        if (v17 < 2 || v7 < v17)
        {
          goto LABEL_76;
        }

        v19 = *v16;
        a3(a4, " <");
        if (v19 > 20)
        {
          if (v19 == 21)
          {
            v20 = v16;
            if (v17 != 2)
            {
              (a3)(a4, "bsd v%d %d", v16[2] >> 5, v16[2] & 0x1F);
              v20 = v16 + 3;
            }
          }

          else if (v19 == 24 || (v20 = v16, v19 == 26))
          {
            v20 = v16;
            if (v17 >= 4)
            {
              v34 = &unk_10002F9F2;
              if (v19 == 24)
              {
                v34 = "(old#)";
              }

              (a3)(a4, "deflate%s %d", v34, (v16[2] >> 4) + 8);
              if ((v16[2] & 0xF) != 8)
              {
                (a3)(a4, " method %d", v16[2] & 0xF);
              }

              if (v16[3])
              {
                (a3)(a4, " check %d", v16[3]);
              }

              v20 = v16 + 4;
            }
          }

          goto LABEL_64;
        }

        if (v19 == 1)
        {
          v35 = a4;
          v36 = "predictor 1";
        }

        else
        {
          if (v19 != 2)
          {
            v20 = v16;
            if (v19 == 18)
            {
              v20 = v16;
              if (v17 >= 6)
              {
                v21 = v16[2];
                v22 = v21 & 1;
                if (v16[3] || (v21 >= 2 ? (v23 = 64) : (v23 = 4 * v22), v16[4]))
                {
                  v23 = 64;
                }

                v24 = v16[5];
                v25 = v24 & 0xE | v23 & 0x40;
                v26 = v22 == 0;
                v27 = "+H";
                if (v26)
                {
                  v27 = "-H";
                }

                v28 = "+M";
                if (v24 >= 0)
                {
                  v28 = "-M";
                }

                v29 = "+S";
                if ((v16[5] & 0x40) == 0)
                {
                  v29 = "-S";
                }

                v30 = "+L";
                if ((v16[5] & 0x20) == 0)
                {
                  v30 = "-L";
                }

                v31 = "+D";
                if ((v16[5] & 0x10) == 0)
                {
                  v31 = "-D";
                }

                v26 = (v24 & 1) == 0;
                v32 = "+C";
                if (v26)
                {
                  v32 = "-C";
                }

                v33 = " +U";
                if (!v25)
                {
                  v33 = &unk_10002F9F2;
                }

                (a3)(a4, "mppe %s %s %s %s %s %s%s", v27, v28, v29, v30, v31, v32, v33);
                if (v25)
                {
                  (a3)(a4, " (%.2x %.2x %.2x %.2x)", v16[2], v16[3], v16[4], v16[5]);
                }

                v20 = v16 + 6;
              }
            }

            goto LABEL_64;
          }

          v35 = a4;
          v36 = "predictor 2";
        }

        a3(v35, v36);
        v20 = v16 + 2;
LABEL_64:
        if (v20 < &v16[v17])
        {
          v37 = &v16[v17];
          v38 = &v16[v17] - v20;
          do
          {
            v39 = *v20++;
            (a3)(a4, " %.2x", v39);
            --v38;
          }

          while (v38);
          v20 = v37;
        }

        v7 -= v17;
        a3(a4, ">");
        v16 = v20;
        if (v7 <= 1)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_74:
    v20 = a1 + 4;
LABEL_75:
    v16 = v20;
    if (v7 < 1)
    {
      return (v16 - a1);
    }

    goto LABEL_76;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_74;
  }

  if (v6 != 4)
  {
    if (*v16 - 32 > 0x5E)
    {
LABEL_76:
      v40 = v7 + 1;
      do
      {
        v41 = *v16++;
        (a3)(a4, " %.2x", v41);
        --v40;
      }

      while (v40 > 1);
      return (v16 - a1);
    }

    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v16) = v16 + v7;
  }

  return (v16 - a1);
}

void sub_1000043BC(uint64_t a1)
{
  v1 = (&ccp_fsm + 80 * a1);
  if (v1[2] == 9)
  {
    if (ccp_fatal_error())
    {
      error("Lost compression sync: disabling compression", v3, v4, v5, v6, v7, v8, v9, v33);
      ccp_flags_set(a1, 0, 0);
      fsm_close(v1, "Lost compression sync", v10, v11, v12, v13, v14, v15);
      if (ccp_gotoptions[14 * a1 + 6])
      {
        error("Too many MPPE errors, closing LCP", v16, v17, v18, v19, v20, v21, v22, v34);

        lcp_close(a1, "Too many MPPE errors", v23, v24, v25, v26, v27, v28);
      }
    }

    else
    {
      v29 = *v1;
      v30 = dword_10004A2A4[v29];
      if (v30)
      {
        v32 = v30 | 2;
      }

      else
      {
        v31 = *(v1 + 16) + 1;
        *(v1 + 16) = v31;
        *(v1 + 17) = v31;
        fsm_sdata(v1, 14, v31, 0, 0, v7, v8, v9, v33);
        timeout(sub_100006374);
        v29 = *v1;
        v32 = dword_10004A2A4[v29] | 1;
      }

      dword_10004A2A4[v29] = v32;
    }
  }
}

uint64_t sub_1000044EC(const char **a1)
{
  __endptr = 0;
  v2 = *a1;
  v3 = strtol(*a1, &__endptr, 0);
  v11 = v3;
  v12 = __endptr;
  if (__endptr != v2 && *__endptr == 44)
  {
    v2 = __endptr + 1;
    v3 = strtol(__endptr + 1, &__endptr, 0);
    v12 = __endptr;
  }

  if (v12 == v2 || *v12 != 0)
  {
    option_error("invalid parameter '%s' for bsdcomp option", v4, v5, v6, v7, v8, v9, v10, *a1);
    return 0;
  }

  v15 = (v11 - 9) < 7 || v11 == 0;
  if (!v15 || ((v3 - 9) >= 7 ? (v16 = v3 == 0) : (v16 = 1), !v16))
  {
    option_error("bsdcomp option values must be 0 or %d .. %d", v4, v5, v6, v7, v8, v9, v10, 9);
    return 0;
  }

  if (v11)
  {
    LOWORD(dword_100047650) = v11;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(ccp_wantoptions[0]) = v17;
  if (v3)
  {
    LOWORD(dword_10004766C) = v3;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(ccp_allowoptions[0]) = v18;
  if (v3 == v11)
  {
    v19 = "%d";
  }

  else
  {
    v19 = "%d,%d";
  }

  slprintf(&unk_10004A250, 8, v19);
  return 1;
}

uint64_t sub_100004648(const char **a1)
{
  __endptr = 0;
  v2 = *a1;
  v3 = strtol(*a1, &__endptr, 0);
  v11 = v3;
  v12 = __endptr;
  if (__endptr == v2)
  {
    v13 = v3;
  }

  else
  {
    v13 = v3;
    if (*__endptr == 44)
    {
      v2 = __endptr + 1;
      v14 = strtol(__endptr + 1, &__endptr, 0);
      v12 = __endptr;
      v13 = v14;
    }
  }

  if (v12 == v2 || *v12 != 0)
  {
    option_error("invalid parameter '%s' for deflate option", v4, v5, v6, v7, v8, v9, v10, *a1);
    return 0;
  }

  v17 = (v11 - 8) < 8 || v11 == 0;
  if (!v17 || ((v13 - 8) >= 8 ? (v18 = v13 == 0) : (v18 = 1), !v18))
  {
    option_error("deflate option values must be 0 or %d .. %d", v4, v5, v6, v7, v8, v9, v10, 8);
    return 0;
  }

  if (v11 != 8 && v13 != 8)
  {
    goto LABEL_26;
  }

  v19 = 9;
  if (v13 == 8)
  {
    v13 = 9;
  }

  warning("deflate option value of %d changed to %d to avoid zlib bug", v4, v5, v6, v7, v8, v9, v10, 8);
  if (v11 != 8)
  {
LABEL_26:
    if (!v11)
    {
      v19 = 0;
      HIBYTE(ccp_wantoptions[0]) = 0;
      if (v13)
      {
        goto LABEL_29;
      }

LABEL_31:
      v20 = 0;
      goto LABEL_32;
    }

    v19 = v11;
  }

  HIBYTE(ccp_wantoptions[0]) = 1;
  HIWORD(dword_100047650) = v19;
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_29:
  HIWORD(dword_10004766C) = v13;
  v20 = 1;
LABEL_32:
  HIBYTE(ccp_allowoptions[0]) = v20;
  if (v19 == v13)
  {
    v21 = "%d";
  }

  else
  {
    v21 = "%d,%d";
  }

  slprintf(&unk_10004A258, 8, v21);
  return 1;
}

void sub_1000047EC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 7 * *a1;
  v10 = &ccp_gotoptions[v9 * 2];
  v11 = &ccp_wantoptions[v9];
  *v10 = *v11;
  *(v10 + 6) = *(v11 + 3);
  v12 = *a1;
  dword_10004A260[v12] = 0;
  v13 = v10[6];
  if (!v10[6])
  {
LABEL_6:
    if (*v10)
    {
      *v42 = 789;
      v42[2] = 41;
      if (ccp_test(*a1, v42, 3, 0) <= 0)
      {
        *v10 = 0;
      }
    }

    if (v10[1])
    {
      if (v10[4])
      {
        *v42 = 1573914;
        if (ccp_test(*a1, v42, 4, 0) <= 0)
        {
          v10[4] = 0;
        }
      }

      if (v10[5])
      {
        *v42 = 1573912;
        if (ccp_test(*a1, v42, 4, 0) <= 0)
        {
          v10[5] = 0;
        }
      }

      if (!v10[4] && !v10[5])
      {
        v10[1] = 0;
      }
    }

    if (v10[2])
    {
      *v42 = 513;
      if (ccp_test(*a1, v42, 2, 0) <= 0)
      {
        v10[2] = 0;
      }
    }

    if (v10[3])
    {
      *v42 = 514;
      if (ccp_test(*a1, v42, 2, 0) <= 0)
      {
        v10[3] = 0;
      }
    }

    return;
  }

  v14 = v12;
  v15 = auth_done[v12];
  if ((v15 & 0x30) == 0)
  {
    v30 = 0;
    v31 = (v15 >> 8) & 0xF;
    do
    {
      v30 += v31 & 1;
      v32 = v31 > 1;
      v31 >>= 1;
    }

    while (v32);
    if (v30 >= 2)
    {
      v33 = "MPPE required, but auth done in both directions.";
      goto LABEL_38;
    }

    if (!v30)
    {
      v33 = "MPPE required, but MS-CHAP[v2] auth not performed.";
      goto LABEL_38;
    }

    if (!mppe_keys_set)
    {
      v33 = "MPPE required, but keys are not available.  Possible plugin problem?";
      goto LABEL_38;
    }

    if ((v13 & 1) != 0 && (v15 & 0x300) != 0)
    {
      notice("Disabling 40-bit MPPE; MS-CHAP LM not supported", a2, a3, a4, a5, a6, a7, a8, v41);
      v13 = v10[6] & 0xFE;
      v10[6] &= ~1u;
      v12 = *a1;
      LOBYTE(ccp_wantoptions[7 * v12 + 3]) &= ~1u;
    }
  }

  if ((v13 & 3) != 0)
  {
    v16 = &ccp_allowoptions[7 * v14];
    *(v16 + 6) = v13;
    *v10 = 0;
    *v16 = 0;
    *v42 = 1554;
    v42[2] = ((v13 >> 2) & 1) == 0;
    *&v42[3] = 0;
    v43 = 32 * (v13 & 3);
    if (ccp_test(v12, v42, 22, 0) <= 0)
    {
      error("MPPE required, but kernel has no support.", v17, v18, v19, v20, v21, v22, v23, v41);
      lcp_close(*a1, "MPPE required but not available", v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_6;
  }

  v33 = "MPPE required, but both 40-bit and 128-bit disabled.";
LABEL_38:
  error(v33, a2, a3, a4, a5, a6, a7, a8, v41);
  v40 = *a1;

  lcp_close(v40, "MPPE required but not available", v34, v35, v36, v37, v38, v39);
}

uint64_t sub_100004B34(int *a1)
{
  v1 = &ccp_gotoptions + 14 * *a1;
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v2 | (4 * (v1[1] != 0))) + 2 * (v1[2] != 0) + 2 * (v1[3] != 0);
  if (v1[6])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return (v3 + v4);
}

void sub_100004BA0(int *a1, char *a2, _DWORD *a3)
{
  v6 = &ccp_gotoptions[14 * *a1];
  v7 = a2;
  if (v6[6])
  {
    v23 = 1554;
    *a2 = 1554;
    a2[2] = (v6[6] & 4) == 0;
    *(a2 + 3) = 0;
    a2[5] = 0;
    v8 = (32 * v6[6]) & 0x40;
    a2[5] = v8;
    v9 = v6[6];
    if (v9)
    {
      a2[5] = v8 | 0x20;
      v9 = v6[6];
    }

    v24 = (v9 & 4) == 0;
    v25 = 0;
    v26 = 32 * (v9 & 3);
    v27 = mppe_recv_key;
    if (ccp_test(*a1, &v23, 22, 0) < 1)
    {
      lcp_close(*a1, "MPPE required but not available in kernel", v10, v11, v12, v13, v14, v15);
      v7 = a2;
    }

    else
    {
      v7 = a2 + 6;
    }
  }

  if (v6[1])
  {
    if (v6[4])
    {
      v16 = 26;
    }

    else
    {
      v16 = 24;
    }

    *v7 = v16;
    v7[1] = 4;
    v7[2] = 16 * v6[10] - 120;
    v7[3] = 0;
    if (v7 == a2)
    {
      while (1)
      {
        if (*(v6 + 5) < 9u)
        {
LABEL_20:
          v6[1] = 0;
          v7 = a2;
          goto LABEL_22;
        }

        v18 = ccp_test(*a1, a2, 4, 0);
        if (v18 >= 1)
        {
          break;
        }

        if (v18 < 0)
        {
          goto LABEL_20;
        }

        v19 = *(v6 + 5) - 1;
        *(v6 + 5) = v19;
        v7[2] = 16 * v19 - 120;
      }

      v17 = a2 + 4;
    }

    else
    {
      v17 = v7 + 4;
      v7 = a2;
      if (v17 == a2)
      {
        goto LABEL_22;
      }
    }

    if (v6[4] && v6[5])
    {
      *v17 = 1048;
      *(v17 + 1) = *(v17 - 2);
      v7 = v17 + 4;
    }

    else
    {
      v7 = v17;
    }
  }

LABEL_22:
  if (*v6)
  {
    *v7 = 789;
    v7[2] = v6[8] | 0x20;
    if (v7 == a2)
    {
      while (1)
      {
        if (*(v6 + 4) < 9u)
        {
LABEL_29:
          *v6 = 0;
          v7 = a2;
          goto LABEL_30;
        }

        v20 = ccp_test(*a1, a2, 3, 0);
        if (v20 >= 1)
        {
          break;
        }

        if (v20 < 0)
        {
          goto LABEL_29;
        }

        v21 = *(v6 + 4) - 1;
        *(v6 + 4) = v21;
        v7[2] = v21 | 0x20;
      }

      v7 = a2 + 3;
    }

    else
    {
      v7 += 3;
    }
  }

LABEL_30:
  if (v6[2])
  {
    *v7 = 513;
    if (v7 == a2 && ccp_test(*a1, a2, 2, 0) <= 0)
    {
      v6[2] = 0;
      v7 = a2;
    }

    else
    {
      v7 += 2;
    }
  }

  if (v6[3])
  {
    *v7 = 514;
    if (v7 == a2 && ccp_test(*a1, a2, 2, 0) <= 0)
    {
      v6[3] = 0;
      v22 = -1;
      LODWORD(v7) = a2;
      goto LABEL_41;
    }

    v7 += 2;
  }

  if (v7 <= a2)
  {
    v22 = -1;
  }

  else
  {
    v22 = *a2;
  }

LABEL_41:
  *(v6 + 6) = v22;
  *a3 = v7 - a2;
}

BOOL sub_100004ED4(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = &ccp_gotoptions + 14 * *a1;
  v4 = v3[6];
  if (v3[6])
  {
    *v12 = 1554;
    v12[2] = ((v4 >> 2) & 1) == 0;
    *&v12[3] = 0;
    if (a3 < 6)
    {
      return 0;
    }

    if (*v12 == *a2)
    {
      v12[5] = 32 * (v4 & 3);
      v5 = *&v12[4] == *(a2 + 2);
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      return 0;
    }

    a3 -= 6;
    if (!a3)
    {
      return 1;
    }

    v6 = a2 + 6;
  }

  else
  {
    v6 = a2;
  }

  if (!v3[1])
  {
    goto LABEL_31;
  }

  if (a3 < 4)
  {
    return 0;
  }

  v7 = v3[4] ? 26 : 24;
  if (v7 != *v6)
  {
    return 0;
  }

  if (v6[1] != 4)
  {
    return 0;
  }

  v8 = v6[2];
  if (16 * *(v3 + 5) - 120 != v8 || v6[3])
  {
    return 0;
  }

  if (a3 == 4)
  {
    return 1;
  }

  if (v3[4] && v3[5])
  {
    v9 = a3 >= 8;
    a3 -= 8;
    if (!v9 || v6[4] != 24 || v6[5] != 4 || v8 != v6[6] || v6[7])
    {
      return 0;
    }

    v6 += 8;
  }

  else
  {
    a3 -= 4;
    v6 += 4;
  }

LABEL_31:
  if (*v3)
  {
    v10 = __OFSUB__(a3, 3);
    a3 -= 3;
    if (a3 < 0 != v10 || *v6 != 21 || v6[1] != 3 || (*(v3 + 4) | 0x20) != v6[2])
    {
      return 0;
    }

    v6 += 3;
    if (v6 == a2 && !a3)
    {
      return 1;
    }
  }

  if (v3[2])
  {
    v10 = __OFSUB__(a3, 2);
    a3 -= 2;
    if (a3 < 0 != v10 || *v6 != 1 || v6[1] != 2)
    {
      return 0;
    }

    v6 += 2;
    if (v6 == a2 && !a3)
    {
      return 1;
    }
  }

  if (!v3[3])
  {
    return a3 == 0;
  }

  v10 = __OFSUB__(a3, 2);
  a3 -= 2;
  if (a3 < 0 != v10 || *v6 != 2 || v6[1] != 2)
  {
    return 0;
  }

  if (v6 + 2 == a2 && !a3)
  {
    return 1;
  }

  return a3 == 0;
}

uint64_t sub_1000050E0(int *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = 14 * *a1;
  v12 = &ccp_gotoptions[v11];
  v13 = ccp_gotoptions[v11];
  v14 = ccp_gotoptions[v11 + 1];
  v15 = *&ccp_gotoptions[v11 + 2];
  v16 = ccp_gotoptions[v11 + 6];
  v17 = ccp_gotoptions[v11 + 7];
  v18 = *&ccp_gotoptions[v11 + 8];
  v19 = *&ccp_gotoptions[v11 + 10];
  v20 = *&ccp_gotoptions[v11 + 12];
  if (a3 < 6 || !ccp_gotoptions[v11 + 6] || *a2 != 18)
  {
    goto LABEL_24;
  }

  v21 = ccp_gotoptions[v11 + 1];
  if (a2[1] != 6)
  {
    goto LABEL_25;
  }

  v22 = &ccp_allowoptions[v11 / 2];
  v23 = a2[2];
  v24 = a2[5];
  v25 = ((4 * (v23 & 1)) & 0xCF | (v24 >> 5) & 3 | (v24 >> 4) & 8 | (32 * ((v24 >> 4) & 1)) | (16 * (v24 & 1))) ^ 4 | 0x40;
  if (a2[3] || (v23 >= 2 ? (v26 = ((4 * (v23 & 1)) & 0xCF | (v24 >> 5) & 3 | (v24 >> 4) & 8 | (32 * ((v24 >> 4) & 1)) | (16 * (v24 & 1))) ^ 4 | 0x40) : (v26 = ((4 * (v23 & 1)) & 0xCF | (v24 >> 5) & 3 | (v24 >> 4) & 8 | (32 * ((v24 >> 4) & 1)) | (16 * (v24 & 1))) ^ 4), a2[4]))
  {
    v26 = v25;
  }

  if ((v24 & 0xE) != 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  if (((refuse_mppe_stateful != 0) & (v27 >> 2)) != 0)
  {
    v16 = v27 & 0xFB;
  }

  else
  {
    v16 = v27;
  }

  if ((v16 & 1) != 0 && (v22[3] & 1) == 0)
  {
    v16 &= ~1u;
  }

  if ((v16 & 2) != 0 && (v22[3] & 2) == 0)
  {
    v16 &= ~2u;
  }

  if ((v16 & 3) == 0)
  {
    v43 = v17;
    v44 = v15;
    error("MPPE required but peer negotiation failed", a2, a3, a4, a5, a6, a7, a8, v42);
    lcp_close(*a1, "MPPE required but peer negotiation failed", v35, v36, v37, v38, v39, v40);
    v17 = v43;
    v15 = v44;
    v21 = v12[1];
  }

  else
  {
LABEL_24:
    v21 = v14;
  }

LABEL_25:
  if (v8 >= 4 && v21)
  {
    v28 = v12[4] ? 26 : 24;
    if (v28 == *v9 && v9[1] == 4)
    {
      v29 = v9[2];
      if ((v29 & 0xF) == 8 && v29 >= 0x10 && !v9[3])
      {
        v41 = (v29 >> 4) + 8;
        if (v41 < *(v12 + 5))
        {
          v19 = v41;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if (v12[4] && v8 >= 8 && v12[5] && v9[4] == 24)
      {
        v30 = v9[5];
        if (v30 == 4)
        {
          v8 -= 8;
        }

        else
        {
          v8 -= 4;
        }

        if (v30 == 4)
        {
          v9 += 8;
        }

        else
        {
          v9 += 4;
        }
      }

      else
      {
        v8 -= 4;
        v9 += 4;
      }
    }
  }

  if (*v12)
  {
    v31 = v8 < 3;
  }

  else
  {
    v31 = 1;
  }

  if (!v31 && *v9 == 21 && v9[1] == 3)
  {
    v32 = v9[2];
    if ((v32 & 0xE0) == 0x20)
    {
      v33 = v32 & 0x1F;
      if (v33 < *(v12 + 4))
      {
        v18 = v33;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  if (a1[2] != 9)
  {
    *v12 = v13;
    v12[1] = v14;
    *(v12 + 2) = v15;
    v12[6] = v16;
    v12[7] = v17;
    *(v12 + 4) = v18;
    *(v12 + 5) = v19;
    *(v12 + 6) = v20;
  }

  return 1;
}

uint64_t sub_1000053A0(int *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *a1;
  v11 = &ccp_gotoptions[14 * v10];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  v18 = *(v11 + 6);
  if (a3)
  {
    v19 = a3 - 6;
    if (a3 >= 6 && *(v11 + 6) && *a2 == 18 && a2[1] == 6)
    {
      v35 = *v11;
      error("MPPE required but peer refused", a2, a3, a4, a5, a6, a7, a8, v34);
      lcp_close(*a1, "MPPE required but peer refused", v20, v21, v22, v23, v24, v25);
      v12 = v35;
      v8 += 6;
      v26 = v11[4];
      LODWORD(a3) = v19;
    }

    else
    {
      v26 = v11[4];
    }

    if (v26)
    {
      v27 = a3 < 4;
    }

    else
    {
      v27 = 1;
    }

    if (!v27 && *v8 == 26 && v8[1] == 4)
    {
      if (16 * *(v11 + 5) - 120 != v8[2] || v8[3])
      {
        return 0;
      }

      v16 = 0;
      v8 += 4;
      LODWORD(a3) = a3 - 4;
    }

    if (v11[5])
    {
      v28 = a3 < 4;
    }

    else
    {
      v28 = 1;
    }

    if (!v28 && *v8 == 24 && v8[1] == 4)
    {
      if (16 * *(v11 + 5) - 120 != v8[2] || v8[3])
      {
        return 0;
      }

      v17 = 0;
      v8 += 4;
      LODWORD(a3) = a3 - 4;
    }
  }

  else
  {
    if (dword_10004A260[v10])
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(a3) = 0;
  }

  if (v16 | v17)
  {
    v30 = v13;
  }

  else
  {
    v30 = 0;
  }

  if (*v11)
  {
    v31 = a3 < 3;
  }

  else
  {
    v31 = 1;
  }

  if (!v31 && *v8 == 21 && v8[1] == 3)
  {
    if ((*(v11 + 4) | 0x20) != v8[2])
    {
      return 0;
    }

    v12 = 0;
    v8 += 3;
    LODWORD(a3) = a3 - 3;
  }

  if (v11[2])
  {
    v32 = a3 < 2;
  }

  else
  {
    v32 = 1;
  }

  if (!v32 && *v8 == 1 && v8[1] == 2)
  {
    v8 += 2;
    LODWORD(a3) = a3 - 2;
    v14 = 0;
  }

  if (v11[3])
  {
    v33 = a3 < 2;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    if (!a3)
    {
      goto LABEL_53;
    }

    return 0;
  }

  if (*v8 != 2)
  {
    return 0;
  }

  if (v8[1] != 2)
  {
    return 0;
  }

  v15 = 0;
  if (a3 != 2)
  {
    return 0;
  }

LABEL_53:
  if (a1[2] == 9)
  {
    return 1;
  }

  *v11 = v12;
  v11[1] = v30;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[5] = v17;
  result = 1;
  *(v11 + 6) = v18;
  return result;
}

uint64_t sub_100005644(int *a1, unsigned __int8 *__src, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 14 * *a1;
  v9 = *a3;
  v10 = &ccp_hisoptions + v8;
  *(v10 + 6) = 0;
  *v10 = 0;
  if (v9 <= 0)
  {
    *(v10 + 6) = -1;
    return 2;
  }

  v11 = a4;
  v13 = a1;
  v66 = &ccp_hisoptions + v8;
  v67 = &ccp_allowoptions[v8 / 2];
  *(v10 + 6) = *__src;
  v14 = 2;
  v15 = __src;
  v63 = 1;
  v16 = __src;
  do
  {
    if (v9 == 1)
    {
      LODWORD(v17) = 4;
      v18 = 1;
      goto LABEL_10;
    }

    v18 = v15[1];
    if (v18 < 2 || v9 < v18)
    {
      LODWORD(v17) = 4;
      v18 = v9;
      goto LABEL_10;
    }

    v24 = *v15;
    LODWORD(v17) = 4;
    if (v24 <= 0x14)
    {
      switch(v24)
      {
        case 1u:
          if (v18 != 2 || !*(v67 + 2))
          {
            goto LABEL_10;
          }

          v66[2] = 1;
          break;
        case 2u:
          if (v18 != 2 || !*(v67 + 3))
          {
            goto LABEL_10;
          }

          v66[3] = 1;
          break;
        case 0x12u:
          if (v18 != 6)
          {
            goto LABEL_10;
          }

          v25 = *(v67 + 6);
          if (!v25)
          {
            goto LABEL_10;
          }

          v66[6] = 0;
          v26 = ~(4 * v15[2]) & 4;
          v66[6] = v26;
          v27 = v15[5];
          if ((v27 & 0x40) != 0)
          {
            v26 |= 2u;
            v66[6] = v26;
            v27 = v15[5];
            if ((v27 & 0x20) == 0)
            {
LABEL_38:
              if ((v27 & 0x80) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_97;
            }
          }

          else if ((v15[5] & 0x20) == 0)
          {
            goto LABEL_38;
          }

          v26 |= 1u;
          v66[6] = v26;
          v27 = v15[5];
          if ((v27 & 0x80) == 0)
          {
LABEL_39:
            if ((v27 & 0x10) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_98;
          }

LABEL_97:
          v26 |= 8u;
          v66[6] = v26;
          v27 = v15[5];
          if ((v27 & 0x10) == 0)
          {
LABEL_40:
            if ((v27 & 1) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_98:
          v26 |= 0x20u;
          v66[6] = v26;
          if ((v15[5] & 1) == 0)
          {
LABEL_42:
            if (v15[2] >= 2u)
            {
              v26 |= 0x40u;
              v66[6] = v26;
            }

            if (v15[3] || v15[4])
            {
              v26 |= 0x40u;
              v66[6] = v26;
            }

            v28 = v26 | 0x40;
            if ((v15[5] & 0xE) == 0)
            {
              v28 = v26;
            }

            v29 = v28 & 7;
            v30 = (v28 & 0x78) == 0;
            if (v15[5] & 0xE | v28 & 0x78)
            {
              v66[6] = v29;
            }

            if (v29 >= 4 && refuse_mppe_stateful)
            {
              error("Refusing MPPE stateful mode offered by peer", __src, a3, a4, a5, a6, a7, a8, v62);
LABEL_139:
              v18 = 6;
              goto LABEL_10;
            }

            if ((~v29 & 3) == 0)
            {
              if ((v25 & 2) != 0)
              {
                v29 = v28 & 6;
              }

              else
              {
                if ((v25 & 1) == 0)
                {
                  goto LABEL_139;
                }

                v29 = v28 & 5;
              }

              goto LABEL_115;
            }

            if ((v28 & 2) != 0)
            {
              if ((v25 & 2) == 0)
              {
                goto LABEL_139;
              }
            }

            else if (v28)
            {
              if ((v25 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            else
            {
              v35 = v25 & 3;
              v29 |= v35;
              if (v35)
              {
LABEL_115:
                v30 = 0;
                v66[6] = v29;
                goto LABEL_130;
              }

              v30 = 0;
            }

LABEL_130:
            v15[2] = (v29 >> 2) ^ 1;
            *(v15 + 3) = 0;
            v15[5] = 0;
            v39 = (32 * v66[6]) & 0x40;
            v15[5] = v39;
            if (v66[6])
            {
              v15[5] = v39 | 0x20;
            }

            if (v30)
            {
              v68 = *v15;
              v69 = *(v15 + 2);
              v70 = mppe_send_key;
              if (ccp_test(*v13, &v68, 22, 1) < 1)
              {
                error("MPPE required, but kernel has no support.", v40, v41, v42, v43, v44, v45, v46, v62);
                lcp_close(*v13, "MPPE required but not available", v49, v50, v51, v52, v53, v54);
              }

              else
              {
                v47 = *v13;
                mtu = netif_get_mtu();
                if (mtu)
                {
                  netif_set_mtu(*v13, mtu - 4);
                  LODWORD(v17) = 2;
                }

                v63 = 0;
              }
            }

            else
            {
              v63 = 0;
              LODWORD(v17) = 3;
            }

            goto LABEL_139;
          }

LABEL_41:
          v26 |= 0x10u;
          v66[6] = v26;
          goto LABEL_42;
        default:
          goto LABEL_10;
      }

      v18 = 2;
      if (v15 == __src)
      {
        if (ccp_test(*v13, __src, 2, 1) >= 1)
        {
          LODWORD(v17) = 2;
        }

        else
        {
          LODWORD(v17) = 4;
        }
      }

      else
      {
        LODWORD(v17) = 2;
      }

      goto LABEL_10;
    }

    if (v24 == 21)
    {
      if (v18 != 3 || !*v67)
      {
        goto LABEL_10;
      }

      v65 = v13;
      *v66 = 1;
      v32 = v15[2] & 0x1F;
      *(v66 + 4) = v32;
      if ((v15[2] & 0xE0) == 0x20 && v32 >= 9 && v67[4] >= v32)
      {
        LODWORD(v17) = 2;
      }

      else
      {
        if (v11)
        {
          v18 = 3;
          LODWORD(v17) = 3;
          goto LABEL_123;
        }

        v15[2] = *(v67 + 8) | 0x20;
        LODWORD(v17) = 3;
      }

      if (v15 == __src)
      {
        v18 = 3;
        v36 = ccp_test(*v65, __src, 3, 1);
        if (v36 > 0)
        {
          goto LABEL_123;
        }

        v37 = v32 - 1;
        v13 = v65;
        while (!(v36 | v11) && v37 != 8)
        {
          v15[2] = v37 | 0x20;
          v18 = 3;
          v36 = ccp_test(*v65, __src, 3, 1);
          --v37;
          if (v36 > 0)
          {
            LODWORD(v17) = 3;
            goto LABEL_10;
          }
        }

        v15[2] = v66[8] | 0x20;
        LODWORD(v17) = 4;
        v18 = 3;
        goto LABEL_10;
      }

      v18 = 3;
LABEL_123:
      v13 = v65;
      goto LABEL_10;
    }

    if ((v24 == 24 || v24 == 26) && v18 == 4 && *(v67 + 1))
    {
      if (v24 == 26 && !*(v67 + 4) || v24 == 24 && !*(v67 + 5))
      {
        v18 = 4;
        goto LABEL_10;
      }

      v65 = v13;
      v66[1] = 1;
      v33 = v15[2];
      v34 = (v33 >> 4) + 8;
      *(v66 + 5) = (v33 >> 4) + 8;
      if ((v15[2] & 0xF) != 8 || v15[3] || v67[5] < v34 || v33 <= 0xF)
      {
        if (v11)
        {
          LODWORD(v17) = 3;
LABEL_122:
          v18 = 4;
          goto LABEL_123;
        }

        v15[2] = 16 * *(v67 + 10) - 120;
        v15[3] = 0;
        LODWORD(v17) = 3;
      }

      else
      {
        LODWORD(v17) = 2;
      }

      if (v15 == __src)
      {
        v18 = 4;
        v38 = ccp_test(*v65, __src, 4, 1);
        while (v38 <= 0)
        {
          if (v38 | v11 || v34 == 9)
          {
            v15[2] = 16 * v66[10] - 120;
            v18 = 4;
            LODWORD(v17) = 4;
            goto LABEL_123;
          }

          v15[2] = 16 * v34 + 120;
          v18 = 4;
          v38 = ccp_test(*v65, __src, 4, 1);
          LODWORD(v17) = 3;
          --v34;
        }

        goto LABEL_123;
      }

      goto LABEL_122;
    }

LABEL_10:
    if (v17 != 3 || v11 == 0)
    {
      v17 = v17;
    }

    else
    {
      v17 = 4;
    }

    if (v17 != 2)
    {
      if (v17 == 3 && v14 == 4)
      {
        v14 = 4;
      }

      else
      {
        if (v14 == 3 && v17 == 4)
        {
          v23 = __src;
        }

        else
        {
          v23 = v16;
        }

        if (v15 != v23)
        {
          memcpy(v23, v15, v18);
        }

        v16 = &v23[v18];
        v14 = v17;
      }
    }

    v15 += v18;
    v31 = __OFSUB__(v9, v18);
    v9 -= v18;
  }

  while (!((v9 < 0) ^ v31 | (v9 == 0)));
  if (v14 != 2)
  {
    if (v14 == 4)
    {
      if (v16 - __src == *a3)
      {
        dword_10004A260[*v13] = 1;
      }

      else
      {
        *a3 = v16 - __src;
      }

      v14 = 4;
      if (*(v67 + 6) && v63)
      {
        error("MPPE required but peer negotiation failed", __src, a3, a4, a5, a6, a7, a8, v62);
        lcp_close(*v13, "MPPE required but peer negotiation failed", v55, v56, v57, v58, v59, v60);
      }
    }

    else
    {
      *a3 = v16 - __src;
    }
  }

  return v14;
}

void sub_100005DB8(unsigned int *a1)
{
  v2 = *a1;
  v3 = &ccp_gotoptions[14 * v2];
  v4 = &ccp_hisoptions + 14 * v2;
  ccp_flags_set(v2, 1, 1);
  if (v3[1] || *v3 || v3[2] || v3[3] || v3[6])
  {
    if (v4[1] || *v4 || v4[2] || v4[3] || v4[6])
    {
      if (*(v3 + 6) == *(v4 + 6))
      {
        v40 = sub_100006120(v3, v4);
        notice("%s compression enabled", v12, v13, v14, v15, v16, v17, v18, v40);
      }

      else
      {
        sub_100006120(v3, 0);
        __strlcpy_chk();
        sub_100006120(v4, 0);
        notice("%s / %s compression enabled", v19, v20, v21, v22, v23, v24, v25, &v43);
      }
    }

    else
    {
      v42 = sub_100006120(v3, 0);
      notice("%s receive compression enabled", v33, v34, v35, v36, v37, v38, v39, v42);
    }
  }

  else if (v4[1] || *v4 || v4[2] || v4[3] || v4[6])
  {
    v41 = sub_100006120(v4, 0);
    notice("%s transmit compression enabled", v26, v27, v28, v29, v30, v31, v32, v41);
  }

  if (v3[6])
  {
    mppe_recv_key = 0uLL;
    mppe_send_key = 0uLL;
    continue_networks(*a1, v5, v6, v7, v8, v9, v10, v11);
  }
}

void sub_100005F84(int *a1)
{
  v2 = *a1;
  if (dword_10004A2A4[v2])
  {
    untimeout(sub_100006374, a1);
    v2 = *a1;
  }

  dword_10004A2A4[v2] = 0;
  ccp_flags_set(v2, 1, 0);
  v10 = *a1;
  v11 = &ccp_gotoptions[14 * *a1];
  v13 = v11[6];
  v12 = v11 + 6;
  if (v13)
  {
    *v12 = 0;
    if (*(&lcp_fsm + 20 * v10 + 2) == 9)
    {
      error("MPPE disabled", v3, v4, v5, v6, v7, v8, v9, v21);
      v20 = *a1;

      lcp_close(v20, "MPPE disabled", v14, v15, v16, v17, v18, v19);
    }
  }
}

uint64_t sub_100006060(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a2 == 15)
  {
    v13 = *a1;
    v14 = dword_10004A2A4[v13];
    if ((v14 & 1) != 0 && *(a1 + 17) == a3)
    {
      dword_10004A2A4[v13] = v14 & 0xFFFFFFFC;
      untimeout(sub_100006374, a1);
    }

    notice("received CCP RESETACK", a2, a3, a4, a5, a6, a7, a8, v16);
    return 1;
  }

  if (a2 == 14)
  {
    if (a1[2] == 9)
    {
      notice("received CCP RESETREQ", a2, a3, a4, a5, a6, a7, a8, v16);
      fsm_sdata(a1, 15, v8, 0, 0, v10, v11, v12, v17);
    }

    return 1;
  }

  return 0;
}

const char *sub_100006120(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1) && !*a1 && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 6))
  {
    return "(none)";
  }

  v3 = *(a1 + 12);
  if (v3 > 0x14)
  {
    if (v3 != 21)
    {
      if (v3 != 24 && v3 != 26)
      {
LABEL_26:
        v7 = &unk_10004A264;
        v8 = "Method %d";
        goto LABEL_38;
      }

      if (a2)
      {
        if (*(a2 + 10) != *(a1 + 10))
        {
          v13 = *(a1 + 10);
          v7 = &unk_10004A264;
          v8 = "Deflate%s (%d/%d)";
LABEL_38:
          slprintf(&unk_10004A264, 64, v8);
          return v7;
        }
      }

      else
      {
        v9 = *(a1 + 10);
      }

      v7 = &unk_10004A264;
      v8 = "Deflate%s (%d)";
      goto LABEL_38;
    }

    if (a2)
    {
      if (*(a2 + 8) != *(a1 + 8))
      {
        v7 = &unk_10004A264;
        v8 = "BSD-Compress (%d/%d)";
        goto LABEL_38;
      }
    }

    else
    {
      v11 = *(a1 + 8);
    }

    v7 = &unk_10004A264;
    v8 = "BSD-Compress (%d)";
    goto LABEL_38;
  }

  if (v3 == 1)
  {
    return "Predictor 1";
  }

  if (v3 == 2)
  {
    return "Predictor 2";
  }

  if (v3 != 18)
  {
    goto LABEL_26;
  }

  slprintf(&unk_10004A264, 64, "MPPE ");
  v4 = *(a1 + 6);
  if ((v4 & 2) == 0)
  {
    v5 = &unk_10004A269;
    if ((*(a1 + 6) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  slprintf(&unk_10004A269, 59, "128-bit ");
  v4 = *(a1 + 6);
  v5 = &unk_10004A271;
  if (v4)
  {
LABEL_31:
    slprintf(v5, &unk_10004A264 - v5 + 64, "40-bit ");
    LODWORD(v5) = v5 + 7;
    v4 = *(a1 + 6);
  }

LABEL_32:
  if ((v4 & 4) != 0)
  {
    v10 = "stateful";
  }

  else
  {
    v10 = "stateless";
  }

  slprintf(v5, &unk_10004A264 - v5 + 64, v10);
  return &unk_10004A264;
}

void sub_100006374(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (a1[2] != 9 || (dword_10004A2A4[v8] & 2) == 0)
  {
    v11 = dword_10004A2A4[v8] & 0xFFFFFFFE;
  }

  else
  {
    fsm_sdata(a1, 14, *(a1 + 17), 0, 0, a6, a7, a8, v12);
    timeout(sub_100006374);
    v8 = *a1;
    v11 = dword_10004A2A4[v8] & 0xFFFFFFFD;
  }

  dword_10004A2A4[v8] = v11;
}

double mppe_set_keys(const void *a1, const void *a2)
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  CC_SHA1_Update(&v5, a2, 0x10u);
  CC_SHA1_Update(&v5, a2, 0x10u);
  CC_SHA1_Update(&v5, a1, 8u);
  CC_SHA1_Final(md, &v5);
  result = md[0];
  mppe_send_key = *md;
  mppe_recv_key = *md;
  return result;
}

void ChapMS(const void *a1, char *a2, int a3, uint64_t a4)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  sub_100006A98(a2, a3, data);
  CC_MD4(data, 2 * a3, &md);
  sub_100006AF4(a1, &md, (a4 + 24), v8, v9);
  *(a4 + 48) = 1;
  sub_100006A98(a2, a3, data);
  CC_MD4(data, 2 * a3, &md);
  CC_MD4(&md, 0x10u, v10);
  mppe_set_keys(a1, v10);
  mppe_keys_set = 1;
}

uint64_t ChapMS2(const void *a1, _OWORD *a2, char *__s, char *a4, int a5, _BYTE *a6, char *a7, int a8)
{
  a6[48] = 0;
  *(a6 + 1) = 0u;
  *(a6 + 2) = 0u;
  *a6 = 0u;
  if (a2)
  {
    *a6 = *a2;
  }

  else
  {
    for (i = 0; i != 16; ++i)
    {
      v16 = drand48() * 254.0;
      a6[i] = v16 + 1;
      byte_10004A2A8[i] = v16 + 1;
    }
  }

  sub_100006BA4(a6, a1, __s, v27);
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, &md);
  sub_100006AF4(v27, &md, a6 + 24, v17, v18);
  qmemcpy(v26, "Magic server to client signing constant", 39);
  qmemcpy(v27, "Pad to make it do more than one iteration", 41);
  memset(&md, 0, sizeof(md));
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, v29);
  CC_MD4(v29, 0x10u, v28);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v28, 0x10u);
  CC_SHA1_Update(&md, a6 + 24, 0x18u);
  CC_SHA1_Update(&md, v26, 0x27u);
  v19 = v32;
  CC_SHA1_Final(v32, &md);
  sub_100006BA4(a6, a1, __s, v36);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v32, 0x14u);
  CC_SHA1_Update(&md, v36, 8u);
  v20 = 41;
  CC_SHA1_Update(&md, v27, 0x29u);
  CC_SHA1_Final(v32, &md);
  do
  {
    v21 = *v19++;
    snprintf(a7, v20, "%02X", v21);
    v20 -= 2;
    a7 += 2;
  }

  while (v20 != 1);
  memset(&md, 0, sizeof(md));
  v34 = 0;
  *v32 = 0u;
  v33 = 0u;
  v31 = 0xF2F2F2F2F2F2F2F2;
  *&v22 = 0xF2F2F2F2F2F2F2F2;
  *(&v22 + 1) = 0xF2F2F2F2F2F2F2F2;
  *v29 = v22;
  v30 = v22;
  qmemcpy(v28, "This is the MPPE Master Key", 27);
  qmemcpy(v27, "On the client side, this is the send key; on the server side, it is the receive key.", 84);
  qmemcpy(v26, "On the client side, this is the receive key; on the server side, it is the send key.", 84);
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, v38);
  CC_MD4(v38, 0x10u, v37);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v37, 0x10u);
  CC_SHA1_Update(&md, a6 + 24, 0x18u);
  CC_SHA1_Update(&md, v28, 0x1Bu);
  CC_SHA1_Final(v36, &md);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v36, 0x10u);
  CC_SHA1_Update(&md, v32, 0x28u);
  if (a8)
  {
    v23 = v26;
  }

  else
  {
    v23 = v27;
  }

  if (a8)
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  CC_SHA1_Update(&md, v23, 0x54u);
  CC_SHA1_Update(&md, v29, 0x28u);
  CC_SHA1_Final(v35, &md);
  mppe_send_key = *v35;
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v36, 0x10u);
  CC_SHA1_Update(&md, v32, 0x28u);
  CC_SHA1_Update(&md, v24, 0x54u);
  CC_SHA1_Update(&md, v29, 0x28u);
  result = CC_SHA1_Final(v35, &md);
  mppe_recv_key = *v35;
  mppe_keys_set = 1;
  return result;
}

void *chapms_init()
{
  chap_register_digest(&unk_100041EC8);
  chap_register_digest(&unk_100041F10);

  return add_options(&unk_10004A2B8);
}

void sub_100006A98(char *a1, int a2, _BYTE *a3)
{
  v3 = a3;
  bzero(a3, 2 * a2);
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      v7 = *a1++;
      *v3 = v7;
      v3 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_100006AF4(uint64_t a1, __int128 *a2, _BYTE *a3, double a4, uint8x8_t a5)
{
  v14 = 0;
  v13 = 0;
  v12 = *a2;
  DesSetkey(&v12, *&v12, a5);
  DesEncrypt(a1, a3);
  DesSetkey(&v12 + 7, v7, v8);
  DesEncrypt(a1, a3 + 8);
  DesSetkey(&v12 | 0xE, v9, v10);
  return DesEncrypt(a1, a3 + 16);
}

uint64_t sub_100006BA4(const void *a1, const void *a2, char *__s, void *a4)
{
  v5 = __s;
  memset(&v11, 0, sizeof(v11));
  v8 = strrchr(__s, 92);
  if (v8)
  {
    v5 = v8 + 1;
  }

  CC_SHA1_Init(&v11);
  CC_SHA1_Update(&v11, a1, 0x10u);
  CC_SHA1_Update(&v11, a2, 0x10u);
  v9 = strlen(v5);
  CC_SHA1_Update(&v11, v5, v9);
  result = CC_SHA1_Final(md, &v11);
  *a4 = *md;
  return result;
}

uint64_t sub_100006C94(int a1, uint64_t a2, char *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v10 = *a5;
  if (*a6 == 49)
  {
    if (*(a6 + 49))
    {
      ChapMS(a5 + 1, a3, a4, &v16);
      if (*(a6 + 25) == *(&v17 + 1) && *(a6 + 33) == v18 && *(a6 + 41) == *(&v18 + 1))
      {
        slprintf(v9, v8, "Access granted");
        return 1;
      }
    }

    else
    {
      notice("Peer request for LANMAN auth not supported", a2, a3, a4, a5, a6, a7, a8, v15);
    }
  }

  slprintf(v9, v8, "E=691 R=1 C=%0.*B V=0");
  return 0;
}

uint64_t sub_100006DCC(const void *a1, int a2, char *a3, int a4)
{
  v8 = malloc_type_malloc(a2 + 1, 0x284A10DuLL);
  if (!v8)
  {
    notice("Out of memory in chapms_handle_failure", v9, v10, v11, v12, v13, v14, v15, v49);
    return 0;
  }

  v16 = v8;
  memcpy(v8, a1, a2);
  v24 = &v16[a2];
  *v24 = 0;
  if (*v16 == 69 && v16[1] == 61)
  {
    v25 = strtol(v16 + 2, 0, 10);
    v26 = v25;
    if (a2)
    {
      v27 = strstr(v16, " R=");
      if (v27)
      {
        if (retry_password_hook)
        {
          v28 = v27[3] == 49;
        }

        else
        {
          v28 = 0;
        }

        if (v28)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      if (change_password_hook)
      {
        v33 = v26 == 648;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      v34 = strstr(v16, " M=");
      if (v34)
      {
        LODWORD(v24) = v34 + 3;
        strncpy(a3, v34 + 3, a4 - 1);
        a3[a4] = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v30 = v25 == 648 && change_password_hook != 0;
    }

    if (v26 > 648)
    {
      switch(v26)
      {
        case 649:
          v24 = "E=649 No dialin permission";
          goto LABEL_13;
        case 691:
          v24 = "E=691 Authentication failure";
          goto LABEL_13;
        case 709:
          v24 = "E=709 Error changing password";
          goto LABEL_13;
      }
    }

    else
    {
      switch(v26)
      {
        case 646:
          v24 = "E=646 Restricted logon hours";
          goto LABEL_13;
        case 647:
          v24 = "E=647 Account disabled";
          goto LABEL_13;
        case 648:
          v24 = "E=648 Password expired";
          goto LABEL_13;
      }
    }

    free(v16);
    error("error %d", v35, v36, v37, v38, v39, v40, v41, v26);
    error("Unknown MS-CHAP authentication failure: %.*v", v42, v43, v44, v45, v46, v47, v48, a2);
    return 0;
  }

  v30 = 0;
LABEL_13:
  error("MS-CHAP authentication failed: %v", v17, v18, v19, v20, v21, v22, v23, v24);
  free(v16);
  return v30;
}

uint64_t sub_100007014(int a1, char *__s, char *a3, int a4, unsigned __int8 *a5, uint64_t a6, int a7, int a8)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v10 = *a5;
  if (*a6 == 49 && ((ChapMS2(a5 + 1, (a6 + 1), __s, a3, a4, &v17, v16, 1), *(&v18 + 1) == *(a6 + 25)) ? (v12 = v19 == *(a6 + 33)) : (v12 = 0), v12 ? (v13 = *(&v19 + 1) == *(a6 + 41)) : (v13 = 0), v13))
  {
    if (*(a6 + 49))
    {
      v15 = "S=%s";
    }

    else
    {
      v15 = "S=%s M=%s";
    }

    slprintf(a7, a8, v15);
    return 1;
  }

  else
  {
    slprintf(a7, a8, "E=691 R=1 C=%0.*B V=0 M=%s");
    return 0;
  }
}

uint64_t sub_10000715C(_BYTE *a1, int a2, char *a3, uint64_t a4, char *a5, int a6, char *a7)
{
  v7 = a2;
  *a1 = 49;
  if (byte_10004A2A8[0])
  {
    v8 = byte_10004A318 == a2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = byte_10004A2A8;
  }

  else
  {
    v9 = 0;
  }

  result = ChapMS2((a4 + 1), v9, a3, a5, a6, a1 + 1, a7, 0);
  byte_10004A318 = v7;
  return result;
}

uint64_t sub_1000071C4(_BYTE *a1, uint64_t a2, void *__s2, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 - 42;
  if (a2 < 42 || *a1 != 83 || a1[1] != 61)
  {
    goto LABEL_16;
  }

  v10 = a2;
  if (!memcmp(a1 + 2, __s2, 0x28uLL))
  {
    if (v10 < 0x2D)
    {
      if (!v8)
      {
        return 1;
      }

      dbglog("Rcvd non-conforming MSCHAPv2 Success packet, len=%d", a2, __s2, a4, a5, a6, a7, a8, v8);
      if (v10 != 44)
      {
LABEL_16:
        v11 = "MS-CHAPv2 Success packet is badly formed.";
        goto LABEL_17;
      }
    }

    else
    {
      if (a1[42] == 32 && a1[43] == 77 && a1[44] == 61)
      {
        return 1;
      }

      dbglog("Rcvd non-conforming MSCHAPv2 Success packet, len=%d", a2, __s2, a4, a5, a6, a7, a8, v8);
    }

    if (a1[42] == 77 && a1[43] == 61)
    {
      return 1;
    }

    goto LABEL_16;
  }

  v11 = "MS-CHAPv2 mutual authentication failed.";
LABEL_17:
  error(v11, a2, __s2, a4, a5, a6, a7, a8, v13);
  return 0;
}

uint64_t sub_1000072C4(uint64_t a1, char *a2, _BYTE *a3, char *a4, int a5, char *a6, int a7, char *a8)
{
  v34 = a3[2];
  v13 = a3[3];
  *a1 = 7;
  *(a1 + 1) = a3[1] + 1;
  *(a1 + 2) = 18946;
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, md);
  v36 = a6;
  sub_100006A98(a6, a7, __src);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  random_bytes(v40, 516);
  memcpy(&v40[512 - 2 * a7], __src, 2 * a7);
  v14 = 0;
  v41 = 2 * a7;
  v15 = xmmword_10002E910;
  v16.i64[0] = 0x1010101010101010;
  v16.i64[1] = 0x1010101010101010;
  do
  {
    *&v42[v14] = v15;
    v14 += 16;
    v15 = vaddq_s8(v15, v16);
  }

  while (v14 != 256);
  v17 = 0;
  v18 = 0;
  v58 = 0;
  v19 = v13 | (v34 << 8);
  do
  {
    v20 = v42[v17];
    v18 += v20 + md[v17 & 0xF];
    v42[v17] = v42[v18];
    v42[v18] = v20;
    ++v17;
  }

  while (v17 != 256);
  v21 = 0;
  v22 = v58;
  v23 = HIBYTE(v58);
  do
  {
    v24 = v42[++v22];
    v23 += v24;
    v42[v22] = v42[v23];
    v42[v23] = v24;
    *(a1 + 4 + v21) = v42[(v42[v22] + v24)] ^ v40[v21];
    ++v21;
  }

  while (v21 != 516);
  sub_100006A98(a4, a5, v40);
  CC_MD4(v40, 2 * a5, __src);
  sub_100006A98(v36, a7, data);
  CC_MD4(data, 2 * a7, v42);
  DesSetkey(v42, v25, v26);
  DesEncrypt(__src, (a1 + 520));
  DesSetkey(&v42[7], v27, v28);
  DesEncrypt(&v38, (a1 + 528));
  v29 = v19 - 4;
  if (v19 != 4)
  {
    v30 = a3 + 7;
    while (*(v30 - 3) != 32 || *(v30 - 2) != 67 || *(v30 - 1) != 61)
    {
      ++v30;
      if (!--v29)
      {
        goto LABEL_15;
      }
    }

    sub_1000076FC(v30, v40);
    ChapMS2(v40, 0, a2, v36, a7, (a1 + 536), a8, 0);
  }

LABEL_15:
  *(a1 + 585) = 0;
  return 0;
}

uint64_t sub_1000075BC(_BYTE *a1, char *__s, uint64_t a3, char *a4, int a5, char *a6)
{
  v12 = strlen(__s);
  v13 = __rev16(*(a3 + 2));
  *a1 = 2;
  a1[1] = *(a3 + 1) + 1;
  a1[2] = (v12 + 54) >> 8;
  a1[3] = v12 + 54;
  v14 = v13 - 4;
  if (v14)
  {
    for (i = (a3 + 7); *(i - 3) != 32 || *(i - 2) != 67 || *(i - 1) != 61; ++i)
    {
      if (!--v14)
      {
        return 0;
      }
    }

    sub_1000076FC(i, v17);
    a1[4] = 49;
    ChapMS2(v17, 0, __s, a4, a5, a1 + 5, a6, 0);
    memcpy(a1 + 54, __s, v12);
  }

  return 0;
}

unsigned __int8 *sub_1000076FC(unsigned __int8 *result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    v3 = *result;
    v4 = v3 - 48;
    if ((v3 - 48) >= 0xA)
    {
      if ((v3 - 97) > 5)
      {
        if ((v3 - 65) >= 6)
        {
          v4 = *(a2 + i);
        }

        else
        {
          v4 = v3 - 55;
        }
      }

      else
      {
        v4 = v3 - 87;
      }
    }

    v5 = 16 * v4;
    *(a2 + i) = 16 * v4;
    v6 = result[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      if ((v6 - 97) > 5)
      {
        if ((v6 - 65) > 5)
        {
          goto LABEL_14;
        }

        v7 = v6 - 55;
      }

      else
      {
        v7 = v6 - 87;
      }
    }

    *(a2 + i) = v7 | v5;
LABEL_14:
    result += 2;
  }

  return result;
}

uint64_t demand_conf()
{
  framemax = 1506;
  frame = malloc_type_malloc(0x5E2uLL, 0x9DCF17DDuLL);
  if (!frame)
  {
    novm();
  }

  framelen = 0;
  pend_q = 0;
  escape_flag = 0;
  flush_flag = 0;
  fcs = 0xFFFF;
  if (dword_1000479A8 >= 1500)
  {
    v0 = 1500;
  }

  else
  {
    v0 = dword_1000479A8;
  }

  netif_set_mtu(0, v0);
  if ((ppp_send_config(0, 1500, 0, 0, 0) & 0x80000000) != 0 || (result = ppp_recv_config(0, 1500, 0, 0, 0), (result & 0x80000000) != 0))
  {
    fatal();
  }

  v2 = protocols;
  if (protocols)
  {
    v3 = &off_100043898;
    do
    {
      if (*(v2 + 80))
      {
        v4 = *(v2 + 15);
        if (v4)
        {
          result = v4(0);
          if (!result)
          {
            die(1);
          }
        }
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t demand_block()
{
  v1 = protocols;
  if (protocols)
  {
    v2 = &off_100043898;
    do
    {
      if (*(v1 + 80) && *(v1 + 15))
      {
        sifnpmode(0, *v1 & 0x7FFF, 3);
      }

      v3 = *v2++;
      v1 = v3;
    }

    while (v3);
    v0 = vars8;
  }

  return get_loop_output();
}

void *demand_discard()
{
  v0 = protocols;
  if (protocols)
  {
    v1 = &off_100043898;
    do
    {
      if (*(v0 + 80) && *(v0 + 15))
      {
        sifnpmode(0, *v0 & 0x7FFF, 2);
      }

      v2 = *v1++;
      v0 = v2;
    }

    while (v2);
  }

  get_loop_output();
  result = pend_q;
  if (pend_q)
  {
    do
    {
      v4 = result[1];
      free(result);
      result = v4;
    }

    while (v4);
  }

  pend_q = 0;
  framelen = 0;
  flush_flag = 0;
  escape_flag = 0;
  fcs = 0xFFFF;
  return result;
}

uint64_t demand_unblock()
{
  v0 = protocols;
  if (protocols)
  {
    v1 = &off_100043898;
    do
    {
      if (*(v0 + 80))
      {
        if (*(v0 + 15))
        {
          result = sifnpmode(0, *v0 & 0x7FFF, 0);
        }
      }

      v3 = *v1++;
      v0 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t loop_chars(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = a2 + 1;
    while (1)
    {
      v12 = *a1++;
      v11 = v12;
      if (v12 == 126)
      {
        v13 = framelen;
        if (escape_flag)
        {
          v14 = 0;
        }

        else
        {
          v14 = flush_flag == 0;
        }

        if (v14 && framelen >= 3 && fcs == 61624)
        {
          framelen -= 2;
          if (loop_frame(frame, (v13 - 2), a3, a4, a5, a6, a7, a8))
          {
            v9 = 1;
          }

          else
          {
            v9 = v9;
          }
        }

        framelen = 0;
        flush_flag = 0;
        escape_flag = 0;
        fcs = 0xFFFF;
        goto LABEL_20;
      }

      if (!flush_flag)
      {
        if (escape_flag)
        {
          LOBYTE(v11) = v11 ^ 0x20;
          escape_flag = 0;
LABEL_26:
          v17 = framelen;
          if (framelen >= framemax)
          {
            flush_flag = 1;
          }

          else
          {
            ++framelen;
            *(frame + v17) = v11;
            fcs = word_10002EA34[(fcs ^ v11)] ^ (fcs >> 8);
          }

          goto LABEL_20;
        }

        if (v11 != 125)
        {
          goto LABEL_26;
        }

        escape_flag = 1;
      }

LABEL_20:
      if (--v10 <= 1)
      {
        return v9;
      }
    }
  }

  return 0;
}

uint64_t loop_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dbglog("Dial on demand: %P", a2, a3, a4, a5, a6, a7, a8, a1);
  if (a2 < 4)
  {
    return 0;
  }

  v10 = *(a1 + 2);
  if (v10 < 0)
  {
    return 0;
  }

  v11 = protocols;
  if (!protocols)
  {
    return 0;
  }

  v12 = *(a1 + 3) | (v10 << 8);
  for (i = &off_100043898; ; ++i)
  {
    v14 = *v11;
    v15 = v14 >> 14;
    v16 = v14 & 0x7FFF;
    if (v15 <= 2 && v12 == v16)
    {
      break;
    }

    v18 = *i;
    v11 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  if (!*(v11 + 80))
  {
    return 0;
  }

  v20 = *(v11 + 16);
  if (!v20 || (result = v20(a1, a2), result))
  {
    v21 = malloc_type_malloc(a2 + 24, 0x10200406FCD4940uLL);
    if (v21)
    {
      v22 = v21;
      *v21 = a2;
      v21[1] = 0;
      memcpy(v21 + 2, a1, a2);
      v23 = &pend_q;
      if (pend_q)
      {
        v23 = (pend_qtail + 8);
      }

      *v23 = v22;
      pend_qtail = v22;
    }

    return 1;
  }

  return result;
}

void demand_rexmit(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = pend_q;
  pend_q = 0;
  if (!v8)
  {
    v12 = &pend_qtail;
    goto LABEL_13;
  }

  v10 = 0;
  do
  {
    while (1)
    {
      v11 = v8;
      v8 = *(v8 + 8);
      if (a1 != bswap32(v11[9]) >> 16)
      {
        break;
      }

      output(0, (v11 + 8), *v11, a4, a5, a6, a7, a8, v13);
      free(v11);
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    if (v10)
    {
      *(v10 + 8) = v11;
    }

    else
    {
      pend_q = v11;
    }

    v10 = v11;
  }

  while (v8);
LABEL_10:
  pend_qtail = v10;
  if (v10)
  {
    v12 = (v10 + 8);
LABEL_13:
    *v12 = 0;
  }
}

double fsm_init(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *&result = 0xA00000003;
  *(a1 + 20) = 0xA00000003;
  *(a1 + 32) = 2;
  *(a1 + 40) = 5;
  *(a1 + 48) = 255;
  *(a1 + 72) = 0;
  return result;
}

void fsm_lowerup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    if (v9 != 1)
    {
      return;
    }

    if ((*(a1 + 12) & 4) != 0)
    {
      v10 = 3;
    }

    else
    {
      sub_100007DEC(a1, 0, a3, a4, a5, a6, a7, a8);
      v10 = 6;
    }
  }

  else
  {
    v10 = 2;
  }

  *(a1 + 8) = v10;
}

void sub_100007DEC(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1[2] - 6) >= 3)
  {
    v10 = **(a1 + 7);
    if (v10)
    {
      v10(a1);
    }

    a1[9] = 0;
    a1[11] = 0;
  }

  if (!a2)
  {
    a1[7] = a1[6];
    v11 = *(a1 + 16) + 1;
    *(a1 + 16) = v11;
    *(a1 + 17) = v11;
    ++a1[11];
  }

  *(a1 + 18) = 0;
  v12 = *(a1 + 7);
  v13 = *(v12 + 8);
  if (v13 && *(v12 + 16))
  {
    v14 = v13(a1);
    v15 = peer_mru[*a1] - 4;
    if (v14 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v20 = v16;
    v17 = *(*(a1 + 7) + 16);
    if (v17)
    {
      v17(a1, &byte_100048124, &v20);
      v16 = v20;
    }
  }

  else
  {
    v16 = 0;
    v20 = 0;
  }

  fsm_sdata(a1, 1, *(a1 + 17), &byte_100048124, v16, a6, a7, a8, v19);
  --a1[7];
  v18 = a1[5];
  timeout(sub_100008014);
}

void fsm_lowerdown(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 4)
  {
    if (v2 == 2)
    {
      *(a1 + 8) = 0;
      return;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return;
      }

      *(a1 + 8) = 0;
      goto LABEL_4;
    }

    *(a1 + 8) = 1;
    v4 = *(*(a1 + 56) + 72);
    if (v4)
    {

      v4();
    }
  }

  else
  {
    if ((v2 - 5) < 4)
    {
      *(a1 + 8) = 1;
LABEL_4:

      untimeout(sub_100008014, a1);
      return;
    }

    if (v2 == 9)
    {
      v3 = *(*(a1 + 56) + 64);
      if (v3)
      {
        v3(a1);
      }

      *(a1 + 8) = 1;
    }
  }
}

void sub_100008014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if ((v9 - 6) >= 3)
  {
    if ((v9 - 4) > 1)
    {
      return;
    }

    if (*(a1 + 28) > 0)
    {
      v12 = *(a1 + 16) + 1;
      *(a1 + 16) = v12;
      *(a1 + 17) = v12;
      fsm_sdata(a1, 5, v12, *(a1 + 64), *(a1 + 72), a6, a7, a8, v16);
      v13 = *(a1 + 20);
      timeout(sub_100008014);
      --*(a1 + 28);
      return;
    }

    if (v9 == 4)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    *(a1 + 8) = v14;
  }

  else
  {
    v10 = *(a1 + 56);
    if (*(a1 + 28) > 0)
    {
      v11 = *(v10 + 96);
      if (v11)
      {
        v11(a1);
      }

      sub_100007DEC(a1, 1);
      if (*(a1 + 8) == 7)
      {
        *(a1 + 8) = 6;
      }

      return;
    }

    warning("%s: timeout sending Config-Requests\n", a2, a3, a4, a5, a6, a7, a8, *(v10 + 112));
    *(a1 + 8) = 3;
    if (*(a1 + 12))
    {
      return;
    }
  }

  v15 = *(*(a1 + 56) + 80);
  if (v15)
  {

    v15(a1);
  }
}

void fsm_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 2)
      {
        if ((*(a1 + 12) & 4) != 0)
        {
          v10 = 3;
        }

        else
        {
          sub_100007DEC(a1, 0, a3, a4, a5, a6, a7, a8);
          v10 = 6;
        }

        *(a1 + 8) = v10;
      }
    }

    else
    {
      *(a1 + 8) = 1;
      v18 = *(*(a1 + 56) + 72);
      if (v18)
      {

        v18();
      }
    }
  }

  else
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        *(a1 + 8) = 5;
      }

      else if (v9 != 9)
      {
        return;
      }
    }

    if ((*(a1 + 12) & 2) != 0)
    {
      fsm_lowerdown(a1);

      fsm_lowerup(a1, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void fsm_close(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 64) = __s;
  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 72) = v9;
  v10 = *(a1 + 8);
  if (v10 <= 5)
  {
    switch(v10)
    {
      case 1:
        v13 = 0;
        goto LABEL_9;
      case 3:
        v13 = 2;
        goto LABEL_9;
      case 5:
LABEL_8:
        v13 = 4;
LABEL_9:
        *(a1 + 8) = v13;
        break;
    }
  }

  else
  {
    if ((v10 - 6) < 3)
    {
      untimeout(sub_100008014, a1);
LABEL_7:
      *(a1 + 28) = *(a1 + 32);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      *(a1 + 17) = v11;
      fsm_sdata(a1, 5, v11, *(a1 + 64), *(a1 + 72), a6, a7, a8, v15);
      v12 = *(a1 + 20);
      timeout(sub_100008014);
      --*(a1 + 28);
      goto LABEL_8;
    }

    if (v10 == 9)
    {
      v14 = *(*(a1 + 56) + 64);
      if (v14)
      {
        v14(a1);
      }

      goto LABEL_7;
    }
  }
}

void fsm_sdata(unsigned int *a1, char a2, char a3, char *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (peer_mru[*a1] - 4 >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = peer_mru[*a1] - 4;
  }

  if (v12)
  {
    v13 = __src == &byte_100048124;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    memcpy(&byte_100048124, __src, v12);
  }

  LOWORD(outpacket_buf) = 1023;
  v14 = a1[1];
  BYTE2(outpacket_buf) = BYTE1(v14);
  HIBYTE(outpacket_buf) = v14;
  LOBYTE(word_100048120) = a2;
  HIBYTE(word_100048120) = a3;
  LOBYTE(word_100048122) = (v12 + 4) >> 8;
  HIBYTE(word_100048122) = v12 + 4;
  v15 = *a1;

  output(v15, &outpacket_buf, (v12 + 8), __src, a5, a6, a7, a8, a9);
}

void fsm_input(uint64_t a1, _BYTE *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3 < 4)
  {
    return;
  }

  v10 = __rev16(*(__src + 1));
  v11 = v10 < 4 || v10 > a3;
  if (v11 || *(a1 + 8) < 2u)
  {
    return;
  }

  v13 = *__src;
  v14 = __src[1];
  if (*__src <= 4u)
  {
    if ((v13 - 3) >= 2)
    {
      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v15 = __src[1];

          sub_100008AA0(a1, v15, (__src + 4), (v10 - 4), a5, a6, a7, a8, a9);
          return;
        }

        goto LABEL_33;
      }

      v30 = __src[1];

      sub_100008808(a1, v30, (__src + 4), (v10 - 4), a5, a6, a7, a8, a9);
      return;
    }

    if (*(a1 + 17) != v14 || *(a1 + 18))
    {
      return;
    }

    v16 = 40;
    if (v13 == 3)
    {
      v16 = 32;
    }

    v17 = *(*(a1 + 56) + v16);
    if (!v17 || (v18 = v17(a1, __src + 4, (v10 - 4))) == 0)
    {
      error("Received bad configure-nak/rej: %P", v13, a3, a4, a5, a6, a7, a8, __src + 4);
      return;
    }

    v19 = v18;
    *(a1 + 18) = 1;
    v20 = *(a1 + 8);
    if (v20 <= 6)
    {
      if ((v20 - 2) < 2)
      {
        v21 = a1;
        v22 = 6;
        v23 = v14;
        v24 = 0;
        v25 = 0;
LABEL_36:

        fsm_sdata(v21, v22, v23, v24, v25, a6, a7, a8, a9);
        return;
      }

      if (v20 != 6)
      {
        return;
      }

      goto LABEL_52;
    }

    switch(v20)
    {
      case 7:
        untimeout(sub_100008014, a1);
        break;
      case 8:
LABEL_52:
        untimeout(sub_100008014, a1);
        if ((v19 & 0x80000000) == 0)
        {
          if (*(a1 + 44) >= *(a1 + 48))
          {
            warning("%s: Maximum Config-Requests exceeded\n", v32, v33, v34, v35, v36, v37, v38, *(*(a1 + 56) + 112));
            *(a1 + 8) = 3;
            if ((*(a1 + 12) & 1) == 0)
            {
              v40 = *(*(a1 + 56) + 80);
              if (v40)
              {

                v40(a1);
              }
            }
          }

          else
          {

            sub_100007DEC(a1, 0, v33, v34, v35, v36, v37, v38);
          }

          return;
        }

        v39 = 3;
LABEL_60:
        *(a1 + 8) = v39;
        return;
      case 9:
        v31 = *(*(a1 + 56) + 64);
        if (v31)
        {
          v31(a1);
        }

        break;
      default:
        return;
    }

    sub_100007DEC(a1, 0, a3, a4, a5, a6, a7, a8);
    v39 = 6;
    goto LABEL_60;
  }

  switch(v13)
  {
    case 5:
      v26 = __src[1];

      sub_100008C54(a1, v26, (__src + 4), (v10 - 4), a5, a6, a7, a8, a9);
      break;
    case 6:

      sub_100008D3C(a1, v13, a3, a4, a5, a6, a7, a8);
      break;
    case 7:

      sub_100008E20(a1, __src + 4, (v10 - 4), a4, a5, a6, a7, a8);
      break;
    default:
LABEL_33:
      v27 = *(*(a1 + 56) + 104);
      if (v27)
      {
        v28 = __src[1];
        if (v27(a1))
        {
          return;
        }
      }

      v29 = *(a1 + 16) + 1;
      *(a1 + 16) = v29;
      v23 = v29;
      v21 = a1;
      v22 = 7;
      v24 = __src;
      v25 = v10;
      goto LABEL_36;
  }
}

void sub_100008808(uint64_t a1, unsigned __int8 a2, uint64_t __src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = __src;
  v33 = a4;
  v13 = *(a1 + 8);
  if (v13 <= 3)
  {
    if (v13 == 2)
    {
      v18 = a2;
      v19 = 6;
      v20 = 0;
      v21 = 0;
LABEL_13:

      fsm_sdata(a1, v19, v18, v20, v21, a6, a7, a8, a9);
      return;
    }

    if (v13 == 3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v13 - 4) < 2)
    {
      return;
    }

    if (v13 == 9)
    {
      if (*(a1 + 52) == a2)
      {
        if (a4 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = a4;
          v16 = __src;
          do
          {
            v17 = *v16++;
            v14 = word_10002EC40[v17 ^ ((v14 & 0xFF00) >> 8)] ^ (v14 << 8);
            --v15;
          }

          while (v15);
        }

        if (*(a1 + 54) == v14)
        {
          v18 = a2;
          v19 = 2;
          v20 = v10;
          v21 = a4;
          goto LABEL_13;
        }
      }

      v22 = *(*(a1 + 56) + 64);
      if (v22)
      {
        v22(a1);
      }

LABEL_21:
      sub_100007DEC(a1, 0, __src, a4, a5, a6, a7, a8);
      *(a1 + 8) = 6;
    }
  }

  v23 = *(*(a1 + 56) + 48);
  if (v23)
  {
    v24 = v23(a1, v10, &v33, *(a1 + 36) >= *(a1 + 40));
    fsm_sdata(a1, v24, a2, v10, v33, v25, v26, v27, v32);
    if (v24 == 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (!a4)
    {
      fsm_sdata(a1, 2, a2, v10, a4, a6, a7, a8, v32);
LABEL_32:
      if (*(a1 + 8) == 7)
      {
        untimeout(sub_100008014, a1);
        *(a1 + 8) = 9;
        v28 = *(*(a1 + 56) + 56);
        if (v28)
        {
          v28(a1);
        }
      }

      else
      {
        *(a1 + 8) = 8;
      }

      *(a1 + 36) = 0;
      *(a1 + 52) = a2;
      v29 = v33;
      if (v33 < 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0;
        do
        {
          v31 = *v10++;
          v30 = word_10002EC40[v31 ^ ((v30 & 0xFF00) >> 8)] ^ (v30 << 8);
          --v29;
        }

        while (v29);
      }

      *(a1 + 54) = v30;
      return;
    }

    v24 = 4;
    fsm_sdata(a1, 4, a2, v10, a4, a6, a7, a8, v32);
  }

  if (*(a1 + 8) != 7)
  {
    *(a1 + 8) = 6;
  }

  if (v24 == 3)
  {
    ++*(a1 + 36);
  }
}

void sub_100008AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a1 + 17) != a2 || *(a1 + 18))
  {
    return;
  }

  v10 = a3;
  v11 = a2;
  v12 = *(*(a1 + 56) + 24);
  if (v12)
  {
    if (v12(a1, a3, a4))
    {
      goto LABEL_5;
    }

LABEL_11:
    error("Received bad configure-ack: %P", a2, a3, a4, a5, a6, a7, a8, v10);
    return;
  }

  if (a4)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a1 + 18) = 1;
  v13 = *(a1 + 8);
  if (v13 <= 6)
  {
    if ((v13 - 2) >= 2)
    {
      if (v13 == 6)
      {
        *(a1 + 8) = 7;
        *(a1 + 28) = *(a1 + 24);
      }
    }

    else
    {

      fsm_sdata(a1, 6, v11, 0, 0, a6, a7, a8, a9);
    }

    return;
  }

  if (v13 == 7)
  {
    untimeout(sub_100008014, a1);
LABEL_20:
    sub_100007DEC(a1, 0, a3, a4, a5, a6, a7, a8);
    *(a1 + 8) = 6;
    return;
  }

  if (v13 != 8)
  {
    if (v13 != 9)
    {
      return;
    }

    v14 = *(*(a1 + 56) + 64);
    if (v14)
    {
      v14(a1);
    }

    goto LABEL_20;
  }

  untimeout(sub_100008014, a1);
  *(a1 + 8) = 9;
  *(a1 + 28) = *(a1 + 24);
  v15 = *(*(a1 + 56) + 56);
  if (v15)
  {

    v15(a1);
  }
}

void sub_100008C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a2;
  v11 = *(a1 + 8);
  if ((v11 - 7) >= 2)
  {
    if (v11 == 9)
    {
      if (a4 < 1)
      {
        info("%s terminated by peer", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 56) + 112));
      }

      else
      {
        info("%s terminated by peer (%0.*v)", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 56) + 112));
      }

      *(a1 + 28) = 0;
      *(a1 + 8) = 5;
      v12 = *(*(a1 + 56) + 64);
      if (v12)
      {
        v12(a1);
      }

      v13 = *(a1 + 20);
      timeout(sub_100008014);
    }
  }

  else
  {
    *(a1 + 8) = 6;
  }

  fsm_sdata(a1, 6, v9, 0, 0, a6, a7, a8, a9);
}

void sub_100008D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9 > 6)
  {
    if (v9 != 7)
    {
      if (v9 != 9)
      {
        return;
      }

      v11 = *(*(a1 + 56) + 64);
      if (v11)
      {
        v11(a1);
      }

      sub_100007DEC(a1, 0, a3, a4, a5, a6, a7, a8);
    }

    *(a1 + 8) = 6;
  }

  else
  {
    if (v9 == 4)
    {
      untimeout(sub_100008014, a1);
      v10 = 2;
    }

    else
    {
      if (v9 != 5)
      {
        return;
      }

      untimeout(sub_100008014, a1);
      v10 = 3;
    }

    *(a1 + 8) = v10;
    v12 = *(*(a1 + 56) + 80);
    if (v12)
    {

      v12(a1);
    }
  }
}

void sub_100008E20(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 4)
  {
    v9 = *a2;
    v10 = a2[1];
    warning("%s: Rcvd Code-Reject for code %d, id %d", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 56) + 112));
    if (*(a1 + 8) == 7)
    {
      *(a1 + 8) = 6;
    }
  }
}

uint64_t crc16(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 = word_10002EC40[v3 ^ ((v2 & 0xFF00) >> 8)] ^ (v2 << 8);
      --a2;
    }

    while (a2);
  }

  return v2;
}

void fsm_protreject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9 <= 4)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        goto LABEL_4;
      }

      if (v9 != 4)
      {
        return;
      }

      untimeout(sub_100008014, a1);
    }

    v10 = 2;
LABEL_10:
    *(a1 + 8) = v10;
    v11 = *(*(a1 + 56) + 80);
    if (v11)
    {

      v11(a1);
    }

    return;
  }

  if ((v9 - 5) < 4)
  {
    untimeout(sub_100008014, a1);
LABEL_4:
    v10 = 3;
    goto LABEL_10;
  }

  if (v9 == 9)
  {
    v12 = *(*(a1 + 56) + 64);
    if (v12)
    {
      v12(a1);
    }

    *(a1 + 28) = *(a1 + 32);
    v13 = *(a1 + 16) + 1;
    *(a1 + 16) = v13;
    *(a1 + 17) = v13;
    fsm_sdata(a1, 5, v13, *(a1 + 64), *(a1 + 72), a6, a7, a8, v15);
    v14 = *(a1 + 20);
    timeout(sub_100008014);
    --*(a1 + 28);
    *(a1 + 8) = 5;
  }
}

double sub_100009008(int a1)
{
  v1 = &ipcp_fsm + 80 * a1;
  v2 = &ipcp_wantoptions + 52 * a1;
  v3 = &ipcp_allowoptions + 52 * a1;
  *v1 = a1;
  *(v1 + 1) = 32801;
  *(v1 + 7) = off_100042CC0;
  fsm_init(v1);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 12) = 0;
  *(v2 + 2) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 12) = 0;
  *v2 = 257;
  v2[5] = 1;
  *&result = 0xF0000002DLL;
  *(v2 + 2) = 0xF0000002DLL;
  v2[24] = 1;
  *v3 = 257;
  *(v3 + 5) = 15;
  v3[24] = 1;
  *(v3 + 2) = 257;
  v3[3] = 1;
  return result;
}

uint64_t sub_100009158(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  v14 = v11 - 1;
  if ((v11 - 1) > 6)
  {
    v34 = *a1;
    v16 = " code=0x%x";
  }

  else
  {
    v15 = (&off_10003CAA8)[v14];
    v16 = " %s";
  }

  a3(a4, v16);
  (a3)(a4, " id=0x%x", v12);
  if (v14 < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v17 = v13[1];
        if (v17 < 2 || v7 < v17)
        {
          goto LABEL_53;
        }

        v19 = *v13;
        a3(a4, " <");
        if (v19 <= 128)
        {
          break;
        }

        if (v19 <= 130)
        {
          if (v19 == 129)
          {
LABEL_31:
            v20 = v13 + 6;
            v25 = *(v13 + 2);
            htonl();
            v22 = a4;
            v23 = "ms-dns%d %I";
          }

          else
          {
LABEL_30:
            v20 = v13 + 6;
            v24 = *(v13 + 2);
            htonl();
            v22 = a4;
            v23 = "ms-wins%d %I";
          }

LABEL_32:
          a3(v22, v23);
          goto LABEL_33;
        }

        if (v19 == 131)
        {
          goto LABEL_31;
        }

        v20 = v13;
        if (v19 == 132)
        {
          goto LABEL_30;
        }

LABEL_33:
        if (v20 < &v13[v17])
        {
          v26 = &v13[v17] - v20;
          do
          {
            v27 = *v20++;
            (a3)(a4, " %.2x", v27);
            --v26;
          }

          while (v26);
          v20 = &v13[v17];
        }

        v7 -= v17;
        a3(a4, ">");
        v13 = v20;
        if (v7 <= 1)
        {
          goto LABEL_52;
        }
      }

      v20 = v13;
      switch(v19)
      {
        case 1:
          if (v17 != 10)
          {
            goto LABEL_33;
          }

          v28 = *(v13 + 2);
          v29 = htonl();
          (a3)(a4, "addrs %I", v29);
          v20 = v13 + 10;
          v30 = *(v13 + 6);
          htonl();
          v22 = a4;
          v23 = " %I";
          break;
        case 2:
          if (v17 < 4)
          {
            goto LABEL_33;
          }

          v20 = v13 + 4;
          v31 = __rev16(*(v13 + 1));
          a3(a4, "compress ");
          if (v31 == 55)
          {
            v22 = a4;
            v23 = "old-VJ";
          }

          else
          {
            v22 = a4;
            if (v31 == 45)
            {
              v23 = "VJ";
            }

            else
            {
              v23 = "0x%x";
            }
          }

          break;
        case 3:
          v20 = v13;
          if (v17 != 6)
          {
            goto LABEL_33;
          }

          v20 = v13 + 6;
          v21 = *(v13 + 2);
          htonl();
          v22 = a4;
          v23 = "addr %I";
          break;
        default:
          goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_51:
    v20 = a1 + 4;
LABEL_52:
    v13 = v20;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_53;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_51;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_53:
      v32 = v7 + 1;
      do
      {
        v33 = *v13++;
        (a3)(a4, " %.2x", v33);
        --v32;
      }

      while (v32 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

uint64_t sub_1000094E0(uint64_t result)
{
  if (*(&ipcp_fsm + 20 * result + 2) == 9 && ipdata_input_hook != 0)
  {
    v2 = &ipcp_wantoptions + 52 * result;
    v3 = *(v2 + 7);
    v4 = *(v2 + 8);
    return ipdata_input_hook();
  }

  return result;
}

void sub_100009524()
{
  if (dword_10004777C)
  {
    v0 = 0;
  }

  else
  {
    v0 = disable_defaultip == 0;
  }

  if (v0)
  {
    byte_100047767 = 1;
    v1 = gethostbyname(hostname);
    if (v1)
    {
      v2 = *v1->h_addr_list;
      v3 = *v2;
      if (*v2)
      {
        v4 = *v2;
        if (!bad_ip_adrs())
        {
          dword_10004777C = v3;
        }
      }
    }
  }

  if (disable_defaultip)
  {
    v5 = dword_10004777C == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  byte_10004A382 = v6;
}

uint64_t sub_1000095BC(uint64_t a1)
{
  v2 = &ipcp_wantoptions + 52 * a1;
  v3 = *(v2 + 8);
  if (!v3)
  {
    v3 = htonl();
    *(v2 + 8) = v3;
    v2[8] = 1;
  }

  v4 = *(v2 + 7);
  if (!v4)
  {
    v4 = htonl();
    *(v2 + 7) = v4;
    v2[7] = 1;
    byte_10004A382 = 0;
  }

  Mask = GetMask();
  result = sifaddr(a1, v4, v3, Mask);
  if (result)
  {
    result = sifnpafmode(a1, 33, ip_src_address_filter);
    if (result)
    {
      result = sifup();
      if (result)
      {
        result = sifnpmode(a1, 33, 3);
        if (result)
        {
          if (v2[3])
          {
            v14 = *(v2 + 7);
            v15 = *(v2 + 8);
            if (sifdefaultroute())
            {
              dword_10004A384[a1] = 1;
            }
          }

          if (v2[4] && sifproxyarp(a1, *(v2 + 8)))
          {
            dword_10004A388[a1] = 1;
          }

          if (byte_10004A36C)
          {
            sifdns(*(v2 + 8), *(v2 + 8));
          }

          if (byte_10004A36D)
          {
            v16 = *(v2 + 8);
            sifwins();
          }

          notice("local  IP address %I", v7, v8, v9, v10, v11, v12, v13, *(v2 + 7));
          notice("remote IP address %I", v17, v18, v19, v20, v21, v22, v23, *(v2 + 8));
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_100009770(_BYTE *a1, int a2)
{
  result = 0;
  if (a2 >= 24 && !(a1[11] | ((a1[10] & 0x1F) << 8)))
  {
    if (a1[13] != 6)
    {
      return 1;
    }

    v3 = 4 * (a1[4] & 0xF);
    if (a2 - 4 >= (v3 + 20))
    {
      v4 = &a1[v3 + 4];
      if ((v4[13] & 1) == 0 || a2 - 4 != ((v4[12] >> 2) & 0x3C) + v3)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000097FC()
{
  if (ipdata_print_hook)
  {
    return ipdata_print_hook();
  }

  else
  {
    return 0;
  }
}

char *setipaddr(char *a1, uint64_t a2, int a3)
{
  result = strchr(a1, 58);
  if (result)
  {
    if (a3)
    {
      v6 = result;
      if (result != a1 && option_priority >= dword_10004A35C)
      {
        *result = 0;
        v7 = inet_addr(a1);
        if (v7 == -1)
        {
          v8 = gethostbyname(a1);
          if (!v8)
          {
            option_error("unknown host: %s", v9, v10, v11, v12, v13, v14, v15, a1);
            return 0;
          }

          v7 = **v8->h_addr_list;
        }

        if (bad_ip_adrs())
        {
          slprintf(&unk_10004A31C, 64, "%I");
          option_error("bad local IP address %s", v16, v17, v18, v19, v20, v21, v22, &unk_10004A31C);
          return 0;
        }

        if (v7)
        {
          dword_10004777C = v7;
        }

        *v6 = 58;
        dword_10004A35C = option_priority;
      }

      v24 = v6[1];
      v23 = v6 + 1;
      if (v24 && option_priority >= dword_10004A360)
      {
        v25 = inet_addr(v23);
        if (v25 == -1)
        {
          v33 = gethostbyname(v23);
          if (!v33)
          {
            option_error("unknown host: %s", v34, v35, v36, v37, v38, v39, v40, v23);
            return 0;
          }

          v25 = **v33->h_addr_list;
          if (!remote_name)
          {
            __strlcpy_chk();
          }
        }

        if (bad_ip_adrs())
        {
          slprintf(&unk_10004A31C, 64, "%I");
          option_error("bad remote IP address %s", v26, v27, v28, v29, v30, v31, v32, &unk_10004A31C);
          return 0;
        }

        if (v25)
        {
          dword_100047780 = v25;
        }

        dword_10004A360 = option_priority;
      }
    }

    return 1;
  }

  return result;
}

uint64_t parse_dotted_ip(const char *a1, unsigned int *a2)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 0);
  v5 = __endptr;
  if (__endptr == a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 3;
  v8 = 24;
  while (v4 < 0x100)
  {
    v6 |= v4 << v8;
    if (!v7)
    {
      v4 = v6;
      goto LABEL_11;
    }

    if (*v5 == 46)
    {
      v9 = v5 + 1;
      --v7;
      v4 = strtoul(v5 + 1, &__endptr, 0);
      v5 = __endptr;
      v8 -= 8;
      if (__endptr != v9)
      {
        continue;
      }
    }

    return 0;
  }

  if (v7 < 3)
  {
    return 0;
  }

LABEL_11:
  *a2 = v4;
  return (v5 - a1);
}

uint64_t sub_100009B0C(const char **a1)
{
  v10 = 0;
  result = int_option(*a1, &v10);
  if (result)
  {
    if ((v10 - 17) > 0xFFFFFFF0)
    {
      dword_1000477DC = v10 - 1;
      dword_100047774 = v10 - 1;
      slprintf(&unk_10004A364, 8, "%d");
      return 1;
    }

    else
    {
      option_error("vj-max-slots value must be between 2 and 16", v2, v3, v4, v5, v6, v7, v8, v9);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100009B94(const char **a1)
{
  v2 = inet_addr(*a1);
  if (v2 == -1)
  {
    v3 = gethostbyname(*a1);
    if (!v3)
    {
      option_error("invalid address parameter '%s' for ms-dns option", v4, v5, v6, v7, v8, v9, v10, *a1);
      return 0;
    }

    v2 = **v3->h_addr_list;
  }

  v11 = dword_1000477F0;
  if (!dword_1000477F0)
  {
    v11 = v2;
  }

  dword_1000477EC = v11;
  dword_1000477F0 = v2;
  return 1;
}

uint64_t sub_100009C1C(const char **a1)
{
  v2 = inet_addr(*a1);
  if (v2 == -1)
  {
    v3 = gethostbyname(*a1);
    if (!v3)
    {
      option_error("invalid address parameter '%s' for ms-wins option", v4, v5, v6, v7, v8, v9, v10, *a1);
      return 0;
    }

    v2 = **v3->h_addr_list;
  }

  v11 = dword_1000477F8;
  if (!dword_1000477F8)
  {
    v11 = v2;
  }

  dword_1000477F4 = v11;
  dword_1000477F8 = v2;
  return 1;
}

uint64_t sub_100009CA4(const char **a1)
{
  v13 = 0;
  v2 = *a1;
  v3 = parse_dotted_ip(*a1, &v13);
  v4 = htonl();
  if (!v3 || v2[v3] || (netmask & ~v4) != 0)
  {
    option_error("invalid netmask value '%s'", v5, v6, v7, v8, v9, v10, v11, *a1);
    return 0;
  }

  else
  {
    netmask = v4;
    slprintf(&unk_10004A36E, 20, "%I");
    return 1;
  }
}

uint64_t sub_100009D54(uint64_t a1, void (*a2)(uint64_t, const char *, ...), uint64_t a3)
{
  if (dword_10004777C)
  {
    a2(a3, "%I", dword_10004777C);
  }

  result = (a2)(a3, ":");
  if (dword_100047780)
  {
    return (a2)(a3, "%I", dword_100047780);
  }

  return result;
}

int *sub_100009DD0(int *result)
{
  v1 = *result;
  v2 = &ipcp_wantoptions + 52 * *result;
  if (*v2 || (v3 = v2[1]) != 0)
  {
    v4 = &ipcp_allowoptions + 52 * v1;
    if (*v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4[1] != 0;
    }
  }

  v5 = &ipcp_gotoptions + 52 * v1;
  v2[2] = v3;
  if (!*(v2 + 7))
  {
    v2[7] = 1;
  }

  if (!*(v2 + 8))
  {
    v2[8] = 1;
  }

  v6 = byte_10004A36C;
  v2[9] = byte_10004A36C;
  v2[10] = v6;
  v7 = byte_10004A36D;
  v2[11] = byte_10004A36D;
  v2[12] = v7;
  v8 = *(v2 + 2);
  *(v5 + 1) = *(v2 + 1);
  *(v5 + 2) = v8;
  *(v5 + 12) = *(v2 + 12);
  *v5 = *v2;
  if (!byte_10004A382)
  {
    *(v5 + 7) = 0;
  }

  if (ip_choose_hook)
  {
    result = ip_choose_hook(v2 + 32);
    if (*(v2 + 8))
    {
      v2[8] = 0;
    }
  }

  return result;
}

uint64_t sub_100009ED4(int *a1, uint8x8_t a2)
{
  v2 = *a1;
  v3 = &ipcp_gotoptions + 52 * *a1;
  v4 = &ipcp_wantoptions + 52 * *a1;
  if ((*v4 || v4[1]) && !*v3 && !v3[1])
  {
    v3[1] = 1;
  }

  if (v4[5])
  {
    if (!v3[5] && !v3[6])
    {
      v10 = &ipcp_hisoptions + 52 * v2;
      if (v10[5])
      {
        if (v10[6])
        {
          *(v3 + 5) = 257;
          *(v3 + 4) = *(v10 + 4);
        }
      }
    }
  }

  if (*v3)
  {
    v5 = 0;
  }

  else if (v3[1])
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3[5];
  if (v3[5])
  {
    if (v3[6])
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }
  }

  if (*v3)
  {
    v7 = 6;
  }

  else
  {
    v7 = 0;
  }

  a2.i32[0] = *(v3 + 9);
  v8.i64[0] = 0x600000006;
  v8.i64[1] = 0x600000006;
  return (vaddvq_s32(vbicq_s8(v8, vceqzq_s32(vmovl_u16(*&vmovl_u8(a2))))) + v7 + v6 + v5);
}

int *sub_100009FDC(int *result, uint64_t a2, int *a3)
{
  v4 = a2;
  v5 = &ipcp_gotoptions + 52 * *result;
  v6 = *a3;
  if (!*v5 && v5[1])
  {
    v8 = v6 - 10;
    if (v6 < 10)
    {
      v5[1] = 0;
    }

    else
    {
      *a2 = 2561;
      v9 = *(v5 + 7);
      *(a2 + 2) = bswap32(ntohl());
      v10 = *(v5 + 8);
      result = ntohl();
      *(v4 + 6) = bswap32(result);
      v4 += 10;
      v6 = v8;
    }
  }

  if (v5[5])
  {
    if (v5[6])
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }

    if (v6 >= v7)
    {
      *v4 = 2;
      *(v4 + 1) = v7;
      *(v4 + 2) = BYTE1(*(v5 + 4));
      *(v4 + 3) = *(v5 + 4);
      if (v5[6])
      {
        v4 += 4;
      }

      else
      {
        *(v4 + 4) = *(v5 + 5);
        *(v4 + 5) = v5[24];
        v4 += 6;
      }

      v6 -= v7;
    }

    else
    {
      v5[5] = 0;
    }
  }

  if (*v5)
  {
    v11 = v6 - 6;
    if (v6 < 6)
    {
      *v5 = 0;
    }

    else
    {
      *v4 = 1539;
      v12 = *(v5 + 7);
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v11;
    }
  }

  if (v5[9])
  {
    v13 = v6 - 6;
    if (v6 < 6)
    {
      v5[9] = 0;
    }

    else
    {
      *v4 = 1665;
      v14 = *(v5 + 9);
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v13;
    }
  }

  if (v5[10])
  {
    v15 = v6 - 6;
    if (v6 < 6)
    {
      v5[10] = 0;
    }

    else
    {
      *v4 = 1667;
      v16 = *(v5 + 10);
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v15;
    }
  }

  if (v5[11])
  {
    v17 = v6 - 6;
    if (v6 < 6)
    {
      v5[11] = 0;
    }

    else
    {
      *v4 = 1666;
      v18 = *(v5 + 11);
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v17;
    }
  }

  if (v5[12])
  {
    v19 = v6 - 6;
    if (v6 < 6)
    {
      v5[12] = 0;
    }

    else
    {
      *v4 = 1668;
      v20 = *(v5 + 12);
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v6 = v19;
    }
  }

  *a3 -= v6;
  return result;
}

uint64_t sub_10000A208(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v10 = &ipcp_gotoptions + 52 * *a1;
  v11 = *v10;
  if (!*v10 && v10[1])
  {
    v8 = a3 - 10;
    if (a3 < 10)
    {
      goto LABEL_48;
    }

    if (*(a2 + 1) != 10)
    {
      goto LABEL_48;
    }

    if (*a2 != 1)
    {
      goto LABEL_48;
    }

    v21 = *(a2 + 2);
    if (*(v10 + 7) != htonl())
    {
      goto LABEL_48;
    }

    v22 = *(v9 + 6);
    if (*(v10 + 8) != htonl())
    {
      goto LABEL_48;
    }

    v9 += 10;
  }

  if (v10[5])
  {
    if (v10[6])
    {
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }

    v8 -= v12;
    if (v8 < 0)
    {
      goto LABEL_48;
    }

    v13 = v12 == v9[1] && *v9 == 2;
    if (!v13 || *(v10 + 4) != bswap32(*(v9 + 1)) >> 16)
    {
      goto LABEL_48;
    }

    if (!v10[6])
    {
      if (*(v10 + 5) != v9[4] || v9[5] != v10[24])
      {
        goto LABEL_48;
      }

      v9 += 6;
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v9 += 4;
  }

  if (v11)
  {
LABEL_16:
    v14 = __OFSUB__(v8, 6);
    v8 -= 6;
    if (v8 < 0 != v14)
    {
      goto LABEL_48;
    }

    if (v9[1] != 6)
    {
      goto LABEL_48;
    }

    if (*v9 != 3)
    {
      goto LABEL_48;
    }

    v15 = *(v9 + 2);
    if (*(v10 + 7) != htonl())
    {
      goto LABEL_48;
    }

    v9 += 6;
  }

LABEL_21:
  if (v10[9])
  {
    v14 = __OFSUB__(v8, 6);
    v8 -= 6;
    if (v8 < 0 != v14)
    {
      goto LABEL_48;
    }

    if (v9[1] != 6)
    {
      goto LABEL_48;
    }

    if (*v9 != 129)
    {
      goto LABEL_48;
    }

    v16 = *(v9 + 2);
    if (*(v10 + 9) != htonl())
    {
      goto LABEL_48;
    }

    v9 += 6;
  }

  if (v10[10])
  {
    v14 = __OFSUB__(v8, 6);
    v8 -= 6;
    if (v8 < 0 != v14)
    {
      goto LABEL_48;
    }

    if (v9[1] != 6)
    {
      goto LABEL_48;
    }

    if (*v9 != 131)
    {
      goto LABEL_48;
    }

    v17 = *(v9 + 2);
    if (*(v10 + 10) != htonl())
    {
      goto LABEL_48;
    }

    v9 += 6;
  }

  if (v10[11])
  {
    v14 = __OFSUB__(v8, 6);
    v8 -= 6;
    if (v8 < 0 != v14)
    {
      goto LABEL_48;
    }

    if (v9[1] != 6)
    {
      goto LABEL_48;
    }

    if (*v9 != 130)
    {
      goto LABEL_48;
    }

    v18 = *(v9 + 2);
    if (*(v10 + 11) != htonl())
    {
      goto LABEL_48;
    }

    v9 += 6;
  }

  if (!v10[12] || (v14 = __OFSUB__(v8, 6), v8 -= 6, v8 < 0 == v14) && v9[1] == 6 && *v9 == 132 && (v19 = *(v9 + 2), *(v10 + 12) == htonl()))
  {
    if (!v8)
    {
      return 1;
    }
  }

LABEL_48:
  if (debug)
  {
    dbglog("ipcp_ackci: received bad Ack!", a2, a3, a4, a5, a6, a7, a8, v23);
  }

  return 0;
}

uint64_t sub_10000A4AC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a1;
  v10 = &ipcp_gotoptions + 52 * *a1;
  v11 = *v10;
  v12 = v10[5];
  v56 = *(v10 + 5);
  v57 = v10[6];
  v54 = *(v10 + 4);
  v55 = v10[24];
  v13 = *(v10 + 8);
  v65 = *(v10 + 7);
  v58 = *(v10 + 10);
  v59 = *(v10 + 9);
  v60 = *(v10 + 12);
  v61 = *(v10 + 11);
  v63 = v10[1];
  if (*v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = v10[1] == 0;
  }

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v21 = (a3 - 10);
  if (a3 < 10 || *(a2 + 1) != 10)
  {
    goto LABEL_7;
  }

  if (*a2 != 1)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v22 = *(a2 + 2);
  v24 = htonl();
  v25 = *(v8 + 6);
  v26 = htonl();
  if (v24)
  {
    v27 = v10[7] == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v65;
  if (!v27)
  {
    v28 = v24;
  }

  v65 = v28;
  v9 = a1;
  if (v26)
  {
    v29 = v10[8] == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v13 = v26;
  }

  v15 = 1;
  v8 += 10;
  a3 = v21;
LABEL_7:
  if (v12)
  {
    v16 = v8[1];
    if ((v16 | 2) == 6 && (v17 = a3 - v16, a3 >= v16) && *v8 == 2)
    {
      v18 = __rev16(*(v8 + 1));
      if (v16 != 6)
      {
        v8 += 4;
        if (v18 == 55 || v18 == 45)
        {
          v64 = 1;
          v53 = v12;
          v54 = v18;
          v57 = 1;
        }

        else
        {
          v53 = 0;
          v64 = 1;
        }

        goto LABEL_35;
      }

      if (v18 != 45)
      {
        v53 = 0;
        v64 = 1;
        v8 += 6;
        goto LABEL_35;
      }

      v19 = v56;
      if (v56 >= v8[4])
      {
        v19 = v8[4];
      }

      v56 = v19;
      v57 = 0;
      v20 = v55;
      if (!v8[5])
      {
        v20 = 0;
      }

      v55 = v20;
      v64 = 1;
      v8 += 6;
    }

    else
    {
      v64 = 0;
      v17 = a3;
    }

    v53 = v12;
  }

  else
  {
    v64 = 0;
    v53 = 0;
    v17 = a3;
  }

LABEL_35:
  v62 = v12;
  if (!v11)
  {
    goto LABEL_45;
  }

  v30 = 0;
  if (v8[1] != 6 || v17 < 6)
  {
    goto LABEL_46;
  }

  if (*v8 != 3)
  {
LABEL_45:
    v30 = 0;
    goto LABEL_46;
  }

  v31 = *(v8 + 2);
  v32 = htonl();
  if (v32)
  {
    v33 = v10[7] == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v65;
  if (!v33)
  {
    v34 = v32;
  }

  v65 = v34;
  v30 = 1;
  v8 += 6;
  v17 -= 6;
LABEL_46:
  if (v10[9] && v8[1] == 6 && v17 >= 6 && *v8 == 129)
  {
    v35 = *(v8 + 2);
    v59 = htonl();
    v8 += 6;
    v17 -= 6;
  }

  if (v10[10] && v8[1] == 6 && v17 >= 6 && *v8 == 131)
  {
    v36 = *(v8 + 2);
    v58 = htonl();
    v8 += 6;
    v17 -= 6;
  }

  if (v10[11] && v8[1] == 6 && v17 >= 6 && *v8 == 130)
  {
    v37 = *(v8 + 2);
    v61 = htonl();
    v8 += 6;
    v17 -= 6;
  }

  if (v10[12] && v8[1] == 6 && v17 >= 6)
  {
    if (*v8 != 132)
    {
      goto LABEL_67;
    }

    v38 = *(v8 + 2);
    v60 = htonl();
    v8 += 6;
    v17 -= 6;
  }

  if (v17 < 2)
  {
    v40 = v11;
    v39 = v63;
LABEL_105:
    if (v9[2] == 9)
    {
      return 1;
    }

    *v10 = v40;
    v10[1] = v39;
    v10[5] = v53;
    v10[6] = v57;
    *(v10 + 4) = v54;
    *(v10 + 5) = v56;
    v10[24] = v55;
    *(v10 + 7) = v65;
    *(v10 + 8) = v13;
    *(v10 + 9) = v59;
    *(v10 + 10) = v58;
    result = 1;
    *(v10 + 11) = v61;
    *(v10 + 12) = v60;
    return result;
  }

LABEL_67:
  v52 = v9;
  v39 = v63;
  v40 = v11;
  while (1)
  {
    v41 = v8[1];
    if (v41 < 2)
    {
      break;
    }

    v17 -= v41;
    if (v17 < 0)
    {
      break;
    }

    v42 = *v8;
    switch(v42)
    {
      case 1:
        if (!v11 && v63 || v15 || v41 != 10)
        {
          goto LABEL_101;
        }

        v46 = *(v8 + 2);
        v47 = htonl();
        if (v47)
        {
          v48 = v65;
          if (v10[7])
          {
            v48 = v47;
          }

          v65 = v48;
        }

        v49 = *(v8 + 6);
        v50 = htonl();
        v40 = 0;
        if (v50 && v10[8])
        {
          v13 = v50;
        }

        v15 = 1;
        break;
      case 3:
        if (v11 || v30 || v41 != 6)
        {
          goto LABEL_101;
        }

        v43 = *(v8 + 2);
        v44 = htonl();
        if (v44)
        {
          v45 = v65;
          if (v10[7])
          {
            v45 = v44;
          }
        }

        else
        {
          v45 = v65;
        }

        v39 = 0;
        v65 = v45;
        if (v45)
        {
          v40 = 1;
        }

        v30 = 1;
        break;
      case 2:
        if (v62 || v64 || (v41 & 0xFFFFFFFD) != 4)
        {
          goto LABEL_101;
        }

        v64 = 1;
        break;
    }

    v8 += v41;
    if (v17 <= 1)
    {
      v9 = v52;
      goto LABEL_105;
    }
  }

LABEL_101:
  if (debug)
  {
    dbglog("ipcp_nakci: received bad Nak!", a2, a3, a4, a5, a6, a7, a8, v52);
  }

  return 0;
}

uint64_t sub_10000A9F4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = &ipcp_gotoptions + 52 * *a1;
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[5];
  v14 = v10[9];
  v15 = v10[10];
  v16 = v10[11];
  v17 = v10[12];
  if (!*v10)
  {
    if (v10[1])
    {
      v32 = (a3 - 10);
      if (a3 >= 10 && *(a2 + 1) == 10 && *a2 == 1)
      {
        v33 = *(a2 + 2);
        if (htonl() != *(v10 + 7))
        {
          goto LABEL_45;
        }

        v34 = *(v8 + 6);
        if (htonl() != *(v10 + 8))
        {
          goto LABEL_45;
        }

        v12 = 0;
        v8 += 10;
        a3 = v32;
      }
    }
  }

  v36 = v12;
  if (v13)
  {
    v18 = v8[1];
    v19 = v10[6] ? 4 : 6;
    v20 = v19 != v18 || a3 < v18;
    if (!v20 && *v8 == 2)
    {
      if (*(v10 + 4) != bswap32(*(v8 + 1)) >> 16)
      {
        goto LABEL_45;
      }

      a3 = (a3 - v18);
      if (!v10[6])
      {
        if (*(v10 + 5) != v8[4] || v8[5] != v10[24])
        {
          goto LABEL_45;
        }

        LOBYTE(v13) = 0;
        v8 += 6;
        if (!v11)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      LOBYTE(v13) = 0;
      v8 += 4;
    }
  }

  if (v11)
  {
LABEL_15:
    if (v8[1] == 6)
    {
      v21 = (a3 - 6);
      if (a3 >= 6 && *v8 == 3)
      {
        v22 = *(v8 + 2);
        if (htonl() != *(v10 + 7))
        {
          goto LABEL_45;
        }

        LOBYTE(v11) = 0;
        v8 += 6;
        a3 = v21;
      }
    }
  }

LABEL_20:
  if (v14)
  {
    if (v8[1] == 6)
    {
      v23 = (a3 - 6);
      if (a3 >= 6 && *v8 == 129)
      {
        v24 = *(v8 + 2);
        if (htonl() != *(v10 + 9))
        {
          goto LABEL_45;
        }

        LOBYTE(v14) = 0;
        v8 += 6;
        a3 = v23;
      }
    }
  }

  if (v15)
  {
    if (v8[1] == 6)
    {
      v25 = (a3 - 6);
      if (a3 >= 6 && *v8 == 131)
      {
        v26 = *(v8 + 2);
        if (htonl() != *(v10 + 10))
        {
          goto LABEL_45;
        }

        LOBYTE(v15) = 0;
        v8 += 6;
        a3 = v25;
      }
    }
  }

  if (v16)
  {
    if (v8[1] == 6)
    {
      v27 = (a3 - 6);
      if (a3 >= 6 && *v8 == 130)
      {
        v28 = *(v8 + 2);
        if (htonl() != *(v10 + 11))
        {
          goto LABEL_45;
        }

        LOBYTE(v16) = 0;
        v8 += 6;
        a3 = v27;
      }
    }
  }

  if (v17)
  {
    if (v8[1] == 6)
    {
      v29 = (a3 - 6);
      if (a3 >= 6)
      {
        if (*v8 != 132)
        {
          goto LABEL_45;
        }

        v30 = *(v8 + 2);
        if (htonl() != *(v10 + 12))
        {
          goto LABEL_45;
        }

        LOBYTE(v17) = 0;
        a3 = v29;
      }
    }
  }

  if (!a3)
  {
    if (a1[2] == 9)
    {
      return 1;
    }

    *v10 = v11;
    v10[1] = v36;
    v10[5] = v13;
    v10[9] = v14;
    v10[10] = v15;
    v10[11] = v16;
    result = 1;
    v10[12] = v17;
    return result;
  }

LABEL_45:
  if (debug)
  {
    dbglog("ipcp_rejci: received bad Reject!", a2, a3, a4, a5, a6, a7, a8, v35);
  }

  return 0;
}

uint64_t sub_10000AD2C(int *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a2;
  v10 = &ipcp_wantoptions + 52 * *a1;
  v11 = &ipcp_hisoptions + 52 * *a1;
  v12 = &ipcp_allowoptions + 52 * *a1;
  v13 = *a3;
  *(v11 + 12) = 0;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *v11 = 0u;
  v45 = v12;
  v46 = v10;
  v43 = v12 + 36;
  v44 = v12 + 44;
  v14 = a2;
  v15 = 2;
  v41 = a4;
  while (v13)
  {
    v16 = v14;
    if (v13 < 2 || ((v17 = v14[1], v17 >= 2) ? (v18 = v13 >= v17) : (v18 = 0), !v18))
    {
      if (debug)
      {
        dbglog("ipcp_reqci: bad CI length!", a2, a3, a4, a5, a6, a7, a8, v39);
      }

      LOWORD(v17) = v13;
      v13 = 0;
      goto LABEL_100;
    }

    v19 = *v14;
    v13 -= v17;
    v14 += v17;
    if (*v16 > 0x80u)
    {
      if (v19 > 130)
      {
        if (v19 == 131)
        {
          goto LABEL_27;
        }

        if (v19 != 132)
        {
          goto LABEL_100;
        }

LABEL_25:
        v23 = v19 == 132;
        if (v17 != 6)
        {
          goto LABEL_100;
        }

        v24 = v44;
      }

      else
      {
        if (v19 != 129)
        {
          if (v19 != 130)
          {
            goto LABEL_100;
          }

          goto LABEL_25;
        }

LABEL_27:
        v23 = v19 == 131;
        if (v17 != 6)
        {
          goto LABEL_100;
        }

        v24 = v43;
      }

      v25 = *&v24[4 * v23];
      if (!v25)
      {
        goto LABEL_100;
      }

      v26 = *(v16 + 2);
      if (htonl() != v25)
      {
        *(v16 + 2) = bswap32(ntohl());
        goto LABEL_93;
      }

      v22 = 2;
      goto LABEL_90;
    }

    if (v19 == 1)
    {
      if (!v45[1] || v17 != 10 || *v11)
      {
        goto LABEL_100;
      }

      v31 = *(v16 + 2);
      v32 = htonl();
      if (v32 == *(v46 + 8))
      {
        if (!v32)
        {
          v46[2] = 0;
          LOWORD(v17) = 10;
          goto LABEL_100;
        }

        v22 = 2;
        goto LABEL_82;
      }

      if (v32)
      {
        if (v46[8])
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }

        if (v46[8] || v8)
        {
          goto LABEL_82;
        }

LABEL_80:
        *(v16 + 2) = bswap32(ntohl());
      }

      else if (!v8)
      {
        goto LABEL_80;
      }

      v22 = 3;
LABEL_82:
      v33 = *(v16 + 6);
      v34 = htonl();
      if (v34 != *(v46 + 7))
      {
        if (v34 && v46[7])
        {
          *(v46 + 7) = v34;
        }

        else
        {
          if (!v41)
          {
            *(v16 + 6) = bswap32(ntohl());
          }

          v22 = 3;
        }
      }

      v11[1] = 1;
      *(v11 + 7) = v34;
      *(v11 + 8) = v32;
      v8 = v41;
      goto LABEL_90;
    }

    if (v19 != 2)
    {
      if (v19 != 3 || !*v45 || v17 != 6 || v11[1])
      {
        goto LABEL_100;
      }

      v20 = *(v16 + 2);
      v21 = htonl();
      if (v21 == *(v46 + 8))
      {
        if (!v21)
        {
          v46[2] = 0;
          LOWORD(v17) = 6;
LABEL_100:
          if (v15 != 4)
          {
            v9 = a2;
          }

          v15 = 4;
          goto LABEL_103;
        }

        v22 = 2;
        goto LABEL_78;
      }

      if (v21)
      {
        if (v46[8])
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }

        if (v46[8] || v8)
        {
          goto LABEL_78;
        }

LABEL_76:
        *(v16 + 2) = bswap32(ntohl());
      }

      else if (!v8)
      {
        goto LABEL_76;
      }

      v22 = 3;
LABEL_78:
      *v11 = 1;
      *(v11 + 8) = v21;
      goto LABEL_90;
    }

    if ((v17 & 0xFFFFFFFD) != 4 || !v45[5])
    {
      goto LABEL_100;
    }

    v27 = __rev16(*(v16 + 1));
    if (v27 == 45)
    {
      v11[5] = 1;
      *(v11 + 4) = 45;
      if (v17 == 6)
      {
        v28 = v16[4];
        v29 = *(v45 + 5);
        if (v29 >= v28)
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }

        if (v29 < v28 && !v8)
        {
          v16[4] = v29;
          v22 = 3;
        }

        v30 = v16[5];
        if (v30)
        {
          if (!v45[24])
          {
            v22 = 3;
            if (!v8)
            {
              v16[5] = v46[24];
              v22 = 3;
            }
          }
        }

        *(v11 + 5) = v28;
        v11[24] = v30;
        goto LABEL_90;
      }
    }

    else
    {
      if (v17 != 4 || v27 != 55)
      {
        goto LABEL_100;
      }

      v11[5] = 1;
      *(v11 + 4) = 55;
    }

    v11[6] = 1;
    *(v11 + 5) = 15;
    v22 = 2;
    v11[24] = 1;
LABEL_90:
    if (v22 != 2 || v15 == 2)
    {
      if (v22 != 3)
      {
        goto LABEL_103;
      }

LABEL_93:
      if (v8)
      {
        goto LABEL_100;
      }

      if (v15 != 4)
      {
        if (v15 == 2)
        {
          v9 = a2;
        }

        v15 = 3;
LABEL_103:
        if (v9 != v16)
        {
          memcpy(v9, v16, v17);
        }

        v9 += v17;
      }
    }
  }

  if (v15 == 4 || *v11 || v11[1])
  {
    v35 = a3;
  }

  else
  {
    v35 = a3;
    if (!v8 && v46[2])
    {
      if (v15 == 2)
      {
        v46[2] = 0;
        v9 = a2;
      }

      *v9 = 1539;
      v38 = *(v46 + 8);
      *(v9 + 2) = bswap32(ntohl());
      LODWORD(v9) = v9 + 6;
      v15 = 3;
    }
  }

  *v35 = v9 - a2;
  if (debug)
  {
    v36 = "REJ";
    if (v15 == 3)
    {
      v36 = "NAK";
    }

    if (v15 == 2)
    {
      v36 = "ACK";
    }

    dbglog("ipcp: returning Configure-%s", a2, a3, a4, a5, a6, a7, a8, v36);
  }

  return v15;
}

void sub_10000B288(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &ipcp_hisoptions + 52 * *a1;
  v10 = &ipcp_gotoptions + 52 * *a1;
  v11 = &ipcp_wantoptions + 52 * *a1;
  if (debug)
  {
    dbglog("ipcp: up", a2, a3, a4, a5, a6, a7, a8, v90);
  }

  if (!*v9 && !v9[1])
  {
    *(v9 + 8) = *(v11 + 8);
  }

  if (*(v10 + 7))
  {
    if (!*(v9 + 8))
    {
      v12 = htonl();
      *(v9 + 8) = v12;
      warning("Could not determine remote IP address: defaulting to %I", v13, v14, v15, v16, v17, v18, v19, v12);
      v20 = *(v10 + 7);
    }

    slprintf(byte_10004A31C, 64, "%I");
    script_setenv("IPLOCAL", byte_10004A31C);
    v91 = *(v9 + 8);
    slprintf(byte_10004A31C, 64, "%I");
    script_setenv("IPREMOTE", byte_10004A31C);
    if (*(v10 + 9))
    {
      v91 = *(v10 + 9);
      slprintf(byte_10004A31C, 64, "%I");
      script_setenv("DNS1", byte_10004A31C);
    }

    if (*(v10 + 10))
    {
      v91 = *(v10 + 10);
      slprintf(byte_10004A31C, 64, "%I");
      script_setenv("DNS2", byte_10004A31C);
    }

    if (byte_10004A36C && (*(v10 + 9) || *(v10 + 10)))
    {
      script_setenv("USEPEERDNS", "1");
      sifdns(*(v10 + 9), *(v10 + 10));
    }

    if (byte_10004A36D && *(v10 + 44))
    {
      sifwins();
    }

    if (auth_ip_addr(*a1, *(v9 + 8)))
    {
      sifvjcomp(*a1, v9[5], v9[24], *(v9 + 5));
      if (demand)
      {
        v33 = *(v11 + 7);
        if (*(v10 + 7) == v33)
        {
          v34 = *(v11 + 8);
          if (*(v9 + 8) == v34)
          {
LABEL_55:
            demand_rexmit(33, v33, v34, v28, v29, v30, v31, v32);
            sifnpmode(*a1, 33, 0);
LABEL_56:
            v73 = *a1;
            np_up();
            byte_10004A38C = 1;
            v74 = notify(ip_up_notifier, 0);
            if (ipdata_up_hook)
            {
              v74 = ipdata_up_hook(*a1, *(v10 + 7), *(v9 + 8));
            }

            if (ip_up_hook)
            {
              ip_up_hook(v74);
            }

            notify(ip_up_notify, 0);
            if ((byte_10004A390 & 1) == 0 && !dword_10004A394)
            {
              byte_10004A390 = 1;
              if (ip_up_script)
              {
                v75 = ip_up_script;
              }

              else
              {
                v75 = "/etc/ppp/ip-up";
              }

              sub_10000BB8C(v75);
            }

            return;
          }
        }

        else
        {
          LODWORD(v34) = *(v11 + 8);
        }

        sub_10000BAFC(*a1, v33, v34);
        if (*(v10 + 7) == *(v11 + 7))
        {
          script_unsetenv("OLDIPLOCAL");
        }

        else
        {
          warning("Local IP address changed to %I", v51, v52, v53, v54, v55, v56, v57, *(v10 + 7));
          v91 = *(v11 + 7);
          slprintf(byte_10004A31C, 64, "%I");
          script_setenv("OLDIPLOCAL", byte_10004A31C);
          *(v11 + 7) = *(v10 + 7);
        }

        if (*(v9 + 8) == *(v11 + 8))
        {
          script_unsetenv("OLDIPREMOTE");
        }

        else
        {
          warning("Remote IP address changed to %I", v58, v59, v60, v61, v62, v63, v64, *(v9 + 8));
          v91 = *(v11 + 8);
          slprintf(byte_10004A31C, 64, "%I");
          script_setenv("OLDIPREMOTE", byte_10004A31C);
          *(v11 + 8) = *(v9 + 8);
        }

        v65 = *(v10 + 7);
        Mask = GetMask();
        if (sifaddr(*a1, *(v10 + 7), *(v9 + 8), Mask))
        {
          v67 = *a1;
          if (*(&ipcp_wantoptions + 52 * v67 + 3))
          {
            v68 = *(v10 + 7);
            v69 = *(v9 + 8);
            v70 = sifdefaultroute();
            v67 = *a1;
            v71 = *a1;
            if (v70)
            {
              dword_10004A384[v67] = 1;
            }
          }

          else
          {
            v71 = *a1;
          }

          if (*(&ipcp_wantoptions + 52 * v71 + 4) && sifproxyarp(v67, *(v9 + 8)))
          {
            dword_10004A388[*a1] = 1;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v37 = GetMask();
        if (sifaddr(*a1, *(v10 + 7), *(v9 + 8), v37))
        {
          if (!sifnpafmode(*a1, 33, ip_src_address_filter))
          {
            return;
          }

          v38 = *a1;
          if (sifup())
          {
            sifnpmode(*a1, 33, 0);
            v46 = *a1;
            if (*(&ipcp_wantoptions + 52 * v46 + 3))
            {
              v47 = *(v10 + 7);
              v48 = *(v9 + 8);
              v49 = sifdefaultroute();
              v46 = *a1;
              v50 = *a1;
              if (v49)
              {
                dword_10004A384[v46] = 1;
              }
            }

            else
            {
              v50 = *a1;
            }

            if (*(&ipcp_wantoptions + 52 * v50 + 4) && sifproxyarp(v46, *(v9 + 8)))
            {
              dword_10004A388[*a1] = 1;
            }

            dword_10004777C = *(v10 + 7);
            notice("local  IP address %I", v39, v40, v41, v42, v43, v44, v45, dword_10004777C);
            notice("remote IP address %I", v76, v77, v78, v79, v80, v81, v82, *(v9 + 8));
            if (*(v10 + 9))
            {
              notice("primary   DNS address %I", v83, v84, v85, v86, v87, v88, v89, *(v10 + 9));
            }

            if (*(v10 + 10))
            {
              notice("secondary DNS address %I", v83, v84, v85, v86, v87, v88, v89, *(v10 + 10));
            }

            goto LABEL_56;
          }

          if (!debug)
          {
            goto LABEL_47;
          }

          v72 = "Interface failed to come up";
          goto LABEL_46;
        }
      }

      if (!debug)
      {
LABEL_47:
        v35 = &ipcp_fsm + 80 * *a1;
        v36 = "Interface configuration failed";
        goto LABEL_48;
      }

      v72 = "Interface configuration failed";
LABEL_46:
      warning(v72, v33, v34, v28, v29, v30, v31, v32, v91);
      goto LABEL_47;
    }

    error("Peer is not authorized to use remote address %I", v21, v22, v23, v24, v25, v26, v27, *(v9 + 8));
    v35 = &ipcp_fsm + 80 * *a1;
    v36 = "Unauthorized remote IP address";
  }

  else
  {
    error("Could not determine local IP address", a2, a3, a4, a5, a6, a7, a8, v90);
    v35 = &ipcp_fsm + 80 * *a1;
    v36 = "Could not determine local IP address";
  }

LABEL_48:

  fsm_close(v35, v36, v34, v28, v29, v30, v31, v32);
}

uint64_t sub_10000B940(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (debug)
  {
    dbglog("ipcp: down", a2, a3, a4, a5, a6, a7, a8, v15);
  }

  update_link_stats(*a1);
  v9 = notify(ip_down_notifier, 0);
  if (ipdata_down_hook)
  {
    v9 = ipdata_down_hook(*a1);
  }

  if (ip_down_hook)
  {
    ip_down_hook(v9);
  }

  if (byte_10004A38C == 1)
  {
    byte_10004A38C = 0;
    v10 = *a1;
    np_down();
  }

  sifvjcomp(*a1, 0, 0, 0);
  notify(ip_down_notify, 0);
  v11 = *a1;
  if (demand)
  {
    result = sifnpmode(v11, 33, 3);
  }

  else
  {
    sifnpmode(v11, 33, 1);
    v13 = *a1;
    sifdown();
    result = sub_10000BAFC(*a1, *(&ipcp_gotoptions + 13 * *a1 + 7), *(&ipcp_hisoptions + 13 * *a1 + 8));
  }

  if (byte_10004A390 == 1 && !dword_10004A394)
  {
    byte_10004A390 = 0;
    if (ip_down_script)
    {
      v14 = ip_down_script;
    }

    else
    {
      v14 = "/etc/ppp/ip-down";
    }

    return sub_10000BB8C(v14);
  }

  return result;
}

void sub_10000BAB0(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10004A398 == 1)
  {
    byte_10004A398 = 0;
    np_finished(*a1, 33, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t **sub_10000BAD4(uint64_t **result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

uint64_t sub_10000BAFC(uint64_t a1, int a2, int a3)
{
  if (dword_10004A388[a1])
  {
    cifproxyarp();
    dword_10004A388[a1] = 0;
  }

  if (dword_10004A384[a1])
  {
    cifdefaultroute();
    dword_10004A384[a1] = 0;
  }

  return cifaddr(a1, a2, a3);
}

uint64_t sub_10000BB8C(char *a1)
{
  slprintf(v6, 32, "%d");
  slprintf(v5, 32, "%I");
  slprintf(v4, 32, "%I");
  v3[0] = a1;
  v3[1] = &ifname;
  v3[2] = &devnam;
  v3[3] = v6;
  v3[4] = v5;
  v3[5] = v4;
  v3[6] = ipparam;
  v3[7] = 0;
  result = run_program(a1, v3, 0, sub_10000BCB8, 0);
  dword_10004A394 = result;
  return result;
}

void sub_10000BCB8()
{
  dword_10004A394 = 0;
  if (byte_10004A390 == 1)
  {
    if (dword_100047838 == 9)
    {
      return;
    }

    v0 = "/etc/ppp/ip-down";
    v1 = &ip_down_script;
  }

  else
  {
    if (dword_100047838 != 9)
    {
      return;
    }

    v0 = "/etc/ppp/ip-up";
    v1 = &ip_up_script;
  }

  byte_10004A390 ^= 1u;
  if (*v1)
  {
    sub_10000BB8C(*v1);
  }

  else
  {
    sub_10000BB8C(v0);
  }
}

double sub_10000BD28(int a1)
{
  v1 = &lcp_fsm + 80 * a1;
  v2 = &lcp_wantoptions + 68 * a1;
  v3 = &lcp_allowoptions + 68 * a1;
  *v1 = a1;
  *(v1 + 1) = 49185;
  *(v1 + 7) = off_100043808;
  fsm_init(v1);
  result = 0.0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 16) = 0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 3) = 257;
  *(v2 + 4) = 1500;
  *(v2 + 4) = 257;
  v2[10] = 1;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 16) = 0;
  *(v3 + 3) = 0x101010101010101;
  *(v3 + 4) = 0x4000;
  v3[24] = 7;
  v3[15] = 1;
  return result;
}

void sub_10000BDE4(int a1, _BYTE *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = &lcp_fsm + 80 * a1;
  v12 = *(v11 + 3);
  if ((v12 & 0x100) != 0)
  {
    *(v11 + 3) = v12 & 0xFFFFFEFF;
    fsm_lowerup(&lcp_fsm + 80 * a1, __src, a3, a4, a5, a6, a7, a8);
  }

  fsm_input(v11, __src, a3, a4, a5, a6, a7, a8, a9);
}

void sub_10000BE54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error("Received Protocol-Reject for LCP!", a2, a3, a4, a5, a6, a7, a8, v16);

  fsm_protreject(&lcp_fsm + 80 * a1, v9, v10, v11, v12, v13, v14, v15);
}

void lcp_lowerup(uint64_t a1)
{
  if ((ppp_send_config(a1, 1500, 0xFFFFFFFFLL, 0, 0) & 0x80000000) == 0)
  {
    v2 = a1;
    v3 = lax_recv ? 0 : 0xFFFFFFFFLL;
    if ((ppp_recv_config(a1, 1500, v3, *(&lcp_wantoptions + 68 * a1 + 9), *(&lcp_wantoptions + 68 * a1 + 10)) & 0x80000000) == 0)
    {
      v4 = &lcp_fsm + 80 * a1;
      peer_mru[v2] = 1500;
      notify(lcp_lowerup_notify, 0);
      if (listen_time)
      {
        *(v4 + 3) |= 0x100u;

        timeout(sub_10000C7C8);
      }

      else
      {

        fsm_lowerup(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }
}

void lcp_lowerdown(int a1)
{
  v1 = &lcp_fsm + 80 * a1;
  notify(lcp_lowerdown_notify, 0);
  v2 = *(v1 + 3);
  if ((v2 & 0x100) != 0)
  {
    *(v1 + 3) = v2 & 0xFFFFFEFF;
  }

  else
  {

    fsm_lowerdown(v1);
  }
}

void lcp_open(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &lcp_fsm + 80 * a1;
  v10 = &lcp_wantoptions + 68 * a1;
  v11 = *(v9 + 3) & 0xFFFFFFFA;
  *(v9 + 3) = v11;
  if (*v10)
  {
    v11 |= 1u;
    *(v9 + 3) = v11;
  }

  if (v10[1])
  {
    *(v9 + 3) = v11 | 4;
  }

  fsm_open(v9, a2, a3, a4, a5, a6, a7, a8);
}

void lcp_close(int a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (&lcp_fsm + 80 * a1);
  if (*(v9 + 13))
  {
    untimeout(sub_10000C7C8, v9);
    v10 = v9[3];
    if ((v10 & 0x100) != 0)
    {
      v9[3] = v10 & 0xFFFFFEFF;
      fsm_lowerup(v9, __s, a3, a4, a5, a6, a7, a8);
    }
  }

  if (phase)
  {
    new_phase(9);
  }

  if (v9[2] == 3 && (v9[3] & 5) != 0)
  {
    notice("LCP close (%s).", __s, a3, a4, a5, a6, a7, a8, __s);
    v9[2] = 2;
  }

  else
  {
    fsm_close(v9, __s, a3, a4, a5, a6, a7, a8);
    if (!v9[2])
    {
      notice("LCP close (%s).", v11, v12, v13, v14, v15, v16, v17, __s);
    }
  }

  v18 = *v9;

  link_terminated();
}

uint64_t sub_10000C188(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  if (v11 - 1 > 0xA)
  {
    v35 = *a1;
    v14 = " code=0x%x";
  }

  else
  {
    v34 = (&off_10003CAE0)[v11 - 1];
    v14 = " %s";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  if (v11 > 0xB)
  {
LABEL_86:
    if (v7 >= 1)
    {
      goto LABEL_87;
    }

    return (v13 - a1);
  }

  if (((1 << v11) & 0x1E) != 0)
  {
    if (v6 < 6)
    {
      goto LABEL_86;
    }

    v16 = a1 + 4;
    while (1)
    {
      v17 = v16[1];
      v18 = v17 >= 2 && v7 >= v17;
      if (!v18)
      {
        v13 = v16;
        goto LABEL_87;
      }

      v19 = *v16;
      a3(a4, " <");
      v13 = v16;
      if (v19 <= 6)
      {
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_67;
            }

            v13 = v16;
            if (v17 != 6)
            {
              goto LABEL_67;
            }

            v13 = v16 + 6;
            v37 = bswap32(*(v16 + 2));
            v20 = a4;
            v21 = "asyncmap 0x%x";
            goto LABEL_66;
          }

          if (v17 == 4)
          {
            v13 = v16 + 4;
            v38 = __rev16(*(v16 + 1));
            v20 = a4;
            v21 = "mru %d";
            goto LABEL_66;
          }
        }

        else
        {
          switch(v19)
          {
            case 3:
              if (v17 >= 4)
              {
                a3(a4, "auth ");
                v13 = v16 + 4;
                v22 = __rev16(*(v16 + 1));
                if (v22 == 49703)
                {
                  v20 = a4;
                  v21 = "eap";
                  goto LABEL_66;
                }

                if (v22 != 49699)
                {
                  if (v22 == 49187)
                  {
                    v20 = a4;
                    v21 = "pap";
                    goto LABEL_66;
                  }

LABEL_65:
                  v20 = a4;
                  v21 = "0x%x";
                  goto LABEL_66;
                }

                a3(a4, "chap");
                if (v17 != 4)
                {
                  v26 = *v13;
                  switch(v26)
                  {
                    case 129:
                      v27 = a4;
                      v28 = " MS-v2";
                      goto LABEL_81;
                    case 128:
                      v27 = a4;
                      v28 = " MS";
                      goto LABEL_81;
                    case 5:
                      v27 = a4;
                      v28 = " MD5";
LABEL_81:
                      a3(v27, v28);
                      v13 = v16 + 5;
                      break;
                  }
                }
              }

              break;
            case 4:
              if (v17 >= 4)
              {
                a3(a4, "quality ");
                v13 = v16 + 4;
                if (__rev16(*(v16 + 1)) != 49189)
                {
                  goto LABEL_65;
                }

                v20 = a4;
                v21 = "lqr";
LABEL_66:
                a3(v20, v21);
              }

              break;
            case 5:
              v13 = v16;
              if (v17 != 6)
              {
                break;
              }

              v13 = v16 + 6;
              v36 = bswap32(*(v16 + 2));
              v20 = a4;
              v21 = "magic 0x%x";
              goto LABEL_66;
            default:
              break;
          }
        }
      }

      else if (v19 > 16)
      {
        if (v19 == 17)
        {
          if (v17 == 4)
          {
            v13 = v16 + 4;
            v39 = __rev16(*(v16 + 1));
            v20 = a4;
            v21 = "mrru %d";
            goto LABEL_66;
          }
        }

        else
        {
          if (v19 != 18)
          {
            if (v19 == 19)
            {
              a3(a4, "endpoint");
              v13 = v16;
            }

            goto LABEL_67;
          }

          if (v17 == 2)
          {
            v13 = v16 + 2;
            v20 = a4;
            v21 = "ssnhf";
            goto LABEL_66;
          }
        }
      }

      else
      {
        switch(v19)
        {
          case 7:
            if (v17 == 2)
            {
              v13 = v16 + 2;
              v20 = a4;
              v21 = "pcomp";
              goto LABEL_66;
            }

            break;
          case 8:
            if (v17 == 2)
            {
              v13 = v16 + 2;
              v20 = a4;
              v21 = "accomp";
              goto LABEL_66;
            }

            break;
          case 13:
            v13 = v16;
            if (v17 == 2)
            {
              break;
            }

            a3(a4, "callback ");
            v13 = v16 + 3;
            if (v16[2] != 6)
            {
              goto LABEL_65;
            }

            v20 = a4;
            v21 = "CBCP";
            goto LABEL_66;
          default:
            break;
        }
      }

LABEL_67:
      if (v13 < &v16[v17])
      {
        v23 = &v16[v17];
        v24 = &v16[v17] - v13;
        do
        {
          v25 = *v13++;
          (a3)(a4, " %.2x", v25);
          --v24;
        }

        while (v24);
        v13 = v23;
      }

      v7 -= v17;
      a3(a4, ">");
      v16 = v13;
      if (v7 <= 1)
      {
        goto LABEL_86;
      }
    }
  }

  if (((1 << v11) & 0xE00) != 0)
  {
    v18 = v6 >= 8;
    v15 = v6 - 8;
    if (v18)
    {
      (a3)(a4, " magic=0x%x", bswap32(*(a1 + 1)));
      v13 = a1 + 12;
      v7 = v15;
    }

    goto LABEL_86;
  }

  if (((1 << v11) & 0x60) == 0)
  {
    goto LABEL_86;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_87:
      v29 = 0;
      v30 = v7 - 1;
      if ((v7 - 1) >= 0x1F)
      {
        v30 = 31;
      }

      v31 = ~v30;
      v32 = v30 + 1;
      do
      {
        v33 = *v13++;
        (a3)(a4, " %.2x", v33);
        ++v29;
      }

      while (v32 != v29);
      if (v29 < v7)
      {
        a3(a4, " ...");
        LODWORD(v13) = v13 + v7 + v31;
      }

      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}