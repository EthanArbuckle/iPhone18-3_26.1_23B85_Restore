__n128 sub_100000E00(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  if (a2 <= 2306)
  {
    if (a2 > 1586)
    {
      if (a2 <= 2050)
      {
        switch(a2)
        {
          case 1587:
            if ((a5 - 69) > 1)
            {
              if ((a5 - 71) > 1)
              {
                *a1 = &unk_10023C000;
                *(a1 + 8) = 65748;
                v11 = "/usr/local/share/firmware/isp/3623_01XX.dat";
              }

              else
              {
                *a1 = &unk_10022B000;
                *(a1 + 8) = 65748;
                v11 = "/usr/local/share/firmware/isp/3624_01XX.dat";
              }
            }

            else
            {
              *a1 = &unk_10021A000;
              *(a1 + 8) = 65748;
              v11 = "/usr/local/share/firmware/isp/3624_02XX.dat";
            }

            break;
          case 1811:
            *a1 = &unk_10029B000;
            *(a1 + 8) = 37400;
            v11 = "/usr/local/share/firmware/isp/4723_01XX.dat";
            break;
          case 1812:
            *a1 = &unk_10020F000;
            *(a1 + 8) = 41368;
            v11 = "/usr/local/share/firmware/isp/2022_01XX.dat";
            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      if (a2 != 2051)
      {
        if (a2 == 2068)
        {
          *a1 = &unk_1001EF000;
          *(a1 + 8) = 127884;
          v11 = "/usr/local/share/firmware/isp/2123_01XX.dat";
          goto LABEL_83;
        }

        if (a2 != 2131)
        {
          return result;
        }
      }

      *a1 = &unk_1002A5000;
      *(a1 + 8) = 149496;
      v11 = "/usr/local/share/firmware/isp/7623_01XX.dat";
    }

    else
    {
      if (a2 > 1393)
      {
        switch(a2)
        {
          case 1394:
            *a1 = &unk_100058000;
            *(a1 + 8) = 24392;
            v11 = "/usr/local/share/firmware/isp/1020_03XX.dat";
            break;
          case 1395:
            *a1 = &unk_10005E000;
            *(a1 + 8) = 14260;
            v11 = "/usr/local/share/firmware/isp/0019_02XX.dat";
            break;
          case 1556:
            if ((a5 & 0xFFFFFFFE) == 0x1E)
            {
              *a1 = &unk_100353000;
              *(a1 + 8) = 60780;
              v11 = "/usr/local/share/firmware/isp/2924_01XX.dat";
            }

            else
            {
              *a1 = &unk_100362000;
              *(a1 + 8) = 60780;
              v11 = "/usr/local/share/firmware/isp/2921_02XX.dat";
            }

            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      switch(a2)
      {
        case 1029:
          if ((a5 & 0xFFFFFFFE) == 0x1E)
          {
            *a1 = &unk_100315000;
            *(a1 + 8) = 38436;
            v11 = "/usr/local/share/firmware/isp/9724_01XX.dat";
          }

          else
          {
            *a1 = &unk_10031F000;
            *(a1 + 8) = 37576;
            v11 = "/usr/local/share/firmware/isp/9723_01XX.dat";
          }

          break;
        case 1300:
          *a1 = &unk_10004D000;
          *(a1 + 8) = 41368;
          v11 = "/usr/local/share/firmware/isp/2820_01XX.dat";
          break;
        case 1368:
          if (a5 != 9)
          {
            if (a5 == 112)
            {
              *a1 = &unk_10033B000;
              *(a1 + 8) = 52136;
              v11 = "/usr/local/share/firmware/isp/1925_03XX.dat";
              break;
            }

            if (a5 != 16)
            {
              *a1 = &unk_100348000;
              *(a1 + 8) = 44352;
              v11 = "/usr/local/share/firmware/isp/1921_01XX.dat";
              break;
            }
          }

          *a1 = &unk_100330000;
          *(a1 + 8) = 44352;
          v11 = "/usr/local/share/firmware/isp/1922_02XX.dat";
          break;
        default:
          return result;
      }
    }

LABEL_83:
    v12 = *(v11 + 1);
    *(a1 + 12) = *v11;
    *(a1 + 28) = v12;
    result = *(v11 + 28);
    *(a1 + 40) = result;
    return result;
  }

  if (a2 <= 2417)
  {
    if (a2 > 2323)
    {
      switch(a2)
      {
        case 2324:
          *a1 = &unk_100035000;
          *(a1 + 8) = 98124;
          v11 = "/usr/local/share/firmware/isp/2325_01XX.dat";
          break;
        case 2339:
          *a1 = &unk_1001E6000;
          *(a1 + 8) = 36168;
          v11 = "/usr/local/share/firmware/isp/8824_01XX.dat";
          break;
        case 2392:
          *a1 = &unk_100329000;
          *(a1 + 8) = 28660;
          v11 = "/usr/local/share/firmware/isp/2224_01XX.dat";
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 2307:
          if ((a5 - 97) > 1)
          {
            *a1 = &unk_1001C0000;
            *(a1 + 8) = 152192;
            v11 = "/usr/local/share/firmware/isp/7424_01XX.dat";
          }

          else
          {
            *a1 = &unk_10019A000;
            *(a1 + 8) = 152308;
            v11 = "/usr/local/share/firmware/isp/7425_01XX.dat";
          }

          break;
        case 2308:
          if (a5 == 99 || a5 == 79)
          {
            *a1 = &unk_1002CA000;
            *(a1 + 8) = 152308;
            v11 = "/usr/local/share/firmware/isp/7525_01XX.dat";
          }

          else
          {
            *a1 = &unk_1002F0000;
            *(a1 + 8) = 149496;
            v11 = "/usr/local/share/firmware/isp/7524_01XX.dat";
          }

          break;
        case 2323:
          if (a5 != 67 || a11)
          {
            if ((a5 - 69) > 1)
            {
              *a1 = &unk_100279000;
              *(a1 + 8) = 138436;
              v11 = "/usr/local/share/firmware/isp/4523_02XX.dat";
            }

            else
            {
              *a1 = &unk_100257000;
              *(a1 + 8) = 138436;
              v11 = "/usr/local/share/firmware/isp/4524_01XX.dat";
            }
          }

          else
          {
            *a1 = &unk_10024D000;
            *(a1 + 8) = 37420;
            v11 = "/usr/local/share/firmware/isp/4523_01XX.dat";
          }

          break;
        default:
          return result;
      }
    }

    goto LABEL_83;
  }

  if (a2 <= 3413)
  {
    switch(a2)
    {
      case 2418:
        if ((a5 - 97) > 1)
        {
          if (a5 == 99)
          {
            *a1 = &unk_100141000;
            *(a1 + 8) = 186112;
            v11 = "/usr/local/share/firmware/isp/3525_02XX.dat";
          }

          else
          {
            *a1 = &unk_10016F000;
            *(a1 + 8) = 172804;
            v11 = "/usr/local/share/firmware/isp/3524_01XX.dat";
          }
        }

        else
        {
          *a1 = &unk_100113000;
          *(a1 + 8) = 186112;
          v11 = "/usr/local/share/firmware/isp/3525_01XX.dat";
        }

        break;
      case 2419:
        *a1 = &unk_100062000;
        *(a1 + 8) = 724052;
        v11 = "/usr/local/share/firmware/isp/4425_01XX.dat";
        break;
      case 2434:
        *a1 = &unk_100371000;
        *(a1 + 8) = 149364;
        v11 = "/usr/local/share/firmware/isp/7324_01XX.dat";
        break;
      default:
        return result;
    }

    goto LABEL_83;
  }

  if (a2 == 3414)
  {
    if (a3 == 2)
    {
      *a1 = &unk_10039C000;
      *(a1 + 8) = 7040;
      v11 = "/usr/local/share/firmware/isp/6222_01XX.dat";
    }

    else
    {
      *a1 = &unk_10039A000;
      *(a1 + 8) = 7040;
      v11 = "/usr/local/share/firmware/isp/6221_01XX.dat";
    }

    goto LABEL_83;
  }

  if (a2 == 20584 || a2 == 20588)
  {
    *a1 = &unk_100396000;
    *(a1 + 8) = 12800;
    v11 = "/usr/local/share/firmware/isp/0225_01XX.dat";
    goto LABEL_83;
  }

  return result;
}

uint64_t sub_100001474()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [NSString stringWithUTF8String:"/var/mobile/Documents/Pearl/ProjectorValid.bin"];
  if ([(NSFileManager *)v0 fileExistsAtPath:v1]&& (v3 = 0, ![(NSFileManager *)v0 removeItemAtPath:v1 error:&v3]))
  {
    NSLog(@"Failed to remove %s token: %@", "Pearl", [v3 description]);
    return 0;
  }

  else
  {
    sub_100001520("token was removed");
    return 1;
  }
}

void sub_100001520(char *a1, ...)
{
  va_start(va, a1);
  v9 = 0;
  v1 = vasprintf(&v9, a1, va);
  if (v9)
  {
    v2 = objc_alloc_init(NSDateFormatter);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = [v2 stringFromDate:{+[NSDate date](NSDate, "date")}];
    v4 = [NSString stringWithFormat:@"%@ %s\n", v3, v9, va];

    free(v9);
    v9 = 0;
    v5 = fopen("/var/mobile/Documents/Tokens.log", "a");
    if (v5)
    {
      v6 = v5;
      fwrite([(NSString *)v4 UTF8String], [(NSString *)v4 length], 1uLL, v5);
      fclose(v6);
    }

    else
    {
      NSLog(@"Failed to open token log file.", v7, v8);
    }
  }

  else
  {
    NSLog(@"Failed to create log message string with code: %d (0x%X)", v1, v1);
  }
}

BOOL sub_100001640(char *a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
    snprintf(a1, 0x20uLL, "%lld", valuePtr);
    CFRelease(v3);
  }

  else
  {
    NSLog(@"Failed to read unique chip identifier");
  }

  return v3 != 0;
}

uint64_t sub_1000016D0(int a1, uint64_t a2, time_t *a3)
{
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    sub_100001520("Can't activate %s projector: no projector token found");
    return 0;
  }

  nullsub_3(__s2);
  if ((sub_100001B68(__s2, "/var/mobile/Documents/Pearl/ProjectorValid.bin") & 1) == 0)
  {
    sub_100001520("Failed to read %s projector token file. Token will be removed.");
    goto LABEL_8;
  }

  v5 = time(0);
  v6 = v15;
  if (v5 > v15)
  {
    sub_100001520("%s token timeout was reached (current time %ld). Token will be removed.");
LABEL_8:
    sub_100001474();
    return 0;
  }

  if (v5 > v14 + 43200)
  {
    sub_100001520("%s token has exceeded max allowed timeout. Token will be removed.");
    goto LABEL_8;
  }

  if (!sub_100001640(__s1))
  {
    sub_100001520("Failed to read unique chip ID");
    return 0;
  }

  if (strcmp(__s1, __s2))
  {
    sub_100001520("%s token does not match device. Token will be removed.");
    goto LABEL_8;
  }

  v8 = 0;
  while (v8 >= __s2[16] || __s2[v8 + 17] != a1 || a1 == 0)
  {
    if (++v8 == 8)
    {
      sub_100001520("%s token doesn't match platform. Token will be removed.");
      goto LABEL_8;
    }
  }

  if (v17 == 1)
  {
    v10 = sub_100001984();
    if (v10 == -1 || v10 > v14)
    {
      sub_100001520("System performed boot since %s token creation (boot time: %ld). Token will be removed.");
      goto LABEL_8;
    }
  }

  if (!v16)
  {
    sub_100001520("Number of allowed activations has reached zero. %s token will be removed.");
    goto LABEL_8;
  }

  v11 = v16 - 1;
  if (v16 >= 1)
  {
    --v16;
    if (v11)
    {
      if (!sub_100001A3C(__s2, "/var/mobile/Documents/Pearl/ProjectorValid.bin"))
      {
        sub_100001520("Failed to update %s token file. Will return false so someone looks at that...");
        return 0;
      }

      sub_100001520("%s token activation count updated to %d", "Pearl", v16);
    }

    else
    {
      sub_100001520("Using last allowed activation. %s token will be removed.", "Pearl");
      sub_100001474();
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return 1;
}

uint64_t sub_100001984()
{
  *v4 = 0x1500000001;
  v2 = 16;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0) || (result = v3) == 0)
  {
    v1 = __error();
    NSLog(@"Failed to read boot time. errno %d", *v1);
    return -1;
  }

  return result;
}

BOOL sub_100001A3C(uint64_t a1, const char *a2)
{
  __ptr = 3;
  strncpy(v10, (a1 + 32), 0x20uLL);
  strncpy(v11, a1, 0x20uLL);
  bzero(v12, 0x20uLL);
  v4 = *(a1 + 84);
  v12[0] = *(a1 + 68);
  v12[1] = v4;
  v12[2] = *(a1 + 104);
  v5 = *(a1 + 124);
  v13 = *(a1 + 120);
  v14 = v5;
  v6 = qword_10039DB80;
  if (qword_10039DB80 <= 0x7B)
  {
    do
    {
      v10[v6 - 4] ^= byte_10001DDD8[v6 & 7];
      ++v6;
    }

    while (v6 != 124);
  }

  v7 = fopen(a2, "w");
  if (v7)
  {
    fwrite(&__ptr, 1uLL, 0x7CuLL, v7);
    fclose(v7);
  }

  return v7 != 0;
}

uint64_t sub_100001B68(uint64_t a1, char *__filename)
{
  result = fopen(__filename, "r");
  if (result)
  {
    v4 = result;
    v5 = fread(&__ptr, 1uLL, 0x24uLL, result) == 36 && __ptr == 3;
    if (v5 && fread(&v11[qword_10039DB80 - 4], 1uLL, 0x58uLL, v4) == 88)
    {
      v6 = qword_10039DB80;
      if (qword_10039DB80 <= 0x7B)
      {
        do
        {
          v11[v6 - 4] ^= byte_10001DDD8[v6 & 7];
          ++v6;
        }

        while (v6 != 124);
      }

      strncpy(a1, v12, 0x20uLL);
      *(a1 + 104) = v13;
      v7 = v15;
      *(a1 + 120) = v14;
      *(a1 + 124) = v7 != 0;
      strncpy((a1 + 32), v11, 0x20uLL);
      *(a1 + 63) = 0;
      bzero((a1 + 68), 0x20uLL);
      v8 = 0;
      *(a1 + 64) = 8;
      while (1)
      {
        v9 = *&v12[4 * v8 + 32];
        *(a1 + 68 + 4 * v8) = v9;
        if (!v9)
        {
          break;
        }

        if (++v8 == 8)
        {
          return 1;
        }
      }

      *(a1 + 64) = v8;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001CF4(uint64_t a1)
{
  *a1 = off_100028AD8;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = off_100028AF8;
  *(a1 + 16) = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = sub_100004B8C(a1 + 8);
  return a1;
}

uint64_t sub_100001D94()
{
  if (byte_10039DBC5 != 1)
  {
    NSLog(@"Testing if aFDR may be used");
    byte_10039DBC5 = 1;
    byte_10039DBC6 = 0;
    if ((dword_10039DBC8 & 2) != 0)
    {
      byte_10039DBC6 = 1;
      NSLog(@"\taFDR may be used");
    }

    else
    {
      v1 = MGCopyAnswer();
      if (!v1)
      {
        NSLog(@"\tCouldn't get boot manifest hash");
        goto LABEL_15;
      }

      v2 = v1;
      v3 = MGCopyAnswer();
      if (!v3)
      {
        NSLog(@"\tCouldn't get crypto hash method");
        goto LABEL_15;
      }

      v4 = v3;
      if (([v3 isEqualToString:@"sha2-384"] & 1) == 0)
      {
        NSLog(@"\tCrypto hash method is %@. Only %s is supported", v4, "sha2-384");
        goto LABEL_15;
      }

      v5 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
      v6 = [NSData dataWithContentsOfFile:v5];
      if (!v6)
      {
        NSLog(@"\tCouldn't find AP ticket file at path %@", v5);

        goto LABEL_15;
      }

      v7 = v6;

      [(NSData *)v7 bytes];
      [(NSData *)v7 length];
      if (AMSupportDigestSha384())
      {
        NSLog(@"\tFailed to digest AP ticket");
LABEL_15:
        v0 = 0;
        return v0 & 1;
      }

      if (memcmp(__s1, [v2 bytes], 0x30uLL))
      {
        NSLog(@"\tAP ticket digest doesn't match boot manifest hash");
        goto LABEL_15;
      }

      [(NSData *)v7 bytes];
      [(NSData *)v7 length];
      if (Img4DecodeInitManifest())
      {
        NSLog(@"\tFailed to initialize Manifest from ticket");
        v0 = 1;
        return v0 & 1;
      }

      Img4DecodeGetBooleanFromSection();
      Img4DecodeGetBooleanFromSection();
      byte_10039DBC6 = 0;
      NSLog(@"\taFDR may%s be used (%d, %d)", " not", 0, 0);
    }

    v0 = byte_10039DBC6;
    return v0 & 1;
  }

  v0 = byte_10039DBC6;
  return v0 & 1;
}

uint64_t sub_100002048(_WORD *a1)
{
  sub_1000051CC(&v9);
  v9 = off_100028B98;
  v10[73] = 1;
  if (v10[72] == 1 && (sub_1000052C8(&v9, a1) & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    sub_100001CF4(&v4);
    v4 = off_1000288C8;
    v8 = 1;
    if (v7 == 1 && (v7 = v6, v6 == 1))
    {
      v2 = sub_1000052C8(&v4, a1);
    }

    else
    {
      v2 = 0;
    }

    v4 = off_100028AD8;
    sub_100005160(v5);
  }

  v9 = off_100028910;
  sub_100003324(v10);
  return v2;
}

void sub_100002180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100005160((v13 + 8));
  sub_100003324(va);
  _Unwind_Resume(a1);
}

void *sub_1000021E4(void *a1)
{
  *a1 = off_100028AD8;
  sub_100005160(a1 + 1);
  return a1;
}

void *sub_100002228(void *a1)
{
  *a1 = off_100028910;
  sub_100003324((a1 + 1));
  return a1;
}

const void *sub_10000226C(off_t *a1)
{
  v2 = fopen("/var/mobile/Library/ISP/Pearl/NVM.bin", "rb");
  if (v2)
  {
    v3 = v2;
    fseeko(v2, 0, 2);
    *a1 = ftello(v3);
    fseeko(v3, 0, 0);
    if (*a1 > 0xC7)
    {
      operator new[]();
    }

    fclose(v3);
  }

  sub_1000051CC(&v13);
  v13 = off_100028B98;
  v14[73] = 1;
  if (v14[72] == 1)
  {
    v4 = sub_100005444(&v13, a1);
    if (v4)
    {
      goto LABEL_12;
    }
  }

  sub_100001CF4(&v8);
  v8 = off_1000288C8;
  v12 = 1;
  if (v11 == 1 && (v11 = v10, v10 == 1))
  {
    v4 = sub_100005444(&v8, a1);
  }

  else
  {
    v4 = 0;
  }

  v8 = off_100028AD8;
  sub_100005160(v9);
  if (v4)
  {
LABEL_12:
    v5 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/NVM.bin", 513, 4, 0, 511);
    v6 = fdopen(v5, "wb");
    if (v6)
    {
      fwrite(v4, 1uLL, *a1, v6);
      fclose(v6);
    }
  }

  v13 = off_100028910;
  sub_100003324(v14);
  return v4;
}

void sub_100002488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100005160((v13 + 8));
  sub_100003324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000024EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000047E4((a1 + 8), 4);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v11, 4);
    if (v11 == 1)
    {
      result = sub_1000055B0(v3, v7);
      if (result)
      {
        v5 = v7[3];
        *(a2 + 32) = v7[2];
        *(a2 + 48) = v5;
        *(a2 + 64) = v8;
        v6 = v7[1];
        *a2 = v7[0];
        *(a2 + 16) = v6;
        *(a2 + 72) = v9;
        *(a2 + 88) = v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000025D0(uint64_t a1)
{
  v1 = sub_1000047E4((a1 + 8), 3);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 24))(v1, &v2, 4);
    switch(v2)
    {
      case 3:
        sub_10000581C();
        break;
      case 2:
        sub_100005744();
        break;
      case 1:
        sub_10000566C();
        break;
    }
  }
}

BOOL sub_1000026D8(const void *a1)
{
  v2 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/PCECalib.bin", 513, 4, 0, 511);
  v3 = fdopen(v2, "wb");
  if (v3)
  {
    fwrite(a1, 1uLL, 0x3400uLL, v3);
    fclose(v3);
  }

  return v3 != 0;
}

BOOL sub_100002758()
{
  sub_100003CF0(&v2, "/var/mobile/Documents/Pearl", 9u);
  v0 = v3;
  v2 = off_100028A88;
  if (v3)
  {
    fclose(v3);
  }

  return v0 != 0;
}

void *sub_100002810(void *a1)
{
  *a1 = off_100028A88;
  v2 = a1[33];
  if (v2)
  {
    fclose(v2);
  }

  return a1;
}

uint64_t sub_10000285C()
{
  __chkstk_darwin();
  v1 = v0;
  __ptr = v2;
  NSLog(@"Pearl calibration\n");
  umask(0);
  v3 = "/var/mobile/Library/ISP";
  v4 = mkdir("/var/mobile/Library/ISP", 0x1FFu);
  if (v4 && (v5 = v4, *__error() != 17) || (v6 = open_dprotected_np("/var/mobile/Library/ISP", 0, 0, 1), fcntl(v6, 64, 4), close(v6), v3 = "/var/mobile/Library/ISP/Pearl", (v7 = mkdir("/var/mobile/Library/ISP/Pearl", 0x1FFu)) != 0) && (v5 = v7, *__error() != 17))
  {
    printf("\tCan't create %s! (%d)\n", v3, v5);
    NSLog(@"\tCouldn't validate directories\n");
    return 0;
  }

  v8 = open_dprotected_np("/var/mobile/Library/ISP/Pearl", 0, 0, 1);
  fcntl(v8, 64, 4);
  close(v8);
  NSLog(@"\tLooking for local cache\n");
  v9 = fopen("/var/mobile/Library/ISP/Pearl/PCECalib.bin", "rb");
  if (!v9)
  {
    goto LABEL_37;
  }

  v25 = v9;
  fread(__ptr, 1uLL, 0x3400uLL, v9);
  if (!v1)
  {
    goto LABEL_23;
  }

  NSLog(@"\tValidating Calibration UUID");
  sub_1000051CC(&v32);
  *&v32 = off_100028B98;
  v38 = 0;
  if ((sub_100003EA4(&v32, &v39) & 1) == 0)
  {
    sub_100001CF4(&v27);
    v27 = off_1000288C8;
    if (v30 == 1)
    {
      v30 = v29;
    }

    v31 = 0;
    if ((sub_100004100(&v27, &v39) & 1) == 0)
    {
      NSLog(@"\tFailed to read UUID. Marking as invalid");
      v27 = off_100028AD8;
      sub_100005160(v28);
      *&v32 = off_100028910;
      sub_100003324(&v32 + 8);
      goto LABEL_28;
    }

    v27 = off_100028AD8;
    sub_100005160(v28);
  }

  v10 = 0;
  v12 = *(__ptr + 1) != v40[0] || *(__ptr + 2) != v40[1];
  v13 = @"Cached UUID: 0x";
  do
  {
    v13 = [(__CFString *)v13 stringByAppendingFormat:@"%02X", *(__ptr + v10++ + 8)];
  }

  while (v10 != 16);
  v14 = [(__CFString *)v13 stringByAppendingString:@", calibration: 0x"];
  for (i = 8; i != 24; ++i)
  {
    v14 = [v14 stringByAppendingFormat:@"%02X", *(&v40[-1] + i)];
  }

  NSLog(@"\t%@", v14);
  *&v32 = off_100028910;
  sub_100003324(&v32 + 8);
  if (!v12)
  {
LABEL_23:
    if (*__ptr == 8)
    {
      NSLog(@"\tFound\n");
      fclose(v25);
      return 1;
    }

    NSLog(@"\tIgnoring unexpected cached version (%d != %d)\n", *__ptr, 8, v25);
    goto LABEL_36;
  }

LABEL_28:
  v17 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:[NSString stringWithUTF8String:"/var/mobile/Library/ISP/Pearl"], 0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:&v39 count:16];
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:[NSString stringWithFormat:@"%s/%@", "/var/mobile/Library/ISP/Pearl", *(*(&v32 + 1) + 8 * j), v25], 0];
      }

      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:&v39 count:16];
    }

    while (v18);
  }

  NSLog(@"\tCalibration UUID mismatch, removing contents of directory\n");
