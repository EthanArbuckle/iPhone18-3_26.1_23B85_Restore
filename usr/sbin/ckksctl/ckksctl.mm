double sub_100000CC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = sub_100000DF0(a2);
  v5 = malloc_type_malloc(104 * v4 + 208, 0x109004046C4FC64uLL);
  *(a1 + 16) = v5;
  *v5 = unk_10000C2C8;
  v5[1] = unk_10000C2D8;
  *(v5 + 12) = 0;
  v5[4] = unk_10000C308;
  v5[5] = unk_10000C318;
  v5[2] = xmmword_10000C2E8;
  v5[3] = unk_10000C2F8;
  if (v4)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(a2 + 16);
      if (*(v8 + v6 + 80) != 1)
      {
        goto LABEL_6;
      }

      if (SecIsInternalRelease())
      {
        break;
      }

LABEL_7:
      v6 += 104;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    v8 = *(a2 + 16);
LABEL_6:
    v9 = *(a1 + 16) + 104 * v7++;
    v10 = (v8 + v6);
    v11 = *v10;
    v12 = v10[2];
    *(v9 + 16) = v10[1];
    *(v9 + 32) = v12;
    *v9 = v11;
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    *(v9 + 96) = *(v10 + 12);
    *(v9 + 64) = v14;
    *(v9 + 80) = v15;
    *(v9 + 48) = v13;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_10:
  v16 = *(a1 + 16) + 104 * v7;
  *(v16 + 96) = 0;
  result = 0.0;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  return result;
}

uint64_t sub_100000DF0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  if (v1)
  {
    do
    {
      if (!memcmp(v1, v4, 0x68uLL))
      {
        break;
      }

      ++v2;
      v1 += 104;
    }

    while (v2 != 1024);
  }

  return v2;
}

uint64_t sub_100000E68(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  memset(v39, 170, sizeof(v39));
  sub_100000CC0(v39, result);
  v1 = sub_100000DF0(v39);
  v2 = v39[0];
  if (!v39[0])
  {
    v2 = "command";
  }

  printf("usage: %s", v2);
  if (v1)
  {
    v3 = 0;
    v4 = v1;
    while (!*(v39[2] + v3))
    {
LABEL_17:
      v3 += 104;
      if (!--v4)
      {
        v7 = 0;
        v8 = v1;
        while (2)
        {
          if (!*(v39[2] + v7 + 8) || *(v39[2] + v7))
          {
            goto LABEL_31;
          }

          printf(" [--%s", *(v39[2] + v7 + 8));
          if (v39[2])
          {
            v9 = *(v39[2] + v7 + 48);
            if (*(v39[2] + v7 + 56))
            {
              if (!v9)
              {
                goto LABEL_30;
              }

LABEL_27:
              v10 = *(v39[2] + v7 + 40);
              if (!v10)
              {
                v10 = "arg";
              }

              printf(" %s", v10);
            }

            else if (v9 || *(v39[2] + v7 + 88))
            {
              goto LABEL_27;
            }
          }

LABEL_30:
          putchar(93);
LABEL_31:
          v7 += 104;
          if (!--v8)
          {
            v11 = 16;
            v12 = v1;
            do
            {
              if (*(v39[2] + v11))
              {
                printf(" [%s]", *(v39[2] + v11));
              }

              v11 += 104;
              --v12;
            }

            while (v12);
            v13 = 0;
            v14 = v1;
            do
            {
              if (*(v39[2] + v13 + 24))
              {
                if (*(v39[2] + v13 + 32))
                {
                  printf(" [<%s>]");
                }

                else
                {
                  printf(" <%s>");
                }
              }

              v13 += 104;
              --v14;
            }

            while (v14);
            goto LABEL_42;
          }

          continue;
        }
      }
    }

    printf(" [-%c", *(v39[2] + v3));
    if (v39[2])
    {
      v5 = *(v39[2] + v3 + 48);
      if (*(v39[2] + v3 + 56))
      {
        if (!v5)
        {
          goto LABEL_16;
        }
      }

      else if (!v5 && !*(v39[2] + v3 + 88))
      {
        goto LABEL_16;
      }

      v6 = *(v39[2] + v3 + 40);
      if (!v6)
      {
        v6 = "arg";
      }

      printf(" %s", v6);
    }

LABEL_16:
    putchar(93);
    goto LABEL_17;
  }

LABEL_42:
  putchar(10);
  if (v39[1])
  {
    printf("\n%s\n", v39[1]);
  }

  puts("\npositional arguments:");
  if (!v1)
  {
    puts("\noptional arguments:");
    puts("\noptional commands:");
    return putchar(10);
  }

  v15 = 0;
  v16 = v1;
  do
  {
    if (*(v39[2] + v15 + 24))
    {
      printf("  %-31s %s\n", *(v39[2] + v15 + 24), *(v39[2] + v15 + 72));
    }

    v15 += 104;
    --v16;
  }

  while (v16);
  puts("\noptional arguments:");
  v17 = 88;
  v18 = v1;
  do
  {
    if (!*(v39[2] + v17 - 88))
    {
      goto LABEL_81;
    }

    if (*(v39[2] + v17 - 80))
    {
      printf("  -%c", *(v39[2] + v17 - 88));
      v19 = v39[2];
      if (!v39[2])
      {
        goto LABEL_64;
      }

      v20 = *(v39[2] + v17 - 40);
      if (*(v39[2] + v17 - 32))
      {
        if (!v20)
        {
          goto LABEL_64;
        }
      }

      else if (!v20 && !*(v39[2] + v17))
      {
        goto LABEL_64;
      }

      v22 = *(v39[2] + v17 - 48);
      if (!v22)
      {
        v22 = "arg";
      }

      printf(" %s", v22);
      v19 = v39[2];
LABEL_64:
      v23 = v19 + v17;
      if (*(v19 + v17 - 80))
      {
        v25 = v23 - 40;
        v24 = *(v23 - 40);
        if (*(v25 + 8))
        {
          if (v24)
          {
            goto LABEL_73;
          }
        }

        else if (v24 || *(v19 + v17))
        {
LABEL_73:
          v27 = strlen(*(v19 + v17 - 80));
          if (*(v19 + v17 - 48))
          {
            v28 = *(v19 + v17 - 48);
          }

          else
          {
            v28 = "arg";
          }

          strlen(v28);
          printf(", --%s %-*s");
          goto LABEL_80;
        }

        if (*(v19 + v17 - 48))
        {
          v26 = *(v19 + v17 - 48);
        }

        else
        {
          v26 = "arg";
        }

        strlen(v26);
        printf(", --%-*s");
      }

      goto LABEL_80;
    }

    v21 = *(v39[2] + v17 - 40);
    if (*(v39[2] + v17 - 32))
    {
      if (v21)
      {
        goto LABEL_79;
      }
    }

    else if (v21 || *(v39[2] + v17))
    {
LABEL_79:
      printf("  -%c %-*s");
      goto LABEL_80;
    }

    printf("  -%-30c");
LABEL_80:
    puts(*(v39[2] + v17 - 16));
LABEL_81:
    v17 += 104;
    --v18;
  }

  while (v18);
  v29 = v1;
  while (2)
  {
    v30 = v39[2] + v18;
    if (*(v39[2] + v18 + 8) && !*v30)
    {
      v31 = *(v39[2] + v18 + 48);
      if (*(v39[2] + v18 + 56))
      {
        if (!v31)
        {
          goto LABEL_87;
        }

LABEL_90:
        memset(v49, 170, 22);
        *__str = 0xAAAAAAAAAAAAAAAALL;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v47 = v32;
        v45 = v32;
        v46 = v32;
        v43 = v32;
        v44 = v32;
        v41 = v32;
        v42 = v32;
        *v40 = v32;
        v33 = *(v39[2] + v18 + 88);
        v34 = *(v30 + 8);
        v35 = *(v39[2] + v18 + 40);
        if (!v35)
        {
          v35 = "arg";
        }

        if (v33)
        {
          v36 = "%s %s...";
        }

        else
        {
          v36 = "%s %s";
        }

        if (v33)
        {
          v37 = "%s [repeatable]";
        }

        else
        {
          v37 = "%s";
        }

        snprintf(__str, 0x1EuLL, v36, v34, v35);
        snprintf(v40, 0x80uLL, v37, *(v39[2] + v18 + 72));
        printf("  --%-28s %s\n", __str, v40);
      }

      else
      {
        if (v31 || *(v39[2] + v18 + 88))
        {
          goto LABEL_90;
        }

LABEL_87:
        printf("  --%-28s %s\n", *(v39[2] + v18 + 8), *(v39[2] + v18 + 72));
      }
    }

    v18 += 104;
    if (--v29)
    {
      continue;
    }

    break;
  }

  puts("\noptional commands:");
  v38 = 0;
  do
  {
    if (*(v39[2] + v38 + 16))
    {
      printf("  %-30s %s\n", *(v39[2] + v38 + 16), *(v39[2] + v38 + 72));
    }

    v38 += 104;
    --v1;
  }

  while (v1);
  return putchar(10);
}

