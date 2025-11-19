int main(int argc, const char **argv, const char **envp)
{
  v5 = getopt(argc, argv, "andflsSi:x");
  v6 = 1;
  if (v5 == -1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v5 <= 104)
      {
        if (v5 > 99)
        {
          if (v5 == 100)
          {
            if (v9)
            {
              goto LABEL_128;
            }

            v9 = 5;
          }

          else
          {
            if (v5 != 102 || v9)
            {
              goto LABEL_128;
            }

            v9 = 3;
          }
        }

        else if (v5 == 83)
        {
          if (v9)
          {
            goto LABEL_128;
          }

          v9 = 4;
        }

        else
        {
          if (v5 != 97)
          {
            goto LABEL_128;
          }

          v8 = 1;
        }
      }

      else if (v5 <= 109)
      {
        if (v5 == 105)
        {
          rifname = optarg;
        }

        else
        {
          if (v5 != 108)
          {
            goto LABEL_128;
          }

          v7 = 1;
        }
      }

      else
      {
        switch(v5)
        {
          case 'n':
            nflag = 1;
            break;
          case 's':
            if (v9)
            {
              goto LABEL_128;
            }

            v9 = 2;
            break;
          case 'x':
            v7 = 1;
            xflag = 1;
            break;
          default:
            goto LABEL_128;
        }
      }

      v5 = getopt(argc, argv, "andflsSi:x");
    }

    while (v5 != -1);
    v6 = v7 == 0;
  }

  v10 = optind;
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (rifname)
  {
    if (v9 >= 2 && (v9 != 5 || !v8))
    {
      main_cold_1();
    }

    if (!if_nametoindex(rifname))
    {
      if (*__error() == 6)
      {
        errx(1, "interface %s does not exist", rifname);
      }

      err(1, "if_nametoindex(%s)");
    }
  }

  v12 = argc - v10;
  v13 = &argv[v10];
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      if (v8)
      {
        if (argc == v10)
        {
          if (!v6)
          {
            printf("%-23s %-17s %-9.9s %-9.9s %14.14s %4s %4s", "Neighbor", "Linklayer Address", "Expire(O)", "Expire(I)", "Netif", "Refs", "Prbs");
            if (xflag == 1)
            {
              printf(" %-7.7s %-7.7s %-7.7s", "RSSI", "LQM", "NPM");
            }

            putchar(10);
            size[0] = 0;
            *v44 = xmmword_100002830;
            v45 = 0x40000000009;
            if (sysctl(v44, 6u, 0, size, 0, 0) < 0)
            {
              main_cold_5();
            }

            if (size[0])
            {
              v33 = malloc_type_realloc(0, size[0], 0x5859E0D4uLL);
              if (!v33)
              {
                goto LABEL_107;
              }

              while (1)
              {
                v34 = v33;
                v35 = sysctl(v44, 6u, v33, size, 0, 0);
                if (!v35)
                {
                  goto LABEL_114;
                }

                v36 = v35;
                if (*__error() != 12)
                {
                  break;
                }

                size[0] += size[0] >> 3;
                v33 = malloc_type_realloc(v34, size[0], 0x5859E0D4uLL);
                if (!v33)
                {
                  free(v34);
LABEL_107:
                  main_cold_4();
                }
              }

              if (v36 == -1)
              {
                main_cold_3();
              }

LABEL_114:
              if (size[0] >= 1)
              {
                v38 = v34 + size[0];
                v39 = rifname;
                v40 = v34;
                do
                {
                  if (*(v40 + 136))
                  {
                    v41 = ((*(v40 + 136) - 1) & 0xFFFFFFFC) + 4;
                  }

                  else
                  {
                    v41 = 4;
                  }

                  v42 = v40 + v41 + 136;
                  if (!v39 || !if_indextoname(*(v42 + 2), __s) || (v39 = rifname, !strcmp(__s, rifname)))
                  {
                    print_entry_ext(v42, (v40 + 68), v40);
                    v39 = rifname;
                  }

                  v40 = (v40 + *v40);
                }

                while (v40 < v38);
              }

              free(v34);
            }

            return 0;
          }

          v14 = print_entry;
LABEL_50:
          search(0, v14);
          return 0;
        }
      }

      else if (v12 == 1)
      {
        v28 = *v13;
        v29 = getaddr(*v13);
        if (!v29)
        {
          return 1;
        }

        v30 = v29;
        if (!search(*(v29 + 1), print_entry))
        {
          v31.s_addr = *(v30 + 1);
          v32 = inet_ntoa(v31);
          printf("%s (%s) -- no entry", v28, v32);
          if (rifname)
          {
            printf(" on %s", rifname);
          }

          putchar(10);
          return 1;
        }

        return 0;
      }

