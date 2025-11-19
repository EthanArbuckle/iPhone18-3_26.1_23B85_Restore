int main(int argc, const char **argv, const char **envp)
{
  pid = getpid();
  v5 = getopt(argc, argv, "acndfIilprstA:HPRxwWz");
  if (v5 == -1)
  {
    if (cflag)
    {
LABEL_3:
      dump(0);
      goto LABEL_159;
    }

    v11 = argc - optind;
    v12 = &argv[optind];
LABEL_32:
    if (v11 == 1)
    {
      get(*v12);
      goto LABEL_159;
    }

    goto LABEL_162;
  }

  v54 = 0;
  v55 = 0;
  v59 = 0;
  v6 = 0;
  v7 = 0;
  v56 = 0;
  v57 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (v5 == 110)
    {
      nflag = 1;
    }

    else if (v5 <= 81)
    {
      if (v5 > 72)
      {
        if (v5 != 80)
        {
          if (v5 != 73)
          {
            goto LABEL_162;
          }

          if (argc >= 3)
          {
            v13 = argv[2];
            if (!strcasecmp(v13, "delete"))
            {
              v14 = 0;
            }

            else
            {
              v14 = if_nametoindex(v13);
              if (!v14)
              {
                err(1, "failed to resolve i/f index for %s");
              }
            }

            s = socket(30, 2, 0);
            if (s < 0)
            {
              err(1, "socket");
            }

            memset(v63, 0, sizeof(v63));
            __strlcpy_chk();
            v64 = v14;
            if (ioctl(s, 0xC0186955uLL, v63) < 0)
            {
              err(1, "ioctl (SIOCSDEFIFACE_IN6)", v53);
            }

            close(s);
          }

          getdefif ();
          goto LABEL_159;
        }

        v7 = 1;
      }

      else if (v5 == 65)
      {
        repeat = atoi(optarg);
        if (repeat < 0)
        {
          goto LABEL_162;
        }

LABEL_19:
        v10 = 1;
      }

      else
      {
        if (v5 != 72)
        {
          goto LABEL_162;
        }

        v8 = 1;
      }
    }

    else
    {
      switch(v5)
      {
        case 'a':
          goto LABEL_19;
        case 'b':
        case 'e':
        case 'g':
        case 'h':
        case 'j':
        case 'k':
        case 'm':
        case 'n':
        case 'o':
        case 'q':
        case 'u':
        case 'v':
        case 'y':
          goto LABEL_162;
        case 'c':
          cflag = 1;
          break;
        case 'd':
          v9 = 1;
          break;
        case 'f':
          if (argc != 3)
          {
            goto LABEL_162;
          }

          file(argv[2]);
          goto LABEL_159;
        case 'i':
          ifinfo(argc - optind, &argv[optind]);
          goto LABEL_159;
        case 'l':
          v6 = 1;
          break;
        case 'p':
          v57 = 1;
          break;
        case 'r':
          v56 = 1;
          break;
        case 's':
          HIDWORD(v55) = 1;
          break;
        case 't':
          tflag = 1;
          break;
        case 'w':
          LODWORD(v55) = 1;
          break;
        case 'x':
          v6 = 1;
          v59 = 1;
          break;
        case 'z':
          HIDWORD(v54) = 1;
          break;
        default:
          if (v5 != 82)
          {
            if (v5 == 87 && argc == 3)
            {
              write_cga_parameters(argv[2]);
              goto LABEL_159;
            }

LABEL_162:
            usage();
          }

          LODWORD(v54) = 1;
          break;
      }
    }

    v5 = getopt(argc, argv, "acndfIilprstA:HPRxwWz");
  }

  while (v5 != -1);
  v15 = &so_mask;
  if (!v10 && (cflag & 1) == 0)
  {
    v11 = argc - optind;
    v12 = &argv[optind];
    if (v9)
    {
      if (v11 != 1)
      {
        goto LABEL_162;
      }

      delete(*v12);
LABEL_159:
      exit(0);
    }

    if (v57)
    {
      plist();
      goto LABEL_159;
    }

    if (v56)
    {
      rtrlist();
      goto LABEL_159;
    }

    if (HIDWORD(v55))
    {
      if ((v11 - 5) > 0xFFFFFFFC)
      {
        v47 = set(v11, v12) != 0;
        exit(v47);
      }

      goto LABEL_162;
    }

    if (v8)
    {
      harmonize_rtr();
      goto LABEL_159;
    }

    if (v7)
    {
      pfx_flush();
      goto LABEL_159;
    }

    if (v54)
    {
      rtr_flush();
      goto LABEL_159;
    }

    if (v55)
    {
      read_cga_parameters();
      goto LABEL_159;
    }

    if (HIDWORD(v54))
    {
      rtilist();
      goto LABEL_159;
    }

    goto LABEL_32;
  }

  if (!v6)
  {
    goto LABEL_3;
  }

  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  v16 = &so_mask;
  if (((tflag | cflag) & 1) == 0)
  {
    printf("%-*.*s %-*.*s %*.*s %-9.9s %-9.9s %2s %4s %4s", 39, 39, "Neighbor", 17, 17, "Linklayer Address", 6, 6, "Netif", "Expire(O)", "Expire(I)", "St", "Flgs", "Prbs");
    if (v59)
    {
      printf(" %-7.7s %-7.7s %-7.7s", "RSSI", "LQM", "NPM");
    }

    putchar(10);
  }

  v62 = 0;
  *v63 = xmmword_100004350;
  v64 = 0x40000000009;
  if (sysctl(v63, 6u, 0, &v62, 0, 0) < 0)
  {
LABEL_147:
    err(1, "sysctl(PF_ROUTE estimate)", v49);
  }

  while (1)
  {
    if (v62)
    {
      v17 = malloc_type_malloc(v62, 0xA27986FCuLL);
      if (!v17)
      {
        errx(1, "malloc");
      }

      v18 = v17;
      if (sysctl(v63, 6u, v17, &v62, 0, 0) < 0)
      {
        err(1, "sysctl(PF_ROUTE, NET_RT_FLAGS)", v49);
      }

      v58 = v18;
      if (v62 >= 1)
      {
        v19 = v18;
        v20 = v18 + v62;
        do
        {
          v21 = (v19 + 68);
          v22 = *(v19 + 136);
          v23 = ((v22 - 1) & 0xFFFFFFFC) + 4;
          if (!*(v19 + 136))
          {
            v23 = 4;
          }

          v24 = &v21->sa_len + v23;
          if (*(&v21->sa_family + v23) != 18)
          {
            goto LABEL_141;
          }

          v25 = *(v19 + 144);
          if (v25 == 255)
          {
            goto LABEL_141;
          }

          if (v25 == 254 && (*(v19 + 145) & 0xC0) == 0x80)
          {
            if (!*(v19 + 40))
            {
              *(v19 + 40) = *(v24 + 1);
            }

            v19[73] = 0;
          }

          if (nflag)
          {
            v26 = 34;
          }

          else
          {
            v26 = 32;
          }

          getnameinfo(v21, v22, host_buf, 0x401u, 0, 0, v26);
          if (v15[84] == 1)
          {
            if ((v19[5] & 2) != 0)
            {
              delete(host_buf);
            }

            goto LABEL_141;
          }

          gettimeofday(&v61, 0);
          if (tflag == 1)
          {
            printf("%02d:%02d:%02d.%06u ", SLODWORD(v61.tv_sec) % 86400 / 3600, (((34953 * (SLODWORD(v61.tv_sec) % 86400 % 3600)) >> 16) >> 5) + (((SLODWORD(v61.tv_sec) % 86400 % 3600 + ((-30583 * (SLODWORD(v61.tv_sec) % 86400 % 3600)) >> 16)) & 0x8000) >> 15), SLODWORD(v61.tv_sec) % 86400 % 60, v61.tv_usec);
          }

          v27 = strlen(host_buf);
          if (v27 <= 39)
          {
            v28 = 39;
          }

          else
          {
            v28 = v27;
          }

          ether_str(v24);
          v29 = strlen(&ether_str_ebuf);
          if (56 - v28 <= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = 56 - v28;
          }

          v31 = if_indextoname(*(v24 + 1), ifix_buf);
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = "?";
          }

          v33 = strlen(v32);
          if (62 - v28 - v30 <= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = 62 - v28 - v30;
          }

          ether_str(v24);
          printf("%-*.*s %-*.*s %*.*s", v28, v28, host_buf, v30, v30, &ether_str_ebuf, v34, v34, v32);
          if (*(v19 + 24) && (v35 = *(v19 + 13)) != 0)
          {
            v36 = "expired";
            v15 = &so_mask;
            if (v35 > v61.tv_sec)
            {
              sec2str(v35 - v61.tv_sec);
              v36 = sec2str_result;
            }
          }

          else
          {
            v36 = "(none)";
            v15 = &so_mask;
          }

          printf(" %-9.9s", v36);
          if (*(v19 + 24) && (v37 = *(v19 + 14)) != 0)
          {
            v38 = "expired";
            if (v37 > v61.tv_sec)
            {
              sec2str(v37 - v61.tv_sec);
              v38 = sec2str_result;
            }
          }

          else
          {
            v38 = "(none)";
          }

          printf(" %-9.9s", v38);
          v39 = getnbrinfo(v19 + 9, *(v24 + 1), 1);
          v40 = v39;
          if (v39)
          {
            v41 = *(v39 + 11) + 2;
            v42 = " ?";
            if (v41 <= 6)
            {
              v42 = off_1000081D8[v41];
            }

            printf(v42);
            v43 = *(v40 + 10);
            LODWORD(v40) = *(v40 + 8);
          }

          else
          {
            warnx("failed to get neighbor information");
            printf("  ");
          }

          putchar(32);
          if ((v19[8] & 4) != 0)
          {
            v44 = &v24[*v24];
            if (!*(v44 + 2) && !*(v44 + 3) && !*(v44 + 4))
            {
              *(v44 + 5);
            }

            *v44;
            *(v19 + 2);
            snprintf(__str, 8uLL, "%s%s%s%s");
          }

          else
          {
            *(v19 + 2);
            snprintf(__str, 8uLL, "%s%s");
          }

          printf(" %-4.4s", __str);
          if (v40)
          {
            printf(" %4d", v40);
            if (!v59)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if (!v59)
            {
              goto LABEL_140;
            }

            printf(" %-4.4s", "none");
          }

          if (*(v19 + 30) == 0x80000000)
          {
            printf(" %-7.7s");
          }

          else
          {
            v50 = *(v19 + 30);
            printf(" %7d");
          }

          v45 = *(v19 + 31);
          if (v45 > 49)
          {
            if (v45 == 50 || v45 == 100)
            {
LABEL_131:
              printf(" %-7.7s");
              goto LABEL_132;
            }
          }

          else if (v45 >= 0xFFFFFFFE)
          {
            goto LABEL_131;
          }

          v51 = *(v19 + 31);
          printf(" %7d");
LABEL_132:
          v46 = *(v19 + 32);
          if (v46 > 69)
          {
            if (v46 == 70 || v46 == 100)
            {
LABEL_139:
              printf(" %-7.7s");
              goto LABEL_140;
            }
          }

          else if (v46 == -1 || v46 == 30)
          {
            goto LABEL_139;
          }

          v52 = *(v19 + 32);
          printf(" %7d");
LABEL_140:
          putchar(10);
LABEL_141:
          v19 = (v19 + *v19);
        }

        while (v19 < v20);
      }

      free(v58);
      v16 = &so_mask;
    }

    if (!v16[24])
    {
      goto LABEL_159;
    }

    putchar(10);
    sleep(v16[24]);
    *v63 = xmmword_100004350;
    v64 = 0x40000000009;
    if (sysctl(v63, 6u, 0, &v62, 0, 0) < 0)
    {
      goto LABEL_147;
    }
  }
}