LABEL_36:
  fclose(v25);
LABEL_37:
  NSLog(@"\tLooking for local override files\n");
  sub_1000051CC(&v39);
  v39 = off_100028B98;
  v41 = 1;
  sub_100002F84(&v39, __ptr);
  if (v21)
  {
    goto LABEL_41;
  }

  NSLog(@"\tLooking for FDR data\n");
  NSLog(@"\tReading from FDR\n");
  sub_100001CF4(&v32);
  *&v32 = off_1000288C8;
  if (v36 == 1)
  {
    v36 = BYTE9(v34);
  }

  v37 = (dword_10039DBC8 & 1) == 0;
  sub_1000030CC(&v32, __ptr);
  v23 = v22;
  *&v32 = off_100028AD8;
  sub_100005160(&v32 + 1);
  if (v23)
  {
LABEL_41:
    NSLog(@"Creating local cache\n");
    *__ptr = 8;
    kdebug_trace();
    v16 = sub_1000026D8(__ptr);
  }

  else
  {
    NSLog(@"\tDidn't find calibration\n");
    v16 = 0;
  }

  v39 = off_100028910;
  sub_100003324(v40);
  return v16;
}

void sub_100002EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100003324(va);
  _Unwind_Resume(a1);
}

void sub_100002F84(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 1)
  {
    bzero(a2, 0x3400uLL);
    sub_100005A90(a1, a2);
    if (v4)
    {
      sub_100005BDC(a1);
      if (v5)
      {
        if ((dword_10039DBC8 & 4) != 0 || (sub_100005CD4(a1, a2), v6) && (sub_1000025D0(a1), v7) && (sub_1000024EC(a1, a2 + 8552) & 1) != 0 || (dword_10039DBC8 & 0x10) != 0)
        {
          if (sub_100005DE8(a1, a2 + 8648) && sub_100005EAC(a1, a2 + 8672) && sub_100005F78(a1, a2))
          {
            if (sub_100003EA4(a1, a2))
            {
              sub_1000060F4(a1);
              (*(*(a1 + 8) + 24))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

void sub_1000030CC(uint64_t a1, void *a2)
{
  if (*(a1 + 72) == 1)
  {
    bzero(a2, 0x3400uLL);
    sub_100005A90(a1, a2);
    if (v4)
    {
      sub_100005BDC(a1);
      if (v5)
      {
        if ((dword_10039DBC8 & 4) != 0 || (sub_100005CD4(a1, a2), v6) && (sub_1000025D0(a1), v7) && (sub_1000024EC(a1, a2 + 8552) & 1) != 0 || (dword_10039DBC8 & 0x10) != 0)
        {
          if (sub_100005DE8(a1, a2 + 8648) && sub_100005EAC(a1, a2 + 8672) && sub_100005F78(a1, a2))
          {
            if (sub_100004100(a1, a2))
            {
              sub_1000060F4(a1);
              (*(*(a1 + 8) + 24))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

void sub_100003214(void *a1)
{
  *a1 = off_100028AD8;
  sub_100005160(a1 + 1);

  operator delete();
}

void *sub_10000327C(void *a1)
{
  *a1 = off_100028910;
  sub_100003324((a1 + 1));
  return a1;
}

void sub_1000032C0(void *a1)
{
  *a1 = off_100028910;
  sub_100003324((a1 + 1));

  operator delete();
}

uint64_t sub_100003324(uint64_t a1)
{
  *a1 = off_100028940;
  if (*(a1 + 40) == 1)
  {
    CFRelease(*(a1 + 48));
  }

  if (*(a1 + 56) == 1)
  {
    CFRelease(*(a1 + 64));
  }

  return sub_1000033A0(a1);
}

uint64_t sub_1000033A0(uint64_t a1)
{
  *a1 = off_1000289A0;
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  while (v3 != v4)
  {
    v5 = v3[5];
    sub_100003674(v2, v3);
    operator delete(v3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v3 = *v2;
  }

  sub_100003A68(v2, *(a1 + 16));
  return a1;
}

void sub_10000345C(uint64_t a1)
{
  sub_100003324(a1);

  operator delete();
}

uint64_t sub_100003494(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    result = sub_100001D94();
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 32);
  }

  if (!v2)
  {
    v2 = "/var/mobile/Documents/Pearl";
  }

  v4 = [[NSDictionary alloc] initWithContentsOfFile:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s.bin", v2, "PlCl")}];
  result = 1;
  if (v4)
  {
    *(a1 + 40) = 1;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_100003530(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    if (*(a1 + 40) == 1)
    {
      operator new();
    }

    v2 = *(a1 + 32);
    operator new();
  }

  return 0;
}

uint64_t *sub_100003674(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000036E8(v6, a2);
  return v3;
}

uint64_t *sub_1000036E8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_100003A68(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100003A68(a1, *a2);
    sub_100003A68(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_100003ABC(uint64_t a1, const __CFDictionary *a2, unsigned int a3)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *a1 = off_1000289D8;
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, &aPcic[256 * a3], 0x8000100u);
  Value = CFDictionaryGetValue(a2, v5);
  CFRelease(v5);
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFDataGetTypeID())
    {
      *(a1 + 264) = Value;
      CFRetain(Value);
      BytePtr = CFDataGetBytePtr(*(a1 + 264));
      *(a1 + 272) = BytePtr;
      *(a1 + 280) = BytePtr;
      *(a1 + 288) = CFDataGetLength(*(a1 + 264));
    }

    else
    {
      CFRelease(Value);
    }
  }

  return a1;
}

void *sub_100003BBC(void *a1)
{
  *a1 = off_100028A50;
  v2 = a1[33];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100003C10(void *a1)
{
  sub_100003BBC(a1);

  operator delete();
}

void *sub_100003C58(uint64_t a1, void *__dst, int a3)
{
  result = memcpy(__dst, *(a1 + 280), a3);
  *(a1 + 280) += a3;
  return result;
}

void sub_100003CB8(void *a1)
{
  sub_100003BBC(a1);

  operator delete();
}

uint64_t sub_100003CF0(uint64_t a1, const char *a2, unsigned int a3)
{
  *a1 = off_100028A88;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  snprintf((a1 + 8), 0x100uLL, "%s/%s.bin", a2, &aPcic[256 * a3]);
  *(a1 + 264) = fopen(v4, "rb");
  return a1;
}

void sub_100003DC0(void *a1)
{
  *a1 = off_100028A88;
  v1 = a1[33];
  if (v1)
  {
    fclose(v1);
  }

  operator delete();
}

uint64_t sub_100003E40(uint64_t a1)
{
  v2 = ftello(*(a1 + 264));
  fseeko(*(a1 + 264), 0, 2);
  v3 = ftello(*(a1 + 264));
  fseeko(*(a1 + 264), v2, 0);
  return (v3 - v2);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047E4((a1 + 8), 9);
  result = (*(*v4 + 16))(v4);
  if (result)
  {
    (*(*v4 + 24))(v4, &v9, 4);
    if (v9 == 3)
    {
      (*(*v4 + 24))(v4, &v10, 19);
      v6 = v13;
      *(a2 + 8704) = v11;
      *(a2 + 8706) = v12;
      *(a2 + 8) = v10;
    }

    else
    {
      if (v9 == 2)
      {
        (*(*v4 + 24))(v4, &v10, 3);
        v6 = BYTE2(v10);
        *(a2 + 8704) = v10;
        *(a2 + 8706) = BYTE1(v10);
      }

      else
      {
        if (v9 != 1)
        {
          return 0;
        }

        (*(*v4 + 24))(v4, &v10, 1);
        v6 = v10;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 81) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*v4 + 24))(v4, &v10, 22);
        if (v10 > 3)
        {
          result = 1;
        }

        else
        {
          v8 = off_100028BC0[v10];
          result = sub_10000435C(a1, v4, &v10);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100004100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047E4((a1 + 8), 9);
  result = (*(*v4 + 16))(v4);
  if (result)
  {
    (*(*v4 + 24))(v4, &v9, 4);
    if (v9 == 3)
    {
      (*(*v4 + 24))(v4, &v10, 19);
      v6 = v13;
      *(a2 + 8704) = v11;
      *(a2 + 8706) = v12;
      *(a2 + 8) = v10;
    }

    else
    {
      if (v9 == 2)
      {
        (*(*v4 + 24))(v4, &v10, 3);
        v6 = BYTE2(v10);
        *(a2 + 8704) = v10;
        *(a2 + 8706) = BYTE1(v10);
      }

      else
      {
        if (v9 != 1)
        {
          return 0;
        }

        (*(*v4 + 24))(v4, &v10, 1);
        v6 = v10;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 73) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*v4 + 24))(v4, &v10, 22);
        if (v10 > 3)
        {
          result = 1;
        }

        else
        {
          v8 = off_100028BC0[v10];
          result = sub_10000435C(a1, v4, &v10);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10000435C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (v3 <= 3)
  {
    v4 = (dbl_10001F220[v3] * (*(a3 + 20) * *(a3 + 18))) * *(a3 + 12);
    operator new[]();
  }

  return 0;
}

uint64_t sub_1000047E4(void *a1, int a2)
{
  v7 = a2;
  v2 = a1[2];
  v3 = (a1 + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = a1 + 2;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v4 == a1 + 2 || *(v4 + 8) > a2)
  {
LABEL_8:
    v5 = (*(*a1 + 32))(a1);
    v8 = &v7;
    sub_1000048C4(v3, &v7)[5] = v5;
  }

  v8 = &v7;
  return sub_1000048C4(v3, &v7)[5];
}

uint64_t *sub_1000048C4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100004998(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_1000049F0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1000049F0(uint64_t *result, uint64_t *a2)
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

CFStringRef sub_100004B8C(uint64_t a1)
{
  if ((dword_10039DBC8 & 8) != 0)
  {
    return 0;
  }

  sub_100004FAC(a1);
  if (*(a1 + 33) == 1 && *(a1 + 32) == 1)
  {
    result = CFStringCreateWithCString(kCFAllocatorDefault, "PlCl", 0x8000100u);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *(a1 + 40) = AMFDRSealingMapCopyLocalDictForClass();
    CFRelease(v3);
  }

  return 1;
}

void *sub_100004C84(void *a1)
{
  *a1 = off_100028AD8;
  sub_100005160(a1 + 1);
  return a1;
}

void sub_100004CC8(void *a1)
{
  *a1 = off_100028AD8;
  sub_100005160(a1 + 1);

  operator delete();
}

void sub_100004D2C(void *a1)
{
  sub_100005160(a1);

  operator delete();
}

void sub_100004D64(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10 && (*(a1 + 32) & 1) != 0)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_100004E58(uint64_t a1, unsigned int a2)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *a1 = &off_100028B48;
  strcpy((a1 + 8), &aPcic[256 * a2]);
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, (a1 + 8), 0x8000100u);
  *(a1 + 264) = AMFDRSealingMapCopyLocalDataForClass();
  CFRelease(v3);
  v4 = *(a1 + 264);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    *(a1 + 272) = BytePtr;
    *(a1 + 280) = BytePtr;
    *(a1 + 288) = CFDataGetLength(*(a1 + 264));
  }

  return a1;
}

void sub_100004F74(void *a1)
{
  sub_100003BBC(a1);

  operator delete();
}

void sub_100004FAC(uint64_t a1)
{
  if ((byte_10039DBC0 & 1) == 0)
  {
    byte_10039DBC0 = 1;
    byte_10039DBC2 = 0;
    byte_10039DBC1 = 0;
    byte_10039DBC4 = 0;
    byte_10039DBC3 = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }

    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", kCFAllocatorDefault, 3u);
    if (v6)
    {
      byte_10039DBC3 = 1;
      CFRelease(v6);
    }

    if (byte_10039DBC3 == 1)
    {
      v7 = CFStringCreateWithCString(kCFAllocatorDefault, "PlCl", 0x8000100u);
      if (v7)
      {
        v8 = v7;
        v9 = AMFDRSealingMapCopyLocalDictForClass();
        CFRelease(v8);
        byte_10039DBC1 = v9 != 0;
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  v10 = byte_10039DBC1;
  *(a1 + 32) = byte_10039DBC1;
  v11 = byte_10039DBC2;
  *(a1 + 48) = byte_10039DBC2;
  v12 = byte_10039DBC3;
  *(a1 + 33) = byte_10039DBC3;
  v13 = byte_10039DBC4;
  *(a1 + 49) = byte_10039DBC4;
  if (v10)
  {
    v14 = "unified";
  }

  else
  {
    v14 = "not unified";
  }

  if (!v12)
  {
    v14 = "unavailable";
  }

  if (v11)
  {
    v15 = "unified";
  }

  else
  {
    v15 = "not unified";
  }

  if (!v13)
  {
    v15 = "unavailable";
  }

  NSLog(@"Pearl FDR is %s, ToF FDR is %s", v14, v15);
}

uint64_t sub_100005160(void *a1)
{
  *a1 = off_100028AF8;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_1000033A0(a1);
}

uint64_t sub_1000051CC(uint64_t a1)
{
  *a1 = off_100028910;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = off_100028940;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 80) = sub_100003494(a1 + 8);
  return a1;
}

void sub_100005264(void *a1)
{
  *a1 = off_100028910;
  sub_100003324((a1 + 1));

  operator delete();
}

uint64_t sub_1000052C8(uint64_t a1, _WORD *a2)
{
  v3 = sub_1000047E4((a1 + 8), 14);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v6, 4);
    if (v6 == 0x1000000)
    {
      result = sub_100005388(v3, v5);
      if (result)
      {
        *a2 = v5[3];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_100005388(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 8)
  {
    (*(*a1 + 24))(a1, a2, 8);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 8, v4);
  }

  return v5 == 8;
}

uint64_t sub_100005444(uint64_t a1, void *a2)
{
  v3 = sub_1000047E4((a1 + 8), 13);
  if ((*(*v3 + 16))(v3))
  {
    (*(*v3 + 24))(v3, &v5, 4);
    if (v5 == 50331648)
    {
      (*(*v3 + 24))(v3, v6, 125);
      *a2 = bswap32(v7) >> 16;
      operator new[]();
    }
  }

  return 0;
}

BOOL sub_1000055B0(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 96)
  {
    (*(*a1 + 24))(a1, a2, 96);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 96, v4);
  }

  return v5 == 96;
}

BOOL sub_10000566C()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = sub_100005908(v2, &v9);
  if (v3)
  {
    v4 = 0;
    v5 = *v1;
    *(v1 + 8) = vmulq_n_f64(v9, *v1);
    *(v1 + 24) = v5 * v10;
    v6 = v1;
    do
    {
      v7 = &v11[v4];
      v12 = vld2q_f64(v7);
      v6[2] = vmulq_n_f64(v12.val[0], v5);
      v6[130] = vmulq_n_f64(v12.val[1], v5);
      v4 += 32;
      ++v6;
    }

    while (v4 != 4096);
    bzero((v1 + 4128), 0x40uLL);
    bzero((v1 + 4192), 0x40uLL);
  }

  return v3;
}

BOOL sub_100005744()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = sub_100005908(v2, &v9);
  if (v3)
  {
    v4 = *v1;
    *(v1 + 8) = vmulq_n_f64(v9, *v1);
    *(v1 + 24) = v4 * v10;
    v5 = &v9;
    v6 = 256;
    v7 = v1;
    do
    {
      v7[2] = vmulq_n_f64(*(v5 + 24), v4);
      v7[130] = vmulq_n_f64(*(v5++ + 2072), v4);
      ++v7;
      v6 -= 2;
    }

    while (v6);
    bzero((v1 + 4128), 0x40uLL);
    bzero((v1 + 4192), 0x40uLL);
  }

  return v3;
}

double sub_10000581C()
{
  __chkstk_darwin();
  v1 = v0;
  if (sub_1000059CC(v2, &v12))
  {
    v4 = *v1;
    *(v1 + 8) = vmulq_n_f64(v12, *v1);
    *(v1 + 24) = v4 * v13;
    v5 = &v12;
    v6 = 256;
    v7 = v1;
    do
    {
      v7[2] = vmulq_n_f64(*(v5 + 24), v4);
      v7[130] = vmulq_n_f64(*(v5++ + 2072), v4);
      ++v7;
      v6 -= 2;
    }

    while (v6);
    v8 = v15;
    *(v1 + 4128) = v14;
    *(v1 + 4144) = v8;
    v9 = v17;
    *(v1 + 4160) = v16;
    *(v1 + 4176) = v9;
    v10 = v19;
    *(v1 + 4192) = v18;
    *(v1 + 4208) = v10;
    result = *&v20;
    v11 = v21;
    *(v1 + 4224) = v20;
    *(v1 + 4240) = v11;
  }

  return result;
}

BOOL sub_100005908(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4144)
  {
    (*(*a1 + 24))(a1, a2, 4144);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4144, v4);
  }

  return v5 == 4144;
}

BOOL sub_1000059CC(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4248)
  {
    (*(*a1 + 24))(a1, a2, 4248);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4248, v4);
  }

  return v5 == 4248;
}

double sub_100005A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047E4((a1 + 8), 0);
  if ((*(*v4 + 16))(v4))
  {
    (*(*v4 + 24))(v4, &v6, 4);
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          return sub_10000624C(a1, v4, a2);
        }

        if (v6 == 6)
        {
          sub_1000062C8(a1, v4, a2);
        }

        return result;
      }

      if (!sub_1000064DC(v4, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 1)
    {
      if (!sub_100006364(v4, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 2 && sub_100006420(v4, &v7))
    {
LABEL_15:
      *(a2 + 4280) = v7;
      result = v8;
      *(a2 + 24) = v8;
    }
  }

  return result;
}

void sub_100005BDC(uint64_t a1)
{
  v1 = sub_1000047E4((a1 + 8), 2);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 24))(v1, &v2, 4);
    switch(v2)
    {
      case 3:
        sub_10000581C();
        break;
      case 2:
        sub_100005744();
        break;
      case 1:
        sub_10000566C();
        break;
    }
  }
}

void sub_100005CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047E4((a1 + 8), 1);
  if ((*(*v4 + 16))(v4))
  {
    (*(*v4 + 24))(v4, &v5, 4);
    if (v5 == 3)
    {
      sub_100006764(a1, v4, a2);
    }

    else if (v5 == 2)
    {
      sub_100006710(a1, v4, a2);
    }

    else if (v5 == 1 && sub_100006364(v4, &v6))
    {
      *(a2 + 8544) = v6;
      *(a2 + 4288) = v7;
      *(a2 + 8904) = 0;
      *(a2 + 8920) = 0;
      *(a2 + 8912) = 0;
    }
  }
}

uint64_t sub_100005DE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000047E4((a1 + 8), 5);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v7, 4);
    if (v7 == 1)
    {
      result = sub_1000067C8(v3, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 16) = v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000047E4((a1 + 8), 6);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v8, 4);
    if (v8 == 1)
    {
      result = sub_100006884(v3, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 24) = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005F78(uint64_t a1, uint64_t a2)
{
  memcpy((a2 + 8928), (a2 + 24), 0x10A8uLL);
  v3 = 0;
  v4 = (a2 + 13192);
  v5 = vdupq_n_s64(3uLL);
  v6 = vdupq_n_s64(2uLL);
  do
  {
    v7 = v4;
    v8 = 4;
    v9 = xmmword_10001DDF0;
    do
    {
      if (vmovn_s64(vcgtq_u64(v5, v9)).u8[0])
      {
        if (v3 + v8 == 4)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *v7 = v10;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v9)).i32[1])
      {
        if (v3 + v8 == 5)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v7[3] = v11;
      }

      v9 = vaddq_s64(v9, v6);
      v7 += 6;
      v8 -= 2;
    }

    while (v8);
    ++v3;
    ++v4;
  }

  while (v3 != 3);
  *(a2 + 13264) = *(a2 + 8648);
  *(a2 + 13280) = *(a2 + 8664);
  if (*(a2 + 8912) == 0.0 && *(a2 + 8920) == 0.0)
  {
    v12 = *(a2 + 4296);
    if (v12 != 0.0)
    {
      *(a2 + 8912) = v12;
    }
  }

  v13 = *(a2 + 8936);
  if (v13 != 0.0 && *(a2 + 8880) == 0.0)
  {
    *(a2 + 8880) = v13;
  }

  v14 = *(a2 + 8944);
  if (v14 != 0.0)
  {
    v15 = *(a2 + 8952);
    if (v15 != 0.0 && *(a2 + 8728) == 0.0 && *(a2 + 8744) == 0.0 && *(a2 + 8792) == 0.0 && *(a2 + 8808) == 0.0)
    {
      *(a2 + 8728) = v14;
      *(a2 + 8792) = v15;
    }
  }

  return 1;
}

