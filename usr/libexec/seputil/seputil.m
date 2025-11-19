uint64_t sub_100000948(uint64_t a1, uint64_t a2, int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v3;
  v11[3] = v3;
  v11[0] = v3;
  v11[1] = v3;
  if (!a1)
  {
    sub_100013298();
  }

  v5 = sub_100000A28(v11, a1, a1 + a2);
  if (v5)
  {
    printf("img4: failed to parse ART: %d\n", v5);
    return 0;
  }

  else
  {
    if (SEPARTCounterFind())
    {
      v7 = 1;
    }

    else
    {
      v8 = 9;
      do
      {
        v9 = v8;
        if (v8 == 28)
        {
          break;
        }

        v10 = SEPARTCounterFind();
        v8 = v9 + 1;
      }

      while (!v10);
      v7 = (v9 - 1) < 0x1B;
    }

    return v7 ^ a3 ^ 1u;
  }
}

uint64_t sub_100000A28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!SEPARTExtract(a2, a3, &v8, &v7))
  {
    v5 = "img4: extract returned NULL";
    goto LABEL_5;
  }

  v4 = SEPARTPayloadDecode(a1, a1 + 1, a1 + 2, a1 + 3, a1 + 4, a1 + 5, a1 + 6, a1 + 7, a1 + 8, v8, v7);
  if (v4 != v7)
  {
    v5 = "img4: payload decode failed";
LABEL_5:
    puts(v5);
    return 1;
  }

  return 0;
}

uint64_t sub_100000AE0(unint64_t a1, unint64_t a2)
{
  printf("raw ART: ");
  if (a1 < a2)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      printf("%c%c", a0123456789abcd[v5 >> 4], a0123456789abcd[v5 & 0xF]);
    }

    while (v4 != a2);
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  v12 = v6;
  v9 = v6;
  v10 = v6;
  putchar(10);
  if (sub_100000A28(&v9, a1, a2))
  {
    puts("img4: failed to parse ART");
    return 1;
  }

  else
  {
    puts("Successfully parsed ART:");
    printf("counter: %lld\n", v9);
    sub_100000C44("manifest hash", *(&v9 + 1), v10);
    sub_100000C44("sleep hash", *(&v10 + 1), v11);
    sub_100000C44("restore nonce", *(&v11 + 1), v12);
    for (i = 255; i != -1; --i)
    {
      if (SEPARTCounterFind())
      {
        printf("subcounters[%lu]: %llu\n", i, 0xAAAAAAAAAAAAAAAALL);
      }
    }

    return 0;
  }
}

uint64_t sub_100000C44(const char *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return printf("%s absent\n", a1);
  }

  v4 = a2;
  printf("%s (%ld bytes): ", a1, a2);
  do
  {
    v5 = *a3++;
    printf("%c%c", a0123456789abcd[v5 >> 4], a0123456789abcd[v5 & 0xF]);
    --v4;
  }

  while (v4);

  return putchar(10);
}

uint64_t sub_100000CFC(uint64_t a1, uint64_t a2)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = -1431655766;
  v15 = -1431655766;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20[26] = v2;
  v20[27] = v2;
  v20[24] = v2;
  v20[25] = v2;
  v20[22] = v2;
  v20[23] = v2;
  v20[20] = v2;
  v20[21] = v2;
  v20[18] = v2;
  v20[19] = v2;
  v20[16] = v2;
  v20[17] = v2;
  v20[14] = v2;
  v20[15] = v2;
  v20[12] = v2;
  v20[13] = v2;
  v20[10] = v2;
  v20[11] = v2;
  v20[8] = v2;
  v20[9] = v2;
  v20[6] = v2;
  v20[7] = v2;
  v20[4] = v2;
  v20[5] = v2;
  v20[2] = v2;
  v20[3] = v2;
  v20[0] = v2;
  v20[1] = v2;
  v8[0] = sub_100001228;
  v8[1] = sub_100001228;
  v8[2] = sub_100001228;
  v8[3] = sub_100001228;
  memset(v7, 0, sizeof(v7));
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = v7;
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v9 = 0;
  v10 = 0xAAAAAAAA00000000;
  v11 = 0;
  v12 = 0xAAAAAAAA00000000;
  if (!sub_100000EE4(v20, a1, a2, &v13, &v9, 0, 0, v8))
  {
    if (v18)
    {
      sub_100000C44("sepi digest", v14, v13);
      sub_100000C44("sepi nonce", v17, v16);
      if (!HIDWORD(v17))
      {
        goto LABEL_8;
      }

      v4 = "sepi allows mix 'n match";
    }

    else
    {
      v4 = "sepi absent";
    }

    puts(v4);
LABEL_8:
    if (v12)
    {
      sub_100000C44("rsep digest", v10, v9);
      sub_100000C44("rsep nonce", v11, *(&v10 + 1));
      if (!HIDWORD(v11))
      {
        return 0;
      }

      v5 = "rsep allows mix 'n match";
    }

    else
    {
      v5 = "rsep absent";
    }

    puts(v5);
    return 0;
  }

  v3 = 1;
  fwrite("img4: img4 parse failed\n", 0x18uLL, 1uLL, __stderrp);
  return v3;
}

uint64_t sub_100000EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8)
{
  Img4DecodeInit(a2, a3, a1);
  if (v14)
  {
    printf("img4: Img4DecodeInit failed: %d\n", v14);
    return 1;
  }

  else
  {
    v16[1] = 0;
    v16[2] = 0;
    v16[0] = sub_100001230;
    *(a4 + 32) = Img4DecodePerformTrustEvaluatationWithCallbacks(0x73657069u, a1, v16, a8, a4) == 0;
    *(a5 + 32) = Img4DecodePerformTrustEvaluatationWithCallbacks(0x72736570u, a1, v16, a8, a5) == 0;
    if (a8 && a1 && a6)
    {
      if (a7)
      {
        *a6 = a1 + 328;
        *a7 = **(a8 + 32);
      }
    }

    return 0;
  }
}

uint64_t sub_100000FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v35 = 0;
  v34 = 0;
  if (!qword_100024C20)
  {
    qword_100024C20 = ccsha1_di();
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = -1431655766;
  v29 = -1431655766;
  v22 = -1431655766;
  v26 = -1431655766;
  v36[0] = v10;
  v36[1] = v10;
  v36[2] = v10;
  v36[3] = v10;
  v36[4] = v10;
  v36[5] = v10;
  v36[6] = v10;
  v36[7] = v10;
  v36[8] = v10;
  v36[9] = v10;
  v36[10] = v10;
  v36[11] = v10;
  v36[12] = v10;
  v36[13] = v10;
  v36[14] = v10;
  v36[15] = v10;
  v36[16] = v10;
  v36[17] = v10;
  v36[18] = v10;
  v36[19] = v10;
  v36[20] = v10;
  v36[21] = v10;
  v36[22] = v10;
  v36[23] = v10;
  v36[24] = v10;
  v36[25] = v10;
  v36[26] = v10;
  v36[27] = v10;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v20 = 0;
  v21 = 0;
  __s2 = 0;
  v24 = 0;
  v25 = 0;
  *v15 = 0u;
  *v16 = 0u;
  *__n = 0u;
  *__s1 = 0u;
  v19 = 0;
  if (sub_100000EE4(v36, a1, a2, &v27, &v20, &v35, &v34, kImg4DecodeSecureBootRsa1kSha1))
  {
    LOBYTE(v11) = 0;
    v12 = "preflight: FAIL: could not parse img4";
LABEL_5:
    puts(v12);
    return v11 & 1;
  }

  if (a3 && sub_100000A28(v15, a3, a4))
  {
    LOBYTE(v11) = 0;
    v12 = "preflight: FAIL: could not parse ART";
    goto LABEL_5;
  }

  v11 = (HIDWORD(v31) | HIDWORD(v24)) != 0;
  if (HIDWORD(v31) | HIDWORD(v24))
  {
    puts("preflight: mix 'n match specified");
  }

  if (__n[1] && __n[1] == v24 && !memcmp(__s1[0], __s2, __n[1]))
  {
    if ((a5 & 2) != 0)
    {
      v14 = "preflight: restore nonce matches";
    }

    else
    {
      v14 = "preflight: nonce matches, but not checking restore";
    }

    v11 |= (a5 & 2) >> 1;
    puts(v14);
  }

  if (v15[1] && v15[1] == v34 && !memcmp(v16[0], v35, v15[1]))
  {
    if (a5)
    {
      v12 = "preflight: manifest hash matches sepi";
    }

    else
    {
      v12 = "preflight: manifest hash matches, but not checking load";
    }

    LOBYTE(v11) = a5 | v11;
    goto LABEL_5;
  }

  return v11 & 1;
}

uint64_t sub_100001230(int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v6 = -1431655766;
  if (a1 == 1095585357)
  {
    v8 = -86;
    if (Img4DecodeGetPropertyBoolean(a2, 1095585357, &v8))
    {
      puts("img4: couldn't get BOOL property - fatal");
      exit(1);
    }

    if (v8)
    {
      *(a4 + 28) = 1;
    }
  }

  else if (a1 == 1936617326)
  {
    if (!a3 && !Img4DecodeGetPropertyData(a2, 1936617326, &v7, &v6))
    {
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
    }
  }

  else if (a1 == 1145525076 && a3 == 1 && !Img4DecodeGetPropertyData(a2, 1145525076, &v7, &v6))
  {
    *a4 = v7;
    *(a4 + 8) = v6;
  }

  return 0;
}

