void bpf_stats(const char *a1)
{
  v21 = 0;
  if (sysctlbyname("debug.bpf_stats", 0, &v21, 0, 0))
  {
    bpf_stats_cold_1();
  }

  if (v21)
  {
    v2 = malloc_type_malloc(2 * v21, 0x1B2D0D4EuLL);
    if (!v2)
    {
      bpf_stats_cold_3();
    }

    v3 = v2;
    if (sysctlbyname("debug.bpf_stats", v2, &v21, 0, 0))
    {
      bpf_stats_cold_1();
    }

    printf("%-9s %-14s %-13s %9s %9s %9s %12s %9s %9s %9s %9s %9s %9s %9s %12s %9s %9s %s\n", "Device", "Netif", "Flags", "Recv", "RDrop", "RMatch", "RSize", "ReadCnt", "Bsize", "Sblen", "Scnt", "Hblen", "Hcnt", "Ccnt", "Csize", "Written", "WDrop", "Command");
    v4 = v21;
    if (v21 >= 136)
    {
      v5 = v3;
      do
      {
        if (!a1 || !strncmp(a1, v5 + 80, 0x10uLL))
        {
          if (*(v5 + 34))
          {
            if (*(v5 + 35))
            {
              v6 = 67;
            }

            else
            {
              v6 = 99;
            }
          }

          else
          {
            v6 = 45;
          }

          v7 = 68;
          if ((*(v5 + 39) & 2) == 0)
          {
            v7 = 45;
          }

          v8 = 50;
          if (!*(v5 + 38))
          {
            v8 = 45;
          }

          v9 = 116;
          if (!*(v5 + 37))
          {
            v9 = 45;
          }

          v10 = 120;
          if (!*(v5 + 36))
          {
            v10 = 45;
          }

          v11 = 104;
          if (!*(v5 + 32))
          {
            v11 = 45;
          }

          v20 = v6;
          v12 = 79;
          if ((*(v5 + 33) & 2) == 0)
          {
            v12 = 45;
          }

          v13 = 73;
          if ((*(v5 + 33) & 1) == 0)
          {
            v13 = 45;
          }

          v19 = v12;
          v14 = 97;
          if (!*(v5 + 31))
          {
            v14 = 45;
          }

          v15 = 102;
          if (*(v5 + 30))
          {
            v15 = 45;
          }

          v18 = v14;
          v16 = 105;
          if (!*(v5 + 29))
          {
            v16 = 45;
          }

          if (*(v5 + 28))
          {
            v17 = 112;
          }

          else
          {
            v17 = 45;
          }

          snprintf(__str, 0x20uLL, "%c%c%c%c%c%c%c%c%c%c%c%c", v17, v16, v15, v18, v13, v19, v11, v20, v10, v9, v8, v7);
          proc_name(v5[6], buffer, 0x20u);
          printf("bpf%-6u %-14s %11s %9llu %9llu %9llu %12llu %9llu %9u %9u %9u %9u %9u %9llu %12llu %9llu %9llu %s.%d\n", v5[1], v5 + 80, __str, *(v5 + 5), *(v5 + 6), *(v5 + 7), *(v5 + 16), *(v5 + 15), v5[5], v5[3], v5[28], v5[4], v5[29], *(v5 + 12), *(v5 + 13), *(v5 + 8), *(v5 + 9), buffer, v5[6]);
          v4 = v21;
        }

        v5 = (v5 + *v5);
      }

      while (v5 + 34 <= (v3 + v4));
    }

    free(v3);
  }
}

uint64_t bpf_help()
{
  puts("Meaning of the letters in the Flags column of the statistics about BPF devices:");
  printf("\t%c\t%s\n", 112, "promiscuous mode enabled");
  printf("\t%c\t%s\n", 105, "immediate mode enabled");
  printf("\t%c\t%s\n", 104, "header complete enabled");
  printf("\t%c\t%s\n", 97, "asynchronous mode enabled");
  printf("\t%c\t%s\n", 73, "see incoming packets");
  printf("\t%c\t%s\n", 79, "see outgoing packets");
  printf("\t%c\t%s\n", 104, "head drop mode");
  printf("\t%c\t%s\n", 67, "compression enabled");
  printf("\t%c\t%s\n", 99, "compression requested");
  printf("\t%c\t%s\n", 120, "use BPF extended header");
  printf("\t%c\t%s\n", 116, "truncation requested");
  printf("\t%c\t%s\n", 50, "pktap header v2");
  printf("\t%c\t%s\n", 66, "batch write enabled");
  printf("\t%c\t%s\n", 68, "divert input mode");
  return printf("\t%c\t%s\n", 45, "option not enabled");
}

uint64_t get_rti_info(unsigned int a1, _BYTE *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    if ((a1 >> v3))
    {
      *(a3 + 8 * v3) = a2;
      v5 = *a2;
      if (v5 <= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = *a2;
      }

      v4 += v6;
      if ((v5 & 3) != 0)
      {
        v7 = (v5 | 3) + 1;
      }

      else
      {
        v7 = *a2;
      }

      *a2;
      if (*a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 4;
      }

      a2 += v8;
    }

    else
    {
      *(a3 + 8 * v3) = 0;
    }

    ++v3;
  }

  while (v3 != 8);
  return v4;
}

void intpr()
{
  v140 = 0;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  memset(__s1, 0, sizeof(__s1));
  if (interval)
  {
    *v174 = 0;
    v173 = 0;
    size[0] = 4;
    *v188 = xmmword_100023220;
    LODWORD(v188[2]) = 1;
    if (sysctl(v188, 5u, &v174[1], size, 0, 0) == 1)
    {
      intpr_cold_6();
    }

    size[0] = 180 * v174[1];
    v0 = malloc_type_malloc(size[0], 0xC0E3ECACuLL);
    if (!v0)
    {
      intpr_cold_1();
    }

    v1 = v0;
    *(&v188[1] + 4) = 3;
    HIDWORD(v188[2]) = 1;
    if (sysctl(v188, 6u, v0, size, 0, 0) == -1)
    {
      intpr_cold_4();
    }

    memset(&v187, 0, sizeof(v187));
    v2 = v174[1];
    v138 = v1;
    if (v174[1])
    {
      v3 = 0;
      v4 = 0;
      v136 = 0;
      v5 = interface;
      do
      {
        if (v5 && !strcmp(v1, v5))
        {
          v6 = malloc_type_calloc(v2, 0xA8uLL, 0x10200409EAC55A6uLL);
          if (!v6)
          {
            intpr_cold_1();
          }

          v4 = v6;
          v136 = if_nametoindex(interface);
          snprintf(v4 + 8, 0x10uLL, "(%s)", v1);
          v5 = interface;
          v2 = v174[1];
        }

        ++v3;
        v1 += 180;
      }

      while (v3 < v2);
    }

    else
    {
      v136 = 0;
      v4 = 0;
    }

    v7 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10200409EAC55A6uLL);
    if (!v7)
    {
      intpr_cold_1();
    }

    v8 = v7;
    v9 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10200409EAC55A6uLL);
    v10 = v136;
    if (!v9)
    {
      intpr_cold_1();
    }

    v11 = v9;
    v187.it_value.tv_sec = interval;
    v187.it_value.tv_usec = 0;
    v187.it_interval.tv_sec = interval;
    v187.it_interval.tv_usec = 0;
    signal(14, catchalarm);
    signalled = 0;
    setitimer(0, &v187, 0);
    v12 = 1;
LABEL_19:
    if (vflag >= 1)
    {
      printf("%9s", " ");
    }

    if (prioflag < 0)
    {
      printf("%17s %14s %16s");
    }

    else
    {
      printf("%39s %39s %36s");
    }

    putchar(10);
    if (vflag >= 1)
    {
      printf("%9s", " ");
    }

    printf("%10s %5s %10s ", "packets", "errs", "bytes");
    if ((prioflag & 0x80000000) == 0)
    {
      printf(" %10s %10s %10s %10s", "tcpkts", "tcbytes", "pvpkts", "pvbytes");
    }

    printf("%10s %5s %10s %5s", "packets", "errs", "bytes", "colls");
    if (dflag)
    {
      printf(" %5.5s", "drops");
    }

    if ((prioflag & 0x80000000) == 0)
    {
      printf(" %10s %10s %10s %10s", "tcpkts", "tcbytes", "pvpkts", "pvbytes");
    }

    if (Fflag)
    {
      printf(" %10s %10s", "fpackets", "fbytes");
    }

    putchar(10);
    fflush(__stdoutp);
    v13 = 0;
    v14 = v12;
    while (1)
    {
      if ((v14 & 1) == 0 && vflag)
      {
        print_time();
      }

      if (!v4)
      {
        LODWORD(v141) = 0;
        size[0] = 4;
        *(&v188[1] + 4) = 0x100000001;
        if (sysctl(v188, 5u, &v141, size, 0, 0) == 1)
        {
          intpr_cold_6();
        }

        v18 = v174[1];
        if (v141 <= v174[1])
        {
          v20 = v138;
        }

        else
        {
          v174[1] = v141;
          size[0] = 180 * v141;
          free(v138);
          v19 = malloc_type_malloc(size[0], 0x8B655348uLL);
          if (!v19)
          {
            intpr_cold_5();
          }

          v20 = v19;
          v18 = v174[1];
        }

        size[0] = 180 * v18;
        *(&v188[1] + 4) = 3;
        HIDWORD(v188[2]) = 1;
        if (sysctl(v188, 6u, v20, size, 0, 0) == -1)
        {
          intpr_cold_4();
        }

        v138 = v20;
        size[0] = 712 * v174[1];
        v21 = malloc_type_malloc(size[0], 0xF91634DBuLL);
        if (!v21)
        {
          intpr_cold_3();
        }

        v22 = v21;
        *(&v188[1] + 4) = 3;
        HIDWORD(v188[2]) = 5;
        if (sysctl(v188, 6u, v21, size, 0, 0) == -1)
        {
          intpr_cold_2();
        }

        v23 = 0uLL;
        *(v11 + 152) = 0u;
        *(v11 + 136) = 0u;
        *(v11 + 120) = 0u;
        *(v11 + 104) = 0u;
        *(v11 + 88) = 0u;
        *(v11 + 72) = 0u;
        *(v11 + 56) = 0u;
        *(v11 + 40) = 0u;
        *(v11 + 24) = 0u;
        if (!v174[1])
        {
          v51 = 0;
          v52 = 0;
          v50 = 0;
          v10 = v136;
          if (v14)
          {
            goto LABEL_83;
          }

LABEL_75:
          printf("%10llu %5llu %10llu ", v50 - v8[3], v52 - v8[4], v51 - v8[9]);
          if ((prioflag & 0x80000000) == 0)
          {
            printf(" %10llu %10llu %10llu %10llu", *(v11 + 11) - v8[11], *(v11 + 12) - v8[12], *(v11 + 15) - v8[15], *(v11 + 16) - v8[16]);
          }

          printf("%10llu %5llu %10llu %5llu", *(v11 + 5) - v8[5], *(v11 + 6) - v8[6], *(v11 + 10) - v8[10], *(v11 + 7) - v8[7]);
          if (dflag)
          {
            printf(" %5llu", *(v11 + 8) - v8[8]);
          }

          if ((prioflag & 0x80000000) == 0)
          {
            printf(" %10llu %10llu %10llu %10llu", *(v11 + 13) - v8[13], *(v11 + 14) - v8[14], *(v11 + 17) - v8[17], *(v11 + 18) - v8[18]);
          }

          if (Fflag)
          {
            printf(" %10llu %10llu", *(v11 + 19) - v8[19], *(v11 + 20) - v8[20]);
          }

LABEL_83:
          v53 = *v11;
          v54 = *(v11 + 2);
          *(v8 + 1) = *(v11 + 1);
          *(v8 + 2) = v54;
          *v8 = v53;
          v55 = *(v11 + 3);
          v56 = *(v11 + 4);
          v57 = *(v11 + 6);
          *(v8 + 5) = *(v11 + 5);
          *(v8 + 6) = v57;
          *(v8 + 3) = v55;
          *(v8 + 4) = v56;
          v58 = *(v11 + 7);
          v59 = *(v11 + 8);
          v60 = *(v11 + 9);
          v8[20] = *(v11 + 20);
          *(v8 + 8) = v59;
          *(v8 + 9) = v60;
          *(v8 + 7) = v58;
          free(v22);
          v61 = netname6_line + 220;
          if (v14)
          {
            goto LABEL_119;
          }

LABEL_118:
          putchar(10);
          goto LABEL_119;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = prioflag;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 712 * v174[1];
        v36 = v20 + 116;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v10 = v136;
        while (2)
        {
          v40 = *(v36 - 40);
          v41 = *(v36 - 24);
          v42 = *v36;
          v43 = *(v36 - 1);
          v44 = *(v36 - 21);
          if (v32 < 0)
          {
            goto LABEL_68;
          }

          v45 = &v22[712 * v29];
          if (v32 > 699)
          {
            if (v32 == 700)
            {
              v46 = v45 + 64;
              v47 = 72;
              v48 = 80;
              v49 = 88;
            }

            else
            {
              if (v32 != 800)
              {
                goto LABEL_67;
              }

              v46 = v45 + 96;
              v47 = 104;
              v48 = 112;
              v49 = 120;
            }
          }

          else
          {
            if (v32)
            {
              if (v32 == 200)
              {
                v46 = v45 + 32;
                v47 = 40;
                v48 = 48;
                v49 = 56;
                break;
              }

LABEL_67:
              v38 = vaddq_s64(*&v22[v24 + 128], v38);
              *(v11 + 120) = v38;
              v39 = vaddq_s64(*&v22[v24 + 144], v39);
              *(v11 + 136) = v39;
LABEL_68:
              v23 = vaddq_s64(v40, v23);
              v33 = vaddq_s64(v41, v33);
              v34 = vaddq_s64(v42, v34);
              v31 += v43;
              v30 += v44;
              v37 = vaddq_s64(*&v22[v24 + 176], v37);
              ++v29;
              v24 += 712;
              v36 = (v36 + 180);
              if (v35 == v24)
              {
                *(v11 + 24) = v23;
                *(v11 + 40) = v33;
                *(v11 + 72) = v34;
                *(v11 + 7) = v31;
                *(v11 + 8) = v30;
                *(v11 + 152) = v37;
                v50 = v23.i64[0];
                v51 = v34.i64[0];
                v52 = v23.i64[1];
                if (v14)
                {
                  goto LABEL_83;
                }

                goto LABEL_75;
              }

              continue;
            }

            v46 = &v22[v24];
            v47 = 8;
            v48 = 16;
            v49 = 24;
          }

          break;
        }

        v28 += *v46;
        *(v11 + 11) = v28;
        v27 += *&v22[v47 + v24];
        *(v11 + 12) = v27;
        v26 += *&v22[v48 + v24];
        *(v11 + 13) = v26;
        v25 += *&v22[v49 + v24];
        *(v11 + 14) = v25;
        goto LABEL_67;
      }

      v186 = 0;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      v182 = 0u;
      v183 = 0u;
      __str = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      size[0] = 180;
      HIDWORD(v188[1]) = 2;
      v188[2] = v10 | 0x100000000;
      if (sysctl(v188, 6u, &__str, size, 0, 0) == -1)
      {
        err(1, "sysctl IFDATA_GENERAL %d");
      }

      size[0] = 712;
      HIDWORD(v188[1]) = 2;
      v188[2] = v10 | 0x500000000;
      if (sysctl(v188, 6u, &v141, size, 0, 0) == -1)
      {
        err(1, "sysctl IFDATA_SUPPLEMENTAL %d");
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

LABEL_104:
      *(v4 + 24) = *(v185 + 12);
      *(v4 + 9) = *(&v185[3] + 4);
      *(v4 + 40) = *(&v185[1] + 12);
      *(v4 + 10) = *(&v185[3] + 12);
      v65 = v183;
      *(v4 + 7) = *(&v185[2] + 12);
      *(v4 + 8) = v65;
      if (prioflag > 699)
      {
        v61 = &netname6_line[220];
        if (prioflag == 700)
        {
          v66 = v145;
          v67 = &v145 + 8;
          v69 = &v146 + 8;
          v68 = &v146;
          goto LABEL_115;
        }

        if (prioflag == 800)
        {
          v66 = v147;
          v67 = &v147 + 8;
          v69 = &v148 + 8;
          v68 = &v148;
          goto LABEL_115;
        }
      }

      else
      {
        v61 = netname6_line + 220;
        if (!prioflag)
        {
          v66 = v141;
          v67 = &v141 + 8;
          v69 = &v142 + 8;
          v68 = &v142;
          goto LABEL_115;
        }

        if (prioflag == 200)
        {
          v66 = v143;
          v67 = &v143 + 8;
          v69 = &v144 + 8;
          v68 = &v144;
LABEL_115:
          *(v4 + 11) = v66;
          *(v4 + 12) = *v67;
          *(v4 + 13) = *v68;
          *(v4 + 14) = *v69;
LABEL_116:
          *(v4 + 120) = v149;
          *(v4 + 136) = v150;
          goto LABEL_117;
        }
      }

      if ((prioflag & 0x80000000) == 0)
      {
        goto LABEL_116;
      }

LABEL_117:
      *(v4 + 152) = v152;
      if ((v14 & 1) == 0)
      {
        goto LABEL_118;
      }

LABEL_119:
      fflush(__stdoutp);
      v174[0] = 0x2000;
      sigprocmask(1, v174, &v173);
      if (!v61[1092])
      {
        v174[0] = 0;
        sigsuspend(v174);
      }

      sigprocmask(3, &v173, 0);
      v12 = 0;
      v14 = 0;
      v61[1092] = 0;
      if (++v13 == 21)
      {
        goto LABEL_19;
      }
    }

    printf("%10llu %5llu %10llu ", *(v185 + 12) - *(v4 + 3), *(&v185[1] + 4) - *(v4 + 4), *(&v185[3] + 4) - *(v4 + 9));
    v15 = prioflag;
    if (prioflag > 699)
    {
      if (prioflag == 700)
      {
        v16 = v145;
        v17 = &v145 + 8;
      }

      else
      {
        if (prioflag != 800)
        {
          goto LABEL_88;
        }

        v16 = v147;
        v17 = &v147 + 8;
      }
    }

    else if (prioflag)
    {
      if (prioflag != 200)
      {
        goto LABEL_88;
      }

      v16 = v143;
      v17 = &v143 + 8;
    }

    else
    {
      v16 = v141;
      v17 = &v141 + 8;
    }

    printf("%10llu %10llu ", v16 - *(v4 + 11), *v17 - *(v4 + 12));
    v15 = prioflag;
LABEL_88:
    if ((v15 & 0x80000000) == 0)
    {
      printf("%10llu %10llu ", v149 - *(v4 + 15), *(&v149 + 1) - *(v4 + 16));
    }

    printf("%10llu %5llu %10llu %5llu", *(&v185[1] + 12) - *(v4 + 5), *(&v185[2] + 4) - *(v4 + 6), *(&v185[3] + 12) - *(v4 + 10), *(&v185[2] + 12) - *(v4 + 7));
    if (dflag)
    {
      printf(" %5llu", v183 - *(v4 + 8));
    }

    v62 = prioflag;
    if (prioflag > 699)
    {
      v63 = &v146 + 8;
      v64 = &v146;
      if (prioflag != 700)
      {
        if (prioflag != 800)
        {
LABEL_100:
          if ((v62 & 0x80000000) == 0)
          {
            printf("%10llu %10llu ", v150 - *(v4 + 17), *(&v150 + 1) - *(v4 + 18));
          }

          if (Fflag)
          {
            printf("%10llu %10llu", v152 - *(v4 + 19), *(&v152 + 1) - *(v4 + 20));
          }

          goto LABEL_104;
        }

        v63 = &v148 + 8;
        v64 = &v148;
      }
    }

    else
    {
      v63 = &v142 + 8;
      v64 = &v142;
      if (prioflag)
      {
        v63 = &v144 + 8;
        v64 = &v144;
        if (prioflag != 200)
        {
          goto LABEL_100;
        }
      }
    }

    printf(" %10llu %10llu", *v64 - *(v4 + 13), *v63 - *(v4 + 14));
    v62 = prioflag;
    goto LABEL_100;
  }

  if (interface)
  {
    v134 = if_nametoindex(interface);
  }

  else
  {
    v134 = 0;
  }

  *size = xmmword_100023230;
  size[2] = 6;
  if ((sysctl(size, 6u, 0, &v140, 0, 0) & 0x80000000) == 0)
  {
    v70 = malloc_type_malloc(v140, 0x5D43A5ACuLL);
    if (!v70)
    {
      puts("malloc failed");
      exit(1);
    }

    v71 = v70;
    if (sysctl(size, 6u, v70, &v140, 0, 0) < 0)
    {
      v122 = v71;
    }

    else
    {
      print_intpr_header(1);
      if (v140 >= 1)
      {
        v132 = 0;
        v133 = 0;
        v130 = 0;
        v131 = 0;
        v128 = 0;
        v129 = 0;
        v123 = 0;
        v127 = 0;
        v125 = 0;
        v72 = v71;
        v73 = v71 + v140;
        while (1)
        {
          v74 = v72;
          bzero(&v141, 0x2C8uLL);
          v72 = (v72 + *v72);
          v75 = *(v74 + 3);
          if (v75 != 12)
          {
            break;
          }

          if (interface && v134 != v74[6])
          {
            goto LABEL_295;
          }

          get_rti_info(*(v74 + 1), v74 + 20, &v176);
          v80 = 0;
          v81 = 0;
          v137 = 0u;
          *v139 = 0u;
          v82 = *(&v178 + 1);
LABEL_155:
          if (strcmp(__s1, &v187))
          {
            if (sflag)
            {
              v83 = LOBYTE(__s1[0]) == 0;
            }

            else
            {
              v83 = 1;
            }

            if (!v83)
            {
              printprotoifstats(__s1);
              print_intpr_header(0);
            }

            strncpy(__s1, &v187, 0x20uLL);
          }

          if (lflag)
          {
            printf("%-14.14s %-5u ");
          }

          else
          {
            printf("%-10.10s %-5u ");
          }

          if (v82)
          {
            v84 = v82[1];
            if (v84 > 0x11)
            {
              if (v84 == 18)
              {
                v124 = v80;
                v100 = &v82[v82[5] + 8];
                v101 = v82[6];
                snprintf(&__str, 0xAuLL, "<Link#%d>", *(v82 + 1));
                if (lflag)
                {
                  v102 = printf("%-39.39s ");
                }

                else
                {
                  v102 = printf("%-11.11s ");
                }

                v95 = v102;
LABEL_208:
                v93 = v81;
                if (v101 >= 1)
                {
                  v103 = v101 + 1;
                  do
                  {
                    v105 = *v100++;
                    v104 = v105;
                    if (v103 == 2)
                    {
                      v106 = 32;
                    }

                    else
                    {
                      v106 = 58;
                    }

                    v95 += printf("%02x%c", v104, v106);
                    --v103;
                  }

                  while (v103 > 1);
                }

                if (lflag)
                {
                  v107 = 80;
                }

                else
                {
                  v107 = 30;
                }

                v108 = v107 - v95;
                if (v108 >= 1)
                {
                  v109 = v108 + 1;
                  do
                  {
                    putchar(32);
                    --v109;
                  }

                  while (v109 > 1);
                }

                printf("%*llu", 8, v131);
                putchar(32);
                printf("%*llu", 5, v123);
                putchar(32);
                if (prioflag < 0)
                {
                  if (!bflag)
                  {
                    printf("%*llu", 8, v133);
                    putchar(32);
                    v110 = 0;
                    goto LABEL_238;
                  }

                  v94 = 0;
LABEL_231:
                  printf("%*llu", 10, v129);
                  putchar(32);
                  if ((prioflag & 0x80000000) == 0)
                  {
                    printf("%*llu", 8, v139[1]);
                    putchar(32);
                    printf("%*llu", 8, v93);
                    putchar(32);
                  }

                  goto LABEL_233;
                }

                v94 = 0;
                goto LABEL_222;
              }

              if (v84 != 30)
              {
LABEL_198:
                v95 = printf("(%d)", v82[1]);
                v96 = *v82;
                v97 = 3;
                if (v96 < 3)
                {
                  v97 = *v82;
                }

                while (v96 >= 4)
                {
                  v98 = v96 - 1;
                  if (v82[--v96])
                  {
                    v97 = v98 + 1;
                    break;
                  }
                }

                v124 = v80;
                v100 = v82 + 2;
                v101 = v97 - 2;
                goto LABEL_208;
              }

              if (lflag)
              {
                v91 = "%-39.39s ";
              }

              else
              {
                v91 = "%-11.11s ";
              }

              v92 = netname6(v82, v177);
              printf(v91, v92);
              if (lflag)
              {
                v88 = "%-39.39s ";
              }

              else
              {
                v88 = "%-17.17s ";
              }

              v89 = inet_ntop(30, v82 + 8, ntop_buf, 0x2Eu);
              goto LABEL_192;
            }

            if (v82[1])
            {
              if (v84 != 2)
              {
                goto LABEL_198;
              }

              __str = 0uLL;
              v85 = *v177;
              __memcpy_chk();
              if (lflag)
              {
                v86 = "%-39.39s ";
              }

              else
              {
                v86 = "%-13.13s ";
              }

              v87 = netname(DWORD1(__str) & *(v82 + 1), bswap32(DWORD1(__str)));
              printf(v86, v87);
              if (lflag)
              {
                v88 = "%-39.39s ";
              }

              else
              {
                v88 = "%-15.15s ";
              }

              v89 = routename(*(v82 + 1));
LABEL_192:
              printf(v88, v89);
              printf("%*llu", 8, v131);
              v90 = 0;
              goto LABEL_193;
            }
          }

          if (lflag)
          {
            printf("%-39.39s ");
          }

          else
          {
            printf("%-13.13s ");
          }

          if (lflag)
          {
            printf("%-39.39s ");
          }

          else
          {
            printf("%-15.15s ");
          }

          printf("%*s", 8, "-");
          v90 = 1;
LABEL_193:
          putchar(32);
          printf("%*s", 5, "-");
          putchar(32);
          if (prioflag < 0)
          {
            v93 = v81;
            v94 = 1;
            goto LABEL_224;
          }

          if ((v90 & 1) == 0)
          {
            v124 = v80;
            v93 = v81;
            v94 = 1;
LABEL_222:
            printf("%*llu", 8, v139[0]);
            putchar(32);
            printf("%*llu", 8, v124);
            v90 = 0;
            goto LABEL_223;
          }

          v93 = v81;
          printf("%*s", 8, "-");
          putchar(32);
          printf("%*s", 8, "-");
          v90 = 1;
          v94 = 1;
LABEL_223:
          putchar(32);
LABEL_224:
          if (bflag)
          {
            if (v90)
            {
              printf("%*s", 10, "-");
              putchar(32);
              if ((prioflag & 0x80000000) == 0)
              {
                printf("%*s", 8, "-");
                putchar(32);
                printf("%*s", 8, "-");
                putchar(32);
              }

LABEL_229:
              printf("%*s", 8, "-");
              putchar(32);
              v110 = 1;
              if (v94)
              {
                goto LABEL_234;
              }

              goto LABEL_238;
            }

            goto LABEL_231;
          }

          if (v90)
          {
            goto LABEL_229;
          }

LABEL_233:
          printf("%*llu", 8, v133);
          putchar(32);
          v110 = 0;
          if (v94)
          {
LABEL_234:
            printf("%*s", 5, "-");
            v111 = 1;
            goto LABEL_239;
          }

LABEL_238:
          printf("%*llu", 5, v132);
          v111 = 0;
LABEL_239:
          putchar(32);
          if ((prioflag & 0x80000000) == 0)
          {
            if (v110)
            {
              printf("%*s", 8, "-");
              putchar(32);
              printf("%*s");
            }

            else
            {
              printf("%*llu", 8, v137);
              putchar(32);
              printf("%*llu");
            }

            putchar(32);
          }

          if (bflag)
          {
            if (v110)
            {
              printf("%*s", 10, "-");
              putchar(32);
              if (prioflag < 0)
              {
                goto LABEL_251;
              }

              printf("%*s", 8, "-");
              putchar(32);
              printf("%*s");
            }

            else
            {
              printf("%*llu", 10, v128);
              putchar(32);
              if (prioflag < 0)
              {
                goto LABEL_251;
              }

              printf("%*llu", 8, *(&v137 + 1));
              putchar(32);
              printf("%*llu");
            }

            putchar(32);
          }

LABEL_251:
          if (v111)
          {
            printf("%*s", 5, "-");
            if (tflag)
            {
              putchar(32);
              printf("%*s", 3, "-");
            }

            if (dflag)
            {
              putchar(32);
              printf("%*s");
            }
          }

          else
          {
            printf("%*llu", 5, v130);
            if (tflag)
            {
              putchar(32);
              printf("%*d", 3, v127);
            }

            if (dflag)
            {
              putchar(32);
              printf("%*d");
            }
          }

          if (Fflag)
          {
            putchar(32);
            if (v110)
            {
              printf("%*s", 8, "-");
              if (bflag)
              {
                putchar(32);
                printf("%*s");
              }
            }

            else
            {
              printf("%*llu", 8, v125);
              if (bflag)
              {
                putchar(32);
                printf("%*llu");
              }
            }
          }

          putchar(10);
          if (aflag && v72 < v73)
          {
            v112 = v82[1];
            v113 = v72;
            do
            {
              v183 = 0u;
              v184 = 0u;
              __str = 0u;
              v182 = 0u;
              v114 = *v113;
              v115 = *(v113 + 3);
              if (v115 != 19)
              {
                if (v115 == 18)
                {
                  break;
                }

                goto LABEL_294;
              }

              get_rti_info(*(v113 + 1), v113 + 20, &__str);
              if (*(*(&v183 + 1) + 1) == v112)
              {
                if (v112 == 30)
                {
                  memset(v188, 0, 28);
                  v118 = *(*(&v183 + 1) + 12);
                  *v188 = **(&v183 + 1);
                  *(&v188[1] + 4) = v118;
                  if (LOBYTE(v188[1]) == 255)
                  {
                    v119 = BYTE1(v188[1]) & 0xF;
                    if (v119 != 1 && ((BYTE1(v188[1]) & 0xF0) == 0x30 || v119 != 2))
                    {
                      goto LABEL_293;
                    }
                  }

                  else if (LOBYTE(v188[1]) != 254 || (BYTE1(v188[1]) & 0xC0) != 0x80)
                  {
                    goto LABEL_293;
                  }

                  LODWORD(v188[3]) = bswap32(WORD1(v188[1])) >> 16;
                  WORD1(v188[1]) = 0;
LABEL_293:
                  inet_ntop(30, &v188[1], ntop_buf, 0x2Eu);
                  v120 = *(v113 + 4);
                  printf("%23s %-19.19s(refs: %d)\n");
                  goto LABEL_294;
                }

                if (v112 == 18)
                {
                  v116 = *(*(&v183 + 1) + 4);
                  v117 = v116 == 15 || v116 == 6;
                  if (!v117 || !ether_ntoa((*(&v183 + 1) + *(*(&v183 + 1) + 5) + 8)))
                  {
                    goto LABEL_294;
                  }
                }

                else if (v112 != 2 || !routename(*(*(&v183 + 1) + 4)))
                {
                  goto LABEL_294;
                }

                printf("%23s %s\n");
              }

LABEL_294:
              v113 = (v113 + v114);
            }

            while (v113 < v73);
          }

LABEL_295:
          if (v72 >= v73)
          {
            goto LABEL_296;
          }
        }

        if (v75 != 18)
        {
          goto LABEL_295;
        }

        v188[0] = 712;
        if (interface)
        {
          if (v134 != v74[6])
          {
            goto LABEL_295;
          }
        }

        *(v74 + 165);
        __memcpy_chk();
        v76 = *(v74 + 165);
        if (v76 >= 0x1F)
        {
          v76 = 31;
        }

        *(&v187.it_interval.tv_sec + v76) = 0;
        v77 = index(&v187, 0);
        if ((v74[4] & 1) == 0)
        {
          *v77++ = 42;
        }

        *v77 = 0;
        v132 = *(v74 + 10);
        v133 = *(v74 + 9);
        v123 = *(v74 + 8);
        v128 = *(v74 + 13);
        v129 = *(v74 + 12);
        v130 = *(v74 + 11);
        v131 = *(v74 + 7);
        v127 = *(v74 + 7);
        v126 = *(v74 + 6);
        v135 = *(v74 + 10);
        __str = xmmword_100023240;
        LODWORD(v182) = v74[6];
        DWORD1(v182) = 5;
        if (sysctl(&__str, 6u, &v141, v188, 0, 0) == -1)
        {
          intpr_cold_12();
        }

        if (prioflag < 0)
        {
          v80 = 0;
          v81 = 0;
          v137 = 0u;
          *v139 = 0u;
LABEL_154:
          v125 = v152;
          get_rti_info(*(v74 + 1), v74 + 160, &v176);
          v82 = v178;
          goto LABEL_155;
        }

        *v139 = 0u;
        if (prioflag > 699)
        {
          if (prioflag == 700)
          {
            v78 = v145;
            v79 = v146;
            goto LABEL_152;
          }

          v137 = 0uLL;
          if (prioflag == 800)
          {
            v78 = v147;
            v79 = v148;
            goto LABEL_152;
          }
        }

        else
        {
          if (!prioflag)
          {
            v78 = v141;
            v79 = v142;
            goto LABEL_152;
          }

          v137 = 0uLL;
          if (prioflag == 200)
          {
            v78 = v143;
            v79 = v144;
LABEL_152:
            v137 = v79;
            *v139 = v78;
          }
        }

        v81 = *(&v149 + 1);
        v80 = v149;
        goto LABEL_154;
      }

LABEL_296:
      if (sflag)
      {
        v121 = LOBYTE(__s1[0]) == 0;
      }

      else
      {
        v121 = 1;
      }

      if (!v121)
      {
        printprotoifstats(__s1);
      }

      v122 = v71;
    }

    free(v122);
  }
}