uint64_t sub_1000060F4(uint64_t a1)
{
  v1 = sub_1000047E4((a1 + 8), 12);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 32))(v1);
    operator new[]();
  }

  return 0;
}

double sub_10000624C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_100006598(a2, &v6))
  {
    *(a3 + 4280) = v6;
    v5 = v7;
    *(a3 + 24) = v7;
    *(a3 + 8880) = 0;
    *(a3 + 8896) = 0;
    *(a3 + 8888) = 0;
    *(a3 + 8720) = v10;
    *(a3 + 8728) = 0;
    *(a3 + 8792) = 0;
    *(a3 + 8736) = v5 * v8;
    result = v5 * v9;
    *(a3 + 8800) = result;
  }

  return result;
}

BOOL sub_1000062C8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = sub_100006654(a2, v11);
  if (result)
  {
    v5 = v14;
    *(a3 + 8896) = v15;
    v6 = v12;
    *(a3 + 8880) = v12 * v13;
    *(a3 + 4280) = v11[1];
    *(a3 + 24) = v6;
    *(a3 + 8888) = v6 * v5;
    *(a3 + 8720) = v16[8];
    v7 = v16;
    v8 = (a3 + 8792);
    v9 = 8;
    do
    {
      v8[-4] = vmulq_n_f64(v7[-4], v6);
      v10 = *v7++;
      *v8++ = vmulq_n_f64(v10, v6);
      v9 -= 2;
    }

    while (v9);
  }

  return result;
}

BOOL sub_100006364(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 12)
  {
    (*(*a1 + 24))(a1, a2, 12);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 12, v4);
  }

  return v5 == 12;
}

BOOL sub_100006420(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 20)
  {
    (*(*a1 + 24))(a1, a2, 20);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 20, v4);
  }

  return v5 == 20;
}

BOOL sub_1000064DC(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 36)
  {
    (*(*a1 + 24))(a1, a2, 36);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 36, v4);
  }

  return v5 == 36;
}

BOOL sub_100006598(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 84)
  {
    (*(*a1 + 24))(a1, a2, 84);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 84, v4);
  }

  return v5 == 84;
}

BOOL sub_100006654(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 176)
  {
    (*(*a1 + 24))(a1, a2, 176);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 176, v4);
  }

  return v5 == 176;
}

double sub_100006710(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_100006420(a2, &v6))
  {
    *(a3 + 8544) = v6;
    v5 = v8;
    *(a3 + 4288) = v7;
    *(a3 + 8904) = v5;
    result = 0.0;
    *(a3 + 8912) = 0u;
  }

  return result;
}

double sub_100006764(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_1000064DC(a2, &v7))
  {
    *(a3 + 8544) = v7;
    v5 = v8;
    v6 = v9;
    *(a3 + 4288) = v8;
    *(a3 + 8904) = v6;
    *(a3 + 8912) = v5 * v10;
    result = v5 * v11;
    *(a3 + 8920) = result;
  }

  return result;
}

BOOL sub_1000067C8(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 24)
  {
    (*(*a1 + 24))(a1, a2, 24);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 24, v4);
  }

  return v5 == 24;
}

BOOL sub_100006884(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 32)
  {
    (*(*a1 + 24))(a1, a2, 32);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 32, v4);
  }

  return v5 == 32;
}

_BYTE *sub_100006958(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000769C();
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

BOOL sub_100006A10()
{
  sub_100006958(__p, "JYKY");
  v0 = IOServiceNameMatching("product");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  v2 = MatchingService;
  if (!MatchingService)
  {
    v16 = 1;
    goto LABEL_33;
  }

  v3 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"rosaline-serial-num", kCFAllocatorDefault, 3u);
  v4 = v3;
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    sub_100006958(&v22, &unk_10002003A);
    if (Length)
    {
      v7 = -11;
      do
      {
        v9 = *BytePtr++;
        v8 = v9;
        if (!v9)
        {
          break;
        }

        if (v7 <= 3)
        {
          std::string::push_back(&v22, v8);
        }

        ++v7;
        --Length;
      }

      while (Length);
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v11 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v11 = __p[1];
    }

    if (size != v11 || ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &v22) : (v12 = v22.__r_.__value_.__r.__words[0]), (v24 & 0x80u) == 0 ? (v13 = __p) : (v13 = __p[0]), memcmp(v12, v13, size)))
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
      goto LABEL_23;
    }

    v18 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v19 = IOServiceGetMatchingService(kIOMainPortDefault, v18);
    v14 = v19;
    if (v19)
    {
      v20 = IORegistryEntrySearchCFProperty(v19, "IOService", @"floodComplianceRevision", kCFAllocatorDefault, 3u);
      v15 = v20;
      if (v20)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr))
        {
          v16 = (valuePtr & 0xC0) != 0;
        }

        else
        {
          NSLog(@"Error converting vader compliance value\n");
          v16 = 0;
        }

LABEL_23:
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_27;
      }

      NSLog(@"Couldn't read vader compliance\n");
    }

    else
    {
      NSLog(@"Unable to find prox service");
      v14 = 0;
    }

    v16 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v15 = 0;
  v14 = 0;
  v16 = 1;
LABEL_27:
  IOObjectRelease(v2);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    IOObjectRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_33:
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_100006C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006CD8()
{
  v0 = __chkstk_darwin();
  v1 = 0;
  v2 = *(v0 + 112) + 16;
  v3 = -1;
  v4 = v2;
  do
  {
    v5 = *v4;
    v4 += 24;
    if (v5 == 1718186595 && *(v2 - 8))
    {
      v3 = v1;
    }

    ++v1;
    v2 = v4;
  }

  while (v1 != 6);
  if (v3 == -1)
  {
    NSLog(@"Found no IR sensor\n");
    return 1;
  }

  v6 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", kCFAllocatorDefault, 3u);
  if (v8)
  {
    CFRelease(v8);
    v9 = 0;
  }

  else
  {
    NSLog(@"LoadPDEFiles: No Savage found. Never mind");
    v9 = 8;
  }

  v10 = sub_100002758();
  v11 = v10;
  NSLog(@"LoadPDEFiles: isOverridden %d", v10);
  v44 = 0;
  sub_100006958(&v43, &unk_10002003A);
  v12 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  if (v44)
  {

    if (!v11)
    {
      NSLog(@"Could not find SEP reference location. Will use ISP references");
    }
  }

  else
  {
    v13 = v12;
    sub_100007800(&v43, [v12 UTF8String]);
    std::string::append(&v43, "/", 1uLL);

    if (!v11)
    {
      sub_10000737C(&v43.__r_.__value_.__l.__data_, 5, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0].__r_.__value_.__r.__words[0];
      }

      v15 = fopen(v14, "r");
      v16 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if (v15)
      {
        v17 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = __p;
        }

        NSLog(@"Found reference plist at %s. Will use SEP references", v17);
        v9 |= 1u;
        fclose(v15);
      }

      else
      {
        v18 = __p[0].__r_.__value_.__r.__words[0];
        v19 = __error();
        v20 = __p;
        if (v16 < 0)
        {
          v20 = v18;
        }

        NSLog(@"Could not find reference plist at %s (errno: %d). Will use ISP references", v20, *v19);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  sub_10000B0C8(v0, outputStruct);
  v21 = outputStruct[11];
  v22 = sub_100012B10(v0);
  if (v21)
  {
    v23 = v9 | 2;
  }

  else
  {
    v23 = v9;
  }

  if (v22)
  {
    v24 = 4;
  }

  else
  {
    v24 = 16;
  }

  sub_10000203C(v23 | v24);
  sub_1000026C8();
  __p[0].__r_.__value_.__r.__words[0] = 0;
  if (sub_10000226C(__p))
  {
    operator new[]();
  }

  NSLog(@"Error: Couldn't send NVM\n");
  bzero(__p, 0x14uLL);
  NSLog(@"Reading rosaline serial number from sysconfig\n");
  v25 = IOServiceNameMatching("product");
  v26 = IOServiceGetMatchingService(kIOMainPortDefault, v25);
  v27 = IORegistryEntrySearchCFProperty(v26, "IOService", @"rosaline-serial-num", kCFAllocatorDefault, 3u);
  v28 = v27;
  if (!v27)
  {
    NSLog(@"Couldn't read serial number\n");
    goto LABEL_51;
  }

  BytePtr = CFDataGetBytePtr(v27);
  Length = CFDataGetLength(v28);
  memcpy(&__p[0].__r_.__value_.__s.__data_[2], BytePtr, Length);
  NSLog(@"Reading rosaline power from FDR\n");
  LOBYTE(BytePtr) = sub_100002048(__p);
  CFRelease(v28);
  if ((BytePtr & 1) == 0)
  {
    NSLog(@"Reading rosaline power from IOReg\n");
    v31 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v32 = IOServiceGetMatchingService(kIOMainPortDefault, v31);
    v33 = IORegistryEntrySearchCFProperty(v32, "IOService", @"floodCalibrationCurrent", kCFAllocatorDefault, 3u);
    v34 = v33;
    if (v33)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = valuePtr;
        if (valuePtr < 0x10000)
        {
          CFRelease(v34);
          goto LABEL_48;
        }

        NSLog(@"Error converting calibrated power value:  could not fit 32-bit value into 16-bit destination \n");
      }

      else
      {
        NSLog(@"Error converting calibrated power value\n");
      }

      CFRelease(v34);
    }

    else
    {
      NSLog(@"Could not read calibrated power from IOReg\n");
    }

    NSLog(@"Reading rosaline power from sysconfig\n");
    v35 = IOServiceNameMatching("isp");
    v36 = IOServiceGetMatchingService(kIOMainPortDefault, v35);
    v37 = IORegistryEntrySearchCFProperty(v36, "IOService", @"rosaline-calibration-current", kCFAllocatorDefault, 3u);
    v38 = v37;
    if (!v37)
    {
      NSLog(@"Could not read calibrated power from sysconfig\n");
      goto LABEL_51;
    }

    LOWORD(__p[0].__r_.__value_.__l.__data_) = *(CFDataGetBytePtr(v37) + 1);
    CFRelease(v38);
  }

LABEL_48:
  NSLog(@"Sending rosaline configuration: SN: %s; Power: %d\n", &__p[0].__r_.__value_.__s.__data_[2], LOWORD(__p[0].__r_.__value_.__l.__data_));
  v39 = sub_1000119D4(v0, v3, __p, 0x14u, 6u);
  if (!v39)
  {
    goto LABEL_52;
  }

  NSLog(@"Failed to send rosaline data file: 0x%08X\n", v39);
LABEL_51:
  NSLog(@"Error: Couldn't send rosaline configuration\n");
LABEL_52:
  bzero(__p, 0x3400uLL);
  if ((sub_10000285C() & 1) == 0)
  {
    NSLog(@"Failed to read PCE Calibration (FDR data)\n");
    goto LABEL_61;
  }

  if (v23)
  {
    v40 = &v43;
  }

  else
  {
    v40 = byte_10039DBD0;
  }

  if (sub_1000074C8(v0, &v40->__r_.__value_.__l.__data_, v3))
  {
    NSLog(@"Failed to send references to FW\n");
LABEL_61:
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    NSLog(@"Failed to load PDE files\n");
    return 1;
  }

  if (sub_1000119D4(v0, v3, __p, 0x3400u, 0xFFu))
  {
    NSLog(@"Failed to send PCE calibration to FW\n");
    goto LABEL_61;
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_10000732C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000737C(const void **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_100007848(a1, "reference", &v13);
  if ((a2 - 4) > 0xA)
  {
    v5 = &unk_10002003A;
  }

  else
  {
    v5 = off_100028C08[a2 - 4];
  }

  sub_100006958(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v13, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, ".plist", 6uLL);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_10000747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000074C8(uint64_t a1, const void **a2, int a3)
{
  v13 = 256;
  sub_10000737C(a2, 4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  sub_1000079A0(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:p_p]], a2, 2, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000737C(a2, 5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  v8 = sub_1000079A0(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:v7]], a2, 1, &v13);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      return v9;
    }
  }

  else if (v8)
  {
    return v9;
  }

  sub_10000737C(a2, 12, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  sub_1000079A0(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:v10]], a2, 3, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_100007678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000076B4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100007710(exception, a1);
}