uint64_t getdefif ()
{
  s = socket(30, 2, 0);
  if (s < 0)
  {
    getdefif_cold_3();
  }

  v2[0] = 0;
  v2[1] = 0;
  *v3 = 0;
  __strlcpy_chk();
  if (ioctl(s, 0xC0186956uLL, v2) < 0)
  {
    getdefif_cold_2();
  }

  if (*v3)
  {
    if (!if_indextoname(v3[0], v1))
    {
      getdefif_cold_1(v3);
    }

    printf("ND default interface = %s\n", v1);
  }

  else
  {
    puts("No default interface.");
  }

  return close(s);
}

uint64_t ifinfo(int a1, const char **a2)
{
  v33 = 0u;
  memset(v34, 0, 24);
  v31 = 0u;
  v32 = 0u;
  v30[0] = 0;
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v22 = "ndp: socket";
    goto LABEL_86;
  }

  if (getifaddrs(v30))
  {
    v22 = "getifaddrs";
    goto LABEL_86;
  }

  if (a1 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a2;
    if (!strcmp(*a2, "nud") || !strcmp(v5, "proxy_prefixes") || !strcmp(v5, "disabled") || !strcmp(v5, "insecure") || !strcmp(v5, "replicated"))
    {
      fprintf(__stderrp, "ndp: cannpt apply flag '%s' to all interfaces\n", v5);
      goto LABEL_87;
    }
  }

  v6 = v30[0];
  if (!v30[0])
  {
    goto LABEL_87;
  }

  v7 = 0;
  v9 = a1 > 0 && v5 != 0;
  v27 = v9;
  v26 = a1;
  v24 = a1 - 1;
  v25 = a2 + 1;
  v28 = v5;
  while (1)
  {
    if (v5 && strcmp(v6->ifa_name, v5))
    {
      goto LABEL_76;
    }

    ifa_name = v6->ifa_name;
    if (v7)
    {
      if (!strcmp(v6->ifa_name, v7))
      {
        goto LABEL_76;
      }
    }

    v33 = 0u;
    memset(v34, 0, 24);
    v31 = 0u;
    v32 = 0u;
    __strlcpy_chk();
    if (ioctl(v4, 0xC030694CuLL, &v31) < 0)
    {
      break;
    }

    v29 = ifa_name;
    if (v27)
    {
      v5 = v28;
      if (v26 >= 2)
      {
        v11 = DWORD1(v33);
        v13 = v24;
        v12 = v25;
        while (1)
        {
          v14 = *v12;
          v16 = *v12 + 1;
          v15 = **v12;
          v17 = v15 == 45 ? *v12 + 1 : *v12;
          if (strcmp(v17, "nud"))
          {
            break;
          }

          if (v15 == 45)
          {
            v11 &= ~1u;
            if (strcmp(v16, "proxy_prefixes"))
            {
              goto LABEL_39;
            }

LABEL_36:
            v11 &= ~0x20u;
            goto LABEL_39;
          }

          v11 |= 1u;
          if (!strcmp(v14, "proxy_prefixes"))
          {
            goto LABEL_38;
          }

LABEL_39:
          if (!strcmp(v17, "disabled"))
          {
            if (v15 == 45)
            {
              v11 &= ~8u;
              if (!strcmp(v16, "insecure"))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v11 |= 8u;
              if (!strcmp(v14, "insecure"))
              {
LABEL_47:
                v11 |= 0x80u;
              }
            }
          }

          else if (!strcmp(v17, "insecure"))
          {
            if (v15 != 45)
            {
              goto LABEL_47;
            }

LABEL_45:
            v11 &= ~0x80u;
          }

          if (!strcmp(v17, "replicated"))
          {
            if (v15 == 45)
            {
              v11 &= ~0x100u;
            }

            else
            {
              v11 |= 0x100u;
            }
          }

          DWORD1(v33) = v11;
          if (ioctl(v4, 0xC0486957uLL, &v31) < 0)
          {
            ifinfo_cold_1();
          }

          ++v12;
          if (!--v13)
          {
            goto LABEL_54;
          }
        }

        if (strcmp(v17, "proxy_prefixes"))
        {
          goto LABEL_39;
        }

        if (v15 == 45)
        {
          goto LABEL_36;
        }

LABEL_38:
        v11 |= 0x20u;
        goto LABEL_39;
      }
    }

    else
    {
LABEL_54:
      v5 = v28;
      if (!v28)
      {
        printf("\n%s:\n", v29);
      }
    }

    printf("linkmtu=%d", v32);
    printf(", curhlim=%d", BYTE12(v33));
    printf(", basereachable=%ds%dms", DWORD2(v32) / 0x3E8, DWORD2(v32) % 0x3E8);
    printf(", reachable=%ds", HIDWORD(v32));
    printf(", retrans=%ds%dms", v33 / 0x3E8, v33 % 0x3E8);
    v30[1] = 0;
    if (*(v34 + 14))
    {
      for (i = 0; i != 3; ++i)
      {
        if (i)
        {
          if (i == 2)
          {
            v19 = v34 + 14;
            printf("\nRandom ID:      ");
          }

          else
          {
            v19 = v34 + 6;
            printf("\nRandom seed(1): ");
          }
        }

        else
        {
          v19 = &v33 + 14;
          printf("\nRandom seed(0): ");
        }

        for (j = 0; j != 8; ++j)
        {
          printf("%02x", v19[j]);
        }
      }
    }

    v7 = v29;
    if (!DWORD1(v33))
    {
      goto LABEL_74;
    }

    printf("\nFlags: 0x%x ", DWORD1(v33));
    v21 = WORD2(v33);
    if ((BYTE4(v33) & 8) != 0)
    {
      printf("IFDISABLED ");
      v21 = WORD2(v33);
      if ((BYTE4(v33) & 0x80) == 0)
      {
LABEL_69:
        if ((v21 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }
    }

    else if ((BYTE4(v33) & 0x80) == 0)
    {
      goto LABEL_69;
    }

    printf("INSECURE ");
    v21 = WORD2(v33);
    if ((BYTE4(v33) & 1) == 0)
    {
LABEL_70:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_81;
    }

LABEL_80:
    printf("PERFORMNUD ");
    v21 = WORD2(v33);
    if ((BYTE4(v33) & 0x20) == 0)
    {
LABEL_71:
      if ((v21 & 0x100) != 0)
      {
        goto LABEL_82;
      }

      goto LABEL_72;
    }

LABEL_81:
    printf("PROXY_PREFIXES ");
    v21 = WORD2(v33);
    if ((WORD2(v33) & 0x100) != 0)
    {
LABEL_82:
      printf("REPLICATED ");
      if ((WORD2(v33) & 0x200) == 0)
      {
        goto LABEL_74;
      }

LABEL_73:
      printf("DAD ");
      goto LABEL_74;
    }

LABEL_72:
    if ((v21 & 0x200) != 0)
    {
      goto LABEL_73;
    }

LABEL_74:
    putc(10, __stdoutp);
LABEL_76:
    v6 = v6->ifa_next;
    if (!v6)
    {
      goto LABEL_87;
    }
  }

  v7 = ifa_name;
  if (!v5)
  {
    goto LABEL_76;
  }

  v22 = "ioctl (SIOCGIFINFO_IN6)";
LABEL_86:
  perror(v22);
LABEL_87:
  freeifaddrs(v30[0]);
  return close(v4);
}

void usage()
{
  puts("usage: ndp hostname");
  puts("       ndp -a[lntx]");
  puts("       ndp -A wait [-nt]");
  puts("       ndp -c[nt]");
  puts("       ndp -d[nt] hostname");
  puts("       ndp -f[nt] filename");
  puts("       ndp -H");
  puts("       ndp -i interface [flags...]");
  puts("       ndp -I [interface | delete]");
  puts("       ndp -p");
  puts("       ndp -P");
  puts("       ndp -r");
  puts("       ndp -R");
  puts("       ndp -s hostname ether_addr [temp] [proxy]");
  puts("       ndp -w");
  puts("       ndp -W cfgfile");
  puts("       ndp -z[n]");
  exit(1);
}

uint64_t file(const char *a1)
{
  v2 = fopen(a1, "r");
  if (!v2)
  {
    fprintf(__stderrp, "ndp: cannot open %s\n", a1);
    exit(1);
  }

  v3 = v2;
  v6[0] = &v7;
  v6[1] = &v8;
  v6[2] = &v9;
  v6[3] = &v10;
  v6[4] = &v11;
  while (fgets(v12, 100, v3))
  {
    v4 = sscanf(v12, "%s %s %s %s %s", &v7, &v8, &v9, &v10, &v11);
    if (v4 > 1)
    {
      set(v4, v6);
    }

    else
    {
      fprintf(__stderrp, "ndp: bad line: %s\n", v12);
    }
  }

  return fclose(v3);
}

uint64_t write_cga_parameters(const char *a1)
{
  v2 = fopen(a1, "r");
  if (!v2)
  {
    err(1, "opening '%s' for reading.", a1);
  }

  v3 = v2;
  v4 = fread(&write_cga_parameters_newb, 1uLL, 0x1030uLL, v2);
  if (!feof(v3))
  {
    write_cga_parameters_cold_3();
  }

  if (fclose(v3))
  {
    write_cga_parameters_cold_1();
  }

  result = sysctlbyname("net.inet6.send.cga_parameters", 0, 0, &write_cga_parameters_newb, v4);
  if (result)
  {
    write_cga_parameters_cold_2();
  }

  return result;
}

void dump(void *a1)
{
  v36.tv_sec = 0;
  *&v36.tv_usec = 0;
  v2 = &so_mask;
  if ((tflag & 1) == 0 && (cflag & 1) == 0)
  {
    printf("%-*.*s %-*.*s %*.*s %-9.9s %2s %4s %4s\n", 39, 39, "Neighbor", 17, 17, "Linklayer Address", 6, 6, "Netif", "Expire", "St", "Flgs", "Prbs");
  }

  size = 0;
  *v39 = xmmword_100004350;
  v40 = 0x40000000002;
  if (sysctl(v39, 6u, 0, &size, 0, 0) < 0)
  {
LABEL_76:
    dump_cold_4();
  }

  v3 = &so_mask;
  v4 = &so_mask;
  v5 = host_buf;
  while (1)
  {
    if (size)
    {
      v6 = malloc_type_malloc(size, 0x758246DFuLL);
      if (!v6)
      {
        dump_cold_3();
      }

      v35 = v6;
      if (sysctl(v39, 6u, v6, &size, 0, 0) < 0)
      {
        dump_cold_2();
      }

      v7 = v2;
      if (size >= 1)
      {
        v8 = v35;
        v9 = v35 + size;
        do
        {
          v10 = (v8 + 46);
          v11 = *(v8 + 92);
          v12 = ((v11 - 1) & 0xFFFFFFFC) + 4;
          if (!*(v8 + 92))
          {
            v12 = 4;
          }

          v13 = &v10->sa_len + v12;
          if (*(&v10->sa_family + v12) != 18)
          {
            goto LABEL_70;
          }

          if (a1)
          {
            v14 = *a1 == *(v8 + 50) && a1[1] == *(v8 + 54);
            if (v14)
            {
              found_entry = 1;
              v15 = *(v8 + 100);
LABEL_22:
              if (v15 == 255)
              {
                v16 = *(v8 + 101);
                if ((v16 & 0xF) != 1 && ((v16 & 0xF0) == 0x30 || (v16 & 0xF) != 2))
                {
                  goto LABEL_32;
                }
              }

              else if (v15 != 254 || (*(v8 + 101) & 0xC0) != 0x80)
              {
LABEL_32:
                if (v4[88])
                {
                  v17 = 34;
                }

                else
                {
                  v17 = 32;
                }

                getnameinfo(v10, v11, v5, 0x401u, 0, 0, v17);
                if (*(v7 + 84) == 1)
                {
                  if ((v8[5] & 2) != 0)
                  {
                    delete(v5);
                  }
                }

                else
                {
                  gettimeofday(&v36, 0);
                  if (tflag == 1)
                  {
                    printf("%02d:%02d:%02d.%06u ", SLODWORD(v36.tv_sec) % 86400 / 3600, (((34953 * (SLODWORD(v36.tv_sec) % 86400 % 3600)) >> 16) >> 5) + (((SLODWORD(v36.tv_sec) % 86400 % 3600 + ((-30583 * (SLODWORD(v36.tv_sec) % 86400 % 3600)) >> 16)) & 0x8000) >> 15), SLODWORD(v36.tv_sec) % 86400 % 60, v36.tv_usec);
                  }

                  v18 = strlen(v5);
                  if (v18 <= 39)
                  {
                    v19 = 39;
                  }

                  else
                  {
                    v19 = v18;
                  }

                  ether_str(v13);
                  v20 = strlen(&ether_str_ebuf);
                  if (56 - v19 <= v20)
                  {
                    v21 = v20;
                  }

                  else
                  {
                    v21 = 56 - v19;
                  }

                  v22 = if_indextoname(*(v13 + 1), ifix_buf);
                  v23 = v5;
                  if (v22)
                  {
                    v24 = v22;
                  }

                  else
                  {
                    v24 = "?";
                  }

                  v25 = strlen(v24);
                  if (62 - v19 - v21 <= v25)
                  {
                    v26 = v25;
                  }

                  else
                  {
                    v26 = 62 - v19 - v21;
                  }

                  ether_str(v13);
                  printf("%-*.*s %-*.*s %*.*s", v19, v19, v23, v21, v21, &ether_str_ebuf, v26, v26, v24);
                  v27 = getnbrinfo((v8 + 50), *(v13 + 1), 1);
                  v28 = v27;
                  if (v27)
                  {
                    v29 = *(v27 + 12);
                    if (v29 <= v36.tv_sec)
                    {
                      v14 = v29 == 0;
                      v30 = "expired";
                      if (v14)
                      {
                        v30 = "permanent";
                      }
                    }

                    else
                    {
                      sec2str(v29 - v36.tv_sec);
                      v30 = sec2str_result;
                    }

                    v7 = 0x10000C000;
                    v4 = &so_mask;
                    printf(" %-9.9s", v30);
                    v31 = *(v28 + 11) + 2;
                    v32 = " ?";
                    if (v31 <= 6)
                    {
                      v32 = off_1000081D8[v31];
                    }

                    printf(v32);
                    v33 = *(v28 + 10);
                    LODWORD(v28) = *(v28 + 8);
                  }

                  else
                  {
                    dump_cold_1();
                    v7 = 0x10000C000;
                    v4 = &so_mask;
                  }

                  putchar(32);
                  if ((v8[6] & 4) != 0)
                  {
                    v34 = &v13[*v13];
                    if (!*(v34 + 2) && !*(v34 + 3) && !*(v34 + 4))
                    {
                      *(v34 + 5);
                    }

                    *v34;
                    *(v8 + 2);
                    snprintf(__str, 8uLL, "%s%s%s%s");
                  }

                  else
                  {
                    *(v8 + 2);
                    snprintf(__str, 8uLL, "%s%s");
                  }

                  printf(" %-4.4s", __str);
                  if (v28)
                  {
                    printf(" %4d", v28);
                  }

                  putchar(10);
                  v5 = v23;
                }

                goto LABEL_70;
              }

              if (!*(v8 + 29))
              {
                *(v8 + 29) = *(v13 + 1);
              }

              v8[51] = 0;
              goto LABEL_32;
            }
          }

          else
          {
            v15 = *(v8 + 100);
            if (v15 != 255)
            {
              goto LABEL_22;
            }
          }

LABEL_70:
          v8 = (v8 + *v8);
        }

        while (v8 < v9);
      }

      v2 = v7;
      free(v35);
      v3 = &so_mask;
    }

    if (!v3[24])
    {
      break;
    }

    putchar(10);
    sleep(v3[24]);
    *v39 = xmmword_100004350;
    v40 = 0x40000000002;
    if (sysctl(v39, 6u, 0, &size, 0, 0) < 0)
    {
      goto LABEL_76;
    }
  }
}

void delete(const char *a1)
{
  v12 = 0;
  getsocket();
  sin_m = blank_sin;
  *(&sin_m + 12) = *(&blank_sin + 12);
  memset(&v13, 0, sizeof(v13));
  v13.ai_family = 30;
  v2 = getaddrinfo(a1, 0, &v13, &v12);
  if (v2)
  {
    v3 = __stderrp;
    v4 = gai_strerror(v2);
    fprintf(v3, "ndp: %s: %s\n", a1, v4);
    return;
  }

  ai_addr = v12->ai_addr;
  *(&sin_m + 8) = *&ai_addr->sa_data[6];
  if (BYTE8(sin_m) == 254 && (BYTE9(sin_m) & 0xC0) == 0x80)
  {
    WORD5(sin_m) = bswap32(*&ai_addr[1].sa_data[6]) >> 16;
  }

  if ((rtmsg(4) & 0x80000000) != 0)
  {
    perror(a1);
    return;
  }

  v6 = 4;
  if (xmmword_10000E6A0)
  {
    v6 = ((xmmword_10000E6A0 - 1) & 0xFFFFFFFC) + 4;
  }

  v7 = &xmmword_10000E6A0 + v6;
  v8 = *(&xmmword_10000E6A0 + 1) == *(&sin_m + 1) && qword_10000E6B0 == qword_10000E8C4;
  v9 = v7[1];
  if (v8)
  {
    if (v9 != 18 || (dword_10000E64C & 0x402) != 0x400)
    {
      fwrite("delete: cannot delete non-NDP entry\n", 0x24uLL, 1uLL, __stderrp);
      return;
    }
  }

  else if (v9 != 18)
  {
    printf("cannot locate %s\n");
    return;
  }

  if (!rtmsg(2))
  {
    *v11 = xmmword_10000E6A0;
    *&v11[12] = *(&xmmword_10000E6A0 + 12);
    if (BYTE8(xmmword_10000E6A0) == 254 && (v11[9] & 0xC0) == 0x80)
    {
      *&v11[24] = bswap32(*&v11[10]) >> 16;
      *&v11[10] = 0;
    }

    if (nflag)
    {
      v10 = 34;
    }

    else
    {
      v10 = 32;
    }

    getnameinfo(v11, v11[0], host_buf, 0x401u, 0, 0, v10);
    printf("%s (%s) deleted\n");
  }
}

void plist()
{
  *v28 = xmmword_100004380;
  *&v25.tv_usec = 0;
  size = 0;
  v25.tv_sec = 0;
  if (nflag)
  {
    v0 = 34;
  }

  else
  {
    v0 = 32;
  }

  if (sysctl(v28, 4u, 0, &size, 0, 0) < 0)
  {
    plist_cold_1();
  }

  v1 = malloc_type_malloc(size, 0xC3DFAF80uLL);
  if (!v1)
  {
    plist_cold_2();
  }

  v22 = v1;
  if (sysctl(v28, 4u, v1, &size, 0, 0) < 0)
  {
    plist_cold_1();
  }

  if (size >= 1)
  {
    v2 = v22;
    v23 = v22 + size;
    do
    {
      v3 = *v2[4].sa_data;
      if (getnameinfo(v2, v2->sa_len, v27, 0x401u, 0, 0, 34))
      {
        __strlcpy_chk();
      }

      v4 = v2[1].sa_data[11];
      v5 = if_indextoname(*&v2[4].sa_len, ifix_buf);
      printf("%s/%d if=%s\n", v27, v4, v5);
      gettimeofday(&v25, 0);
      v6 = "A";
      if ((v2[1].sa_data[10] & 2) == 0)
      {
        v6 = &unk_10000465D;
      }

      v7 = *&v2[3].sa_data[6];
      v8 = "D";
      if ((v7 & 2) == 0)
      {
        v8 = &unk_10000465D;
      }

      v9 = "I";
      if ((v7 & 0x1000) == 0)
      {
        v9 = &unk_10000465D;
      }

      v10 = "L";
      if ((v2[1].sa_data[10] & 1) == 0)
      {
        v10 = &unk_10000465D;
      }

      v11 = "S";
      if ((v7 & 0x100) == 0)
      {
        v11 = &unk_10000465D;
      }

      v12 = "O";
      if ((v7 & 1) == 0)
      {
        v12 = &unk_10000465D;
      }

      v13 = "Y";
      if ((*&v2[3].sa_data[6] & 0x2000) == 0)
      {
        v13 = &unk_10000465D;
      }

      printf("flags=%s%s%s%s%s%s%s", v6, v8, v9, v10, v11, v12, v13);
      if (*&v2[2].sa_len == 0xFFFFFFFFLL)
      {
        printf(" vltime=infinity");
      }

      else
      {
        v20 = *&v2[2].sa_len;
        printf(" vltime=%ld");
      }

      if (*&v2[2].sa_data[6] == 0xFFFFFFFFLL)
      {
        printf(", pltime=infinity");
      }

      else
      {
        v21 = *&v2[2].sa_data[6];
        printf(", pltime=%ld");
      }

      v14 = *&v2[3].sa_len;
      v24 = v3;
      if (v14)
      {
        if (v14 >= v25.tv_sec)
        {
          sec2str(v14 - v25.tv_sec);
          printf(", expire=%s");
        }

        else
        {
          printf(", expired");
        }
      }

      else
      {
        printf(", expire=Never");
      }

      printf(", ref=%d", *&v2[3].sa_data[10]);
      putchar(10);
      if (*v2[4].sa_data)
      {
        puts("  advertised by");
        if (*v2[4].sa_data)
        {
          v15 = 0;
          v16 = (v2 + 72);
          do
          {
            if (getnameinfo(v16, v16->sa_len, v27, 0x401u, 0, 0, v0))
            {
              __strlcpy_chk();
            }

            printf("    %s", v27);
            v17 = &v16->sa_data[6];
            v18 = getnbrinfo(v17, *&v2[4].sa_len, 0);
            if (v18)
            {
              if ((*(v18 + 11) - 1) >= 4)
              {
                v19 = " (unreachable)";
              }

              else
              {
                v19 = " (reachable)";
              }
            }

            else
            {
              v19 = " (no neighbor state)";
            }

            puts(v19);
            ++v15;
            v16 = (v17 + 20);
          }

          while (v15 < *v2[4].sa_data);
        }
      }

      else
      {
        puts("  No advertising router");
      }

      v2 = (v2 + 28 * v24 + 72);
    }

    while (v2 < v23);
  }

  free(v22);
}

void rtrlist()
{
  *v16 = xmmword_100004360;
  *&v14.tv_usec = 0;
  size = 0;
  v14.tv_sec = 0;
  if (sysctl(v16, 4u, 0, &size, 0, 0) < 0)
  {
    rtrlist_cold_1();
  }

  v0 = malloc_type_malloc(size, 0x62C9F6DuLL);
  if (!v0)
  {
    plist_cold_2();
  }

  v13 = v0;
  if (sysctl(v16, 4u, v0, &size, 0, 0) < 0)
  {
    rtrlist_cold_1();
  }

  if (size >= 1)
  {
    v1 = v13;
    v2 = v13 + size;
    do
    {
      if (nflag)
      {
        v3 = 34;
      }

      else
      {
        v3 = 32;
      }

      if (getnameinfo(v1, v1->sa_len, host_buf, 0x401u, 0, 0, v3))
      {
        __strlcpy_chk();
      }

      v4 = if_indextoname(*&v1[2].sa_data[6], ifix_buf);
      printf("%s if=%s", host_buf, v4);
      v5 = "I";
      if ((v1[1].sa_data[11] & 2) == 0)
      {
        v5 = &unk_10000465D;
      }

      v6 = v1[1].sa_data[10];
      v7 = "M";
      if (v6 >= 0)
      {
        v7 = &unk_10000465D;
      }

      v8 = (v6 & 0x40) == 0;
      v9 = "O";
      if (v8)
      {
        v9 = &unk_10000465D;
      }

      if ((v1[1].sa_data[11] & 4) != 0)
      {
        v10 = "S";
      }

      else
      {
        v10 = &unk_10000465D;
      }

      if (v1[1].sa_data[11])
      {
        v11 = "T";
      }

      else
      {
        v11 = &unk_10000465D;
      }

      printf(", flags=%s%s%s%s%s", v5, v7, v9, v10, v11);
      printf(", pref=%s", *(rtpref_str + (v1[1].sa_data[10] & 0x18)));
      gettimeofday(&v14, 0);
      v12 = *&v1[2].sa_len;
      if (v12)
      {
        sec2str(v12 - v14.tv_sec);
        printf(", expire=%s\n", sec2str_result);
      }

      else
      {
        puts(", expire=Never");
      }

      v1 += 3;
    }

    while (v1 < v2);
  }

  free(v13);
}

uint64_t set(int a1, const char **a2)
{
  v23 = 0;
  v4 = *a2;
  v5 = a2[1];
  getsocket();
  sdl_m = blank_sdl;
  dword_10000E8B0 = dword_10000C048;
  sin_m = blank_sin;
  *(&sin_m + 12) = *(&blank_sin + 12);
  memset(&v24, 0, sizeof(v24));
  v24.ai_family = 30;
  v6 = getaddrinfo(v4, 0, &v24, &v23);
  if (!v6)
  {
    ai_addr = v23->ai_addr;
    *(&sin_m + 8) = *&ai_addr->sa_data[6];
    if (BYTE8(sin_m) == 254 && (BYTE9(sin_m) & 0xC0) == 0x80)
    {
      WORD5(sin_m) = bswap32(*&ai_addr[1].sa_data[6]) >> 16;
    }

    v12 = BYTE5(sdl_m);
    if (sscanf(v5, "%x:%x:%x:%x:%x:%x", &v25, &v25.tv_sec + 4, &v25.tv_usec, &v25.tv_usec + 1, &v26, &v27) == 6)
    {
      for (i = 0; i != 6; ++i)
      {
        *(&sdl_m + v12 + i + 8) = *(&v25.tv_sec + i);
      }

      BYTE6(sdl_m) = 6;
    }

    else
    {
      fprintf(__stderrp, "ndp: invalid Ethernet address '%s'\n", v5);
    }

    expire_time = 0;
    flags = 0;
    if (a1 >= 3)
    {
      v14 = a2 + 2;
      v15 = a1 - 2;
      do
      {
        v16 = *v14;
        if (!strncmp(*v14, "temp", 4uLL))
        {
          v25.tv_sec = 0;
          *&v25.tv_usec = 0;
          gettimeofday(&v25, 0);
          expire_time = LODWORD(v25.tv_sec) + 1200;
        }

        else if (!strncmp(v16, "proxy", 5uLL))
        {
          flags |= 0x4000u;
        }

        ++v14;
        --v15;
      }

      while (v15 > 0);
    }

    if ((rtmsg(4) & 0x80000000) != 0)
    {
      perror(v4);
      return 1;
    }

    v17 = 4;
    if (xmmword_10000E6A0)
    {
      v17 = ((xmmword_10000E6A0 - 1) & 0xFFFFFFFC) + 4;
    }

    v18 = &xmmword_10000E6A0 + v17;
    v19 = *(&xmmword_10000E6A0 + 1) == *(&sin_m + 1) && qword_10000E6B0 == qword_10000E8C4;
    v20 = v18[1];
    if (v19)
    {
      if (v20 != 18 || (dword_10000E64C & 0x402) != 0x400 || ((v21 = v18[4], (v21 - 6) >= 4) ? (v22 = v21 == 15) : (v22 = 1), !v22))
      {
        v9 = 1;
        fwrite("set: cannot configure a new entry\n", 0x22uLL, 1uLL, __stderrp);
        return v9;
      }
    }

    else if (v20 != 18)
    {
      printf("cannot intuit interface index and type for %s\n", v4);
      return 1;
    }

    BYTE4(sdl_m) = v18[4];
    WORD1(sdl_m) = *(v18 + 1);
    return rtmsg(1);
  }

  v7 = __stderrp;
  v8 = gai_strerror(v6);
  fprintf(v7, "ndp: %s: %s\n", v4, v8);
  return 1;
}

uint64_t harmonize_rtr()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    getdefif_cold_3();
  }

  v1 = v0;
  __strlcpy_chk();
  if (ioctl(v1, 0xC120694DuLL, v3) < 0)
  {
    harmonize_rtr_cold_1();
  }

  return close(v1);
}

