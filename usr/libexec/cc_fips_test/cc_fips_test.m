__int128 *sub_100000D58(int a1)
{
  strcpy(&qword_100008108, "Apple ARM");
  dword_100008100 = 3230803;
  dword_100008118 = 4271950;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6 && a1 != 7)
      {
LABEL_20:
        result = &xmmword_100008000;
        strcpy(&xmmword_100008000, "INVALID Module ID");
        return result;
      }
    }

    else if (a1 == 4)
    {
      result = &xmmword_100008000;
      strcpy(&xmmword_100008000, "Software");
      return result;
    }

    snprintf(&xmmword_100008000, 0x100uLL, "%s");
    return &xmmword_100008000;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        result = &xmmword_100008000;
        strcpy(&xmmword_100008000, "Apple corecrypto Module");
        return result;
      }

      goto LABEL_20;
    }

    snprintf(&xmmword_100008000, 0x100uLL, "%s v%s [%s, %s, %s, %s, %s]", "Apple corecrypto Module", "26.0");
    return &xmmword_100008000;
  }

  if (a1 == 2)
  {
    result = &xmmword_100008000;
    BYTE4(xmmword_100008000) = 0;
    v2 = 808334898;
  }

  else
  {
    result = &xmmword_100008000;
    BYTE4(xmmword_100008000) = 0;
    v2 = 1919251285;
  }

  LODWORD(xmmword_100008000) = v2;
  return result;
}