std::logic_error *sub_100007710(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

std::string *sub_100007744(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100007800(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100007744(a1, __s, v4);
}

uint64_t sub_100007848@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_100007914(a3, v6 + v5);
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

uint64_t sub_100007914(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000769C();
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

uint64_t sub_1000079A0(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = 3758097084;
  if (a3)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v13 = [a3 allKeys];
    v32 = [NSSortDescriptor sortDescriptorWithKey:@"doubleValue" ascending:1];
    v14 = [v13 sortedArrayUsingDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v32, 1)}];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v15 = [a3 objectForKey:@"FormatDR"];
    if (v15)
    {
      v16 = [v15 intValue];
      *(v27 + 6) = v16;
    }

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3052000000;
    v25[3] = sub_100007C28;
    v25[4] = sub_100007C38;
    v25[5] = &off_100032F48;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100007C44;
    v18[3] = &unk_100028BE8;
    v18[4] = a3;
    v18[5] = v25;
    v19 = a2;
    v20 = a5;
    v18[10] = a1;
    v18[11] = a6;
    v18[6] = v30;
    v18[7] = &v26;
    v18[8] = &v21;
    v18[9] = a4;
    [v14 enumerateObjectsUsingBlock:v18];
    if (*(v22 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = 3758097084;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(v30, 8);
  }

  return v6;
}

void sub_100007BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100007C44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([*(*(*(a1 + 40) + 8) + 40) containsObject:a2] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKey:a2];
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = [v7 UTF8String];
      v10 = v9;
      if (*(v8 + 23) >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      v12 = strlen(v9);
      v13 = __p;
      sub_100007914(__p, v11 + v12);
      if (v29 < 0)
      {
        v13 = __p[0];
      }

      if (v11)
      {
        if (*(v8 + 23) >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        memmove(v13, v14, v11);
      }

      v15 = v13 + v11;
      if (v12)
      {
        memmove(v15, v10, v12);
      }

      v15[v12] = 0;
      if (v29 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = *(a1 + 100);
      v27 = *(a1 + 96);
      v19 = *(a1 + 80);
      v18 = *(a1 + 88);
      v20 = *v18;
      *v18 = v20 + 1;
      v21 = *(*(*(a1 + 48) + 8) + 24);
      [a2 doubleValue];
      v23 = v22;
      v24 = *(*(*(a1 + 56) + 8) + 24);
      NSLog(@"Sending reference file %s, type: %d\n", v16, v20);
      NSLog(@"Trying to load reference file %s (type: %d, index: %d, temperature: %lf)\n", v16, v20, v21, v23);
      v25 = fopen(v16, "rb");
      v26 = v25;
      if (v25)
      {
        fseeko(v25, 0, 2);
        ftello(v26);
        fseeko(v26, 0, 0);
        operator new[]();
      }

      NSLog(@"Could not open input file: %s\n", v16);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100007F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100007F20()
{
  sub_100006958(byte_10039DBD0, "/var/mobile/Library/ISP/Pearl/");
  __cxa_atexit(&std::string::~string, byte_10039DBD0, &_mh_execute_header);
  qword_10039DBE8 = 0x29000000228;
  word_10039DBF0 = 0;
  unk_10039DBF4 = 0x100000000D8;
  word_10039DBFC = 0;
  qword_10039DC00 = 0x16800000280;
  word_10039DC08 = 1;
  unk_10039DC0C = 0x1E000000280;
  word_10039DC14 = 1;
  qword_10039DC18 = 0x148000000B8;
  word_10039DC20 = 1;
  unk_10039DC24 = vdup_n_s32(0x280u);
  word_10039DC2C = 257;
  qword_10039DC30 = 0x12000000200;
  word_10039DC38 = 257;
  unk_10039DC3C = 0x20000000120;
  word_10039DC44 = 257;
  qword_10039DC48 = 0x29000000228;
  word_10039DC50 = 0;
  unk_10039DC54 = 0x100000000D8;
  word_10039DC5C = 0;
  qword_10039DC60 = 0x28000000168;
  word_10039DC68 = 1;
  unk_10039DC6C = 0x280000001E0;
  word_10039DC74 = 1;
  qword_10039DC78 = 0x148000000B8;
  word_10039DC80 = 1;
  unk_10039DC84 = unk_10039DC24;
  word_10039DC8C = 257;
  qword_10039DC90 = 0x12000000200;
  word_10039DC98 = 257;
  unk_10039DC9C = 0x20000000120;
  word_10039DCA4 = 257;
  qword_10039DCA8 = 0xF000000140;
  word_10039DCB0 = 256;
  unk_10039DCB4 = 0x78000000A0;
  word_10039DCBC = 0;
  qword_10039DCC0 = 0xB400000140;
  word_10039DCC8 = 256;
  unk_10039DCCC = 0x5A000000A0;
  word_10039DCD4 = 0;
  *&result = 0xB800000148;
  qword_10039DCD8 = 0xB800000148;
  word_10039DCE0 = 256;
  return result;
}

uint64_t sub_1000080B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 80), 0);
  pthread_cond_init((a1 + 144), 0);
  *(a1 + 192) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 64) = pthread_self();
  Current = CFRunLoopGetCurrent();
  *(a1 + 48) = CFRetain(Current);
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_100008130(uint64_t a1)
{
  for (i = 0; i < CFArrayGetCount(*a1); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
    sub_10000B820(ValueAtIndex);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRunLoopRemoveSource(*(a1 + 48), v6, kCFRunLoopDefaultMode);
      *(a1 + 24) = 0;
      v5 = *(a1 + 16);
    }

    IONotificationPortDestroy(v5);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    dispatch_sync(v7, &stru_100028C80);
    dispatch_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  pthread_cond_destroy((a1 + 144));
  pthread_mutex_destroy((a1 + 80));
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  return a1;
}

uint64_t sub_100008214(uint64_t a1)
{
  v2 = 3758097086;
  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = sub_100008498;
  v3 = CFArrayCreateMutable(0, 0, &callBacks);
  *a1 = v3;
  if (!v3)
  {
    return 3758097085;
  }

  v4 = IOMasterPort(bootstrap_port, (a1 + 8));
  if (v4)
  {
    return v4;
  }

  v6 = IOServiceMatching("AppleH16CamIn");
  v7 = IONotificationPortCreate(*(a1 + 8));
  *(a1 + 16) = v7;
  if (v7)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    *(a1 + 24) = RunLoopSource;
    if (RunLoopSource)
    {
      CFRunLoopAddSource(*(a1 + 48), RunLoopSource, kCFRunLoopDefaultMode);
      v4 = IOServiceAddMatchingNotification(*(a1 + 16), "IOServiceFirstPublish", v6, sub_1000084DC, a1, (a1 + 56));
      if (v4)
      {
        return v4;
      }

      *(a1 + 72) = dispatch_queue_create("com.apple.h16ispdevicecontroller.notifications.queue", 0);
      sub_1000084DC(a1, *(a1 + 56));
      pthread_mutex_lock((a1 + 80));
      if (*(a1 + 192))
      {
        v9 = 0;
      }

      else
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        __tp.tv_sec += 2;
        v9 = pthread_cond_timedwait((a1 + 144), (a1 + 80), &__tp);
        if (v9 && (*(a1 + 192) & 1) == 0)
        {
          if (off_10039DB88 == &_os_log_default)
          {
            off_10039DB88 = os_log_create("com.apple.isp", "device");
          }

          v9 = 3758097110;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10001A0FC((a1 + 192));
          }
        }
      }

      pthread_mutex_unlock((a1 + 80));
      return v9;
    }

    else
    {
      if (off_10039DB88 == &_os_log_default)
      {
        off_10039DB88 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001A194();
      }

      IONotificationPortDestroy(*(a1 + 16));
      *(a1 + 16) = 0;
    }
  }

  else
  {
    if (off_10039DB88 == &_os_log_default)
    {
      off_10039DB88 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001A21C();
    }
  }

  return v2;
}

void sub_100008498(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000B95C(a2);

    operator delete();
  }
}

uint64_t sub_1000084DC(uint64_t a1, io_iterator_t iterator)
{
  properties = 0;
  while (1)
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      break;
    }

    if (!IORegistryEntryCreateCFProperties(result, &properties, kCFAllocatorDefault, 0))
    {
      if (!CFArrayGetCount(*a1))
      {
        operator new();
      }

      CFRelease(properties);
      *(a1 + 32);
      pthread_mutex_lock((a1 + 80));
      *(a1 + 192) = 1;
      pthread_cond_broadcast((a1 + 144));
      pthread_mutex_unlock((a1 + 80));
    }
  }

  return result;
}

int64_t sub_1000085FC(xpc_connection_t *a1, void *a2)
{
  v4 = xpc_connection_send_message_with_reply_sync(*a1, a2);
  if (v4)
  {
    v5 = v4;
    type = xpc_get_type(v4);
    if (type == &_xpc_type_dictionary)
    {
      length = 3680;
      v12 = off_10039DB90;
      if (off_10039DB90 == &_os_log_default)
      {
        v12 = os_log_create("com.apple.isp", "services");
        off_10039DB90 = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10001A320(v12);
      }

      int64 = xpc_dictionary_get_int64(v5, "H16ISPServicesRemoteReturnKey");
      data = xpc_dictionary_get_data(v5, "H16ISPServicesRemoteDataKey", &length);
      xpc_dictionary_set_data(a2, "H16ISPServicesRemoteDataKey", data, length);
      value = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRReportKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRReportKey", value);
      v15 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey", v15);
      v16 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeNameKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeNameKey", v16);
      v17 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeDataKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeDataKey", v17);
    }

    else
    {
      int64 = 3758097084;
      if (type == &_xpc_type_error)
      {
        v8 = xpc_copy_description(v5);
        if (v8)
        {
          v9 = v8;
          v10 = off_10039DB90;
          if (off_10039DB90 == &_os_log_default)
          {
            v10 = os_log_create("com.apple.isp", "services");
            off_10039DB90 = v10;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10001A2A4();
          }

          free(v9);
        }

        int64 = 3758097111;
        if (v5 != &_xpc_error_connection_invalid)
        {
          xpc_connection_cancel(*a1);
        }
      }
    }

    xpc_release(v5);
  }

  else
  {
    v11 = off_10039DB90;
    if (off_10039DB90 == &_os_log_default)
    {
      v11 = os_log_create("com.apple.isp", "services");
      off_10039DB90 = v11;
    }

    int64 = 3758097084;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001A3A4();
    }
  }

  return int64;
}

uint64_t sub_10000888C(xpc_connection_t *a1, xpc_object_t *a2)
{
  v2 = 3758097084;
  if (!*a1)
  {
    return 3758097111;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 3758097085;
  }

  v6 = v5;
  xpc_dictionary_set_uint64(v5, "H16ISPServicesRemoteTypeKey", 2uLL);
  xpc_dictionary_set_data(v6, "H16ISPServicesRemoteDataKey", a2, 0xE60uLL);
  if ((*a2 - 6) >= 2)
  {
    if (*a2 != 14)
    {
      goto LABEL_10;
    }

    v7 = "H16ISPServicesRemoteRGBIRFinalInputPCEConfigKey";
  }

  else
  {
    v7 = "H16ISPServicesRemoteCFTypeNameKey";
  }

  xpc_dictionary_set_value(v6, v7, a2[1]);
LABEL_10:
  v8 = sub_1000085FC(a1, v6);
  length = 0;
  data = xpc_dictionary_get_data(v6, "H16ISPServicesRemoteDataKey", &length);
  if (length == 3680)
  {
    v2 = v8;
    memcpy(a2, data, 0xE60uLL);
    v10 = *a2;
    if ((*a2 - 6) < 2)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      v11 = "H16ISPServicesRemoteCFTypeDataKey";
    }

    else
    {
      if (v10 != 14)
      {
        if (v10 != 13)
        {
LABEL_24:
          xpc_release(v6);
          return v2;
        }

        if (v8)
        {
          a2[1] = 0;
          goto LABEL_24;
        }

        value = xpc_dictionary_get_value(v6, "H16ISPServicesRemoteRGBIRReportKey");
        a2[1] = value;
LABEL_23:
        xpc_retain(value);
        goto LABEL_24;
      }

      if (v8)
      {
LABEL_19:
        a2[2] = 0;
        goto LABEL_24;
      }

      v11 = "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey";
    }

    value = xpc_dictionary_get_value(v6, v11);
    a2[2] = value;
    goto LABEL_23;
  }

  return v2;
}

uint64_t sub_100008A24(xpc_connection_t *a1, xpc_object_t *a2)
{
  v4 = off_10039DB90;
  if (off_10039DB90 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "services");
    off_10039DB90 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v10 = 67109120;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (sent)\n", &v10, 8u);
  }

  v6 = sub_10000888C(a1, a2);
  v7 = off_10039DB90;
  if (off_10039DB90 == &_os_log_default)
  {
    v7 = os_log_create("com.apple.isp", "services");
    off_10039DB90 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    v10 = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (reply=0x%08X)\n", &v10, 0xEu);
  }

  return v6;
}

uint64_t sub_100008BB8(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  sub_10000902C(&v10);
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = &v10;
  v7 = 48;
  pthread_attr_init(&v11);
  pthread_attr_setschedparam(&v11, &v7);
  pthread_attr_setdetachstate(&v11, 1);
  pthread_create(&v8, &v11, sub_100008CC4, v9);
  pthread_attr_destroy(&v11);
  sub_100009070(&v10);
  *a1 = v9[0];
  sub_100009068(&v10);
  return 0;
}

void sub_100008CC4(uint64_t a1)
{
  pthread_setname_np("H16ISPServicesThread");
  j__pthread_mutex_lock(*(a1 + 24));
  operator new();
}

void sub_100008D80(uint64_t a1)
{
  v2 = CFRetain(*(a1 + 48));
  CFRunLoopStop(v2);
  v3 = 0;
  pthread_join(*(a1 + 64), &v3);
  sub_100008210(a1);
  operator delete();
}

uint64_t sub_100008DF0(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, kCFBooleanTrue);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

unsigned int *sub_100008FA0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 20);
    do
    {
      v5 = *v4;
      if (v4 + v5 > a1 + a2)
      {
        break;
      }

      if (*(v4 + 4) == a3)
      {
        return v4 + 1;
      }

      v4 = (v4 + (v5 + 4));
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_100008FEC(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_mutex_lock(a1);
  return a1;
}

uint64_t sub_100009030(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_10000907C(uint64_t a1)
{
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

const void **sub_1000090B8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000090F0(uint64_t a1)
{
  v25 = 255;
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v24 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = v4;
  if (!a1)
  {
    sub_10001A904(v4);
    return;
  }

  if (!v4)
  {
    NSLog(@"Personalized firmware root path accessor not found");
    return;
  }

  if (sub_100012AAC(a1, &v25))
  {
    v6 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT"];
    if (v6)
    {
      v20 = v6;
      NSLog(@"Found Savage override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT");
      v9 = 0;
      v7 = 0;
      v15 = 3722248192;
    }

    else
    {
      v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageDeviceRev", kCFAllocatorDefault, 0);
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageMNS", kCFAllocatorDefault, 0);
      v9 = v8;
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        NSLog(@"IR sensor not detected");
        v22 = 0;
        v21 = 0;
        v15 = 3149594624;
        goto LABEL_19;
      }

      v11 = CFGetTypeID(v7);
      if (v11 != CFDataGetTypeID() || (v12 = CFGetTypeID(v9), v12 != CFDataGetTypeID()))
      {
        v22 = 0;
        goto LABEL_21;
      }

      CFDataGetBytePtr(v7);
      BytePtr = CFDataGetBytePtr(v9);
      v14 = "Dev";
      if (BytePtr && *BytePtr == 10)
      {
        v14 = "Prod";
      }

      v15 = 2863267840;
      snprintf(__str, 0x400uLL, "Savage/SavagePatch%s.DAT", v14);
      v16 = [v5 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
      NSLog(@"DAT file for unprovisioned Savage - %@", v16);
      v17 = [v5 stringByAppendingPathComponent:@"/Savage/SavagePatch.DAT"];
      NSLog(@"DAT file for provisioned Savage - %@", v17);
      v18 = [NSData dataWithContentsOfFile:v16];
      if (v18)
      {
        v20 = v18;
        NSLog(@"Loading DAT file for unprovisioned Savage");
      }

      else
      {
        v19 = [NSData dataWithContentsOfFile:v17];
        if (!v19)
        {
          NSLog(@"No DAT file for Savage found");
          v22 = 0;
          v21 = 0;
          v15 = 3435921408;
          goto LABEL_19;
        }

        v20 = v19;
      }
    }

    v21 = [(NSData *)v20 length];
    v22 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
    if (!v22)
    {
      goto LABEL_20;
    }

    [(NSData *)v20 getBytes:v22 length:v21];
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v9 = 0;
    v7 = 0;
    v15 = 4008574976;
  }

LABEL_19:
  v23 = sub_1000119D4(a1, v25 | 0x80000000, v22, v21, v15 | 5);
  NSLog(@"Load Savage DAT File: Size = %ld; SendStatus = %08x, FileStatus = 0x%08X", v21, v23, v15);
LABEL_20:
  if (v9)
  {
LABEL_21:
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  if (v22)
  {
    free(v22);
  }
}

void sub_100009484(uint64_t a1)
{
  v29 = 2;
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v28 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT"];
  if (!a1)
  {
    NSLog(@"pDevice is NULL");
    if (!v4)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v4)
  {
    NSLog(@"Personalized firmware root path accessor not found");
    return;
  }

  v6 = v5;
  if (v5)
  {
    NSLog(@"Found Yonkers override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT");
    v9 = 0;
    v7 = 0;
    v20 = 3722248192;
    goto LABEL_29;
  }

  if (!sub_100012A58(a1, &v29))
  {
LABEL_41:
    CFRelease(v4);
    return;
  }

  v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersFabRevision", kCFAllocatorDefault, 0);
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersMNS", kCFAllocatorDefault, 0);
  v9 = v8;
  if (v8)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    NSLog(@"Secure RGB sensor not detected");
    v26 = 0;
    v25 = 0;
    v20 = 3149594624;
    goto LABEL_31;
  }

  v11 = CFGetTypeID(v8);
  if (v11 != CFDataGetTypeID() || (v12 = CFGetTypeID(v7), v12 != CFDataGetTypeID()))
  {
    v26 = 0;
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(v7);
  if (BytePtr)
  {
    v14 = __rev16(*BytePtr);
    v15 = "Ymgt";
    v17 = v14 == 54529 || v14 == 59905 || v14 == 61953;
    if (!v17 && v14 != 56577)
    {
      v15 = "Ngsk";
    }
  }

  else
  {
    v15 = "Ngsk";
  }

  v18 = CFDataGetBytePtr(v9);
  v19 = "Dev";
  if (v18 && *v18 == 8)
  {
    v19 = "Prod";
  }

  v20 = 2863267840;
  snprintf(__str, 0x400uLL, "Yonkers/YonkersPatch%s%s.DAT", v15, v19);
  v21 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
  NSLog(@"DAT file for unprovisioned Yonkers - %@", v21);
  v22 = [v4 stringByAppendingPathComponent:@"/Yonkers/YonkersPatch.DAT"];
  NSLog(@"DAT file for provisioned Yonkers - %@", v22);
  v23 = [NSData dataWithContentsOfFile:v21];
  if (v23)
  {
    v6 = v23;
    NSLog(@"Loading DAT file for unprovisioned Yonkers");
  }

  else
  {
    v24 = [NSData dataWithContentsOfFile:v22];
    if (!v24)
    {
      NSLog(@"No DAT file for Yonkers found");
      v26 = 0;
      v25 = 0;
      v20 = 3435921408;
      goto LABEL_31;
    }

    v6 = v24;
  }

LABEL_29:
  v25 = [(NSData *)v6 length];
  v26 = malloc_type_calloc(v25, 1uLL, 0x100004077774924uLL);
  if (!v26)
  {
    goto LABEL_32;
  }

  [(NSData *)v6 getBytes:v26 length:v25];
LABEL_31:
  v27 = sub_1000119D4(a1, v29 | 0x80000000, v26, v25, v20 | 5);
  NSLog(@"Load Yonkers DAT File: Size = %ld; SendStatus = %08x, 0x%08X", v25, v27, v20);
LABEL_32:
  if (v9)
  {
LABEL_33:
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v4);
  if (v26)
  {
    free(v26);
  }
}

uint64_t sub_1000099C8(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x24u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_100009A38(uint64_t a1, void *a2)
{
  v2 = 3758097085;
  err = 0;
  if (!a2 || *a2)
  {
    return 3758097090;
  }

  if (byte_10039DD1E)
  {
    return 0;
  }

  v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/usr/local/share/firmware/isp/ISPUnitInfo.plist", kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    format = 0;
    v7 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v5);
    if (v7)
    {
      v8 = v7;
      if (CFReadStreamOpen(v7))
      {
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v15 = "GetUnitInfoPropertyDict";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - Parsing ISPUnitInfo.plist\n", buf, 0xCu);
        }

        v9 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v8, 0, 0, &format, &err);
        if (err)
        {
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10001A9C4();
          }

          v10 = CFErrorCopyDescription(err);
          if (v10)
          {
            v11 = v10;
            CFShow(v10);
            CFRelease(v11);
          }
        }

        else
        {
          v2 = 0;
          *a2 = v9;
        }
      }

      else
      {
        v2 = 3758097136;
      }

      CFReadStreamClose(v8);
      CFRelease(v8);
    }

    CFRelease(v6);
  }

  return v2;
}