char **sub_100001438(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    *v4 = *(a1 + 64);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = asprintf(result, "%.1048576s", a2);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = **(a1 + 96);
    **(a1 + 88) = malloc_type_realloc(*v6, 8 * (v7 + 1), 0x10040436913F5uLL);
    result = asprintf((**(a1 + 88) + 8 * v7), "%.1048576s", a2);
    **(a1 + 96) = v7 + 1;
  }

  return result;
}

void sub_100001638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100001650(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 description];
    printf("Error causing havoc: %s\n", [v4 UTF8String]);
  }

  else
  {
    if (a2)
    {
      v5 = @"ON";
    }

    else
    {
      v5 = @"OFF";
    }

    printf("Success. Havoc is now %s\n", [(__CFString *)v5 UTF8String]);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_100001880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000189C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 description];
    printf("Error deleting zone: %s\n", [v3 UTF8String]);
  }

  else
  {
    puts("Success.");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

intptr_t sub_100001D48(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 description];
    printf("Error modifying tlk shares: %s\n", [v3 UTF8String]);
  }

  else
  {
    puts("Success.");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_100001F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001F80(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 description];
    printf("Error fetching view: %s\n", [v13 UTF8String]);
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v14 = +[NSMutableDictionary dictionary];
      [v14 setObject:v17 forKeyedSubscript:@"tlk"];
      [v14 setObject:v9 forKeyedSubscript:@"pastTLKs"];
      [v14 setObject:v10 forKeyedSubscript:@"tlkShares"];
      sub_10000213C(v14);
      putchar(10);
    }

    else
    {
      v15 = [v17 description];
      printf("TLK: %s\n", [v15 UTF8String]);

      v16 = [v9 description];
      printf("Old TLKs: %s\n", [v16 UTF8String]);

      v14 = [v10 description];
      printf("TLKShares: %s\n", [v14 UTF8String]);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000213C(void *a1)
{
  v1 = sub_100002214(a1);
  v5 = 0;
  v2 = [NSJSONSerialization dataWithJSONObject:v1 options:3 error:&v5];
  v3 = v5;

  if (v2)
  {
    v4 = [[NSString alloc] initWithData:v2 encoding:4];
    printf("%s", [v4 UTF8String]);
  }

  else
  {
    v4 = [v3 localizedDescription];
    NSLog(@"error: %@", v4);
  }
}

id sub_100002214(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v2 allKeys];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v2 objectForKeyedSubscript:v9];
          v11 = sub_100002770(v10);
          [v3 setObject:v11 forKeyedSubscript:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100002380(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:{v11, v13}];
        sub_1000024D4(v11, v12, a2);
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_1000024D4(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3 == 1)
    {
      sub_100002688(@"\n%*s%@ -", v7, v8, v9, v10, v11, v12, v13, 4);
      sub_100002688(@"%*s------------------------", v28, v29, v30, v31, v32, v33, v34, 4);
    }

    else if (a3)
    {
      sub_100002688(@"%*s%@ -", v7, v8, v9, v10, v11, v12, v13, (4 * a3));
    }

    else
    {
      sub_100002688(@"\n%*s%@ -", v7, v8, v9, v10, v11, v12, v13, 0);
      sub_100002688(@"%*s========================", v14, v15, v16, v17, v18, v19, v20, 0);
    }

    sub_100002380(v6, (a3 + 1));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_100002688(@"%*s%@ -", v21, v22, v23, v24, v25, v26, v27, (4 * a3));
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000026F4;
      v35[3] = &unk_10000C448;
      v36 = a3 + 1;
      [v6 enumerateObjectsUsingBlock:v35];
    }

    else
    {
      sub_100002688(@"%*s%@: %@", v21, v22, v23, v24, v25, v26, v27, (4 * a3));
    }
  }
}

