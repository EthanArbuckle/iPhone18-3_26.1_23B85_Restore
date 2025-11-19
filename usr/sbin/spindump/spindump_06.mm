void *sub_10009B640(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    *(v3 + 24) = 2 * v4;
    v5 = *(*(*v2 + 8) + 24);
    if (v5 <= 0)
    {
      sub_1000BED78(a1 + 32);
    }
  }

  else
  {
    *(v3 + 24) = 0x4000;
    v5 = *(*(*v2 + 8) + 24);
  }

  result = reallocf(*(*(*(a1 + 40) + 8) + 24), v5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    sub_1000BEF88(v2);
  }

  return result;
}

id sub_10009B6E4(void *a1)
{
  v1 = a1;
  v2 = [[NSUUID alloc] initWithUUIDString:v1];
  if (!v2)
  {
    if ([v1 length] < 0x20)
    {
      v2 = 0;
    }

    else
    {
      v3 = [NSString alloc];
      v4 = [v1 substringWithRange:{0, 8}];
      v5 = [v1 substringWithRange:{8, 4}];
      v6 = [v1 substringWithRange:{12, 4}];
      v7 = [v1 substringWithRange:{16, 4}];
      v8 = [v1 substringWithRange:{20, 12}];
      v9 = [v3 initWithFormat:@"%@-%@-%@-%@-%@", v4, v5, v6, v7, v8];

      v2 = [[NSUUID alloc] initWithUUIDString:v9];
    }
  }

  return v2;
}

uint64_t sub_10009B848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009B860(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if ((*(a1 + 104) & 1) == 0 && (([v7 hasPrefix:@"Process:"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"Powerstats for:")))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          *(*(*(a1 + 80) + 8) + 24) = [v8 containsString:*(*(&v49 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v11);
    }
  }

  if (![v8 containsString:@"Binary Images:"])
  {
    v17 = [*(a1 + 48) firstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    if (!v17)
    {
LABEL_33:

      goto LABEL_34;
    }

    v48 = -1;
    v18 = sub_100098564(v8, a3, v17, *(*(*(a1 + 88) + 8) + 40), *(a1 + 105), &v48);
    v20 = v18;
    if (!v18)
    {
LABEL_32:

      goto LABEL_33;
    }

    v21 = *(a1 + 56);
    v22 = [objc_getProperty(v18 v19];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (!v23)
    {
      Property = objc_getProperty(v20, v24, 40, 1);
      v26 = *(a1 + 56);
      v27 = Property;
      v29 = [objc_getProperty(v20 v28];
      [v26 setObject:v27 forKeyedSubscript:v29];
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v30 = *(a1 + 64);
      v31 = [objc_getProperty(v20 v24];
      [v30 addObject:v31];
    }

    v32 = *(a1 + 72);
    v33 = [objc_getProperty(v20 v24];
    v34 = [v32 objectForKeyedSubscript:v33];

    if (!v34)
    {
      v34 = +[NSMutableDictionary dictionary];
      v36 = *(a1 + 72);
      v38 = [objc_getProperty(v20 v37];
      [v36 setObject:v34 forKeyedSubscript:v38];
    }

    v39 = objc_getProperty(v20, v35, 48, 1);
    if (v39)
    {
      v40 = [v34 objectForKeyedSubscript:v39];
      if (!v40)
      {
LABEL_28:
        v40 = +[NSMutableSet set];
        v43 = objc_getProperty(v20, v42, 48, 1);
        if (v43)
        {
          [v34 setObject:v40 forKeyedSubscript:v43];
        }

        else
        {
          v44 = +[NSNull null];
          [v34 setObject:v40 forKeyedSubscript:v44];
        }
      }
    }

    else
    {
      v41 = +[NSNull null];
      v40 = [v34 objectForKeyedSubscript:v41];

      if (!v40)
      {
        goto LABEL_28;
      }
    }

    v45 = v48;
    v46 = [NSNumber numberWithUnsignedLongLong:v48];
    [v40 addObject:v46];

    v47 = [NSNumber numberWithUnsignedLongLong:v45 - 1];
    [v40 addObject:v47];

    goto LABEL_32;
  }

  if ((*(a1 + 105) & 1) == 0)
  {
    v14 = sub_100098334(*(a1 + 96), a3, *(a1 + 40), 0);
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      *a4 = 1;
    }
  }

LABEL_34:
}

void sub_10009BCFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [v4 uuid];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = 636;
  }

  else
  {
    v7 = 628;
  }

  if ([v4 cacheSymbolOwnerWithOptions:v7 pid:0xFFFFFFFFLL])
  {
    v8 = *(a1 + 40);
    v9 = [v4 uuid];
    v10 = [v8 objectForKeyedSubscript:v9];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10009C0E4;
    v30[3] = &unk_100109F38;
    v11 = v4;
    v31 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
    [v11 symbolicateAllInstructionsWithOptions:628 pid:0xFFFFFFFFLL];
    [v11 clearCoreSymbolicationCache];
  }

  else
  {
    if (byte_100117E80 == 1)
    {
      v12 = *__error();
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 uuid];
        v15 = [v4 path];
        v16 = v15;
        if (!v15)
        {
          v16 = [v4 name];
        }

        *buf = 138412546;
        v33 = v14;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Parsing spindump text: Unable to find symbol owner for %@ %@", buf, 0x16u);
        if (!v15)
        {
        }
      }

      *__error() = v12;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 1)
    {
      v18 = *__error();
      v19 = [v4 uuid];
      v20 = [v4 path];
      v21 = v20;
      if (v20)
      {
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find symbol owner for %@ %@", v19, v20);
      }

      else
      {
        v23 = [v4 name];
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find symbol owner for %@ %@", v19, v23);
      }

      if (v22)
      {
        CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
        if (CStringPtr)
        {
          v25 = CStringPtr;
          v26 = 0;
        }

        else
        {
          v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x3E468668uLL);
          CFStringGetCString(v22, v25, 1024, 0x8000100u);
          v26 = v25;
        }

        if (qword_100117E88)
        {
          v29 = qword_100117E88;
        }

        else
        {
          v29 = __stderrp;
        }

        fprintf(v29, "%s\n", v25);
        if (v26)
        {
          free(v26);
        }

        CFRelease(v22);
      }

      else
      {
        v27 = sub_100035B80();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000BF198(v4, v27);
        }

        if (qword_100117E88)
        {
          v28 = qword_100117E88;
        }

        else
        {
          v28 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
      }

      *__error() = v18;
    }
  }
}

void sub_10009C0E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSNull null];

  if (v7 == v5)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v17 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v10);
          }

          v21 = [*(a1 + 32) instructionAtOffsetIntoBinary:{objc_msgSend(*(*(&v35 + 1) + 8 * i), "unsignedLongLongValue")}];
        }

        v18 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    v10 = [v9 segmentWithName:v5];
    if (v10)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v40;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [v10 instructionAtOffsetIntoSegment:{objc_msgSend(*(*(&v39 + 1) + 8 * j), "unsignedLongLongValue")}];
          }

          v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v13);
      }
    }

    else
    {
      if (byte_100117E80 == 1)
      {
        v22 = *__error();
        v23 = sub_100035B80();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000BF284(v5, v8);
        }

        *__error() = v22;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v25 = *__error();
        v26 = [*v8 uuid];
        v27 = [*v8 name];
        v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find segment %@ in %@ %@", v5, v26, v27);

        if (v28)
        {
          CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
          if (CStringPtr)
          {
            v30 = CStringPtr;
            v31 = 0;
          }

          else
          {
            v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x2D8CA8C9uLL);
            CFStringGetCString(v28, v30, 1024, 0x8000100u);
            v31 = v30;
          }

          if (qword_100117E88)
          {
            v34 = qword_100117E88;
          }

          else
          {
            v34 = __stderrp;
          }

          fprintf(v34, "%s\n", v30);
          if (v31)
          {
            free(v31);
          }

          CFRelease(v28);
        }

        else
        {
          v32 = sub_100035B80();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_1000BF33C(v5, v8);
          }

          if (qword_100117E88)
          {
            v33 = qword_100117E88;
          }

          else
          {
            v33 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v33);
        }

        *__error() = v25;
      }
    }
  }
}

id sub_10009C4D0(uint64_t a1)
{
  v2 = [*(a1 + 32) rangeWithName:@"offsetIntoSymbol"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && (v2 = [*(a1 + 32) rangeWithName:@"offsetIntoUnknownSymbol"], v2 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = -1;
  }

  else
  {
    v5 = [*(a1 + 40) substringWithRange:{v2, v3}];
    v4 = sub_10009A270(v5);
  }

  v6 = [*(a1 + 32) rangeWithName:@"sourceLineNumber"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) substringWithRange:{v6, v7}];
    v8 = sub_10009A270(v9);
  }

  v10 = [*(a1 + 32) rangeWithName:@"sourceColumnNumber"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = [*(a1 + 40) substringWithRange:{v10, v11}];
    v12 = sub_10009A270(v13);
  }

  v14 = [*(a1 + 32) rangeWithName:@"offsetIntoBinary"];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = -1;
  }

  else
  {
    v17 = [*(a1 + 40) substringWithRange:{v14, v15}];
    v16 = sub_10009A270(v17);
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);

  return sub_10009C65C(v18, v4, v19, v8, v12, v20, v16);
}

id sub_10009C65C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = a1;
  v14 = a3;
  v15 = a6;
  v16 = +[NSMutableString string];
  v17 = v16;
  if (!v13)
  {
    [v16 appendString:@"???"];
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  [v16 appendString:v13];
  if (a2 != -1)
  {
    [v17 appendFormat:@" + %llu", a2];
  }

  if (v15)
  {
LABEL_7:
    objc_msgSend(v17, "appendString:", @" (");
    if (v14)
    {
      [v17 appendString:v14];
      if (a4 >= 1)
      {
        [v17 appendFormat:@":%u", a4];
        if (a5 >= 1)
        {
          [v17 appendFormat:@", %u", a5];
        }
      }

      [v17 appendString:@" in "];
    }

    [v17 appendFormat:@"%@", v15];
    if (a7 != -1)
    {
      [v17 appendFormat:@" + %llu", a7];
    }

    [v17 appendString:@""]);
  }

LABEL_15:

  return v17;
}

void sub_10009C7EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 name];
  v8 = [*(a1 + 32) offsetIntoSegment];
  v9 = [v6 offsetIntoSegment];

  v10 = v8 - v9;
  v11 = *(a1 + 64);
  v12 = [v5 fileName];
  v13 = [v5 lineNum];
  v14 = [v5 columnNum];

  v15 = sub_10009C65C(v7, v10 + v11, v12, v13, v14, *(a1 + 40), *(a1 + 56));

  [*(a1 + 48) addObject:v15];
}