uint64_t sub_100009C60(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 152);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 5u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_100009CB8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  kdebug_trace();
  v10 = *(a1 + 152);
  if (v10)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    v11 = IOConnectCallScalarMethod(v10, 0xAu, input, 4u, 0, 0);
  }

  else
  {
    v11 = 3758097084;
  }

  kdebug_trace();
  return v11;
}

uint64_t sub_100009DB0(uint64_t a1, unsigned int a2, void *outputStruct)
{
  v5 = 156;
  v3 = *(a1 + 152);
  if (!v3)
  {
    return 3758097084;
  }

  input = a2;
  return IOConnectCallMethod(v3, 0xEu, &input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t sub_100009E44()
{
  v0 = __chkstk_darwin();
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "CacheDeviceConfigs";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - caching device configurations\n", buf, 0xCu);
  }

  if (*(v0 + 476))
  {
    bzero(buf, 0x1CuLL);
    *&buf[4] = 3;
    v1 = sub_100009CB8(v0, buf, 0x1Cu, 0, 0xFFFFFFFF);
    if (v1)
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001AA08();
      }

LABEL_61:
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001AB18();
      }

      sub_10000AAF0(v0);
      return v1;
    }

    *(v0 + 8) = *buf;
    *(v0 + 20) = *&buf[12];
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315650;
      v15 = "CacheDeviceConfigs";
      v16 = 1024;
      v17 = *&buf[12];
      v18 = 1024;
      v19 = *&buf[8];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - maxChannels=%d, timeStampFrequency=%d\n", v14, 0x18u);
    }

    if (!*(v0 + 48))
    {
      v2 = *(v0 + 476);
      operator new[]();
    }

    if (!*(v0 + 40))
    {
      v3 = *(v0 + 476);
      operator new[]();
    }

    LODWORD(v4) = *(v0 + 476);
    if (v4)
    {
      v5 = 0;
      do
      {
        bzero(buf, 0x190uLL);
        *&buf[4] = 269;
        *&buf[8] = v5;
        v1 = sub_100009CB8(v0, buf, 0x190u, 0, 0xFFFFFFFF);
        if (v1)
        {
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10001AA8C();
          }

          goto LABEL_61;
        }

        *(*(v0 + 40) + 424 * v5) = v22;
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 136315650;
          v15 = "CacheDeviceConfigs";
          v16 = 1024;
          v17 = v22;
          v18 = 1024;
          v19 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %d configurations detected for channel %d\n", v14, 0x18u);
        }

        memmove((*(v0 + 40) + 424 * v5 + 24), buf, 0x190uLL);
        v6 = *(v0 + 40) + 424 * v5;
        if (!*v6)
        {
LABEL_40:
          v1 = 0;
          goto LABEL_48;
        }

        if (!*(v6 + 8) && !*(v6 + 16))
        {
          operator new[]();
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          bzero(buf, 0x120uLL);
          *&buf[4] = 262;
          *&buf[8] = v5;
          *&buf[12] = v9;
          v1 = sub_100009CB8(v0, buf, 0x120u, 0, 0xFFFFFFFF);
          if (v1)
          {
            break;
          }

          if ((v21 & 0x80) != 0)
          {
            v21 = (v21 & 0xFFFFFF00) + 256;
          }

          memmove((*(*(v0 + 40) + 424 * v5 + 8) + v8), &buf[16], 0xD4uLL);
          v1 = sub_100012BC8(v0, v5, v9, (*(*(v0 + 40) + 424 * v5 + 16) + v7));
          if (v1)
          {
            if (off_10039DBA8 == &_os_log_default)
            {
              off_10039DBA8 = os_log_create("com.apple.isp", "device");
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            *v14 = 136315650;
            v15 = "CacheDeviceConfigs";
            v16 = 1024;
            v17 = v5;
            v18 = 1024;
            v19 = v1;
            v10 = "%s - Error getting LSC polynomial - chan: %d, res: 0x%08X\n";
LABEL_53:
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v10, v14, 0x18u);
            goto LABEL_48;
          }

          ++v9;
          v8 += 212;
          v7 += 72;
          if (v9 >= *(*(v0 + 40) + 424 * v5))
          {
            goto LABEL_40;
          }
        }

        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v14 = 136315650;
          v15 = "CacheDeviceConfigs";
          v16 = 1024;
          v17 = v5;
          v18 = 1024;
          v19 = v1;
          v10 = "%s - Error getting camera config - chan: %d, res: 0x%08X\n";
          goto LABEL_53;
        }

LABEL_48:
        v11 = *(v0 + 48);
        if (v11)
        {
          sub_100009DB0(v0, v5, (v11 + 156 * v5));
        }

        ++v5;
        v4 = *(v0 + 476);
      }

      while (v5 < v4);
      if (!v1)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }

LABEL_67:
    *v0 = v4;
    *(v0 + 4) = 1;
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v13 = *(v0 + 476);
      *v14 = 136315394;
      v15 = "CacheDeviceConfigs";
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - Success: cached configs - numChannels: %d\n", v14, 0x12u);
    }

    return 0;
  }

  else
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    v1 = 3758097112;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001AB9C();
    }
  }

  return v1;
}

uint64_t sub_10000A63C(uint64_t a1, int a2, int a3, int a4, unsigned int a5)
{
  bzero(v15, 0x14uLL);
  v16 = 290;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v10 = sub_100009CB8(a1, v15, 0x14u, 0, a5);
  v11 = v10;
  if (a3 == 6914 && !v10)
  {
    if (*(a1 + 476))
    {
      v12 = 0;
      while (1)
      {
        v13 = sub_10000A75C(a1, v12);
        if (v13)
        {
          break;
        }

        if (++v12 >= *(a1 + 476))
        {
          return 0;
        }
      }

      v11 = v13;
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001AC20();
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_10000A75C(uint64_t a1, unsigned int a2)
{
  bzero(__src, 0x190uLL);
  v7 = 269;
  v8 = a2;
  v4 = sub_100009CB8(a1, __src, 0x190u, 0, 0xFFFFFFFF);
  if (!v4)
  {
    memmove((*(a1 + 40) + 424 * a2 + 24), __src, 0x190uLL);
  }

  return v4;
}

uint64_t sub_10000A814(uint64_t a1, int a2, const char **a3)
{
  if (a2 != 6)
  {
    return 3758097090;
  }

  bzero(v13, 0x40uLL);
  v14 = 5;
  strncpy(v16, a3[1], 0x20uLL);
  v5 = sub_100009CB8(a1, v13, 0x40u, 1u, 0xFFFFFFFF);
  if (v5)
  {
    v6 = v5;
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001ACA8(a3 + 1);
    }
  }

  else
  {
    v7 = v21;
    v8 = strtoul(a3[2], 0, 0);
    v9 = strtoul(a3[3], 0, 0);
    v10 = strtoul(a3[4], 0, 0);
    v11 = strtoul(a3[5], 0, 0);
    printf("Special function: name: %s, parameters %llu %llu %llu %llu\n", v16, v8, v9, v10, v11);
    bzero(v13, 0x38uLL);
    v14 = 28;
    v15 = 1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    return sub_100009CB8(a1, v13, 0x38u, 1u, 0xFFFFFFFF);
  }

  return v6;
}

uint64_t sub_10000A9F0(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 476);
  result = 3758097090;
  if (v6 > a2 && a3 <= 0x40)
  {
    bzero(v13, 0xD0uLL);
    v14 = 1285;
    v15 = a2;
    v16 = a3;
    if (a3)
    {
      v12 = 0;
      do
      {
        v17[v12] = *(a4 + 2 * v12);
        *(&v17[64] + v12) = *(a5 + v12);
        ++v12;
      }

      while (a3 != v12);
    }

    return sub_100009CB8(a1, v13, 0xD0u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t sub_10000AAF0(uint64_t a1)
{
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "InitDeviceConfigsCache";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Initializing device configuration cache\n", &v7, 0xCu);
  }

  if (*(a1 + 4))
  {
    *(a1 + 4) = 0;
    *a1 = 0;
    v2 = (a1 + 40);
    if (*(a1 + 40))
    {
      if (!*(a1 + 476))
      {
        goto LABEL_15;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *v2;
        if (*(*v2 + v3 + 8))
        {
          operator delete[]();
        }

        if (*(v5 + v3 + 16))
        {
          operator delete[]();
        }

        *(v5 + v3) = 0;
        bzero((v5 + v3 + 24), 0x190uLL);
        ++v4;
        v3 += 424;
      }

      while (v4 < *(a1 + 476));
      if (*v2)
      {
LABEL_15:
        operator delete[]();
      }

      if (*(a1 + 48))
      {
        operator delete[]();
      }

      *v2 = 0;
      *(a1 + 48) = 0;
    }
  }

  else
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "InitDeviceConfigsCache";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - cache is already invalid - exiting\n", &v7, 0xCu);
    }
  }

  return 0;
}

uint64_t sub_10000AD4C(unsigned int *a1)
{
  *outputStructCnt = 24;
  v2 = a1[38];
  if (v2)
  {
    v3 = IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, outputStructCnt);
    if (!v3)
    {
      v4 = v27;
      v5 = v28;
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = "n't";
        if (v28)
        {
          v7 = &unk_10002003A;
        }

        else
        {
          v7 = "n't";
        }

        if (v27)
        {
          v6 = &unk_10002003A;
        }

        *outputStructCnt = 136315394;
        *&outputStructCnt[4] = v7;
        *&outputStructCnt[12] = 2080;
        *&outputStructCnt[14] = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "This is%s an internal build, and FDR was%s validated\n", outputStructCnt, 0x16u);
      }

      v8 = 0;
      v9 = 0;
      v3 = 0;
      v22 = 0;
      v23 = v4 | v5;
      v10 = 274;
      v11 = sub_100006A10();
      while (1)
      {
        v12 = *(a1 + 14) + v8;
        if (*(v12 + 8) && *(v12 + 16) == 1718186595)
        {
          if (*(a1 + 4) != 1 || v9 >= *a1 || !*(*(a1 + 5) + v10) || !v11)
          {
            v13 = *(a1 + 12);
            if (!v13 || (*outputStructCnt = 5, sub_100008A24(v13, outputStructCnt)) || outputStructCnt[8] != 1 || (v14 = time(0), v15 = mach_continuous_time(), *&outputStructCnt[16] <= v14))
            {
LABEL_27:
              v20 = a1[38];
              if (v20)
              {
                *outputStructCnt = 0;
                *&outputStructCnt[8] = 0;
                *&outputStructCnt[16] = v11;
                IOConnectCallScalarMethod(v20, 0x33u, outputStructCnt, 3u, 0, 0);
              }

              goto LABEL_29;
            }

            v16 = difftime(*&outputStructCnt[16], v14);
            mach_timebase_info(&info);
            LODWORD(v18) = info.numer;
            LODWORD(v17) = info.denom;
            v22 = v15 + (v16 * 1000000000.0 * v17 / v18);
          }

          if ((v23 & 1) == 0)
          {
            goto LABEL_27;
          }

          a1[118] |= 1 << v9;
          bzero(&info, 0xCuLL);
          LOWORD(info.denom) = 1568;
          v25 = v9;
          v3 = sub_100009CB8(a1, &info, 0xCu, 0, 0xFFFFFFFF);
          v19 = a1[38];
          if (v19)
          {
            *outputStructCnt = 1;
            *&outputStructCnt[8] = v22;
            *&outputStructCnt[16] = v11;
            IOConnectCallScalarMethod(v19, 0x33u, outputStructCnt, 3u, 0, 0);
          }
        }

LABEL_29:
        ++v9;
        v8 += 96;
        v10 += 424;
        if (v9 == 6)
        {
          return v3;
        }
      }
    }
  }

  else
  {
    v3 = 3758097084;
  }

  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001AD34();
  }

  return v3;
}

uint64_t sub_10000B0C8(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 24;
  v2 = *(a1 + 152);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_10000B118(uint64_t a1, uint64_t a2, io_registry_entry_t a3)
{
  *(a1 + 4) = 0;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 224) = 0;
  v5 = (a1 + 476);
  *(a1 + 476) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 0u;
  *(a1 + 524) = 0;
  *(a1 + 144) = a3;
  *(a1 + 56) = 0;
  v6 = &byte_10039DCE9;
  byte_10039DD14 = sub_100008DF0(@"LsInterpMode", @"com.apple.coremedia", 1);
  dword_10039DD18 = sub_100008DF0(@"LsBypassVerify", @"com.apple.coremedia", 0);
  byte_10039DD1C = sub_100008DF0(@"LsEnableGreenAvg", @"com.apple.coremedia", 0) != 0;
  byte_10039DD1D = sub_100008DF0(@"RadialGainEnable", @"com.apple.coremedia", 1) != 0;
  byte_10039DD1E = sub_100008DF0(@"IgnoreUnitInfoPlist", @"com.apple.coremedia", 0) != 0;
  dword_10039DD20 = sub_100008DF0(@"UnitInfoNVMChannelMask", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v7 = 0;
  byte_10039DD24 = sub_100008DF0(@"DisableDropDetection", @"com.apple.coremedia", 0) != 0;
  do
  {
    v8 = CFStringCreateWithFormat(0, 0, @"LsAdjustEnableCam%d", v7);
    *(v6 - 5) = sub_100008DF0(v8, @"com.apple.coremedia", 0xFFFFFFFFLL);
    CFRelease(v8);
    v9 = CFStringCreateWithFormat(0, 0, @"LsAdjustInvertCam%d", v7);
    *(v6 - 1) = sub_100008DF0(v9, @"com.apple.coremedia", 0) != 0;
    CFRelease(v9);
    v10 = CFStringCreateWithFormat(0, 0, @"LsIdealPctCam%d", v7);
    *v6 = sub_100008DF0(v10, @"com.apple.coremedia", 0xFFFFFFFFLL);
    v6 += 8;
    CFRelease(v10);
    ++v7;
  }

  while (v7 != 6);
  v11 = IORegistryEntrySearchCFProperty(a3, "IOService", @"sensor-type", kCFAllocatorDefault, 3u);
  if (v11)
  {
    v12 = v11;
    BytePtr = CFDataGetBytePtr(v11);
    if (BytePtr)
    {
      v14 = *BytePtr;
    }

    else
    {
      v14 = -1;
    }

    *(a1 + 104) = v14;
    CFRelease(v12);
    v15 = *(a1 + 104);
  }

  else
  {
    v15 = -1;
    *(a1 + 104) = -1;
  }

  v16 = &dword_100028CA0;
  *(a1 + 112) = &dword_100028CA0;
  v17 = 56;
  do
  {
    if (*v16 == v15)
    {
      *(a1 + 112) = v16;
      goto LABEL_17;
    }

    v16 += 158;
    --v17;
  }

  while (v17);
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001ADB8((a1 + 104));
  }

LABEL_17:
  pthread_mutexattr_init(&v21);
  pthread_mutexattr_settype(&v21, 2);
  pthread_mutex_init((a1 + 160), &v21);
  pthread_mutexattr_destroy(&v21);
  sub_10000B4CC(a1);
  sub_10000AAF0(a1);
  for (i = 0; i != 96; i += 16)
  {
    v19 = a1 + i;
    *(v19 + 240) = 0;
    *(v19 + 336) = 0;
  }

  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  if ((sub_100009C60(a1) & 1) != 0 && !sub_1000099C8(a1, v5))
  {
    sub_100009E44();
  }

  return a1;
}

uint64_t sub_10000B4CC(uint64_t refCon)
{
  if (!*(refCon + 148))
  {
    return IOServiceAddInterestNotification(*(*(refCon + 72) + 16), *(refCon + 144), "IOGeneralInterest", sub_100012C60, refCon, (refCon + 148));
  }

  return refCon;
}

uint64_t sub_10000B50C(uint64_t a1)
{
  if (*(a1 + 152))
  {
    sub_10000B7AC(a1);
  }

  v2 = *(a1 + 148);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 148) = 0;
  }

  sub_10000AAF0(a1);
  v3 = 0;
  v4 = (a1 + 240);
  v5 = (a1 + 240);
  do
  {
    v6 = *v5;
    v5 += 16;
    if (v6 == 1)
    {
      v7 = *(*(a1 + 72) + 72);
      if (v7)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_10000B850;
        block[3] = &unk_1000316E0;
        block[4] = a1;
        v20 = v3;
        dispatch_sync(v7, block);
      }
    }

    if (v4[96] == 1)
    {
      v8 = *(*(a1 + 72) + 72);
      if (v8)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 0x40000000;
        v17[2] = sub_10000B894;
        v17[3] = &unk_100031700;
        v17[4] = a1;
        v18 = v3;
        dispatch_sync(v8, v17);
      }
    }

    ++v3;
    v4 = v5;
  }

  while (v3 != 6);
  if (*(a1 + 432))
  {
    v9 = *(*(a1 + 72) + 72);
    if (v9)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 0x40000000;
      v16[2] = sub_10000B8D8;
      v16[3] = &unk_100031720;
      v16[4] = a1;
      dispatch_sync(v9, v16);
    }
  }

  if (*(a1 + 448) == 1)
  {
    v10 = *(*(a1 + 72) + 72);
    if (v10)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_10000B904;
      v15[3] = &unk_100031740;
      v15[4] = a1;
      dispatch_sync(v10, v15);
    }
  }

  if (*(a1 + 464) == 1)
  {
    v11 = *(*(a1 + 72) + 72);
    if (v11)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = sub_10000B930;
      v14[3] = &unk_100031760;
      v14[4] = a1;
      dispatch_sync(v11, v14);
    }
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 88) = 0;
  }

  pthread_mutex_destroy((a1 + 160));
  return a1;
}

uint64_t sub_10000B7AC(uint64_t a1)
{
  pthread_mutex_lock((a1 + 160));
  v2 = IOConnectCallScalarMethod(*(a1 + 152), 4u, 0, 0, 0, 0);
  v3 = *(a1 + 152);
  if (v3)
  {
    IOServiceClose(v3);
    *(a1 + 152) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((a1 + 160));
  return v2;
}

uint64_t sub_10000B820(uint64_t a1)
{
  result = *(a1 + 148);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 148) = 0;
  }

  return result;
}

uint64_t sub_10000B850(uint64_t a1)
{
  v2 = *(a1 + 32) + 232;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t sub_10000B894(uint64_t a1)
{
  v2 = *(a1 + 32) + 328;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t sub_10000B8D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 436));
  *(v1 + 432) = 0;
  return result;
}

uint64_t sub_10000B904(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 452));
  *(v1 + 448) = 0;
  return result;
}

uint64_t sub_10000B930(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 468));
  *(v1 + 464) = 0;
  return result;
}