uint64_t pfx_flush()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    getdefif_cold_3();
  }

  v1 = v0;
  __strlcpy_chk();
  result = ioctl(v1, 0xC120694FuLL, v3);
  if ((result & 0x80000000) != 0)
  {
    pfx_flush_cold_1();
  }

  return result;
}

uint64_t rtr_flush()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    getdefif_cold_3();
  }

  v1 = v0;
  __strlcpy_chk();
  if (ioctl(v1, 0xC1206950uLL, v3) < 0)
  {
    rtr_flush_cold_1();
  }

  return close(v1);
}

uint64_t read_cga_parameters()
{
  v7 = 4144;
  if (sysctlbyname("net.inet6.send.cga_parameters", &read_cga_parameters_oldb, &v7, 0, 0))
  {
    write_cga_parameters_cold_2();
  }

  if (!v7)
  {
    puts("No CGA parameters.");
    exit(0);
  }

  v8[0] = 0;
  v8[1] = 0;
  if (v7 <= 31)
  {
    read_cga_parameters_cold_5();
  }

  v9 = read_cga_parameters_oldb;
  v10 = unk_10000C5E8;
  if (v7 <= 0x21)
  {
    read_cga_parameters_cold_4();
  }

  v0 = &read_cga_parameters_oldb + v7;
  v1 = word_10000C5F8;
  v8[3] = word_10000C5F8;
  v2 = (&read_cga_parameters_oldb + word_10000C5F8 + 34);
  if (v2 > (&read_cga_parameters_oldb + v7))
  {
    read_cga_parameters_cold_3();
  }

  v8[2] = &byte_10000C5FA;
  if (v2 != (&read_cga_parameters_oldb + v7))
  {
    read_cga_parameters_cold_2();
  }

  puts("Public Key:");
  if (v1)
  {
    v3 = 0;
    v4 = &byte_10000C5FA;
    do
    {
      if (v3)
      {
        putchar(58);
        printf("%02x", *v4);
        if (v3 >= 0x1F)
        {
          putchar(10);
          v3 = 0;
        }

        else
        {
          ++v3;
        }
      }

      else
      {
        printf("%02x", *v4);
        v3 = 1;
      }

      ++v4;
    }

    while (v4 < v0);
  }

  putchar(10);
  putchar(10);
  puts("Modifier:");
  for (i = 32; i != 48; ++i)
  {
    if (i != 32)
    {
      putchar(58);
    }

    printf("%02x", *(v8 + i));
  }

  puts("\n");
  return printf("Security Level: %u\n", v10);
}

