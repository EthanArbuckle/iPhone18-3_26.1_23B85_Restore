uint64_t start(int a1, char **a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v5;
    do
    {
      v5 = v6;
      v7 = getopt(a1, a2, "Lz:");
      v6 = 1;
    }

    while (v7 == 76);
    if (v7 == -1)
    {
      break;
    }

    if (v7 != 122)
    {
      sub_100000758();
    }

    v20 = xmmword_100001C70;
    *&v21 = 0;
    v4 = sntp_header_mmap(optarg, &v20, 1);
  }

  if (!v4)
  {
    *&v21 = 0;
    v20 = xmmword_100001C70;
    v4 = sntp_header_mmap("state.bin", &v20, 1);
    if (!v4)
    {
      sub_10000195C();
    }
  }

  if (v5)
  {
    v4[2] = 0;
    *v4 = xmmword_100001C88;
    v8 = sub_100000774();
    v4[2] = sntp_timestamp_hton(v8);
  }

  v28 = xmmword_100001CC0;
  sub_1000007BC(&changelist, &v28, 0x10u);
  v19[0] = xmmword_100001CA0;
  *&v19[0].sa_data[10] = *(&xmmword_100001CA0 + 12);
  sub_1000007BC(&v30, v19, 0x1Cu);
  v9 = kqueue();
  if (v9 == -1)
  {
    sub_100001940();
  }

  v10 = v9;
  if (kevent(v9, &changelist, 2, 0, 0, 0) == -1)
  {
    sub_100001924();
  }

  memset(&eventlist, 0, sizeof(eventlist));
  while (1)
  {
    do
    {
      v12 = kevent(v10, 0, 0, &eventlist, 1, 0);
    }

    while (!v12);
    if (v12 == -1 || (eventlist.flags & 0x4000) != 0)
    {
      break;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0;
    v21 = 0u;
    v17 = 128;
    v11 = *v4;
    v15 = v4[2];
    v14 = v11;
    sntp_server_exchange(&v20, &v17, eventlist.ident, &v14, sub_100000774, v16);
  }

  sntp_header_unmap(v4);
  return 74;
}

unint64_t sub_100000774()
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v3);
  v3.tv_sec += 2208988800;
  v0 = sntp_datestamp_from_timespec(v3.tv_sec);
  return sntp_timestamp_from_datestamp(v0, v1);
}

uint64_t sub_1000007BC(uint64_t a1, const sockaddr *a2, socklen_t a3)
{
  v6 = socket(a2->sa_family, 2, 0);
  if (v6 < 0)
  {
    sub_1000019A4();
  }

  v7 = v6;
  result = bind(v6, a2, a3);
  if (result)
  {
    sub_100001988();
  }

  *a1 = v7;
  *(a1 + 8) = 393215;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

uint64_t sntp_calc_mean(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v4 = v3;
  v5 = sntp_timestamp_to_datestamp(*(a1 + 20));
  if (__CFADD__(v4, v6))
  {
    v7 = v2 + 1;
  }

  else
  {
    v7 = v2;
  }

  return ((__PAIR128__(v7, v4 + v6) + __PAIR128__(v5, (v2 + __CFADD__(v4, v6) + v5) >> 63)) >> 64) >> 1;
}

uint64_t sntp_calc_error(uint64_t a1)
{
  v2 = sntp_timestamp_from_shortstamp(*(a1 + 40));
  v3 = sntp_timestamp_to_datestamp(v2);
  v5 = v4;
  v6 = sntp_timestamp_from_shortstamp(*(a1 + 44));
  v7 = sntp_timestamp_to_datestamp(v6);
  if (__CFADD__(v5, v3 >> 63))
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = v3;
  }

  *(&v10 + 1) = v9;
  *&v10 = v5 + (v3 >> 63);
  return ((v10 >> 1) + __PAIR128__(v7, v8)) >> 64;
}