LABEL_128:
      usage();
    }

    goto LABEL_52;
  }

  if (v11 == 3)
  {
    if (v12 == 1)
    {
      v17 = fopen(*v13, "r");
      if (!v17)
      {
        err(1, "cannot open %s");
      }

      v18 = v17;
      size[0] = v44;
      size[1] = &v46;
      size[2] = &v47;
      size[3] = &v48;
      size[4] = &v49;
      size[5] = &v50;
      size[6] = &v51;
      if (fgets(__s, 128, v17))
      {
        v15 = 0;
        do
        {
          v19 = strchr(__s, 35);
          if (v19)
          {
            *v19 = 0;
          }

          v20 = &v52;
          do
          {
            v21 = v20[1];
            if (v21 < 0)
            {
              v22 = __maskrune(v20[1], 0x20000uLL);
            }

            else
            {
              v22 = _DefaultRuneLocale.__runetype[v21] & 0x20000;
            }

            ++v20;
          }

          while (v22);
          if (v21 != 10 && v21 != 0)
          {
            v24 = sscanf(v20, "%49s %49s %49s %49s %49s %49s %49s", v44, &v46, &v47, &v48, &v49, &v50, &v51);
            if (v24 <= 1)
            {
              warnx("bad line: %s", __s);
              v15 = 1;
            }

            else if (set(v24, size))
            {
              v15 = 1;
            }
          }
        }

        while (fgets(__s, 128, v18));
      }

      else
      {
        v15 = 0;
      }

      fclose(v18);
      return v15;
    }

    goto LABEL_128;
  }

  if (v11 == 4)
  {
LABEL_52:
    if ((v12 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_128;
    }

    if (v9 == 4)
    {
      delete(*v13, 0);
    }

    return set(argc - v10, v13);
  }

  if (v8)
  {
    if (argc == v10)
    {
      v14 = nuke_entry;
      goto LABEL_50;
    }

    goto LABEL_128;
  }

  if (v12 >= 2)
  {
    v25 = 0;
    LODWORD(v26) = 1;
    while (1)
    {
      v27 = v13[v26];
      if (!strncmp(v27, "pub", 4uLL))
      {
        v25 = 1;
      }

      else
      {
        if (strncmp(v27, "ifscope", 8uLL))
        {
          goto LABEL_128;
        }

        v26 = v26 + 1;
        if (v26 >= v12)
        {
          puts("ifscope needs an interface parameter");
          return 1;
        }

        boundif = v13[v26];
        ifscope = if_nametoindex(boundif);
        if (!ifscope)
        {
          main_cold_2();
        }
      }

      LODWORD(v26) = v26 + 1;
      if (v26 >= v12)
      {
        goto LABEL_109;
      }
    }
  }

  v25 = 0;
  LODWORD(v26) = 1;
LABEL_109:
  if (v26 > v12)
  {
    goto LABEL_128;
  }

  v37 = *v13;

  return delete(v37, v25);
}

