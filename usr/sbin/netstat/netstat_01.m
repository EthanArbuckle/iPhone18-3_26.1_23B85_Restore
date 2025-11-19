uint64_t printproto(uint64_t result, uint64_t a2)
{
  if (sflag)
  {
    v3 = *(result + 8);
    if (!v3)
    {
      if (pflag)
      {
        v4 = vflag == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        v5 = *(result + 24);
        return printf("%s: no stats routine\n", a2);
      }

      return result;
    }

    goto LABEL_9;
  }

  v3 = *result;
  if (*result)
  {
LABEL_9:
    v6 = *(result + 32);
    if (sflag)
    {
      v7 = iflag == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && pflag != 0 && interval != 0)
    {
      v13 = v3;
      v14 = af;

      intervalpr(v13, v6, a2, v14);
    }

    v10 = *(result + 32);
    v11 = a2;
    v12 = af;

    return (v3)(v10, v11, v12);
  }

  if (pflag)
  {
    v15 = vflag == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(result + 24);
    return printf("%s: no PCB routine\n", a2);
  }

  return result;
}

uint64_t printprotoifstats(uint64_t result)
{
  v1 = protoprotox[0];
  if (protoprotox[0])
  {
    v2 = result;
    v3 = protoprotox;
    do
    {
      if (v1[3])
      {
        v4 = (v1 + 8);
        do
        {
          v5 = *(v4 - 6);
          if (v5)
          {
            result = v5(v2);
          }

          v6 = *v4;
          v4 += 5;
        }

        while (v6);
      }

      v7 = v3[1];
      ++v3;
      v1 = v7;
    }

    while (v7);
  }

  return result;
}

const char *plural(int a1)
{
  if (a1 <= 1)
  {
    return &unk_100018CDA;
  }

  else
  {
    return "s";
  }
}

const char *plurales(int a1)
{
  if (a1 <= 1)
  {
    return &unk_100018CDA;
  }

  else
  {
    return "es";
  }
}

const char *pluralies(int a1)
{
  if (a1 <= 1)
  {
    return "y";
  }

  else
  {
    return "ies";
  }
}

uint64_t print_time()
{
  v2 = 0;
  memset(&v1, 0, sizeof(v1));
  time(&v2);
  localtime_r(&v2, &v1);
  return printf("%02d:%02d:%02d ", v1.tm_hour, v1.tm_min, v1.tm_sec);
}

void print_socket_stats_format()
{
  if (bflag >= 1 || vflag >= 1)
  {
    if (vflag <= 1)
    {
      printf(" %12.12s %12.12s");
    }

    else
    {
      printf(" %12.12s/%-9.9s %12.12s/%-9.9s");
    }

    if (dflag >= 1)
    {
      if (vflag < 2)
      {
        printf(" %12.12s");
      }

      else
      {
        printf(" %12.12s/%-9.9s");
      }
    }

    if (vflag >= 1)
    {
      if (vflag == 1)
      {
        printf(" %7.7s %7.7s %16s:%-6s");
      }

      else
      {
        printf(" %7.7s %7.7s %16s:%-6s %16s:%-6s");
      }

      printf(" %5.5s %8.8s %16.16s %8.8s %8.8s %6s %6s %5s", "state", "options", "gencnt", "flags", "flags1", "usecnt", "rtncnt", "fltrs");
    }
  }
}

uint64_t print_socket_stats_data(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (bflag >= 1 || vflag >= 1)
  {
    v8 = result;
    v9 = a4[2];
    if (vflag <= 1)
    {
      v13 = a4[2];
      v15 = a4[4];
      result = printf(" %12llu %12llu");
    }

    else
    {
      v19 = a4[4];
      v20 = a4[3];
      v14 = a4[1];
      result = printf(" %12llu/%-9llu %12llu/%-9llu");
    }

    if (dflag >= 1)
    {
      v10 = a4[6];
      if (vflag < 2)
      {
        result = printf(" %12llu");
      }

      else
      {
        v16 = a4[5];
        result = printf(" %12llu/%-9llu");
      }
    }

    if (vflag >= 1)
    {
      memset(buffer, 0, sizeof(buffer));
      proc_name(*(v8 + 68), buffer, 0x20u);
      if (vflag < 2)
      {
        v12 = *(a2 + 12);
        v22 = *(v8 + 68);
        v18 = *(a3 + 12);
        printf(" %7u %7u %16s:%-6u");
      }

      else
      {
        *__str = 0;
        v25 = 0;
        memset(v23, 0, sizeof(v23));
        if (*(v8 + 72))
        {
          snprintf(__str, 0x10uLL, "%d", *(v8 + 72));
          proc_name(*(v8 + 72), v23, 0x20u);
        }

        v11 = *(a2 + 12);
        v21 = *(v8 + 68);
        v17 = *(a3 + 12);
        printf(" %7u %7u %16s:%-6u %16s:%-6s");
      }

      return printf(" %05x %08x %016llx %08x %08x %6d %6d %06x", *(v8 + 26), *(v8 + 20), *(v8 + 76), *(v8 + 84), *(v8 + 88), *(v8 + 92), *(v8 + 96), *(v8 + 100));
    }
  }

  return result;
}