unint64_t sntp_clock_select(unint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = a1 + 80 * a2;
  v5 = a1;
  do
  {
    if (!*v5 && *(v5 + 37))
    {
      ++v3;
    }

    v5 += 80;
  }

  while (v5 < v4);
  result = 0;
  v7 = 0;
  v8 = 0;
  v31 = v3 >> 1;
  do
  {
    if (!*v2 && *(v2 + 37))
    {
      v32 = v8;
      v33 = v7;
      v34 = result;
      v9 = sntp_calc_delay(v2);
      v37 = v10;
      v11 = (v2 + 80);
      if (v2 + 80 >= v4)
      {
        v36 = 1;
        v35 = v2;
      }

      else
      {
        v36 = 1;
        v35 = v2;
        do
        {
          if (!*v11)
          {
            v12 = sntp_calc_offset(v2);
            v14 = v13;
            v15 = sntp_calc_offset(v11);
            v17 = v16;
            v18 = sntp_calc_delay(v2);
            v20 = v19;
            v21 = sntp_calc_delay(v11);
            if ((__PAIR128__(v18, v20) + __PAIR128__(v12, v14)) >= (__PAIR128__(v15, v17) - __PAIR128__(v21, v22)) && (__PAIR128__(v21, v22) + __PAIR128__(v15, v17)) >= (__PAIR128__(v12, v14) - __PAIR128__(v18, v20)))
            {
              ++v36;
              v23 = sntp_calc_delay(v11);
              v25 = v37;
              v26 = v35;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v26 = v11;
              }

              v35 = v26;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v9 = v23;
                v25 = v24;
              }

              v37 = v25;
            }
          }

          v11 += 20;
        }

        while (v11 < v4);
      }

      v8 = v32;
      v7 = v33;
      v27 = v37;
      result = v34;
      v28 = v35;
      v29 = __PAIR128__(v9, v37) < __PAIR128__(v32, v33) || v34 == 0;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = v32;
      }

      if (!v29)
      {
        v27 = v33;
        v28 = v34;
      }

      if (v36 > v31)
      {
        v7 = v27;
        v8 = v30;
        result = v28;
      }
    }

    v2 += 80;
  }

  while (v2 < v4);
  return result;
}