uint64_t print_entry_ext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((nflag & 1) != 0 || (v6 = gethostbyaddr((a2 + 4), 4u, 2)) == 0)
  {
    v10.s_addr = *(a2 + 4);
    v9 = inet_ntoa(v10);
  }

  else
  {
    h_name = v6->h_name;
    v8 = strlen(v6->h_name);
    v9 = clean_non_printable(h_name, v8);
  }

  printf("%-23s ", v9);
  if (*(a1 + 6))
  {
    print_lladdr(a1);
    v11 = &print_lladdr_buf;
  }

  else
  {
    v11 = "(incomplete)";
  }

  printf("%-17s ", v11);
  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  gettimeofday(&v22, 0);
  if (*(a3 + 96) && (v12 = *(a3 + 104)) != 0)
  {
    if (v12 <= v22.tv_sec)
    {
      v13 = "expired";
    }

    else
    {
      sec2str(v12 - v22.tv_sec);
      v13 = sec2str_result;
    }
  }

  else
  {
    v13 = "(none)";
  }

  printf("%-9.9s ", v13);
  if (*(a3 + 96) && (v14 = *(a3 + 112)) != 0)
  {
    if (v14 <= v22.tv_sec)
    {
      v15 = "expired";
    }

    else
    {
      sec2str(v14 - v22.tv_sec);
      v15 = sec2str_result;
    }
  }

  else
  {
    v15 = "(none)";
  }

  printf("%-9.9s", v15);
  if (!if_indextoname(*(a1 + 2), v23))
  {
    strcpy(v23, "?");
  }

  printf(" %8.8s", v23);
  if (!*(a3 + 96))
  {
    return putchar(10);
  }

  printf(" %4d", *(a3 + 96));
  if (*(a3 + 100))
  {
    printf(" %4d", *(a3 + 100));
  }

  if (xflag != 1)
  {
    return putchar(10);
  }

  if (!*(a3 + 100))
  {
    printf(" %-4.4s", "none");
  }

  if (*(a3 + 120) == 0x80000000)
  {
    printf(" %-7.7s");
  }

  else
  {
    v19 = *(a3 + 120);
    printf(" %7d");
  }

  v16 = *(a3 + 124);
  if (v16 > 49)
  {
    if (v16 == 50 || v16 == 100)
    {
      goto LABEL_37;
    }
  }

  else if (v16 >= 0xFFFFFFFE)
  {
LABEL_37:
    printf(" %-7.7s");
    goto LABEL_38;
  }

  v20 = *(a3 + 124);
  printf(" %7d");
LABEL_38:
  v17 = *(a3 + 128);
  if (v17 > 69)
  {
    if (v17 == 70 || v17 == 100)
    {
      goto LABEL_45;
    }
  }

  else if (v17 == -1 || v17 == 30)
  {
LABEL_45:
    printf(" %-7.7s");
    return putchar(10);
  }

  v21 = *(a3 + 128);
  printf(" %7d");
  return putchar(10);
}

uint64_t search(int a1, void (*a2)(char *, unsigned __int16 *, unsigned __int16 *))
{
  size = 0;
  *v16 = xmmword_100002830;
  v17 = 0x40000000002;
  if (sysctl(v16, 6u, 0, &size, 0, 0) < 0)
  {
    main_cold_5();
  }

  if (!size)
  {
    return 0;
  }

  v4 = malloc_type_realloc(0, size, 0x89E716D0uLL);
  if (!v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5 = v4;
    v6 = sysctl(v16, 6u, v4, &size, 0, 0);
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v6;
    if (*__error() != 12)
    {
      break;
    }

    size += size >> 3;
    v4 = malloc_type_realloc(v5, size, 0x89E716D0uLL);
    if (!v4)
    {
      free(v5);
LABEL_8:
      main_cold_4();
    }
  }

  if (v7 == -1)
  {
    main_cold_3();
  }

LABEL_11:
  if (size >= 1)
  {
    v8 = 0;
    v9 = v5 + size;
    v10 = v5;
    while (1)
    {
      if (*(v10 + 92))
      {
        v11 = ((*(v10 + 92) - 1) & 0xFFFFFFFC) + 4;
      }

      else
      {
        v11 = 4;
      }

      v12 = v10 + v11 + 92;
      if (rifname && if_indextoname(*(v12 + 1), __s1) && strcmp(__s1, rifname))
      {
        goto LABEL_23;
      }

      if (!a1)
      {
        goto LABEL_22;
      }

      if (*(v10 + 24) == a1)
      {
        break;
      }

LABEL_23:
      v10 = (v10 + *v10);
      if (v10 >= v9)
      {
        goto LABEL_26;
      }
    }

    v8 = 1;
LABEL_22:
    a2(v12, v10 + 46, v10);
    goto LABEL_23;
  }

  v8 = 0;
LABEL_26:
  free(v5);
  return v8;
}

