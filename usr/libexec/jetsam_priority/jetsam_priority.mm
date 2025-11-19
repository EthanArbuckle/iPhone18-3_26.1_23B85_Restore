void **sub_100000A98(void **a1)
{
  v3 = a1;
  sub_10000A5BC(&v3);
  return a1;
}

void **sub_100000AD0(void **a1)
{
  v3 = a1;
  sub_10000A660(&v3);
  return a1;
}

double sub_100000B08(unint64_t a1)
{
  if (qword_100014110 != -1)
  {
    sub_10000B310();
  }

  return *&qword_100014108 * a1;
}

uint64_t sub_100000B9C(__int16 a1)
{
  result = a1 & 0x700;
  if (result)
  {
    if (result == 1024)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    if (result == 512)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2;
    }

    if (result == 256)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  while (1)
  {
    v4 = getopt(v3, v2, ":kd:n:hcelifs:w:rxp:z::");
    if (v4 <= 98)
    {
      break;
    }

    switch(v4)
    {
      case 'c':
        byte_100014143 = 1;
        byte_100014144 = 1;
        if (byte_1000140D0 == 1)
        {
          byte_10001413F = 1;
        }

        goto LABEL_13;
      case 'd':
        qword_100014130 = strtoul(optarg, 0, 10);
        continue;
      case 'e':
        if (byte_1000140D0 == 1)
        {
          byte_10001413D = 1;
          byte_10001413A = 1;
          byte_10001413F = 1;
          byte_10001413C = 1;
          byte_100014141 = 1;
          byte_100014138 = 1;
          byte_100014139 = 1;
        }

LABEL_13:
        byte_100014140 = 1;
        continue;
      case 'f':
        if (byte_1000140D0 == 1)
        {
          byte_10001413A = 1;
        }

        continue;
      case 'h':
        sub_1000075B0(0);
      case 'i':
        if (byte_1000140D0 == 1)
        {
          byte_10001413C = 1;
        }

        continue;
      case 'k':
        byte_100014144 = 1;
        continue;
      case 'l':
        if (byte_1000140D0 == 1)
        {
          byte_10001413D = 1;
        }

        continue;
      case 'n':
        byte_100014128 = 1;
        byte_100014151 = 1;
        qword_100014078 = strtoul(optarg, 0, 10);
        continue;
      case 'p':
        dword_100014080 = atoi(optarg);
        continue;
      case 'r':
        byte_100014150 = 1;
        continue;
      case 's':
        v5 = optarg;
        if (!strcmp(optarg, "mem"))
        {
          qword_100014148 = "footprint";
        }

        else
        {
          qword_100014148 = v5;
        }

        continue;
      case 'w':
        qword_100014158 = optarg;
        continue;
      case 'x':
        byte_10001413B = 1;
        continue;
      case 'z':
        if (byte_1000140D0 != 1)
        {
          continue;
        }

        v6 = optind;
        if (optind >= v3)
        {
          v7 = optarg;
          if (optarg)
          {
LABEL_33:
            dword_1000140C4 = atoi(v7);
            continue;
          }
        }

        else
        {
          v7 = optarg;
          if (optarg)
          {
            goto LABEL_33;
          }

          v8 = v2[optind];
          if (v8)
          {
            v9 = *v8;
            if ((v9 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v9] & 0x400) != 0)
            {
              dword_1000140C4 = atoi(v8);
              optind = v6 + 1;
              continue;
            }
          }
        }

        byte_100014145 = 1;
        break;
      default:
        goto LABEL_1019;
    }
  }

  if (v4 != -1)
  {
    if (v4 == 58)
    {
      fprintf(__stderrp, "Error: Missing argument to '%c'\n");
    }

    else
    {
      if (v4 != 63)
      {
LABEL_1019:
        fprintf(__stderrp, "Fatal: Unexpected return value from getopt: '%c'\n", v4);
        sub_1000075B0(-1);
      }

      fprintf(__stderrp, "Error: Unrecognized option '%c'\n");
    }

    sub_1000075B0(1);
  }

  v518 = off_100010420;
  v518.sa_mask = 0;
  sigaction(2, &v518, 0);
  sigaction(15, &v518, 0);
  mach_timebase_info(&dword_100014118);
  if (getuid())
  {
    fwrite("Fatal: jetsam_priority must be run as root.\n", 0x2CuLL, 1uLL, __stderrp);
    exit(1);
  }

  if (byte_100014128 == 1)
  {
    if (!qword_100014130)
    {
      fwrite("Fatal: Specify the delay(ms) between the time series samples with option -d.\n", 0x4DuLL, 1uLL, __stderrp);
      exit(1);
    }

    qword_100014120 = 1000000 * qword_100014130 * *algn_10001411C / dword_100014118;
  }

  v517 = 0;
  v272 = sub_100006C98(&v517);
  v262 = objc_opt_class();
  sub_100006F1C(__src, "priority");
  if (SHIBYTE(v516) < 0)
  {
    sub_10000A6EC(__p, __src[0], __src[1]);
  }

  else
  {
    *__p = *__src;
    v532 = v516;
  }

  v533 = 0x100000001;
  v10 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v10 = v11;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v10 + 24) = v533;
    qword_1000140E0 = v10 + 32;
  }

  if (SHIBYTE(v516) < 0)
  {
    operator delete(__src[0]);
  }

  sub_100006F1C(&v513, "priority_name");
  if (SHIBYTE(v514) < 0)
  {
    sub_10000A6EC(__p, v513, *(&v513 + 1));
  }

  else
  {
    *__p = v513;
    v532 = v514;
  }

  v533 = 0x200000000;
  v12 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v13 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v12 = v13;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v12 + 24) = v533;
    qword_1000140E0 = v12 + 32;
  }

  if (SHIBYTE(v514) < 0)
  {
    operator delete(v513);
  }

  if (byte_100014138 == 1)
  {
    sub_100006F1C(v511, "priority_time");
    if (SHIBYTE(v512) < 0)
    {
      sub_10000A6EC(__p, v511[0], v511[1]);
    }

    else
    {
      *__p = *v511;
      v532 = v512;
    }

    v533 = 1;
    v14 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v15 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v14 = v15;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v14 + 24) = v533;
      qword_1000140E0 = v14 + 32;
    }

    if (SHIBYTE(v512) < 0)
    {
      operator delete(v511[0]);
    }
  }

  if (byte_100014139 == 1)
  {
    sub_100006F1C(&v509, "relaunch");
    if (SHIBYTE(v510) < 0)
    {
      sub_10000A6EC(__p, v509, *(&v509 + 1));
    }

    else
    {
      *__p = v509;
      v532 = v510;
    }

    v533 = 0x200000000;
    v16 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v17 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v16 = v17;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v16 + 24) = v533;
      qword_1000140E0 = v16 + 32;
    }

    if (SHIBYTE(v510) < 0)
    {
      operator delete(v509);
    }
  }

  sub_100006F1C(v507, "fds");
  if (SHIBYTE(v508) < 0)
  {
    sub_10000A6EC(__p, v507[0], v507[1]);
  }

  else
  {
    *__p = *v507;
    v532 = v508;
  }

  v533 = 0;
  v18 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v19 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v18 = v19;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v18 + 24) = v533;
    qword_1000140E0 = v18 + 32;
  }

  if (SHIBYTE(v508) < 0)
  {
    operator delete(v507[0]);
  }

  if (byte_10001413A == 1)
  {
    sub_100006F1C(&v505, "internal");
    if (SHIBYTE(v506) < 0)
    {
      sub_10000A6EC(__p, v505, *(&v505 + 1));
    }

    else
    {
      *__p = v505;
      v532 = v506;
    }

    v533 = 2;
    v20 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v21 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v20 = v21;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v20 + 24) = v533;
      qword_1000140E0 = v20 + 32;
    }

    if (SHIBYTE(v506) < 0)
    {
      operator delete(v505);
    }

    sub_100006F1C(v503, "internal_comp");
    if (SHIBYTE(v504) < 0)
    {
      sub_10000A6EC(__p, v503[0], v503[1]);
    }

    else
    {
      *__p = *v503;
      v532 = v504;
    }

    v533 = 2;
    v22 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v23 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v22 = v23;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v22 + 24) = v533;
      qword_1000140E0 = v22 + 32;
    }

    if (SHIBYTE(v504) < 0)
    {
      operator delete(v503[0]);
    }

    sub_100006F1C(&v501, "iokit_mapped");
    if (SHIBYTE(v502) < 0)
    {
      sub_10000A6EC(__p, v501, *(&v501 + 1));
    }

    else
    {
      *__p = v501;
      v532 = v502;
    }

    v533 = 2;
    v24 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v25 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v24 = v25;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v24 + 24) = v533;
      qword_1000140E0 = v24 + 32;
    }

    if (SHIBYTE(v502) < 0)
    {
      operator delete(v501);
    }

    sub_100006F1C(v499, "purge_nonvol");
    if (SHIBYTE(v500) < 0)
    {
      sub_10000A6EC(__p, v499[0], v499[1]);
    }

    else
    {
      *__p = *v499;
      v532 = v500;
    }

    v533 = 2;
    v26 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v27 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v26 = v27;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v26 + 24) = v533;
      qword_1000140E0 = v26 + 32;
    }

    if (SHIBYTE(v500) < 0)
    {
      operator delete(v499[0]);
    }

    sub_100006F1C(&v497, "purge_nonvol_comp");
    if (SHIBYTE(v498) < 0)
    {
      sub_10000A6EC(__p, v497, *(&v497 + 1));
    }

    else
    {
      *__p = v497;
      v532 = v498;
    }

    v533 = 2;
    v28 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v29 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v28 = v29;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v28 + 24) = v533;
      qword_1000140E0 = v28 + 32;
    }

    if (SHIBYTE(v498) < 0)
    {
      operator delete(v497);
    }

    sub_100006F1C(v495, "alt_acct");
    if (SHIBYTE(v496) < 0)
    {
      sub_10000A6EC(__p, v495[0], v495[1]);
    }

    else
    {
      *__p = *v495;
      v532 = v496;
    }

    v533 = 2;
    v30 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v31 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v30 = v31;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v30 + 24) = v533;
      qword_1000140E0 = v30 + 32;
    }

    if (SHIBYTE(v496) < 0)
    {
      operator delete(v495[0]);
    }

    sub_100006F1C(&v493, "alt_acct_comp");
    if (SHIBYTE(v494) < 0)
    {
      sub_10000A6EC(__p, v493, *(&v493 + 1));
    }

    else
    {
      *__p = v493;
      v532 = v494;
    }

    v533 = 2;
    v32 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v33 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v32 = v33;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v32 + 24) = v533;
      qword_1000140E0 = v32 + 32;
    }

    if (SHIBYTE(v494) < 0)
    {
      operator delete(v493);
    }

    if ((byte_10001413B & 1) == 0)
    {
      sub_100006F1C(v491, "page_table");
      if (SHIBYTE(v492) < 0)
      {
        sub_10000A6EC(__p, v491[0], v491[1]);
      }

      else
      {
        *__p = *v491;
        v532 = v492;
      }

      v533 = 2;
      v34 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v35 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v34 = v35;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v34 + 24) = v533;
        qword_1000140E0 = v34 + 32;
      }

      if (SHIBYTE(v492) < 0)
      {
        operator delete(v491[0]);
      }
    }

    sub_100006F1C(&v489, "compressed");
    if (SHIBYTE(v490) < 0)
    {
      sub_10000A6EC(__p, v489, *(&v489 + 1));
    }

    else
    {
      *__p = v489;
      v532 = v490;
    }

    v533 = 2;
    v36 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v37 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v36 = v37;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v36 + 24) = v533;
      qword_1000140E0 = v36 + 32;
    }

    if (SHIBYTE(v490) < 0)
    {
      operator delete(v489);
    }

    sub_100006F1C(v487, "frozen_size");
    if (SHIBYTE(v488) < 0)
    {
      sub_10000A6EC(__p, v487[0], v487[1]);
    }

    else
    {
      *__p = *v487;
      v532 = v488;
    }

    v533 = 2;
    v38 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v39 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v38 = v39;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v38 + 24) = v533;
      qword_1000140E0 = v38 + 32;
    }

    if (SHIBYTE(v488) < 0)
    {
      operator delete(v487[0]);
    }

    sub_100006F1C(&v485, "resident");
    if (SHIBYTE(v486) < 0)
    {
      sub_10000A6EC(__p, v485, *(&v485 + 1));
    }

    else
    {
      *__p = v485;
      v532 = v486;
    }

    v533 = 2;
    v40 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v41 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v40 = v41;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v40 + 24) = v533;
      qword_1000140E0 = v40 + 32;
    }

    if (SHIBYTE(v486) < 0)
    {
      operator delete(v485);
    }
  }

  sub_100006F1C(v483, "footprint");
  if (SHIBYTE(v484) < 0)
  {
    sub_10000A6EC(__p, v483[0], v483[1]);
  }

  else
  {
    *__p = *v483;
    v532 = v484;
  }

  v533 = 2;
  v42 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v43 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v42 = v43;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v42 + 24) = v533;
    qword_1000140E0 = v42 + 32;
  }

  if (SHIBYTE(v484) < 0)
  {
    operator delete(v483[0]);
  }

  sub_100006F1C(&v481, "footprint_peak");
  if (SHIBYTE(v482) < 0)
  {
    sub_10000A6EC(__p, v481, *(&v481 + 1));
  }

  else
  {
    *__p = v481;
    v532 = v482;
  }

  v533 = 2;
  v44 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v45 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v44 = v45;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v44 + 24) = v533;
    qword_1000140E0 = v44 + 32;
  }

  if (SHIBYTE(v482) < 0)
  {
    operator delete(v481);
  }

  if (byte_10001413C == 1)
  {
    sub_100006F1C(v479, "footprint_interval_peak");
    if (SHIBYTE(v480) < 0)
    {
      sub_10000A6EC(__p, v479[0], v479[1]);
    }

    else
    {
      *__p = *v479;
      v532 = v480;
    }

    v533 = 2;
    v46 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v47 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v46 = v47;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v46 + 24) = v533;
      qword_1000140E0 = v46 + 32;
    }

    if (SHIBYTE(v480) < 0)
    {
      operator delete(v479[0]);
    }
  }

  if (byte_1000140D0 == 1)
  {
    sub_100006F1C(&v477, "limit");
    if (SHIBYTE(v478) < 0)
    {
      sub_10000A6EC(__p, v477, *(&v477 + 1));
    }

    else
    {
      *__p = v477;
      v532 = v478;
    }

    v533 = 2;
    v48 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v49 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v48 = v49;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v48 + 24) = v533;
      qword_1000140E0 = v48 + 32;
    }

    if (SHIBYTE(v478) < 0)
    {
      operator delete(v477);
    }

    if (byte_10001413D == 1)
    {
      sub_100006F1C(v475, "active_limit");
      if (SHIBYTE(v476) < 0)
      {
        sub_10000A6EC(__p, v475[0], v475[1]);
      }

      else
      {
        *__p = *v475;
        v532 = v476;
      }

      v533 = 0x100000002;
      v50 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v51 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v50 = v51;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v50 + 24) = v533;
        qword_1000140E0 = v50 + 32;
      }

      if (SHIBYTE(v476) < 0)
      {
        operator delete(v475[0]);
      }

      sub_100006F1C(&v473, "active_limit_hard");
      if (SHIBYTE(v474) < 0)
      {
        sub_10000A6EC(__p, v473, *(&v473 + 1));
      }

      else
      {
        *__p = v473;
        v532 = v474;
      }

      v533 = 2;
      v52 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v53 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v52 = v53;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v52 + 24) = v533;
        qword_1000140E0 = v52 + 32;
      }

      if (SHIBYTE(v474) < 0)
      {
        operator delete(v473);
      }

      sub_100006F1C(v471, "inactive_limit");
      if (SHIBYTE(v472) < 0)
      {
        sub_10000A6EC(__p, v471[0], v471[1]);
      }

      else
      {
        *__p = *v471;
        v532 = v472;
      }

      v533 = 0x100000002;
      v54 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v55 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v54 = v55;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v54 + 24) = v533;
        qword_1000140E0 = v54 + 32;
      }

      if (SHIBYTE(v472) < 0)
      {
        operator delete(v471[0]);
      }

      sub_100006F1C(&v469, "inactive_limit_hard");
      if (SHIBYTE(v470) < 0)
      {
        sub_10000A6EC(__p, v469, *(&v469 + 1));
      }

      else
      {
        *__p = v469;
        v532 = v470;
      }

      v533 = 2;
      v56 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v57 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v56 = v57;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v56 + 24) = v533;
        qword_1000140E0 = v56 + 32;
      }

      if (SHIBYTE(v470) < 0)
      {
        operator delete(v469);
      }
    }

    sub_100006F1C(v467, "root_limit_increase");
    if (SHIBYTE(v468) < 0)
    {
      sub_10000A6EC(__p, v467[0], v467[1]);
    }

    else
    {
      *__p = *v467;
      v532 = v468;
    }

    v533 = 2;
    v58 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v59 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v58 = v59;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v58 + 24) = v533;
      qword_1000140E0 = v58 + 32;
    }

    if (SHIBYTE(v468) < 0)
    {
      operator delete(v467[0]);
    }
  }

  sub_100006F1C(&v465, "dirty");
  if (SHIBYTE(v466) < 0)
  {
    sub_10000A6EC(__p, v465, *(&v465 + 1));
  }

  else
  {
    *__p = v465;
    v532 = v466;
  }

  v533 = 0x400000000;
  v60 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v61 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v60 = v61;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v60 + 24) = v533;
    qword_1000140E0 = v60 + 32;
  }

  if (SHIBYTE(v466) < 0)
  {
    operator delete(v465);
  }

  sub_100006F1C(v463, "PE");
  if (SHIBYTE(v464) < 0)
  {
    sub_10000A6EC(__p, v463[0], v463[1]);
  }

  else
  {
    *__p = *v463;
    v532 = v464;
  }

  v533 = 0x400000000;
  v62 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v63 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v62 = v63;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v62 + 24) = v533;
    qword_1000140E0 = v62 + 32;
  }

  if (SHIBYTE(v464) < 0)
  {
    operator delete(v463[0]);
  }

  sub_100006F1C(&v461, "frozen");
  if (SHIBYTE(v462) < 0)
  {
    sub_10000A6EC(__p, v461, *(&v461 + 1));
  }

  else
  {
    *__p = v461;
    v532 = v462;
  }

  v533 = 0x400000000;
  v64 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v65 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v64 = v65;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v64 + 24) = v533;
    qword_1000140E0 = v64 + 32;
  }

  if (SHIBYTE(v462) < 0)
  {
    operator delete(v461);
  }

  if (byte_10001413E == 1)
  {
    sub_100006F1C(v459, "thawed");
    if (SHIBYTE(v460) < 0)
    {
      sub_10000A6EC(__p, v459[0], v459[1]);
    }

    else
    {
      *__p = *v459;
      v532 = v460;
    }

    v533 = 0x400000000;
    v66 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v67 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v66 = v67;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v66 + 24) = v533;
      qword_1000140E0 = v66 + 32;
    }

    if (SHIBYTE(v460) < 0)
    {
      operator delete(v459[0]);
    }
  }

  if (v262)
  {
    sub_100006F1C(&v457, "docked");
    if (SHIBYTE(v458) < 0)
    {
      sub_10000A6EC(__p, v457, *(&v457 + 1));
    }

    else
    {
      *__p = v457;
      v532 = v458;
    }

    v533 = 0x400000000;
    v68 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v69 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v68 = v69;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v68 + 24) = v533;
      qword_1000140E0 = v68 + 32;
    }

    if (SHIBYTE(v458) < 0)
    {
      operator delete(v457);
    }
  }

  sub_100006F1C(v455, "swappable");
  if (SHIBYTE(v456) < 0)
  {
    sub_10000A6EC(__p, v455[0], v455[1]);
  }

  else
  {
    *__p = *v455;
    v532 = v456;
  }

  v533 = 0x400000000;
  v70 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v71 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v70 = v71;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v70 + 24) = v533;
    qword_1000140E0 = v70 + 32;
  }

  if (SHIBYTE(v456) < 0)
  {
    operator delete(v455[0]);
  }

  sub_100006F1C(&v453, "coalition");
  if (SHIBYTE(v454) < 0)
  {
    sub_10000A6EC(__p, v453, *(&v453 + 1));
  }

  else
  {
    *__p = v453;
    v532 = v454;
  }

  v533 = 1;
  v72 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v73 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v72 = v73;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v72 + 24) = v533;
    qword_1000140E0 = v72 + 32;
  }

  if (SHIBYTE(v454) < 0)
  {
    operator delete(v453);
  }

  sub_100006F1C(v451, "pid");
  if (SHIBYTE(v452) < 0)
  {
    sub_10000A6EC(__p, v451[0], v451[1]);
  }

  else
  {
    *__p = *v451;
    v532 = v452;
  }

  v533 = 1;
  v74 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v75 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v74 = v75;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v74 + 24) = v533;
    qword_1000140E0 = v74 + 32;
  }

  if (SHIBYTE(v452) < 0)
  {
    operator delete(v451[0]);
  }

  sub_100006F1C(&v449, "name");
  if (SHIBYTE(v450) < 0)
  {
    sub_10000A6EC(__p, v449, *(&v449 + 1));
  }

  else
  {
    *__p = v449;
    v532 = v450;
  }

  v533 = 0x200000000;
  v76 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v77 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v76 = v77;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v76 + 24) = v533;
    qword_1000140E0 = v76 + 32;
  }

  if (SHIBYTE(v450) < 0)
  {
    operator delete(v449);
  }

  sub_100006F1C(v447, "flags");
  if (SHIBYTE(v448) < 0)
  {
    sub_10000A6EC(__p, v447[0], v447[1]);
  }

  else
  {
    *__p = *v447;
    v532 = v448;
  }

  v533 = 0x200000000;
  v78 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v79 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v78 = v79;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v78 + 24) = v533;
    qword_1000140E0 = v78 + 32;
  }

  if (SHIBYTE(v448) < 0)
  {
    operator delete(v447[0]);
  }

  if (byte_10001413F == 1)
  {
    sub_100006F1C(&v445, "pages_grabbed");
    if (SHIBYTE(v446) < 0)
    {
      sub_10000A6EC(__p, v445, *(&v445 + 1));
    }

    else
    {
      *__p = v445;
      v532 = v446;
    }

    v533 = 1;
    v80 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v81 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v80 = v81;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v80 + 24) = v533;
      qword_1000140E0 = v80 + 32;
    }

    if (SHIBYTE(v446) < 0)
    {
      operator delete(v445);
    }

    sub_100006F1C(v443, "pages_grabbed_kern");
    if (SHIBYTE(v444) < 0)
    {
      sub_10000A6EC(__p, v443[0], v443[1]);
    }

    else
    {
      *__p = *v443;
      v532 = v444;
    }

    v533 = 1;
    v82 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v83 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v82 = v83;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v82 + 24) = v533;
      qword_1000140E0 = v82 + 32;
    }

    if (SHIBYTE(v444) < 0)
    {
      operator delete(v443[0]);
    }

    sub_100006F1C(&v441, "pages_grabbed_iopl");
    if (SHIBYTE(v442) < 0)
    {
      sub_10000A6EC(__p, v441, *(&v441 + 1));
    }

    else
    {
      *__p = v441;
      v532 = v442;
    }

    v533 = 1;
    v84 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v85 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v84 = v85;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v84 + 24) = v533;
      qword_1000140E0 = v84 + 32;
    }

    if (SHIBYTE(v442) < 0)
    {
      operator delete(v441);
    }

    sub_100006F1C(v439, "pages_grabbed_upl");
    if (SHIBYTE(v440) < 0)
    {
      sub_10000A6EC(__p, v439[0], v439[1]);
    }

    else
    {
      *__p = *v439;
      v532 = v440;
    }

    v533 = 1;
    v86 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v87 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v86 = v87;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v86 + 24) = v533;
      qword_1000140E0 = v86 + 32;
    }

    if (SHIBYTE(v440) < 0)
    {
      operator delete(v439[0]);
    }
  }

  if (byte_100014140 == 1)
  {
    sub_100006F1C(&v437, "total_dirty_time");
    if (SHIBYTE(v438) < 0)
    {
      sub_10000A6EC(__p, v437, *(&v437 + 1));
    }

    else
    {
      *__p = v437;
      v532 = v438;
    }

    v533 = 1;
    v88 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v89 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v88 = v89;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v88 + 24) = v533;
      qword_1000140E0 = v88 + 32;
    }

    if (SHIBYTE(v438) < 0)
    {
      operator delete(v437);
    }

    sub_100006F1C(v435, "process_lifetime");
    if (SHIBYTE(v436) < 0)
    {
      sub_10000A6EC(__p, v435[0], v435[1]);
    }

    else
    {
      *__p = *v435;
      v532 = v436;
    }

    v533 = 1;
    v90 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v91 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v90 = v91;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v90 + 24) = v533;
      qword_1000140E0 = v90 + 32;
    }

    if (SHIBYTE(v436) < 0)
    {
      operator delete(v435[0]);
    }

    sub_100006F1C(&v433, "percent_dirty");
    if (SHIBYTE(v434) < 0)
    {
      sub_10000A6EC(__p, v433, *(&v433 + 1));
    }

    else
    {
      *__p = v433;
      v532 = v434;
    }

    v533 = 1;
    v92 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v93 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v92 = v93;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v92 + 24) = v533;
      qword_1000140E0 = v92 + 32;
    }

    if (SHIBYTE(v434) < 0)
    {
      operator delete(v433);
    }
  }

  if (byte_100014141 == 1)
  {
    sub_100006F1C(v431, "neural");
    if (SHIBYTE(v432) < 0)
    {
      sub_10000A6EC(__p, v431[0], v431[1]);
    }

    else
    {
      *__p = *v431;
      v532 = v432;
    }

    v533 = 0;
    v94 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v95 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v94 = v95;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v94 + 24) = v533;
      qword_1000140E0 = v94 + 32;
    }

    if (SHIBYTE(v432) < 0)
    {
      operator delete(v431[0]);
    }

    sub_100006F1C(&v429, "neural_peak");
    if (SHIBYTE(v430) < 0)
    {
      sub_10000A6EC(__p, v429, *(&v429 + 1));
    }

    else
    {
      *__p = v429;
      v532 = v430;
    }

    v533 = 0;
    v96 = qword_1000140E0;
    if (qword_1000140E0 >= unk_1000140E8)
    {
      qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
      if (SHIBYTE(v532) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v97 = *__p;
      *(qword_1000140E0 + 16) = v532;
      *v96 = v97;
      v532 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *(v96 + 24) = v533;
      qword_1000140E0 = v96 + 32;
    }

    if (SHIBYTE(v430) < 0)
    {
      operator delete(v429);
    }

    if (byte_10001413C == 1)
    {
      sub_100006F1C(v427, "neural_interval_peak");
      if (SHIBYTE(v428) < 0)
      {
        sub_10000A6EC(__p, v427[0], v427[1]);
      }

      else
      {
        *__p = *v427;
        v532 = v428;
      }

      v533 = 0;
      v98 = qword_1000140E0;
      if (qword_1000140E0 >= unk_1000140E8)
      {
        qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
        if (SHIBYTE(v532) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v99 = *__p;
        *(qword_1000140E0 + 16) = v532;
        *v98 = v99;
        v532 = 0;
        __p[1] = 0;
        __p[0] = 0;
        *(v98 + 24) = v533;
        qword_1000140E0 = v98 + 32;
      }

      if (SHIBYTE(v428) < 0)
      {
        operator delete(v427[0]);
      }
    }
  }

  sub_100006F1C(&v425, "sample");
  if (SHIBYTE(v426) < 0)
  {
    sub_10000A6EC(__p, v425, *(&v425 + 1));
  }

  else
  {
    *__p = v425;
    v532 = v426;
  }

  v533 = 1;
  v100 = qword_1000140E0;
  if (qword_1000140E0 >= unk_1000140E8)
  {
    qword_1000140E0 = sub_10000A790(&qword_1000140D8, __p);
    if (SHIBYTE(v532) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v101 = *__p;
    *(qword_1000140E0 + 16) = v532;
    *v100 = v101;
    v532 = 0;
    __p[1] = 0;
    __p[0] = 0;
    *(v100 + 24) = v533;
    qword_1000140E0 = v100 + 32;
  }

  if (SHIBYTE(v426) < 0)
  {
    operator delete(v425);
  }

  if ((byte_100014142 & 1) == 0)
  {
    v265 = 0;
LABEL_532:
    if (qword_100014078 - 1 >= v265)
    {
      v136 = 0;
      deadline = qword_100014120 + mach_absolute_time();
      while (1)
      {
        v424[0] = 0;
        v424[1] = 0;
        v137 = 0.0;
        v423 = v424;
        if (v272 - 2 == v136)
        {
          v138 = 0;
          LOBYTE(v139) = 0;
          context = 0;
          v140 = 1;
          v276 = 999;
          v141 = 52428800;
        }

        else if (v272 - 1 == v136)
        {
          v138 = 0;
          LOBYTE(v139) = 0;
          v141 = 0;
          context = 0;
          v140 = 0;
          v276 = 999;
        }

        else
        {
          v142 = (v517 + 128 * v136);
          v140 = *v142;
          v276 = v142[1];
          v139 = v142[5];
          v143 = v142[4];
          v138 = *(v142 + 1);
          v144 = mach_absolute_time();
          v145 = *(v142 + 3);
          if (qword_100014110 != -1)
          {
            sub_10000B324();
          }

          v146 = v139 & 0x700;
          if ((v139 & 0x700) != 0)
          {
            if (v146 == 1024)
            {
              v147 = 3;
            }

            else
            {
              v147 = 4;
            }

            if (v146 == 512)
            {
              v147 = 2;
            }

            if (v146 == 256)
            {
              v147 = 1;
            }

            context = v147;
          }

          else
          {
            context = 0;
          }

          v137 = *&qword_100014108 * (v144 - v145);
          v141 = v143 << 20;
        }

        if (dword_100014080 != -1 && v140 != dword_100014080)
        {
          goto LABEL_958;
        }

        v422 = 0;
        v420 = 0;
        v419 = 0;
        v421 = 0;
        if (v140 >= 1 && memorystatus_control())
        {
          fprintf(__stderrp, "Warning: Failed to get memory limit info for pid %d.  Limits will appear as 0MB and not fatal.\n", v140);
        }

        sub_100006F1C(v417, "active_limit");
        sub_100006FD4(&v423, v417, v419 << 20);
        if (v418 < 0)
        {
          operator delete(v417[0]);
        }

        sub_100006F1C(v415, "inactive_limit");
        sub_100006FD4(&v423, v415, v420 << 20);
        if (v416 < 0)
        {
          operator delete(v415[0]);
        }

        sub_100006F1C(v413, "root_limit_increase");
        sub_100006FD4(&v423, v413, (v421 << 20));
        if (v414 < 0)
        {
          operator delete(v413[0]);
        }

        v149 = BYTE4(v419);
        v150 = BYTE4(v420);
        sub_100006F1C(v411, "active_limit_hard");
        if (v149)
        {
          v151 = "H";
        }

        else
        {
          v151 = "-";
        }

        sub_100006F1C(v409, v151);
        sub_100007278(&v423, v411, v409);
        if (v410 < 0)
        {
          operator delete(v409[0]);
        }

        if (v412 < 0)
        {
          operator delete(v411[0]);
        }

        sub_100006F1C(v407, "inactive_limit_hard");
        if (v150)
        {
          v152 = "H";
        }

        else
        {
          v152 = "-";
        }

        sub_100006F1C(v405, v152);
        sub_100007278(&v423, v407, v405);
        if (v406 < 0)
        {
          operator delete(v405[0]);
        }

        if (v408 < 0)
        {
          operator delete(v407[0]);
        }

        if ((ledger() & 0x80000000) != 0)
        {
          fprintf(__stderrp, "Warning: Could not get ledger info for pid %d.\n", v140);
        }

        else
        {
          v153 = v530;
          v422 = v530;
          __p[0] = v530;
          if (dword_100014084 == -1 || dword_100014090 == -1 || dword_100014088 == -1 || dword_10001408C == -1 || dword_100014094 == -1 || dword_100014098 == -1 || dword_10001409C == -1 || dword_1000140A0 == -1 || dword_1000140A4 == -1 || dword_1000140B8 == -1 || dword_1000140BC == -1)
          {
            v154 = malloc_type_malloc(96 * v530, 0x1000040565EDBD2uLL);
            if (!v154)
            {
              exit(-1);
            }

            if ((ledger() & 0x80000000) == 0)
            {
              v155 = __p[0];
              if (__p[0] >= 1)
              {
                v156 = 0;
                v157 = v154;
                while (strcmp(v157, "phys_footprint"))
                {
                  if (!strcmp(v157, "internal"))
                  {
                    v158 = &dword_100014088;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "internal_compressed"))
                  {
                    v158 = &dword_10001408C;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "iokit_mapped"))
                  {
                    v158 = &dword_100014090;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "alternate_accounting"))
                  {
                    v158 = &dword_100014094;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "alternate_accounting_compressed"))
                  {
                    v158 = &dword_100014098;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "purgeable_nonvolatile"))
                  {
                    v158 = &dword_10001409C;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "purgeable_nonvolatile_compress"))
                  {
                    v158 = &dword_1000140A0;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "page_table"))
                  {
                    v158 = &dword_1000140A4;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "pages_grabbed"))
                  {
                    v158 = &dword_1000140A8;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "pages_grabbed_kern"))
                  {
                    v158 = &dword_1000140AC;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "pages_grabbed_iopl"))
                  {
                    v158 = &dword_1000140B0;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "pages_grabbed_upl"))
                  {
                    v158 = &dword_1000140B4;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "memorystatus_dirty_time"))
                  {
                    v158 = &dword_1000140B8;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "neural_nofootprint_total"))
                  {
                    v158 = &dword_1000140BC;
                    goto LABEL_627;
                  }

                  if (!strcmp(v157, "frozen_to_swap"))
                  {
                    v158 = &dword_1000140C0;
LABEL_627:
                    *v158 = v156;
                  }

                  ++v156;
                  v157 += 96;
                  if (v155 == v156)
                  {
                    goto LABEL_629;
                  }
                }

                v158 = &dword_100014084;
                goto LABEL_627;
              }
            }

