void *sub_1000A4190(uint64_t a1)
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
      sub_1000C7B6C(a1 + 32);
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
    sub_1000C7D7C(v2);
  }

  return result;
}

id sub_1000A4234(void *a1)
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

uint64_t sub_1000A4398(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A43B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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
    v18 = sub_1000A10B4(v8, a3, v17, *(*(*(a1 + 88) + 8) + 40), *(a1 + 105), &v48);
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
    v14 = sub_1000A0E84(*(a1 + 96), a3, *(a1 + 40), 0);
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

void sub_1000A484C(uint64_t a1, uint64_t a2, void *a3)
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
    v30[2] = sub_1000A4C34;
    v30[3] = &unk_100115FA0;
    v11 = v4;
    v31 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
    [v11 symbolicateAllInstructionsWithOptions:628 pid:0xFFFFFFFFLL];
    [v11 clearCoreSymbolicationCache];
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v12 = *__error();
      v13 = sub_10003E080();
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

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
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

        if (qword_100127ED0)
        {
          v29 = qword_100127ED0;
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
        v27 = sub_10003E080();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000C7F8C(v4, v27);
        }

        if (qword_100127ED0)
        {
          v28 = qword_100127ED0;
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

void sub_1000A4C34(uint64_t a1, void *a2, void *a3)
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
      if (byte_100127EC8 == 1)
      {
        v22 = *__error();
        v23 = sub_10003E080();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000C8078(v5, v8);
        }

        *__error() = v22;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
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

          if (qword_100127ED0)
          {
            v34 = qword_100127ED0;
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
          v32 = sub_10003E080();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_1000C8130(v5, v8);
          }

          if (qword_100127ED0)
          {
            v33 = qword_100127ED0;
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

id sub_1000A5020(uint64_t a1)
{
  v2 = [*(a1 + 32) rangeWithName:@"offsetIntoSymbol"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && (v2 = [*(a1 + 32) rangeWithName:@"offsetIntoUnknownSymbol"], v2 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = -1;
  }

  else
  {
    v5 = [*(a1 + 40) substringWithRange:{v2, v3}];
    v4 = sub_1000A2DC0(v5);
  }

  v6 = [*(a1 + 32) rangeWithName:@"sourceLineNumber"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) substringWithRange:{v6, v7}];
    v8 = sub_1000A2DC0(v9);
  }

  v10 = [*(a1 + 32) rangeWithName:@"sourceColumnNumber"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = [*(a1 + 40) substringWithRange:{v10, v11}];
    v12 = sub_1000A2DC0(v13);
  }

  v14 = [*(a1 + 32) rangeWithName:@"offsetIntoBinary"];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = -1;
  }

  else
  {
    v17 = [*(a1 + 40) substringWithRange:{v14, v15}];
    v16 = sub_1000A2DC0(v17);
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);

  return sub_1000A51AC(v18, v4, v19, v8, v12, v20, v16);
}

id sub_1000A51AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
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

void sub_1000A533C(uint64_t a1, void *a2, void *a3)
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

  v15 = sub_1000A51AC(v7, v10 + v11, v12, v13, v14, *(a1 + 40), *(a1 + 56));

  [*(a1 + 48) addObject:v15];
}

void sub_1000A543C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  v7 = [*(a1 + 32) firstMatchInString:v24 options:0 range:{0, objc_msgSend(v24, "length")}];
  if (v7)
  {
    *a4 = 1;
    v9 = sub_1000A0FE4(v24, v7, *(a1 + 116), *(a1 + 104), *(a1 + 108)) > *(a1 + 112) && ((*(a1 + 117) & 1) != 0 || [v7 rangeWithName:@"kernelDot"] == 0x7FFFFFFFFFFFFFFFLL);
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
            v14 = sub_1000A10B4(v24, a3, v7, *(a1 + 56), *(a1 + 116), &v25);
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
                v23 = sub_1000A2DC0(v22);

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

void sub_1000A56B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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
      sub_1000C81E8(v15, a3);
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

const char *sub_1000A57B8(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Thread QoS Unknown";
  }

  else
  {
    return (&off_100116088)[a1 - 1];
  }
}

uint64_t sub_1000A57E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_1000A57F4(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_1000A5858(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_fault_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

void sub_1000A5878(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

const char *sub_1000A5898(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_1000A58B4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void sub_1000A58D4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x1Cu);
}

void sub_1000A58F0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x1Cu);
}

BOOL sub_1000A595C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL sub_1000A5974(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

CFStringRef sub_1000A598C(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

BOOL sub_1000A59D0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_1000A5A4C(uint64_t *a1)
{
  v1 = *a1;
  sub_10003DF3C();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Found pid %s [%d]", v3, 0x12u);
}

void sub_1000A5AC8(uint64_t *a1)
{
  v1 = *a1;
  sub_10003DF3C();
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: Found pid %s [%d]", v3, 0x12u);
}

void sub_1000A5B44(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found pid [%d]", v2, 8u);
}

void sub_1000A5BBC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Found pid [%d]", v2, 8u);
}

void sub_1000A5C34(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: %s", &v2, 0xCu);
}

void sub_1000A5CC0()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000A5D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v10 = sub_10003E080();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = "thread || dispatchQueue";
      sub_10004E7EC(&_mh_execute_header, v11, v12, "%s: No thread nor dispatch queue", v13, v14, v15, v16, v28, v29, 2u);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
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
        sub_10004E764(v25);
        v26 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "thread || dispatchQueue";
        sub_10004E6F0(&_mh_execute_header, v20, v21, "Unable to format: %s: No thread nor dispatch queue", buf);
      }

      if (qword_100127ED0)
      {
        v22 = qword_100127ED0;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    *__error() = v18;
  }

  sub_10003DF54("[SPWRReport initWithReportReason:reportedSignpostTracker:task:timeRange:thread:dispatchQueue:]", "monitor-WorkflowResponsiveness.m", 88, "%s: No thread nor dispatch queue", a5, a6, a7, a8, "thread || dispatchQueue");
  abort();
}

void sub_1000A5F30(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10004E6C8();
  sub_10004E728(&_mh_execute_header, v3, v4, "Unable to format: WR: %@: Received tailspin path %s");
}

void sub_1000A6248(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138412546;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  sub_10004E748(&_mh_execute_header, "Unable to format: WR: %@: generating %lu spindump reports", a2, a4);
}

void sub_1000A6294()
{
  sub_10004E69C();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_10004E7A4(&_mh_execute_header, "WR: %@: Unable to compare timesamps with tailspin data (%{public}@)", v4, v5);
}

void sub_1000A62E8()
{
  sub_10004E69C();
  sub_10004E684(v1, v2, v3, 5.778e-34);
  sub_10004E748(&_mh_execute_header, "Unable to format: WR: %@: Unable to compare timesamps with tailspin data (%@)", v4, v5);
}

void sub_1000A632C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10004E6F0(&_mh_execute_header, a3, a3, "WR: have %lu reports, but no sampleStore", a1);
}

void sub_1000A636C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10004E6F0(&_mh_execute_header, a3, a3, "Unable to format: WR: have %lu reports, but no sampleStore", a1);
}

void sub_1000A6414()
{
  sub_10004E69C();
  sub_10004E684(v1, v2, v3, 5.778e-34);
  sub_10004E7A4(&_mh_execute_header, "WR: %@: error in DRShouldGatherLog call: %@", v4, v5);
}

void sub_1000A6458()
{
  sub_10004E69C();
  sub_10004E684(v1, v2, v3, 5.778e-34);
  sub_10004E748(&_mh_execute_header, "Unable to format: WR: %@: error in DRShouldGatherLog call: %@", v4, v5);
}

void sub_1000A6654()
{
  sub_10004E69C();
  sub_10004E684(v1, v2, v3, 5.778e-34);
  sub_10004E7A4(&_mh_execute_header, "WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v4, v5);
}

void sub_1000A6698()
{
  sub_10004E69C();
  sub_10004E684(v1, v2, v3, 5.778e-34);
  sub_10004E748(&_mh_execute_header, "Unable to format: WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v4, v5);
}

void sub_1000A6A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v10 = sub_10003E080();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = "sampleStore";
      sub_10004E7EC(&_mh_execute_header, v11, v12, "%s: TidToPidDictPromise called with no sample store", v13, v14, v15, v16, v28, v29, 2u);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
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
        sub_10004E764(v25);
        v26 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "sampleStore";
        sub_10004E6F0(&_mh_execute_header, v20, v21, "Unable to format: %s: TidToPidDictPromise called with no sample store", buf);
      }

      if (qword_100127ED0)
      {
        v22 = qword_100127ED0;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    *__error() = v18;
  }

  sub_10003DF54("DoWorkflowResponsivenessDelay_block_invoke", "monitor-WorkflowResponsiveness.m", 887, "%s: TidToPidDictPromise called with no sample store", a5, a6, a7, a8, "sampleStore");
  abort();
}