void sub_10009C8EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  v7 = [*(a1 + 32) firstMatchInString:v24 options:0 range:{0, objc_msgSend(v24, "length")}];
  if (v7)
  {
    *a4 = 1;
    v9 = sub_100098494(v24, v7, *(a1 + 116), *(a1 + 104), *(a1 + 108)) > *(a1 + 112) && ((*(a1 + 117) & 1) != 0 || [v7 rangeWithName:@"kernelDot"] == 0x7FFFFFFFFFFFFFFFLL);
    v10 = *(a1 + 80);
    **(a1 + 72) = v9;
    if ((*v10 & 1) == 0)
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = objc_getProperty(v11, v8, 40, 1);
        if (v12)
        {
          v13 = *(a1 + 88);

          if (v13 != -1)
          {
            v25 = -1;
            v14 = sub_100098564(v24, a3, v7, *(a1 + 56), *(a1 + 116), &v25);
            if (*(a1 + 48) != v14 || v25 != *(a1 + 88))
            {
              goto LABEL_25;
            }

            v15 = [v7 rangeWithName:@"symbolName"];
            v17 = *(a1 + 64);
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (!v17)
              {
LABEL_21:
                v20 = [v7 rangeWithName:@"offsetIntoSymbol"];
                if (v20 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_25;
                }

                v22 = [v24 substringWithRange:{v20, v21}];
                v23 = sub_10009A270(v22);

                if (v23 == *(a1 + 96))
                {
                  goto LABEL_25;
                }
              }
            }

            else if (v17)
            {
              v19 = [v24 substringWithRange:{v15, v16}];
              if (([*(a1 + 64) isEqual:v19] & 1) == 0)
              {
                **(a1 + 80) = 1;

                goto LABEL_25;
              }

              goto LABEL_21;
            }

            **(a1 + 80) = 1;
LABEL_25:
          }
        }
      }
    }
  }

  else
  {
    v18 = [*(a1 + 40) firstMatchInString:v24 options:0 range:{0, objc_msgSend(v24, "length")}];

    if (!v18)
    {
      *a4 = 1;
    }
  }
}

void sub_10009CB60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) firstMatchInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
  v8 = v7;
  if (v7)
  {
    **(a1 + 40) = [v7 rangeWithName:@"startIndex"] == 0x7FFFFFFFFFFFFFFFLL;
    if ([v8 rangeWithName:@"indentWhitespace"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = -1;
    }

    else
    {
      v10 = v9;
    }

    if (v10 < 0)
    {
      sub_1000BF3F4(v15, a3);
    }

    v11 = *(a1 + 48);
    v12 = *v11;
    if (*v11 == -1)
    {
      *v11 = v10;
    }

    else
    {
      v13 = __OFSUB__(v10, v12);
      v14 = v10 - v12;
      if (!((v14 < 0) ^ v13 | (v14 == 0)))
      {
        **(a1 + 56) = v14;
        *a4 = 1;
      }
    }
  }
}

const char *sub_10009CC68(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Thread QoS Unknown";
  }

  else
  {
    return (&off_10010A020)[a1 - 1];
  }
}

uint64_t sub_10009CC90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_10009CCA4(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_10009CD08(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_fault_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

void sub_10009CD28(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

const char *sub_10009CD48(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_10009CD64(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void sub_10009CD84(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x1Cu);
}

void sub_10009CDA0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x1Cu);
}

BOOL sub_10009CE0C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL sub_10009CE24(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

CFStringRef sub_10009CE3C(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

BOOL sub_10009CE80(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10009CEFC(uint64_t *a1)
{
  v1 = *a1;
  sub_100035A3C();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Found pid %s [%d]", v3, 0x12u);
}

void sub_10009CF78(uint64_t *a1)
{
  v1 = *a1;
  sub_100035A3C();
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: Found pid %s [%d]", v3, 0x12u);
}

void sub_10009CFF4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found pid [%d]", v2, 8u);
}

void sub_10009D06C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Found pid [%d]", v2, 8u);
}

void sub_10009D0E4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: %s", &v2, 0xCu);
}

void sub_10009D170()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10009D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v9 = *__error();
    v10 = sub_100035B80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = "thread || dispatchQueue";
      sub_1000462EC(&_mh_execute_header, v11, v12, "%s: No thread nor dispatch queue", v13, v14, v15, v16, v28, v29, 2u);
    }

    *__error() = v9;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No thread nor dispatch queue", "thread || dispatchQueue");
    if (v19)
    {
      v23 = v19;
      CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0xDCA7C62AuLL);
        sub_100046264(v25);
        v26 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v8);
      if (v26)
      {
        free(v26);
      }

      CFRelease(v23);
    }

    else
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "thread || dispatchQueue";
        sub_1000461F0(&_mh_execute_header, v20, v21, "Unable to format: %s: No thread nor dispatch queue", buf);
      }

      if (qword_100117E88)
      {
        v22 = qword_100117E88;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    *__error() = v18;
  }

  sub_100035A54("[SPWRReport initWithReportReason:reportedSignpostTracker:task:timeRange:thread:dispatchQueue:]", "monitor-WorkflowResponsiveness.m", 88, "%s: No thread nor dispatch queue", a5, a6, a7, a8, "thread || dispatchQueue");
  abort();
}

void sub_10009D3E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000461C8();
  sub_100046228(&_mh_execute_header, v3, v4, "Unable to format: WR: %@: Received tailspin path %s");
}

void sub_10009D6F8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138412546;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  sub_100046248(&_mh_execute_header, "Unable to format: WR: %@: generating %lu spindump reports", a2, a4);
}

void sub_10009D744()
{
  sub_10004619C();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_1000462A4(&_mh_execute_header, "WR: %@: Unable to compare timesamps with tailspin data (%{public}@)", v4, v5);
}

void sub_10009D798()
{
  sub_10004619C();
  sub_100046184(v1, v2, v3, 5.778e-34);
  sub_100046248(&_mh_execute_header, "Unable to format: WR: %@: Unable to compare timesamps with tailspin data (%@)", v4, v5);
}

void sub_10009D7DC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_1000461F0(&_mh_execute_header, a3, a3, "WR: have %lu reports, but no sampleStore", a1);
}

void sub_10009D81C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_1000461F0(&_mh_execute_header, a3, a3, "Unable to format: WR: have %lu reports, but no sampleStore", a1);
}

void sub_10009D8C4()
{
  sub_10004619C();
  sub_100046184(v1, v2, v3, 5.778e-34);
  sub_1000462A4(&_mh_execute_header, "WR: %@: error in DRShouldGatherLog call: %@", v4, v5);
}

void sub_10009D908()
{
  sub_10004619C();
  sub_100046184(v1, v2, v3, 5.778e-34);
  sub_100046248(&_mh_execute_header, "Unable to format: WR: %@: error in DRShouldGatherLog call: %@", v4, v5);
}

void sub_10009DB04()
{
  sub_10004619C();
  sub_100046184(v1, v2, v3, 5.778e-34);
  sub_1000462A4(&_mh_execute_header, "WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v4, v5);
}

void sub_10009DB48()
{
  sub_10004619C();
  sub_100046184(v1, v2, v3, 5.778e-34);
  sub_100046248(&_mh_execute_header, "Unable to format: WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v4, v5);
}

void sub_10009DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v9 = *__error();
    v10 = sub_100035B80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = "sampleStore";
      sub_1000462EC(&_mh_execute_header, v11, v12, "%s: TidToPidDictPromise called with no sample store", v13, v14, v15, v16, v28, v29, 2u);
    }

    *__error() = v9;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: TidToPidDictPromise called with no sample store", "sampleStore");
    if (v19)
    {
      v23 = v19;
      CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x10BC8B20uLL);
        sub_100046264(v25);
        v26 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v8);
      if (v26)
      {
        free(v26);
      }

      CFRelease(v23);
    }

    else
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "sampleStore";
        sub_1000461F0(&_mh_execute_header, v20, v21, "Unable to format: %s: TidToPidDictPromise called with no sample store", buf);
      }

      if (qword_100117E88)
      {
        v22 = qword_100117E88;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    *__error() = v18;
  }

  sub_100035A54("DoWorkflowResponsivenessDelay_block_invoke", "monitor-WorkflowResponsiveness.m", 887, "%s: TidToPidDictPromise called with no sample store", a5, a6, a7, a8, "sampleStore");
  abort();
}

void sub_10009E148(uint64_t a1, void *a2)
{
  v9 = [a2 name];
  [a2 pid];
  sub_100046208(&_mh_execute_header, v3, v4, "Unable to format: WR: %@ generating overall workflow report for %@ [%d]", v5, v6, v7, v8, 2u);
}

void sub_10009E2F4()
{
  sub_1000462C0();
  sub_100035B20([v0 pid]);
  sub_10004630C();
  sub_100046164();
  sub_1000462CC(&_mh_execute_header, v1, v2, "%s [%d]: %s: Unable to set target thread", v3, v4, v5, v6, v7);
}

void sub_10009E388()
{
  sub_1000462C0();
  sub_100035B20([v0 pid]);
  sub_10004630C();
  sub_100046164();
  sub_100046208(&_mh_execute_header, v1, v2, "Unable to format: %s [%d]: %s: Unable to set target thread", v3, v4, v5, v6, v7);
}

void sub_10009E50C()
{
  sub_1000462C0();
  sub_100035B20([v0 pid]);
  sub_10004630C();
  sub_100046164();
  sub_1000462CC(&_mh_execute_header, v1, v2, "%s [%d]: %s: Unable to set target dispatch queue", v3, v4, v5, v6, v7);
}

void sub_10009E5A0()
{
  sub_1000462C0();
  sub_100035B20([v0 pid]);
  sub_10004630C();
  sub_100046164();
  sub_100046208(&_mh_execute_header, v1, v2, "Unable to format: %s [%d]: %s: Unable to set target dispatch queue", v3, v4, v5, v6, v7);
}

