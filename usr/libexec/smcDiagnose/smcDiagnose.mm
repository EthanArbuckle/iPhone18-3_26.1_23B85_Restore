uint64_t sub_100000B80(const char *a1)
{
  v2 = strlen(a1);
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 24;
  do
  {
    if (v2 <= v3)
    {
      v6 = 32;
    }

    else
    {
      v6 = a1[v3];
    }

    v4 = (v6 << v5) | v4;
    ++v3;
    v5 -= 8;
  }

  while (v3 != 4);
  return v4;
}

uint64_t sub_100000BEC(int a1)
{
  if (a1 - 97 >= 0x17)
  {
    if (a1 - 48 >= 0xA)
    {
      v6 = v1;
      v7 = v2;
      v5[0] = HIBYTE(a1);
      v5[1] = BYTE2(a1);
      v5[2] = BYTE1(a1);
      v5[3] = a1;
      v5[4] = 0;
      fprintf(__stderrp, "ERROR: Invalid type (%s) passed to ui8SMCGetNumFracBitsFromType.\n", v5);
      exit(-1);
    }

    v3 = -48;
  }

  else
  {
    v3 = -87;
  }

  return (v3 + a1);
}

uint64_t sub_100000C78(int a1)
{
  if (BYTE1(a1) - 97 >= 0x17)
  {
    if (BYTE1(a1) - 48 >= 0xA)
    {
      v6 = v1;
      v7 = v2;
      v5[0] = HIBYTE(a1);
      v5[1] = BYTE2(a1);
      v5[2] = BYTE1(a1);
      v5[3] = a1;
      v5[4] = 0;
      fprintf(__stderrp, "ERROR: Invalid type (%s) passed to ui8SMCGetNumIntBitsFromType.\n", v5);
      exit(-1);
    }

    v3 = -48;
  }

  else
  {
    v3 = -87;
  }

  return (v3 + BYTE1(a1));
}

uint64_t sub_100000D04(const char *a1, uint64_t a2)
{
  v4 = sub_100004714(0, 0);
  if (!v4)
  {
    v10 = __stderrp;
    v11 = "ERROR: Failed to open SMC data port.\n";
    v12 = 37;
LABEL_10:
    fwrite(v11, v12, 1uLL, v10);
    return -1;
  }

  v5 = v4;
  v15 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v16 = sub_100000B80(a1);
  BYTE6(v19) = 9;
  v6 = sub_100004524(2, v5, &v16, outputStruct, 0);
  if (!v6)
  {
    if (BYTE8(outputStruct[2]))
    {
      fprintf(__stderrp, "ERROR: GetKeyInfo for key %s failed with SMC error code 0x%x.\n", a1, BYTE8(outputStruct[2]));
    }

    else
    {
      *a2 = *(&outputStruct[1] + 12);
      *(a2 + 8) = DWORD1(outputStruct[2]);
    }

    if (!sub_10000486C(v5))
    {
      return BYTE8(outputStruct[2]);
    }

    v10 = __stderrp;
    v11 = "ERROR: Failed to properly close SMC data port.\n";
    v12 = 47;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = __stderrp;
  v9 = sub_1000045BC(v6);
  fprintf(v8, "ERROR: GetKeyInfo for key %s failed with OS error %s.\n", a1, v9);
  sub_10000486C(v5);
  return v7;
}

uint64_t sub_100000EC0(unsigned int a1, _DWORD *a2, mach_port_t connection)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(outputStruct, 0, sizeof(outputStruct));
  memset(v21, 0, sizeof(v21));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  HIDWORD(v22) = a1;
  BYTE10(v22) = 8;
  v6 = sub_100004524(2, connection, v21, outputStruct, 0);
  if (v6)
  {
    v7 = v6;
    v8 = __stderrp;
    v9 = sub_1000045BC(v6);
    fprintf(v8, "ERROR: GetKeyFromIndex for index 0x%lx failed with OS error %s.\n", a1, v9);
    sub_10000486C(connection);
  }

  else
  {
    if (BYTE8(v12))
    {
      fprintf(__stderrp, "ERROR: GetKeyFromIndex for index 0x%lx failed with SMC error code 0x%x.\n", a1, BYTE8(v12));
    }

    else
    {
      *a2 = outputStruct[0];
    }

    if (sub_10000486C(connection))
    {
      fwrite("ERROR: Failed to properly close SMC data port.\n", 0x2FuLL, 1uLL, __stderrp);
      return -1;
    }

    else
    {
      return BYTE8(v12);
    }
  }

  return v7;
}