void rtilist()
{
  *v13 = xmmword_100004370;
  *&v11.tv_usec = 0;
  size = 0;
  v11.tv_sec = 0;
  if (sysctl(v13, 4u, 0, &size, 0, 0) < 0)
  {
    rtilist_cold_1();
  }

  v0 = malloc_type_malloc(size, 0x77FB6BD7uLL);
  if (!v0)
  {
    plist_cold_2();
  }

  v8 = v0;
  if (sysctl(v13, 4u, v0, &size, 0, 0) < 0)
  {
    rtilist_cold_1();
  }

  if (size >= 1)
  {
    v1 = v8;
    v9 = &v8[size];
    do
    {
      v10 = *(v1 + 9);
      inet_ntop(30, v1, host_buf, 0x401u);
      printf("prefix: %s/%d\n", host_buf, v1[16]);
      if (*(v1 + 9))
      {
        puts("  routers:");
        if (*(v1 + 9))
        {
          v2 = 0;
          v3 = v1 + 52;
          do
          {
            if (nflag)
            {
              v4 = 34;
            }

            else
            {
              v4 = 32;
            }

            if (getnameinfo((v3 - 28), *(v3 - 28), host_buf, 0x401u, 0, 0, v4))
            {
              __strlcpy_chk();
            }

            v5 = if_indextoname(*(v3 + 6), ifix_buf);
            printf("    %s if=%s", host_buf, v5);
            printf(", pref=%s", *(rtpref_str + (*v3 & 0x18)));
            gettimeofday(&v11, 0);
            v6 = *(v3 + 4);
            if (v6)
            {
              sec2str(v6 - v11.tv_sec);
              v7 = sec2str_result;
            }

            else
            {
              v7 = "Never";
            }

            printf(", expires=%s\n", v7);
            if (*v3 || v3[1])
            {
              printf("        ");
              if (*v3)
              {
                printb("flags", *v3, "\x10\x03PROXY\x04RTPREF_HIGH\x05RTPREF_LOW\x06HA\aOTHER\bMANAGED");
                putchar(32);
              }

              if (v3[1])
              {
                printb("stateflags", v3[1], "\x10\x01INSTALLED\x02IFSCOPE\x03STATIC\x04MAPPED\x05INELIGIBLE\x06LOCAL");
              }

              putchar(10);
            }

            ++v2;
            v3 += 48;
          }

          while (v2 < *(v1 + 9));
        }
      }

      v1 += 48 * v10 + 24;
    }

    while (v1 < v9);
  }

  free(v8);
}