void sub_10009E6BC()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009E72C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009E79C()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009E824()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009E8AC()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009E91C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009E98C()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009EA14()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009EA9C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10009EB2C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10009EBBC()
{
  sub_1000462C0();
  sub_100035B20(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_1000539C4();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_10009EC5C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_1000539C4();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_10009ECFC(os_log_t log)
{
  v1 = 136315138;
  v2 = "0 != strcmp(/, expectedRealDir)";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", &v1, 0xCu);
}

void sub_10009EE00()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_10005396C();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009EE90()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009EF20(os_log_t log)
{
  v1 = 136315138;
  v2 = "expectedRealDir";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", &v1, 0xCu);
}

void sub_10009F024()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_10005396C();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F0B4()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F144()
{
  sub_1000461C8();
  WORD2(v3) = 2080;
  HIWORD(v3) = v0;
  sub_100046228(&_mh_execute_header, v0, v1, "NULL realDir (dir %s from %s)", v2, v3);
}

void sub_10009F1B8()
{
  sub_1000461C8();
  WORD2(v3) = 2080;
  HIWORD(v3) = v0;
  sub_100046228(&_mh_execute_header, v0, v1, "Unable to format: NULL realDir (dir %s from %s)", v2, v3);
}

void sub_10009F22C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009F29C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009F30C()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F394()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F41C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009F48C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009F4FC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F584()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10009F60C(unsigned __int8 a1)
{
  sub_100088394(a1);
  sub_1000461C8();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10009F690(unsigned __int8 a1)
{
  sub_100088394(a1);
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10009F714(int *a1, unsigned __int8 a2)
{
  sub_100035B20(*a1);
  sub_100053A20();
  sub_100088394(a2);
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009F7D0(int *a1, unsigned __int8 a2)
{
  sub_100035B20(*a1);
  sub_100053A20();
  sub_100088394(a2);
  sub_10005380C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009F87C()
{
  sub_100053954();
  v2 = v1;
  sub_100035B20(*v1);
  v3 = *v2;
  v4 = *v0;
  sub_1000461C8();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_10009F928(uint64_t *a1)
{
  v1 = *sub_100053AB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005380C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009F9C8(uint64_t *a1)
{
  v1 = *sub_100053AB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005380C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009FA68()
{
  sub_100053954();
  sub_100053A9C(v1);
  sub_100053A20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100053850();
  sub_1000538B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_10009FB14()
{
  sub_100053954();
  sub_100053A9C(v1);
  sub_100053A20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100053850();
  sub_100053884();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_10009FBC0(uint64_t *a1)
{
  v1 = *sub_100053AB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005380C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009FC60(uint64_t *a1)
{
  v1 = *sub_100053AB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005380C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10009FD00()
{
  sub_100053954();
  sub_100053A9C(v1);
  sub_100053A20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100053850();
  sub_1000538B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_10009FDAC()
{
  sub_100053954();
  sub_100053A9C(v1);
  sub_100053A20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100053850();
  sub_100053884();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_10009FE58()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_10009FF14()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_10009FFCC()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A0088()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A0144()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A01FC()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A02B8()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_1000A0374()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A042C()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A049C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A050C()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A05C8()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A0684()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A0710()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A079C()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A07D8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A0814()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0894()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0914()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A0950()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A098C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0A0C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0A8C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A0AFC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A0B88()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A0BC4()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A0C00()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0C80()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0D00()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A0D3C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A0DBC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A0E50()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537B8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A0F00()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_100053A90();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A0F8C()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_100053A90();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A1018()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_100053A90();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A10A4()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_100053A90();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A1144()
{
  sub_10005390C();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A11B8()
{
  sub_10005390C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A122C()
{
  sub_10005390C();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A12A0()
{
  sub_10005390C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A1314()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_1000A13D0()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A1488()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A1544()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A1600()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A16B8()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A1774()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_1000A1830()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A18E8()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A1958()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A19C8()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A1A84()
{
  sub_100053A08();
  sub_1000538EC();
  sub_100035B20(v0);
  v1 = [sub_1000539B8() total];
  [v1 num_out_of_order];
  v2 = [sub_100053960() total];
  [v2 num_missing_load_info];
  sub_100053A2C();
  sub_100053764();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_1000539F0();
}

void sub_1000A1B40()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A1BCC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A1C58()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A1C94()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A1CD0()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A1D50()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A1DD0()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A1E0C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A1E48()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A1EC8()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A1F48()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A1F84()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A2004()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2040()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A207C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A20FC()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A217C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A21EC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A2278()
{
  sub_100053A08();
  sub_1000539A8();
  v2 = [sub_100053A44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_1000539B8() total];
  [v3 num_missing_load_info];
  sub_100053A78();
  sub_100053824();
  sub_1000538C4();
  sub_100053990();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);

  sub_1000539F0();
}

void sub_1000A2334()
{
  sub_100053A08();
  sub_1000539A8();
  v2 = [sub_100053A44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_1000539B8() total];
  [v3 num_missing_load_info];
  sub_100053A78();
  sub_100053824();
  sub_1000538C4();
  sub_1000538DC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_1000539F0();
}

void sub_1000A23EC()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_1000A24A8()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A2560()
{
  sub_100053A08();
  sub_1000539A8();
  v2 = [sub_100053A44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_1000539B8() total];
  [v3 num_missing_load_info];
  sub_100053A78();
  sub_100053824();
  sub_1000538C4();
  sub_1000538DC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_1000539F0();
}

void sub_1000A2618()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A26D0()
{
  sub_100053A08();
  sub_1000539A8();
  v2 = [sub_100053A44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_1000539B8() total];
  [v3 num_missing_load_info];
  sub_100053A78();
  sub_100053824();
  sub_1000538C4();
  sub_100053990();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x2Au);

  sub_1000539F0();
}

void sub_1000A278C()
{
  sub_100053A08();
  sub_1000539A8();
  v2 = [sub_100053A44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_1000539B8() total];
  [v3 num_missing_load_info];
  sub_100053A78();
  sub_100053824();
  sub_1000538C4();
  sub_1000538DC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_1000539F0();
}

void sub_1000A2924()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_100053990();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_100053A50();
}

void sub_1000A29E0()
{
  sub_100053A64();
  sub_100053978();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005399C() total];
  [v2 num_missing_load_info];
  [sub_100053960() bytes_not_microstackshots];
  sub_100053798();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_100053A50();
}

void sub_1000A2A98()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2B08()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2B78()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2BB4()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2BF0()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2C2C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2C68()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2CD8()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2D48()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2D84()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2DC0()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2E30()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2EA0()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2EDC()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A2F80()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A2FF0()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3060()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A30D0()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A310C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A3148()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A31B8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A32C4()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A3300()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A333C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A33BC()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A343C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A34AC()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A3608()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A3644()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A3680()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A3700()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A3780()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A37F0()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A394C()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A3988()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A39C4()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A3A44()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A3AC4()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3B34()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_1000537DC();
  sub_1000538FC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A3BC0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A3C50()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A3CE0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3D50()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3DC0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3E30()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3EA0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3F10()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A3F80()
{
  sub_1000551A8();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A3FF8()
{
  sub_1000551A8();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4168()
{
  sub_10005519C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A41E4()
{
  sub_10005516C(__stack_chk_guard);
  sub_10005517C();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000A4264()
{
  sub_10005516C(__stack_chk_guard);
  sub_10005517C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000A42E4()
{
  sub_10005516C(__stack_chk_guard);
  sub_10005517C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_1000A4370()
{
  sub_10005516C(__stack_chk_guard);
  sub_1000551F0();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_1000A440C()
{
  sub_1000551A8();
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4484()
{
  sub_1000551A8();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A44FC()
{
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000A4594()
{
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000A4620()
{
  sub_1000551E0();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4698()
{
  sub_1000551E0();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4710()
{
  sub_1000551E0();
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4804()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4874(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A48E4(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_10005393C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A49BC()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4AA8()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4B18(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A4B88(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_10005393C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A4C60()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4D38()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000A4DE8(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  v4 = 2114;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Tasking setting for %{public}@: %{public}@ isn't a number", v3, 0x16u);
}

void sub_1000A4E6C(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_100055150();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000A4EE8(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  v2 = **v1;
  sub_10005519C();
  sub_100055150();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000A4F6C(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10005519C();
  sub_100055150();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000A4FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000462EC(&_mh_execute_header, v11, v12, "%s: unable to allocate communication queue", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to allocate communication queue");
    if (v19)
    {
      v28 = sub_100058708(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xC53281FFuLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v9);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1000586E8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to allocate communication queue", v23, v24, v25, v26, "communication_queue", v33, 2u);
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_100035A54("startup_ports", "reading.m", 98, "%s: unable to allocate communication queue", a5, a6, a7, a8, "communication_queue");
  abort();
}

void sub_1000A51DC(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_1000461C8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got xpc error for peer: %{public}s", v3, 0xCu);
}

void sub_1000A5270(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000A52F0(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5[0] = 67109378;
  v5[1] = v4;
  v6 = 2082;
  string = xpc_dictionary_get_string(xdict, _xpc_error_key_description);
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Got xpc error message in libspindump client [%d] connection: %{public}s", v5, 0x12u);
}

void sub_1000A53A0()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5414()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5488()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A54FC()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A59E8()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5A5C()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5AD0()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5B44()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5DC0()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5E34()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5EA8()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5F1C()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A5F90()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A6004()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A60E0()
{
  sub_1000586DC();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A6154()
{
  sub_1000586DC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A63D0(int a1, NSObject *a2)
{
  sub_100035B20(a1);
  sub_1000586C8();
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Attemping to generate spindump, but not entitled", v4, 0x12u);
}

void sub_1000A6460(int a1)
{
  sub_100035B20(a1);
  sub_1000586C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000462EC(&_mh_execute_header, v11, v12, "%s: unable to create reply", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to create reply");
    if (v19)
    {
      v28 = sub_100058708(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xE380D1C0uLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v9);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1000586E8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to create reply", v23, v24, v25, v26, "reply", v33, 2u);
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_100035A54("SPHandleGenerateSpindump", "reading.m", 279, "%s: unable to create reply", a5, a6, a7, a8, "reply");
  abort();
}

void sub_1000A66D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000462EC(&_mh_execute_header, v11, v12, "%s: unable to get connection", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to get connection");
    if (v19)
    {
      v28 = sub_100058708(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xFC1EAA4FuLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v9);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1000586E8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to get connection", v23, v24, v25, v26, "connection", v33, 2u);
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_100035A54("SPHandleGenerateSpindump", "reading.m", 277, "%s: unable to get connection", a5, a6, a7, a8, "connection");
  abort();
}

void sub_1000A68C8()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A6938()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A69A8(int a1)
{
  sub_100035B20(a1);
  sub_1000586C8();
  sub_100058724();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A6A3C(int a1)
{
  sub_100035B20(a1);
  sub_1000586C8();
  sub_100058724();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A6AD0(int a1)
{
  sub_100035B20(a1);
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A6B64()
{
  sub_100053894();
  sub_100035B20(*(v2 + 84));
  v3 = *(v1 + 84);
  v4 = *v0;
  sub_100059B6C();
  sub_1000462CC(&_mh_execute_header, v5, v6, "Child %s [%d] output exceeded %llu bytes", v7, v8, v9, v10, v11);
}

void sub_1000A6BF0()
{
  sub_100053894();
  sub_100035B20(*v2);
  v3 = *v1;
  v4 = *v0;
  sub_100059B6C();
  sub_100053884();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000A6C84(uint64_t a1)
{
  sub_100035B20(*(a1 + 64));
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  sub_100059B6C();
  sub_1000462CC(&_mh_execute_header, v4, v5, "Child %s [%d] timed out after %llus", v6, v7, v8, v9, v10);
}

void sub_1000A6D0C()
{
  sub_100053894();
  sub_100035B20(*v2);
  v3 = *v1;
  v4 = *v0;
  sub_100059B6C();
  sub_100053884();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000A6DA0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 112);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Child [%d] exited", v3, 8u);
}

void sub_1000A6E1C(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Child [%d] exited", v3, 8u);
}

void sub_1000A6E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v11 = sub_100035B80();
    if (sub_100060E98(v11))
    {
      v35 = "!sampleStore";
      sub_1000462EC(&_mh_execute_header, v12, v13, "%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", v14, v15, v16, v17, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v19 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", "!sampleStore");
    if (v20)
    {
      v27 = v20;
      v28 = sub_100060DC4(v20);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x79B3D897uLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v9);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v21 = sub_100035B80();
      if (sub_100060EB0(v21))
      {
        *buf = 136315138;
        v35 = "!sampleStore";
        sub_100060D20(&_mh_execute_header, v22, v23, "Unable to format: %s: _HandleMicrostackshots returned a SASampleStore when saving to a file", buf);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v19;
  }

  sub_100035A54("SaveMicrostackshotsToFile", "microstackshot.m", 89, "%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", a5, a6, a7, a8, "!sampleStore");
  abort();
}

void sub_1000A7660()
{
  sub_100053894();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060C44();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000A76F8()
{
  sub_100053894();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060C44();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000A7794()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A782C()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A78C8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A7994()
{
  sub_100053894();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060C44();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000A7A30()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A7AC8()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A7B64()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A7BFC()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000A7C98()
{
  sub_100060C74();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A7D08()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7D78()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7E00()
{
  sub_100060C74();
  sub_100060CD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A7E70()
{
  sub_100060C74();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A7EE0()
{
  sub_1000461C8();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7F50()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7FC0()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A8048()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A80D0(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  [v2 unsignedIntValue];
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A8180()
{
  sub_100060C74();
  sub_100060CD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A81F0()
{
  sub_100060C74();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A8260()
{
  sub_1000461C8();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A82D0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A8340()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A83C8()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A8450()
{
  sub_1000461C8();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A84C0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A8530()
{
  sub_1000586C8();
  sub_100060CD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000A85A4()
{
  sub_1000586C8();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000A8618()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A8654()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A8690(int a1)
{
  sub_100035B20(a1);
  sub_1000586C8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A8718(int a1)
{
  sub_100035B20(a1);
  sub_1000586C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A87A0()
{
  sub_100060C74();
  sub_100060CD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A8810()
{
  sub_100060C74();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A8880()
{
  sub_1000461C8();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A88F0()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A8960()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A89E8()
{
  sub_100053894();
  sub_100035B20(v0);
  sub_100060BF8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A8A70()
{
  sub_100053954();
  [v0 systemstatsFormat];
  sub_100060C9C();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A8B08()
{
  sub_100053954();
  [v0 systemstatsFormat];
  sub_100060C9C();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A8BA0()
{
  sub_100053954();
  sub_100060DC4(v0);
  sub_1000461C8();
  sub_100060ED4();
  sub_100060D00();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A8C30()
{
  sub_100053954();
  sub_100060DC4(v0);
  sub_1000461C8();
  sub_100060ED4();
  sub_100060D00();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A8CC0()
{
  sub_100060C8C();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000A8D40()
{
  sub_100060C8C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000A8DC0()
{
  sub_100053954();
  sub_100035B20(v0);
  sub_1000586C8();
  sub_100060DDC();
  sub_100060D78();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000A8E60()
{
  sub_100053954();
  sub_100035B20(v0);
  sub_1000586C8();
  sub_100060DDC();
  sub_100060D78();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000A8F00(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_1000586BC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A8F70(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_10005393C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A8FE0(uint64_t *a1, unsigned int *a2)
{
  sub_100060D88(a1, a2, __stack_chk_guard);
  sub_100060C9C();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A9058(uint64_t *a1, unsigned int *a2)
{
  sub_100060D88(a1, a2, __stack_chk_guard);
  sub_100060C9C();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A90D0()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A910C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9148()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A91C8()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9248(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_1000586BC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A92B8(uint64_t *a1)
{
  sub_1000551B8(a1, __stack_chk_guard);
  sub_10005519C();
  sub_10005393C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A9328(uint64_t *a1, unsigned int *a2)
{
  sub_100060D88(a1, a2, __stack_chk_guard);
  sub_100060C9C();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A93A0(uint64_t *a1, unsigned int *a2)
{
  sub_100060D88(a1, a2, __stack_chk_guard);
  sub_100060C9C();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A9418()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9454()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9490()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9510()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9590(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100060D14();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000A9634(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100060D14();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000A96D8(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000A977C()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9824()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9860()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A98F4(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000A9998(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000A9A3C()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9AE4()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9B8C()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9BC8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9C04()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A9C98()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A9D2C(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000A9DD0()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000A9E78()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9EB4()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A9F48(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000A9FEC(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000AA090()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000AA138()
{
  sub_1000462C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E58();
  sub_100060C1C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000AA1E0()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA21C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA258()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AA2EC()
{
  sub_1000462C0();
  sub_100035B20([v0 targetProcessId]);
  sub_100060E28();
  sub_100060C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AA380()
{
  sub_100053954();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000586C8();
  sub_100060CC4();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
}

void sub_1000AA42C()
{
  sub_100053954();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000586C8();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000AA4D4()
{
  sub_100053894();
  v2 = [v1 targetProcess];
  v3 = [v2 name];
  [v0 targetProcessId];
  sub_100060C8C();
  sub_100053A90();
  sub_100060CC4();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x18u);
}

void sub_1000AA598()
{
  sub_100053894();
  v2 = [v1 targetProcess];
  v3 = [v2 name];
  [v0 targetProcessId];
  sub_100060C8C();
  sub_100053A90();
  sub_100053884();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1000AA740()
{
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  sub_100060C1C();
  sub_100053A90();
  sub_100060CC4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x18u);
}

void sub_1000AA7E0()
{
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  sub_100060C1C();
  sub_100053A90();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000AA87C()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AA8EC()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AA95C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100060D14();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000AAA0C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100060D14();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000AAABC()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AAAF8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AAB34()
{
  sub_100053954();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060DC4(v2);
  sub_1000461C8();
  sub_100060ED4();
  sub_100060D00();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000AABEC()
{
  sub_100053954();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060DC4(v2);
  sub_1000461C8();
  sub_100060ED4();
  sub_100060D00();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000AACA4()
{
  sub_100053A64();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060DC4(v2);
  [sub_100060EC8() targetProcessId];
  sub_100060C8C();
  sub_100060DDC();
  sub_100060CE0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);

  sub_100053A50();
}

void sub_1000AAD7C()
{
  sub_100053A64();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060DC4(v2);
  [sub_100060EC8() targetProcessId];
  sub_100060C8C();
  sub_100060DDC();
  sub_1000538DC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);

  sub_100053A50();
}

void sub_1000AAE54()
{
  sub_100060C8C();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000AAED4()
{
  sub_100060C8C();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000AAF54()
{
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  sub_100060C1C();
  sub_100060DDC();
  sub_100060D78();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000AAFFC()
{
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  sub_100060C1C();
  sub_100060DDC();
  sub_100060D78();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000AB0A4()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB114()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000AB1CC()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000AB284()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000AB340()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000AB3FC()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000AB494()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000AB52C()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000AB5D8()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000AB684()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000AB73C()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000AB7F4()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000AB8B0()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000AB96C()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000ABA04()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000ABA9C()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000ABB48()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000ABBF4()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000ABCAC()
{
  sub_100053A64();
  sub_100060D98();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060BC8();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_100053A50();
}

void sub_1000ABD64()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_100060CE0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000ABE20()
{
  sub_100060E84();
  sub_100060CF0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100060E40();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100060B58();
  sub_1000538DC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100060E70();
}

void sub_1000ABEDC()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000ABF74()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000AC00C()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000AC0B8()
{
  sub_100060E84();
  sub_100053894();
  sub_100035B20([v0 targetProcessId]);
  [sub_10005399C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100060E70();
}

void sub_1000AC164(void *a1)
{
  [a1 numSamples];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AC1E4(void *a1)
{
  [a1 numSamples];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AC4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v11 = *__error();
    v12 = sub_100035B80();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "bufLength < bufCapacity";
      v27 = 2048;
      v28 = a1;
      v29 = 2048;
      v30 = a2;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: buf %lu, cap %lu", buf, 0x20u);
    }

    *__error() = v11;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: buf %lu, cap %lu", "bufLength < bufCapacity", a1, a2);
    if (v15)
    {
      v20 = v15;
      v21 = sub_100060DC4(v15);
      if (v21)
      {
        v10 = v21;
        v23 = 0;
      }

      else
      {
        malloc_type_calloc(0x400uLL, 1uLL, 0x16158986uLL);
        v22 = sub_10005399C();
        CFStringGetCString(v22, &off_1000C5000, 1024, 0x8000100u);
        v23 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v24 = qword_100117E88;
      }

      else
      {
        v24 = __stderrp;
      }

      fprintf(v24, "%s\n", v10);
      if (v23)
      {
        free(v23);
      }

      CFRelease(v20);
    }

    else
    {
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v26 = "bufLength < bufCapacity";
        v27 = 2048;
        v28 = a1;
        v29 = 2048;
        v30 = a2;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unable to format: %s: buf %lu, cap %lu", buf, 0x20u);
      }

      if (qword_100117E88)
      {
        v19 = qword_100117E88;
      }

      else
      {
        v19 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v17, v18, v19);
    }

    *__error() = v14;
  }

  sub_100035A54("_ParseMicrostackshot", "microstackshot.m", 952, "%s: buf %lu, cap %lu", a5, a6, a7, a8, "bufLength < bufCapacity");
  abort();
}

void sub_1000AC704(int *a1)
{
  v6 = *a1;
  sub_100060CD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC788(int *a1)
{
  v6 = *a1;
  sub_100055150();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC80C(int *a1)
{
  strerror(*a1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC894(int *a1)
{
  strerror(*a1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC91C()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC958()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v11 = sub_100035B80();
    if (sub_100060E98(v11))
    {
      v35 = "gzfile";
      sub_1000462EC(&_mh_execute_header, v12, v13, "%s: No tracebuf nor gzfile", v14, v15, v16, v17, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v19 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No tracebuf nor gzfile", "gzfile");
    if (v20)
    {
      v27 = v20;
      v28 = sub_100060DC4(v20);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x68C5106AuLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v9);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v21 = sub_100035B80();
      if (sub_100060EB0(v21))
      {
        *buf = 136315138;
        v35 = "gzfile";
        sub_100060D20(&_mh_execute_header, v22, v23, "Unable to format: %s: No tracebuf nor gzfile", buf);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v19;
  }

  sub_100035A54("_ParseMicrostackshot", "microstackshot.m", 900, "%s: No tracebuf nor gzfile", a5, a6, a7, a8, "gzfile");
  abort();
}

void sub_1000ACB74()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ACBB0()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ACC00()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ACC3C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ACC78()
{
  sub_100060DE8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACCEC()
{
  sub_100060DE8();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACD60()
{
  sub_100060DE8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACE10()
{
  sub_100053A64();
  sub_100053894();
  [v2 processName];
  objc_claimAutoreleasedReturnValue();
  [sub_10005399C() processID];
  v3 = [v0 processMainBinaryUUID];
  sub_100060C1C();
  sub_100060DA4();
  sub_100060CC4();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x26u);

  sub_100053A50();
}

void sub_1000ACEC8()
{
  sub_100053A64();
  sub_100053894();
  [v2 processName];
  objc_claimAutoreleasedReturnValue();
  [sub_10005399C() processID];
  v3 = [v0 processMainBinaryUUID];
  sub_100060C1C();
  sub_100060DA4();
  sub_100053884();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x26u);

  sub_100053A50();
}

void sub_1000ACF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100060E84();
  a23 = v25;
  a24 = v26;
  sub_100060D98();
  v28 = v27;
  v29 = [v27 processName];
  [v28 processID];
  [v28 threadID];
  v30 = [sub_100060EC8() processMainBinaryUUID];
  sub_100060D3C();
  _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Including microstackshot for %@ [%d] thread 0x%llx at %s (%@)", &a9, 0x30u);

  sub_100060E70();
}

void sub_1000AD044()
{
  sub_100060E84();
  sub_100060D98();
  v1 = v0;
  v2 = [v0 processName];
  [v1 processID];
  [v1 threadID];
  v3 = [sub_100060EC8() processMainBinaryUUID];
  sub_100060D3C();
  sub_1000538DC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x30u);

  sub_100060E70();
}

void sub_1000AD104(unsigned int a1, char a2)
{
  sub_10002B924(a1, a2 & 1);
  sub_1000461C8();
  sub_100060CC4();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1000AD18C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AD1FC(void *a1, NSObject *a2)
{
  v3 = [a1 sampleStore];
  v4 = [v3 targetProcess];
  v5 = [v4 name];
  [v5 UTF8String];
  v6[0] = 136315394;
  sub_100062A08();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: %s: DID_MANUAL status while reporting", v6, 0x16u);
}

void sub_1000AD2DC(void *a1, NSObject *a2)
{
  v3 = [a1 sampleStore];
  v4 = [v3 targetProcess];
  v5 = [v4 name];
  [v5 UTF8String];
  v6[0] = 136315394;
  sub_100062A08();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: DID_MANUAL status while reporting", v6, 0x16u);
}

void sub_1000AD3E4(void *a1)
{
  if (byte_100117E80 == 1)
  {
    v2 = *__error();
    v3 = sub_100035B80();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcess];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_1000629B4();
      sub_100062930(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcess];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_1000629E4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_100062970();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x91BAE2E9uLL);
        sub_1000628C4(v34);
        v35 = v15;
      }

      if (qword_100117E88)
      {
        v36 = qword_100117E88;
      }

      else
      {
        v36 = __stderrp;
      }

      fprintf(v36, "%s\n", v15);
      if (v35)
      {
        free(v35);
      }

      CFRelease(v19);
    }

    else
    {
      v20 = sub_100035B80();
      if (sub_1000629CC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcess];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_1000629B4();
        sub_100062950(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcess];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_100035A54("SaveReport", "reporting.m", 432, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

void sub_1000AD738()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AD7A8(void *a1)
{
  if (byte_100117E80 == 1)
  {
    v2 = *__error();
    v3 = sub_100035B80();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcesses];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_1000629B4();
      sub_100062930(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcesses];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_1000629E4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_100062970();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x24747E20uLL);
        sub_1000628C4(v34);
        v35 = v15;
      }

      if (qword_100117E88)
      {
        v36 = qword_100117E88;
      }

      else
      {
        v36 = __stderrp;
      }

      fprintf(v36, "%s\n", v15);
      if (v35)
      {
        free(v35);
      }

      CFRelease(v19);
    }

    else
    {
      v20 = sub_100035B80();
      if (sub_1000629CC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcesses];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_1000629B4();
        sub_100062950(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcesses];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_100035A54("SaveReport", "reporting.m", 406, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

void sub_1000ADA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "!url_out";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: asking for URL when generating report via OSA", buf, 0xCu);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v12 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: asking for URL when generating report via OSA", "!url_out");
    if (v13)
    {
      v18 = v13;
      v19 = sub_100060DC4(v13);
      if (v19)
      {
        v9 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xDFFDBB2EuLL);
        sub_100046264(v20);
        v21 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v22 = qword_100117E88;
      }

      else
      {
        v22 = __stderrp;
      }

      fprintf(v22, "%s\n", v9);
      if (v21)
      {
        free(v21);
      }

      CFRelease(v18);
    }

    else
    {
      v14 = sub_100035B80();
      if (sub_100060EB0(v14))
      {
        *buf = 136315138;
        v24 = "!url_out";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Unable to format: %s: asking for URL when generating report via OSA", buf, 0xCu);
      }

      if (qword_100117E88)
      {
        v17 = qword_100117E88;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    *__error() = v12;
  }

  sub_100035A54("SaveReport", "reporting.m", 576, "%s: asking for URL when generating report via OSA", a5, a6, a7, a8, "!url_out");
  abort();
}

void sub_1000ADC8C(void *a1)
{
  if (byte_100117E80 == 1)
  {
    v2 = *__error();
    v3 = sub_100035B80();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcess];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_1000629B4();
      sub_100062930(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcess];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_1000629E4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_100062970();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB17047AuLL);
        sub_1000628C4(v34);
        v35 = v15;
      }

      if (qword_100117E88)
      {
        v36 = qword_100117E88;
      }

      else
      {
        v36 = __stderrp;
      }

      fprintf(v36, "%s\n", v15);
      if (v35)
      {
        free(v35);
      }

      CFRelease(v19);
    }

    else
    {
      v20 = sub_100035B80();
      if (sub_1000629CC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcess];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_1000629B4();
        sub_100062950(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcess];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_100035A54("SaveReport", "reporting.m", 379, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

int *sub_1000ADF6C(const char *a1)
{
  v3 = *__error();
  v4 = sub_100035B80();
  if (sub_1000629CC(v4))
  {
    v21 = *__error();
    v22 = __error();
    strerror(*v22);
    sub_10006290C();
    sub_100062A1C(&_mh_execute_header, v23, v24, "Unable to create stream from %@: %d (%s)", v25, v26, v27, v28, v37, v38, v40, v42, v43);
  }

  result = __error();
  *result = v3;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v7 = *__error();
    v8 = *__error();
    v9 = __error();
    v39 = v8;
    v41 = strerror(*v9);
    v11 = sub_1000629E4(v41, v10, @"Unable to create stream from %@: %d (%s)");
    if (v11)
    {
      v12 = v11;
      v13 = sub_100060DC4(v11);
      if (v13)
      {
        a1 = v13;
        v14 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(0x400uLL, 1uLL, 0xA4B2584AuLL);
        sub_10006298C(v19);
        v14 = a1;
      }

      if (qword_100117E88)
      {
        v20 = qword_100117E88;
      }

      else
      {
        v20 = __stderrp;
      }

      fprintf(v20, "%s\n", a1);
      if (v14)
      {
        free(v14);
      }

      CFRelease(v12);
    }

    else
    {
      v15 = sub_100035B80();
      if (sub_1000629CC(v15))
      {
        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        sub_10006290C();
        sub_100062A1C(&_mh_execute_header, v31, v32, "Unable to format: Unable to create stream from %@: %d (%s)", v33, v34, v35, v36, a1, v39, v41, v42, v43);
      }

      if (qword_100117E88)
      {
        v18 = qword_100117E88;
      }

      else
      {
        v18 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v16, v17, v18);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000AE2F0(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000AE37C(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000AE408(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000AE494(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

int *sub_1000AE520()
{
  v1 = *__error();
  v2 = sub_100035B80();
  v3 = &off_1000C5000;
  if (sub_100060EB0(v2))
  {
    v17 = *__error();
    sub_1000629FC();
    sub_1000628EC(&_mh_execute_header, v18, v19, "unable to fdopen OSA dup fd: %{errno}d", v20, v21, v22, v23, v31, v33, v34);
  }

  result = __error();
  *result = v1;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v6 = *__error();
    v32 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"unable to fdopen OSA dup fd: %{errno}d");
    if (v7)
    {
      v8 = v7;
      v9 = sub_100060DC4(v7);
      if (v9)
      {
        v3 = v9;
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xE282F75DuLL);
        sub_100046264(v15);
        v10 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v3);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v8);
    }

    else
    {
      v11 = sub_100035B80();
      if (sub_100060EB0(v11))
      {
        v24 = *__error();
        sub_1000629FC();
        sub_1000628EC(&_mh_execute_header, v25, v26, "Unable to format: unable to fdopen OSA dup fd: %{errno}d", v27, v28, v29, v30, v32, v33, v34);
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v6;
  }

  return result;
}

int *sub_1000AE710()
{
  v1 = *__error();
  v2 = sub_100035B80();
  v3 = &off_1000C5000;
  if (sub_100060EB0(v2))
  {
    v17 = *__error();
    sub_1000629FC();
    sub_1000628EC(&_mh_execute_header, v18, v19, "dup of OSA file handle failed: %{errnod}d", v20, v21, v22, v23, v31, v33, v34);
  }

  result = __error();
  *result = v1;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v6 = *__error();
    v32 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"dup of OSA file handle failed: %{errnod}d");
    if (v7)
    {
      v8 = v7;
      v9 = sub_100060DC4(v7);
      if (v9)
      {
        v3 = v9;
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xFDD951E6uLL);
        sub_100046264(v15);
        v10 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v3);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v8);
    }

    else
    {
      v11 = sub_100035B80();
      if (sub_100060EB0(v11))
      {
        v24 = *__error();
        sub_1000629FC();
        sub_1000628EC(&_mh_execute_header, v25, v26, "Unable to format: dup of OSA file handle failed: %{errnod}d", v27, v28, v29, v30, v32, v33, v34);
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v6;
  }

  return result;
}

int *sub_1000AE900(char *a1)
{
  v3 = *__error();
  v4 = sub_100035B80();
  if (sub_1000629CC(v4))
  {
    v18 = [a1 debugDescription];
    sub_100062A3C(&_mh_execute_header, v19, v20, "OSAWriteLogForSubmission provided invalid fd: %@", v21, v22, v23, v24, v32, v34, 2u);
  }

  result = __error();
  *result = v3;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v7 = *__error();
    v33 = [a1 debugDescription];
    v9 = sub_1000629E4(v33, v8, @"OSAWriteLogForSubmission provided invalid fd: %@");

    if (v9)
    {
      v10 = sub_100062970();
      if (v10)
      {
        a1 = v10;
        v11 = 0;
      }

      else
      {
        v16 = malloc_type_calloc(0x400uLL, 1uLL, 0x54848E8DuLL);
        sub_10006298C(v16);
        v11 = a1;
      }

      if (qword_100117E88)
      {
        v17 = qword_100117E88;
      }

      else
      {
        v17 = __stderrp;
      }

      fprintf(v17, "%s\n", a1);
      if (v11)
      {
        free(v11);
      }

      CFRelease(v9);
    }

    else
    {
      v12 = sub_100035B80();
      if (sub_1000629CC(v12))
      {
        v25 = [a1 debugDescription];
        sub_100062A3C(&_mh_execute_header, v26, v27, "Unable to format: OSAWriteLogForSubmission provided invalid fd: %@", v28, v29, v30, v31, v33, v34, 2u);
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
      }

      else
      {
        v15 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v13, v14, v15);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000AEB20()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEB70()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEBAC()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEC1C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEC58()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AECC8()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AED6C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEDA8()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEE18()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

int *sub_1000AEE88(const char *a1)
{
  v3 = *__error();
  v4 = sub_100035B80();
  if (sub_1000629CC(v4))
  {
    sub_100068CB0();
    sub_100062A3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_100068CCC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x7CAFF1E7uLL);
        sub_10006298C(v12);
        v9 = a1;
      }

      v13 = sub_100068CBC(qword_100117E88);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_100035B80();
      if (sub_1000629CC(v10))
      {
        sub_100068CB0();
        sub_100062A3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100117E88)
      {
        v11 = qword_100117E88;
      }

      else
      {
        v11 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000AF05C()
{
  sub_100053954();
  [v0 count];
  sub_100068C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000AF0DC()
{
  sub_100053954();
  [v0 count];
  sub_100068C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

int *sub_1000AF15C(const char *a1)
{
  v3 = *__error();
  v4 = sub_100035B80();
  if (sub_1000629CC(v4))
  {
    sub_100068CB0();
    sub_100062A3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_100068CCC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7A1B168uLL);
        sub_10006298C(v12);
        v9 = a1;
      }

      v13 = sub_100068CBC(qword_100117E88);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_100035B80();
      if (sub_1000629CC(v10))
      {
        sub_100068CB0();
        sub_100062A3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100117E88)
      {
        v11 = qword_100117E88;
      }

      else
      {
        v11 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000AF330(void *a1)
{
  [a1 count];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AF3E4()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF420()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF490()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF534()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF570()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF5AC()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF61C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF658()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF694()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF710()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AF74C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF7BC()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF884(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100068C80(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100068CE8(&_mh_execute_header, v5, v6, "Unable to format: %@ deferred power exception: generating deferred report");
}

void sub_1000AFAF0(uint64_t a1, uint64_t a2)
{
  v5 = [sub_100068C80(a1 a2)];
  *v4 = 134217984;
  *v3 = v5;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unhandled deferred report type %llu", v4, 0xCu);
}

void sub_1000AFB50(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100068C80(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  sub_100068CE8(&_mh_execute_header, v5, v6, "Unable to format: Unhandled deferred report type %llu");
}

void sub_1000AFBF8(void *a1)
{
  [a1 count];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AFC78()
{
  sub_100053954();
  [v0 count];
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000AFD0C()
{
  sub_100053954();
  [v0 count];
  sub_100068C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000AFD8C()
{
  sub_100053954();
  [v0 count];
  sub_100068C30();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

int *sub_1000AFE0C(const char *a1)
{
  v3 = *__error();
  v4 = sub_100035B80();
  if (sub_1000629CC(v4))
  {
    sub_100068CB0();
    sub_100062A3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_100068CCC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x67CE5599uLL);
        sub_10006298C(v12);
        v9 = a1;
      }

      v13 = sub_100068CBC(qword_100117E88);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_100035B80();
      if (sub_1000629CC(v10))
      {
        sub_100068CB0();
        sub_100062A3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100117E88)
      {
        v11 = qword_100117E88;
      }

      else
      {
        v11 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000B0054()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B00C4()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  sub_10006D30C(&_mh_execute_header, "Unable to spawn ddt: %d (%s)", v3, v4);
}

void sub_1000B00FC()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  sub_10006D328(&_mh_execute_header, "Unable to format: Unable to spawn ddt: %d (%s)", v3, v4);
}

void sub_1000B019C(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8752e-34, v3, v4);
  sub_10006D30C(&_mh_execute_header, "%{public}s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B01D4(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8151e-34, v3, v4);
  sub_10006D328(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B0274(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8752e-34, v3, v4);
  sub_10006D30C(&_mh_execute_header, "%{public}s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B02AC(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8151e-34, v3, v4);
  sub_10006D328(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B02E4()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  sub_10006D30C(&_mh_execute_header, "Unable to spawn lsof: %d (%s)", v3, v4);
}

void sub_1000B031C()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  sub_10006D328(&_mh_execute_header, "Unable to format: Unable to spawn lsof: %d (%s)", v3, v4);
}

void sub_1000B03BC(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8752e-34, v3, v4);
  sub_10006D30C(&_mh_execute_header, "%{public}s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B03F4(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8151e-34, v3, v4);
  sub_10006D328(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B0494(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8752e-34, v3, v4);
  sub_10006D30C(&_mh_execute_header, "%{public}s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B04CC(uint64_t a1, unsigned int *a2)
{
  sub_10006D2FC(a1, a2);
  sub_10006D2B4(v2, 4.8151e-34, v3, v4);
  sub_10006D328(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B056C()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B05EC()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B06A0(int a1)
{
  sub_100035B20(a1);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B0758(int a1)
{
  sub_100035B20(a1);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B0810(int a1)
{
  sub_100035B20(a1);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B08FC()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B097C()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B09FC(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B0A84(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B0B0C()
{
  sub_100053894();
  sub_10006D350(v1);
  sub_100053A20();
  v2 = ferror(v0);
  strerror(v2);
  sub_10006D2CC();
  sub_10006D2E4();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000B0BA8()
{
  sub_100053894();
  sub_10006D350(v1);
  sub_100053A20();
  v2 = ferror(v0);
  strerror(v2);
  sub_10006D2CC();
  sub_10006D2E4();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000B0CAC()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B0D2C()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B0DAC()
{
  sub_100053894();
  sub_100053A9C(v0);
  sub_100053A20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B0E50()
{
  sub_100053894();
  sub_100053A9C(v0);
  sub_100053A20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B0EF4()
{
  sub_100053894();
  sub_100053A9C(v0);
  sub_100053A20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B0F98()
{
  sub_100053894();
  sub_100053A9C(v0);
  sub_100053A20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060B90();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B103C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000B10D0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100060CC4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000B1164(int a1)
{
  strerror(a1);
  sub_100053924();
  sub_100060CC4();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_1000B11EC(int a1)
{
  strerror(a1);
  sub_100053924();
  sub_100060CC4();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x12u);
}

void sub_1000B12FC()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B136C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B13DC()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B144C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B14BC()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B152C()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B159C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100117E80 == 1)
  {
    v10 = *__error();
    v11 = sub_100035B80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 136315650;
      v28 = "endOfSecs && endOfSecs > endptr";
      v29 = 2048;
      v30 = v12;
      v31 = 2048;
      v32 = a2;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: endOfSecs %p endPtr %p", buf, 0x20u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: endOfSecs %p endPtr %p", "endOfSecs && endOfSecs > endptr", *a1, a2);
    if (v15)
    {
      v21 = v15;
      v22 = sub_100060DC4(v15);
      if (v22)
      {
        v23 = v22;
        v24 = 0;
      }

      else
      {
        v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xB6511A97uLL);
        sub_100077F94(v21, v23);
        v24 = v23;
      }

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v23);
      if (v24)
      {
        free(v24);
      }

      CFRelease(v21);
    }

    else
    {
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = *a1;
        *buf = 136315650;
        v28 = "endOfSecs && endOfSecs > endptr";
        v29 = 2048;
        v30 = v17;
        v31 = 2048;
        v32 = a2;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unable to format: %s: endOfSecs %p endPtr %p", buf, 0x20u);
      }

      if (qword_100117E88)
      {
        v20 = qword_100117E88;
      }

      else
      {
        v20 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v18, v19, v20);
    }

    *__error() = v14;
  }

  v26 = *a1;
  sub_100035A54("TimeFromString", "spindump.m", 4066, "%s: endOfSecs %p endPtr %p", a5, a6, a7, a8, "endOfSecs && endOfSecs > endptr");
  abort();
}

void sub_1000B1800()
{
  sub_1000461C8();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B1870()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B18E0()
{
  sub_100077FFC();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1968()
{
  sub_100077FFC();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1A1C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B1A58()
{
  sub_1000461C8();
  sub_100060CD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1AD4()
{
  sub_1000461C8();
  sub_100055150();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1B50(void *a1)
{
  v1 = [a1 total];
  [v1 num_missing_load_info];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B1BE0(void *a1)
{
  v1 = [a1 total];
  [v1 num_missing_load_info];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B1C70(void *a1)
{
  v1 = [a1 total];
  [v1 num_out_of_order];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B1D00(void *a1)
{
  v1 = [a1 total];
  [v1 num_out_of_order];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B1D90(void *a1)
{
  [a1 bytes_not_microstackshots];
  sub_1000461C8();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1E10(void *a1)
{
  [a1 bytes_not_microstackshots];
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1E90(void *a1, NSObject *a2)
{
  v159 = [a1 total];
  [v159 bytes];
  v158 = [sub_100078080() total];
  v4 = [v158 bytes_duplicate] + v2;
  v157 = [a1 total];
  [v157 bytes_out_of_order];
  v156 = [sub_100078080() total];
  v5 = [v156 bytes_missing_load_info] + v2 + v4;
  [a1 bytes_other_data];
  v115 = [sub_100078080() bytes_not_microstackshots] + v2 + v5;
  v155 = [a1 total];
  [v155 bytes];
  v154 = [sub_100078080() total];
  v6 = [v154 bytes_duplicate] + v2;
  v153 = [a1 total];
  [v153 bytes_out_of_order];
  v152 = [sub_100078080() total];
  v111 = [v152 bytes_missing_load_info] + v2 + v6;
  v109 = [a1 bytes_other_data];
  v108 = [a1 bytes_not_microstackshots];
  v107 = [a1 num_microstackshots_filtered_out];
  v151 = [a1 total];
  v105 = [v151 count];
  v150 = [a1 total];
  v104 = [v150 bytes];
  v149 = [a1 total];
  v102 = [v149 num_load_infos];
  v148 = [a1 total];
  v100 = [v148 num_frames];
  v147 = [a1 total];
  v99 = [v147 num_duplicate];
  v146 = [a1 total];
  v97 = [v146 bytes_duplicate];
  v145 = [a1 total];
  v95 = [v145 num_out_of_order];
  v144 = [a1 total];
  v94 = [v144 bytes_out_of_order];
  v143 = [a1 total];
  v92 = [v143 num_missing_load_info];
  v142 = [a1 total];
  v90 = [v142 bytes_missing_load_info];
  v141 = [a1 interrupt];
  v89 = [v141 count];
  v140 = [a1 interrupt];
  v87 = [v140 bytes];
  v138 = [a1 interrupt];
  v86 = [v138 num_load_infos];
  v137 = [a1 interrupt];
  v84 = [v137 num_frames];
  v136 = [a1 interrupt];
  v82 = [v136 num_duplicate];
  v135 = [a1 interrupt];
  v81 = [v135 bytes_duplicate];
  v134 = [a1 interrupt];
  v79 = [v134 num_out_of_order];
  v133 = [a1 interrupt];
  v77 = [v133 bytes_out_of_order];
  v132 = [a1 interrupt];
  v76 = [v132 num_missing_load_info];
  v131 = [a1 interrupt];
  v74 = [v131 bytes_missing_load_info];
  v130 = [a1 timer];
  v72 = [v130 count];
  v129 = [a1 timer];
  v71 = [v129 bytes];
  v128 = [a1 timer];
  v69 = [v128 num_load_infos];
  v127 = [a1 timer];
  v67 = [v127 num_frames];
  v126 = [a1 timer];
  v66 = [v126 num_duplicate];
  v125 = [a1 timer];
  v64 = [v125 bytes_duplicate];
  v124 = [a1 timer];
  v62 = [v124 num_out_of_order];
  v123 = [a1 timer];
  v59 = [v123 bytes_out_of_order];
  v122 = [a1 timer];
  v56 = [v122 num_missing_load_info];
  v121 = [a1 timer];
  v54 = [v121 bytes_missing_load_info];
  v120 = [a1 io];
  v51 = [v120 count];
  v119 = [a1 io];
  v47 = [v119 bytes];
  v118 = [a1 io];
  v44 = [v118 num_load_infos];
  v117 = [a1 io];
  v41 = [v117 num_frames];
  v116 = [a1 io];
  v38 = [v116 num_duplicate];
  v114 = [a1 io];
  v36 = [v114 bytes_duplicate];
  v113 = [a1 io];
  v34 = [v113 num_out_of_order];
  v112 = [a1 io];
  v31 = [v112 bytes_out_of_order];
  v110 = [a1 io];
  v29 = [v110 num_missing_load_info];
  v106 = [a1 io];
  v27 = [v106 bytes_missing_load_info];
  v103 = [a1 pmi];
  v25 = [v103 count];
  v101 = [a1 pmi];
  v50 = [v101 bytes];
  v98 = [a1 pmi];
  v63 = [v98 num_load_infos];
  v96 = [a1 pmi];
  v60 = [v96 num_frames];
  v93 = [a1 pmi];
  v58 = [v93 num_duplicate];
  v91 = [a1 pmi];
  v55 = [v91 bytes_duplicate];
  v88 = [a1 pmi];
  v52 = [v88 num_out_of_order];
  v85 = [a1 pmi];
  v49 = [v85 bytes_out_of_order];
  v83 = [a1 pmi];
  v46 = [v83 num_missing_load_info];
  v80 = [a1 pmi];
  v45 = [v80 bytes_missing_load_info];
  v78 = [a1 macf];
  v42 = [v78 count];
  v75 = [a1 macf];
  v40 = [v75 bytes];
  v73 = [a1 macf];
  v37 = [v73 num_load_infos];
  v70 = [a1 macf];
  v35 = [v70 num_frames];
  v68 = [a1 macf];
  v33 = [v68 num_duplicate];
  v65 = [a1 macf];
  v32 = [v65 bytes_duplicate];
  v61 = [a1 macf];
  v30 = [v61 num_out_of_order];
  v57 = [a1 macf];
  v28 = [v57 bytes_out_of_order];
  v53 = [a1 macf];
  v26 = [v53 num_missing_load_info];
  v48 = [a1 macf];
  v24 = [v48 bytes_missing_load_info];
  v43 = [a1 unknown_type];
  v23 = [v43 count];
  v39 = [a1 unknown_type];
  v22 = [v39 bytes];
  v7 = [a1 unknown_type];
  v21 = [v7 num_load_infos];
  v8 = [a1 unknown_type];
  v20 = [v8 num_frames];
  v9 = [a1 unknown_type];
  v19 = [v9 num_duplicate];
  v10 = [a1 unknown_type];
  v18 = [v10 bytes_duplicate];
  v11 = [a1 unknown_type];
  v17 = [v11 num_out_of_order];
  v12 = [a1 unknown_type];
  v16 = [v12 bytes_out_of_order];
  v13 = [a1 unknown_type];
  v15 = [v13 num_missing_load_info];
  v14 = [a1 unknown_type];
  v161 = v115;
  v163 = v111;
  v165 = v109;
  v167 = v108;
  v169 = v107;
  v171 = v105;
  v173 = v104;
  v175 = v102;
  v177 = v100;
  v179 = v99;
  v181 = v97;
  v183 = v95;
  v185 = v94;
  v187 = v92;
  v189 = v90;
  v191 = v89;
  v193 = v87;
  v195 = v86;
  v197 = v84;
  v199 = v82;
  v201 = v81;
  v203 = v79;
  v205 = v77;
  v207 = v76;
  v209 = v74;
  v211 = v72;
  v213 = v71;
  v215 = v69;
  v217 = v67;
  v219 = v66;
  v221 = v64;
  v223 = v62;
  v225 = v59;
  v227 = v56;
  v229 = v54;
  v231 = v51;
  v233 = v47;
  v235 = v44;
  v237 = v41;
  v239 = v38;
  v241 = v36;
  v243 = v34;
  v245 = v31;
  v247 = v29;
  v249 = v27;
  v251 = v25;
  *buf = 134236928;
  v253 = v50;
  v162 = 2048;
  v164 = 2048;
  v166 = 2048;
  v168 = 2048;
  v170 = 2048;
  v172 = 2048;
  v174 = 2048;
  v176 = 2048;
  v178 = 2048;
  v180 = 2048;
  v182 = 2048;
  v184 = 2048;
  v186 = 2048;
  v188 = 2048;
  v190 = 2048;
  v192 = 2048;
  v194 = 2048;
  v196 = 2048;
  v198 = 2048;
  v200 = 2048;
  v202 = 2048;
  v204 = 2048;
  v206 = 2048;
  v208 = 2048;
  v210 = 2048;
  v212 = 2048;
  v214 = 2048;
  v216 = 2048;
  v218 = 2048;
  v220 = 2048;
  v222 = 2048;
  v224 = 2048;
  v226 = 2048;
  v228 = 2048;
  v230 = 2048;
  v232 = 2048;
  v234 = 2048;
  v236 = 2048;
  v238 = 2048;
  v240 = 2048;
  v242 = 2048;
  v244 = 2048;
  v246 = 2048;
  v248 = 2048;
  v250 = 2048;
  v252 = 2048;
  v254 = 2048;
  v255 = v63;
  v256 = 2048;
  v257 = v60;
  v258 = 2048;
  v259 = v58;
  v260 = 2048;
  v261 = v55;
  v262 = 2048;
  v263 = v52;
  v264 = 2048;
  v265 = v49;
  v266 = 2048;
  v267 = v46;
  v268 = 2048;
  v269 = v45;
  v270 = 2048;
  v271 = v42;
  v272 = 2048;
  v273 = v40;
  v274 = 2048;
  v275 = v37;
  v276 = 2048;
  v277 = v35;
  v278 = 2048;
  v279 = v33;
  v280 = 2048;
  v281 = v32;
  v282 = 2048;
  v283 = v30;
  v284 = 2048;
  v285 = v28;
  v286 = 2048;
  v287 = v26;
  v288 = 2048;
  v289 = v24;
  v290 = 2048;
  v291 = v23;
  v292 = 2048;
  v293 = v22;
  v294 = 2048;
  v295 = v21;
  v296 = 2048;
  v297 = v20;
  v298 = 2048;
  v299 = v19;
  v300 = 2048;
  v301 = v18;
  v302 = 2048;
  v303 = v17;
  v304 = 2048;
  v305 = v16;
  v306 = 2048;
  v307 = v15;
  v308 = 2048;
  v309 = [v14 bytes_missing_load_info];
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", buf, 0x2F0u);
}

void sub_1000B2CC4()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B2DD0()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B2E40()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B2EB0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B2F40()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B2FD0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3040(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B30B0()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B3138()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B31C0(uint64_t a1)
{
  sub_100077F80(a1);
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000B3230(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B32A0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3310(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3380()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B3408()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B3490(uint64_t a1)
{
  sub_100077F80(a1);
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000B3500(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3570(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B35E0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3650()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B36D8()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B3760(uint64_t a1)
{
  sub_100077F80(a1);
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000B37D0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3840(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B38B0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3920()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B39A8()
{
  sub_100053894();
  sub_100077F40(v0, v1);
  sub_100077F30();
  sub_100077ED8();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000B3A30(uint64_t a1)
{
  sub_100077F80(a1);
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000B3AA0(void *a1, int *a2)
{
  sub_100077EF8(a1, a2);
  sub_100055190();
  sub_100055150();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B3B10(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000B3BB4(NSObject *a1, unsigned int *a2)
{
  dispatch_source_get_handle(a1);
  v3 = *a2;
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_1000B3C48(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B3CC8(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B3D48(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_1000461C8();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B3DC8()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B3E04()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B3E40()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

int *sub_1000B3E7C(uint64_t a1, uint64_t a2)
{
  v4 = *__error();
  v5 = sub_100035B80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100077FE4();
    sub_100078040(&_mh_execute_header, v19, v20, "filePath %s cut off with date (needed %zu chars)", v21, v22, v23, v24, v31, v32, v33);
  }

  result = __error();
  *result = v4;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v8 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"filePath %s cut off with date (needed %zu chars)");
    if (v9)
    {
      v10 = v9;
      v11 = sub_100060DC4(v9);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x95AFBDDCuLL);
        sub_100077F94(v10, v12);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v18 = qword_100117E88;
      }

      else
      {
        v18 = __stderrp;
      }

      fprintf(v18, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_100035B80();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100077FE4();
        sub_100078040(&_mh_execute_header, v25, v26, "Unable to format: filePath %s cut off with date (needed %zu chars)", v27, v28, v29, v30, a1, a2, v33);
      }

      if (qword_100117E88)
      {
        v17 = qword_100117E88;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    result = __error();
    *result = v8;
  }

  return result;
}

void sub_1000B407C(int a1, FILE *a2)
{
  v2 = ferror(a2);
  strerror(v2);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B4114(int a1, FILE *a2)
{
  v2 = ferror(a2);
  strerror(v2);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B41AC()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B425C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B4298()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4334()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B43D0()
{
  sub_100053948();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B440C()
{
  sub_100053948();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B4448()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B44D8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100053924();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B4568(int a1)
{
  sub_100035B20(a1);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100077F0C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000B4624(int a1)
{
  sub_100035B20(a1);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100077F0C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

int *sub_1000B46F4()
{
  v1 = *__error();
  v2 = sub_100035B80();
  if (sub_100060EB0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100077F0C();
    sub_100077F60(&_mh_execute_header, v19, v20, "sysctl for security.mac.sandbox.audio_active failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_10007808C(v36, v8, @"sysctl for security.mac.sandbox.audio_active failed: %d (%s)");
    if (v9)
    {
      if (sub_100058708(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x1299C87BuLL);
        sub_100046264(v15);
        v10 = &off_1000C5000;
      }

      v16 = sub_100078010(qword_100117E88);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_100035B80();
      if (sub_100060EB0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100077F20();
        sub_100077F60(&_mh_execute_header, v27, v28, "Unable to format: sysctl for security.mac.sandbox.audio_active failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100117520 = 0;
  return result;
}

void sub_1000B4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100117E80 == 1)
  {
    v9 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000462EC(&_mh_execute_header, v10, v11, "%s: unable to allocate source", v12, v13, v14, v15, v32, v33, 2u);
    }

    *__error() = v9;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v17 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to allocate source");
    if (v18)
    {
      if (sub_100058708(v18))
      {
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x3C97C0B9uLL);
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      v31 = sub_100078010(qword_100117E88);
      fprintf(v31, "%s\n", "source");
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v19 = sub_100035B80();
      if (sub_100060EB0(v19))
      {
        sub_1000586E8(&_mh_execute_header, v20, v21, "Unable to format: %s: unable to allocate source", v22, v23, v24, v25, "source", v33, 2u);
      }

      if (qword_100117E88)
      {
        v28 = qword_100117E88;
      }

      else
      {
        v28 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v26, v27, v28);
    }

    *__error() = v17;
  }

  sub_100035A54("RegisterExitHandlers_block_invoke", "spindump.m", 4210, "%s: unable to allocate source", a5, a6, a7, a8, "source");
  abort();
}

int *sub_1000B4AE8()
{
  v1 = *__error();
  v2 = sub_100035B80();
  if (sub_100060EB0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100077F0C();
    sub_100077F60(&_mh_execute_header, v19, v20, "sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_10007808C(v36, v8, @"sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)");
    if (v9)
    {
      if (sub_100058708(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xC9ABCB91uLL);
        sub_100046264(v15);
        v10 = &off_1000C5000;
      }

      v16 = sub_100078010(qword_100117E88);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_100035B80();
      if (sub_100060EB0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100077F20();
        sub_100077F60(&_mh_execute_header, v27, v28, "Unable to format: sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100117520 = 0;
  return result;
}

int *sub_1000B4D10(_DWORD *a1)
{
  v2 = *__error();
  v3 = sub_100035B80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v19 = *__error();
    v20 = __error();
    strerror(*v20);
    sub_100077F20();
    sub_100078060(&_mh_execute_header, v21, v22, "sysctl for kern.memorystatus_vm_pressure_level failed: %d (%s)", v23, v24, v25, v26, v35, v37, 2u);
  }

  result = __error();
  *result = v2;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v6 = *__error();
    v7 = *__error();
    v8 = __error();
    v36 = v7;
    v38 = strerror(*v8);
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sysctl for kern.memorystatus_vm_pressure_level failed: %d (%s)");
    if (v9)
    {
      v10 = v9;
      v11 = sub_100060DC4(v9);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xD806EABuLL);
        sub_100077F94(v10, v12);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v18 = qword_100117E88;
      }

      else
      {
        v18 = __stderrp;
      }

      fprintf(v18, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_100035B80();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v27 = *__error();
        v28 = __error();
        strerror(*v28);
        sub_100077F0C();
        sub_100078060(&_mh_execute_header, v29, v30, "Unable to format: sysctl for kern.memorystatus_vm_pressure_level failed: %d (%s)", v31, v32, v33, v34, v36, v38, 2u);
      }

      if (qword_100117E88)
      {
        v17 = qword_100117E88;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    result = __error();
    *result = v6;
  }

  *a1 = 0;
  qword_100117528 = 0;
  return result;
}

void sub_1000B4F64(unsigned int *a1)
{
  v1 = *a1;
  sub_100055190();
  sub_100053984();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000B4FD8(unsigned int *a1)
{
  v1 = *a1;
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

int *sub_1000B504C()
{
  v1 = *__error();
  v2 = sub_100035B80();
  if (sub_100060EB0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100077F0C();
    sub_100077F60(&_mh_execute_header, v19, v20, "sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_10007808C(v36, v8, @"sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)");
    if (v9)
    {
      if (sub_100058708(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x3015FD8AuLL);
        sub_100046264(v15);
        v10 = &off_1000C5000;
      }

      v16 = sub_100078010(qword_100117E88);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_100035B80();
      if (sub_100060EB0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100077F20();
        sub_100077F60(&_mh_execute_header, v27, v28, "Unable to format: sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100117528 = 0;
  return result;
}

void sub_1000B5260()
{
  if (byte_100117E80 == 1)
  {
    v0 = *__error();
    v1 = sub_100035B80();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "geteuid() == 0";
      v27 = 1024;
      v28 = geteuid();
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: spindump must run as root to create spindump directory (running as %d)", buf, 0x12u);
    }

    *__error() = v0;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v3 = *__error();
    v24 = geteuid();
    v5 = sub_10007808C(v24, v4, @"%s: spindump must run as root to create spindump directory (running as %d)");
    if (v5)
    {
      if (sub_100058708(v5))
      {
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x87044AF8uLL);
        sub_100046264(v17);
        v18 = &off_1000C5000;
      }

      v19 = sub_100078010(qword_100117E88);
      fprintf(v19, "%s\n", "geteuid() == 0");
      if (v18)
      {
        free(v18);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v6 = sub_100035B80();
      if (sub_100060EB0(v6))
      {
        v7 = geteuid();
        v26 = "geteuid() == 0";
        v27 = 1024;
        v28 = v7;
        sub_100077F60(&_mh_execute_header, v8, v9, "Unable to format: %s: spindump must run as root to create spindump directory (running as %d)", v10, v11, v12, v13, "geteuid() == 0", v24, 2u);
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
      }

      else
      {
        v16 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v14, v15, v16);
    }

    *__error() = v3;
  }

  geteuid();
  sub_100035A54("MakeSpindumpDirectory", "spindump.m", 4287, "%s: spindump must run as root to create spindump directory (running as %d)", v20, v21, v22, v23, "geteuid() == 0");
  abort();
}

void sub_1000B5488()
{
  sub_100055160();
  sub_100053984();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B54F8()
{
  sub_100055160();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B5568(uint64_t __errnum)
{
  if (byte_100117E80 == 1)
  {
    v2 = *__error();
    v3 = sub_100035B80();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      strerror(__errnum);
      v4 = *__error();
      v5 = __error();
      strerror(*v5);
      sub_100077FB0();
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", buf, 0x2Cu);
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v7 = *__error();
    v8 = strerror(__errnum);
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", "ret == 0", __errnum, v8, v9, v11);
    if (v12)
    {
      v19 = v12;
      v20 = sub_100060DC4(v12);
      if (v20)
      {
        v21 = v20;
        v22 = 0;
      }

      else
      {
        v21 = sub_100078020();
        sub_100077F94(v19, v21);
        v22 = v21;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v21);
      if (v22)
      {
        free(v22);
      }

      CFRelease(v19);
    }

    else
    {
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        strerror(__errnum);
        v14 = *__error();
        v15 = __error();
        strerror(*v15);
        sub_100077FB0();
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Unable to format: %s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", buf, 0x2Cu);
      }

      if (qword_100117E88)
      {
        v18 = qword_100117E88;
      }

      else
      {
        v18 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v16, v17, v18);
    }

    *__error() = v7;
  }

  strerror(__errnum);
  v24 = *__error();
  v25 = __error();
  strerror(*v25);
  sub_100035A54("MakeSpindumpDirectory_block_invoke", "spindump.m", 4299, "%s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", v26, v27, v28, v29, "ret == 0");
  abort();
}

void sub_1000B5814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100117E80 == 1)
  {
    v9 = *__error();
    v8 = sub_100035B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000462EC(&_mh_execute_header, v10, v11, "%s: /private/var/db/spindump already exists and isnt a directory!", v12, v13, v14, v15, v32, v33, 2u);
    }

    *__error() = v9;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v17 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: /private/var/db/spindump already exists and isnt a directory!");
    if (v18)
    {
      if (sub_100058708(v18))
      {
        v30 = 0;
      }

      else
      {
        v29 = sub_100078020();
        sub_100046264(v29);
        v30 = &off_1000C5000;
      }

      v31 = sub_100078010(qword_100117E88);
      fprintf(v31, "%s\n", "(((st.st_mode) & 0170000) == 0040000)");
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v19 = sub_100035B80();
      if (sub_100060EB0(v19))
      {
        sub_1000586E8(&_mh_execute_header, v20, v21, "Unable to format: %s: /private/var/db/spindump already exists and isnt a directory!", v22, v23, v24, v25, "(((st.st_mode) & 0170000) == 0040000)", v33, 2u);
      }

      if (qword_100117E88)
      {
        v28 = qword_100117E88;
      }

      else
      {
        v28 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v26, v27, v28);
    }

    *__error() = v17;
  }

  sub_100035A54("MakeSpindumpDirectory_block_invoke", "spindump.m", 4302, "%s: /private/var/db/spindump already exists and isnt a directory!", a5, a6, a7, a8, "(((st.st_mode) & 0170000) == 0040000)");
  abort();
}

void sub_1000B59E4()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000462CC(&_mh_execute_header, v2, v3, "Unable to stat %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B5A74()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100046208(&_mh_execute_header, v2, v3, "Unable to format: Unable to stat %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B5B04(uint64_t a1, _DWORD *a2)
{
  sub_100078C9C(a2, __stack_chk_guard);
  sub_100060CAC();
  sub_100078C90();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000B5B80(uint64_t a1, _DWORD *a2)
{
  sub_100078C9C(a2, __stack_chk_guard);
  sub_100060CAC();
  sub_100078C90();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000B5C40(uint64_t a1, uint64_t *a2)
{
  sub_100078CB0(a2, __stack_chk_guard);
  sub_100078C78();
  sub_100078C90();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void sub_1000B5CB4(uint64_t a1, uint64_t *a2)
{
  sub_100078CB0(a2, __stack_chk_guard);
  sub_100078C78();
  sub_100078C90();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_1000B5D28()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000462CC(&_mh_execute_header, v2, v3, "Unable to map %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B5DB8()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100046208(&_mh_execute_header, v2, v3, "Unable to format: Unable to map %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B5E48(uint64_t a1, uint64_t *a2)
{
  sub_100078CB0(a2, __stack_chk_guard);
  sub_100078C78();
  sub_100078C90();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1000B5EBC(uint64_t a1, uint64_t *a2)
{
  sub_100078CB0(a2, __stack_chk_guard);
  sub_100078C78();
  sub_100078C90();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_1000B5F30()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_1000462CC(&_mh_execute_header, v2, v3, "Unable to open %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B5FC0()
{
  sub_1000462C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100060B34();
  sub_100046208(&_mh_execute_header, v2, v3, "Unable to format: Unable to open %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000B6084()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6204()
{
  sub_1000462C0();
  sub_10008853C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_100060CAC();
  sub_10005396C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B6294()
{
  sub_1000462C0();
  sub_10008853C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_100060CAC();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B6324()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B6394()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6414()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6494()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B6504()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6584()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6638()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B66CC()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B673C()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B67BC()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B6870()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B696C()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B69EC()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B6AD4()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B6B54()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B6C3C()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B6CBC()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B6E3C()
{
  sub_1000462C0();
  v1 = sub_100088524(v0);
  sub_100035B20(v1);
  sub_10008850C();
  sub_100046164();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B6ED4()
{
  sub_1000462C0();
  v1 = sub_100088524(v0);
  sub_100035B20(v1);
  sub_10008850C();
  sub_100046164();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B6FD4()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B7054()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B713C()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B71BC()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B733C()
{
  sub_1000462C0();
  v1 = sub_100088524(v0);
  sub_100035B20(v1);
  sub_10008850C();
  sub_100046164();
  sub_1000538B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B73D4()
{
  sub_1000462C0();
  v1 = sub_100088524(v0);
  sub_100035B20(v1);
  sub_10008850C();
  sub_100046164();
  sub_100053884();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B74A0()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B7588()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B7608()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B76F0()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B7770()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B7824()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B78A4(uint64_t a1, id *a2)
{
  [*(a1 + 416) machAbsTimeSeconds];
  [*a2 machAbsTimeSeconds];
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B7950(uint64_t a1, id *a2)
{
  [*(a1 + 416) machAbsTimeSeconds];
  [*a2 machAbsTimeSeconds];
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B7A64()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7AE4()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7B64()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B7BD4()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7C54()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7CD4()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B7D44()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7DC4()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B7E44(uint64_t a1)
{
  v1 = *(a1 + 400);
  sub_100088458();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000B7EC0(unsigned int *a1)
{
  v1 = *a1;
  sub_100088458();
  sub_1000884EC(&_mh_execute_header, v2, v3, "Unable to format: Attempted to change sampling interval to %uus while already sampling/sampled at %uus", v4, v5);
}

void sub_1000B7F2C(uint64_t a1)
{
  v1 = *(a1 + 404);
  sub_100088458();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000B7FA8(unsigned int *a1)
{
  v1 = *a1;
  sub_100088458();
  sub_1000884EC(&_mh_execute_header, v2, v3, "Unable to format: Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", v4, v5);
}

void sub_1000B808C(int *a1)
{
  sub_100035B20(*a1);
  v2 = *a1;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B8198()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B8218()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B8300()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8380()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8468()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B84E8()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B85D0()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8650()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B87D0()
{
  sub_1000462C0();
  sub_10008853C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_100060CAC();
  sub_10005396C();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B8860()
{
  sub_1000462C0();
  sub_10008853C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_100060CAC();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B8958()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B89C8()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8A48()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8B30()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8BB0()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B8C30(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Already not sampling when stopped with reason %d", v2, 8u);
}

void sub_1000B8D20(int *a1)
{
  sub_100060EE0(a1);
  v2 = *a1;
  sub_1000461C8();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_1000B8DC8(int *a1)
{
  sub_100060EE0(a1);
  v2 = *a1;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_1000B8E94()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B8F48()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B8FFC()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B90E4()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9164()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9218()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9300()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9380()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9468()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B94E8()
{
  sub_1000462C0();
  sub_100088470(v0);
  sub_10008848C();
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B9668()
{
  sub_1000462C0();
  sub_100035B20(*(*v0 + 72));
  sub_10008848C();
  sub_100060CAC();
  sub_10005396C();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B9704()
{
  sub_1000462C0();
  sub_100035B20(*(*v0 + 72));
  sub_10008848C();
  sub_100060CAC();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B97D8()
{
  sub_1000462C0();
  sub_100060EE0(v1);
  v2 = *v0;
  sub_100060CAC();
  sub_100053884();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9858(uint64_t a1, uint64_t a2)
{
  sub_1000884D8(a2, __stack_chk_guard);
  sub_100088498();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_1000B98D4(uint64_t a1, uint64_t a2)
{
  sub_1000884D8(a2, __stack_chk_guard);
  sub_100088498();
  sub_100060CD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_1000B9950()
{
  sub_1000462C0();
  sub_100035B20(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100060C30();
  sub_1000884BC();
  sub_1000538B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}