uint64_t sub_100001030(const char *a1, unsigned int a2, void *a3)
{
  v6 = sub_100004714(0, 0);
  if (!v6)
  {
    v12 = __stderrp;
    v13 = "ERROR: Failed to open SMC data port.\n";
    v14 = 37;
LABEL_10:
    fwrite(v13, v14, 1uLL, v12);
    return -1;
  }

  v7 = v6;
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(outputStruct, 0, sizeof(outputStruct));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v20 = sub_100000B80(a1);
  DWORD2(v22) = a2;
  BYTE6(v23) = 5;
  v8 = sub_100004524(2, v7, &v20, outputStruct, 0);
  if (!v8)
  {
    if (BYTE8(v17))
    {
      fprintf(__stderrp, "ERROR: ReadKey for key %s failed with SMC error code 0x%x.\n", a1, BYTE8(v17));
    }

    else
    {
      memcpy(a3, v18, a2);
    }

    if (!sub_10000486C(v7))
    {
      return BYTE8(v17);
    }

    v12 = __stderrp;
    v13 = "ERROR: Failed to properly close SMC data port.\n";
    v14 = 47;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = __stderrp;
  v11 = sub_1000045BC(v8);
  fprintf(v10, "ERROR: ReadKey for key %s failed with OS error %s.\n", a1, v11);
  sub_10000486C(v7);
  return v9;
}

uint64_t sub_1000011F8(const char *a1, int a2)
{
  v7 = 0;
  v6 = 0;
  if (sub_100000D04(a1, &v6))
  {
    puts("Not present.");
    exit(-1);
  }

  if (sub_100001030(a1, v6, v8))
  {
    return puts("no data");
  }

  if (a2)
  {
    printf("%s: ", a1);
  }

  if (v6)
  {
    v5 = 0;
    do
    {
      printf("0x%02x ", v8[v5++]);
    }

    while (v5 < v6);
  }

  return putchar(10);
}

uint64_t sub_1000012F8(const char *a1)
{
  v7 = 0;
  v6 = 0;
  printf("\n\n%s Event Buffer:\n", a1);
  v1 = sub_100000D04("EVCT", &v6);
  if (v1)
  {
    goto LABEL_18;
  }

  if (sub_100001030("EVCT", v6, v8))
  {
    puts("no data");
  }

  else
  {
    printf("EVCT: 0x%02x %02x\n", v8[0], v8[1]);
  }

  v1 = sub_100000D04("EVRD", &v6);
  if (v1)
  {
LABEL_18:
    printf("FAIL (0x%x).\n", v1);
    exit(-1);
  }

  v2 = 0;
  for (i = 0; i != 4; ++i)
  {
    if (sub_100001030("EVRD", v6, v8))
    {
      puts("no data");
    }

    else
    {
      for (j = 0; j != 32; ++j)
      {
        if ((j & 7) == 0)
        {
          if (j)
          {
            putchar(10);
          }

          printf("Event %d: ", v2++);
        }

        printf("0x%02x ", v8[j]);
      }

      putchar(10);
    }
  }

  sub_1000011F8("EVHF", 1);
  return fflush(__stdoutp);
}

uint64_t start()
{
  printf("## smcDiagnose %0.2f %d\n", 5.0, 200);
  if (sub_100001E34())
  {
    exit(-1);
  }

  sub_100001E84();
  sub_100001978(1);
  dword_10000C62C = 0;
  sub_100001EC0("#KEY", 1, 0xFFFFFFFF, -1, 0);
  v0 = sub_100001E90();
  v1 = v0;
  if (dword_10000C628)
  {
    printf("## %ld keys\n", v0);
  }

  if (v1 >= 0xFA1)
  {
    v1 = 4000;
    printf("## Keys capped at first %ld keys\n", 4000);
  }

  sub_1000019D4(0);
  sub_100001B64(0);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = dword_10000C62C;
    do
    {
      v5 = sub_100001EC0(v9, 0, v2, 0, v4);
      v4 = dword_10000C62C;
      if (!dword_10000C62C)
      {
        v6 = v5;
        if (v5 && strlen(v5) > 1)
        {
          if (dword_10000C628)
          {
            puts(v6);
            v4 = dword_10000C62C;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 0;
          ++v3;
        }
      }

      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  sub_100001BD4(0);
  v7 = sub_100001C48();
  if (v7 < 1.024)
  {
    usleep(((1.024 - v7) * 1000000.0));
  }

  if (dword_10000C628)
  {
    printf("Keys not read %d\n", v3);
  }

  sub_10000167C();
  fflush(__stdoutp);
  return 0;
}

id sub_10000167C()
{
  if ([qword_10000C648 count])
  {
    v0 = 0;
    do
    {
      v1 = [qword_10000C648 objectAtIndex:v0];
      v2 = [v1 keyString];
      if ([v2 isEqualToString:@"TIME_START"])
      {
        sub_1000017E0(v1);
      }

      if ([v2 isEqualToString:@"TIME_DIFF"])
      {
        sub_1000017E0(v1);
      }

      ++v0;
    }

    while (v0 < [qword_10000C648 count]);
  }

  if ([qword_10000C650 count])
  {
    v3 = 0;
    do
    {
      v4 = [qword_10000C650 objectAtIndex:v3];
      sub_10000189C(v4);

      ++v3;
    }

    while (v3 < [qword_10000C650 count]);
  }

  result = [qword_10000C648 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = [qword_10000C648 objectAtIndex:i];
      v8 = [v7 keyString];
      if ([v8 isEqualToString:@"TIME_END"])
      {
        sub_1000017E0(v7);
      }

      result = [qword_10000C648 count];
    }
  }

  return result;
}

void sub_1000017E0(void *a1)
{
  v4 = a1;
  v1 = [v4 keyString];
  printf("%s ", [v1 cStringUsingEncoding:1]);

  if ([v4 numValues] >= 1)
  {
    v2 = 0;
    do
    {
      [v4 valueDouble:v2];
      printf(",%f", v3);
      ++v2;
    }

    while (v2 < [v4 numValues]);
  }

  putchar(10);
}

void sub_10000189C(void *a1)
{
  v4 = a1;
  v1 = [v4 keyString];
  printf("%s ", [v1 cStringUsingEncoding:1]);

  if ([v4 numValues] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = [v4 valueStr:v2];
      printf(",%s", [v3 cStringUsingEncoding:1]);

      ++v2;
    }

    while (v2 < [v4 numValues]);
  }

  putchar(10);
}

void sub_100001978(int a1)
{
  v2 = objc_opt_new();
  v3 = qword_10000C648;
  qword_10000C648 = v2;

  v4 = objc_opt_new();
  v5 = qword_10000C650;
  qword_10000C650 = v4;

  dword_10000C658 = a1;
}

void sub_1000019D4(int a1)
{
  v4 = objc_alloc_init(NSDate);
  [v4 timeIntervalSince1970];
  qword_10000C660 = *&v2;
  v3 = v2 - *&qword_10000C638;
  if (*&qword_10000C640 <= 0.0)
  {
    v3 = 0.0;
  }

  sub_100001A5C(@"TIME_DIFF", a1, v3);
}

void sub_100001A5C(void *a1, int a2, double a3)
{
  v8 = a1;
  if ([qword_10000C648 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [qword_10000C648 objectAtIndex:v5];
      v7 = [(keyDataObject *)v6 keyString];
      if ([v7 isEqualToString:v8])
      {
        break;
      }

      if (++v5 >= [qword_10000C648 count])
      {
        goto LABEL_5;
      }
    }

    [(keyDataObject *)v6 addToTimeArray:a2 idx:a3];
  }

  else
  {
LABEL_5:
    v6 = [[keyDataObject alloc] initWithT:v8];
    [(keyDataObject *)v6 addToTimeArray:a2 idx:a3];
    [qword_10000C648 addObject:v6];
  }
}

void sub_100001B64(int a1)
{
  v4 = objc_alloc_init(NSDate);
  [v4 timeIntervalSince1970];
  sub_100001A5C(@"TIME_START", a1, v2);
  [v4 timeIntervalSince1970];
  qword_10000C638 = v3;
}

void sub_100001BD4(int a1)
{
  v3 = objc_alloc_init(NSDate);
  [v3 timeIntervalSince1970];
  qword_10000C640 = *&v2;
  sub_100001A5C(@"TIME_END", a1, v2 - *&qword_10000C638);
}

double sub_100001C48()
{
  result = *&qword_10000C640 - *&qword_10000C638;
  *&qword_10000C668 = *&qword_10000C640 - *&qword_10000C638;
  return result;
}

void sub_100001C68(void *a1, void *a2, int a3)
{
  v9 = a1;
  v5 = a2;
  if ([qword_10000C650 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [qword_10000C650 objectAtIndex:v6];
      v8 = [(keyDataObject *)v7 keyString];
      if ([v8 isEqualToString:v9])
      {
        break;
      }

      if (++v6 >= [qword_10000C650 count])
      {
        goto LABEL_5;
      }
    }

    [(keyDataObject *)v7 addToValueArray:v5 idx:a3];
  }

  else
  {
LABEL_5:
    v7 = [[keyDataObject alloc] initWith:v9];
    [(keyDataObject *)v7 addToValueArray:v5 idx:a3];
    [qword_10000C650 addObject:v7];
  }
}

uint64_t sub_100001D74()
{
  if (dword_10000C628)
  {
    puts("Trying to open io connection to SMC Kext");
  }

  dword_10000C630 = sub_100004714(0, 0);
  if (dword_10000C630)
  {
LABEL_7:
    if (dword_10000C628)
    {
      puts("Opened access to AppleSMC kext.");
    }

    return 1;
  }

  else
  {
    v0 = 10;
    while (--v0)
    {
      usleep(0x186A0u);
      dword_10000C630 = sub_100004714(0, 0);
      if (dword_10000C630)
      {
        goto LABEL_7;
      }
    }

    printf("ERROR: Could not open connection. Tried %d times.\n", 9);
    return 0;
  }
}

uint64_t sub_100001E34()
{
  sub_100001D74();
  if (dword_10000C630)
  {
    return 0;
  }

  fwrite("ERROR: Failed to open SMC data port.\n", 0x25uLL, 1uLL, __stderrp);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100001E9C(uint64_t result, _BYTE *a2)
{
  *a2 = BYTE3(result);
  a2[1] = BYTE2(result);
  a2[2] = BYTE1(result);
  a2[3] = result;
  a2[4] = 0;
  return result;
}

id sub_100001EC0(char *a1, int a2, unsigned int a3, int a4, int a5)
{
  if ((a3 & 0x80000000) != 0)
  {
LABEL_6:
    if (a1)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a5)
  {
    a1 = sub_100001FEC(a3);
    goto LABEL_6;
  }

  if (a3 >= 0x1F)
  {
    return 0;
  }

  a1 = &aAupo[9 * a3];
LABEL_7:
  v7 = [NSString stringWithFormat:@"%s", a1];
  v8 = sub_10000214C(v7, a2, a4);

  if ([v8 length])
  {
    if (dword_10000C628)
    {
      printf("response String = _%s_\n", [v8 cStringUsingEncoding:1]);
    }

    v9 = [v8 cStringUsingEncoding:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

char *sub_100001FCC(int a1)
{
  if (a1 >= 31)
  {
    return 0;
  }

  else
  {
    return &aAupo[9 * a1];
  }
}

char *sub_100001FEC(int a1)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  HIDWORD(v15) = a1;
  BYTE10(v15) = 8;
  if (sub_100004524(2, dword_10000C630, v14, outputStruct, 1))
  {
    if (dword_10000C628)
    {
      printf("IO ERROR using keyfromindex: %d\n");
    }

    return 0;
  }

  if (BYTE8(v5))
  {
    if (dword_10000C628)
    {
      printf("SMC ERROR using keyfromindex: %d idx %d\n");
    }

    return 0;
  }

  LODWORD(v14[0]) = outputStruct[0];
  v2 = &byte_10000C678;
  byte_10000C678 = BYTE3(outputStruct[0]);
  byte_10000C679 = BYTE2(outputStruct[0]);
  byte_10000C67A = BYTE1(outputStruct[0]);
  byte_10000C67B = outputStruct[0];
  byte_10000C67C = 0;
  if (dword_10000C628)
  {
    printf("Key To Read %d =%s\n", a1, &byte_10000C678);
  }

  return v2;
}

id sub_10000214C(void *a1, int a2, int a3)
{
  v5 = a1;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v6 = objc_opt_new();
  v7 = [v5 cStringUsingEncoding:1];
  v8 = aEvrd_0;
  v9 = 84;
  do
  {
    if (!strcmp(v8, v7))
    {
      goto LABEL_30;
    }

    v8 += 9;
    --v9;
  }

  while (v9);
  sub_100002470([v5 cStringUsingEncoding:1], &v22, v19, v17);
  v10 = v17[0];
  v11 = v17[1];
  v12 = v18;
  [v6 setString:&stru_100008220];
  if (v10 == 1)
  {
    if (a2 && !a3)
    {
      [v6 appendFormat:@"%s =", objc_msgSend(v5, "cStringUsingEncoding:", 1)];
    }

    if (HIDWORD(v23) <= 8 && (v12 - 89) <= 0xFFFFFFFD)
    {
      [v6 appendFormat:@" %f", v11];
      qword_10000C670 = v11;
LABEL_28:
      if (a3 != -1)
      {
        sub_100001C68(v5, v6, a3);
      }

      goto LABEL_30;
    }

    [v6 appendFormat:@" "];
    if (v12 == 5 || v12 == 87 || v12 == 88 && !sub_100002780(v5))
    {
      [v6 appendFormat:@"0x"];
    }

    if (!HIDWORD(v23))
    {
      goto LABEL_28;
    }

    v13 = 0;
    while (v12 != 5)
    {
      if (v12 == 88)
      {
        v15 = sub_100002780(v5);
        v14 = *(v20 + v13);
        if (v15)
        {
          [v6 appendFormat:@"%c ", *(v20 + v13)];
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (v12 == 87)
      {
        break;
      }

LABEL_25:
      if ((++v13 & 7) == 0)
      {
        [v6 appendFormat:@" "];
      }

      if (v13 >= HIDWORD(v23))
      {
        goto LABEL_28;
      }
    }

    v14 = *(v20 + v13);
LABEL_22:
    [v6 appendFormat:@"%02x ", v14];
    goto LABEL_25;
  }

LABEL_30:

  return v6;
}

uint64_t sub_100002414(char *__s2)
{
  v2 = aEvrd_0;
  v3 = 84;
  while (strcmp(v2, __s2))
  {
    v2 += 9;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100002470(const char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  a2[20] = 0;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a3 + 20) = 0;
  *(a3 + 8) = 0u;
  *(a3 + 9) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *a3 = 0u;
  *(a3 + 3) = 0u;
  v8 = (a3 + 48);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  outputStruct = 0u;
  v22 = 0u;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  *(a3 + 20) = 0;
  *(a3 + 8) = 0u;
  *(a3 + 9) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 3) = 0u;
  v32 = sub_100000B80(a1);
  BYTE6(v35) = 9;
  v9 = sub_100004524(2, dword_10000C630, &v32, &outputStruct, 1);
  if (v9 || (SBYTE4(v23) & 0x80000000) == 0)
  {
    v12 = -1.0;
    if (v9)
    {
      printf("KeyInfo Err for key %s failed %d\n");
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = BYTE4(v23);
  v12 = -1.0;
  if ((BYTE4(v23) & 0x20) == 0 && HIDWORD(v22) <= 0x78)
  {
    *a2 = sub_100000B80(a1);
    v14 = HIDWORD(v22);
    v13 = v23;
    *(a2 + 7) = HIDWORD(v22);
    v20[0] = BYTE3(v13);
    v20[1] = BYTE2(v13);
    v20[2] = BYTE1(v13);
    v20[3] = v13;
    v20[4] = 0;
    v15 = sub_1000028D4(v13);
    v16 = v15;
    *(a4 + 4) = v15;
    if (dword_10000C628)
    {
      NSLog(@"Key Format = %s  %x %d  - forceValueFormat %d ", v20, v13, v13, v15);
      if (dword_10000C628)
      {
        NSLog(@"forceValueSize = %d", v14);
      }
    }

    *(a2 + 42) = 5;
    if (sub_100004524(2, dword_10000C630, a2, a3, 1))
    {
      printf("ReadKey Err for key %s failed %d\n");
LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    if (dword_10000C628)
    {
      NSLog(@"RESULT BYTES ");
      if (v14 >= 1)
      {
        v18 = v14;
        do
        {
          v19 = *v8++;
          printf("%x ", v19);
          --v18;
        }

        while (v18);
      }
    }

    dword_10000C218 = (v11 >> 2) & 1;
    if (v14 > 8 || v16 == 87)
    {
      *(a4 + 4) = v16;
      v12 = 0.0;
    }

    else
    {
      v12 = sub_1000031C8(v16, a2, a3, v17);
    }

    if (dword_10000C628)
    {
      NSLog(@"curSensorValue = %f", *&v12);
    }

    v10 = 1;
  }

LABEL_13:
  *(a4 + 1) = v12;
  *a4 = v10;
}

BOOL sub_100002780(void *a1)
{
  v1 = a1;
  v2 = ![v1 compare:@"MSFL"] || !objc_msgSend(v1, "compare:", @"MSFA") || !objc_msgSend(v1, "compare:", @"RBr") || objc_msgSend(v1, "compare:", @"RMde") == 0;

  return v2;
}

BOOL sub_100002804(const char *a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v4 = sub_100000B80(a1);
  BYTE6(v7) = 9;
  return sub_100004524(2, dword_10000C630, &v4, v2, 1) == 0;
}

uint64_t sub_1000028D4(int a1)
{
  v1 = 5;
  if (a1 <= 1936734262)
  {
    if (a1 > 1936274225)
    {
      if (a1 <= 1936733026)
      {
        if (a1 <= 1936732277)
        {
          if (a1 > 1936275487)
          {
            if (a1 == 1936275488)
            {
              return 6;
            }

            if (a1 == 1936732262)
            {
              return 37;
            }
          }

          else
          {
            if (a1 == 1936274226)
            {
              return 100;
            }

            if (a1 == 1936274996)
            {
              return 101;
            }
          }
        }

        else if (a1 <= 1936732532)
        {
          if (a1 == 1936732278)
          {
            return 53;
          }

          if (a1 == 1936732517)
          {
            return 38;
          }
        }

        else
        {
          switch(a1)
          {
            case 1936732533:
              return 54;
            case 1936732772:
              return 39;
            case 1936732788:
              return 55;
          }
        }
      }

      else if (a1 > 1936733552)
      {
        if (a1 <= 1936733807)
        {
          if (a1 == 1936733553)
          {
            return 58;
          }

          if (a1 == 1936733753)
          {
            return 43;
          }
        }

        else
        {
          switch(a1)
          {
            case 1936733808:
              return 59;
            case 1936734008:
              return 9;
            case 1936734063:
              return 60;
          }
        }
      }

      else if (a1 <= 1936733281)
      {
        if (a1 == 1936733027)
        {
          return 40;
        }

        if (a1 == 1936733043)
        {
          return 56;
        }
      }

      else
      {
        switch(a1)
        {
          case 1936733282:
            return 41;
          case 1936733298:
            return 57;
          case 1936733537:
            return 42;
        }
      }

      return 87;
    }

    if (a1 > 1718629729)
    {
      if (a1 > 1718641459)
      {
        if (a1 <= 1751480414)
        {
          if (a1 == 1718641460)
          {
            return 90;
          }

          if (a1 == 1718641970)
          {
            return 19;
          }
        }

        else if (a1 != 1751480415)
        {
          if (a1 == 1768908404)
          {
            return 103;
          }

          if (a1 == 1936273718)
          {
            return 29;
          }
        }
      }

      else if (a1 <= 1718630200)
      {
        if (a1 == 1718629730)
        {
          return 16;
        }

        if (a1 == 1718629985)
        {
          return 12;
        }
      }

      else
      {
        switch(a1)
        {
          case 1718630201:
            return 17;
          case 1718630456:
            return 7;
          case 1718640950:
            return 33;
        }
      }

      return 87;
    }

    if (a1 > 1718383647)
    {
      if (a1 <= 1718628964)
      {
        if (a1 == 1718383648)
        {
          return 91;
        }

        if (a1 == 1718628710)
        {
          return 13;
        }
      }

      else
      {
        switch(a1)
        {
          case 1718628965:
            return 14;
          case 1718629220:
            return 15;
          case 1718629475:
            return 18;
        }
      }

      return 87;
    }

    if (a1 > 1667785073)
    {
      if (a1 != 1667785074)
      {
        if (a1 == 1718378855)
        {
          return v1;
        }

        return 87;
      }

      return 88;
    }

    if (a1 == 1651076703)
    {
      return 89;
    }

    v2 = 1667774506;
LABEL_78:
    if (a1 != v2)
    {
      return 87;
    }

    return 88;
  }

  if (a1 <= 1936747106)
  {
    if (a1 <= 1936745321)
    {
      if (a1 <= 1936744756)
      {
        if (a1 > 1936734517)
        {
          if (a1 == 1936734518)
          {
            return 46;
          }

          if (a1 == 1936734573)
          {
            return 62;
          }
        }

        else
        {
          if (a1 == 1936734263)
          {
            return 45;
          }

          if (a1 == 1936734318)
          {
            return 61;
          }
        }
      }

      else if (a1 <= 1936745011)
      {
        if (a1 == 1936744757)
        {
          return 47;
        }

        if (a1 == 1936744812)
        {
          return 63;
        }
      }

      else
      {
        switch(a1)
        {
          case 1936745012:
            return 48;
          case 1936745067:
            return 64;
          case 1936745267:
            return 49;
        }
      }
    }

    else if (a1 > 1936746031)
    {
      if (a1 <= 1936746341)
      {
        if (a1 == 1936746032)
        {
          return 52;
        }

        if (a1 == 1936746087)
        {
          return 68;
        }
      }

      else
      {
        switch(a1)
        {
          case 1936746342:
            return 69;
          case 1936746597:
            return 70;
          case 1936746852:
            return 71;
        }
      }
    }

    else if (a1 <= 1936745576)
    {
      if (a1 == 1936745322)
      {
        return 65;
      }

      if (a1 == 1936745522)
      {
        return 50;
      }
    }

    else
    {
      switch(a1)
      {
        case 1936745577:
          return 66;
        case 1936745777:
          return 51;
        case 1936745832:
          return 67;
      }
    }

    return 87;
  }

  if (a1 <= 1936749362)
  {
    if (a1 <= 1936748087)
    {
      if (a1 > 1936747616)
      {
        if (a1 == 1936747617)
        {
          return 74;
        }

        if (a1 == 1936747833)
        {
          return 75;
        }
      }

      else
      {
        if (a1 == 1936747107)
        {
          return 72;
        }

        if (a1 == 1936747362)
        {
          return 73;
        }
      }
    }

    else if (a1 <= 1936748597)
    {
      if (a1 == 1936748088)
      {
        return 76;
      }

      if (a1 == 1936748343)
      {
        return 78;
      }
    }

    else
    {
      switch(a1)
      {
        case 1936748598:
          return 79;
        case 1936748853:
          return 80;
        case 1936749108:
          return 81;
      }
    }

    return 87;
  }

  if (a1 <= 1969828657)
  {
    if (a1 <= 1936749872)
    {
      if (a1 == 1936749363)
      {
        return 82;
      }

      if (a1 == 1936749618)
      {
        return 83;
      }
    }

    else
    {
      switch(a1)
      {
        case 1936749873:
          return 84;
        case 1936750128:
          return 85;
        case 1969828150:
          return 3;
      }
    }

    return 87;
  }

  if (a1 <= 1969829887)
  {
    if (a1 == 1969828658)
    {
      return 31;
    }

    if (a1 == 1969829428)
    {
      return 102;
    }

    return 87;
  }

  if (a1 != 1969829888 && a1 != 1969829920)
  {
    v2 = 2071094646;
    goto LABEL_78;
  }

  return v1;
}

double sub_1000031C8(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a2 + 28);
  v5 = -1.0;
  if (v4 <= 8)
  {
    qword_10000C688 = 0;
    if (v4)
    {
      memcpy(&qword_10000C688, (a3 + 48), v4);
    }

    switch(a1)
    {
      case 2:
        return 0.0;
      case 3:
      case 23:
        goto LABEL_5;
      case 5:
        goto LABEL_185;
      case 6:
        return qword_10000C688;
      case 7:
        v65 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v66 = qword_10000C688;
        }

        else
        {
          v66 = v65;
        }

        return vcvtd_n_f64_u32(v66, 8uLL);
      case 9:
      case 44:
        v12 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v13) = qword_10000C688;
        }

        else
        {
          LOWORD(v13) = v12;
        }

        v13 = v13;
        return vcvtd_n_f64_s32(v13, 8uLL);
      case 11:
        v67 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v68 = qword_10000C688;
        }

        else
        {
          v68 = v67;
        }

        v45 = v68;
        goto LABEL_140;
      case 12:
        v48 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v49 = qword_10000C688;
        }

        else
        {
          v49 = v48;
        }

        return vcvtd_n_f64_u32(v49, 0xAuLL);
      case 13:
        v63 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v64 = qword_10000C688;
        }

        else
        {
          v64 = v63;
        }

        return vcvtd_n_f64_u32(v64, 0xFuLL);
      case 14:
        v81 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v79) = qword_10000C688;
        }

        else
        {
          LOWORD(v79) = v81;
        }

        v79 = v79;
        return vcvtd_n_f64_u32(v79, 0xEuLL);
      case 15:
        v77 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v78 = qword_10000C688;
        }

        else
        {
          v78 = v77;
        }

        return vcvtd_n_f64_u32(v78, 0xDuLL);
      case 16:
        v55 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v56 = qword_10000C688;
        }

        else
        {
          v56 = v55;
        }

        return vcvtd_n_f64_u32(v56, 0xBuLL);
      case 17:
        v94 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v95 = qword_10000C688;
        }

        else
        {
          v95 = v94;
        }

        return vcvtd_n_f64_u32(v95, 9uLL);
      case 18:
        v96 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v97 = qword_10000C688;
        }

        else
        {
          v97 = v96;
        }

        return vcvtd_n_f64_u32(v97, 0xCuLL);
      case 19:
        v104 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v105 = qword_10000C688;
        }

        else
        {
          v105 = v104;
        }

        return vcvtd_n_f64_u32(v105, 2uLL);
      case 20:
        v99 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v100 = qword_10000C688;
        }

        else
        {
          v100 = v99;
        }

        v101 = vcvtd_n_f64_u32(v100, 2uLL);
        goto LABEL_235;
      case 21:
        v43 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v44 = qword_10000C688;
        }

        else
        {
          v44 = v43;
        }

        v45 = vcvtd_n_f64_u32(v44, 2uLL);
        goto LABEL_140;
      case 22:
        v79 = qword_10000C688;
        return vcvtd_n_f64_u32(v79, 0xEuLL);
      case 24:
        v112 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v113 = qword_10000C688;
        }

        else
        {
          v113 = v112;
        }

        v101 = vcvtd_n_f64_u32(v113, 8uLL);