unint64_t sntp_packet_hton@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_hton(&v5, a2);
  *(a2 + 24) = sntp_timestamp_hton(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_hton(*(a1 + 4));
  result = sntp_timestamp_hton(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_ntoh(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_ntoh(*(a1 + 4));
  result = sntp_timestamp_ntoh(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_header_hton@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_hton(v4);
  v6 = sntp_shortstamp_hton(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_ntoh(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

void *sntp_header_mmap(const char *a1, uint64_t a2, int a3)
{
  v6 = open(a1, 2);
  if (v6 < 0)
  {
    if (*__error() != 2 || (v8 = umask(0), v7 = open(a1, 514, 436), umask(v8), v7 < 0))
    {
      warn("open");
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 12);
    v11 = *(a2 + 16);
    v12 = *(a2 + 4);
    __buf[0] = *a2;
    __buf[1] = sntp_shortstamp_hton(v12);
    __buf[2] = sntp_shortstamp_hton(v9);
    __buf[3] = bswap32(v10);
    v17 = sntp_timestamp_hton(v11);
    if (write(v7, __buf, 0x18uLL) != 24)
    {
      warn("write");
      return 0;
    }
  }

  else
  {
    v7 = v6;
    if (ftruncate(v6, 24))
    {
      warn("ftruncate");
      return 0;
    }
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = mmap(0, 0x18uLL, v13, 1, v7, 0);
  if (v14 == -1)
  {
    warn("mmap");
    v14 = 0;
  }

  if (close(v7))
  {
    warn("close");
  }

  return v14;
}

void sntp_header_unmap(void *a1)
{
  if (munmap(a1, 0x18uLL))
  {

    warn("munmap");
  }
}

unint64_t sntp_server_respond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  *a4 = *a2;
  v9 = *(a1 + 40);
  *(a4 + 16) = *(a2 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = sntp_timestamp_hton(v8);
  v10 = a3();
  result = sntp_timestamp_hton(v10);
  *(a4 + 40) = result;
  if (__ROR8__(v10, 32) < __ROR8__(v8, 32))
  {
    *(a4 + 1) = 0;
    *(a4 + 12) = 1398031696;
  }

  return result;
}

uint64_t sntp_server_exchange@<X0>(sockaddr *a1@<X1>, socklen_t *a2@<X2>, int a3@<W0>, __int128 *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  if (!a5)
  {
    sub_1000018CC();
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v22 = 0uLL;
  result = recvfrom(a3, &v22, 0x30uLL, 64, a1, a2);
  if (result == 48)
  {
    if (a1 && a2)
    {
      v13 = *a2;
      sa_family = a1->sa_family;
      *(a6 + 76) = sa_family;
      if (v13 == 16 && sa_family == 2)
      {
        *(a6 + 60) = *&a1->sa_data[2];
      }

      else if (v13 == 28 && sa_family == 30)
      {
        *(a6 + 60) = *&a1->sa_data[6];
      }
    }

    v21 = 0u;
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    memset(v20, 0, sizeof(v20));
    v17 = *a4;
    v18 = *(a4 + 2);
    sntp_server_respond(v19, &v17, a5, v20);
    if (a2)
    {
      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    if (sendto(a3, v20, 0x30uLL, 0, a1, v15) != 48)
    {
      *a6 = 5;
    }

    *(a6 + 36) = v22;
    v16 = *(&v24 + 1);
    *(a6 + 52) = v23;
    *(a6 + 4) = sntp_timestamp_ntoh(v16);
    *(a6 + 12) = sntp_timestamp_ntoh(v21);
    result = sntp_timestamp_ntoh(*(&v21 + 1));
    *(a6 + 20) = result;
  }

  else
  {
    *a6 = 7;
  }

  return result;
}

__n128 sntp_client_exchange@<Q0>(int a1@<W0>, timeval *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  if (__darwin_check_fd_set_overflow(a1, &v17, 0))
  {
    *(v17.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  LOBYTE(v15[0]) = 35;
  if (a3)
  {
    *(v18 + 4) = a3();
    *(&v16 + 1) = sntp_timestamp_hton(*(v18 + 4));
  }

  if (send(a1, v15, 0x30uLL, 0) != 48)
  {
    v9 = 5;
LABEL_17:
    LODWORD(v18[0]) = v9;
    v10 = v19;
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v20;
    result = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = result;
    return result;
  }

  if (a2 && (a2->tv_sec || a2->tv_usec) && select(a1 + 1, &v17, 0, &v17, a2) != 1)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (recv(a1, &v12, 0x30uLL, 0) != 48)
  {
    v9 = 7;
    goto LABEL_17;
  }

  if (a3)
  {
    *(&v18[1] + 12) = a3();
  }

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  sntp_client_process_response(v11, (v18 + 4), (&v18[1] + 12), a4);
  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

void sntp_client_unicast(const char *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, timeval *a4@<X3>, uint64_t (*a5)(void)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  snprintf(__str, 6uLL, "%u", a3);
  v28 = 0;
  if (getaddrinfo(a1, __str, 0, &v28))
  {
    *a7 = 1;
    return;
  }

  if (!v28)
  {
    sub_1000018F8();
  }

  if (a2)
  {
    v13 = 0;
    v14 = v28;
    while (1)
    {
      v14 = v14->ai_next;
      if (!v14)
      {
        break;
      }

      if (++v13 >= a2)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = v28;
LABEL_10:
  ai_addr = v14->ai_addr;
  ai_addrlen = v14->ai_addrlen;
  ai_family = v14->ai_family;
  sa_family = ai_addr->sa_family;
  *(a7 + 76) = sa_family;
  if (ai_addrlen == 16 && sa_family == 2)
  {
    *(a7 + 60) = *&ai_addr->sa_data[2];
  }

  else if (ai_addrlen == 28 && sa_family == 30)
  {
    *(a7 + 60) = *&ai_addr->sa_data[6];
  }

  v21 = socket(ai_family, 2, 17);
  if (v21)
  {
    v22 = v21;
    if (!a6)
    {
      goto LABEL_29;
    }

    v30 = 0;
    v31 = 0;
    memset(v27, 0, 28);
    if (ai_family == 2)
    {
      v30 = 2063598080;
      v31 = 0;
      v23 = &v30;
      v24 = 16;
    }

    else
    {
      memset(&v27[0].sa_data[2], 0, 24);
      *&v27[0].sa_data[6] = in6addr_any;
      *&v27[0].sa_len = 2063605276;
      v23 = v27;
      v24 = 28;
    }

    if (bind(v21, v23, v24))
    {
      v25 = 3;
    }

    else
    {
LABEL_29:
      if (!connect(v22, ai_addr, ai_addrlen))
      {
        sntp_client_exchange(v22, a4, a5, a7);
        v26 = ai_addr->sa_family;
        *(a7 + 76) = v26;
        if (ai_addrlen == 16 && v26 == 2)
        {
          *(a7 + 60) = *&ai_addr->sa_data[2];
        }

        else if (ai_addrlen == 28 && v26 == 30)
        {
          *(a7 + 60) = *&ai_addr->sa_data[6];
        }

        goto LABEL_32;
      }

      v25 = 4;
    }

    *a7 = v25;
LABEL_32:
    close(v22);
    goto LABEL_33;
  }

  *a7 = 2;
LABEL_33:
  freeaddrinfo(v28);
}