uint64_t print_intpr_header(char a1)
{
  if ((a1 & 1) == 0)
  {
    putchar(10);
  }

  if (lflag)
  {
    printf("%-14.14s %-5.5s %-39.39s %-39.39s %8.8s %5.5s");
  }

  else
  {
    printf("%-10.10s %-5.5s %-13.13s %-15.15s %8.8s %5.5s");
  }

  if ((prioflag & 0x80000000) == 0)
  {
    printf(" %8.8s %8.8s", "Itcpkts", "Ipvpkts");
  }

  if (bflag)
  {
    printf(" %10.10s", "Ibytes");
    if ((prioflag & 0x80000000) == 0)
    {
      printf(" %8.8s %8.8s", "Itcbytes", "Ipvbytes");
    }
  }

  printf(" %8.8s %5.5s", "Opkts", "Oerrs");
  if ((prioflag & 0x80000000) == 0)
  {
    printf(" %8.8s %8.8s", "Otcpkts", "Opvpkts");
  }

  if (bflag)
  {
    printf(" %10.10s", "Obytes");
    if ((prioflag & 0x80000000) == 0)
    {
      printf(" %8.8s %8.8s", "Otcbytes", "Opvbytes");
    }
  }

  printf(" %5s", "Coll");
  if (tflag)
  {
    printf(" %s", "Time");
  }

  if (dflag)
  {
    printf(" %s", "Drop");
  }

  if (Fflag)
  {
    printf(" %8.8s", "Fpkts");
    if (bflag)
    {
      printf(" %10.10s", "Fbytes");
    }
  }

  return putchar(10);
}

void intervalpr(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v9.it_value.tv_usec = 0;
  *v8 = 0;
  *&v9.it_interval.tv_usec = 0;
  v9.it_value.tv_sec = interval;
  v9.it_interval.tv_sec = interval;
  signal(14, catchalarm);
  signalled = 0;
  setitimer(0, &v9, 0);
  while (1)
  {
    a1(a2, a3, a4);
    fflush(__stdoutp);
    v8[1] = 0x2000;
    sigprocmask(1, &v8[1], v8);
    if (!signalled)
    {
      v8[1] = 0;
      sigsuspend(&v8[1]);
    }

    sigprocmask(3, v8, 0);
    signalled = 0;
  }
}

void intpr_ri()
{
  if (interface)
  {
    v0 = if_nametoindex(interface);
    if (!v0)
    {
      printf("interface name is not valid: %s\n", interface);
      goto LABEL_85;
    }
  }

  else
  {
    v0 = 0;
  }

  size = 0;
  *v41 = xmmword_100023230;
  v42 = 6;
  if ((sysctl(v41, 6u, 0, &size, 0, 0) & 0x80000000) == 0)
  {
    v1 = malloc_type_malloc(size, 0xD268354FuLL);
    if (!v1)
    {
      puts("malloc failed");
LABEL_85:
      exit(1);
    }

    v2 = v1;
    if (sysctl(v41, 6u, v1, &size, 0, 0) < 0)
    {
      v27 = v2;
    }

    else
    {
      v33 = v2;
      printf("%-6s %-17s %14.14s %-9.9s %4s %4s", "Proto", "Linklayer Address", "Netif", "Expire", "Refs", "Prbs");
      if (xflag)
      {
        printf(" %7s %7s %7s", "RSSI", "LQM", "NPM");
      }

      putchar(10);
      if (size >= 1)
      {
        v3 = v2;
        v4 = v2 + size;
        v32 = v0;
        v31 = v2 + size;
        while (1)
        {
          v5 = *v3;
          if (*(v3 + 3) != 18)
          {
            goto LABEL_74;
          }

          v6 = v3[6];
          v7 = !interface || v0 == v6;
          if (!v7)
          {
            goto LABEL_74;
          }

          v45 = 0;
          v46 = 0;
          *v44 = 0;
          v40 = 6;
          if (sysctlnametomib("net.link.generic.system.llreach_info", v44, &v40) == -1)
          {
            perror("sysctlnametomib");
            goto LABEL_74;
          }

          v36 = v5;
          v39 = 0;
          v40 = 6;
          HIDWORD(v46) = v6;
          if (sysctl(v44, 6u, 0, &v39, 0, 0) == -1)
          {
            break;
          }

          v8 = 0;
          while (1)
          {
            v9 = malloc_type_malloc(v39, 0x24B5C0F0uLL);
            if (!v9)
            {
              v12 = "malloc";
              goto LABEL_78;
            }

            v10 = v9;
            if (sysctl(v44, v40, v9, &v39, 0, 0) != -1)
            {
              break;
            }

            if (*__error() != 12 || v8 >= 4)
            {
              perror("sysctl");
              goto LABEL_72;
            }

            ++v8;
            free(v10);
            if (sysctl(v44, v40, 0, &v39, 0, 0) == -1)
            {
              goto LABEL_28;
            }
          }

          v38.tv_sec = 0;
          *&v38.tv_usec = 0;
          v13 = v39;
          gettimeofday(&v38, 0);
          if (!if_indextoname(v6, v43))
          {
            strcpy(v43, "?");
          }

          v14 = v13;
          if (v13 >= 0x78)
          {
            v15 = v13 / 0x78;
            v34 = v13 / 0x78;
            v35 = v13;
            v16 = v10;
            while (1)
            {
              v17 = v16[11];
              v18 = ether_ntoa(v16 + 4);
              printf("0x%-4x %-17s %14.14s ", v17, v18, v43);
              v19 = *(v16 + 1);
              v20 = v19 - v38.tv_sec;
              if (v19 > v38.tv_sec)
              {
                break;
              }

              v7 = v19 == 0;
              v22 = "expired";
              if (v7)
              {
                v22 = "permanent";
              }

LABEL_43:
              printf("%-9.9s", v22);
              printf(" %4d", *v16);
              if (*(v16 + 4))
              {
                printf(" %4d", *(v16 + 4));
              }

              if (!xflag)
              {
                goto LABEL_66;
              }

              if (!*(v16 + 4))
              {
                printf(" %-4.4s", "none");
              }

              if (*(v16 + 22) == 0x80000000)
              {
                printf(" %-7.7s");
              }

              else
              {
                v28 = *(v16 + 22);
                printf(" %7d");
              }

              v25 = *(v16 + 23);
              if (v25 > 49)
              {
                if (v25 != 50 && v25 != 100)
                {
LABEL_56:
                  v29 = *(v16 + 23);
                  printf(" %7d");
                  goto LABEL_58;
                }
              }

              else if (v25 < 0xFFFFFFFE)
              {
                goto LABEL_56;
              }

              printf(" %-7.7s");
LABEL_58:
              v26 = *(v16 + 24);
              if (v26 > 69)
              {
                if (v26 == 70 || v26 == 100)
                {
LABEL_65:
                  printf(" %-7.7s");
                  goto LABEL_66;
                }
              }

              else if (v26 == -1 || v26 == 30)
              {
                goto LABEL_65;
              }

              v30 = *(v16 + 24);
              printf(" %7d");
LABEL_66:
              putchar(10);
              v16 += 60;
              if (!--v15)
              {
                v14 = v35 - 120 * v34;
                v0 = v32;
                v4 = v31;
                goto LABEL_70;
              }
            }

            if (v20 / 86400)
            {
              v21 = &sec2str_result[snprintf(sec2str_result, 0x100uLL, "%dd", v20 / 86400)];
              goto LABEL_40;
            }

            v21 = sec2str_result;
            if (v20 / 3600 % 24)
            {
LABEL_40:
              v23 = &v21[snprintf(v21, sec2str_result - v21 + 256, "%dh", v20 / 3600 % 24)];
              goto LABEL_41;
            }

            v23 = sec2str_result;
            v24 = sec2str_result;
            if (v20 / 60 % 60)
            {
LABEL_41:
              v24 = &v23[snprintf(v23, sec2str_result - v23 + 256, "%dm", v20 / 60 % 60)];
            }

            snprintf(v24, sec2str_result - v24 + 256, "%ds", v20 % 60);
            v22 = sec2str_result;
            goto LABEL_43;
          }

LABEL_70:
          if (v14)
          {
            fprintf(__stderrp, "warning: %u trailing bytes from %s\n", v14, "net.link.generic.system.llreach_info");
          }

LABEL_72:
          free(v10);
LABEL_73:
          v5 = v36;
LABEL_74:
          v3 = (v3 + v5);
          if (v3 >= v4)
          {
            goto LABEL_80;
          }
        }

LABEL_28:
        v12 = "sysctl net.link.generic.system.llreach_info";
LABEL_78:
        perror(v12);
        goto LABEL_73;
      }

LABEL_80:
      v27 = v33;
    }

    free(v27);
  }
}

uint64_t aqstatpr()
{
  memset(&v34, 0, sizeof(v34));
  v32 = 0;
  if ((cq - 10) <= 0xFFFFFFF4)
  {
    return fprintf(__stderrp, "Invalid classq index (range is 0-%d)\n", 9);
  }

  v39 = 0;
  v37 = 0uLL;
  v38 = 0uLL;
  *v33 = 0;
  v1 = malloc_type_malloc(0x280uLL, 0x10000408AA6F2A3uLL);
  if (!v1)
  {
    fwrite("Unable to allocate memory\n", 0x1AuLL, 1uLL, __stderrp);
    v2 = -1;
    goto LABEL_77;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v28 = "Warning: socket(AF_INET)";
LABEL_76:
    perror(v28);
    goto LABEL_77;
  }

  if (getifaddrs(&v32))
  {
    v28 = "getifaddrs";
    goto LABEL_76;
  }

  v3 = 0;
  v4 = &netname6_line[220];
  v31 = v2;
  while (1)
  {
    if (interval >= 1)
    {
      v34.it_value.tv_sec = interval;
      v34.it_value.tv_usec = 0;
      v34.it_interval.tv_sec = interval;
      v34.it_interval.tv_usec = 0;
      signal(14, catchalarm);
      v4[1092] = 0;
      setitimer(0, &v34, 0);
    }

    v5 = v32;
    if (v32)
    {
      break;
    }

LABEL_67:
    if (interval < 1)
    {
      goto LABEL_77;
    }

    v33[1] = 0x2000;
    sigprocmask(1, &v33[1], v33);
    if (!v4[1092])
    {
      v33[1] = 0;
      sigsuspend(&v33[1]);
    }

    sigprocmask(3, v33, 0);
    v4[1092] = 0;
  }

  while (1)
  {
    v35 = 0u;
    v36 = 0u;
    if (interface && strcmp(v5->ifa_name, interface))
    {
      goto LABEL_64;
    }

    ifa_name = v5->ifa_name;
    if (v3)
    {
      if (!strcmp(v5->ifa_name, v3))
      {
        goto LABEL_64;
      }
    }

    v7 = v5->ifa_name;
    __strlcpy_chk();
    if (ioctl(v2, 0xC020698EuLL, &v35))
    {
      perror("ioctl(SIOCGIFEFLAGS");
      goto LABEL_16;
    }

    if ((v36 & 0x80) != 0)
    {
      break;
    }

LABEL_16:
    v3 = ifa_name;
LABEL_64:
    v5 = v5->ifa_next;
    if (!v5)
    {
      goto LABEL_67;
    }
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v8 = v5->ifa_name;
  __strlcpy_chk();
  *(&v38 + 1) = v1;
  LODWORD(v39) = 640;
  DWORD1(v38) = 0;
  if ((ioctl(v2, 0xC0286993uLL, &v37) & 0x80000000) == 0)
  {
    v9 = v1[12];
    if (!v9)
    {
      fwrite("Invalid scheduler type\n", 0x17uLL, 1uLL, __stderrp);
      goto LABEL_77;
    }

    v10 = v1[12];
    if (!interface)
    {
      putchar(10);
      v10 = v1[12];
    }

    v29 = ifa_name;
    v30 = v5;
    if (v10)
    {
      if (v10 == 8)
      {
        v11 = "NEW FQ_CODEL";
      }

      else if (v10 == 7)
      {
        v11 = "FQ_CODEL";
      }

      else
      {
        v11 = "UNKNOWN";
      }
    }

    else
    {
      v11 = "NONE";
    }

    printf("%s:\n     [ sched: %18s  qlength:  %3d/%3d ]\n", v5->ifa_name, v11, *v1, v1[1]);
    printf("     [ dequeued pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(v1 + 2), *(v1 + 3), *(v1 + 4), *(v1 + 5));
    v12 = 0;
    v13 = v9 - 7;
LABEL_32:
    v14 = 0;
    LODWORD(v38) = v12;
    while (1)
    {
      if (cq < 0 || cq == v14)
      {
        DWORD1(v38) = v14;
        *__error() = 0;
        if (ioctl(v31, 0xC0286993uLL, &v37) < 0)
        {
          v27 = __error();
          if (!v12 || *v27 != 6)
          {
            perror("Warning: ioctl(SIOCGIFQUEUESTATS)");
            v2 = v31;
            goto LABEL_77;
          }

LABEL_62:
          if (++v12 == 16)
          {
            fflush(__stdoutp);
            v3 = v29;
            v5 = v30;
            v2 = v31;
            v4 = netname6_line + 220;
            goto LABEL_64;
          }

          goto LABEL_32;
        }

        if (v13 <= 1 && (v1[15] || v1[14]))
        {
          puts("=====================================================");
          v15 = v1[14];
          v16 = "?";
          if (v15 <= 9)
          {
            v16 = off_100024298[v15];
          }

          printf("     [ pri: %s (%d)\tsrv_cl: 0x%x\tquantum: %d\tdrr_max: %d\tqset idx: %hu ]\n", v16, v15, v1[15], v1[16], v1[17], v12);
          v17 = *(v1 + 19);
          printf("     [ queued pkts: %llu\tbytes: %llu ]\n", v17, *(v1 + 22));
          printf("     [ dequeued pkts: %llu\tbytes: %llu ]\n", *(v1 + 20), *(v1 + 21));
          v18 = *(v1 + 9);
          nsec_to_str(*(v1 + 10));
          printf("     [ budget: %lld\ttarget qdelay: %10s\t", v18, nsec_to_str_buf);
          nsec_to_str(*(v1 + 12));
          printf("update interval:%10s ]\n", nsec_to_str_buf);
          printf("     [ flow control: %u\tfeedback: %u\tstalls: %u\tfailed: %u \toverwhelming: %u ]\n", v1[26], v1[27], v1[28], v1[29], v1[140]);
          printf("     [ drop overflow: %llu\tearly: %llu\tmemfail: %u\tduprexmt:%u ]\n", *(v1 + 15), *(v1 + 16), v1[34], v1[49]);
          v19 = *(v1 + 79);
          printf("     [ congestion feedback: %llu\t congestion drops: %llu ]\n", v19, *(v1 + 78));
          nsec_to_str(*(v1 + 11));
          printf("     [ L4S target qdelay: %10s ]\n", nsec_to_str_buf);
          v20 = *(v1 + 73);
          printf("     [ CE marked:%llu\tCE marking failures:%llu\tL4S pkts:%llu   ]\n", *(v1 + 71), v20, *(v1 + 74));
          v21 = *(v1 + 76);
          printf("     [ paced pkts:%llu\tpacemaker needed:%llu ]\n", v21, *(v1 + 77));
          printf("     [ flows total: %u\tnew: %u\told: %u ]\n", v1[35], v1[36], v1[37]);
          printf("     [ throttle on: %u\toff: %u\tdrop: %u ]\n", v1[46], v1[47], v1[48]);
          printf("     [ compressible pkts: %u compressed pkts: %u]\n", v1[131], v1[132]);
          if (qflag >= 2)
          {
            if (v1[50])
            {
              puts("Flowhash\tBytes\tMin qdelay\tFlags\t");
              if (v1[50])
              {
                break;
              }
            }
          }
        }
      }

LABEL_58:
      if (++v14 == 10)
      {
        goto LABEL_62;
      }
    }

    v22 = 0;
    v23 = (v1 + 54);
    while (2)
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      nsec_to_str(*(v23 - 3));
      printf("%x\t%u\t%14s\t", v24, v25, nsec_to_str_buf);
      v26 = *(v23 - 2);
      if (v26)
      {
        putchar(79);
        v26 = *(v23 - 2);
        if ((v26 & 2) != 0)
        {
          goto LABEL_54;
        }

LABEL_47:
        if ((v26 & 4) == 0)
        {
          goto LABEL_48;
        }

LABEL_55:
        putchar(76);
        v26 = *(v23 - 2);
        if ((v26 & 8) != 0)
        {
          goto LABEL_56;
        }

LABEL_49:
        if ((v26 & 0x10) == 0)
        {
LABEL_51:
          putchar(10);
          ++v22;
          v23 += 4;
          if (v22 >= v1[50])
          {
            goto LABEL_58;
          }

          continue;
        }
      }

      else
      {
        if ((v26 & 2) == 0)
        {
          goto LABEL_47;
        }

LABEL_54:
        putchar(78);
        v26 = *(v23 - 2);
        if ((v26 & 4) != 0)
        {
          goto LABEL_55;
        }

LABEL_48:
        if ((v26 & 8) == 0)
        {
          goto LABEL_49;
        }

LABEL_56:
        putchar(68);
        if ((*(v23 - 2) & 0x10) == 0)
        {
          goto LABEL_51;
        }
      }

      break;
    }

    putchar(70);
    goto LABEL_51;
  }

  if (*__error() != 6)
  {
    v28 = "Warning: ioctl(SIOCGIFQUEUESTATS)";
    goto LABEL_76;
  }

  v3 = ifa_name;
  if (!interface)
  {
    goto LABEL_64;
  }

  printf("Queue statistics are not available on %s\n", v5->ifa_name);
LABEL_77:
  freeifaddrs(v32);
  free(v1);
  return close(v2);
}

uint64_t rxpollstatpr()
{
  memset(v13, 0, 512);
  v12 = 712;
  v9 = 0;
  *v10 = 0;
  v0 = socket(2, 2, 0);
  if (v0 < 0)
  {
    v7 = "Warning: socket(AF_INET)";
    goto LABEL_29;
  }

  if (getifaddrs(&v9))
  {
    v7 = "getifaddrs";
    goto LABEL_29;
  }

  v1 = 0;
  memset(&v11, 0, sizeof(v11));
  while (1)
  {
    if (interval >= 1)
    {
      v11.it_value.tv_sec = interval;
      v11.it_value.tv_usec = 0;
      v11.it_interval.tv_sec = interval;
      v11.it_interval.tv_usec = 0;
      signal(14, catchalarm);
      signalled = 0;
      setitimer(0, &v11, 0);
    }

    v2 = v9;
    if (v9)
    {
      break;
    }

LABEL_20:
    if (interval < 1)
    {
      goto LABEL_30;
    }

    v10[1] = 0x2000;
    sigprocmask(1, &v10[1], v10);
    if (!signalled)
    {
      v10[1] = 0;
      sigsuspend(&v10[1]);
    }

    sigprocmask(3, v10, 0);
    signalled = 0;
  }

  while (1)
  {
    v49 = 0u;
    v50 = 0u;
    if (interface && strcmp(v2->ifa_name, interface))
    {
      goto LABEL_19;
    }

    ifa_name = v2->ifa_name;
    if (v1)
    {
      if (!strcmp(v2->ifa_name, v1))
      {
        goto LABEL_19;
      }
    }

    v4 = v2->ifa_name;
    __strlcpy_chk();
    if (ioctl(v0, 0xC020698EuLL, &v49))
    {
      v7 = "ioctl(SIOCGIFEFLAGS";
      goto LABEL_29;
    }

    if (BYTE1(v50))
    {
      break;
    }

LABEL_18:
    v1 = ifa_name;
LABEL_19:
    v2 = v2->ifa_next;
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v5 = if_nametoindex(v2->ifa_name);
  if (!v5)
  {
    fwrite("Invalid interface name\n", 0x17uLL, 1uLL, __stderrp);
    goto LABEL_30;
  }

  v6 = v5;
  bzero(v13, 0x2C8uLL);
  *v51 = xmmword_100023240;
  v52 = v6;
  v53 = 5;
  if (sysctl(v51, 6u, v13, &v12, 0, 0) != -1)
  {
    if (!interface)
    {
      putchar(10);
    }

    printf("%-4s [ poll on requests:  %15u  errors: %27u ]\n", v2->ifa_name, v16, v17);
    printf("     [ poll off requests: %15u  errors: %27u ]\n", v14, v15);
    printf("     [ polled packets: %18llu  per poll limit: %19u ]\n", v21, v33);
    printf("     [ polled bytes: %20llu ]\n", v27);
    printf("     [ poll interval: %14llu nsec ]\n", v34);
    printf("     [ sampled packets avg/min/max: %12u / %12u / %12u ]\n", v22, v23, v24);
    printf("     [ sampled bytes avg/min/max:   %12u / %12u / %12u ]\n", v28, v29, v30);
    printf("     [ sampled wakeups avg:         %12u ]\n", v18);
    printf("     [ packets lowat/hiwat threshold: %10u / %10u ]\n", v25, v26);
    printf("     [ bytes lowat/hiwat threshold:   %10u / %10u ]\n", v31, v32);
    printf("     [ wakeups lowat/hiwat threshold: %10u / %10u ]\n", v19, v20);
    printf("     [ mit mode: %24U  cfg idx: %26u ]\n", v36, v43);
    printf("     [ cfg packets lo/hi threshold: %12u / %12u ]\n", v44, v45);
    printf("     [ cfg bytes lo/hi threshold:   %12u / %12u ]\n", v46, v47);
    printf("     [ cfg interval: %15u nsec ]\n", v48);
    printf("     [ mit interval: %15llu nsec ]\n", v35);
    printf("     [ mit packets avg/min/max:    %12u / %12u / %12u ]\n", v37, v38, v39);
    printf("     [ mit bytes avg/min/max:      %12u / %12u / %12u ]\n", v40, v41, v42);
    fflush(__stdoutp);
    goto LABEL_18;
  }

  v7 = "sysctl IFDATA_SUPPLEMENTAL";
LABEL_29:
  perror(v7);
LABEL_30:
  freeifaddrs(v9);
  return close(v0);
}

size_t print_link_status(const char *a1)
{
  memset(&v82, 0, sizeof(v82));
  v80 = 0;
  *v81 = 0;
  v68 = socket(2, 2, 0);
  if (v68 < 0)
  {
    v60 = "Warning: socket(AF_INET)";
LABEL_177:
    perror(v60);
LABEL_178:
    v8 = -1;
    goto LABEL_187;
  }

  if (getifaddrs(&v80))
  {
    v60 = "getifaddrs";
    goto LABEL_177;
  }

  v2 = 0;
  v70 = a1;
  while (1)
  {
    if (interval >= 1)
    {
      v82.it_value.tv_sec = interval;
      v82.it_value.tv_usec = 0;
      v82.it_interval.tv_sec = interval;
      v82.it_interval.tv_usec = 0;
      signal(14, catchalarm);
      signalled = 0;
      setitimer(0, &v82, 0);
    }

    v3 = v80;
    if (v80)
    {
      break;
    }

LABEL_153:
    if (interval < 1)
    {
      goto LABEL_178;
    }

    v81[1] = 0x2000;
    sigprocmask(1, &v81[1], v81);
    if (!signalled)
    {
      v81[1] = 0;
      sigsuspend(&v81[1]);
    }

    sigprocmask(3, v81, 0);
    signalled = 0;
  }

  while (1)
  {
    *__str = 0u;
    v87 = 0u;
    if (!a1 || !strcmp(v3->ifa_name, a1))
    {
      ifa_name = v3->ifa_name;
      if (!v2 || strcmp(v3->ifa_name, v2))
      {
        break;
      }
    }

LABEL_152:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_153;
    }
  }

  v5 = if_nametoindex(ifa_name);
  if (!v5)
  {
    return fwrite("Invalid interface name\n", 0x17uLL, 1uLL, __stderrp);
  }

  v6 = v5;
  v7 = socket(32, 2, 2);
  if (v7 == -1)
  {
    perror("socket(PF_SYSTEM)");
    goto LABEL_184;
  }

  v8 = v7;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  __strlcpy_chk();
  if (ioctl(v8, 0xC0644E03uLL, &v88) == -1)
  {
    v61 = "ioctl(CTLIOCGINFO)";
LABEL_183:
    perror(v61);
    close(v8);
LABEL_184:
    v8 = -1;
LABEL_185:
    v62 = "create_control_socket";
    goto LABEL_186;
  }

  v84 = 0;
  *&v83[12] = 0;
  v85 = 0;
  *v83 = 139296;
  *&v83[4] = v88;
  *&v83[8] = 0;
  if (connect(v8, v83, 0x20u))
  {
    v61 = "connect(SYSPROTO_CONTROL)";
    goto LABEL_183;
  }

  v9 = fcntl(v8, 3, 0);
  if (fcntl(v8, 4, v9 | 4u) == -1)
  {
    v61 = "fcnt(F_SETFL,O_NONBLOCK)";
    goto LABEL_183;
  }

  if (v8 < 0)
  {
    goto LABEL_185;
  }

  *&v88 = &v88;
  *(&v88 + 1) = 1001;
  *&v89 = 6;
  *&v90 = v6;
  *(&v89 + 1) = -1;
  v10 = send(v8, &v88, 0x28uLL, 0);
  if (v10 == 40)
  {
    v11 = recv(v8, &v88, 0x28uLL, 0);
    if (v11 <= 0x1F)
    {
      v53 = __stderrp;
      v64 = v11;
      v66 = 32;
      v54 = "%s: recv too small, received %ld, expected %lu\n";
LABEL_161:
      v56 = v53;
    }

    else
    {
      if (DWORD2(v88) != 10001)
      {
        fprintf(__stderrp, "%s: received wrong message type, received %u expected %u\n");
        goto LABEL_187;
      }

      if (v88 == &v88)
      {
        v12 = v89;
        *__str = 0u;
        v87 = 0u;
        snprintf(__str, 0x10uLL, "%s", ifa_name);
        if (ioctl(v8, 0xC02069AAuLL, __str) == -1)
        {
          v63 = "ioctl(CTLIOCGINFO)";
        }

        else
        {
          *&v88 = 0;
          *(&v88 + 1) = 1005;
          *&v89 = v12;
          v13 = send(v8, &v88, 0x18uLL, 0);
          if (v13 == 24)
          {
            v14 = recv(v8, &v88, 0x120uLL, 0);
            if (v14 > 287)
            {
              if (DWORD2(v88) != 10003)
              {
                fprintf(__stderrp, "%s: received wrong message type, received %u expected %u\n");
                goto LABEL_173;
              }

              if (v89 == v12)
              {
                v15 = DWORD1(v91);
                v16 = WORD4(v91);
                v17 = HIDWORD(v91);
                v18 = v92;
                v19 = DWORD1(v92);
                v71 = *(&v92 + 1);
                v72 = v93;
                v69 = DWORD1(v93);
                v73 = *(&v93 + 1);
                v74 = v94;
                v75 = v95;
                v76 = v96;
                v77 = v97;
                v78 = v98;
                v79 = v99;
                printf("\n%s: ", ifa_name);
                print_time();
                puts("\ninterface state:");
                if ((v87 & 2) == 0)
                {
                  goto LABEL_39;
                }

                printf("\tlqm: ");
                if (BYTE2(v87) <= 0x63u)
                {
                  if (BYTE2(v87) == 10)
                  {
                    printf("bad");
                    goto LABEL_39;
                  }

                  if (BYTE2(v87) == 50)
                  {
                    printf("poor");
                    goto LABEL_39;
                  }
                }

                else
                {
                  switch(BYTE2(v87))
                  {
                    case 0xFFu:
                      printf("unknown");
                      goto LABEL_39;
                    case 0xFEu:
                      printf("off");
                      goto LABEL_39;
                    case 0x64u:
                      printf("good");
                      goto LABEL_39;
                  }
                }

                printf("invalid(%d)");
LABEL_39:
                if (v87)
                {
                  printf("\trrc: ");
                  if (BYTE1(v87))
                  {
                    if (BYTE1(v87) == 1)
                    {
                      printf("connected");
                      v20 = 1;
LABEL_46:
                      if ((v87 & 4) != 0)
                      {
                        printf("\tavailability: ");
                        if (BYTE3(v87))
                        {
                          if (v20)
                          {
                            printf("false");
                          }

                          else
                          {
                            printf("invalid(%d)");
                          }
                        }

                        else
                        {
                          printf("true");
                        }
                      }

                      putchar(10);
                      if (v15 == 2)
                      {
                        puts("wifi status:");
                        if (v16)
                        {
                          v29 = v17;
                        }

                        else
                        {
                          v29 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 2) != 0)
                        {
                          v30 = v18;
                        }

                        else
                        {
                          v30 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 4) != 0)
                        {
                          v31 = v19;
                        }

                        else
                        {
                          v31 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 8) != 0)
                        {
                          v32 = v71;
                        }

                        else
                        {
                          v32 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x10) != 0)
                        {
                          v33 = HIDWORD(v71);
                        }

                        else
                        {
                          v33 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x20) != 0)
                        {
                          v34 = v72;
                        }

                        else
                        {
                          v34 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x40) != 0)
                        {
                          v35 = v69;
                          v38 = v69 + 1;
                          if (v69 + 1) < 5 && ((0x1Du >> v38))
                          {
                            v35 = dword_100023278[v38];
                            v36 = off_1000242E8[v38];
                          }

                          else if (v69 == 4)
                          {
                            v36 = "(high)";
                          }

                          else
                          {
                            v36 = "(?)";
                          }
                        }

                        else
                        {
                          v35 = 0xFFFFFFFFLL;
                          v36 = "(not valid)";
                        }

                        if ((v16 & 0x100) != 0)
                        {
                          v45 = v73;
                        }

                        else
                        {
                          v45 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x80) != 0)
                        {
                          v46 = HIDWORD(v73);
                        }

                        else
                        {
                          v46 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x200) != 0)
                        {
                          v47 = v74;
                        }

                        else
                        {
                          v47 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x400) != 0)
                        {
                          v48 = v75;
                        }

                        else
                        {
                          v48 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x800) != 0)
                        {
                          v49 = v76;
                        }

                        else
                        {
                          v49 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x1000) != 0)
                        {
                          v50 = v77;
                        }

                        else
                        {
                          v50 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x2000) != 0)
                        {
                          v51 = v78;
                        }

                        else
                        {
                          v51 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x4000) != 0)
                        {
                          v52 = v79;
                        }

                        else
                        {
                          v52 = 0xFFFFFFFFLL;
                        }

                        printf("\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t\t%d%s\n\t%s:\t\t%d\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t\t%d\n", "link_quality_metric", v29, "ul_effective_bandwidth", v30, "ul_max_bandwidth", v31, "ul_min_latency", v32, "ul_effective_latency", v33, "ul_max_latency", v34, "ul_retxt_level", v35, v36, "ul_bytes_lost", v45, "ul_error_rate", v46, "dl_effective_bandwidth", v47, "dl_max_bandwidth", v48, "dl_min_latency", v49, "dl_effective_latency", v50, "dl_max_latency", v51, "dl_error_rate", v52, "config_frequency");
                      }

                      else if (v15 == 1)
                      {
                        puts("cellular status:");
                        if (v16)
                        {
                          v21 = v17;
                        }

                        else
                        {
                          v21 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 2) != 0)
                        {
                          v22 = v18;
                        }

                        else
                        {
                          v22 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 4) != 0)
                        {
                          v23 = v19;
                        }

                        else
                        {
                          v23 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 8) != 0)
                        {
                          v24 = v71;
                        }

                        else
                        {
                          v24 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x10) != 0)
                        {
                          v25 = HIDWORD(v71);
                        }

                        else
                        {
                          v25 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x20) != 0)
                        {
                          v26 = v72;
                        }

                        else
                        {
                          v26 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x40) != 0)
                        {
                          v27 = v69;
                          v37 = v69 + 1;
                          if (v69 + 1) < 5 && ((0x1Du >> v37))
                          {
                            v27 = dword_100023278[v37];
                            v28 = off_1000242E8[v37];
                          }

                          else
                          {
                            v28 = "(?)";
                            if (v69 == 4)
                            {
                              v28 = "(high)";
                            }
                          }
                        }

                        else
                        {
                          v27 = 0xFFFFFFFFLL;
                          v28 = "(not valid)";
                        }

                        if ((v16 & 0x80) != 0)
                        {
                          v39 = v73;
                        }

                        else
                        {
                          v39 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x100) != 0)
                        {
                          v40 = HIDWORD(v73);
                        }

                        else
                        {
                          v40 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x200) != 0)
                        {
                          v41 = v74;
                        }

                        else
                        {
                          v41 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x400) != 0)
                        {
                          v42 = v75;
                        }

                        else
                        {
                          v42 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x800) != 0)
                        {
                          v43 = v76;
                        }

                        else
                        {
                          v43 = 0xFFFFFFFFLL;
                        }

                        if ((v16 & 0x1000) != 0)
                        {
                          v44 = v77;
                        }

                        else
                        {
                          v44 = 0xFFFFFFFFLL;
                        }

                        printf("\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t\t%d\n\t%s:\t\t%d%s\n\t%s:\t\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d\n\t%s:\t%d %s\n", "link_quality_metric", v21, "ul_effective_bandwidth", v22, "ul_max_bandwidth", v23, "ul_min_latency", v24, "ul_effective_latency", v25, "ul_max_latency", v26, "ul_retxt_level", v27, v28, "ul_bytes_lost", v39, "ul_min_queue_size", v40, "ul_avg_queue_size", v41, "ul_max_queue_size", v42, "dl_effective_bandwidth", v43, "dl_max_bandwidth", v44);
                      }

                      fflush(__stdoutp);
                      if (v12)
                      {
                        rem_nstat_src(v8, v12);
                      }

                      close(v8);
                      v2 = ifa_name;
                      a1 = v70;
                      goto LABEL_152;
                    }

                    printf("invalid(%d)");
                  }

                  else
                  {
                    printf("idle");
                  }
                }

                v20 = 0;
                goto LABEL_46;
              }

              v59 = __stderrp;
              v65 = v89;
              v67 = v12;
              v58 = "%s: received message for wrong source, received 0x%llx expected 0x%llx\n";