LABEL_235:
        v45 = v101;
        goto LABEL_236;
      case 25:
        v52 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v53 = qword_10000C688;
        }

        else
        {
          v53 = v52;
        }

        v45 = v53;
        v54 = 10000.0;
        return (v45 / v54);
      case 26:
        v74 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v75 = qword_10000C688;
        }

        else
        {
          v75 = v74;
        }

        v45 = v75;
LABEL_140:
        v76 = 1148846080;
        goto LABEL_237;
      case 27:
        v59 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v60 = qword_10000C688;
        }

        else
        {
          v60 = v59;
        }

        v45 = v60;
LABEL_236:
        v76 = 1120403456;
LABEL_237:
        v54 = *&v76;
        return (v45 / v54);
      case 29:
      case 52:
        v11 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v10) = qword_10000C688;
        }

        else
        {
          LOWORD(v10) = v11;
        }

        return v10;
      case 31:
        goto LABEL_302;
      case 33:
        v118 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v119 = qword_10000C688;
        }

        else
        {
          v119 = v118;
        }

        return vcvtd_n_f64_u32(v119, 6uLL);
      case 37:
        v61 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v62) = qword_10000C688;
        }

        else
        {
          LOWORD(v62) = v61;
        }

        v62 = v62;
        return vcvtd_n_f64_s32(v62, 0xFuLL);
      case 38:
        v70 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v71) = qword_10000C688;
        }

        else
        {
          LOWORD(v71) = v70;
        }

        v71 = v71;
        return vcvtd_n_f64_s32(v71, 0xEuLL);
      case 39:
        v92 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v93) = qword_10000C688;
        }

        else
        {
          LOWORD(v93) = v92;
        }

        v93 = v93;
        return vcvtd_n_f64_s32(v93, 0xDuLL);
      case 40:
        v72 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v73) = qword_10000C688;
        }

        else
        {
          LOWORD(v73) = v72;
        }

        v73 = v73;
        return vcvtd_n_f64_s32(v73, 0xCuLL);
      case 41:
        v33 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v34) = qword_10000C688;
        }

        else
        {
          LOWORD(v34) = v33;
        }

        v34 = v34;
        return vcvtd_n_f64_s32(v34, 0xBuLL);
      case 42:
        v50 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v51) = qword_10000C688;
        }

        else
        {
          LOWORD(v51) = v50;
        }

        v51 = v51;
        return vcvtd_n_f64_s32(v51, 0xAuLL);
      case 43:
        v98 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v47) = qword_10000C688;
        }

        else
        {
          LOWORD(v47) = v98;
        }

        v47 = v47;
        return vcvtd_n_f64_s32(v47, 9uLL);
      case 45:
        v122 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v18) = qword_10000C688;
        }

        else
        {
          LOWORD(v18) = v122;
        }

        v18 = v18;
        return vcvtd_n_f64_s32(v18, 7uLL);
      case 46:
        v39 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v40) = qword_10000C688;
        }

        else
        {
          LOWORD(v40) = v39;
        }

        v40 = v40;
        return vcvtd_n_f64_s32(v40, 6uLL);
      case 47:
        v88 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v89) = qword_10000C688;
        }

        else
        {
          LOWORD(v89) = v88;
        }

        v89 = v89;
        return vcvtd_n_f64_s32(v89, 5uLL);
      case 48:
        v37 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v38) = qword_10000C688;
        }

        else
        {
          LOWORD(v38) = v37;
        }

        v38 = v38;
        return vcvtd_n_f64_s32(v38, 4uLL);
      case 49:
        v35 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v36) = qword_10000C688;
        }

        else
        {
          LOWORD(v36) = v35;
        }

        v36 = v36;
        return vcvtd_n_f64_s32(v36, 3uLL);
      case 50:
        v57 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v58) = qword_10000C688;
        }

        else
        {
          LOWORD(v58) = v57;
        }

        v58 = v58;
        return vcvtd_n_f64_s32(v58, 2uLL);
      case 51:
        v80 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          LOWORD(v20) = qword_10000C688;
        }

        else
        {
          LOWORD(v20) = v80;
        }

        v20 = v20;
        return vcvtd_n_f64_s32(v20, 1uLL);
      case 53:
        v106 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v107 = qword_10000C688;
        }

        else
        {
          v107 = v106;
        }

        return vcvtd_n_f64_s32(v107, 0x1FuLL);
      case 54:
        v23 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v24 = qword_10000C688;
        }

        else
        {
          v24 = v23;
        }

        return vcvtd_n_f64_s32(v24, 0x1EuLL);
      case 55:
        v41 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v42 = qword_10000C688;
        }

        else
        {
          v42 = v41;
        }

        return vcvtd_n_f64_s32(v42, 0x1DuLL);
      case 56:
        v82 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v83 = qword_10000C688;
        }

        else
        {
          v83 = v82;
        }

        return vcvtd_n_f64_s32(v83, 0x1CuLL);
      case 57:
        v86 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v87 = qword_10000C688;
        }

        else
        {
          v87 = v86;
        }

        return vcvtd_n_f64_s32(v87, 0x1BuLL);
      case 58:
        v123 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v124 = qword_10000C688;
        }

        else
        {
          v124 = v123;
        }

        return vcvtd_n_f64_s32(v124, 0x1AuLL);
      case 59:
        v84 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v85 = qword_10000C688;
        }

        else
        {
          v85 = v84;
        }

        return vcvtd_n_f64_s32(v85, 0x19uLL);
      case 60:
        v31 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v32 = qword_10000C688;
        }

        else
        {
          v32 = v31;
        }

        return vcvtd_n_f64_s32(v32, 0x18uLL);
      case 61:
        v25 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v26 = qword_10000C688;
        }

        else
        {
          v26 = v25;
        }

        return vcvtd_n_f64_s32(v26, 0x17uLL);
      case 62:
        v128 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v129 = qword_10000C688;
        }

        else
        {
          v129 = v128;
        }

        return vcvtd_n_f64_s32(v129, 0x16uLL);
      case 63:
        v120 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v121 = qword_10000C688;
        }

        else
        {
          v121 = v120;
        }

        return (v121 / 2097408.0);
      case 64:
        v29 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v30 = qword_10000C688;
        }

        else
        {
          v30 = v29;
        }

        return vcvtd_n_f64_s32(v30, 0x14uLL);
      case 65:
        v90 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v91 = qword_10000C688;
        }

        else
        {
          v91 = v90;
        }

        return vcvtd_n_f64_s32(v91, 0x13uLL);
      case 66:
        v102 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v103 = qword_10000C688;
        }

        else
        {
          v103 = v102;
        }

        return vcvtd_n_f64_s32(v103, 0x12uLL);
      case 67:
        v27 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v28 = qword_10000C688;
        }

        else
        {
          v28 = v27;
        }

        return vcvtd_n_f64_s32(v28, 0x11uLL);
      case 68:
        v115 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v116 = qword_10000C688;
        }

        else
        {
          v116 = v115;
        }

        return vcvtd_n_f64_s32(v116, 0x10uLL);
      case 69:
        v108 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v62 = qword_10000C688;
        }

        else
        {
          v62 = v108;
        }

        return vcvtd_n_f64_s32(v62, 0xFuLL);
      case 70:
        v132 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v71 = qword_10000C688;
        }

        else
        {
          v71 = v132;
        }

        return vcvtd_n_f64_s32(v71, 0xEuLL);
      case 71:
        v126 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v93 = qword_10000C688;
        }

        else
        {
          v93 = v126;
        }

        return vcvtd_n_f64_s32(v93, 0xDuLL);
      case 72:
        v130 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v73 = qword_10000C688;
        }

        else
        {
          v73 = v130;
        }

        return vcvtd_n_f64_s32(v73, 0xCuLL);
      case 73:
        v109 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v34 = qword_10000C688;
        }

        else
        {
          v34 = v109;
        }

        return vcvtd_n_f64_s32(v34, 0xBuLL);
      case 74:
        v110 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v51 = qword_10000C688;
        }

        else
        {
          v51 = v110;
        }

        return vcvtd_n_f64_s32(v51, 0xAuLL);
      case 75:
        v46 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v47 = qword_10000C688;
        }

        else
        {
          v47 = v46;
        }

        return vcvtd_n_f64_s32(v47, 9uLL);
      case 76:
        v117 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v13 = qword_10000C688;
        }

        else
        {
          v13 = v117;
        }

        return vcvtd_n_f64_s32(v13, 8uLL);
      case 78:
        v17 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v18 = qword_10000C688;
        }

        else
        {
          v18 = v17;
        }

        return vcvtd_n_f64_s32(v18, 7uLL);
      case 79:
        v125 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v40 = qword_10000C688;
        }

        else
        {
          v40 = v125;
        }

        return vcvtd_n_f64_s32(v40, 6uLL);
      case 80:
        v127 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v89 = qword_10000C688;
        }

        else
        {
          v89 = v127;
        }

        return vcvtd_n_f64_s32(v89, 5uLL);
      case 81:
        v69 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v38 = qword_10000C688;
        }

        else
        {
          v38 = v69;
        }

        return vcvtd_n_f64_s32(v38, 4uLL);
      case 82:
        v131 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v36 = qword_10000C688;
        }

        else
        {
          v36 = v131;
        }

        return vcvtd_n_f64_s32(v36, 3uLL);
      case 83:
        v111 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v58 = qword_10000C688;
        }

        else
        {
          v58 = v111;
        }

        return vcvtd_n_f64_s32(v58, 2uLL);
      case 84:
        v19 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          v20 = qword_10000C688;
        }

        else
        {
          v20 = v19;
        }

        return vcvtd_n_f64_s32(v20, 1uLL);
      case 85:
      case 100:
        v9 = bswap32(qword_10000C688);
        if (dword_10000C218)
        {
          return qword_10000C688;
        }

        else
        {
          return v9;
        }

      case 87:
        if (v4 <= 3)
        {
          if (v4 == 1)
          {
LABEL_185:
            LOBYTE(a4) = qword_10000C688;
            return *&a4;
          }

          if (v4 != 2)
          {
            return v5;
          }

LABEL_5:
          v7 = bswap32(qword_10000C688) >> 16;
          if (dword_10000C218)
          {
            LOWORD(v8) = qword_10000C688;
          }

          else
          {
            LOWORD(v8) = v7;
          }

          return v8;
        }

        if (v4 == 4)
        {
LABEL_302:
          v136 = bswap32(qword_10000C688);
          if (dword_10000C218)
          {
            return qword_10000C688;
          }

          else
          {
            return v136;
          }
        }

        if (v4 == 8)
        {
LABEL_298:
          v134 = bswap64(qword_10000C688);
          if (dword_10000C218)
          {
            v135 = qword_10000C688;
          }

          else
          {
            v135 = v134;
          }

          v5 = v135;
        }

        break;
      case 90:
        v21 = bswap32(qword_10000C688) >> 16;
        if (dword_10000C218)
        {
          v22 = qword_10000C688;
        }

        else
        {
          v22 = v21;
        }

        return vcvtd_n_f64_u32(v22, 4uLL);
      case 91:
        return *&qword_10000C688;
      case 101:
        v14 = bswap64(qword_10000C688);
        if (dword_10000C218)
        {
          return qword_10000C688;
        }

        else
        {
          return v14;
        }

      case 102:
        goto LABEL_298;
      case 103:
        return (qword_10000C688 * 0.0000152587891);
      default:
        return v5;
    }
  }

  return v5;
}