void get(const char *a1)
{
  v7 = 0;
  sin_m = blank_sin;
  *(&sin_m + 12) = *(&blank_sin + 12);
  memset(&v8, 0, sizeof(v8));
  v8.ai_family = 30;
  v2 = getaddrinfo(a1, 0, &v8, &v7);
  if (v2)
  {
    v3 = __stderrp;
    v4 = gai_strerror(v2);
    fprintf(v3, "ndp: %s: %s\n", a1, v4);
  }

  else
  {
    ai_addr = v7->ai_addr;
    *(&sin_m + 8) = *&ai_addr->sa_data[6];
    if (BYTE8(sin_m) == 254 && (BYTE9(sin_m) & 0xC0) == 0x80)
    {
      WORD5(sin_m) = bswap32(*&ai_addr[1].sa_data[6]) >> 16;
    }

    dump(&sin_m + 1);
    if (!found_entry)
    {
      if (nflag)
      {
        v6 = 34;
      }

      else
      {
        v6 = 32;
      }

      getnameinfo(&sin_m, sin_m, host_buf, 0x401u, 0, 0, v6);
      printf("%s (%s) -- no entry\n", a1, host_buf);
      exit(1);
    }
  }
}

void getsocket()
{
  if (s < 0)
  {
    s = socket(17, 3, 0);
    if (s < 0)
    {
      getsocket_cold_1();
    }
  }
}