LABEL_172:
              fprintf(v59, v58, "get_src_decsription", v65, v67);
LABEL_173:
              if (!v12)
              {
                goto LABEL_187;
              }

LABEL_174:
              rem_nstat_src(v8, v12);
              goto LABEL_187;
            }

            if (v14 != -1)
            {
              v57 = __stderrp;
              v65 = v14;
              v67 = 288;
              v58 = "%s: recv too small, received %ld, expected %u\n";
              goto LABEL_169;
            }

            v63 = "recv(NSTAT_GET_SRC_DESC_RSP";
          }

          else
          {
            if (v13 != -1)
            {
              v57 = __stderrp;
              v65 = v13;
              v67 = 24;
              v58 = "%s: sent %ld out of %lu\n";
LABEL_169:
              v59 = v57;
              goto LABEL_172;
            }

            v63 = "send(NSTAT_GET_SRC_DESC_REQ)";
          }
        }

        perror(v63);
        if (!v12)
        {
          goto LABEL_187;
        }

        goto LABEL_174;
      }

      v56 = __stderrp;
      v64 = v88;
      v66 = &v88;
      v54 = "%s: received wrong context, received %llu expected %lu\n";
    }

    fprintf(v56, v54, "add_nstat_src", v64, v66);
    goto LABEL_187;
  }

  if (v10 != -1)
  {
    v53 = __stderrp;
    v64 = v10;
    v66 = 40;
    v54 = "%s: could only sent %ld out of %d\n";
    goto LABEL_161;
  }

  v62 = "send(NSTAT_ADD_SRC_REQ)";
LABEL_186:
  perror(v62);
LABEL_187:
  close(v8);
  freeifaddrs(v80);
  return close(v68);
}

void rem_nstat_src(int a1, uint64_t a2)
{
  v9 = 0;
  v10 = 1003;
  v11 = a2;
  v4 = send(a1, &v9, 0x18uLL, 0);
  if (v4 != 24)
  {
    if (v4 == -1)
    {
      perror("send(NSTAT_REM_SRC_REQ)");
      return;
    }

    v5 = __stderrp;
    v8 = v4;
    v6 = "%s: could only sent %ld out of %lu\n";
    goto LABEL_6;
  }

  v7 = recv(a1, &v9, 0x18uLL, 0);
  if (v7 <= 0x17)
  {
    v5 = __stderrp;
    v8 = v7;
    v6 = "%s: recv too small, received %ld, expected %lu\n";
LABEL_6:
    fprintf(v5, v6, "rem_nstat_src", v8, 24);
    return;
  }

  if (v10 == 10002)
  {
    if (v11 != a2)
    {
      fprintf(__stderrp, "%s: received invalid srcref, received %llu expected %llu\n");
    }
  }

  else
  {
    fprintf(__stderrp, "%s: received wrong message type, received %u expected %u\n");
  }
}

uint64_t nsec_to_str(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0x3B9ACA00)
  {
    if (a1 < 0xF4240)
    {
      if (a1 < 0x3E8)
      {
        v3 = "nsec";
        return snprintf(nsec_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
      }

      v2 = 1000.0;
      v3 = "usec";
    }

    else
    {
      v2 = 1000000.0;
      v3 = "msec";
    }
  }

  else
  {
    v2 = 1000000000.0;
    v3 = "sec ";
  }

  v1 = v1 / v2;
  return snprintf(nsec_to_str_buf, 0x20uLL, "%-4.2Lf %4s", v1, v3);
}