LABEL_629:
            free(v154);
            v153 = v422;
          }

          v159 = malloc_type_malloc(48 * v153, 0x1000040EED21634uLL);
          if ((ledger() & 0x80000000) == 0 && v422 > dword_100014084)
          {
            v160 = v159[6 * dword_100014088];
            v269 = v159[6 * dword_10001408C];
            v270 = v159[6 * dword_100014084];
            v161 = v159[6 * dword_100014094];
            v267 = v159[6 * dword_1000140A0];
            v268 = v159[6 * dword_100014098];
            v162 = v159[6 * dword_100014090];
            v263 = v159[6 * dword_10001409C];
            v264 = v159[6 * dword_1000140A4];
            v266 = v159[6 * dword_1000140C0];
            if (byte_10001413B == 1)
            {
              sub_100006F1C(v403, "footprint");
              sub_100006FD4(&v423, v403, v270 - v264);
              if (v404 < 0)
              {
                v163 = v403;
                goto LABEL_639;
              }
            }

            else
            {
              sub_100006F1C(v401, "footprint");
              sub_100006FD4(&v423, v401, v270);
              if (v402 < 0)
              {
                v163 = v401;
LABEL_639:
                operator delete(*v163);
              }
            }

            sub_100006F1C(v399, "internal");
            sub_100006FD4(&v423, v399, v160);
            if (v400 < 0)
            {
              operator delete(v399[0]);
            }

            sub_100006F1C(v397, "internal_comp");
            sub_100006FD4(&v423, v397, v269);
            if (v398 < 0)
            {
              operator delete(v397[0]);
            }

            sub_100006F1C(v395, "iokit_mapped");
            sub_100006FD4(&v423, v395, v162);
            if (v396 < 0)
            {
              operator delete(v395[0]);
            }

            sub_100006F1C(v393, "alt_acct");
            sub_100006FD4(&v423, v393, v161);
            if (v394 < 0)
            {
              operator delete(v393[0]);
            }

            sub_100006F1C(v391, "alt_acct_comp");
            sub_100006FD4(&v423, v391, v268);
            if (v392 < 0)
            {
              operator delete(v391[0]);
            }

            if ((byte_10001413B & 1) == 0)
            {
              sub_100006F1C(v389, "page_table");
              sub_100006FD4(&v423, v389, v264);
              if (v390 < 0)
              {
                operator delete(v389[0]);
              }
            }

            sub_100006F1C(v387, "purge_nonvol");
            sub_100006FD4(&v423, v387, v263);
            if (v388 < 0)
            {
              operator delete(v387[0]);
            }

            sub_100006F1C(v385, "purge_nonvol_comp");
            sub_100006FD4(&v423, v385, v267);
            if (v386 < 0)
            {
              operator delete(v385[0]);
            }

            sub_100006F1C(v383, "compressed");
            sub_100006FD4(&v423, v383, v269 - v268 + v267);
            if (v384 < 0)
            {
              operator delete(v383[0]);
            }

            sub_100006F1C(v381, "frozen_size");
            sub_100006FD4(&v423, v381, v266);
            if (v382 < 0)
            {
              operator delete(v381[0]);
            }

            sub_100006F1C(v379, "resident");
            sub_100006FD4(&v423, v379, (v270 - v266) & ~((v270 - v266) >> 63));
            if (v380 < 0)
            {
              operator delete(v379[0]);
            }

            sub_100006F1C(v377, "limit");
            sub_100006FD4(&v423, v377, v141);
            if (v378 < 0)
            {
              operator delete(v377[0]);
            }

            if (byte_10001413F == 1)
            {
              if (dword_1000140A8 == -1)
              {
                sub_100006F1C(v367, "pages_grabbed");
                sub_100007334(&v423, v367, 0);
                if (v368 < 0)
                {
                  operator delete(v367[0]);
                }

                sub_100006F1C(v365, "pages_grabbed_kern");
                sub_100007334(&v423, v365, 0);
                if (v366 < 0)
                {
                  operator delete(v365[0]);
                }

                sub_100006F1C(v363, "pages_grabbed_iopl");
                sub_100007334(&v423, v363, 0);
                if (v364 < 0)
                {
                  operator delete(v363[0]);
                }

                sub_100006F1C(v361, "pages_grabbed_upl");
                sub_100007334(&v423, v361, 0);
                if (v362 < 0)
                {
                  v164 = v361;
LABEL_683:
                  operator delete(*v164);
                }
              }

              else
              {
                sub_100006F1C(v375, "pages_grabbed");
                sub_100007334(&v423, v375, v159[6 * dword_1000140A8]);
                if (v376 < 0)
                {
                  operator delete(v375[0]);
                }

                sub_100006F1C(v373, "pages_grabbed_kern");
                sub_100007334(&v423, v373, v159[6 * dword_1000140AC]);
                if (v374 < 0)
                {
                  operator delete(v373[0]);
                }

                sub_100006F1C(v371, "pages_grabbed_iopl");
                sub_100007334(&v423, v371, v159[6 * dword_1000140B0]);
                if (v372 < 0)
                {
                  operator delete(v371[0]);
                }

                sub_100006F1C(v369, "pages_grabbed_upl");
                sub_100007334(&v423, v369, v159[6 * dword_1000140B4]);
                if (v370 < 0)
                {
                  v164 = v369;
                  goto LABEL_683;
                }
              }
            }

            v165 = 0.0;
            if (byte_100014140 == 1 && dword_1000140B8 != -1)
            {
              v165 = v159[6 * dword_1000140B8] / 1000000000.0;
            }

            if (byte_100014141 == 1)
            {
              sub_100006F1C(v359, "neural");
              sub_100006FD4(&v423, v359, v159[6 * dword_1000140BC]);
              if (v360 < 0)
              {
                operator delete(v359[0]);
              }
            }

            free(v159);
            if (proc_pid_rusage(v140, 6, &buffer.__r_.__value_.__l.__data_))
            {
              fprintf(__stderrp, "Warning: Could not get rusage for pid %d.\n", v140);
              sub_100006F1C(v357, "footprint_peak");
              sub_100006FD4(&v423, v357, v270);
              v166 = 0.0;
              if (v358 < 0)
              {
                operator delete(v357[0]);
              }

              v167 = 0;
              goto LABEL_709;
            }

            sub_100006F1C(v355, "footprint_peak");
            sub_100006FD4(&v423, v355, v525);
            if (v356 < 0)
            {
              operator delete(v355[0]);
            }

            if (byte_100014141 == 1)
            {
              sub_100006F1C(v353, "neural_peak");
              sub_100006FD4(&v423, v353, v527);
              if (v354 < 0)
              {
                operator delete(v353[0]);
              }
            }

            if (byte_10001413C == 1)
            {
              sub_100006F1C(v351, "footprint_interval_peak");
              sub_100006FD4(&v423, v351, v526);
              if (v352 < 0)
              {
                operator delete(v351[0]);
              }

              if (byte_100014141 == 1)
              {
                sub_100006F1C(v349, "neural_interval_peak");
                sub_100006FD4(&v423, v349, v528);
                if (v350 < 0)
                {
                  operator delete(v349[0]);
                }
              }
            }

            if (byte_100014140 == 1)
            {
              v168 = mach_absolute_time();
              v169 = v524;
              if (qword_100014110 != -1)
              {
                sub_10000B324();
              }

              v166 = *&qword_100014108 * (v168 - v169);
              v167 = v166 > 0.0;
LABEL_709:
              if (byte_100014140 == 1)
              {
                sub_100006F1C(v347, "total_dirty_time");
                sub_100007450(&v423, v347, v165);
                if (v348 < 0)
                {
                  operator delete(v347[0]);
                  if (!v167)
                  {
                    goto LABEL_719;
                  }

LABEL_712:
                  sub_100006F1C(v345, "process_lifetime");
                  sub_100007450(&v423, v345, v166);
                  if (v346 < 0)
                  {
                    operator delete(v345[0]);
                  }

                  sub_100006F1C(v343, "percent_dirty");
                  v170 = v165 / v166;
                  v171 = "%";
                  if (byte_100014143)
                  {
                    v171 = &unk_10000D5F6;
                  }

                  snprintf(__p, 0xAuLL, "%02.2f%s", v170 * 100.0, v171);
                  v534[0] = v343;
                  v172 = sub_100007844(&v423, v343);
                  std::string::assign((v172 + 56), __p);
                  *(v172 + 80) = (v170 * 10000.0);
                  if (v344 < 0)
                  {
                    v173 = v343;
                    goto LABEL_727;
                  }
                }

                else
                {
                  if (v167)
                  {
                    goto LABEL_712;
                  }

LABEL_719:
                  sub_100006F1C(v341, "process_lifetime");
                  sub_100006F1C(v339, "-");
                  sub_100007278(&v423, v341, v339);
                  if (v340 < 0)
                  {
                    operator delete(v339[0]);
                  }

                  if (v342 < 0)
                  {
                    operator delete(v341[0]);
                  }

                  sub_100006F1C(v337, "percent_dirty");
                  sub_100006F1C(v335, "-");
                  sub_100007278(&v423, v337, v335);
                  if (v336 < 0)
                  {
                    operator delete(v335[0]);
                  }

                  if (v338 < 0)
                  {
                    v173 = v337;
LABEL_727:
                    operator delete(*v173);
                  }
                }
              }
            }

            v334 = 0;
            *__val = 0u;
            v333 = 0u;
            if (proc_pidinfo(v140, 20, 0, __val, 40) <= 0)
            {
              fprintf(__stderrp, "Warning: Could not get coalitions for pid %d.\n", v140);
            }

            bzero(__p, 0x1000uLL);
            if (v140 < 1)
            {
              proc_name(v140, __p, 0x1000u);
            }

            else
            {
              proc_pidpath(v140, __p, 0x1000u);
            }

            v174 = basename(__p);
            sub_100006F1C(v330, "name");
            sub_100006F1C(v328, v174);
            sub_100007278(&v423, v330, v328);
            if (v329 < 0)
            {
              operator delete(v328[0]);
            }

            if (v331 < 0)
            {
              operator delete(v330[0]);
            }

            sub_100006F1C(v326, "coalition");
            sub_100007334(&v423, v326, __val[1]);
            if (v327 < 0)
            {
              operator delete(v326[0]);
            }

            sub_100006F1C(v324, "pid");
            sub_100007334(&v423, v324, v140);
            if (v325 < 0)
            {
              operator delete(v324[0]);
            }

            sub_100006F1C(v322, "fds");
            sub_100007D68(v534);
            v175 = proc_pidinfo(v140, 1, 0, 0, 0);
            if (v175 < 1)
            {
              goto LABEL_766;
            }

            v176 = 0;
            v177 = 0;
            do
            {
              if (v175 > v177)
              {
                v177 += (v175 - v177 + 255) & 0xFFFFFFFFFFFFFF00;
                v178 = v176 ? reallocf(v176, v177) : malloc_type_malloc(v177, 0x100004000313F17uLL);
                v176 = v178;
                if (!v178)
                {
                  goto LABEL_766;
                }
              }

              v179 = proc_pidinfo(v140, 1, 0, v176, v177);
              v180 = v179;
              if (v179 < 1)
              {
                v182 = -1;
                if (v176)
                {
                  goto LABEL_765;
                }

                goto LABEL_754;
              }

              v181 = (v179 + 8);
              v175 = v177 + 8;
            }

            while (v177 <= v181);
            if (v180 < 8)
            {
              v182 = 0;
              if (v176)
              {
                goto LABEL_765;
              }

LABEL_754:
              if (v182 < 0)
              {
                goto LABEL_766;
              }

LABEL_755:
              std::ostream::operator<<();
              goto LABEL_767;
            }

            v182 = 0;
            v183 = v180 >> 3;
            v184 = v176 + 1;
            while (1)
            {
              if (*v184 != 1)
              {
                goto LABEL_762;
              }

              v185 = proc_pidfdinfo(v140, *(v184 - 1), 1, v538, 176);
              if (v185 <= 0)
              {
                break;
              }

              if (v185 < 0xB0)
              {
                goto LABEL_764;
              }

              ++v182;
LABEL_762:
              v184 += 2;
              if (!--v183)
              {
                goto LABEL_765;
              }
            }

            if (*__error() == 2)
            {
              goto LABEL_762;
            }

LABEL_764:
            v182 = -1;
LABEL_765:
            free(v176);
            if ((v182 & 0x80000000) == 0)
            {
              goto LABEL_755;
            }

LABEL_766:
            LOBYTE(v538[0]) = 45;
            sub_1000081D0(&v534[2], v538, 1);
LABEL_767:
            std::stringbuf::str();
            v534[0] = v261;
            *(v534 + *(v261 - 3)) = v260;
            v534[2] = v259;
            if (v537 < 0)
            {
              operator delete(v536[7].__locale_);
            }

            std::locale::~locale(v536);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            sub_100007278(&v423, v322, &v320);
            if (v321 < 0)
            {
              operator delete(v320);
            }

            if (v323 < 0)
            {
              operator delete(v322[0]);
            }

            sub_100006F1C(v318, "priority");
            sub_100007334(&v423, v318, v276);
            if (v319 < 0)
            {
              operator delete(v318[0]);
            }

            if (v276 <= 109)
            {
              if (v276 <= 49)
              {
                if (v276 <= 19)
                {
                  v186 = "(Idle)";
                  if (v276)
                  {
                    if (v276 != 10)
                    {
                      goto LABEL_972;
                    }

                    v186 = "(Deferred)";
                  }
                }

                else
                {
                  switch(v276)
                  {
                    case 20:
                      v186 = "(Opportunistic)";
                      break;
                    case 30:
                      v186 = "(Dock)";
                      break;
                    case 40:
                      v186 = "(BG)";
                      break;
                    default:
                      goto LABEL_972;
                  }
                }

                goto LABEL_806;
              }

              if (v276 > 79)
              {
                switch(v276)
                {
                  case 'P':
                    v186 = "(UISupport)";
                    break;
                  case 'Z':
                    v186 = "(FGSupport)";
                    break;
                  case 'd':
                    v186 = "(FG)";
                    break;
                  default:
                    goto LABEL_972;
                }

                goto LABEL_806;
              }

              if (v276 == 50)
              {
                v186 = "(Phone)";
                goto LABEL_806;
              }

              if (v276 != 70)
              {
                if (v276 != 75)
                {
                  goto LABEL_972;
                }

                v186 = "(Freezer)";
                goto LABEL_806;
              }

LABEL_805:
              v186 = "(-)";
              goto LABEL_806;
            }

            if (v276 > 169)
            {
              if (v276 <= 199)
              {
                switch(v276)
                {
                  case 170:
                    v186 = "(RenderServer)";
                    break;
                  case 180:
                    v186 = "(Important)";
                    break;
                  case 190:
                    v186 = "(Critical)";
                    break;
                  default:
                    goto LABEL_972;
                }

                goto LABEL_806;
              }

              if (v276 != 200 && v276 != 210 && v276 != 999)
              {
                goto LABEL_972;
              }

              goto LABEL_805;
            }

            if (v276 > 139)
            {
              if (v276 != 140)
              {
                if (v276 == 150)
                {
                  v186 = "(DriverKit)";
                }

                else
                {
                  if (v276 != 160)
                  {
                    goto LABEL_972;
                  }

                  v186 = "(Home)";
                }

                goto LABEL_806;
              }

              goto LABEL_805;
            }

            switch(v276)
            {
              case 110:
                goto LABEL_805;
              case 120:
                v186 = "(Audio)";
                break;
              case 130:
                v186 = "(AppleTV)";
                break;
              default:
LABEL_972:
                v186 = "(Unknown)";
                break;
            }

LABEL_806:
            sub_100006F1C(v316, "priority_name");
            sub_100006F1C(v314, v186);
            sub_100007278(&v423, v316, v314);
            if (v315 < 0)
            {
              operator delete(v314[0]);
            }

            if (v317 < 0)
            {
              operator delete(v316[0]);
            }

            sub_100006F1C(v312, "priority_time");
            v187 = &unk_10000D5F6;
            if (!byte_100014143)
            {
              v187 = "s";
            }

            snprintf(v534, 0xAuLL, "%8.3f%s", v137, v187);
            v538[0] = v312;
            v188 = sub_100007844(&v423, v312);
            std::string::assign((v188 + 56), v534);
            *(v188 + 80) = v137;
            if (v313 < 0)
            {
              operator delete(v312[0]);
            }

            sub_100006F1C(v310, "relaunch");
            v189 = "-";
            if (context - 1 <= 3)
            {
              v189 = (&off_100010558)[context - 1];
            }

            sub_100006F1C(v534, v189);
            v190 = v534[0];
            v538[0] = v534[1];
            *(v538 + 7) = *(&v534[1] + 7);
            v191 = HIBYTE(v534[2]);
            memset(v534, 0, sizeof(v534));
            v285.__r_.__value_.__r.__words[0] = v310;
            v192 = sub_100007844(&v423, v310);
            v193 = v192;
            if (*(v192 + 79) < 0)
            {
              operator delete(*(v192 + 56));
            }

            v194 = v538[0];
            *(v193 + 56) = v190;
            *(v193 + 64) = v194;
            *(v193 + 71) = *(v538 + 7);
            *(v193 + 79) = v191;
            *(v193 + 80) = context;
            if (SHIBYTE(v534[2]) < 0)
            {
              operator delete(v534[0]);
            }

            if (v311 < 0)
            {
              operator delete(v310[0]);
            }

            sub_100006F1C(v308, "PE");
            if ((v139 & 0x10) != 0)
            {
              v195 = "Y";
            }

            else
            {
              v195 = "-";
            }

            sub_100006F1C(v306, v195);
            sub_100007278(&v423, v308, v306);
            if (v307 < 0)
            {
              operator delete(v306[0]);
            }

            if (v309 < 0)
            {
              operator delete(v308[0]);
            }

            sub_100006F1C(v304, "frozen");
            if ((v139 & 2) != 0)
            {
              v196 = "Y";
            }

            else
            {
              v196 = "-";
            }

            sub_100006F1C(v302, v196);
            sub_100007278(&v423, v304, v302);
            if (v303 < 0)
            {
              operator delete(v302[0]);
            }

            if (v305 < 0)
            {
              operator delete(v304[0]);
            }

            if (byte_10001413E == 1)
            {
              sub_100006F1C(v300, "thawed");
              if ((v139 & 4) != 0)
              {
                v197 = "Y";
              }

              else
              {
                v197 = "-";
              }

              sub_100006F1C(v298, v197);
              sub_100007278(&v423, v300, v298);
              if (v299 < 0)
              {
                operator delete(v298[0]);
              }

              if (v301 < 0)
              {
                operator delete(v300[0]);
              }
            }

            sub_100006F1C(v296, "dirty");
            v198 = "Y";
            if ((v139 & 0x20) == 0)
            {
              v198 = "N";
            }

            if ((v139 & 8) != 0)
            {
              v199 = v198;
            }

            else
            {
              v199 = "-";
            }

            sub_100006F1C(v294, v199);
            sub_100007278(&v423, v296, v294);
            if (v295 < 0)
            {
              operator delete(v294[0]);
            }

            if (v297 < 0)
            {
              operator delete(v296[0]);
            }

            if (v262)
            {
              if (v140 < 1)
              {
                v202 = 0;
              }

              else
              {
                contexta = objc_autoreleasePoolPush();
                v200 = [NSNumber numberWithInt:v140];
                v285.__r_.__value_.__r.__words[0] = 0;
                v277 = [RBSProcessHandle handleForIdentifier:v200 error:&v285];
                v201 = v285.__r_.__value_.__l.__data_;

                if (v201)
                {
                  fprintf(__stderrp, "Warning: Could not get RBSProcessHandle for pid %d.\n", v140);
                  v202 = 0;
                }

                else
                {
                  v541 = 0u;
                  v540 = 0u;
                  v539 = 0u;
                  *v538 = 0u;
                  v203 = [v277 currentState];
                  v204 = [v203 assertions];

                  v205 = [v204 countByEnumeratingWithState:v538 objects:v534 count:16];
                  if (v205)
                  {
                    v206 = *v539;
                    while (2)
                    {
                      for (i = 0; i != v205; ++i)
                      {
                        if (*v539 != v206)
                        {
                          objc_enumerationMutation(v204);
                        }

                        v208 = [*(v538[1] + i) domain];
                        v209 = [v208 isEqualToString:@"com.apple.dasd:DockApp"];

                        if (v209)
                        {
                          v202 = 3;
                          goto LABEL_872;
                        }
                      }

                      v205 = [v204 countByEnumeratingWithState:v538 objects:v534 count:16];
                      if (v205)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v202 = 2;
LABEL_872:
                }

                objc_autoreleasePoolPop(contexta);
              }

              sub_100006F1C(v292, "docked");
              v210 = "Y";
              if ((v202 & 1) == 0)
              {
                v210 = "N";
              }

              if (v202 >= 2)
              {
                v211 = v210;
              }

              else
              {
                v211 = "-";
              }

              sub_100006F1C(v290, v211);
              sub_100007278(&v423, v292, v290);
              if (v291 < 0)
              {
                operator delete(v290[0]);
              }

              if (v293 < 0)
              {
                operator delete(v292[0]);
              }
            }

            if (v140 < 1)
            {
LABEL_888:
              v214 = "-";
            }

            else
            {
              v212 = memorystatus_control();
              v213 = __error();
              if (v212)
              {
                v214 = "Y";
                if (v212 == -1)
                {
                  v215 = *v213;
                  if (v215 != 45)
                  {
                    v216 = __stderrp;
                    v217 = strerror(v215);
                    fprintf(v216, "Warning: Unable to get swappable status for pid: %d due to %s\n", v140, v217);
                  }

                  goto LABEL_888;
                }
              }

              else
              {
                v214 = "N";
              }
            }

            sub_100006F1C(v288, "swappable");
            sub_100006F1C(v286, v214);
            sub_100007278(&v423, v288, v286);
            if (v287 < 0)
            {
              operator delete(v286[0]);
            }

            if (v289 < 0)
            {
              operator delete(v288[0]);
            }

            memset(&v285, 0, sizeof(v285));
            if (!v138)
            {
              goto LABEL_908;
            }

            v218 = 0;
            do
            {
              if (v138)
              {
                if (v218 < 0x1B)
                {
                  size = HIBYTE(v285.__r_.__value_.__r.__words[2]);
                  if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = v285.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    std::string::append(&v285, " ");
                  }

                  std::string::append(&v285, (&off_100010430)[v218]);
                }

                else
                {
                  fprintf(__stderrp, "Warning: Unknown assertion type %d. (Has BKSWorkspaceTypes.h been changed recently?)\n", v136);
                }
              }

              ++v218;
              v220 = v138 >= 2;
              v138 >>= 1;
            }

            while (v220);
            v221 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
            if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v221 = v285.__r_.__value_.__l.__size_;
            }

            if (!v221)
            {
LABEL_908:
              if (byte_100014143 == 1)
              {
                std::string::assign(&v285, "(---)");
              }
            }

            sub_100006F1C(v283, "flags");
            if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_10000A6EC(&__dst, v285.__r_.__value_.__l.__data_, v285.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = v285;
            }

            sub_100007278(&v423, v283, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (v284 < 0)
            {
              operator delete(v283[0]);
            }

            sub_100006F1C(v280, "sample");
            sub_100007334(&v423, v280, v265);
            if (v281 < 0)
            {
              operator delete(v280[0]);
            }

            sub_10000AAC8(&v278, &v423);
            if (qword_100014158)
            {
              if (qword_100014168 != -1)
              {
                sub_10000B34C();
              }

              v222 = [NSMutableDictionary alloc];
              v223 = [v222 initWithCapacity:(qword_1000140E0 - qword_1000140D8) >> 5];
              if (qword_1000140E0 != qword_1000140D8)
              {
                v224 = 0;
                v225 = 0;
                while (1)
                {
                  v226 = objc_autoreleasePoolPush();
                  v227 = qword_1000140D8;
                  v228 = (qword_1000140D8 + v224);
                  if (*(qword_1000140D8 + v224 + 23) < 0)
                  {
                    sub_10000A6EC(v534, *v228, *(v228 + 1));
                  }

                  else
                  {
                    v229 = *v228;
                    v534[2] = *(v228 + 2);
                    *v534 = v229;
                  }

                  v230 = *(v227 + v224 + 24);
                  v535 = v230;
                  if (SHIBYTE(v534[2]) < 0)
                  {
                    sub_10000A6EC(v538, v534[0], v534[1]);
                    LODWORD(v230) = v535;
                  }

                  else
                  {
                    *v538 = *v534;
                    *&v539 = v534[2];
                  }

                  if ((SBYTE7(v539) & 0x80u) == 0)
                  {
                    v231 = v538;
                  }

                  else
                  {
                    v231 = v538[0];
                  }

                  v232 = [NSString stringWithCString:v231 encoding:4];
                  if (!v230)
                  {
                    v519 = v538;
                    v237 = sub_100007844(&v278, v538);
                    v238 = (v237 + 56);
                    if (*(v237 + 79) < 0)
                    {
                      v238 = *v238;
                    }

                    v236 = [NSString stringWithCString:v238 encoding:4];
                    [v223 setObject:v236 forKeyedSubscript:v232];
                    goto LABEL_943;
                  }

                  if (v230 == 1)
                  {
                    break;
                  }

                  if (v230 == 2)
                  {
                    v519 = v538;
                    v233 = sub_100007844(&v278, v538);
                    v235 = 0.00000095367;
                    if (byte_100014144)
                    {
                      v235 = 0.00097656;
                    }

                    *&v234 = v235 * *(v233 + 80);
                    v236 = [NSNumber numberWithFloat:v234];
                    [v223 setObject:v236 forKeyedSubscript:v232];
                    goto LABEL_943;
                  }

LABEL_944:

                  if (SBYTE7(v539) < 0)
                  {
                    operator delete(v538[0]);
                  }

                  if (SHIBYTE(v534[2]) < 0)
                  {
                    operator delete(v534[0]);
                  }

                  objc_autoreleasePoolPop(v226);
                  ++v225;
                  v224 += 32;
                  if (v225 >= (qword_1000140E0 - qword_1000140D8) >> 5)
                  {
                    goto LABEL_949;
                  }
                }

                v519 = v538;
                v236 = [NSNumber numberWithUnsignedLongLong:*(sub_100007844(&v278, v538) + 80)];
                [v223 setObject:v236 forKeyedSubscript:v232];
LABEL_943:

                goto LABEL_944;
              }

LABEL_949:
              v239 = [qword_100014160 evaluateWithObject:v223];

              sub_100009D00(&v278, v279);
              if (!v239)
              {
                goto LABEL_956;
              }
            }

            else
            {
              sub_100009D00(&v278, v279);
            }

            v240 = *(&xmmword_1000140F0 + 1);
            if (*(&xmmword_1000140F0 + 1) >= unk_100014100)
            {
              v241 = sub_10000AEF4(&xmmword_1000140F0, &v423);
            }

            else
            {
              sub_10000AAC8(*(&xmmword_1000140F0 + 1), &v423);
              v241 = v240 + 24;
              *(&xmmword_1000140F0 + 1) = v240 + 24;
            }

            *(&xmmword_1000140F0 + 1) = v241;
LABEL_956:
            if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v285.__r_.__value_.__l.__data_);
            }

            goto LABEL_958;
          }

          fprintf(__stderrp, "Warning: Could not get ledger entry info for pid %d.\n", v140);
          free(v159);
        }