void sub_1000A6C98(uint64_t a1, void *a2)
{
  v9 = [a2 name];
  [a2 pid];
  sub_10004E708(&_mh_execute_header, v3, v4, "Unable to format: WR: %@ generating overall workflow report for %@ [%d]", v5, v6, v7, v8, 2u);
}

void sub_1000A6E44()
{
  sub_10004E7C0();
  sub_10003E020([v0 pid]);
  sub_10004E80C();
  sub_10004E664();
  sub_10004E7CC(&_mh_execute_header, v1, v2, "%s [%d]: %s: Unable to set target thread", v3, v4, v5, v6, v7);
}

void sub_1000A6ED8()
{
  sub_10004E7C0();
  sub_10003E020([v0 pid]);
  sub_10004E80C();
  sub_10004E664();
  sub_10004E708(&_mh_execute_header, v1, v2, "Unable to format: %s [%d]: %s: Unable to set target thread", v3, v4, v5, v6, v7);
}

void sub_1000A705C()
{
  sub_10004E7C0();
  sub_10003E020([v0 pid]);
  sub_10004E80C();
  sub_10004E664();
  sub_10004E7CC(&_mh_execute_header, v1, v2, "%s [%d]: %s: Unable to set target dispatch queue", v3, v4, v5, v6, v7);
}

void sub_1000A70F0()
{
  sub_10004E7C0();
  sub_10003E020([v0 pid]);
  sub_10004E80C();
  sub_10004E664();
  sub_10004E708(&_mh_execute_header, v1, v2, "Unable to format: %s [%d]: %s: Unable to set target dispatch queue", v3, v4, v5, v6, v7);
}

void sub_1000A720C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A727C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A72EC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7374()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A73FC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A746C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A74DC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7564()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A75EC()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A767C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000A770C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_10005BEC4();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000A77AC()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_10005BEC4();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000A784C(os_log_t log)
{
  v1 = 136315138;
  v2 = "0 != strcmp(/, expectedRealDir)";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", &v1, 0xCu);
}

void sub_1000A7950()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BE6C();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A79E0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7A70(os_log_t log)
{
  v1 = 136315138;
  v2 = "expectedRealDir";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", &v1, 0xCu);
}

void sub_1000A7B74()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BE6C();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7C04()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7C94()
{
  sub_10004E6C8();
  WORD2(v3) = 2080;
  HIWORD(v3) = v0;
  sub_10004E728(&_mh_execute_header, v0, v1, "NULL realDir (dir %s from %s)", v2, v3);
}

void sub_1000A7D08()
{
  sub_10004E6C8();
  WORD2(v3) = 2080;
  HIWORD(v3) = v0;
  sub_10004E728(&_mh_execute_header, v0, v1, "Unable to format: NULL realDir (dir %s from %s)", v2, v3);
}