uint64_t sub_10000134C()
{
  v0 = qword_100024C60;
  if (!qword_100024C60)
  {
    v0 = "AppleSEPUtil";
    qword_100024C60 = "AppleSEPUtil";
  }

  fprintf(__stderrp, "Usage: %s ...\n", v0);
  fputc(10, __stderrp);
  fwrite("OPTIONS:\n\n", 0xAuLL, 1uLL, __stderrp);
  fwrite("\tGeneric commands\n", 0x12uLL, 1uLL, __stderrp);
  fwrite("\t\t--ping                   Send a PING operation to the SEP OS\n", 0x3FuLL, 1uLL, __stderrp);
  fwrite("\t\t--rawlog                 Dump the mailbox message RAW log without decoding\n", 0x4DuLL, 1uLL, __stderrp);
  fwrite("\t\t--securitymode           Request SEP effective production status and security mode\n", 0x55uLL, 1uLL, __stderrp);
  fwrite("\t\t--nap                    Nap the SEP NOW!\n", 0x2CuLL, 1uLL, __stderrp);
  fwrite("\t\t--sleep                  Sleep the SEP NOW!\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\t\t--pingflood              Ping SEP endlessly\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\t\t--rng-dump <count>       Dump specified count bytes worth of data from TRNG\n", 0x4EuLL, 1uLL, __stderrp);
  fwrite("\t\t--launch-macos-app <ver> Launch MacOS serving app variant for the specified 16-bit hex version\n", 0x61uLL, 1uLL, __stderrp);
  fwrite("\t\t--outfile <path>         Output file path. - for stdout\n", 0x3CuLL, 1uLL, __stderrp);
  fwrite("\t\t--infile <path>          Input file path if passing in some data\n", 0x43uLL, 1uLL, __stderrp);
  fwrite("\t\t--l4panic                Force an L4 panic\n", 0x2DuLL, 1uLL, __stderrp);
  fwrite("\t\t--sepospanic             Force a SEP/OS panic\n", 0x30uLL, 1uLL, __stderrp);
  fwrite("\t\t--requestpanic           Force a SEP/OS client requested panic\n", 0x41uLL, 1uLL, __stderrp);
  fwrite("\t\t--read-file              Test seputil file reading functionality, Requires infile and outfile\n", 0x60uLL, 1uLL, __stderrp);
  fwrite("\t\t--report-code-coverage   Output a structured data file with coverage data\n", 0x4CuLL, 1uLL, __stderrp);
  fwrite("\t\t--help                   Display this usage\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\t\t--process-info           Display information for SEP processes\n", 0x41uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tFirmware commands\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t\t--load <file>            Load <file> as the SEP runtime firmware\n", 0x43uLL, 1uLL, __stderrp);
  fwrite("\t\t--restore <file>         Load <file> as the SEP runtime firmware in restore mode\n", 0x53uLL, 1uLL, __stderrp);
  fwrite("\t\t--restore+art <file>     Load <file> as the SEP runtime firmware in restore mode with ART\n", 0x5CuLL, 1uLL, __stderrp);
  fwrite("\t\t--slot <slot id>         Set nonce slot to be used to boot the SEP FW that is being loaded \n", 0x5EuLL, 1uLL, __stderrp);
  fwrite("\t\t--wait <file>            Pause for kernel driver to load before failing\n", 0x4AuLL, 1uLL, __stderrp);
  fwrite("\t\t--preflight              Pre-flight load/restore firmware against ART to pre-check for boot failures\n", 0x67uLL, 1uLL, __stderrp);
  fwrite("\t\t--boot-check <file>      Check whether the installed SEPFW might be bootable WRT the current ART\n", 0x63uLL, 1uLL, __stderrp);
  fwrite("\t\t--dump-fw <file>         Dump measurements of installed SEP FW file \n", 0x47uLL, 1uLL, __stderrp);
  fwrite("\t\t--commit-hash       Commit the SEP hash of the currently loaded firmware. Requires slot to be passed with --slot where nonce slots supported.\n", 0x90uLL, 1uLL, __stderrp);
  fwrite("\t\t--commit-hash-ap    Commit the AP hash of the currently loaded firmware. Requires slot to be passed with --slot where nonce slots supported.\n", 0x8FuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "\tExample: %s --wait --load /path/to/foo\n", qword_100024C60);
  fputc(10, __stderrp);
  fwrite("\tROM commands\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t\t--rom status             Get the ROM status\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\t\t--rom tz0                Send a ROM TZ0 command\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("\t\t--rom nop                Send a ROM NOP command\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("\t\t--new-rom-nonce          Request new ROM nonce. Requires --outfile\n", 0x45uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tART commands\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t\t--art get                Dump current ART from Memory\n", 0x38uLL, 1uLL, __stderrp);
  fwrite("\t\t--art clear              Clear the persisted ART\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("\t\t--art ctrtest            Counter self-test\n", 0x2DuLL, 1uLL, __stderrp);
  fwrite("\t\t--minblocks <value>      Optional argument to compare --art ctrtest good pages against\n", 0x5BuLL, 1uLL, __stderrp);
  fwrite("\t\t--art-set <value>        Persist the supplied ART value to storage\n", 0x45uLL, 1uLL, __stderrp);
  fwrite("\t\t--get-nonce              Get current SEP/OS nonce\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("\t\t--new-nonce              Request new SEP/OS nonce\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("\t\t--kill-nonce             Request invalidate SEP/OS nonce\n", 0x3BuLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tOOL Object commands\n", 0x15uLL, 1uLL, __stderrp);
  fwrite("\t\t--size <size>            Size of object in case requesting object create\n", 0x4BuLL, 1uLL, __stderrp);
  fwrite("\t\t--create <obj>           Create an object in SEP. Requires --size\n", 0x44uLL, 1uLL, __stderrp);
  fwrite("\t\t--service <srvc>         Service handle with which an object is to be shared\n", 0x4FuLL, 1uLL, __stderrp);
  fwrite("\t\t--share <obj>            Share an object. Requires --service\n", 0x3FuLL, 1uLL, __stderrp);
  fwrite("\t\t--get <obj>              Read obj and write to stdout\n", 0x38uLL, 1uLL, __stderrp);
  fwrite("\t\t--put <obj>              Read stdin and write to obj\n", 0x37uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tPairing commands\n", 0x12uLL, 1uLL, __stderrp);
  fwrite("\t\t--pair <obj>             Factory pairing commands. Requires: --outfile\n", 0x49uLL, 1uLL, __stderrp);
  fwrite("\t\t                         Valid arguments for <obj>- STCK, SIGN\n", 0x41uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tUnit test commands\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-run <category>[/<test>]\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("\t\t                         Run a test or set of tests in a category\n", 0x44uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-all               Run all available tests\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-list              List all available tests\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-input <file>      Set testing input data\n", 0x32uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-output <file>     Set testing output data\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-offset <value>    Set data transfer offset within input data (default=0)\n", 0x52uLL, 1uLL, __stderrp);
  fwrite("\t\t--test-timeout <value>   Set the default delay in milliseconds to wait for test completion (default=120000)\n", 0x6EuLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\t\tExamples:\n", 0xCuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "\t\t%s --test-run test/pass (run the test 'pass' in the category 'test')\n", qword_100024C60);
  fprintf(__stderrp, "\t\t%s --test-run test (run all tests in the category 'test')\n", qword_100024C60);
  fputc(10, __stderrp);
  fwrite("\tSystem testing commands\n", 0x19uLL, 1uLL, __stderrp);
  fwrite("\t\t--tunable-check <value>  Enable or disable tunable check mode.\n", 0x41uLL, 1uLL, __stderrp);
  fwrite("\t\t                         'value' should be 'enable' or 'disable'.\n", 0x44uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tDebugging and Diagnostic commands\n", 0x23uLL, 1uLL, __stderrp);
  fwrite("\t\t--list-var <app>                  List all debug variables in app\n", 0x44uLL, 1uLL, __stderrp);
  fwrite("\t\t--get-var <app>:<name>            Get value of debug variable\n", 0x40uLL, 1uLL, __stderrp);
  fwrite("\t\t--set-var <app>:<name>:<value>    Set value of debug variable. If the value is out of range of the debug variable (signed or unsigned), throws an error\n", 0x9AuLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tCoverage commands\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t\t--dump-cov <app>      Dump and reset coverage counters to object\n", 0x43uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tSMC test command\n", 0x12uLL, 1uLL, __stderrp);
  fwrite("\t\t--send-smc-events <count> Send <count> test SMC events to SEP\n", 0x40uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tDynamic Scheme3 test command\n", 0x1EuLL, 1uLL, __stderrp);
  fwrite("\t\t--alloc-dynamic-object \t Request allocation of test Dynamic Scheme3 object\n", 0x4DuLL, 1uLL, __stderrp);
  fwrite("\t\t--dealloc-dynamic-object \t Request deallocation of test Dynamic Scheme3 object\n", 0x51uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tProvisional AP slot commands (only supported where nonce slots supported)\n", 0x4BuLL, 1uLL, __stderrp);
  fwrite("\t\t--set-provisional <value> \tSet the provisional state of AP slot to 1 (provisional) or 0 (not provisional). Requires slot to be passed with --slot.\n", 0x95uLL, 1uLL, __stderrp);
  fwrite("\t\t--get-provisional \tRequires slot to be passed with --slot\n", 0x3CuLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  fwrite("\tBare words on the commandline are sent to the SEP as a console command\n", 0x48uLL, 1uLL, __stderrp);
  return fprintf(__stderrp, "\tExample: %s help\n\n", qword_100024C60);
}

uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v208, 0x400uLL);
  bzero(__dst, 0x400uLL);
  memset(v206, 0, sizeof(v206));
  v204 = 0u;
  v205 = 0u;
  *v202 = 0u;
  v203 = 0u;
  *v200 = 0u;
  v201 = 0u;
  *v190 = 0;
  v197 = 0;
  *inputStruct = 0;
  v199 = 0;
  v198 = 0;
  memset(uu, 0, sizeof(uu));
  v4 = &__stdoutp;
  setlinebuf(__stdoutp);
  setlinebuf(__stderrp);
  qword_100024C60 = basename(*v2);
  if (!qword_100024C60)
  {
    sub_100013448(v214);
    return LODWORD(v214[0]);
  }

  if (geteuid())
  {
    sub_1000134A8();
    return 13;
  }

  v5 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep");
  if (!v5)
  {
    sub_1000134E8();
    return 0;
  }

  IOObjectRelease(v5);
  v6 = qword_100024C60;
  if (!strncmp(qword_100024C60, "init_data_protection", 0x20uLL))
  {
    bzero(v214, 0x400uLL);
    bzero(v213, 0x400uLL);
    v193 = 0;
    byte_100024C6D = 1;
    v41 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep");
    if (!v41)
    {
      fprintf(__stderrp, "%s: can't find arm-io/sep\n", qword_100024C60);
      return 2;
    }

    v42 = v41;
    v194 = -1431655766;
    v43 = IORegistryEntrySearchCFProperty(v41, "IODeviceTree", @"sepfw-loaded", kCFAllocatorDefault, 0);
    v44 = v43;
    if (v43)
    {
      v45 = CFGetTypeID(v43);
      if (v45 == CFDataGetTypeID())
      {
        if (CFDataGetLength(v44) == 4)
        {
          BytePtr = CFDataGetBytePtr(v44);
          v47 = *BytePtr != 0;
          v48 = "was not ";
          if (*BytePtr)
          {
            v48 = "";
          }

          printf("SEP firmware %spreloaded in memory\n", v48);
LABEL_235:
          if (sub_100008CA0("sepfw-load-at-boot"))
          {
            v212 = 0xAAAAAAAAAAAAAAAALL;
            *&v62 = 0xAAAAAAAAAAAAAAAALL;
            *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v211[27] = v62;
            v211[26] = v62;
            v211[25] = v62;
            v211[24] = v62;
            v211[23] = v62;
            v211[22] = v62;
            v211[21] = v62;
            v211[20] = v62;
            v211[19] = v62;
            v211[18] = v62;
            v211[17] = v62;
            v211[16] = v62;
            v211[15] = v62;
            v211[14] = v62;
            v211[13] = v62;
            v211[12] = v62;
            v211[11] = v62;
            v211[10] = v62;
            v211[9] = v62;
            v211[8] = v62;
            v211[7] = v62;
            v211[6] = v62;
            v211[5] = v62;
            v211[4] = v62;
            v211[3] = v62;
            v211[2] = v62;
            v211[1] = v62;
            v211[0] = v62;
            v192 = -86;
            v63 = sub_1000046A0();
            if (v63)
            {
              v57 = v63;
              fprintf(__stderrp, "%s: Failed to connect to sep\n");
LABEL_246:
              v64 = 0;
LABEL_247:
              v65 = 0;
              goto LABEL_248;
            }

            if (sub_100008CA0("protected-data-access"))
            {
              v73 = sub_1000052A8(0);
              if (v73)
              {
                v57 = v73;
                fprintf(__stderrp, "%s: Failed to initialize gigalocker: %d\n");
                goto LABEL_246;
              }
            }

            if (!v47)
            {
              v74 = sub_100004490(v214);
              if (v74)
              {
                v57 = v74;
                goto LABEL_246;
              }

              v75 = malloc_type_malloc(0x2000000uLL, 0x1CA6A7BFuLL);
              v64 = v75;
              if (!v75)
              {
                v57 = 0;
                goto LABEL_247;
              }

              v76 = sub_1000085C4(v75, 0x2000000uLL, v214, &v194);
              if (v76)
              {
                v57 = v76;
                goto LABEL_247;
              }

              Img4DecodeInit(v64, v194, v211);
              if (v77 || !sub_10001309C(v211, &v192))
              {
                v65 = 0;
              }

              else
              {
                if (v192 != 1)
                {
                  v65 = 0;
                  v82 = 255;
                  goto LABEL_438;
                }

                v65 = malloc_type_malloc(0x40000uLL, 0xE07DFB9DuLL);
                if (v65)
                {
                  v78 = sub_100004490(v213);
                  if (v78 || (v78 = sub_1000085C4(v65, 0x40000uLL, v213, &v193), v78))
                  {
                    v57 = v78;
                    goto LABEL_248;
                  }

                  v210 = 0xAAAAAAAAAAAAAAAALL;
                  *&v79 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v209[27] = v79;
                  v209[26] = v79;
                  v209[25] = v79;
                  v209[24] = v79;
                  v209[23] = v79;
                  v209[22] = v79;
                  v209[21] = v79;
                  v209[20] = v79;
                  v209[19] = v79;
                  v209[18] = v79;
                  v209[17] = v79;
                  v209[16] = v79;
                  v209[15] = v79;
                  v209[14] = v79;
                  v209[13] = v79;
                  v209[12] = v79;
                  v209[11] = v79;
                  v209[10] = v79;
                  v209[9] = v79;
                  v209[8] = v79;
                  v209[7] = v79;
                  v209[6] = v79;
                  v209[5] = v79;
                  v209[4] = v79;
                  v209[3] = v79;
                  v209[2] = v79;
                  v209[1] = v79;
                  v209[0] = v79;
                  Img4DecodeInit(v65, v193, v209);
                  if (v80)
                  {
LABEL_439:
                    v57 = 0;
                    goto LABEL_248;
                  }

                  v191 = -1431655766;
                  Img4DecodeGetRestoreInfoInteger(v209, 1936615780, &v191);
                  if (v81)
                  {
                    v82 = 2;
                    printf("Didn't find snid in patches IM4R, using default slot %u\n");
                  }

                  else
                  {
                    v82 = v191;
                    printf("Found slot %u in patches IM4R\n");
                  }

LABEL_438:
                  printf("Loading SEP FW in %s with slot %u\n", "defaultInit", v82);
                  if (sub_10000879C(v64, v194, v65, v193, 6u, v82))
                  {
                    goto LABEL_439;
                  }

                  fprintf(__stderrp, "%s: auto load failed\n", qword_100024C60);
                  v57 = 5;
LABEL_248:
                  if (!v44)
                  {
                    goto LABEL_254;
                  }

                  goto LABEL_253;
                }
              }

              v57 = 1;
              goto LABEL_248;
            }
          }

          else
          {
            puts("Skipping SEP firmware load");
          }

          v57 = 0;
          goto LABEL_246;
        }

        fprintf(__stderrp, "%s: Incorrect value size for sepfw-loaded property\n");
      }

      else
      {
        fprintf(__stderrp, "%s: Incorrect sepfw-loaded entry value type\n");
      }

      v65 = 0;
      v64 = 0;
      v57 = 33;
LABEL_253:
      CFRelease(v44);
LABEL_254:
      IOObjectRelease(v42);
      if (v64)
      {
        free(v64);
      }

      if (v65)
      {
        free(v65);
      }

      return v57;
    }

    v47 = 0;
    goto LABEL_235;
  }

  if (v3 < 2)
  {
    sub_10001351C(v6);
    return 22;
  }

  v7 = getopt_long(v3, v2, "a:b:c:d:f:g:hkmno:pq:r:s:t:uv:wx:CDFI:L:NO:PR:ST:W:", &off_100024000, 0);
  v8 = 1;
  v121 = v2;
  v122 = v3;
  if (v7 == -1)
  {
    v157 = 0;
    v158 = 0;
    HIDWORD(v162) = 0;
    v155 = 0;
    v156 = 0;
    v150 = 0;
    v151 = 0;
    *v123 = 0;
    v148 = 0;
    v149 = 0;
    v181 = 0;
    v153 = 0;
    v154 = 0;
    v124 = 0;
    v152 = 0;
    v119 = 0;
    v170 = 0;
    v171 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v138 = 0;
    v139 = 0;
    v144 = 0;
    v141 = 0;
    v137 = 0;
    v174 = 0;
    v135 = 0;
    v120 = 0;
    v134 = 0;
    v126 = 0;
    v127 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v184 = 0xFFFFFFFF00000000;
    v182 = 0;
    v183 = 0;
    v125 = 0;
    v128 = 0;
    v159 = 0;
    v188 = 255;
    v187 = 1;
    v180 = 1;
    v185 = 1;
    v179 = 0x100000001;
    v178 = 0x100000001;
    v177 = 1;
    v176 = 1;
    v175 = 1;
    v173 = 1;
    v140 = 0xAAAAAAAAAAAAAAAALL;
    v136 = 0xAAAAAAAAAAAAAAAALL;
    v133 = 0xAAAAAAAAAAAAAAAALL;
    memset(v160, 170, sizeof(v160));
    v186 = 255;
    v172 = 1;
    v55 = 1;
    v56 = 1;
    v54 = 1;
    v53 = 1;
    v52 = 1;
    v51 = 1;
    v50 = 1;
    v49 = 1;
LABEL_203:
    if (byte_1000254B1)
    {
      v57 = 0xFFFFFFFFLL;
    }

    else
    {
      v57 = sub_1000046A0();
      if (v57)
      {
        sub_100013B4C();
        return v57;
      }
    }

    if (!v49 && IOConnectCallScalarMethod(dword_100024C28, 0, 0, 0, 0, 0))
    {
      sub_100013B8C();
      return 5;
    }

    if (!v50 && sub_1000049A4())
    {
      sub_100013BCC();
      return 5;
    }

    if (!v51 && !sub_100004C54())
    {
      sub_100013C0C();
      return 5;
    }

    if (!v52 && IOConnectCallScalarMethod(dword_100024C28, 2u, 0, 0, 0, 0))
    {
      sub_100013C4C();
      return 5;
    }

    if (!v53 && IOConnectCallScalarMethod(dword_100024C28, 1u, 0, 0, 0, 0))
    {
      sub_100013C8C();
      return 5;
    }

    if (!v54)
    {
      sub_100013CCC();
      return 5;
    }

    if (!v55 && !sub_100004DD8(v188, SHIDWORD(v184)))
    {
      return 5;
    }

    if (!v56 && (sub_100004EF4(v182) & 1) == 0)
    {
      sub_100013D10(v182);
      return 5;
    }

    if (dword_100024C30 && !sub_100005110())
    {
      sub_100013D54();
      return 5;
    }

    v58 = v186;
    if (dword_100024C34)
    {
      v59 = sub_1000052A8(1);
      v57 = v59;
      if (v59)
      {
        sub_100013D94(v59);
        return v57;
      }
    }

    v60 = v57;
    if (!dword_100024C38)
    {
      goto LABEL_228;
    }

    if (!dword_100024C28)
    {
      sub_100013298();
    }

    v13 = IOConnectCallMethod(dword_100024C28, 0x2Eu, 0, 0, 0, 0, 0, 0, 0, 0);
    v60 = 0;
    if (!v13)
    {
LABEL_228:
      v189 = 0;
      if (sub_100014C38(&v189))
      {
        sub_100013DD8();
        return 5;
      }

      if (!v8)
      {
        if (v189 == 1)
        {
          v61 = HIDWORD(v187);
          if (v186 == 0xFF)
          {
            puts("Boot slot not provided to load SEPFW, setting to default");
            v58 = 2;
          }
        }

        else
        {
          v61 = HIDWORD(v187);
        }

        v66 = __dst[0] ? __dst : 0;
        if (!sub_1000054A0(v208, v66, v61, v58))
        {
          sub_100013E0C(v61, v208);
          return 5;
        }
      }

      if (dword_100024C3C && !sub_1000056C8())
      {
        sub_100013E68();
        return 5;
      }

      if (byte_100025470 == 1)
      {
        if (v189 == 1 && v58 == 0xFF)
        {
          sub_100013EA8();
          return 22;
        }

        if (!sub_100005754(v58))
        {
          sub_100013EE8();
          return 5;
        }
      }

      if (byte_100025474 == 1)
      {
        if (v189 == 1 && v58 == 0xFF)
        {
          sub_100013F28();
          return 22;
        }

        v67 = qword_1000254A8 ? &unk_100025475 : 0;
        if ((sub_100005818(v58, v67, qword_1000254A8) & 1) == 0)
        {
          sub_100013F68();
          return 5;
        }
      }

      if (dword_100024C48)
      {
        if ((v188 & 0x80) != 0)
        {
          fprintf(__stderrp, "%s: No lcrt file provided\n", qword_100024C60);
        }

        if ((sub_100005938(v188) & 1) == 0)
        {
          sub_100013FA8();
          return 5;
        }
      }

      if ((v184 & 1) != 0 && (sub_100005A54() & 1) == 0)
      {
        sub_100013FE8();
        return 5;
      }

      if ((v183 & 0x100000000) != 0 && (sub_100005B88() & 1) == 0)
      {
        sub_100014028();
        return 5;
      }

      if ((v183 & 1) != 0 && (sub_100005CBC(v160[0]) & 1) == 0)
      {
        sub_100014068();
        return 5;
      }

      if ((v187 & 1) == 0)
      {
        if (dword_1000254B4 == 2)
        {
          if (sub_100005DC4(v208))
          {
            sub_1000140A8();
            return 5;
          }
        }

        else
        {
          puts("bootCheck: Cannot perform boot check on non-ART platform. Assuming OK");
        }
      }

      if (!v180)
      {
        v68 = sub_100005FB0(v208);
        if (v68)
        {
          v57 = v68;
          sub_1000140E8();
          return v57;
        }

        v60 = 0;
      }

      if ((v179 & 0x100000000) == 0 && (sub_10000608C(v206) & 1) == 0)
      {
        sub_100014128(v206);
        return 5;
      }

      if (dword_100024C40 && !sub_100006198(SHIDWORD(v184)))
      {
        return 5;
      }

      if (!v185 && (sub_1000062C4(&v204, v158, v159 & 1) & 1) == 0)
      {
        sub_10001416C(&v204);
        return 5;
      }

      if (dword_100024C44 && !sub_100006634())
      {
        sub_1000141B0();
        return 5;
      }

      if ((v179 & 1) == 0 && (sub_1000066F4() & 1) == 0)
      {
        sub_1000141F0();
        return 5;
      }

      if ((v178 & 0x100000000) == 0 && IOConnectCallStructMethod(dword_100024C28, 0x10u, 0, 0, 0, 0))
      {
        sub_100014230();
        return 5;
      }

      if ((v162 & 0x100000000) != 0)
      {
        v69 = sub_100006828(v157);
        if (v69)
        {
          sub_100014A10(v69);
          return 5;
        }
      }

      if ((v178 & 1) == 0)
      {
        if (!v156)
        {
          sub_100014270();
          return 5;
        }

        if (!sub_10000689C(v202, v156))
        {
          sub_1000142B0();
          return 5;
        }
      }

      if (!v177)
      {
        if (!HIDWORD(v155))
        {
          sub_1000142F0();
          return 5;
        }

        if ((sub_1000069C0(v202, SHIDWORD(v155)) & 1) == 0)
        {
          sub_100014330(v202);
          return 5;
        }
      }

      if (!v176 && (sub_100006AC4(v202) & 1) == 0)
      {
        sub_100014374(v202);
        return 5;
      }

      if (!v175 && (sub_100006C44(v202) & 1) == 0)
      {
        sub_1000143B8(v202);
        return 5;
      }

      if ((v173 & 1) == 0 && (sub_100006E18(v200, v188, SHIDWORD(v184)) & 1) == 0)
      {
        sub_1000143FC();
        return 5;
      }

      if (!v172 && !sub_1000070C8(uu))
      {
        return 22;
      }

      if (v181)
      {
        LOBYTE(v214[0]) = -86;
        if (!sepTesting(v181, v152, HIDWORD(v154), v155, v153, v124, v154, v214))
        {
          v57 = 5;
          fprintf(__stderrp, "%s: test command failed\n");
          return v57;
        }

        if (v181 == 3 && LOBYTE(v214[0]) != 1)
        {
          v57 = 1;
          fprintf(__stderrp, "%s: test returned failure\n");
          return v57;
        }
      }

      if (v123[0])
      {
        v70 = sepDebugVar(v123[0], v190, inputStruct, v151);
        if (v70)
        {
          v71 = __stderrp;
          v116 = *v123;
          v117 = v70;
          v72 = "Debug var command %d failed, ret: 0x%x\n";
LABEL_361:
          fprintf(v71, v72, v116, v117);
          return 5;
        }

        v60 = 0;
      }

      if ((v150 & 0x100000000) != 0)
      {
        v83 = sub_100007154(BYTE4(v148) & 1);
        if (v83)
        {
          v71 = __stderrp;
          v116 = v83;
          v72 = "Failed to update tunable check mode. ret: 0x%x\n";
          goto LABEL_361;
        }

        v60 = 0;
      }

      if (v150)
      {
        v214[0] = v171;
        v84 = IOConnectCallScalarMethod(dword_100024C28, 0x30u, v214, 1u, 0, 0);
        if (v84)
        {
          v57 = v84;
          sub_10001443C(v84);
          return v57;
        }

        v60 = 0;
      }

      v57 = 3758097084;
      if ((v149 & 0x100000000) != 0)
      {
        v214[0] = v170;
        v85 = IOConnectCallScalarMethod(dword_100024C28, 0x31u, v214, 1u, 0, 0);
        v86 = v85;
        v87 = -536870174;
        if ((v146 & 1) == 0)
        {
          v87 = 0;
        }

        if (v85 != v87)
        {
          fprintf(__stderrp, "%s: Hilo gain calculation had unexpected return value: 0x%x, hilo_expect_gain_failure: %d\n", qword_100024C60, v85, v146 & 1);
          return v86;
        }

        v60 = v85;
      }

      if (v149)
      {
        v88 = sub_1000071D0(v143);
        if (v88)
        {
          v106 = v88;
          sub_100014480(v88);
          return v106;
        }

        v60 = 0;
      }

      if (v148)
      {
        v89 = (v145 & 1) != 0 ? -536870174 : 0;
        v90 = sub_100007298(v142, v145 & 1);
        v60 = v90;
        if (v90 != v89)
        {
          v57 = v90;
          sub_1000144C4(v90);
          return v57;
        }
      }

      if (v147)
      {
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        v91 = sub_1000073B0(v214);
        if (v91)
        {
          v92 = v91;
          fprintf(__stderrp, "%s: Couldn't get raw LTH, return value: 0x%x", qword_100024C60, v91);
          return v92;
        }

        v94 = v214[0];
        v95 = sub_1000074C0(v214[0]);
        free(v94);
        if ((v95 & 1) == 0)
        {
          fprintf(__stderrp, "%s: Raw LTH didn't have expected value", qword_100024C60);
        }

        v60 = 0;
      }

      if ((v145 & 0x100000000) != 0)
      {
        v96 = IOConnectCallScalarMethod(dword_100024C28, 0x35u, 0, 0, 0, 0);
        v60 = 0;
        if (v96)
        {
          v106 = v96;
          sub_100014508(v96);
          return v106;
        }
      }

      if ((v144 & 0x100000000) != 0)
      {
        v97 = sub_10000760C(v140);
        if (v97)
        {
          v106 = v97;
          sub_10001454C(v97);
          return v106;
        }

        v60 = 0;
      }

      if (v144)
      {
        v13 = sub_1000076DC(v139, BYTE4(v138) & 1);
        if (v13)
        {
          return v13;
        }

        v60 = 0;
      }

      if ((v141 & 1) == 0)
      {
LABEL_429:
        if ((v138 & 1) != 0 && ((v145 & 1) == 0 ? (v98 = 0) : (v98 = 3758097122), v99 = sub_100007A28(v133, v145 & 1), v60 = v98, v99 != v98))
        {
          v106 = v99;
          sub_1000144C4(v99);
        }

        else
        {
          v100 = v120;
          if (v137)
          {
            v214[0] = v174;
            v13 = IOConnectCallScalarMethod(dword_100024C28, 0x3Au, v214, 1u, 0, 0);
            if (v13)
            {
              return v13;
            }

            v60 = 0;
          }

          if ((v135 & 0x100000000) != 0)
          {
            v101 = sub_100007AF8(v120);
            if (v101)
            {
              v106 = v101;
              sub_100014590(v101);
              return v106;
            }

            v60 = 0;
            v100 = v120;
          }

          if (v135)
          {
            v102 = sub_100007CC0(SHIDWORD(v184), v188);
            if (v102)
            {
              v106 = v102;
              sub_1000145D4(v102);
              return v106;
            }

            v60 = 0;
            v100 = v120;
          }

          if ((v134 & 1) == 0)
          {
            goto LABEL_580;
          }

          if (!v100)
          {
            sub_100013380();
            return v60;
          }

          v103 = open(v100, 0);
          if (v103 < 0)
          {
            goto LABEL_453;
          }

          v104 = v103;
          if (v127)
          {
            v105 = open(v127, 0);
            if (v105 < 0)
            {
LABEL_453:
              fprintf(__stderrp, "%s: can't open '%s'\n");
              return *__error();
            }
          }

          else
          {
            v105 = -1;
          }

          v108 = sub_100007E30(SHIDWORD(v184), v104, v188, v105);
          if (v108)
          {
            v106 = v108;
            sub_10001333C(v108);
          }

          else
          {
LABEL_580:
            if ((v132 & 0x100000000) == 0 || (v109 = sub_100008058(v188), !v109))
            {
              if ((v130 & 0x100000000) != 0 && (sub_1000080EC(SHIDWORD(v184), v188, v129) & 1) == 0)
              {
                sub_10001465C();
                return v57;
              }

              if ((v130 & 1) != 0 && !sub_100008220(BYTE4(v126) & 1))
              {
                sub_10001469C();
                return v57;
              }

              if ((v132 & 1) != 0 && hilo_advance_gain_restriction_phase())
              {
                sub_1000146DC();
                return v57;
              }

              if (dword_100024C4C)
              {
                sub_100008B2C();
              }

              if (dword_100024C50)
              {
                sub_100008BA8();
              }

              if (dword_100024C54)
              {
                sub_100008C24();
              }

              if ((v131 & 0x100000000) != 0 && !sub_10000826C())
              {
                sub_10001471C();
                return v57;
              }

              if (v131)
              {
                sub_100008F34();
              }

              if (byte_1000254B0 == 1 && !sub_1000082EC(&v190[4]))
              {
                fprintf(__stderrp, "%s: dump coverage failed\n", qword_100024C60);
              }

              else
              {
                if (dword_100024C58 && !sub_100009028())
                {
                  return v57;
                }

                if ((byte_100024C68 & 1) != 0 || byte_100024C6C)
                {
                  sub_100008350(v119, byte_100024C68);
                }

                if ((v126 | v128))
                {
                  if (v58 == 0xFF)
                  {
                    fprintf(__stderrp, "%s: Provisional AP command missing slot ID\n");
                    return 5;
                  }

                  if (!sub_1000083CC(v58, v126 & 1, v125))
                  {
                    fprintf(__stderrp, "%s: Provisional AP command failed\n");
                    return 5;
                  }
                }

                v110 = v122 - optind;
                if (v122 - optind >= 1)
                {
                  for (i = &v121[optind]; ; ++i)
                  {
                    v112 = **i;
                    if (v112)
                    {
                      v113 = (*i + 1);
                      while (sub_1000084C8(v112))
                      {
                        v114 = *v113++;
                        v112 = v114;
                        if (!v114)
                        {
                          goto LABEL_541;
                        }
                      }

                      v118 = *(v113 - 1);
                      fprintf(__stderrp, "%s: ttyin '%c' failed\n");
                      return 5;
                    }

LABEL_541:
                    if (v110 == 1)
                    {
                      break;
                    }

                    if (!sub_1000084C8(32))
                    {
                      fprintf(__stderrp, "%s: ttyin ' ' failed\n");
                      return 5;
                    }

                    v57 = 0;
                    v115 = __OFSUB__(v110--, 1);
                    if ((v110 < 0) ^ v115 | (v110 == 0))
                    {
                      return v57;
                    }
                  }

                  if (!sub_1000084C8(10))
                  {
                    fprintf(__stderrp, "%s: ttyin '\\n' failed");
                    return 5;
                  }

                  if (isatty(0))
                  {
                    usleep(0x3D090u);
                  }
                }
              }

              return 0;
            }

            v106 = v109;
            sub_100014618(v109);
          }
        }

        return v106;
      }

      v13 = sub_100007974(v136);
      if (!v13)
      {
        v60 = 0;
        goto LABEL_429;
      }
    }

    return v13;
  }

  v177 = 0;
  v178 = 0;
  v179 = 0;
  v184 = 0;
  v167 = 0;
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v164 = 0;
  v159 = 0;
  v131 = 0;
  v132 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v134 = 0;
  v135 = 0;
  v9 = 0;
  v174 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v141 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v142 = 0;
  v143 = 0;
  v148 = 0;
  v149 = 0;
  v168 = 0;
  v162 = 0;
  v163 = 0;
  v150 = 0;
  v151 = 0;
  v10 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v124 = 0;
  v11 = 0;
  v12 = 0;
  v172 = 0;
  v166 = 0;
  v165 = 0;
  LODWORD(v171) = 0;
  LODWORD(v170) = 0;
  v176 = 0;
  v175 = 0;
  v158 = 0;
  v185 = 0;
  v169 = 0;
  v161 = 0;
  v187 = 0;
  v186 = 255;
  memset(v160, 170, sizeof(v160));
  v133 = 0xAAAAAAAAAAAAAAAALL;
  v136 = 0xAAAAAAAAAAAAAAAALL;
  v140 = 0xAAAAAAAAAAAAAAAALL;
  v188 = 255;
  v173 = 255;
  while (v7 <= 767)
  {
    switch(v7)
    {
      case 'C':
        v13 = sub_100004490(v208);
        if (v13)
        {
          return v13;
        }

        v161 = 1;
        break;
      case 'D':
        v13 = sub_100004490(v208);
        if (v13)
        {
          return v13;
        }

        LODWORD(v162) = 1;
        break;
      case 'E':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'M':
      case 'Q':
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
      case 'i':
      case 'l':
        goto LABEL_458;
      case 'F':
        HIDWORD(v184) = 1;
        break;
      case 'I':
        if (*optarg == 45 && !optarg[1])
        {
          v188 = fileno(__stdinp);
        }

        else
        {
          v188 = open(optarg, 0);
          if ((v188 & 0x80) != 0)
          {
            goto LABEL_66;
          }
        }

        break;
      case 'L':
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100004528(optarg, 16, v214))
        {
          sub_1000132F8();
          return 22;
        }

        if (v214[0] >= 0x10000)
        {
          sub_1000132B4(v214[0]);
          return 22;
        }

        v157 = v214[0];
        HIDWORD(v162) = 1;
        break;
      case 'N':
        LODWORD(v179) = 1;
        break;
      case 'O':
        v23 = fileno(__stdinp);
        if (isatty(v23))
        {
          sub_1000137A0();
          return 22;
        }

        if (!optarg)
        {
          goto LABEL_496;
        }

        strncpy(v202, optarg, 0x20uLL);
        v166 = 1;
        break;
      case 'P':
        break;
      case 'R':
        if (!optarg)
        {
          goto LABEL_469;
        }

        strncpy(v200, optarg, 0x20uLL);
        v172 = 1;
        break;
      case 'S':
        HIDWORD(v179) = 1;
        break;
      case 'T':
        if (!optarg)
        {
          goto LABEL_496;
        }

        strncpy(v202, optarg, 0x20uLL);
        LODWORD(v171) = 1;
        break;
      case 'W':
        if (*optarg == 45 && !optarg[1])
        {
          v173 = 1;
          break;
        }

        v24 = creat(optarg, 0x1A5u);
        if ((v24 & 0x80) != 0)
        {
LABEL_66:
          sub_1000135EC(v214);
          return LODWORD(v214[0]);
        }

        v173 = v24;
        break;
      case 'a':
        v20 = optarg;
        if (!optarg)
        {
          goto LABEL_469;
        }

        v21 = &v204;
        v22 = 32;
        goto LABEL_84;
      case 'b':
        v204 = *"set";
        v205 = *&algn_10001CD9D[12];
        v20 = optarg;
        if (!optarg)
        {
          sub_1000136D8();
          return 22;
        }

        v21 = &byte_100024C6E;
        v22 = 2048;
LABEL_84:
        strncpy(v21, v20, v22);
        v185 = 1;
        break;
      case 'c':
        if (!optarg)
        {
          goto LABEL_496;
        }

        strncpy(v202, optarg, 0x20uLL);
        LODWORD(v170) = 1;
        break;
      case 'd':
        v19 = fileno(*v4);
        if (isatty(v19))
        {
          sub_100013568();
          return 22;
        }

        if (!optarg)
        {
LABEL_473:
          sub_1000135A8();
          return 22;
        }

        v182 = strtol(optarg, 0, 10);
        v167 = 1;
        break;
      case 'f':
        if (!optarg)
        {
          goto LABEL_472;
        }

        strncpy(v208, optarg, 0x400uLL);
        LODWORD(v187) = 1;
        v18 = 6;
        goto LABEL_101;
      case 'g':
        if (!optarg)
        {
          goto LABEL_473;
        }

        v158 = strtol(optarg, 0, 10);
        break;
      case 'h':
        sub_10000134C();
        break;
      case 'j':
        v180 = 1;
        break;
      case 'k':
        v176 = 1;
        break;
      case 'm':
        HIDWORD(v178) = 1;
        break;
      case 'n':
        v175 = 1;
        break;
      case 'o':
        v25 = fileno(*v4);
        if (isatty(v25))
        {
          sub_100013760();
          return 22;
        }

        if (!optarg)
        {
LABEL_496:
          sub_10001371C();
          return 22;
        }

        strncpy(v202, optarg, 0x20uLL);
        v165 = 1;
        break;
      case 'p':
        v177 = 1;
        break;
      case 'q':
        if (!optarg)
        {
          goto LABEL_472;
        }

        strncpy(__dst, optarg, 0x400uLL);
        break;
      case 'r':
        if (!optarg)
        {
          goto LABEL_472;
        }

        strncpy(v208, optarg, 0x400uLL);
        LODWORD(v187) = 1;
        v18 = 7;
        goto LABEL_101;
      case 's':
        if (!optarg)
        {
LABEL_469:
          sub_100013694();
          return 22;
        }

        strncpy(v206, optarg, 0x20uLL);
        v169 = 1;
        break;
      case 't':
        if (!optarg)
        {
LABEL_472:
          sub_100013650();
          return 22;
        }

        strncpy(v208, optarg, 0x400uLL);
        LODWORD(v187) = 1;
        v18 = 8;
LABEL_101:
        HIDWORD(v187) = v18;
        break;
      case 'u':
        LODWORD(v178) = 1;
        break;
      case 'v':
        v156 = strtol(optarg, 0, 10);
        break;
      case 'w':
        byte_100024C6D = 1;
        break;
      case 'x':
        HIDWORD(v155) = string_to_handle(optarg);
        break;
      default:
        switch(v7)
        {
          case 257:
            v14 = v4;
            v15 = optarg;
            if (!optarg)
            {
              sub_100013860();
              return 22;
            }

            v16 = strchr(optarg, 47);
            if (v16)
            {
              *v16 = 0;
              v124 = string_to_handle(v16 + 1);
            }

            LODWORD(v154) = string_to_handle(v15);
            v11 = 3;
            v4 = v14;
            goto LABEL_191;
          case 258:
            v11 = 1;
            goto LABEL_191;
          case 259:
            v11 = 4;
            goto LABEL_191;
          case 260:
            if (!optarg)
            {
              sub_1000138A4();
              return 22;
            }

            v34 = fopen(optarg, "r");
            if (!v34)
            {
              fprintf(__stderrp, "%s: Couldn't open testing input\n");
              return *__error();
            }

            v152 = v34;
            goto LABEL_191;
          case 261:
            if (!optarg)
            {
              sub_1000138E8();
              return 22;
            }

            v33 = fopen(optarg, "w");
            if (!v33)
            {
              fprintf(__stderrp, "%s: Couldn't open testing output\n");
              return *__error();
            }

            v153 = v33;
            goto LABEL_191;
          case 262:
            v214[0] = 0xAAAAAAAAAAAAAAAALL;
            if (!sub_100004528(optarg, 10, v214))
            {
              sub_10001475C();
              return 22;
            }

            HIDWORD(v154) = v214[0];
            goto LABEL_191;
          case 263:
          case 265:
          case 266:
          case 268:
          case 269:
            goto LABEL_458;
          case 264:
            v214[0] = 0xAAAAAAAAAAAAAAAALL;
            if (!sub_100004528(optarg, 10, v214))
            {
              sub_1000147A0();
              return 22;
            }

            LODWORD(v155) = v214[0];
            v11 = 5;
            goto LABEL_191;
          case 267:
            if (!optarg)
            {
              sub_10001392C();
              return 22;
            }

            sub_10000B29C(optarg);
            goto LABEL_191;
          case 270:
            if (!optarg)
            {
              sub_1000139F8();
              return 22;
            }

            strncpy(&v190[4], optarg, 4uLL);
            byte_1000254B0 = 1;
            goto LABEL_191;
          case 271:
            if (!optarg)
            {
              sub_100013A3C();
              return 22;
            }

            strtoull(optarg, 0, 10);
            goto LABEL_191;
          case 272:
            if (!optarg)
            {
              goto LABEL_492;
            }

            strncpy(v190, optarg, 4uLL);
            v12 = 6;
            goto LABEL_191;
          case 273:
            if (!optarg)
            {
              goto LABEL_492;
            }

            v35 = strtok(optarg, ":");
            strncpy(v190, v35, 4uLL);
            v36 = strtok(0, ":");
            if (!v36)
            {
              goto LABEL_501;
            }

            strncpy(inputStruct, v36, 0x1CuLL);
            v12 = 7;
            goto LABEL_191;
          case 274:
            if (!optarg)
            {
LABEL_492:
              sub_100013970();
              return 22;
            }

            v37 = strtok(optarg, ":");
            strncpy(v190, v37, 4uLL);
            v38 = strtok(0, ":");
            if (!v38)
            {
LABEL_501:
              sub_1000133C0();
              return 22;
            }

            strncpy(inputStruct, v38, 0x1CuLL);
            v39 = strtok(0, ":");
            if (!v39)
            {
              sub_100013404();
              return 22;
            }

            v151 = strtoull(v39, 0, 0);
            v12 = 8;
            goto LABEL_191;
          case 275:
            if (!optarg)
            {
              goto LABEL_486;
            }

            v10 = string_to_handle(optarg);
            byte_100024C68 = 1;
            goto LABEL_191;
          case 276:
            if (!optarg)
            {
LABEL_486:
              sub_100013A80();
              return 22;
            }

            v10 = string_to_handle(optarg);
            byte_100024C6C = 1;
            goto LABEL_191;
          case 277:
            v40 = optarg;
            if (!strcmp(optarg, "enable"))
            {
              BYTE4(v150) = 1;
              BYTE4(v148) = 1;
            }

            else
            {
              if (strcmp(v40, "disable"))
              {
                sub_1000147E4();
                return 22;
              }

              BYTE4(v148) = 0;
              BYTE4(v150) = 1;
            }

            break;
          default:
            if (v7)
            {
              goto LABEL_458;
            }

            goto LABEL_191;
        }

        break;
    }

LABEL_191:
    v7 = getopt_long(v3, v2, "a:b:c:d:f:g:hkmno:pq:r:s:t:uv:wx:CDFI:L:NO:PR:ST:W:", &off_100024000, 0);
    if (v7 == -1)
    {
      *v123 = v12;
      v181 = v11;
      v120 = v9;
      v119 = v10;
      v49 = !v177;
      v50 = v178 == 0;
      v51 = HIDWORD(v178) == 0;
      v52 = v179 == 0;
      v53 = HIDWORD(v179) == 0;
      v54 = HIDWORD(v184) == 0;
      v55 = !v180;
      HIDWORD(v184) = v173;
      v56 = v167 == 0;
      v8 = v187 == 0;
      LODWORD(v187) = v161 == 0;
      v180 = v162 == 0;
      HIDWORD(v179) = v169 == 0;
      v185 = !v185;
      LODWORD(v179) = !v175;
      HIDWORD(v178) = !v176;
      LODWORD(v178) = v170 == 0;
      v177 = v171 == 0;
      v176 = v165 == 0;
      v175 = v166 == 0;
      v173 = !v172;
      v172 = v164 == 0;
      v170 = v168;
      v171 = v163;
      v174 = v174;
      goto LABEL_203;
    }
  }

  if (v7 > 1023)
  {
    switch(v7)
    {
      case 1024:
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100004528(optarg, 10, v214) || v214[0] > 1)
        {
          sub_100014824();
          return 22;
        }

        v163 = v214[0];
        LOBYTE(v150) = 1;
        goto LABEL_191;
      case 1025:
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100004528(optarg, 10, v214) || v214[0] > 1)
        {
          goto LABEL_477;
        }

        v168 = v214[0];
        BYTE4(v149) = 1;
        goto LABEL_191;
      case 1026:
        v143 = optarg;
        LOBYTE(v149) = 1;
        goto LABEL_191;
      case 1027:
        v142 = optarg;
        LOBYTE(v148) = 1;
        goto LABEL_191;
      case 1028:
        LOBYTE(v145) = 1;
        goto LABEL_191;
      case 1029:
        v147 = 1;
        goto LABEL_191;
      case 1030:
        v146 = 1;
        goto LABEL_191;
      case 1031:
        BYTE4(v145) = 1;
        goto LABEL_191;
      case 1032:
        LOBYTE(v131) = 1;
        goto LABEL_191;
      case 1033:
        BYTE4(v138) = 1;
        goto LABEL_191;
      case 1034:
        v139 = optarg;
        LOBYTE(v144) = 1;
        goto LABEL_191;
      case 1035:
        v140 = optarg;
        BYTE4(v144) = 1;
        goto LABEL_191;
      case 1036:
        v136 = optarg;
        v141 = 1;
        goto LABEL_191;
      case 1037:
        v133 = optarg;
        LOBYTE(v138) = 1;
        goto LABEL_191;
      case 1038:
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100004528(optarg, 10, v214) || (v174 = v214[0], v214[0] > 0x29))
        {
LABEL_477:
          sub_100014868();
          return 22;
        }

        v137 = 1;
        goto LABEL_191;
      case 1039:
        v9 = optarg;
        BYTE4(v135) = 1;
        goto LABEL_191;
      case 1040:
        LOBYTE(v135) = 1;
        goto LABEL_191;
      case 1041:
        v134 = 1;
        goto LABEL_191;
      case 1042:
        v9 = optarg;
        goto LABEL_191;
      case 1043:
        v127 = optarg;
        goto LABEL_191;
      case 1044:
        BYTE4(v132) = 1;
        goto LABEL_191;
      case 1045:
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        v30 = sub_100004528(optarg, 10, v214);
        v129 = v214[0];
        if (!v30 || v214[0] > 2)
        {
          sub_1000148F8();
          return 22;
        }

        BYTE4(v130) = 1;
        goto LABEL_191;
      case 1046:
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_100004528(optarg, 10, v214) || v214[0] > 1)
        {
          sub_1000148AC();
          return 22;
        }

        BYTE4(v126) = v214[0] != 0;
        LOBYTE(v130) = 1;
        break;
      case 1047:
        LOBYTE(v132) = 1;
        goto LABEL_191;
      default:
        if (v7 == 1792)
        {
          BYTE4(v131) = 1;
        }

        else
        {
          if (v7 != 1793)
          {
            goto LABEL_458;
          }

          v159 = 1;
        }

        goto LABEL_191;
    }

    goto LABEL_191;
  }

  if (v7 <= 773)
  {
    if (v7 <= 770)
    {
      if (v7 == 768)
      {
        if (!optarg)
        {
          sub_1000137E0();
          return 22;
        }

        if (uuid_parse(optarg, uu))
        {
          sub_100013820();
          return 22;
        }

        v164 = 1;
      }

      else
      {
        if (v7 != 770)
        {
LABEL_458:
          sub_100013B08();
          return 22;
        }

        v160[2] = optarg;
        LODWORD(v184) = 1;
      }
    }

    else if (v7 == 771)
    {
      v160[1] = optarg;
      HIDWORD(v183) = 1;
    }

    else if (v7 == 772)
    {
      byte_100025470 = 1;
    }

    else
    {
      byte_100025474 = 1;
    }

    goto LABEL_191;
  }

  if (v7 <= 775)
  {
    if (v7 == 774)
    {
      if (!optarg)
      {
        sub_10001498C();
        return 22;
      }

      if (*optarg)
      {
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        v26 = strtoul(optarg, v214, 10);
        v27 = v186;
        if (!*v214[0])
        {
          v27 = v26;
        }

        v186 = v27;
      }
    }

    else
    {
      v160[0] = optarg;
      LODWORD(v183) = 1;
    }

    goto LABEL_191;
  }

  if (v7 != 776)
  {
    if (v7 == 777)
    {
      v128 = 1;
    }

    else
    {
      if (v7 != 784)
      {
        goto LABEL_458;
      }

      if (!optarg)
      {
        sub_1000139B4();
        return 22;
      }

      v17 = sub_100004594(optarg, &unk_100025475, 0x30u);
      if (v17 < 1)
      {
        sub_100014944(v17);
        return 22;
      }

      qword_1000254A8 = v17;
    }

    goto LABEL_191;
  }

  if (!optarg)
  {
    sub_100013AC4();
    return 22;
  }

  v214[0] = 0xAAAAAAAAAAAAAAAALL;
  v28 = strtoull(optarg, v214, 10);
  if (v214[0] != &optarg[strlen(optarg)])
  {
    v107 = "%s: Unable to parse provisional AP slot state\n";
    goto LABEL_504;
  }

  if (v28 < 2)
  {
    v125 = v28 == 1;
    fprintf(__stderrp, "set_provisional_ap_value %d\n", v28 == 1);
    LODWORD(v126) = 1;
    v4 = &__stdoutp;
    goto LABEL_191;
  }

  v107 = "%s: Invalid value for provisional AP slot state\n";
LABEL_504:
  sub_1000149D0(v107);
  return 22;
}

uint64_t sub_100004490(uint64_t a1)
{
  if (a1)
  {
    result = lookupPathForPersonalizedData();
    if (result)
    {
      fprintf(__stderrp, "%s: error %ld while retrieving path for personalized data\n", qword_100024C60, result);
      return 5;
    }
  }

  else
  {
    fprintf(__stderrp, "%s: invalid argument passed to %s\n", qword_100024C60, "get_firmware_path");
    return 22;
  }

  return result;
}

BOOL sub_100004528(const char *a1, int __base, unint64_t *a3)
{
  v3 = 0;
  if (a1)
  {
    if (a3)
    {
      v3 = *a1;
      if (*a1)
      {
        __endptr = 0xAAAAAAAAAAAAAAAALL;
        *a3 = strtoul(a1, &__endptr, __base);
        return *__endptr == 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100004594(const char *a1, uint64_t a2, unsigned int a3)
{
  v6 = strlen(a1);
  if (!v6)
  {
    return 4294967293;
  }

  v7 = v6;
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 < v6 >> 1)
  {
    return 4294967294;
  }

  result = 0;
  v9 = 0;
  v10 = v7 - 1;
  v11 = 2;
  do
  {
    v12 = a1[v9];
    if (v12 - 97 > 5)
    {
      if (v12 - 65 > 5)
      {
        v12 -= 48;
        if (v12 > 9)
        {
          return result;
        }
      }

      else
      {
        LOBYTE(v12) = v12 - 55;
      }
    }

    else
    {
      LOBYTE(v12) = v12 - 87;
    }

    v13 = 16 * v12;
    *(a2 + result) = v13;
    v14 = a1[v11 - 1];
    if (v14 - 97 > 5)
    {
      if (v14 - 65 > 5)
      {
        v14 -= 48;
        if (v14 > 9)
        {
          return result;
        }
      }

      else
      {
        LOBYTE(v14) = v14 - 55;
      }
    }

    else
    {
      LOBYTE(v14) = v14 - 87;
    }

    *(a2 + result++) = v14 | v13;
    v9 = v11;
    v15 = v10 > v11;
    v11 += 2;
  }

  while (v15);
  return result;
}

uint64_t sub_1000046A0()
{
  mainPort = -1431655766;
  if (byte_1000254B1)
  {
LABEL_2:
    v0 = 0;
    goto LABEL_5;
  }

  v1 = IOMasterPort(0, &mainPort);
  if (v1)
  {
    v0 = v1;
    fprintf(__stderrp, "%s: could not get master port\n");
  }

  else
  {
    v3 = IOServiceMatching("AppleSEPManager");
    if (v3)
    {
      v4 = v3;
      if (signal(2, sub_100008514) == -1)
      {
        fprintf(__stderrp, "%s: Could not register SIGINT handler. We may leak an IOKit iterator if interrupted\n", qword_100024C60);
      }

      qword_1000254B8 = CFRunLoopGetCurrent();
      qword_1000254C0 = IONotificationPortCreate(mainPort);
      v5 = qword_1000254B8;
      RunLoopSource = IONotificationPortGetRunLoopSource(qword_1000254C0);
      CFRunLoopAddSource(v5, RunLoopSource, kCFRunLoopDefaultMode);
      v7 = IOServiceAddMatchingNotification(qword_1000254C0, "IOServiceFirstMatch", v4, sub_100008540, 0, &dword_1000254C8);
      if (v7)
      {
        v0 = v7;
        fprintf(__stderrp, "%s: could not add async match notification\n");
      }

      else
      {
        sub_100008540(0, dword_1000254C8);
        if (byte_1000254B1 & 1) != 0 || byte_100024C6D == 1 && (fprintf(__stderrp, "%s: Waiting %d seconds for AppleSEPManager...\n", qword_100024C60, 60), CFRunLoopRunInMode(kCFRunLoopDefaultMode, 60.0, 1u), (byte_1000254B1))
        {
          v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep");
          if (v8)
          {
            v9 = v8;
            v10 = IORegistryEntrySearchCFProperty(v8, "IODeviceTree", @"has-art", kCFAllocatorDefault, 0);
            if (v10)
            {
              CFRelease(v10);
              v11 = 2;
            }

            else
            {
              v11 = 1;
            }

            dword_1000254B4 = v11;
            IOObjectRelease(v9);
            goto LABEL_2;
          }

          fprintf(__stderrp, "%s: find arm-io/sep failed\n", qword_100024C60);
          fprintf(__stderrp, "%s: ART query failed\n", qword_100024C60);
          v0 = 2;
        }

        else
        {
          fprintf(__stderrp, "%s: Timeout trying to connect to the SEP\n", qword_100024C60);
          v0 = 60;
        }
      }
    }

    else
    {
      fprintf(__stderrp, "%s: could not make matching dictionary for '%s'\n", qword_100024C60, "AppleSEPManager");
      v0 = 93;
    }
  }

LABEL_5:
  if (dword_1000254C8)
  {
    IOObjectRelease(dword_1000254C8);
    dword_1000254C8 = 0;
  }

  return v0;
}

uint64_t sub_1000049A4()
{
  output = 0;
  outputCnt = 1;
  v0 = IOConnectCallMethod(dword_100024C28, 0xDu, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
  if (v0)
  {
    v1 = v0;
    fprintf(__stderrp, "%s: getLogSize returned error 0x%x\n", qword_100024C60, v0);
  }

  else if (HIDWORD(output))
  {
    return 3758097090;
  }

  else
  {
    v13 = output;
    v1 = output & 7;
    if ((output & 7) != 0)
    {
      fprintf(__stderrp, "%s: inconsistent mailbox Log size : %d\n", qword_100024C60, output & 7);
    }

    else
    {
      outputStruct = malloc_type_calloc(1uLL, output, 0x42A8A157uLL);
      if (outputStruct)
      {
        v4 = outputStruct;
        v15 = 0;
        v16 = 0;
        outputCnt = 2;
        v5 = IOConnectCallMethod(dword_100024C28, 0xEu, 0, 0, 0, 0, &v15, &outputCnt, outputStruct, &v13);
        if (v5)
        {
          v1 = v5;
          fprintf(__stderrp, "%s: Get mailbox log failed : %d\n", qword_100024C60, v5);
        }

        else
        {
          printf("Kernel message log has %llu entries\n", v15 / v16);
          v6 = v15;
          if (v15)
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = &v4[8 * v7];
              v10 = *v9;
              if (*v9)
              {
                if (v8)
                {
                  printf("<skipped %d empty entries>\n", v8);
                  v10 = *v9;
                }

                printf("0x%016llx:\t0x%016llx", &v4[8 * v7], v10);
                if (v16 >= 2)
                {
                  for (i = 1; i < v16; ++i)
                  {
                    printf("\t0x%016llx", *&v9[8 * i]);
                  }
                }

                putchar(10);
                v8 = 0;
                v6 = v15;
              }

              else
              {
                ++v8;
              }

              v7 += v16;
            }

            while (v7 < v6);
            if (v8)
            {
              printf("<skipped %d empty entries>\n", v8);
            }
          }

          v1 = 0;
        }

        free(v4);
      }

      else
      {
        fprintf(__stderrp, "%s: Failed to allocate memory for fetching mailbox logs\n", qword_100024C60);
        return 12;
      }
    }
  }

  return v1;
}

BOOL sub_100004C54()
{
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  v0 = IOConnectCallScalarMethod(dword_100024C28, 4u, 0, 0, &output, &outputCnt);
  if (v0)
  {
    fprintf(__stderrp, "%s: Security mode command error: %x\n", qword_100024C60, v0);
  }

  else
  {
    printf("Production Status = %llu\nSecurity Mode     = %llu\n", output & 1, (output >> 1) & 1);
  }

  return v0 == 0;
}

uint64_t sub_100004CFC()
{
  v0 = -1;
  v1 = 1;
  do
  {
    v2 = random();
    usleep(v2 % 2000);
    result = IOConnectCallScalarMethod(dword_100024C28, 0, 0, 0, 0, 0);
    v4 = result;
    if (!(v0 + 1000 * (v1 / 0x3E8)))
    {
      result = printf("SEP ping #%d\n", v1);
    }

    --v0;
    ++v1;
  }

  while (!v4);
  return result;
}

uint64_t sub_100004DD8(int a1, int a2)
{
  __nbyte = 0;
  __buf = 0;
  if ((sub_10000919C(&__buf, &__nbyte, 0x400uLL, a1) & 1) == 0)
  {
    fprintf(__stderrp, "%s: fd_to_buf returned false\n", qword_100024C60);
  }

  if (!__buf)
  {
    fprintf(__stderrp, "%s: fd_to_buf returned NULL in read file test\n");
    goto LABEL_9;
  }

  if (__nbyte >= 0x401)
  {
    fprintf(__stderrp, "%s: fd_to_buf read more data than max permissible limit (max_len = %d)\n");
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v3 = write(a2, __buf, __nbyte);
  if (v3 < __nbyte)
  {
    fprintf(__stderrp, "%s: Writing to output file failed in read file test\n");
    goto LABEL_9;
  }

  v4 = 1;
LABEL_10:
  if (__buf)
  {
    free(__buf);
  }

  return v4;
}

uint64_t sub_100004EF4(unint64_t a1)
{
  v2 = fileno(__stdoutp);
  if (HIDWORD(a1))
  {
    fprintf(__stderrp, "%s: Data out size missing/out of range\n");
    return 0;
  }

  v3 = v2;
  memset(__b, 170, sizeof(__b));
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = -1431655766;
  outputStructCnt = 0xAAAAAAAAAAAAAAAALL;
  v4 = mach_absolute_time();
  if (a1)
  {
    while (1)
    {
      if (a1 >= 0x400)
      {
        v5 = 1024;
      }

      else
      {
        v5 = a1;
      }

      output = v5;
      outputCnt = 1;
      outputStructCnt = 1024;
      if (IOConnectCallMethod(dword_100024C28, 0x23u, &output, 1u, 0, 0, &output, &outputCnt, __b, &outputStructCnt))
      {
        fprintf(__stderrp, "%s: ERROR: %d\n");
        return 0;
      }

      v6 = output;
      if (output >= 0x401)
      {
        break;
      }

      if (output)
      {
        write(v3, __b, output);
      }

      LODWORD(a1) = a1 - v6;
      if (!a1)
      {
        goto LABEL_11;
      }
    }

    fprintf(__stderrp, "%s: kSEP_RngDump: returned bad data size %lu");
    return 0;
  }

LABEL_11:
  v7 = mach_absolute_time() - v4;
  v8 = __stderrp;
  v9 = qword_100024C60;
  v10 = dword_1000254D0;
  if (!dword_1000254D0)
  {
    mach_timebase_info(&dword_1000254CC);
    v10 = dword_1000254D0;
  }

  fprintf(v8, "\n%s: Time taken: %lld ns\n", v9, v7 * dword_1000254CC / v10);
  return 1;
}

BOOL sub_100005110()
{
  memset(__b, 170, sizeof(__b));
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v0;
  *&out[16] = v0;
  v6 = 1024;
  output = 1024;
  outputCnt = 1;
  v1 = IOConnectCallMethod(dword_100024C28, 0x41u, &output, 1u, 0, 0, &output, &outputCnt, __b, &v6);
  if (v1)
  {
    fprintf(__stderrp, "%s: ERROR: %d\n", qword_100024C60, v1);
  }

  else if (output >= 0x20)
  {
    v2 = 0;
    v3 = __b;
    do
    {
      printf("%u %c%c%c%c\n", *v3, (*(v3 + 1) >> 24), ((*(v3 + 1) << 8) >> 24), (*(v3 + 1) >> 8), *(v3 + 1));
      uuid_unparse(v3 + 8, out);
      printf("\t UUID: %s\n", out);
      printf("\tSlide: 0x%llx\n", *(v3 + 3));
      ++v2;
      v3 += 32;
    }

    while (v2 < output >> 5);
  }

  return v1 == 0;
}

uint64_t sub_1000052A8(int a1)
{
  v9 = 0;
  bzero(inputStruct, 0x400uLL);
  memset(&__s, 0, sizeof(__s));
  result = sub_100014BDC(&v9);
  if (result)
  {
    return result;
  }

  if ((v9 & 1) == 0)
  {
    sub_100014A9C();
    return 0;
  }

  if (a1)
  {
    sub_100009328();
  }

  v3 = sub_100009338();
  if (stat(v3, &__s) || (__s.st_mode & 0xF000) != 0x4000)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100014A54();
    }

    return 20;
  }

  result = sub_10000935C(inputStruct, 0x400uLL, v3, 1);
  if (result)
  {
    return result;
  }

  memset_s(&__s, 0x90uLL, 0, 0x90uLL);
  v4 = stat(inputStruct, &__s);
  v5 = qword_100024C60;
  if (!v4)
  {
    printf("%s: Gigalocker file (%s) exists\n", qword_100024C60, inputStruct);
    if (__s.st_size < 0x600000uLL)
    {
      return 17;
    }

    goto LABEL_17;
  }

  v6 = __error();
  v7 = strerror(*v6);
  printf("%s: Gigalocker file (%s) doesn't exist: %s\n", v5, inputStruct, v7);
  if ((a1 & 1) == 0)
  {
    return *__error();
  }

  result = sub_100014C94(inputStruct, 0x600000uLL);
  if (!result)
  {
LABEL_17:
    if (!dword_100024C28)
    {
      sub_100013298();
    }

    result = IOConnectCallMethod(dword_100024C28, 0x2Cu, 0, 0, inputStruct, 0x400uLL, 0, 0, 0, 0);
    if (result)
    {
      return result;
    }

    printf("%s: Gigalocker initialization completed\n", qword_100024C60);
    return 0;
  }

  return result;
}

BOOL sub_1000054A0(char *a1, char *a2, uint32_t a3, unsigned int a4)
{
  v23 = 0;
  if (!a1)
  {
    return 0;
  }

  v24 = -1431655766;
  if (*a1 == 45 && !a1[1])
  {
    if (!a2)
    {
      v15 = malloc_type_malloc(0x2040001uLL, 0x5DCFBAD6uLL);
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = -1;
        while (v18)
        {
          v18 = read(0, (v16 + v17), 33816577 - v17);
          if (v18 == -1)
          {
            sub_100014B10();
            goto LABEL_34;
          }

          v17 += v18;
          if (v17 == 33816577)
          {
            sub_100014AD0();
            goto LABEL_34;
          }
        }

        v26 = 0xAAAAAAAAAAAAAAAALL;
        if (!Img4DecodeParseLengthFromBuffer(v16, v17, &v26))
        {
          v19 = v26;
          if (v17 < v26)
          {
            sub_100013298();
          }

          if (v17 == v26)
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v25 = 0xAAAAAAAAAAAAAAAALL;
            if (Img4DecodeParseLengthFromBuffer(v16 + v26, v17 - v26, &v25))
            {
              goto LABEL_34;
            }

            v20 = v17 - v26;
            if (v17 - v26 != v25)
            {
              goto LABEL_34;
            }

            v21 = (v16 + v26);
          }

          v13 = sub_10000879C(v16, v19, v21, v20, a3, a4);
          goto LABEL_28;
        }

LABEL_34:
        v13 = 0;
LABEL_28:
        v14 = v16;
        goto LABEL_29;
      }

      sub_100014B50();
    }

    return 0;
  }

  v8 = malloc_type_malloc(0x2000000uLL, 0x240D708FuLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (sub_1000085C4(v8, 0x2000000uLL, a1, &v24))
  {
    goto LABEL_35;
  }

  if (!a2)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v10 = malloc_type_malloc(0x40000uLL, 0x83525CF9uLL);
  if (!v10)
  {
LABEL_35:
    free(v9);
    return 0;
  }

  v11 = v10;
  if (sub_1000085C4(v10, 0x40000uLL, a2, &v23))
  {
    free(v9);
    v13 = 0;
    goto LABEL_12;
  }

  v12 = v23;
LABEL_11:
  v13 = sub_10000879C(v9, v24, v11, v12, a3, a4);
  free(v9);
  if (v11)
  {
LABEL_12:
    v14 = v11;
LABEL_29:
    free(v14);
  }

  return v13;
}

BOOL sub_1000056C8()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  v0 = IOConnectCallMethod(dword_100024C28, 0xAu, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v0)
  {
    fprintf(__stderrp, "%s: Erase install notification returned 0x%x\n", qword_100024C60, v0);
  }

  return v0 == 0;
}

BOOL sub_100005754(unsigned int a1)
{
  input[0] = a1;
  input[1] = 0;
  printf("%s called with slot %u\n", "commitSepHash", a1);
  v1 = IOConnectCallScalarMethod(dword_100024C28, 9u, input, 2u, 0, 0);
  if (v1)
  {
    fprintf(__stderrp, "%s: commit hash returned 0x%x\n", qword_100024C60, v1);
  }

  return v1 == 0;
}

uint64_t sub_100005818(unsigned int a1, const void *a2, size_t a3)
{
  input[0] = a1;
  input[1] = 1;
  printf("%s called with slot %u\n", "commitApHash", a1);
  if ((a2 == 0) != (a3 != 0))
  {
    if (!IOConnectCallMethod(dword_100024C28, 9u, input, 2u, a2, a3, 0, 0, 0, 0))
    {
      return 1;
    }

    fprintf(__stderrp, "%s: commit hash failed: 0x%x\n");
  }

  else
  {
    fprintf(__stderrp, "%s: bad arguments: %u %lu\n");
  }

  return 0;
}

uint64_t sub_100005938(int a1)
{
  v7 = 0;
  v8 = 0;
  v2 = dword_100024C28;
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  if (a1 < 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    if ((sub_10000919C(&v8, &v7, 0x8000uLL, a1) & 1) == 0)
    {
      fprintf(__stderrp, "%s: can't read in lcrt\n");
      goto LABEL_12;
    }

    v3 = v7;
    if (!v7)
    {
      fprintf(__stderrp, "%s: Zero sized input file\n");
      goto LABEL_12;
    }

    v2 = dword_100024C28;
    v4 = v8;
  }

  if (!IOConnectCallMethod(v2, 0x29u, 0, 0, v4, v3, 0, 0, 0, 0))
  {
    v5 = 1;
    goto LABEL_13;
  }

  fprintf(__stderrp, "%s: lcrt verification request returned 0x%x\n");
LABEL_12:
  v5 = 0;
LABEL_13:
  if (v8)
  {
    free(v8);
  }

  return v5;
}

uint64_t sub_100005A54()
{
  v0 = __chkstk_darwin();
  memset(__b, 170, sizeof(__b));
  outputStructCnt = 0x8000;
  if (IOConnectCallMethod(dword_100024C28, 0x2Au, 0, 0, 0, 0, 0, 0, __b, &outputStructCnt))
  {
    fprintf(__stderrp, "%s: lynx get chip serial number returned 0x%x\n");
  }

  else
  {
    if (!sub_100008A2C(__b, outputStructCnt, v0))
    {
      return 1;
    }

    fprintf(__stderrp, "%s: couldn't write out Lynx Chip Serial Number\n");
  }

  return 0;
}

uint64_t sub_100005B88()
{
  v0 = __chkstk_darwin();
  memset(__b, 170, sizeof(__b));
  outputStructCnt = 0x8000;
  if (IOConnectCallMethod(dword_100024C28, 0x2Bu, 0, 0, 0, 0, 0, 0, __b, &outputStructCnt))
  {
    fprintf(__stderrp, "%s: lynx get public key returned 0x%x\n");
  }

  else
  {
    if (!sub_100008A2C(__b, outputStructCnt, v0))
    {
      return 1;
    }

    fprintf(__stderrp, "%s: couldn't write out Lynx Public Key\n");
  }

  return 0;
}

uint64_t sub_100005CBC(char *a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  outputStruct[0] = v2;
  outputStruct[1] = v2;
  *v4 = 32;
  if (IOConnectCallMethod(dword_100024C28, 0x5Au, 0, 0, 0, 0, 0, 0, outputStruct, v4))
  {
    fprintf(__stderrp, "%s: lynx get app hash returned 0x%x\n");
  }

  else
  {
    if (!sub_100008A2C(outputStruct, *v4, a1))
    {
      return 1;
    }

    fprintf(__stderrp, "%s: couldn't write out Lynx app hash\n");
  }

  return 0;
}

uint64_t sub_100005DC4(char *a1)
{
  v2 = malloc_type_malloc(0x2000000uLL, 0x69D34B04uLL);
  if (v2)
  {
    v3 = v2;
    v11 = -1431655766;
    v4 = sub_1000085C4(v2, 0x2000000uLL, a1, &v11);
    if (v4)
    {
      v5 = v4;
      fprintf(__stderrp, "%s: failed to read the firmware file\n", qword_100024C60);
    }

    else
    {
      v6 = v11;
      if (v11)
      {
        memset(__b, 170, sizeof(__b));
        outputStructCnt = 2048;
        v7 = IOConnectCallStructMethod(dword_100024C28, 0x12u, 0, 0, __b, &outputStructCnt);
        if (v7)
        {
          fprintf(__stderrp, "%s: Get ART command error: 0x%x\n", qword_100024C60, v7);
          v8 = "CAN NOT";
        }

        else
        {
          v9 = sub_100000FE8(v3, v6, __b, &__b[outputStructCnt], 3);
          v8 = "CAN NOT";
          if (v9)
          {
            v8 = "may";
          }
        }

        printf("bootCheck: SEP %s boot with ART\n", v8);
        v5 = 0;
      }

      else
      {
        fprintf(__stderrp, "%s: incorrect file size reported\n", qword_100024C60);
        v5 = 5;
      }
    }

    free(v3);
  }

  else
  {
    fprintf(__stderrp, "%s: can't allocate memory for '%s'\n", qword_100024C60, a1);
    return 12;
  }

  return v5;
}

uint64_t sub_100005FB0(char *a1)
{
  v2 = malloc_type_malloc(0x2000000uLL, 0xCD85E130uLL);
  if (v2)
  {
    v3 = v2;
    v7 = -1431655766;
    v4 = sub_1000085C4(v2, 0x2000000uLL, a1, &v7);
    if (v4)
    {
      v5 = v4;
      fprintf(__stderrp, "%s: read firmware failed\n");
    }

    else
    {
      v5 = sub_100000CFC(v3, v7);
      if (v5)
      {
        fprintf(__stderrp, "%s: img4 dump failed\n");
      }
    }

    free(v3);
  }

  else
  {
    fprintf(__stderrp, "%s: can't allocate memory for '%s'\n", qword_100024C60, a1);
    return 12;
  }

  return v5;
}

uint64_t sub_10000608C(const char *a1)
{
  if (!strcmp(a1, "status"))
  {
    v2 = 131583;
  }

  else if (!strcmp(a1, "nop"))
  {
    v2 = 66303;
  }

  else
  {
    if (strcmp(a1, "tz0"))
    {
      puts("unknown ROM command");
      return 0;
    }

    v2 = 328703;
  }

  output = v2;
  input = v2;
  outputCnt = 1;
  v3 = IOConnectCallScalarMethod(dword_100024C28, 3u, &input, 1u, &output, &outputCnt);
  if (v3)
  {
    fprintf(__stderrp, "%s: ROM command error: %x\n", qword_100024C60, v3);
    return 0;
  }

  printf("SEP status 0x%llx\n", output);
  return 1;
}

uint64_t sub_100006198(int a1)
{
  memset(outputStruct, 170, 20);
  outputStructCnt = 20;
  if (a1 <= 0)
  {
    fprintf(__stderrp, "%s: No/Illegal outfile provided\n");
  }

  else if (IOConnectCallStructMethod(dword_100024C28, 0x43u, 0, 0, outputStruct, &outputStructCnt))
  {
    fprintf(__stderrp, "%s: Failed to generate ROM nonce: %x\n");
  }

  else
  {
    v2 = outputStructCnt;
    if (v2 == write(a1, outputStruct, outputStructCnt))
    {
      return 1;
    }

    fprintf(__stderrp, "%s: can't write to output\n");
  }

  return 0;
}

uint64_t sub_1000062C4(const char *a1, unint64_t a2, int a3)
{
  memset(__b, 170, sizeof(__b));
  if (!strcasecmp(a1, "get"))
  {
    outputStructCnt = 2048;
    v6 = IOConnectCallStructMethod(dword_100024C28, 0x12u, 0, 0, __b, &outputStructCnt);
    if (v6)
    {
LABEL_9:
      v8 = __stderrp;
      v16 = qword_100024C60;
      v17 = v6;
      v9 = "%s: Get ART command error: 0x%x\n";
LABEL_31:
      fprintf(v8, v9, v16, v17);
      return 0;
    }

    sub_100000AE0(__b, &__b[outputStructCnt]);
    return 1;
  }

  if (!strcasecmp(a1, "set"))
  {
    v10 = &byte_100024C6E;
    if (byte_100024C6E == 48 && ((byte_100024C6F - 88) & 0xDF) == 0)
    {
      v10 = &unk_100024C70;
    }

    v11 = sub_100004594(v10, __b, 0x800u);
    if (v11 <= 0)
    {
      fprintf(__stderrp, "%s: Set ART command error: malformed hex string provided");
      return 0;
    }

    v12 = IOConnectCallStructMethod(dword_100024C28, 0x13u, __b, v11, 0, 0);
    if (v12)
    {
      v8 = __stderrp;
      v16 = qword_100024C60;
      v17 = v12;
      v9 = "%s: Set ART error: 0x%x\n";
      goto LABEL_31;
    }

    v15 = "ART persisted successfully";
    goto LABEL_27;
  }

  if (!strcasecmp(a1, "clear"))
  {
    v13 = IOConnectCallStructMethod(dword_100024C28, 0x14u, 0, 0, 0, 0);
    if (v13)
    {
      v8 = __stderrp;
      v16 = qword_100024C60;
      v17 = v13;
      v9 = "%s: Clear ART error: 0x%x\n";
      goto LABEL_31;
    }

    v15 = "ART cleared from storage";
LABEL_27:
    puts(v15);
    return 1;
  }

  if (!strcasecmp(a1, "ctrtest"))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      fprintf(__stderrp, "%s: minblocks out of range\n");
      return 0;
    }

    outputStructCnt = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 2;
    v14 = IOConnectCallScalarMethod(dword_100024C28, 0x24u, 0, 0, &outputStructCnt, &outputCnt);
    if (v14 || outputCnt != 2)
    {
      v8 = __stderrp;
      v16 = qword_100024C60;
      v17 = v14;
      v9 = "%s: Counter self-test error: 0x%x\n";
      goto LABEL_31;
    }

    printf("Counter self-test result: %u/%u good\n", v20, outputStructCnt);
    if (v20 < a2)
    {
      fprintf(__stderrp, "%s: Minimum good blocks criteria not met\n");
      return 0;
    }

    return 1;
  }

  if (!strcasecmp(a1, "has_system_token"))
  {
    outputStructCnt = 2048;
    v6 = IOConnectCallStructMethod(dword_100024C28, 0x12u, 0, 0, __b, &outputStructCnt);
    if (!v6)
    {
      return sub_100000948(__b, outputStructCnt, a3);
    }

    goto LABEL_9;
  }

  return 0;
}

BOOL sub_100006634()
{
  memset(outputStruct, 170, 20);
  outputStructCnt = 20;
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  v0 = IOConnectCallStructMethod(dword_100024C28, 0x44u, 0, 0, outputStruct, &outputStructCnt);
  if (v0)
  {
    fprintf(__stderrp, "%s: Get nonce command error: %x\n", qword_100024C60, v0);
  }

  return v0 == 0;
}

uint64_t sub_1000066F4()
{
  memset(outputStruct, 170, 20);
  outputStructCnt = 20;
  v3 = 0;
  if (!sub_100014C38(&v3))
  {
    if (v3 == 1)
    {
      output = 0;
      outputCnt = 1;
      v0 = IOConnectCallMethod(dword_100024C28, 0x53u, 0, 0, 0, 0, &output, &outputCnt, outputStruct, &outputStructCnt);
      if (v0)
      {
LABEL_5:
        fprintf(__stderrp, "%s: New nonce command error: %x\n", qword_100024C60, v0);
        return 0;
      }
    }

    else
    {
      v0 = IOConnectCallStructMethod(dword_100024C28, 0xFu, 0, 0, outputStruct, &outputStructCnt);
      if (v0)
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  fwrite("Failed to query nonce slot support\n", 0x23uLL, 1uLL, __stderrp);
  return 0;
}

uint64_t sub_100006828(unsigned int a1)
{
  input[0] = a1 >> 8;
  input[1] = a1;
  return IOConnectCallScalarMethod(dword_100024C28, 0x11u, input, 2u, 0, 0);
}

BOOL sub_10000689C(_BYTE *a1, unint64_t a2)
{
  LODWORD(input) = string_to_handle(a1);
  if (!input)
  {
    fprintf(__stderrp, "%s: Invalid object name\n");
    return 0;
  }

  if (HIDWORD(a2))
  {
    fprintf(__stderrp, "%s: Object size missing/out of range/invalid\n");
    return 0;
  }

  inputStruct = a2;
  v3 = IOConnectCallMethod(dword_100024C28, 0x1Fu, &input, 1u, &inputStruct, 4uLL, 0, 0, 0, 0);
  v4 = v3 == 0;
  if (v3)
  {
    fprintf(__stderrp, "%s: ERROR: %d\n", qword_100024C60, v3);
  }

  else
  {
    printf("Created '%c%c%c%c' of size %u\n", (input >> 24), ((input << 8) >> 24), (input >> 8), input, inputStruct);
  }

  return v4;
}

uint64_t sub_1000069C0(_BYTE *a1, int a2)
{
  HIDWORD(input) = a2;
  LODWORD(input) = string_to_handle(a1);
  if (input && a2)
  {
    if (!IOConnectCallMethod(dword_100024C28, 0x20u, &input, 1u, &input + 4, 4uLL, 0, 0, 0, 0))
    {
      printf("Shared '%c%c%c%c' with '%c%c%c%c'\n", (input >> 24), ((input << 8) >> 24), (input >> 8), input, (SHIDWORD(input) >> 24), ((HIDWORD(input) << 8) >> 24), (SWORD2(input) >> 8), SBYTE4(input));
      return 1;
    }

    fprintf(__stderrp, "%s: ERROR: %d\n");
  }

  else
  {
    fprintf(__stderrp, "%s: Invalid object/service name\n");
  }

  return 0;
}

uint64_t sub_100006AC4(_BYTE *a1)
{
  v1 = string_to_handle(a1);
  v2 = fileno(__stdoutp);
  v3 = 0;
  v4 = v1;
  while (1)
  {
    memset(__b, 170, sizeof(__b));
    output[0] = v4;
    output[1] = v3;
    __nbyte = 1024;
    outputCnt = 3;
    outputStructCnt = 1024;
    if (IOConnectCallMethod(dword_100024C28, 0x21u, output, 3u, 0, 0, output, &outputCnt, __b, &outputStructCnt))
    {
      fprintf(__stderrp, "%s: ERROR: %d\n");
      return 0;
    }

    v5 = __nbyte;
    if (__nbyte >= 0x401)
    {
      break;
    }

    if (!__nbyte)
    {
      return 1;
    }

    write(v2, __b, __nbyte);
    if (v5 != 1024)
    {
      return 1;
    }

    v3 += 1024;
  }

  fprintf(__stderrp, "%s: kSEP_ObjRead: returned bad data size %lu");
  return 0;
}

uint64_t sub_100006C44(_BYTE *a1)
{
  v1 = string_to_handle(a1);
  v2 = fileno(__stdinp);
  memset(__b, 170, sizeof(__b));
  v3 = read(v2, __b, 0x400uLL);
  if (v3 < 1)
  {
    v5 = 0;
LABEL_8:
    if (!ferror(__stdinp))
    {
LABEL_10:
      printf("Copied %u bytes to %c%c%c%C\n", v5, (v1 >> 24), (v1 << 8 >> 24), (v1 >> 8), v1);
      return 1;
    }

    fprintf(__stderrp, "%s: error reading data\n");
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      output[0] = v1;
      output[1] = v5;
      v9 = v4;
      outputCnt = 3;
      if (IOConnectCallMethod(dword_100024C28, 0x22u, output, 3u, __b, v4, output, &outputCnt, 0, 0))
      {
        break;
      }

      if (v9 != v4)
      {
        goto LABEL_10;
      }

      v5 += v4;
      memset(__b, 170, sizeof(__b));
      v4 = read(v2, __b, 0x400uLL);
      if (v4 < 1)
      {
        goto LABEL_8;
      }
    }

    fprintf(__stderrp, "%s: ERROR: %d\n");
  }

  return 0;
}

uint64_t sub_100006E18(_BYTE *a1, int a2, int a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  __nbyte = 0xAAAAAAAAAAAAAAAALL;
  v5 = string_to_handle(a1);
  input = v5;
  if (!v5)
  {
    fprintf(__stderrp, "%s: Invalid pair method\n", qword_100024C60);
    v12 = 0;
    outputStruct = 0;
    goto LABEL_30;
  }

  v6 = v5;
  __nbyte = 0x4000;
  v7 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  outputStruct = v7;
  if (!v7)
  {
    fprintf(__stderrp, "%s: Failed to allocate memory for out_buffer\n");
    goto LABEL_29;
  }

  bzero(v7, 0x4000uLL);
  if (v6 <= 1396788559)
  {
    if (v6 != 1280921176 && v6 != 1347636041)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v6 == 1396788560 || v6 == 1397311310)
  {
LABEL_15:
    if (a3 <= 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v6 == 1398031179)
  {
    if (a2 < 0)
    {
      fprintf(__stderrp, "%s: No/Illegal infile provided\n");
      goto LABEL_29;
    }

    if (sub_10000919C(&v18, &v17, 0x4000uLL, a2))
    {
      if (a3 > 0)
      {
        v9 = dword_100024C28;
        v11 = v17;
        v10 = v18;
        goto LABEL_23;
      }

LABEL_19:
      fprintf(__stderrp, "%s: No/Illegal outfile provided\n");
      goto LABEL_29;
    }

LABEL_20:
    fprintf(__stderrp, "%s: can't read in infile\n");
    goto LABEL_29;
  }

LABEL_16:
  if (a2 < 0)
  {
    v11 = 0;
    v10 = 0;
    v17 = 0;
  }

  else
  {
    if (!sub_10000919C(&v18, &v17, 0x4000uLL, a2))
    {
      goto LABEL_20;
    }

    v11 = v17;
    v10 = v18;
  }

  v9 = dword_100024C28;
LABEL_23:
  if (!IOConnectCallMethod(v9, 0x15u, &input, 1u, v10, v11, 0, 0, outputStruct, &__nbyte))
  {
    if (a3 < 1 || (v13 = __nbyte, v13 == write(a3, outputStruct, __nbyte)))
    {
      v12 = 1;
      goto LABEL_30;
    }

    fprintf(__stderrp, "%s: can't write out_buffer (to outfile)\n");
  }

LABEL_29:
  v12 = 0;
LABEL_30:
  if (v18)
  {
    free(v18);
  }

  if (outputStruct)
  {
    free(outputStruct);
  }

  return v12;
}

BOOL sub_1000070C8(void *inputStruct)
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  v1 = IOConnectCallMethod(dword_100024C28, 0x28u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  if (v1)
  {
    fprintf(__stderrp, "%s: xART OS UUID setup failed: %d\n", qword_100024C60, v1);
  }

  return v1 == 0;
}

uint64_t sub_1000071D0(char *a1)
{
  v2 = 3758097098;
  if (sub_100008E18())
  {
    v3 = malloc_type_malloc(qword_1000254D8, 0x5EDB8DF8uLL);
    if (v3)
    {
      v4 = v3;
      outputStructCnt = qword_1000254D8;
      v2 = IOConnectCallStructMethod(dword_100024C28, 0x32u, 0, 0, v3, &outputStructCnt);
      if (!v2)
      {
        if (sub_100008A2C(v4, qword_1000254D8, a1))
        {
          v2 = 3758097098;
        }

        else
        {
          v2 = 0;
        }
      }

      free(v4);
    }

    else
    {
      return 3758097085;
    }
  }

  return v2;
}

uint64_t sub_100007298(char *a1, int a2)
{
  v4 = 3758097098;
  if (sub_100008E18())
  {
    v5 = malloc_type_malloc(qword_1000254D8, 0xE791E1DuLL);
    if (v5)
    {
      v6 = v5;
      v9 = -1431655766;
      if (!sub_1000085C4(v5, qword_1000254D8, a1, &v9))
      {
        v7 = qword_1000254D8;
        if (qword_1000254D8 != v9)
        {
          v4 = 3758097090;
          goto LABEL_12;
        }

        if (a2)
        {
          if (qword_1000254D8 <= 0x1000)
          {
            fprintf(__stderrp, "%s: HILO_BYTE_TO_CORRUPT is not within LTH backup\n", qword_100024C60);
            v4 = 3758097097;
            goto LABEL_12;
          }

          ++v6[4096];
        }

        v4 = IOConnectCallStructMethod(dword_100024C28, 0x33u, v6, v7, 0, 0);
      }

LABEL_12:
      free(v6);
      return v4;
    }

    return 3758097085;
  }

  return v4;
}

uint64_t sub_1000073B0(void *a1)
{
  if (!sub_100008E18())
  {
    return 5;
  }

  v2 = malloc_type_malloc(qword_100025500, 0x519A1A88uLL);
  if (v2)
  {
    v3 = v2;
    outputStructCnt = qword_100025500;
    v4 = IOConnectCallStructMethod(dword_100024C28, 0x34u, 0, 0, v2, &outputStructCnt);
    if (v4)
    {
      v5 = v4;
      *a1 = v3;
LABEL_10:
      free(v3);
      return v5;
    }

    if (qword_100025500 != outputStructCnt)
    {
      fprintf(__stderrp, "%s: unexpected return call size\n", qword_100024C60);
      v5 = 5;
      goto LABEL_10;
    }

    v5 = 0;
    *a1 = v3;
  }

  else
  {
    fprintf(__stderrp, "%s: can't allocate memory for LTH\n", qword_100024C60);
    return 12;
  }

  return v5;
}

uint64_t sub_1000074C0(uint64_t a1)
{
  if (sub_100008E18())
  {
    v2 = 0;
    v11 = a1;
    v12 = a1 + 4 * dword_1000254F0[0];
    v13 = v12 + 4 * dword_1000254F4;
    while (1)
    {
      v3 = dword_1000254F0[v2];
      if (v3)
      {
        break;
      }

LABEL_7:
      if (++v2 == 3)
      {
        return 1;
      }
    }

    v4 = 0;
    v5 = *(&v11 + v2);
    v6 = -v3;
    v7 = v2;
    while (1)
    {
      v8 = *v5++;
      if (dword_10001CD08[3 * (v7 % 5)] != v8)
      {
        break;
      }

      --v4;
      ++v7;
      if (v6 == v4)
      {
        goto LABEL_7;
      }
    }

    v10 = dword_10001CD08[3 * (v7 % 5)];
    fprintf(__stderrp, "%s: Channel %d sample %u had bad LTH value (expected %u, got %u)\n");
  }

  else
  {
    fprintf(__stderrp, "%s: No display params when expected!\n");
  }

  return 0;
}

uint64_t sub_10000760C(char *a1)
{
  if (!sub_100008E18())
  {
    return 3758097098;
  }

  *v6 = 0xAAAAAAAAAAAAAAAALL;
  v2 = sub_1000073B0(v6);
  if (v2)
  {
    v3 = v2;
    fprintf(__stderrp, "%s: Couldn't get raw LTH, return value: 0x%x\n");
  }

  else
  {
    v4 = *v6;
    v3 = sub_100008A2C(*v6, qword_100025500, a1);
    free(v4);
    if (v3)
    {
      fprintf(__stderrp, "%s: LTH write to %s failed");
    }
  }

  return v3;
}

uint64_t sub_1000076DC(char *a1, int a2)
{
  if (!sub_100008E18())
  {
    return 5;
  }

  v4 = malloc_type_malloc(qword_100025500, 0x62F7EE25uLL);
  if (v4)
  {
    v5 = v4;
    v14 = -1431655766;
    if (a2)
    {
      if (!sub_100008E18())
      {
        v11 = 3758097098;
        fprintf(__stderrp, "%s: Couldn't populate gain test LTH: %d\n");
        goto LABEL_17;
      }

      v6 = 0;
      v15 = v5;
      v16 = &v5[4 * dword_1000254F0[0]];
      v17 = &v16[4 * dword_1000254F4];
      do
      {
        if (dword_1000254F0[v6])
        {
          v7 = 0;
          v8 = (&v15)[v6];
          v9 = v6;
          do
          {
            *&v8[4 * v7] = dword_10001CD08[3 * v7 + 3 * (v6 - 5 * (v9 / 5))];
            ++v7;
            ++v9;
          }

          while (v7 < dword_1000254F0[v6]);
        }

        ++v6;
      }

      while (v6 != 3);
      v10 = sub_100008A2C(v5, qword_100025500, a1);
      if (v10)
      {
        v11 = v10;
        fprintf(__stderrp, "%s: Couldn't write gain test LTH to %s\n");
LABEL_17:
        free(v5);
        return v11;
      }
    }

    v12 = sub_1000085C4(v5, qword_100025500, a1, &v14);
    if (v12)
    {
      v11 = v12;
      fprintf(__stderrp, "%s: Couldn't read LTH from %s\n");
    }

    else if (qword_100025500 == v14)
    {
      v11 = IOConnectCallStructMethod(dword_100024C28, 0x36u, v5, qword_100025500, 0, 0);
      if (v11)
      {
        fprintf(__stderrp, "%s: Couldn't load raw LTH, return value: 0x%x\n", qword_100024C60, v11);
      }
    }

    else
    {
      fprintf(__stderrp, "%s: Read LTH size is %u, expected %lu\n", qword_100024C60, v14, qword_100025500);
      v11 = 22;
    }

    goto LABEL_17;
  }

  fprintf(__stderrp, "%s: Couldn't allocate memory for LTH\n", qword_100024C60);
  return 12;
}

uint64_t sub_100007974(char *a1)
{
  v2 = malloc_type_malloc(0x300000uLL, 0x5D9A7B14uLL);
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  outputStructCnt = 3145728;
  v4 = IOConnectCallStructMethod(dword_100024C28, 0x37u, 0, 0, v2, &outputStructCnt);
  if (!v4)
  {
    if (sub_100008A2C(v3, 0x300000uLL, a1))
    {
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }
  }

  free(v3);
  return v4;
}

uint64_t sub_100007A28(char *a1, int a2)
{
  v4 = 3758097085;
  v5 = malloc_type_malloc(0x300000uLL, 0x12C6BAAEuLL);
  if (v5)
  {
    v6 = v5;
    v8 = -1431655766;
    if (sub_1000085C4(v5, 0x300000uLL, a1, &v8))
    {
      v4 = 3758097098;
    }

    else if (v8 == 3145728)
    {
      if (a2)
      {
        ++v6[4096];
      }

      v4 = IOConnectCallStructMethod(dword_100024C28, 0x38u, v6, 0x300000uLL, 0, 0);
    }

    else
    {
      v4 = 3758097090;
    }

    free(v6);
  }

  return v4;
}

uint64_t sub_100007AF8(char *a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v2;
  v12 = v2;
  *&__big_len[1] = v2;
  v10 = v2;
  __little = xmmword_10001CCF0;
  v14 = 0x42030701033DCELL;
  v15 = 4;
  v3 = malloc_type_malloc(0x8000uLL, 0x173544ABuLL);
  if (v3)
  {
    v4 = v3;
    __big_len[0] = -1431655766;
    if (sub_1000085C4(v3, 0x8000uLL, a1, __big_len))
    {
      fprintf(__stderrp, "%s: readFile of %s failed (%d)");
    }

    else
    {
      v6 = memmem(v4, __big_len[0], &__little, 0x19uLL);
      if (v6)
      {
        if (v6 + 25 - v4 < (__big_len[0] - 64))
        {
          v7 = *(v6 + 41);
          *&__big_len[1] = *(v6 + 25);
          v10 = v7;
          v8 = *(v6 + 73);
          v11 = *(v6 + 57);
          v12 = v8;
          free(v4);
          return IOConnectCallStructMethod(dword_100024C28, 0x3Bu, &__big_len[1], 0x40uLL, 0, 0);
        }

        fprintf(__stderrp, "%s: found sik_pub_key_prefix at bad spot in %s");
      }

      else
      {
        fprintf(__stderrp, "%s: couldn't find sik_pub_key_prefix in %s");
      }
    }

    free(v4);
  }

  else
  {
    fprintf(__stderrp, "%s: could not allocate buffer for scrt", qword_100024C60);
  }

  fprintf(__stderrp, "%s: hilo_get_sik_pub_key failed", qword_100024C60);
  return 3758097098;
}

uint64_t sub_100007CC0(int a1, int a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0;
  if (sub_10000919C(&v10, &v9, 0x8000uLL, a2))
  {
    v3 = v9 + 176;
    v4 = malloc_type_malloc(v9 + 176, 0x8A8388ADuLL);
    v5 = v4;
    if (v4)
    {
      lth_transfer_attestation = hilo_get_lth_transfer_attestation(v4, v10, v9);
      if (lth_transfer_attestation)
      {
        v7 = lth_transfer_attestation;
        fprintf(__stderrp, "%s: hilo_get_lth_transfer_attestation failed: 0x%x\n");
      }

      else if (v3 == write(a1, v5, v3))
      {
        v7 = 0;
      }

      else
      {
        v7 = 3758097084;
        fprintf(__stderrp, "%s: can't write attestation (to outfile)\n");
      }
    }

    else
    {
      v7 = 3758097084;
      fprintf(__stderrp, "%s: malloc for attestation (%lu) failed\n");
    }
  }

  else
  {
    v7 = 3758097084;
    fprintf(__stderrp, "%s: can't read in scrt\n", qword_100024C60);
    v5 = 0;
  }

  if (v10)
  {
    free(v10);
  }

  if (v5)
  {
    free(v5);
  }

  return v7;
}

uint64_t sub_100007E30(int a1, int a2, int a3, int a4)
{
  v18 = 0;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  v14 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0;
  if (sub_10000919C(&v18, &v16, 0x8000uLL, a2))
  {
    if ((sub_10000919C(&v17, &v15, 0x80B0uLL, a3) & 1) == 0)
    {
      fprintf(__stderrp, "%s: can't read in attestation\n", qword_100024C60);
    }

    if ((a4 & 0x80000000) == 0 && (sub_10000919C(&v14, &v13, 0x4000uLL, a4) & 1) == 0)
    {
      fprintf(__stderrp, "%s: can't read in LTH transfer manifest\n", qword_100024C60);
    }

    v7 = v16 + 3145856;
    v8 = malloc_type_malloc(v16 + 3145856, 0xA8F52F08uLL);
    v9 = v8;
    if (v8)
    {
      lth_transfer_message_with_manifest = hilo_get_lth_transfer_message_with_manifest(v8, v18, v16, v17, v15, v14, v13);
      if (lth_transfer_message_with_manifest)
      {
        v11 = lth_transfer_message_with_manifest;
        fprintf(__stderrp, "%s: hilo_get_lth_transfer_message_with_manifest failed: 0x%x\n");
      }

      else if (v7 == write(a1, v9, v7))
      {
        v11 = 0;
      }

      else
      {
        v11 = 3758097084;
        fprintf(__stderrp, "%s: couldn't write out LTH transfer message\n");
      }
    }

    else
    {
      v11 = 3758097084;
      fprintf(__stderrp, "%s: malloc for message (%lu) failed\n");
    }
  }

  else
  {
    v11 = 3758097084;
    fprintf(__stderrp, "%s: can't read in scrt\n", qword_100024C60);
    v9 = 0;
  }

  if (v18)
  {
    free(v18);
  }

  if (v17)
  {
    free(v17);
  }

  if (v9)
  {
    free(v9);
  }

  if (v14)
  {
    free(v14);
  }

  return v11;
}

uint64_t sub_100008058(int a1)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0;
  if (sub_10000919C(&v4, &v3, 0x308080uLL, a1))
  {
    lth_transfer_message = hilo_load_lth_transfer_message(v4, v3);
  }

  else
  {
    fprintf(__stderrp, "%s: can't read in message\n", qword_100024C60);
    lth_transfer_message = 3758097084;
  }

  if (v4)
  {
    free(v4);
  }

  return lth_transfer_message;
}

uint64_t sub_1000080EC(int a1, int a2, int a3)
{
  __nbyte = 0xAAAAAAAAAAAAAAAALL;
  __buf = 0;
  if (sub_10000919C(&__buf, &__nbyte, 0x80B0uLL, a2))
  {
    v5 = __buf;
    if (a3 == 2)
    {
      ++*(__buf + 112);
    }

    else if (a3 == 1)
    {
      ++*(__buf + 48);
    }

    else
    {
      if (a3)
      {
        fprintf(__stderrp, "%s: unknown corruption type %d\n");
        goto LABEL_13;
      }

      ++*__buf;
      v5 = __buf;
    }

    v6 = __nbyte;
    if (v6 == write(a1, v5, __nbyte))
    {
      v7 = 1;
      goto LABEL_14;
    }

    fprintf(__stderrp, "%s: couldn't write out attestation\n");
  }

  else
  {
    fprintf(__stderrp, "%s: can't read in attestation\n");
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  if (__buf)
  {
    free(__buf);
  }

  return v7;
}

BOOL sub_10000826C()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  v0 = IOConnectCallScalarMethod(dword_100024C28, 0x42u, 0, 0, 0, 0);
  if (v0)
  {
    fprintf(__stderrp, "%s: purge system token failed: 0x%x", qword_100024C60, v0);
  }

  return v0 == 0;
}

BOOL sub_1000082EC(_BYTE *a1)
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  input = string_to_handle(a1);
  return IOConnectCallScalarMethod(dword_100024C28, 0x46u, &input, 1u, 0, 0) == 0;
}

uint64_t sub_100008350(unsigned int a1, unsigned int a2)
{
  input[0] = a1;
  input[1] = a2;
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  return IOConnectCallScalarMethod(dword_100024C28, 0x52u, input, 2u, 0, 0);
}

BOOL sub_1000083CC(unsigned int a1, int a2, unsigned int a3)
{
  if (a2)
  {
    input[0] = a1;
    input[1] = a3;
    v4 = IOConnectCallScalarMethod(dword_100024C28, 0x5Cu, input, 2u, 0, 0);
  }

  else
  {
    output = 0;
    input[0] = a1;
    outputCnt = 1;
    v5 = IOConnectCallScalarMethod(dword_100024C28, 0x5Du, input, 1u, &output, &outputCnt);
    if (outputCnt != 1)
    {
      sub_100013298();
    }

    v4 = v5;
    if (!v5)
    {
      printf("Slot %u provisional: %d, used: %d\n", a1, output & 1, (output >> 1) & 1);
    }
  }

  return v4 == 0;
}

void sub_100008514()
{
  if (dword_1000254C8)
  {
    IOObjectRelease(dword_1000254C8);
    dword_1000254C8 = 0;
  }

  _exit(-1);
}

void sub_100008540(int a1, io_iterator_t iterator)
{
  v2 = IOIteratorNext(iterator);
  if (v2)
  {
    v3 = v2;
    if (!IOServiceOpen(v2, mach_task_self_, 0, &dword_100024C28))
    {
      byte_1000254B1 = 1;
      IOObjectRelease(v3);
      v4 = qword_1000254B8;

      CFRunLoopStop(v4);
    }
  }
}

uint64_t sub_1000085C4(void *a1, unint64_t a2, char *a3, _DWORD *a4)
{
  if (!a1 || !a3 || !a4)
  {
    fprintf(__stderrp, "%s: invalid argument\n", a3);
    return 22;
  }

  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v8;
  *v19.st_qspare = v8;
  v19.st_birthtimespec = v8;
  *&v19.st_size = v8;
  v19.st_mtimespec = v8;
  v19.st_ctimespec = v8;
  *&v19.st_uid = v8;
  v19.st_atimespec = v8;
  *&v19.st_dev = v8;
  v9 = open(a3, 0);
  if (v9 < 0)
  {
    v12 = __stderrp;
    v13 = qword_100024C60;
    v14 = __error();
    v15 = strerror(*v14);
    v16 = __error();
    fprintf(v12, "%s: can't open '%s', errno: %s(%d)\n", v13, a3, v15, *v16);
    return 5;
  }

  v10 = v9;
  if (fstat(v9, &v19) < 0)
  {
    fprintf(__stderrp, "%s: can't stat '%s'\n");
    return *__error();
  }

  if (v19.st_size < 0)
  {
    fprintf(__stderrp, "%s: unexpected file size (size %lld)", v19.st_size);
    return 22;
  }

  if (v19.st_size > a2)
  {
    fprintf(__stderrp, "%s: '%s' is too large for buffer", qword_100024C60, a3);
    return 12;
  }

  v17 = read(v10, a1, v19.st_size);
  if (v17 == v19.st_size)
  {
    v18 = v17;
    result = 0;
    *a4 = v18;
    return result;
  }

  fprintf(__stderrp, "%s: can't read '%s'\n");
  return *__error();
}

BOOL sub_10000879C(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, uint32_t a5, unsigned int a6)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  input = v6;
  v26 = v6;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v23[26] = v6;
  v23[27] = v6;
  v23[24] = v6;
  v23[25] = v6;
  v23[22] = v6;
  v23[23] = v6;
  v23[20] = v6;
  v23[21] = v6;
  v23[18] = v6;
  v23[19] = v6;
  v23[16] = v6;
  v23[17] = v6;
  v23[14] = v6;
  v23[15] = v6;
  v23[12] = v6;
  v23[13] = v6;
  v23[10] = v6;
  v23[11] = v6;
  v23[8] = v6;
  v23[9] = v6;
  v23[6] = v6;
  v23[7] = v6;
  v23[4] = v6;
  v23[5] = v6;
  v23[2] = v6;
  v23[3] = v6;
  v23[0] = v6;
  v23[1] = v6;
  v22 = -86;
  if (!a1)
  {
    sub_100013298();
  }

  v11 = a2;
  v12 = a1;
  Img4DecodeInit(a1, a2, v23);
  if (v13 || !sub_10001309C(v23, &v22) || v22 != (a3 != 0))
  {
    return 0;
  }

  if (!a3)
  {
    input = v11;
    *&v26 = 0;
    goto LABEL_15;
  }

  if (v11 > 0x2000000)
  {
    return 0;
  }

  *&input = v11 + 24;
  if (a4 > 0x40000)
  {
    return 0;
  }

  *(&input + 1) = a4 + 24;
  *&v26 = 1916;
  v14 = v11 + a4 + 24 + 1940;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (!sub_100013234(v12, v11, v23, v15) || (memcpy(v16 + 6, v12, v11), v17 = (v16 + v11 + 24), !sub_100013160(v23, (v17 + a4 + 24))) || (Img4DecodeInit(a3, a4, v23), v18) || !sub_100013234(a3, a4, v23, v17))
  {
    v20 = 0;
    v12 = v16;
LABEL_18:
    free(v12);
    return v20;
  }

  memcpy(v17 + 6, a3, a4);
  v11 = v14;
  v12 = v16;
LABEL_15:
  *(&v26 + 1) = a6;
  v19 = IOConnectCallMethod(dword_100024C28, a5, &input, 4u, v12, v11, 0, 0, 0, 0);
  v20 = v19 == 0;
  if (v19)
  {
    fprintf(__stderrp, "%s: load fw returned 0x%x\n", qword_100024C60, v19);
  }

  if (a3)
  {
    goto LABEL_18;
  }

  return v20;
}

uint64_t sub_100008A2C(const void *a1, size_t a2, char *a3)
{
  if (a1 && a3)
  {
    v5 = open(a3, 1538, 288);
    if (v5 < 0)
    {
      fprintf(__stderrp, "%s: can't open '%s' for writing\n");
    }

    else
    {
      v6 = v5;
      v7 = write(v5, a1, a2);
      if ((v7 & 0x8000000000000000) == 0 && v7 == a2)
      {
        close(v6);
        return 0;
      }

      fprintf(__stderrp, "%s: can't write '%s'\n");
    }

    return *__error();
  }

  else
  {
    fprintf(__stderrp, "%s: invalid argument\n", qword_100024C60);
    return 22;
  }
}

uint64_t sub_100008B2C()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  result = IOConnectCallMethod(dword_100024C28, 0xBu, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    return fprintf(__stderrp, "%s: L4 panic notification returned 0x%x\n", qword_100024C60, result);
  }

  return result;
}

uint64_t sub_100008BA8()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  result = IOConnectCallMethod(dword_100024C28, 0xCu, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    return fprintf(__stderrp, "%s: SEP/OS panic notification returned 0x%x\n", qword_100024C60, result);
  }

  return result;
}