void sub_100002688(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  puts([v10 UTF8String]);
}

void sub_1000026F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  sub_1000024D4(v6, v5, *(a1 + 32));
}

id sub_100002770(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24[0] = @"code";
    v2 = v1;
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 code]);
    v24[1] = @"domain";
    v25[0] = v3;
    v4 = [v2 domain];
    v25[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v6 = [v5 mutableCopy];

    v7 = [v2 userInfo];

    v8 = sub_100002214(v7);
    [v6 setObject:v8 forKeyedSubscript:@"userInfo"];

    goto LABEL_17;
  }

  if ([NSJSONSerialization isValidJSONObject:v1])
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v1 jsonDictionary];
    if ([NSJSONSerialization isValidJSONObject:v10])
    {
      v11 = v10;
    }

    else
    {
      v11 = [v1 description];
    }

    v6 = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_6:
      v9 = v1;
LABEL_7:
      v6 = v9;
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v1 base64EncodedStringWithOptions:0];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = sub_100002214(v1);
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [v1 description];
      goto LABEL_7;
    }

    v13 = v1;
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v13;
    v14 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = sub_100002770(*(*(&v19 + 1) + 8 * i));
          [v6 addObject:{v18, v19}];
        }

        v15 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

LABEL_17:

  return v6;
}