uint64_t print_entry(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if ((nflag & 1) != 0 || (v6 = gethostbyaddr((a2 + 4), 4u, 2)) == 0)
  {
    if (h_errno == 2)
    {
      nflag = 1;
    }

    v9 = "?";
  }

  else
  {
    h_name = v6->h_name;
    v8 = strlen(v6->h_name);
    v9 = clean_non_printable(h_name, v8);
  }

  v10.s_addr = *(a2 + 4);
  v11 = inet_ntoa(v10);
  printf("%s (%s) at ", v9, v11);
  if (a1[6])
  {
    print_lladdr(a1);
    printf("%s");
  }

  else
  {
    printf("(incomplete)");
  }

  if (if_indextoname(*(a1 + 1), v19))
  {
    printf(" on %s", v19);
  }

  if (*(a3 + 11))
  {
    printf(" ifscope");
  }

  if (!*(a3 + 48))
  {
    printf(" permanent");
  }

  if (*(a2 + 14))
  {
    printf(" published (proxy only)");
  }

  if ((*(a3 + 12) & 4) != 0)
  {
    v12 = *a1;
    v13 = ((v12 - 1) & 0xFFFFFFFC) + 4;
    v14 = v12 == 0;
    v15 = 4;
    if (!v14)
    {
      v15 = v13;
    }

    v16 = &a1[v15];
    if (*&a1[v15 + 4] == -1)
    {
      printf(" published");
    }

    if (*v16 != 8)
    {
      printf("(weird)");
    }
  }

  v17 = a1[4];
  if (v17 > 0x86)
  {
    switch(v17)
    {
      case 0x87u:
        printf(" [vlan]");
        break;
      case 0x90u:
        printf(" [firewire]");
        break;
      case 0xD1u:
        printf(" [bridge]");
        break;
    }
  }

  else
  {
    switch(v17)
    {
      case 6u:
        printf(" [ethernet]");
        break;
      case 0xFu:
        printf(" [fddi]");
        break;
      case 0x25u:
        printf(" [atm]");
        break;
    }
  }

  return putchar(10);
}

uint64_t delete(const char *a1, __int16 a2)
{
  v4 = getaddr(a1);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    *(v5 + 7) = a2;
    v6 = rtmsg(4, v5, 0);
    if (!v6)
    {
      warn("%s", a1);
      return 1;
    }

    v7 = v6;
    v8 = *(v6 + 92) ? ((*(v6 + 92) - 1) & 0xFFFFFFFC) + 4 : 4;
    if (*(v6 + 24) == *(v5 + 1))
    {
      v9 = v6 + v8 + 92;
      if (v9[1] == 18 && (*(v6 + 2) & 0x402) == 0x400 && valid_type(v9[4]))
      {
        break;
      }
    }

    a2 = 1;
    if (*(v5 + 7))
    {
      fprintf(__stderrp, "delete: cannot locate %s\n", a1);
      return 1;
    }
  }

  if (!rtmsg(2, v5, 0))
  {
    return 1;
  }

  v11.s_addr = *(v7 + 24);
  v12 = inet_ntoa(v11);
  printf("%s (%s) deleted\n", a1, v12);
  return 0;
}