uint64_t sub_100008C24()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  result = IOConnectCallMethod(dword_100024C28, 0x45u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    return fprintf(__stderrp, "%s: SEP/OS panic request returned 0x%x\n", qword_100024C60, result);
  }

  return result;
}

uint64_t sub_100008CA0(const char *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v2)
  {
    fprintf(__stderrp, "%s: Warning: can't find /chosen\n", qword_100024C60);
    return 1;
  }

  v3 = v2;
  v4 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v5 = IORegistryEntrySearchCFProperty(v3, "IODeviceTree", v4, kCFAllocatorDefault, 0);
  if (!v5)
  {
    v8 = 1;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFDataGetTypeID())
  {
    fprintf(__stderrp, "%s: Warning: Incorrect %s property value type\n");
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (CFDataGetLength(v6) != 4)
  {
    fprintf(__stderrp, "%s: Warning: Incorrect value size for %s property\n");
    goto LABEL_10;
  }

  v8 = *CFDataGetBytePtr(v6) != 0;
LABEL_11:
  CFRelease(v6);
LABEL_12:
  IOObjectRelease(v3);
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t sub_100008E18()
{
  if (byte_1000254E0)
  {
    return 1;
  }

  outputStructCnt = 10;
  v1 = IOConnectCallStructMethod(dword_100024C28, 0x39u, 0, 0, &dword_1000254E4, &outputStructCnt);
  v0 = v1 == 0;
  if (v1)
  {
    fprintf(__stderrp, "%s: HiloGetParams failed: %d\n", qword_100024C60, v1);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = (dword_1000254E4 + 1) >> 1;
    if (!byte_1000254EC)
    {
      v4 = dword_1000254E4;
    }

    dword_1000254F4 = unk_1000254E8 * dword_1000254E4;
    unk_1000254F8 = v4 * unk_1000254E8;
    dword_1000254F0[0] = v4 * unk_1000254E8;
    do
    {
      v3 += dword_1000254F0[v2++];
    }

    while (v2 != 3);
    qword_100025500 = 4 * v3;
    qword_1000254D8 = 4 * v3 + 32;
    byte_1000254E0 = 1;
  }

  return v0;
}

void sub_100008F64(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2))
  {
    v2 = IOConnectCallScalarMethod(dword_100024C28, 0x35u, 0, 0, 0, 0);
    if (v2)
    {
      sub_100014B90(v3, v2);
    }

    _xpc_transaction_exit_clean();
  }
}