LABEL_958:
        sub_100009D00(&v423, v424[0]);
        if (++v136 == v272)
        {
          if (v265 != qword_100014078)
          {
            v272 = sub_100006C98(&v517);
          }

          while ((byte_100014142 & 1) == 0)
          {
            if (mach_absolute_time() >= deadline)
            {
              ++v265;
              if ((byte_100014142 & 1) == 0)
              {
                goto LABEL_532;
              }

              goto LABEL_468;
            }

            if (mach_wait_until(deadline))
            {
              fprintf(__stderrp, "Warning: Spurious wakeup before %lums, retrying\n", qword_100014130);
            }
          }

          break;
        }
      }
    }
  }

LABEL_468:
  free(v517);
  if (byte_100014143)
  {
    v102 = 0;
  }

  else
  {
    v102 = 5;
  }

  v275 = v102;
  LODWORD(__p[0]) = 0;
  sub_100008C74(v534, (qword_1000140E0 - qword_1000140D8) >> 5);
  if ((byte_100014143 & 1) == 0)
  {
    v103 = qword_1000140D8;
    if (qword_1000140E0 != qword_1000140D8)
    {
      for (j = 0; j < (qword_1000140E0 - v103) >> 5; ++j)
      {
        v105 = v103 + 32 * j;
        if (*(v105 + 28) & 1) != 0 || j && (*(v105 - 4))
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v106 = *(v105 + 23);
          if (v106 < 0)
          {
            v106 = *(v105 + 8);
          }

          LODWORD(v107) = v106;
        }

        v108 = v534[0];
        *(v534[0] + j) = v107;
        v109 = xmmword_1000140F0;
        if (*(&xmmword_1000140F0 + 1) != xmmword_1000140F0)
        {
          v110 = 0;
          v111 = 0;
          do
          {
            __p[0] = (qword_1000140D8 + 32 * j);
            v112 = sub_100007844(v109 + v110, __p[0]);
            v113 = *(v112 + 79);
            if ((v113 & 0x8000000000000000) != 0)
            {
              v113 = *(v112 + 64);
            }

            v108 = v534[0];
            v107 = *(v534[0] + j);
            if (v113 > v107)
            {
              *(v534[0] + j) = v113;
              LODWORD(v107) = v113;
            }

            ++v111;
            v109 = xmmword_1000140F0;
            v110 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(&xmmword_1000140F0 + 1) - xmmword_1000140F0) >> 3) > v111);
          v103 = qword_1000140D8;
        }

        if (!j)
        {
          continue;
        }

        v114 = v103 + 32 * (j - 1);
        if ((*(v114 + 28) & 1) == 0)
        {
          continue;
        }

        v115 = &v108[4 * j - 4];
        v116 = *v115 + v107 + 1;
        v117 = *(v114 + 23);
        if ((v117 & 0x80000000) != 0)
        {
          v114 = *(v114 + 8);
          if (v114 > v116)
          {
            goto LABEL_495;
          }
        }

        else if (v116 < v117)
        {
          LODWORD(v114) = *(v114 + 23);
LABEL_495:
          v118 = &v108[4 * j];
          if (v107 <= *v115)
          {
            LODWORD(v107) = *v115;
            v118 = v115;
          }

          *v118 = v107 - v116 + v114;
        }
      }
    }
  }

  v119 = snprintf(__p, 0x1000uLL, "%*s", v275, "#");
  v120 = qword_1000140D8;
  if (qword_1000140E0 != qword_1000140D8)
  {
    v121 = 0;
    v122 = 0;
    v123 = __p + v119;
    v124 = 4096 - v119;
    do
    {
      if (byte_100014143)
      {
        v125 = ",";
      }

      else
      {
        v125 = "  ";
      }

      v126 = v120 + 32 * v121;
      if (byte_100014143)
      {
        v127 = *(v126 + 28);
      }

      else
      {
        v127 = *(v126 + 28);
        if (v127)
        {
          if (*(v126 + 23) < 0)
          {
            v126 = *v126;
          }

          v130 = snprintf(v123, v124, "%s%-*s", "  ", *(v534[0] + v121) + *(v534[0] + ++v122) + 1, v126);
          goto LABEL_523;
        }
      }

      if ((v127 & 2) != 0)
      {
        v128 = "%s%-*s";
      }

      else
      {
        v128 = "%s%*s";
      }

      if ((v127 & 4) != 0)
      {
        sub_1000088CC(v126, *(v534[0] + v121), &buffer);
      }

      else if (*(v126 + 23) < 0)
      {
        sub_10000A6EC(&buffer, *v126, *(v126 + 8));
      }

      else
      {
        v129 = *v126;
        buffer.__r_.__value_.__r.__words[2] = *(v126 + 16);
        *&buffer.__r_.__value_.__l.__data_ = v129;
      }

      if ((buffer.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buffer = &buffer;
      }

      else
      {
        p_buffer = buffer.__r_.__value_.__r.__words[0];
      }

      v130 = snprintf(v123, v124, v128, v125, *(v534[0] + v121), p_buffer);
      if (SHIBYTE(buffer.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buffer.__r_.__value_.__l.__data_);
      }

LABEL_523:
      v123 += v130;
      v124 -= v130;
      v121 = ++v122;
      v120 = qword_1000140D8;
    }

    while (v122 < ((qword_1000140E0 - qword_1000140D8) >> 5));
  }

  sub_100008A3C(__p);
  puts(__p);
  if (qword_100014148)
  {
    sub_100006F1C(v538, qword_100014148);
    v132 = *(&xmmword_1000140F0 + 1);
    v133 = xmmword_1000140F0;
    if (*(&xmmword_1000140F0 + 1) != xmmword_1000140F0)
    {
      v134 = 0;
      v135 = 0;
      do
      {
        if (!sub_100008F7C(&v133[v134], v538))
        {
          fprintf(__stderrp, "Error: Unable to sort by key '%s'\n", qword_100014148);
          sub_1000075B0(1);
        }

        ++v135;
        v132 = *(&xmmword_1000140F0 + 1);
        v133 = xmmword_1000140F0;
        v134 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(&xmmword_1000140F0 + 1) - xmmword_1000140F0) >> 3) > v135);
    }

    buffer.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
    buffer.__r_.__value_.__l.__size_ = 3321888768;
    buffer.__r_.__value_.__r.__words[2] = sub_100008B10;
    v521 = &unk_100010528;
    if (SBYTE7(v539) < 0)
    {
      sub_10000A6EC(&v522, v538[0], v538[1]);
    }

    else
    {
      v522 = *v538;
      v523 = v539;
    }

    sub_100008AB0(v133, v132, &buffer);
    if (SHIBYTE(v523) < 0)
    {
      operator delete(v522);
    }

    if (SBYTE7(v539) < 0)
    {
      operator delete(v538[0]);
    }
  }

  if (*(&xmmword_1000140F0 + 1) != xmmword_1000140F0)
  {
    v242 = 0;
    do
    {
      v243 = snprintf(__p, 0x1000uLL, "%*d", v275, v242);
      v244 = qword_1000140D8;
      if (qword_1000140E0 != qword_1000140D8)
      {
        v245 = 0;
        v246 = 0;
        v247 = __p + v243;
        v248 = 4096 - v243;
        do
        {
          v249 = ",";
          if ((byte_100014143 & 1) == 0)
          {
            if (v246)
            {
              if (*(v244 + v245 - 4))
              {
                v249 = " ";
              }

              else
              {
                v249 = "  ";
              }
            }

            else
            {
              v249 = "  ";
            }
          }

          v250 = (v244 + v245);
          v251 = *(v244 + v245 + 28);
          if ((v251 & 2) != 0)
          {
            v252 = "%s%-*s";
          }

          else
          {
            v252 = "%s%*s";
          }

          v253 = xmmword_1000140F0 + 24 * v242;
          if ((v251 & 4) != 0)
          {
            v529 = v250;
            v255 = sub_100007844(v253, v250);
            sub_1000088CC(v255 + 56, *(v534[0] + v246), v538);
          }

          else
          {
            v529 = v250;
            v254 = sub_100007844(v253, v250);
            if (*(v254 + 79) < 0)
            {
              sub_10000A6EC(v538, *(v254 + 56), *(v254 + 64));
            }

            else
            {
              *v538 = *(v254 + 56);
              *&v539 = *(v254 + 72);
            }
          }

          if ((SBYTE7(v539) & 0x80u) == 0)
          {
            v256 = v538;
          }

          else
          {
            v256 = v538[0];
          }

          v257 = snprintf(v247, v248, v252, v249, *(v534[0] + v246), v256);
          if (SBYTE7(v539) < 0)
          {
            operator delete(v538[0]);
          }

          v248 -= v257;
          v247 += v257;
          ++v246;
          v244 = qword_1000140D8;
          v245 += 32;
        }

        while (v246 < (qword_1000140E0 - qword_1000140D8) >> 5);
      }

      sub_100008A3C(__p);
      puts(__p);
      ++v242;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(&xmmword_1000140F0 + 1) - xmmword_1000140F0) >> 3) > v242);
  }

  if (v534[0])
  {
    v534[1] = v534[0];
    operator delete(v534[0]);
  }

  return 0;
}