BOOL set(int a1, const char **a2)
{
  v5 = *a2;
  v4 = a2[1];
  v44[1] = 0;
  v44[0] = 0;
  v45 = 0;
  v43 = 4628;
  v6 = getaddr(v5);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  expire_time = 0;
  v8 = &rtmsg_s;
  proxy_only = 0;
  flags = 0;
  doing_proxy = 0;
  boundif = 0;
  ifscope = 0;
  v9 = a1 - 2;
  if (a1 > 2)
  {
    v40 = v5;
    v10 = a1 - 3;
    v11 = a2 + 2;
    while (1)
    {
      v12 = *v11;
      if (!strncmp(*v11, "temp", 5uLL))
      {
        v46.tv_sec = 0;
        *&v46.tv_usec = 0;
        gettimeofday(&v46, 0);
        expire_time = LODWORD(v46.tv_sec) + 1200;
      }

      else if (!strncmp(v12, "pub", 4uLL))
      {
        flags |= 0x4000u;
        doing_proxy = 1;
        if (!v10)
        {
          v15 = (v44 + BYTE3(v44[0]) + 6);
          v5 = v40;
          v8 = &rtmsg_s;
          v16 = &rtmsg_s;
          goto LABEL_27;
        }

        if (!strncmp(v11[1], "only", 5uLL))
        {
          proxy_only = 1;
          *(v7 + 7) = 1;
          v10 = v9 - 2;
          ++v11;
        }
      }

      else
      {
        if (!strncmp(v12, "blackhole", 0xAuLL))
        {
          v14 = flags | 0x1000;
        }

        else
        {
          if (strncmp(v12, "reject", 7uLL))
          {
            if (!strncmp(v12, "trail", 6uLL))
            {
              printf("%s: Sending trailers is no longer supported\n", v40);
            }

            else if (!strncmp(v12, "ifscope", 8uLL))
            {
              if (v9 == 1)
              {
                v25 = "ifscope needs an interface parameter";
LABEL_48:
                puts(v25);
                return 1;
              }

              v13 = v11[1];
              ++v11;
              boundif = v13;
              ifscope = if_nametoindex(v13);
              if (!ifscope)
              {
                main_cold_2();
              }

              v10 = v9 - 2;
            }

            goto LABEL_20;
          }

          v14 = flags | 8;
        }

        flags = v14;
      }

LABEL_20:
      v9 = v10;
      ++v11;
      --v10;
      if (v9 <= 0)
      {
        v16 = &rtmsg_s;
        v15 = (v44 + BYTE3(v44[0]) + 6);
        v5 = v40;
        v8 = &rtmsg_s;
        if (doing_proxy != 1)
        {
          goto LABEL_28;
        }

LABEL_27:
        if (strcmp(v4, "auto"))
        {
          goto LABEL_28;
        }

        v26 = *(v7 + 1);
        v27 = socket(2, 2, 0);
        if (v27 < 0)
        {
          set_cold_2();
        }

        v28 = v27;
        v47 = 0u;
        v48 = 0;
        v41 = 1024;
        v42 = &v46;
        if (ioctl(v27, 0xC00C6924uLL, &v41) < 0)
        {
          warnx("ioctl(SIOCGIFCONF)");
        }

        else if (v41 >= 1)
        {
          v29 = v42;
          v30 = v42 + v41;
          while (1)
          {
            v31 = v29 + 1;
            if (BYTE1(v29[1].tv_sec) == 2)
            {
              __strlcpy_chk();
              v48 = *v31;
              if ((ioctl(v28, 0xC0206911uLL, &v47) & 0x80000000) == 0 && (v48.tv_sec & 0x9B) == 3 && (ioctl(v28, 0xC0206925uLL, &v47) & 0x80000000) == 0 && ((HIDWORD(v29[1].tv_sec) ^ v26) & HIDWORD(v48.tv_sec)) == 0)
              {
                break;
              }
            }

            if (LOBYTE(v31->tv_sec) <= 0x10u)
            {
              tv_sec_low = 16;
            }

            else
            {
              tv_sec_low = LOBYTE(v31->tv_sec);
            }

            v29 = (v31 + tv_sec_low);
            if (v31 + tv_sec_low >= v30)
            {
              goto LABEL_62;
            }
          }

          v34 = v42;
          if (v42 < v30)
          {
            while (strcmp(v29, v34) || BYTE1(v34[1].tv_sec) != 18)
            {
              v37 = LOBYTE(v34[1].tv_sec);
              v36 = v34 + 1;
              LODWORD(v35) = v37;
              if (v37 <= 0x10)
              {
                v35 = 16;
              }

              else
              {
                v35 = v35;
              }

              v34 = (v36 + v35);
              if (v34 >= v30)
              {
                goto LABEL_62;
              }
            }

            memcpy(v15, &v34[1].tv_usec + BYTE5(v34[1].tv_sec), BYTE6(v34[1].tv_sec));
            printf("using interface %s for proxy with address ", v29);
            v38 = ether_ntoa(v15);
            puts(v38);
            v39 = BYTE6(v34[1].tv_sec);
            close(v28);
            v5 = v40;
            v8 = &rtmsg_s;
            v16 = &rtmsg_s;
            if (!v39)
            {
              goto LABEL_63;
            }

LABEL_30:
            BYTE4(v44[0]) = 6;
            v19 = rtmsg(4, v7, &v43);
            if (v19)
            {
              while (1)
              {
                v20 = *(v19 + 92) ? ((*(v19 + 92) - 1) & 0xFFFFFFFC) + 4 : 4;
                v21 = v19 + v20 + 92;
                v22 = v21[1];
                if (*(v19 + 24) != *(v7 + 1))
                {
                  break;
                }

                v23 = *(v19 + 2);
                if (v22 == 18 && (*(v19 + 2) & 0x402) == 0x400 && valid_type(v21[4]))
                {
                  goto LABEL_44;
                }

                if ((v23 & 0x1000000) != (ifscope != 0))
                {
                  break;
                }

                if ((v16[14] & 1) == 0)
                {
                  printf("set: can only proxy for %s\n");
                  return 1;
                }

                if (*(v7 + 7))
                {
                  v25 = "set: proxy entry exists for non 802 device";
                  goto LABEL_48;
                }

                *(v7 + 7) = 1;
                *(v8 + 48) = 1;
                v19 = rtmsg(4, v7, &v43);
                if (!v19)
                {
                  goto LABEL_42;
                }
              }

              if (v22 == 18)
              {
LABEL_44:
                BYTE2(v44[0]) = v21[4];
                LOWORD(v44[0]) = *(v21 + 1);
                return rtmsg(1, v7, &v43) == 0;
              }

              printf("cannot intuit interface index and type for %s\n");
            }

            else
            {
LABEL_42:
              warn("%s", v5);
            }

            return 1;
          }
        }

LABEL_62:
        close(v28);
LABEL_63:
        v33.s_addr = *(v7 + 1);
        inet_ntoa(v33);
        printf("no interface found for %s\n");
        return 1;
      }
    }
  }

  v15 = (v44 + 6);
  v16 = &rtmsg_s;
LABEL_28:
  v17 = ether_aton(v4);
  if (v17)
  {
    v18 = *v17->octet;
    *&v15->octet[4] = *&v17->octet[4];
    *v15->octet = v18;
    goto LABEL_30;
  }

  warnx("invalid Ethernet address '%s'", v4);
  return 1;
}