uint64_t sub_100009028()
{
  if (!dword_100024C28)
  {
    sub_100013298();
  }

  outputStructCnt = 2277;
  v0 = malloc_type_malloc(0x8E5uLL, 0x1FC058ADuLL);
  if (v0)
  {
    v1 = v0;
    if (IOConnectCallStructMethod(dword_100024C28, 0x47u, 0, 0, v0, &outputStructCnt))
    {
      fprintf(__stderrp, "%s: get endpoint info returned 0x%x\n");
    }

    else
    {
      v3 = outputStructCnt / 9;
      if (outputStructCnt == 9 * (outputStructCnt / 9))
      {
        if (outputStructCnt >= 9)
        {
          v5 = v1 + 4;
          do
          {
            printf("Endpoint %d name '%c%c%c%c' ool_in_pages [%u,%u] ool_out_pages [%u,%u]\n", *v5, *(v5 - 1), *(v5 - 2), *(v5 - 3), *(v5 - 4), v5[1], v5[2], v5[3], v5[4]);
            v5 += 9;
            --v3;
          }

          while (v3);
        }

        v2 = 1;
        goto LABEL_9;
      }

      fprintf(__stderrp, "%s: unexpected result size %lu\n");
    }

    v2 = 0;
LABEL_9:
    free(v1);
    return v2;
  }

  return 0;
}