uint64_t rtmsg(int a1)
{
  *__error() = 0;
  if (a1 == 2)
  {
    v2 = m_rtmsg;
  }

  else
  {
    bzero(&m_rtmsg, 0x25CuLL);
    dword_10000E64C = flags;
    byte_10000E646 = 5;
    if (a1 == 1)
    {
      dword_10000E674 = expire_time;
      dword_10000E664 = 4;
      dword_10000E64C = flags | 0x804;
      dword_10000E650 = 3;
      xmmword_10000E6A0 = sin_m;
      qword_10000E6B0 = qword_10000E8C4;
      dword_10000E6B8 = dword_10000E8CC;
      xmmword_10000E6BC = sdl_m;
      v3 = &unk_10000E6D0;
      dword_10000E6CC = dword_10000E8B0;
    }

    else
    {
      if (a1 != 4)
      {
        fwrite("ndp: internal wrong cmd\n", 0x18uLL, 1uLL, __stderrp);
        exit(1);
      }

      dword_10000E650 = 1;
      xmmword_10000E6A0 = sin_m;
      qword_10000E6B0 = qword_10000E8C4;
      dword_10000E6B8 = dword_10000E8CC;
      v3 = &xmmword_10000E6BC;
    }

    qword_10000C008 = -1;
    unk_10000C010 = -1;
    v2 = v3 - &m_rtmsg;
    m_rtmsg = v2;
  }

  dword_10000E658 = ++rtmsg_seq;
  byte_10000E647 = a1;
  if ((write(s, &m_rtmsg, v2) & 0x80000000) == 0 || (v4 = __error(), a1 == 2) && *v4 == 3)
  {
    v5 = read(s, &m_rtmsg, 0x25CuLL);
    if (v5 < 1)
    {
LABEL_15:
      if (v5 < 0)
      {
        v6 = __stderrp;
        v7 = __error();
        v8 = strerror(*v7);
        fprintf(v6, "ndp: read from routing socket: %s\n", v8);
      }
    }

    else
    {
      while (dword_10000E658 != rtmsg_seq || dword_10000E654 != pid)
      {
        v5 = read(s, &m_rtmsg, 0x25CuLL);
        if (v5 <= 0)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  else
  {
    perror("writing to routing socket");
    return 0xFFFFFFFFLL;
  }
}

uint64_t ether_str(uint64_t result)
{
  if (*(result + 6))
  {
    v1 = (result + *(result + 5));
    return snprintf(&ether_str_ebuf, 0x20uLL, "%x:%x:%x:%x:%x:%x", v1[8], v1[9], v1[10], v1[11], v1[12], v1[13]);
  }

  else
  {
    strcpy(&ether_str_ebuf, "(incomplete)");
  }

  return result;
}

__int128 *getnbrinfo(__int128 *a1, unsigned int a2, int a3)
{
  v6 = socket(30, 2, 0);
  if (v6 < 0)
  {
    getdefif_cold_3();
  }

  v7 = v6;
  v8 = &getnbrinfo_nbi;
  qword_10000C4D0 = 0;
  xmmword_10000C4B0 = 0u;
  unk_10000C4C0 = 0u;
  getnbrinfo_nbi = 0u;
  if_indextoname(a2, &getnbrinfo_nbi);
  xmmword_10000C4B0 = *a1;
  if (ioctl(v7, 0xC038694EuLL, &getnbrinfo_nbi) < 0)
  {
    if (a3)
    {
      warn("ioctl(SIOCGNBRINFO_IN6)");
    }

    v8 = 0;
  }

  close(v7);
  return v8;
}

uint64_t sec2str(uint64_t a1)
{
  v1 = a1;
  v2 = a1 / 3600 % 24;
  v3 = a1 / 60;
  v4 = a1 / 60 % 60;
  if (a1 / 86400)
  {
    v5 = &sec2str_result[snprintf(sec2str_result, 0x100uLL, "%dd", a1 / 86400)];
  }

  else
  {
    v5 = sec2str_result;
    if (!v2)
    {
      if (!v4)
      {
        return snprintf(v5, sec2str_result - v5 + 256, "%ds", v1 - 60 * v3);
      }

      goto LABEL_5;
    }
  }

  v5 += snprintf(v5, sec2str_result - v5 + 256, "%dh", v2);
LABEL_5:
  v5 += snprintf(v5, sec2str_result - v5 + 256, "%dm", v4);
  return snprintf(v5, sec2str_result - v5 + 256, "%ds", v1 - 60 * v3);
}

uint64_t printb(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a3 && *a3 == 8)
  {
    printf("%s=%o");
  }

  else
  {
    printf("%s=%x");
  }

  putchar(60);
  LOBYTE(v5) = a3[1];
  if (v5)
  {
    v6 = 0;
    v7 = a3 + 2;
    do
    {
      if ((a2 >> (v5 - 1)))
      {
        if (v6)
        {
          putchar(44);
        }

        v5 = *v7;
        if (v5 >= 33)
        {
          do
          {
            putchar(v5);
            v8 = *++v7;
            v5 = v8;
          }

          while (v8 > 32);
        }

        v6 = 1;
      }

      else
      {
        --v7;
        do
        {
          v9 = *++v7;
          v5 = v9;
        }

        while (v9 > 32);
      }

      ++v7;
    }

    while (v5);
  }

  return putchar(62);
}