uint64_t sub_100003E24(uint64_t a1, const char *a2, unsigned int a3, unsigned __int8 *a4)
{
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  v18 = 0;
  v19 = sub_100000B80(a2);
  if (dword_10000C628)
  {
    printf("writing key %s to value %x %x\n", a2, *a4, a4[1]);
  }

  DWORD2(v21) = a3;
  v22[6] = 6;
  if (a3)
  {
    memcpy(&v22[12], a4, a3);
  }

  v7 = dword_10000C628;
  if (dword_10000C628)
  {
    NSLog(@"Inside Function");
    v7 = dword_10000C628;
  }

  if (a3)
  {
    v8 = &v22[12];
    v9 = a3;
    v10 = v7;
    do
    {
      if (v10)
      {
        printf("%x ", *v8);
        v7 = dword_10000C628;
        v10 = dword_10000C628;
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  if (v7)
  {
    putchar(10);
    v7 = dword_10000C628;
  }

  if (a3)
  {
    v11 = &v22[12];
    v12 = a3;
    v13 = v7;
    do
    {
      if (v13)
      {
        printf("%c ", *v11);
        v7 = dword_10000C628;
        v13 = dword_10000C628;
      }

      ++v11;
      --v12;
    }

    while (v12);
  }

  if (v7)
  {
    putchar(10);
  }

  v14 = sub_100004524(2, dword_10000C630, &v19, outputStruct, 1);
  v15 = v14;
  if (dword_10000C628)
  {
    printf("writing key result = %d\n", v14);
  }

  return v15;
}

uint64_t sub_100004030(mach_port_t a1, const char *a2, int a3, unsigned __int8 *a4)
{
  LODWORD(v5) = a3;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = sub_100000B80(a2);
  if (dword_10000C628)
  {
    printf("writing key %s to sz %d value %x %x\n", a2, v5, *a4, a4[1]);
  }

  DWORD2(v27) = v5;
  v28[6] = 6;
  if (!v5)
  {
    if (!dword_10000C628)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = &v28[12];
  v5 = v5;
  v9 = v5;
  do
  {
    v10 = *a4++;
    v28[v9-- + 11] = v10;
  }

  while (v9);
  v11 = dword_10000C628;
  v12 = dword_10000C628;
  do
  {
    if (v12)
    {
      printf("%x ", *v8);
      v11 = dword_10000C628;
      v12 = dword_10000C628;
    }

    ++v8;
    --v5;
  }

  while (v5);
  if (v11)
  {
LABEL_11:
    putchar(10);
  }

LABEL_12:
  v13 = sub_100004524(2, a1, &v25, outputStruct, 1);
  if (dword_10000C628 && (v13 || BYTE8(v16)))
  {
    printf("writing key result = %d  smcpOutput.result %d\n", v13, BYTE8(v16));
  }

  return BYTE8(v16);
}

uint64_t sub_100004524(int a1, mach_port_t connection, const void *a3, void *outputStruct, int a5)
{
  if (a1 == 2)
  {
    outputStructCnt = 168;
    v6 = IOConnectCallStructMethod(connection, 2u, a3, 0xA8uLL, outputStruct, &outputStructCnt);
    if (a5)
    {
      return v6;
    }
  }

  else
  {
    printf("ASMCF::callFunction ERROR: unrecognized index(%d)\n", a1);
    v6 = 3758097084;
    if (a5)
    {
      return v6;
    }
  }

  if (v6)
  {
    v7 = sub_1000045BC(v6);
    printf("ASMCF::callFunction ERROR: IOConnectMethod returned %s\n", v7);
  }

  return v6;
}

const char *sub_1000045BC(int a1)
{
  if (a1 <= -536870202)
  {
    if (a1 > -536870207)
    {
      if (a1 == -536870206)
      {
        return "kIOReturnBadArgument";
      }

      if (a1 == -536870203)
      {
        return "kIOReturnExclusiveAccess";
      }
    }

    else
    {
      if (a1 == -536870212)
      {
        return "kIOReturnError";
      }

      if (a1 == -536870207)
      {
        return "kIOReturnNotPrivileged";
      }
    }
  }

  else if (a1 <= -536870199)
  {
    if (a1 == -536870201)
    {
      return "kIOReturnUnsupported";
    }

    if (a1 == -536870199)
    {
      return "kIOReturnInternalError";
    }
  }

  else
  {
    switch(a1)
    {
      case -536870198:
        return "kIOReturnIOError";
      case -536870174:
        return "kIOReturnNotPermitted";
      case 0:
        return "kIOReturnSuccess";
    }
  }

  printf("smc unknown error (0x%02x)\n", a1);
  return "unknown error";
}

uint64_t sub_100004714(uint32_t a1, int a2)
{
  *mainPort = 0;
  connect = 0;
  v4 = IOMasterPort(0, &mainPort[1]);
  if (v4)
  {
    sub_1000045BC(v4);
    printf("ASMCF::openAppleSMC ERROR - IOMasterPort returned %s\n");
    return 0;
  }

  v5 = mainPort[1];
  v6 = IOServiceMatching("AppleSMC");
  MatchingServices = IOServiceGetMatchingServices(v5, v6, mainPort);
  if (MatchingServices)
  {
    sub_1000045BC(MatchingServices);
    printf("ASMCF::openAppleSMC ERROR - IOServiceGetMatchingServices returned %s\n");
    return 0;
  }

  v9 = IOIteratorNext(mainPort[0]);
  IOObjectRelease(mainPort[0]);
  if (!v9)
  {
    if (!a2)
    {
      return 0;
    }

    v11 = "ASMCF::callFunction ERROR - could not find AppleSMC";
LABEL_16:
    puts(v11);
    return 0;
  }

  v10 = IOServiceOpen(v9, mach_task_self_, a1, &connect);
  IOObjectRelease(v9);
  if (v10)
  {
    sub_1000045BC(v10);
    printf("ASMCF::callFunction ERROR - IOServiceOpen returned %s\n");
    return 0;
  }

  if (!connect)
  {
    v11 = "ASMCF::callFunction ERROR - resultPort == NULL";
    goto LABEL_16;
  }

  v12 = IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0);
  if (!v12)
  {
    return connect;
  }

  sub_1000045BC(v12);
  printf("ASMCF::callFunction ERROR - OpenUserClient returned %s\n");
  return 0;
}

uint64_t sub_10000486C(mach_port_t a1)
{
  v2 = IOConnectCallScalarMethod(a1, 1u, 0, 0, 0, 0);
  if (v2)
  {
    v3 = sub_1000045BC(v2);
    printf("ASMCF::callFunction ERROR: CloseUserClient returned %s\n", v3);
  }

  v4 = IOServiceClose(a1);
  v5 = v4;
  if (v4)
  {
    v6 = sub_1000045BC(v4);
    printf("ASMCF::callFunction ERROR: IOServiceClose returned %s\n", v6);
  }

  return v5;
}