uint64_t start(int a1, const char **a2)
{
  v19 = 0;
  __filename = 0;
  cc_clear();
  if (a1 >= 2)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = a2[v4];
      if (*v6 != 45)
      {
        if (!strcmp(a2[v4], "--verbose") || !strcmp(v6, "--force"))
        {
          goto LABEL_51;
        }

        if (!strcmp(v6, "--boot-arg"))
        {
LABEL_32:
          sub_100001448(&v19);
          goto LABEL_51;
        }

        if (!strcmp(v6, "--disable"))
        {
          goto LABEL_38;
        }

        if (!strcmp(v6, "--fail"))
        {
LABEL_44:
          v8 = v19 | 0x10;
          goto LABEL_50;
        }

        if (!strcmp(v6, "--nointegrity"))
        {
          goto LABEL_49;
        }

        goto LABEL_14;
      }

      v7 = *(v6 + 1);
      if (v7 == 118)
      {
        break;
      }

      if (!strcmp(a2[v4], "--verbose"))
      {
        goto LABEL_51;
      }

      if (v7 == 102)
      {
        if (!v6[2])
        {
          goto LABEL_51;
        }

        goto LABEL_20;
      }

      if (!strcmp(v6, "--force"))
      {
        goto LABEL_51;
      }

      if (v7 == 98)
      {
        if (!v6[2] || !strcmp(v6, "--boot-arg"))
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

LABEL_27:
      if (!strcmp(v6, "--boot-arg"))
      {
        goto LABEL_32;
      }

      if (v7 != 100)
      {
        if (!strcmp(v6, "--disable"))
        {
LABEL_38:
          v8 = v19 | 4;
LABEL_50:
          LODWORD(v19) = v8;
          goto LABEL_51;
        }

        if (v7 == 70)
        {
          if (!v6[2] || !strcmp(v6, "--fail"))
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if (!v6[2])
      {
        goto LABEL_38;
      }

LABEL_30:
      if (!strcmp(v6, "--disable"))
      {
        goto LABEL_38;
      }

LABEL_39:
      if (!strcmp(v6, "--fail"))
      {
        goto LABEL_44;
      }

      if (v7 == 78)
      {
        if (!v6[2])
        {
          goto LABEL_49;
        }

LABEL_42:
        if (!strcmp(v6, "--nointegrity"))
        {
          goto LABEL_49;
        }

LABEL_53:
        if (!strcmp(v6, "--mode"))
        {
LABEL_57:
          ++v4;
          LODWORD(v19) = strtoll(a2[v5 + 1], 0, 10);
          goto LABEL_51;
        }

        if (v7 == 116 && !v6[2])
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (!strcmp(v6, "--nointegrity"))
      {
LABEL_49:
        v8 = v19 | 0x40;
        goto LABEL_50;
      }

      if (v7 != 109)
      {
        goto LABEL_53;
      }

      if (!v6[2])
      {
        goto LABEL_57;
      }

LABEL_14:
      if (!strcmp(v6, "--mode"))
      {
        goto LABEL_57;
      }

LABEL_15:
      if (strcmp(v6, "--trace"))
      {
        sub_1000014AC(a2);
      }

LABEL_16:
      LODWORD(v19) = v19 | 0x80;
      ++v4;
      __filename = a2[v5 + 1];
LABEL_51:
      if (++v4 >= a1)
      {
        goto LABEL_59;
      }
    }

    if (!v6[2] || !strcmp(a2[v4], "--verbose"))
    {
      goto LABEL_51;
    }

LABEL_20:
    if (!strcmp(v6, "--force"))
    {
      goto LABEL_51;
    }

    goto LABEL_27;
  }

  sub_100001448(&v19);
LABEL_59:
  v9 = v19;
  v10 = fipspost_trace_vtable;
  fwrite("About to call the FIPS_POST function in the corecrypto.dylib\n", 0x3DuLL, 1uLL, __stderrp);
  if ((v9 & 0x80) != 0)
  {
    if (v10)
    {
      v13 = __stderrp;
      if (__filename)
      {
        fwrite("Tracing: enabled\n", 0x11uLL, 1uLL, __stderrp);
        v12 = fopen(__filename, "w");
        (*v10)(v9, sub_1000014F4, v12);
        goto LABEL_66;
      }

      v18 = "Tracing: disabled, no trace file.\n";
    }

    else
    {
      v13 = __stderrp;
      v18 = "Tracing: disabled, not available.\n";
    }

    fwrite(v18, 0x22uLL, 1uLL, v13);
    fwrite("Tracing required by test parameters; exiting.\n", 0x2EuLL, 1uLL, __stderrp);
    exit(-1);
  }

  v11 = ", but available.";
  if (!v10)
  {
    v11 = &unk_1000019A5;
  }

  fprintf(__stderrp, "Tracing: disabled%s\n", v11);
  v12 = 0;
LABEL_66:
  memset(&v21, 0, sizeof(v21));
  if (!dladdr(&_fipspost_post, &v21))
  {
    fwrite("dladdr failed\n", 0xEuLL, 1uLL, __stderrp);
  }

  v14 = fipspost_post();
  v15 = "false";
  if (!v14)
  {
    v15 = "true";
  }

  fprintf(__stderrp, "Returned from calling the FIPS_POST function in the corecrypto.dylib: result = %s\n", v15);
  if (v14)
  {
    fwrite("FIPS_POST failed!\n", 0x12uLL, 1uLL, __stderrp);
  }

  if (v12)
  {
    v16 = (*(v10 + 8))(v14);
    fprintf(__stderrp, "Tracing returned: %d\n", v16);
    fclose(v12);
  }

  return v14;
}

uint64_t sub_100001448(_DWORD *a1)
{
  result = os_parse_boot_arg_int();
  if (result)
  {
    *a1 = 0;
    return fprintf(__stderrp, "A fips_mode boot arg was set: 0x%x\n", 0);
  }

  return result;
}

void sub_1000014AC(const char **a1)
{
  v1 = __stderrp;
  v2 = *a1;
  v3 = sub_100000D58(0);
  fprintf(v1, "Usage: %s [-dFN] [-m mode] [-t trace.out]\n\nExecute the FIPS POST tests under a variety of conditions.\n\t-b,--boot-arg   \tRead the fips_mode boot arg.\n\t-d,--disable    \tDisable testing and return success.\n\t-F,--fail       \tForce tests to fail, but continue testing.\n\t-N,--nointegrity\tBypass the integrity checks.\n\t-m,--mode mode  \tSpecify a discrete numerical fips_mode to test.\n\t-t,--trace file \tLog tracing output, if available, to the filename.\n\t                \tReturn an error if tracing is disabled.\n%s\n", v2, v3);
  exit(-1);
}

uint64_t sub_1000014F4(FILE *__stream, void *__ptr, size_t a3)
{
  if (fwrite(__ptr, 1uLL, a3, __stream) == a3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}