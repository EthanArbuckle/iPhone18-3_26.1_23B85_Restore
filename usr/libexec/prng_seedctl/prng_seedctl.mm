uint64_t start()
{
  v0 = 0;
  v47 = 8;
  outputStructCnt = 0;
  do
  {
    v1 = (&off_1000040C8)[v0];
    v2 = sysctlbyname(v1, &outputStructCnt, &v47, 0, 0);
    v3 = __stderrp;
    if (v2)
    {
      v10 = v2;
      v11 = *__error();
      v12 = __error();
      v45 = strerror(*v12);
      fprintf(v3, "%s: (%d) (%d) %s\n", v1, v10, v11, v45);
LABEL_12:
      v9 = 4;
      goto LABEL_13;
    }

    fprintf(__stderrp, "%s: %llu\n", v1, outputStructCnt);
    ++v0;
  }

  while (v0 != 4);
  v4 = 0;
  v5 = 0uLL;
  while (2)
  {
    v6 = 0;
    v63 = v5;
    v64 = v5;
    v61 = v5;
    v62 = v5;
    v59 = v5;
    v60 = v5;
    v57 = v5;
    v58 = v5;
    v55 = v5;
    v56 = v5;
    v53 = v5;
    v54 = v5;
    v51 = v5;
    v52 = v5;
    *__str = v5;
    v50 = v5;
    do
    {
      snprintf(__str, 0x100uLL, "kern.prng.pool%zu.%s", v4, (&off_1000040E8)[v6]);
      v7 = sysctlbyname(__str, &outputStructCnt, &v47, 0, 0);
      v8 = __stderrp;
      if (v7)
      {
        v13 = v7;
        v14 = *__error();
        v15 = __error();
        v46 = strerror(*v15);
        fprintf(v8, "%s: (%d) (%d) %s\n", __str, v13, v14, v46);
        goto LABEL_12;
      }

      fprintf(__stderrp, "%s: %llu\n", __str, outputStructCnt);
      ++v6;
    }

    while (v6 != 3);
    v9 = 0;
    ++v4;
    v5 = 0uLL;
    if (v4 != 32)
    {
      continue;
    }

    break;
  }

LABEL_13:
  v16 = sub_100000A7C();
  if (v16)
  {
    v17 = v16;
    v18 = __stderrp;
    v19 = *__error();
    v20 = __error();
    v21 = strerror(*v20);
    fprintf(v18, "failed to load kernel prng seed: (%d) (%d) %s\n", v17, v19, v21);
    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = IOServiceMatching("AppleVirtIOEntropy");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v23);
  if (!MatchingService)
  {
    v28 = -536870212;
    v27 = -147;
    goto LABEL_23;
  }

  v25 = MatchingService;
  LODWORD(v47) = 0;
  v26 = IOServiceOpen(MatchingService, mach_task_self_, 0, &v47);
  IOObjectRelease(v25);
  if (v26)
  {
    printf("ServiceOpen failed %x\n", v26);
    v27 = -148;
    v28 = v26;
LABEL_23:
    printf("failed to load virtual random: (%d) (%d)\n", v27, v28);
    v30 = 8;
    goto LABEL_24;
  }

  *__str = 0u;
  v50 = 0u;
  outputStructCnt = 32;
  v29 = IOConnectCallStructMethod(v47, 0, 0, 0, __str, &outputStructCnt);
  v28 = v29;
  if (v29)
  {
    printf("CallStructMethod failed %x\n", v29);
    v27 = -149;
LABEL_22:
    IOServiceClose(v47);
    goto LABEL_23;
  }

  v39 = open("/dev/random", 1);
  if (v39 == -1)
  {
    v27 = -82;
    goto LABEL_22;
  }

  v40 = v39;
  v41 = 0;
  while (1)
  {
    v42 = v41;
    v43 = outputStructCnt;
    if (v41 >= outputStructCnt)
    {
      break;
    }

    v44 = write(v40, &__str[v41], 32 - v41);
    v41 = v44 + v42;
    if (v44 == -1)
    {
      v27 = -83;
      goto LABEL_35;
    }
  }

  v27 = 0;
LABEL_35:
  close(v40);
  IOServiceClose(v47);
  v28 = 0;
  v30 = 0;
  if (v42 < v43)
  {
    goto LABEL_23;
  }

LABEL_24:
  v31 = sub_100000948();
  if (v31)
  {
    v32 = v31;
    v33 = __stderrp;
    v34 = *__error();
    v35 = __error();
    v36 = strerror(*v35);
    fprintf(v33, "failed to store kernel prng seed: (%d) (%d) %s\n", v32, v34, v36);
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  return v22 | v9 | v30 | v37;
}

uint64_t sub_100000948()
{
  memset(buffer, 0, sizeof(buffer));
  if (getentropy(buffer, 0x20uLL) == -1)
  {
    v4 = 4294967212;
  }

  else
  {
    v0 = open("/var/db/prng.seed", 1537, 384);
    if (v0 == -1)
    {
      v4 = 4294967220;
    }

    else
    {
      v1 = v0;
      if (fchmod(v0, 0x180u) == -1)
      {
        v4 = 4294967216;
      }

      else if (fchown(v1, 0, 0) == -1)
      {
        v4 = 4294967215;
      }

      else
      {
        v2 = 0;
        while (1)
        {
          v3 = write(v1, buffer + v2, 32 - v2);
          if (v3 == -1)
          {
            break;
          }

          v2 += v3;
          if (v2 > 0x1F)
          {
            v4 = 0;
            goto LABEL_14;
          }
        }

        v4 = 4294967217;
      }

LABEL_14:
      close(v1);
    }
  }

  cc_clear();
  return v4;
}

uint64_t sub_100000A7C()
{
  v0 = open("/var/db/prng.seed", 0);
  if (v0 == -1)
  {
    return 4294967220;
  }

  v1 = v0;
  v2 = open("/dev/random", 1, 0, 0, 0, 0);
  if (v2 == -1)
  {
    v5 = 4294967214;
  }

  else
  {
    v3 = v2;
    do
    {
LABEL_4:
      v4 = read(v1, &v10, 0x20uLL);
      if (v4 == -1)
      {
        v5 = 4294967218;
        goto LABEL_14;
      }

      v5 = v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    while (v4 < 1);
    v6 = 0;
    while (1)
    {
      v7 = write(v3, &v10 + v6, v5);
      if (v7 == -1)
      {
        break;
      }

      v6 += v7;
      v8 = v5 <= v7;
      v5 -= v7;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v5 = 4294967213;
LABEL_14:
    cc_clear();
    close(v3);
  }

  close(v1);
  return v5;
}