uint64_t nuke_entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.s_addr = *(a2 + 4);
  v5 = inet_ntoa(v4);
  snprintf(__str, 0x14uLL, "%s", v5);
  if (*(a3 + 11))
  {
    ifscope = *(a3 + 4);
  }

  result = delete(__str, 0);
  ifscope = 0;
  return result;
}

uint64_t *getaddr(const char *a1)
{
  v2 = &getaddr_reply;
  getaddr_reply = 528;
  unk_100008044 = 0;
  HIDWORD(getaddr_reply) = inet_addr(a1);
  if (HIDWORD(getaddr_reply) == -1)
  {
    v3 = gethostbyname(a1);
    if (v3)
    {
      HIDWORD(getaddr_reply) = **v3->h_addr_list;
    }

    else
    {
      getaddr_cold_1(a1);
      return 0;
    }
  }

  return v2;
}

__int16 *rtmsg(int a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (rtmsg_s < 0)
  {
    rtmsg_s = socket(17, 3, 0);
    if (rtmsg_s < 0)
    {
      set_cold_2();
    }

    rtmsg_pid = getpid();
  }

  *__error() = 0;
  if (a1 == 2)
  {
    v6 = rtmsg_m_rtmsg;
    goto LABEL_26;
  }

  bzero(&rtmsg_m_rtmsg, 0x25CuLL);
  v7 = flags;
  dword_10000805C = flags;
  byte_100008056 = 5;
  if (ifscope)
  {
    word_100008058 = ifscope;
    v7 = flags | 0x1000000;
    dword_10000805C = flags | 0x1000000;
  }

  if (a1 != 1)
  {
    if (a1 != 4)
    {
      rtmsg_cold_1();
    }

    v8 = 0;
    goto LABEL_16;
  }

  dword_100008084 = expire_time;
  dword_100008074 = 4;
  v9 = v7 | 0x804;
  dword_10000805C = v9;
  *(a2 + 7) = 0;
  if (doing_proxy == 1)
  {
    if (proxy_only != 1)
    {
      dword_10000805C = v9 & 0xFFFFFFFB;
      v8 = 6;
      goto LABEL_16;
    }

    *(a2 + 7) = 1;
  }

  v8 = 2;
LABEL_16:
  v10 = v8 | 1;
  dword_100008060 = v8 | 1;
  xmmword_1000080B0 = *a2;
  v11 = *a2;
  v12 = ((v11 - 1) & 0xFFFFFFFC) + 4;
  v13 = v11 == 0;
  v14 = 4;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = &xmmword_1000080B0 + v14;
  if (a3 && (v8 & 2) != 0)
  {
    v16 = *a3;
    *(v15 + 4) = *(a3 + 4);
    *v15 = v16;
    v17 = *a3;
    v18 = ((v17 - 1) & 0xFFFFFFFC) + 4;
    v13 = v17 == 0;
    v19 = 4;
    if (!v13)
    {
      v19 = v18;
    }

    v15 += v19;
    v10 = dword_100008060;
  }

  if ((v10 & 4) != 0)
  {
    *v15 = 8;
    *(v15 + 1) = 0;
    v15[3] = 0;
    *(v15 + 1) = -1;
    *(v15 + 1) = 0;
    LOWORD(v15) = v15 + 8;
  }

  v6 = v15 - &rtmsg_m_rtmsg;
  rtmsg_m_rtmsg = v6;
LABEL_26:
  dword_100008068 = ++rtmsg_seq;
  byte_100008057 = a1;
  if ((write(rtmsg_s, &rtmsg_m_rtmsg, v6) & 0x80000000) != 0)
  {
    v20 = __error();
    v21 = 0;
    v22 = "writing to routing socket";
    if (a1 != 2 || *v20 != 3)
    {
      goto LABEL_36;
    }
  }

  v21 = &rtmsg_m_rtmsg;
  v23 = read(rtmsg_s, &rtmsg_m_rtmsg, 0x25CuLL);
  if (v23 < 1)
  {
LABEL_33:
    v21 = &rtmsg_m_rtmsg;
    if ((v23 & 0x80000000) == 0)
    {
      return v21;
    }

    v22 = "read from routing socket";
LABEL_36:
    warn(v22);
    return v21;
  }

  while (dword_100008068 != rtmsg_seq || dword_100008064 != rtmsg_pid)
  {
    v23 = read(rtmsg_s, &rtmsg_m_rtmsg, 0x25CuLL);
    if (v23 <= 0)
    {
      goto LABEL_33;
    }
  }

  return v21;
}