intptr_t sub_100002E90(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 description];
    printf("Error proposing TLK: %s\n", [v3 UTF8String]);
  }

  else
  {
    puts("Success.");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_100003238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003254(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [v3 description];
    printf("Error sending metric: %s\n", [v4 UTF8String]);

    if ([v6 code])
    {
      v5 = [v6 code];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    puts("Complete.");
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000034A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [v3 description];
    printf("Error pushing: %s\n", [v4 UTF8String]);

    if ([v6 code])
    {
      v5 = [v6 code];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    puts("Complete.");
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000036D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000036F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [v3 description];
    printf("Error fetching: %s\n", [v4 UTF8String]);

    if ([v6 code])
    {
      v5 = [v6 code];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    puts("Complete.");
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000038F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 description];
    printf("ERROR FETCHING STATUS: %s\n", [v8 UTF8String]);
  }

  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v9 mutableCopy];

  v11 = &SecIsInternalRelease_ptr;
  v174 = v10;
  v172 = v7;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"reachability"];
    [v174 setObject:0 forKeyedSubscript:@"reachability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v206 = v13;

    v14 = [v174 objectForKeyedSubscript:@"ckdeviceID"];
    [v174 setObject:0 forKeyedSubscript:@"ckdeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v204 = v15;

    v16 = [v174 objectForKeyedSubscript:@"ckdeviceIDError"];
    [v174 setObject:0 forKeyedSubscript:@"ckdeviceIDError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v202 = v17;

    v18 = [v174 objectForKeyedSubscript:@"lockstatetracker"];
    [v174 setObject:0 forKeyedSubscript:@"lockstatetracker"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v200 = v19;

    v20 = [v174 objectForKeyedSubscript:@"cloudkitRetryAfter"];
    [v174 setObject:0 forKeyedSubscript:@"cloudkitRetryAfter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v198 = v21;

    v22 = [v174 objectForKeyedSubscript:@"lastCKKSPush"];
    [v174 setObject:0 forKeyedSubscript:@"lastCKKSPush"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v196 = v23;

    v24 = [v174 objectForKeyedSubscript:@"policy"];
    [v174 setObject:0 forKeyedSubscript:@"policy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v214 = v25;

    v26 = [v174 objectForKeyedSubscript:@"viewsFromPolicy"];
    [v174 setObject:0 forKeyedSubscript:@"viewsFromPolicy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v212 = v27;

    v28 = [v174 objectForKeyedSubscript:@"activeAccount"];
    [v174 setObject:0 forKeyedSubscript:@"activeAccount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v210 = v29;

    v30 = [v174 objectForKeyedSubscript:@"ckaccountstatus"];
    [v174 setObject:0 forKeyedSubscript:@"ckaccountstatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v208 = v31;

    v32 = [v174 objectForKeyedSubscript:@"accounttracker"];
    [v174 setObject:0 forKeyedSubscript:@"accounttracker"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    v35 = [v174 objectForKeyedSubscript:@"fetcher"];
    [v174 setObject:0 forKeyedSubscript:@"fetcher"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v194 = v36;

    v37 = [v174 objectForKeyedSubscript:@"ckksstate"];
    [v174 setObject:0 forKeyedSubscript:@"ckksstate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    v40 = [v174 objectForKeyedSubscript:@"lastIncomingQueueOperation"];
    [v174 setObject:0 forKeyedSubscript:@"lastIncomingQueueOperation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v192 = v41;

    v42 = [v174 objectForKeyedSubscript:@"lastNewTLKOperation"];
    [v174 setObject:0 forKeyedSubscript:@"lastNewTLKOperation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v190 = v43;

    v44 = [v174 objectForKeyedSubscript:@"lastOutgoingQueueOperation"];
    [v174 setObject:0 forKeyedSubscript:@"lastOutgoingQueueOperation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v188 = v45;

    v46 = [v174 objectForKeyedSubscript:@"lastProcessReceivedKeysOperation"];
    [v174 setObject:0 forKeyedSubscript:@"lastProcessReceivedKeysOperation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v186 = v47;

    v48 = [v174 objectForKeyedSubscript:@"lastReencryptOutgoingItemsOperation"];
    [v174 setObject:0 forKeyedSubscript:@"lastReencryptOutgoingItemsOperation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    v51 = [v174 objectForKeyedSubscript:@"launchSequence"];
    [v174 setObject:0 forKeyedSubscript:@"launchSequence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    if ((*(a1 + 40) & 1) == 0)
    {
      puts("================================================================================\n");
      puts("Global state:\n");
    }

    printf("CKKS state machine:   %s\n", [v39 UTF8String]);
    printf("Active account:       %s\n", [v210 UTF8String]);
    printf("CloudKit account:     %s\n", [v208 UTF8String]);
    printf("Account tracker:      %s\n", [v34 UTF8String]);
    v54 = [v214 description];
    printf("Syncing Policy:       %s\n", [v54 UTF8String]);

    v55 = [v212 description];
    printf("Views from policy:    %s\n", [v55 UTF8String]);

    if ((*(a1 + 40) & 1) == 0)
    {
      v184 = v50;
      v56 = [v206 description];
      printf("Reachability:         %s\n", [v56 UTF8String]);

      v57 = [v198 description];
      printf("Retry:                %s\n", [v57 UTF8String]);

      v58 = [v204 description];
      printf("CK DeviceID:          %s\n", [v58 UTF8String]);

      v59 = [v202 description];
      printf("CK DeviceID Error:    %s\n", [v59 UTF8String]);

      v60 = [v200 description];
      printf("Lock state:           %s\n", [v60 UTF8String]);

      v61 = [v196 description];
      printf("Last CKKS push:       %s\n", [v61 UTF8String]);

      putchar(10);
      v62 = [v194 description];
      printf("zone change fetcher:                 %s\n", [v62 UTF8String]);

      if (v192)
      {
        v63 = [v192 UTF8String];
      }

      else
      {
        v63 = "never";
      }

      printf("lastIncomingQueueOperation:          %s\n", v63);
      if (v190)
      {
        v64 = [v190 UTF8String];
      }

      else
      {
        v64 = "never";
      }

      printf("lastNewTLKOperation:                 %s\n", v64);
      if (v188)
      {
        v65 = [v188 UTF8String];
      }

      else
      {
        v65 = "never";
      }

      printf("lastOutgoingQueueOperation:          %s\n", v65);
      v181 = v34;
      if (v186)
      {
        v66 = [v186 UTF8String];
      }

      else
      {
        v66 = "never";
      }

      v67 = v5;
      printf("lastProcessReceivedKeysOperation:    %s\n", v66);
      if (v184)
      {
        v68 = [v184 UTF8String];
      }

      else
      {
        v68 = "never";
      }

      printf("lastReencryptOutgoingItemsOperation: %s\n", v68);
      puts("Launch sequence:");
      v224 = 0u;
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v69 = v53;
      v70 = [v69 countByEnumeratingWithState:&v224 objects:v230 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v225;
        do
        {
          for (i = 0; i != v71; i = i + 1)
          {
            if (*v225 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = [*(*(&v224 + 1) + 8 * i) description];
            printf("\t%s\n", [v74 UTF8String]);
          }

          v71 = [v69 countByEnumeratingWithState:&v224 objects:v230 count:16];
        }

        while (v71);
      }

      v5 = v67;
      v11 = &SecIsInternalRelease_ptr;
      v34 = v181;
      v50 = v184;
    }

    putchar(10);
  }

  if ([v5 count] < 2)
  {
    v75 = &__NSArray0__struct;
  }

  else
  {
    v75 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
  }

  v173 = v5;
  if (![v75 count])
  {
    puts("No CKKS views are active.");
  }

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = v75;
  v180 = [obj countByEnumeratingWithState:&v220 objects:v229 count:16];
  if (v180)
  {
    v179 = *v221;
    v175 = a1;
    do
    {
      for (j = 0; j != v180; j = j + 1)
      {
        if (*v221 != v179)
        {
          objc_enumerationMutation(obj);
        }

        v77 = *(a1 + 40);
        v78 = [*(*(&v220 + 1) + 8 * j) mutableCopy];
        v79 = [v78 objectForKeyedSubscript:@"view"];
        [v78 setObject:0 forKeyedSubscript:@"view"];
        v80 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = v79;
        }

        else
        {
          v81 = 0;
        }

        v82 = v81;

        if (v77 == 1)
        {
          v83 = [v78 objectForKeyedSubscript:@"keystate"];
          [v78 setObject:0 forKeyedSubscript:@"keystate"];
          v84 = v11[77];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = v83;
          }

          else
          {
            v85 = 0;
          }

          v86 = v85;

          v87 = [v82 UTF8String];
          v88 = [v86 UTF8String];

          printf("%-25s: %s\n", v87, v88);
          goto LABEL_198;
        }

        v89 = [v78 objectForKeyedSubscript:@"ckksManaged"];
        [v78 setObject:0 forKeyedSubscript:@"ckksManaged"];
        v90 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v91 = v89;
        }

        else
        {
          v91 = 0;
        }

        v211 = v91;

        v92 = [v78 objectForKeyedSubscript:@"zoneCreated"];
        [v78 setObject:0 forKeyedSubscript:@"zoneCreated"];
        v93 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v94 = v92;
        }

        else
        {
          v94 = 0;
        }

        v215 = v94;

        v95 = [v78 objectForKeyedSubscript:@"zoneSubscribed"];
        [v78 setObject:0 forKeyedSubscript:@"zoneSubscribed"];
        v96 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v97 = v95;
        }

        else
        {
          v97 = 0;
        }

        v213 = v97;

        v98 = [v78 objectForKeyedSubscript:@"initialSyncFinished"];
        [v78 setObject:0 forKeyedSubscript:@"initialSyncFinished"];
        v99 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = v98;
        }

        else
        {
          v100 = 0;
        }

        v203 = v100;

        v101 = [v78 objectForKeyedSubscript:@"zoneInitializeScheduler"];
        [v78 setObject:0 forKeyedSubscript:@"zoneInitializeScheduler"];
        v102 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v101;
        }

        else
        {
          v103 = 0;
        }

        v207 = v103;

        v104 = [v78 objectForKeyedSubscript:@"keystate"];
        [v78 setObject:0 forKeyedSubscript:@"keystate"];
        v105 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v106 = v104;
        }

        else
        {
          v106 = 0;
        }

        v209 = v106;

        v107 = [v78 objectForKeyedSubscript:@"statusError"];
        [v78 setObject:0 forKeyedSubscript:@"statusError"];
        v108 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v109 = v107;
        }

        else
        {
          v109 = 0;
        }

        v110 = v109;

        v111 = [v78 objectForKeyedSubscript:@"itemsyncing"];
        [v78 setObject:0 forKeyedSubscript:@"itemsyncing"];
        v112 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v113 = v111;
        }

        else
        {
          v113 = 0;
        }

        v201 = v113;

        v114 = [v78 objectForKeyedSubscript:@"currentTLK"];
        [v78 setObject:0 forKeyedSubscript:@"currentTLK"];
        v115 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v116 = v114;
        }

        else
        {
          v116 = 0;
        }

        v199 = v116;

        v117 = [v78 objectForKeyedSubscript:@"currentClassA"];
        [v78 setObject:0 forKeyedSubscript:@"currentClassA"];
        v118 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v119 = v117;
        }

        else
        {
          v119 = 0;
        }

        v197 = v119;

        v120 = [v78 objectForKeyedSubscript:@"currentClassC"];
        [v78 setObject:0 forKeyedSubscript:@"currentClassC"];
        v121 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v122 = v120;
        }

        else
        {
          v122 = 0;
        }

        v195 = v122;

        v123 = [v78 objectForKeyedSubscript:@"currentTLKPtr"];
        [v78 setObject:0 forKeyedSubscript:@"currentTLKPtr"];
        v124 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v125 = v123;
        }

        else
        {
          v125 = 0;
        }

        v205 = v125;

        v126 = [v78 objectForKeyedSubscript:@"currentClassAPtr"];
        [v78 setObject:0 forKeyedSubscript:@"currentClassAPtr"];
        v127 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v128 = v126;
        }

        else
        {
          v128 = 0;
        }

        v183 = v128;

        v129 = [v78 objectForKeyedSubscript:@"currentClassCPtr"];
        [v78 setObject:0 forKeyedSubscript:@"currentClassCPtr"];
        v130 = v11[77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v131 = v129;
        }

        else
        {
          v131 = 0;
        }

        v182 = v131;

        v132 = [v78 objectForKeyedSubscript:@"launchSequence"];
        [v78 setObject:0 forKeyedSubscript:@"launchSequence"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v133 = v132;
        }

        else
        {
          v133 = 0;
        }

        v177 = v133;

        v134 = [v78 objectForKeyedSubscript:@"oqe"];
        [v78 setObject:0 forKeyedSubscript:@"oqe"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        v193 = v135;

        v136 = [v78 objectForKeyedSubscript:@"iqe"];
        [v78 setObject:0 forKeyedSubscript:@"iqe"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v137 = v136;
        }

        else
        {
          v137 = 0;
        }

        v191 = v137;

        v138 = [v78 objectForKeyedSubscript:@"keys"];
        [v78 setObject:0 forKeyedSubscript:@"keys"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v139 = v138;
        }

        else
        {
          v139 = 0;
        }

        v189 = v139;

        v140 = [v78 objectForKeyedSubscript:@"ckmirror"];
        [v78 setObject:0 forKeyedSubscript:@"ckmirror"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v141 = v140;
        }

        else
        {
          v141 = 0;
        }

        v187 = v141;

        v142 = [v78 objectForKeyedSubscript:@"devicestates"];
        [v78 setObject:0 forKeyedSubscript:@"devicestates"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v143 = v142;
        }

        else
        {
          v143 = 0;
        }

        v185 = v143;

        v144 = [v78 objectForKeyedSubscript:@"tlkshares"];
        [v78 setObject:0 forKeyedSubscript:@"tlkshares"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v145 = v144;
        }

        else
        {
          v145 = 0;
        }

        v146 = v145;

        puts("================================================================================\n");
        printf("View: %s\n\n", [v82 UTF8String]);
        if (v110)
        {
          printf("ERROR FETCHING STATUS: %s\n\n", [v110 UTF8String]);
        }

        v178 = v110;
        if (![v215 isEqualToString:@"yes"] || (objc_msgSend(v213, "isEqualToString:", @"yes") & 1) == 0)
        {
          v147 = [v215 description];
          printf("CK Zone Created:            %s\n", [v147 UTF8String]);

          v148 = [v213 description];
          printf("CK Zone Subscribed:         %s\n", [v148 UTF8String]);

          v149 = [v207 description];
          printf("CK Zone initialize retry:   %s\n", [v149 UTF8String]);

          putchar(10);
        }

        printf("Key state:            %s\n", [v209 UTF8String]);
        printf("CKKS managed view:    %s\n", [v211 UTF8String]);
        v150 = [v211 isEqualToString:@"yes"];
        if (!v150)
        {
          v151 = [v205 description];
          [v151 UTF8String];
          printf("Current TLK:          %s\n");
LABEL_185:

          goto LABEL_186;
        }

        if (v199)
        {
          printf("Current TLK:          %s\n", [v199 UTF8String]);
        }

        else
        {
          v152 = [v11[77] stringWithFormat:@"missing pointer is %@", v205];;
          printf("Current TLK:          %s\n", [v152 UTF8String]);
        }

        if (v197)
        {
          printf("Current ClassA:       %s\n", [v197 UTF8String]);
        }

        else
        {
          v153 = [v11[77] stringWithFormat:@"missing pointer is %@", v183];;
          printf("Current ClassA:       %s\n", [v153 UTF8String]);
        }

        if (!v195)
        {
          v151 = [v11[77] stringWithFormat:@"missing pointer is %@", v182];;
          [v151 UTF8String];
          printf("Current ClassC:       %s\n");
          goto LABEL_185;
        }

        printf("Current ClassC:       %s\n", [v195 UTF8String]);
LABEL_186:
        v154 = [v146 description];
        printf("TLK shares:           %s\n", [v154 UTF8String]);

        if (v150)
        {
          v155 = [v201 description];
          printf("Item syncing:          %s\n", [v155 UTF8String]);

          v156 = [v203 description];
          printf("Initial sync finished: %s\n", [v156 UTF8String]);

          v157 = [v193 description];
          printf("Outgoing Queue counts: %s\n", [v157 UTF8String]);

          v158 = [v191 description];
          printf("Incoming Queue counts: %s\n", [v158 UTF8String]);

          v159 = [v189 description];
          printf("Key counts: %s\n", [v159 UTF8String]);

          v160 = [v187 description];
          printf("Item counts (by key):  %s\n", [v160 UTF8String]);

          v161 = [v185 description];
          printf("Peer states:           %s\n", [v161 UTF8String]);
        }

        v162 = v146;
        puts("Launch sequence:");
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v163 = v177;
        v164 = [v163 countByEnumeratingWithState:&v216 objects:v228 count:16];
        if (v164)
        {
          v165 = v164;
          v166 = *v217;
          do
          {
            for (k = 0; k != v165; k = k + 1)
            {
              if (*v217 != v166)
              {
                objc_enumerationMutation(v163);
              }

              v168 = [*(*(&v216 + 1) + 8 * k) description];
              printf("\t%s\n", [v168 UTF8String]);
            }

            v165 = [v163 countByEnumeratingWithState:&v216 objects:v228 count:16];
          }

          while (v165);
        }

        v169 = [v78 allKeys];
        v170 = [v169 count];

        if (v170)
        {
          v171 = [v78 description];
          printf("\nExtra information: %s\n", [v171 UTF8String]);
        }

        putchar(10);

        a1 = v175;
        v11 = &SecIsInternalRelease_ptr;
LABEL_198:
      }

      v180 = [obj countByEnumeratingWithState:&v220 objects:v229 count:16];
    }

    while (v180);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000054F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"error"];
  }

  if ([v5 count] <= 1)
  {
    puts("No CKKS views are active.");
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = *(a1 + 32);
        v16 = [v14 objectForKeyedSubscript:{@"view", v17}];
        [v15 setObject:v14 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100005880(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    sub_100002688(@"resync errored: %@\n", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [v12 code];
  }

  else
  {
    puts("resync success.");
    v11 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    sub_100002688(@"Reset error: %@\n", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [v12 code];
  }

  else
  {
    puts("CloudKit Reset complete.");
    v11 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005D78(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    sub_100002688(@"reset error: %@\n", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [v12 code];
  }

  else
  {
    puts("reset complete.");
    v11 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005F28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"error"];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006000;
  v7[3] = &unk_10000C338;
  v8 = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t start(int a1, char *const *a2)
{
  memset(v84, 170, 24);
  sub_100000CC0(v84, off_100010BE8);
  v2 = sub_100000DF0(v84);
  v3 = malloc_type_calloc(v2 + 1, 0x20uLL, 0x10500402E37B38AuLL);
  v4 = 2 * v2 + 2;
  v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = v84[2];
  v10 = v84[2] + 48;
  do
  {
    if (v7 >= v2)
    {
      goto LABEL_13;
    }

    v11 = *(v10 - 5);
    if (v11)
    {
      v12 = &v3[v7];
      v12->name = v11;
      v14 = *v10;
      v13 = *(v10 + 1);
      if (v13)
      {
        v15 = 2 * (v14 != 0);
      }

      else if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(v10 + 5) != 0;
      }

      v12->has_arg = v15;
      v12->flag = v13;
      v12->val = *(v10 + 4);
      ++v7;
    }

    ++v8;
    v10 += 104;
  }

  while (v8 <= v2);
  if (v7 < v2)
  {
    v16 = &v3[v7];
    v16->name = 0;
    v16->has_arg = 0;
    v16->flag = 0;
    v16->val = 0;
LABEL_14:
    v17 = 0;
    v18 = v9 + 48;
    v19 = v2;
    while (1)
    {
      if (*(v18 - 48))
      {
        if (v17 >= v4)
        {
          goto LABEL_25;
        }

        v5[v17] = *(v18 - 48);
        v20 = v17 + 1;
        if (!v18[1] && (*v18 || v18[5]))
        {
          if (v20 >= v4)
          {
LABEL_25:
            v70 = 0;
            goto LABEL_28;
          }

          v5[v20] = 58;
          v17 += 2;
        }

        else
        {
          ++v17;
        }
      }

      v18 += 13;
      if (!--v19)
      {
        v70 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_13:
  if (v2)
  {
    goto LABEL_14;
  }

  v17 = 0;
  v70 = 1;
LABEL_27:
  v5[v17] = 0;
LABEL_28:
  v83 = 0;
  do
  {
    while (1)
    {
      v21 = getopt_long(a1, a2, v6, v3, &v83);
      if (v21)
      {
        break;
      }

      if (!v83)
      {
LABEL_129:
        sub_100000E68(v84);
        exit(1);
      }

      if ((v70 & 1) == 0)
      {
        v23 = 0;
        p_name = &v3[v83].name;
        v25 = v2;
        do
        {
          v26 = v84[2] + v23;
          v27 = *(v84[2] + v23 + 8);
          if (v27)
          {
            if (*p_name)
            {
              v28 = strlen(*(v84[2] + v23 + 8));
              if (!strncmp(*p_name, v27, v28))
              {
                v29 = *(v26 + 5);
                v80 = *(v26 + 4);
                v81 = v29;
                v82 = *(v26 + 12);
                v30 = *(v26 + 1);
                v76 = *v26;
                v77 = v30;
                v31 = *(v26 + 3);
                v78 = *(v26 + 2);
                v79 = v31;
                sub_100001438(&v76, optarg);
              }
            }
          }

          v23 += 104;
          --v25;
        }

        while (v25);
      }
    }

    if (v21 == -1)
    {
      v39 = optind;
      if (optind >= a1)
      {
LABEL_71:
        free(v84[2]);
        free(v3);
        free(v6);
      }

      else
      {
        v40 = 0;
        do
        {
          v41 = v40;
          if ((v70 & 1) == 0)
          {
            v42 = v84[2];
            v43 = v2;
            while (1)
            {
              v44 = *(v42 + 2);
              if (v44)
              {
                if (!strcmp(a2[v39], v44))
                {
                  break;
                }
              }

              v42 += 104;
              if (!--v43)
              {
                goto LABEL_60;
              }
            }

            v47 = *(v42 + 5);
            v80 = *(v42 + 4);
            v81 = v47;
            v82 = *(v42 + 12);
            v48 = *(v42 + 1);
            v76 = *v42;
            v77 = v48;
            v49 = *(v42 + 3);
            v78 = *(v42 + 2);
            v79 = v49;
            sub_100001438(&v76, 0);
            goto LABEL_71;
          }

LABEL_60:
          v36 = v84[2];
          if (v41 >= v2)
          {
            goto LABEL_50;
          }

          v45 = v84[2] + 104 * v41 + 24;
          v40 = v41;
          while (!*v45)
          {
            ++v40;
            v45 += 13;
            if (v2 == v40)
            {
              goto LABEL_49;
            }
          }

          v46 = *(v84[2] + 13 * v40 + 6);
          if (v46)
          {
            *v46 = a2[v39];
            ++v40;
          }

          ++v39;
        }

        while (v39 != a1);
        free(v84[2]);
        free(v3);
        free(v6);
        if (v41 >= v2)
        {
          goto LABEL_51;
        }
      }

      v50 = objc_autoreleasePoolPush();
      v75 = 0;
      v51 = [CKKSControl CKKSControlObject:0 error:&v75];
      v52 = v75;
      if (v52 || !v51)
      {
        [v52 description];
        v69 = [objc_claimAutoreleasedReturnValue() UTF8String];
        errx(1, "no CKKSControl failed: %s", v69);
      }

      v53 = [[CKKSControlCLI alloc] initWithCKKSControl:v51];
      if (qword_100010C10)
      {
        v54 = [NSString stringWithCString:qword_100010C10 encoding:4];
      }

      else
      {
        v54 = 0;
      }

      if (qword_100010C38)
      {
        v74 = [NSString stringWithCString:qword_100010C38 encoding:4];
      }

      else
      {
        v74 = 0;
      }

      if (qword_100010C40)
      {
        v72 = [NSString stringWithCString:qword_100010C40 encoding:4];
      }

      else
      {
        v72 = 0;
      }

      if (qword_100010C20)
      {
        v55 = +[NSMutableArray array];
        if (qword_100010C20)
        {
          v56 = 0;
          do
          {
            v57 = [NSString stringWithCString:*(qword_100010C18 + 8 * v56) encoding:4];
            [v55 addObject:v57];

            ++v56;
          }

          while (v56 < qword_100010C20);
        }
      }

      else
      {
        v55 = 0;
      }

      if (qword_100010C30)
      {
        v58 = +[NSMutableArray array];
        if (qword_100010C30)
        {
          v59 = 0;
          do
          {
            v60 = [NSString stringWithCString:*(qword_100010C28 + 8 * v59) encoding:4];
            [v58 addObject:v60];

            ++v59;
          }

          while (v59 < qword_100010C30);
        }
      }

      else
      {
        v58 = 0;
      }

      if (dword_100010C48)
      {
        v61 = objc_alloc_init(NSMutableDictionary);
        if (dword_100010C00)
        {
          v62 = [(CKKSControlCLI *)v53 fetchPerformanceCounters];
          [v61 setObject:v62 forKeyedSubscript:@"performance"];
        }

        v63 = dword_100010C04;
        if (dword_100010C04)
        {
          v64 = [(CKKSControlCLI *)v53 fetchStatus:v54];
          [v61 setObject:v64 forKeyedSubscript:@"status"];

          v63 = dword_100010C04 != 0;
        }

        if ((v63 & 1) == 0 && !dword_100010C00 || (sub_10000213C(v61), putchar(10), !dword_100010C04))
        {
          [(CKKSControlCLI *)v53 printHumanReadableStatus:v54 shortenOutput:dword_100010C08 != 0];
        }

        goto LABEL_106;
      }

      if (dword_100010C00)
      {
        v61 = objc_alloc_init(NSMutableDictionary);
        v65 = [(CKKSControlCLI *)v53 fetchPerformanceCounters];
        [v61 setObject:v65 forKeyedSubscript:@"performance"];

        sub_100002380(v61, 0);
LABEL_106:

        v37 = 0;
LABEL_107:

        objc_autoreleasePoolPop(v50);
        return v37;
      }

      if (dword_100010C4C)
      {
        v37 = [(CKKSControlCLI *)v53 fetch:v54];
        goto LABEL_107;
      }

      if (dword_100010C50)
      {
        v66 = [(CKKSControlCLI *)v53 push:v54];
LABEL_120:
        v37 = v66;
        goto LABEL_107;
      }

      if (dword_100010C58)
      {
        v66 = [(CKKSControlCLI *)v53 resetLocal:v54];
        goto LABEL_120;
      }

      if (dword_100010C5C)
      {
        v66 = [(CKKSControlCLI *)v53 resetCloudKit:v54];
        goto LABEL_120;
      }

      if (dword_100010C54)
      {
        v66 = [(CKKSControlCLI *)v53 resync:v54];
        goto LABEL_120;
      }

      if (dword_100010C60)
      {
        v66 = [(CKKSControlCLI *)v53 ckmetric];
        goto LABEL_120;
      }

      if (dword_100010C64)
      {
        if (v54)
        {
          if (v74)
          {
            v67 = [(CKKSControlCLI *)v53 proposeSETLK:v54 tlkJson:v74 oldTlkJson:v72 tlkShareJsonStrings:v55];
LABEL_128:
            v37 = v67;
            goto LABEL_107;
          }

          v68 = "newTLK is a required argument.\n";
LABEL_139:
          puts(v68);
          sub_100000E68(off_100010BE8);
          v37 = 1;
          goto LABEL_107;
        }
      }

      else if (dword_100010C68)
      {
        if (v54)
        {
          v67 = [(CKKSControlCLI *)v53 fetchSEView:v54 json:dword_100010C04 != 0];
          goto LABEL_128;
        }
      }

      else if (dword_100010C6C)
      {
        if (v54)
        {
          if (v55 | v58)
          {
            v67 = [(CKKSControlCLI *)v53 modifySEZone:v54 tlkShareJsonStrings:v55 deletetlkShareJsonStrings:v58];
            goto LABEL_128;
          }

          v68 = "At least one of --tlkShare or --deleteTLKShare is required.";
          goto LABEL_139;
        }
      }

      else
      {
        if (!dword_100010C70)
        {
          if (!dword_100010C74)
          {
            sub_100000E68(off_100010BE8);
            v37 = 0xFFFFFFFFLL;
            goto LABEL_107;
          }

          v67 = [(CKKSControlCLI *)v53 toggleHavoc];
          goto LABEL_128;
        }

        if (v54)
        {
          v67 = [(CKKSControlCLI *)v53 deleteSEZone:v54];
          goto LABEL_128;
        }
      }

      v68 = "View is a required argument.\n";
      goto LABEL_139;
    }

    if (v21 == 104)
    {
      goto LABEL_129;
    }

    if (v70)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v32 = v84[2];
      while (v21 != *v32)
      {
        ++v22;
        v32 += 104;
        if (v2 == v22)
        {
          goto LABEL_49;
        }
      }

      v33 = *(v32 + 5);
      v80 = *(v32 + 4);
      v81 = v33;
      v82 = *(v32 + 12);
      v34 = *(v32 + 1);
      v76 = *v32;
      v77 = v34;
      v35 = *(v32 + 3);
      v78 = *(v32 + 2);
      v79 = v35;
      sub_100001438(&v76, optarg);
    }
  }

  while (v22 != v2);
LABEL_49:
  v36 = v84[2];
LABEL_50:
  free(v36);
  free(v3);
  free(v6);
LABEL_51:
  putchar(10);
  sub_100000E68(off_100010BE8);
  return 0xFFFFFFFFLL;
}