uint64_t sub_10000B960()
{
  v0 = __chkstk_darwin();
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v66 = 136315138;
    v67 = "ISP_PowerOnCamera";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - powering on camera\n", &v66, 0xCu);
  }

  kdebug_trace();
  if (*(v0 + 152))
  {
    if ((sub_100009C60(v0) & 1) == 0 && *(v0 + 4) == 1)
    {
      sub_10000AAF0(v0);
    }

    v40 = IOConnectCallScalarMethod(*(v0 + 152), 0xBu, 0, 0, 0, 0);
    if (!v40)
    {
      v1 = (v0 + 476);
      if (*(v0 + 476))
      {
        goto LABEL_17;
      }

      if (sub_1000099C8(v0, v1))
      {
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10001AE44();
        }
      }

      v1 = (v0 + 476);
      if (*(v0 + 476))
      {
LABEL_17:
        v39 = v1;
        v2 = 0;
        v40 = 0;
        do
        {
          bzero(&v70, 0x9CuLL);
          sub_100009DB0(v0, v2, &v70);
          bzero(&v66, 0x211CuLL);
          sub_10000E074(v0, v2, 0, &v66);
          bzero(v65, 0x211CuLL);
          sub_10000E074(v0, v2, 1u, v65);
          bzero(v64, 0x211CuLL);
          sub_10000E074(v0, v2, 2u, v64);
          bzero(v63, 0x211CuLL);
          sub_10000E074(v0, v2, 3u, v63);
          if (v71[3] == 1 && (v71[11] & 1) == 0)
          {
            operator new();
          }

          ++v2;
        }

        while (v2 < *v39);
      }

      else
      {
        v40 = 0;
      }

      if ((*(v0 + 4) & 1) == 0)
      {
        sub_100009E44();
      }
    }
  }

  else
  {
    v40 = -536870212;
  }

  if (*(v0 + 476))
  {
    v3 = 0;
    v4 = (v0 + 336);
    v5 = 16;
    do
    {
      v6 = *(*(v0 + 112) + v5);
      if (v6 > 1919246705)
      {
        switch(v6)
        {
          case 1919246706:
            v8 = "com.apple.isp.backcamerapower";
            v9 = "com.apple.isp.backcamerasensorconfig";
            goto LABEL_42;
          case 1919251319:
            v8 = "com.apple.isp.backsuperwidecamerapower";
            v9 = "com.apple.isp.backsuperwidesensorconfig";
LABEL_42:
            *(v4 - 13) = v8;
            *(v4 - 1) = v9;
            if ((*(v4 - 96) & 1) == 0)
            {
              v10 = *(*(v0 + 72) + 72);
              if (v10)
              {
                block[0] = _NSConcreteStackBlock;
                block[1] = 0x40000000;
                block[2] = sub_10000E11C;
                block[3] = &unk_100031780;
                block[4] = v0;
                v55 = v3;
                dispatch_sync(v10, block);
                v9 = *(v4 - 1);
              }
            }

            if (v9)
            {
              if ((*v4 & 1) == 0)
              {
                v11 = *(*(v0 + 72) + 72);
                if (v11)
                {
                  v52[0] = _NSConcreteStackBlock;
                  v52[1] = 0x40000000;
                  v52[2] = sub_10000E168;
                  v52[3] = &unk_1000317A0;
                  v52[4] = v0;
                  v53 = v3;
                  dispatch_sync(v11, v52);
                }
              }
            }

            goto LABEL_49;
          case 1919251564:
            v8 = "com.apple.isp.backtelecamerapower";
            v9 = "com.apple.isp.backtelecamerasensorconfig";
            goto LABEL_42;
        }
      }

      else
      {
        if (v6 == 1718186595)
        {
          v9 = 0;
          v8 = "com.apple.isp.frontirsensorpower";
          goto LABEL_42;
        }

        if (v6 == 1718775412 || v6 == 1718776695)
        {
          v8 = "com.apple.isp.frontcamerapower";
          v9 = "com.apple.isp.frontcamerasensorconfig";
          goto LABEL_42;
        }
      }

      *(v4 - 13) = 0;
      *(v4 - 1) = 0;
LABEL_49:
      ++v3;
      v4 += 16;
      v5 += 96;
    }

    while (v3 < *(v0 + 476));
  }

  if ((*(v0 + 432) & 1) == 0)
  {
    *(v0 + 424) = "com.apple.isp.cameratorch";
    v12 = *(*(v0 + 72) + 72);
    if (v12)
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 0x40000000;
      v51[2] = sub_10000E1B4;
      v51[3] = &unk_1000317C0;
      v51[4] = v0;
      dispatch_sync(v12, v51);
    }
  }

  if ((*(v0 + 448) & 1) == 0)
  {
    *(v0 + 440) = "com.apple.isp.cameratorchcoolcurrent";
    v13 = *(*(v0 + 72) + 72);
    if (v13)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 0x40000000;
      v50[2] = sub_10000E1EC;
      v50[3] = &unk_1000317E0;
      v50[4] = v0;
      dispatch_sync(v13, v50);
    }
  }

  if ((*(v0 + 464) & 1) == 0)
  {
    *(v0 + 456) = "com.apple.isp.cameratorchwarmcurrent";
    v14 = *(*(v0 + 72) + 72);
    if (v14)
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 0x40000000;
      v49[2] = sub_10000E224;
      v49[3] = &unk_100031800;
      v49[4] = v0;
      dispatch_sync(v14, v49);
    }
  }

  v15 = sub_100009C60(v0);
  v16 = v40;
  if (v15 && *(v0 + 4) == 1 && !v40)
  {
    if (*(v0 + 476))
    {
      v17 = 0;
      v18 = 0;
      do
      {
        sprintf(v65, "/usr/local/share/firmware/isp/cam%dclocks.txt", v17);
        v19 = fopen(v65, "r");
        if (v19)
        {
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v60[0]) = 67109120;
            DWORD1(v60[0]) = v17;
            v20 = "Found camera clock override information file for camera channel %d\n";
LABEL_69:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, v60, 8u);
          }

          while (fgets(&v66, 256, v19))
          {
            v21 = strtok(&v66, "=");
            if (v21)
            {
              v22 = v21;
              if (!strncmp(v21, "clockdiv", 8uLL))
              {
                v26 = strtok(0, " \n");
                if (v26)
                {
                  v27 = strtoul(v26, 0, 0);
                  if (off_10039DBA8 == &_os_log_default)
                  {
                    off_10039DBA8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v60[0]) = 67109120;
                    DWORD1(v60[0]) = v27;
                    v20 = "Set clock divider reg to 0x%08X\n";
                    goto LABEL_69;
                  }
                }

                else
                {
                  if (off_10039DBA8 == &_os_log_default)
                  {
                    off_10039DBA8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10001B1F0(&v56, v57);
                  }
                }
              }

              else if (!strncmp(v22, "property", 8uLL))
              {
                v28 = strtok(0, " :");
                if (v28)
                {
                  v29 = strtoul(v28, 0, 0);
                  v30 = strtok(0, " \n");
                  if (v30)
                  {
                    v31 = strtoul(v30, 0, 0);
                    if (off_10039DBA8 == &_os_log_default)
                    {
                      off_10039DBA8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v60[0]) = 67109376;
                      DWORD1(v60[0]) = v29;
                      WORD4(v60[0]) = 1024;
                      *(v60 + 10) = v31;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Setting FW property 0x%08x to 0x%08X\n", v60, 0xEu);
                    }

                    v32 = sub_10000A63C(v0, v17, v29, v31, 0xFFFFFFFF);
                    if (v32)
                    {
                      if (off_10039DBA8 == &_os_log_default)
                      {
                        off_10039DBA8 = os_log_create("com.apple.isp", "device");
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        sub_10001B224(&__dst, v32, &v59);
                      }
                    }
                  }

                  else
                  {
                    if (off_10039DBA8 == &_os_log_default)
                    {
                      off_10039DBA8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_10001B1F0(&v45, v46);
                    }
                  }
                }

                else
                {
                  if (off_10039DBA8 == &_os_log_default)
                  {
                    off_10039DBA8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10001B1F0(&v47, v48);
                  }
                }
              }

              else if (!strncmp(v22, "FWOBJECTSPECIALFUNC", 0x13uLL))
              {
                v33 = 0;
                memset(v60, 0, sizeof(v60));
                do
                {
                  v34 = v33;
                  *(v60 + v33) = v22;
                  v22 = strtok(0, ":");
                  v33 = v34 + 1;
                  if (v22)
                  {
                    v35 = v34 >= 5;
                  }

                  else
                  {
                    v35 = 1;
                  }
                }

                while (!v35);
                v36 = sub_10000A814(v0, v33, v60);
                if (v36)
                {
                  printf("Sending special debug function to firmware object returned error : 0x%08x\n", v36);
                }
              }

              else
              {
                v23 = strtoul(v22, 0, 0);
                v24 = strtok(0, " \n");
                if (v24)
                {
                  if (v18 > 0x3F)
                  {
                    if (off_10039DBA8 == &_os_log_default)
                    {
                      off_10039DBA8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_10001B1BC(&v41, v42);
                    }
                  }

                  else
                  {
                    v25 = strtoul(v24, 0, 0);
                    if (off_10039DBA8 == &_os_log_default)
                    {
                      off_10039DBA8 = os_log_create("com.apple.isp", "device");
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v60[0]) = 67109376;
                      DWORD1(v60[0]) = v23;
                      WORD4(v60[0]) = 1024;
                      *(v60 + 10) = v25;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Set sensor reg 0x%08x to val 0x%08X\n", v60, 0xEu);
                    }

                    v64[v18] = v23;
                    v63[v18++] = v25;
                  }
                }

                else
                {
                  if (off_10039DBA8 == &_os_log_default)
                  {
                    off_10039DBA8 = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10001B1F0(&v43, v44);
                  }
                }
              }
            }

            else
            {
              if (off_10039DBA8 == &_os_log_default)
              {
                off_10039DBA8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10001B1F0(&v70, v71);
              }
            }
          }

          fclose(v19);
          if (v18)
          {
            v37 = sub_10000A9F0(v0, v17, v18, v64, v63);
            if (v37)
            {
              if (off_10039DBA8 == &_os_log_default)
              {
                off_10039DBA8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10001B270(v61, v37, v62);
              }
            }

            else
            {
              if (off_10039DBA8 == &_os_log_default)
              {
                off_10039DBA8 = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v60[0]) = 67109376;
                DWORD1(v60[0]) = v17;
                WORD4(v60[0]) = 1024;
                *(v60 + 10) = v18;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully sent camera %d sensor register over-ride values for %d registers\n", v60, 0xEu);
              }
            }
          }
        }

        ++v17;
      }

      while (v17 < *(v0 + 476));
    }

    v16 = v40;
  }

  if (!v16)
  {
    sub_10000AD4C(v0);
  }

  kdebug_trace();
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v66 = 136315394;
    v67 = "ISP_PowerOnCamera";
    v68 = 1024;
    v69 = v40;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s - status: 0x%08X\n", &v66, 0x12u);
  }

  return v40;
}

uint64_t sub_10000E074(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  result = 3758097084;
  if (!outputStruct)
  {
    return 3758097090;
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = 8476;
    input[0] = a2;
    input[1] = a3;
    return IOConnectCallMethod(v6, 0x5Fu, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  return result;
}

uint64_t sub_10000E11C(uint64_t a1)
{
  v2 = *(a1 + 32) + 232;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t sub_10000E168(uint64_t a1)
{
  v2 = *(a1 + 32) + 328;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t sub_10000E1B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 424), (v1 + 436));
  *(v1 + 432) = result == 0;
  return result;
}

uint64_t sub_10000E1EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 440), (v1 + 452));
  *(v1 + 448) = result == 0;
  return result;
}

uint64_t sub_10000E224(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 456), (v1 + 468));
  *(v1 + 464) = result == 0;
  return result;
}

uint64_t sub_10000E25C(uint64_t a1)
{
  v2 = -10;
  do
  {
    if (!sub_100009C60(a1))
    {
      break;
    }

    usleep(0x186A0u);
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "ISP_ColdBootPowerCycle";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Camera powered on...waiting\n", buf, 0xCu);
    }

    usleep(0x493E0u);
  }

  while (!__CFADD__(v2++, 1));
  v4 = sub_10000E534(a1);
  if (v4)
  {
    v5 = v4;
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B2BC();
    }
  }

  else
  {
    v6 = os_transaction_create();
    v5 = sub_10000E590(a1);
    os_release(v6);
    if (v5)
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001B340();
      }
    }

    else
    {
      v7 = sub_10000B960();
      if (v7)
      {
        v5 = v7;
        v8 = 0;
        v9 = 0;
      }

      else if (sub_100009C60(a1))
      {
        v5 = sub_10000EB84(a1);
        v8 = v5 == 0;
        v9 = 1;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v5 = 0;
      }

      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "ISP_ColdBootPowerCycle";
        v13 = 1024;
        v14 = v9;
        v15 = 1024;
        v16 = v8;
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - poweredOn=%d, poweredOff=%d, res=0x%08X\n", buf, 0x1Eu);
      }
    }
  }

  return v5;
}

uint64_t sub_10000E534(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  result = IOConnectCallScalarMethod(v2, 9u, 0, 0, 0, 0);
  if (!result)
  {
    sub_10000AAF0(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10000E590(uint64_t a1)
{
  v2 = sub_10000EFC0(a1);
  if (!v2)
  {
    theDict = 0;
    sub_100009A38(v2, &theDict);
    sub_10000ECBC(a1);
    sub_1000090F0(a1);
    sub_10001A424(a1);
    sub_100009484(a1);
    sub_10000F2A8(a1, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/lacc_VIO_ISP_IR.bin", 0, 0, 0, 8, 0, 0);
    strcpy(input, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/");
    *buf = 0;
    v5 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/arm-io");
    if (v5)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"soc-generation", 0, 0);
      v7 = CFProperty;
      if (CFProperty)
      {
        v8 = CFGetTypeID(CFProperty);
        if (v8 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v7);
          if ((Length - 8) > 0xFFFFFFFFFFFFFFF8)
          {
            v10 = Length;
            BytePtr = CFDataGetBytePtr(v7);
            strncpy(buf, BytePtr, v10);
          }

          else
          {
            if (off_10039DBA8 == &_os_log_default)
            {
              off_10039DBA8 = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10001B440();
            }
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B4C4();
    }

    if (!v7)
    {
LABEL_23:
      operator new[]();
    }

LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v3 = v2;
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001B3C4();
  }

  return v3;
}

uint64_t sub_10000EB84(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 0xCu, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097084;
  }

  kdebug_trace();
  return v3;
}

uint64_t sub_10000EC14(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 152);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  input[1] = v6;
  input[2] = a3;
  input[3] = a4;
  return IOConnectCallScalarMethod(v4, 0x65u, input, 4u, 0, 0);
}

uint64_t sub_10000ECBC(uint64_t a1)
{
  v1 = 3758097136;
  v16 = 0;
  v17 = 0;
  v23 = 0;
  v22 = 0;
  if (*(a1 + 152))
  {
    if (MGIsQuestionValid())
    {
      v3 = MGCopyAnswerWithError();
      if (v3)
      {
        v4 = v3;
        v5 = CFCopyDescription(v3);
        if (v5)
        {
          v6 = v5;
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v19 = "ISP_SetFrontCameraOffsetFromDisplayCenter";
            v20 = 2080;
            CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - kMGQFrontCameraOffsetFromDisplayCenter Description=%s\n", buf, 0x16u);
          }

          CFRelease(v6);
        }

        v7 = CFGetTypeID(v4);
        if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v4) == 3)
        {
          v8 = 0;
          v9 = &v22;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
            if (!ValueAtIndex)
            {
              break;
            }

            v11 = ValueAtIndex;
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 != CFNumberGetTypeID() || !CFNumberIsFloatType(v11))
            {
              goto LABEL_26;
            }

            Value = CFNumberGetValue(v11, kCFNumberFloatType, v9);
            if (Value)
            {
              v9 = (v9 + 4);
              if (v8++ != 2)
              {
                continue;
              }
            }

            if (Value)
            {
              v1 = 0;
            }

            else
            {
              v1 = 3758097102;
            }

            if (Value)
            {
              v16 = v22;
              LODWORD(v17) = v23;
              v1 = IOConnectCallStructMethod(*(a1 + 152), 0x56u, &v16, 0xCuLL, 0, 0);
              goto LABEL_36;
            }

            break;
          }
        }

        else
        {
LABEL_26:
          v1 = 3758096385;
        }
      }

      else
      {
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10001B548(&v17 + 1);
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v1 = 3758097095;
    }
  }

  else
  {
    v4 = 0;
    v1 = 3758097087;
  }

  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001B5D4();
    if (!v4)
    {
      return v1;
    }

    goto LABEL_36;
  }

  if (v4)
  {
LABEL_36:
    CFRelease(v4);
  }

  return v1;
}

uint64_t sub_10000EFC0(uint64_t a1)
{
  outputStructCnt = 24;
  v2 = *(a1 + 152);
  if (v2 && (IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt), (outputStruct[20] & 1) == 0))
  {
    v4 = sub_100012B68(a1, &v11);
    if (v11)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = "/usr/local/share/firmware/isp/dcs_isp_fw.bin";
    }

    else
    {
      v6 = "/usr/local/share/firmware/isp/isp_fw.bin";
    }

    v7 = fopen(v6, "rb");
    v8 = fopen(0, "rb");
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        fclose(v7);
      }
    }

    else
    {
      v9 = v7;
    }

    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B658();
    }

    if (v9)
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001B6D4();
      }

      fseeko(v9, 0, 2);
      ftello(v9);
      fseeko(v9, 0, 0);
      operator new[]();
    }

    perror("error loading ISPCPU firmware ");
    outputStructCnt = 0;
    v14 = 0;
    v15 = *(a1 + 104);
    return IOConnectCallScalarMethod(*(a1 + 152), 7u, &outputStructCnt, 3u, 0, 0);
  }

  else
  {
    outputStructCnt = 0;
    v14 = 0;
    v15 = *(a1 + 104);
    return IOConnectCallScalarMethod(*(a1 + 152), 7u, &outputStructCnt, 3u, 0, 0);
  }
}

uint64_t sub_10000F2A8(int a1, char *__filename, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a3)
  {
    v10 = fopen(a3, "rb");
    if (v10)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v12 = fopen(__filename, "rb");
  if (v12)
  {
    v11 = v12;
LABEL_6:
    fseeko(v11, 0, 2);
    ftello(v11);
    rewind(v11);
    operator new[]();
  }

  if (a4)
  {
    operator new[]();
  }

  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v17 = "SendDataFileToFirmware";
    v18 = 1024;
    v19 = a6;
    v20 = 1024;
    v21 = 0;
    v22 = 2080;
    v23 = __filename;
    v24 = 1024;
    v25 = 0;
    v26 = 1024;
    v27 = a8;
    v28 = 1024;
    v29 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - type=0x%X, isOverride=%d, file=%s, size=%u, isEarlyBoot=%d, status=%08x\n", buf, 0x34u);
  }

  return 0;
}