void sub_100005C78(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(STACK[0x7D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100006C98(void **a1)
{
  if ((dword_1000140C4 & 0x80000000) == 0)
  {
    if (!sub_1000077C4(dword_1000140C4))
    {
      fprintf(__stderrp, "Reset interval peak for pid %d. Run with -i (or -e) to see the new interval maximum.\n", dword_1000140C4);
      exit(0);
    }

LABEL_20:
    exit(71);
  }

  if (byte_100014145 & 1) != 0 || (byte_100014151)
  {
    v15 = 0;
    v14 = 4;
    if (!sysctlbyname("kern.maxproc", &v15, &v14, 0, 0))
    {
      operator new[]();
    }

    goto LABEL_20;
  }

  v2 = 0;
  while (1)
  {
    while (1)
    {
      v3 = memorystatus_control();
      if (v3 > 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        v11 = __stderrp;
        v12 = __error();
        v13 = strerror(*v12);
        fprintf(v11, "Error: Could not get priorityListSize: %s\n", v13);
        goto LABEL_17;
      }
    }

    v4 = (v3 + 512);
    v5 = *a1;
    if (v2 < v4)
    {
      *a1 = malloc_type_realloc(*a1, v4, 0x1000040AE2C30F4uLL);
      v2 = v4;
    }

    v6 = memorystatus_control();
    if (v6 > 0)
    {
      return (v6 >> 7) + 2;
    }

    if (*__error() != 22 && *__error() != 4)
    {
      v7 = __stderrp;
      v8 = __error();
      v9 = strerror(*v8);
      fprintf(v7, "Error: Could not get jetsam priority list: %s\n", v9);
      free(*a1);
LABEL_17:
      exit(1);
    }
  }
}

_BYTE *sub_100006F1C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000085B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100006FD4(uint64_t a1, const void **a2, unint64_t a3)
{
  if (a3 - 0x7FFFFFFFFFFFFFFFLL > 0x8000000000000001)
  {
    if (byte_100014144 == 1)
    {
      v7 = a3 >> 10;
      if (byte_100014143)
      {
        v8 = &unk_10000D5F6;
      }

      else
      {
        v8 = "KB";
      }

      __str[0] = 0;
    }

    else
    {
      if (a3 < 0x40000001)
      {
        v11 = 20;
        if (a3 > 0x100000)
        {
          v10 = "MB";
        }

        else
        {
          v11 = 10;
          v10 = "KB";
        }

        if (a3 > 0x100000)
        {
          LOWORD(v9) = a3 >> 10;
        }

        else
        {
          LOWORD(v9) = a3;
        }
      }

      else
      {
        v9 = a3 >> 20;
        v10 = "GB";
        v11 = 30;
      }

      v7 = a3 >> v11;
      if (byte_100014143)
      {
        v8 = &unk_10000D5F6;
      }

      else
      {
        v8 = v10;
      }

      __str[0] = 0;
      if (v7 <= 9)
      {
        snprintf(__str, 4uLL, ".%d", ((5 * (v9 & 0x3FF)) >> 9) & 0x3FFFFF);
      }
    }

    snprintf(__s, 0x20uLL, "%lld%s%s", v7, __str, v8);
    sub_100006F1C(&__p, __s);
  }

  else
  {
    if (byte_100014143 == 1)
    {
      if (a3)
      {
        v6 = "-";
      }

      else
      {
        v6 = "0";
      }

LABEL_6:
      sub_100006F1C(&__p, v6);
      goto LABEL_31;
    }

    if (byte_100014144 == 1)
    {
      if (a3)
      {
        v6 = "-";
      }

      else
      {
        v6 = "0KB";
      }

      goto LABEL_6;
    }

    sub_100006F1C(&__p, "---");
  }

LABEL_31:
  v12 = __p;
  v20[0] = v18;
  *(v20 + 7) = *(&v18 + 7);
  v13 = HIBYTE(v18);
  v18 = 0uLL;
  __p = 0;
  *__s = a2;
  v14 = sub_100007844(a1, a2);
  v15 = v14;
  if (*(v14 + 79) < 0)
  {
    operator delete(*(v14 + 56));
  }

  v16 = v20[0];
  *(v15 + 56) = v12;
  *(v15 + 64) = v16;
  *(v15 + 71) = *(v20 + 7);
  *(v15 + 79) = v13;
  *(v15 + 80) = a3;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }
}

void sub_100007248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100007278(uint64_t a1, const void **a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_10000A6EC(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  v11 = 0;
  v12 = a2;
  v5 = sub_100007844(a1, a2);
  v6 = v5;
  if (*(v5 + 79) < 0)
  {
    operator delete(*(v5 + 56));
  }

  result = *&v9;
  *(v6 + 56) = v9;
  v8 = v11;
  *(v6 + 72) = v10;
  *(v6 + 80) = v8;
  return result;
}

void sub_100007318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007334(uint64_t a1, const void **a2, unint64_t __val)
{
  std::to_string(&__p, __val);
  v6 = __p.__r_.__value_.__r.__words[0];
  v12 = a2;
  v13[0] = __p.__r_.__value_.__l.__size_;
  *(v13 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  v8 = sub_100007844(a1, a2);
  v9 = v8;
  if (*(v8 + 79) < 0)
  {
    operator delete(*(v8 + 56));
  }

  v10 = v13[0];
  *(v9 + 56) = v6;
  *(v9 + 64) = v10;
  *(v9 + 71) = *(v13 + 7);
  *(v9 + 79) = v7;
  *(v9 + 80) = __val;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100007420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007450(uint64_t a1, const void **a2, unint64_t __val)
{
  if (byte_100014143)
  {
    v6 = &unk_10000D5F6;
  }

  else
  {
    v6 = "s";
  }

  std::to_string(&__p, __val);
  v7 = std::string::append(&__p, v6);
  v9 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  v15 = a2;
  v16[0] = size;
  *(v16 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v17[0] = v16[0];
  *(v17 + 7) = *(v16 + 7);
  v11 = sub_100007844(a1, a2);
  v12 = v11;
  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  v13 = v17[0];
  *(v12 + 56) = v9;
  *(v12 + 64) = v13;
  *(v12 + 71) = *(v17 + 7);
  *(v12 + 79) = v10;
  *(v12 + 80) = __val;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100007578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000075B0(int a1)
{
  fwrite("jetsam_priority shows dirty state, memory usage, and file counts for processes in priority order.\n\n", 0x63uLL, 1uLL, __stderrp);
  fwrite("Usage:\n", 7uLL, 1uLL, __stderrp);
  if (byte_1000140D0 == 1)
  {
    fwrite("   -e: Extended output: print every column.  Equivalent to -l -f -i.\n", 0x45uLL, 1uLL, __stderrp);
    fwrite("   -i: Print interval footprint peak. Requires development kernel.\n", 0x43uLL, 1uLL, __stderrp);
    fwrite("   -z <optional PID>: Reset interval footprint for PID (or all). Requires development kernel.\n", 0x5EuLL, 1uLL, __stderrp);
    fwrite("   -l: Print memory limits.\n", 0x1CuLL, 1uLL, __stderrp);
    fwrite("   -f: Print some (not all) kernel ledgers.\n", 0x2CuLL, 1uLL, __stderrp);
    fwrite("       See xnu osfmk/kern/task.c and footprint(1) for details.\n", 0x3FuLL, 1uLL, __stderrp);
    fwrite("       footprint = (internal - alt_acct) + (internal_comp - alt_acct_comp)\n                   + iokit_mapped + purge_nonvol + purge_nonvol_comp + page_table\n                   + other ledger balances not shown here\n", 0xD7uLL, 1uLL, __stderrp);
    fwrite("       footprint_peak: The maximum value of footprint in the task's lifetime.\n       internal:       Size of the task's anonymous memory which is not compressed.\n       internal_comp:  Size of the task's anonymous memory which is compressed or swapped.\n       iokit_mapped:   Total size of all IOKit mappings in this task.\n       alt_acct:       The number of internal pages which are part of IOKit mappings or purgeable.\n                       These must be subtracted to avoid double-counting.\n       page_table:     The size of page table mappings for the process.\n", 0x238uLL, 1uLL, __stderrp);
  }

  fwrite("   -p PID: Print information about a single process.\n", 0x35uLL, 1uLL, __stderrp);
  fwrite("   -s COLUMN: Sort by column name. By default, sorts by 'priority'.\n", 0x44uLL, 1uLL, __stderrp);
  fwrite("              As a shortcut, 'mem' is an alias for 'footprint'.\n", 0x40uLL, 1uLL, __stderrp);
  fwrite("   -r: Reverse the sort order (descending instead of ascending).\n", 0x41uLL, 1uLL, __stderrp);
  fwrite("   -w PREDICATE: Where clause to filter process list by expected column values.\n                 Provided format follows NSPredicate; see its documentation.\n", 0x9DuLL, 1uLL, __stderrp);
  fwrite("   -k: Print all columns in KB.\n", 0x20uLL, 1uLL, __stderrp);
  fwrite("   -c: Print output as CSV. Implies -k.\n", 0x28uLL, 1uLL, __stderrp);
  fwrite("   -n NUM: Number of samples in the time series (0 for unlimited, SIGINT/SIGTERM to interrupt)\n", 0x5FuLL, 1uLL, __stderrp);
  fwrite("   -d MS: Delay between the time series samples in ms\n", 0x36uLL, 1uLL, __stderrp);
  fwrite("   -h: Print this message and exit.\n", 0x24uLL, 1uLL, __stderrp);
  exit(a1);
}

uint64_t sub_1000077C4(int a1)
{
  v2 = proc_reset_footprint_interval();
  if (v2)
  {
    v3 = __stderrp;
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v3, "Unable to reset footprint for %d. error: %s\n", a1, v5);
  }

  return v2;
}

uint64_t sub_100007844(uint64_t a1, const void **a2)
{
  v2 = *sub_1000078EC(a1, &v4, a2);
  if (!v2)
  {
    sub_100007988();
  }

  return v2;
}

uint64_t sub_1000078EC(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_100007AD4(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100007AD4(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_100007A30(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100007B74(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_100007A88(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100007D10(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_100007AD4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_100007B40()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t *sub_100007B74(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_100007D10(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void (__cdecl ***sub_100007D68(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10000800C((a1 + 3), 24);
  return a1;
}

void sub_100007FE4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000800C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1000080C8(a1);
  return a1;
}

void sub_1000080A0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1000080C8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_1000081D0(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100008378(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100008310(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000082F0);
}

uint64_t sub_100008378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_100008500(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000084E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100008500(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000085B0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_1000085C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100008624(exception, a1);
}

std::logic_error *sub_100008624(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100008658(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_1000087A8(id a1)
{
  v3 = [NSString stringWithUTF8String:qword_100014158];
  v1 = [NSPredicate predicateWithFormat:v3 argumentArray:&__NSArray0__struct];
  v2 = qword_100014160;
  qword_100014160 = v1;
}

void sub_1000088CC(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  v6 = a2 - v5;
  v7 = (v6 - v6 / 2);
  if (v7 < 1)
  {
    sub_100006F1C(__b, &unk_10000D5F6);
  }

  else
  {
    sub_100008500(__b, v7, 32);
  }

  if (v6 < 2)
  {
    sub_100006F1C(__p, &unk_10000D5F6);
  }

  else
  {
    sub_100008500(__p, (v6 / 2), 32);
  }

  sub_100008E24(__b, a1, &v11);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v11, v8, v9);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1000089F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100008A3C(_BYTE *result)
{
  if (!result || (v1 = *result, !*result))
  {
    fwrite("Fatal: NULL or empty line passed to rstrip().\n", 0x2EuLL, 1uLL, __stderrp);
    exit(-1);
  }

  v2 = 0;
  v3 = -1;
  while (1)
  {
    if (v1 == 32)
    {
      goto LABEL_7;
    }

    if (!v1)
    {
      break;
    }

    v3 = v2;
LABEL_7:
    v1 = result[++v2];
  }

  result[v3 + 1] = 0;
  return result;
}

void sub_100008AB0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  sub_100008FF0(a1, a2, &v5);
}

uint64_t sub_100008B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(sub_100008BF4(a2, (a1 + 32)) + 24);
  v7 = *(sub_100008BF4(a3, (a1 + 32)) + 24);
  if (v6 | v7)
  {
    v18 = v6 < v7;
  }

  else
  {
    v8 = sub_100008BF4(a2, (a1 + 32));
    v9 = sub_100008BF4(a3, (a1 + 32));
    v10 = *(v9 + 23);
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = *(v8 + 8);
    }

    if (v11 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = *v8;
    }

    if (v10 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    if (v10 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    if (v14 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    v17 = memcmp(v13, v15, v16);
    v18 = v12 < v14;
    if (v17)
    {
      v18 = v17 < 0;
    }
  }

  return (v18 ^ byte_100014150) & 1;
}

uint64_t sub_100008BF4(uint64_t a1, const void **a2)
{
  v2 = *sub_1000078EC(a1, &v4, a2);
  if (!v2)
  {
    sub_10000A52C("map::at:  key not found");
  }

  return v2 + 56;
}

_BYTE *sub_100008C34(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_10000A6EC(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_100008C60(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void *sub_100008C74(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100008D88(result, a2);
  }

  return result;
}

void sub_100008D6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008D88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_100008DDC(a1, a2);
  }

  sub_100008DC4();
}

void sub_100008DDC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100007B40();
}

uint64_t sub_100008E24@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_100008EF0(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_100008EF0(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000085B0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_100008F7C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_100007AD4(a1, a2, v2 + 4))
      {
        if (!sub_100007AD4(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void sub_100008FF0(uint64_t *a1, uint64_t *a2, id *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (a2 - a1 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    while (1)
    {
      v8 = operator new(24 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_1000090FC(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_1000090E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000090FC(uint64_t *a1, uint64_t *a2, id *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if ((*(*a3 + 2))())
      {

        sub_100009C3C(a1, (a2 - 3));
      }
    }

    else if (a4 <= 0)
    {

      sub_100009318(a1, a2, a3);
    }

    else
    {
      v12 = a4 >> 1;
      v13 = &a1[3 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v17[0] = a5;
        v17[1] = &v18;
        v18 = 0;
        sub_100009494(a1, &a1[3 * (a4 >> 1)], a3, a4 >> 1, a5);
        v18 = a4 >> 1;
        v15 = a4 - v12;
        v16 = &a5[3 * v12];
        sub_100009494(&a1[3 * (a4 >> 1)], a2, a3, v15, v16);
        v18 = a4;
        sub_10000972C(a5, v16, v16, &a5[3 * a4], a1, a3);
        sub_10000980C(v17);
      }

      else
      {
        sub_1000090FC(a1, &a1[3 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        sub_1000090FC(v13, a2, a3, v14, a5, a6);

        sub_100009874(a1, v13, a2, a3, v12, v14, a5, a6);
      }
    }
  }
}

void sub_100009304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000980C(va);
  _Unwind_Resume(a1);
}

void sub_100009318(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*(*a3 + 16))())
        {
          v12 = v8[4];
          v11 = v8 + 4;
          v10 = v12;
          v19 = *v9;
          v20 = v12;
          v21 = v11[1];
          if (v21)
          {
            v10[2] = &v20;
            *v9 = v11;
            *v11 = 0;
            v11[1] = 0;
          }

          else
          {
            v19 = &v20;
          }

          v13 = v7;
          while (1)
          {
            sub_100009C94(a1 + v13 + 24, (a1 + v13));
            if (!v13)
            {
              break;
            }

            v13 -= 24;
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v14 = a1 + v13 + 24;
              goto LABEL_13;
            }
          }

          v14 = a1;
LABEL_13:
          v15 = v14 + 8;
          sub_100009D00(v14, *(v14 + 8));
          v16 = v21;
          *v14 = v19;
          v17 = v20;
          *(v14 + 8) = v20;
          *(v14 + 16) = v16;
          if (v16)
          {
            v18 = 0;
            v17[2] = v15;
            v19 = &v20;
            v20 = 0;
            v21 = 0;
          }

          else
          {
            *v14 = v15;
            v18 = v20;
          }

          sub_100009D00(&v19, v18);
        }

        v5 = v9 + 3;
        v7 += 24;
        v8 = v9;
      }

      while (v9 + 3 != a2);
    }
  }
}

uint64_t *sub_100009494(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v34[0] = a5;
      v34[1] = &v35;
      v35 = 0;
      v14 = a2 - 3;
      v15 = (*(*a3 + 16))();
      v16 = a5 + 1;
      if (v15)
      {
        *a5 = *(a2 - 3);
        v17 = *(a2 - 2);
        v18 = *(a2 - 1);
        v19 = a2 - 2;
        a5[1] = v17;
        a5[2] = v18;
        if (v18)
        {
          *(v17 + 16) = v16;
          *v14 = v19;
          *v19 = 0;
          v19[1] = 0;
        }

        else
        {
          *a5 = v16;
        }

        v23 = v35 + 1;
        a5[3] = *v9;
        v24 = v9 + 1;
        v25 = v9[1];
        v35 = v23;
        a5[4] = v25;
        v26 = a5 + 4;
        v27 = v9[2];
        a5[5] = v27;
        if (v27)
        {
          *(v25 + 16) = v26;
          *v9 = v24;
          *v24 = 0;
          v9[2] = 0;
        }

        else
        {
          a5[3] = v26;
        }
      }

      else
      {
        *a5 = *v9;
        v21 = v9[1];
        v22 = v9[2];
        v20 = v9 + 1;
        a5[1] = v21;
        a5[2] = v22;
        if (v22)
        {
          *(v21 + 16) = v16;
          *v9 = v20;
          *v20 = 0;
          v9[2] = 0;
        }

        else
        {
          *a5 = v16;
        }

        v28 = v35 + 1;
        a5[3] = *(a2 - 3);
        v31 = *(a2 - 2);
        v30 = a2 - 2;
        v29 = v31;
        v35 = v28;
        a5[4] = v31;
        v32 = a5 + 4;
        v33 = v30[1];
        a5[5] = v33;
        if (v33)
        {
          *(v29 + 16) = v32;
          *v14 = v30;
          *v30 = 0;
          v30[1] = 0;
        }

        else
        {
          a5[3] = v32;
        }
      }

      v34[0] = 0;
      return sub_10000980C(v34);
    }

    else if (a4 == 1)
    {
      *a5 = *result;
      v10 = result + 1;
      v11 = result[1];
      a5[1] = v11;
      v12 = a5 + 1;
      v13 = result[2];
      a5[2] = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        *result = v10;
        *v10 = 0;
        result[2] = 0;
      }

      else
      {
        *a5 = v12;
      }
    }

    else if (a4 > 8)
    {
      sub_1000090FC(result, &result[3 * (a4 >> 1)], a3, a4 >> 1, a5, a4 >> 1);
      sub_1000090FC(&v9[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &a5[3 * (a4 >> 1)], a4 - (a4 >> 1));

      return sub_100009F48(v9, &v9[3 * (a4 >> 1)], &v9[3 * (a4 >> 1)], a2, a5, a3);
    }

    else
    {

      return sub_100009D5C(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_100009718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000980C(va);
  _Unwind_Resume(a1);
}

void sub_10000972C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      sub_100009C94(a5, a3);
      a3 += 3;
      a5 += 24;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if ((*(*a6 + 16))())
      {
        sub_100009C94(a5, a3);
        a3 += 3;
      }

      else
      {
        sub_100009C94(a5, v11);
        v11 += 3;
      }

      a5 += 24;
      if (v11 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v11 != a2)
    {
      sub_100009C94(a5, v11);
      v11 += 3;
      a5 += 24;
    }
  }
}

uint64_t *sub_10000980C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        sub_100009D00(v2, *(v2 + 8));
        ++v4;
        v2 += 24;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t sub_100009874(uint64_t result, uint64_t *a2, uint64_t *a3, id *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v45 = result;
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = &v14[v45];
        result = (*(*a4 + 2))();
        if (result)
        {
          break;
        }

        v14 += 24;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v40 = v10;
      v41 = a4;
      if (-v15 >= v10)
      {
        if (v15 == -1)
        {

          return sub_100009C3C(&v14[v45], a2);
        }

        v39 = a7;
        v23 = -v15 / 2;
        v24 = *a4;
        v19 = a2;
        if (a2 != a3)
        {
          v25 = v45 + 24 * v23;
          v26 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
          v44 = v25;
          v19 = a2;
          do
          {
            v27 = v19 + 24 * (v26 >> 1);
            v28 = (v24)[2](v24, v27, &v14[v44]);
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v19 = v27 + 24;
            }
          }

          while (v26);
          v23 = -v15 / 2;
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v19 - a2) >> 3);
        v20 = &v14[24 * v23 + v45];
        v22 = v23;
        a7 = v39;
      }

      else
      {
        v18 = v10 / 2;
        v19 = &a2[3 * (v10 / 2)];
        v20 = a2;
        if (a2 - v45 != v14)
        {
          v43 = v18;
          v21 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v45 - v14) >> 3);
          v20 = &v14[v45];
          do
          {
            if ((*(*v41 + 2))())
            {
              v21 >>= 1;
            }

            else
            {
              v20 += 3 * (v21 >> 1) + 3;
              v21 += ~(v21 >> 1);
            }
          }

          while (v21);
          v18 = v43;
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v45 - v14) >> 3);
      }

      v29 = v19;
      if (v20 != a2)
      {
        v29 = v20;
        if (a2 != v19)
        {
          v30 = v22;
          v31 = v18;
          v32 = sub_10000A474(v20, a2, v19);
          v18 = v31;
          v22 = v30;
          v29 = v32;
        }
      }

      a5 = -v15 - v22;
      v33 = v40 - v18;
      if ((v22 + v18) >= (v40 - (v22 + v18) - v15))
      {
        v35 = v29;
        v36 = v22;
        v37 = a5;
        v38 = v18;
        result = sub_100009874(v29, v19, a3, v41, v37, v40 - v18, a7, a8);
        v19 = v20;
        a4 = v41;
        v33 = v38;
        a5 = v36;
        a3 = v35;
      }

      else
      {
        v34 = v20;
        v16 = v29;
        a4 = v41;
        result = sub_100009874(&v14[v45], v34, v29, v41, v22, v18, a7, a8);
      }

      v45 = v16;
      a2 = v19;
      v10 = v33;
      if (!v33)
      {
        return result;
      }
    }

    return sub_10000A154(v45, a2, a3, a4, a5, v10, a7);
  }

  return result;
}

uint64_t *sub_100009C3C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void sub_100009C94(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_100009D00(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_100009D00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100009D00(a1, *a2);
    sub_100009D00(a1, a2[1]);
    sub_100007D10((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_100009D5C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = result;
    v27[0] = a3;
    v27[1] = &v28;
    *a3 = *result;
    v8 = result + 1;
    v9 = result[1];
    a3[1] = v9;
    v10 = a3 + 1;
    v11 = result[2];
    a3[2] = v11;
    if (v11)
    {
      *(v9 + 16) = v10;
      *result = v8;
      *v8 = 0;
      result[2] = 0;
    }

    else
    {
      *a3 = v10;
    }

    v28 = 1;
    v12 = result + 3;
    if (result + 3 != a2)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v15 = v12;
        v16 = (*(*a4 + 16))();
        v17 = v14 + 3;
        v18 = v14 + 4;
        if (v16)
        {
          v19 = v14 + 1;
          v20 = v14[1];
          v14[3] = *v14;
          v14[4] = v20;
          v21 = v14[2];
          v14[5] = v21;
          if (v21)
          {
            *(v20 + 16) = v18;
            *v14 = v19;
            *v19 = 0;
            v14[2] = 0;
          }

          else
          {
            *v17 = v18;
          }

          ++v28;
          v25 = a3;
          if (v14 != a3)
          {
            v26 = v13;
            while ((*(*a4 + 16))())
            {
              sub_100009C94(a3 + v26, (a3 + v26 - 24));
              v26 -= 24;
              if (!v26)
              {
                v25 = a3;
                goto LABEL_21;
              }
            }

            v25 = a3 + v26;
          }

LABEL_21:
          sub_100009C94(v25, v15);
        }

        else
        {
          v14[3] = *v15;
          v22 = v7[4];
          v23 = v7[5];
          v24 = v7 + 4;
          v14[4] = v22;
          v14[5] = v23;
          if (v23)
          {
            *(v22 + 16) = v18;
            *v15 = v24;
            *v24 = 0;
            v24[1] = 0;
          }

          else
          {
            *v17 = v18;
          }

          ++v28;
        }

        v12 = v15 + 3;
        v13 += 24;
        v14 += 3;
        v7 = v15;
      }

      while (v15 + 3 != a2);
    }

    v27[0] = 0;
    return sub_10000980C(v27);
  }

  return result;
}

void sub_100009F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000980C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100009F48(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v8 = a3;
  v34[0] = a5;
  v34[1] = &v35;
  v35 = 0;
  if (a1 == a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v17 = a1;
  if (a3 != a4)
  {
    while (1)
    {
      v19 = (*(*a6 + 16))();
      v20 = v6 + 1;
      if (v19)
      {
        *v6 = *v8;
        v22 = v8[1];
        v23 = v8[2];
        v21 = v8 + 1;
        v6[1] = v22;
        v6[2] = v23;
        if (v23)
        {
          *(v22 + 16) = v20;
          *v8 = v21;
          *v21 = 0;
          v8[2] = 0;
        }

        else
        {
          *v6 = v20;
        }

        v9 = ++v35;
        v8 += 3;
      }

      else
      {
        *v6 = *v17;
        v25 = v17[1];
        v26 = v17[2];
        v24 = v17 + 1;
        v6[1] = v25;
        v6[2] = v26;
        if (v26)
        {
          *(v25 + 16) = v20;
          *v17 = v24;
          *v24 = 0;
          v17[2] = 0;
        }

        else
        {
          *v6 = v20;
        }

        v9 = ++v35;
        v17 += 3;
      }

      v6 += 3;
      if (v17 == a2)
      {
        break;
      }

      if (v8 == a4)
      {
        goto LABEL_23;
      }
    }

LABEL_3:
    if (v8 != a4)
    {
      v10 = 0;
      do
      {
        v11 = &v6[v10];
        *v11 = v8[v10];
        v12 = &v8[v10 + 1];
        v13 = *v12;
        v6[v10 + 1] = *v12;
        v14 = &v6[v10 + 1];
        v15 = v8[v10 + 2];
        v11[2] = v15;
        if (v15)
        {
          *(v13 + 16) = v14;
          v8[v10] = v12;
          *v12 = 0;
          v8[v10 + 2] = 0;
        }

        else
        {
          *v11 = v14;
        }

        ++v9;
        v10 += 3;
      }

      while (&v8[v10] != a4);
LABEL_29:
      v35 = v9;
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v9 = 0;
LABEL_23:
  if (v17 != a2)
  {
    v27 = 0;
    do
    {
      v28 = &v6[v27];
      *v28 = v17[v27];
      v29 = &v17[v27 + 1];
      v30 = *v29;
      v6[v27 + 1] = *v29;
      v31 = &v6[v27 + 1];
      v32 = v17[v27 + 2];
      v28[2] = v32;
      if (v32)
      {
        *(v30 + 16) = v31;
        v17[v27] = v29;
        *v29 = 0;
        v17[v27 + 2] = 0;
      }

      else
      {
        *v28 = v31;
      }

      ++v9;
      v27 += 3;
    }

    while (&v17[v27] != a2);
    goto LABEL_29;
  }

LABEL_30:
  v34[0] = 0;
  return sub_10000980C(v34);
}

void sub_10000A140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000980C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000A154(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v28 = 0;
  v27[0] = a7;
  v27[1] = &v28;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = &a7[v18 / 8];
        *v20 = *(a1 + v18);
        v21 = (a1 + v18 + 8);
        v22 = *v21;
        a7[v18 / 8 + 1] = *v21;
        v23 = &a7[v18 / 8 + 1];
        v24 = *(a1 + v18 + 16);
        v20[2] = v24;
        if (v24)
        {
          *(v22 + 16) = v23;
          *(a1 + v18) = v21;
          *v21 = 0;
          *(a1 + v18 + 16) = 0;
        }

        else
        {
          *v20 = v23;
        }

        ++v19;
        v18 += 24;
      }

      while ((a1 + v18) != a2);
      v28 = v19;
      v17 = &a7[v18 / 8];
    }

    sub_10000A2E0(a7, v17, a2, a3, a1, a4);
  }

  else
  {
    v9 = a7;
    if (a2 != a3)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &a7[v10];
        *v12 = a2[v10];
        v13 = &a2[v10 + 1];
        v14 = *v13;
        a7[v10 + 1] = *v13;
        v15 = &a7[v10 + 1];
        v16 = a2[v10 + 2];
        v12[2] = v16;
        if (v16)
        {
          *(v14 + 16) = v15;
          a2[v10] = v13;
          *v13 = 0;
          a2[v10 + 2] = 0;
        }

        else
        {
          *v12 = v15;
        }

        ++v11;
        v10 += 3;
      }

      while (&a2[v10] != a3);
      v28 = v11;
      v9 = &a7[v10];
    }

    v26 = a4;
    sub_10000A3A4(v9, v9, a7, a7, a2, a2, a1, a1, a3, a3, &v26);
  }

  return sub_10000980C(v27);
}

void sub_10000A2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000980C(va);
  _Unwind_Resume(a1);
}

void sub_10000A2E0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a2)
  {
    v11 = a1;
    while (a3 != a4)
    {
      if ((*(*a6 + 16))())
      {
        sub_100009C94(a5, a3);
        a3 += 3;
      }

      else
      {
        sub_100009C94(a5, v11);
        v11 += 3;
      }

      a5 += 24;
      if (v11 == a2)
      {
        return;
      }
    }

    do
    {
      sub_100009C94(a5, v11);
      v11 += 3;
      a5 += 24;
    }

    while (v11 != a2);
  }
}

void sub_10000A3A4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    v15 = a10 - 24;
    while (a6 != a8)
    {
      v16 = (*(**a11 + 16))();
      if (v16)
      {
        v17 = (a6 - 24);
      }

      else
      {
        v17 = v14 - 3;
      }

      if (v16)
      {
        a6 -= 24;
      }

      else
      {
        v14 -= 3;
      }

      sub_100009C94(v15, v17);
      v15 -= 24;
      if (v14 == a4)
      {
        return;
      }
    }

    for (; v14 != a4; v15 -= 24)
    {
      v14 -= 3;
      sub_100009C94(v15, v14);
    }
  }
}

uint64_t *sub_10000A474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  sub_100009C3C(a1, a2);
  v6 = a1 + 3;
  for (i = (v4 + 3); i != a3; i += 24)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    sub_100009C3C(v6, i);
    v6 += 3;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        sub_100009C3C(v8, v9);
        v8 += 3;
        v9 += 24;
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

void sub_10000A52C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000A588(exception, a1);
}

std::logic_error *sub_10000A588(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000A5BC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000A610(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000A610(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_10000A660(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        sub_100009D00((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_10000A6EC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000085B0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_10000A790(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100008DC4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_10000A8B0(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  sub_10000A8F8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10000AA34(&v16);
  return v15;
}

void sub_10000A89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000AA34(va);
  _Unwind_Resume(a1);
}

void sub_10000A8B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100007B40();
}

uint64_t sub_10000A8F8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_10000A9B4(v9);
}

uint64_t sub_10000A9B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10000A9EC(a1);
  }

  return a1;
}

void sub_10000A9EC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_10000AA34(uint64_t a1)
{
  sub_10000AA6C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000AA6C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_10000AAC8(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10000AB20(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_10000AB20(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10000ABA8(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10000ABA8(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_10000AC3C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_10000ADE0();
  }

  return v3;
}

uint64_t sub_10000AC3C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100007AD4(a1, a5, (a2 + 32)))
  {
    if (!sub_100007AD4(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100007AD4(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100007AD4(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000078EC(a1, a3, a5);
}

char *sub_10000AE58(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000A6EC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_10000A6EC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = *(a2 + 6);
  return __dst;
}

void sub_10000AED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000AEF4(uint64_t *a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100008DC4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10000B024(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sub_10000AAC8((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  sub_10000B07C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10000B1DC(&v13);
  return v12;
}

void sub_10000B010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000B1DC(va);
  _Unwind_Resume(a1);
}

void sub_10000B024(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100007B40();
}

uint64_t sub_10000B07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      sub_100009D00(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return sub_10000B158(v13);
}

uint64_t sub_10000B158(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10000B190(a1);
  }

  return a1;
}

void sub_10000B190(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_100009D00(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_10000B1DC(void **a1)
{
  sub_10000B210(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000B210(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_100009D00(i - 24, *(i - 16));
  }
}

void sub_10000B258()
{
  v0 = objc_autoreleasePoolPush();
  byte_1000140D0 = os_variant_has_internal_content();
  qword_1000140E0 = 0;
  unk_1000140E8 = 0;
  qword_1000140D8 = 0;
  __cxa_atexit(sub_100000A98, &qword_1000140D8, &_mh_execute_header);
  unk_100014100 = 0;
  xmmword_1000140F0 = 0uLL;
  __cxa_atexit(sub_100000AD0, &xmmword_1000140F0, &_mh_execute_header);
  byte_10001413E = byte_1000140D0;

  objc_autoreleasePoolPop(v0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}