uint64_t sub_10000919C(void *a1, void *a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v9 = 0;
  v10 = -256;
  do
  {
    if (v10 + 256 > a3)
    {
      fprintf(__stderrp, "input file too large in fd_to_buf (max size %zu)\n");
      goto LABEL_12;
    }

    v11 = malloc_type_realloc(v9, v10 + 512, 0x100004077774924uLL);
    if (!v11)
    {
      fprintf(__stderrp, "realloc failed in fd_to_buf for size %zu\n");
LABEL_12:
      if (!v9)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v12 = v11;
    v13 = read(a4, &v11[v10 + 256], 0x100uLL);
    if (v13 == -1)
    {
      fwrite("read failed in fd_to_buf\n", 0x19uLL, 1uLL, __stderrp);
LABEL_15:
      v9 = v12;
LABEL_16:
      free(v9);
      return 0;
    }

    v10 += 256;
    v9 = v12;
  }

  while (v13 > 255);
  if (v13 + v10 > a3)
  {
    fprintf(__stderrp, "input file too large in fd_to_buf (max size %zu)\n", a3);
    goto LABEL_15;
  }

  *a2 = v13 + v10;
  *a1 = v12;
  bzero(&v12[v13 + v10], 256 - v13);
  return 1;
}

const char *sub_100009338()
{
  if (byte_100025508)
  {
    return "/mnt7";
  }

  else
  {
    return "/private/xarts";
  }
}

uint64_t sub_10000935C(char *a1, size_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    sub_100013298();
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v7;
  *&out[16] = v7;
  memset(uu, 0, sizeof(uu));
  v13.tv_sec = 0;
  v13.tv_nsec = 0;
  if (gethostuuid(uu, &v13) < 0)
  {
    v9 = __stderrp;
    v10 = __error();
    v11 = strerror(*v10);
    fprintf(v9, "ERR: could not get the machine's unique identifier, reason: %s\n", v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100014DA4();
    }

    return 14;
  }

  else
  {
    uuid_unparse_upper(uu, out);
    if (a4)
    {
      v8 = snprintf(a1, a2, "%s/%s.gl");
    }

    else
    {
      v8 = snprintf(a1, a2, "%s.gl");
    }

    if (v8 < 0)
    {
      return *__error();
    }

    else if (v8 >= a2)
    {
      return 28;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000094CC()
{
  result = 0;
  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1000094E0(char *a1)
{
  __argv[0] = "/bin/bash";
  __argv[1] = "-c";
  __argv[2] = a1;
  __argv[3] = 0;
  v2 = -1431655766;
  v3 = -1;
  result = posix_spawnp(&v2, "/bin/bash", 0, 0, __argv, 0);
  if (!result)
  {
      ;
    }

    return v3;
  }

  return result;
}

uint64_t sub_100009584@<X0>(_BYTE *a1@<X8>)
{
  values = @"com.apple.driver.AppleSEPManager";
  v2 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v3 = OSKextCopyLoadedKextInfo();
  Value = CFDictionaryGetValue(v3, @"com.apple.driver.AppleSEPManager");
  CFRelease(v2);
  v5 = CFDictionaryGetValue(Value, @"OSBundleUUID");
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  BytePtr = CFDataGetBytePtr(v5);
  uuid_unparse(BytePtr, out);
  CFRelease(v3);
  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v50 = v8;
  v51 = v8;
  v49[1] = v8;
  v49[2] = v8;
  v48 = v8;
  v49[0] = v8;
  v47 = v8;
  sub_100009BDC(&v47);
  v9 = sub_10000BA4C(&v48);
  v10 = sub_10000BA4C(v9);
  strlen(out);
  v11 = sub_10000BA4C(v10);
  v12 = sub_10000BA4C(v11);
  sub_10000BA4C(v12);
  std::stringbuf::str();
  if ((SBYTE7(v32) & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = sub_1000094E0(v13);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_10000BA4C(&std::cout);
    v15 = std::ostream::operator<<();
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    sub_100009E80(a1, "");
  }

  else
  {
    v46 = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v20;
    v45 = v20;
    v42 = v20;
    v43 = v20;
    v40 = v20;
    v41 = v20;
    v38 = v20;
    v39 = v20;
    v36 = v20;
    v37 = v20;
    *v34 = v20;
    v35 = v20;
    v33[1] = v20;
    v33[2] = v20;
    v32 = v20;
    v33[0] = v20;
    *__p = v20;
    sub_100009BDC(__p);
    v21 = sub_10000BA4C(&v32);
    v22 = sub_10000BA4C(v21);
    v23 = sub_10000BA4C(v22);
    v24 = sub_10000BA4C(v23);
    sub_10000BA4C(v24);
    std::stringbuf::str();
    if (v30 >= 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29;
    }

    v26 = sub_1000094E0(v25);
    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v26)
    {
      v27 = "";
    }

    else
    {
      v27 = "/tmp/sep_manager_coverage.profdata";
    }

    sub_100009E80(a1, v27);
    *&v32 = v19;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[1]);
    }

    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  *&v47 = v17;
  *(&v47 + *(v17 - 24)) = v18;
  *&v48 = v19;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(*(&v50 + 1));
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100009B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100009F38(&a16);
  sub_100009F38(&a55);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100009BDC(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
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
  sub_10000B888((a1 + 3), 24);
  return a1;
}

void sub_100009E58(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_100009E80(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000B7CC();
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

uint64_t sub_100009F38(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

std::string *sub_10000A08C@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
  }

  v6 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v7 = v6[size--];
    if (v7 == 47)
    {
      v8 = size + 1;
      return std::string::basic_string(a2, __str, v8, 0xFFFFFFFFFFFFFFFFLL, &v10);
    }
  }

  v8 = 0;
  return std::string::basic_string(a2, __str, v8, 0xFFFFFFFFFFFFFFFFLL, &v10);
}

void sub_10000A0F4(uint64_t a1, const char *a2)
{
  memset(&v50, 0, sizeof(v50));
  memset(__b, 170, sizeof(__b));
  sub_10000AB18(__b, a1);
  v4 = embeddedtest_results_create(1);
  v5 = embeddedtest_test_case_result_create(1, "AppleSEPManager Code Coverage");
  v6 = v5;
  if (__b[17])
  {
    v31 = v5;
LABEL_3:
    while (1)
    {
      std::ios_base::getloc((__b + *(__b[0] - 3)));
      v7 = std::locale::use_facet(v34, &std::ctype<char>::id);
      (v7->__vftable[2].~facet_0)(v7, 10);
      std::locale::~locale(v34);
      v8 = sub_10000BDF0(__b);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v50;
      }

      else
      {
        v10 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      if (size >= 23)
      {
        v11 = v10 + size;
        v12 = v10;
        while (1)
        {
          v13 = memchr(v12, 83, size - 22);
          if (!v13)
          {
            break;
          }

          if (*v13 == 0x2F73656372756F53 && *(v13 + 1) == 0x504553656C707041 && *(v13 + 15) == 0x726567616E614D50)
          {
            if (v13 != v11 && v13 - v10 != -1)
            {
              v49 = 0xAAAAAAAAAAAAAAAALL;
              *&v16 = 0xAAAAAAAAAAAAAAAALL;
              *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v47 = v16;
              v48 = v16;
              v45 = v16;
              v46 = v16;
              v43 = v16;
              v44 = v16;
              v41 = v16;
              v42 = v16;
              v39 = v16;
              v40 = v16;
              v37 = v16;
              v38 = v16;
              v36[1] = v16;
              v36[2] = v16;
              v35 = v16;
              v36[0] = v16;
              *&v34[0].__locale_ = v16;
              sub_10000ACE8(v34, &v50, 24);
              memset(&v33[1], 0, sizeof(std::string));
              sub_10000AFA0(v34);
              if (SHIBYTE(v33[1].__r_.__value_.__r.__words[2]) < 0)
              {
                sub_10000B728(&__str, v33[1].__r_.__value_.__l.__data_, v33[1].__r_.__value_.__l.__size_);
              }

              else
              {
                __str = v33[1];
              }

              sub_10000A08C(&__str, v33);
              if (SHIBYTE(v33[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v33[1].__r_.__value_.__l.__data_);
              }

              v33[1] = v33[0];
              *(&v33[0].__r_.__value_.__s + 23) = 0;
              v33[0].__r_.__value_.__s.__data_[0] = 0;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              std::istream::operator>>();
              std::istream::operator>>();
              v17 = sub_10000BA4C(&std::cout);
              v18 = sub_10000BA4C(v17);
              v19 = sub_10000BA4C(v18);
              std::ios_base::getloc((v19 + *(*v19 - 24)));
              v20 = std::locale::use_facet(v33, &std::ctype<char>::id);
              (v20->__vftable[2].~facet_0)(v20, 10);
              std::locale::~locale(v33);
              std::ostream::put();
              std::ostream::flush();
              if (SHIBYTE(v33[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v33[1].__r_.__value_.__l.__data_);
              }

              v34[0].__locale_ = v30;
              *(&v34[0].__locale_ + *(v30 - 3)) = v29;
              *&v35 = v28;
              if (SHIBYTE(v38) < 0)
              {
                operator delete(*(&v37 + 1));
              }

              std::locale::~locale(v36);
              std::iostream::~basic_iostream();
              std::ios::~ios();
            }

            goto LABEL_3;
          }

          v12 = (v13 + 1);
          size = v11 - v12;
          if (v11 - v12 < 23)
          {
            goto LABEL_3;
          }
        }
      }
    }

    v6 = v31;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((__b + *(__b[0] - 3)), *(&__b[4] + *(__b[0] - 3)) | 4);
    }

    embeddedtest_test_case_result_fail(v31, "Did not see a valid file");
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    embeddedtest_test_case_result_fail(v5, "Unable to open %s", a1);
  }

  if (embeddedtest_test_case_result_did_pass(v6))
  {
    v21 = sub_10000BA4C(&std::cout);
    strlen(a2);
    v22 = sub_10000BA4C(v21);
  }

  else
  {
    v23 = sub_10000BA4C(&std::cout);
    strlen(a2);
    v24 = sub_10000BA4C(v23);
    v22 = sub_10000BA4C(v24);
  }

  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v25 = std::locale::use_facet(v34, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(v34);
  std::ostream::put();
  std::ostream::flush();
  embeddedtest_results_add_test_case(v4, v6);
  embeddedtest_test_case_result_free(v6);
  if (embeddedtest_results_save_to_file(v4, a2))
  {
    v26 = sub_10000BA4C(&std::cout);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(v34, &std::ctype<char>::id);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(v34);
    std::ostream::put();
    std::ostream::flush();
  }

  embeddedtest_results_free(v4);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_10000AA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_100009F38(&a34);
  std::ios::~ios();
  if (a72 < 0)
  {
    operator delete(*(v73 + 288));
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10000AB18(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10000ACB0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10000ACE8(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), const std::string *a2, int a3))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_10000BFEC((a1 + 3), a2, a3);
  return a1;
}

void sub_10000AF78(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10000B1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x10000B1ACLL);
  }

  __cxa_rethrow();
}

void sub_10000B29C(const char *a1)
{
  memset(v35, 170, sizeof(v35));
  sub_100009584(v35);
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v2;
  v33 = v2;
  v30 = v2;
  v31 = v2;
  v28 = v2;
  v29 = v2;
  v26 = v2;
  v27 = v2;
  v24 = v2;
  v25 = v2;
  *v22 = v2;
  v23 = v2;
  v21[1] = v2;
  v21[2] = v2;
  v20 = v2;
  v21[0] = v2;
  v19 = v2;
  sub_100009BDC(&v19);
  v3 = sub_10000BA4C(&v20);
  v4 = sub_10000BA4C(v3);
  v5 = sub_10000BA4C(v4);
  v6 = sub_10000BA4C(v5);
  v7 = sub_10000BA4C(v6);
  v8 = sub_10000BA4C(v7);
  sub_10000BA4C(v8);
  std::stringbuf::str();
  if (v18 >= 0)
  {
    locale = &v17;
  }

  else
  {
    locale = v17.__locale_;
  }

  v10 = sub_1000094E0(locale);
  v11 = v10;
  if (v18 < 0)
  {
    operator delete(v17.__locale_);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
LABEL_6:
    sub_10000BA4C(&std::cout);
    v12 = std::ostream::operator<<();
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v17, &std::ctype<char>::id);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_10;
  }

  sub_100009E80(__p, "/tmp/sep_manager_report.txt");
  sub_10000A0F4(__p, a1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_10:
  *&v20 = v14;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v35[2]) < 0)
  {
    operator delete(v35[0]);
  }
}

void sub_10000B5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100009F38(&a21);
  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000B660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void *sub_10000B728(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000B7CC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10000B7E4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000B840(exception, a1);
}

std::logic_error *sub_10000B840(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10000B888(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000B944(a1);
  return a1;
}

void sub_10000B91C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000B944(uint64_t a1)
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

uint64_t sub_10000BA4C(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10000BB94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10000BB74);
}

uint64_t sub_10000BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000B7CC();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
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

void sub_10000BDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000BF5C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x10000BF1CLL);
  }

  __cxa_rethrow();
}