void sub_10000F648(uint64_t a1)
{
  v2 = sub_1000128FC(a1, 1919246706, 1852793709);
  if (v2 == -1)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B86C();
    }
  }

  else
  {
    v3 = v2;
    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
    IOObjectRelease(MatchingService);
    if (v6)
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "backCameraModuleSerialNumString exists - load FDR CmCl calibration data\n\n", buf, 2u);
      }

      v7 = -1431699456;
      CFRelease(v6);
      v8 = fopen("/usr/local/share/firmware/isp/CmCl-Override.DAT", "rb");
      if (v8)
      {
        v9 = v8;
        fseeko(v8, 0, 2);
        ftello(v9);
        fseeko(v9, 0, 0);
        operator new[]();
      }

      v10 = CFStringCreateWithCString(kCFAllocatorDefault, "CmCl", 0x8000100u);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
      AMFDRLogSetHandler();
      v12 = AMFDRSealingMapCopyLocalDataForClass();
      if (!v12)
      {
        v19 = *(a1 + 112);
        if (!v19 || *(v19 + 627) != 1 || (v20 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          sub_1000119D4(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
LABEL_31:
          if (v10)
          {
            CFRelease(v10);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v12 = v20;
        v7 = -1145372672;
      }

      BytePtr = CFDataGetBytePtr(v12);
      Length = CFDataGetLength(v12);
      v15 = sub_1000119D4(a1, v3 | 0x80000000, BytePtr, Length, v7 | 0x300u);
      v16 = CFCopyDescription(v12);
      if (v16)
      {
        v17 = v16;
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v17, 0);
          *buf = 136315650;
          v22 = "LoadFDRCalDataFile";
          v23 = 1024;
          v24 = v15;
          v25 = 2080;
          v26 = CStringPtr;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; CmCl data - %s\n", buf, 0x1Cu);
        }

        CFRelease(v17);
      }

      CFRelease(v12);
      goto LABEL_31;
    }

    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B7E8();
    }

    sub_1000119D4(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void sub_10000FC38(uint64_t a1)
{
  v2 = sub_1000128FC(a1, 1718775412, 1718776695);
  if (v2 == -1)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BA00();
    }
  }

  else
  {
    v3 = v2;
    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
    IOObjectRelease(MatchingService);
    if (v6)
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load FDR FCCl calibration data\n\n", buf, 2u);
      }

      v7 = -1431699456;
      CFRelease(v6);
      v8 = fopen("/usr/local/share/firmware/isp/FCCl-Override.DAT", "rb");
      if (v8)
      {
        v9 = v8;
        fseeko(v8, 0, 2);
        ftello(v9);
        fseeko(v9, 0, 0);
        operator new[]();
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
      AMFDRLogSetHandler();
      v11 = CFStringCreateWithCString(kCFAllocatorDefault, "FCCl", 0x8000100u);
      v12 = AMFDRSealingMapCopyLocalDataForClass();
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        theDict = 0;
        v15 = 0;
      }

      else
      {
        v22 = *(a1 + 112);
        if (!v22 || *(v22 + 627) != 1 || (v23 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          v14 = CFStringCreateWithCString(kCFAllocatorDefault, "iCCl", 0x8000100u);
          theDict = AMFDRSealingMapCopyLocalDictForClass();
          if (theDict && (v24 = *(a1 + 112)) != 0 && *(v24 + 627) == 1)
          {
            v15 = CFStringCreateWithCString(kCFAllocatorDefault, "FCCl", 0x8000100u);
            Value = CFDictionaryGetValue(theDict, v15);
            if (Value)
            {
              v13 = Value;
              goto LABEL_20;
            }
          }

          else
          {
            v15 = 0;
          }

          sub_1000119D4(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
          v21 = 0;
          v13 = 0;
LABEL_36:
          if (v11)
          {
            CFRelease(v11);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          v26 = v21 ^ 1;
          if (theDict)
          {
            v26 = 0;
          }

          if ((v26 & 1) == 0)
          {
            if (theDict)
            {
              v27 = theDict;
            }

            else
            {
              v27 = v13;
            }

            CFRelease(v27);
          }

          return;
        }

        v13 = v23;
        v14 = 0;
        theDict = 0;
        v15 = 0;
        v7 = -1145372672;
      }

LABEL_20:
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      v18 = sub_1000119D4(a1, v3 | 0x80000000, BytePtr, Length, v7 | 0x300u);
      v19 = CFCopyDescription(v13);
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v19, 0);
        *buf = 136315650;
        v30 = "LoadFDRFCClDataFile";
        v31 = 1024;
        v32 = v18;
        v33 = 2080;
        v34 = CStringPtr;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; FCCl data - %s\n", buf, 0x1Cu);
      }

      CFRelease(v19);
      v21 = 1;
      goto LABEL_36;
    }

    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001B97C();
    }

    sub_1000119D4(a1, v3 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void sub_1000102FC(uint64_t a1)
{
  v2 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "rb");
  if (v2)
  {
    fclose(v2);
    remove("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", v3);
  }

  v4 = fopen("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", "rb");
  if (v4)
  {
    fclose(v4);
    remove("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", v5);
  }

  v49[1] = xmmword_1000318D0;
  v49[2] = *&off_1000318E0;
  v50 = 0x7265746C00000000;
  v48 = off_1000318B0;
  v49[0] = unk_1000318C0;
  v6 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  v8 = 0;
  for (i = 0; i != 72; i += 24)
  {
    v10 = &v49[-1] + i;
    *(v10 + 4) = sub_1000128FC(a1, *(v49 + i + 4), 1852793709);
    v11 = *(&v49[-1] + i);
    v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", v11, kCFAllocatorDefault, 3u);
    *(v10 + 1) = v12;
    if (CFStringGetCStringPtr(v12, 0x8000100u))
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
        v14 = CFStringGetCStringPtr(v12, 0x8000100u);
        v15 = CFStringGetCStringPtr(v12, 0x8000100u);
        v16 = strlen(v15);
        *buf = 136315650;
        *v43 = CStringPtr;
        *&v43[8] = 2080;
        *&v43[10] = v14;
        v44 = 2048;
        v45 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%s exists, length of the string = %ld.\n\n", buf, 0x20u);
      }

      v8 = 1;
    }

    else
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001BA84(v46, v11, &v47);
      }
    }
  }

  IOObjectRelease(MatchingService);
  v17 = AMFDRSealingMapCopyMultiInstanceForClass();
  v18 = v17;
  if ((v8 & (v17 != 0)) == 0)
  {
    sub_10001BAF0(a1);
    goto LABEL_47;
  }

  Count = CFArrayGetCount(v17);
  if (Count >= 1)
  {
    v19 = 0;
    v20 = 0;
    v38 = v18;
LABEL_20:
    v41 = v20;
    ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
    v22 = 72;
    v23 = v49;
    while (1)
    {
      v24 = *(v23 - 1);
      if (CFStringGetCStringPtr(v24, 0x8000100u))
      {
        if (CFStringCompare(ValueAtIndex, v24, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v23 += 6;
      v22 -= 24;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v19 = *v23;
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      *buf = 67109378;
      *v43 = v19;
      *&v43[4] = 2080;
      *&v43[6] = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "camChannel: %d, cmpmInstance: %s\n", buf, 0x12u);
    }

LABEL_29:
    AMFDRLogSetHandler();
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
    cf = Mutable;
    v27 = AMFDRSealingMapCopyLocalDict();
    v28 = 144;
    v29 = &dword_100031908;
    while (1)
    {
      snprintf(buf, 0x30uLL, "%s-Ch%d.DAT", *(v29 - 2), v19);
      if (!v27)
      {
        break;
      }

      v30 = CFStringCreateWithCString(kCFAllocatorDefault, *(v29 - 1), 0x8000100u);
      Value = CFDictionaryGetValue(v27, v30);
      if (!Value)
      {
        goto LABEL_34;
      }

      v32 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v32);
      v35 = -1431699456;
LABEL_35:
      if (*v29 != 771)
      {
        sub_10000F2A8(a1, 0, buf, BytePtr, Length, *v29 | v35, v19, 1);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      v29 += 6;
      v28 -= 24;
      if (!v28)
      {
        if (v27)
        {
          CFRelease(v27);
        }

        v18 = v38;
        if (cf)
        {
          CFRelease(cf);
        }

        v20 = v41 + 1;
        if (v41 + 1 == Count)
        {
          goto LABEL_47;
        }

        goto LABEL_20;
      }
    }

    v30 = 0;
LABEL_34:
    BytePtr = 0;
    Length = 0;
    v35 = -859045888;
    goto LABEL_35;
  }

LABEL_47:
  for (j = 8; j != 80; j += 24)
  {
    v37 = *(&v49[-1] + j);
    if (CFStringGetCStringPtr(v37, 0x8000100u))
    {
      CFRelease(v37);
      *(&v49[-1] + j) = 0;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_100010994(uint64_t a1)
{
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
  if (!v4)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BBE8();
    }

    goto LABEL_38;
  }

  v5 = v4;
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v5);
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackTeleCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
  if (!v6)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BBA4();
    }

LABEL_38:
    IOObjectRelease(MatchingService);
    return;
  }

  v7 = v6;
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "backTeleCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v7);
  IOObjectRelease(MatchingService);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, "OCCl", 0x8000100u);
  AMFDRLogSetHandler();
  CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
  v26 = Mutable;
  v10 = AMFDRSealingMapCopyLocalDictForClass();
  v27 = a1;
  v11 = 0;
  do
  {
    while (1)
    {
      v12 = v11;
      v13 = &off_100031880[3 * v11];
      v14 = fopen(*v13, "rb");
      if (v14)
      {
        v15 = v14;
        fseeko(v14, 0, 2);
        ftello(v15);
        fseeko(v15, 0, 0);
        operator new[]();
      }

      if (v10)
      {
        break;
      }

      v11 = 1;
      if (v12)
      {
        goto LABEL_26;
      }
    }

    v16 = v13[1];
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
    Value = CFDictionaryGetValue(v10, v17);
    if (Value)
    {
      v19 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v19);
      v22 = sub_1000119D4(v27, 0x80000000, BytePtr, Length, *(v13 + 4));
      v23 = CFCopyDescription(v19);
      if (v23)
      {
        v24 = v23;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v24, 0);
          *buf = 136315906;
          v29 = "LoadOCClCalDataFile";
          v30 = 1024;
          v31 = v22;
          v32 = 2080;
          v33 = v16;
          v34 = 2080;
          v35 = CStringPtr;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s : Status = %08x; OCCl (%s) data - %s \n", buf, 0x26u);
        }

        CFRelease(v24);
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v11 = 1;
  }

  while (!v12);
  CFRelease(v10);
LABEL_26:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void sub_100010FE0()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BD44();
    }

    return;
  }

  v1 = v0;
  Length = CFStringGetLength(v0);
  if (CFStringHasSuffix(v1, @"AP"))
  {
    v3.length = Length - 2;
  }

  else
  {
    if (!CFStringHasSuffix(v1, @"DEV"))
    {
      v4 = kCFAllocatorDefault;
      goto LABEL_13;
    }

    v3.length = Length - 3;
  }

  v4 = kCFAllocatorDefault;
  if (v3.length >= 1)
  {
    v3.location = 0;
    v5 = CFStringCreateWithSubstring(kCFAllocatorDefault, v1, v3);
    CFRelease(v1);
    v1 = v5;
  }

LABEL_13:
  MutableCopy = CFStringCreateMutableCopy(v4, 0, v1);
  CFStringLowercase(MutableCopy, 0);
  CFShow(MutableCopy);
  CFRelease(v1);
  if (MutableCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    memset(__s, 0, sizeof(__s));
    strcat(__s, "/System/Library/Isp/afpp/");
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    strcat(__s, CStringPtr);
    strcat(__s, "/ispane.afpp");
    CFRelease(MutableCopy);
    v8 = fopen(__s, "rb");
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = __s;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loading file for ISP-ANE networks - %s\n", &v11, 0xCu);
    }

    v9 = fopen("/usr/local/share/firmware/isp/ispane.afpp", "rb");
    if (v9)
    {
      v10 = v9;
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using override ISP-ANE AFPP file\n", &v11, 2u);
      }

      if (v8)
      {
        fclose(v8);
      }

      v8 = v10;
LABEL_27:
      fseeko(v8, 0, 2);
      ftello(v8);
      fseeko(v8, 0, 0);
      operator new[]();
    }

    if (v8)
    {
      goto LABEL_27;
    }

    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BD00();
    }
  }
}

uint64_t sub_1000114E4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x30u, input, 2u, 0, 0);
}

uint64_t sub_100011564(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x31u, &v4, 1u, 0, 0);
}

uint64_t sub_1000115E0(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 152);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 0x39u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_100011638(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 3758097084;
  if (*(a1 + 152))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Yonkers/YonkersPatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Trying to use override YonkersPatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (sub_1000119D4(a1, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(a1 + 152), 0x41u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (sub_10001BDCC(0) & 1) != 0)
      {
        operator delete[]();
      }
    }
  }

  return v5;
}

uint64_t sub_1000119D4(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a1 + 152);
  if (v7)
  {
    v11 = a3;
    v12 = a4;
    v13 = a2;
    v14 = a5;
    v8 = IOConnectCallScalarMethod(v7, 0x25u, &v11, 4u, 0, 0);
  }

  else
  {
    v8 = 3758097084;
  }

  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109890;
    HIDWORD(v11) = a2 & 0x7FFFFFFF;
    v9 = "false";
    LOWORD(v12) = 1024;
    if (a2 < 0)
    {
      v9 = "true";
    }

    *(&v12 + 2) = a5;
    HIWORD(v12) = 2080;
    v13 = v9;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Load data file: channel: %d, type: %d, isEarlyBootDataFile: %s, status: %08x\n\n", &v11, 0x1Eu);
  }

  return v8;
}

uint64_t sub_100011B34(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    *v6 = a2;
    *&v6[8] = a3;
    v4 = IOConnectCallScalarMethod(v3, 0x62u, v6, 2u, 0, 0);
  }

  else
  {
    v4 = 3758097084;
  }

  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136315394;
    *&v6[4] = "ISP_LoadIspAneAFPPFile";
    *&v6[12] = 1024;
    *&v6[14] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - status: %08x\n", v6, 0x12u);
  }

  return v4;
}

uint64_t sub_100011C50(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 3758097084;
  if (*(a1 + 152))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Savage/SavagePatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Trying to use SavagePatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (sub_1000119D4(a1, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(a1 + 152), 2u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (sub_10001BE64(0) & 1) != 0)
      {
        operator delete[]();
      }
    }
  }

  return v5;
}

uint64_t sub_100011FEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = *(a1 + 152);
  if (v6)
  {
    if (a3 && a4)
    {
      *&buf = a3;
      *(&buf + 1) = a4;
      v21 = a2;
      v9 = IOConnectCallScalarMethod(v6, 0x6Du, &v21, 1u, 0, 0);
      if (v9)
      {
        v10 = v9;
        if (off_10039DBA8 == &_os_log_default)
        {
          off_10039DBA8 = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315394;
          v17 = "ISP_SavageAuth";
          v18 = 1024;
          v19 = v10;
          v11 = "%s: Savage Pre Auth failed, status = 0x%x\n";
LABEL_28:
          p_buf = &v16;
          v13 = 18;
          goto LABEL_29;
        }
      }

      else
      {
        v14 = sub_1000119D4(a1, a2, buf, DWORD2(buf), a5);
        if (v14)
        {
          v10 = v14;
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "ISP_SavageAuth";
            v18 = 1024;
            v19 = v10;
            v11 = "%s: Data file load failed, status = 0x%x\n";
            goto LABEL_28;
          }
        }

        else
        {
          v10 = IOConnectCallScalarMethod(*(a1 + 152), 0x6Eu, &v21, 1u, 0, 0);
          if (v10)
          {
            if (off_10039DBA8 == &_os_log_default)
            {
              off_10039DBA8 = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 136315394;
              v17 = "ISP_SavageAuth";
              v18 = 1024;
              v19 = v10;
              v11 = "%s: Savage Auth failed, status = 0x%x\n";
              goto LABEL_28;
            }
          }
        }
      }
    }

    else
    {
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "ISP_SavageAuth";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Invalid data file arguments\n", &buf, 0xCu);
      }

      return 3758096385;
    }
  }

  else
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    v10 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ISP_SavageAuth";
      v11 = "%s: Invalid connection\n";
      p_buf = &buf;
      v13 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, p_buf, v13);
    }
  }

  return v10;
}

uint64_t sub_100012390(int a1, char *__filename, void *a3, size_t *a4)
{
  v4 = 3758097090;
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseeko(v8, 0, 2);
      v10 = ftello(v9);
      fseeko(v9, 0, 0);
      v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = fread(v11, 1uLL, v10, v9);
        if (v13 == v10)
        {
          *a3 = v12;
          *a4 = v10;
          v14 = v10;
        }

        else
        {
          v14 = v13;
          free(v12);
        }
      }

      else
      {
        v14 = 0;
      }

      fclose(v9);
      if (off_10039DBA8 == &_os_log_default)
      {
        off_10039DBA8 = os_log_create("com.apple.isp", "device");
      }

      v4 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = "CopyFileToBuffer";
        v18 = 2080;
        v19 = __filename;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Trying to use %s: Size = %lld (== %lld ?);\n", &v16, 0x2Au);
        return 0;
      }
    }

    else
    {
      return 3758097136;
    }
  }

  return v4;
}

uint64_t sub_10001257C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = 3758097090;
  BytePtr = 0;
  Length = 0;
  if (a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (*(a2 + 4) >= 1024)
      {
        v24 = 0u;
        v25 = 0u;
        memset(__str, 0, sizeof(__str));
        v8 = snprintf(__str, 0x40uLL, "%s%s.%s", "/usr/local/share/firmware/isp/", v5, "DAT");
        v9 = sub_100012390(v8, __str, &BytePtr, &Length);
        if (v9)
        {
          if (!a3)
          {
            goto LABEL_34;
          }

          Value = CFDictionaryGetValue(a3, *(a2 + 16));
          if (!Value)
          {
            goto LABEL_34;
          }

          v11 = CFRetain(Value);
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a2 + 8);
            *buf = 136315394;
            v20 = "SendSysConfigCalibrationDataByKey";
            v21 = 2080;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - Using %s from unit info plist\n", buf, 0x16u);
          }

          if (!v11)
          {
LABEL_34:
            v13 = IOServiceNameMatching("AppleH16CamIn");
            MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
            v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", *(a2 + 24), kCFAllocatorDefault, 3u);
            if (!v11)
            {
              return 3758097084;
            }
          }

          Length = CFDataGetLength(v11);
          BytePtr = CFDataGetBytePtr(v11);
        }

        else
        {
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = __str;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded calibration file from override path: %s\n", buf, 0xCu);
          }

          v11 = 0;
        }

        v3 = 0;
        if (BytePtr && Length)
        {
          v3 = sub_1000119D4(a1, *a2 | 0x80000000, BytePtr, Length, *(a2 + 4));
          if (off_10039DBA8 == &_os_log_default)
          {
            off_10039DBA8 = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a2 + 8);
            *__str = 136315906;
            *&__str[4] = "SendSysConfigCalibrationDataByKey";
            *&__str[12] = 2080;
            *&__str[14] = v15;
            *&__str[22] = 2048;
            *&__str[24] = Length;
            LOWORD(v24) = 1024;
            *(&v24 + 2) = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %s - length = %ld; status = %08x\n", __str, 0x26u);
          }
        }

        if (!v9 && BytePtr)
        {
          free(BytePtr);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return v3;
}

unint64_t sub_1000128FC(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  result = 0;
  v6 = *(a1 + 476);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 476);
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 6;
  }

  while (1)
  {
    if (result <= 5 && (v9 = *(a1 + 112) + v4, *(v9 + 8)))
    {
      v10 = *(v9 + 16);
      if (v10 == a2)
      {
        return result;
      }
    }

    else
    {
      if (a2 == -1)
      {
        return result;
      }

      v10 = -1;
    }

    if (v10 == a3)
    {
      break;
    }

    ++result;
    v4 += 96;
    if (v8 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_100012974(uint64_t a1, uint64_t a2)
{
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "fdrLogMessages";
    v5 = 2080;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s - %s\n", &v3, 0x16u);
  }
}

uint64_t sub_100012A58(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 112);
  result = *(v3 + 599);
  for (i = (v3 + 16); ; i += 24)
  {
    if (*(i - 2))
    {
      if (*i == 1718776695 || *i == 1718775412)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return result;
    }
  }

  *a2 = v2;
  return result;
}

BOOL sub_100012AAC(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 112) + 16;
  v4 = 1;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 += 24;
    if (v6 == 1718186595 && *(v3 - 8) == 1)
    {
      break;
    }

    v4 = v2 < 5;
    v3 = v5;
    if (++v2 == 6)
    {
      return 0;
    }
  }

  *a2 = v2;
  return v4;
}

uint64_t sub_100012B10(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 152);
  if (result)
  {
    if (IOConnectCallScalarMethod(result, 0x53u, 0, 0, &output, &outputCnt))
    {
      v2 = 1;
    }

    else
    {
      v2 = output == 0;
    }

    return !v2;
  }

  return result;
}