BOOL valid_type(unsigned int a1)
{
  result = 1;
  if (a1 > 0xF || ((1 << a1) & 0x81C0) == 0)
  {
    return a1 == 135 || a1 == 209;
  }

  return result;
}

uint64_t print_lladdr(uint64_t result)
{
  xmmword_100008390 = 0u;
  unk_1000083A0 = 0u;
  xmmword_100008370 = 0u;
  unk_100008380 = 0u;
  xmmword_100008350 = 0u;
  unk_100008360 = 0u;
  xmmword_100008330 = 0u;
  unk_100008340 = 0u;
  xmmword_100008310 = 0u;
  unk_100008320 = 0u;
  xmmword_1000082F0 = 0u;
  unk_100008300 = 0u;
  xmmword_1000082D0 = 0u;
  unk_1000082E0 = 0u;
  print_lladdr_buf = 0u;
  unk_1000082C0 = 0u;
  if (*(result + 6))
  {
    v1 = 0;
    v2 = (result + *(result + 5) + 8);
    v3 = *(result + 6) + 1;
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v3 == 2)
      {
        v6 = &unk_100002C4A;
      }

      else
      {
        v6 = ":";
      }

      result = snprintf(&print_lladdr_buf + v1, 256 - v1, "%x%s", v4, v6);
      v1 += result;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
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