uint64_t sub_10000BFEC(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_10000B944(a1);
  return a1;
}

void sub_10000C098(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t string_to_handle(_BYTE *a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = 4;
    do
    {
      v3 = *a1;
      if (*a1)
      {
        ++a1;
      }

      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = 32;
      }

      v1 = ((v1 << 8) + v4);
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t sepTesting(int a1, FILE *a2, unsigned int a3, unsigned int a4, FILE *a5, unsigned int a6, unsigned int a7, _BYTE *a8)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (a2 | a5)
      {
        fwrite("Test data can only be passed in or out of a single test\n", 0x38uLL, 1uLL, __stderrp);
      }

      else
      {
        input[0] = 0;
        outputCnt[0] = 1;
        outputStruct = malloc_type_malloc(0x100000uLL, 0x22802D3CuLL);
        output = 0x100000;
        if (IOConnectCallMethod(dword_100024C28, 0x1Bu, 0, 0, 0, 0, input, outputCnt, outputStruct, &output))
        {
          if (outputStruct)
          {
            free(outputStruct);
          }

          printf("IOKit returned %x for kSEP_RunAll\n");
          return 0;
        }

        if (output)
        {
          sub_10000D090(outputStruct, input[0], 0);
          if (!outputStruct)
          {
            return 1;
          }

          v24 = outputStruct;
LABEL_47:
          free(v24);
          return 1;
        }
      }

      return 0;
    }

    if (a1 == 3)
    {
      if (a6)
      {
        if (!a8)
        {
          sub_100013298();
        }

        sub_10000C7DC(1);
        v34[0] = HIBYTE(a7);
        v34[1] = BYTE2(a7);
        v34[2] = BYTE1(a7);
        v34[3] = a7;
        v34[4] = 0;
        __s2[0] = HIBYTE(a6);
        __s2[1] = BYTE2(a6);
        __s2[2] = BYTE1(a6);
        __s2[3] = a6;
        __s2[4] = 0;
        v14 = sub_10000CF60(v34);
        if (v14)
        {
          LODWORD(input[0]) = 0;
          test_cases = embeddedtest_test_suite_get_test_cases(v14, input);
          if (!LODWORD(input[0]))
          {
            goto LABEL_41;
          }

          v16 = test_cases;
          v17 = 0;
          while (1)
          {
            v18 = *(v16 + 8 * v17);
            name = embeddedtest_test_case_get_name(v18);
            if (!strcmp(name, __s2))
            {
              break;
            }

            if (++v17 >= LODWORD(input[0]))
            {
              goto LABEL_41;
            }
          }

          if (v18)
          {
            if ((embeddedtest_test_case_get_flags(v18) & 2) != 0)
            {
              input[0] = a3;
              fseeko(a2, 0, 2);
              v25 = ftello(a2);
              fseeko(a2, 0, 0);
              if (v25 <= 0x100000)
              {
                output = 0xAAAAAAAAAAAAAAAALL;
                v26 = malloc_type_malloc(v25, 0x1E9E727uLL);
                if (fread(v26, 1uLL, v25, a2) == v25)
                {
                  outputCnt[0] = 1;
                  IOConnectCallMethod(dword_100024C28, 0x16u, input, 1u, v26, v25, &output, outputCnt, 0, 0);
                }

                else
                {
                  fwrite("Failed to read input data file\n", 0x1FuLL, 1uLL, __stderrp);
                }

                if (v26)
                {
                  free(v26);
                }
              }

              else
              {
                fwrite("Test data input too big\n", 0x18uLL, 1uLL, __stderrp);
              }
            }

            input[0] = a7;
            input[1] = a6;
            v38 = 0;
            v32 = 1;
            if (!IOConnectCallMethod(dword_100024C28, 0x1Du, input, 2u, 0, 0, &v38, &v32, 0, 0))
            {
              if ((embeddedtest_test_case_get_flags(v18) & 4) != 0)
              {
                output = 0xAAAAAAAAAAAAAAAALL;
                v27 = malloc_type_malloc(0x100000uLL, 0xAF3095CuLL);
                *outputCnt = 0x100000;
                v36 = 1;
                if (!IOConnectCallMethod(dword_100024C28, 0x17u, &v37, 0, 0, 0, &output, &v36, v27, outputCnt))
                {
                  v28 = fwrite(v27, 1uLL, *outputCnt, a5);
                  if (v28 != *outputCnt)
                  {
                    fwrite("Failed to write output data file\n", 0x21uLL, 1uLL, __stderrp);
                  }
                }

                if (v27)
                {
                  free(v27);
                }
              }

              v29 = malloc_type_malloc(0x100000uLL, 0x7C9CC136uLL);
              output = 0x100000;
              v30 = IOConnectCallMethod(dword_100024C28, 0x1Eu, 0, 0, 0, 0, 0, 0, v29, &output);
              v20 = v30 == 0;
              if (v30)
              {
                v31 = v30;
                if (v29)
                {
                  free(v29);
                }

                printf("IOKit returned %x for kSEP_GetResult\n", v31 & 0x3FFF);
              }

              else
              {
                sub_10000D090(v29, 1, a8);
                if (v29)
                {
                  free(v29);
                }
              }

              return v20;
            }

            printf("IOKit returned %x for kSEP_RunHandle\n");
          }

          else
          {
LABEL_41:
            printf("%s/%s does not appear to be a supported test category\n");
          }
        }

        else
        {
          sub_10000CFDC();
          printf("%s does not appear to be a supported test category\nCategories Found: %s\n");
        }

        return 0;
      }

      if (!a8)
      {
        sub_100013298();
      }

      sub_10000C7DC(0);
      LOBYTE(outputCnt[0]) = HIBYTE(a7);
      BYTE1(outputCnt[0]) = BYTE2(a7);
      BYTE2(outputCnt[0]) = BYTE1(a7);
      HIBYTE(outputCnt[0]) = a7;
      LOBYTE(outputCnt[1]) = 0;
      if (sub_10000CF60(outputCnt))
      {
        v23 = malloc_type_malloc(0x100000uLL, 0x9320E45BuLL);
        input[0] = 0x100000;
        output = a7;
        if (IOConnectCallMethod(dword_100024C28, 0x1Cu, &output, 1u, 0, 0, 0, 0, v23, input))
        {
          if (v23)
          {
            free(v23);
          }

          printf("IOKit returned %x for kSEP_RunCat\n");
          return 0;
        }

        if (input[0])
        {
          v20 = 1;
          sub_10000D090(v23, 1, a8);
          if (!v23)
          {
            return v20;
          }

          v24 = v23;
          goto LABEL_47;
        }
      }

      else
      {
        printf("%s does not appear to be a supported test category\n", outputCnt);
        sub_10000CFDC();
        printf("Categories Found: %s\n");
      }

      return 0;
    }

LABEL_16:
    fprintf(__stderrp, "Unsupported testing command (cmd=%d)\n", a1);
    return 0;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      if (a4)
      {
        input[0] = a4;
        return IOConnectCallScalarMethod(dword_100024C28, 0x19u, input, 1u, 0, 0) == 0;
      }

      return 0;
    }

    goto LABEL_16;
  }

  return sub_10000C7DC(1);
}