uint64_t sub_100012B68(uint64_t a1, void *outputStruct)
{
  v4 = 8;
  v2 = *(a1 + 152);
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x73u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_100012BC8(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  v4 = *(a1 + 152);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = 72;
  return IOConnectCallMethod(v4, 0x66u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t sub_100012C60(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    v2 = *(result + 64);
    return v1();
  }

  return result;
}

uint64_t sub_100012C80(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x22u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_100012CF0(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x23u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_100012D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 160));
  if (*(a1 + 152))
  {
    pthread_mutex_unlock((a1 + 160));
    return 3758097093;
  }

  else
  {
    v7 = IOServiceOpen(*(a1 + 144), mach_task_self_, 0x2Au, (a1 + 152));
    v8 = *(a1 + 152);
    if (v8)
    {
      v6 = v7;
    }

    else
    {
      v6 = 3758097084;
    }

    if (!v6)
    {
      v10 = 0;
      v6 = IOConnectCallScalarMethod(v8, 3u, &v10, 1u, 0, 0);
      if (!v6)
      {
        *(a1 + 56) = a2;
        *(a1 + 64) = a3;
        sub_100012C80(a1, (a1 + 120));
        sub_100012CF0(a1, (a1 + 80));
      }
    }

    pthread_mutex_unlock((a1 + 160));
  }

  return v6;
}

uint64_t sub_100012E68(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0, &v4, 1u, 0, 0);
}

uint64_t sub_100012EE4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 1u, &v4, 1u, 0, 0);
}

uint64_t sub_100012F60(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x3Fu, &v4, 1u, 0, 0);
}

uint64_t sub_100012FDC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x40u, &v4, 1u, 0, 0);
}

uint64_t sub_100013058(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 152))
  {
    return 3758097111;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  bzero(v6, 0x10uLL);
  v6[6] = v3;
  v6[2] = 1551;
  v4 = sub_100009CB8(a1, v6, 0x10u, 0, 0xFFFFFFFF);
  if (v4)
  {
    if (off_10039DBA8 == &_os_log_default)
    {
      off_10039DBA8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001BEB8();
    }
  }

  return v4;
}

uint64_t sub_100013130(uint64_t a1, _WORD *a2, _WORD *a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    return 3758097111;
  }

  output = 0;
  v10 = 0;
  outputCnt = 2;
  result = IOConnectCallScalarMethod(v3, 0x68u, 0, 0, &output, &outputCnt);
  v7 = v10;
  *a2 = output;
  *a3 = v7;
  return result;
}

_BYTE *sub_1000131E0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100013218(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_100013250(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 16);
  if (v2 != a1 + 8)
  {
    do
    {
      v3 = *(v2 + 16);
      if (*(v3 + 8) == 1)
      {
        v4 = off_10039DBB0;
        if (off_10039DBB0 == &_os_log_default)
        {
          v4 = os_log_create("com.apple.isp", "daemon");
          off_10039DBB0 = v4;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          pid = xpc_connection_get_pid(*v3);
          v6 = *(v3 + 24);
          if (!v6)
          {
            v6 = "<null>";
          }

          v7[0] = 67174915;
          v7[1] = pid;
          v8 = 2081;
          v9 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Active client pid %{private}d deviceID %{private}s\n", v7, 0x12u);
        }
      }

      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }
}

uint64_t sub_100013394(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v3 = 3758097090;
  if (*(a2 + 24))
  {
    v4 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v4;
    }

    v3 = 3758097131;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001BF34();
    }
  }

  else if (object && xpc_get_type(object) == &_xpc_type_string)
  {
    length = xpc_string_get_length(object);
    v10 = malloc_type_malloc(length + 1, 0x100004077774924uLL);
    *(a2 + 24) = v10;
    if (v10)
    {
      v11 = v10;
      string_ptr = xpc_string_get_string_ptr(object);
      memcpy(v11, string_ptr, length + 1);
      sub_100013250(a1);
      return 0;
    }

    else
    {
      return 3758097085;
    }
  }

  return v3;
}

uint64_t sub_1000134B0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (!*(result + 24))
    {
      v3 = *(result + 904);
      *(v2 + 48) = os_transaction_create();
    }

    operator new();
  }

  return result;
}

uint64_t sub_1000136FC(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if (a2)
  {
    v2 = result;
    sub_100013968(result + 8, &v9);
    if (*(v9 + 8) == 1 && (pid = xpc_connection_get_pid(*v9)) != 0)
    {
      xpc_release(*v9);
      v4 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v4 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67174657;
        LODWORD(v11) = pid;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing client: pid %{private}d\n", buf, 8u);
      }
    }

    else
    {
      v5 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing client: kernel\n", buf, 2u);
      }
    }

    v6 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v2[3];
      *buf = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Total number of connections: %lu\n", buf, 0xCu);
    }

    sub_100013250(v2);
    if (!v2[3])
    {
      bzero(v2 + 13, 0x308uLL);
      v8 = v2[6];
      if (v8)
      {
        os_release(v8);
        v2[6] = 0;
      }
    }

    result = kdebug_trace();
    if (v9)
    {
      free(*(v9 + 24));
      operator delete();
    }
  }

  return result;
}

uint64_t sub_100013968(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100015F00(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  sub_100015E9C(v11);
  return v9;
}

void sub_100013A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100015E9C(va);
  _Unwind_Resume(a1);
}

void sub_100013A44(void *a1)
{
  v2 = a1 + 1;
  v3 = a1[2];
  if (v3 != a1 + 1)
  {
    do
    {
      v4 = v3[2];
      if (*(v4 + 8) != 1 || (xpc_release(*v4), (v4 = v3[2]) != 0))
      {
        free(*(v4 + 24));
        operator delete();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  sub_100015E9C(v2);
  v5 = a1[6];
  if (v5)
  {
    os_release(v5);
    a1[6] = 0;
  }
}

uint64_t sub_100013AEC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v6 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *a3;
    v55 = 136315394;
    v56 = "setProperty";
    v57 = 1024;
    v58 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s - %d\n", &v55, 0x12u);
  }

  v8 = *a3;
  kdebug_trace();
  v9 = 0;
  v10 = *a3;
  if (*a3 <= 100)
  {
    if (v10 <= 8)
    {
      switch(v10)
      {
        case 1:
          goto LABEL_57;
        case 2:
          v43 = a3[2];
          if (v43 <= 5)
          {
            v9 = 0;
            *(a2 + v43 + 12) = *(a3 + 12);
            goto LABEL_57;
          }

          break;
        case 3:
          if (sub_1000026D4(a3 + 2))
          {
            v9 = 0;
          }

          else
          {
            v9 = 3758097084;
          }

          goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v10 <= 10)
    {
      if (v10 == 9)
      {
        v27 = a3[2];
        if (v27 <= 5)
        {
          v9 = 0;
          v28 = a3[5];
          v29 = (a1 + 12 * v27);
          v29[17] = vadd_s32(v29[17], *(a3 + 3));
          v29[18].i32[0] += v28;
          goto LABEL_57;
        }
      }

      else
      {
        v11 = a3[2];
        if (v11 <= 5)
        {
          v12 = a1 + 56 * v11;
          v14 = *(v12 + 208);
          v13 = v12 + 208;
          *v13 = v14 | a3[3];
          *(v13 + 4) |= a3[4];
          if (*(a3 + 20) == 1)
          {
            *(v13 + 8) = 1;
            v15 = *(v13 + 16);
            *(v13 + 12) |= a3[6];
            *(v13 + 16) = v15 | a3[7];
            v16 = (a3 + 11);
            v17 = (v13 + 32);
            v18 = 3;
            v9 = 0;
            do
            {
              v19 = *(v16 - 3);
              if (v19 <= *(v17 - 3))
              {
                v19 = *(v17 - 3);
              }

              *(v17 - 3) = v19;
              v20 = *v16++;
              v21 = v20;
              if (v20 <= *v17)
              {
                v21 = *v17;
              }

              *v17++ = v21;
              --v18;
            }

            while (v18);
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_57;
        }
      }

      goto LABEL_54;
    }

    if (v10 == 11)
    {
      v30 = a3[2];
      if (v30 <= 5)
      {
        v9 = 0;
        v32 = a3[14];
        v31 = a3[15];
        v34 = a3[12];
        v33 = a3[13];
        v35 = a3[11];
        v37 = a3[7];
        v36 = a3[8];
        v39 = a3[5];
        v38 = a3[6];
        v40 = (a1 + 56 * v30);
        v42 = a3[3];
        v41 = a3[4];
        v40[136] = v41;
        v40[137] = v39;
        v40[138] = v38;
        v40[139] = v37;
        v40[143] = v35;
        v40[144] = v34;
        v40[145] = v33;
        v40[146] = v32;
        v40[141] = v39 - v41;
        v40[142] = v38 - v37;
        v40[140] = v36 / v42;
        v40[148] = v34 - v35;
        v40[149] = v33 - v32;
        v40[147] = v31 / v42;
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v10 != 15)
    {
LABEL_54:
      v9 = 3758097084;
      goto LABEL_57;
    }

    v22 = sub_100013394(a1, a2, *(a3 + 1));
LABEL_56:
    v9 = v22;
    goto LABEL_57;
  }

  if (v10 <= 206)
  {
    switch(v10)
    {
      case 101:
        goto LABEL_57;
      case 105:
        v22 = sub_100013058(*(a1 + 72), a3[2]);
        break;
      case 204:
        v22 = sub_100011C50(*(a1 + 72), *(a1 + 956), *(a3 + 1), a3[4], 5u);
        break;
      default:
        goto LABEL_54;
    }

    goto LABEL_56;
  }

  if (v10 <= 210)
  {
    if (v10 == 207)
    {
      v22 = sub_100011638(*(a1 + 72), *(a1 + 960), *(a3 + 1), a3[4], 5u);
    }

    else
    {
      if (v10 != 208)
      {
        goto LABEL_54;
      }

      v22 = sub_10000EB84(*(a1 + 72));
      if (!v22)
      {
        v22 = sub_10000B7AC(*(a1 + 72));
        if (!v22)
        {
          sub_100008D80(*(a1 + 64));
        }
      }
    }

    goto LABEL_56;
  }

  if (v10 == 211)
  {
    v22 = sub_10000EC14(*(a1 + 72), *(a3 + 1), *(a3 + 2), *(a3 + 3));
    goto LABEL_56;
  }

  if (v10 != 212)
  {
    goto LABEL_54;
  }

  v23 = 10;
  while (1)
  {
    v24 = *(a1 + 72);
    v25 = sub_10000B960();
    if (!v25)
    {
      break;
    }

    v9 = v25;
    usleep(0x7A120u);
    if (!--v23)
    {
      v26 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v26 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10001BFB4();
      }

      goto LABEL_57;
    }
  }

  v49 = 10;
  while (1)
  {
    v50 = sub_1000114E4(*(a1 + 72), *(a1 + 956), 2u);
    if (!v50)
    {
      break;
    }

    v9 = v50;
    usleep(0x30D40u);
    if (!--v49)
    {
      v51 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v51 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v51;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_10001C030();
      }

      goto LABEL_57;
    }
  }

  if (sub_100011FEC(*(a1 + 72), *(a1 + 956), *(a3 + 1), *(a3 + 2), 0x500u))
  {
    v52 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v52 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v52;
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10001C0AC();
    }
  }

  if (sub_100011564(*(a1 + 72), *(a1 + 956)))
  {
    v53 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v53 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v53;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_10001C128();
    }
  }

  v9 = sub_10000EB84(*(a1 + 72));
  if (v9)
  {
    v54 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v54 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v54;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10001C1A4();
    }
  }

LABEL_57:
  v44 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v44 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v44;
  }

  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
  v46 = *a3;
  if (v45)
  {
    v55 = 136315650;
    v56 = "setProperty";
    v57 = 1024;
    v58 = v46;
    v59 = 1024;
    v60 = v9;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s - %d complete (res=0x%08X)\n\n", &v55, 0x18u);
    v47 = *a3;
  }

  kdebug_trace();
  return v9;
}

uint64_t sub_1000141A0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v5 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *a3;
    v24 = 136315394;
    v25 = "getProperty";
    v26 = 1024;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s - %d\n", &v24, 0x12u);
  }

  v7 = *a3;
  kdebug_trace();
  v8 = *a3;
  v9 = 3758097084;
  if (*a3 > 202)
  {
    if (v8 <= 205)
    {
      if (v8 != 203)
      {
        if (v8 != 205)
        {
          goto LABEL_46;
        }

        v10 = sub_100012F60(*(a1 + 72), *(a1 + 960));
        goto LABEL_45;
      }

      v9 = sub_10000EFC0(*(a1 + 72));
      if (!v9)
      {
        v11 = sub_100012EE4(*(a1 + 72), *(a1 + 956));
LABEL_39:
        v9 = v11;
      }
    }

    else
    {
      if (v8 != 206)
      {
        if (v8 == 209)
        {
          v10 = sub_10000E534(*(a1 + 72));
        }

        else
        {
          if (v8 != 210)
          {
            goto LABEL_46;
          }

          v10 = sub_10000E25C(*(a1 + 72));
        }

        goto LABEL_45;
      }

      v9 = sub_10000EFC0(*(a1 + 72));
      if (!v9)
      {
        v11 = sub_100012FDC(*(a1 + 72), *(a1 + 960));
        goto LABEL_39;
      }
    }

    a3[2] = v9;
    goto LABEL_46;
  }

  if (v8 <= 199)
  {
    if (v8 == 5)
    {
      v9 = 0;
      *(a3 + 8) = sub_1000016D0(**(*(a1 + 72) + 112), 0, a3 + 2);
    }

    else if (v8 == 106)
    {
      v9 = sub_100013130(*(a1 + 72), a3 + 4, a3 + 5);
    }
  }

  else
  {
    switch(v8)
    {
      case 200:
        v12 = *(*(a1 + 72) + 112);
        v9 = 3758097085;
        if (v12)
        {
          v13 = 0;
          v14 = (v12 + 16);
          do
          {
            v16 = *v14;
            v14 += 24;
            v15 = v16;
            if (v16 == 1718776695 || v15 == 1718775412)
            {
              a3[3] = v13;
              *(a1 + 960) = v13;
            }

            else if (v15 == 1718186595)
            {
              a3[2] = v13;
              *(a1 + 956) = v13;
            }

            ++v13;
          }

          while (v13 != 6);
          v9 = 0;
        }

        break;
      case 201:
        v18 = *(*(a1 + 72) + 112);
        v9 = 3758097085;
        if (v18)
        {
          *(a3 + 8) = v18[629];
          *(a3 + 10) = v18[599];
          v9 = 0;
          if (v18[601] == 1)
          {
            *(a3 + 9) = 0;
            *(a3 + 11) = v18[592];
          }

          else
          {
            *(a3 + 9) = v18[592];
            *(a3 + 11) = 0;
          }
        }

        break;
      case 202:
        v10 = sub_100012E68(*(a1 + 72), *(a1 + 956));
LABEL_45:
        v9 = v10;
        a3[2] = v10;
        break;
      default:
        break;
    }
  }

LABEL_46:
  v19 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v19 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v19;
  }

  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  v21 = *a3;
  if (v20)
  {
    v24 = 136315650;
    v25 = "getProperty";
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s - %d complete (res=0x%08X)\n\n", &v24, 0x18u);
    v22 = *a3;
  }

  kdebug_trace();
  return v9;
}

void sub_10001456C(uint64_t a1, xpc_connection_t *a2, xpc_object_t xdict)
{
  length = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "H16ISPServicesRemoteTypeKey");
  data = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteDataKey", &length);
  if (!uint64)
  {
    return;
  }

  v8 = data;
  if (!data || !length)
  {
    return;
  }

  if (uint64 != 1 || length != 13320)
  {
    if (uint64 != 2 || length != 3680)
    {
      v11 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v11 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v11;
      }

      v12 = -536870212;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10001C220(a2);
      }

      goto LABEL_37;
    }

    memcpy(__dst, data, sizeof(__dst));
    if ((LODWORD(__dst[0]) - 6) < 2)
    {
      v15 = "H16ISPServicesRemoteCFTypeNameKey";
    }

    else
    {
      if (LODWORD(__dst[0]) != 14)
      {
        if (LODWORD(__dst[0]) == 100)
        {
          sub_1000141A0(a1, v10, __dst);
          return;
        }

        goto LABEL_35;
      }

      v15 = "H16ISPServicesRemoteRGBIRFinalInputPCEConfigKey";
    }

    __dst[1] = xpc_dictionary_get_value(xdict, v15);
LABEL_35:
    v18 = sub_1000141A0(a1, v10, __dst);
    goto LABEL_36;
  }

  v9 = *data;
  if (*data <= 203)
  {
    if ((v9 - 6) < 2)
    {
      *(data + 1) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteCFTypeNameKey");
      *(v8 + 2) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteCFTypeDataKey");
    }

    else if (v9 == 12)
    {
      *(data + 1) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferColorKey");
      *(v8 + 2) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferIRKey");
      *(v8 + 3) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferDepthKey");
      *(v8 + 4) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRMetadataColorKey");
      *(v8 + 5) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRMetadataIRKey");
      *(v8 + 6) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRPCEConfigKey");
    }

    else if (v9 == 15)
    {
      *(data + 1) = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteDeviceID");
    }

    goto LABEL_32;
  }

  if (v9 <= 210)
  {
    if (v9 != 204 && v9 != 207)
    {
      goto LABEL_32;
    }

LABEL_27:
    v26 = 0;
    v13 = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteFusingDataKey", &v26);
    v14 = v26;
    *(v8 + 1) = v13;
    *(v8 + 2) = v14;
    goto LABEL_32;
  }

  if (v9 == 211)
  {
    *v29 = 0;
    *(data + 1) = xpc_dictionary_get_string(xdict, "H16ISPServicesRemoteIORegPropertyNameKey");
    v16 = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteIORegPropertyDataKey", v29);
    v17 = *v29;
    *(v8 + 2) = v16;
    *(v8 + 3) = v17;
    goto LABEL_32;
  }

  if (v9 == 212)
  {
    goto LABEL_27;
  }

LABEL_32:
  v18 = sub_100013AEC(a1, a2, v8);
LABEL_36:
  v12 = v18;
LABEL_37:
  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    remote_connection = xpc_dictionary_get_remote_connection(reply);
    v22 = off_10039DBB0;
    if (!remote_connection)
    {
      if (off_10039DBB0 == &_os_log_default)
      {
        v22 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001C2BC(a2);
      }

      goto LABEL_64;
    }

    if (off_10039DBB0 == &_os_log_default)
    {
      v22 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      pid = xpc_connection_get_pid(*a2);
      *v29 = 136315907;
      *&v29[4] = "xpcClientEventHandler";
      v30 = 1024;
      v31 = 1778;
      v32 = 1024;
      v33 = v12;
      v34 = 1025;
      v35 = pid;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: %d: Sending reply to client: rc %08X (pid %{private}d)\n", v29, 0x1Eu);
    }

    xpc_dictionary_set_int64(v20, "H16ISPServicesRemoteReturnKey", v12);
    if (uint64 == 2)
    {
      xpc_dictionary_set_data(v20, "H16ISPServicesRemoteDataKey", __dst, length);
      if ((LODWORD(__dst[0]) - 6) < 2)
      {
        if (!v12)
        {
          xpc_dictionary_set_value(v20, "H16ISPServicesRemoteCFTypeDataKey", __dst[2]);
          xpc_release(__dst[2]);
        }

        goto LABEL_63;
      }

      if (LODWORD(__dst[0]) == 14)
      {
        if (v12)
        {
          goto LABEL_63;
        }

        xpc_dictionary_set_value(v20, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey", __dst[2]);
        v24 = __dst[2];
        if (!__dst[2])
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (LODWORD(__dst[0]) != 13)
        {
          goto LABEL_63;
        }

        if (v12)
        {
          goto LABEL_63;
        }

        xpc_dictionary_set_value(v20, "H16ISPServicesRemoteRGBIRReportKey", __dst[1]);
        v24 = __dst[1];
        if (!__dst[1])
        {
          goto LABEL_63;
        }
      }

      xpc_release(v24);
    }

LABEL_63:
    xpc_connection_send_message(remote_connection, v20);
LABEL_64:
    xpc_release(v20);
    return;
  }

  v25 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v25 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v25;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10001C340(a2);
  }
}