void sub_1000A7D7C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7DEC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7E5C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7EE4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A7F6C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A7FDC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A804C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A80D4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A815C(unsigned __int8 a1)
{
  sub_100090EE4(a1);
  sub_10004E6C8();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A81E0(unsigned __int8 a1)
{
  sub_100090EE4(a1);
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000A8264(int *a1, unsigned __int8 a2)
{
  sub_10003E020(*a1);
  sub_10005BF20();
  sub_100090EE4(a2);
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A8320(int *a1, unsigned __int8 a2)
{
  sub_10003E020(*a1);
  sub_10005BF20();
  sub_100090EE4(a2);
  sub_10005BD0C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A83CC()
{
  sub_10005BE54();
  v2 = v1;
  sub_10003E020(*v1);
  v3 = *v2;
  v4 = *v0;
  sub_10004E6C8();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000A8478(uint64_t *a1)
{
  v1 = *sub_10005BFB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005BD0C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A8518(uint64_t *a1)
{
  v1 = *sub_10005BFB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005BD0C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A85B8()
{
  sub_10005BE54();
  sub_10005BF9C(v1);
  sub_10005BF20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_10005BD50();
  sub_10005BDB4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_1000A8664()
{
  sub_10005BE54();
  sub_10005BF9C(v1);
  sub_10005BF20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_10005BD50();
  sub_10005BD84();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_1000A8710(uint64_t *a1)
{
  v1 = *sub_10005BFB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005BD0C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A87B0(uint64_t *a1)
{
  v1 = *sub_10005BFB4(a1);
  v2 = __error();
  strerror(*v2);
  sub_10005BD0C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000A8850()
{
  sub_10005BE54();
  sub_10005BF9C(v1);
  sub_10005BF20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_10005BD50();
  sub_10005BDB4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_1000A88FC()
{
  sub_10005BE54();
  sub_10005BF9C(v1);
  sub_10005BF20();
  v2 = *v0;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_10005BD50();
  sub_10005BD84();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_1000A89A8()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000A8A64()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000A8B1C()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000A8BD8()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000A8C94()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000A8D4C()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000A8E08()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000A8EC4()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000A8F7C()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A8FEC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A905C()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000A9118()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000A91D4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A9260()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A92EC()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9328()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9364()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A93E4()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A9464()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A94A0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A94DC()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A955C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A95DC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000A964C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A96D8()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9714()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A9750()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A97D0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A9850()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000A988C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000A990C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A99A0()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCB8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000A9A50()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BF90();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A9ADC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BF90();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A9B68()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BF90();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A9BF4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BF90();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000A9C94()
{
  sub_10005BE0C();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A9D08()
{
  sub_10005BE0C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A9D7C()
{
  sub_10005BE0C();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A9DF0()
{
  sub_10005BE0C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000A9E64()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000A9F20()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000A9FD8()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000AA094()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000AA150()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000AA208()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000AA2C4()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000AA380()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000AA438()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AA4A8()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AA518()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000AA5D4()
{
  sub_10005BF08();
  sub_10005BDEC();
  sub_10003E020(v0);
  v1 = [sub_10005BEB8() total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE60() total];
  [v2 num_missing_load_info];
  sub_10005BF2C();
  sub_10005BC64();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  sub_10005BEF0();
}

void sub_1000AA690()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AA71C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AA7A8()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA7E4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA820()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AA8A0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AA920()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA95C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AA998()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AAA18()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AAA98()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AAAD4()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AAB54()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AAB90()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AABCC()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AAC4C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AACCC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AAD3C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AADC8()
{
  sub_10005BF08();
  sub_10005BEA8();
  v2 = [sub_10005BF44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_10005BEB8() total];
  [v3 num_missing_load_info];
  sub_10005BF78();
  sub_10005BD24();
  sub_10005BDC4();
  sub_10005BE90();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);

  sub_10005BEF0();
}

void sub_1000AAE84()
{
  sub_10005BF08();
  sub_10005BEA8();
  v2 = [sub_10005BF44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_10005BEB8() total];
  [v3 num_missing_load_info];
  sub_10005BF78();
  sub_10005BD24();
  sub_10005BDC4();
  sub_10005BDDC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_10005BEF0();
}

void sub_1000AAF3C()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000AAFF8()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000AB0B0()
{
  sub_10005BF08();
  sub_10005BEA8();
  v2 = [sub_10005BF44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_10005BEB8() total];
  [v3 num_missing_load_info];
  sub_10005BF78();
  sub_10005BD24();
  sub_10005BDC4();
  sub_10005BDDC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_10005BEF0();
}

void sub_1000AB168()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000AB220()
{
  sub_10005BF08();
  sub_10005BEA8();
  v2 = [sub_10005BF44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_10005BEB8() total];
  [v3 num_missing_load_info];
  sub_10005BF78();
  sub_10005BD24();
  sub_10005BDC4();
  sub_10005BE90();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x2Au);

  sub_10005BEF0();
}

void sub_1000AB2DC()
{
  sub_10005BF08();
  sub_10005BEA8();
  v2 = [sub_10005BF44(v0 v1)];
  [v2 num_out_of_order];
  v3 = [sub_10005BEB8() total];
  [v3 num_missing_load_info];
  sub_10005BF78();
  sub_10005BD24();
  sub_10005BDC4();
  sub_10005BDDC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x2Au);

  sub_10005BEF0();
}

void sub_1000AB474()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BE90();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  sub_10005BF50();
}

void sub_1000AB530()
{
  sub_10005BF64();
  sub_10005BE78();
  v1 = [v0 total];
  [v1 num_out_of_order];
  v2 = [sub_10005BE9C() total];
  [v2 num_missing_load_info];
  [sub_10005BE60() bytes_not_microstackshots];
  sub_10005BC98();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);

  sub_10005BF50();
}

void sub_1000AB5E8()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB658()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB6C8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB704()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB740()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB77C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB7B8()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB828()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB898()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB8D4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AB910()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB980()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AB9F0()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABA2C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABAD0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ABB40()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ABBB0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ABC20()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABC5C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABC98()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ABD08()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABE14()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABE50()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000ABE8C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000ABF0C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000ABF8C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ABFFC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AC158()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC194()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC1D0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC250()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC2D0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC340()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AC49C()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC4D8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AC514()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC594()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AC614()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC684()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_10005BCDC();
  sub_10005BDFC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AC710()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000AC7A0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000AC830()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC8A0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC910()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC980()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AC9F0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ACA60()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ACAD0()
{
  sub_10005D6A8();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACB48()
{
  sub_10005D6A8();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACCB8()
{
  sub_10005D69C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ACD34()
{
  sub_10005D66C(__stack_chk_guard);
  sub_10005D67C();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000ACDB4()
{
  sub_10005D66C(__stack_chk_guard);
  sub_10005D67C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000ACE34()
{
  sub_10005D66C(__stack_chk_guard);
  sub_10005D67C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_1000ACEC0()
{
  sub_10005D66C(__stack_chk_guard);
  sub_10005D6F0();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_1000ACF5C()
{
  sub_10005D6A8();
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000ACFD4()
{
  sub_10005D6A8();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD04C()
{
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000AD0E4()
{
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000AD170()
{
  sub_10005D6E0();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD1E8()
{
  sub_10005D6E0();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD260()
{
  sub_10005D6E0();
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD354()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD3C4(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AD434(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE3C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AD50C()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD5F8()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD668(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AD6D8(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE3C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000AD7B0()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD888()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000AD938(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  v4 = 2114;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Tasking setting for %{public}@: %{public}@ isn't a number", v3, 0x16u);
}

void sub_1000AD9BC(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005D650();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000ADA38(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  v2 = **v1;
  sub_10005D69C();
  sub_10005D650();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000ADABC(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10005D69C();
  sub_10005D650();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000ADB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(&_mh_execute_header, v11, v12, "%s: unable to allocate communication queue", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to allocate communication queue");
    if (v19)
    {
      v28 = sub_100060C08(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xC53281FFuLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v31 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100060BE8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to allocate communication queue", v23, v24, v25, v26, "communication_queue", v33, 2u);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_10003DF54("startup_ports", "reading.m", 98, "%s: unable to allocate communication queue", a5, a6, a7, a8, "communication_queue");
  abort();
}

void sub_1000ADD2C(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_10004E6C8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got xpc error for peer: %{public}s", v3, 0xCu);
}

void sub_1000ADDC0(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000ADE40(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5[0] = 67109378;
  v5[1] = v4;
  v6 = 2082;
  string = xpc_dictionary_get_string(xdict, _xpc_error_key_description);
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Got xpc error message in libspindump client [%d] connection: %{public}s", v5, 0x12u);
}

void sub_1000ADEF0()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ADF64()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000ADFD8()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE04C()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE538()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE5AC()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE620()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE694()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE910()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE984()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AE9F8()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEA6C()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEAE0()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEB54()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEC30()
{
  sub_100060BDC();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AECA4()
{
  sub_100060BDC();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AEF54(int a1, NSObject *a2)
{
  sub_10003E020(a1);
  sub_100060BC8();
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Attemping to generate spindump, but not entitled", v4, 0x12u);
}

void sub_1000AEFE4(int a1)
{
  sub_10003E020(a1);
  sub_100060BC8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AF06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(&_mh_execute_header, v11, v12, "%s: unable to create reply", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to create reply");
    if (v19)
    {
      v28 = sub_100060C08(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xE380D1C0uLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v31 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100060BE8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to create reply", v23, v24, v25, v26, "reply", v33, 2u);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_10003DF54("SPHandleGenerateSpindump", "reading.m", 279, "%s: unable to create reply", a5, a6, a7, a8, "reply");
  abort();
}

void sub_1000AF25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(&_mh_execute_header, v11, v12, "%s: unable to get connection", v13, v14, v15, v16, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v18 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to get connection");
    if (v19)
    {
      v28 = sub_100060C08(v19);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xFC1EAA4FuLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v31 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100060BE8(&_mh_execute_header, v21, v22, "Unable to format: %s: unable to get connection", v23, v24, v25, v26, "connection", v33, 2u);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
    }

    *__error() = v18;
  }

  sub_10003DF54("SPHandleGenerateSpindump", "reading.m", 277, "%s: unable to get connection", a5, a6, a7, a8, "connection");
  abort();
}

void sub_1000AF44C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF4BC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AF52C(int a1)
{
  sub_10003E020(a1);
  sub_100060BC8();
  sub_100060C24();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AF5C0(int a1)
{
  sub_10003E020(a1);
  sub_100060BC8();
  sub_100060C24();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000AF654(int a1)
{
  sub_10003E020(a1);
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000AF6E8()
{
  sub_10005BD94();
  sub_10003E020(*(v2 + 84));
  v3 = *(v1 + 84);
  v4 = *v0;
  sub_10006206C();
  sub_10004E7CC(&_mh_execute_header, v5, v6, "Child %s [%d] output exceeded %llu bytes", v7, v8, v9, v10, v11);
}

void sub_1000AF774()
{
  sub_10005BD94();
  sub_10003E020(*v2);
  v3 = *v1;
  v4 = *v0;
  sub_10006206C();
  sub_10005BD84();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000AF808(uint64_t a1)
{
  sub_10003E020(*(a1 + 64));
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  sub_10006206C();
  sub_10004E7CC(&_mh_execute_header, v4, v5, "Child %s [%d] timed out after %llus", v6, v7, v8, v9, v10);
}

void sub_1000AF890()
{
  sub_10005BD94();
  sub_10003E020(*v2);
  v3 = *v1;
  v4 = *v0;
  sub_10006206C();
  sub_10005BD84();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000AF924(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 112);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Child [%d] exited", v3, 8u);
}

void sub_1000AF9A0(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Child [%d] exited", v3, 8u);
}

void sub_1000AFA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v11 = sub_10003E080();
    if (sub_100069398(v11))
    {
      v35 = "!sampleStore";
      sub_10004E7EC(&_mh_execute_header, v12, v13, "%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", v14, v15, v16, v17, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v19 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", "!sampleStore");
    if (v20)
    {
      v27 = v20;
      v28 = sub_1000692C4(v20);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x79B3D897uLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v31 = qword_100127ED0;
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
      v21 = sub_10003E080();
      if (sub_1000693B0(v21))
      {
        *buf = 136315138;
        v35 = "!sampleStore";
        sub_100069220(&_mh_execute_header, v22, v23, "Unable to format: %s: _HandleMicrostackshots returned a SASampleStore when saving to a file", buf);
      }

      if (qword_100127ED0)
      {
        v26 = qword_100127ED0;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v19;
  }

  sub_10003DF54("SaveMicrostackshotsToFile", "microstackshot.m", 89, "%s: _HandleMicrostackshots returned a SASampleStore when saving to a file", a5, a6, a7, a8, "!sampleStore");
  abort();
}

void sub_1000B01E4()
{
  sub_10005BD94();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069144();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000B027C()
{
  sub_10005BD94();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069144();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000B0318()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B03B0()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B044C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B0518()
{
  sub_10005BD94();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069144();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000B05B4()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B064C()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B06E8()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B0780()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B081C()
{
  sub_100069174();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B088C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B08FC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B0984()
{
  sub_100069174();
  sub_1000691D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B09F4()
{
  sub_100069174();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B0A64()
{
  sub_10004E6C8();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B0AD4()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B0B44()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B0BCC()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B0C54(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  [v2 unsignedIntValue];
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B0D04()
{
  sub_100069174();
  sub_1000691D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B0D74()
{
  sub_100069174();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B0DE4()
{
  sub_10004E6C8();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B0E54()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B0EC4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B0F4C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B0FD4()
{
  sub_10004E6C8();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B1044()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B10B4()
{
  sub_100060BC8();
  sub_1000691D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B1128()
{
  sub_100060BC8();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B119C()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B11D8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B1214(int a1)
{
  sub_10003E020(a1);
  sub_100060BC8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B129C(int a1)
{
  sub_10003E020(a1);
  sub_100060BC8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B1324()
{
  sub_100069174();
  sub_1000691D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1394()
{
  sub_100069174();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B1404()
{
  sub_10004E6C8();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B1474()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B14E4()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B156C()
{
  sub_10005BD94();
  sub_10003E020(v0);
  sub_1000690F8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B15F4()
{
  sub_10005BE54();
  [v0 systemstatsFormat];
  sub_10006919C();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000B168C()
{
  sub_10005BE54();
  [v0 systemstatsFormat];
  sub_10006919C();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000B1724()
{
  sub_10005BE54();
  sub_1000692C4(v0);
  sub_10004E6C8();
  sub_1000693D4();
  sub_100069200();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B17B4()
{
  sub_10005BE54();
  sub_1000692C4(v0);
  sub_10004E6C8();
  sub_1000693D4();
  sub_100069200();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B1844()
{
  sub_10006918C();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B18C4()
{
  sub_10006918C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B1944()
{
  sub_10005BE54();
  sub_10003E020(v0);
  sub_100060BC8();
  sub_1000692DC();
  sub_100069278();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000B19E4()
{
  sub_10005BE54();
  sub_10003E020(v0);
  sub_100060BC8();
  sub_1000692DC();
  sub_100069278();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000B1A84(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_100060BBC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1AF4(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE3C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1B64(uint64_t *a1, unsigned int *a2)
{
  sub_100069288(a1, a2, __stack_chk_guard);
  sub_10006919C();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B1BDC(uint64_t *a1, unsigned int *a2)
{
  sub_100069288(a1, a2, __stack_chk_guard);
  sub_10006919C();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B1C54()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B1C90()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B1CCC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B1D4C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B1DCC(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_100060BBC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1E3C(uint64_t *a1)
{
  sub_10005D6B8(a1, __stack_chk_guard);
  sub_10005D69C();
  sub_10005BE3C();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B1EAC(uint64_t *a1, unsigned int *a2)
{
  sub_100069288(a1, a2, __stack_chk_guard);
  sub_10006919C();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B1F24(uint64_t *a1, unsigned int *a2)
{
  sub_100069288(a1, a2, __stack_chk_guard);
  sub_10006919C();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B1F9C()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B1FD8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2014()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2094()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2114(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100069214();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000B21B8(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100069214();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000B225C(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B2300()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B23A8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B23E4()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B2478(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B251C(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B25C0()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2668()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2710()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B274C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2788()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B281C()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B28B0(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B2954()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B29FC()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2A38()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B2ACC(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B2B70(void *a1)
{
  v1 = [a1 targetProcess];
  v2 = [v1 name];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000B2C14()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2CBC()
{
  sub_10004E7C0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069358();
  sub_10006911C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B2D64()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2DA0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2DDC()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B2E70()
{
  sub_10004E7C0();
  sub_10003E020([v0 targetProcessId]);
  sub_100069328();
  sub_100069130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B2F04()
{
  sub_10005BE54();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060BC8();
  sub_1000691C4();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
}

void sub_1000B2FB0()
{
  sub_10005BE54();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_100060BC8();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B3058()
{
  sub_10005BD94();
  v2 = [v1 targetProcess];
  v3 = [v2 name];
  [v0 targetProcessId];
  sub_10006918C();
  sub_10005BF90();
  sub_1000691C4();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x18u);
}

void sub_1000B311C()
{
  sub_10005BD94();
  v2 = [v1 targetProcess];
  v3 = [v2 name];
  [v0 targetProcessId];
  sub_10006918C();
  sub_10005BF90();
  sub_10005BD84();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1000B32C4()
{
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  sub_10006911C();
  sub_10005BF90();
  sub_1000691C4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x18u);
}

void sub_1000B3364()
{
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  sub_10006911C();
  sub_10005BF90();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000B3400()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B3470()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B34E0(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100069214();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000B3590(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100069214();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000B3640()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B367C()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B36B8()
{
  sub_10005BE54();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000692C4(v2);
  sub_10004E6C8();
  sub_1000693D4();
  sub_100069200();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B3770()
{
  sub_10005BE54();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000692C4(v2);
  sub_10004E6C8();
  sub_1000693D4();
  sub_100069200();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000B3828()
{
  sub_10005BF64();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000692C4(v2);
  [sub_1000693C8() targetProcessId];
  sub_10006918C();
  sub_1000692DC();
  sub_1000691E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);

  sub_10005BF50();
}

void sub_1000B3900()
{
  sub_10005BF64();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  sub_1000692C4(v2);
  [sub_1000693C8() targetProcessId];
  sub_10006918C();
  sub_1000692DC();
  sub_10005BDDC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);

  sub_10005BF50();
}

void sub_1000B39D8()
{
  sub_10006918C();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B3A58()
{
  sub_10006918C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000B3AD8()
{
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  sub_10006911C();
  sub_1000692DC();
  sub_100069278();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000B3B80()
{
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  sub_10006911C();
  sub_1000692DC();
  sub_100069278();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000B3C28()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B3C98()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B3D50()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B3E08()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B3EC4()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B3F80()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4018()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B40B0()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B415C()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B4208()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B42C0()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B4378()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B4434()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B44F0()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4588()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4620()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B46CC()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B4778()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B4830()
{
  sub_10005BF64();
  sub_100069298();
  v1 = [v0 targetProcess];
  v2 = [v1 name];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_1000690C8();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);

  sub_10005BF50();
}

void sub_1000B48E8()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_1000691E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B49A4()
{
  sub_100069384();
  sub_1000691F0();
  v2 = [v1 targetProcess];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  sub_100069340();
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069058();
  sub_10005BDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x2Cu);

  sub_100069370();
}

void sub_1000B4A60()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4AF8()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000B4B90()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B4C3C()
{
  sub_100069384();
  sub_10005BD94();
  sub_10003E020([v0 targetProcessId]);
  [sub_10005BE9C() targetProcessId];
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
  sub_100069370();
}

void sub_1000B4CE8(void *a1)
{
  [a1 numSamples];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B4D68(void *a1)
{
  [a1 numSamples];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B5024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v11 = *__error();
    v12 = sub_10003E080();
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

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: buf %lu, cap %lu", "bufLength < bufCapacity", a1, a2);
    if (v15)
    {
      v20 = v15;
      v21 = sub_1000692C4(v15);
      if (v21)
      {
        v10 = v21;
        v23 = 0;
      }

      else
      {
        malloc_type_calloc(0x400uLL, 1uLL, 0x16158986uLL);
        v22 = sub_10005BE9C();
        CFStringGetCString(v22, &off_1000CE000, 1024, 0x8000100u);
        v23 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v24 = qword_100127ED0;
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
      v16 = sub_10003E080();
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

      if (qword_100127ED0)
      {
        v19 = qword_100127ED0;
      }

      else
      {
        v19 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v17, v18, v19);
    }

    *__error() = v14;
  }

  sub_10003DF54("_ParseMicrostackshot", "microstackshot.m", 952, "%s: buf %lu, cap %lu", a5, a6, a7, a8, "bufLength < bufCapacity");
  abort();
}

void sub_1000B5288(int *a1)
{
  v6 = *a1;
  sub_1000691D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B530C(int *a1)
{
  v6 = *a1;
  sub_10005D650();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B5390(int *a1)
{
  strerror(*a1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B5418(int *a1)
{
  strerror(*a1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B54A0()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B54DC()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v11 = sub_10003E080();
    if (sub_100069398(v11))
    {
      v35 = "gzfile";
      sub_10004E7EC(&_mh_execute_header, v12, v13, "%s: No tracebuf nor gzfile", v14, v15, v16, v17, v32, v33, 2u);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v19 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No tracebuf nor gzfile", "gzfile");
    if (v20)
    {
      v27 = v20;
      v28 = sub_1000692C4(v20);
      if (v28)
      {
        v9 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x68C5106AuLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v31 = qword_100127ED0;
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
      v21 = sub_10003E080();
      if (sub_1000693B0(v21))
      {
        *buf = 136315138;
        v35 = "gzfile";
        sub_100069220(&_mh_execute_header, v22, v23, "Unable to format: %s: No tracebuf nor gzfile", buf);
      }

      if (qword_100127ED0)
      {
        v26 = qword_100127ED0;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v19;
  }

  sub_10003DF54("_ParseMicrostackshot", "microstackshot.m", 900, "%s: No tracebuf nor gzfile", a5, a6, a7, a8, "gzfile");
  abort();
}

void sub_1000B56F8()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B5734()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B5784()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B57C0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B57FC()
{
  sub_1000692E8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B5870()
{
  sub_1000692E8();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B58E4()
{
  sub_1000692E8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000B5994()
{
  sub_10005BF64();
  sub_10005BD94();
  [v2 processName];
  objc_claimAutoreleasedReturnValue();
  [sub_10005BE9C() processID];
  v3 = [v0 processMainBinaryUUID];
  sub_10006911C();
  sub_1000692A4();
  sub_1000691C4();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x26u);

  sub_10005BF50();
}

void sub_1000B5A4C()
{
  sub_10005BF64();
  sub_10005BD94();
  [v2 processName];
  objc_claimAutoreleasedReturnValue();
  [sub_10005BE9C() processID];
  v3 = [v0 processMainBinaryUUID];
  sub_10006911C();
  sub_1000692A4();
  sub_10005BD84();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x26u);

  sub_10005BF50();
}

void sub_1000B5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100069384();
  a23 = v25;
  a24 = v26;
  sub_100069298();
  v28 = v27;
  v29 = [v27 processName];
  [v28 processID];
  [v28 threadID];
  v30 = [sub_1000693C8() processMainBinaryUUID];
  sub_10006923C();
  _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Including microstackshot for %@ [%d] thread 0x%llx at %s (%@)", &a9, 0x30u);

  sub_100069370();
}

void sub_1000B5BC8()
{
  sub_100069384();
  sub_100069298();
  v1 = v0;
  v2 = [v0 processName];
  [v1 processID];
  [v1 threadID];
  v3 = [sub_1000693C8() processMainBinaryUUID];
  sub_10006923C();
  sub_10005BDDC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x30u);

  sub_100069370();
}

void sub_1000B5C88(unsigned int a1, char a2)
{
  sub_100033E24(a1, a2 & 1);
  sub_10004E6C8();
  sub_1000691C4();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1000B5D10()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B5D80(void *a1, NSObject *a2)
{
  v3 = [a1 sampleStore];
  v4 = [v3 targetProcess];
  v5 = [v4 name];
  [v5 UTF8String];
  v6[0] = 136315394;
  sub_10006AF08();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: %s: DID_MANUAL status while reporting", v6, 0x16u);
}

void sub_1000B5E60(void *a1, NSObject *a2)
{
  v3 = [a1 sampleStore];
  v4 = [v3 targetProcess];
  v5 = [v4 name];
  [v5 UTF8String];
  v6[0] = 136315394;
  sub_10006AF08();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: DID_MANUAL status while reporting", v6, 0x16u);
}

void sub_1000B5F68(void *a1)
{
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcess];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_10006AEB4();
      sub_10006AE30(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcess];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_10006AEE4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_10006AE70();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x91BAE2E9uLL);
        sub_10006ADC4(v34);
        v35 = v15;
      }

      if (qword_100127ED0)
      {
        v36 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (sub_10006AECC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcess];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_10006AEB4();
        sub_10006AE50(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcess];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_10003DF54("SaveReport", "reporting.m", 432, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

void sub_1000B62BC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B632C(void *a1)
{
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcesses];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_10006AEB4();
      sub_10006AE30(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcesses];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_10006AEE4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_10006AE70();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x24747E20uLL);
        sub_10006ADC4(v34);
        v35 = v15;
      }

      if (qword_100127ED0)
      {
        v36 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (sub_10006AECC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcesses];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_10006AEB4();
        sub_10006AE50(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcesses];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_10003DF54("SaveReport", "reporting.m", 406, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

void sub_1000B660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "!url_out";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: asking for URL when generating report via OSA", buf, 0xCu);
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v12 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: asking for URL when generating report via OSA", "!url_out");
    if (v13)
    {
      v18 = v13;
      v19 = sub_1000692C4(v13);
      if (v19)
      {
        v9 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xDFFDBB2EuLL);
        sub_10004E764(v20);
        v21 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v22 = qword_100127ED0;
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
      v14 = sub_10003E080();
      if (sub_1000693B0(v14))
      {
        *buf = 136315138;
        v24 = "!url_out";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Unable to format: %s: asking for URL when generating report via OSA", buf, 0xCu);
      }

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    *__error() = v12;
  }

  sub_10003DF54("SaveReport", "reporting.m", 576, "%s: asking for URL when generating report via OSA", a5, a6, a7, a8, "!url_out");
  abort();
}

void sub_1000B6810(void *a1)
{
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 sampleStore];
      v5 = [v4 targetProcess];
      v6 = [v5 debugDescription];
      [v6 UTF8String];
      sub_10006AEB4();
      sub_10006AE30(&_mh_execute_header, v7, v8, "%s: No app name for cpu resource report %s", v9, v10, v11, v12, v44, v45, v47);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v15 = [a1 sampleStore];
    v16 = [v15 targetProcess];
    v17 = [v16 debugDescription];
    v44 = "appName";
    v46 = [v17 UTF8String];
    v19 = sub_10006AEE4(v46, v18, @"%s: No app name for cpu resource report %s");

    if (v19)
    {
      v33 = sub_10006AE70();
      if (v33)
      {
        v15 = v33;
        v35 = 0;
      }

      else
      {
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB17047AuLL);
        sub_10006ADC4(v34);
        v35 = v15;
      }

      if (qword_100127ED0)
      {
        v36 = qword_100127ED0;
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
      v20 = sub_10003E080();
      if (sub_10006AECC(v20))
      {
        v21 = [a1 sampleStore];
        v22 = [v21 targetProcess];
        v23 = [v22 debugDescription];
        [v23 UTF8String];
        sub_10006AEB4();
        sub_10006AE50(&_mh_execute_header, v24, v25, "Unable to format: %s: No app name for cpu resource report %s", v26, v27, v28, v29, "appName", v46, v47);
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v30, v31, v32);
    }

    *__error() = v14;
  }

  v37 = [a1 sampleStore];
  v38 = [v37 targetProcess];
  v39 = [v38 debugDescription];
  [v39 UTF8String];
  sub_10003DF54("SaveReport", "reporting.m", 379, "%s: No app name for cpu resource report %s", v40, v41, v42, v43, "appName");

  abort();
}

int *sub_1000B6AF0(const char *a1)
{
  v3 = *__error();
  v4 = sub_10003E080();
  if (sub_10006AECC(v4))
  {
    v21 = *__error();
    v22 = __error();
    strerror(*v22);
    sub_10006AE0C();
    sub_10006AF1C(&_mh_execute_header, v23, v24, "Unable to create stream from %@: %d (%s)", v25, v26, v27, v28, v37, v38, v40, v42, v43);
  }

  result = __error();
  *result = v3;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = *__error();
    v9 = __error();
    v39 = v8;
    v41 = strerror(*v9);
    v11 = sub_10006AEE4(v41, v10, @"Unable to create stream from %@: %d (%s)");
    if (v11)
    {
      v12 = v11;
      v13 = sub_1000692C4(v11);
      if (v13)
      {
        a1 = v13;
        v14 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(0x400uLL, 1uLL, 0xA4B2584AuLL);
        sub_10006AE8C(v19);
        v14 = a1;
      }

      if (qword_100127ED0)
      {
        v20 = qword_100127ED0;
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
      v15 = sub_10003E080();
      if (sub_10006AECC(v15))
      {
        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        sub_10006AE0C();
        sub_10006AF1C(&_mh_execute_header, v31, v32, "Unable to format: Unable to create stream from %@: %d (%s)", v33, v34, v35, v36, a1, v39, v41, v42, v43);
      }

      if (qword_100127ED0)
      {
        v18 = qword_100127ED0;
      }

      else
      {
        v18 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v16, v17, v18);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000B6E74(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000B6F00(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000B6F8C(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000B7018(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

int *sub_1000B70A4()
{
  v1 = *__error();
  v2 = sub_10003E080();
  v3 = &off_1000CE000;
  if (sub_1000693B0(v2))
  {
    v17 = *__error();
    sub_10006AEFC();
    sub_10006ADEC(&_mh_execute_header, v18, v19, "unable to fdopen OSA dup fd: %{errno}d", v20, v21, v22, v23, v31, v33, v34);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v6 = *__error();
    v32 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"unable to fdopen OSA dup fd: %{errno}d");
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000692C4(v7);
      if (v9)
      {
        v3 = v9;
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xE282F75DuLL);
        sub_10004E764(v15);
        v10 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
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
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v24 = *__error();
        sub_10006AEFC();
        sub_10006ADEC(&_mh_execute_header, v25, v26, "Unable to format: unable to fdopen OSA dup fd: %{errno}d", v27, v28, v29, v30, v32, v33, v34);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v6;
  }

  return result;
}

int *sub_1000B7294()
{
  v1 = *__error();
  v2 = sub_10003E080();
  v3 = &off_1000CE000;
  if (sub_1000693B0(v2))
  {
    v17 = *__error();
    sub_10006AEFC();
    sub_10006ADEC(&_mh_execute_header, v18, v19, "dup of OSA file handle failed: %{errnod}d", v20, v21, v22, v23, v31, v33, v34);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v6 = *__error();
    v32 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"dup of OSA file handle failed: %{errnod}d");
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000692C4(v7);
      if (v9)
      {
        v3 = v9;
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xFDD951E6uLL);
        sub_10004E764(v15);
        v10 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
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
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v24 = *__error();
        sub_10006AEFC();
        sub_10006ADEC(&_mh_execute_header, v25, v26, "Unable to format: dup of OSA file handle failed: %{errnod}d", v27, v28, v29, v30, v32, v33, v34);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v6;
  }

  return result;
}

int *sub_1000B7484(char *a1)
{
  v3 = *__error();
  v4 = sub_10003E080();
  if (sub_10006AECC(v4))
  {
    v18 = [a1 debugDescription];
    sub_10006AF3C(&_mh_execute_header, v19, v20, "OSAWriteLogForSubmission provided invalid fd: %@", v21, v22, v23, v24, v32, v34, 2u);
  }

  result = __error();
  *result = v3;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v33 = [a1 debugDescription];
    v9 = sub_10006AEE4(v33, v8, @"OSAWriteLogForSubmission provided invalid fd: %@");

    if (v9)
    {
      v10 = sub_10006AE70();
      if (v10)
      {
        a1 = v10;
        v11 = 0;
      }

      else
      {
        v16 = malloc_type_calloc(0x400uLL, 1uLL, 0x54848E8DuLL);
        sub_10006AE8C(v16);
        v11 = a1;
      }

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
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
      v12 = sub_10003E080();
      if (sub_10006AECC(v12))
      {
        v25 = [a1 debugDescription];
        sub_10006AF3C(&_mh_execute_header, v26, v27, "Unable to format: OSAWriteLogForSubmission provided invalid fd: %@", v28, v29, v30, v31, v33, v34, 2u);
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v13, v14, v15);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000B76A4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B76F4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B7730()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B77A0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B77DC()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B784C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B78F0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B792C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B799C()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

int *sub_1000B7A0C(const char *a1)
{
  v3 = *__error();
  v4 = sub_10003E080();
  if (sub_10006AECC(v4))
  {
    sub_1000711B0();
    sub_10006AF3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_1000711CC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x7CAFF1E7uLL);
        sub_10006AE8C(v12);
        v9 = a1;
      }

      v13 = sub_1000711BC(qword_100127ED0);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_10003E080();
      if (sub_10006AECC(v10))
      {
        sub_1000711B0();
        sub_10006AF3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100127ED0)
      {
        v11 = qword_100127ED0;
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

void sub_1000B7BE0()
{
  sub_10005BE54();
  [v0 count];
  sub_100071130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000B7C60()
{
  sub_10005BE54();
  [v0 count];
  sub_100071130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

int *sub_1000B7CE0(const char *a1)
{
  v3 = *__error();
  v4 = sub_10003E080();
  if (sub_10006AECC(v4))
  {
    sub_1000711B0();
    sub_10006AF3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_1000711CC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7A1B168uLL);
        sub_10006AE8C(v12);
        v9 = a1;
      }

      v13 = sub_1000711BC(qword_100127ED0);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_10003E080();
      if (sub_10006AECC(v10))
      {
        sub_1000711B0();
        sub_10006AF3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100127ED0)
      {
        v11 = qword_100127ED0;
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

void sub_1000B7EB4(void *a1)
{
  [a1 count];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B7F68()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B7FA4()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B8014()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B80B8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B80F4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B8130()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B81A0()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B81DC()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B8218()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B8294()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B82D0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B8340()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B8408(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100071180(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000711E8(&_mh_execute_header, v5, v6, "Unable to format: %@ deferred power exception: generating deferred report");
}

void sub_1000B8674(uint64_t a1, uint64_t a2)
{
  v5 = [sub_100071180(a1 a2)];
  *v4 = 134217984;
  *v3 = v5;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unhandled deferred report type %llu", v4, 0xCu);
}

void sub_1000B86D4(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100071180(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  sub_1000711E8(&_mh_execute_header, v5, v6, "Unable to format: Unhandled deferred report type %llu");
}

void sub_1000B877C(void *a1)
{
  [a1 count];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B87FC()
{
  sub_10005BE54();
  [v0 count];
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000B8890()
{
  sub_10005BE54();
  [v0 count];
  sub_100071130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000B8910()
{
  sub_10005BE54();
  [v0 count];
  sub_100071130();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

int *sub_1000B8990(const char *a1)
{
  v3 = *__error();
  v4 = sub_10003E080();
  if (sub_10006AECC(v4))
  {
    sub_1000711B0();
    sub_10006AF3C(&_mh_execute_header, v14, v15, "Unable to remove deferred reports plist: %@", v16, v17, v18, v19, v26, v27, v28);
  }

  result = __error();
  *result = v3;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@");
    if (v8)
    {
      if (sub_1000711CC(v8))
      {
        v9 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x67CE5599uLL);
        sub_10006AE8C(v12);
        v9 = a1;
      }

      v13 = sub_1000711BC(qword_100127ED0);
      fprintf(v13, "%s\n", a1);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v1);
    }

    else
    {
      v10 = sub_10003E080();
      if (sub_10006AECC(v10))
      {
        sub_1000711B0();
        sub_10006AF3C(&_mh_execute_header, v20, v21, "Unable to format: Unable to remove deferred reports plist: %@", v22, v23, v24, v25, a1, v27, v28);
      }

      if (qword_100127ED0)
      {
        v11 = qword_100127ED0;
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

void sub_1000B8BD8()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B8C48()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  sub_10007580C(&_mh_execute_header, "Unable to spawn ddt: %d (%s)", v3, v4);
}

void sub_1000B8C80()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  sub_100075828(&_mh_execute_header, "Unable to format: Unable to spawn ddt: %d (%s)", v3, v4);
}

void sub_1000B8D20(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8752e-34, v3, v4);
  sub_10007580C(&_mh_execute_header, "%{public}s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B8D58(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8151e-34, v3, v4);
  sub_100075828(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B8DF8(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8752e-34, v3, v4);
  sub_10007580C(&_mh_execute_header, "%{public}s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B8E30(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8151e-34, v3, v4);
  sub_100075828(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B8E68()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  sub_10007580C(&_mh_execute_header, "Unable to spawn lsof: %d (%s)", v3, v4);
}

void sub_1000B8EA0()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  sub_100075828(&_mh_execute_header, "Unable to format: Unable to spawn lsof: %d (%s)", v3, v4);
}

void sub_1000B8F40(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8752e-34, v3, v4);
  sub_10007580C(&_mh_execute_header, "%{public}s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B8F78(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8151e-34, v3, v4);
  sub_100075828(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v5, v6);
}

void sub_1000B9018(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8752e-34, v3, v4);
  sub_10007580C(&_mh_execute_header, "%{public}s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B9050(uint64_t a1, unsigned int *a2)
{
  sub_1000757FC(a1, a2);
  sub_1000757B4(v2, 4.8151e-34, v3, v4);
  sub_100075828(&_mh_execute_header, "Unable to format: %s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v5, v6);
}

void sub_1000B90F0()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9170()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9224(int a1)
{
  sub_10003E020(a1);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B92DC(int a1)
{
  sub_10003E020(a1);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B9394(int a1)
{
  sub_10003E020(a1);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B9480()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9500()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9580(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B9608(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000B9690()
{
  sub_10005BD94();
  sub_100075850(v1);
  sub_10005BF20();
  v2 = ferror(v0);
  strerror(v2);
  sub_1000757CC();
  sub_1000757E4();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000B972C()
{
  sub_10005BD94();
  sub_100075850(v1);
  sub_10005BF20();
  v2 = ferror(v0);
  strerror(v2);
  sub_1000757CC();
  sub_1000757E4();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000B9830()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B98B0()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000B9930()
{
  sub_10005BD94();
  sub_10005BF9C(v0);
  sub_10005BF20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B99D4()
{
  sub_10005BD94();
  sub_10005BF9C(v0);
  sub_10005BF20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B9A78()
{
  sub_10005BD94();
  sub_10005BF9C(v0);
  sub_10005BF20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B9B1C()
{
  sub_10005BD94();
  sub_10005BF9C(v0);
  sub_10005BF20();
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069090();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_1000B9BC0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000B9C54()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000B9CE8(int a1)
{
  strerror(a1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_1000B9D70(int a1)
{
  strerror(a1);
  sub_10005BE24();
  sub_1000691C4();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x12u);
}

void sub_1000B9E80()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B9EF0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B9F60()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B9FD0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BA040()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BA0B0()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BA120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v11 = sub_10003E080();
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

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: endOfSecs %p endPtr %p", "endOfSecs && endOfSecs > endptr", *a1, a2);
    if (v15)
    {
      v21 = v15;
      v22 = sub_1000692C4(v15);
      if (v22)
      {
        v23 = v22;
        v24 = 0;
      }

      else
      {
        v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xB6511A97uLL);
        sub_100080AE4(v21, v23);
        v24 = v23;
      }

      if (qword_100127ED0)
      {
        v25 = qword_100127ED0;
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
      v16 = sub_10003E080();
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

      if (qword_100127ED0)
      {
        v20 = qword_100127ED0;
      }

      else
      {
        v20 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v18, v19, v20);
    }

    *__error() = v14;
  }

  v26 = *a1;
  sub_10003DF54("TimeFromString", "spindump.m", 4066, "%s: endOfSecs %p endPtr %p", a5, a6, a7, a8, "endOfSecs && endOfSecs > endptr");
  abort();
}

void sub_1000BA384()
{
  sub_10004E6C8();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BA3F4()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BA464()
{
  sub_100080B4C();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000BA4EC()
{
  sub_100080B4C();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000BA594()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BA5D0()
{
  sub_10004E6C8();
  sub_1000691D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000BA64C()
{
  sub_10004E6C8();
  sub_10005D650();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000BA6C8(uint64_t a1)
{
  [*(*(*a1 + 8) + 40) numSamples];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BA788()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BA7F8()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BA834(void *a1)
{
  v1 = [a1 total];
  [v1 num_missing_load_info];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000BA8C4(void *a1)
{
  v1 = [a1 total];
  [v1 num_missing_load_info];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000BA954(void *a1)
{
  v1 = [a1 total];
  [v1 num_out_of_order];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000BA9E4(void *a1)
{
  v1 = [a1 total];
  [v1 num_out_of_order];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000BAA74(void *a1)
{
  [a1 bytes_not_microstackshots];
  sub_10004E6C8();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BAAF4(void *a1)
{
  [a1 bytes_not_microstackshots];
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BAB74(void *a1, NSObject *a2)
{
  v159 = [a1 total];
  [v159 bytes];
  v158 = [sub_100080BD0() total];
  v4 = [v158 bytes_duplicate] + v2;
  v157 = [a1 total];
  [v157 bytes_out_of_order];
  v156 = [sub_100080BD0() total];
  v5 = [v156 bytes_missing_load_info] + v2 + v4;
  [a1 bytes_other_data];
  v115 = [sub_100080BD0() bytes_not_microstackshots] + v2 + v5;
  v155 = [a1 total];
  [v155 bytes];
  v154 = [sub_100080BD0() total];
  v6 = [v154 bytes_duplicate] + v2;
  v153 = [a1 total];
  [v153 bytes_out_of_order];
  v152 = [sub_100080BD0() total];
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

void sub_1000BB9A8()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BBAB4()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BBB24()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BBB94()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000BBC24()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000BBCB4(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BBD24(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BBD94()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BBE1C()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BBEA4(uint64_t a1)
{
  sub_100080AD0(a1);
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000BBF14(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BBF84(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BBFF4(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC064()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC0EC()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC174(uint64_t a1)
{
  sub_100080AD0(a1);
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000BC1E4(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC254(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC2C4(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC334()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC3BC()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC444(uint64_t a1)
{
  sub_100080AD0(a1);
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000BC4B4(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC524(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC594(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC604()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC68C()
{
  sub_10005BD94();
  sub_100080A90(v0, v1);
  sub_100080A80();
  sub_100080A28();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000BC714(uint64_t a1)
{
  sub_100080AD0(a1);
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000BC784(void *a1, int *a2)
{
  sub_100080A48(a1, a2);
  sub_10005D690();
  sub_10005D650();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BC7F4(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000BC898(NSObject *a1, unsigned int *a2)
{
  dispatch_source_get_handle(a1);
  v3 = *a2;
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_1000BC92C(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BC9AC(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BCA2C(NSObject *a1)
{
  dispatch_source_get_handle(a1);
  sub_10004E6C8();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000BCAAC()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BCAE8()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BCB24()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

int *sub_1000BCB60(uint64_t a1, uint64_t a2)
{
  v4 = *__error();
  v5 = sub_10003E080();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100080B34();
    sub_100080B90(&_mh_execute_header, v19, v20, "filePath %s cut off with date (needed %zu chars)", v21, v22, v23, v24, v31, v32, v33);
  }

  result = __error();
  *result = v4;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v8 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"filePath %s cut off with date (needed %zu chars)");
    if (v9)
    {
      v10 = v9;
      v11 = sub_1000692C4(v9);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x95AFBDDCuLL);
        sub_100080AE4(v10, v12);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v18 = qword_100127ED0;
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
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100080B34();
        sub_100080B90(&_mh_execute_header, v25, v26, "Unable to format: filePath %s cut off with date (needed %zu chars)", v27, v28, v29, v30, a1, a2, v33);
      }

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    result = __error();
    *result = v8;
  }

  return result;
}

void sub_1000BCD60(int a1, FILE *a2)
{
  v2 = ferror(a2);
  strerror(v2);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000BCDF8(int a1, FILE *a2)
{
  v2 = ferror(a2);
  strerror(v2);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000BCE90()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000BCF34()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BCF70()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000BD00C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000BD0A8()
{
  sub_10005BE48();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BD0E4()
{
  sub_10005BE48();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BD120()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000BD1B0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10005BE24();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000BD240(int a1)
{
  sub_10003E020(a1);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100080A5C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000BD2FC(int a1)
{
  sub_10003E020(a1);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100080A5C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

int *sub_1000BD3CC()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100080A5C();
    sub_100080AB0(&_mh_execute_header, v19, v20, "sysctl for security.mac.sandbox.audio_active failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_100080BDC(v36, v8, @"sysctl for security.mac.sandbox.audio_active failed: %d (%s)");
    if (v9)
    {
      if (sub_100060C08(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x1299C87BuLL);
        sub_10004E764(v15);
        v10 = &off_1000CE000;
      }

      v16 = sub_100080B60(qword_100127ED0);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100080A70();
        sub_100080AB0(&_mh_execute_header, v27, v28, "Unable to format: sysctl for security.mac.sandbox.audio_active failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100127568 = 0;
  return result;
}

void sub_1000BD5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(&_mh_execute_header, v10, v11, "%s: unable to allocate source", v12, v13, v14, v15, v32, v33, 2u);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v17 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: unable to allocate source");
    if (v18)
    {
      if (sub_100060C08(v18))
      {
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x3C97C0B9uLL);
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      v31 = sub_100080B60(qword_100127ED0);
      fprintf(v31, "%s\n", "source");
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v19 = sub_10003E080();
      if (sub_1000693B0(v19))
      {
        sub_100060BE8(&_mh_execute_header, v20, v21, "Unable to format: %s: unable to allocate source", v22, v23, v24, v25, "source", v33, 2u);
      }

      if (qword_100127ED0)
      {
        v28 = qword_100127ED0;
      }

      else
      {
        v28 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v26, v27, v28);
    }

    *__error() = v17;
  }

  sub_10003DF54("RegisterExitHandlers_block_invoke", "spindump.m", 4210, "%s: unable to allocate source", a5, a6, a7, a8, "source");
  abort();
}

int *sub_1000BD7C0()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100080A5C();
    sub_100080AB0(&_mh_execute_header, v19, v20, "sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_100080BDC(v36, v8, @"sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)");
    if (v9)
    {
      if (sub_100060C08(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0xC9ABCB91uLL);
        sub_10004E764(v15);
        v10 = &off_1000CE000;
      }

      v16 = sub_100080B60(qword_100127ED0);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100080A70();
        sub_100080AB0(&_mh_execute_header, v27, v28, "Unable to format: sysctlnametomib for security.mac.sandbox.audio_active failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100127568 = 0;
  return result;
}

int *sub_1000BD9E8(_DWORD *a1)
{
  v2 = *__error();
  v3 = sub_10003E080();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v19 = *__error();
    v20 = __error();
    strerror(*v20);
    sub_100080A70();
    sub_100080BB0(&_mh_execute_header, v21, v22, "sysctl for kern.memorystatus_vm_pressure_level failed: %d (%s)", v23, v24, v25, v26, v35, v37, 2u);
  }

  result = __error();
  *result = v2;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
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
      v11 = sub_1000692C4(v9);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xD806EABuLL);
        sub_100080AE4(v10, v12);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v18 = qword_100127ED0;
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
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v27 = *__error();
        v28 = __error();
        strerror(*v28);
        sub_100080A5C();
        sub_100080BB0(&_mh_execute_header, v29, v30, "Unable to format: sysctl for kern.memorystatus_vm_pressure_level failed: %d (%s)", v31, v32, v33, v34, v36, v38, 2u);
      }

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    result = __error();
    *result = v6;
  }

  *a1 = 0;
  qword_100127570 = 0;
  return result;
}

void sub_1000BDC3C(unsigned int *a1)
{
  v1 = *a1;
  sub_10005D690();
  sub_10005BE84();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000BDCB0(unsigned int *a1)
{
  v1 = *a1;
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

int *sub_1000BDD24()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    sub_100080A5C();
    sub_100080AB0(&_mh_execute_header, v19, v20, "sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)", v21, v22, v23, v24, v33, v35, 2u);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v34 = v6;
    v36 = strerror(*v7);
    v9 = sub_100080BDC(v36, v8, @"sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)");
    if (v9)
    {
      if (sub_100060C08(v9))
      {
        v10 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x3015FD8AuLL);
        sub_10004E764(v15);
        v10 = &off_1000CE000;
      }

      v16 = sub_100080B60(qword_100127ED0);
      fprintf(v16, "%s\n", v34);
      if (v10)
      {
        free(v10);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v25 = *__error();
        v26 = __error();
        strerror(*v26);
        sub_100080A70();
        sub_100080AB0(&_mh_execute_header, v27, v28, "Unable to format: sysctlnametomib for kern.memorystatus_vm_pressure_level failed: %d (%s)", v29, v30, v31, v32, v34, v36, 2u);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v12, v13, v14);
    }

    result = __error();
    *result = v5;
  }

  qword_100127570 = 0;
  return result;
}

void sub_1000BDF38()
{
  if (byte_100127EC8 == 1)
  {
    v0 = *__error();
    v1 = sub_10003E080();
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

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v3 = *__error();
    v24 = geteuid();
    v5 = sub_100080BDC(v24, v4, @"%s: spindump must run as root to create spindump directory (running as %d)");
    if (v5)
    {
      if (sub_100060C08(v5))
      {
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x87044AF8uLL);
        sub_10004E764(v17);
        v18 = &off_1000CE000;
      }

      v19 = sub_100080B60(qword_100127ED0);
      fprintf(v19, "%s\n", "geteuid() == 0");
      if (v18)
      {
        free(v18);
      }

      CFRelease(kCFAllocatorDefault);
    }

    else
    {
      v6 = sub_10003E080();
      if (sub_1000693B0(v6))
      {
        v7 = geteuid();
        v26 = "geteuid() == 0";
        v27 = 1024;
        v28 = v7;
        sub_100080AB0(&_mh_execute_header, v8, v9, "Unable to format: %s: spindump must run as root to create spindump directory (running as %d)", v10, v11, v12, v13, "geteuid() == 0", v24, 2u);
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
      }

      else
      {
        v16 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v14, v15, v16);
    }

    *__error() = v3;
  }

  geteuid();
  sub_10003DF54("MakeSpindumpDirectory", "spindump.m", 4287, "%s: spindump must run as root to create spindump directory (running as %d)", v20, v21, v22, v23, "geteuid() == 0");
  abort();
}

void sub_1000BE160()
{
  sub_10005D660();
  sub_10005BE84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BE1D0()
{
  sub_10005D660();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BE240(uint64_t __errnum)
{
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      strerror(__errnum);
      v4 = *__error();
      v5 = __error();
      strerror(*v5);
      sub_100080B00();
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", buf, 0x2Cu);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
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
      v20 = sub_1000692C4(v12);
      if (v20)
      {
        v21 = v20;
        v22 = 0;
      }

      else
      {
        v21 = sub_100080B70();
        sub_100080AE4(v19, v21);
        v22 = v21;
      }

      if (qword_100127ED0)
      {
        v23 = qword_100127ED0;
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
      v13 = sub_10003E080();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        strerror(__errnum);
        v14 = *__error();
        v15 = __error();
        strerror(*v15);
        sub_100080B00();
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Unable to format: %s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", buf, 0x2Cu);
      }

      if (qword_100127ED0)
      {
        v18 = qword_100127ED0;
      }

      else
      {
        v18 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v16, v17, v18);
    }

    *__error() = v7;
  }

  strerror(__errnum);
  v24 = *__error();
  v25 = __error();
  strerror(*v25);
  sub_10003DF54("MakeSpindumpDirectory_block_invoke", "spindump.m", 4299, "%s: unable to create /private/var/db/spindump after state failed with %d (%s): %d (%s)", v26, v27, v28, v29, "ret == 0");
  abort();
}

void sub_1000BE4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(&_mh_execute_header, v10, v11, "%s: /private/var/db/spindump already exists and isnt a directory!", v12, v13, v14, v15, v32, v33, 2u);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v17 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: /private/var/db/spindump already exists and isnt a directory!");
    if (v18)
    {
      if (sub_100060C08(v18))
      {
        v30 = 0;
      }

      else
      {
        v29 = sub_100080B70();
        sub_10004E764(v29);
        v30 = &off_1000CE000;
      }

      v31 = sub_100080B60(qword_100127ED0);
      fprintf(v31, "%s\n", "(((st.st_mode) & 0170000) == 0040000)");
      if (v30)
      {
        free(v30);
      }

      CFRelease(v8);
    }

    else
    {
      v19 = sub_10003E080();
      if (sub_1000693B0(v19))
      {
        sub_100060BE8(&_mh_execute_header, v20, v21, "Unable to format: %s: /private/var/db/spindump already exists and isnt a directory!", v22, v23, v24, v25, "(((st.st_mode) & 0170000) == 0040000)", v33, 2u);
      }

      if (qword_100127ED0)
      {
        v28 = qword_100127ED0;
      }

      else
      {
        v28 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v26, v27, v28);
    }

    *__error() = v17;
  }

  sub_10003DF54("MakeSpindumpDirectory_block_invoke", "spindump.m", 4302, "%s: /private/var/db/spindump already exists and isnt a directory!", a5, a6, a7, a8, "(((st.st_mode) & 0170000) == 0040000)");
  abort();
}

void sub_1000BE6BC()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E7CC(&_mh_execute_header, v2, v3, "Unable to stat %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BE74C()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E708(&_mh_execute_header, v2, v3, "Unable to format: Unable to stat %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BE7DC(uint64_t a1, _DWORD *a2)
{
  sub_1000817EC(a2, __stack_chk_guard);
  sub_1000691AC();
  sub_1000817E0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void sub_1000BE858(uint64_t a1, _DWORD *a2)
{
  sub_1000817EC(a2, __stack_chk_guard);
  sub_1000691AC();
  sub_1000817E0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void sub_1000BE918(uint64_t a1, uint64_t *a2)
{
  sub_100081800(a2, __stack_chk_guard);
  sub_1000817C8();
  sub_1000817E0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void sub_1000BE98C(uint64_t a1, uint64_t *a2)
{
  sub_100081800(a2, __stack_chk_guard);
  sub_1000817C8();
  sub_1000817E0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_1000BEA00()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E7CC(&_mh_execute_header, v2, v3, "Unable to map %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BEA90()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E708(&_mh_execute_header, v2, v3, "Unable to format: Unable to map %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BEB20(uint64_t a1, uint64_t *a2)
{
  sub_100081800(a2, __stack_chk_guard);
  sub_1000817C8();
  sub_1000817E0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1000BEB94(uint64_t a1, uint64_t *a2)
{
  sub_100081800(a2, __stack_chk_guard);
  sub_1000817C8();
  sub_1000817E0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_1000BEC08()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E7CC(&_mh_execute_header, v2, v3, "Unable to open %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BEC98()
{
  sub_10004E7C0();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_10004E708(&_mh_execute_header, v2, v3, "Unable to format: Unable to open %s: %d (%s)", v4, v5, v6, v7, v8);
}

void sub_1000BED5C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BEEDC()
{
  sub_10004E7C0();
  sub_10009108C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000BEF6C()
{
  sub_10004E7C0();
  sub_10009108C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000BEFFC()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BF06C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF0EC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF16C()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BF1DC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF25C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF310()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF3A4()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BF414()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF494()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000BF548()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF644()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF6C4()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF7AC()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF82C()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF914()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BF994()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BFB14()
{
  sub_10004E7C0();
  v1 = sub_100091074(v0);
  sub_10003E020(v1);
  sub_10009105C();
  sub_10004E664();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000BFBAC()
{
  sub_10004E7C0();
  v1 = sub_100091074(v0);
  sub_10003E020(v1);
  sub_10009105C();
  sub_10004E664();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000BFCAC()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BFD2C()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BFE14()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BFE94()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C0014()
{
  sub_10004E7C0();
  v1 = sub_100091074(v0);
  sub_10003E020(v1);
  sub_10009105C();
  sub_10004E664();
  sub_10005BDB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000C00AC()
{
  sub_10004E7C0();
  v1 = sub_100091074(v0);
  sub_10003E020(v1);
  sub_10009105C();
  sub_10004E664();
  sub_10005BD84();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000C0178()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C0260()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C02E0()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C03C8()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C0448()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C04FC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C057C(uint64_t a1, id *a2)
{
  [*(a1 + 416) machAbsTimeSeconds];
  [*a2 machAbsTimeSeconds];
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000C0628(uint64_t a1, id *a2)
{
  [*(a1 + 416) machAbsTimeSeconds];
  [*a2 machAbsTimeSeconds];
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000C073C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C07BC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C083C()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C08AC()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C092C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C09AC()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C0A1C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C0A9C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C0B1C(uint64_t a1)
{
  v1 = *(a1 + 400);
  sub_100090FA8();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000C0B98(unsigned int *a1)
{
  v1 = *a1;
  sub_100090FA8();
  sub_10009103C(&_mh_execute_header, v2, v3, "Unable to format: Attempted to change sampling interval to %uus while already sampling/sampled at %uus", v4, v5);
}

void sub_1000C0C04(uint64_t a1)
{
  v1 = *(a1 + 404);
  sub_100090FA8();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000C0C80(unsigned int *a1)
{
  v1 = *a1;
  sub_100090FA8();
  sub_10009103C(&_mh_execute_header, v2, v3, "Unable to format: Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", v4, v5);
}

void sub_1000C0D64(int *a1)
{
  sub_10003E020(*a1);
  v2 = *a1;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000C0E70()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C0EF0()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C0FD8()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C1058()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C1140()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C11C0()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C12A8()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C1328()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C14A8()
{
  sub_10004E7C0();
  sub_10009108C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000C1538()
{
  sub_10004E7C0();
  sub_10009108C(v1, __stack_chk_guard);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000C15FC()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C16E4()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C1754()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C17D4()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C18BC()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C193C()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C19BC(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Already not sampling when stopped with reason %d", v2, 8u);
}

void sub_1000C1AAC(int *a1)
{
  sub_1000693E0(a1);
  v2 = *a1;
  sub_10004E6C8();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_1000C1B54(int *a1)
{
  sub_1000693E0(a1);
  v2 = *a1;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_1000C1C20()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C1CD4()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C1D88()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C1E70()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C1EF0()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C1FA4()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C208C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C210C()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000C21F4()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2274()
{
  sub_10004E7C0();
  sub_100090FC0(v0);
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C23F4()
{
  sub_10004E7C0();
  sub_10003E020(*(*v0 + 72));
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000C2490()
{
  sub_10004E7C0();
  sub_10003E020(*(*v0 + 72));
  sub_100090FDC();
  sub_1000691AC();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000C2564()
{
  sub_10004E7C0();
  sub_1000693E0(v1);
  v2 = *v0;
  sub_1000691AC();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}