uint64_t sub_10000C7DC(uint64_t a1)
{
  result = 1;
  if (!qword_100025518)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 1;
    outputStruct = malloc_type_malloc(0x100000uLL, 0xF891195AuLL);
    v29 = 0x100000;
    v4 = IOConnectCallMethod(dword_100024C28, 0x1Au, 0, 0, 0, 0, &output, &outputCnt, outputStruct, &v29);
    if (v4)
    {
      v5 = v4;
      if (outputStruct)
      {
        free(outputStruct);
      }

      printf("IOKit returned %x for kSEP_QueryTests\n", v5 & 0x3FFF);
      return 0;
    }

    if (!v29)
    {
      fwrite("kSEP_QueryTests returned test_suites_size of 0!\n", 0x30uLL, 1uLL, __stderrp);
      return 0;
    }

    v6 = output;
    qword_100025510 = output;
    if (qword_100025518)
    {
      free(qword_100025518);
    }

    qword_100025518 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
    if (!qword_100025518)
    {
      sub_10000D1C4();
    }

    if (qword_100025510)
    {
      v7 = 0;
      v8 = 0;
      v24 = a1;
      v23 = outputStruct;
      do
      {
        v27 = v7;
        v9 = a1;
        v10 = v8;
        v11 = embeddedtest_test_suite_create_from_resume_data(outputStruct + v7);
        v26 = v10;
        *(qword_100025518 + 8 * v10) = v11;
        a1 = v9;
        size = embeddedtest_test_suite_get_size(v11);
        if (v9)
        {
          v25 = size;
          name = embeddedtest_test_suite_get_name(v11);
          printf("Category %s\n", name);
          v28 = 0;
          test_cases = embeddedtest_test_suite_get_test_cases(v11, &v28);
          if (v28)
          {
            v15 = test_cases;
            for (i = 0; i < v28; ++i)
            {
              v17 = *(v15 + 8 * i);
              flags = embeddedtest_test_case_get_flags(v17);
              v19 = 0;
              memset(v38, 0, sizeof(v38));
              v37 = 0u;
              v36 = 0u;
              v35 = 0u;
              v34 = 0u;
              v33 = 0u;
              v32 = 0u;
              v31 = 1701736270;
              do
              {
                if ((testing_flag_enum[v19] & flags) != 0)
                {
                  if (v31 ^ 0x656E6F4E | v32)
                  {
                    __strcat_chk();
                    v20 = (&testing_flag_strings)[v19];
                    __strcat_chk();
                  }

                  else
                  {
                    v21 = (&testing_flag_strings)[v19];
                    __strcpy_chk();
                  }
                }

                ++v19;
              }

              while (v19 != 4);
              v22 = embeddedtest_test_case_get_name(v17);
              printf("\t%s (Flags: %s)\n", v22, &v31);
            }
          }

          a1 = v24;
          size = v25;
          outputStruct = v23;
        }

        v7 = v27 + size;
        v8 = v26 + 1;
      }

      while (v26 + 1 < qword_100025510);
    }

    if (outputStruct)
    {
      free(outputStruct);
    }

    return 1;
  }

  return result;
}