uint64_t (**knownname(char *__s2))()
{
  v1 = protoprotox[0];
  if (protoprotox[0])
  {
    for (i = protoprotox; ; ++i)
    {
      v4 = v1[3];
      if (v4)
      {
        break;
      }

LABEL_6:
      v5 = i[1];
      v1 = v5;
      if (!v5)
      {
        return v1;
      }
    }

    while (strcmp(v4, __s2))
    {
      v4 = v1[8];
      v1 += 5;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  return v1;
}

void vsockpr(int a1)
{
  v1 = "vsock_private";
  if (a1 != 1)
  {
    v1 = "vsock";
  }

  snprintf(__str, 0x20uLL, "net.%s.pcblist", v1);
  size = 0;
  if (sysctlbyname(__str, 0, &size, 0, 0) < 0)
  {
    if (*__error() != 2)
    {
      warn("sysctl: %s");
    }
  }

  else
  {
    v2 = malloc_type_malloc(size, 0x4B8D69CEuLL);
    if (v2)
    {
      v3 = v2;
      if (sysctlbyname(__str, v2, &size, 0, 0) < 0)
      {
        warn("sysctl: %s", __str);
      }

      else if (size > 0x40)
      {
        v4 = *v3;
        v5 = size - v4;
        size = v5;
        v6 = (v3 + v4);
        if (v5 > v4)
        {
          do
          {
            if (*(v6 + 7) <= *(v3 + 2))
            {
              if ((vsockdomainpr_first & 1) == 0)
              {
                puts("Active VSock sockets");
                printf("%-6.6s %-6.6s %-6.6s %-6.6s %-18.18s %-18.18s %-11.11s", "Proto", "Type", "Recv-Q", "Send-Q", "Local Address", "Foreign Address", "State");
                if (vflag >= 1)
                {
                  printf(" %10.10s %10.10s %10.10s %10.10s %6.6s %6.6s %6.6s %6s %10s", "rxcnt", "txcnt", "peer_rxcnt", "peer_rxhiwat", "rxhiwat", "txhiwat", "pid", "state", "options");
                }

                putchar(10);
                vsockdomainpr_first = 1;
              }

              vsock_print_addr(v18, v6[4], v6[5]);
              vsock_print_addr(v17, v6[6], v6[7]);
              v7 = *(v6 + 39);
              v8 = "CONNECTING";
              if ((v7 & 4) == 0)
              {
                v8 = "ESTABLISHED";
                if ((v7 & 2) == 0)
                {
                  v8 = "CLOSING";
                  if ((v7 & 8) == 0)
                  {
                    v8 = "LISTEN";
                    if ((*(v6 + 37) & 2) == 0)
                    {
                      v8 = "CLOSED";
                    }
                  }
                }
              }

              if (v6[21] == 1)
              {
                v9 = "vsockp";
              }

              else
              {
                v9 = "vsock";
              }

              printf("%-6.6s %-6.6s %6u %6u %-18s %-18s %-11s", v9, "stream", v6[28], v6[34], v18, v17, v8);
              if (vflag >= 1)
              {
                printf(" %10u %10u %10u %10u %6u %6u %6u 0x%04x 0x%08x", v6[8], v6[9], v6[11], v6[10], v6[29], v6[35], v6[12], *(v6 + 39), *(v6 + 37));
              }

              putchar(10);
              v5 = size;
            }

            v6 = (v6 + *v6);
          }

          while (v6 < (v3 + v5));
        }

        if (v6 != v3 && *(v6 + 2) != *(v3 + 2))
        {
          v10 = *(v3 + 1);
          v11 = *(v6 + 1);
          v12 = v10 > v11;
          if (v10 >= v11)
          {
            v13 = "Some vsock sockets may have been created or deleted.";
          }

          else
          {
            v13 = "Some vsock sockets may have been created.";
          }

          if (v12)
          {
            v14 = "Some vsock sockets may have been deleted.";
          }

          else
          {
            v14 = v13;
          }

          puts(v14);
        }
      }

      free(v3);
    }

    else
    {
      warn("malloc %lu bytes");
    }
  }
}

void vsockstats(int a1)
{
  v5 = 0;
  if (a1 == 1)
  {
    v1 = "vsock_private";
  }

  else
  {
    v1 = "vsock";
  }

  printf("%s:\n", v1);
  snprintf(__str, 0x20uLL, "net.%s.pcbcount", v1);
  v4 = 4;
  if (sysctlbyname(__str, &v5, &v4, 0, 0) < 0)
  {
    warn("sysctl: %s", __str);
  }

  else
  {
    v2 = v5;
    v3 = plural(v5);
    printf("\t%u open %s socket%s\n", v2, v1, v3);
  }
}

char *vsock_print_addr(char *result, int a2, int a3)
{
  if ((a3 & a2) == 0xFFFFFFFF)
  {
    *result = 2767402;
  }

  else if (a2 == -1)
  {
    return snprintf(result, 0x32uLL, "*:%u");
  }

  else if (a3 == -1)
  {
    return snprintf(result, 0x32uLL, "%u:*");
  }

  else
  {
    return snprintf(result, 0x32uLL, "%u:%u");
  }

  return result;
}

void mbpr()
{
  v96[0] = 0;
  v0 = &ipsec_ahnames;
  if (nmbtypes != 256)
  {
    fwrite("netstat: unexpected change to mbstat; check source\n", 0x33uLL, 1uLL, __stderrp);
    goto LABEL_20;
  }

  v96[0] = 584;
  if (sysctlbyname("kern.ipc.mbstat", &mbstat, v96, 0, 0) == -1)
  {
LABEL_20:
    if (mb_stat)
    {
      free(mb_stat);
      mb_stat = 0;
    }

    if (mleak_stat)
    {
      free(mleak_stat);
      mleak_stat = 0;
    }

    return;
  }

  if (sysctlbyname("kern.ipc.mb_stat", 0, v96, 0, 0) == -1)
  {
    fprintf(__stderrp, "Error retrieving length for %s\n");
    goto LABEL_20;
  }

  v1 = malloc_type_calloc(1uLL, v96[0], 0xBE278DA1uLL);
  mb_stat = v1;
  if (!v1)
  {
LABEL_15:
    fprintf(__stderrp, "Error allocating %lu bytes for sysctl data\n");
    goto LABEL_20;
  }

  if (sysctlbyname("kern.ipc.mb_stat", v1, v96, 0, 0) == -1)
  {
    v3 = __stderrp;
    v77 = *__error();
    v79 = "kern.ipc.mb_stat";
    v4 = "Error %d getting %s\n";
    goto LABEL_17;
  }

  if (!*mb_stat)
  {
    v5 = __stderrp;
    v77 = 0;
    v4 = "Invalid mbuf class count (%d)\n";
    goto LABEL_19;
  }

  if (mflag >= 4)
  {
    *__error() = 0;
    v96[0] = 72;
    if (sysctlbyname("kern.ipc.mleak_table", &table, v96, 0, 0) == -1)
    {
      fwrite("mbuf leak detection is not enabled in the kernel.\n", 0x32uLL, 1uLL, __stderrp);
      goto LABEL_26;
    }

    if (sysctlbyname("kern.ipc.mleak_top_trace", 0, v96, 0, 0) == -1)
    {
      v3 = __stderrp;
      v77 = "kern.ipc.mb_stat";
      v79 = *__error();
      v4 = "Error retrieving length for %s: %d\n";
      goto LABEL_17;
    }

    v2 = malloc_type_calloc(1uLL, v96[0], 0xA91EEECuLL);
    mleak_stat = v2;
    if (v2)
    {
      if (sysctlbyname("kern.ipc.mleak_top_trace", v2, v96, 0, 0) == -1)
      {
        v3 = __stderrp;
        v77 = *__error();
        v79 = "kern.ipc.mleak_top_trace";
        v4 = "error %d getting %s\n";
LABEL_17:
        v5 = v3;
LABEL_19:
        fprintf(v5, v4, v77, v79);
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    goto LABEL_15;
  }

LABEL_26:
  v96[0] = 4;
  sysctlbyname("kern.ipc.njclbytes", &njclbytes, v96, 0, 0);
  v6 = mb_stat;
  v7 = *mb_stat;
  if (*mb_stat)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (mb_stat + 32);
    v17 = *mb_stat;
    do
    {
      v18 = *(v16 - 2);
      if (v18 == dword_1000336F4)
      {
        v15 = *v16;
      }

      else if (v18 == dword_1000336F8)
      {
        v14 = *(v16 - 1) - *v16;
      }

      else if (v18 == dword_100033710)
      {
        v13 = *(v16 - 1) - *v16;
      }

      else if (v18 == njclbytes)
      {
        v10 = *(v16 - 1);
        v9 = v10 - *v16;
      }

      else if (v18 == dword_1000336F8 + dword_1000336F4)
      {
        v12 = *(v16 - 1) - *v16;
      }

      else if (v18 == dword_100033710 + dword_1000336F4)
      {
        v11 = *(v16 - 1) - *v16;
      }

      else if (v18 == njclbytes + dword_1000336F4)
      {
        v8 = *(v16 - 1) - *v16;
      }

      v16 += 34;
      --v17;
    }

    while (v17);
    v80 = v15;
    v81 = __PAIR64__(v14, v12);
    v82 = __PAIR64__(v13, v11);
    v83 = __PAIR64__(v8, v9);
    v84 = v10;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = mflag;
    v24 = (mb_stat + 88);
    do
    {
      v25 = *(v24 - 16);
      v26 = *v24;
      v27 = *(v24 + 1);
      v28 = (v25 * *v24);
      v29 = *(v24 + 3);
      v30 = *(v24 - 13);
      if (v23 >= 2)
      {
        v89 = v20;
        v91 = v19;
        v88 = *(v24 + 3);
        v86 = *(v24 - 13);
        if (v21)
        {
          v31 = *(v24 - 16);
        }

        else
        {
          puts("class        buf   active   ctotal    total cache   cached uncached    memory\nname        size     bufs     bufs     bufs state     bufs     bufs     usage\n---------- ----- -------- -------- -------- ----- -------- -------- ---------");
          v31 = *(v24 - 16);
          v26 = *v24;
        }

        v93 = v22;
        v33 = *(v24 - 15);
        v32 = *(v24 - 14);
        v34 = *(v24 + 2);
        v35 = "?";
        if (v34 <= 3)
        {
          v35 = off_100025638[v34];
        }

        v36 = *(v24 + 3);
        v87 = v31;
        v85 = *(v24 - 13);
        if (v28 > 0x3FF)
        {
          v37 = vcvtd_n_f64_u32(v28, 0xAuLL);
          if (v37 >= 1024.0)
          {
            v78 = v37 * 0.0009765625;
            v38 = "%.1f MB";
          }

          else
          {
            v78 = v37;
            v38 = "%.1f KB";
          }

          snprintf(mbpr_mem_buf, 0x21uLL, v38, *&v78);
        }

        else
        {
          snprintf(mbpr_mem_buf, 0x21uLL, "%d");
        }

        printf("%-10s %5u %8u %8u %8u %5s %8u %8u %9s\n", v24 - 80, v87, v32, v26, v33, v35, v36, v85, mbpr_mem_buf);
        v23 = mflag;
        v6 = mb_stat;
        v7 = *mb_stat;
        v19 = v91;
        v22 = v93;
        v20 = v89;
        v29 = v88;
        v30 = v86;
      }

      v19 += v28;
      v22 += v27;
      v20 += ((v30 + v29) * v25);
      ++v21;
      v24 += 136;
    }

    while (v21 < v7);
    v90 = v20;
    v92 = v19;
    if (v7)
    {
      v39 = 0;
      v40 = (v6 + 112);
      v0 = &ipsec_ahnames;
      v41 = v80;
      do
      {
        if (v23 >= 3)
        {
          if (!v39)
          {
            puts("\nclass        waiter   notify    purge   wretry  nwretry  failure\nname          count    count    count    count    count    count\n---------- -------- -------- -------- -------- -------- --------");
          }

          printf("%-10s %8u %8llu %8llu %8u %8u %8llu\n", v40 - 104, *(v40 - 2), *(v40 - 6), *(v40 - 5), *(v40 - 1), *v40, *(v40 - 4));
          v23 = mflag;
          v7 = *mb_stat;
        }

        ++v39;
        v40 += 136;
      }

      while (v39 < v7);
    }

    else
    {
      v0 = &ipsec_ahnames;
      v41 = v80;
    }
  }

  else
  {
    v90 = 0;
    v92 = 0;
    v22 = 0;
    v41 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v23 = mflag;
  }

  if (v23 >= 2)
  {
    putchar(10);
  }

  v94 = v22;
  v42 = 0;
  v43 = &mbtypes;
  do
  {
    v42 += *(&mbstat + *v43 + 14);
    v44 = *(v43 + 3);
    v43 += 4;
  }

  while (v44);
  if (v42 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v42;
  }

  printf("%lu/%u mbufs in use:\n", v45, v41);
  v46 = &mbtypes;
  v47 = "data";
  do
  {
    v48 = *v46;
    v49 = *(&mbstat + v48 + 14);
    if (*(&mbstat + v48 + 14))
    {
      seen[v48] = 1;
      printf("\t%u mbufs allocated to %s\n", v49, v47);
    }

    v47 = *(v46 + 3);
    v46 += 4;
  }

  while (v47);
  seen[0] = 1;
  v50 = v0[494];
  if (v50 >= 1)
  {
    for (i = 0; i < v50; ++i)
    {
      if (!seen[i] && *(&mbstat + i + 14))
      {
        printf("\t%u mbufs allocated to <mbuf type %d>\n", *(&mbstat + i + 14), i);
        v50 = v0[494];
      }
    }
  }

  if (v42 < v41)
  {
    printf("\t%lu mbufs allocated to caches\n", v41 - v45);
  }

  printf("%u/%u mbuf 2KB clusters in use\n", dword_1000334D4 - (v81 + HIDWORD(v81)), dword_1000334D4);
  printf("%u/%u mbuf 4KB clusters in use\n", dword_100033708 - (v82 + HIDWORD(v82)), dword_100033708);
  printf("%u/%u mbuf %uKB clusters in use\n", v84 - (v83 + HIDWORD(v83)), v84, njclbytes >> 10);
  if (v92)
  {
    v52 = v92 - v90;
    if (v92 - v90 > 0x28F5C28F5C28F5BLL)
    {
      v53 = (100 * (v52 / 0x64));
      v54 = (v92 / 0x64);
    }

    else
    {
      v53 = (100 * v52);
      v54 = v92;
    }

    v55 = v53 / v54;
  }

  else
  {
    v55 = 0.0;
  }

  printf("%lu KB allocated to network (%.1f%% in use)\n", v92 >> 10, v55);
  if (v94)
  {
    printf("%lu KB returned to the system\n", v94 >> 10);
  }

  if (dword_1000334E0)
  {
    printf("%u requests for memory denied\n", dword_1000334E0);
  }

  if (dword_1000334E4)
  {
    printf("%u requests for memory delayed\n", dword_1000334E4);
  }

  if (dword_1000334E8)
  {
    printf("%u calls to drain routines\n", dword_1000334E8);
  }

  free(mb_stat);
  mb_stat = 0;
  if (mleak_stat)
  {
    puts("\nmbuf leak detection table:");
    printf("\ttotal captured: %u (one per %u)\n\ttotal allocs outstanding: %llu\n\tnew hash recorded: %llu allocs, %llu traces\n\thash collisions: %llu allocs, %llu traces\n\toverwrites: %llu allocs, %llu traces\n\tlock conflicts: %llu\n\n", table / *algn_100033B2C, *algn_100033B2C, qword_100033B60, qword_100033B50, unk_100033B58, qword_100033B30, unk_100033B38, qword_100033B40, unk_100033B48, unk_100033B68);
    printf("top %d outstanding traces:\n", *(mleak_stat + 4));
    v56 = mleak_stat;
    if (*(mleak_stat + 4))
    {
      v57 = 0;
      v58 = 0;
      do
      {
        printf("[%d] %llu outstanding alloc(s), %llu hit(s), %llu collision(s)\n", ++v58, *(v56 + v57 + 24), *(v56 + v57 + 16), *(v56 + v57 + 8));
        v56 = mleak_stat;
        v57 += 160;
      }

      while (v58 < *(mleak_stat + 4));
    }

    puts("\n    calltrace [1]       calltrace [2]       calltrace [3]       calltrace [4]       calltrace [5]      \n    ------------------  ------------------  ------------------  ------------------  ------------------ ");
    v59 = 0;
    v60 = 40;
    do
    {
      v61 = v59 + 1;
      printf("%2d: ", v59 + 1);
      v62 = mleak_stat;
      if (*(mleak_stat + 4))
      {
        v63 = 0;
        v64 = 8;
        v65 = v60;
        do
        {
          if (*&v62[v64] <= v59)
          {
            printf("                    ");
          }

          else
          {
            v66 = *v62;
            v67 = *(v62 + v65);
            if (v66)
            {
              printf("0x%0llx  ");
            }

            else
            {
              printf("0x%08x          ");
            }
          }

          ++v63;
          v62 = mleak_stat;
          v65 += 160;
          v64 += 40;
        }

        while (v63 < *(mleak_stat + 4));
      }

      putchar(10);
      v60 += 8;
      ++v59;
    }

    while (v61 != 16);
    free(mleak_stat);
    mleak_stat = 0;
  }

  if (mflag >= 3)
  {
    v95 = 0;
    if (!sysctlbyname("kern.ipc.mb_tag_stats", 0, &v95, 0, 0))
    {
      v68 = v95;
      v69 = v95 >> 5;
      v70 = malloc_type_calloc(v95 >> 5, 0x20uLL, 0x1000040E0EAB150uLL);
      if (v70)
      {
        v71 = v70;
        if (!sysctlbyname("kern.ipc.mb_tag_stats", v70, &v95, 0, 0))
        {
          puts("\nmbuf tags:");
          printf("%12s %12s %12s %12s %12s\n", "type", "len", "alloc", "failed", "free");
          printf("%16.16s %12.12s %12.12s %12.12s %12.12s\n", "--------------------", "--------------------", "--------------------", "--------------------", "--------------------");
          if (v68 >= 0x20)
          {
            v72 = 0;
            do
            {
              v73 = strdup("other,dummynet,ipfilt,encap,inet6,ipsec,cfil_udp,pf_reass,aqm,drvaux");
              v74 = v73;
              if (!v73)
              {
                goto LABEL_129;
              }

              v75 = 0;
              v96[0] = v73;
              while (1)
              {
                v76 = strsep(v96, ",");
                if (++v75 > v72)
                {
                  break;
                }

                if (!v96[0])
                {
                  goto LABEL_129;
                }
              }

              if (v76)
              {
                snprintf(v96, 0x14uLL, "%s (%u)");
              }

              else
              {
LABEL_129:
                snprintf(v96, 0x14uLL, "%u (%u)");
              }

              free(v74);
              printf("%16.16s %12u %12llu %12llu %12llu\n", v96, HIWORD(v71[4 * v72]), v71[4 * v72 + 1], v71[4 * v72 + 2], v71[4 * v72 + 3]);
              ++v72;
            }

            while (v72 != v69);
          }
        }
      }
    }
  }
}

uint64_t ifmalist_dump_af(uint64_t result, int a2)
{
  v3 = result;
  switch(a2)
  {
    case 2:
      v4 = "IPv4";
      break;
    case 18:
      v4 = "Link-layer";
      break;
    case 30:
      v4 = "IPv6";
      break;
    default:
      return result;
  }

  fprintf(__stdoutp, "%s Multicast Group Memberships\n", v4);
  result = fprintf(__stdoutp, "%-20s\t%-16s\t%s\n", "Group", "Link-layer Address", "Netif");
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v3[1])
      {
        result = v3[2];
        if (result)
        {
          v7 = *(result + 1);
          if (v7 == a2)
          {
            switch(v7)
            {
              case 30:
                v9 = routename6(result);
LABEL_20:
                v5 = v9;
LABEL_21:
                v10 = v3[3];
                if (v10)
                {
                  if (v10[1] == 18)
                  {
                    if (v10[6] == 6 || v10[4] == 6)
                    {
                      v6 = ether_ntoa((v10 + 8));
                    }
                  }

                  else
                  {
                    if (*v10 >= 3u)
                    {
                      v11 = 2;
                      do
                      {
                        printf("0x%x ", v10[v11]);
                        v12 = v11 - 1;
                        v13 = *v10;
                        ++v11;
                      }

                      while (v13 >= 3 && v12 < (v13 - 2));
                    }

                    putchar(10);
                    v6 = "<invalid>";
                  }
                }

                else
                {
                  v6 = "<none>";
                }

                v15 = v3[1];
                if (v15 && v15->sdl_family == 18)
                {
                  link_ntoa(v15);
                  v16 = __s;
                  __strlcpy_chk();
                  v17 = strchr(__s, 58);
                  if (v17)
                  {
                    *v17 = 0;
                    v16 = __s;
                  }
                }

                else
                {
                  v16 = &unk_100018CDA;
                }

                result = fprintf(__stdoutp, "%-20s\t%-16s\t%s\n", v5, v6, v16);
                break;
              case 18:
                if (*(result + 6) == 6 || *(result + 4) == 6)
                {
                  v9 = ether_ntoa((result + 8));
                  goto LABEL_20;
                }

                goto LABEL_21;
              case 2:
                v8.s_addr = *(result + 4);
                v9 = inet_ntoa(v8);
                goto LABEL_20;
            }
          }
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void ifmalist_dump()
{
  v56 = 0;
  if (getifmaddrs(&v56))
  {
    ifmalist_dump_cold_1();
  }

  ifmalist_dump_af(v56, 18);
  fputs("\n", __stdoutp);
  ifmalist_dump_af(v56, 2);
  fputs("\n", __stdoutp);
  ifmalist_dump_af(v56, 30);
  if (sflag)
  {
    fputs("\n", __stdoutp);
    v0 = v56;
    if (interface)
    {
      v1 = if_nametoindex(interface);
    }

    else
    {
      v1 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *v60 = 0u;
    v61 = 0u;
    v57 = 0;
    if (getifaddrs(&v57))
    {
      warn("getifmaddrs");
      goto LABEL_152;
    }

    if (!v0)
    {
      goto LABEL_150;
    }

    v2 = 0;
    while (1)
    {
      ifma_name = v0->ifma_name;
      if (!ifma_name)
      {
        goto LABEL_45;
      }

      ifma_addr = v0->ifma_addr;
      if (!ifma_addr)
      {
        goto LABEL_45;
      }

      if (ifma_name->sdl_family != 18)
      {
        fwrite("WARNING: Kernel returned invalid data.\n", 0x27uLL, 1uLL, __stderrp);
        goto LABEL_150;
      }

      sdl_index = ifma_name->sdl_index;
      if (v1 && v1 != sdl_index || af && af != ifma_addr->sa_family)
      {
        goto LABEL_45;
      }

      link_ntoa(ifma_name);
      __strlcpy_chk();
      v6 = strchr(__s, 58);
      if (v6)
      {
        *v6 = 0;
      }

      if (!v2 || v2 != sdl_index)
      {
        fprintf(__stdoutp, "%s:\n", __s);
        v2 = sdl_index;
      }

      v55 = v2;
      v7 = v57;
      if (!v57)
      {
LABEL_44:
        v2 = v55;
        goto LABEL_45;
      }

      while (1)
      {
        if (strcmp(v7->ifa_name, __s))
        {
          goto LABEL_23;
        }

        ifa_addr = v7->ifa_addr;
        if (!ifa_addr)
        {
          goto LABEL_23;
        }

        sa_family = ifa_addr->sa_family;
        if (sa_family != ifma_addr->sa_family)
        {
          goto LABEL_23;
        }

        if (sa_family != 30)
        {
          break;
        }

        if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
        {
          goto LABEL_35;
        }

LABEL_23:
        v7 = v7->ifa_next;
        if (!v7)
        {
          goto LABEL_44;
        }
      }

      if (sa_family == 18 && vflag == 0)
      {
        goto LABEL_44;
      }

LABEL_35:
      v2 = v55;
      if (!BYTE1(v60[0]) || BYTE1(v60[0]) == 18 && (LOBYTE(v60[0]) != ifa_addr->sa_len || bcmp(&v60[1] + BYTE5(v60[0]), &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], BYTE6(v60[0]))) || bcmp(v60, ifa_addr, LOBYTE(v60[0])))
      {
        v11 = ifa_addr->sa_family;
        switch(v11)
        {
          case 2:
            v13 = getnameinfo(ifa_addr, ifa_addr->sa_len, __str, 0x401u, 0, 0, 2);
            if (v13)
            {
              v14 = gai_strerror(v13);
              printf("getnameinfo: %s\n", v14);
            }

            v12 = "inet";
            break;
          case 18:
            sdl_addr_to_hex(ifa_addr, __str);
            v12 = "link";
            break;
          case 30:
            inet6_n2a(&ifa_addr->sa_data[6]);
            __strlcpy_chk();
            v12 = "inet6";
            break;
          default:
            __str[0] = 0;
            v12 = "unknown";
            break;
        }

        fprintf(__stdoutp, "\t%s %s\n", v12, __str);
        v15 = ifa_addr->sa_family;
        if (v15 == 2)
        {
          v83 = 0;
          *v81 = 0u;
          v82 = 0u;
          v58 = 0;
          size = 5;
          if (sysctlnametomib("net.inet.igmp.ifinfo", v78, &size) != -1)
          {
            v16 = size;
            *(v78 + size) = sdl_index;
            v58 = 40;
            if (sysctl(v78, v16 + 1, v81, &v58, 0, 0) != -1)
            {
              putchar(9);
              if ((*&v81[4] - 1) >= 3)
              {
                printf("igmpv?(%d)");
              }

              else
              {
                printf("igmpv%d");
              }

              printb(DWORD1(v82), "\x10\x01SILENT\x02LOOPBACK");
              if (*&v81[4] == 3)
              {
                printf(" rv %u qi %u qri %u uri %u", DWORD2(v82), HIDWORD(v82), v83, HIDWORD(v83));
              }

              if (vflag >= 2)
              {
                printf(" v1timer %u v2timer %u v3timer %u", *&v81[8], *&v81[12], v82);
              }

              putchar(10);
              v15 = ifa_addr->sa_family;
              goto LABEL_63;
            }

            v18 = "sysctl net.inet.igmp.ifinfo";
LABEL_77:
            perror(v18);
            goto LABEL_78;
          }

LABEL_74:
          v18 = "sysctlnametomib";
          goto LABEL_77;
        }

LABEL_63:
        if (v15 != 30)
        {
          goto LABEL_78;
        }

        v83 = 0;
        *v81 = 0u;
        v82 = 0u;
        v58 = 0;
        size = 5;
        if (sysctlnametomib("net.inet6.mld.ifinfo", v78, &size) == -1)
        {
          goto LABEL_74;
        }

        v17 = size;
        *(v78 + size) = sdl_index;
        v58 = 40;
        if (sysctl(v78, v17 + 1, v81, &v58, 0, 0) == -1)
        {
          v18 = "sysctl net.inet6.mld.ifinfo";
          goto LABEL_77;
        }

        putchar(9);
        if ((*&v81[4] - 1) >= 2)
        {
          printf("mldv?(%d)");
        }

        else
        {
          printf("mldv%d");
        }

        printb(v82, "\x10\x01SILENT");
        if (*&v81[4] == 2)
        {
          printf(" rv %u qi %u qri %u uri %u", DWORD1(v82), DWORD2(v82), HIDWORD(v82), v83);
        }

        if (vflag >= 2)
        {
          printf(" v1timer %u v2timer %u", *&v81[8], *&v81[12]);
        }

        putchar(10);
LABEL_78:
        sa_len = ifa_addr->sa_len;
        __memcpy_chk();
      }

      v20 = ifma_addr->sa_family;
      if (v20 == 2)
      {
        v21 = getnameinfo(ifma_addr, ifma_addr->sa_len, __str, 0x401u, 0, 0, 2);
        if (v21)
        {
          v22 = gai_strerror(v21);
          printf("getnameinfo: %s\n", v22);
        }
      }

      else if (v20 == 30)
      {
        inet6_n2a(&ifma_addr->sa_data[6]);
        __strlcpy_chk();
      }

      else
      {
        sdl_addr_to_hex(ifma_addr, __str);
      }

      fprintf(__stdoutp, "\t\tgroup %s", __str);
      v23 = ifma_addr->sa_family;
      if (v23 == 2)
      {
        v24 = *&ifma_addr->sa_data[2];
        v78[0] = 7;
        if (sysctlnametomib("net.inet.ip.mcast.filters", v81, v78) == -1)
        {
          perror("sysctlnametomib");
          v2 = v55;
        }

        else
        {
          size = 0;
          *(&v82 + 4) = __PAIR64__(v24, sdl_index);
          v78[0] = 7;
          if (sysctl(v81, 7u, 0, &size, 0, 0) == -1)
          {
LABEL_96:
            v29 = "sysctl net.inet.ip.mcast.filters";
          }

          else
          {
            v25 = 0;
            while (1)
            {
              v26 = malloc_type_malloc(size, 0xA31F751CuLL);
              if (!v26)
              {
                break;
              }

              v27 = v26;
              if (sysctl(v81, v78[0], v26, &size, 0, 0) != -1)
              {
                v54 = size;
                if (size <= 3)
                {
LABEL_110:
                  perror("sysctl");
                  v2 = v55;
                }

                else
                {
                  v30 = *v27;
                  if (v30 > 2)
                  {
                    v51 = *v27;
                    printf(" mode (%u)");
                  }

                  else
                  {
                    v50 = inm_modes[v30];
                    printf(" mode %s");
                  }

                  v2 = v55;
                  if (vflag)
                  {
                    v31 = v54 - 4;
                    if (v54 - 4 >= 4)
                    {
                      v32 = 0;
                      v33 = v31 >> 2;
                      do
                      {
                        v34 = ",";
                        if (!v32)
                        {
                          printf(" srcs ");
                          v34 = &unk_100018CDA;
                        }

                        v35 = __stdoutp;
                        v36.s_addr = v27[v32 + 1];
                        v37 = inet_ntoa(v36);
                        fprintf(v35, "%s%s", v34, v37);
                        ++v32;
                      }

                      while (v33 != v32);
                      v31 = v54 & 3;
                      v2 = v55;
                    }

                    if (v31)
                    {
                      fprintf(__stderrp, "warning: %u trailing bytes from %s\n", v31, "net.inet.ip.mcast.filters");
                    }
                  }
                }

                free(v27);
                goto LABEL_112;
              }

              if (*__error() != 12 || v25 >= 4)
              {
                goto LABEL_110;
              }

              ++v25;
              free(v27);
              if (sysctl(v81, v78[0], 0, &size, 0, 0) == -1)
              {
                goto LABEL_96;
              }
            }

            v29 = "malloc";
          }

          perror(v29);
          v2 = v55;
        }

LABEL_112:
        v23 = ifma_addr->sa_family;
      }

      if (v23 == 30)
      {
        size = 10;
        if (sysctlnametomib("net.inet6.ip6.mcast.filters", v78, &size) == -1)
        {
          perror("sysctlnametomib");
        }

        else
        {
          v58 = 0;
          size = 10;
          v79 = sdl_index;
          v80 = *&ifma_addr->sa_data[6];
          if (sysctl(v78, 0xAu, 0, &v58, 0, 0) == -1)
          {
LABEL_124:
            v42 = "sysctl net.inet6.ip6.mcast.filters";
          }

          else
          {
            v38 = 0;
            while (1)
            {
              v39 = malloc_type_malloc(v58, 0x6D79319DuLL);
              if (!v39)
              {
                break;
              }

              v40 = v39;
              if (sysctl(v78, size, v39, &v58, 0, 0) != -1)
              {
                v43 = v58;
                if (v58 <= 3)
                {
LABEL_138:
                  perror("sysctl");
                }

                else
                {
                  v45 = v40 + 4;
                  v44 = *v40;
                  if (v44 > 2)
                  {
                    v53 = *v40;
                    printf(" mode (%u)");
                  }

                  else
                  {
                    v52 = inm_modes[v44];
                    printf(" mode %s");
                  }

                  if (vflag)
                  {
                    v46 = v43 - 4;
                    if (v46 >= 0x10)
                    {
                      v47 = 0;
                      do
                      {
                        v48 = ",";
                        if (!v47)
                        {
                          printf(" srcs ");
                          v48 = &unk_100018CDA;
                        }

                        inet_ntop(30, v45, v81, 0x2Eu);
                        fprintf(__stdoutp, "%s%s", v48, v81);
                        ++v47;
                        v45 += 16;
                      }

                      while (v46 >> 4 != v47);
                      v46 &= 0xFu;
                    }

                    if (v46)
                    {
                      fprintf(__stderrp, "warning: %u trailing bytes from %s\n", v46, "net.inet6.ip6.mcast.filters");
                    }
                  }
                }

                free(v40);
                goto LABEL_140;
              }

              if (*__error() != 12 || v38 >= 4)
              {
                goto LABEL_138;
              }

              ++v38;
              free(v40);
              if (sysctl(v78, size, 0, &v58, 0, 0) == -1)
              {
                goto LABEL_124;
              }
            }

            v42 = "malloc";
          }

          perror(v42);
LABEL_140:
          v2 = v55;
        }
      }

      fputc(10, __stdoutp);
      ifma_lladdr = v0->ifma_lladdr;
      if (ifma_lladdr)
      {
        sdl_addr_to_hex(ifma_lladdr, __str);
        fprintf(__stdoutp, "\t\t\tmcast-macaddr %s\n", __str);
      }

LABEL_45:
      v0 = v0->ifma_next;
      if (!v0)
      {
LABEL_150:
        if (v57)
        {
          freeifaddrs(v57);
        }

        break;
      }
    }
  }

LABEL_152:
  freeifmaddrs(v56);
}

const char *inet6_n2a(unsigned __int8 *a1)
{
  v7 = 0uLL;
  v8 = 0;
  v6 = 7708;
  v7 = *a1;
  v1 = *a1;
  if (v1 == 255)
  {
    v2 = a1[1] & 0xF;
    if ((v2 != 2 || (a1[1] & 0xF0) == 48) && v2 != 1)
    {
      goto LABEL_15;
    }
  }

  else if (v1 != 254 || (a1[1] & 0xC0) != 0x80)
  {
    goto LABEL_15;
  }

  if (WORD1(v7))
  {
    v8 = __rev16(WORD1(v7));
    WORD1(v7) = 0;
  }

LABEL_15:
  if (getnameinfo(&v6, 0x1Cu, inet6_n2a_buf, 0x401u, 0, 0, 2))
  {
    return "(invalid)";
  }

  else
  {
    return inet6_n2a_buf;
  }
}

char *sdl_addr_to_hex(uint64_t a1, char *__str)
{
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  *__str = 0;
  if (v4)
  {
    v5 = (a1 + v3 + 8);
    v6 = (v4 - 1);
    v7 = __str;
    do
    {
      v8 = *v5++;
      snprintf(v7, 3uLL, "%02x", v8);
      if (v6)
      {
        v9 = 58;
      }

      else
      {
        v9 = 0;
      }

      v7[2] = v9;
      v7 += 3;
      --v6;
      --v4;
    }

    while (v4);
  }

  return __str;
}

uint64_t printb(unsigned int a1, _BYTE *a2)
{
  if (a2 && *a2 == 8)
  {
    printf("%s=%o");
  }

  else
  {
    printf("%s=%x");
  }

  putchar(60);
  LOBYTE(v4) = a2[1];
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 2;
    do
    {
      if ((a1 >> (v4 - 1)))
      {
        if (v5)
        {
          putchar(44);
        }

        v4 = *v6;
        if (v4 >= 33)
        {
          do
          {
            putchar(v4);
            v7 = *++v6;
            v4 = v7;
          }

          while (v7 > 32);
        }

        v5 = 1;
      }

      else
      {
        --v6;
        do
        {
          v8 = *++v6;
          v4 = v8;
        }

        while (v8 > 32);
      }

      ++v6;
    }

    while (v4);
  }

  return putchar(62);
}

void systmpr(unsigned int a1, const char *a2)
{
  if (a1 <= 2)
  {
    size[11] = v2;
    size[12] = v3;
    v6 = off_100025670[a1];
    size[0] = 0;
    if (sysctlbyname(v6, 0, size, 0, 0) < 0)
    {
      if (*__error() != 2)
      {
        warn("sysctl: %s");
      }
    }

    else
    {
      v7 = malloc_type_malloc(size[0], 0x8483FCC2uLL);
      if (v7)
      {
        v8 = v7;
        if (sysctlbyname(v6, v7, size, 0, 0) < 0)
        {
          warn("sysctl: %s");
          goto LABEL_90;
        }

        if (size[0] > 0x20)
        {
          v9 = 8;
          if (*v8)
          {
            v9 = ((*v8 - 1) | 7u) + 1;
          }

          if (v9 < size[0])
          {
            v27 = 0;
            v28 = 0;
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v29 = 0;
            v14 = 0;
            v15 = (v8 + v9);
            v16 = 1;
            do
            {
              if (*v15 <= 8)
              {
                v26 = *v15;
                warn("bad xgn_len: %u, expected %lu");
                break;
              }

              v17 = v15[1];
              if ((v17 & v14) != 0)
              {
                if (vflag)
                {
                  v24 = v15[1];
                  printf("got %d twice\n");
                }
              }

              else
              {
                v14 |= v17;
                if (v17 <= 7)
                {
                  switch(v17)
                  {
                    case 1:
                      v29 = v15;
                      goto LABEL_14;
                    case 2:
                      v13 = v15;
                      goto LABEL_14;
                    case 4:
                      v12 = v15;
                      goto LABEL_14;
                  }
                }

                else if (v17 > 127)
                {
                  if (v17 == 128)
                  {
                    v10 = v15;
                    goto LABEL_14;
                  }

                  if (v17 == 256)
                  {
                    v27 = v15;
                    goto LABEL_14;
                  }
                }

                else
                {
                  if (v17 == 8)
                  {
                    v28 = v15;
                    goto LABEL_14;
                  }

                  if (v17 == 64)
                  {
                    v11 = v15;
                    goto LABEL_14;
                  }
                }

                if (v14 && vflag >= 3)
                {
                  v25 = v15[1];
                  printf("unexpected kind %d which 0x%x\n");
                }
              }

LABEL_14:
              v19 = a1 == 1 && v14 != 271;
              v21 = a1 == 2 && v14 != 143;
              v22 = v14 != 64 && a1 == 0;
              if (v22 || v19 || v21)
              {
                goto LABEL_71;
              }

              switch(v14)
              {
                case 271:
                  if (v16)
                  {
                    puts("Active kernel event sockets");
                    if (Aflag)
                    {
                      printf("%16.16s ", "pcb");
                    }

                    printf("%-5.5s %-6.6s %-6.6s ", "Proto", "Recv-Q", "Send-Q");
                    printf("%6.6s ", "vendor");
                    printf("%6.6s ", "class");
                    printf("%6.6s", "subcl");
                    print_socket_stats_format();
                    putchar(10);
                  }

                  if (Aflag)
                  {
                    printf("%16llx ", *(v27 + 1));
                  }

                  printf("%-5.5s %6u %6u ", a2, *(v13 + 8), *(v12 + 8));
                  printf("%6d ", v27[4]);
                  printf("%6d ", v27[5]);
                  printf("%6d", v27[6]);
                  print_socket_stats_data(v29, v13, v12, v28);
                  goto LABEL_70;
                case 143:
                  if (v16)
                  {
                    puts("Active kernel control sockets");
                    if (Aflag)
                    {
                      printf("%16.16s ", "pcb");
                    }

                    printf("%-5.5s %-6.6s %-6.6s", "Proto", "Recv-Q", "Send-Q");
                    print_socket_stats_format();
                    printf(" %6.6s", "unit");
                    printf(" %6.6s", "id");
                    printf(" %s", "name");
                    putchar(10);
                  }

                  if (Aflag)
                  {
                    printf("%16llx ", *(v10 + 1));
                  }

                  printf("%-5.5s %6u %6u", a2, *(v13 + 8), *(v12 + 8));
                  print_socket_stats_data(v29, v13, v12, v28);
                  printf(" %6d", v10[4]);
                  printf(" %6d", v10[5]);
                  printf(" %s");
                  goto LABEL_70;
                case 64:
                  if (v16)
                  {
                    puts("Registered kernel control modules");
                    if (Aflag)
                    {
                      printf("%-16.16s ", "kctlref");
                    }

                    printf("%-8.8s ", "id");
                    if (Aflag)
                    {
                      printf("%-8.8s ", "unit");
                    }

                    printf("%-8.8s ", "flags");
                    printf("%-8.8s ", "pcbcount");
                    printf("%-8.8s ", "rcvbuf");
                    printf("%-8.8s ", "sndbuf");
                    printf("%s ", "name");
                    putchar(10);
                  }

                  if (Aflag)
                  {
                    printf("%16llx ", *(v11 + 3));
                  }

                  printf("%8x ", v11[2]);
                  if (Aflag)
                  {
                    printf("%8d ", v11[3]);
                  }

                  printf("%8x ", v11[4]);
                  printf("%8d ", v11[11]);
                  printf("%8d ", v11[8]);
                  printf("%8d ", v11[9]);
                  printf("%s ");
LABEL_70:
                  putchar(10);
                  v14 = 0;
                  v16 = 0;
                  break;
              }

LABEL_71:
              v23 = 8;
              if (*v15)
              {
                v23 = ((*v15 - 1) | 7) + 1;
              }

              v15 = (v15 + v23);
            }

            while (v15 < (v8 + size[0]));
          }
        }

LABEL_90:
        free(v8);
      }

      else
      {
        warn("malloc %lu bytes");
      }
    }
  }
}

void kctl_stats(uint64_t a1, const char *a2)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v31 = 112;
  if (sysctlbyname("net.systm.kctl.stats", &v32, &v31, 0, 0) < 0)
  {
    warn("sysctl: %s", "net.systm.kctl.stats");
  }

  else
  {
    if (interval)
    {
      v3 = vflag < 1;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v4 = v32 - kctl_stats_pkctlstat;
    if (v32 == kctl_stats_pkctlstat && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v32 - kctl_stats_pkctlstat);
      printf("\t%llu total kernel control module%s registered\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = *(&v32 + 1) - qword_100032C08;
    if (*(&v32 + 1) != qword_100032C08 || v5)
    {
      v8 = plural(DWORD2(v32) - qword_100032C08);
      printf("\t%llu current kernel control module%s registered\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = v33 - qword_100032C10;
    if (v33 != qword_100032C10 || v5)
    {
      v10 = plural(v33 - qword_100032C10);
      printf("\t%llu open kernel control socket%s\n", v9, v10);
      v5 = sflag < 2;
    }

    if (*(&v33 + 1) != qword_100032C18 || v5)
    {
      printf("\t%llu kernel control generation count\n", *(&v33 + 1) - qword_100032C18);
      v5 = sflag < 2;
    }

    v11 = v34 - qword_100032C20;
    if (v34 != qword_100032C20 || v5)
    {
      v12 = plural(v34 - qword_100032C20);
      printf("\t%llu connection attempt%s\n", v11, v12);
      v5 = sflag < 2;
    }

    v13 = *(&v34 + 1) - qword_100032C28;
    if (*(&v34 + 1) != qword_100032C28 || v5)
    {
      v14 = plural(DWORD2(v34) - qword_100032C28);
      printf("\t%llu connection failure%s\n", v13, v14);
      v5 = sflag < 2;
    }

    v15 = v35 - qword_100032C30;
    if (v35 != qword_100032C30 || v5)
    {
      v16 = plural(v35 - qword_100032C30);
      printf("\t%llu send failure%s\n", v15, v16);
      v5 = sflag < 2;
    }

    v17 = *(&v35 + 1) - qword_100032C38;
    if (*(&v35 + 1) != qword_100032C38 || v5)
    {
      v18 = plural(DWORD2(v35) - qword_100032C38);
      printf("\t%llu send list failure%s\n", v17, v18);
      v5 = sflag < 2;
    }

    v19 = v36 - qword_100032C40;
    if (v36 != qword_100032C40 || v5)
    {
      v20 = plural(v36 - qword_100032C40);
      printf("\t%llu enqueue failure%s\n", v19, v20);
      v5 = sflag < 2;
    }

    v21 = *(&v36 + 1) - qword_100032C48;
    if (*(&v36 + 1) != qword_100032C48 || v5)
    {
      v22 = plural(DWORD2(v36) - qword_100032C48);
      printf("\t%llu packet%s dropped due to full socket buffers\n", v21, v22);
      v5 = sflag < 2;
    }

    v23 = v37 - qword_100032C50;
    if (v37 != qword_100032C50 || v5)
    {
      v24 = plural(v37 - qword_100032C50);
      printf("\t%llu failure%s with bad kern_ctl_ref\n", v23, v24);
      v5 = sflag < 2;
    }

    v25 = *(&v37 + 1) - qword_100032C58;
    if (*(&v37 + 1) != qword_100032C58 || v5)
    {
      v26 = plural(DWORD2(v37) - qword_100032C58);
      printf("\t%llu register failure%s because of too many kern_ctl_ref\n", v25, v26);
      v5 = sflag < 2;
    }

    v27 = v38 - qword_100032C60;
    if (v38 != qword_100032C60 || v5)
    {
      v28 = plural(v38 - qword_100032C60);
      printf("\t%llu enqueuedata failure%s because could not allocate a packet\n", v27, v28);
      v5 = sflag < 2;
    }

    v29 = *(&v38 + 1) - qword_100032C68;
    if (*(&v38 + 1) != qword_100032C68 || v5)
    {
      v30 = plural(DWORD2(v38) - qword_100032C68);
      printf("\t%llu enqueuedata failure%s due to full socket buffers\n", v29, v30);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

void kevt_stats(uint64_t a1, const char *a2)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 56;
  if (sysctlbyname("net.systm.kevt.stats", &v18, &v17, 0, 0) < 0)
  {
    warn("sysctl: %s", "net.systm.kevt.stats");
  }

  else
  {
    if (interval)
    {
      v3 = vflag < 1;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v4 = v18 - kevt_stats_pkevtstat;
    if (v18 == kevt_stats_pkevtstat && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v18 - kevt_stats_pkevtstat);
      printf("\t%llu open kernel event socket%s\n", v4, v6);
      v5 = sflag < 2;
    }

    if (*(&v18 + 1) != qword_100032C78 || v5)
    {
      printf("\t%llu kernel control generation count\n", *(&v18 + 1) - qword_100032C78);
      v5 = sflag < 2;
    }

    v7 = v19 - qword_100032C80;
    if (v19 != qword_100032C80 || v5)
    {
      v8 = plural(v19 - qword_100032C80);
      printf("\t%llu bad vendor failure%s\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = *(&v19 + 1) - qword_100032C88;
    if (*(&v19 + 1) != qword_100032C88 || v5)
    {
      v10 = plural(DWORD2(v19) - qword_100032C88);
      printf("\t%llu message too big failure%s\n", v9, v10);
      v5 = sflag < 2;
    }

    v11 = v20 - qword_100032C90;
    if (v20 != qword_100032C90 || v5)
    {
      v12 = plural(v20 - qword_100032C90);
      printf("\t%llu out of memory failure%s\n", v11, v12);
      v5 = sflag < 2;
    }

    v13 = *(&v20 + 1) - qword_100032C98;
    if (*(&v20 + 1) != qword_100032C98 || v5)
    {
      v14 = plural(DWORD2(v20) - qword_100032C98);
      printf("\t%llu message%s dropped due to full socket buffers\n", v13, v14);
      v5 = sflag < 2;
    }

    v15 = v21 - qword_100032CA0;
    if (v21 != qword_100032CA0 || v5)
    {
      v16 = plural(v21 - qword_100032CA0);
      printf("\t%llu message%s posted\n", v15, v16);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

void print_extbkidle_stats(uint64_t a1, const char *a2)
{
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v30 = 60;
  if (sysctlbyname("kern.ipc.extbkidlestat", &v31, &v30, 0, 0) < 0)
  {
    warn("sysctl: %s", "kern.ipc.extbkidlestat");
  }

  else
  {
    if (interval)
    {
      v3 = vflag < 1;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      print_time();
    }

    printf("%s:\n", a2);
    if (v31 == print_extbkidle_stats_psoextbkidlestat && sflag > 1)
    {
      v4 = 0;
    }

    else
    {
      printf("\t%u max per process\n", v31 - print_extbkidle_stats_psoextbkidlestat);
      v4 = sflag < 2;
    }

    if (DWORD1(v31) != dword_100032CAC || v4)
    {
      printf("\t%u maximum time (seconds)\n", DWORD1(v31) - dword_100032CAC);
      v4 = sflag < 2;
    }

    if (DWORD2(v31) != dword_100032CB0 || v4)
    {
      printf("\t%u high water mark\n", DWORD2(v31) - dword_100032CB0);
      v4 = sflag < 2;
    }

    v5 = HIDWORD(v31) - dword_100032CB4;
    if (HIDWORD(v31) != dword_100032CB4 || v4)
    {
      v6 = plural(HIDWORD(v31) - dword_100032CB4);
      printf("\t%u socket option not supported failure%s\n", v5, v6);
      v4 = sflag < 2;
    }

    v7 = v32 - dword_100032CB8;
    if (v32 != dword_100032CB8 || v4)
    {
      v8 = plural(v32 - dword_100032CB8);
      printf("\t%u too many sockets failure%s\n", v7, v8);
      v4 = sflag < 2;
    }

    v9 = DWORD1(v32) - dword_100032CBC;
    if (DWORD1(v32) != dword_100032CBC || v4)
    {
      v10 = plural(DWORD1(v32) - dword_100032CBC);
      printf("\t%u total socket%s requested OK\n", v9, v10);
      v4 = sflag < 2;
    }

    v11 = DWORD2(v32) - dword_100032CC0;
    if (DWORD2(v32) != dword_100032CC0 || v4)
    {
      v12 = plural(DWORD2(v32) - dword_100032CC0);
      printf("\t%u extended bk idle socket%s\n", v11, v12);
      v4 = sflag < 2;
    }

    v13 = HIDWORD(v32) - dword_100032CC4;
    if (HIDWORD(v32) != dword_100032CC4 || v4)
    {
      v14 = plural(HIDWORD(v32) - dword_100032CC4);
      printf("\t%u no cellular failure%s\n", v13, v14);
      v4 = sflag < 2;
    }

    v15 = v33[0] - dword_100032CC8;
    if (v33[0] != dword_100032CC8 || v4)
    {
      v16 = plural(v33[0] - dword_100032CC8);
      printf("\t%u no time failures%s\n", v15, v16);
      v4 = sflag < 2;
    }

    v17 = v33[1] - dword_100032CCC;
    if (v33[1] != dword_100032CCC || v4)
    {
      v18 = plural(v33[1] - dword_100032CCC);
      printf("\t%u forced defunct socket%s\n", v17, v18);
      v4 = sflag < 2;
    }

    v19 = v33[2] - dword_100032CD0;
    if (v33[2] != dword_100032CD0 || v4)
    {
      v21 = plural(v33[2] - dword_100032CD0);
      printf("\t%u resumed socket%s\n", v19, v21);
      v20 = sflag < 2;
    }

    else
    {
      v20 = 0;
    }

    v22 = v33[3];
    v23 = v33[3] - dword_100032CD4;
    if (v33[3] != dword_100032CD4 || v20)
    {
      v25 = plural(v33[3] - dword_100032CD4);
      printf("\t%u timeout expired failure%s\n", v23, v25);
      v24 = v33[3];
      v22 = dword_100032CD4;
      v20 = sflag < 2;
    }

    else
    {
      v24 = v33[3];
    }

    v26 = v24 - v22;
    if (v26 || v20)
    {
      printf("\t%u timer rescheduled\n", v26);
      v27 = sflag < 2;
    }

    else
    {
      v27 = 0;
    }

    v28 = v33[5] - dword_100032CDC;
    if (v33[5] != dword_100032CDC || v27)
    {
      v29 = plural(v33[5] - dword_100032CDC);
      printf("\t%u no delegated failure%s\n", v28, v29);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

void print_nstat_stats(uint64_t a1, const char *a2)
{
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 64;
  if (sysctlbyname("net.stats.stats", &v38, &v37, 0, 0) < 0)
  {
    warn("sysctl: %s", "net.stats.stats");
  }

  else
  {
    if (interval)
    {
      v3 = vflag < 1;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v4 = v38 - print_nstat_stats_pnstat_stats;
    if (v38 == print_nstat_stats_pnstat_stats && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v38 - print_nstat_stats_pnstat_stats);
      printf("\t%u enqueue success message failure%s\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = DWORD1(v38) - dword_100032CE8;
    if (DWORD1(v38) != dword_100032CE8 || v5)
    {
      v8 = plural(DWORD1(v38) - dword_100032CE8);
      printf("\t%u enqueue source counts message failure%s\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = DWORD2(v38) - dword_100032CEC;
    if (DWORD2(v38) != dword_100032CEC || v5)
    {
      v10 = plural(DWORD2(v38) - dword_100032CEC);
      printf("\t%u enqueue sysinfo message failure%s\n", v9, v10);
      v5 = sflag < 2;
    }

    v11 = HIDWORD(v38) - dword_100032CF0;
    if (HIDWORD(v38) != dword_100032CF0 || v5)
    {
      v12 = plural(HIDWORD(v38) - dword_100032CF0);
      printf("\t%u enqueue source udpate message failure%s\n", v11, v12);
      v5 = sflag < 2;
    }

    v13 = v39 - dword_100032CF4;
    if (v39 != dword_100032CF4 || v5)
    {
      v14 = plural(v39 - dword_100032CF4);
      printf("\t%u enqueue description message failure%s\n", v13, v14);
      v5 = sflag < 2;
    }

    v15 = DWORD1(v39) - dword_100032CF8;
    if (DWORD1(v39) != dword_100032CF8 || v5)
    {
      v16 = plural(DWORD1(v39) - dword_100032CF8);
      printf("\t%u enqueue remove message failure%s\n", v15, v16);
      v5 = sflag < 2;
    }

    v17 = DWORD2(v39) - dword_100032CFC;
    if (DWORD2(v39) != dword_100032CFC || v5)
    {
      v18 = plural(DWORD2(v39) - dword_100032CFC);
      printf("\t%u enqueue source added message failure%s\n", v17, v18);
      v5 = sflag < 2;
    }

    v19 = HIDWORD(v39) - dword_100032D00;
    if (HIDWORD(v39) != dword_100032D00 || v5)
    {
      v20 = plural(HIDWORD(v39) - dword_100032D00);
      printf("\t%u enqueue error message failure%s\n", v19, v20);
      v5 = sflag < 2;
    }

    v21 = v40 - dword_100032D04;
    if (v40 != dword_100032D04 || v5)
    {
      v22 = plural(v40 - dword_100032D04);
      printf("\t%u copy descriptor failure%s\n", v21, v22);
      v5 = sflag < 2;
    }

    v23 = DWORD1(v40) - dword_100032D08;
    if (DWORD1(v40) != dword_100032D08 || v5)
    {
      v24 = plural(DWORD1(v40) - dword_100032D08);
      printf("\t%u provider counts failure%s\n", v23, v24);
      v5 = sflag < 2;
    }

    v25 = DWORD2(v40) - dword_100032D0C;
    if (DWORD2(v40) != dword_100032D0C || v5)
    {
      v26 = plural(DWORD2(v40) - dword_100032D0C);
      printf("\t%u control send description failure%s\n", v25, v26);
      v5 = sflag < 2;
    }

    v27 = HIDWORD(v40) - dword_100032D10;
    if (HIDWORD(v40) != dword_100032D10 || v5)
    {
      v28 = plural(HIDWORD(v40) - dword_100032D10);
      printf("\t%u control send goodbye failure%s\n", v27, v28);
      v5 = sflag < 2;
    }

    v29 = v41 - dword_100032D14;
    if (v41 != dword_100032D14 || v5)
    {
      v30 = plural(v41 - dword_100032D14);
      printf("\t%u flush accumulated messages failure%s\n", v29, v30);
      v5 = sflag < 2;
    }

    v31 = DWORD1(v41) - dword_100032D18;
    if (DWORD1(v41) != dword_100032D18 || v5)
    {
      v32 = plural(DWORD1(v41) - dword_100032D18);
      printf("\t%u accumulated message failure%s\n", v31, v32);
      v5 = sflag < 2;
    }

    v33 = DWORD2(v41) - dword_100032D1C;
    if (DWORD2(v41) != dword_100032D1C || v5)
    {
      v34 = plural(DWORD2(v41) - dword_100032D1C);
      printf("\t%u control cleanup source failure%s\n", v33, v34);
      v5 = sflag < 2;
    }

    v35 = HIDWORD(v41) - dword_100032D20;
    if (HIDWORD(v41) != dword_100032D20 || v5)
    {
      v36 = plural(HIDWORD(v41) - dword_100032D20);
      printf("\t%u handle message failure%s\n", v35, v36);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

uint64_t pr_family(int a1)
{
  if (a1 == 2 || a1 == 23 || a1 == 30)
  {
    return printf("\n%s:\n");
  }

  else
  {
    return printf("\nProtocol Family %d:\n");
  }
}

uint64_t pr_rthdr(int a1)
{
  if (lflag)
  {
    if (lflag < 3)
    {
      if (Wflag)
      {
        LODWORD(v4) = 53;
      }

      else
      {
        LODWORD(v4) = 39;
      }

      if (a1 == 30)
      {
        v4 = v4;
      }

      else
      {
        v4 = 18;
      }

      if (lflag == 2)
      {
        return printf("%-*.*s %-*.*s %-*.*s %-10.10s %6.6s %8.8s %6.6s %*.*s %6s %10s %10s\n", v4, v4, "Destination", v4, v4, "Gateway", v4, v4, "RT_IFA", "Flags", "Refs");
      }

      else
      {
        return printf("%-*.*s %-*.*s %-*.*s %-10.10s %6.6s %8.8s %6.6s %*.*s %6s\n", v4, v4, "Destination", v4, v4, "Gateway", v4, v4, "RT_IFA");
      }
    }

    else
    {
      if (Wflag)
      {
        LODWORD(v1) = 53;
      }

      else
      {
        LODWORD(v1) = 39;
      }

      if (a1 == 30)
      {
        v1 = v1;
      }

      else
      {
        v1 = 18;
      }

      return printf("%-*.*s %-*.*s %-*.*s %-10.10s %6.6s %8.8s %6.6s %*.*s %6s %10s %10s %8s %8s %8s\n", v1, v1, "Destination", v1, v1, "Gateway", v1, v1, "RT_IFA", "Flags", "Refs", "Use", "Mtu", 14);
    }
  }

  else
  {
    if (a1 == 30)
    {
      if (Wflag)
      {
        v3 = 53;
      }

      else if (nflag)
      {
        v3 = 39;
      }

      else
      {
        v3 = 18;
      }
    }

    else
    {
      v3 = 18;
    }

    return printf("%-*.*s %-*.*s %-10.10s %*.*s %6s\n", v3, v3, "Destination");
  }
}

uint64_t routepr()
{
  v26 = 0;
  puts("Routing tables");
  *v27 = xmmword_100023230;
  v28 = 7;
  if (sysctl(v27, 6u, 0, &v26, 0, 0) < 0)
  {
LABEL_10:
    routepr_cold_3();
  }

  v0 = 1;
  while (1)
  {
    v1 = v26;
    if (!__CFADD__(v26, v26 >> 1))
    {
      v1 = (v26 >> 1) + v26;
      v26 = v1;
    }

    v2 = malloc_type_malloc(v1, 0xB7990224uLL);
    if (!v2)
    {
      routepr_cold_2(&v26);
    }

    v3 = v2;
    result = sysctl(v27, 6u, v2, &v26, 0, 0);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 12 || v0 > 9)
    {
      routepr_cold_1();
    }

    free(v3);
    ++v0;
    *v27 = xmmword_100023230;
    v28 = 7;
    if (sysctl(v27, 6u, 0, &v26, 0, 0) < 0)
    {
      goto LABEL_10;
    }
  }

  if (v26 >= 1)
  {
    v5 = v3 + v26;
    do
    {
      if ((v3[5] & 2) == 0 || (v3[11] & 1) == 0 || aflag)
      {
        v6 = lflag < 2 || zflag == 0;
        if (v6 || *(v3 + 16) || *(v3 + 17))
        {
          v7 = *(v3 + 93);
          if (!af || af == v7)
          {
            if (np_rtentry_old_fam != v7)
            {
              pr_family(*(v3 + 93));
              pr_rthdr(v7);
              np_rtentry_old_fam = v7;
            }

            v9 = 0;
            v10 = v3 + 46;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v46 = 0;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
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
            v11 = *(v3 + 3);
            do
            {
              if ((v11 >> v9))
              {
                v12 = ((*v10 - 1) & 0xFFFFFFFC) + 4;
                if (!*v10)
                {
                  v12 = 4;
                }

                v13 = v10;
                v10 += v12;
              }

              else
              {
                v13 = 0;
              }

              *(&v62 + v9++) = v13;
            }

            while (v9 != 8);
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
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
            v46 = 0;
            v47 = 0u;
            if (v11)
            {
              v14 = *v62;
              __memmove_chk();
              v11 = *(v3 + 3);
            }

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
            if ((v11 & 4) != 0)
            {
              v15 = *v63;
              __memmove_chk();
            }

            p_sockaddr(&v46, &v30, *(v3 + 2));
            p_sockaddr(*(&v62 + 1), 0, 4);
            if (lflag && (v3[6] & 0x20) != 0)
            {
              p_sockaddr(*(&v64 + 1), 0, 4);
            }

            v16 = bits;
            if (bits)
            {
              v17 = v29;
              v18 = &dword_1000287C4;
              do
              {
                if ((*(v3 + 2) & v16) != 0)
                {
                  *v17++ = *(v18 - 4);
                }

                v19 = *v18;
                v18 += 2;
                v16 = v19;
              }

              while (v19);
            }

            else
            {
              v17 = v29;
            }

            *v17 = 0;
            printf("%-10.10s ", v29);
            if (lflag)
            {
              printf("%6u %8u ", *(v3 + 4), *(v3 + 7));
              if (*(v3 + 10))
              {
                v22 = *(v3 + 10);
                printf("%6u ");
              }

              else
              {
                printf("%6s ");
              }
            }

            v20 = v3[2];
            if (v20 != 0xFFFF)
            {
              if_indextoname(v20, np_rtentry_ifname);
            }

            printf("%*.*s", 14, 14, np_rtentry_ifname);
            v21 = *(v3 + 12);
            if (v21 && v21 - time(0) >= 1)
            {
              printf(" %6d");
            }

            else
            {
              printf(" %6s");
            }

            if (lflag >= 2)
            {
              if (*(v3 + 16))
              {
                printf(" %6u.%03u");
              }

              else
              {
                printf(" %10s");
              }

              if (*(v3 + 17))
              {
                printf(" %6u.%03u");
              }

              else
              {
                printf(" %10s");
              }

              if (lflag >= 3)
              {
                if (*(v3 + 13))
                {
                  v23 = *(v3 + 13);
                  printf(" %8u");
                }

                else
                {
                  printf(" %8s");
                }

                if (*(v3 + 14))
                {
                  v24 = *(v3 + 14);
                  printf(" %8u");
                }

                else
                {
                  printf(" %8s");
                }

                if (*(v3 + 15))
                {
                  v25 = *(v3 + 15);
                  printf(" %8u");
                }

                else
                {
                  printf(" %8s");
                }
              }
            }

            result = putchar(10);
          }
        }
      }

      v3 = (v3 + *v3);
    }

    while (v3 < v5);
  }

  return result;
}

char *routename(unsigned int a1)
{
  v5 = a1;
  if (!nflag && (v2 = gethostbyaddr(&v5, 4u, 2)) != 0 && (h_name = v2->h_name, v4 = strlen(v2->h_name), clean_non_printable(h_name, v4)))
  {
    __strlcpy_chk();
  }

  else
  {
    v5 = bswap32(v5);
    snprintf(routename_line, 0x100uLL, "%u.%u.%u.%u", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5);
  }

  return routename_line;
}

char *netname(unsigned int a1, unsigned int a2)
{
  v3 = bswap32(a1);
  if (v3 >> 30 == 2)
  {
    v4 = -65536;
  }

  else
  {
    v4 = -256;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -16777216;
  }

  if (nflag)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1 == 0;
  }

  if (!v6)
  {
    v7 = getnetbyaddr(v3, 2);
    if (v7 || (v5 & v3) != v3 && (v7 = getnetbyaddr(v5 & v3, 2)) != 0)
    {
      if (v7->n_name)
      {
        __strlcpy_chk();
        goto LABEL_26;
      }
    }
  }

  if (v5 == -16777216)
  {
    if ((v3 & 0xFFFFFF) == 0)
    {
      snprintf(netname_line, 0x100uLL, "%u");
      goto LABEL_26;
    }

LABEL_20:
    if (!v3)
    {
      snprintf(netname_line, 0x100uLL, "%u.%u");
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v5 == -65536)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v3)
  {
    snprintf(netname_line, 0x100uLL, "%u.%u.%u.%u");
  }

  else
  {
    snprintf(netname_line, 0x100uLL, "%u.%u.%u");
  }

LABEL_26:
  v8 = strlen(netname_line);
  if (!a2 || v5 == a2)
  {
    netname_line[v8] = 0;
  }

  else
  {
    v9 = -32;
    while (((a2 >> v9) & 1) == 0)
    {
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_38;
      }
    }

    v11 = v9 + 32;
    while (v11 != 31)
    {
      v12 = a2 >> v11++;
      if ((v12 & 2) == 0)
      {
        snprintf(&netname_line[v8], 8uLL, "&0x%x");
        return netname_line;
      }
    }

LABEL_38:
    snprintf(&netname_line[v8], 8uLL, "/%d");
  }

  return netname_line;
}

const char *netname6(sockaddr *a1, _BYTE *a2)
{
  v3 = a2 + 8;
  if (!a2)
  {
    v7 = 128;
    goto LABEL_35;
  }

  if (!*a2)
  {
    goto LABEL_30;
  }

  v4 = 0;
  v5 = 0;
  v7 = 0;
  do
  {
    v6 = v3[v4];
    if (v6 <= 0xEF)
    {
      if (v3[v4] > 0xBFu)
      {
        if (v6 == 192)
        {
          v7 += 2;
          goto LABEL_26;
        }

        if (v6 == 224)
        {
          v7 += 3;
          goto LABEL_26;
        }
      }

      else
      {
        if (!v3[v4])
        {
          goto LABEL_26;
        }

        if (v6 == 128)
        {
          ++v7;
          goto LABEL_26;
        }
      }
    }

    else if (v3[v4] <= 0xFBu)
    {
      if (v6 == 240)
      {
        v7 += 4;
        goto LABEL_26;
      }

      if (v6 == 248)
      {
        v7 += 5;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v6)
      {
        case 0xFCu:
          v7 += 6;
          goto LABEL_26;
        case 0xFEu:
          v7 += 7;
          goto LABEL_26;
        case 0xFFu:
          v7 += 8;
          goto LABEL_26;
      }
    }

    ++v5;
LABEL_26:
    ++v4;
  }

  while (v4 != 16);
  if (v5)
  {
    fwrite("illegal prefixlen\n", 0x12uLL, 1uLL, __stderrp);
  }

  if (v7)
  {
LABEL_35:
    if (nflag)
    {
      v8 = 34;
    }

    else
    {
      v8 = 32;
    }

    v9 = netname6_line;
    getnameinfo(a1, a1->sa_len, netname6_line, 0x100u, 0, 0, v8);
    if (nflag)
    {
      v10 = strlen(netname6_line);
      snprintf(&netname6_line[v10], 256 - v10, "/%d", v7);
    }
  }

  else
  {
LABEL_30:
    if (*&a1->sa_data[6] || *&a1->sa_data[10] || *&a1[1].sa_len || *&a1[1].sa_data[2])
    {
      v7 = 0;
      goto LABEL_35;
    }

    return "default";
  }

  return v9;
}

char *routename6(uint64_t a1)
{
  v3 = 7708;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (nflag)
  {
    v1 = 34;
  }

  else
  {
    v1 = 32;
  }

  getnameinfo(&v3, 0x1Cu, routename6_line, 0x100u, 0, 0, v1);
  return routename6_line;
}

uint64_t rt_stats()
{
  v33 = 0;
  v31 = 0;
  puts("routing:");
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  *v37 = xmmword_100023230;
  v38 = 11;
  v32 = 48;
  if (sysctl(v37, 6u, &v28, &v32, 0, 0) == -1)
  {
    v35 = 0;
    v34 = 0;
    *v39 = xmmword_100023230;
    v40 = 4;
    v36 = 12;
    if (sysctl(v39, 6u, &v34, &v36, 0, 0) != -1)
    {
      v2 = v34;
      if (v34 || sflag <= 1)
      {
        v14 = plural(v34);
        printf("\t%d bad routing redirect%s\n", v2, v14);
        v3 = sflag < 2;
      }

      else
      {
        v3 = 0;
      }

      v15 = SWORD1(v34);
      if (WORD1(v34) || v3)
      {
        v16 = plural(SWORD1(v34));
        printf("\t%d dynamically created route%s\n", v15, v16);
        v3 = sflag < 2;
      }

      v17 = SWORD2(v34);
      if (WORD2(v34) || v3)
      {
        v18 = plural(SWORD2(v34));
        printf("\t%d new gateway%s due to redirects\n", v17, v18);
        v3 = sflag < 2;
      }

      v19 = SHIWORD(v34);
      if (HIWORD(v34) || v3)
      {
        v20 = plural(SHIWORD(v34));
        printf("\t%d destination%s found unreachable\n", v19, v20);
        v3 = sflag < 2;
      }

      v21 = v35;
      if (v35 || v3)
      {
        v22 = plural(v35);
        printf("\t%d use%s of a wildcard route\n", v21, v22);
        v3 = sflag < 2;
      }

      if (HIWORD(v35) || v3)
      {
        plural(SHIWORD(v35));
        printf("\t%d lookup%s returned indirect routes pointing to indirect gateway route\n");
      }
    }

    goto LABEL_41;
  }

  v0 = v28;
  if (v28 || sflag <= 1)
  {
    v4 = plural(v28);
    printf("\t%llu bad routing redirect%s\n", v0, v4);
    v1 = sflag < 2;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(&v28 + 1);
  if (*(&v28 + 1) || v1)
  {
    v6 = plural(SDWORD2(v28));
    printf("\t%llu dynamically created route%s\n", v5, v6);
    v1 = sflag < 2;
  }

  v7 = v29;
  if (v29 || v1)
  {
    v8 = plural(v29);
    printf("\t%llu new gateway%s due to redirects\n", v7, v8);
    v1 = sflag < 2;
  }

  v9 = *(&v29 + 1);
  if (*(&v29 + 1) || v1)
  {
    v10 = plural(SDWORD2(v29));
    printf("\t%llu destination%s found unreachable\n", v9, v10);
    v1 = sflag < 2;
  }

  v11 = v30;
  if (v30 || v1)
  {
    v12 = plural(v30);
    printf("\t%llu use%s of a wildcard route\n", v11, v12);
    v1 = sflag < 2;
  }

  v13 = xmmword_100023230;
  if (*(&v30 + 1) || v1)
  {
    plural(SDWORD2(v30));
    printf("\t%llu lookup%s returned indirect routes pointing to indirect gateway route\n");
LABEL_41:
    v13 = xmmword_100023230;
  }

  *v37 = v13;
  v38 = 5;
  v32 = 4;
  result = sysctl(v37, 6u, &v33, &v32, 0, 0);
  if (result != -1)
  {
    v24 = v33;
    if (v33 || sflag <= 1)
    {
      v25 = plural(v33);
      printf("\t%u route%s not in table but not freed\n", v24, v25);
    }

    v32 = 4;
    result = sysctlbyname("net.route.pcbcount", &v31, &v32, 0, 0);
    if (result != -1)
    {
      v26 = v31;
      if (v31 || sflag <= 1)
      {
        v27 = plural(v31);
        return printf("\t%u open routing socket%s\n", v26, v27);
      }
    }
  }

  return result;
}

uint64_t p_sockaddr(sockaddr *a1, uint64_t a2, char a3)
{
  sa_family = a1->sa_family;
  switch(sa_family)
  {
    case 30:
      v10 = a1->sa_data[6];
      if (v10 == 255)
      {
        v17 = a1->sa_data[7];
        if ((v17 & 0xF) != 1 && ((v17 & 0xF0) == 0x30 || (v17 & 0xF) != 2))
        {
LABEL_39:
          if ((a3 & 4) == 0)
          {
LABEL_40:
            netname6(a1, a2);
            break;
          }

LABEL_42:
          *__str = 7708;
          v22 = *&a1->sa_data[6];
          v23 = *&a1[1].sa_data[6];
          if (nflag)
          {
            v19 = 34;
          }

          else
          {
            v19 = 32;
          }

          getnameinfo(__str, 0x1Cu, routename6_line, 0x100u, 0, 0, v19);
          break;
        }
      }

      else if (v10 != 254 || (a1->sa_data[7] & 0xC0) != 0x80)
      {
        goto LABEL_39;
      }

      *&a1[1].sa_data[6] = bswap32(*&a1->sa_data[8]) >> 16;
      *&a1->sa_data[8] = 0;
      if ((a3 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    case 18:
      if (a1->sa_data[3] || a1->sa_data[4] || a1->sa_data[5])
      {
        if (a1->sa_data[2] == 6)
        {
          v6 = __str;
          if (a1->sa_data[4])
          {
            v7 = 0;
            v8 = &a1->sa_data[a1->sa_data[3] + 6];
            v9 = &unk_100018CDA;
            do
            {
              v6 += snprintf(v6, &v24 - v6, "%s%x", v9, v8[v7++]);
              v9 = ":";
            }

            while (v7 < a1->sa_data[4]);
          }
        }

        else
        {
          link_ntoa(a1);
        }
      }

      else
      {
        snprintf(__str, 0x80uLL, "link#%d", *a1->sa_data);
      }

      break;
    case 2:
      v5 = *&a1->sa_data[2];
      if (!a2 || v5 || *(a2 + 4) && *a2)
      {
        if ((a3 & 4) != 0)
        {
          routename(v5);
        }

        else
        {
          if (a2)
          {
            LODWORD(a2) = bswap32(*(a2 + 4));
          }

          netname(v5, a2);
        }
      }

      break;
    default:
      sa_len = a1->sa_len;
      v12 = snprintf(__str, 0x80uLL, "(%d)", a1->sa_family);
      if (sa_len >= 3 && v12 <= 121)
      {
        v13 = &a1->sa_len + sa_len;
        v14 = v12;
        sa_data = a1->sa_data;
        do
        {
          v16 = sa_data + 1;
          v14 += snprintf(&__str[v14], 128 - v14, " %02x", *sa_data);
          if (sa_data + 1 < v13)
          {
            v16 = sa_data + 2;
            v14 += snprintf(&__str[v14], 128 - v14, "%02x", sa_data[1]);
          }

          sa_data = v16;
        }

        while (v16 < v13 && v14 < 122);
      }

      break;
  }

  if (nflag)
  {
    return printf("%-*s ");
  }

  else
  {
    return printf("%-*.*s ");
  }
}

void mptcppr()
{
  size = 0;
  if (Lflag)
  {
    v0 = 0;
  }

  else
  {
    v0 = Aflag == 0;
  }

  if (v0 && mptcp_done == 0)
  {
    mptcp_done = 1;
    if (sysctlbyname("net.inet.mptcp.pcblist", 0, &size, 0, 0) < 0)
    {
      if (*__error() != 2)
      {
        warn("sysctl: %s");
      }
    }

    else
    {
      v2 = malloc_type_malloc(size, 0xF7BABE3EuLL);
      if (v2)
      {
        v3 = v2;
        if (sysctlbyname("net.inet.mptcp.pcblist", v2, &size, 0, 0) < 0)
        {
          warn("sysctl: %s", "net.inet.mptcp.pcblist");
        }

        else
        {
          puts("Active Multipath Internet connections");
          printf("%-8.8s  %-9.9s  %-22.22s %-22.22s %-11.11s\n", "Proto/ID", "Flags", "Local Address", "Foreign Address", "(state)");
          if (size >= 832)
          {
            v4 = 0;
            v5 = v3;
            v10 = v3;
            do
            {
              v11 = v4;
              printf("mptcp/%-2.2d  %-8.8x/%-8.8x %50s \n      [tok(%#x) snd(%#llx) rcv(%#llx) aid(%d)]\n", v4, v5[7], v5[8], mptcpstates[v5[6]], v5[10], *(v5 + 7), *(v5 + 11), *(v5 + 108));
              if (*(v5 + 2))
              {
                v6 = 0;
                v7 = v5 + *(v5 + 1);
                do
                {
                  v8 = *(v7 + 25);
                  v9 = 6;
                  if (v8 == 2)
                  {
                    v9 = 4;
                  }

                  printf(" tcp%d/%-2.2d  ", v9, *(v7 + 20));
                  printf("%-8.8x   ", *(v7 + 16));
                  if (v8 == 30)
                  {
                    inet6print((v7 + 32), *(v7 + 26), "tcp", nflag);
                    inet6print((v7 + 160), *(v7 + 154), "tcp", nflag);
                  }

                  else if (v8 == 2)
                  {
                    inetprint((v7 + 28), *(v7 + 26), "tcp", nflag);
                    inetprint((v7 + 156), *(v7 + 154), "tcp", nflag);
                  }

                  printf("%s \n      [relseq(%-4.4d), err(%d)]\n", tcpstates_0[*(v7 + *(v7 + 8))], *(v7 + 280), *(v7 + 284));
                  v7 += *v7;
                  ++v6;
                }

                while (*(v5 + 2) > v6);
              }

              v5 = (v5 + *v5);
              v3 = v10;
              if (&v10[size] <= v5)
              {
                break;
              }

              v4 = v11 + 1;
            }

            while ((&v10[size] - v5) > 0x33F);
          }
        }

        free(v3);
      }

      else
      {
        warn("malloc");
      }
    }
  }
}

void unixpr_n()
{
  v0 = 1;
  while (1)
  {
    size = 0;
    snprintf(__str, 0x23uLL, "net.local.%s.pcblist_n", socktype[v0]);
    size = 0;
    if (sysctlbyname(__str, 0, &size, 0, 0) < 0)
    {
      warn("sysctl: %s");
      return;
    }

    v1 = malloc_type_malloc(size, 0xB18075A0uLL);
    if (!v1)
    {
      warn("malloc %lu bytes");
      return;
    }

    v2 = v1;
    if (sysctlbyname(__str, v1, &size, 0, 0) < 0)
    {
      break;
    }

    if (*v2)
    {
      v3 = ((*v2 - 1) | 7u) + 1;
    }

    else
    {
      v3 = 8;
    }

    if (v3 < size)
    {
      v13 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = (v2 + v3);
      while (1)
      {
        if (*v9 < 9u)
        {
          goto LABEL_40;
        }

        v10 = v9[1];
        if ((v10 & v8) == 0)
        {
          break;
        }

        if (vflag)
        {
          printf("got %d twice\n", v9[1]);
        }

LABEL_36:
        if (*v9)
        {
          v12 = ((*v9 - 1) | 7u) + 1;
        }

        else
        {
          v12 = 8;
        }

        v9 = (v9 + v12);
        if (v9 >= (v2 + size))
        {
          goto LABEL_40;
        }
      }

      v8 |= v10;
      if (v10 <= 3)
      {
        if (v10 == 1)
        {
          v6 = v9;
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_25;
          }

          v5 = v9;
        }
      }

      else
      {
        switch(v10)
        {
          case 4:
            v4 = v9;
            break;
          case 8:
            v13 = v9;
            break;
          case 512:
            v7 = v9;
            break;
          default:
LABEL_25:
            if (v8 && vflag >= 3)
            {
              printf("unexpected kind %d which 0x%x\n", v9[1], v8);
            }

            break;
        }
      }

      if (v8 == 527)
      {
        if (*(v7 + 17) <= v2[1])
        {
          if ((unixdomainpr_n_first & 1) == 0)
          {
            puts("Active LOCAL (UNIX) domain sockets");
            printf("%-16.16s %-6.6s %-6.6s %-6.6s %16.16s %16.16s %16.16s %16.16s", "Address", "Type", "Recv-Q", "Send-Q", "Inode", "Conn", "Refs", "Nextref");
            print_socket_stats_format();
            puts(" Addr");
            unixdomainpr_n_first = 1;
          }

          v11 = *(v7 + 5);
          printf("%16llx %-6.6s %6u %6u %16llx %16llx %16llx %16llx", *(v7 + 1), socktype[*(v6 + 16)], *(v5 + 8), *(v4 + 8), *(v7 + 2), *(v7 + 4), v11, *(v7 + 6));
          print_socket_stats_data(v6, v5, v4, v13);
          if (*(v7 + 76))
          {
            printf(" %.*s", *(v7 + 76) - 2, v7 + 78);
          }

          putchar(10);
        }

        v8 = 0;
      }

      goto LABEL_36;
    }

LABEL_40:
    free(v2);
    if (++v0 == 3)
    {
      return;
    }
  }

  warn("sysctl: %s", __str);
  free(v2);
}

void unixstats()
{
  v3 = 0;
  puts("local (UNIX):");
  v2 = 4;
  if (sysctlbyname("net.local.pcbcount", &v3, &v2, 0, 0) < 0)
  {
    warn("sysctl: net.local.pcbcount");
  }

  else
  {
    v0 = v3;
    v1 = plural(v3);
    printf("\t%u open local socket%s\n", v0, v1);
  }
}

void print_net_api_stats(uint64_t a1, const char *a2)
{
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v100 = 416;
  if (sysctlbyname("net.api_stats", &v101, &v100, 0, 0) < 0)
  {
    warn("sysctl: %s", "net.api_stats");
  }

  else
  {
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v3 = v101 - print_net_api_stats_pnet_api_stats;
    if (v101 == print_net_api_stats_pnet_api_stats && sflag > 1)
    {
      v4 = 0;
    }

    else
    {
      v5 = plural(v101 - print_net_api_stats_pnet_api_stats);
      printf("\t%lld interface filter%s currently attached\n", v3, v5);
      v4 = sflag < 2;
    }

    v6 = *(&v101 + 1) - qword_100033148;
    if (*(&v101 + 1) != qword_100033148 || v4)
    {
      v7 = plural(DWORD2(v101) - qword_100033148);
      printf("\t%lld interface filter%s currently attached by OS\n", v6, v7);
      v4 = sflag < 2;
    }

    v8 = v102 - qword_100033150;
    if (v102 != qword_100033150 || v4)
    {
      v9 = plural(v102 - qword_100033150);
      printf("\t%lld interface filter%s attached since boot\n", v8, v9);
      v4 = sflag < 2;
    }

    v10 = *(&v102 + 1) - qword_100033158;
    if (*(&v102 + 1) != qword_100033158 || v4)
    {
      v11 = plural(DWORD2(v102) - qword_100033158);
      printf("\t%lld interface filter%s attached since boot by OS\n", v10, v11);
      v4 = sflag < 2;
    }

    v12 = v103 - qword_100033160;
    if (v103 != qword_100033160 || v4)
    {
      v13 = plural(v103 - qword_100033160);
      printf("\t%lld IP filter%s currently attached\n", v12, v13);
      v4 = sflag < 2;
    }

    v14 = *(&v103 + 1) - qword_100033168;
    if (*(&v103 + 1) != qword_100033168 || v4)
    {
      v15 = plural(DWORD2(v103) - qword_100033168);
      printf("\t%lld interface filter%s currently attached by OS\n", v14, v15);
      v4 = sflag < 2;
    }

    v16 = v104 - qword_100033170;
    if (v104 != qword_100033170 || v4)
    {
      v17 = plural(v104 - qword_100033170);
      printf("\t%lld IP filter%s attached since boot\n", v16, v17);
      v4 = sflag < 2;
    }

    v18 = *(&v104 + 1) - qword_100033178;
    if (*(&v104 + 1) != qword_100033178 || v4)
    {
      v19 = plural(DWORD2(v104) - qword_100033178);
      printf("\t%lld IP filter%s attached since boot by OS\n", v18, v19);
      v4 = sflag < 2;
    }

    v20 = v105 - qword_100033180;
    if (v105 != qword_100033180 || v4)
    {
      v21 = plural(v105 - qword_100033180);
      printf("\t%lld socket filter%s currently attached\n", v20, v21);
      v4 = sflag < 2;
    }

    v22 = *(&v105 + 1) - qword_100033188;
    if (*(&v105 + 1) != qword_100033188 || v4)
    {
      v23 = plural(DWORD2(v105) - qword_100033188);
      printf("\t%lld socket filter%s currently attached by OS\n", v22, v23);
      v4 = sflag < 2;
    }

    v24 = v106 - qword_100033190;
    if (v106 != qword_100033190 || v4)
    {
      v25 = plural(v106 - qword_100033190);
      printf("\t%lld socket filter%s attached since boot\n", v24, v25);
      v4 = sflag < 2;
    }

    v26 = *(&v106 + 1) - qword_100033198;
    if (*(&v106 + 1) != qword_100033198 || v4)
    {
      v27 = plural(DWORD2(v106) - qword_100033198);
      printf("\t%lld socket filter%s attached since boot by OS\n", v26, v27);
      v4 = sflag < 2;
    }

    v28 = v107 - qword_1000331A0;
    if (v107 != qword_1000331A0 || v4)
    {
      v29 = plural(v107 - qword_1000331A0);
      printf("\t%lld socket%s allocated since boot\n", v28, v29);
      v4 = sflag < 2;
    }

    v30 = *(&v107 + 1) - qword_1000331A8;
    if (*(&v107 + 1) != qword_1000331A8 || v4)
    {
      v31 = plural(DWORD2(v107) - qword_1000331A8);
      printf("\t%lld socket%s allocated in-kernel since boot\n", v30, v31);
      v4 = sflag < 2;
    }

    v32 = v108 - qword_1000331B0;
    if (v108 != qword_1000331B0 || v4)
    {
      v33 = plural(v108 - qword_1000331B0);
      printf("\t%lld socket%s allocated in-kernel by OS\n", v32, v33);
      v4 = sflag < 2;
    }

    v34 = *(&v108 + 1) - qword_1000331B8;
    if (*(&v108 + 1) != qword_1000331B8 || v4)
    {
      v35 = plural(DWORD2(v108) - qword_1000331B8);
      printf("\t%lld socket%s with NECP client UUID since boot\n", v34, v35);
      v4 = sflag < 2;
    }

    v36 = v109 - qword_1000331C0;
    if (v109 != qword_1000331C0 || v4)
    {
      v37 = plural(v109 - qword_1000331C0);
      printf("\t%lld local domain socket%s allocated since boot\n", v36, v37);
      v4 = sflag < 2;
    }

    v38 = *(&v109 + 1) - qword_1000331C8;
    if (*(&v109 + 1) != qword_1000331C8 || v4)
    {
      v39 = plural(DWORD2(v109) - qword_1000331C8);
      printf("\t%lld route domain socket%s allocated since boot\n", v38, v39);
      v4 = sflag < 2;
    }

    v40 = v110 - qword_1000331D0;
    if (v110 != qword_1000331D0 || v4)
    {
      v41 = plural(v110 - qword_1000331D0);
      printf("\t%lld inet domain socket%s allocated since boot\n", v40, v41);
      v4 = sflag < 2;
    }

    v42 = *(&v110 + 1) - qword_1000331D8;
    if (*(&v110 + 1) != qword_1000331D8 || v4)
    {
      v43 = plural(DWORD2(v110) - qword_1000331D8);
      printf("\t%lld inet6 domain socket%s allocated since boot\n", v42, v43);
      v4 = sflag < 2;
    }

    v44 = v111 - qword_1000331E0;
    if (v111 != qword_1000331E0 || v4)
    {
      v45 = plural(v111 - qword_1000331E0);
      printf("\t%lld system domain socket%s allocated since boot\n", v44, v45);
      v4 = sflag < 2;
    }

    v46 = *(&v111 + 1) - qword_1000331E8;
    if (*(&v111 + 1) != qword_1000331E8 || v4)
    {
      v47 = plural(DWORD2(v111) - qword_1000331E8);
      printf("\t%lld multipath domain socket%s allocated since boot\n", v46, v47);
      v4 = sflag < 2;
    }

    v48 = v112 - qword_1000331F0;
    if (v112 != qword_1000331F0 || v4)
    {
      v49 = plural(v112 - qword_1000331F0);
      printf("\t%lld key domain socket%s allocated since boot\n", v48, v49);
      v4 = sflag < 2;
    }

    v50 = *(&v112 + 1) - qword_1000331F8;
    if (*(&v112 + 1) != qword_1000331F8 || v4)
    {
      v51 = plural(DWORD2(v112) - qword_1000331F8);
      printf("\t%lld ndrv domain socket%s allocated since boot\n", v50, v51);
      v4 = sflag < 2;
    }

    v52 = v113 - qword_100033200;
    if (v113 != qword_100033200 || v4)
    {
      v53 = plural(v113 - qword_100033200);
      printf("\t%lld other domains socket%s allocated since boot\n", v52, v53);
      v4 = sflag < 2;
    }

    v54 = *(&v113 + 1) - qword_100033208;
    if (*(&v113 + 1) != qword_100033208 || v4)
    {
      v55 = plural(DWORD2(v113) - qword_100033208);
      printf("\t%lld IPv4 stream socket%s created since boot\n", v54, v55);
      v4 = sflag < 2;
    }

    v56 = v114 - qword_100033210;
    if (v114 != qword_100033210 || v4)
    {
      v57 = plural(v114 - qword_100033210);
      printf("\t%lld IPv4 datagram socket%s created since boot\n", v56, v57);
      v4 = sflag < 2;
    }

    v58 = *(&v114 + 1) - qword_100033218;
    if (*(&v114 + 1) != qword_100033218 || v4)
    {
      v59 = plural(DWORD2(v114) - qword_100033218);
      printf("\t%lld IPv4 datagram socket%s connected\n", v58, v59);
      v4 = sflag < 2;
    }

    v60 = v115 - qword_100033220;
    if (v115 != qword_100033220 || v4)
    {
      v61 = plural(v115 - qword_100033220);
      printf("\t%lld IPv4 DNS socket%s\n", v60, v61);
      v4 = sflag < 2;
    }

    v62 = *(&v115 + 1) - qword_100033228;
    if (*(&v115 + 1) != qword_100033228 || v4)
    {
      v63 = plural(DWORD2(v115) - qword_100033228);
      printf("\t%lld IPv4 datagram socket%s without data\n", v62, v63);
      v4 = sflag < 2;
    }

    v64 = v116 - qword_100033230;
    if (v116 != qword_100033230 || v4)
    {
      v65 = plural(v116 - qword_100033230);
      printf("\t%lld IPv6 stream socket%s created since boot\n", v64, v65);
      v4 = sflag < 2;
    }

    v66 = *(&v116 + 1) - qword_100033238;
    if (*(&v116 + 1) != qword_100033238 || v4)
    {
      v67 = plural(DWORD2(v116) - qword_100033238);
      printf("\t%lld IPv6 datagram socket%s created since boot\n", v66, v67);
      v4 = sflag < 2;
    }

    v68 = v117 - qword_100033240;
    if (v117 != qword_100033240 || v4)
    {
      v69 = plural(v117 - qword_100033240);
      printf("\t%lld IPv6 datagram socket%s connected\n", v68, v69);
      v4 = sflag < 2;
    }

    v70 = *(&v117 + 1) - qword_100033248;
    if (*(&v117 + 1) != qword_100033248 || v4)
    {
      v71 = plural(DWORD2(v117) - qword_100033248);
      printf("\t%lld IPv6 DNS socket%s\n", v70, v71);
      v4 = sflag < 2;
    }

    v72 = v118 - qword_100033250;
    if (v118 != qword_100033250 || v4)
    {
      v73 = plural(v118 - qword_100033250);
      printf("\t%lld IPv6 datagram socket%s without data\n", v72, v73);
      v4 = sflag < 2;
    }

    v74 = *(&v118 + 1) - qword_100033258;
    if (*(&v118 + 1) != qword_100033258 || v4)
    {
      v75 = plural(DWORD2(v118) - qword_100033258);
      printf("\t%lld socket multicast join%s since boot\n", v74, v75);
      v4 = sflag < 2;
    }

    v76 = v119 - qword_100033260;
    if (v119 != qword_100033260 || v4)
    {
      v77 = plural(v119 - qword_100033260);
      printf("\t%lld socket multicast join%s since boot by OS\n", v76, v77);
      v4 = sflag < 2;
    }

    v78 = *(&v121 + 1) - qword_100033288;
    if (*(&v121 + 1) != qword_100033288 || v4)
    {
      v79 = plural(DWORD2(v121) - qword_100033288);
      printf("\t%lld IPv4 stream nexus flow%s added since boot\n", v78, v79);
      v4 = sflag < 2;
    }

    v80 = v122 - qword_100033290;
    if (v122 != qword_100033290 || v4)
    {
      v81 = plural(v122 - qword_100033290);
      printf("\t%lld IPv4 datagram nexus flow%s added since boot\n", v80, v81);
      v4 = sflag < 2;
    }

    v82 = *(&v122 + 1) - qword_100033298;
    if (*(&v122 + 1) != qword_100033298 || v4)
    {
      v83 = plural(DWORD2(v122) - qword_100033298);
      printf("\t%lld IPv6 stream nexus flow%s added since boot\n", v82, v83);
      v4 = sflag < 2;
    }

    v84 = v123 - qword_1000332A0;
    if (v123 != qword_1000332A0 || v4)
    {
      v85 = plural(v123 - qword_1000332A0);
      printf("\t%lld IPv6 datagram nexus flow%s added since boot\n", v84, v85);
      v4 = sflag < 2;
    }

    v86 = *(&v123 + 1) - qword_1000332A8;
    if (*(&v123 + 1) != qword_1000332A8 || v4)
    {
      v87 = plural(DWORD2(v123) - qword_1000332A8);
      printf("\t%lld interface%s currently allocated\n", v86, v87);
      v4 = sflag < 2;
    }

    v88 = v124 - qword_1000332B0;
    if (v124 != qword_1000332B0 || v4)
    {
      v89 = plural(v124 - qword_1000332B0);
      printf("\t%lld interface%s allocated since boot\n", v88, v89);
      v4 = sflag < 2;
    }

    v90 = *(&v124 + 1) - qword_1000332B8;
    if (*(&v124 + 1) != qword_1000332B8 || v4)
    {
      v91 = plural(DWORD2(v124) - qword_1000332B8);
      printf("\t%lld interface%s currently allocated by OS\n", v90, v91);
      v4 = sflag < 2;
    }

    v92 = v125 - qword_1000332C0;
    if (v125 != qword_1000332C0 || v4)
    {
      v93 = plural(v125 - qword_1000332C0);
      printf("\t%lld extended interface%s allocated since boot by OS\n", v92, v93);
      v4 = sflag < 2;
    }

    v94 = *(&v125 + 1) - qword_1000332C8;
    if (*(&v125 + 1) != qword_1000332C8 || v4)
    {
      v95 = plural(DWORD2(v125) - qword_1000332C8);
      printf("\t%lld PF addrule operation%s since boot\n", v94, v95);
      v4 = sflag < 2;
    }

    v96 = v126 - qword_1000332D0;
    if (v126 != qword_1000332D0 || v4)
    {
      v97 = plural(v126 - qword_1000332D0);
      printf("\t%lld PF addrule operation%s since boot by OS\n", v96, v97);
      v4 = sflag < 2;
    }

    v98 = *(&v126 + 1) - qword_1000332D8;
    if (*(&v126 + 1) != qword_1000332D8 || v4)
    {
      v99 = plural(DWORD2(v126) - qword_1000332D8);
      printf("\t%lld vmnet start%s since boot\n", v98, v99);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

void print_if_ports_used_stats(uint64_t a1, const char *a2)
{
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
  v48 = 0;
  if (sysctlbyname("net.link.generic.system.port_used.stats", 0, &v48, 0, 0) < 0)
  {
    warn("sysctl: %s len: %lu", "net.link.generic.system.port_used.stats", v48);
  }

  if (v48 >= 0x161)
  {
    v48 = 352;
  }

  if (sysctlbyname("net.link.generic.system.port_used.stats", &v49, &v48, 0, 0) < 0)
  {
    warn("sysctl: %s len: %lu", "net.link.generic.system.port_used.stats", v48);
  }

  else
  {
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    if (v49 == print_if_ports_used_stats_pif_ports_used_stats && sflag > 1)
    {
      v3 = 0;
    }

    else
    {
      if (v49 == print_if_ports_used_stats_pif_ports_used_stats)
      {
        v4 = &unk_100018CDA;
      }

      else
      {
        v4 = "s";
      }

      printf("\t%llu wakeuuid generation%s\n", v49 - print_if_ports_used_stats_pif_ports_used_stats, v4);
      v3 = sflag < 2;
    }

    if (*(&v49 + 1) != qword_1000332E8 || v3)
    {
      if (*(&v49 + 1) == qword_1000332E8)
      {
        v5 = "y";
      }

      else
      {
        v5 = "ies";
      }

      printf("\t%llu offload port list quer%s with wakeuuid not set\n", *(&v49 + 1) - qword_1000332E8, v5);
      v3 = sflag < 2;
    }

    if (v50 != qword_1000332F0 || v3)
    {
      if (v50 == qword_1000332F0)
      {
        v6 = "y";
      }

      else
      {
        v6 = "ies";
      }

      printf("\t%llu total offload port entr%s created since boot\n", v50 - qword_1000332F0, v6);
      v3 = sflag < 2;
    }

    if (*(&v50 + 1) != qword_1000332F8 || v3)
    {
      if (*(&v50 + 1) == qword_1000332F8)
      {
        v7 = "y";
      }

      else
      {
        v7 = "ies";
      }

      printf("\t%llu current offload port entr%s\n", *(&v50 + 1) - qword_1000332F8, v7);
      v3 = sflag < 2;
    }

    if (v51 != qword_100033300 || v3)
    {
      if (v51 == qword_100033300)
      {
        v8 = "y";
      }

      else
      {
        v8 = "ies";
      }

      printf("\t%llu max offload port entr%s\n", v51 - qword_100033300, v8);
      v3 = sflag < 2;
    }

    if (*(&v51 + 1) != qword_100033308 || v3)
    {
      if (*(&v51 + 1) == qword_100033308)
      {
        v9 = "y";
      }

      else
      {
        v9 = "ies";
      }

      printf("\t%llu duplicate offload port entr%s\n", *(&v51 + 1) - qword_100033308, v9);
      v3 = sflag < 2;
    }

    if (v52 != qword_100033310 || v3)
    {
      if (v52 == qword_100033310)
      {
        v10 = &unk_100018CDA;
      }

      else
      {
        v10 = "es";
      }

      printf("\t%llu total table entry search%s\n", v52 - qword_100033310, v10);
      v3 = sflag < 2;
    }

    if (*(&v52 + 1) != qword_100033318 || v3)
    {
      if (*(&v52 + 1) == qword_100033318)
      {
        v11 = &unk_100018CDA;
      }

      else
      {
        v11 = "es";
      }

      printf("\t%llu max hash table entry search%s\n", *(&v52 + 1) - qword_100033318, v11);
      v3 = sflag < 2;
    }

    if (v53 != qword_100033320 || v3)
    {
      if (v53 == qword_100033320)
      {
        v12 = &unk_100018CDA;
      }

      else
      {
        v12 = "s";
      }

      printf("\t%llu match so wake packet call%s\n", v53 - qword_100033320, v12);
      v3 = sflag < 2;
    }

    if (*(&v53 + 1) != qword_100033328 || v3)
    {
      if (*(&v53 + 1) == qword_100033328)
      {
        v13 = &unk_100018CDA;
      }

      else
      {
        v13 = "s";
      }

      printf("\t%llu match ch wake packet call%s\n", *(&v53 + 1) - qword_100033328, v13);
      v3 = sflag < 2;
    }

    if (v54 != qword_100033330 || v3)
    {
      if (v54 == qword_100033330)
      {
        v14 = &unk_100018CDA;
      }

      else
      {
        v14 = "s";
      }

      printf("\t%llu IPv4 wake packet%s\n", v54 - qword_100033330, v14);
      v3 = sflag < 2;
    }

    if (*(&v54 + 1) != qword_100033338 || v3)
    {
      if (*(&v54 + 1) == qword_100033338)
      {
        v15 = &unk_100018CDA;
      }

      else
      {
        v15 = "s";
      }

      printf("\t%llu IPv6 wake packet%s\n", *(&v54 + 1) - qword_100033338, v15);
      v3 = sflag < 2;
    }

    if (v55 != qword_100033340 || v3)
    {
      if (v55 == qword_100033340)
      {
        v16 = &unk_100018CDA;
      }

      else
      {
        v16 = "s";
      }

      printf("\t%llu TCP wake packet%s\n", v55 - qword_100033340, v16);
      v3 = sflag < 2;
    }

    if (*(&v55 + 1) != qword_100033348 || v3)
    {
      if (*(&v55 + 1) == qword_100033348)
      {
        v17 = &unk_100018CDA;
      }

      else
      {
        v17 = "s";
      }

      printf("\t%llu UDP wake packet%s\n", *(&v55 + 1) - qword_100033348, v17);
      v3 = sflag < 2;
    }

    if (v56 != qword_100033350 || v3)
    {
      if (v56 == qword_100033350)
      {
        v18 = &unk_100018CDA;
      }

      else
      {
        v18 = "s";
      }

      printf("\t%llu ISAKMP NAT traversal wake packet%s\n", v56 - qword_100033350, v18);
      v3 = sflag < 2;
    }

    if (*(&v56 + 1) != qword_100033358 || v3)
    {
      if (*(&v56 + 1) == qword_100033358)
      {
        v19 = &unk_100018CDA;
      }

      else
      {
        v19 = "s";
      }

      printf("\t%llu ESP wake packet%s\n", *(&v56 + 1) - qword_100033358, v19);
      v3 = sflag < 2;
    }

    if (v57 != qword_100033360 || v3)
    {
      if (v57 == qword_100033360)
      {
        v20 = &unk_100018CDA;
      }

      else
      {
        v20 = "s";
      }

      printf("\t%llu bad protocol wake packet%s\n", v57 - qword_100033360, v20);
      v3 = sflag < 2;
    }

    if (*(&v57 + 1) != qword_100033368 || v3)
    {
      if (*(&v57 + 1) == qword_100033368)
      {
        v21 = &unk_100018CDA;
      }

      else
      {
        v21 = "s";
      }

      printf("\t%llu bad family wake packet%s\n", *(&v57 + 1) - qword_100033368, v21);
      v3 = sflag < 2;
    }

    if (v58 != qword_100033370 || v3)
    {
      if (v58 == qword_100033370)
      {
        v22 = &unk_100018CDA;
      }

      else
      {
        v22 = "s";
      }

      printf("\t%llu wake packet event%s\n", v58 - qword_100033370, v22);
      v3 = sflag < 2;
    }

    if (*(&v58 + 1) != qword_100033378 || v3)
    {
      if (*(&v58 + 1) == qword_100033378)
      {
        v23 = &unk_100018CDA;
      }

      else
      {
        v23 = "s";
      }

      printf("\t%llu duplicate wake packet event%s in same wake cycle\n", *(&v58 + 1) - qword_100033378, v23);
      v3 = sflag < 2;
    }

    if (v59 != qword_100033380 || v3)
    {
      if (v59 == qword_100033380)
      {
        v24 = &unk_100018CDA;
      }

      else
      {
        v24 = "s";
      }

      printf("\t%llu wake packet event%s undelivered\n", v59 - qword_100033380, v24);
      v3 = sflag < 2;
    }

    if (*(&v59 + 1) != qword_100033388 || v3)
    {
      if (*(&v59 + 1) == qword_100033388)
      {
        v25 = &unk_100018CDA;
      }

      else
      {
        v25 = "s";
      }

      printf("\t%llu unattributed wake packet event%s\n", *(&v59 + 1) - qword_100033388, v25);
      v3 = sflag < 2;
    }

    if (v60 != qword_100033390 || v3)
    {
      if (v60 == qword_100033390)
      {
        v26 = &unk_100018CDA;
      }

      else
      {
        v26 = "s";
      }

      printf("\t%llu duplicate unattributed wake packet event%s in same wake cycle\n", v60 - qword_100033390, v26);
      v3 = sflag < 2;
    }

    if (*(&v60 + 1) != qword_100033398 || v3)
    {
      if (*(&v60 + 1) == qword_100033398)
      {
        v27 = &unk_100018CDA;
      }

      else
      {
        v27 = "s";
      }

      printf("\t%llu unattributed wake packet event%s undelivered\n", *(&v60 + 1) - qword_100033398, v27);
      v3 = sflag < 2;
    }

    if (v61 != qword_1000333A0 || v3)
    {
      if (v61 == qword_1000333A0)
      {
        v28 = &unk_100018CDA;
      }

      else
      {
        v28 = "s";
      }

      printf("\t%llu unattributed wake packet%s received with null interface\n", v61 - qword_1000333A0, v28);
      v3 = sflag < 2;
    }

    if (*(&v61 + 1) != qword_1000333A8 || v3)
    {
      if (*(&v61 + 1) == qword_1000333A8)
      {
        v29 = &unk_100018CDA;
      }

      else
      {
        v29 = "s";
      }

      printf("\t%llu bad packet%s without wake flag\n", *(&v61 + 1) - qword_1000333A8, v29);
      v3 = sflag < 2;
    }

    if (v62 != qword_1000333B0 || v3)
    {
      if (v62 == qword_1000333B0)
      {
        v30 = &unk_100018CDA;
      }

      else
      {
        v30 = "s";
      }

      printf("\t%llu pure fragment wake packet%s\n", v62 - qword_1000333B0, v30);
      v3 = sflag < 2;
    }

    if (*(&v62 + 1) != qword_1000333B8 || v3)
    {
      if (*(&v62 + 1) == qword_1000333B8)
      {
        v31 = &unk_100018CDA;
      }

      else
      {
        v31 = "s";
      }

      printf("\t%llu packet%s with incomplete TCP header\n", *(&v62 + 1) - qword_1000333B8, v31);
      v3 = sflag < 2;
    }

    if (v63 != qword_1000333C0 || v3)
    {
      if (v63 == qword_1000333C0)
      {
        v32 = &unk_100018CDA;
      }

      else
      {
        v32 = "s";
      }

      printf("\t%llu packet%s with incomplete UDP header\n", v63 - qword_1000333C0, v32);
      v3 = sflag < 2;
    }

    if (*(&v63 + 1) != qword_1000333C8 || v3)
    {
      if (*(&v63 + 1) == qword_1000333C8)
      {
        v33 = "y";
      }

      else
      {
        v33 = "ies";
      }

      printf("\t%llu port entr%s not added with wakeuuid not set\n", *(&v63 + 1) - qword_1000333C8, v33);
      v3 = sflag < 2;
    }

    if (v64 != qword_1000333D0 || v3)
    {
      if (v64 == qword_1000333D0)
      {
        v34 = &unk_100018CDA;
      }

      else
      {
        v34 = "s";
      }

      printf("\t%llu deferred matching of ISAKMP NAT traversal wake packet%s\n", v64 - qword_1000333D0, v34);
      v3 = sflag < 2;
    }

    if (*(&v64 + 1) != qword_1000333D8 || v3)
    {
      if (*(&v64 + 1) == qword_1000333D8)
      {
        v35 = &unk_100018CDA;
      }

      else
      {
        v35 = "s";
      }

      printf("\t%llu spurious no wake from sleep packet event%s\n", *(&v64 + 1) - qword_1000333D8, v35);
      v3 = sflag < 2;
    }

    if (v65 != qword_1000333E0 || v3)
    {
      if (v65 == qword_1000333E0)
      {
        v36 = &unk_100018CDA;
      }

      else
      {
        v36 = "s";
      }

      printf("\t%llu delayed attributed wake packet event%s\n", v65 - qword_1000333E0, v36);
      v3 = sflag < 2;
    }

    if (*(&v65 + 1) != qword_1000333E8 || v3)
    {
      if (*(&v65 + 1) == qword_1000333E8)
      {
        v37 = &unk_100018CDA;
      }

      else
      {
        v37 = "s";
      }

      printf("\t%llu delayed unattributed wake packet event%s\n", *(&v65 + 1) - qword_1000333E8, v37);
      v3 = sflag < 2;
    }

    if (v66 != qword_1000333F0 || v3)
    {
      if (v66 == qword_1000333F0)
      {
        v38 = &unk_100018CDA;
      }

      else
      {
        v38 = "s";
      }

      printf("\t%llu undelivered delayed wake packet event%s\n", v66 - qword_1000333F0, v38);
      v3 = sflag < 2;
    }

    if (*(&v66 + 1) != qword_1000333F8 || v3)
    {
      if (*(&v66 + 1) == qword_1000333F8)
      {
        v39 = &unk_100018CDA;
      }

      else
      {
        v39 = "s";
      }

      printf("\t%llu connection idle wake%s\n", *(&v66 + 1) - qword_1000333F8, v39);
      v3 = sflag < 2;
    }

    if (v67 != qword_100033400 || v3)
    {
      if (v67 == qword_100033400)
      {
        v40 = &unk_100018CDA;
      }

      else
      {
        v40 = "s";
      }

      printf("\t%llu LPW connection idle wake%s\n", v67 - qword_100033400, v40);
      v3 = sflag < 2;
    }

    if (*(&v67 + 1) != qword_100033408 || v3)
    {
      if (*(&v67 + 1) == qword_100033408)
      {
        v41 = &unk_100018CDA;
      }

      else
      {
        v41 = "s";
      }

      printf("\t%llu LPW not idle connection wake%s\n", *(&v67 + 1) - qword_100033408, v41);
      v3 = sflag < 2;
    }

    if (v68 != qword_100033410 || v3)
    {
      if (v68 == qword_100033410)
      {
        v42 = &unk_100018CDA;
      }

      else
      {
        v42 = "s";
      }

      printf("\t%llu LPW to full wake transition%s\n", v68 - qword_100033410, v42);
      v3 = sflag < 2;
    }

    if (*(&v68 + 1) != qword_100033418 || v3)
    {
      if (*(&v68 + 1) == qword_100033418)
      {
        v43 = &unk_100018CDA;
      }

      else
      {
        v43 = "s";
      }

      printf("\t%llu ignored wake packet%s in same wake cycle\n", *(&v68 + 1) - qword_100033418, v43);
      v3 = sflag < 2;
    }

    if (v69 != qword_100033420 || v3)
    {
      if (v69 == qword_100033420)
      {
        v44 = &unk_100018CDA;
      }

      else
      {
        v44 = "s";
      }

      printf("\t%llu delayed wake packet%s\n", v69 - qword_100033420, v44);
      v3 = sflag < 2;
    }

    if (*(&v69 + 1) != qword_100033428 || v3)
    {
      if (*(&v69 + 1) == qword_100033428)
      {
        v45 = &unk_100018CDA;
      }

      else
      {
        v45 = "s";
      }

      printf("\t%llu ignored delayed attributed event%s\n", *(&v69 + 1) - qword_100033428, v45);
      v3 = sflag < 2;
    }

    if (v70 != qword_100033430 || v3)
    {
      if (v70 == qword_100033430)
      {
        v46 = &unk_100018CDA;
      }

      else
      {
        v46 = "s";
      }

      printf("\t%llu ignored delayed unattributed event%s\n", v70 - qword_100033430, v46);
      v3 = sflag < 2;
    }

    if (*(&v70 + 1) != qword_100033438 || v3)
    {
      if (*(&v70 + 1) == qword_100033438)
      {
        v47 = &unk_100018CDA;
      }

      else
      {
        v47 = "s";
      }

      printf("\t%llu wake pkt event notifications%s in vain\n", *(&v70 + 1) - qword_100033438, v47);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

uint64_t print_if_link_heuristics_stats(const char *a1)
{
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 144;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    warn("socket");
  }

  else
  {
    __strlcpy_chk();
    if (ioctl(v2, 0xC020695DuLL, &v52) == -1)
    {
      if (vflag >= 1)
      {
        warn("ioctl SIOCGLINKHEURISTICS");
      }
    }

    else
    {
      *v51 = xmmword_100023240;
      v51[4] = if_nametoindex(a1);
      v51[5] = 6;
      if (sysctl(v51, 6u, &v42, &v41, 0, 0) == -1)
      {
        if (vflag >= 1)
        {
          warn("sysctl IFDATA_LINKHEURISTICS");
        }
      }

      else if (v53 || v42 || v43 || v44 || v45 || v47)
      {
        printf("link heuristics on %s\n", a1);
        if (v53)
        {
          v3 = "true";
        }

        else
        {
          v3 = "false";
        }

        printf("\tenabled: %s\n", v3);
        v4 = v42;
        if (v42 || sflag <= 1)
        {
          v6 = plural(v42);
          printf("\t%llu time%s link heuristics enabled\n", v4, v6);
          v5 = sflag < 2;
        }

        else
        {
          v5 = 0;
        }

        if (*(&v42 + 1) || v5)
        {
          printf("\t%llu.%03llu seconds link heuristics enabled\n", *(&v42 + 1) / 0x3E8uLL, *(&v42 + 1) % 0x3E8uLL);
          v7 = sflag < 2;
        }

        else
        {
          v7 = 0;
        }

        v8 = v43;
        if (v43 || v7)
        {
          v10 = plural(v43);
          printf("\t%llu time%s link congested enabled\n", v8, v10);
          v9 = sflag < 2;
        }

        else
        {
          v9 = 0;
        }

        if (*(&v43 + 1) || v9)
        {
          printf("\t%llu.%03llu seconds link congested\n", *(&v43 + 1) / 0x3E8uLL, *(&v43 + 1) % 0x3E8uLL);
          v11 = sflag < 2;
        }

        else
        {
          v11 = 0;
        }

        v12 = v44;
        if (v44 || v11)
        {
          v14 = plural(v44);
          printf("\t%llu time%s good link quality enabled\n", v12, v14);
          v13 = sflag < 2;
        }

        else
        {
          v13 = 0;
        }

        if (*(&v44 + 1) || v13)
        {
          printf("\t%llu.%03llu seconds of good link quality\n", *(&v44 + 1) / 0x3E8uLL, *(&v44 + 1) % 0x3E8uLL);
          v15 = sflag < 2;
        }

        else
        {
          v15 = 0;
        }

        v16 = v45;
        if (v45 || v15)
        {
          v18 = plural(v45);
          printf("\t%llu time%s poor link quality enabled\n", v16, v18);
          v17 = sflag < 2;
        }

        else
        {
          v17 = 0;
        }

        if (*(&v45 + 1) || v17)
        {
          printf("\t%llu.%03llu seconds of poor link quality\n", *(&v45 + 1) / 0x3E8uLL, *(&v45 + 1) % 0x3E8uLL);
          v19 = sflag < 2;
        }

        else
        {
          v19 = 0;
        }

        v20 = v46;
        if (v46 || v19)
        {
          v22 = plural(v46);
          printf("\t%llu time%s minimally viable link quality enabled\n", v20, v22);
          v21 = sflag < 2;
        }

        else
        {
          v21 = 0;
        }

        if (*(&v46 + 1) || v21)
        {
          printf("\t%llu.%03llu seconds of minimally viable link quality\n", *(&v46 + 1) / 0x3E8uLL, *(&v46 + 1) % 0x3E8uLL);
          v23 = sflag < 2;
        }

        else
        {
          v23 = 0;
        }

        v24 = v47;
        if (v47 || v23)
        {
          v26 = plural(v47);
          printf("\t%llu time%s bad link quality enabled\n", v24, v26);
          v25 = sflag < 2;
        }

        else
        {
          v25 = 0;
        }

        if (*(&v47 + 1) || v25)
        {
          printf("\t%llu.%03llu seconds of bad link quality\n", *(&v47 + 1) / 0x3E8uLL, *(&v47 + 1) % 0x3E8uLL);
          v27 = sflag < 2;
        }

        else
        {
          v27 = 0;
        }

        v28 = v48;
        if (v48 || v27)
        {
          v29 = plural(v48);
          printf("\t%llu stealth TCP packet%s to closed port\n", v28, v29);
          v27 = sflag < 2;
        }

        v30 = *(&v48 + 1);
        if (*(&v48 + 1) || v27)
        {
          v31 = plural(SDWORD2(v48));
          printf("\t%llu TCP packet%s ACK/SYN no prioritized\n", v30, v31);
          v27 = sflag < 2;
        }

        v32 = v49;
        if (v49 || v27)
        {
          v33 = plural(v49);
          printf("\t%llu TCP data retransmission%s compressed\n", v32, v33);
          v27 = sflag < 2;
        }

        v34 = *(&v49 + 1);
        if (*(&v49 + 1) || v27)
        {
          v35 = plural(SDWORD2(v49));
          printf("\t%llu TCP SYN retransmission%s standard backoff\n", v34, v35);
          v27 = sflag < 2;
        }

        v36 = v50;
        if (v50 || v27)
        {
          v37 = plural(v50);
          printf("\t%llu TCP retransmission%s delayed to floor\n", v36, v37);
          v27 = sflag < 2;
        }

        v38 = *(&v50 + 1);
        if (*(&v50 + 1) || v27)
        {
          v39 = plural(SDWORD2(v50));
          printf("\t%llu stealth UDP packet%s to closed port\n", v38, v39);
        }
      }
    }
  }

  return close(v2);
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      for (i = a1; ; ++i)
      {
        v5 = *i;
        if (!*i)
        {
          return a1;
        }

        if (v5 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v5, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}