void protopr(int a1, const char *a2, int a3)
{
  if (a1 == 254)
  {
    v7 = 0;
    v8 = "net.inet.divert.pcblist_n";
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (a1 != 17)
  {
    if (a1 == 6)
    {
      if (tcp_done)
      {
        return;
      }

      v6 = 0;
      v7 = 1;
      tcp_done = 1;
      v8 = "net.inet.tcp.pcblist_n";
      goto LABEL_11;
    }

    v7 = 0;
    v8 = "net.inet.raw.pcblist_n";
    goto LABEL_10;
  }

  if (udp_done)
  {
    return;
  }

  v7 = 0;
  v6 = 1;
  udp_done = 1;
  v8 = "net.inet.udp.pcblist_n";
LABEL_11:
  size = 0;
  if (sysctlbyname(v8, 0, &size, 0, 0) < 0)
  {
    if (*__error() != 2)
    {
      warn("sysctl: %s");
    }
  }

  else
  {
    v9 = malloc_type_malloc(size, 0x8CE6F32EuLL);
    if (v9)
    {
      v10 = v9;
      if (sysctlbyname(v8, v9, &size, 0, 0) < 0)
      {
        warn("sysctl: %s", v8);
      }

      else if (size > 0x18)
      {
        v11 = 8;
        if (*v10)
        {
          v11 = ((*v10 - 1) | 7u) + 1;
        }

        if (v11 < size)
        {
          v12 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v13 = 0;
          v14 = 0;
          v15 = (v10 + v11);
          do
          {
            if (*v15 < 0x19u)
            {
              break;
            }

            v16 = v15[1];
            if ((v16 & v12) != 0)
            {
              if (vflag)
              {
                v35 = v15[1];
                printf("got %d twice\n");
              }
            }

            else
            {
              v12 |= v16;
              if (v16 > 7)
              {
                switch(v16)
                {
                  case 8:
                    v41 = v15;
                    goto LABEL_23;
                  case 16:
                    v14 = v15;
                    goto LABEL_23;
                  case 32:
                    v42 = v15;
                    goto LABEL_23;
                }
              }

              else
              {
                switch(v16)
                {
                  case 1:
                    v13 = v15;
                    goto LABEL_23;
                  case 2:
                    v44 = v15;
                    goto LABEL_23;
                  case 4:
                    v43 = v15;
                    goto LABEL_23;
                }
              }

              if (vflag >= 3)
              {
                v36 = v15[1];
                printf("unexpected kind %d\n");
              }
            }

LABEL_23:
            if (v12 == 63)
            {
              v17 = 0;
            }

            else
            {
              v17 = v7;
            }

            if (v12 == 31)
            {
              v18 = 0;
            }

            else
            {
              v18 = v6;
            }

            if (v17 & 1) != 0 || (v18)
            {
              goto LABEL_34;
            }

            if (*(v13 + 36) == a1 && *(v14 + 7) <= v10[1])
            {
              if (a3)
              {
                if (a3 == 30)
                {
                  if ((v14[11] & 2) != 0)
                  {
                    goto LABEL_62;
                  }
                }

                else if (a3 != 2 || (v14[11] & 1) != 0)
                {
LABEL_62:
                  v20 = v7 ^ 1;
                  if (aflag)
                  {
                    v20 = 1;
                  }

                  if ((v20 & 1) != 0 || v42[9] >= 2)
                  {
                    if (!Lflag)
                    {
                      if (protopr_first)
                      {
                        goto LABEL_86;
                      }

                      printf("Active Internet connections");
                      v21 = " (including servers)";
                      if (aflag)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_73;
                    }

                    if (*(v13 + 48))
                    {
                      v21 = "Current listen queue sizes (qlen/incqlen/maxqlen)";
                      if (protopr_first)
                      {
                        goto LABEL_86;
                      }

LABEL_72:
                      printf(v21);
LABEL_73:
                      putchar(10);
                      if (Aflag)
                      {
                        printf("%-16.16s ", "Socket");
                        printf("%-9.9s", "Flowhash");
                      }

                      if (Lflag)
                      {
                        if (lflag)
                        {
                          printf("%-14.14s %-39.39s\n");
                        }

                        else
                        {
                          printf("%-14.14s %-22.22s\n");
                        }
                      }

                      else
                      {
                        printf("%-5.5s %-6.6s %-6.6s  ", "Proto", "Recv-Q", "Send-Q");
                        v22 = "%-18.18s %-18.18s ";
                        if (!Aflag)
                        {
                          v22 = "%-22.22s %-22.22s ";
                        }

                        if (lflag)
                        {
                          printf("%-45.45s %-45.45s ");
                        }

                        else
                        {
                          printf(v22, "Local Address", "Foreign Address");
                        }

                        printf("%-11.11s", "(state)");
                        print_socket_stats_format();
                        putchar(10);
                      }

                      protopr_first = 1;
LABEL_86:
                      if (Aflag)
                      {
                        v23 = (v13 + 28);
                        if (v7)
                        {
                          v23 = v14 + 5;
                        }

                        printf("%16lx ", *v23);
                        printf("%8x ", v14[24]);
                      }

                      if (Lflag)
                      {
                        snprintf(__str, 0xFuLL, "%d/%d/%d", *(v13 + 44), *(v13 + 46), *(v13 + 48));
                        printf("%-14.14s ");
                      }

                      else
                      {
                        *(v14 + 44);
                        *(v14 + 44);
                        v39 = *(v44 + 8);
                        v40 = *(v43 + 8);
                        printf("%-3.3s%-2.2s %6u %6u  ");
                      }

                      if (nflag)
                      {
                        if ((v14[11] & 1) == 0)
                        {
                          if ((v14[11] & 2) != 0)
                          {
                            inet6print(v14 + 16, *(v14 + 9), a2, 1);
                            if (!Lflag)
                            {
                              v24 = *(v14 + 8);
                              v25 = v14 + 12;
                              v26 = a2;
                              v27 = 1;
                              goto LABEL_109;
                            }
                          }

LABEL_115:
                          if (Lflag)
                          {
                            v33 = 1;
                          }

                          else
                          {
                            v33 = v6;
                          }

                          if ((v33 & 1) == 0)
                          {
                            v34 = v42[9];
                            if (v34 < 0xB)
                            {
                              v38 = tcpstates[v34];
                              printf("%-11s");
                            }

                            else
                            {
                              v37 = v42[9];
                              printf("%-11d");
                            }
                          }

                          if ((v7 & 1) == 0)
                          {
                            printf("%-11s", "           ");
                          }

                          print_socket_stats_data(v13, v44, v43, v41);
                          putchar(10);
                          v12 = 0;
                          goto LABEL_34;
                        }

                        inetprint(v14 + 19, *(v14 + 9), a2, 1);
                        if (Lflag)
                        {
                          goto LABEL_115;
                        }

                        v29 = *(v14 + 8);
                        v30 = v14 + 15;
                        v31 = a2;
                        v32 = 1;
LABEL_114:
                        inetprint(v30, v29, v31, v32);
                        goto LABEL_115;
                      }

                      v28 = *(v14 + 44);
                      if ((v14[9] & 0x40) != 0)
                      {
                        if (v14[11])
                        {
                          inetprint(v14 + 19, *(v14 + 9), a2, 1);
                          if (Lflag)
                          {
                            goto LABEL_115;
                          }

                          v29 = *(v14 + 8);
                          v30 = v14 + 15;
                          v31 = a2;
                          v32 = 0;
                          goto LABEL_114;
                        }

                        if ((v14[11] & 2) == 0)
                        {
                          goto LABEL_115;
                        }

                        inet6print(v14 + 16, *(v14 + 9), a2, 1);
                        if (Lflag)
                        {
                          goto LABEL_115;
                        }

                        v24 = *(v14 + 8);
                        v25 = v14 + 12;
                        v26 = a2;
                        v27 = 0;
                      }

                      else
                      {
                        if (v14[11])
                        {
                          inetprint(v14 + 19, *(v14 + 9), a2, 0);
                          if (Lflag)
                          {
                            goto LABEL_115;
                          }

                          v29 = *(v14 + 8);
                          v32 = *(v14 + 9) != v29;
                          v30 = v14 + 15;
                          v31 = a2;
                          goto LABEL_114;
                        }

                        if ((v14[11] & 2) == 0)
                        {
                          goto LABEL_115;
                        }

                        inet6print(v14 + 16, *(v14 + 9), a2, 0);
                        if (Lflag)
                        {
                          goto LABEL_115;
                        }

                        v24 = *(v14 + 8);
                        v27 = *(v14 + 9) != v24;
                        v25 = v14 + 12;
                        v26 = a2;
                      }

LABEL_109:
                      inet6print(v25, v24, v26, v27);
                      goto LABEL_115;
                    }
                  }
                }
              }

              else if ((v14[11] & 3) != 0)
              {
                goto LABEL_62;
              }
            }

            v12 = 0;
LABEL_34:
            if (*v15)
            {
              v19 = ((*v15 - 1) | 7u) + 1;
            }

            else
            {
              v19 = 8;
            }

            v15 = (v15 + v19);
          }

          while (v15 < (v10 + size));
        }
      }

      free(v10);
    }

    else
    {
      warn("malloc %lu bytes");
    }
  }
}

uint64_t inetprint(in_addr_t *a1, int a2, const char *a3, int a4)
{
  if (Wflag)
  {
    inetname(a1);
    snprintf(__str, 0x50uLL, "%s.");
  }

  else
  {
    inetname(a1);
    snprintf(__str, 0x50uLL, "%.*s.");
  }

  v7 = index(__str, 0);
  v8 = 0;
  if (a2 && !a4)
  {
    v8 = getservbyport(a2, a3);
  }

  v9 = (__str - v7);
  if (!a2 || v8)
  {
    if (v8)
    {
      s_name = v8->s_name;
    }

    snprintf(v7, (v9 + 80), "%.15s ");
  }

  else
  {
    snprintf(v7, (v9 + 80), "%d ");
  }

  if (Wflag)
  {
    return printf("%-*s ");
  }

  else
  {
    return printf("%-*.*s ");
  }
}

void tcp_stats(uint64_t a1, const char *a2)
{
  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  v374 = 0u;
  v371 = 0u;
  v372 = 0u;
  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v366 = 0u;
  v363 = 0u;
  v364 = 0u;
  v361 = 0u;
  v362 = 0u;
  v359 = 0u;
  v360 = 0u;
  v357 = 0u;
  v358 = 0u;
  v355 = 0u;
  v356 = 0u;
  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v347 = 0u;
  v348 = 0u;
  v346 = 912;
  v345 = 0;
  if (sysctlbyname("net.inet.tcp.stats", &v347, &v346, 0, 0) < 0)
  {
    warn("sysctl: net.inet.tcp.stats");
  }

  else if (tcp_done != 1 || interval)
  {
    tcp_done = 1;
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v3 = HIDWORD(v350) - dword_100028A24;
    if (HIDWORD(v350) != dword_100028A24 || sflag <= 1)
    {
      v4 = plural(HIDWORD(v350) - dword_100028A24);
      printf("\t%u packet%s sent\n", v3, v4);
    }

    v5 = v351 - qword_100028A28;
    if (v351 != qword_100028A28 || sflag <= 1)
    {
      v6 = plural(v351 - qword_100028A28);
      v7 = DWORD1(v351) - HIDWORD(qword_100028A28);
      v8 = plural(DWORD1(v351) - HIDWORD(qword_100028A28));
      printf("\t\t%u data packet%s (%u byte%s)\n", v5, v6, v7, v8);
    }

    v9 = DWORD2(v351) - qword_100028A30;
    if (*(&v351 + 1) == qword_100028A30 && sflag > 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = plural(DWORD2(v351) - qword_100028A30);
      v12 = HIDWORD(v351) - HIDWORD(qword_100028A30);
      v13 = plural(HIDWORD(v351) - HIDWORD(qword_100028A30));
      printf("\t\t%u data packet%s (%u byte%s) retransmitted\n", v9, v11, v12, v13);
      v10 = sflag < 2;
    }

    v14 = DWORD2(v361) - dword_100028AD0;
    if (DWORD2(v361) != dword_100028AD0 || v10)
    {
      v15 = plural(DWORD2(v361) - dword_100028AD0);
      printf("\t\t%u resend%s initiated by MTU discovery\n", v14, v15);
    }

    v16 = v352 - dword_100028A38;
    if (v352 == dword_100028A38 && v349 == dword_100028A08 && sflag > 1)
    {
      v17 = 0;
    }

    else
    {
      v18 = plural(v352 - dword_100028A38);
      printf("\t\t%u ack-only packet%s (%u delayed)\n", v16, v18, v349 - dword_100028A08);
      v17 = sflag < 2;
    }

    v19 = DWORD2(v352) - dword_100028A40;
    if (DWORD2(v352) != dword_100028A40 || v17)
    {
      v20 = plural(DWORD2(v352) - dword_100028A40);
      printf("\t\t%u URG only packet%s\n", v19, v20);
      v17 = sflag < 2;
    }

    v21 = DWORD1(v352) - dword_100028A3C;
    if (DWORD1(v352) != dword_100028A3C || v17)
    {
      v22 = plural(DWORD1(v352) - dword_100028A3C);
      printf("\t\t%u window probe packet%s\n", v21, v22);
      v17 = sflag < 2;
    }

    v23 = HIDWORD(v352) - dword_100028A44;
    if (HIDWORD(v352) != dword_100028A44 || v17)
    {
      v24 = plural(HIDWORD(v352) - dword_100028A44);
      printf("\t\t%u window update packet%s\n", v23, v24);
      v17 = sflag < 2;
    }

    v25 = v353 - dword_100028A48;
    if (v353 != dword_100028A48 || v17)
    {
      v26 = plural(v353 - dword_100028A48);
      printf("\t\t%u control packet%s\n", v25, v26);
      v17 = sflag < 2;
    }

    v27 = DWORD1(v367) - dword_100028B2C;
    if (DWORD1(v367) != dword_100028B2C || v17)
    {
      v28 = plural(DWORD1(v367) - dword_100028B2C);
      printf("\t\t%u data packet%s sent after flow control\n", v27, v28);
      v17 = sflag < 2;
    }

    v29 = v362 - dword_100028AD8;
    if (v362 != dword_100028AD8 || v17)
    {
      v30 = plural(v362 - dword_100028AD8);
      printf("\t\t%u challenge ACK%s sent due to unexpected SYN\n", v29, v30);
      v17 = sflag < 2;
    }

    v31 = DWORD1(v362) - dword_100028ADC;
    if (DWORD1(v362) != dword_100028ADC || v17)
    {
      v32 = plural(DWORD1(v362) - dword_100028ADC);
      printf("\t\t%u challenge ACK%s sent due to unexpected RST\n", v31, v32);
      v17 = sflag < 2;
    }

    v33 = DWORD2(v362) - dword_100028AE0;
    if (DWORD2(v362) != dword_100028AE0 || v17)
    {
      v35 = plural(DWORD2(v362) - dword_100028AE0);
      printf("\t\t%u challenge ACK%s sent due to unexpected RST\n", v33, v35);
      v34 = sflag < 2;
    }

    else
    {
      v34 = 0;
    }

    v36 = DWORD1(v369);
    tcp_stats_t_swcsum = HIDWORD(v369) + DWORD1(v369);
    if (HIDWORD(v369) + DWORD1(v369) != tcp_stats_pt_swcsum || v34)
    {
      printf("\t\t%u checksummed in software\n", HIDWORD(v369) + DWORD1(v369) - tcp_stats_pt_swcsum);
      v36 = DWORD1(v369);
    }

    v37 = v36 - dword_100028B4C;
    if (v36 != dword_100028B4C || DWORD2(v369) != dword_100028B50 || sflag <= 1)
    {
      v38 = plural(v37);
      v39 = DWORD2(v369) - dword_100028B50;
      v40 = plural(DWORD2(v369) - dword_100028B50);
      printf("\t\t\t%u segment%s (%u byte%s) over IPv4\n", v37, v38, v39, v40);
    }

    v41 = HIDWORD(v369) - dword_100028B54;
    if (HIDWORD(v369) == dword_100028B54 && v370 == dword_100028B58 && sflag > 1)
    {
      v42 = 0;
    }

    else
    {
      v43 = plural(HIDWORD(v369) - dword_100028B54);
      v44 = v370 - dword_100028B58;
      v45 = plural(v370 - dword_100028B58);
      printf("\t\t\t%u segment%s (%u byte%s) over IPv6\n", v41, v43, v44, v45);
      v42 = sflag < 2;
    }

    v46 = DWORD1(v353) - dword_100028A4C;
    if (DWORD1(v353) != dword_100028A4C || v42)
    {
      v47 = plural(DWORD1(v353) - dword_100028A4C);
      printf("\t%u packet%s received\n", v46, v47);
    }

    v48 = v358 - dword_100028A98;
    if (v358 == dword_100028A98 && DWORD1(v358) == dword_100028A9C && sflag > 1)
    {
      v49 = 0;
    }

    else
    {
      v50 = plural(v358 - dword_100028A98);
      v51 = DWORD1(v358) - dword_100028A9C;
      v52 = plural(DWORD1(v358) - dword_100028A9C);
      printf("\t\t%u ack%s (for %u byte%s)\n", v48, v50, v51, v52);
      v49 = sflag < 2;
    }

    v53 = DWORD2(v357) - dword_100028A90;
    if (DWORD2(v357) != dword_100028A90 || v49)
    {
      v54 = plural(DWORD2(v357) - dword_100028A90);
      printf("\t\t%u duplicate ack%s\n", v53, v54);
      v49 = sflag < 2;
    }

    v55 = HIDWORD(v357) - dword_100028A94;
    if (HIDWORD(v357) != dword_100028A94 || v49)
    {
      v56 = plural(HIDWORD(v357) - dword_100028A94);
      printf("\t\t%u ack%s for unsent data\n", v55, v56);
    }

    v57 = DWORD2(v353) - qword_100028A50;
    if (*(&v353 + 1) != qword_100028A50 || sflag <= 1)
    {
      v58 = plural(DWORD2(v353) - qword_100028A50);
      v59 = HIDWORD(v353) - HIDWORD(qword_100028A50);
      v60 = plural(HIDWORD(v353) - HIDWORD(qword_100028A50));
      printf("\t\t%u packet%s (%u byte%s) received in-sequence\n", v57, v58, v59, v60);
    }

    v61 = v355 - dword_100028A68;
    if (v355 == dword_100028A68 && DWORD1(v355) == dword_100028A6C && sflag > 1)
    {
      v62 = 0;
    }

    else
    {
      v63 = plural(v355 - dword_100028A68);
      v64 = DWORD1(v355) - dword_100028A6C;
      v65 = plural(DWORD1(v355) - dword_100028A6C);
      printf("\t\t%u completely duplicate packet%s (%u byte%s)\n", v61, v63, v64, v65);
      v62 = sflag < 2;
    }

    v66 = HIDWORD(v358) - dword_100028AA4;
    if (HIDWORD(v358) != dword_100028AA4 || v62)
    {
      v67 = plural(HIDWORD(v358) - dword_100028AA4);
      printf("\t\t%u old duplicate packet%s\n", v66, v67);
      v62 = sflag < 2;
    }

    v68 = DWORD2(v354) - dword_100028A60;
    if (DWORD2(v354) != dword_100028A60 || v62)
    {
      v69 = plural(DWORD2(v354) - dword_100028A60);
      printf("\t\t%u received packet%s dropped due to low memory\n", v68, v69);
    }

    v70 = DWORD2(v355) - dword_100028A70;
    if (DWORD2(v355) != dword_100028A70 || HIDWORD(v355) != dword_100028A74 || sflag <= 1)
    {
      v71 = plural(DWORD2(v355) - dword_100028A70);
      v72 = HIDWORD(v355) - dword_100028A74;
      v73 = plural(HIDWORD(v355) - dword_100028A74);
      printf("\t\t%u packet%s with some dup. data (%u byte%s duped)\n", v70, v71, v72, v73);
    }

    v74 = v356 - dword_100028A78;
    if (v356 != dword_100028A78 || DWORD1(v356) != dword_100028A7C || sflag <= 1)
    {
      v75 = plural(v356 - dword_100028A78);
      v76 = DWORD1(v356) - dword_100028A7C;
      v77 = plural(DWORD1(v356) - dword_100028A7C);
      printf("\t\t%u out-of-order packet%s (%u byte%s)\n", v74, v75, v76, v77);
    }

    v78 = DWORD2(v356) - dword_100028A80;
    if (DWORD2(v356) == dword_100028A80 && HIDWORD(v356) == dword_100028A84 && sflag > 1)
    {
      v79 = 0;
    }

    else
    {
      v80 = plural(DWORD2(v356) - dword_100028A80);
      v81 = HIDWORD(v356) - dword_100028A84;
      v82 = plural(HIDWORD(v356) - dword_100028A84);
      printf("\t\t%u packet%s (%u byte%s) of data after window\n", v78, v80, v81, v82);
      v79 = sflag < 2;
    }

    v83 = DWORD1(v357) - dword_100028A8C;
    if (DWORD1(v357) != dword_100028A8C || v79)
    {
      v84 = plural(DWORD1(v357) - dword_100028A8C);
      printf("\t\t%u window probe%s\n", v83, v84);
      v79 = sflag < 2;
    }

    v85 = DWORD2(v358) - dword_100028AA0;
    if (DWORD2(v358) != dword_100028AA0 || v79)
    {
      v86 = plural(DWORD2(v358) - dword_100028AA0);
      printf("\t\t%u window update packet%s\n", v85, v86);
      v79 = sflag < 2;
    }

    v87 = DWORD2(v374) - dword_100028BA0;
    if (DWORD2(v374) != dword_100028BA0 || v79)
    {
      v88 = plural(DWORD2(v374) - dword_100028BA0);
      printf("\t\t%u packet%s recovered after loss\n", v87, v88);
      v79 = sflag < 2;
    }

    v89 = v357 - dword_100028A88;
    if (v357 != dword_100028A88 || v79)
    {
      v90 = plural(v357 - dword_100028A88);
      printf("\t\t%u packet%s received after close\n", v89, v90);
      v79 = sflag < 2;
    }

    v91 = v363 - dword_100028AE8;
    if (v363 != dword_100028AE8 || v79)
    {
      v92 = plural(v363 - dword_100028AE8);
      printf("\t\t%u bad reset%s\n", v91, v92);
      v79 = sflag < 2;
    }

    v93 = v354 - dword_100028A58;
    if (v354 != dword_100028A58 || v79)
    {
      v95 = plural(v354 - dword_100028A58);
      printf("\t\t%u discarded for bad checksum%s\n", v93, v95);
      v94 = sflag < 2;
    }

    else
    {
      v94 = 0;
    }

    v96 = DWORD1(v368);
    tcp_stats_r_swcsum = HIDWORD(v368) + DWORD1(v368);
    if (HIDWORD(v368) + DWORD1(v368) != tcp_stats_pr_swcsum || v94)
    {
      printf("\t\t%u checksummed in software\n", HIDWORD(v368) + DWORD1(v368) - tcp_stats_pr_swcsum);
      v96 = DWORD1(v368);
    }

    v97 = v96 - dword_100028B3C;
    if (v96 != dword_100028B3C || DWORD2(v368) != dword_100028B40 || sflag <= 1)
    {
      v98 = plural(v97);
      v99 = DWORD2(v368) - dword_100028B40;
      v100 = plural(DWORD2(v368) - dword_100028B40);
      printf("\t\t\t%u segment%s (%u byte%s) over IPv4\n", v97, v98, v99, v100);
    }

    v101 = HIDWORD(v368) - dword_100028B44;
    if (HIDWORD(v368) == dword_100028B44 && v369 == dword_100028B48 && sflag > 1)
    {
      v102 = 0;
    }

    else
    {
      v103 = plural(HIDWORD(v368) - dword_100028B44);
      v104 = v369 - dword_100028B48;
      v105 = plural(v369 - dword_100028B48);
      printf("\t\t\t%u segment%s (%u byte%s) over IPv6\n", v101, v103, v104, v105);
      v102 = sflag < 2;
    }

    v106 = DWORD1(v354) - dword_100028A5C;
    if (DWORD1(v354) != dword_100028A5C || v102)
    {
      v107 = plural(DWORD1(v354) - dword_100028A5C);
      printf("\t\t%u discarded for bad header offset field%s\n", v106, v107);
      v102 = sflag < 2;
    }

    if (HIDWORD(v354) != dword_100028A64 || v102)
    {
      printf("\t\t%u discarded because packet too short\n", HIDWORD(v354) - dword_100028A64);
      v102 = sflag < 2;
    }

    v108 = v347 - tcp_stats_ptcpstat;
    if (v347 != tcp_stats_ptcpstat || v102)
    {
      v109 = plural(v347 - tcp_stats_ptcpstat);
      printf("\t%u connection request%s\n", v108, v109);
      v102 = sflag < 2;
    }

    v110 = DWORD1(v347) - dword_1000289EC;
    if (DWORD1(v347) != dword_1000289EC || v102)
    {
      v111 = plural(DWORD1(v347) - dword_1000289EC);
      printf("\t%u connection accept%s\n", v110, v111);
      v102 = sflag < 2;
    }

    v112 = DWORD1(v361) - dword_100028ACC;
    if (DWORD1(v361) != dword_100028ACC || v102)
    {
      v113 = plural(DWORD1(v361) - dword_100028ACC);
      printf("\t%u bad connection attempt%s\n", v112, v113);
      v102 = sflag < 2;
    }

    v114 = HIDWORD(v361) - dword_100028AD4;
    if (HIDWORD(v361) != dword_100028AD4 || v102)
    {
      v115 = plural(HIDWORD(v361) - dword_100028AD4);
      printf("\t%u listen queue overflow%s\n", v114, v115);
      v102 = sflag < 2;
    }

    v116 = DWORD2(v347) - dword_1000289F0;
    if (DWORD2(v347) != dword_1000289F0 || v102)
    {
      v117 = plural(DWORD2(v347) - dword_1000289F0);
      printf("\t%u connection%s established (including accepts)\n", v116, v117);
    }

    v118 = DWORD1(v348) - dword_1000289FC;
    if (DWORD1(v348) == dword_1000289FC && HIDWORD(v347) == dword_1000289F4 && sflag > 1)
    {
      v119 = 0;
    }

    else
    {
      v120 = plural(DWORD1(v348) - dword_1000289FC);
      v121 = HIDWORD(v347) - dword_1000289F4;
      v122 = plural(HIDWORD(v347) - dword_1000289F4);
      printf("\t%u connection%s closed (including %u drop%s)\n", v118, v120, v121, v122);
      v119 = sflag < 2;
    }

    v123 = DWORD2(v359) - dword_100028AB0;
    if (DWORD2(v359) != dword_100028AB0 || v119)
    {
      v124 = plural(DWORD2(v359) - dword_100028AB0);
      printf("\t\t%u connection%s updated cached RTT on close\n", v123, v124);
      v119 = sflag < 2;
    }

    v125 = HIDWORD(v359) - dword_100028AB4;
    if (HIDWORD(v359) != dword_100028AB4 || v119)
    {
      v126 = plural(HIDWORD(v359) - dword_100028AB4);
      printf("\t\t%u connection%s updated cached RTT variance on close\n", v125, v126);
      v119 = sflag < 2;
    }

    v127 = v360 - dword_100028AB8;
    if (v360 != dword_100028AB8 || v119)
    {
      v128 = plural(v360 - dword_100028AB8);
      printf("\t\t%u connection%s updated cached ssthresh on close\n", v127, v128);
      v119 = sflag < 2;
    }

    v129 = DWORD1(v360) - dword_100028ABC;
    if (DWORD1(v360) != dword_100028ABC || v119)
    {
      v130 = plural(DWORD1(v360) - dword_100028ABC);
      printf("\t\t%u connection%s initialized RTT from route cache\n", v129, v130);
      v119 = sflag < 2;
    }

    v131 = DWORD2(v360) - dword_100028AC0;
    if (DWORD2(v360) != dword_100028AC0 || v119)
    {
      v132 = plural(DWORD2(v360) - dword_100028AC0);
      printf("\t\t%u connection%s initialized RTT variance from route cache\n", v131, v132);
      v119 = sflag < 2;
    }

    v133 = HIDWORD(v360) - dword_100028AC4;
    if (HIDWORD(v360) != dword_100028AC4 || v119)
    {
      v134 = plural(HIDWORD(v360) - dword_100028AC4);
      printf("\t\t%u connection%s initialized ssthresh from route cache\n", v133, v134);
      v119 = sflag < 2;
    }

    v135 = v348 - dword_1000289F8;
    if (v348 != dword_1000289F8 || v119)
    {
      v136 = plural(v348 - dword_1000289F8);
      printf("\t%u embryonic connection%s dropped\n", v135, v136);
    }

    v137 = HIDWORD(v348) - HIDWORD(qword_100028A00);
    if (*(&v348 + 1) == qword_100028A00 && sflag > 1)
    {
      v138 = 0;
    }

    else
    {
      v139 = plural(HIDWORD(v348) - HIDWORD(qword_100028A00));
      v140 = DWORD2(v348) - qword_100028A00;
      v141 = plural(DWORD2(v348) - qword_100028A00);
      printf("\t%u segment%s updated rtt (of %u attempt%s)\n", v137, v139, v140, v141);
      v138 = sflag < 2;
    }

    v142 = DWORD2(v349) - dword_100028A10;
    if (DWORD2(v349) != dword_100028A10 || v138)
    {
      v143 = plural(DWORD2(v349) - dword_100028A10);
      printf("\t%u retransmit timeout%s\n", v142, v143);
      v138 = sflag < 2;
    }

    v144 = DWORD1(v349) - dword_100028A0C;
    if (DWORD1(v349) != dword_100028A0C || v138)
    {
      v145 = plural(DWORD1(v349) - dword_100028A0C);
      printf("\t\t%u connection%s dropped by rexmit timeout\n", v144, v145);
      v138 = sflag < 2;
    }

    v146 = v367 - dword_100028B28;
    if (v367 != dword_100028B28 || v138)
    {
      v147 = plural(v367 - dword_100028B28);
      printf("\t\t%u connection%s dropped after retransmitting FIN\n", v146, v147);
      v138 = sflag < 2;
    }

    v148 = HIDWORD(v362) - dword_100028AE4;
    if (HIDWORD(v362) != dword_100028AE4 || v138)
    {
      v149 = plural(HIDWORD(v362) - dword_100028AE4);
      printf("\t\t%u unnecessary packet retransmissions%s\n", v148, v149);
      v138 = sflag < 2;
    }

    v150 = HIDWORD(v349) - dword_100028A14;
    if (HIDWORD(v349) != dword_100028A14 || v138)
    {
      v151 = plural(HIDWORD(v349) - dword_100028A14);
      printf("\t%u persist timeout%s\n", v150, v151);
      v138 = sflag < 2;
    }

    v152 = v361 - dword_100028AC8;
    if (v361 != dword_100028AC8 || v138)
    {
      v153 = plural(v361 - dword_100028AC8);
      printf("\t\t%u connection%s dropped by persist timeout\n", v152, v153);
      v138 = sflag < 2;
    }

    v154 = v350 - dword_100028A18;
    if (v350 != dword_100028A18 || v138)
    {
      v155 = plural(v350 - dword_100028A18);
      printf("\t%u keepalive timeout%s\n", v154, v155);
      v138 = sflag < 2;
    }

    v156 = DWORD1(v350) - dword_100028A1C;
    if (DWORD1(v350) != dword_100028A1C || v138)
    {
      v157 = plural(DWORD1(v350) - dword_100028A1C);
      printf("\t\t%u keepalive probe%s sent\n", v156, v157);
      v138 = sflag < 2;
    }

    v158 = DWORD2(v350) - dword_100028A20;
    if (DWORD2(v350) != dword_100028A20 || v138)
    {
      v159 = plural(DWORD2(v350) - dword_100028A20);
      printf("\t\t%u connection%s dropped by keepalive\n", v158, v159);
      v138 = sflag < 2;
    }

    v160 = v430 - dword_100028D5C;
    if (v430 != dword_100028D5C || v138)
    {
      v161 = plural(v430 - dword_100028D5C);
      printf("\t\t%u connection%s dropped by keepalive offload\n", v160, v161);
      v138 = sflag < 2;
    }

    v162 = v359 - dword_100028AA8;
    if (v359 != dword_100028AA8 || v138)
    {
      v163 = plural(v359 - dword_100028AA8);
      printf("\t%u correct ACK header prediction%s\n", v162, v163);
      v138 = sflag < 2;
    }

    v164 = DWORD1(v359) - dword_100028AAC;
    if (DWORD1(v359) != dword_100028AAC || v138)
    {
      v165 = plural(DWORD1(v359) - dword_100028AAC);
      printf("\t%u correct data packet header prediction%s\n", v164, v165);
      v138 = sflag < 2;
    }

    v166 = DWORD2(v364) - dword_100028B00;
    if (DWORD2(v364) != dword_100028B00 || v138)
    {
      v167 = plural(DWORD2(v364) - dword_100028B00);
      printf("\t%u SACK recovery episode%s\n", v166, v167);
      v138 = sflag < 2;
    }

    v168 = HIDWORD(v364) - dword_100028B04;
    if (HIDWORD(v364) != dword_100028B04 || v138)
    {
      v169 = plural(HIDWORD(v364) - dword_100028B04);
      printf("\t%u segment rexmit%s in SACK recovery episodes\n", v168, v169);
      v138 = sflag < 2;
    }

    v170 = v365 - dword_100028B08;
    if (v365 != dword_100028B08 || v138)
    {
      v171 = plural(v365 - dword_100028B08);
      printf("\t%u byte rexmit%s in SACK recovery episodes\n", v170, v171);
      v138 = sflag < 2;
    }

    v172 = DWORD1(v365) - dword_100028B0C;
    if (DWORD1(v365) != dword_100028B0C || v138)
    {
      v173 = plural(DWORD1(v365) - dword_100028B0C);
      printf("\t%u SACK option%s (SACK blocks) received\n", v172, v173);
      v138 = sflag < 2;
    }

    v174 = DWORD2(v365) - dword_100028B10;
    if (DWORD2(v365) != dword_100028B10 || v138)
    {
      v175 = plural(DWORD2(v365) - dword_100028B10);
      printf("\t%u SACK option%s (SACK blocks) sent\n", v174, v175);
      v138 = sflag < 2;
    }

    if (HIDWORD(v365) != dword_100028B14 || v138)
    {
      printf("\t%u SACK scoreboard overflow\n", HIDWORD(v365) - dword_100028B14);
      v138 = sflag < 2;
    }

    v176 = DWORD2(v366) - dword_100028B20;
    if (DWORD2(v366) != dword_100028B20 || v138)
    {
      v177 = plural(DWORD2(v366) - dword_100028B20);
      printf("\t%u segment%s retransmitted in RACK recovery episodes\n", v176, v177);
      v138 = sflag < 2;
    }

    v178 = v366 - dword_100028B18;
    if (v366 != dword_100028B18 || v138)
    {
      v179 = plural(v366 - dword_100028B18);
      printf("\t%u RACK recovery episode%s\n", v178, v179);
      v138 = sflag < 2;
    }

    v180 = DWORD1(v366) - dword_100028B1C;
    if (DWORD1(v366) != dword_100028B1C || v138)
    {
      v181 = plural(DWORD1(v366) - dword_100028B1C);
      printf("\t%u RACK recovery episode%s due to reordering timeout\n", v180, v181);
      v138 = sflag < 2;
    }

    v182 = DWORD2(v367) - dword_100028B30;
    if (DWORD2(v367) != dword_100028B30 || v138)
    {
      v183 = plural(DWORD2(v367) - dword_100028B30);
      printf("\t%u limited transmit%s done\n", v182, v183);
      v138 = sflag < 2;
    }

    v184 = HIDWORD(v367) - dword_100028B34;
    if (HIDWORD(v367) != dword_100028B34 || v138)
    {
      v185 = plural(HIDWORD(v367) - dword_100028B34);
      printf("\t%u early retransmit%s done\n", v184, v185);
      v138 = sflag < 2;
    }

    v186 = v368 - dword_100028B38;
    if (v368 != dword_100028B38 || v138)
    {
      v187 = plural(v368 - dword_100028B38);
      printf("\t%u time%s cumulative ack advanced along with SACK\n", v186, v187);
      v138 = sflag < 2;
    }

    v188 = HIDWORD(v374) - dword_100028BA4;
    if (HIDWORD(v374) != dword_100028BA4 || v138)
    {
      v189 = plural(HIDWORD(v374) - dword_100028BA4);
      printf("\t%u probe timeout%s\n", v188, v189);
      v138 = sflag < 2;
    }

    v190 = v375 - dword_100028BA8;
    if (v375 != dword_100028BA8 || v138)
    {
      v191 = plural(v375 - dword_100028BA8);
      printf("\t\t%u time%s retransmit timeout triggered after probe\n", v190, v191);
      v138 = sflag < 2;
    }

    v192 = v380 - dword_100028BFC;
    if (v380 != dword_100028BFC || v138)
    {
      v193 = plural(v380 - dword_100028BFC);
      printf("\t\t%u time%s probe packets were sent for an interface\n", v192, v193);
      v138 = sflag < 2;
    }

    v194 = v381 - dword_100028C00;
    if (v381 != dword_100028C00 || v138)
    {
      v195 = plural(v381 - dword_100028C00);
      printf("\t\t%u time%s couldn't send probe packets for an interface\n", v194, v195);
      v138 = sflag < 2;
    }

    v196 = DWORD1(v375) - dword_100028BAC;
    if (DWORD1(v375) != dword_100028BAC || v138)
    {
      v197 = plural(DWORD1(v375) - dword_100028BAC);
      printf("\t\t%u time%s fast recovery after tail loss\n", v196, v197);
      v138 = sflag < 2;
    }

    v198 = DWORD2(v375) - dword_100028BB0;
    if (DWORD2(v375) != dword_100028BB0 || v138)
    {
      v199 = plural(DWORD2(v375) - dword_100028BB0);
      printf("\t\t%u time%s recovered last packet \n", v198, v199);
      v138 = sflag < 2;
    }

    v200 = DWORD1(v377) - dword_100028BCC;
    if (DWORD1(v377) != dword_100028BCC || v138)
    {
      v201 = plural(DWORD1(v377) - dword_100028BCC);
      printf("\t\t%u SACK based rescue retransmit%s\n", v200, v201);
      v138 = sflag < 2;
    }

    v202 = v382 - dword_100028C04;
    if (v382 != dword_100028C04 || v138)
    {
      v203 = plural(v382 - dword_100028C04);
      printf("\t%u client connection%s attempted to negotiate ECN\n", v202, v203);
      v138 = sflag < 2;
    }

    v204 = HIDWORD(v375) - dword_100028BB4;
    if (HIDWORD(v375) != dword_100028BB4 || v138)
    {
      v205 = plural(HIDWORD(v375) - dword_100028BB4);
      printf("\t\t%u client connection%s successfully negotiated ECN\n", v204, v205);
      v138 = sflag < 2;
    }

    v206 = v391 - dword_100028C28;
    if (v391 != dword_100028C28 || v138)
    {
      v207 = plural(v391 - dword_100028C28);
      printf("\t\t%u time%s graceful fallback to Non-ECN connection\n", v206, v207);
      v138 = sflag < 2;
    }

    v208 = v390 - dword_100028C24;
    if (v390 != dword_100028C24 || v138)
    {
      v209 = plural(v390 - dword_100028C24);
      printf("\t\t%u time%s lost ECN negotiating SYN, followed by retransmission\n", v208, v209);
      v138 = sflag < 2;
    }

    v210 = v383 - dword_100028C08;
    if (v383 != dword_100028C08 || v138)
    {
      v211 = plural(v383 - dword_100028C08);
      printf("\t\t%u server connection%s attempted to negotiate ECN\n", v210, v211);
      v138 = sflag < 2;
    }

    v212 = v384 - dword_100028C0C;
    if (v384 != dword_100028C0C || v138)
    {
      v213 = plural(v384 - dword_100028C0C);
      printf("\t\t%u server connection%s successfully negotiated ECN\n", v212, v213);
      v138 = sflag < 2;
    }

    v214 = v389 - dword_100028C20;
    if (v389 != dword_100028C20 || v138)
    {
      v215 = plural(v389 - dword_100028C20);
      printf("\t\t%u time%s lost ECN negotiating SYN-ACK, followed by retransmission\n", v214, v215);
      v138 = sflag < 2;
    }

    v216 = v392 - dword_100028C2C;
    if (v392 != dword_100028C2C || v138)
    {
      v217 = plural(v392 - dword_100028C2C);
      printf("\t\t%u time%s received congestion experienced (CE) notification\n", v216, v217);
      v138 = sflag < 2;
    }

    v218 = v376 - dword_100028BB8;
    if (v376 != dword_100028BB8 || v138)
    {
      v219 = plural(v376 - dword_100028BB8);
      printf("\t\t%u time%s CWR was sent in response to ECE\n", v218, v219);
      v138 = sflag < 2;
    }

    v220 = DWORD1(v376) - dword_100028BBC;
    if (DWORD1(v376) != dword_100028BBC || v138)
    {
      v221 = plural(DWORD1(v376) - dword_100028BBC);
      printf("\t\t%u time%s sent ECE notification\n", v220, v221);
      v138 = sflag < 2;
    }

    v222 = v394 - dword_100028C34;
    if (v394 != dword_100028C34 || v138)
    {
      v223 = plural(v394 - dword_100028C34);
      printf("\t\t%u connection%s received CE atleast once\n", v222, v223);
      v138 = sflag < 2;
    }

    v224 = v395 - dword_100028C38;
    if (v395 != dword_100028C38 || v138)
    {
      v225 = plural(v395 - dword_100028C38);
      printf("\t\t%u connection%s received ECE atleast once\n", v224, v225);
      v138 = sflag < 2;
    }

    v226 = v396 - dword_100028C3C;
    if (v396 != dword_100028C3C || v138)
    {
      v227 = plural(v396 - dword_100028C3C);
      printf("\t\t%u connection%s using ECN have seen packet loss but no CE\n", v226, v227);
      v138 = sflag < 2;
    }

    v228 = v397 - dword_100028C40;
    if (v397 != dword_100028C40 || v138)
    {
      v229 = plural(v397 - dword_100028C40);
      printf("\t\t%u connection%s using ECN have seen packet loss and CE\n", v228, v229);
      v138 = sflag < 2;
    }

    v230 = v398 - dword_100028C44;
    if (v398 != dword_100028C44 || v138)
    {
      v231 = plural(v398 - dword_100028C44);
      printf("\t\t%u connection%s using ECN received CE but no packet loss\n", v230, v231);
      v138 = sflag < 2;
    }

    v232 = v399 - dword_100028C48;
    if (v399 != dword_100028C48 || v138)
    {
      v233 = plural(v399 - dword_100028C48);
      printf("\t\t%u connection%s fell back to non-ECN due to SYN-loss\n", v232, v233);
      v138 = sflag < 2;
    }

    v234 = v400 - dword_100028C4C;
    if (v400 != dword_100028C4C || v138)
    {
      v235 = plural(v400 - dword_100028C4C);
      printf("\t\t%u connection%s fell back to non-ECN due to reordering\n", v234, v235);
      v138 = sflag < 2;
    }

    v236 = v401 - dword_100028C50;
    if (v401 != dword_100028C50 || v138)
    {
      v237 = plural(v401 - dword_100028C50);
      printf("\t\t%u connection%s fell back to non-ECN due to excessive CE-markings\n", v236, v237);
      v138 = sflag < 2;
    }

    v238 = v419 - dword_100028C98;
    if (v419 != dword_100028C98 || v138)
    {
      v239 = plural(v419 - dword_100028C98);
      printf("\t\t%u connection%s fell back caused by connection drop due to RST\n", v238, v239);
      v138 = sflag < 2;
    }

    v240 = v420 - dword_100028C9C;
    if (v420 != dword_100028C9C || v138)
    {
      v241 = plural(v420 - dword_100028C9C);
      printf("\t\t%u connection%s fell back due to drop after multiple retransmits \n", v240, v241);
      v138 = sflag < 2;
    }

    v242 = v385 - dword_100028C10;
    if (v385 != dword_100028C10 || v138)
    {
      v243 = plural(v385 - dword_100028C10);
      printf("\t\t%u time%s received AccECN SYN packet with Not-ECT\n", v242, v243);
      v138 = sflag < 2;
    }

    v244 = v386 - dword_100028C14;
    if (v386 != dword_100028C14 || v138)
    {
      v245 = plural(v386 - dword_100028C14);
      printf("\t\t%u time%s received AccECN SYN packet with ECT1\n", v244, v245);
      v138 = sflag < 2;
    }

    v246 = v387 - dword_100028C18;
    if (v387 != dword_100028C18 || v138)
    {
      v247 = plural(v387 - dword_100028C18);
      printf("\t\t%u time%s received AccECN SYN packet with ECT0\n", v246, v247);
      v138 = sflag < 2;
    }

    v248 = v388 - dword_100028C1C;
    if (v388 != dword_100028C1C || v138)
    {
      v249 = plural(v388 - dword_100028C1C);
      printf("\t\t%u time%s received AccECN SYN packet with CE\n", v248, v249);
      v138 = sflag < 2;
    }

    v250 = v393 - dword_100028C30;
    if (v393 != dword_100028C30 || v138)
    {
      v251 = plural(v393 - dword_100028C30);
      printf("\t\t%u time%s CE received in ACE field\n", v250, v251);
      v138 = sflag < 2;
    }

    v252 = DWORD2(v376) - dword_100028BC0;
    if (DWORD2(v376) != dword_100028BC0 || v138)
    {
      v253 = plural(DWORD2(v376) - dword_100028BC0);
      printf("\t%u time%s packet reordering was detected on a connection\n", v252, v253);
      v138 = sflag < 2;
    }

    v254 = DWORD1(v374) - dword_100028B9C;
    if (DWORD1(v374) != dword_100028B9C || v138)
    {
      v255 = plural(DWORD1(v374) - dword_100028B9C);
      printf("\t\t%u time%s transmitted packets were reordered\n", v254, v255);
      v138 = sflag < 2;
    }

    v256 = HIDWORD(v376) - dword_100028BC4;
    if (HIDWORD(v376) != dword_100028BC4 || v138)
    {
      v257 = plural(HIDWORD(v376) - dword_100028BC4);
      printf("\t\t%u time%s fast recovery was delayed to handle reordering\n", v256, v257);
      v138 = sflag < 2;
    }

    v258 = v377 - dword_100028BC8;
    if (v377 != dword_100028BC8 || v138)
    {
      v259 = plural(v377 - dword_100028BC8);
      printf("\t\t%u time%s retransmission was avoided by delaying recovery\n", v258, v259);
      v138 = sflag < 2;
    }

    v260 = v374 - dword_100028B98;
    if (v374 != dword_100028B98 || v138)
    {
      v261 = plural(v374 - dword_100028B98);
      printf("\t%u retransmission%s due to tail loss\n", v260, v261);
      v138 = sflag < 2;
    }

    v262 = DWORD1(v378) - dword_100028BDC;
    if (DWORD1(v378) != dword_100028BDC || v138)
    {
      v263 = plural(DWORD1(v378) - dword_100028BDC);
      printf("\t%u time%s DSACK option was sent\n", v262, v263);
      v138 = sflag < 2;
    }

    v264 = DWORD2(v378) - dword_100028BE0;
    if (DWORD2(v378) != dword_100028BE0 || v138)
    {
      v265 = plural(DWORD2(v378) - dword_100028BE0);
      printf("\t\t%u time%s DSACK option was received\n", v264, v265);
      v138 = sflag < 2;
    }

    v266 = v378 - dword_100028BD8;
    if (v378 != dword_100028BD8 || v138)
    {
      v267 = plural(v378 - dword_100028BD8);
      printf("\t\t%u time%s recovered from bad retransmission using DSACK\n", v266, v267);
      v138 = sflag < 2;
    }

    v268 = HIDWORD(v377) - dword_100028BD4;
    if (HIDWORD(v377) != dword_100028BD4 || v138)
    {
      v269 = plural(HIDWORD(v377) - dword_100028BD4);
      printf("\t\t%u time%s ignored DSACK due to ack loss\n", v268, v269);
      v138 = sflag < 2;
    }

    v270 = HIDWORD(v378) - dword_100028BE4;
    if (HIDWORD(v378) != dword_100028BE4 || v138)
    {
      v271 = plural(HIDWORD(v378) - dword_100028BE4);
      printf("\t\t%u time%s ignored old DSACK options\n", v270, v271);
      v138 = sflag < 2;
    }

    v272 = DWORD2(v377) - dword_100028BD0;
    if (DWORD2(v377) != dword_100028BD0 || v138)
    {
      v273 = plural(DWORD2(v377) - dword_100028BD0);
      printf("\t%u time%s PMTU Blackhole detection, size reverted\n", v272, v273);
      v138 = sflag < 2;
    }

    v274 = v379 - dword_100028BF8;
    if (v379 != dword_100028BF8 || v138)
    {
      v275 = plural(v379 - dword_100028BF8);
      printf("\t%u connection%s were dropped after long sleep\n", v274, v275);
      v138 = sflag < 2;
    }

    v276 = v404 - dword_100028C5C;
    if (v404 != dword_100028C5C || v138)
    {
      v277 = plural(v404 - dword_100028C5C);
      printf("\t%u time%s a TFO-cookie has been announced\n", v276, v277);
      v138 = sflag < 2;
    }

    v278 = v402 - dword_100028C54;
    if (v402 != dword_100028C54 || v138)
    {
      v279 = plural(v402 - dword_100028C54);
      printf("\t%u SYN%s with data and a valid TFO-cookie have been received\n", v278, v279);
      v138 = sflag < 2;
    }

    v280 = v403 - dword_100028C58;
    if (v403 != dword_100028C58 || v138)
    {
      v281 = plural(v403 - dword_100028C58);
      printf("\t%u SYN%s with TFO-cookie-request received\n", v280, v281);
      v138 = sflag < 2;
    }

    v282 = v405 - dword_100028C60;
    if (v405 != dword_100028C60 || v138)
    {
      v283 = plural(v405 - dword_100028C60);
      printf("\t%u time%s an invalid TFO-cookie has been received\n", v282, v283);
      v138 = sflag < 2;
    }

    v284 = v406 - dword_100028C64;
    if (v406 != dword_100028C64 || v138)
    {
      v285 = plural(v406 - dword_100028C64);
      printf("\t%u time%s we requested a TFO-cookie\n", v284, v285);
      v138 = sflag < 2;
    }

    v286 = v407 - dword_100028C68;
    if (v407 != dword_100028C68 || v138)
    {
      v287 = plural(v407 - dword_100028C68);
      printf("\t\t%u time%s the peer announced a TFO-cookie\n", v286, v287);
      v138 = sflag < 2;
    }

    v288 = v408 - dword_100028C6C;
    if (v408 != dword_100028C6C || v138)
    {
      v289 = plural(v408 - dword_100028C6C);
      printf("\t%u time%s we combined SYN with data and a TFO-cookie\n", v288, v289);
      v138 = sflag < 2;
    }

    v290 = v409 - dword_100028C70;
    if (v409 != dword_100028C70 || v138)
    {
      v291 = plural(v409 - dword_100028C70);
      printf("\t\t%u time%s our SYN with data has been acknowledged\n", v290, v291);
      v138 = sflag < 2;
    }

    v292 = v410 - dword_100028C74;
    if (v410 != dword_100028C74 || v138)
    {
      v293 = plural(v410 - dword_100028C74);
      printf("\t%u time%s a connection-attempt with TFO fell back to regular TCP\n", v292, v293);
      v138 = sflag < 2;
    }

    v294 = v411 - dword_100028C78;
    if (v411 != dword_100028C78 || v138)
    {
      v295 = plural(v411 - dword_100028C78);
      printf("\t%u time%s a TFO-connection blackhole'd\n", v294, v295);
      v138 = sflag < 2;
    }

    v296 = v412 - dword_100028C7C;
    if (v412 != dword_100028C7C || v138)
    {
      v297 = plural(v412 - dword_100028C7C);
      printf("\t%u time%s a TFO-cookie we sent was wrong\n", v296, v297);
      v138 = sflag < 2;
    }

    v298 = v413 - dword_100028C80;
    if (v413 != dword_100028C80 || v138)
    {
      v299 = plural(v413 - dword_100028C80);
      printf("\t%u time%s did not received a TFO-cookie we asked for\n", v298, v299);
      v138 = sflag < 2;
    }

    v300 = v414 - dword_100028C84;
    if (v414 != dword_100028C84 || v138)
    {
      v301 = plural(v414 - dword_100028C84);
      printf("\t%u time%s TFO got disabled due to heuristicsn\n", v300, v301);
      v138 = sflag < 2;
    }

    v302 = v415 - dword_100028C88;
    if (v415 != dword_100028C88 || v138)
    {
      v303 = plural(v415 - dword_100028C88);
      printf("\t%u time%s TFO got blackholed in the sending direction\n", v302, v303);
      v138 = sflag < 2;
    }

    v304 = v416 - dword_100028C8C;
    if (v416 != dword_100028C8C || v138)
    {
      v305 = plural(v416 - dword_100028C8C);
      printf("\t%u time%s maximum segment size was changed to default\n", v304, v305);
      v138 = sflag < 2;
    }

    v306 = v417 - dword_100028C90;
    if (v417 != dword_100028C90 || v138)
    {
      v307 = plural(v417 - dword_100028C90);
      printf("\t%u time%s maximum segment size was changed to medium\n", v306, v307);
      v138 = sflag < 2;
    }

    v308 = v418 - dword_100028C94;
    if (v418 != dword_100028C94 || v138)
    {
      v309 = plural(v418 - dword_100028C94);
      printf("\t%u time%s maximum segment size was changed to low\n", v308, v309);
      v138 = sflag < 2;
    }

    v310 = v421 - dword_100028CB0;
    if (v421 != dword_100028CB0 || v138)
    {
      v311 = plural(v421 - dword_100028CB0);
      printf("\t%u timer drift%s less or equal to 1 ms\n", v310, v311);
      v138 = sflag < 2;
    }

    v312 = v422 - dword_100028CB4;
    if (v422 != dword_100028CB4 || v138)
    {
      v313 = plural(v422 - dword_100028CB4);
      printf("\t%u timer drift%s less or equal to 10 ms\n", v312, v313);
      v138 = sflag < 2;
    }

    v314 = v423 - dword_100028CB8;
    if (v423 != dword_100028CB8 || v138)
    {
      v315 = plural(v423 - dword_100028CB8);
      printf("\t%u timer drift%s less or equal to 20 ms\n", v314, v315);
      v138 = sflag < 2;
    }

    v316 = v424 - dword_100028CBC;
    if (v424 != dword_100028CBC || v138)
    {
      v317 = plural(v424 - dword_100028CBC);
      printf("\t%u timer drift%s less or equal to 50 ms\n", v316, v317);
      v138 = sflag < 2;
    }

    v318 = v425 - dword_100028CC0;
    if (v425 != dword_100028CC0 || v138)
    {
      v319 = plural(v425 - dword_100028CC0);
      printf("\t%u timer drift%s less or equal to 100 ms\n", v318, v319);
      v138 = sflag < 2;
    }

    v320 = v426 - dword_100028CC4;
    if (v426 != dword_100028CC4 || v138)
    {
      v321 = plural(v426 - dword_100028CC4);
      printf("\t%u timer drift%s less or equal to 200 ms\n", v320, v321);
      v138 = sflag < 2;
    }

    v322 = v427 - dword_100028CC8;
    if (v427 != dword_100028CC8 || v138)
    {
      v323 = plural(v427 - dword_100028CC8);
      printf("\t%u timer drift%s less or equal to 500 ms\n", v322, v323);
      v138 = sflag < 2;
    }

    v324 = v428 - dword_100028CCC;
    if (v428 != dword_100028CCC || v138)
    {
      v325 = plural(v428 - dword_100028CCC);
      printf("\t%u timer drift%s less or equal to 1000 ms\n", v324, v325);
      v138 = sflag < 2;
    }

    v326 = v429 - dword_100028CD0;
    if (v429 != dword_100028CD0 || v138)
    {
      v327 = plural(v429 - dword_100028CD0);
      printf("\t%u timer drift%s greater than to 1000 ms\n", v326, v327);
      v138 = sflag < 2;
    }

    v328 = v431 - dword_100028D64;
    if (v431 != dword_100028D64 || v138)
    {
      v329 = plural(v431 - dword_100028D64);
      printf("\t%u FIN_WAIT timeout drop%s\n", v328, v329);
      v138 = sflag < 2;
    }

    v330 = DWORD1(v363) - dword_100028AEC;
    if (DWORD1(v363) != dword_100028AEC || v138)
    {
      v331 = plural(DWORD1(v363) - dword_100028AEC);
      printf("\t%u time%s could not reply to packet\n", v330, v331);
      v138 = sflag < 2;
    }

    if (DWORD2(v363) != dword_100028AF0 || v138)
    {
      if (DWORD2(v363) - dword_100028AF0 == 1)
      {
        v332 = "y";
      }

      else
      {
        v332 = "ies";
      }

      printf("\t%u successful extraction of entr%s\n", DWORD2(v363) - dword_100028AF0, v332);
      v138 = sflag < 2;
    }

    if (HIDWORD(v363) != dword_100028AF4 || v138)
    {
      if (HIDWORD(v363) - dword_100028AF4 == 1)
      {
        v333 = "y";
      }

      else
      {
        v333 = "ies";
      }

      printf("\t%u syncache entr%s aborted\n", HIDWORD(v363) - dword_100028AF4, v333);
      v138 = sflag < 2;
    }

    v334 = v364 - dword_100028AF8;
    if (v364 != dword_100028AF8 || v138)
    {
      v335 = plural(v364 - dword_100028AF8);
      printf("\t%u SYN cookie%s sent\n", v334, v335);
    }

    v336 = DWORD1(v364) - dword_100028AFC;
    if (DWORD1(v364) == dword_100028AFC && sflag > 1)
    {
      v337 = 0;
    }

    else
    {
      v338 = plural(DWORD1(v364) - dword_100028AFC);
      printf("\t%u SYN cookie%s received\n", v336, v338);
      v337 = sflag < 2;
    }

    v339 = v432 - qword_100028D68;
    if (v432 != qword_100028D68 || v337)
    {
      v340 = plural(v432 - qword_100028D68);
      printf("\t%llu duplicate RST packet%s for port unreachable suppressed\n", v339, v340);
      v337 = sflag < 2;
    }

    v341 = v433 - qword_100028D70;
    if (v433 != qword_100028D70 || v337)
    {
      v342 = plural(v433 - qword_100028D70);
      printf("\t%llu RST packet%s for port unreachable not suppressed\n", v341, v342);
    }

    if (interval >= 1)
    {
      __memmove_chk();
      tcp_stats_pr_swcsum = tcp_stats_r_swcsum;
      tcp_stats_pt_swcsum = tcp_stats_t_swcsum;
    }

    v346 = 4;
    if (sysctlbyname("net.inet.tcp.pcbcount", &v345, &v346, 0, 0) != -1)
    {
      v343 = v345;
      if (v345 || sflag <= 1)
      {
        v344 = plural(v345);
        printf("\t%u open TCP socket%s\n", v343, v344);
      }
    }
  }
}

void mptcp_stats(uint64_t a1, const char *a2)
{
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  v93 = 912;
  v92 = 0;
  if (sysctlbyname("net.inet.tcp.stats", v94, &v93, 0, 0) < 0)
  {
    warn("sysctl: net.inet.tcp.stats");
  }

  else if (!mptcp_done || interval)
  {
    mptcp_done = 1;
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v3 = DWORD1(v98) - dword_100028F2C;
    if (DWORD1(v98) == dword_100028F2C && sflag > 1)
    {
      v4 = 0;
    }

    else
    {
      v5 = plural(DWORD1(v98) - dword_100028F2C);
      printf("\t%u data packet%s sent\n", v3, v5);
      v4 = sflag < 2;
    }

    v6 = DWORD2(v98) - dword_100028F30;
    if (DWORD2(v98) != dword_100028F30 || v4)
    {
      v7 = plural(DWORD2(v98) - dword_100028F30);
      printf("\t%u data byte%s sent\n", v6, v7);
      v4 = sflag < 2;
    }

    v8 = HIDWORD(v97) - dword_100028F24;
    if (HIDWORD(v97) != dword_100028F24 || v4)
    {
      v9 = plural(HIDWORD(v97) - dword_100028F24);
      printf("\t%u data packet%s received\n", v8, v9);
      v4 = sflag < 2;
    }

    v10 = v98 - dword_100028F28;
    if (v98 != dword_100028F28 || v4)
    {
      v11 = plural(v98 - dword_100028F28);
      printf("\t%u data byte%s received\n", v10, v11);
      v4 = sflag < 2;
    }

    v12 = DWORD1(v95) - dword_100028EFC;
    if (DWORD1(v95) != dword_100028EFC || v4)
    {
      v13 = plural(DWORD1(v95) - dword_100028EFC);
      printf("\t%u packet%s with an invalid MPCAP option\n", v12, v13);
      v4 = sflag < 2;
    }

    v14 = DWORD2(v95) - dword_100028F00;
    if (DWORD2(v95) != dword_100028F00 || v4)
    {
      v15 = plural(DWORD2(v95) - dword_100028F00);
      printf("\t%u packet%s with an invalid MPJOIN option\n", v14, v15);
      v4 = sflag < 2;
    }

    v16 = HIDWORD(v95) - dword_100028F04;
    if (HIDWORD(v95) != dword_100028F04 || v4)
    {
      v17 = plural(HIDWORD(v95) - dword_100028F04);
      printf("\t%u time%s primary subflow fell back to TCP\n", v16, v17);
      v4 = sflag < 2;
    }

    v18 = v96 - dword_100028F08;
    if (v96 != dword_100028F08 || v4)
    {
      v19 = plural(v96 - dword_100028F08);
      printf("\t%u time%s secondary subflow fell back to TCP\n", v18, v19);
      v4 = sflag < 2;
    }

    v20 = DWORD1(v96) - dword_100028F0C;
    if (DWORD1(v96) != dword_100028F0C || v4)
    {
      v21 = plural(DWORD1(v96) - dword_100028F0C);
      printf("\t%u DSS option drop%s\n", v20, v21);
      v4 = sflag < 2;
    }

    v22 = DWORD2(v96) - dword_100028F10;
    if (DWORD2(v96) != dword_100028F10 || v4)
    {
      v23 = plural(DWORD2(v96) - dword_100028F10);
      printf("\t%u other invalid MPTCP option%s\n", v22, v23);
      v4 = sflag < 2;
    }

    v24 = HIDWORD(v96) - dword_100028F14;
    if (HIDWORD(v96) != dword_100028F14 || v4)
    {
      v25 = plural(HIDWORD(v96) - dword_100028F14);
      printf("\t%u time%s the MPTCP subflow window was reduced\n", v24, v25);
      v4 = sflag < 2;
    }

    v26 = v97 - dword_100028F18;
    if (v97 != dword_100028F18 || v4)
    {
      v27 = plural(v97 - dword_100028F18);
      printf("\t%u bad DSS checksum%s\n", v26, v27);
      v4 = sflag < 2;
    }

    v28 = DWORD1(v97) - dword_100028F1C;
    if (DWORD1(v97) != dword_100028F1C || v4)
    {
      v29 = plural(DWORD1(v97) - dword_100028F1C);
      printf("\t%u time%s received out of order data \n", v28, v29);
      v4 = sflag < 2;
    }

    v30 = DWORD2(v97) - dword_100028F20;
    if (DWORD2(v97) != dword_100028F20 || v4)
    {
      v31 = plurales(DWORD2(v97) - dword_100028F20);
      printf("\t%u subflow switch%s\n", v30, v31);
      v4 = sflag < 2;
    }

    v32 = v104 - dword_100028F88;
    if (v104 != dword_100028F88 || v4)
    {
      v33 = plurales(v104 - dword_100028F88);
      printf("\t%u subflow switch%s due to rtt\n", v32, v33);
      v4 = sflag < 2;
    }

    v34 = v105 - dword_100028F8C;
    if (v105 != dword_100028F8C || v4)
    {
      v35 = plurales(v105 - dword_100028F8C);
      printf("\t%u subflow switch%s due to rto\n", v34, v35);
      v4 = sflag < 2;
    }

    v36 = v106 - dword_100028F90;
    if (v106 != dword_100028F90 || v4)
    {
      v37 = plurales(v106 - dword_100028F90);
      printf("\t%u number of subflow probe%s\n", v36, v37);
      v4 = sflag < 2;
    }

    v38 = HIDWORD(v98) - dword_100028F34;
    if (HIDWORD(v98) != dword_100028F34 || v4)
    {
      v39 = plurales(HIDWORD(v98) - dword_100028F34);
      printf("\t%u number of join ack retransmits%s\n", v38, v39);
      v4 = sflag < 2;
    }

    v40 = v107 - dword_100029044;
    if (v107 != dword_100029044 || v4)
    {
      v41 = plurales(v107 - dword_100029044);
      printf("\t%u MPTCP packet%s dropped for lack of memory\n", v40, v41);
      v4 = sflag < 2;
    }

    v42 = v108 - dword_100029048;
    if (v108 != dword_100029048 || v4)
    {
      v43 = plurales(v108 - dword_100029048);
      printf("\t%u MPTCP duplicate-only packet%s received\n", v42, v43);
      v4 = sflag < 2;
    }

    v44 = v109 - dword_10002904C;
    if (v109 != dword_10002904C || v4)
    {
      v45 = plurales(v109 - dword_10002904C);
      printf("\t%u MPTCP packet%s with data after window\n", v44, v45);
      v4 = sflag < 2;
    }

    v46 = v110 - dword_100029074;
    if (v110 != dword_100029074 || v4)
    {
      v47 = plurales(v110 - dword_100029074);
      printf("\t%u MPTCP attempt%s using handover mode\n", v46, v47);
      v4 = sflag < 2;
    }

    v48 = v112 - dword_100029094;
    if (v112 != dword_100029094 || v4)
    {
      v49 = plurales(v112 - dword_100029094);
      printf("\t%u successfull handover mode connection%s that started on Wi-Fi\n", v48, v49);
      v4 = sflag < 2;
    }

    v50 = v113 - dword_100029098;
    if (v113 != dword_100029098 || v4)
    {
      v51 = plurales(v113 - dword_100029098);
      printf("\t%u successfull handover mode connection%s that started on cellular\n", v50, v51);
      v4 = sflag < 2;
    }

    v52 = v115 - dword_1000290A4;
    if (v115 != dword_1000290A4 || v4)
    {
      v53 = plurales(v115 - dword_1000290A4);
      printf("\t%u successfull handover mode connection%s that started on Wi-Fi\n", v52, v53);
      v4 = sflag < 2;
    }

    v54 = v116 - dword_1000290A8;
    if (v116 != dword_1000290A8 || v4)
    {
      v55 = plurales(v116 - dword_1000290A8);
      printf("\t%u successfull handover mode connection%s that started on cellular\n", v54, v55);
      v4 = sflag < 2;
    }

    v56 = v117 - qword_1000290C0;
    if (v117 != qword_1000290C0 || v4)
    {
      v57 = plural(v117 - qword_1000290C0);
      printf("\t%llu byte%s sent on cellular in handover-mode\n", v56, v57);
      v4 = sflag < 2;
    }

    v58 = v119 - qword_1000290D8;
    if (v119 != qword_1000290D8 || v4)
    {
      v59 = plural(v119 - qword_1000290D8);
      printf("\t%llu byte%s sent in handover\n", v58, v59);
      v4 = sflag < 2;
    }

    v60 = v110 - dword_100029074;
    if (v110 != dword_100029074 || v4)
    {
      v61 = plurales(v110 - dword_100029074);
      printf("\t%u MPTCP attempt%s using handover mode\n", v60, v61);
      v4 = sflag < 2;
    }

    v62 = v112 - dword_100029094;
    if (v112 != dword_100029094 || v4)
    {
      v63 = plurales(v112 - dword_100029094);
      printf("\t%u successfull handover mode connection%s that started on Wi-Fi\n", v62, v63);
      v4 = sflag < 2;
    }

    v64 = v113 - dword_100029098;
    if (v113 != dword_100029098 || v4)
    {
      v65 = plurales(v113 - dword_100029098);
      printf("\t%u successfull handover mode connection%s that started on cellular\n", v64, v65);
      v4 = sflag < 2;
    }

    v66 = v115 - dword_1000290A4;
    if (v115 != dword_1000290A4 || v4)
    {
      v67 = plurales(v115 - dword_1000290A4);
      printf("\t%u successfull handover mode connection%s that started on Wi-Fi\n", v66, v67);
      v4 = sflag < 2;
    }

    v68 = v116 - dword_1000290A8;
    if (v116 != dword_1000290A8 || v4)
    {
      v69 = plurales(v116 - dword_1000290A8);
      printf("\t%u successfull handover mode connection%s that started on cellular\n", v68, v69);
      v4 = sflag < 2;
    }

    v70 = v117 - qword_1000290C0;
    if (v117 != qword_1000290C0 || v4)
    {
      v71 = plural(v117 - qword_1000290C0);
      printf("\t%llu byte%s sent on cellular in handover mode\n", v70, v71);
      v4 = sflag < 2;
    }

    v72 = v119 - qword_1000290D8;
    if (v119 != qword_1000290D8 || v4)
    {
      v73 = plural(v119 - qword_1000290D8);
      printf("\t%llu byte%s sent in handover\n", v72, v73);
      v4 = sflag < 2;
    }

    v74 = v111 - dword_10002907C;
    if (v111 != dword_10002907C || v4)
    {
      v75 = plurales(v111 - dword_10002907C);
      printf("\t%u MPTCP attempt%s using aggregate mode\n", v74, v75);
      v4 = sflag < 2;
    }

    v76 = v114 - dword_1000290A0;
    if (v114 != dword_1000290A0 || v4)
    {
      v77 = plurales(v114 - dword_1000290A0);
      printf("\t%u aggregate mode connection%s that negotiated MPTCP\n", v76, v77);
      v4 = sflag < 2;
    }

    v78 = v118 - qword_1000290D0;
    if (v118 != qword_1000290D0 || v4)
    {
      v79 = plural(v118 - qword_1000290D0);
      printf("\t%llu byte%s sent on cellular in aggregate mode\n", v78, v79);
      v4 = sflag < 2;
    }

    v80 = v120 - qword_1000290E8;
    if (v120 != qword_1000290E8 || v4)
    {
      v81 = plural(v120 - qword_1000290E8);
      printf("\t%llu byte%s sent in aggregate\n", v80, v81);
      v4 = sflag < 2;
    }

    v82 = v121 - dword_1000290F0;
    if (v121 != dword_1000290F0 || v4)
    {
      v83 = plurales(v121 - dword_1000290F0);
      printf("\t%u connection%s that moved traffic away from cellular when starting on cellular\n", v82, v83);
      v4 = sflag < 2;
    }

    v84 = v122 - dword_1000290F4;
    if (v122 != dword_1000290F4 || v4)
    {
      v85 = plurales(v122 - dword_1000290F4);
      printf("\t%u new subflow%s that fell back to regular TCP on cellular\n", v84, v85);
      v4 = sflag < 2;
    }

    v86 = v123 - dword_1000290F8;
    if (v123 != dword_1000290F8 || v4)
    {
      v87 = plurales(v123 - dword_1000290F8);
      printf("\t%u new subflow%s that fell back to regular TCP on Wi-Fi\n", v86, v87);
      v4 = sflag < 2;
    }

    v88 = v124 - dword_100029100;
    if (v124 != dword_100029100 || v4)
    {
      v89 = plurales(v124 - dword_100029100);
      printf("\t%u time%s an MPTCP connection triggered cellular\n", v88, v89);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }

    v93 = 4;
    if (sysctlbyname("net.inet.m[tcp.pcbcount", &v92, &v93, 0, 0) != -1)
    {
      v90 = v92;
      if (v92 || sflag <= 1)
      {
        v91 = plural(v92);
        printf("\t%u open MPTCP socket%s\n", v90, v91);
      }
    }
  }
}

void udp_stats(uint64_t a1, const char *a2)
{
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 104;
  v45 = 0;
  if (sysctlbyname("net.inet.udp.stats", v47, &v46, 0, 0) < 0)
  {
    warn("sysctl: net.inet.udp.stats");
  }

  else if (udp_done != 1 || interval != 0)
  {
    udp_done = 1;
    if (interval)
    {
      v4 = vflag < 1;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v5 = v47[0].i32[0] - udp_stats_pudpstat;
    if (v47[0].i32[0] == udp_stats_pudpstat && sflag > 1)
    {
      v6 = 0;
    }

    else
    {
      v7 = plural(v47[0].i32[0] - udp_stats_pudpstat);
      printf("\t%u datagram%s received\n", v5, v7);
      v6 = sflag < 2;
    }

    if (v47[0].i32[1] != dword_10002911C || v6)
    {
      printf("\t\t%u with incomplete header\n", v47[0].i32[1] - dword_10002911C);
      v6 = sflag < 2;
    }

    if (v47[0].i32[3] != dword_100029124 || v6)
    {
      printf("\t\t%u with bad data length field\n", v47[0].i32[3] - dword_100029124);
      v6 = sflag < 2;
    }

    if (v47[0].i32[2] != dword_100029120 || v6)
    {
      printf("\t\t%u with bad checksum\n", v47[0].i32[2] - dword_100029120);
      v6 = sflag < 2;
    }

    if (HIDWORD(v48) != dword_100029144 || v6)
    {
      printf("\t\t%u with no checksum\n", HIDWORD(v48) - dword_100029144);
      v8 = sflag < 2;
    }

    else
    {
      v8 = 0;
    }

    v9 = DWORD2(v49);
    udp_stats_r_swcsum = v50 + DWORD2(v49);
    if (v50 + DWORD2(v49) != udp_stats_pr_swcsum || v8)
    {
      printf("\t\t%u checksummed in software\n", v50 + DWORD2(v49) - udp_stats_pr_swcsum);
      v9 = DWORD2(v49);
    }

    v10 = v9 - qword_100029150;
    if (__PAIR64__(HIDWORD(v49), v9) != qword_100029150 || sflag <= 1)
    {
      v11 = plural(v10);
      v12 = HIDWORD(v49) - HIDWORD(qword_100029150);
      v13 = plural(HIDWORD(v49) - HIDWORD(qword_100029150));
      printf("\t\t\t%u datagram%s (%u byte%s) over IPv4\n", v10, v11, v12, v13);
    }

    v14 = v50 - qword_100029158;
    if (v50 == qword_100029158 && sflag > 1)
    {
      v15 = 0;
    }

    else
    {
      v16 = plural(v50 - qword_100029158);
      v17 = DWORD1(v50) - HIDWORD(qword_100029158);
      v18 = plural(DWORD1(v50) - HIDWORD(qword_100029158));
      printf("\t\t\t%u datagram%s (%u byte%s) over IPv6\n", v14, v16, v17, v18);
      v15 = sflag < 2;
    }

    if (v47[1].i32[0] != dword_100029128 || v15)
    {
      printf("\t\t%u dropped due to no socket\n", v47[1].i32[0] - dword_100029128);
      v15 = sflag < 2;
    }

    v19 = v47[1].i32[1] - dword_10002912C;
    if (v47[1].i32[1] != dword_10002912C || v15)
    {
      v20 = plural(v47[1].i32[1] - dword_10002912C);
      printf("\t\t%u broadcast/multicast datagram%s undelivered\n", v19, v20);
      v15 = sflag < 2;
    }

    v21 = v49 - dword_100029148;
    if (v49 != dword_100029148 || v15)
    {
      v22 = plural(v49 - dword_100029148);
      printf("\t\t%u IPv6 multicast datagram%s undelivered\n", v21, v22);
      v15 = sflag < 2;
    }

    v23 = DWORD1(v49) - dword_10002914C;
    if (DWORD1(v49) != dword_10002914C || v15)
    {
      v24 = plural(DWORD1(v49) - dword_10002914C);
      printf("\t\t%u time%s multicast source filter matched\n", v23, v24);
      v15 = sflag < 2;
    }

    if (v47[1].i32[2] != dword_100029130 || v15)
    {
      printf("\t\t%u dropped due to full socket buffers\n", v47[1].i32[2] - dword_100029130);
      v15 = sflag < 2;
    }

    if (v48 != dword_100029138 || v15)
    {
      printf("\t\t%u not for hashed pcb\n", v48 - dword_100029138);
      v15 = sflag < 2;
    }

    v25 = vaddvq_s32(*&dword_10002911C) + v47[0].i32[0] - (vaddvq_s32(*(v47 + 4)) + v47[1].i32[1] + udp_stats_pudpstat) + dword_10002912C + dword_100029130 - v47[1].i32[2];
    if (v25 || v15)
    {
      printf("\t\t%u delivered\n", v25);
      v15 = sflag < 2;
    }

    v26 = DWORD1(v48) - dword_10002913C;
    if (DWORD1(v48) != dword_10002913C || v15)
    {
      v28 = plural(DWORD1(v48) - dword_10002913C);
      printf("\t%u datagram%s output\n", v26, v28);
      v27 = sflag < 2;
    }

    else
    {
      v27 = 0;
    }

    v29 = DWORD2(v50);
    udp_stats_t_swcsum = v51 + DWORD2(v50);
    if (v51 + DWORD2(v50) != udp_stats_pt_swcsum || v27)
    {
      printf("\t\t%u checksummed in software\n", v51 + DWORD2(v50) - udp_stats_pt_swcsum);
      v29 = DWORD2(v50);
    }

    v30 = v29 - qword_100029160;
    if (__PAIR64__(HIDWORD(v50), v29) != qword_100029160 || sflag <= 1)
    {
      v31 = plural(v30);
      v32 = HIDWORD(v50) - HIDWORD(qword_100029160);
      v33 = plural(HIDWORD(v50) - HIDWORD(qword_100029160));
      printf("\t\t\t%u datagram%s (%u byte%s) over IPv4\n", v30, v31, v32, v33);
    }

    v34 = v51 - qword_100029168;
    if (v51 == qword_100029168 && sflag > 1)
    {
      v35 = 0;
    }

    else
    {
      v36 = plural(v51 - qword_100029168);
      v37 = DWORD1(v51) - HIDWORD(qword_100029168);
      v38 = plural(DWORD1(v51) - HIDWORD(qword_100029168));
      printf("\t\t\t%u datagram%s (%u byte%s) over IPv6\n", v34, v36, v37, v38);
      v35 = sflag < 2;
    }

    v39 = *(&v51 + 1) - qword_100029170;
    if (*(&v51 + 1) != qword_100029170 || v35)
    {
      v40 = plural(DWORD2(v51) - qword_100029170);
      printf("\t%llu duplicate ICMP packet%s for port unreachable suppressed\n", v39, v40);
      v35 = sflag < 2;
    }

    v41 = v52 - qword_100029178;
    if (v52 != qword_100029178 || v35)
    {
      v42 = plural(v52 - qword_100029178);
      printf("\t%llu ICMP packet%s for port unreachable not suppressed\n", v41, v42);
    }

    if (interval >= 1)
    {
      __memmove_chk();
      udp_stats_pr_swcsum = udp_stats_r_swcsum;
      udp_stats_pt_swcsum = udp_stats_t_swcsum;
    }

    v46 = 4;
    if (sysctlbyname("net.inet.udp.pcbcount", &v45, &v46, 0, 0) != -1)
    {
      v43 = v45;
      if (v45 || sflag <= 1)
      {
        v44 = plural(v45);
        printf("\t%u open UDP socket%s\n", v43, v44);
      }
    }
  }
}

uint64_t tcp_ifstats(const char *a1)
{
  v41 = 712;
  bzero(v28, 0x2C8uLL);
  printf("tcp on %s\n", a1);
  result = if_nametoindex(a1);
  if (result)
  {
    *v42 = xmmword_100023240;
    v43 = result;
    v44 = 5;
    result = sysctl(v42, 6u, v28, &v41, 0, 0);
    if (result == -1)
    {
      intpr_cold_12();
    }

    v3 = v29;
    if (v29 || sflag <= 1)
    {
      v5 = plural(v29);
      result = printf("\t%llu incoming packet%s with bad TCP header format\n", v3, v5);
      v4 = sflag < 2;
    }

    else
    {
      v4 = 0;
    }

    v6 = v30;
    if (v30 || v4)
    {
      v7 = plural(v30);
      result = printf("\t%llu incoming packet%s with unspecified IPv6 address\n", v6, v7);
      v4 = sflag < 2;
    }

    v8 = v31;
    if (v31 || v4)
    {
      v9 = plural(v31);
      result = printf("\t%llu incoming packet%s with SYN and FIN flags\n", v8, v9);
      v4 = sflag < 2;
    }

    v10 = v32;
    if (v32 || v4)
    {
      v11 = plural(v32);
      result = printf("\t%llu incoming packet%s to closed port\n", v10, v11);
      v4 = sflag < 2;
    }

    v12 = v33;
    if (v33 || v4)
    {
      v13 = plural(v33);
      result = printf("\t%llu incoming packet%s for a closed socket\n", v12, v13);
      v4 = sflag < 2;
    }

    v14 = v34;
    if (v34 || v4)
    {
      v15 = plural(v34);
      result = printf("\t%llu incoming packet%s with SYN with ACK or RST flags\n", v14, v15);
      v4 = sflag < 2;
    }

    v16 = v35;
    if (v35 || v4)
    {
      v17 = plural(v35);
      result = printf("\t%llu incoming packet%s to an IPv6 anycast address\n", v16, v17);
      v4 = sflag < 2;
    }

    v18 = v36;
    if (v36 || v4)
    {
      v19 = plural(v36);
      result = printf("\t%llu incoming packet%s to an IPv6 deprecated address\n", v18, v19);
      v4 = sflag < 2;
    }

    v20 = v37;
    if (v37 || v4)
    {
      v21 = plural(v37);
      result = printf("\t%llu incoming RST packet%s in SYN_RECEIVED state\n", v20, v21);
      v4 = sflag < 2;
    }

    v22 = v38;
    if (v38 || v4)
    {
      v23 = plural(v38);
      result = printf("\t%llu incoming packet%s with bad ACK in connecting states\n", v22, v23);
      v4 = sflag < 2;
    }

    v24 = v39;
    if (v39 || v4)
    {
      v25 = plural(v39);
      result = printf("\t%llu incoming packet%s with bad sequence number in SYN_RECEIVED state\n", v24, v25);
      v4 = sflag < 2;
    }

    v26 = v40;
    if (v40 || v4)
    {
      v27 = plural(v40);
      return printf("\t%llu incoming packet%s received after close\n", v26, v27);
    }
  }

  return result;
}

uint64_t udp_ifstats(const char *a1)
{
  v26 = 712;
  bzero(v18, 0x2C8uLL);
  printf("udp on %s\n", a1);
  result = if_nametoindex(a1);
  if (result)
  {
    *v27 = xmmword_100023240;
    v28 = result;
    v29 = 5;
    result = sysctl(v27, 6u, v18, &v26, 0, 0);
    if (result == -1)
    {
      intpr_cold_12();
    }

    v3 = v19;
    if (v19 || sflag <= 1)
    {
      v5 = plural(v19);
      result = printf("\t%llu incoming packet%s for a closed port\n", v3, v5);
      v4 = sflag < 2;
    }

    else
    {
      v4 = 0;
    }

    v6 = v20;
    if (v20 || v4)
    {
      v7 = plural(v20);
      result = printf("\t%llu incoming packet%s destination port 0\n", v6, v7);
      v4 = sflag < 2;
    }

    v8 = v21;
    if (v21 || v4)
    {
      v9 = plural(v21);
      result = printf("\t%llu incoming packet%s with a bad length\n", v8, v9);
      v4 = sflag < 2;
    }

    v10 = v22;
    if (v22 || v4)
    {
      v11 = plural(v22);
      result = printf("\t%llu incoming packet%s with a bad checksum\n", v10, v11);
      v4 = sflag < 2;
    }

    v12 = v23;
    if (v23 || v4)
    {
      v13 = plural(v23);
      result = printf("\t%llu incoming multicast packet%s for a closed port\n", v12, v13);
      v4 = sflag < 2;
    }

    v14 = v24;
    if (v24 || v4)
    {
      v15 = plural(v24);
      result = printf("\t%llu incoming packet%s for closed socket\n", v14, v15);
      v4 = sflag < 2;
    }

    v16 = v25;
    if (v25 || v4)
    {
      v17 = plural(v25);
      return printf("\t%llu incoming packet%s not allowed by NECP\n", v16, v17);
    }
  }

  return result;
}

void ip_stats(uint64_t a1, const char *a2)
{
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 196;
  v75 = 0;
  if (sysctlbyname("net.inet.ip.stats", &v77, &v76, 0, 0) < 0)
  {
    warn("sysctl: net.inet.ip.stats");
  }

  else
  {
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v3 = v77 - ip_stats_pipstat;
    if (v77 == ip_stats_pipstat && sflag > 1)
    {
      v4 = 0;
    }

    else
    {
      v5 = plural(v77 - ip_stats_pipstat);
      printf("\t%u total packet%s received\n", v3, v5);
      v4 = sflag < 2;
    }

    v6 = DWORD1(v77) - dword_100029194;
    if (DWORD1(v77) != dword_100029194 || v4)
    {
      v7 = plural(DWORD1(v77) - dword_100029194);
      printf("\t\t%u bad header checksum%s\n", v6, v7);
    }

    v8 = DWORD2(v84) - qword_100029208;
    if (*(&v84 + 1) == qword_100029208 && sflag > 1)
    {
      v9 = 0;
    }

    else
    {
      v10 = plural(DWORD2(v84) - qword_100029208);
      v11 = HIDWORD(v84) - HIDWORD(qword_100029208);
      v12 = plural(HIDWORD(v84) - HIDWORD(qword_100029208));
      printf("\t\t%u header%s (%u byte%s) checksummed in software\n", v8, v10, v11, v12);
      v9 = sflag < 2;
    }

    if (HIDWORD(v77) != dword_10002919C || v9)
    {
      printf("\t\t%u with size smaller than minimum\n", HIDWORD(v77) - dword_10002919C);
      v9 = sflag < 2;
    }

    if (DWORD2(v77) != dword_100029198 || v9)
    {
      printf("\t\t%u with data size < data length\n", DWORD2(v77) - dword_100029198);
      v9 = sflag < 2;
    }

    if (DWORD2(v85) != dword_100029218 || v9)
    {
      printf("\t\t%u with data size > data length\n", DWORD2(v85) - dword_100029218);
      v9 = sflag < 2;
    }

    v13 = HIDWORD(v85) - dword_10002921C;
    if (HIDWORD(v85) != dword_10002921C || v9)
    {
      v14 = plural(HIDWORD(v85) - dword_10002921C);
      printf("\t\t\t%u packet%s forced to software checksum\n", v13, v14);
      v9 = sflag < 2;
    }

    if (DWORD1(v83) != dword_1000291F4 || v9)
    {
      printf("\t\t%u with ip length > max ip packet size\n", DWORD1(v83) - dword_1000291F4);
      v9 = sflag < 2;
    }

    if (v78 != dword_1000291A0 || v9)
    {
      printf("\t\t%u with header length < data size\n", v78 - dword_1000291A0);
      v9 = sflag < 2;
    }

    if (DWORD1(v78) != dword_1000291A4 || v9)
    {
      printf("\t\t%u with data length < header length\n", DWORD1(v78) - dword_1000291A4);
      v9 = sflag < 2;
    }

    if (DWORD1(v82) != dword_1000291E4 || v9)
    {
      printf("\t\t%u with bad options\n", DWORD1(v82) - dword_1000291E4);
      v9 = sflag < 2;
    }

    if (HIDWORD(v82) != dword_1000291EC || v9)
    {
      printf("\t\t%u with incorrect version number\n", HIDWORD(v82) - dword_1000291EC);
      v9 = sflag < 2;
    }

    v15 = DWORD2(v78) - dword_1000291A8;
    if (DWORD2(v78) != dword_1000291A8 || v9)
    {
      v16 = plural(DWORD2(v78) - dword_1000291A8);
      printf("\t\t%u fragment%s received\n", v15, v16);
      v9 = sflag < 2;
    }

    if (HIDWORD(v78) != dword_1000291AC || v9)
    {
      printf("\t\t\t%u dropped (dup or out of space)\n", HIDWORD(v78) - dword_1000291AC);
      v9 = sflag < 2;
    }

    if (v79 != dword_1000291B0 || v9)
    {
      printf("\t\t\t%u dropped after timeout\n", v79 - dword_1000291B0);
      v9 = sflag < 2;
    }

    if (DWORD1(v81) != dword_1000291D4 || v9)
    {
      printf("\t\t\t%u reassembled ok\n", DWORD1(v81) - dword_1000291D4);
      v9 = sflag < 2;
    }

    v17 = DWORD2(v80) - dword_1000291C8;
    if (DWORD2(v80) != dword_1000291C8 || v9)
    {
      v18 = plural(DWORD2(v80) - dword_1000291C8);
      printf("\t\t%u packet%s for this host\n", v17, v18);
      v9 = sflag < 2;
    }

    v19 = DWORD1(v80) - dword_1000291C4;
    if (DWORD1(v80) != dword_1000291C4 || v9)
    {
      v20 = plural(DWORD1(v80) - dword_1000291C4);
      printf("\t\t%u packet%s for unknown/unsupported protocol\n", v19, v20);
      v9 = sflag < 2;
    }

    v21 = DWORD1(v79) - dword_1000291B4;
    if (DWORD1(v79) != dword_1000291B4 || v9)
    {
      v22 = plural(DWORD1(v79) - dword_1000291B4);
      printf("\t\t%u packet%s forwarded", v21, v22);
      v9 = sflag < 2;
    }

    v23 = DWORD2(v79) - dword_1000291B8;
    if (DWORD2(v79) != dword_1000291B8 || v9)
    {
      v24 = plural(DWORD2(v79) - dword_1000291B8);
      printf(" (%u packet%s fast forwarded)", v23, v24);
      v9 = sflag < 2;
    }

    if (DWORD1(v79) != dword_1000291B4 || v9)
    {
      putchar(10);
      v9 = sflag < 2;
    }

    v25 = HIDWORD(v79) - dword_1000291BC;
    if (HIDWORD(v79) != dword_1000291BC || v9)
    {
      v26 = plural(HIDWORD(v79) - dword_1000291BC);
      printf("\t\t%u packet%s not forwardable\n", v25, v26);
      v9 = sflag < 2;
    }

    v27 = DWORD2(v83) - dword_1000291F8;
    if (DWORD2(v83) != dword_1000291F8 || v9)
    {
      v28 = plural(DWORD2(v83) - dword_1000291F8);
      printf("\t\t%u packet%s received for unknown multicast group\n", v27, v28);
      v9 = sflag < 2;
    }

    v29 = v80 - dword_1000291C0;
    if (v80 != dword_1000291C0 || v9)
    {
      v30 = plural(v80 - dword_1000291C0);
      printf("\t\t%u redirect%s sent\n", v29, v30);
      v9 = sflag < 2;
    }

    v31 = v86 - dword_100029220;
    if (v86 != dword_100029220 || v9)
    {
      v32 = plural(v86 - dword_100029220);
      printf("\t\t%u input packet%s not chained due to collision\n", v31, v32);
      v9 = sflag < 2;
    }

    v33 = DWORD1(v86) - dword_100029224;
    if (DWORD1(v86) != dword_100029224 || v9)
    {
      v34 = plural(DWORD1(v86) - dword_100029224);
      printf("\t\t%u input packet%s processed in a chain\n", v33, v34);
      v9 = sflag < 2;
    }

    v35 = DWORD2(v86) - dword_100029228;
    if (DWORD2(v86) != dword_100029228 || v9)
    {
      v36 = plural(DWORD2(v86) - dword_100029228);
      printf("\t\t%u input packet%s unable to chain\n", v35, v36);
      v9 = sflag < 2;
    }

    v37 = HIDWORD(v86) - dword_10002922C;
    if (HIDWORD(v86) != dword_10002922C || v9)
    {
      v38 = plural(HIDWORD(v86) - dword_10002922C);
      printf("\t\t%u input packet chain%s processed with length greater than 2\n", v37, v38);
      v9 = sflag < 2;
    }

    v39 = v87 - dword_100029230;
    if (v87 != dword_100029230 || v9)
    {
      v40 = plural(v87 - dword_100029230);
      printf("\t\t%u input packet chain%s processed with length greater than 4\n", v39, v40);
      v9 = sflag < 2;
    }

    v41 = DWORD1(v87) - dword_100029234;
    if (DWORD1(v87) != dword_100029234 || v9)
    {
      v42 = plural(DWORD1(v87) - dword_100029234);
      printf("\t\t%u input packet%s did not go through list processing path\n", v41, v42);
      v9 = sflag < 2;
    }

    v43 = v88 - dword_100029240;
    if (v88 != dword_100029240 || v9)
    {
      v44 = plural(v88 - dword_100029240);
      printf("\t\t%u input packet%s that passed the weak ES interface address match\n", v43, v44);
      v9 = sflag < 2;
    }

    v45 = DWORD1(v88) - dword_100029244;
    if (DWORD1(v88) != dword_100029244 || v9)
    {
      v46 = plural(DWORD1(v88) - dword_100029244);
      printf("\t\t%u input packet%s with no interface address match\n", v45, v46);
      v9 = sflag < 2;
    }

    v47 = HIDWORD(v80) - dword_1000291CC;
    if (HIDWORD(v80) != dword_1000291CC || v9)
    {
      v48 = plural(HIDWORD(v80) - dword_1000291CC);
      printf("\t%u packet%s sent from this host\n", v47, v48);
      v9 = sflag < 2;
    }

    v49 = v83 - dword_1000291F0;
    if (v83 != dword_1000291F0 || v9)
    {
      v50 = plural(v83 - dword_1000291F0);
      printf("\t\t%u packet%s sent with fabricated ip header\n", v49, v50);
      v9 = sflag < 2;
    }

    v51 = v81 - dword_1000291D0;
    if (v81 != dword_1000291D0 || v9)
    {
      v52 = plural(v81 - dword_1000291D0);
      printf("\t\t%u output packet%s dropped due to no bufs, etc.\n", v51, v52);
      v9 = sflag < 2;
    }

    v53 = DWORD2(v82) - dword_1000291E8;
    if (DWORD2(v82) != dword_1000291E8 || v9)
    {
      v54 = plural(DWORD2(v82) - dword_1000291E8);
      printf("\t\t%u output packet%s discarded due to no route\n", v53, v54);
      v9 = sflag < 2;
    }

    v55 = DWORD2(v81) - dword_1000291D8;
    if (DWORD2(v81) != dword_1000291D8 || v9)
    {
      v56 = plural(DWORD2(v81) - dword_1000291D8);
      printf("\t\t%u output datagram%s fragmented\n", v55, v56);
      v9 = sflag < 2;
    }

    v57 = HIDWORD(v81) - dword_1000291DC;
    if (HIDWORD(v81) != dword_1000291DC || v9)
    {
      v58 = plural(HIDWORD(v81) - dword_1000291DC);
      printf("\t\t%u fragment%s created\n", v57, v58);
      v9 = sflag < 2;
    }

    v59 = v82 - dword_1000291E0;
    if (v82 != dword_1000291E0 || v9)
    {
      v60 = plural(v82 - dword_1000291E0);
      printf("\t\t%u datagram%s that can't be fragmented\n", v59, v60);
      v9 = sflag < 2;
    }

    v61 = HIDWORD(v83) - dword_1000291FC;
    if (HIDWORD(v83) != dword_1000291FC || v9)
    {
      v62 = plural(HIDWORD(v83) - dword_1000291FC);
      printf("\t\t%u tunneling packet%s that can't find gif\n", v61, v62);
      v9 = sflag < 2;
    }

    v63 = v84 - dword_100029200;
    if (v84 != dword_100029200 || v9)
    {
      v64 = plural(v84 - dword_100029200);
      printf("\t\t%u datagram%s with bad address in header\n", v63, v64);
      v9 = sflag < 2;
    }

    v65 = DWORD1(v84) - dword_100029204;
    if (DWORD1(v84) != dword_100029204 || v9)
    {
      v66 = plural(DWORD1(v84) - dword_100029204);
      printf("\t\t%u packet%s dropped due to no bufs for control data\n", v65, v66);
      v9 = sflag < 2;
    }

    v67 = HIDWORD(v87) - dword_10002923C;
    if (HIDWORD(v87) != dword_10002923C || v9)
    {
      v68 = plural(HIDWORD(v87) - dword_10002923C);
      printf("\t\t%u packet%s dropped due to NECP policy\n", v67, v68);
    }

    v69 = v85 - dword_100029210;
    if (v85 != dword_100029210 || DWORD1(v85) != dword_100029214 || sflag <= 1)
    {
      v70 = plural(v85 - dword_100029210);
      v71 = DWORD1(v85) - dword_100029214;
      v72 = plural(DWORD1(v85) - dword_100029214);
      printf("\t\t%u header%s (%u byte%s) checksummed in software\n", v69, v70, v71, v72);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }

    v76 = 4;
    if (sysctlbyname("net.inet.raw.pcbcount", &v75, &v76, 0, 0) != -1)
    {
      v73 = v75;
      if (v75 || sflag <= 1)
      {
        v74 = plural(v75);
        printf("\t%u open raw IP socket%s\n", v73, v74);
      }
    }
  }
}

void arp_stats(uint64_t a1, const char *a2)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 64;
  if (sysctlbyname("net.link.ether.inet.stats", &v37, &v36, 0, 0) < 0)
  {
    warn("sysctl: net.link.ether.inet.stats");
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
    v4 = v37 - arp_stats_parpstat;
    if (v37 == arp_stats_parpstat && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v37 - arp_stats_parpstat);
      printf("\t%u broadast ARP request%s sent\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = DWORD2(v40) - dword_10002928C;
    if (DWORD2(v40) != dword_10002928C || v5)
    {
      v8 = plural(DWORD2(v40) - dword_10002928C);
      printf("\t%u unicast ARP request%s sent\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = DWORD1(v37) - dword_100029258;
    if (DWORD1(v37) != dword_100029258 || v5)
    {
      v10 = pluralies(DWORD1(v37) - dword_100029258);
      printf("\t%u ARP repl%s sent\n", v9, v10);
      v5 = sflag < 2;
    }

    v11 = DWORD2(v37) - dword_10002925C;
    if (DWORD2(v37) != dword_10002925C || v5)
    {
      v12 = plural(DWORD2(v37) - dword_10002925C);
      printf("\t%u ARP announcement%s sent\n", v11, v12);
      v5 = sflag < 2;
    }

    v13 = HIDWORD(v37) - dword_100029260;
    if (HIDWORD(v37) != dword_100029260 || v5)
    {
      v14 = plural(HIDWORD(v37) - dword_100029260);
      printf("\t%u ARP request%s received\n", v13, v14);
      v5 = sflag < 2;
    }

    v15 = v38 - dword_100029264;
    if (v38 != dword_100029264 || v5)
    {
      v16 = pluralies(v38 - dword_100029264);
      printf("\t%u ARP repl%s received\n", v15, v16);
      v5 = sflag < 2;
    }

    v17 = DWORD1(v38) - dword_100029268;
    if (DWORD1(v38) != dword_100029268 || v5)
    {
      v18 = plural(DWORD1(v38) - dword_100029268);
      printf("\t%u total ARP packet%s received\n", v17, v18);
      v5 = sflag < 2;
    }

    v19 = DWORD2(v38) - dword_10002926C;
    if (DWORD2(v38) != dword_10002926C || v5)
    {
      v20 = plural(DWORD2(v38) - dword_10002926C);
      printf("\t%u ARP conflict probe%s sent\n", v19, v20);
      v5 = sflag < 2;
    }

    v21 = HIDWORD(v38) - dword_100029270;
    if (HIDWORD(v38) != dword_100029270 || v5)
    {
      v22 = plural(HIDWORD(v38) - dword_100029270);
      printf("\t%u invalid ARP resolve request%s\n", v21, v22);
      v5 = sflag < 2;
    }

    v23 = v39 - dword_100029274;
    if (v39 != dword_100029274 || v5)
    {
      v24 = plural(v39 - dword_100029274);
      printf("\t%u total packet%s dropped due to lack of memory\n", v23, v24);
      v5 = sflag < 2;
    }

    v25 = HIDWORD(v40) - dword_100029290;
    if (HIDWORD(v40) != dword_100029290 || v5)
    {
      v26 = plural(HIDWORD(v40) - dword_100029290);
      v27 = pluralies(HIDWORD(v40) - dword_100029290);
      printf("\t%u total packet%s held awaiting ARP repl%s\n", v25, v26, v27);
      v5 = sflag < 2;
    }

    v28 = DWORD1(v39) - dword_100029278;
    if (DWORD1(v39) != dword_100029278 || v5)
    {
      v29 = plural(DWORD1(v39) - dword_100029278);
      printf("\t%u total packet%s dropped due to no ARP entry\n", v28, v29);
      v5 = sflag < 2;
    }

    v30 = DWORD2(v39) - dword_10002927C;
    if (DWORD2(v39) != dword_10002927C || v5)
    {
      v31 = plural(DWORD2(v39) - dword_10002927C);
      printf("\t%u total packet%s dropped during ARP entry removal\n", v30, v31);
      v5 = sflag < 2;
    }

    v32 = HIDWORD(v39) - dword_100029280;
    if (HIDWORD(v39) != dword_100029280 || v5)
    {
      v33 = pluralies(HIDWORD(v39) - dword_100029280);
      printf("\t%u ARP entr%s timed out\n", v32, v33);
      v5 = sflag < 2;
    }

    v34 = v40 - dword_100029284;
    if (v40 != dword_100029284 || v5)
    {
      v35 = plural(v40 - dword_100029284);
      printf("\t%u Duplicate IP%s seen\n", v34, v35);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

void *icmp_stats(uint64_t a1, const char *a2)
{
  *v38 = xmmword_100023290;
  v35 = 368;
  memset(__src, 0, sizeof(__src));
  result = sysctl(v38, 4u, __src, &v35, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", a2);
    v4 = LODWORD(__src[0]) - icmp_stats_picmpstat;
    if (LODWORD(__src[0]) == icmp_stats_picmpstat && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(LODWORD(__src[0]) - icmp_stats_picmpstat);
      printf("\t%u call%s to icmp_error\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = DWORD2(__src[0]) - dword_10002929C;
    if (DWORD2(__src[0]) != dword_10002929C || v5)
    {
      v8 = plural(DWORD2(__src[0]) - dword_10002929C);
      printf("\t%u error%s not generated 'cuz old message was icmp\n", v7, v8);
    }

    v9 = 1;
    v10 = -1;
    v11 = icmpnames;
    v12 = &dword_10000000C;
    do
    {
      v13 = *(__src + v12);
      v14 = *(&icmp_stats_picmpstat + v12);
      if (v13 != v14)
      {
        if (v9)
        {
          puts("\tOutput histogram:");
          v13 = *(__src + v12);
          v14 = *(&icmp_stats_picmpstat + v12);
        }

        printf("\t\t%s: %u\n", *v11, v13 - v14);
        v9 = 0;
      }

      v36 = v10 + 2;
      ++v10;
      v12 += 4;
      ++v11;
    }

    while (v10 < 0x28);
    v15 = LODWORD(__src[11]) - dword_100029344;
    if (LODWORD(__src[11]) != dword_100029344 || sflag <= 1)
    {
      v17 = plural(LODWORD(__src[11]) - dword_100029344);
      printf("\t%u message%s with bad code fields\n", v15, v17);
      v18 = sflag < 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = DWORD1(__src[11]) - dword_100029348;
    if (DWORD1(__src[11]) != dword_100029348 || v18)
    {
      v20 = plural(DWORD1(__src[11]) - dword_100029348);
      printf("\t%u message%s < minimum length\n", v19, v20);
      v18 = sflag < 2;
    }

    v21 = DWORD2(__src[11]) - dword_10002934C;
    if (DWORD2(__src[11]) != dword_10002934C || v18)
    {
      v22 = plural(DWORD2(__src[11]) - dword_10002934C);
      printf("\t%u bad checksum%s\n", v21, v22);
      v18 = sflag < 2;
    }

    v23 = HIDWORD(__src[11]) - dword_100029350;
    if (HIDWORD(__src[11]) != dword_100029350 || v18)
    {
      v24 = plural(HIDWORD(__src[11]) - dword_100029350);
      printf("\t%u message%s with bad length\n", v23, v24);
      v18 = sflag < 2;
    }

    if (DWORD2(__src[22]) != dword_1000293FC || v18)
    {
      printf("\t%u multicast echo requests ignored\n", DWORD2(__src[22]) - dword_1000293FC);
      v18 = sflag < 2;
    }

    if (HIDWORD(__src[22]) != dword_100029400 || v18)
    {
      printf("\t%u multicast timestamp requests ignored\n", HIDWORD(__src[22]) - dword_100029400);
    }

    v25 = 1;
    v26 = -1;
    v27 = icmpnames;
    v28 = &stru_1000000B0.segname[4];
    do
    {
      v29 = *(__src + v28);
      v30 = *(&icmp_stats_picmpstat + v28);
      if (v29 != v30)
      {
        if (v25)
        {
          puts("\tInput histogram:");
          v29 = *(__src + v28);
          v30 = *(&icmp_stats_picmpstat + v28);
        }

        printf("\t\t%s: %u\n", *v27, v29 - v30);
        v25 = 0;
      }

      v36 = v26 + 2;
      ++v26;
      v28 += 4;
      ++v27;
    }

    while (v26 < 0x28);
    v31 = LODWORD(__src[12]) - dword_100029354;
    if (LODWORD(__src[12]) != dword_100029354 || sflag <= 1)
    {
      v33 = plural(LODWORD(__src[12]) - dword_100029354);
      printf("\t%u message response%s generated\n", v31, v33);
    }

    v38[3] = 1;
    v35 = 4;
    result = sysctl(v38, 4u, &v36, &v35, 0, 0);
    if ((result & 0x80000000) == 0)
    {
      if (v36)
      {
        v34 = "en";
      }

      else
      {
        v34 = "dis";
      }

      result = printf("\tICMP address mask responses are %sabled\n", v34);
      if (interval >= 1)
      {
        return memcpy(&icmp_stats_picmpstat, __src, 0x170uLL);
      }
    }
  }

  return result;
}

void igmp_stats(uint64_t a1, const char *a2)
{
  v41 = 0;
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
  v30 = 168;
  if (sysctlbyname("net.inet.igmp.v3stats", &v31, &v30, 0, 0) < 0)
  {
    warn("sysctl: net.inet.igmp.v3stats");
  }

  else
  {
    if (v31 != 3)
    {
      warnx("%s: version mismatch (%d != %d)", "igmp_stats", v31, 3);
    }

    if (DWORD1(v31) != 168)
    {
      warnx("%s: size mismatch (%d != %d)", "igmp_stats", DWORD1(v31), 168);
    }

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
    v4 = *(&v31 + 1) - qword_100029410;
    if (*(&v31 + 1) == qword_100029410 && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(DWORD2(v31) - qword_100029410);
      printf("\t%ju message%s received\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = v32 - qword_100029418;
    if (v32 != qword_100029418 || v5)
    {
      v8 = plural(v32 - qword_100029418);
      printf("\t%ju message%s received with too few bytes\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = *(&v32 + 1) - qword_100029420;
    if (*(&v32 + 1) != qword_100029420 || v5)
    {
      v10 = plural(DWORD2(v32) - qword_100029420);
      printf("\t%ju message%s received with wrong TTL\n", v9, v10);
      v5 = sflag < 2;
    }

    v11 = v33 - qword_100029428;
    if (v33 != qword_100029428 || v5)
    {
      v12 = plural(v33 - qword_100029428);
      printf("\t%ju message%s received with bad checksum\n", v11, v12);
      v5 = sflag < 2;
    }

    if (*(&v33 + 1) != qword_100029430 || v5)
    {
      if (*(&v33 + 1) - qword_100029430 == 1)
      {
        v13 = "y";
      }

      else
      {
        v13 = "ies";
      }

      printf("\t%ju V1/V2 membership quer%s received\n", *(&v33 + 1) - qword_100029430, v13);
      v5 = sflag < 2;
    }

    if (v34 != qword_100029438 || v5)
    {
      if (v34 - qword_100029438 == 1)
      {
        v14 = "y";
      }

      else
      {
        v14 = "ies";
      }

      printf("\t%ju V3 membership quer%s received\n", v34 - qword_100029438, v14);
      v5 = sflag < 2;
    }

    if (*(&v34 + 1) != qword_100029440 || v5)
    {
      if (*(&v34 + 1) - qword_100029440 == 1)
      {
        v15 = "y";
      }

      else
      {
        v15 = "ies";
      }

      printf("\t%ju membership quer%s received with invalid field(s)\n", *(&v34 + 1) - qword_100029440, v15);
      v5 = sflag < 2;
    }

    if (v35 != qword_100029448 || v5)
    {
      if (v35 - qword_100029448 == 1)
      {
        v16 = "y";
      }

      else
      {
        v16 = "ies";
      }

      printf("\t%ju general quer%s received\n", v35 - qword_100029448, v16);
      v5 = sflag < 2;
    }

    if (*(&v35 + 1) != qword_100029450 || v5)
    {
      if (*(&v35 + 1) - qword_100029450 == 1)
      {
        v17 = "y";
      }

      else
      {
        v17 = "ies";
      }

      printf("\t%ju group quer%s received\n", *(&v35 + 1) - qword_100029450, v17);
      v5 = sflag < 2;
    }

    if (v36 != qword_100029458 || v5)
    {
      if (v36 - qword_100029458 == 1)
      {
        v18 = "y";
      }

      else
      {
        v18 = "ies";
      }

      printf("\t%ju group-source quer%s received\n", v36 - qword_100029458, v18);
      v5 = sflag < 2;
    }

    if (*(&v36 + 1) != qword_100029460 || v5)
    {
      if (*(&v36 + 1) - qword_100029460 == 1)
      {
        v19 = "y";
      }

      else
      {
        v19 = "ies";
      }

      printf("\t%ju group-source quer%s dropped\n", *(&v36 + 1) - qword_100029460, v19);
      v5 = sflag < 2;
    }

    v20 = v37 - qword_100029468;
    if (v37 != qword_100029468 || v5)
    {
      v21 = plural(v37 - qword_100029468);
      printf("\t%ju membership report%s received\n", v20, v21);
      v5 = sflag < 2;
    }

    v22 = *(&v37 + 1) - qword_100029470;
    if (*(&v37 + 1) != qword_100029470 || v5)
    {
      v23 = plural(DWORD2(v37) - qword_100029470);
      printf("\t%ju membership report%s received with invalid field(s)\n", v22, v23);
      v5 = sflag < 2;
    }

    v24 = v38 - qword_100029478;
    if (v38 != qword_100029478 || v5)
    {
      v25 = plural(v38 - qword_100029478);
      printf("\t%ju membership report%s received for groups to which we belong\n", v24, v25);
      v5 = sflag < 2;
    }

    v26 = *(&v38 + 1) - qword_100029480;
    if (*(&v38 + 1) != qword_100029480 || v5)
    {
      v27 = plural(DWORD2(v38) - qword_100029480);
      printf("\t%ju V3 report%s received without Router Alert\n", v26, v27);
      v5 = sflag < 2;
    }

    v28 = v39 - qword_100029488;
    if (v39 != qword_100029488 || v5)
    {
      v29 = plural(v39 - qword_100029488);
      printf("\t%ju membership report%s sent\n", v28, v29);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

char *inetname(in_addr_t *a1)
{
  if (nflag)
  {
LABEL_2:
    n_name = 0;
    goto LABEL_3;
  }

  v3.s_addr = *a1;
  if (!v3.s_addr)
  {
    goto LABEL_10;
  }

  v4 = inet_netof(v3);
  v5.s_addr = *a1;
  if (inet_lnaof(v5) || (v11 = getnetbyaddr(v4, 2)) == 0 || (n_name = v11->n_name) == 0)
  {
    v6 = gethostbyaddr(a1, 4u, 2);
    if (v6)
    {
      h_name = v6->h_name;
      v8 = strlen(v6->h_name);
      n_name = clean_non_printable(h_name, v8);
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:
  if (*a1 && !n_name)
  {
    v9 = bswap32(*a1);
    *a1 = v9;
    snprintf(inetname_line, 0x100uLL, "%u.%u.%u.%u", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9);
    return inetname_line;
  }

LABEL_10:
  __strlcpy_chk();
  return inetname_line;
}

uint64_t ip6_stats(uint64_t a1, const char *a2)
{
  *v221 = xmmword_1000232A0;
  v157 = 3592;
  bzero(&v158, 0xE08uLL);
  result = sysctl(v221, 4u, &v158, &v157, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (interval)
  {
    v4 = vflag < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    print_time();
  }

  printf("%s:\n", a2);
  v5 = v158 - ip6_stats_pip6stat[0];
  if (v158 == ip6_stats_pip6stat[0] && sflag > 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = plural(v158 - LODWORD(ip6_stats_pip6stat[0]));
    printf("\t%llu total packet%s received\n", v5, v7);
    v6 = sflag < 2;
  }

  if (v160 != qword_1000295C0 || v6)
  {
    printf("\t\t%llu with size smaller than minimum\n", v160 - qword_1000295C0);
    v6 = sflag < 2;
  }

  if (v159 != qword_1000295B8 || v6)
  {
    printf("\t\t%llu with data size < data length\n", v159 - qword_1000295B8);
    v6 = sflag < 2;
  }

  if (v194 != qword_10002A2C8 || v6)
  {
    printf("\t\t%llu with data size > data length\n", v194 - qword_10002A2C8);
    v6 = sflag < 2;
  }

  v8 = v195 - qword_10002A2D0;
  if (v195 != qword_10002A2D0 || v6)
  {
    v9 = plural(v195 - qword_10002A2D0);
    printf("\t\t\t%llu packet%s forced to software checksum\n", v8, v9);
    v6 = sflag < 2;
  }

  if (v176 != qword_100029640 || v6)
  {
    printf("\t\t%llu with bad options\n", v176 - qword_100029640);
    v6 = sflag < 2;
  }

  if (v178 != qword_100029650 || v6)
  {
    printf("\t\t%llu with incorrect version number\n", v178 - qword_100029650);
    v6 = sflag < 2;
  }

  v10 = v161 - qword_1000295C8;
  if (v161 != qword_1000295C8 || v6)
  {
    v11 = plural(v161 - qword_1000295C8);
    printf("\t\t%llu fragment%s received\n", v10, v11);
    v6 = sflag < 2;
  }

  if (v162 != qword_1000295D0 || v6)
  {
    printf("\t\t\t%llu dropped (dup or out of space)\n", v162 - qword_1000295D0);
    v6 = sflag < 2;
  }

  if (v163 != qword_1000295D8 || v6)
  {
    printf("\t\t\t%llu dropped after timeout\n", v163 - qword_1000295D8);
    v6 = sflag < 2;
  }

  if (v164 != qword_1000295E0 || v6)
  {
    printf("\t\t\t%llu exceeded limit\n", v164 - qword_1000295E0);
    v6 = sflag < 2;
  }

  if (v171 != qword_100029618 || v6)
  {
    printf("\t\t\t%llu reassembled ok\n", v171 - qword_100029618);
    v6 = sflag < 2;
  }

  if (v172 != qword_100029620 || v6)
  {
    printf("\t\t\t%llu atomic fragments received\n", v172 - qword_100029620);
    v6 = sflag < 2;
  }

  v12 = v168 - qword_100029600;
  if (v168 != qword_100029600 || v6)
  {
    v13 = plural(v168 - qword_100029600);
    printf("\t\t%llu packet%s for this host\n", v12, v13);
    v6 = sflag < 2;
  }

  v14 = v218 - qword_10002A3A8;
  if (v218 != qword_10002A3A8 || v6)
  {
    v15 = plural(v218 - qword_10002A3A8);
    printf("\t\t%llu input packet%s that passed the weak ES interface address match\n", v14, v15);
    v6 = sflag < 2;
  }

  v16 = v219 - qword_10002A3B0;
  if (v219 != qword_10002A3B0 || v6)
  {
    v17 = plural(v219 - qword_10002A3B0);
    printf("\t\t%llu input packet%s with no interface address match\n", v16, v17);
    v6 = sflag < 2;
  }

  v18 = v165 - qword_1000295E8;
  if (v165 != qword_1000295E8 || v6)
  {
    v19 = plural(v165 - qword_1000295E8);
    printf("\t\t%llu packet%s forwarded\n", v18, v19);
    v6 = sflag < 2;
  }

  v20 = v166 - qword_1000295F0;
  if (v166 != qword_1000295F0 || v6)
  {
    v21 = plural(v166 - qword_1000295F0);
    printf("\t\t%llu packet%s not forwardable\n", v20, v21);
    v6 = sflag < 2;
  }

  v22 = v167 - qword_1000295F8;
  if (v167 != qword_1000295F8 || v6)
  {
    v23 = plural(v167 - qword_1000295F8);
    printf("\t\t%llu redirect%s sent\n", v22, v23);
    v6 = sflag < 2;
  }

  v24 = v181 - qword_100029668;
  if (v181 != qword_100029668 || v6)
  {
    v25 = plural(v181 - qword_100029668);
    printf("\t\t%llu multicast packet%s which we didn't join\n", v24, v25);
    v6 = sflag < 2;
  }

  v26 = v185 - qword_100029F88;
  if (v185 != qword_100029F88 || v6)
  {
    v27 = plural(v185 - qword_100029F88);
    printf("\t\t%llu packet%s whose headers are not continuous\n", v26, v27);
    v6 = sflag < 2;
  }

  v28 = v186 - qword_100029F90;
  if (v186 != qword_100029F90 || v6)
  {
    v29 = plural(v186 - qword_100029F90);
    printf("\t\t%llu tunneling packet%s that can't find gif\n", v28, v29);
    v6 = sflag < 2;
  }

  v30 = v187 - qword_100029F98;
  if (v187 != qword_100029F98 || v6)
  {
    v31 = plural(v187 - qword_100029F98);
    printf("\t\t%llu packet%s discarded due to too may headers\n", v30, v31);
    v6 = sflag < 2;
  }

  if (v190 != qword_10002A228 || v6)
  {
    printf("\t\t%llu forward cache hit\n", v190 - qword_10002A228);
    v6 = sflag < 2;
  }

  if (v191 != qword_10002A230 || v6)
  {
    printf("\t\t%llu forward cache miss\n", v191 - qword_10002A230);
    v6 = sflag < 2;
  }

  v32 = v193 - qword_10002A2C0;
  if (v193 != qword_10002A2C0 || v6)
  {
    v33 = plural(v193 - qword_10002A2C0);
    printf("\t\t%llu packet%s dropped due to no bufs for control data\n", v32, v33);
    v6 = sflag < 2;
  }

  v34 = v199 - qword_10002A2F0;
  if (v199 != qword_10002A2F0 || v6)
  {
    v35 = plural(v199 - qword_10002A2F0);
    printf("\t\t%llu input packet%s dropped due to too short length \n", v34, v35);
    v6 = sflag < 2;
  }

  v36 = v200 - qword_10002A2F8;
  if (v200 != qword_10002A2F8 || v6)
  {
    v37 = plural(v200 - qword_10002A2F8);
    printf("\t\t%llu input packet%s dropped due to missing CLAT46 IPv6 address\n", v36, v37);
    v6 = sflag < 2;
  }

  v38 = v201 - qword_10002A300;
  if (v201 != qword_10002A300 || v6)
  {
    v39 = plural(v201 - qword_10002A300);
    printf("\t\t%llu input packet%s dropped due to missing CLAT46 IPv4 address\n", v38, v39);
    v6 = sflag < 2;
  }

  v40 = v202 - qword_10002A308;
  if (v202 != qword_10002A308 || v6)
  {
    v41 = plural(v202 - qword_10002A308);
    printf("\t\t%llu input packet%s dropped due to CLAT46 IPv4 address derivation failure\n", v40, v41);
    v6 = sflag < 2;
  }

  v42 = v203 - qword_10002A310;
  if (v203 != qword_10002A310 || v6)
  {
    v43 = plural(v203 - qword_10002A310);
    printf("\t\t%llu input packet%s dropped due to CLAT46 IP header translation failure\n", v42, v43);
    v6 = sflag < 2;
  }

  v44 = v204 - qword_10002A318;
  if (v204 != qword_10002A318 || v6)
  {
    v45 = plural(v204 - qword_10002A318);
    printf("\t\t%llu input packet%s dropped due to CLAT46 protocol translation failure\n", v44, v45);
    v6 = sflag < 2;
  }

  v46 = v205 - qword_10002A320;
  if (v205 != qword_10002A320 || v6)
  {
    v47 = plural(v205 - qword_10002A320);
    printf("\t\t%llu input packet%s dropped due to CLAT46 fragment translation failure\n", v46, v47);
    v6 = sflag < 2;
  }

  v48 = v206 - qword_10002A328;
  if (v206 != qword_10002A328 || v6)
  {
    v49 = plural(v206 - qword_10002A328);
    printf("\t\t%llu input packet%s dropped due to invalid pbuf\n", v48, v49);
    v6 = sflag < 2;
  }

  v50 = v209 - qword_10002A340;
  if (v209 != qword_10002A340 || v6)
  {
    v51 = plural(v209 - qword_10002A340);
    printf("\t\t%llu input IPv4 packet%s dropped on CLAT46 enabled interface\n", v50, v51);
    v6 = sflag < 2;
  }

  v52 = v208 - qword_10002A338;
  if (v208 != qword_10002A338 || v6)
  {
    v53 = plural(v208 - qword_10002A338);
    printf("\t\t%llu input packet%s dropped due to CLAT46 failures\n", v52, v53);
    v6 = sflag < 2;
  }

  v54 = v207 - qword_10002A330;
  if (v207 != qword_10002A330 || v6)
  {
    v55 = plural(v207 - qword_10002A330);
    printf("\t\t%llu input packet%s successfully translated from IPv6 to IPv4\n", v54, v55);
    v6 = sflag < 2;
  }

  v56 = v169 - qword_100029608;
  if (v169 != qword_100029608 || v6)
  {
    v57 = plural(v169 - qword_100029608);
    printf("\t%llu packet%s sent from this host\n", v56, v57);
    v6 = sflag < 2;
  }

  v58 = v179 - qword_100029658;
  if (v179 != qword_100029658 || v6)
  {
    v59 = plural(v179 - qword_100029658);
    printf("\t\t%llu packet%s sent with fabricated ip header\n", v58, v59);
    v6 = sflag < 2;
  }

  v60 = v170 - qword_100029610;
  if (v170 != qword_100029610 || v6)
  {
    v61 = plural(v170 - qword_100029610);
    printf("\t\t%llu output packet%s dropped due to no bufs, etc.\n", v60, v61);
    v6 = sflag < 2;
  }

  v62 = v177 - qword_100029648;
  if (v177 != qword_100029648 || v6)
  {
    v63 = plural(v177 - qword_100029648);
    printf("\t\t%llu output packet%s discarded due to no route\n", v62, v63);
    v6 = sflag < 2;
  }

  v64 = v173 - qword_100029628;
  if (v173 != qword_100029628 || v6)
  {
    v65 = plural(v173 - qword_100029628);
    printf("\t\t%llu output datagram%s fragmented\n", v64, v65);
    v6 = sflag < 2;
  }

  v66 = v174 - qword_100029630;
  if (v174 != qword_100029630 || v6)
  {
    v67 = plural(v174 - qword_100029630);
    printf("\t\t%llu fragment%s created\n", v66, v67);
    v6 = sflag < 2;
  }

  v68 = v175 - qword_100029638;
  if (v175 != qword_100029638 || v6)
  {
    v69 = plural(v175 - qword_100029638);
    printf("\t\t%llu datagram%s that can't be fragmented\n", v68, v69);
    v6 = sflag < 2;
  }

  v70 = v180 - qword_100029660;
  if (v180 != qword_100029660 || v6)
  {
    v71 = plural(v180 - qword_100029660);
    printf("\t\t%llu packet%s that violated scope rules\n", v70, v71);
    v6 = sflag < 2;
  }

  v72 = v198 - qword_10002A2E8;
  if (v198 != qword_10002A2E8 || v6)
  {
    v73 = plural(v198 - qword_10002A2E8);
    printf("\t\t%llu packet%s dropped due to NECP policy\n", v72, v73);
    v6 = sflag < 2;
  }

  v74 = v210 - qword_10002A348;
  if (v210 != qword_10002A348 || v6)
  {
    v75 = plural(v210 - qword_10002A348);
    printf("\t\t%llu output packet%s dropped due to missing CLAT46 IPv6 address\n", v74, v75);
    v6 = sflag < 2;
  }

  v76 = v211 - qword_10002A350;
  if (v211 != qword_10002A350 || v6)
  {
    v77 = plural(v211 - qword_10002A350);
    printf("\t\t%llu output packet%s dropped due to CLAT46 IPv6 address synthesis failure\n", v76, v77);
    v6 = sflag < 2;
  }

  v78 = v212 - qword_10002A358;
  if (v212 != qword_10002A358 || v6)
  {
    v79 = plural(v212 - qword_10002A358);
    printf("\t\t%llu output packet%s dropped due to CLAT46 IP header translation failure\n", v78, v79);
    v6 = sflag < 2;
  }

  v80 = v213 - qword_10002A360;
  if (v213 != qword_10002A360 || v6)
  {
    v81 = plural(v213 - qword_10002A360);
    printf("\t\t%llu output packet%s dropped due to CLAT46 protocol translation failure\n", v80, v81);
    v6 = sflag < 2;
  }

  v82 = v214 - qword_10002A368;
  if (v214 != qword_10002A368 || v6)
  {
    v83 = plural(v214 - qword_10002A368);
    printf("\t\t%llu output packet%s dropped due to CLAT46 fragment translation failure\n", v82, v83);
    v6 = sflag < 2;
  }

  v84 = v215 - qword_10002A370;
  if (v215 != qword_10002A370 || v6)
  {
    v85 = plural(v215 - qword_10002A370);
    printf("\t\t%llu output packet%s dropped due to invalid pbuf\n", v84, v85);
    v6 = sflag < 2;
  }

  v86 = v217 - qword_10002A380;
  if (v217 != qword_10002A380 || v6)
  {
    v87 = plural(v217 - qword_10002A380);
    printf("\t\t%llu output packet%s dropped due to CLAT46 failures\n", v86, v87);
    v6 = sflag < 2;
  }

  v88 = v216 - qword_10002A378;
  if (v216 != qword_10002A378 || v6)
  {
    v89 = plural(v216 - qword_10002A378);
    printf("\t\t%llu output packet%s successfully translated from IPv4 to IPv6\n", v88, v89);
  }

  v90 = 1;
  v91 = ip6nh;
  segname = stru_1000000B0.segname;
  do
  {
    v93 = *(&v158 + segname);
    v94 = *(ip6_stats_pip6stat + segname);
    if (v93 != v94)
    {
      if (v90)
      {
        puts("\tInput histogram:");
        v93 = *(&v158 + segname);
        v94 = *(ip6_stats_pip6stat + segname);
      }

      printf("\t\t%s: %llu\n", *v91, v93 - v94);
      v90 = 0;
    }

    ++v91;
    segname += 8;
  }

  while (segname != 2240);
  puts("\tMbuf statistics:");
  printf("\t\t%llu one mbuf\n", v182 - qword_100029E70);
  v95 = 0;
  v96 = 1;
  do
  {
    v97 = &v158 + v95;
    v98 = &ip6_stats_pip6stat[v95];
    if (v97[281] != v98[281])
    {
      if (v96)
      {
        puts("\t\ttwo or more mbuf:");
      }

      v99 = if_indextoname(v95, v220);
      printf("\t\t\t%s= %llu\n", v99, v97[281] - v98[281]);
      v96 = 0;
    }

    ++v95;
  }

  while (v95 != 32);
  printf("\t\t%llu one ext mbuf\n", v183 - qword_100029F78);
  result = printf("\t\t%llu two or more ext mbuf\n", v184 - qword_100029F80);
  v100 = v188 - qword_100029FA0;
  if (v188 != qword_100029FA0 || sflag <= 1)
  {
    v101 = plural(v188 - qword_100029FA0);
    result = printf("\t\t%llu failure%s of source address selection\n", v100, v101);
  }

  v102 = 0;
  v103 = 0;
  do
  {
    if ((v103 & 1) == 0)
    {
      result = puts("\t\tsource addresses on an outgoing I/F");
    }

    v104 = v189[v102];
    v105 = ip6_stats_pip6stat[v102 + 319];
    if (v102 > 4)
    {
      if (v102 == 5)
      {
        if (v104 != v105 || sflag <= 1)
        {
          plural(v104 - v105);
          result = printf("\t\t\t%llu site-local%s\n");
        }
      }

      else
      {
        if (v102 != 14)
        {
LABEL_205:
          result = printf("\t\t\t%llu addresses scope=%x\n");
          goto LABEL_218;
        }

        if (v104 != v105 || sflag <= 1)
        {
          plural(v104 - v105);
          result = printf("\t\t\t%llu global%s\n");
        }
      }
    }

    else if (v102 == 1)
    {
      if (v104 != v105 || sflag <= 1)
      {
        plural(v104 - v105);
        result = printf("\t\t\t%llu node-local%s\n");
      }
    }

    else
    {
      if (v102 != 2)
      {
        goto LABEL_205;
      }

      if (v104 != v105 || sflag <= 1)
      {
        plural(v104 - v105);
        result = printf("\t\t\t%llu link-local%s\n");
      }
    }

LABEL_218:
    ++v102;
    v103 = 1;
  }

  while (v102 != 16);
  v110 = 0;
  v111 = 0;
  do
  {
    if ((v111 & 1) == 0)
    {
      result = puts("\t\tsource addresses on a non-outgoing I/F");
    }

    v112 = v189[v110 + 16];
    v113 = ip6_stats_pip6stat[v110 + 335];
    if (v110 > 4)
    {
      if (v110 == 5)
      {
        if (v112 != v113 || sflag <= 1)
        {
          plural(v112 - v113);
          result = printf("\t\t\t%llu site-local%s\n");
        }
      }

      else
      {
        if (v110 != 14)
        {
LABEL_239:
          result = printf("\t\t\t%llu addresses scope=%x\n");
          goto LABEL_252;
        }

        if (v112 != v113 || sflag <= 1)
        {
          plural(v112 - v113);
          result = printf("\t\t\t%llu global%s\n");
        }
      }
    }

    else if (v110 == 1)
    {
      if (v112 != v113 || sflag <= 1)
      {
        plural(v112 - v113);
        result = printf("\t\t\t%llu node-local%s\n");
      }
    }

    else
    {
      if (v110 != 2)
      {
        goto LABEL_239;
      }

      if (v112 != v113 || sflag <= 1)
      {
        plural(v112 - v113);
        result = printf("\t\t\t%llu link-local%s\n");
      }
    }

LABEL_252:
    ++v110;
    v111 = 1;
  }

  while (v110 != 16);
  v118 = 0;
  v119 = 0;
  do
  {
    if ((v119 & 1) == 0)
    {
      result = puts("\t\tsource addresses of same scope");
    }

    v120 = v189[v118 + 32];
    v121 = ip6_stats_pip6stat[v118 + 351];
    if (v118 > 4)
    {
      if (v118 == 5)
      {
        if (v120 != v121 || sflag <= 1)
        {
          plural(v120 - v121);
          result = printf("\t\t\t%llu site-local%s\n");
        }
      }

      else
      {
        if (v118 != 14)
        {
LABEL_273:
          result = printf("\t\t\t%llu addresses scope=%x\n");
          goto LABEL_286;
        }

        if (v120 != v121 || sflag <= 1)
        {
          plural(v120 - v121);
          result = printf("\t\t\t%llu global%s\n");
        }
      }
    }

    else if (v118 == 1)
    {
      if (v120 != v121 || sflag <= 1)
      {
        plural(v120 - v121);
        result = printf("\t\t\t%llu node-local%s\n");
      }
    }

    else
    {
      if (v118 != 2)
      {
        goto LABEL_273;
      }

      if (v120 != v121 || sflag <= 1)
      {
        plural(v120 - v121);
        result = printf("\t\t\t%llu link-local%s\n");
      }
    }

LABEL_286:
    ++v118;
    v119 = 1;
  }

  while (v118 != 16);
  v126 = 0;
  v127 = 0;
  do
  {
    if ((v127 & 1) == 0)
    {
      result = puts("\t\tsource addresses of a different scope");
    }

    v128 = v189[v126 + 48];
    v129 = ip6_stats_pip6stat[v126 + 367];
    if (v126 > 4)
    {
      if (v126 == 5)
      {
        if (v128 != v129 || sflag <= 1)
        {
          plural(v128 - v129);
          result = printf("\t\t\t%llu site-local%s\n");
        }
      }

      else
      {
        if (v126 != 14)
        {
LABEL_307:
          result = printf("\t\t\t%llu addresses scope=%x\n");
          goto LABEL_320;
        }

        if (v128 != v129 || sflag <= 1)
        {
          plural(v128 - v129);
          result = printf("\t\t\t%llu global%s\n");
        }
      }
    }

    else if (v126 == 1)
    {
      if (v128 != v129 || sflag <= 1)
      {
        plural(v128 - v129);
        result = printf("\t\t\t%llu node-local%s\n");
      }
    }

    else
    {
      if (v126 != 2)
      {
        goto LABEL_307;
      }

      if (v128 != v129 || sflag <= 1)
      {
        plural(v128 - v129);
        result = printf("\t\t\t%llu link-local%s\n");
      }
    }

LABEL_320:
    ++v126;
    v127 = 1;
  }

  while (v126 != 16);
  v134 = 0;
  v135 = 0;
  do
  {
    if ((v135 & 1) == 0)
    {
      result = puts("\t\tdeprecated source addresses");
    }

    v136 = v189[v134 + 64];
    v137 = ip6_stats_pip6stat[v134 + 383];
    if (v134 > 4)
    {
      if (v134 == 5)
      {
        if (v136 != v137 || sflag <= 1)
        {
          plural(v136 - v137);
          result = printf("\t\t\t%llu site-local%s\n");
        }
      }

      else
      {
        if (v134 != 14)
        {
LABEL_341:
          result = printf("\t\t\t%llu addresses scope=%x\n");
          goto LABEL_354;
        }

        if (v136 != v137 || sflag <= 1)
        {
          plural(v136 - v137);
          result = printf("\t\t\t%llu global%s\n");
        }
      }
    }

    else if (v134 == 1)
    {
      if (v136 != v137 || sflag <= 1)
      {
        plural(v136 - v137);
        result = printf("\t\t\t%llu node-local%s\n");
      }
    }

    else
    {
      if (v134 != 2)
      {
        goto LABEL_341;
      }

      if (v136 != v137 || sflag <= 1)
      {
        plural(v136 - v137);
        result = printf("\t\t\t%llu link-local%s\n");
      }
    }

LABEL_354:
    ++v134;
    v135 = 1;
  }

  while (v134 != 16);
  v142 = 0;
  v143 = srcrulenames;
  for (i = 401; i != 417; ++i)
  {
    if ((v142 & 1) == 0)
    {
      result = puts("\t\tsource address selection");
    }

    if ((i - 411) >= 6)
    {
      v145 = *(&v158 + i) - ip6_stats_pip6stat[i];
      v146 = plural(*(&v158 + 2 * i) - LODWORD(ip6_stats_pip6stat[i]));
      result = printf("\t\t\t%llu rule%s %s\n", v145, v146, *v143);
    }

    ++v143;
    v142 = 1;
  }

  v147 = v196 - qword_10002A2D8;
  if (v196 != qword_10002A2D8 || sflag <= 1)
  {
    v149 = plural(v196 - qword_10002A2D8);
    result = printf("\t\t%llu duplicate address detection collision%s\n", v147, v149);
    v150 = sflag < 2;
  }

  else
  {
    v150 = 0;
  }

  v151 = v197 - qword_10002A2E0;
  if (v197 == qword_10002A2E0 && !v150)
  {
    v154 = 0;
  }

  else
  {
    v153 = plural(v197 - qword_10002A2E0);
    result = printf("\t\t%llu duplicate address detection NS loop%s\n", v151, v153);
    v154 = sflag < 2;
  }

  v155 = v192 - qword_10002A2B8;
  if (v192 != qword_10002A2B8 || v154)
  {
    v156 = plural(v192 - qword_10002A2B8);
    result = printf("\t\t%llu time%s ignored source on secondary expensive I/F\n", v155, v156);
  }

  if (interval >= 1)
  {
    return __memmove_chk();
  }

  return result;
}

void ip6_ifstats()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {

    perror("Warning: socket(AF_INET6)");
  }

  else
  {
    v1 = v0;
    if (interval)
    {
      v2 = vflag < 1;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      print_time();
    }

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
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __strlcpy_chk();
    printf("ip6 on %s:\n", &v54);
    if (ioctl(v1, 0xC1206953uLL, &v54) < 0)
    {
      if (vflag >= 1)
      {
        perror("Warning: ioctl(SIOCGIFSTAT_IN6)");
      }
    }

    else
    {
      v3 = v55;
      if (v55 || sflag <= 1)
      {
        v5 = plural(v55);
        printf("\t%llu total input datagram%s\n", v3, v5);
        v4 = sflag < 2;
      }

      else
      {
        v4 = 0;
      }

      v6 = *(&v55 + 1);
      if (*(&v55 + 1) || v4)
      {
        v7 = plural(SDWORD2(v55));
        printf("\t%llu datagram%s with invalid header received\n", v6, v7);
        v4 = sflag < 2;
      }

      v8 = v56;
      if (v56 || v4)
      {
        v9 = plural(v56);
        printf("\t%llu datagram%s exceeded MTU received\n", v8, v9);
        v4 = sflag < 2;
      }

      v10 = *(&v56 + 1);
      if (*(&v56 + 1) || v4)
      {
        v11 = plural(SDWORD2(v56));
        printf("\t%llu datagram%s with no route received\n", v10, v11);
        v4 = sflag < 2;
      }

      v12 = v57;
      if (v57 || v4)
      {
        v13 = plural(v57);
        printf("\t%llu datagram%s with invalid dst received\n", v12, v13);
        v4 = sflag < 2;
      }

      v14 = *(&v57 + 1);
      if (*(&v57 + 1) || v4)
      {
        v15 = plural(SDWORD2(v57));
        printf("\t%llu datagram%s with unknown proto received\n", v14, v15);
        v4 = sflag < 2;
      }

      v16 = v58;
      if (v58 || v4)
      {
        v17 = plural(v58);
        printf("\t%llu truncated datagram%s received\n", v16, v17);
        v4 = sflag < 2;
      }

      v18 = *(&v58 + 1);
      if (*(&v58 + 1) || v4)
      {
        v19 = plural(SDWORD2(v58));
        printf("\t%llu input datagram%s discarded\n", v18, v19);
        v4 = sflag < 2;
      }

      v20 = v59;
      if (v59 || v4)
      {
        v21 = plural(v59);
        printf("\t%llu datagram%s delivered to an upper layer protocol\n", v20, v21);
        v4 = sflag < 2;
      }

      v22 = *(&v59 + 1);
      if (*(&v59 + 1) || v4)
      {
        v23 = plural(SDWORD2(v59));
        printf("\t%llu datagram%s forwarded to this interface\n", v22, v23);
        v4 = sflag < 2;
      }

      v24 = v60;
      if (v60 || v4)
      {
        v25 = plural(v60);
        printf("\t%llu datagram%s sent from an upper layer protocol\n", v24, v25);
        v4 = sflag < 2;
      }

      v26 = *(&v60 + 1);
      if (*(&v60 + 1) || v4)
      {
        v27 = plural(SDWORD2(v60));
        printf("\t%llu total discarded output datagram%s\n", v26, v27);
        v4 = sflag < 2;
      }

      v28 = v61;
      if (v61 || v4)
      {
        v29 = plural(v61);
        printf("\t%llu output datagram%s fragmented\n", v28, v29);
        v4 = sflag < 2;
      }

      v30 = *(&v61 + 1);
      if (*(&v61 + 1) || v4)
      {
        v31 = plural(SDWORD2(v61));
        printf("\t%llu output datagram%s failed on fragment\n", v30, v31);
        v4 = sflag < 2;
      }

      v32 = v62;
      if (v62 || v4)
      {
        v33 = plural(v62);
        printf("\t%llu output datagram%s succeeded on fragment\n", v32, v33);
        v4 = sflag < 2;
      }

      v34 = *(&v62 + 1);
      if (*(&v62 + 1) || v4)
      {
        v35 = plural(SDWORD2(v62));
        printf("\t%llu incoming datagram%s fragmented\n", v34, v35);
        v4 = sflag < 2;
      }

      v36 = v63;
      if (v63 || v4)
      {
        v37 = plural(v63);
        printf("\t%llu datagram%s reassembled\n", v36, v37);
        v4 = sflag < 2;
      }

      v38 = *(&v63 + 1);
      if (*(&v63 + 1) || v4)
      {
        v39 = plural(SDWORD2(v63));
        printf("\t%llu atomic fragments%s received\n", v38, v39);
        v4 = sflag < 2;
      }

      v40 = v64;
      if (v64 || v4)
      {
        v41 = plural(v64);
        printf("\t%llu datagram%s failed on reassembling\n", v40, v41);
        v4 = sflag < 2;
      }

      v42 = *(&v64 + 1);
      if (*(&v64 + 1) || v4)
      {
        v43 = plural(SDWORD2(v64));
        printf("\t%llu multicast datagram%s received\n", v42, v43);
        v4 = sflag < 2;
      }

      v44 = v65;
      if (v65 || v4)
      {
        v45 = plural(v65);
        printf("\t%llu multicast datagram%s sent\n", v44, v45);
        v4 = sflag < 2;
      }

      v46 = *(&v65 + 1);
      if (*(&v65 + 1) || v4)
      {
        v47 = plural(SDWORD2(v65));
        printf("\t%llu ICMPv6 packet%s received for unreachable destination\n", v46, v47);
        v4 = sflag < 2;
      }

      v48 = v66;
      if (v66 || v4)
      {
        v49 = plural(v66);
        printf("\t%llu address expiry event%s reported\n", v48, v49);
        v4 = sflag < 2;
      }

      v50 = *(&v66 + 1);
      if (*(&v66 + 1) || v4)
      {
        v51 = plural(SDWORD2(v66));
        printf("\t%llu prefix expiry event%s reported\n", v50, v51);
        v4 = sflag < 2;
      }

      v52 = v67;
      if (v67 || v4)
      {
        v53 = plural(v67);
        printf("\t%llu default router expiry event%s reported\n", v52, v53);
      }
    }

    close(v1);
  }
}

uint64_t icmp6_stats()
{
  __chkstk_darwin();
  v1 = v0;
  *v83 = xmmword_1000232B0;
  v52 = 4344;
  bzero(&v53, 0x10F8uLL);
  result = sysctl(v83, 4u, &v53, &v52, 0, 0);
  if ((result & 0x80000000) == 0)
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

    printf("%s:\n", v1);
    v4 = v53 - icmp6_stats_picmp6stat[0];
    if (v53 == icmp6_stats_picmp6stat[0] && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v53 - LODWORD(icmp6_stats_picmp6stat[0]));
      printf("\t%llu call%s to icmp_error\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = v54 - qword_10002A3C0;
    if (v54 != qword_10002A3C0 || v5)
    {
      v8 = plural(v54 - qword_10002A3C0);
      printf("\t%llu error%s not generated because old message was icmp error or so\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = v55 - qword_10002A3C8;
    if (v55 != qword_10002A3C8 || v5)
    {
      v10 = plural(v55 - qword_10002A3C8);
      printf("\t%llu error%s not generated because rate limitation\n", v9, v10);
    }

    v11 = 1;
    v12 = icmp6names;
    v13 = &dword_100000018;
    do
    {
      v14 = *(&v53 + v13);
      v15 = *(icmp6_stats_picmp6stat + v13);
      if (v14 != v15)
      {
        if (v11)
        {
          puts("\tOutput histogram:");
          v14 = *(&v53 + v13);
          v15 = *(icmp6_stats_picmp6stat + v13);
        }

        printf("\t\t%s: %llu\n", *v12, v14 - v15);
        v11 = 0;
      }

      ++v12;
      v13 += 8;
    }

    while (v13 != 2072);
    v16 = v56 - qword_10002ABD0;
    if (v56 != qword_10002ABD0 || sflag <= 1)
    {
      v18 = plural(v56 - qword_10002ABD0);
      printf("\t%llu message%s with bad code fields\n", v16, v18);
      v19 = sflag < 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v57 - qword_10002ABD8;
    if (v57 != qword_10002ABD8 || v19)
    {
      v21 = plural(v57 - qword_10002ABD8);
      printf("\t%llu message%s < minimum length\n", v20, v21);
      v19 = sflag < 2;
    }

    v22 = v58 - qword_10002ABE0;
    if (v58 != qword_10002ABE0 || v19)
    {
      v23 = plural(v58 - qword_10002ABE0);
      printf("\t%llu bad checksum%s\n", v22, v23);
      v19 = sflag < 2;
    }

    v24 = v59 - qword_10002ABE8;
    if (v59 != qword_10002ABE8 || v19)
    {
      v25 = plural(v59 - qword_10002ABE8);
      printf("\t%llu message%s with bad length\n", v24, v25);
    }

    v26 = 1;
    v27 = icmp6names;
    for (i = 264; i != 520; ++i)
    {
      v29 = *(&v53 + i);
      v30 = icmp6_stats_picmp6stat[i];
      if (v29 != v30)
      {
        if (v26)
        {
          puts("\tInput histogram:");
          v29 = *(&v53 + i);
          v30 = icmp6_stats_picmp6stat[i];
        }

        printf("\t\t%s: %llu\n", *v27, v29 - v30);
        v26 = 0;
      }

      ++v27;
    }

    puts("\tHistogram of error messages to be generated:");
    printf("\t\t%llu no route\n", v62 - qword_10002B400);
    printf("\t\t%llu administratively prohibited\n", v63 - qword_10002B408);
    printf("\t\t%llu beyond scope\n", v64 - qword_10002B410);
    printf("\t\t%llu address unreachable\n", v65 - qword_10002B418);
    printf("\t\t%llu port unreachable\n", v66 - qword_10002B420);
    printf("\t\t%llu packet too big\n", v67 - qword_10002B428);
    printf("\t\t%llu time exceed transit\n", v68 - qword_10002B430);
    printf("\t\t%llu time exceed reassembly\n", v69 - qword_10002B438);
    printf("\t\t%llu erroneous header field\n", v70 - qword_10002B440);
    printf("\t\t%llu unrecognized next header\n", v71 - qword_10002B448);
    printf("\t\t%llu unrecognized option\n", v72 - qword_10002B450);
    printf("\t\t%llu redirect\n", v73 - qword_10002B458);
    result = printf("\t\t%llu unknown\n", v74 - qword_10002B460);
    v31 = v60 - qword_10002ABF0;
    if (v60 == qword_10002ABF0 && sflag > 1)
    {
      v32 = 0;
    }

    else
    {
      v33 = plural(v31);
      result = printf("\t%llu message response%s generated\n", v31, v33);
      v32 = sflag < 2;
    }

    v34 = v61 - qword_10002B3F8;
    if (v61 != qword_10002B3F8 || v32)
    {
      v35 = plural(v61 - qword_10002B3F8);
      result = printf("\t%llu message%s with too many ND options\n", v34, v35);
      v32 = sflag < 2;
    }

    v36 = v76 - qword_10002B470;
    if (v76 != qword_10002B470 || v32)
    {
      v37 = plural(v76 - qword_10002B470);
      result = printf("\t%qu message%s with bad ND options\n", v36, v37);
      v32 = sflag < 2;
    }

    v38 = v77 - qword_10002B478;
    if (v77 != qword_10002B478 || v32)
    {
      v39 = plural(v77 - qword_10002B478);
      result = printf("\t%qu bad neighbor solicitation message%s\n", v38, v39);
      v32 = sflag < 2;
    }

    v40 = v78 - qword_10002B480;
    if (v78 != qword_10002B480 || v32)
    {
      v41 = plural(v78 - qword_10002B480);
      result = printf("\t%qu bad neighbor advertisement message%s\n", v40, v41);
      v32 = sflag < 2;
    }

    v42 = v79 - qword_10002B488;
    if (v79 != qword_10002B488 || v32)
    {
      v43 = plural(v79 - qword_10002B488);
      result = printf("\t%qu bad router solicitation message%s\n", v42, v43);
      v32 = sflag < 2;
    }

    v44 = v80 - qword_10002B490;
    if (v80 != qword_10002B490 || v32)
    {
      v45 = plural(v80 - qword_10002B490);
      result = printf("\t%qu bad router advertisement message%s\n", v44, v45);
      v32 = sflag < 2;
    }

    v46 = v81 - qword_10002B498;
    if (v81 != qword_10002B498 || v32)
    {
      v47 = plural(v81 - qword_10002B498);
      result = printf("\t%qu bad redirect message%s\n", v46, v47);
      v32 = sflag < 2;
    }

    v48 = v75 - qword_10002B468;
    if (v75 != qword_10002B468 || v32)
    {
      v49 = plural(v75 - qword_10002B468);
      result = printf("\t%llu path MTU change%s\n", v48, v49);
      v32 = sflag < 2;
    }

    v50 = v82 - qword_10002B4A0;
    if (v82 != qword_10002B4A0 || v32)
    {
      v51 = plural(v82 - qword_10002B4A0);
      result = printf("\t%qu dropped fragmented NDP message%s\n", v50, v51);
    }

    if (interval >= 1)
    {
      return __memmove_chk();
    }
  }

  return result;
}

void icmp6_ifstats()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {

    perror("Warning: socket(AF_INET6)");
  }

  else
  {
    v1 = v0;
    if (interval)
    {
      v2 = vflag < 1;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      print_time();
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    __strlcpy_chk();
    printf("icmp6 on %s:\n", &v72);
    if (ioctl(v1, 0xC1206954uLL, &v72) < 0)
    {
      if (vflag >= 1)
      {
        perror("Warning: ioctl(SIOCGIFSTAT_ICMP6)");
      }
    }

    else
    {
      v3 = v73;
      if (v73 || sflag <= 1)
      {
        v5 = plural(v73);
        printf("\t%llu total input message%s\n", v3, v5);
        v4 = sflag < 2;
      }

      else
      {
        v4 = 0;
      }

      v6 = *(&v73 + 1);
      if (*(&v73 + 1) || v4)
      {
        v7 = plural(SDWORD2(v73));
        printf("\t%llu total input error message%s\n", v6, v7);
        v4 = sflag < 2;
      }

      v8 = v74;
      if (v74 || v4)
      {
        v9 = plural(v74);
        printf("\t%llu input destination unreachable error%s\n", v8, v9);
        v4 = sflag < 2;
      }

      v10 = *(&v74 + 1);
      if (*(&v74 + 1) || v4)
      {
        v11 = plural(SDWORD2(v74));
        printf("\t%llu input administratively prohibited error%s\n", v10, v11);
        v4 = sflag < 2;
      }

      v12 = v75;
      if (v75 || v4)
      {
        v13 = plural(v75);
        printf("\t%llu input time exceeded error%s\n", v12, v13);
        v4 = sflag < 2;
      }

      v14 = *(&v75 + 1);
      if (*(&v75 + 1) || v4)
      {
        v15 = plural(SDWORD2(v75));
        printf("\t%llu input parameter problem error%s\n", v14, v15);
        v4 = sflag < 2;
      }

      v16 = v76;
      if (v76 || v4)
      {
        v17 = plural(v76);
        printf("\t%llu input packet too big error%s\n", v16, v17);
        v4 = sflag < 2;
      }

      v18 = *(&v76 + 1);
      if (*(&v76 + 1) || v4)
      {
        v19 = plural(SDWORD2(v76));
        printf("\t%llu input echo request%s\n", v18, v19);
        v4 = sflag < 2;
      }

      v20 = v77;
      if (v77 || v4)
      {
        v21 = plural(v77);
        printf("\t%llu input echo reply%s\n", v20, v21);
        v4 = sflag < 2;
      }

      v22 = *(&v77 + 1);
      if (*(&v77 + 1) || v4)
      {
        v23 = plural(SDWORD2(v77));
        printf("\t%llu input router solicitation%s\n", v22, v23);
        v4 = sflag < 2;
      }

      v24 = v78;
      if (v78 || v4)
      {
        v25 = plural(v78);
        printf("\t%llu input router advertisement%s\n", v24, v25);
        v4 = sflag < 2;
      }

      v26 = *(&v78 + 1);
      if (*(&v78 + 1) || v4)
      {
        v27 = plural(SDWORD2(v78));
        printf("\t%llu input neighbor solicitation%s\n", v26, v27);
        v4 = sflag < 2;
      }

      v28 = v79;
      if (v79 || v4)
      {
        v29 = plural(v79);
        printf("\t%llu input neighbor advertisement%s\n", v28, v29);
        v4 = sflag < 2;
      }

      v30 = *(&v79 + 1);
      if (*(&v79 + 1) || v4)
      {
        v31 = plural(SDWORD2(v79));
        printf("\t%llu input redirect%s\n", v30, v31);
        v4 = sflag < 2;
      }

      v32 = v80;
      if (v80 || v4)
      {
        v33 = plural(v80);
        printf("\t%llu input MLD query%s\n", v32, v33);
        v4 = sflag < 2;
      }

      v34 = *(&v80 + 1);
      if (*(&v80 + 1) || v4)
      {
        v35 = plural(SDWORD2(v80));
        printf("\t%llu input MLD report%s\n", v34, v35);
        v4 = sflag < 2;
      }

      v36 = v81;
      if (v81 || v4)
      {
        v37 = plural(v81);
        printf("\t%llu input MLD done%s\n", v36, v37);
        v4 = sflag < 2;
      }

      v38 = *(&v81 + 1);
      if (*(&v81 + 1) || v4)
      {
        v39 = plural(SDWORD2(v81));
        printf("\t%llu total output message%s\n", v38, v39);
        v4 = sflag < 2;
      }

      v40 = v82;
      if (v82 || v4)
      {
        v41 = plural(v82);
        printf("\t%llu total output error message%s\n", v40, v41);
        v4 = sflag < 2;
      }

      v42 = *(&v82 + 1);
      if (*(&v82 + 1) || v4)
      {
        v43 = plural(SDWORD2(v82));
        printf("\t%llu output destination unreachable error%s\n", v42, v43);
        v4 = sflag < 2;
      }

      v44 = v83;
      if (v83 || v4)
      {
        v45 = plural(v83);
        printf("\t%llu output administratively prohibited error%s\n", v44, v45);
        v4 = sflag < 2;
      }

      v46 = *(&v83 + 1);
      if (*(&v83 + 1) || v4)
      {
        v47 = plural(SDWORD2(v83));
        printf("\t%llu output time exceeded error%s\n", v46, v47);
        v4 = sflag < 2;
      }

      v48 = v84;
      if (v84 || v4)
      {
        v49 = plural(v84);
        printf("\t%llu output parameter problem error%s\n", v48, v49);
        v4 = sflag < 2;
      }

      v50 = *(&v84 + 1);
      if (*(&v84 + 1) || v4)
      {
        v51 = plural(SDWORD2(v84));
        printf("\t%llu output packet too big error%s\n", v50, v51);
        v4 = sflag < 2;
      }

      v52 = v85;
      if (v85 || v4)
      {
        v53 = plural(v85);
        printf("\t%llu output echo request%s\n", v52, v53);
        v4 = sflag < 2;
      }

      v54 = *(&v85 + 1);
      if (*(&v85 + 1) || v4)
      {
        v55 = plural(SDWORD2(v85));
        printf("\t%llu output echo reply%s\n", v54, v55);
        v4 = sflag < 2;
      }

      v56 = v86;
      if (v86 || v4)
      {
        v57 = plural(v86);
        printf("\t%llu output router solicitation%s\n", v56, v57);
        v4 = sflag < 2;
      }

      v58 = *(&v86 + 1);
      if (*(&v86 + 1) || v4)
      {
        v59 = plural(SDWORD2(v86));
        printf("\t%llu output router advertisement%s\n", v58, v59);
        v4 = sflag < 2;
      }

      v60 = v87;
      if (v87 || v4)
      {
        v61 = plural(v87);
        printf("\t%llu output neighbor solicitation%s\n", v60, v61);
        v4 = sflag < 2;
      }

      v62 = *(&v87 + 1);
      if (*(&v87 + 1) || v4)
      {
        v63 = plural(SDWORD2(v87));
        printf("\t%llu output neighbor advertisement%s\n", v62, v63);
        v4 = sflag < 2;
      }

      v64 = v88;
      if (v88 || v4)
      {
        v65 = plural(v88);
        printf("\t%llu output redirect%s\n", v64, v65);
        v4 = sflag < 2;
      }

      v66 = *(&v88 + 1);
      if (*(&v88 + 1) || v4)
      {
        v67 = plural(SDWORD2(v88));
        printf("\t%llu output MLD query%s\n", v66, v67);
        v4 = sflag < 2;
      }

      v68 = v89;
      if (v89 || v4)
      {
        v69 = plural(v89);
        printf("\t%llu output MLD report%s\n", v68, v69);
        v4 = sflag < 2;
      }

      v70 = *(&v89 + 1);
      if (*(&v89 + 1) || v4)
      {
        v71 = plural(SDWORD2(v89));
        printf("\t%llu output MLD done%s\n", v70, v71);
      }
    }

    close(v1);
  }
}

void rip6_stats(uint64_t a1, const char *a2)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  *v29 = xmmword_1000232C0;
  v24 = 56;
  if (sysctl(v29, 4u, &v25, &v24, 0, 0) < 0)
  {
    perror("Warning: sysctl(net.inet6.ip6.rip6stats)");
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
    v4 = v25 - rip6_stats_prip6stat;
    if (v25 == rip6_stats_prip6stat && sflag > 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = plural(v25 - rip6_stats_prip6stat);
      printf("\t%llu message%s received\n", v4, v6);
      v5 = sflag < 2;
    }

    v7 = *(&v25 + 1) - qword_10002B4B8;
    if (*(&v25 + 1) != qword_10002B4B8 || v5)
    {
      v8 = plural(DWORD2(v25) - qword_10002B4B8);
      printf("\t%llu checksum calculation%s on inbound\n", v7, v8);
      v5 = sflag < 2;
    }

    v9 = v26 - qword_10002B4C0;
    if (v26 != qword_10002B4C0 || v5)
    {
      v10 = plural(v26 - qword_10002B4C0);
      printf("\t%llu message%s with bad checksum\n", v9, v10);
      v5 = sflag < 2;
    }

    v11 = *(&v26 + 1) - qword_10002B4C8;
    if (*(&v26 + 1) != qword_10002B4C8 || v5)
    {
      v12 = plural(DWORD2(v26) - qword_10002B4C8);
      printf("\t%llu message%s dropped due to no socket\n", v11, v12);
      v5 = sflag < 2;
    }

    v13 = v27 - qword_10002B4D0;
    if (v27 != qword_10002B4D0 || v5)
    {
      v15 = plural(v27 - qword_10002B4D0);
      printf("\t%llu multicast message%s dropped due to no socket\n", v13, v15);
      v14 = sflag < 2;
    }

    else
    {
      v14 = 0;
    }

    v16 = *(&v27 + 1);
    v17 = *(&v27 + 1) - qword_10002B4D8;
    if (*(&v27 + 1) != qword_10002B4D8 || v14)
    {
      v19 = plural(DWORD2(v27) - qword_10002B4D8);
      printf("\t%llu message%s dropped due to full socket buffers\n", v17, v19);
      v18 = *(&v27 + 1);
      v16 = qword_10002B4D8;
      v14 = sflag < 2;
    }

    else
    {
      v18 = *(&v27 + 1);
    }

    v20 = v25 + qword_10002B4C0 + qword_10002B4C8 - (rip6_stats_prip6stat + v26 + *(&v26 + 1) + v27) + qword_10002B4D0 + v16 - v18;
    if (v20 || v14)
    {
      printf("\t%llu delivered\n", v20);
      v21 = sflag < 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = v28 - qword_10002B4E0;
    if (v28 != qword_10002B4E0 || v21)
    {
      v23 = plural(v28 - qword_10002B4E0);
      printf("\t%llu datagram%s output\n", v22, v23);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }
  }
}

uint64_t inet6print(_DWORD *a1, int a2, const char *a3, int a4)
{
  if (lflag)
  {
    v7 = 39;
  }

  else
  {
    if (Aflag)
    {
      v8 = a4 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v7 = 12;
    }

    else
    {
      v7 = 16;
    }
  }

  inet6name(a1);
  snprintf(__str, 0x50uLL, "%.*s.", v7, inet6name_line);
  v9 = index(__str, 0);
  v10 = 0;
  if (a2 && !a4)
  {
    if (!strcmp(a3, "tcp6"))
    {
      v12 = "tcp";
    }

    else
    {
      if (strcmp(a3, "udp6"))
      {
        v11 = a2;
        v12 = a3;
LABEL_17:
        v10 = getservbyport(v11, v12);
        goto LABEL_18;
      }

      v12 = "udp";
    }

    v11 = a2;
    goto LABEL_17;
  }

LABEL_18:
  v13 = (__str - v9);
  if (!a2 || v10)
  {
    if (v10)
    {
      s_name = v10->s_name;
    }

    snprintf(v9, (v13 + 80), "%.15s");
  }

  else
  {
    snprintf(v9, (v13 + 80), "%d");
  }

  if (Aflag)
  {
    v15 = 18;
  }

  else
  {
    v15 = 22;
  }

  if (lflag)
  {
    v16 = 45;
  }

  else
  {
    v16 = v15;
  }

  return printf("%-*.*s ", v16, v16, __str);
}

void *inet6name(_DWORD *a1)
{
  v2 = nflag;
  if ((inet6name_first & 1) == 0 && !nflag)
  {
    inet6name_first = 1;
    if (gethostname(&inet6name_domain, 0x100uLL) || (v3 = index(&inet6name_domain, 46)) == 0)
    {
      inet6name_domain = 0;
    }

    else
    {
      strlen(v3 + 1);
      __memmove_chk();
    }

    v2 = nflag;
  }

  if (!v2 && (*a1 || a1[1] || a1[2] || a1[3]) && (v5 = gethostbyaddr(a1, 0x10u, 30)) != 0)
  {
    p_h_name = &v5->h_name;
    v7 = index(v5->h_name, 46);
    if (v7)
    {
      v8 = v7;
      if (!strcmp(v7 + 1, &inet6name_domain))
      {
        *v8 = 0;
      }
    }

    v9 = *p_h_name;
    v10 = strlen(v9);
    v4 = clean_non_printable(v9, v10);
  }

  else
  {
    v4 = 0;
  }

  v11 = *a1;
  if ((*a1 || a1[1] || a1[2] || a1[3]) && !v4)
  {
    *&v13[8] = 0uLL;
    v14 = 0;
    *v13 = 7708;
    *&v13[8] = *a1;
    if (v11 == 255)
    {
      if ((BYTE1(v11) & 0xF) != 1 && ((v11 & 0xF000) == 0x3000 || (v11 & 0xF00) != 0x200))
      {
LABEL_32:
        if (getnameinfo(v13, 0x1Cu, v15, 0x401u, 0, 0, 2))
        {
          __strlcpy_chk();
        }

        goto LABEL_34;
      }
    }

    else if (v11 != 254 || (BYTE1(v11) & 0xC0) != 0x80)
    {
      goto LABEL_32;
    }

    v14 = bswap32(v11);
    *&v13[10] = 0;
    goto LABEL_32;
  }

LABEL_34:
  __strlcpy_chk();
  return &inet6name_line;
}

uint64_t ipsec_stats(int a1, char *__s1)
{
  v44 = 12432;
  if (!strcmp(__s1, "ipsec"))
  {
    v4 = "net.inet.ipsec.stats";
  }

  else
  {
    result = strcmp(__s1, "ipsec6");
    if (result)
    {
      return result;
    }

    v4 = "net.inet6.ipsec6.stats";
  }

  result = sysctlbyname(v4, &ipsecstat, &v44, 0, 0);
  if (result != -1)
  {
    printf("%s:\n", __s1);
    if (interval)
    {
      v5 = vflag < 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      print_time();
    }

    v6 = ipsecstat - pipsecstat;
    if (ipsecstat == pipsecstat && sflag > 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = plural(ipsecstat - pipsecstat);
      printf("\t%llu inbound packet%s processed successfully\n", v6, v8);
      v7 = sflag < 2;
    }

    v9 = qword_10002B628 - qword_10002E6B8;
    if (qword_10002B628 != qword_10002E6B8 || v7)
    {
      v10 = plural(qword_10002B628 - qword_10002E6B8);
      printf("\t%llu inbound packet%s violated process security policy\n", v9, v10);
      v7 = sflag < 2;
    }

    v11 = qword_10002B630 - qword_10002E6C0;
    if (qword_10002B630 != qword_10002E6C0 || v7)
    {
      v12 = plural(qword_10002B630 - qword_10002E6C0);
      printf("\t%llu inbound packet%s with no SA available\n", v11, v12);
      v7 = sflag < 2;
    }

    v13 = qword_10002B638 - qword_10002E6C8;
    if (qword_10002B638 != qword_10002E6C8 || v7)
    {
      v14 = plural(qword_10002B638 - qword_10002E6C8);
      printf("\t%llu invalid inbound packet%s\n", v13, v14);
      v7 = sflag < 2;
    }

    v15 = qword_10002B640 - qword_10002E6D0;
    if (qword_10002B640 != qword_10002E6D0 || v7)
    {
      v16 = plural(qword_10002B640 - qword_10002E6D0);
      printf("\t%llu inbound packet%s failed due to insufficient memory\n", v15, v16);
      v7 = sflag < 2;
    }

    v17 = qword_10002B648 - qword_10002E6D8;
    if (qword_10002B648 != qword_10002E6D8 || v7)
    {
      v18 = plural(qword_10002B648 - qword_10002E6D8);
      printf("\t%llu inbound packet%s failed getting SPI\n", v17, v18);
      v7 = sflag < 2;
    }

    v19 = qword_10002B650 - qword_10002E6E0;
    if (qword_10002B650 != qword_10002E6E0 || v7)
    {
      v20 = plural(qword_10002B650 - qword_10002E6E0);
      printf("\t%llu inbound packet%s failed on AH replay check\n", v19, v20);
      v7 = sflag < 2;
    }

    v21 = qword_10002B658 - qword_10002E6E8;
    if (qword_10002B658 != qword_10002E6E8 || v7)
    {
      v22 = plural(qword_10002B658 - qword_10002E6E8);
      printf("\t%llu inbound packet%s failed on ESP replay check\n", v21, v22);
      v7 = sflag < 2;
    }

    v23 = qword_10002B660 - qword_10002E6F0;
    if (qword_10002B660 != qword_10002E6F0 || v7)
    {
      v24 = plural(qword_10002B660 - qword_10002E6F0);
      printf("\t%llu inbound packet%s considered authentic by AH\n", v23, v24);
      v7 = sflag < 2;
    }

    v25 = qword_10002B668 - qword_10002E6F8;
    if (qword_10002B668 != qword_10002E6F8 || v7)
    {
      v26 = plural(qword_10002B668 - qword_10002E6F8);
      printf("\t%llu inbound packet%s failed on AH authentication\n", v25, v26);
      v7 = sflag < 2;
    }

    v27 = qword_10002B670 - qword_10002E700;
    if (qword_10002B670 != qword_10002E700 || v7)
    {
      v28 = plural(qword_10002B670 - qword_10002E700);
      printf("\t%llu inbound packet%s considered authentic by ESP\n", v27, v28);
      v7 = sflag < 2;
    }

    v29 = qword_10002B678 - qword_10002E708;
    if (qword_10002B678 != qword_10002E708 || v7)
    {
      v30 = plural(qword_10002B678 - qword_10002E708);
      printf("\t%llu inbound packet%s failed on ESP authentication\n", v29, v30);
    }

    ipsec_hist(&unk_10002BE80, &unk_10002EF10, &ipsec_ahnames, "AH input");
    ipsec_hist(&unk_10002B680, &unk_10002E710, &ipsec_espnames, "ESP input");
    ipsec_hist(&unk_10002C680, &unk_10002F710, &ipsec_compnames, "IPComp input");
    v31 = qword_10002CE80 - qword_10002FF10;
    if (qword_10002CE80 == qword_10002FF10 && sflag > 1)
    {
      v32 = 0;
    }

    else
    {
      v33 = plural(v31);
      printf("\t%llu outbound packet%s processed successfully\n", v31, v33);
      v32 = sflag < 2;
    }

    v34 = qword_10002CE88 - qword_10002FF18;
    if (qword_10002CE88 != qword_10002FF18 || v32)
    {
      v35 = plural(qword_10002CE88 - qword_10002FF18);
      printf("\t%llu outbound packet%s violated process security policy\n", v34, v35);
      v32 = sflag < 2;
    }

    v36 = qword_10002CE90 - qword_10002FF20;
    if (qword_10002CE90 != qword_10002FF20 || v32)
    {
      v37 = plural(qword_10002CE90 - qword_10002FF20);
      printf("\t%llu outbound packet%s with no SA available\n", v36, v37);
      v32 = sflag < 2;
    }

    v38 = qword_10002CE98 - qword_10002FF28;
    if (qword_10002CE98 != qword_10002FF28 || v32)
    {
      v39 = plural(qword_10002CE98 - qword_10002FF28);
      printf("\t%llu invalid outbound packet%s\n", v38, v39);
      v32 = sflag < 2;
    }

    v40 = qword_10002CEA0 - qword_10002FF30;
    if (qword_10002CEA0 != qword_10002FF30 || v32)
    {
      v41 = plural(qword_10002CEA0 - qword_10002FF30);
      printf("\t%llu outbound packet%s failed due to insufficient memory\n", v40, v41);
      v32 = sflag < 2;
    }

    v42 = qword_10002CEA8 - qword_10002FF38;
    if (qword_10002CEA8 != qword_10002FF38 || v32)
    {
      v43 = plural(qword_10002CEA8 - qword_10002FF38);
      printf("\t%llu outbound packet%s with no route\n", v42, v43);
    }

    ipsec_hist(&unk_10002D6B0, &unk_100030740, &ipsec_ahnames, "AH output");
    ipsec_hist(&unk_10002CEB0, &unk_10002FF40, &ipsec_espnames, "ESP output");
    result = ipsec_hist(&unk_10002DEB0, &unk_100030F40, &ipsec_compnames, "IPComp output");
    if (interval >= 1)
    {
      return __memmove_chk();
    }
  }

  return result;
}

uint64_t pfkey_stats()
{
  __chkstk_darwin();
  v1 = v0;
  memset(v56, 0, 512);
  v55 = 0;
  v54 = 4240;
  result = sysctlbyname("net.key.pfkeystat", v56, &v54, 0, 0);
  if (result != -1)
  {
    if (interval && vflag >= 1)
    {
      print_time();
    }

    printf("%s:\n", v1);
    v3 = *&v56[0] - pfkey_stats_ppfkeystat[0];
    if (*&v56[0] == pfkey_stats_ppfkeystat[0] && sflag > 1)
    {
      v4 = 0;
    }

    else
    {
      v5 = plural(LODWORD(v56[0]) - LODWORD(pfkey_stats_ppfkeystat[0]));
      printf("\t%llu request%s sent to userland\n", v3, v5);
      v4 = sflag < 2;
    }

    v6 = *(&v56[0] + 1) - qword_100031748;
    if (*(&v56[0] + 1) != qword_100031748 || v4)
    {
      v7 = plural(DWORD2(v56[0]) - qword_100031748);
      printf("\t%llu byte%s sent to userland\n", v6, v7);
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v56 + 8 * v8;
      v11 = &pfkey_stats_ppfkeystat[v8];
      if (*(v10 + 2) != v11[2])
      {
        if (v9)
        {
          puts("\thistogram by message type:");
        }

        if (v8 > 0x16)
        {
          snprintf(pfkey_msgtype_names_buf, 0xAuLL, "#%d", v8);
          v12 = pfkey_msgtype_names_buf;
        }

        else
        {
          v12 = pfkey_msgtypenames[v8];
        }

        printf("\t\t%s: %llu\n", v12, *(v10 + 2) - v11[2]);
        v9 = 0;
      }

      ++v8;
    }

    while (v8 != 256);
    v13 = v57 - qword_100031F50;
    if (v57 != qword_100031F50 || sflag <= 1)
    {
      v15 = plural(v57 - qword_100031F50);
      printf("\t%llu message%s with invalid length field\n", v13, v15);
      v16 = sflag < 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v58 - qword_100031F58;
    if (v58 != qword_100031F58 || v16)
    {
      v18 = plural(v58 - qword_100031F58);
      printf("\t%llu message%s with invalid version field\n", v17, v18);
      v16 = sflag < 2;
    }

    v19 = v59 - qword_100031F60;
    if (v59 != qword_100031F60 || v16)
    {
      v20 = plural(v59 - qword_100031F60);
      printf("\t%llu message%s with invalid message type field\n", v19, v20);
      v16 = sflag < 2;
    }

    v21 = v60 - qword_100031F68;
    if (v60 != qword_100031F68 || v16)
    {
      v22 = plural(v60 - qword_100031F68);
      printf("\t%llu message%s too short\n", v21, v22);
      v16 = sflag < 2;
    }

    v23 = v61 - qword_100031F70;
    if (v61 != qword_100031F70 || v16)
    {
      v24 = plural(v61 - qword_100031F70);
      printf("\t%llu message%s with memory allocation failure\n", v23, v24);
      v16 = sflag < 2;
    }

    v25 = v62 - qword_100031F78;
    if (v62 != qword_100031F78 || v16)
    {
      v26 = plural(v62 - qword_100031F78);
      printf("\t%llu message%s with duplicate extension\n", v25, v26);
      v16 = sflag < 2;
    }

    v27 = v63 - qword_100031F80;
    if (v63 != qword_100031F80 || v16)
    {
      v28 = plural(v63 - qword_100031F80);
      printf("\t%llu message%s with invalid extension type\n", v27, v28);
      v16 = sflag < 2;
    }

    v29 = v64 - qword_100031F88;
    if (v64 != qword_100031F88 || v16)
    {
      v30 = plural(v64 - qword_100031F88);
      printf("\t%llu message%s with invalid sa type\n", v29, v30);
      v16 = sflag < 2;
    }

    v31 = v65 - qword_100031F90;
    if (v65 != qword_100031F90 || v16)
    {
      v32 = plural(v65 - qword_100031F90);
      printf("\t%llu message%s with invalid address extension\n", v31, v32);
      v16 = sflag < 2;
    }

    v33 = v66 - qword_100031F98;
    if (v66 != qword_100031F98 || v16)
    {
      v34 = plural(v66 - qword_100031F98);
      printf("\t%llu request%s sent from userland\n", v33, v34);
      v16 = sflag < 2;
    }

    v35 = v67 - qword_100031FA0;
    if (v67 != qword_100031FA0 || v16)
    {
      v36 = plural(v67 - qword_100031FA0);
      printf("\t%llu byte%s sent from userland\n", v35, v36);
    }

    v37 = 0;
    v38 = 1;
    do
    {
      v39 = v56 + 8 * v37;
      v40 = &pfkey_stats_ppfkeystat[v37];
      if (*(v39 + 269) != v40[269])
      {
        if (v38)
        {
          puts("\thistogram by message type:");
        }

        if (v37 > 0x16)
        {
          snprintf(pfkey_msgtype_names_buf, 0xAuLL, "#%d", v37);
          v41 = pfkey_msgtype_names_buf;
        }

        else
        {
          v41 = pfkey_msgtypenames[v37];
        }

        printf("\t\t%s: %llu\n", v41, *(v39 + 269) - v40[269]);
        v38 = 0;
      }

      ++v37;
    }

    while (v37 != 256);
    v42 = v68 - qword_1000327A8;
    if (v68 != qword_1000327A8 || sflag <= 1)
    {
      v44 = plural(v68 - qword_1000327A8);
      printf("\t%llu message%s toward single socket\n", v42, v44);
      v45 = sflag < 2;
    }

    else
    {
      v45 = 0;
    }

    v46 = v69 - qword_1000327B0;
    if (v69 != qword_1000327B0 || v45)
    {
      v47 = plural(v69 - qword_1000327B0);
      printf("\t%llu message%s toward all sockets\n", v46, v47);
      v45 = sflag < 2;
    }

    v48 = v70 - qword_1000327B8;
    if (v70 != qword_1000327B8 || v45)
    {
      v49 = plural(v70 - qword_1000327B8);
      printf("\t%llu message%s toward registered sockets\n", v48, v49);
      v45 = sflag < 2;
    }

    v50 = v71 - qword_1000327C0;
    if (v71 != qword_1000327C0 || v45)
    {
      v51 = plural(v71 - qword_1000327C0);
      printf("\t%llu message%s with memory allocation failure\n", v50, v51);
    }

    if (interval >= 1)
    {
      __memmove_chk();
    }

    v54 = 4;
    result = sysctlbyname("net.key.pcbcount", &v55, &v54, 0, 0);
    if (result != -1)
    {
      v52 = v55;
      if (v55 || sflag <= 1)
      {
        v53 = plural(v55);
        return printf("\t%u open pfkey socket%s\n", v52, v53);
      }
    }
  }

  return result;
}

uint64_t ipsec_hist(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = result;
  v8 = 0;
  v9 = (a3 + 8);
  v10 = 1;
  do
  {
    if (*(v7 + 8 * v8) != *(a2 + 8 * v8))
    {
      if (v10)
      {
        printf("\t%s histogram:\n", a4);
      }

      if (a3)
      {
        v11 = v9;
        while (*v11)
        {
          v12 = *(v11 - 2);
          v11 += 2;
          if (v12 == v8)
          {
            v14 = *(v7 + 8 * v8) - *(a2 + 8 * v8);
            result = printf("\t\t%s: %llu\n");
            goto LABEL_11;
          }
        }
      }

      v13 = *(v7 + 8 * v8) - *(a2 + 8 * v8);
      result = printf("\t\t#%ld: %llu\n");
LABEL_11:
      v10 = 0;
    }

    ++v8;
  }

  while (v8 != 256);
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = 0;
  af = 0;
  while (2)
  {
    v6 = getopt(argc, argv, "AaBbc:dFf:gI:ikLlmnP:p:qQrRsStuvWw:xz");
    switch(v6)
    {
      case 'A':
        Aflag = 1;
        continue;
      case 'B':
        if (optind < argc && !strcmp(argv[optind], "help"))
        {
          bpf_help();
          goto LABEL_84;
        }

        Bflag = 1;
        continue;
      case 'C':
      case 'D':
      case 'E':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'M':
      case 'N':
      case 'O':
      case 'T':
      case 'U':
      case 'V':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'e':
      case 'h':
      case 'j':
      case 'k':
      case 'o':
      case 'y':
        goto LABEL_67;
      case 'F':
        Fflag = 1;
        continue;
      case 'I':
        iflag = 1;
        interface = optarg;
        v10 = optarg - 1;
        do
        {
          v11 = v10[1];
          if (v11 < 0)
          {
            v12 = __maskrune(v11, 0x100uLL);
          }

          else
          {
            v12 = _DefaultRuneLocale.__runetype[v11] & 0x100;
          }

          ++v10;
        }

        while (v12);
        unit = atoi(v10);
        continue;
      case 'L':
        Lflag = 1;
        continue;
      case 'P':
        prioflag = atoi(optarg);
        continue;
      case 'Q':
        ++Qflag;
        continue;
      case 'R':
        Rflag = 1;
        continue;
      case 'S':
        Sflag = 1;
        continue;
      case 'W':
        Wflag = 1;
        continue;
      case 'a':
        aflag = 1;
        continue;
      case 'b':
        bflag = 1;
        continue;
      case 'c':
        cflag = 1;
        cq = atoi(optarg);
        continue;
      case 'd':
        dflag = 1;
        continue;
      case 'f':
        v9 = optarg;
        if (!strcmp(optarg, "ipx"))
        {
          af = 23;
        }

        else if (!strcmp(v9, "inet"))
        {
          af = 2;
        }

        else if (!strcmp(v9, "inet6"))
        {
          af = 30;
        }

        else if (!strcmp(v9, "pfkey"))
        {
          af = 29;
        }

        else if (!strcmp(v9, "unix"))
        {
LABEL_25:
          af = 1;
        }

        else if (!strcmp(v9, "systm"))
        {
          af = 32;
        }

        else
        {
          if (strcmp(v9, "vsock"))
          {
            errx(1, "%s: unknown address family");
          }

          af = 40;
        }

        continue;
      case 'g':
        gflag = 1;
        continue;
      case 'i':
        goto LABEL_46;
      case 'l':
        ++lflag;
        continue;
      case 'm':
        ++mflag;
        continue;
      case 'n':
        nflag = 1;
        continue;
      case 'p':
        v7 = optarg;
        v8 = knownname(optarg);
        if (v8)
        {
          v5 = v8;
        }

        else
        {
          setprotoent(1);
          v13 = getprotoent();
          if (!v13)
          {
LABEL_68:
            endprotoent();
LABEL_69:
            errx(1, "%s: unknown or uninstrumented protocol");
          }

          v14 = v13;
          while (1)
          {
            p_aliases = v14->p_aliases;
            v16 = *p_aliases;
            if (*p_aliases)
            {
              break;
            }

LABEL_54:
            v14 = getprotoent();
            if (!v14)
            {
              goto LABEL_68;
            }
          }

          v17 = p_aliases + 1;
          while (strcmp(v7, v16))
          {
            v18 = *v17++;
            v16 = v18;
            if (!v18)
            {
              goto LABEL_54;
            }
          }

          v5 = knownname(v14->p_name);
          endprotoent();
          if (!v5)
          {
            goto LABEL_69;
          }
        }

        pflag = 1;
        continue;
      case 'q':
        ++qflag;
        continue;
      case 'r':
        rflag = 1;
        continue;
      case 's':
        ++sflag;
        continue;
      case 't':
        tflag = 1;
        continue;
      case 'u':
        goto LABEL_25;
      case 'v':
        ++vflag;
        continue;
      case 'w':
        interval = atoi(optarg);
LABEL_46:
        iflag = 1;
        continue;
      case 'x':
        xflag = 1;
        Rflag = 1;
        continue;
      case 'z':
        zflag = 1;
        continue;
      default:
        if (v6 != -1)
        {
          goto LABEL_67;
        }

        v19 = argv[optind];
        if (v19 && (*v19 - 48) <= 9)
        {
          interval = atoi(v19);
          if (interval <= 0)
          {
LABEL_67:
            fprintf(__stderrp, "%s\n", "Usage:\tnetstat [-AaLlnW] [-f address_family | -p protocol]\n\tnetstat [-gilns] [-f address_family]\n\tnetstat -i | -I interface [-w wait] [-abdgRtS]\n\tnetstat -s [-s] [-f address_family | -p protocol] [-w wait]\n\tnetstat -i | -I interface -s [-f address_family | -p protocol]\n\tnetstat -m [-m]\n\tnetstat -r [-Aaln] [-f address_family]\n\tnetstat -rs [-s]\n");
            exit(1);
          }

          iflag = 1;
        }

        if (mflag)
        {
          mbpr();
        }

        else if (Bflag)
        {
          bpf_stats(interface);
        }

        else if (!iflag || sflag || Sflag || gflag || qflag || Qflag)
        {
          if (rflag)
          {
            if (sflag)
            {
              rt_stats();
            }

            else
            {
              routepr();
            }
          }

          else if (qflag | Qflag)
          {
            if (qflag)
            {
              aqstatpr();
            }

            else
            {
              rxpollstatpr();
            }
          }

          else if (Sflag)
          {
            print_link_status(interface);
          }

          else if (gflag)
          {
            ifmalist_dump();
          }

          else if (v5)
          {
            printproto(v5, v5[3]);
          }

          else
          {
            if (iflag && !pflag)
            {
              goto LABEL_81;
            }

            v20 = af;
            if ((af & 0xFFFFFFFD) == 0)
            {
              v21 = off_1000281B8;
              if (off_1000281B8)
              {
                v22 = protox;
                do
                {
                  printproto(v22, v21);
                  v21 = v22[8];
                  v22 += 5;
                }

                while (v21);
                v20 = af;
              }
            }

            if (v20 == 30 || v20 == 0)
            {
              v24 = off_100028348;
              if (off_100028348)
              {
                v25 = ip6protox;
                do
                {
                  printproto(v25, v24);
                  v24 = v25[8];
                  v25 += 5;
                }

                while (v24);
                v20 = af;
              }
            }

            if (v20 == 29 || v20 == 0)
            {
              v27 = off_100028488;
              if (off_100028488)
              {
                v28 = &pfkeyprotox;
                do
                {
                  printproto(v28, v27);
                  v27 = *(v28 + 8);
                  v28 += 40;
                }

                while (v27);
                v20 = af;
              }
            }

            v29 = Lflag;
            v30 = off_100028730;
            if (v20 <= 1 && Lflag == 0 && off_100028730 != 0)
            {
              v33 = unixprotox;
              do
              {
                printproto(v33, v30);
                v30 = v33[8];
                v33 += 5;
              }

              while (v30);
              v20 = af;
              v29 = Lflag;
            }

            v34 = off_1000284D8;
            if ((v20 & 0xFFFFFFDF) == 0 && v29 == 0 && off_1000284D8 != 0)
            {
              v37 = &systmprotox;
              do
              {
                printproto(v37, v34);
                v34 = v37[8];
                v37 += 5;
              }

              while (v34);
              v20 = af;
              v29 = Lflag;
            }

            v38 = off_100028578;
            if (v20)
            {
              v39 = 0;
            }

            else
            {
              v39 = v29 == 0;
            }

            if (v39 && off_100028578 != 0)
            {
              v41 = &nstatprotox;
              do
              {
                printproto(v41, v38);
                v38 = *(v41 + 8);
                v41 += 40;
              }

              while (v38);
              v20 = af;
              v29 = Lflag;
            }

            v42 = off_1000285C8;
            if (v20)
            {
              v43 = 0;
            }

            else
            {
              v43 = v29 == 0;
            }

            if (v43 && off_1000285C8 != 0)
            {
              v45 = &ipcprotox;
              do
              {
                printproto(v45, v42);
                v42 = *(v45 + 8);
                v45 += 40;
              }

              while (v42);
              v20 = af;
              v29 = Lflag;
            }

            v46 = off_100028618;
            if (v20)
            {
              v47 = 0;
            }

            else
            {
              v47 = v29 == 0;
            }

            if (v47 && off_100028618 != 0)
            {
              v49 = &kernprotox;
              do
              {
                printproto(v49, v46);
                v46 = *(v49 + 8);
                v49 += 40;
              }

              while (v46);
              v20 = af;
              v29 = Lflag;
            }

            if (v20)
            {
              v50 = v20 == 40;
            }

            else
            {
              v50 = 1;
            }

            v51 = off_1000286B8;
            if (v50 && v29 == 0 && off_1000286B8 != 0)
            {
              v54 = vsockprotox;
              do
              {
                printproto(v54, v51);
                v51 = v54[8];
                v54 += 5;
              }

              while (v51);
            }
          }
        }

        else
        {
          if (!Rflag)
          {
LABEL_81:
            intpr();
            goto LABEL_84;
          }

          intpr_ri();
        }

LABEL_84:
        exit(0);
    }
  }
}