uint64_t sepDebugVar(int a1, _BYTE *a2, void *inputStruct, int64_t a4)
{
  if (a2)
  {
    LODWORD(v6) = 0;
    v7 = 4;
    do
    {
      v8 = *a2;
      if (*a2)
      {
        ++a2;
      }

      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 32;
      }

      v6 = ((v6 << 8) + v9);
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v21 = -1431655766;
    v20 = -86;
    puts("Retrieving old value: ");
    v12 = sub_10000CDCC(v6, inputStruct, &v21, &v20);
    if (v12)
    {
      v10 = v12;
      v13 = __stderrp;
      v14 = "Failed to get debug variable\n";
      v15 = 29;
LABEL_30:
      fwrite(v14, v15, 1uLL, v13);
      return v10;
    }

    v16 = v21 - 1;
    if ((v21 - 1) >= 8 || ((0x8Bu >> v16) & 1) == 0)
    {
      v10 = 3758097090;
      v13 = __stderrp;
      v14 = "Width is invalid";
      v15 = 16;
      goto LABEL_30;
    }

    if (v20 == 1)
    {
      v17 = qword_10001CE28[v16];
      v18 = qword_10001CDE8[v16];
      if (v18 <= a4 && v17 >= a4)
      {
LABEL_35:
        input[0] = v6;
        input[1] = a4;
        v10 = IOConnectCallMethod(dword_100024C28, 0x4Cu, input, 2u, inputStruct, 0x1CuLL, 0, 0, 0, 0);
        if (!v10)
        {
          puts("Successfully set new variable value");
        }

        return v10;
      }
    }

    else
    {
      v17 = qword_10001CE68[v16];
      if (v17 >= a4)
      {
        goto LABEL_35;
      }

      v18 = 0;
    }

    v10 = 3758097090;
    printf("New value is out of range of debug variable [%lld, %lld]\n", v18, v17);
    return v10;
  }

  if (a1 != 7)
  {
    if (a1 == 6)
    {
      input[0] = v6;
      return IOConnectCallMethod(dword_100024C28, 0x4Au, input, 1u, 0, 0, 0, 0, 0, 0);
    }

    else
    {
      v10 = 3758097090;
      fprintf(__stderrp, "Unsupported debug var command (cmd=%d)\n", a1);
    }

    return v10;
  }

  return sub_10000CDCC(v6, inputStruct, 0, 0);
}

uint64_t sub_10000CDCC(uint64_t a1, void *inputStruct, _DWORD *a3, _BYTE *a4)
{
  v14 = 0;
  input = a1;
  output = 0;
  v13 = 0;
  outputCnt = 3;
  v6 = IOConnectCallMethod(dword_100024C28, 0x4Bu, &input, 1u, inputStruct, 0x1CuLL, &output, &outputCnt, 0, 0);
  if (v6)
  {
    return v6;
  }

  v7 = v13;
  v8 = v14;
  if (v13 > 3)
  {
    if (v13 != 4)
    {
      if (v13 == 8)
      {
        if (v14 == 1)
        {
          v9 = "%lld";
        }

        else
        {
          v9 = "0x%llx";
        }

        printf(v9, output);
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_13:
    if (v14 == 1)
    {
      printf("%d");
    }

    else
    {
      printf("0x%llx");
    }

    goto LABEL_16;
  }

  if (v13 == 1 || v13 == 2)
  {
    goto LABEL_13;
  }

LABEL_12:
  fwrite("Width is invalid", 0x10uLL, 1uLL, __stderrp);
LABEL_16:
  putchar(10);
  if (a3)
  {
    *a3 = v7;
  }

  if (a4)
  {
    *a4 = v8;
  }

  return v6;
}

uint64_t sub_10000CF60(const char *a1)
{
  if (!qword_100025510)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(qword_100025518 + 8 * v2);
    name = embeddedtest_test_suite_get_name(v3);
    if (!strcmp(a1, name))
    {
      break;
    }

    if (++v2 >= qword_100025510)
    {
      return 0;
    }
  }

  return v3;
}

char *sub_10000CFDC()
{
  v0 = 3 * qword_100025510;
  v1 = malloc_type_calloc((6 * qword_100025510) | 1, 1uLL, 0x100004077774924uLL);
  if (qword_100025510)
  {
    v2 = 0;
    v3 = 2 * v0;
    do
    {
      name = embeddedtest_test_suite_get_name(*(qword_100025518 + 8 * v2));
      v5 = strncat(v1, name, v3);
      strncat(v5, ", ", v3);
      ++v2;
    }

    while (v2 < qword_100025510);
  }

  return v1;
}

void sub_10000D090(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a2)
  {
    v6 = 0;
    for (i = 0; i != a2; ++i)
    {
      v8 = embeddedtest_results_create_from_resume_data(a1 + v6);
      v6 += embeddedtest_results_get_size(v8);
      embeddedtest_results_test_case_print(v8);
      name = embeddedtest_results_get_name(v8);
      v10 = name;
      for (j = 4; j > 1; *(name + j) = 0)
      {
        if (*(name + --j) != 32)
        {
          break;
        }
      }

      if (embeddedtest_results_did_pass(v8))
      {
        printf("[PASS] %s\n", v10);
      }

      else
      {
        printf("[FAIL] %s\n", v10);
        if (a3)
        {
          *a3 = 0;
        }
      }

      v12 = 0xAAAAAAAAAAAAAAAALL;
      asprintf(&v12, "/tmp/%s_test_results.json", v10);
      embeddedtest_results_save_to_file(v8, v12);
      if (v12)
      {
        free(v12);
      }

      embeddedtest_results_free(v8);
    }
  }
}

uint64_t hilo_get_lth_transfer_attestation(char *outputStruct, const void *a2, size_t a3)
{
  v3 = 3758097090;
  if (outputStruct && a2)
  {
    if (byte_100025524 == 1)
    {
      v7 = dword_100025520;
    }

    else
    {
      v7 = sep_connect();
      dword_100025520 = v7;
      if (!v7)
      {
        return 3758097098;
      }

      byte_100025524 = 1;
    }

    outputStructCnt = 176;
    v3 = IOConnectCallStructMethod(v7, 0x3Cu, 0, 0, outputStruct, &outputStructCnt);
    if (!v3)
    {
      memcpy(outputStruct + 176, a2, a3);
    }
  }

  return v3;
}

uint64_t hilo_get_lth_transfer_message_with_manifest(char *outputStruct, const void *a2, size_t a3, void *inputStruct, size_t inputStructCnt, uint64_t a6, uint64_t a7)
{
  v7 = 3758097090;
  if (outputStruct && a2 && inputStruct)
  {
    if (byte_100025524 == 1)
    {
      v15 = dword_100025520;
    }

    else
    {
      v15 = sep_connect();
      dword_100025520 = v15;
      if (!v15)
      {
        return 3758097098;
      }

      byte_100025524 = 1;
    }

    v17 = 3145856;
    input[0] = a6;
    input[1] = a7;
    v7 = IOConnectCallMethod(v15, 0x3Du, input, 2u, inputStruct, inputStructCnt, 0, 0, outputStruct, &v17);
    if (!v7)
    {
      memcpy(outputStruct + 3145856, a2, a3);
    }
  }

  return v7;
}

uint64_t hilo_load_lth_transfer_message(void *inputStruct, size_t inputStructCnt)
{
  v2 = 3758097090;
  if (!inputStruct)
  {
    return v2;
  }

  if (byte_100025524 != 1)
  {
    v5 = sep_connect();
    dword_100025520 = v5;
    if (v5)
    {
      byte_100025524 = 1;
      goto LABEL_6;
    }

    return 3758097098;
  }

  v5 = dword_100025520;
LABEL_6:

  return IOConnectCallStructMethod(v5, 0x3Eu, inputStruct, inputStructCnt, 0, 0);
}

uint64_t hilo_advance_gain_restriction_phase()
{
  if (byte_100025524 == 1)
  {
    v0 = dword_100025520;
  }

  else
  {
    v0 = sep_connect();
    dword_100025520 = v0;
    if (!v0)
    {
      return 3758097098;
    }

    byte_100025524 = 1;
  }

  return IOConnectCallScalarMethod(v0, 0x3Fu, 0, 0, 0, 0);
}

uint64_t sep_connect()
{
  mainPort = -1431655766;
  connect = 0;
  if (IOMasterPort(0, &mainPort))
  {
    fprintf(__stderrp, "%s: could not get master port\n");
  }

  else
  {
    v1 = IOServiceMatching("AppleSEPManager");
    if (v1)
    {
      MatchingService = IOServiceGetMatchingService(mainPort, v1);
      if (MatchingService)
      {
        if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
        {
          return connect;
        }

        fprintf(__stderrp, "%s could not open SEP service, IOServiceOpen returned %d\n");
      }

      else
      {
        fprintf(__stderrp, "%s: could not find SEP service\n");
      }
    }

    else
    {
      fprintf(__stderrp, "%s: could not make matching dictionary for '%s'\n");
    }
  }

  return 0;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E070(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10000E2FC(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

void sub_10000E93C(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void sub_10000E95C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  if (a1)
  {
    bzero(v18, 0xA0uLL);
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v18, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v18))
      {
        if (v19[0])
        {
          DERImg4DecodeContentFindItemWithTag(v19, 0x2000000000000010, &v17);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v17, 0x2000000000000011, &v16);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v16, a2, &v15);
                if (v14)
                {
                  return;
                }

                *a5 = v15 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v16, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000EAA8(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t sub_10000ED04(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000EF88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 != 4096 && a5 != 3072)
  {
    return 0xFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = 0;
  v8 = (a5 + 63) >> 6;
  __chkstk_darwin();
  v10 = (v22 - v9);
  bzero(v22 - v9, v9);
  *v10 = v8;
  v11 = *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v11;
  memset(v22, 0, sizeof(v22));
  if (DERParseSequenceToObject(v23, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v22, 0x20uLL, 0x20uLL) || sub_10000F1DC(v10, *(&v22[0] + 1), *&v22[0]))
  {
    return 0xFFFFFFFFLL;
  }

  if (&CCRSA_PKCS1_FAULT_CANARY && &_ccrsa_verify_pkcs1v15_digest)
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  LOBYTE(v22[0]) = 0;
  v18 = *a3;
  v17 = a3[1];
  v20 = *a4;
  v19 = a4[1];
  v21 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v21 && (v22[0] & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_10000EF88(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10000F1DC(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return _ccrsa_make_pub();
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!sub_10000F914(v29, v30, 3u) && !sub_10000F520(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = &_mh_execute_header;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = sub_10000F76C(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            LODWORD(v17) = v17 + 1;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&off_1000206F8, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_10000F520(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = sub_10000F9F0(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10000F76C(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = 0;
  v9 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v11, 0x20uLL, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(&v12 + 1))
  {
    result = DEROidCompare(&v11, &oidEcPubKey);
    if ((result & 1) == 0)
    {
      if (*(&v12 + 1) != 2 || *v12 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v12 == -1)
      {
        __break(0x5513u);
        return result;
      }

      if (*(v12 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!DEROidCompare(&v11, *(a3 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3)(*a2, a2[1], v13, **(a3 + 32), a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (DERParseBitString((a2 + 4), &v8, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(a3 + 16))(*a1, a1[1], v8, v9, v13, **(a3 + 32), a3, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10000F914(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t sub_10000F9F0(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t SEPARTExtract(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = 0;
  v6 = 0;
  return SEPART_decode(a3, a4, &v6, &v5, a1);
}

uint64_t SEPARTPayloadDecode(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t *a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (!a10)
  {
    return 0;
  }

  ccder_decode_sequence_tl();
  result = 0;
  if (!a11)
  {
    ccder_decode_uint64();
    sub_10000FCB0(a2, a3);
    sub_10000FCB0(a4, a5);
    v19 = sub_10000FCB0(a6, a7);
    ccder_decode_constructed_tl();
    if (a9)
    {
      *a9 = 0;
    }

    if (a8)
    {
      *a8 = v19;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000FCB0(void *a1, uint64_t *a2)
{
  result = ccder_decode_tl();
  if (result)
  {
    if (a1)
    {
      *a1 = 0;
    }

    if (a2)
    {
      *a2 = result;
    }
  }

  return result;
}

uint64_t SEPARTCounterFind()
{
  ccder_decode_constructed_tl();
  ccder_decode_tag();
  ccder_decode_len();
  return 0;
}

double *embeddedtest_test_case_statistic_metric_create(const char *a1, double a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040D5418A94uLL);
    if (!v4)
    {
      sub_1000157A0();
    }

    v5 = v4;
    v6 = strdup(a1);
    *v5 = v6;
    if (!v6)
    {
      sub_100015764();
    }

    v5[1] = a2;
    v5[2] = a2;
    v5[3] = a2;
    v5[4] = a2;
    v5[5] = 0.0;
    *(v5 + 12) = 1;
  }

  else
  {
    puts("Unable to create test case statistic metric with a null name");
    return 0;
  }

  return v5;
}

void embeddedtest_test_case_statistic_metric_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void *embeddedtest_test_case_statistic_metric_copy_json_representation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v12 = *(a1 + 48);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v9 = *(a1 + 8);
  embeddedtest_asprintf(&v13, "{Name:%s,Max:%f,Min:%f,Mean:%f,StdDev:%f,Count:%d}", a3, a4, a5, a6, a7, a8, *a1);
  return v13;
}

uint64_t embeddedtest_test_case_statistic_metric_merge(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a1 + 32) + *(a2 + 32);
  v5 = v4 / (v3 + v2);
  v6 = sqrt((*(a2 + 40) * *(a2 + 40) * v3 + v2 * (*(a1 + 40) * *(a1 + 40)) + (*(a2 + 24) - v5) * (*(a2 + 24) - v5) * v3 + v2 * ((*(a1 + 24) - v5) * (*(a1 + 24) - v5))) / (v3 + v2));
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v3 + v2;
  *(a1 + 24) = v5;
  v7.f64[0] = *(a1 + 8);
  v7.f64[1] = *(a2 + 16);
  v8.f64[0] = *(a2 + 8);
  v8.f64[1] = *(a1 + 16);
  *(a1 + 8) = vbslq_s8(vcgeq_f64(v7, v8), *(a1 + 8), *(a2 + 8));
  return 0;
}

__n128 embeddedtest_test_case_statistic_metric_copy(uint64_t a1)
{
  if (a1)
  {
    v2 = embeddedtest_test_case_statistic_metric_create(*a1, 0.0);
    v2[3] = *(a1 + 24);
    *(v2 + 1) = *(a1 + 8);
    result = *(a1 + 32);
    *(v2 + 2) = result;
    *(v2 + 12) = *(a1 + 48);
  }

  return result;
}

double *embeddedtest_test_case_statistic_metric_create_from_buffer(uint64_t a1, _DWORD *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040D5418A94uLL);
  if (!v4)
  {
    sub_1000157DC();
  }

  v5 = v4;
  *v4 = embeddedtest_create_string_from_buffer(a1, a2);
  v5[1] = embeddedtest_deserialize_metric_value(a1, a2);
  v5[2] = embeddedtest_deserialize_metric_value(a1, a2);
  v5[3] = embeddedtest_deserialize_metric_value(a1, a2);
  v5[4] = embeddedtest_deserialize_metric_value(a1, a2);
  v5[5] = embeddedtest_deserialize_metric_value(a1, a2);
  *(v5 + 12) = embeddedtest_deserialize_count(a1, a2);
  return v5;
}

uint64_t embeddedtest_vasprintf(void **a1, char *__format, va_list a3)
{
  v5 = vsnprintf(0, 0, __format, a3);
  v6 = v5;
  if (a1)
  {
    v7 = v5 + 1;
    v8 = malloc_type_calloc(v7, 8uLL, 0x10040436913F5uLL);
    *a1 = v8;
    if (!v8)
    {
      sub_100015818();
    }

    v6 = vsnprintf(v8, v7, __format, a3);
    if ((v6 & 0x80000000) != 0)
    {
      if (*a1)
      {
        free(*a1);
      }

      printf("vsnprintf returned an error...%d\n", v6);
    }
  }

  return v6;
}

_BYTE *embeddedtest_escape_json_string(_BYTE *a1, int a2)
{
  result = malloc_type_calloc(1uLL, (2 * a2) | 1u, 0x100004077774924uLL);
  if (!result)
  {
    sub_100015854();
  }

  v4 = result;
  while (1)
  {
    v5 = *a1;
    if (v5 > 0x21)
    {
      if (v5 == 92 || v5 == 34)
      {
        *v4 = 92;
        v4[1] = v5;
        v4 += 2;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v5 == 10)
    {
      *v4 = 28252;
      v4 += 2;
      goto LABEL_11;
    }

    if (!*a1)
    {
      return result;
    }

LABEL_10:
    *v4++ = v5;
LABEL_11:
    ++a1;
  }
}

char *embeddedtest_create_json_string_from_array(void *a1, unsigned int a2, const char *a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = a4(*a1);
      v10 = v9;
      if (v7)
      {
        v11 = strlen(v7);
        v12 = v11 + strlen(v10) + 2;
        v13 = malloc_type_realloc(v7, v12, 0xD5B6415BuLL);
        if (!v13)
        {
          sub_100015890();
        }

        v7 = v13;
        snprintf(v13, v12, a3, v13, v10);
        if (v10)
        {
          free(v10);
        }
      }

      else
      {
        v7 = v9;
      }

      ++a1;
      --v8;
    }

    while (v8);
    if (v7)
    {
      return v7;
    }
  }

  return malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
}

uint64_t embeddedtest_results_save_to_file(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v9 = "Results object must be provided to save to disk";
LABEL_9:
    v10 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    v9 = "Filepath must be provided to save to disk";
    goto LABEL_9;
  }

  v3 = embeddedtest_results_copy_json_representation(a1);
  if (!v3)
  {
    sub_1000158CC();
  }

  v4 = v3;
  v5 = fopen(a2, "w+");
  if (v5)
  {
    v6 = v5;
    v7 = fputs(v4, v5);
    fclose(v6);
    free(v4);
    if (v7 > 0)
    {
      return 0;
    }

    v9 = "Unable to write full json to file";
  }

  else
  {
    v9 = "Unable to open requested file";
  }

  v10 = 4;
LABEL_13:

  return embeddedtest_error_get_error(v10, v9);
}