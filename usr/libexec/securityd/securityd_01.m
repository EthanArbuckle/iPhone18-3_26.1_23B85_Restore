uint64_t sub_10001263C(const __CFData *a1, CFTypeRef *a2)
{
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  ccder_encode_body();
  v5 = ccder_encode_tl();
  if (!v5)
  {
    sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v4, @"ccder failed to encode");
  }

  return v5;
}

unint64_t sub_1000126DC(CFTypeRef *a1, int a2, uint64_t a3, unint64_t a4, double a5)
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  err = 0;
  p_err = &err;
  v48 = 0x2000000000;
  v49 = -86;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_100012D1C;
  v53 = &unk_100335800;
  v54 = &err;
  v55 = a5;
  v56 = &v45 + 4;
  v57 = &v45;
  v58 = &v44 + 4;
  v59 = &v44;
  v60 = &v43 + 4;
  v61 = &v43;
  sub_10001309C(buf);
  if (*(p_err + 24) == 1)
  {
    _Block_object_dispose(&err, 8);
  }

  else
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a1, v10, @"Failed to encode date.");
    v11 = *(p_err + 24);
    _Block_object_dispose(&err, 8);
    if ((v11 & 1) == 0)
    {
      v28 = sub_100006274("SecError");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
      }

      return 0;
    }
  }

  err = 0;
  if ((sub_100013144(HIDWORD(v45), v45, HIDWORD(v44), v44, HIDWORD(v43), v43, 0, &err) & 1) == 0)
  {
    v12 = CFErrorCopyDescription(err);
    sub_100089FEC(v12, 1405091842);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "continuing";
      if (a2)
      {
        v14 = "setting default value";
      }

      *buf = 138412546;
      *&buf[4] = err;
      *&buf[12] = 2080;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
    }

    v15 = err;
    if (err)
    {
      err = 0;
      CFRelease(v15);
    }

    if (a2)
    {
      v45 = 0x7D100000001;
      HIDWORD(v44) = 1;
      HIDWORD(v43) = 1;
    }
  }

  if (a3 + 1 <= a4)
  {
    *(a4 - 1) = 90;
    v16 = a4 - 1;
  }

  else
  {
    v16 = 0;
  }

  v18 = v45;
  v17 = HIDWORD(v45);
  v19 = HIDWORD(v44);
  v42 = v44;
  v20 = v43;
  v21 = HIDWORD(v43);
  v50 = -1431655766;
  v51 = -1431655766;
  *buf = 0xAAAAAAAAAAAAAAAALL;
  v22 = __dtoa();
  v23 = v51;
  v24 = *buf;
  if (a5 < 0.0)
  {
    v25 = v22 + (v51 & ~(v51 >> 31));
    if (v25 < *buf)
    {
      v26 = (*buf - 1);
      for (*v26 = 106 - *(*buf - 1); v26 > v25; *v26 = 105 - v27)
      {
        v27 = *--v26;
      }
    }

    v23 = v51;
    v24 = *buf;
  }

  if (v24 - v22 > v23)
  {
    if ((v23 & 0x80000000) == 0)
    {
      v16 = ccder_encode_body();
LABEL_34:
      if (a3 + 1 <= v16)
      {
        *--v16 = 46;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_38;
    }

    v41 = a1;
    v30 = v19;
    v31 = v18;
    v32 = v17;
    ccder_encode_body();
    v33 = -v51;
    v34 = ccder_encode_body_nocopy();
    v16 = v34;
    if (v34)
    {
      if (a5 >= 0.0)
      {
        v35 = 48;
      }

      else
      {
        v35 = 57;
      }

      memset(v34, v35, v33);
      v17 = v32;
      v18 = v31;
      v19 = v30;
      a1 = v41;
      goto LABEL_34;
    }

    v17 = v32;
    v18 = v31;
    v19 = v30;
    a1 = v41;
  }

LABEL_38:
  __freedtoa();
  if (v16)
  {
    v37 = a3 + 2;
    if (a3 + 2 <= v16)
    {
      *(v16 - 2) = v20 / 10 + 48;
      *(v16 - 1) = v20 % 10 + 48;
      if (v37 <= v16 - 2)
      {
        *(v16 - 4) = v21 / 10 + 48;
        *(v16 - 3) = v21 % 10 + 48;
        if (v37 <= v16 - 4)
        {
          *(v16 - 6) = v42 / 10 + 48;
          *(v16 - 5) = v42 % 10 + 48;
          if (v37 <= v16 - 6)
          {
            *(v16 - 8) = v19 / 10 + 48;
            *(v16 - 7) = v19 % 10 + 48;
            if (v37 <= v16 - 8)
            {
              *(v16 - 10) = v18 / 10 + 48;
              *(v16 - 9) = v18 % 10 + 48;
              if (v37 <= v16 - 10)
              {
                v38 = (((103 * (v17 % 100)) >> 15) & 1) + ((103 * (v17 % 100)) >> 10);
                *(v16 - 12) = v38 + 48;
                *(v16 - 11) = v17 % 100 - 10 * v38 + 48;
                if (v37 <= v16 - 12)
                {
                  *(v16 - 14) = v17 / 1000 + 48;
                  v39 = v16 - 14;
                  *(v39 + 1) = v17 / 100 % 10 + 48;
                  return v39;
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a1, v36, @"ccder failed to encode", v41);
  return 0;
}

uint64_t sub_100012D1C(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_100012ED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_10039DCB8 != -1)
  {
    dispatch_once(&qword_10039DCB8, &stru_100335788);
  }

  v2 = qword_10039DCC0;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

size_t sub_100012F3C(void *a1, const char *a2, const __CFString *a3, uint64_t a4, __CFString **a5)
{
  if (!a3)
  {
    return sub_1000103CC(-50, a5, @"object for key %s is NULL", a2);
  }

  result = sub_10000E384(a3, a5, a3, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = malloc_type_malloc(result, 0xCB2622D6uLL);
    v13 = &v12[v11];
    v14 = sub_10000E614(a3, a5, a4, v12, v13);
    if (v14 && v13 > v14)
    {
      xpc_dictionary_set_data(a1, a2, v14, v13 - v14);
      free(v12);
      return 1;
    }

    else
    {
      free(v12);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100013024()
{
  v0 = 0xAAAAAAAAAAAAAAAALL - __dtoa();
  __freedtoa();
  v1 = v0 + 1431655766;
  if (v0 < -1431655766)
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 16;
  }

  else
  {
    return 15;
  }
}

void sub_10001309C(uint64_t a1)
{
  if (qword_10039DCA8 != -1)
  {
    dispatch_once(&qword_10039DCA8, &stru_100335748);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100012ED0;
  block[3] = &unk_100335628;
  block[4] = a1;
  dispatch_sync(qword_10039DCB0, block);
}

uint64_t sub_100013144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, __CFString **a8)
{
  if ((a1 & 3) != 0)
  {
    v8 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v9) = -1030792151 * a1 + 85899344;
  LODWORD(v9) = HIDWORD(v9);
  if ((v9 >> 2) > 0x28F5C28)
  {
    v8 = 1;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v11) = -1030792151 * a1 + 85899344;
  LODWORD(v11) = HIDWORD(v11);
  v8 = (v11 >> 4) < 0xA3D70B;
  if (a7)
  {
LABEL_6:
    *a7 = v8;
  }

LABEL_7:
  if (a6 <= 61 && a5 <= 59 && a4 <= 23 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1 && (a2 != 2 || (v8 | 0x1C) >= a3) && (a2 == 2 || dword_1002949D0[a2] - dword_1002949D0[(a2 - 1)] >= a3))
  {
    return 1;
  }

  sub_1000103CC(-1, a8, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", a1, a2, a3, a4, a5, a6, v8);
  return 0;
}

char *sub_100013268(double *a1, CFTypeRef *a2, unsigned int a3, char *a4, unint64_t a5)
{
  v68 = a4;
  v65 = sub_100013718(&v68, a5, a2, a4, a5);
  v64 = sub_100013718(&v68, a5, a2, v7, v8);
  v63 = sub_100013718(&v68, a5, a2, v9, v10);
  v13 = sub_100013718(&v68, a5, a2, v11, v12);
  v16 = sub_100013718(&v68, a5, a2, v14, v15);
  v19 = sub_100013718(&v68, a5, a2, v17, v18);
  v22 = sub_100013718(&v68, a5, a2, v20, v21);
  v25 = sub_100013718(&v68, a5, a2, v23, v24);
  v28 = sub_100013718(&v68, a5, a2, v26, v27);
  v33 = sub_100013718(&v68, a5, a2, v29, v30);
  v34 = 0;
  v35 = v68;
  v36 = NAN;
  if (!v68 || v68 >= a5)
  {
LABEL_24:
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v32, @"Invalid datetime character");
    v46 = NAN;
    if (!v34)
    {
      return v34;
    }

    goto LABEL_25;
  }

  v37 = *v68;
  if (v37 == 46)
  {
    if ((v68 + 1) < a5)
    {
      v37 = v68[1];
      if ((v37 - 58) < 0xFFFFFFF6)
      {
        v38 = @"fraction without digits";
LABEL_14:
        v40 = -1;
LABEL_23:
        sub_1000111B4(v40, @"com.apple.security.cfder.error", 0, a2, v32, v38);
        v34 = 0;
        goto LABEL_24;
      }

      v41 = 0;
      v42 = v68 + 2;
      v43 = 1;
      while (v42 != a5)
      {
        v44 = v37;
        v35 = v42;
        if (v43 < 0x1999999999999999)
        {
          v43 *= 10;
          v41 = (v37 & 0xF) + 10 * v41;
        }

        v45 = *v42++;
        v37 = v45;
        if ((v45 - 58) < 0xFFFFFFF6)
        {
          if (v44 == 48)
          {
            v38 = @"fraction ends in 0";
            goto LABEL_14;
          }

          v36 = v41 / v43;
          goto LABEL_8;
        }
      }
    }

    v38 = @"overflow";
    v40 = -8;
    goto LABEL_23;
  }

  v36 = 0.0;
LABEL_8:
  if (v35 >= a5)
  {
    v38 = @"Unexpected end of datetime";
    goto LABEL_14;
  }

  v34 = v35 + 1;
  v68 = v35 + 1;
  if (v37 == 90)
  {
    v46 = 0.0;
  }

  else
  {
    if (v37 == 45)
    {
      v39 = -60;
    }

    else
    {
      if (v37 != 43)
      {
        goto LABEL_24;
      }

      v39 = 60;
    }

    v62 = v39;
    v53 = sub_100013718(&v68, a5, a2, v31, v32);
    v61 = sub_100013718(&v68, a5, a2, v54, v55) + 10 * v53;
    v58 = sub_100013718(&v68, a5, a2, v56, v57);
    v46 = ((sub_100013718(&v68, a5, a2, v59, v60) + 10 * v58 + 60 * v61) * v62);
    v34 = v68;
    if (!v68)
    {
      return v34;
    }
  }

LABEL_25:
  if (v34 == a5)
  {
    v47 = (v13 + 10 * v63);
    v48 = (v19 + 10 * v16);
    v49 = (v25 + 10 * v22);
    v84[0] = 0;
    if (sub_100013144(a3, (v64 + 10 * v65), v47, v48, v49, (v33 + 10 * v28), v84, a2))
    {
      v80 = 0;
      v81 = &v80;
      v82 = 0x2000000000;
      v83 = 0;
      v76 = 0;
      v77 = (&v75 + 4);
      v78 = 0x2000000000;
      v79 = 0;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 0x40000000;
      v69[2] = sub_100013D30;
      v69[3] = &unk_1003357D8;
      v69[4] = &v80;
      v69[5] = &v75 + 4;
      v70 = a3;
      v71 = v64 + 10 * v65;
      v72 = v47;
      v73 = v48;
      v74 = v49;
      v75 = (v33 + 10 * v28);
      sub_10001309C(v69);
      if (v81[3])
      {
        v51 = v77[3] - v46;
      }

      else
      {
        sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v50, @"Failed to encode date from components");
        v51 = NAN;
      }

      _Block_object_dispose(&v75 + 4, 8);
      _Block_object_dispose(&v80, 8);
      *a1 = v51;
      *a1 = v36 + v51;
    }

    else
    {
      v34 = 0;
      *a1 = NAN;
    }
  }

  else
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v32, @"trailing garbage at end of datetime");
    return 0;
  }

  return v34;
}

uint64_t sub_100013718(char **a1, unint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (*a1)
  {
    if (v7 >= a2)
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, a5, @"Unexpected end of datetime");
      *a1 = 0;
    }

    else
    {
      v9 = *v7;
      v8 = v9;
      *a1 = v7 + 1;
      if ((v9 - 58) > 0xFFFFFFF5)
      {
        return (v8 - 48);
      }
    }
  }

  sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, a5, @"Not a decimal digit");
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

char *sub_1000137B4(double *a1, CFTypeRef *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *v20 = a3;
  v8 = sub_100013718(v20, a4, a2, a4, a5);
  v11 = sub_100013718(v20, a4, a2, v9, v10) + 10 * v8;
  v14 = sub_100013718(v20, a4, a2, v12, v13);
  v17 = sub_100013718(v20, a4, a2, v15, v16) + 10 * v14 + 100 * v11;
  v18 = *v20;

  return sub_100013268(a1, a2, v17, v18, a4);
}

uint64_t sub_100013ACC(const __CFAllocator *a1, CFNumberRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v9 = ccder_decode_tl();
  if (!v9 || (v11 = v9, a5 - v9 < v16))
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v10, @"Unknown number encoding", v15);
    return 0;
  }

  v15 = 0;
  v13 = CFNumberCreate(a1, kCFNumberLongLongType, &v15);
  *a2 = v13;
  if (!v13)
  {
    sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v14, @"Number allocation failed", v15);
    return 0;
  }

  return v11 + v16;
}

char *sub_100013C84(const __CFAllocator *a1, CFDateRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  *v15 = a5;
  v8 = ccder_decode_constructed_tl();
  at = 0.0;
  v10 = sub_1000137B4(&at, a3, v8, *v15, v9);
  if (v10)
  {
    v11 = CFDateCreate(a1, at);
    *a2 = v11;
    if (!v11)
    {
      sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v12, @"Failed to create date");
      return 0;
    }
  }

  return v10;
}

uint64_t sub_100013D30(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarComposeAbsoluteTime(calendar, (*(*(a1 + 40) + 8) + 24), "yMdHms", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

const __CFData *sub_100013E34(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) != 16)
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (*BytePtr == 0xAC4C81CC5CAE23F6 && *(BytePtr + 1) == 0x1135313F01F0D48ALL)
    {
      return 0;
    }

    if (*BytePtr == 0x104B57A5353A5AA7 && *(BytePtr + 2) == -1803342146)
    {
      return 0;
    }

    return ((*BytePtr != 0x114EC8A39FAB1A82 || *(BytePtr + 2) != -397635414) && (*BytePtr != 0x9A460A992EBEC436 || *(BytePtr + 2) != -1542878804));
  }

  return result;
}

uint64_t sub_100013F34(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v8 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a2 + 8), kSecAttrTombstone))
  {
    sub_1000079A0(v8, kCFBooleanFalse, a2);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = sub_100014874;
  v17[3] = &unk_1003398E8;
  v17[4] = a2;
  v17[5] = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_100015D74;
  v16[3] = &unk_100339908;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_1000165E8;
  v15[3] = &unk_100339930;
  v15[6] = a2;
  v15[7] = a4;
  v15[4] = &v18;
  v15[5] = &v22;
  v15[8] = a1;
  v9 = sub_100014718(a2, a1, a4, 0, &stru_1003398C8, v17, v16, v15);
  v10 = (v9 & v23[3]);
  *(v23 + 24) &= v9;
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  v11 = v19;
  if (*(a2 + 113) & 1) != 0 || (v19[3])
  {
    goto LABEL_8;
  }

  v12 = sub_1000103CC(-25300, a4, @"Delete failed to delete anything");
  *(v23 + 24) = v12;
  if (!v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v11 = v19;
LABEL_8:
  v13 = *(v11 + 24) ^ 1;
LABEL_10:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v13 & 1;
}

uint64_t sub_100014158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000143E0;
  v4[3] = &unk_100342818;
  v4[4] = a2;
  v5 = *(a1 + 40);
  v6 = v2;
  return sub_1000141DC(a2, 2, v2, v4);
}

uint64_t sub_1000141DC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000153E0;
  v6[3] = &unk_100339760;
  v6[4] = a4;
  v6[5] = v7;
  v4 = sub_100015080(a1, a2, a3, v6);
  _Block_object_dispose(v7, 8);
  return v4;
}

uint64_t sub_100014280(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3)
{
  v6 = 0;
  while (1)
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v7 = sub_100006274("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_SecDbStep: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v9 = sqlite3_step(pStmt);
    if (v9 == 100)
    {
      break;
    }

    if (v9 == 101)
    {
      sqlite3_reset(pStmt);
      return 2;
    }

    if (!sub_10001D288(a1, v9, @"step", v6++, a3))
    {
      return 0;
    }
  }

  return 1;
}

__CFString *sub_1000143F0(CFDictionaryRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"SELECT ");
  v8 = *(*a1 + 2);
  if (!v8)
  {
    if ((a1[6] & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  v10 = (*a1 + 24);
  do
  {
    if ((*(a2 + 16))(a2, v8))
    {
      v11 = *v8;
      if (v9)
      {
        CFStringAppend(Mutable, @",");
      }

      CFStringAppend(Mutable, v11);
      v9 = 1;
    }

    v12 = *v10++;
    v8 = v12;
  }

  while (v12);
  if ((a1[6] & 8) != 0)
  {
    if (v9)
    {
      CFStringAppend(Mutable, @",");
    }

LABEL_12:
    CFStringAppend(Mutable, @"persistref");
  }

LABEL_13:
  CFStringAppend(Mutable, @" FROM ");
  CFStringAppend(Mutable, **a1);
  v31 = 1;
  v13 = *(*a1 + 2);
  if (v13)
  {
    v14 = (*a1 + 24);
    do
    {
      if ((*(a3 + 16))(a3, v13))
      {
        Value = CFDictionaryGetValue(a1[1], *v13);
        if (!Value || (v16 = Value, v17 = CFGetTypeID(Value), v17 != CFArrayGetTypeID()))
        {
          v23 = *v13;
          v24 = Mutable;
LABEL_26:
          sub_1000098AC(v24, v23, &v31);
          goto LABEL_27;
        }

        Count = CFArrayGetCount(v16);
        v19 = Count - 1;
        if (Count >= 1)
        {
          v20 = Count;
          ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
          if (ValueAtIndex && kCFNull)
          {
            if (CFEqual(ValueAtIndex, kCFNull))
            {
              goto LABEL_22;
            }
          }

          else if (ValueAtIndex == kCFNull)
          {
LABEL_22:
            v22 = *v13;
            if (v19 == 1)
            {
              if (v31)
              {
                CFStringAppend(Mutable, @" WHERE ");
                v31 = 0;
              }

              else
              {
                CFStringAppend(Mutable, @" AND ");
              }

              CFStringAppend(Mutable, v22);
              CFStringAppend(Mutable, @"!=?");
              goto LABEL_27;
            }

            if (v31)
            {
              CFStringAppend(Mutable, @" WHERE ");
              v31 = 0;
            }

            else
            {
              CFStringAppend(Mutable, @" AND ");
            }

            CFStringAppend(Mutable, v22);
            CFStringAppend(Mutable, @" NOT IN (");
            v27 = Mutable;
            v28 = v19;
            goto LABEL_42;
          }

          v26 = *v13;
          if (v20 != 1)
          {
            if (v31)
            {
              CFStringAppend(Mutable, @" WHERE ");
              v31 = 0;
            }

            else
            {
              CFStringAppend(Mutable, @" AND ");
            }

            CFStringAppend(Mutable, v26);
            CFStringAppend(Mutable, @" IN (");
            v27 = Mutable;
            v28 = v20;
LABEL_42:
            sub_10016342C(v27, v28);
            goto LABEL_27;
          }

          v24 = Mutable;
          v23 = v26;
          goto LABEL_26;
        }
      }

LABEL_27:
      v25 = *v14++;
      v13 = v25;
    }

    while (v25);
  }

  if (a4)
  {
    (*(a4 + 16))();
  }

  return Mutable;
}

uint64_t sub_100014718(CFDictionaryRef *a1, uint64_t a2, CFTypeRef *a3, Block_layout *a4, Block_layout *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 1;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = &stru_100338B88;
  }

  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = &stru_100338BC8;
  }

  v15 = sub_1000143F0(a1, v13, v14, a6);
  if (v15)
  {
    v16 = v15;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = sub_100014B98;
    v20[3] = &unk_100338C18;
    v20[8] = &v21;
    v20[9] = a1;
    v20[4] = v14;
    v20[5] = a7;
    v20[10] = a3;
    v20[11] = a2;
    v20[6] = v13;
    v20[7] = a8;
    v17 = sub_10001489C(a2, v15, a3, v20);
    *(v22 + 24) &= v17;
    CFRelease(v16);
    v18 = *(v22 + 24);
  }

  else
  {
    v18 = 0;
    *(v22 + 24) = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v18 & 1;
}

uint64_t sub_10001489C(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  result = sub_10000A434(a1, a2, 0, a3);
  if (result)
  {
    v7 = result;
    (*(a4 + 16))(a4, result);

    return sub_10000DB94(v7, a3);
  }

  return result;
}

uint64_t sub_100014918(CFDictionaryRef *a1, sqlite3_stmt *a2, __CFString **a3, uint64_t a4, uint64_t a5)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v10 = (*a1 + 24);
    do
    {
      if ((*(a4 + 16))(a4, v6))
      {
        Value = CFDictionaryGetValue(a1[1], *v6);
        if (!Value)
        {
          v17 = *(v30 + 6);
          *(v30 + 6) = v17 + 1;
          v18 = a1;
          v19 = a2;
          v20 = v6;
          v21 = 0;
          goto LABEL_12;
        }

        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 != CFArrayGetTypeID())
        {
          v17 = *(v30 + 6);
          *(v30 + 6) = v17 + 1;
          v18 = a1;
          v19 = a2;
          v20 = v6;
          v21 = v12;
LABEL_12:
          v22 = sub_10001E010(v18, v19, v17, v20, v21, a3);
          *(v34 + 24) = v22;
          if ((v22 & 1) == 0)
          {
            break;
          }

          goto LABEL_18;
        }

        Count = CFArrayGetCount(v12);
        if (Count < 1)
        {
          v23.location = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
          if (ValueAtIndex && kCFNull)
          {
            v16 = CFEqual(ValueAtIndex, kCFNull) != 0;
          }

          else
          {
            v16 = ValueAtIndex == kCFNull;
          }

          Count -= v16;
          v23.location = v16;
        }

        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_1001637F8;
        context[3] = &unk_100338B48;
        context[6] = a1;
        context[7] = a2;
        context[4] = &v33;
        context[5] = &v29;
        context[8] = v6;
        context[9] = a3;
        v23.length = Count;
        CFArrayApplyFunction(v12, v23, sub_10016384C, context);
        if ((v34[3] & 1) == 0)
        {
          break;
        }
      }

LABEL_18:
      v24 = *v10++;
      v6 = v24;
    }

    while (v24);
  }

  if (a5)
  {
    ++*(v30 + 6);
    (*(a5 + 16))(a5, a2);
  }

  v25 = *(v34 + 24);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v25;
}

uint64_t sub_100014B98(uint64_t a1, sqlite3_stmt *a2)
{
  result = sub_100014918(*(a1 + 72), a2, *(a1 + 80), *(a1 + 32), *(a1 + 40));
  if (result)
  {
    v6 = *(a1 + 80);
    v5 = *(a1 + 88);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100015EF4;
    v7[3] = &unk_100338BF0;
    v9 = *(a1 + 72);
    v10 = a2;
    v11 = v6;
    v8 = *(a1 + 48);
    result = sub_100015DAC(v5, a2, v6, v7);
  }

  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

BOOL sub_100014C4C()
{
  if (qword_10039DD18 != -1)
  {
    dispatch_once(&qword_10039DD18, &stru_100335CD8);
  }

  dispatch_source_merge_data(qword_10039DD20, 1uLL);
  return qword_10039DD28 != 0;
}

uint64_t sub_100014CA8(uint64_t a1)
{
  if (qword_10039E008 != -1)
  {
    dispatch_once(&qword_10039E008, &stru_100339188);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100014D80;
  v4[3] = &unk_1003391B0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_10039DFF8, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100014D80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(qword_10039E000, *(v1 + 16));
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        v4 = *(a1 + 40);
        v5 = malloc_type_calloc(1uLL, 0x30uLL, 0xA0040C7E57C1AuLL);
        *v5 = sub_10017689C;
        v5[1] = sub_100176230;
        v5[2] = nullsub_28;
        v5[3] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
        v5[4] = dispatch_queue_create("dsf queue", 0);
        if (v4)
        {
          CFRetain(v4);
        }

        v5[5] = v4;
        v6 = (*v5)(v5);
        cf = 0;
        v7 = (v5[1])(v5, v6, &cf);
        if (!v7)
        {
          v8 = sub_100006274("SecError");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v13 = v6;
            v14 = 2112;
            v15 = cf;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "create_datasource %@ failed %@", buf, 0x16u);
          }
        }

        v9 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v9);
        }

        if (v7)
        {
          (*(v7 + 72))(v7, &cf);
        }

        v10 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v10);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        *(*(*(a1 + 32) + 8) + 24) = v5;
        CFDictionaryAddValue(qword_10039E000, v2, *(*(*(a1 + 32) + 8) + 24));
      }
    }
  }
}

void sub_100014FB8(uint64_t a1)
{
  v1 = *(*(*(*(a1 + 32) + 8) + 24) + 16);
  if (*(v1 + 144) == 1)
  {
    *(v1 + 144) = 0;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (((*(*(*(*(*(*(a1 + 32) + 8) + 24) + 16) + 136) + 16))() & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24);
      if (v6[40] != 1 || (sub_1000868E8(v6, 0, *(a1 + 48)) & 1) == 0 && (v5 = *(*(a1 + 32) + 8), (v6 = *(v5 + 24)) != 0))
      {
        *(v5 + 24) = 0;

        CFRelease(v6);
      }
    }
  }
}

uint64_t sub_100015080(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v13 = 1;
  if (*(a1 + 25) != 1)
  {
    if (a2 <= 3)
    {
      if (a2 == 2)
      {
        v10 = @"BEGIN EXCLUSIVE";
      }

      else
      {
        v10 = @"BEGIN";
      }

LABEL_17:
      if (sqlite3_get_autocommit(*(a1 + 64)) && (sub_1000152F0(a1, v10, a3) & 1) == 0)
      {
        v6 = 0;
      }

      else
      {
        *(a1 + 25) = 1;
        (*(a4 + 16))(a4, &v13);
        v26 = 0;
        v27 = &v26;
        v28 = 0x2000000000;
        v29 = 1;
        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x2000000000;
        v25 = 0;
        *buf = _NSConcreteStackBlock;
        v16 = 0x40000000;
        v17 = sub_100017BC8;
        v18 = &unk_100335B28;
        v23 = v13;
        v19 = v24;
        v20 = &v26;
        v21 = a1;
        v22 = a3;
        if (*(a1 + 24) == 1)
        {
          sub_100017BC8(buf);
        }

        else
        {
          v11 = *(*(a1 + 16) + 32);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_100018954;
          block[3] = &unk_100335B50;
          block[4] = buf;
          dispatch_barrier_sync(v11, block);
        }

        v6 = *(v27 + 24);
        _Block_object_dispose(v24, 8);
        _Block_object_dispose(&v26, 8);
      }

      return v6 & v13 & 1;
    }

    if (a2 == 6)
    {
      v9 = 4;
    }

    else
    {
      if (a2 != 5)
      {
        *(a1 + 32) = 0;
        goto LABEL_16;
      }

      v9 = 3;
    }

    *(a1 + 32) = v9;
LABEL_16:
    v10 = @"BEGIN EXCLUSIVE";
    goto LABEL_17;
  }

  (*(a4 + 16))(a4, &v13);
  if ((v13 & 1) == 0)
  {
    v5 = sub_100006274("#SecDB");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#SecDB nested transaction asked to not be committed", buf, 2u);
    }
  }

  v6 = 1;
  return v6 & v13 & 1;
}

uint64_t sub_1000152F0(uint64_t a1, const __CFString *cf, CFTypeRef *a3)
{
  v4 = cf;
  CFRetain(cf);
  if (!v4)
  {
    return 1;
  }

  LOBYTE(v6) = 1;
  do
  {
    v9 = 0;
    if (v6)
    {
      v6 = sub_10000A434(a1, v4, &v9, a3);
      if (v6)
      {
        do
        {
          v7 = sub_100014280(a1, v6, a3);
        }

        while (v7 == 1);
        v6 = ((v7 != 0) & sub_10000DB94(v6, a3));
      }
    }

    else
    {
      sub_10001D9F0(1, a3, @"Error with unexecuted sql remaining %@", v4);
      v6 = 0;
    }

    CFRelease(v4);
    v4 = v9;
  }

  while (v9);
  return v6;
}

uint64_t sub_1000153E0(uint64_t a1, _BYTE *a2)
{
  result = (*(*(a1 + 32) + 16))();
  *a2 = result;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100015424(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  for (i = (v3 + 24); ; ++i)
  {
    Value = CFDictionaryGetValue(theDict, *v4);
    if (Value)
    {
      result = sub_1000154A0(a1, v4, Value, a3);
      if (!result)
      {
        break;
      }
    }

    v11 = *i;
    v4 = v11;
    if (!v11)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000154A0(uint64_t a1, void *a2, const __CFData *a3, __CFString **a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = kCFNull;
  }

  v8 = a2[4];
  if (!v8)
  {
    if ((a2[2] & 0x2080) != 0)
    {
      result = sub_100016898(a1, 1, a4);
      if (!result)
      {
        return result;
      }
    }

    switch(*(a2 + 2))
    {
      case 0:
      case 0xF:
        v10 = sub_100008CD0(v7);
        goto LABEL_19;
      case 1:
      case 0xA:
        v10 = sub_100009008(v7);
        goto LABEL_19;
      case 2:
      case 0xE:
        v10 = sub_1000084A4(v7);
        goto LABEL_19;
      case 3:
      case 8:
      case 0xB:
      case 0xC:
        v10 = sub_100009D84(v7);
        goto LABEL_19;
      case 4:
      case 5:
      case 6:
        v10 = sub_100011EB8(v7);
        goto LABEL_19;
      case 7:
        v10 = sub_100011E48(v7);
        goto LABEL_19;
      case 9:
        v14 = sub_100009008(v7);
        if (v14)
        {
          v11 = v14;
          if (*(a1 + 40) == 4)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *(a1 + 40) = v15;
LABEL_20:
          Value = CFDictionaryGetValue(*(a1 + 48), *a2);
          if (Value)
          {
            v13 = CFEqual(Value, v11);
            CFDictionarySetValue(*(a1 + 48), *a2, v11);
            CFRelease(v11);
            if (!v13)
            {
              goto LABEL_36;
            }

            return 1;
          }

          CFDictionarySetValue(*(a1 + 48), *a2, v11);
          CFRelease(v11);
LABEL_36:
          v19 = a2[2];
          if ((v19 & 0x100) != 0)
          {
            v20 = sub_100016514(*(a1 + 16), 7, 0);
            sub_1000154A0(a1, v20, kCFNull, 0);
            v19 = a2[2];
          }

          if (v19)
          {
            v21 = sub_100016514(*(a1 + 16), 10, 0);
            sub_1000154A0(a1, v21, kCFNull, 0);
            v19 = a2[2];
          }

          if ((v19 & 0x2080) != 0)
          {
            v22 = *(a1 + 40);
            if (v22 == 2 || v22 == 6 && (v19 & 0x20) == 0)
            {
              v23 = sub_100016514(*(a1 + 16), 9, 0);
              sub_1000154A0(a1, v23, kCFNull, 0);
              v19 = a2[2];
            }
          }

          if ((v19 & 8) == 0)
          {
            return 1;
          }

          v24 = *(a1 + 48);
          v25 = sub_100016428(a2);
          v26 = v24;
          goto LABEL_48;
        }

        if (!v7 || CFEqual(kCFNull, v7))
        {
          *(a1 + 40) = 0;
LABEL_32:
          if (!v7)
          {
            goto LABEL_34;
          }
        }

        if (CFEqual(kCFNull, v7))
        {
LABEL_34:
          v17 = CFDictionaryGetValue(*(a1 + 48), *a2);
          if (!v17)
          {
            v26 = *(a1 + 48);
            v25 = *a2;
LABEL_48:
            CFDictionaryRemoveValue(v26, v25);
            return 1;
          }

          v18 = CFEqual(v17, kCFNull);
          CFDictionaryRemoveValue(*(a1 + 48), *a2);
          if (v18)
          {
            return 1;
          }

          goto LABEL_36;
        }

        sub_1000103CC(-50, a4, @"attribute %@: value: %@ failed to convert", *a2, v7);
        break;
      case 0xD:
        v16 = sub_100162A74(v7);
        if (!v16)
        {
          goto LABEL_32;
        }

        v11 = v16;
        CFRetain(v16);
        goto LABEL_20;
      case 0x10:
        v10 = sub_100011F00(v7);
LABEL_19:
        v11 = v10;
        if (v10)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      default:
        goto LABEL_32;
    }

    return 0;
  }

  return v8(a1);
}

const void *sub_100015814(void **a1, __CFString **a2)
{
  v4 = sub_100016514(a1[2], 15, a2);
  v5 = sub_100015BFC(a1, v4, a2);
  v6 = sub_100016514(a1[2], 14, a2);
  v7 = sub_100015BFC(a1, v6, a2);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v10 = v7;
  if (!CFEqual(v5, kCFNull))
  {
    CFGetAllocator(a1);
    v13 = SecAccessControlCreateFromData();
    if (v13)
    {
      v12 = v13;
      if (CFEqual(v10, kCFNull))
      {
        v14 = 0;
        goto LABEL_22;
      }

LABEL_13:
      CFGetAllocator(a1);
      v14 = SecAccessControlCreate();
      if (!v14 || !SecAccessControlSetProtection())
      {
        v20 = 0;
        v9 = 0;
        if (!v12)
        {
LABEL_24:
          if (!v14)
          {
            return v9;
          }

          goto LABEL_27;
        }

LABEL_23:
        CFRelease(v12);
        v9 = v20;
        goto LABEL_24;
      }

      if (!v12)
      {
        CFRetain(v14);
        v9 = v14;
LABEL_27:
        CFRelease(v14);
        return v9;
      }

      Protection = SecAccessControlGetProtection();
      v16 = SecAccessControlGetProtection();
      v17 = v16;
      if (!Protection || !v16 || !CFEqual(Protection, v16))
      {
        v18 = sub_100006274("SecError");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412546;
          v23 = Protection;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SecDbItemCopyAccessControl accc %@ != pdmn %@, setting pdmn to accc value", &v22, 0x16u);
        }

        sub_100089FEC(@"Corrupted item on decrypt accc != pdmn", 1405091842);
        v19 = sub_100016514(a1[2], 14, a2);
        if (!sub_1000154A0(a1, v19, Protection, a2))
        {
          v20 = 0;
          goto LABEL_23;
        }
      }

LABEL_22:
      CFRetain(v12);
      v20 = v12;
      goto LABEL_23;
    }

    return 0;
  }

  v12 = 0;
  v9 = 0;
  if (!CFEqual(v10, kCFNull))
  {
    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_100015A9C(uint64_t a1, uint64_t a2, __CFString **a3)
{
  if (*(a1 + 40) == 2)
  {
    v6 = sub_100016514(*(a1 + 16), 9, a3);
    result = sub_1000154A0(a1, v6, kCFNull, a3);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  if (result)
  {
    *(a1 + 40) = 0;
    v8 = SecAccessControlCopyData();
    v9 = sub_100016514(*(a1 + 16), 15, a3);
    v10 = sub_1000154A0(a1, v9, v8, a3);
    CFRelease(v8);
    return v10;
  }

  return result;
}

const void *sub_100015B5C(void *a1, CFTypeRef cf2)
{
  if (!a1 || !cf2 || (v4 = a1[6]) == 0 || (result = CFDictionaryGetValue(v4, cf2)) == 0)
  {
    v6 = a1[2];
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 24);
      while (!CFEqual(*v7, cf2))
      {
        v9 = *v8++;
        v7 = v9;
        if (!v9)
        {
          return 0;
        }
      }

      return sub_100015BFC(a1, v7, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_100015BFC(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  if ((v6 & 0x20A0) != 0 && !sub_100016898(a1, (v6 >> 5) & 1, a3))
  {
    return 0;
  }

  v7 = sub_100016E6C(a1, a2);
  if (v7)
  {
    return v7;
  }

  v8 = sub_100017694(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v7 = kCFNull;
  if (CFEqual(kCFNull, v8))
  {
    CFRelease(v9);
    return v7;
  }

  sub_1000154A0(a1, a2, v9, a3);
  CFRelease(v9);

  return sub_100016E6C(a1, a2);
}

uint64_t sub_100015D00(void **a1)
{
  v5 = -86;
  v2 = sub_100016514(a1[2], 11, 0);
  v3 = sub_100016FF0(a1, v2, &v5, 0);
  return v3 & v5;
}

BOOL sub_100015DAC(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  while (1)
  {
    v8 = sub_100014280(a1, pStmt, a3);
    if (v8 != 1)
    {
      return v8 != 0;
    }

    if (!a4)
    {
      break;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v13 = sub_1000160D8;
    v14 = &unk_100335978;
    v15 = a4;
    v16 = &v17;
    v9 = v12;
    v10 = objc_autoreleasePoolPush();
    v13(v9);
    objc_autoreleasePoolPop(v10);

    LOBYTE(v9) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v9)
    {
      return 1;
    }
  }

  sub_10001D9F0(1, a3, @"SecDbStep SQLITE_ROW returned without a row handler");
  return 0;
}

void sub_100015EF4(uint64_t a1)
{
  v2 = sub_100015FB4(kCFAllocatorDefault, **(a1 + 48), *(a1 + 56), *(*(a1 + 48) + 120), *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = *(v4 + 144);
    v6 = *(v2 + 56);
    if (v6 != v5)
    {
      if (!v5 || (CFRetain(*(v4 + 144)), (v6 = v3[7]) != 0))
      {
        CFRelease(v6);
      }

      v3[7] = v5;
    }

    (*(*(a1 + 40) + 16))();

    CFRelease(v3);
  }
}

uint64_t sub_100015FB4(const __CFAllocator *a1, void *a2, sqlite3_stmt *a3, int a4, uint64_t a5)
{
  v8 = sub_1000160F4(a1, a2, a4, 0);
  v9 = a2[2];
  if (!v9)
  {
    return v8;
  }

  v10 = 0;
  for (i = 3; ; ++i)
  {
    if (!(*(a5 + 16))(a5, v9))
    {
      goto LABEL_6;
    }

    v12 = sub_10001620C(a1, a3, v9, v10);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    ++v10;
    v14 = *(v8 + 48);
    v15 = sub_100016428(v9);
    CFDictionarySetValue(v14, v15, v13);
    CFRelease(v13);
LABEL_6:
    v16 = sub_100016514(a2, 9, 0);
    if (v16 && CFDictionaryGetValue(*(v8 + 48), *v16))
    {
      *(v8 + 40) = 1;
    }

    v9 = a2[i];
    if (!v9)
    {
      return v8;
    }
  }

  if (v8)
  {
    CFRelease(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_1000160F4(const __CFAllocator *a1, uint64_t a2, int a3, uint64_t a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100162B04;
  block[3] = &unk_100338800;
  block[4] = &qword_10039DF98;
  if (qword_10039DF90 != -1)
  {
    dispatch_once(&qword_10039DF90, block);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a2;
  *(Instance + 48) = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(Instance + 28) = a3;
  *(Instance + 32) = a4;
  *(Instance + 40) = 0;
  *(Instance + 64) = @"od";
  return Instance;
}

CFDataRef sub_10001620C(const __CFAllocator *a1, sqlite3_stmt *a2, uint64_t a3, int iCol)
{
  result = 0;
  v9 = *(a3 + 8);
  if (v9 > 6)
  {
    if (v9 <= 0x10)
    {
      if (((1 << v9) & 0x10600) != 0)
      {
        goto LABEL_30;
      }

      if (((1 << v9) & 0x1800) != 0)
      {
        goto LABEL_10;
      }

      if (v9 == 14)
      {
LABEL_24:
        v12 = *(a3 + 16);

        return sub_1001631CC(a1, a2, iCol, v12);
      }
    }

    if (v9 != 7)
    {
      if (v9 != 8)
      {
        return result;
      }

      valuePtr = COERCE_DOUBLE(sqlite3_column_int64(a2, iCol));
      v13 = a1;
      v14 = kCFNumberSInt64Type;
      return CFNumberCreate(v13, v14, &valuePtr);
    }

LABEL_30:

    return sub_100016580(a1, a2, iCol);
  }

  if (v9 <= 2)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if ((v9 - 4) < 3)
  {
    v10 = sqlite3_column_double(a2, iCol);

    return CFDateCreate(a1, v10);
  }

  if (v9 != 3)
  {
    return result;
  }

LABEL_18:
  v11 = sqlite3_column_type(a2, iCol);
  result = 0;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        if (v11 == 5)
        {
          return kCFNull;
        }

        return result;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      return result;
    }

    valuePtr = sqlite3_column_double(a2, iCol);
    v13 = a1;
    v14 = kCFNumberDoubleType;
    return CFNumberCreate(v13, v14, &valuePtr);
  }

LABEL_10:

  return sub_100163168(a1, a2, iCol);
}

uint64_t sub_100016428(_BYTE *a1)
{
  if ((a1[16] & 8) == 0)
  {
    return *a1;
  }

  if (qword_10039DFA0 != -1)
  {
    dispatch_once(&qword_10039DFA0, &stru_100338C58);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000175CC;
  v4[3] = &unk_100338C80;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_10039DFB0, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100016514(void *a1, uint64_t a2, __CFString **a3)
{
  v3 = a1[2];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = a1 + 3;
  do
  {
    if (*(v3 + 8) == a2)
    {
      v4 = v3;
    }

    v6 = *v5++;
    v3 = v6;
  }

  while (v6);
  if (!v4)
  {
LABEL_7:
    sub_1000103CC(-26276, a3, @"Can't find attribute of kind %d in class %@", a2, *a1);
    return 0;
  }

  return v4;
}

CFDataRef sub_100016580(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol)
{
  v6 = sqlite3_column_blob(a2, iCol);
  v7 = sqlite3_column_bytes(a2, iCol);

  return CFDataCreate(a1, v6, v7);
}

void sub_1000165E8(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 48) + 240))
  {
    v4 = sub_100016514(*(a2 + 16), 1, 0);
    v5 = sub_100015BFC(a2, v4, 0);
    v6 = *(*(a1 + 48) + 240);
    if (v6)
    {
      if (!sub_10017A188(v6, v5))
      {
        return;
      }
    }
  }

  *(a2 + 64) = @"odel";
  v7 = *(a1 + 56);
  err = 0;
  v8 = sub_100016898(a2, 1, &err);
  v9 = err;
  if (!v8 && err)
  {
    if (CFErrorGetCode(err) == -25330)
    {
      if (v7)
      {
        *v7 = err;
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      return;
    }

    v9 = err;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (*(*(a1 + 48) + 116) == 1 && (v10 = sub_100015B5C(a2, kSecAttrSharingGroup)) != 0 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFStringGetTypeID()) && CFStringCompare(v11, kSecAttrSharingGroupNone, 0))
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot delete shared item for unentitled client", v22, 2u);
    }
  }

  else
  {
    v14 = sub_100016514(*(a2 + 16), 7, 0);
    v15 = sub_100015BFC(a2, v14, 0);
    if (v15)
    {
      v16 = v15;
      CFRetain(v15);
      v17 = sub_100015D00(a2);
      v18 = sub_100017084(a2);
      sub_1000154A0(a2, v14, v16, 0);
      CFRelease(v16);
    }

    else
    {
      v17 = sub_100015D00(a2);
      v18 = sub_100017084(a2);
      sub_1000154A0(a2, v14, 0, 0);
    }

    v19 = *(a1 + 64);
    v20 = *(*(a1 + 48) + 96);
    if (!v20)
    {
      if (v17 && !sub_10001A700(a2))
      {
        v20 = 0;
      }

      else
      {
        v20 = kCFBooleanFalse;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = sub_1000170C8(a2, v19, v20, *(*(a1 + 48) + 156), *(a1 + 56));
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v21 = *(a1 + 48);
      v21[113] = 1;
      if (v17)
      {
        v21[114] = 1;
      }

      if (v18)
      {
        v21[115] = 1;
      }
    }
  }
}

BOOL sub_100016898(uint64_t a1, int a2, __CFString **a3)
{
  v3 = *(a1 + 40);
  if (v3 == 6)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 != 1 && v4 == 0;
  if (v5 || (v9 = sub_100016514(*(a1 + 16), 9, a3)) == 0)
  {
    v20 = 1;
    return v20 & 1;
  }

  v10 = sub_100016E6C(a1, v9);
  if (v10)
  {
    *(a1 + 40) = 3;
    cf = 0;
    theDict = 0;
    v41 = 0;
    if (!sub_10000BAD8(*(a1 + 28), *(a1 + 32), *(a1 + 64), &cf, *(a1 + 56), v10, *(a1 + 16), *(a1 + 72), &theDict, &v41, a2, 0, a3))
    {
      goto LABEL_59;
    }

    if (v41 > 1)
    {
      if (theDict)
      {
        v22 = sub_100015424(a1, theDict, a3);
LABEL_26:
        v16 = v22;
        goto LABEL_55;
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"v_Data");
      if (sub_10001A768(a1, @"v_Data", Value, a3))
      {
        v12 = sub_100015B5C(a1, kSecAttrAccessGroup);
        v13 = sub_100015B5C(a1, kSecAttrAccessible);
        if (!v12)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = CFGetTypeID(v12);
        v16 = 1;
        if (v15 != CFStringGetTypeID() || !v14)
        {
LABEL_55:
          v32 = sub_100015814(a1, a3);
          if (v32)
          {
            v33 = v32;
            Protection = SecAccessControlGetProtection();
            v35 = SecAccessControlGetProtection();
            if (!CFEqual(Protection, v35))
            {
              v36 = SecAccessControlGetProtection();
              v37 = SecAccessControlGetProtection();
              v16 = sub_1000103CC(-26275, a3, @"ACL protection doesn't match the one in blob (%@ : %@)", v36, v37);
            }

            CFRelease(v33);
            goto LABEL_60;
          }

LABEL_59:
          v16 = 0;
LABEL_60:
          v38 = sub_100015A9C(a1, cf, 0);
          if (theDict)
          {
            CFRelease(theDict);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (a2)
          {
            v39 = 2;
          }

          else
          {
            v39 = 6;
          }

          v20 = v38 & v16;
          if ((v38 & v16) == 0)
          {
            v39 = 1;
          }

          *(a1 + 40) = v39;
          return v20 & 1;
        }

        v17 = CFGetTypeID(v14);
        if (v17 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v18 = *(a1 + 16);
        if (v18 == sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) && CFEqual(v14, kSecAttrAccessibleAlwaysPrivate))
        {
          v23 = sub_100015B5C(a1, kSecAttrService);
          if (!v23)
          {
            goto LABEL_19;
          }

          v24 = v23;
          v25 = CFGetTypeID(v23);
          if (v25 != CFStringGetTypeID() || !CFEqual(v12, @"apple"))
          {
            goto LABEL_19;
          }

          if (CFEqual(v24, @"AirPort"))
          {
LABEL_32:
            v26 = &kSecAttrAccessibleAfterFirstUnlock;
LABEL_36:
            v27 = *v26;
            v28 = a1;
            v29 = kSecAttrAccessible;
LABEL_37:
            v22 = sub_10001A768(v28, v29, v27, a3);
            goto LABEL_26;
          }

          if (!CFEqual(v24, @"com.apple.airplay.password"))
          {
            if (CFEqual(v24, @"YouTube"))
            {
              if (sub_10001A768(a1, kSecAttrAccessible, kSecAttrAccessibleWhenUnlocked, a3))
              {
                v27 = @"com.apple.youtube.credentials";
                v28 = a1;
                v29 = kSecAttrAccessGroup;
                goto LABEL_37;
              }

              goto LABEL_54;
            }

            v40 = sub_100015B5C(a1, kSecAttrDescription);
            if (sub_10016A0F8(v40) && (CFEqual(v40, @"IPSec Shared Secret") || CFEqual(v40, @"PPP Password")))
            {
              goto LABEL_32;
            }

LABEL_19:
            v16 = 1;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a1 + 16);
          if (v19 != sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098) || !CFEqual(v14, kSecAttrAccessibleAlwaysPrivate))
          {
            goto LABEL_19;
          }

          if (!CFEqual(v12, @"PrintKitAccessGroup"))
          {
            if (!CFEqual(v12, @"apple"))
            {
              goto LABEL_19;
            }

            v30 = sub_100015B5C(a1, kSecAttrProtocol);
            if (sub_10016A130(v30))
            {
              valuePtr = -1431655766;
              CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr > 2020635749)
              {
                if (valuePtr > 2020832359)
                {
                  if (valuePtr == 2020832370)
                  {
                    goto LABEL_35;
                  }

                  v31 = 2020832360;
                }

                else
                {
                  if (valuePtr == 2020635750)
                  {
                    goto LABEL_35;
                  }

                  v31 = 2020635752;
                }
              }

              else if (valuePtr > 1752462199)
              {
                if (valuePtr == 1752462200)
                {
                  goto LABEL_35;
                }

                v31 = 1920234360;
              }

              else
              {
                if (valuePtr == 1718907000)
                {
                  goto LABEL_35;
                }

                v31 = 1752461432;
              }

              if (valuePtr != v31)
              {
                goto LABEL_19;
              }
            }

            else if (!sub_10016A0F8(v30) || !CFEqual(v30, kSecAttrProtocolHTTPProxy) && !CFEqual(v30, kSecAttrProtocolHTTPSProxy) && !CFEqual(v30, kSecAttrProtocolRTSPProxy) && !CFEqual(v30, kSecAttrProtocolFTPProxy))
            {
              goto LABEL_19;
            }
          }
        }

LABEL_35:
        v26 = &kSecAttrAccessibleWhenUnlocked;
        goto LABEL_36;
      }
    }

LABEL_54:
    v16 = 0;
    goto LABEL_55;
  }

  return sub_1000103CC(-26276, a3, @"state= encrypted but edata is NULL");
}

const void *sub_100016E6C(uint64_t a1, const void **a2)
{
  if (!a1)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "secitem: item is nil!";
      v8 = &v12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

    return 0;
  }

  v2 = *(a1 + 48);
  if (!a2 || !v2)
  {
    v6 = sub_100006274("SecError");
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v9)
      {
        v10 = 0;
        v7 = "secitem: desc is nil!";
        v8 = &v10;
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      *buf = 0;
      v7 = "secitem: item->attributes is nil!";
      v8 = buf;
      goto LABEL_14;
    }

    return 0;
  }

  v3 = *a2;
  v4 = *(a1 + 48);

  return CFDictionaryGetValue(v4, v3);
}

CFStringRef sub_100016F6C(uint64_t a1)
{
  sub_100017B30();
  v2 = "rw";
  if (*(a1 + 24))
  {
    v2 = "ro";
  }

  if (*(a1 + 64))
  {
    v3 = "open";
  }

  else
  {
    v3 = "closed";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDbConnection %s %s>", v2, v3);
}

BOOL sub_100016FF0(const void *a1, uint64_t a2, BOOL *a3, uint64_t a4)
{
  v5 = sub_100015BFC(a1, a2, a4);
  v6 = v5;
  if (v5)
  {
    valuePtr = -86;
    v7 = CFGetTypeID(v5);
    v8 = v7 == CFNumberGetTypeID() && CFNumberGetValue(v6, kCFNumberCharType, &valuePtr) && valuePtr == 1;
    *a3 = v8;
  }

  return v6 != 0;
}

const void *sub_100017084(void *a1)
{
  result = sub_100015B5C(a1, kSecAttrSharingGroup);
  if (result)
  {
    v2 = CFGetTypeID(result);
    return (v2 == CFStringGetTypeID());
  }

  return result;
}

CFStringRef **sub_1000170C8(CFStringRef **a1, uint64_t a2, CFBooleanRef cf1, int a4, CFTypeRef *a5)
{
  if (cf1 && kCFBooleanFalse)
  {
    if (CFEqual(cf1, kCFBooleanFalse))
    {
LABEL_4:

      return sub_1000171B0(a1, a2, a5, &stru_100338B20);
    }
  }

  else if (kCFBooleanFalse == cf1)
  {
    goto LABEL_4;
  }

  result = sub_100163CE0(a1, cf1, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_10001C528(a1, result, a2, a5, &stru_100338AE0);
    CFRelease(v11);
    return v12;
  }

  return result;
}

uint64_t sub_1000171B0(CFStringRef **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = sub_10001728C(a1, a2, a3, a4);
  if (v6)
  {
    v7 = sub_100006274("item");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138478083;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deleted %{private}@ from %@", &v9, 0x16u);
    }

    sub_100018694(a2, a1, 0);
  }

  return v6;
}

uint64_t sub_10001728C(CFStringRef **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v8 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v8, 0);
  CFStringAppend(Mutable, @"DELETE FROM ");
  CFStringAppend(Mutable, *a1[2]);
  LOBYTE(v18) = 1;
  v10 = a1[2];
  v11 = v10[2];
  if (v11)
  {
    v12 = (v10 + 3);
    do
    {
      if ((*(a4 + 16))(a4, v11))
      {
        sub_1000098AC(Mutable, *v11, &v18);
      }

      v13 = *v12++;
      v11 = v13;
    }

    while (v13);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = Mutable != 0;
  if (Mutable)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = sub_10001741C;
    v17[3] = &unk_100338CA8;
    v17[6] = a1;
    v17[7] = a3;
    v17[4] = a4;
    v17[5] = &v18;
    v17[8] = a2;
    v14 = sub_10001489C(a2, Mutable, a3, v17);
    *(v19 + 24) &= v14;
    CFRelease(Mutable);
    v15 = *(v19 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v15 & 1;
}

__CFData *sub_10001741C(void *a1, sqlite3_stmt *pStmt)
{
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    LODWORD(v8) = 0;
    v9 = a1[4];
    v10 = (v6 + 24);
    while (1)
    {
      if ((*(v9 + 16))(v9, v7))
      {
        result = sub_100017508(v5, v7, v4);
        if (!result)
        {
          goto LABEL_9;
        }

        v12 = result;
        v8 = (v8 + 1);
        v13 = sub_10000CBCC(pStmt, v8, result, v4);
        CFRelease(v12);
        if (!v13)
        {
          break;
        }
      }

      v14 = *v10++;
      v7 = v14;
      if (!v14)
      {
        v4 = a1[7];
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    result = sub_100015DAC(a1[8], pStmt, v4, 0);
  }

LABEL_9:
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

__CFData *sub_100017508(CFMutableDictionaryRef *a1, _BYTE *a2, __CFString **a3)
{
  v6 = sub_100016428(a2);
  if ((~*(a2 + 4) & 0xALL) != 0 || (Value = CFDictionaryGetValue(a1[6], v6)) == 0)
  {
    v9 = sub_100015BFC(a1, a2, a3);
    if (v9)
    {
      v8 = sub_10001785C(a2, v9, a3);
      if (v8 && (a2[16] & 8) != 0)
      {
        CFDictionarySetValue(a1[6], v6, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = Value;
    CFRetain(Value);
  }

  return v8;
}

void sub_1000175CC(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(qword_10039DFA8, **(a1 + 40));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithFormat(0, 0, @"#%@", **(a1 + 40));
    CFDictionarySetValue(qword_10039DFA8, **(a1 + 40), *(*(*(a1 + 32) + 8) + 24));
    v2 = *(*(*(a1 + 32) + 8) + 24);

    CFRelease(v2);
  }
}

CFDataRef sub_100017694(const void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {

    return v2();
  }

  v4 = 0;
  v5 = *(a2 + 8);
  if (v5 > 7)
  {
    if (v5 > 12)
    {
      if ((v5 - 14) >= 2)
      {
        if (v5 != 13)
        {
          if (v5 != 16)
          {
            return v4;
          }

          goto LABEL_35;
        }

        return kCFNull;
      }

      goto LABEL_16;
    }

    if ((v5 - 11) >= 2)
    {
      if (v5 != 8)
      {
        return v4;
      }

      return kCFNull;
    }

    goto LABEL_27;
  }

  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16);
        goto LABEL_34;
      }

      if (v5 != 2)
      {
        return v4;
      }
    }

LABEL_16:
    v6 = *(a2 + 16);
    if ((v6 & 0x1000) != 0)
    {
      if ((v6 & 0x400) != 0)
      {
        return @"0";
      }

      if (v5 && (v6 & 0x800) != 0)
      {
        return &stru_100348050;
      }
    }

LABEL_34:
    if ((~v6 & 0x1800) == 0)
    {
LABEL_35:
      v11 = CFGetAllocator(a1);

      return CFDataCreate(v11, 0, 0);
    }

    return kCFNull;
  }

  if ((v5 - 5) < 2)
  {
    v10 = CFGetAllocator(a1);
    Current = CFAbsoluteTimeGetCurrent();
    v7 = v10;
    goto LABEL_30;
  }

  if (v5 == 3)
  {
LABEL_27:
    if ((*(a2 + 17) & 0x10) != 0)
    {
      valuePtr = 0;
      v9 = CFGetAllocator(a1);
      return CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
    }

    return kCFNull;
  }

  if (v5 != 4)
  {
    return v4;
  }

  if ((~*(a2 + 16) & 0x1400) != 0)
  {
    return kCFNull;
  }

  v7 = kCFAllocatorDefault;
  Current = 0.0;
LABEL_30:

  return CFDateCreate(v7, Current);
}

__CFData *sub_10001785C(uint64_t a1, const __CFNull *a2, __CFString **a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = kCFNull;
  }

  if (CFEqual(v5, kCFNull) && (*(a1 + 16) & 1) != 0)
  {
    v6 = sub_10001B134(a1, a3);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = CFRetain(v5);
  }

  if ((*(a1 + 16) & 8) == 0 || CFEqual(v6, kCFNull))
  {
    return v6;
  }

  v9 = sub_100009008(v6);
  if (v9)
  {
    v10 = v9;
    v7 = sub_10001B280(v9);
    if (v6)
    {
      CFRelease(v6);
    }

    v6 = v10;
  }

  else
  {
    sub_1000103CC(-26276, a3, @"failed to get attribute %@ data", *a1);
    v7 = 0;
    if (!v6)
    {
      return v7;
    }
  }

  CFRelease(v6);
  return v7;
}

const __CFDictionary *sub_100017964(void *a1, const __CFSet *a2, void *a3)
{
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = a1[2];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 24);
    do
    {
      if (CFSetContainsValue(a2, *v8))
      {
        v10 = sub_100015BFC(a1, v8, &v18);
        if (!v10)
        {
          if (Mutable)
          {
            v14 = 0;
LABEL_13:
            CFRelease(Mutable);
            if (v14)
            {
              goto LABEL_14;
            }
          }

LABEL_15:
          v16 = v18;
          if (a3)
          {
            v15 = 0;
            *a3 = v18;
            v18 = 0;
          }

          else
          {
            if (v18)
            {
              v18 = 0;
              CFRelease(v16);
            }

            v15 = 0;
          }

          goto LABEL_20;
        }

        v11 = v10;
        if (!CFEqual(kCFNull, v10))
        {
          CFDictionarySetValue(Mutable, *v8, v11);
        }
      }

      v12 = *v9++;
      v8 = v12;
    }

    while (v12);
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
  v14 = Copy;
  if (Mutable)
  {
    goto LABEL_13;
  }

  if (!Copy)
  {
    goto LABEL_15;
  }

LABEL_14:
  v15 = v14;
LABEL_20:

  return v15;
}

uint64_t sub_100017B30()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100085A1C;
  block[3] = &unk_100335600;
  block[4] = &qword_10039DC80;
  if (qword_10039DC78 != -1)
  {
    dispatch_once(&qword_10039DC78, block);
  }

  return qword_10039DC80;
}

void sub_100017BC8(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  if (v2 == 1)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      sub_100018800(v3, 1);
      v3 = *(a1 + 48);
    }

    v4 = sub_1000152F0(v3, @"END", *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = sub_1000152F0(v3, @"ROLLBACK", *(a1 + 56));
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  v6 = *(a1 + 48);
  *(v6 + 25) = 0;
  if ((*(v6 + 24) & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    sub_100018800(v6, v7);
    v6 = *(a1 + 48);
  }

  *(v6 + 32) = 1;
  if (*(a1 + 64) == 1 && *(*(v6 + 16) + 165) == 1 && (*(v6 + 24) & 1) == 0)
  {
    v8 = sub_100019404(v6, @"pragma page_count", -1);
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = sub_100019404(v6, @"pragma freelist_count", -1);
      if ((v10 & 0x80000000) == 0)
      {
        LODWORD(v11) = v10;
        v12 = (v9 - v10) / v9;
        if (v10 >> 13 || v12 <= 0.85)
        {
          if (v12 >= 0.4)
          {
            v11 = (v10 * 0.2);
          }

          sql = 0;
          asprintf(&sql, "pragma incremental_vacuum(%d)", v11);
          if (sql)
          {
            errmsg = 0;
            v13 = sqlite3_exec(*(v6 + 64), sql, 0, 0, &errmsg);
            if (v13)
            {
              v14 = v13;
              v15 = sub_100006274("SecError");
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                v19 = v14;
                v20 = 2082;
                v21 = errmsg;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incremental_vacuum failed with: (%d) %{public}s", buf, 0x12u);
              }
            }

            sqlite3_free(errmsg);
            free(sql);
          }
        }
      }
    }
  }
}

CFTypeID sub_100017E2C(const __CFArray *a1, CFTypeID *a2, const __CFArray **a3)
{
  v5 = a1;
  v6 = CFGetTypeID(a1);
  result = CFArrayGetTypeID();
  if (v6 == result)
  {
    result = CFArrayGetCount(v5);
    if (result == 2)
    {
      if (a2)
      {
        result = CFArrayGetValueAtIndex(v5, 0);
        *a2 = result;
      }

      if (a3)
      {
        result = CFArrayGetValueAtIndex(v5, 1);
        v5 = result;
LABEL_18:
        *a3 = v5;
      }
    }

    else
    {
      if (result == 1)
      {
        if (a2)
        {
          result = CFArrayGetValueAtIndex(v5, 0);
          *a2 = result;
        }
      }

      else if (a2)
      {
        *a2 = 0;
      }

      if (a3)
      {
        v5 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      goto LABEL_18;
    }
  }

  return result;
}

id sub_100017EF0(void *a1)
{
  v2 = kSecAttrSharingGroup;
  v8 = kSecAttrSharingGroup;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = [NSSet setWithArray:v3];
  v5 = sub_100017964(a1, v4, 0);

  v6 = [v5 objectForKeyedSubscript:v2];

  return v6;
}

void sub_100017FE8(id a1, __OpaqueSecDbConnection *a2, unint64_t a3, unint64_t a4, __CFArray *a5)
{
  if (a3)
  {
    if (a4 == 4)
    {
      v5 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        v6 = "Ignoring kSecDbKCSharingTransaction notification";
        goto LABEL_11;
      }

LABEL_7:

      return;
    }

    if (a4 == 3)
    {
      v5 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        v6 = "Ignoring kSecDbCKKSTransaction notification";
LABEL_11:
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, v8, 2u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018130;
    v8[3] = &unk_1003372C8;
    v8[4] = a2;
    v8[5] = a4;
    v9.length = CFArrayGetCount(a5);
    v9.location = 0;
    CFArrayApplyFunction(a5, v9, sub_1001105A0, v8);
  }
}

void sub_100018130(uint64_t a1, const __CFArray *a2)
{
  v8 = 0uLL;
  v4 = objc_autoreleasePoolPush();
  sub_100017E2C(a2, &v8 + 1, &v8);
  objc_autoreleasePoolPop(v4);
  if (v8 == 0)
  {
    v7 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SecDbEvent gave us garbage: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[CKKSViewManager manager];
    [v6 handleKeychainEventDbConnection:*(a1 + 32) source:*(a1 + 40) added:v8 deleted:?];

    objc_autoreleasePoolPop(v5);
  }
}

BOOL sub_100018260(unsigned int a1, __SecTask *a2, const __CFString *a3, __CFString **a4)
{
  v8 = sub_1000061AC(a2, a3);
  if (!v8)
  {
    if (a1 > 0x88)
    {
      v9 = @"Unknown xpc operation";
    }

    else
    {
      v9 = off_100343FD8[a1];
    }

    sub_1000103CC(-34018, a4, @"%@: %@ lacks entitlement %@", v9, a2, a3);
  }

  return v8;
}

CFDataRef sub_1000182FC(void *a1, const char *a2, __CFString **a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    if ((length & 0x8000000000000000) != 0)
    {
      sub_1000103CC(-50, a3, @"too large data for key %s", a2);
    }

    else
    {
      result = CFDataCreate(kCFAllocatorDefault, data, length);
      if (result)
      {
        return result;
      }

      sub_1000103CC(-50, a3, @"failed to create data for key %s", a2);
    }
  }

  else
  {
    sub_1000103CC(-50, a3, @"no data for key %s", a2);
  }

  return 0;
}

const void *sub_10001838C(void *a1, const char *a2, __CFString **a3)
{
  v5 = sub_10000674C(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      v8 = CFCopyTypeIDDescription(v7);
      sub_1000103CC(-50, a3, @"object for key %s not array but %@", a2, v8);
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100018424(const __CFAllocator *a1, CFMutableArrayRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
    return 0;
  }

  v7 = a1;
  Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v9 = ccder_decode_sequence_tl();
  if (!v9)
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v10, @"tag/length decode failed");
LABEL_11:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v11 = v9;
  while (v11 < v16)
  {
    value = 0;
    v12 = sub_1000068E0(v7, &value, a3);
    if (!v12)
    {
      goto LABEL_11;
    }

    v11 = v12;
    v13 = value;
    CFArrayAppendValue(Mutable, value);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  *a2 = Mutable;
  return v11;
}

uint64_t sub_100018550(void *a1, uint64_t a2, __CFString **a3)
{
  keys[0] = kSecClass;
  keys[1] = kSecReturnData;
  keys[2] = kSecMatchLimit;
  keys[3] = kSecAttrSubject;
  keys[4] = kSecAttrSynchronizable;
  values[0] = kSecClassCertificate;
  values[1] = kCFBooleanTrue;
  values[2] = kSecMatchLimitAll;
  values[3] = a1;
  values[4] = kSecAttrSynchronizableAny;
  v5 = CFDictionaryCreate(0, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = 0;
  v7[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7[1] = a2;
  LOBYTE(v8) = 1;
  sub_100007B14(v5, &v11, v7, a3);
  CFRelease(v5);
  return v11;
}

void sub_100018694(uint64_t a1, uint64_t a2, CFArrayRef a3)
{
  v6 = *(a1 + 16);
  os_unfair_lock_lock((v6 + 148));
  v7 = *(v6 + 152);
  os_unfair_lock_unlock((v6 + 148));
  if (!v7)
  {
    return;
  }

  if (a2 && a3)
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    v8 = kCFAllocatorDefault;
    v9 = 2;
  }

  else
  {
    if (!a2)
    {
      if (!a3)
      {
        return;
      }

      CFRetain(a3);
      goto LABEL_8;
    }

    *&v11 = a2;
    v8 = kCFAllocatorDefault;
    v9 = 1;
  }

  a3 = CFArrayCreate(v8, &v11, v9, &kCFTypeArrayCallBacks);
  if (!a3)
  {
    return;
  }

LABEL_8:
  CFArrayAppendValue(*(a1 + 72), a3);
  CFRelease(a3);
  if ((*(a1 + 25) & 1) == 0)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "db %@ changed outside txn", &v11, 0xCu);
    }

    sub_100018800(a1, 2);
  }
}

void sub_100018800(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (CFArrayGetCount(v4))
  {
    v5 = *(a1 + 16);
    os_unfair_lock_lock((v5 + 148));
    v6 = *(v5 + 152);
    if (v6)
    {
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, v6);
      os_unfair_lock_unlock((v5 + 148));
      if (Copy)
      {
        *(a1 + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_100018964;
        context[3] = &unk_100335CB8;
        context[4] = a1;
        context[5] = a2;
        context[6] = v4;
        v10.length = CFArrayGetCount(Copy);
        v10.location = 0;
        CFArrayApplyFunction(Copy, v10, sub_100086DC4, context);
        if (v4)
        {
          CFRelease(v4);
        }

        CFRelease(Copy);
      }
    }

    else
    {

      os_unfair_lock_unlock((v5 + 148));
    }
  }
}

void sub_100018984(id a1, __OpaqueSecDbConnection *a2, unint64_t a3, unint64_t a4, __CFArray *a5)
{
  if (!a3 || a4 != 1 || !objc_opt_class() || atomic_load_explicit(dword_10039DDE8, memory_order_acquire) > 1)
  {
    return;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = a5;
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v7)
  {
LABEL_42:

    return;
  }

  v9 = v7;
  v10 = 0;
  v11 = *v31;
  *&v8 = 138477827;
  v27 = v8;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      v28 = 0;
      v29 = 0;
      sub_100017E2C(v13, &v29, &v28);
      if (v29)
      {
        v14 = v28 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v29 || !v28)
        {
          if (!v29 || v28)
          {
            v16 = +[NSAssertionHandler currentHandler];
            v24 = [NSString stringWithUTF8String:"void KCSharingRegisterForDatabaseEvents(SecDbRef)_block_invoke"];
            [v16 handleFailureInFunction:v24 file:@"KCSharingSupport.m" lineNumber:116 description:@"Database event should have old item, new item, or both"];

            goto LABEL_36;
          }

          v23 = sub_100017EF0(v29);

          if (!v23)
          {
            continue;
          }

          v16 = KCSharingLogObject();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
LABEL_34:
            v10 = 1;
LABEL_36:

            continue;
          }

          *buf = v27;
          v35 = v29;
          v17 = v16;
          v18 = "KCSharing-relevant delete for oldItem=%{private}@";
        }

        else
        {
          v15 = sub_100017EF0(v28);

          if (!v15)
          {
            continue;
          }

          v16 = KCSharingLogObject();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          *buf = v27;
          v35 = v28;
          v17 = v16;
          v18 = "KCSharing-relevant insert for newItem=%{private}@";
        }

        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        goto LABEL_34;
      }

      v19 = sub_100017EF0(v29);
      v20 = sub_100017EF0(v28);
      v21 = v20;
      if (v19 | v20)
      {
        if (!v19 || !v20 || ![v19 isEqual:v20])
        {
          v25 = +[NSAssertionHandler currentHandler];
          v26 = [NSString stringWithUTF8String:"void KCSharingRegisterForDatabaseEvents(SecDbRef)_block_invoke"];
          [v25 handleFailureInFunction:v26 file:@"KCSharingSupport.m" lineNumber:92 description:@"Sharing group shouldn't change in update event"];

          goto LABEL_42;
        }

        v22 = KCSharingLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          v35 = v29;
          v36 = 2113;
          v37 = v28;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "KCSharing-relevant update for oldItem=%{private}@ to newItem=%{private}@", buf, 0x16u);
        }

        v10 = 1;
      }
    }

    v9 = [(__CFArray *)v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    v6 = +[KCSharingSyncController sharedInstance];
    [(__CFArray *)v6 processDatabaseModifications];
    goto LABEL_42;
  }
}

uint64_t sub_100019064()
{
  if (objc_opt_class())
  {
    return byte_10039DEC0;
  }

  v1 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "CloudKit.framework appears to not be linked. Cannot enable CKKS (on pain of crash).", v2, 2u);
  }

  return 0;
}

id sub_100019104(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100123388;
  v19 = sub_100123398;
  v5 = &_os_log_disabled;
  v20 = &_os_log_disabled;
  if (qword_10039DEF8 != -1)
  {
    dispatch_once(&qword_10039DEF8, &stru_100337830);
  }

  v6 = qword_10039DEF0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001927C;
  block[3] = &unk_100344920;
  v12 = v4;
  v13 = v3;
  v14 = &v15;
  v7 = v3;
  v8 = v4;
  dispatch_sync(v6, block);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_10001927C(void *a1)
{
  if (!qword_10039DF00)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = qword_10039DF00;
    qword_10039DF00 = v2;
  }

  v4 = a1[5];
  if (a1[4])
  {
    v5 = [v4 stringByAppendingFormat:@"-%@", a1[4]];
  }

  else
  {
    v5 = v4;
  }

  v13 = v5;
  v6 = [qword_10039DF00 objectForKeyedSubscript:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = v13;
    v10 = os_log_create("com.apple.security.ckks", [v13 cStringUsingEncoding:4]);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [qword_10039DF00 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v13];
  }
}

void sub_100019390(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t sub_100019404(uint64_t a1, const __CFString *a2, int a3)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1000195B8;
  v11[3] = &unk_100335950;
  v11[4] = &v20;
  v11[5] = &v12;
  v11[6] = &v16;
  v11[7] = a1;
  v4 = sub_10000A928(a1, a2, &v15, v11);
  v5 = v4 & v21[3];
  *(v21 + 24) = v5;
  if ((v5 & 1) == 0)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13[3];
      *buf = 138412546;
      v25 = a2;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecDBGetInteger [%@] failed: %@", buf, 0x16u);
    }
  }

  v8 = v13[3];
  if (v8)
  {
    v13[3] = 0;
    CFRelease(v8);
  }

  v9 = *(v17 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v9;
}

uint64_t sub_1000195B8(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[7];
  v4 = *(a1[5] + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10001965C;
  v6[3] = &unk_100335928;
  v6[4] = a1[6];
  v6[5] = a2;
  *(*(a1[4] + 8) + 24) &= sub_100015DAC(v3, a2, (v4 + 24), v6);
  return 1;
}

uint64_t sub_10001965C(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a2 = 1;
  return result;
}

BOOL sub_1000196A0(CFTypeRef cf1)
{
  if (qword_10039DFD8 != -1)
  {
    dispatch_once(&qword_10039DFD8, &stru_100338EF0);
  }

  return CFEqual(cf1, qword_10039DFE0) != 0;
}

uint64_t sub_100019700(uint64_t a1, int a2, CFErrorRef *a3)
{
  if (a2 && !*(a1 + 40))
  {
    if ((*(a1 + 114) & 1) != 0 || *(a1 + 113) == 1 && !sub_1000196A0(*(a1 + 128)))
    {
      sub_10017E8CC();
    }

    if (*(a1 + 115) == 1)
    {
      sub_10017E868();
    }
  }

  return sub_10000DF70(a1, a3) & a2;
}

BOOL sub_100019784(const __CFDictionary *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  if (sub_10000639C(a1, 0, a4))
  {
    v8 = sub_100011D64(a2);
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count)
      {
        v11 = Count;
        kdebug_trace();
        v12 = sub_100006454(a1, *(a2 + 24), 0, a2, a4);
        if (!v12)
        {
          v16 = 0;
          goto LABEL_61;
        }

        v13 = v12;
        Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
        v31.location = 0;
        v31.length = v11;
        if (CFArrayContainsValue(v9, v31, @"*"))
        {
          CFRelease(v9);
          v9 = 0;
        }

        if (Value)
        {
          if ((sub_1000091A8(v9, Value, a2) & 1) == 0)
          {
            v15 = sub_1000103CC(-34018, a4, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v9);
            goto LABEL_16;
          }
        }

        else
        {
          Value = CFArrayGetValueAtIndex(*(a2 + 8), 0);
          sub_1000079A0(kSecAttrAccessGroup, Value, v13);
        }

        v15 = 1;
LABEL_16:
        v18 = *(v13 + 192);
        if (v18 == 2 || v18 == 1 && *(a2 + 36) == 1)
        {
          v19 = *(v13 + 128);
          if (v19)
          {
            *(v13 + 128) = 0;
            CFRelease(v19);
          }

          v20 = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
          *(v13 + 128) = v20;
        }

        else
        {
          *(v13 + 192) = 0;
          v20 = *(v13 + 128);
        }

        sub_100008D78(&off_100342650, v20, v13);
        if (!v15)
        {
          v26 = 0;
          goto LABEL_60;
        }

        sub_100019ED0(v13, Value);
        v21 = CFDictionaryGetValue(a1, @"f_ckkscallback");
        if (v21)
        {
          *(v13 + 155) = 1;
          *(v13 + 160) = v21;
        }

        v22 = sub_100019F7C();
        sub_1000079A0(@"persistref", v22, v13);
        v23 = *(v13 + 80);
        if (v23 != v22)
        {
          if (!v22 || (CFRetain(v22), (v23 = *(v13 + 80)) != 0))
          {
            CFRelease(v23);
          }

          *(v13 + 80) = v22;
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (*(a2 + 44) == 1)
        {
          if (!sub_100184F24(a2))
          {
            v25 = @"App clips are not permitted to use access groups other than application identifier";
            goto LABEL_42;
          }

          if (*(a2 + 44))
          {
            v24 = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
            if (v24 && kCFBooleanTrue)
            {
              if (CFEqual(v24, kCFBooleanTrue))
              {
LABEL_39:
                v25 = @"App clips are not permitted to add synchronizable items to the keychain";
LABEL_42:
                v27 = -34020;
LABEL_58:
                v29 = sub_1000103CC(v27, a4, v25);
                goto LABEL_59;
              }
            }

            else if (v24 == kCFBooleanTrue)
            {
              goto LABEL_39;
            }
          }
        }

        v28 = *(v13 + 192);
        if (v28)
        {
          if ((*(a2 + 16) & 1) == 0)
          {
            v25 = @"client doesn't have entitlement for system keychain";
            goto LABEL_57;
          }

          if (v28 == 2 && sub_100185414(a1))
          {
            v25 = @"Can't store system keychain (always) and synchronizable";
LABEL_54:
            v27 = -50;
            goto LABEL_58;
          }
        }

        if (*(v13 + 196) && (*(a2 + 17) & 1) == 0)
        {
          v25 = @"client doesn't have entitlement for syncbubble keychain";
        }

        else
        {
          if (*(v13 + 72) || *(v13 + 240))
          {
            v25 = @"q_row_id";
            goto LABEL_54;
          }

          if (*(v13 + 116) != 1 || !CFDictionaryContainsKey(*(v13 + 8), kSecAttrSharingGroup))
          {
            if (*(v13 + 40))
            {
              v26 = 1;
LABEL_60:
              v16 = sub_100019700(v13, v26, a4);
              if (!v9)
              {
LABEL_62:
                kdebug_trace();
                return v16;
              }

LABEL_61:
              CFRelease(v9);
              goto LABEL_62;
            }

            sub_100185528(@"add", Value, a2);
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 0x40000000;
            v30[2] = sub_100019FE4;
            v30[3] = &unk_1003426C0;
            v30[4] = a4;
            v30[5] = v13;
            v30[6] = a3;
            v29 = sub_100008A70(1, 1, 0, a4, v30);
LABEL_59:
            v26 = v29;
            goto LABEL_60;
          }

          v25 = @"can't add shared item without Keychain Sharing client entitlement";
        }

LABEL_57:
        v27 = -34018;
        goto LABEL_58;
      }

      CFRelease(v9);
    }

    return sub_1000103CC(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  return 0;
}

void sub_100019C0C(const void *a1, const void *a2, uint64_t a3)
{
  if (CFEqual(a1, kSecValueData))
  {

    sub_100019E30(a2, a3);
  }

  else if (CFEqual(a1, kSecValuePersistentRef))
  {
    if (_SecItemParsePersistentRef())
    {
      sub_10000927C(a3, 0, (a3 + 40));
    }

    else
    {
      sub_1000103CC(-50, (a3 + 40), @"add_value: value %@ is not a valid persitent ref", a2);
    }
  }

  else
  {
    sub_1000103CC(-50, (a3 + 40), @"add_value: unknown key %@", a1);
  }
}

void sub_100019E30(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDataGetTypeID())
  {
    *(a2 + 56) = a1;
    v5 = *(a2 + 8);
    if (v5)
    {

      CFDictionarySetValue(v5, kSecValueData, a1);
    }
  }

  else
  {
    sub_1000103CC(-50, (a2 + 40), @"set_data: value %@ is not type data", a1);
  }
}

void sub_100019ED0(uint64_t *a1, CFTypeRef cf1)
{
  if (!a1[17])
  {
    if (CFEqual(cf1, @"com.apple.apsd"))
    {
      v4 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    }

    else
    {
      v5 = *a1;
      v6 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
      v4 = &kSecAttrAccessibleWhenUnlocked;
      if (v5 == v6)
      {
        v4 = &kSecAttrAccessibleAlwaysPrivate;
      }
    }

    v7 = *v4;

    sub_1000079A0(kSecAttrAccessible, v7, a1);
  }
}

CFDataRef sub_100019F7C()
{
  v0 = CFUUIDCreate(kCFAllocatorDefault);
  v3 = CFUUIDGetUUIDBytes(v0);
  v1 = CFDataCreate(kCFAllocatorDefault, &v3.byte0, 16);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_100019FE4(void *a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001A064;
  v5[3] = &unk_1003426A0;
  v2 = a1[4];
  v3 = a1[6];
  v5[4] = a1[5];
  v5[5] = a2;
  v5[6] = v3;
  v5[7] = v2;
  return sub_1000141DC(a2, 2, v2, v5);
}

uint64_t sub_10001A064(uint64_t a1)
{
  sub_10001A0A4(*(a1 + 32));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return sub_10001A2F4(v2, v3, v4, v5);
}

void sub_10001A0A4(CFDictionaryRef *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(0, Current);
  v4 = *(*a1 + 2);
  if (v4)
  {
    v5 = (*a1 + 24);
    do
    {
      v6 = *(v4 + 16);
      if ((v6 & 2) != 0)
      {
        if ((*(v4 + 8) - 5) > 1)
        {
          if ((v6 & 0x1000) == 0 || CFDictionaryContainsKey(a1[1], *v4))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 16);
          if ((v7 & 0x400) != 0)
          {
            if (*(v4 + 8) == 4)
            {
              v9 = CFDateCreate(kCFAllocatorDefault, 0.0);
            }

            else
            {
              valuePtr = 0;
              v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            }
          }

          else
          {
            if ((v7 & 0x800) == 0)
            {
              goto LABEL_18;
            }

            v8 = *(v4 + 8);
            if (v8 != 16 && v8 != 1)
            {
              CFRetain(&stru_100348050);
              v10 = &stru_100348050;
LABEL_17:
              sub_100008D78(v4, v10, a1);
              CFRelease(v10);
              goto LABEL_18;
            }

            v9 = CFDataCreate(kCFAllocatorDefault, 0, 0);
          }

          v10 = v9;
          if (v9)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_10001A204(v4, v3, a1);
        }
      }

LABEL_18:
      v11 = *v5++;
      v4 = v11;
    }

    while (v11);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_10001A204(CFTypeRef *a1, const __CFString *a2, uint64_t a3)
{
  if (CFDictionaryContainsKey(*(a3 + 8), *a1) && *(a3 + 32) >= 1)
  {
    v6 = 0;
    v7 = (a3 + 280);
    while (!CFEqual(*a1, *(v7 - 2)))
    {
      ++v6;
      v7 += 2;
      if (v6 >= *(a3 + 32))
      {
        goto LABEL_13;
      }
    }

    v8 = *(a3 + 264 + 16 * v6 + 8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a3 + 32);
    *(a3 + 32) = v9 - 1;
    if (v6 < v9 - 1)
    {
      v10 = ~v6 + v9;
      do
      {
        *(v7 - 1) = *v7;
        v7 += 2;
        --v10;
      }

      while (v10);
    }

    CFDictionaryRemoveValue(*(a3 + 8), *a1);
  }

LABEL_13:

  sub_100008D78(a1, a2, a3);
}

uint64_t sub_10001A2F4(uint64_t a1, uint64_t a2, CFDataRef *a3, __CFString **a4)
{
  if (*(a2 + 24) == *(a2 + 16) && !*(a2 + 88))
  {
    v10 = sub_10001A690(*a2, *(a2 + 8), dword_10039E2F8, a4);
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    if (sub_10001A700(v10))
    {
      if (*(a2 + 96))
      {
        v12 = *(a2 + 96);
      }

      else
      {
        v12 = kCFBooleanTrue;
      }

      sub_1000154A0(v11, &off_100339F68, v12, 0);
    }

    v13 = *(a2 + 56);
    if (v13)
    {
      v14 = sub_10001A768(v11, @"v_Data", v13, a4);
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a2 + 72);
    if (v15)
    {
      v14 = sub_10001BF68(v11, v15, a4);
    }

    v16 = *(a2 + 80);
    if (v16)
    {
      v14 = sub_10001A804(v11, v16, a4);
    }

    v17 = *(a2 + 128);
    if (v17)
    {
      v14 = sub_10001A768(v11, @"musr", v17, a4);
    }

    sub_10001A9E8(v11, *(a2 + 144));
    if (sub_100019064() && (sub_10001A87C(v11, *(a2 + 155), a4), *(a2 + 160)))
    {
      v18 = sub_100015BFC(v11, &off_100343C98, a4);
      if (v18)
      {
        sub_1001105B8(v18, *(a2 + 160));
        if ((v14 & 1) == 0)
        {
LABEL_25:
          v19 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v29 = sub_100006274("SecError");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Couldn't fetch UUID from item; can't call callback", buf, 2u);
        }

        if (!sub_1000103CC(-26276, a4, @"uuid disappeared"))
        {
          goto LABEL_25;
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_25;
    }

    v22 = *(a2 + 155);
    *buf = _NSConcreteStackBlock;
    v31 = 0x40000000;
    v32 = sub_10001E9B0;
    v33 = &unk_100338910;
    v34 = v11;
    v35 = v22;
    v36 = 0;
    v23 = sub_10001AA4C(v11, a1, a4, buf);
    v19 = v23;
    if (a3 && v23)
    {
      v24 = *(a2 + 48);
      if (v24)
      {
        *a3 = sub_100179F18(v11, v24, a4);
      }

      goto LABEL_48;
    }

LABEL_26:
    if (a4 && (v19 & 1) == 0 && *a4)
    {
      Domain = CFErrorGetDomain(*a4);
      if (CFEqual(Domain, @"com.apple.utilities.sqlite3") && CFErrorGetCode(*a4) == 19)
      {
        v21 = *a4;
        if (*a4)
        {
          *a4 = 0;
          CFRelease(v21);
        }

        sub_1000103CC(-25299, a4, @"duplicate item %@", v11);
        goto LABEL_52;
      }

      v25 = CFErrorGetDomain(*a4);
      if (CFEqual(v25, kCFErrorDomainOSStatus))
      {
        if (CFErrorGetCode(*a4) == -26275)
        {
          v26 = sub_100016514(v11[2], 14, a4);
          v27 = sub_100015BFC(v11, v26, a4);
          if (v27)
          {
            if (CFEqual(v27, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
            {
              v28 = *a4;
              if (*a4)
              {
                *a4 = 0;
                CFRelease(v28);
              }

              sub_1000103CC(-25293, a4, @"authentication failed");
              goto LABEL_52;
            }
          }
        }
      }
    }

    if (!v19)
    {
LABEL_52:
      v5 = 0;
LABEL_53:
      CFRelease(v11);
      return v5;
    }

LABEL_48:
    v5 = 1;
    *(a2 + 113) = 1;
    if (sub_100015D00(v11))
    {
      *(a2 + 114) = 1;
    }

    if (sub_100017084(v11))
    {
      *(a2 + 115) = 1;
    }

    goto LABEL_53;
  }

  return 1;
}

const void *sub_10001A690(uint64_t a1, const __CFDictionary *a2, int a3, uint64_t a4)
{
  v6 = sub_1000160F4(kCFAllocatorDefault, a1, a3, 0);
  v7 = v6;
  if (v6 && (sub_100015424(v6, a2, a4) & 1) == 0)
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t sub_10001A700(void **a1)
{
  v5 = -86;
  v2 = sub_100016514(a1[2], 12, 0);
  v3 = sub_100016FF0(a1, v2, &v5, 0);
  return v3 & v5;
}

uint64_t sub_10001A768(uint64_t a1, CFTypeRef cf2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v10 = (v4 + 24);
  while (!CFEqual(*v5, cf2))
  {
    v11 = *v10++;
    v5 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return sub_1000154A0(a1, v5, a3, a4);
}

uint64_t sub_10001A804(uint64_t a1, const __CFData *a2, __CFString **a3)
{
  v6 = sub_100016514(*(a1 + 16), 16, a3);
  if (!a2 || !v6)
  {
    return 1;
  }

  return sub_1000154A0(a1, v6, a2, a3);
}

void sub_10001A87C(void *a1, int a2, __CFString **a3)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v5 = sub_10001B8B8(a1, 1, a3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000885B0(v5);
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    if (CFDataGetLength(v7) < 16)
    {
      v8 = 0;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      memset(buffer, 170, sizeof(buffer));
      v10.location = 0;
      v10.length = 16;
      CFDataGetBytes(v7, v10, buffer);
      v8 = CFUUIDCreateWithBytes(0, buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5], buffer[6], buffer[7], buffer[8], buffer[9], buffer[10], buffer[11], buffer[12], buffer[13], buffer[14], buffer[15]);
      if (!v7)
      {
LABEL_11:
        if (v8)
        {
          sub_10001A768(a1, kSecAttrUUID, v8, a3);
LABEL_14:
          CFRelease(v8);
          return;
        }

LABEL_13:
        v8 = CFUUIDCreate(0);
        sub_10001A768(a1, kSecAttrUUID, v8, a3);
        if (!v8)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    CFRelease(v7);
    goto LABEL_11;
  }
}

void sub_10001A9E8(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 56)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 56) = cf;
  }
}

uint64_t sub_10001AA4C(uint64_t a1, uint64_t a2, __CFString **a3, uint64_t a4)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = sub_10001AC7C(a1, a2, &v28);
  if ((v22[3] & 1) == 0)
  {
    v8 = v26[3];
    if (v8)
    {
      if (CFErrorGetCode(v8) == 19)
      {
        Domain = CFErrorGetDomain(v26[3]);
        if (CFEqual(@"com.apple.utilities.sqlite3", Domain))
        {
          v10 = sub_10001DBD0(a1, a3);
          if (v10)
          {
            v11 = v10;
            v12 = *(a1 + 56);
            v13 = v10[18];
            if (v13 != v12)
            {
              if (!v12 || (CFRetain(*(a1 + 56)), (v13 = v11[18]) != 0))
              {
                CFRelease(v13);
              }

              v11[18] = v12;
            }

            v20[0] = _NSConcreteStackBlock;
            v20[1] = 0x40000000;
            v20[2] = sub_10001E738;
            v20[3] = &unk_1003388F0;
            v20[4] = a4;
            v20[5] = &v21;
            v20[6] = &v25;
            v20[7] = a3;
            v20[8] = a1;
            v20[9] = a2;
            sub_100014718(v11, a2, a3, 0, &stru_100338888, 0, 0, v20);
            sub_10001A9E8(a1, v11[18]);
            v14 = sub_10000DF70(v11, a3);
            *(v22 + 24) &= v14;
          }
        }
      }
    }
  }

  v15 = *(v22 + 24);
  v16 = v26[3];
  if (a3 && v16)
  {
    if (!*a3)
    {
      goto LABEL_22;
    }

    if (CFErrorGetCode(*a3) != -25330)
    {
      goto LABEL_20;
    }

    v17 = *a3;
    if (!*a3)
    {
LABEL_22:
      v18 = 0;
      *a3 = v16;
      goto LABEL_24;
    }

    *a3 = 0;
    CFRelease(v17);
  }

  else
  {
    if (!v16)
    {
      v18 = 1;
      goto LABEL_24;
    }

    if (!a3)
    {
      goto LABEL_21;
    }
  }

LABEL_20:
  if (!*a3)
  {
    goto LABEL_22;
  }

LABEL_21:
  CFRelease(v16);
  v18 = 0;
LABEL_24:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v15 & v18;
}

uint64_t sub_10001AC7C(CFStringRef **a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_100016898(a1, 1, a3))
  {
    v6 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v6, 0);
    CFStringAppend(Mutable, @"INSERT INTO ");
    CFStringAppend(Mutable, *a1[2]);
    CFStringAppend(Mutable, @"(");
    v8 = a1[2];
    v9 = v8[2];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v8 + 3;
      do
      {
        if ((v9->data & 2) != 0)
        {
          isa = v9->isa;
          if (v11)
          {
            CFStringAppend(Mutable, @",");
          }

          ++v10;
          CFStringAppend(Mutable, isa);
          v11 = 1;
        }

        v14 = *v12++;
        v9 = v14;
      }

      while (v14);
      CFStringAppend(Mutable, @"VALUES(?"));
      if (v10 >= 2)
      {
        v15 = v10 + 1;
        do
        {
          CFStringAppend(Mutable, @",?");
          --v15;
        }

        while (v15 > 2);
      }
    }

    else
    {
      CFStringAppend(Mutable, @"VALUES(?"));
    }

    CFStringAppend(Mutable, @""));
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = Mutable != 0;
    if (!Mutable)
    {
      goto LABEL_30;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = sub_10001AFB0;
    v22[3] = &unk_100338848;
    v22[6] = a1;
    v22[7] = a3;
    v22[4] = &stru_100338820;
    v22[5] = &v23;
    v22[8] = a2;
    v17 = sub_10001489C(a2, Mutable, a3, v22);
    *(v24 + 24) &= v17;
    CFRelease(Mutable);
    if (v24[3])
    {
      v18 = sub_100006274("item");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v28 = a1;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "inserted %{private}@", buf, 0xCu);
      }

      sub_100018694(a2, 0, a1);
    }

    else
    {
LABEL_30:
      if ((sub_10001C8C4(a1) & 1) == 0)
      {
        v19 = sub_100006274("item");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v20 = *a3;
          }

          else
          {
            v20 = 0;
          }

          *buf = 138478083;
          v28 = a1;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "insert failed for item %{private}@ with %@", buf, 0x16u);
        }
      }
    }

    v16 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10001AFB0(void *a1, sqlite3_stmt *pStmt)
{
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    LODWORD(v8) = 0;
    v9 = a1[4];
    v10 = (v6 + 24);
    while (1)
    {
      if ((*(v9 + 16))(v9, v7))
      {
        result = sub_100017508(v5, v7, v4);
        if (!result)
        {
          goto LABEL_11;
        }

        v12 = result;
        v8 = (v8 + 1);
        v13 = sub_10000CBCC(pStmt, v8, result, v4);
        CFRelease(v12);
        if (!v13)
        {
          break;
        }
      }

      v14 = *v10++;
      v7 = v14;
      if (!v14)
      {
        v4 = a1[7];
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    result = sub_100015DAC(a1[8], pStmt, v4, 0);
    if (result)
    {
      v15 = a1[7];
      v16 = a1[6];
      insert_rowid = sqlite3_last_insert_rowid(*(a1[8] + 64));
      result = sub_10001BF68(v16, insert_rowid, v15);
    }
  }

LABEL_11:
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

CFDataRef sub_10001B134(uint64_t a1, __CFString **a2)
{
  v2 = *(a1 + 8);
  v3 = &stru_100348050;
  if (v2 <= 10)
  {
    if (v2 > 2)
    {
      if ((v2 - 5) < 2)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v4 = kCFAllocatorDefault;
        goto LABEL_17;
      }

      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v4 = kCFAllocatorDefault;
          Current = 0.0;
LABEL_17:

          return CFDateCreate(v4, Current);
        }

        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (v2 < 2)
    {
      goto LABEL_12;
    }

    if (v2 == 2)
    {
      return v3;
    }

LABEL_21:
    sub_1000103CC(-26276, a2, @"attr %@ has no default value", *a1);
    return 0;
  }

  if ((v2 - 11) < 2)
  {
LABEL_15:
    valuePtr = 0;
    return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  }

  if ((v2 - 14) < 2)
  {
    return v3;
  }

  if (v2 != 16)
  {
    goto LABEL_21;
  }

LABEL_12:

  return CFDataCreate(kCFAllocatorDefault, 0, 0);
}

__CFData *sub_10001B280(const __CFData *a1)
{
  CFDataGetLength(a1);
  v2 = CFGetAllocator(a1);
  CFDataGetBytePtr(a1);
  v3 = ccsha1_di();

  return sub_10001B2EC(v2, v3);
}

__CFData *sub_10001B2EC(const __CFAllocator *a1, CFIndex *a2)
{
  Mutable = CFDataCreateMutable(a1, *a2);
  CFDataSetLength(Mutable, *a2);
  CFDataGetMutableBytePtr(Mutable);
  ccdigest();
  return Mutable;
}

__CFDictionary *sub_10001B350(void *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = a1[2];
  v10 = *(v9 + 16);
  if (!v10)
  {
    return Mutable;
  }

  for (i = (v9 + 24); ; ++i)
  {
    v12 = v10[2];
    if ((a2 & ~v12) == 0)
    {
      if ((v12 & a3) != 0)
      {
        return Mutable;
      }

      v13 = sub_100015BFC(a1, v10, a4);
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = v13;
      if (!CFEqual(kCFNull, v13))
      {
        CFDictionarySetValue(Mutable, *v10, v14);
        goto LABEL_10;
      }

      if ((*(v10 + 17) & 0x10) != 0)
      {
        break;
      }
    }

LABEL_10:
    v15 = *i;
    v10 = v15;
    if (!v15)
    {
      return Mutable;
    }
  }

  sub_1000103CC(-26275, a4, @"attribute %@ has NULL value", *v10);
  v16 = sub_100006274("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v18 = *a4;
    }

    else
    {
      v18 = @"error == NULL";
    }

    *buf = 138412290;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

__CFData *sub_10001B514(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v22 = 0;
  v5 = sub_10001B350(a1, 32, 0, a3);
  v6 = sub_10001B350(a1, 128, 0, a3);
  v7 = sub_10001B350(a1, 0x2000, 0, a3);
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = sub_100015814(a1, a3);
    v10 = sub_10001B87C(a1, 256, a3);
    v11 = v10;
    if (v9 && v10)
    {
      CFDictionarySetValue(v8, kSecAttrSHA1, v10);
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10001B9C4;
      context[3] = &unk_100338D38;
      context[4] = v6;
      context[5] = v8;
      CFDictionaryApplyFunction(v5, sub_100169384, context);
      if (sub_10001BA08(*(a1 + 28), v9, *(a1 + 56), v5, v6, v8, &v22, 1, 0, a3))
      {
        *(a1 + 40) = 4;
LABEL_44:
        CFRelease(v9);
        goto LABEL_45;
      }

      if (a3 && *a3 && CFErrorGetCode(*a3) == -25330)
      {
        Domain = CFErrorGetDomain(*a3);
        if (Domain && kCFErrorDomainOSStatus)
        {
          if (CFEqual(Domain, kCFErrorDomainOSStatus))
          {
            goto LABEL_44;
          }
        }

        else if (Domain == kCFErrorDomainOSStatus)
        {
          goto LABEL_44;
        }
      }

      v19 = sub_100006274("SecCritical");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v20 = *a3;
        }

        else
        {
          v20 = &stru_100348050;
        }

        *buf = 138412290;
        v24 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data (db): failed: %@", buf, 0xCu);
      }

      goto LABEL_44;
    }

    if (v10)
    {
LABEL_45:
      CFRelease(v11);
    }
  }

  else
  {
    if (!v5 && !v6 && !v7)
    {
      return v22;
    }

    v12 = sub_100006274("SecEmergency");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v15 = @"missing";
      if (v5)
      {
        v16 = @"present";
      }

      else
      {
        v16 = @"missing";
      }

      if (v6)
      {
        v17 = @"present";
      }

      else
      {
        v17 = @"missing";
      }

      if (v8)
      {
        v15 = @"present";
      }

      if (a3)
      {
        v18 = *a3;
      }

      else
      {
        v18 = @"no error pointer";
      }

      *buf = 138413058;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v18;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "SecDbKeychainItemCopyEncryptedData: not all plists are present: secretStuff: %@, attributes: %@, auth_attributes: %@ : %@", buf, 0x2Au);
    }

    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  CFRelease(v5);
  if (v6)
  {
LABEL_14:
    CFRelease(v6);
  }

LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

  return v22;
}

__CFDictionary *sub_10001B87C(void *a1, uint64_t a2, __CFString **a3)
{
  result = sub_10001B8B8(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = sub_10001B280(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

__CFDictionary *sub_10001B8B8(void *a1, uint64_t a2, __CFString **a3)
{
  result = sub_10001B350(a1, a2, 0, a3);
  if (result)
  {
    v8 = result;
    v9 = sub_10001B910(result, a3, v5, v6, v7);
    CFRelease(v8);
    return v9;
  }

  return result;
}

__CFData *sub_10001B910(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000E384(a1, a2, a3, a4, a5);
  Mutable = CFDataCreateMutable(0, v7);
  CFDataSetLength(Mutable, v7);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!sub_10000E614(a1, a2, 0, MutableBytePtr, &MutableBytePtr[v7]) && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_10001B9C4(uint64_t a1, const void *a2)
{
  CFDictionaryRemoveValue(*(a1 + 32), a2);
  v4 = *(a1 + 40);

  CFDictionaryRemoveValue(v4, a2);
}

BOOL sub_10001BA08(uint64_t a1, uint64_t a2, const __CFData *a3, CFDictionaryRef theDict, void *a5, const __CFDictionary *a6, __CFData **a7, int a8, char a9, __CFString **a10)
{
  if (dword_10039E2F8 == a1 && a9 == 0)
  {
    Protection = SecAccessControlGetProtection();
    v24 = sub_10001BD38(Protection, a10);
    if (v24)
    {
      v25 = v24;
      v37 = a7;
      v38 = objc_autoreleasePoolPush();
      if (a5)
      {
        v26 = [a5 mutableCopy];
      }

      else
      {
        v26 = +[NSMutableDictionary dictionary];
      }

      v27 = v26;
      [v26 addEntriesFromDictionary:a6];
      v28 = SecAccessControlCopyData();
      [v27 setObject:v28 forKeyedSubscript:@"SecAccessControl"];

      v29 = +[NSUUID UUID];
      v30 = [v29 UUIDString];

      v31 = [[SecDbKeychainItemV7 alloc] initWithSecretAttributes:theDict metadataAttributes:v27 tamperCheck:v30 keyclass:v25];
      v39 = 0;
      v32 = [(SecDbKeychainItemV7 *)v31 encryptedBlobWithKeybag:a1 accessControl:a2 acmContext:a3 error:&v39];
      v33 = v39;
      v34 = v33;
      v22 = v32 != 0;
      if (v32)
      {
        v35 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v32 length] + 4);
        *[v35 mutableBytes] = 8;
        memcpy([v35 mutableBytes] + 4, objc_msgSend(v32, "bytes"), objc_msgSend(v32, "length"));
        *v37 = v35;
      }

      else if (a10)
      {
        *a10 = v33;
      }

      objc_autoreleasePoolPop(v38);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a9 & 1) == 0)
    {
      if (qword_10039DFB8 != -1)
      {
        dispatch_once(&qword_10039DFB8, &stru_100338D58);
      }

      dispatch_source_merge_data(qword_10039DFC0, 1uLL);
    }

    Count = CFDictionaryGetCount(theDict);
    v20 = CFDictionaryGetCount(a5);
    MutableCopy = CFDictionaryCreateMutableCopy(0, v20 + Count, a5);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_1001693A0;
    context[3] = &unk_1003469D0;
    context[4] = MutableCopy;
    CFDictionaryApplyFunction(theDict, sub_100169384, context);
    v22 = sub_100168BB8(a1, a2, a3, MutableCopy, a6, a7, a8, a9, a10);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  return v22;
}

uint64_t sub_10001BD38(const void *a1, __CFString **a2)
{
  if (!a1)
  {
    sub_1000103CC(-50, a2, @"accessible attribute %@ not a string", 0);
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    sub_1000103CC(-50, a2, @"accessible attribute %@ not a string", a1);
    return 0;
  }

  if (CFEqual(a1, kSecAttrAccessibleWhenUnlocked))
  {
    return 6;
  }

  if (CFEqual(a1, kSecAttrAccessibleAfterFirstUnlock))
  {
    return 7;
  }

  if (CFEqual(a1, kSecAttrAccessibleAlwaysPrivate))
  {
    return 8;
  }

  if (CFEqual(a1, kSecAttrAccessibleWhenUnlockedThisDeviceOnly))
  {
    return 9;
  }

  if (CFEqual(a1, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly))
  {
    return 10;
  }

  if (CFEqual(a1, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate))
  {
    return 11;
  }

  if (!CFEqual(a1, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
  {
    sub_1000103CC(-50, a2, @"accessible attribute %@ unknown", a1);
    return 0;
  }

  return 12;
}

uint64_t sub_10001BF68(void **a1, uint64_t a2, __CFString **a3)
{
  v6 = sub_100016514(a1[2], 8, a3);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  valuePtr = a2;
  v8 = CFGetAllocator(a1);
  v9 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_1000154A0(a1, v7, v9, a3);
  CFRelease(v10);
  return v11;
}

void sub_10001C008(uint64_t a1)
{
  cf = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  if (sub_10001C4BC(lock_state, &cf, @"aks_get_lock_state failed: %x", lock_state))
  {
    if ((buf[0] & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = cf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecDbKeychainMetadataKeyStore: error getting lock state: %@", buf, 0xCu);
    }

    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueueDropClassAKeys];
}

BOOL sub_10001C4BC(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    sub_100010118(a1, kCFErrorDomainMach, v5, a2, format, va);
  }

  return a1 == 0;
}

uint64_t sub_10001C528(__CFString ***a1, CFStringRef **a2, uint64_t a3, CFTypeRef *a4, uint64_t a5)
{
  v10 = sub_100015B5C(a1, kSecAttrPersistentReference);
  if (!v10 || CFDataGetLength(v10) != 16)
  {
    v11 = CFUUIDCreate(kCFAllocatorDefault);
    bytes = CFUUIDGetUUIDBytes(v11);
    v12 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
    *cf = 0;
    sub_10001A804(a2, v12, cf);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *cf;
    if (*cf)
    {
      *cf = 0;
      CFRelease(v13);
    }
  }

  v14 = CFGetAllocator(a2);
  Mutable = CFStringCreateMutable(v14, 0);
  CFStringAppend(Mutable, @"UPDATE ");
  CFStringAppend(Mutable, *a2[2]);
  CFStringAppend(Mutable, @" SET ");
  v16 = a2[2];
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 3;
    do
    {
      if ((v17->data & 2) != 0)
      {
        isa = v17->isa;
        if (v18)
        {
          CFStringAppend(Mutable, @",");
        }

        CFStringAppend(Mutable, isa);
        CFStringAppend(Mutable, @"=?");
        v18 = 1;
      }

      v21 = *v19++;
      v17 = v21;
    }

    while (v21);
  }

  bytes.byte0 = 1;
  v22 = a1[2];
  v23 = v22[2];
  if (v23)
  {
    v24 = (v22 + 3);
    do
    {
      if ((*(a5 + 16))(a5, v23))
      {
        sub_1000098AC(Mutable, *v23, &bytes);
      }

      v25 = *v24++;
      v23 = v25;
    }

    while (v25);
  }

  *&bytes.byte0 = 0;
  *&bytes.byte8 = &bytes;
  v33 = 0x2000000000;
  v34 = Mutable != 0;
  if (!Mutable)
  {
    goto LABEL_29;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 0x40000000;
  v31[2] = sub_1001638DC;
  v31[3] = &unk_100338938;
  v31[6] = a1;
  v31[7] = a2;
  v31[4] = a5;
  v31[5] = &bytes;
  v31[8] = a4;
  v31[9] = a3;
  v26 = sub_10001489C(a3, Mutable, a4, v31);
  *(*&bytes.byte8 + 24) &= v26;
  CFRelease(Mutable);
  if (*(*&bytes.byte8 + 24))
  {
    if ((sub_10001C8C4(a1) & 1) == 0)
    {
      v27 = sub_100006274("item");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138478083;
        *&cf[4] = a1;
        v36 = 2112;
        v37 = a3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "replaced %{private}@ in %@", cf, 0x16u);
      }

      v28 = sub_100006274("item");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138478083;
        *&cf[4] = a2;
        v36 = 2112;
        v37 = a3;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "    with %{private}@ in %@", cf, 0x16u);
      }
    }

    sub_100018694(a3, a1, a2);
    v29 = *(*&bytes.byte8 + 24);
  }

  else
  {
LABEL_29:
    v29 = 0;
  }

  _Block_object_dispose(&bytes, 8);
  return v29 & 1;
}

__CFString ***sub_10001C8C4(__CFString ***result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100007370(result[2], kSecAttrAccessGroup, 0);
    result = sub_100015BFC(v1, v2, 0);
    if (result)
    {
      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFStringGetTypeID())
      {
        return (CFStringCompare(v3, kSOSInternalAccessGroup, 0) == kCFCompareEqualTo);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_10001C958(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a2 || a2 == 101)
  {
    return !a2 || a2 == 101;
  }

  if (a3)
  {
    va_copy(buf, va);
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    sub_10001D8CC(a2, *(a1 + 64), a3, @"%@", v7);
    CFRelease(v7);
  }

  *(a1 + 48) |= a2 == 10;
  if (*(a1 + 40) == 1)
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SQL DB %@ is corrupted already. Corruption error was: %d (previously %d)", format, *(*(a1 + 16) + 16), a2, *(a1 + 44));
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/keychain-2.db"))
    {
      v10 = 1405092101;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/ocspcache.sqlite3"))
    {
      v10 = 1405092357;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/TrustStore.sqlite3"))
    {
      v10 = 1405092613;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/caissuercache.sqlite3"))
    {
      v10 = 1405092869;
    }

    else
    {
      v10 = 1405091845;
    }

    sub_100089FEC(v8, v10);
    if (v8)
    {
      CFRelease(v8);
    }

    if (a2 == 26 || a2 == 11)
    {
      v31 = sub_100006274("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v28 = "SecDbConnectionCheckCode detected corruption twice: going to handle corrupt DB";
        v29 = v31;
        v30 = 2;
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    return !a2 || a2 == 101;
  }

  v11 = a2 == 11;
  if (a2 == 26)
  {
    v11 = 1;
  }

  *(a1 + 40) = v11;
  if (a2 != 26 && a2 != 11)
  {
    return !a2 || a2 == 101;
  }

  *(a1 + 44) = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v49 = sub_100086A20;
  v50 = &unk_100335BA0;
  v51 = &v34;
  v52 = &v38;
  v53 = &v42;
  v54 = a1;
  sub_10001489C(a1, @"PRAGMA integrity_check", &v37, &buf);
  if ((v43[3] & 1) == 0)
  {
    v12 = v35[3];
    if (!v12)
    {
      *(v39 + 24) = 1;
      v19 = sub_100006274("#SecDB");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }

      *v46 = 0;
      v16 = "#SecDB warning: failed to run integrity check due to corruption";
      v17 = v19;
      v18 = 2;
      goto LABEL_58;
    }

    Code = CFErrorGetCode(v12);
    if (Code == 26 || Code == 11)
    {
      *(v39 + 24) = 1;
    }

    v14 = sub_100006274("#SecDB");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v35[3];
      *v46 = 138543362;
      v47 = v15;
      v16 = "#SecDB warning error %{public}@ when running integrity check";
      v17 = v14;
      v18 = 12;
LABEL_58:
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v16, v46, v18);
    }
  }

LABEL_26:
  if (*(v39 + 24) == 1)
  {
    v20 = *(v43 + 24);
    v21 = sub_100006274("SecError");
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20 == 1)
    {
      if (v22)
      {
        *v46 = 0;
        v23 = "SecDBCheckCorrupted ran integrity_check, and that didn't return ok";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v46, 2u);
      }
    }

    else if (v22)
    {
      *v46 = 0;
      v23 = "SecDBCheckCorrupted failed to run integrity check";
      goto LABEL_32;
    }
  }

  v24 = v35[3];
  if (v24)
  {
    v35[3] = 0;
    CFRelease(v24);
  }

  v25 = *(v39 + 24);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  *(a1 + 40) = v25;
  v26 = sub_100006274("SecError");
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25 == 1)
  {
    if (v27)
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a2;
      v28 = "operation returned code: %d integrity check=fail";
      v29 = v26;
      v30 = 8;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &buf, v30);
    }

LABEL_50:
    sub_1000868E8(a1, a2, a3);
    return !a2 || a2 == 101;
  }

  if (v27)
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "operation returned code: %d: integrity check=pass", &buf, 8u);
  }

  return !a2 || a2 == 101;
}

uint64_t sub_10001CECC(void **a1, void **a2, uint64_t a3, CFBooleanRef a4, int a5, __CFString **a6)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v12 = sub_100016514(a1[2], 10, a6);
  v13 = sub_100015BFC(a1, v12, a6);
  v14 = sub_100016514(a2[2], 10, a6);
  v15 = sub_100015BFC(a2, v14, a6);
  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  *(v42 + 24) = v17;
  if (!v16 && CFEqual(v13, v15))
  {
    v18 = sub_10016386C(a2, a1, a6);
    v19 = 0;
    *(v42 + 24) = v18;
    goto LABEL_18;
  }

  if (a4 && kCFBooleanFalse)
  {
    if (!CFEqual(a4, kCFBooleanFalse))
    {
LABEL_15:
      if (sub_100019064())
      {
        sub_10001A87C(a2, a5, a6);
      }
    }
  }

  else if (kCFBooleanFalse != a4)
  {
    goto LABEL_15;
  }

  v19 = 1;
LABEL_18:
  v20 = v42;
  if (*(v42 + 24) == 1)
  {
    v21 = sub_10001C528(a1, a2, a3, v38 + 3, &stru_1003389B8);
    v20 = v42;
  }

  else
  {
    v21 = 0;
  }

  *(v20 + 24) = v21;
  v22 = v38[3];
  if (v22)
  {
    if (CFErrorGetCode(v22) == 19)
    {
      Domain = CFErrorGetDomain(v38[3]);
      if (CFEqual(@"com.apple.utilities.sqlite3", Domain))
      {
        v24 = sub_10001DBD0(a2, a6);
        *(v42 + 24) = v24 != 0;
        if (v24)
        {
          v25 = v24;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 0x40000000;
          v36[2] = sub_100163BA8;
          v36[3] = &unk_100338AA0;
          v36[6] = a6;
          v36[7] = a2;
          v36[8] = a1;
          v36[9] = a3;
          v36[4] = &v41;
          v36[5] = &v37;
          v26 = sub_100014718(v24, a3, a6, 0, &stru_1003389F8, 0, 0, v36);
          *(v42 + 24) &= v26;
          v27 = sub_10000DF70(v25, a6);
          *(v42 + 24) &= v27;
        }
      }
    }

    v28 = v38;
    v29 = v38[3];
    v20 = v42;
    if (v29)
    {
      *(v42 + 24) = 0;
      if (a6 && !*a6)
      {
        *a6 = v29;
        v28[3] = 0;
      }

      else
      {
        CFRelease(v29);
        v20 = v42;
      }
    }
  }

  if ((v19 & v20[3]) == 1)
  {
    if (a4 && kCFBooleanFalse)
    {
      if (CFEqual(a4, kCFBooleanFalse))
      {
        goto LABEL_43;
      }
    }

    else if (kCFBooleanFalse == a4)
    {
      goto LABEL_43;
    }

    v30 = sub_100163CE0(a1, a4, 0, a6);
    *(v42 + 24) = v30 != 0;
    if (v30)
    {
      v31 = v30;
      v32 = CFUUIDCreate(kCFAllocatorDefault);
      v33 = sub_10001A768(v31, kSecAttrPersistentReference, v32, a6);
      if (v33)
      {
        sub_10016360C(v31, a6);
        LOBYTE(v33) = sub_10001AC7C(v31, a3, a6);
      }

      *(v42 + 24) = v33;
      if (v32)
      {
        CFRelease(v32);
      }

      CFRelease(v31);
    }
  }

LABEL_43:
  v34 = *(v42 + 24);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v34;
}

BOOL sub_10001D288(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  if (a2 - 5 > 1)
  {
    return sub_10001C958(a1, a2, a5, @"%@", a3);
  }

  if (a4 > 4)
  {
    v10 = 250;
    v11 = 250 * a4 - 820;
  }

  else
  {
    v10 = dword_100294A04[a4];
    v11 = dword_100294A18[a4];
  }

  v12 = sub_100006274("#SecDB");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 > 299999)
  {
    if (v13)
    {
      *buf = 67109120;
      v16 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "sqlite busy/locked: too long: %d ms, giving up", buf, 8u);
    }

    return sub_10001C958(a1, a2, a5, @"%@", a3);
  }

  if (v13)
  {
    *buf = 67109632;
    v16 = a2;
    v17 = 1024;
    v18 = a4;
    v19 = 1024;
    v20 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "sqlite busy/locked: %d ntries: %d totaltimeout: %d", buf, 0x14u);
  }

  j__sqlite3_sleep(v10);
  return 1;
}

void sub_10001D43C(uint64_t a1, void **a2)
{
  cf = 0;
  v4 = *(a1 + 40);
  if (*(v4 + 240))
  {
    v5 = sub_100016514(a2[2], 1, 0);
    v6 = sub_100015BFC(a2, v5, 0);
    v4 = *(a1 + 40);
    v7 = *(v4 + 240);
    if (v7)
    {
      if (!sub_10017A188(v7, v6))
      {
        return;
      }

      v4 = *(a1 + 40);
    }
  }

  if (*(v4 + 116) == 1)
  {
    v8 = sub_100015B5C(a2, kSecAttrSharingGroup);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        if (CFStringCompare(v9, kSecAttrSharingGroupNone, 0))
        {
          v11 = sub_100006274("SecError");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot update shared item for unentitled client", buf, 2u);
          }

          return;
        }
      }
    }
  }

  v12 = sub_100016514(a2[2], 7, 0);
  v13 = sub_100015BFC(a2, v12, 0);
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v15 = sub_1001632F8(a2, *(*(a1 + 48) + 8), &cf);
  sub_1000154A0(a2, v12, v14, 0);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SecErrorGetOSStatus() == -26275)
  {
    v16 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = ***(a1 + 40);
      v18 = sub_100163560(a2, 0);
      *buf = 138412802;
      v36 = v17;
      v37 = 2048;
      v38 = v18;
      v39 = 2112;
      v40 = cf;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "deleting corrupt %@,rowid=%lld %@", buf, 0x20u);
    }

    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }

    if ((sub_1000170C8(a2, *(a1 + 56), 0, 0, &cf) & 1) == 0)
    {
      v20 = sub_100006274("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = ***(a1 + 40);
        v22 = sub_100163560(a2, 0);
        *buf = 138412802;
        v36 = v21;
        v37 = 2048;
        v38 = v22;
        v39 = 2112;
        v40 = cf;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "failed to delete corrupt %@,rowid=%lld %@", buf, 0x20u);
      }

      v23 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v23);
      }
    }

    if (!v15)
    {
      return;
    }

LABEL_58:
    CFRelease(v15);
    return;
  }

  if (v15)
  {
    v24 = *(*(a1 + 48) + 136);
    if (v24)
    {
      sub_100015A9C(v15, v24, &cf);
    }
  }

  v25 = cf;
  v26 = *(a1 + 64);
  if (cf && v26)
  {
    if (*v26)
    {
      if (CFErrorGetCode(*v26) != -25330)
      {
        goto LABEL_38;
      }

      v27 = *v26;
      if (*v26)
      {
        *v26 = 0;
        CFRelease(v27);
LABEL_38:
        if (*v26)
        {
          goto LABEL_39;
        }
      }
    }

    v28 = 0;
    *v26 = v25;
    goto LABEL_42;
  }

  if (cf)
  {
    if (!v26)
    {
LABEL_39:
      CFRelease(v25);
      v28 = 0;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v28 = 1;
LABEL_42:
  if (!v15)
  {
    v28 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v28;
  if (v15)
  {
    v29 = sub_100015D00(a2);
    v30 = sub_100017084(a2);
    v31 = *(a1 + 56);
    v32 = *(*(a1 + 40) + 96);
    if (!v32)
    {
      if (v29 && !sub_10001A700(a2))
      {
        v32 = 0;
      }

      else
      {
        v32 = kCFBooleanFalse;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = sub_10001CECC(a2, v15, v31, v32, *(*(a1 + 40) + 155), *(a1 + 64));
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_58;
    }

    v33 = *(a1 + 40);
    *(v33 + 113) = 1;
    if ((v29 & 1) == 0)
    {
      if (!sub_100015D00(v15))
      {
LABEL_55:
        if ((v30 & 1) != 0 || sub_100017084(v15))
        {
          *(*(a1 + 40) + 115) = 1;
        }

        goto LABEL_58;
      }

      v33 = *(a1 + 40);
    }

    *(v33 + 114) = 1;
    goto LABEL_55;
  }
}

BOOL sub_10001D8CC(uint64_t a1, sqlite3 *a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    if (a1 == 14)
    {
      v8 = sqlite3_system_errno(a2);
      v9 = CFStringCreateWithFormat(0, 0, @"%d", v8);
    }

    else
    {
      v9 = CFRetain(&stru_100348050);
    }

    v10 = v9;
    v11 = sqlite3_extended_errcode(a2);
    v12 = sqlite3_errmsg(a2);
    if (v11 == a1)
    {
      sub_10001D9F0(a1, a3, @"%@: [%d]%@ %s", v7, a1, v10, v12, v14, va);
    }

    else
    {
      sub_10001D9F0(a1, a3, @"%@: [%d->%d]%@ %s", v7, a1, v11, v10, v12, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  return a1 == 0;
}

void sub_10001D9F0(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2)
  {
    v4 = *a2;
    *a2 = 0;
    sub_100010118(a1, @"com.apple.utilities.sqlite3", v4, a2, format, va);
  }
}

void sub_10001DA40(uint64_t a1)
{
  v2 = sub_100015FB4(kCFAllocatorDefault, **(a1 + 48), *(a1 + 56), *(*(a1 + 48) + 120), *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = *(v4 + 144);
    *(v4 + 144) = 0;
    v6 = *(v2 + 56);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v3 + 56) = v5;
    if (sub_100011FDC(*(a1 + 72), *(a1 + 48), *(a1 + 80), *(v3 + 48)))
    {
      (*(*(a1 + 40) + 16))();
    }

    CFRelease(v3);
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        v9 = *v8;
      }

      else
      {
        v9 = "no error";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to create item from stmt: %@", &v12, 0xCu);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        *v10 = 0;
        CFRelease(v11);
      }
    }
  }
}

void *sub_10001DBD0(void *a1, __CFString **a2)
{
  v4 = sub_10001B350(a1, 1, 0, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100007698(a1[2], 0, 0, 0, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6[1];
    if (v8)
    {
      CFRelease(v8);
    }

    v7[1] = v5;
  }

  else
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t sub_10001DC5C(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFString **a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 1;
  if (*(a1 + 64))
  {
    v6 = sub_1000103CC(-50, a4, @"value ref not supported by queries");
  }

  else
  {
    v11 = sub_10000AA4C(a1, a2);
    *(v17 + 24) = v11 != 0;
    if (v11)
    {
      v12 = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_10001FE74;
      v15[3] = &unk_100339838;
      v15[6] = &v16;
      v15[7] = a1;
      v15[8] = a2;
      v15[9] = a4;
      v15[10] = a3;
      v15[4] = &stru_1003397E8;
      v15[5] = a5;
      v13 = sub_10001489C(a3, v11, a4, v15);
      *(v17 + 24) &= v13;
      CFRelease(v12);
      v6 = *(v17 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

BOOL sub_10001DDAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  if (*(v1 + 24) != *(v1 + 16))
  {
    v3 = @"match not supported in attributes to update";
    goto LABEL_5;
  }

  if (*(v1 + 64))
  {
    v3 = @"value ref not supported in attributes to update";
LABEL_5:

    return sub_1000103CC(-50, v2, v3);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (*(v1 + 72) && *(v1 + 32))
  {
    v3 = @"attributes to update illegal; both row_id and other attributes can't be updated at the same time";
    goto LABEL_5;
  }

  if (*(v1 + 240) && *(v1 + 32) != 1)
  {
    v3 = @"attributes to update illegal; both token persistent ref and other attributes can't be updated at the same time";
    goto LABEL_5;
  }

  if (CFDictionaryContainsKey(*(a1 + 48), kSecAttrSharingGroup))
  {
    v3 = @"Cannot change SharingGroup using this API";
    goto LABEL_5;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  v8 = sub_100007698(*v1, 0, v6, 0, v2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryApplyFunction(v6, sub_10001FB8C, v8);
    if (sub_100009B80(v9, v2))
    {
      sub_10001FD00(v9);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = sub_10001FD78;
      v14[3] = &unk_100339888;
      v14[4] = &v15;
      v14[5] = v1;
      v14[6] = v7;
      v14[7] = v5;
      v14[8] = v2;
      v14[9] = v9;
      v10 = sub_100015080(v5, 2, v2, v14);
      v11 = (v10 & v16[3]);
      *(v16 + 24) &= v10;
      if (v11 == 1 && (*(v1 + 113) & 1) == 0)
      {
        v12 = sub_1000103CC(-25300, v2, @"No items updated");
        *(v16 + 24) = v12;
      }
    }

    else
    {
      *(v16 + 24) = 0;
    }

    if (sub_10000DF70(v9, v2))
    {
      v13 = *(v16 + 24);
    }

    else
    {
      v13 = 0;
      *(v16 + 24) = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v13 & 1;
}

uint64_t sub_10001E010(uint64_t a1, sqlite3_stmt *a2, int a3, uint64_t a4, const __CFNull *a5, __CFString **a6)
{
  if (*(a4 + 8) == 8)
  {
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, (a1 + 72));
  }

  else
  {
    v9 = sub_10001785C(a4, a5, a6);
  }

  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = sub_10000CBCC(a2, (a3 + 1), v9, a6);
  CFRelease(v10);
  return v11;
}

uint64_t sub_10001E0A4(__CFString *a1, _BYTE *a2, CFErrorRef *a3)
{
  cf = 0;
  v6 = sub_100016514(a1->data, 7, &cf);
  v7 = sub_100015BFC(a1, v6, &cf);
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (!cf && sub_100016898(a1, 1, &cf) || SecErrorGetOSStatus() != -26275)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v9 = sub_100016514(a1->data, 15, &cf);
  v10 = sub_100015BFC(a1, v9, &cf);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_17;
  }

  CFGetAllocator(a1);
  if (!SecAccessControlCreateFromData())
  {
    goto LABEL_17;
  }

  Protection = SecAccessControlGetProtection();
  if (!Protection || !kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
  {
    if (Protection == kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
    {
      goto LABEL_12;
    }

LABEL_17:
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412547;
      v52 = cf;
      v53 = 2113;
      v54 = a1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "error %@ reading item %{private}@ (corrupted)", buf, 0x16u);
    }

    sub_100089FEC(@"Corrupted item found in keychain", 1405091842);
    v14 = 0;
    goto LABEL_20;
  }

  if (!CFEqual(Protection, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
  {
    goto LABEL_17;
  }

LABEL_12:
  v13 = sub_100006274("SecWarning");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v52 = a1;
    v53 = 2112;
    v54 = cf;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "cannot decrypt item %{private}@, item is irrecoverably lost with older passcode (error %@)", buf, 0x16u);
  }

  v14 = 1;
LABEL_20:
  v16 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v16);
  }

  *a2 = 1;
LABEL_23:
  v17 = sub_100017694(a1, v6);
  v18 = v17;
  if (v8 && v17 && !CFEqual(v8, v17))
  {
    v48 = v14;
    v49 = a2;
    Length = CFDataGetLength(v8);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(v8);
    v22 = CFDataGetLength(v8);
    if (v22 >= 1)
    {
      v23 = v22;
      do
      {
        v24 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v24);
        --v23;
      }

      while (v23);
    }

    v25 = CFDataGetLength(v18);
    v26 = CFStringCreateMutable(kCFAllocatorDefault, 2 * v25);
    v27 = CFDataGetBytePtr(v18);
    v28 = CFDataGetLength(v18);
    if (v28 >= 1)
    {
      v29 = v28;
      do
      {
        v30 = *v27++;
        CFStringAppendFormat(v26, 0, @"%02X", v30);
        --v29;
      }

      while (v29);
    }

    v31 = sub_100006274("SecError");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *v6;
      *buf = 138413059;
      v52 = v32;
      v53 = 2112;
      v54 = Mutable;
      v55 = 2112;
      v56 = v26;
      v57 = 2113;
      v58 = a1;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "error %@ %@ != %@ item %{private}@ (corrupted)", buf, 0x2Au);
    }

    v14 = v48;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    a2 = v49;
    if (v26)
    {
      CFRelease(v26);
    }

    *v49 = 1;
  }

  if (!cf)
  {
    data = a1->data;
    v37 = *(data + 2);
    if (v37)
    {
      v38 = (data + 24);
      do
      {
        if ((*(v37 + 16) & 0x2080) != 0)
        {
          v39 = sub_100015BFC(a1, v37, &cf);
          if (!v39)
          {
            if (SecErrorGetOSStatus() == -26275)
            {
              if (v14)
              {
                v41 = sub_100006274("SecWarning");
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = *v37;
                  *buf = 138412803;
                  v52 = v42;
                  v53 = 2112;
                  v54 = cf;
                  v55 = 2113;
                  v56 = a1;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "attribute %@: %@ item %{private}@ (item lost with older passcode)", buf, 0x20u);
                }
              }

              else
              {
                v45 = sub_100006274("SecError");
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = *v37;
                  *buf = 138412803;
                  v52 = v46;
                  v53 = 2112;
                  v54 = cf;
                  v55 = 2113;
                  v56 = a1;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "error attribute %@: %@ item %{private}@ (corrupted)", buf, 0x20u);
                }

                sub_100089FEC(@"Corrupted item found in keychain", 1405091842);
              }

              *a2 = 1;
              v47 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v47);
              }
            }

            break;
          }

          if (CFEqual(kCFNull, v39) && (*(v37 + 17) & 0x10) != 0)
          {
            v43 = sub_100006274("SecError");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = *v37;
              *buf = 138412547;
              v52 = v44;
              v53 = 2113;
              v54 = a1;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "error attribute %@ has NULL value in item %{private}@ (corrupted)", buf, 0x16u);
            }

            sub_100089FEC(@"Corrupted item (attr NULL) found in keychain", 1405091842);
            *a2 = 1;
            break;
          }
        }

        v40 = *v38++;
        v37 = v40;
      }

      while (v40);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v33 = cf;
  if (a3 && cf)
  {
    if (*a3)
    {
      if (CFErrorGetCode(*a3) != -25330)
      {
        goto LABEL_52;
      }

      v34 = *a3;
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v34);
LABEL_52:
        if (*a3)
        {
          goto LABEL_53;
        }
      }
    }

    result = 0;
    *a3 = v33;
    return result;
  }

  if (cf)
  {
    if (!a3)
    {
LABEL_53:
      CFRelease(v33);
      return 0;
    }

    goto LABEL_52;
  }

  return 1;
}

void sub_10001E738(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  *(*(*(a1 + 40) + 8) + 24) = sub_10001E0A4(a2, &v19, *(a1 + 56));
  cf = 0;
  v4 = v19;
  if (v19 != 1)
  {
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      return;
    }

    v15 = *(a1 + 32);
    if (!v15)
    {
      return;
    }

    (*(v15 + 16))(v15, a2, &cf);
    if (!cf)
    {
      return;
    }

LABEL_8:
    v10 = sub_100016514(*(a2 + 16), 8, *(a1 + 56));
    v11 = sub_100016E6C(a2, v10);
    if (v11)
    {
      *(*(*(a1 + 40) + 8) + 24) = sub_1000154A0(cf, v10, v11, (*(*(a1 + 48) + 8) + 24));
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24);
      if ((v4 & 1) != 0 || !*(v12 + 24))
      {
        if (!*(v12 + 24))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = sub_10016386C(cf, a2, *(a1 + 56));
        v12 = *(*(a1 + 40) + 8);
        if ((*(v12 + 24) & 1) == 0)
        {
LABEL_12:
          v14 = 0;
          goto LABEL_21;
        }
      }

      v14 = sub_10001C528(a2, cf, *(a1 + 72), (*(*(a1 + 48) + 8) + 24), &stru_1003388C8);
    }

    else
    {
      v14 = sub_1000103CC(-26276, (*(*(a1 + 48) + 8) + 24), @"no rowid for %@", a2);
    }

    v12 = *(*(a1 + 40) + 8);
LABEL_21:
    *(v12 + 24) = v14;
    CFRelease(cf);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 24);
      if (v17)
      {
        *(v16 + 24) = 0;
        CFRelease(v17);
      }
    }

    return;
  }

  v5 = sub_100006274("item");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 64);
    *buf = 138478083;
    v21 = a2;
    v22 = 2113;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replacing corrupted item %{private}@ with %{private}@", buf, 0x16u);
  }

  v7 = *(a1 + 64);
  cf = v7;
  CFRetain(v7);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *v8 = 0;
      CFRelease(v9);
    }
  }

  if (v7)
  {
    goto LABEL_8;
  }
}

void sub_10001E9B0(uint64_t a1, void **a2, uint64_t *a3)
{
  if (sub_10001A700(a2))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRetain(v6);
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if ((*(a1 + 40) & 1) == 0)
    {
      v17 = *(*(a1 + 32) + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 24);
        do
        {
          if (CFEqual(*v18, @"UUID") || CFEqual(*v18, @"persistref"))
          {
            sub_100162F88(*(a1 + 32), a2, v18);
          }

          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }

    return;
  }

  if (!a3 || (*(a1 + 41) & 1) == 0 || *a3)
  {
    return;
  }

  v49 = 0;
  *cf = 0;
  v8 = *(a1 + 32);
  v9 = sub_100007370(v8[2], kSecAttrModificationDate, &v49);
  v10 = sub_100015BFC(v8, v9, cf);
  v11 = sub_100015BFC(a2, v9, cf);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (SecErrorGetOSStatus() == -26275)
    {
      if (v10)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v12 == 0;
      goto LABEL_17;
    }

LABEL_54:
    v16 = 0;
    goto LABEL_55;
  }

  v21 = CFDateCompare(v10, v11, 0);
  v16 = a2;
  if (v21 == kCFCompareLessThan)
  {
    goto LABEL_55;
  }

  if (v21)
  {
    if (v21 == kCFCompareGreaterThan)
    {
      v16 = v8;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v22 = sub_100016514(v8[2], 7, cf);
  v23 = sub_100015BFC(v8, v22, cf);
  v24 = sub_100016514(a2[2], 7, cf);
  v25 = sub_100015BFC(a2, v24, cf);
  v26 = v25;
  if (!v23 || !v25)
  {
    if (SecErrorGetOSStatus() == -26275)
    {
      if (v23)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v26 == 0;
LABEL_17:
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = a2;
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

  Length = CFDataGetLength(v23);
  v28 = CFDataGetLength(v26);
  v29 = v28;
  if ((Length & 0x8000000000000000) != 0 || v28 < 0)
  {
    v16 = a2;
    if (Length > v28)
    {
      goto LABEL_55;
    }

    v16 = v8;
    if (Length < v28)
    {
      goto LABEL_55;
    }

LABEL_89:
    v16 = a2;
    goto LABEL_55;
  }

  if (Length >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = Length;
  }

  BytePtr = CFDataGetBytePtr(v23);
  v32 = CFDataGetBytePtr(v26);
  v33 = memcmp(BytePtr, v32, v30);
  v16 = a2;
  if (v33 <= 0)
  {
    if (v33 || (v16 = a2, Length <= v29))
    {
      v34 = Length >= v29 && v33 == 0;
      v16 = v8;
      if (v34)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_55:
  v35 = *cf;
  if (!*cf)
  {
    goto LABEL_59;
  }

  if (v16 | v49)
  {
    *cf = 0;
    CFRelease(v35);
LABEL_59:
    if (!v16)
    {
      goto LABEL_70;
    }

    v36 = *(v16 + 16);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = (v36 + 24);
      do
      {
        if (*v37 && CFEqual(*v37, @"persistref"))
        {
          sub_100162F88(v16, v8, v37);
        }

        v39 = *v38++;
        v37 = v39;
      }

      while (v39);
    }

    CFRetain(v16);
    CFRetain(v16);
    *a3 = v16;
    if (a2 && CFEqual(v16, a2))
    {
      v40 = sub_100006274("insert");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138477827;
        *&cf[4] = a2;
        v41 = "Conflict resolver chose my (local) item: %{private}@";
LABEL_83:
        v48 = v40;
        goto LABEL_84;
      }
    }

    else
    {
      v45 = *(a1 + 32);
      if (v45 && CFEqual(v16, v45))
      {
        v46 = sub_100006274("insert");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = *(a1 + 32);
          *cf = 138477827;
          *&cf[4] = v47;
          v41 = "Conflict resolver chose item from the backup: %{private}@";
          v48 = v46;
LABEL_84:
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v41, cf, 0xCu);
        }
      }

      else
      {
        v40 = sub_100006274("insert");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 138477827;
          *&cf[4] = v16;
          v41 = "Conflict resolver created a new item; return it to our caller: %{private}@";
          goto LABEL_83;
        }
      }
    }

    CFRelease(v16);
    return;
  }

  v49 = *cf;
LABEL_70:
  v42 = sub_100006274("SecError");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 138412290;
    *&cf[4] = v49;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "insert: failed to created a merged item: %@", cf, 0xCu);
  }

  v43 = sub_100006274("insert");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "failed to create a merged item so we will choose the item from the backup", cf, 2u);
  }

  v44 = *(a1 + 32);
  if (v44)
  {
    CFRetain(v44);
  }

  *a3 = v44;
}

__CFString *sub_10001EECC(void **a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(cf, @"debug"))
      {
        v5 = CFGetAllocator(a1);
        Mutable = CFStringCreateMutable(v5, 0);
        CFStringAppendFormat(Mutable, 0, @"<%@", *a1[2]);
        v7 = a1[2];
        v8 = v7[2];
        if (v8)
        {
          v9 = v7 + 3;
          do
          {
            if (*(v8 + 16))
            {
              sub_100162B74(a1, v8, Mutable);
            }

            v10 = *v9++;
            v8 = v10;
          }

          while (v10);
        }

        CFStringAppend(Mutable, @", |otherAttr");
        v11 = a1[2];
        v12 = v11[2];
        if (v12)
        {
          v13 = (v11 + 3);
          do
          {
            if (*v12 && CFEqual(@"tomb", *v12))
            {
              sub_100162B74(a1, v12, Mutable);
            }

            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
          v15 = a1[2];
          v16 = v15[2];
          if (v16)
          {
            v17 = v15 + 3;
            do
            {
              if ((*(v16 + 16) & 1) == 0 && (!*v16 || !CFEqual(@"tomb", *v16)))
              {
                sub_100162B74(a1, v16, Mutable);
              }

              v18 = *v17++;
              v16 = v18;
            }

            while (v18);
          }
        }

        CFStringAppend(Mutable, @">");
        return Mutable;
      }
    }
  }

  v87 = 0;
  valuePtr = 0;
  v85 = 0;
  v88 = 0u;
  v89 = 0u;
  v19 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v20 = a1[2];
  v23 = v20[2];
  v21 = v20 + 2;
  v22 = v23;
  if (v23)
  {
    v84 = 0;
    v82 = 0;
    v24 = 0;
    v79 = kSecAttrMultiUser;
    v81 = &v87;
    v83 = &v88;
    v25 = &v87;
    while (1)
    {
      v26 = *(v22 + 8);
      if (v26 <= 7)
      {
        break;
      }

      if (v26 > 11)
      {
        if (v26 > 13)
        {
          if (v26 == 14)
          {
            v63 = sub_100015BFC(a1, v22, 0);
            if (v63)
            {
              v64 = v63;
              v65 = CFGetTypeID(v63);
              if (v65 == CFStringGetTypeID())
              {
                v24 = v64;
              }
            }

            goto LABEL_83;
          }

          if (v26 == 16)
          {
            v42 = sub_100015BFC(a1, v22, 0);
            if (v42)
            {
              v43 = v42;
              if (CFEqual(*v22, v79))
              {
                v44 = CFGetTypeID(v43);
                if (v44 == CFDataGetTypeID())
                {
                  CFStringAppend(v19, @",");
                  if (CFDataGetLength(v43))
                  {
                    BytePtr = CFDataGetBytePtr(v43);
                    Length = CFDataGetLength(v43);
                    if (Length >= 1)
                    {
                      v47 = Length;
                      do
                      {
                        v48 = *BytePtr++;
                        CFStringAppendFormat(v19, 0, @"%02X", v48);
                        --v47;
                      }

                      while (v47);
                    }

                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }
              }
            }
          }
        }

        else
        {
          if (v26 != 12)
          {
            v30 = sub_100015BFC(a1, v22, 0);
            if (v30)
            {
              v31 = v30;
              v32 = CFGetTypeID(v30);
              TypeID = CFBooleanGetTypeID();
              v34 = v84;
              if (v32 == TypeID)
              {
                v34 = v31;
              }

              v84 = v34;
            }

            goto LABEL_83;
          }

          v58 = sub_100015BFC(a1, v22, 0);
          if (v58)
          {
            v39 = v58;
            v59 = CFGetTypeID(v58);
            if (v59 == CFNumberGetTypeID())
            {
              p_valuePtr = &valuePtr;
LABEL_72:
              v56 = v39;
              v57 = kCFNumberCharType;
LABEL_73:
              CFNumberGetValue(v56, v57, p_valuePtr);
            }
          }
        }
      }

      else
      {
        if (v26 <= 9)
        {
          if (v26 == 8)
          {
            v53 = sub_100015BFC(a1, v22, 0);
            if (!v53)
            {
              goto LABEL_83;
            }

            v54 = v53;
            v55 = CFGetTypeID(v53);
            if (v55 != CFNumberGetTypeID())
            {
              goto LABEL_83;
            }

            p_valuePtr = &v85;
            v56 = v54;
            v57 = kCFNumberSInt64Type;
            goto LABEL_73;
          }

          goto LABEL_31;
        }

        if (v26 == 10)
        {
          v60 = sub_100015BFC(a1, v22, 0);
          if (v60)
          {
            v61 = v60;
            v62 = CFGetTypeID(v60);
            if (v62 == CFDataGetTypeID())
            {
              v25 = CFDataGetBytePtr(v61);
            }
          }

          goto LABEL_83;
        }

        v38 = sub_100015BFC(a1, v22, 0);
        if (v38)
        {
          v39 = v38;
          v40 = CFGetTypeID(v38);
          if (v40 == CFNumberGetTypeID())
          {
            p_valuePtr = &valuePtr + 1;
            goto LABEL_72;
          }
        }
      }

LABEL_83:
      v66 = v21[1];
      ++v21;
      v22 = v66;
      if (!v66)
      {
        goto LABEL_86;
      }
    }

    if (v26 >= 5)
    {
      if (v26 == 6)
      {
        v49 = sub_100015BFC(a1, v22, 0);
        if (v49)
        {
          v50 = v49;
          v51 = CFGetTypeID(v49);
          if (v51 == CFDateGetTypeID())
          {
            AbsoluteTime = CFDateGetAbsoluteTime(v50);
            v83 = sub_1000126DC(0, 0, v83, &v89 + 15, AbsoluteTime);
          }
        }
      }

      else if (v26 == 7)
      {
        v35 = sub_100015BFC(a1, v22, 0);
        if (v35)
        {
          v36 = v35;
          v37 = CFGetTypeID(v35);
          if (v37 == CFDataGetTypeID() && CFDataGetLength(v36) >= 4)
          {
            v81 = CFDataGetBytePtr(v36);
          }
        }
      }

      goto LABEL_83;
    }

LABEL_31:
    if ((*(v22 + 16) & 0x30) == 0)
    {
      goto LABEL_83;
    }

    v27 = sub_100015BFC(a1, v22, 0);
    if (!v27)
    {
      goto LABEL_83;
    }

    v28 = v27;
    if (CFEqual(v27, kCFNull))
    {
      goto LABEL_83;
    }

    v29 = CFGetTypeID(v28);
    if (v29 != CFStringGetTypeID() || !CFEqual(*v22, kSecAttrAccessGroup))
    {
      CFStringAppend(v19, @",");
LABEL_82:
      CFStringAppend(v19, *v22);
      goto LABEL_83;
    }

    v82 = v28;
    goto LABEL_83;
  }

  v24 = 0;
  v82 = 0;
  v84 = 0;
  v25 = &v87;
  v81 = &v87;
  v83 = &v88;
LABEL_86:
  v80 = v24;
  v67 = CFGetAllocator(a1);
  if (valuePtr)
  {
    v68 = "T";
  }

  else
  {
    v68 = "O";
  }

  v69 = *a1[2];
  v70 = *v25;
  v71 = v25[1];
  v72 = v25[2];
  v73 = v25[3];
  if (HIBYTE(valuePtr))
  {
    v74 = "S";
  }

  else
  {
    v74 = "L";
  }

  v75 = v85;
  if (v84)
  {
    v76 = CFEqual(v84, kCFBooleanFalse);
    v77 = "F,";
    if (!v76)
    {
      v77 = "T,";
    }
  }

  else
  {
    v77 = "";
  }

  Mutable = CFStringCreateWithFormat(v67, 0, @"%s,%@,%02X%02X%02X%02X,%s,%@,%@,%lld%@,%s,%s%02X%02X%02X%02X", v68, v69, v70, v71, v72, v73, v74, v80, v82, v75, v19, v83, v77, *v81, v81[1], v81[2], v81[3]);
  if (v19)
  {
    CFRelease(v19);
  }

  return Mutable;
}

BOOL sub_10001F5E0(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3, __CFString **a4)
{
  if (!sub_10000639C(a1, 1, a4) || !sub_10000639C(a2, 2, a4))
  {
    return 0;
  }

  v8 = sub_100011D64(a3);
  if (!v8)
  {
    return sub_1000103CC(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    CFRelease(v9);
    return sub_1000103CC(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v11 = Count;
  Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
  if (!Value || (sub_1000091A8(v9, Value, a3) & 1) != 0)
  {
    kdebug_trace();
    v32.location = 0;
    v32.length = v11;
    if (CFArrayContainsValue(v9, v32, @"*"))
    {
      CFRelease(v9);
      v9 = 0;
    }

    v13 = sub_100006454(a1, *(a3 + 24), -1, a3, a4);
    if (!v13)
    {
      v18 = 0;
LABEL_71:
      if (v9)
      {
        CFRelease(v9);
      }

      kdebug_trace();
      return v18;
    }

    v14 = v13;
    v15 = *(v13 + 192);
    if (v15 == 2 || v15 == 1 && *(a3 + 36) == 1)
    {
      v16 = *(v13 + 128);
      if (v16)
      {
        *(v14 + 128) = 0;
        CFRelease(v16);
      }

      *(v14 + 128) = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
    }

    else
    {
      *(v13 + 192) = 0;
    }

    sub_100009B34(v14, v9);
    if (*(a3 + 44) != 1)
    {
      goto LABEL_38;
    }

    if (!sub_100184F24(a3))
    {
      v20 = @"App clips are not permitted to use access groups other than application identifier";
LABEL_36:
      v22 = -34020;
      goto LABEL_62;
    }

    if ((*(a3 + 44) & 1) == 0)
    {
      goto LABEL_38;
    }

    v19 = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
    if (v19 && kCFBooleanTrue)
    {
      if (!CFEqual(v19, kCFBooleanTrue))
      {
        goto LABEL_32;
      }
    }

    else if (v19 != kCFBooleanTrue)
    {
LABEL_32:
      v21 = CFDictionaryGetValue(a2, kSecAttrSynchronizable);
      if (kCFBooleanTrue && v21)
      {
        if (CFEqual(v21, kCFBooleanTrue))
        {
          goto LABEL_35;
        }
      }

      else if (v21 == kCFBooleanTrue)
      {
        goto LABEL_35;
      }

LABEL_38:
      v23 = *(v14 + 192);
      if (v23)
      {
        if ((*(a3 + 16) & 1) == 0)
        {
          v20 = @"client doesn't have entitlement for system keychain";
          goto LABEL_49;
        }

        if (v23 == 2 && sub_100185414(a2))
        {
          v20 = @"Can't update a system keychain (always) item with synchronizable";
LABEL_61:
          v22 = -50;
LABEL_62:
          if (sub_1000103CC(v22, a4, v20))
          {
LABEL_63:
            sub_100185528(@"update", Value, a3);
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 0x40000000;
            v29[2] = sub_10001FB04;
            v29[3] = &unk_1003427F8;
            v29[4] = a4;
            v29[5] = v14;
            v29[6] = a2;
            v29[7] = v9;
            v25 = sub_100008A70(1, 1, 0, a4, v29);
LABEL_70:
            v18 = sub_100019700(v14, v25, a4);
            goto LABEL_71;
          }

LABEL_69:
          v25 = 0;
          goto LABEL_70;
        }
      }

      if (*(v14 + 196) && (*(a3 + 17) & 1) == 0)
      {
        v20 = @"client doesn't have entitlement for syncbubble keychain";
      }

      else
      {
        if (*(v14 + 88))
        {
          v20 = @"use item list not supported";
          goto LABEL_61;
        }

        v24 = *(v14 + 48);
        if (v24)
        {
          v20 = @"return data not supported by update";
          goto LABEL_61;
        }

        if ((v24 & 2) != 0)
        {
          v20 = @"return attributes not supported by update";
          goto LABEL_61;
        }

        if ((v24 & 4) != 0)
        {
          v20 = @"return ref not supported by update";
          goto LABEL_61;
        }

        if ((v24 & 8) != 0)
        {
          v20 = @"return persistent ref not supported by update";
          goto LABEL_61;
        }

        if (*(v14 + 116) != 1 || !CFDictionaryContainsKey(*(v14 + 8), kSecAttrSharingGroup))
        {
          v26 = CFDictionaryGetValue(a2, kSecAttrAccessGroup);
          if (!v26)
          {
            goto LABEL_63;
          }

          v27 = v26;
          if (sub_1000091A8(v9, v26, a3))
          {
            goto LABEL_63;
          }

          v28 = sub_100006274("SecError");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cannot update keychain item to access group %@", buf, 0xCu);
          }

          if (sub_1000103CC(-34018, a4, @"Client explicitly specifies access group %@ but is only entitled for %@", v27, v9))
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        }

        v20 = @"can't update shared items without Keychain Sharing client entitlement";
      }

LABEL_49:
      v22 = -34018;
      goto LABEL_62;
    }

LABEL_35:
    v20 = @"App clips are not permitted to make items synchronizable";
    goto LABEL_36;
  }

  sub_1000103CC(-34018, a4, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v9);
  CFRelease(v9);
  return 0;
}

uint64_t sub_10001FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001DDAC;
  v4[3] = &unk_1003427D8;
  v4[4] = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = v2;
  return sub_1000141DC(a2, 2, v2, v4);
}

void sub_10001FB8C(CFTypeRef cf, const void *a2, uint64_t a3)
{
  v3 = (a3 + 40);
  if (*(a3 + 40))
  {
    return;
  }

  if (!cf)
  {
    v9 = 0;
LABEL_10:
    sub_1000103CC(-50, v3, @"update_applier: unknown key type %@", v9);
    return;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    v9 = cf;
    goto LABEL_10;
  }

  if (a2)
  {
    if (CFEqual(cf, @"musr"))
    {
      v8 = sub_100006274("item");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "update_applier: refusing to update musr", buf, 2u);
      }
    }

    else if (CFEqual(cf, kSecValueData))
    {

      sub_100019E30(a2, a3);
    }

    else
    {

      sub_1000079A0(cf, a2, a3);
    }
  }

  else
  {
    sub_1000103CC(-50, v3, @"update_applier: key %@ has NULL value", cf);
  }
}

void sub_10001FD00(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v3 = (*a1 + 24);
    do
    {
      if (*(v1 + 8) == 6)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v5 = CFDateCreate(0, Current);
        sub_10001A204(v1, v5, a1);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v6 = *v3++;
      v1 = v6;
    }

    while (v6);
  }
}

uint64_t sub_10001FD78(void *a1, _BYTE *a2)
{
  v4 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a1[5] + 8), kSecAttrTombstone))
  {
    sub_1000079A0(v4, kCFBooleanFalse, a1[5]);
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10001D43C;
  v10[3] = &unk_100339860;
  v10[6] = a1[9];
  v10[7] = v7;
  v10[4] = a1[4];
  v10[5] = v5;
  v10[8] = v8;
  result = sub_10001DC5C(v5, v6, v7, v8, v10);
  *(*(a1[4] + 8) + 24) &= result;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10001FE74(uint64_t result, sqlite3_stmt *a2)
{
  v3 = result;
  v14 = 1;
  if (**(result + 56) == &off_10033DFA8)
  {
    result = sub_10000CF18(a2, *(result + 64), &v14, *(result + 72));
    *(*(*(v3 + 48) + 8) + 24) &= result;
  }

  if (*(*(*(v3 + 48) + 8) + 24) == 1)
  {
    result = sub_10000CFD4(a2, *(v3 + 56), *(v3 + 64), &v14, *(v3 + 72));
    *(*(*(v3 + 48) + 8) + 24) &= result;
    if (*(*(*(v3 + 48) + 8) + 24))
    {
      v5 = *(v3 + 72);
      v4 = *(v3 + 80);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = sub_10001DA40;
      v7[3] = &unk_100339810;
      v6 = *(v3 + 64);
      v9 = *(v3 + 56);
      v10 = a2;
      v11 = v5;
      v12 = v4;
      v13 = v6;
      v8 = *(v3 + 32);
      return sub_100015DAC(v4, a2, v5, v7);
    }
  }

  return result;
}

void sub_100020118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  status = nw_path_get_status(v3);

  v6 = sub_100019104(@"ckksnetwork", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"unavailable";
    if (status == nw_path_status_satisfied)
    {
      v7 = @"available";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "nw_path update: network is %@", &v8, 0xCu);
  }

  [WeakRetained _onqueueSetNetworkReachability:status == nw_path_status_satisfied];
}

void sub_10002027C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  [WeakRetained setFinishDate:v1];
}

void sub_1000206C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100020840(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setTimeoutCanOccur:0];
  }

  return result;
}

id sub_100020FBC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

char *sub_100020FC8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002ACB8(&qword_10039B2A0, &qword_100294220);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100020FFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021034()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021084()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000210C4()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100021128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000213B4()
{
  v0 = type metadata accessor for Logger();
  sub_10002C810(v0, qword_10039B220);
  sub_100011920(v0, qword_10039B220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100021478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[37] = a7;
  v8[38] = v7;
  v8[35] = a5;
  v8[36] = a6;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;
  return _swift_task_switch(sub_1000214A4, 0, 0);
}

uint64_t sub_1000214A4()
{
  v74 = v0;
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_100011920(v1, qword_10039B220);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to acquire a CloudCore Session", v4, 2u);
  }

  v5 = v0[38];

  v6 = OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  v0[40] = OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  v7 = (v5 + v6);
  os_unfair_lock_lock((v5 + v6));
  sub_1000230FC(&v7[2], v0 + 28, &v72);
  os_unfair_lock_unlock(v7);
  v8 = v72;
  v9 = v73;
  v0[41] = v73;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  if (v8)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Returning based on already acquired session", v13, 2u);
    }

    sub_10002C66C(v8, v9);

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Going to actually acquire a session", v16, 2u);
    }

    v17 = v0[37];

    v18 = type metadata accessor for AuthenticatedSession.Configuration();
    v0[42] = v18;
    v19 = *(v18 - 8);
    v0[43] = v19;
    v20 = *(v19 + 64) + 15;
    v0[44] = swift_task_alloc();
    static AuthenticatedSession.Configuration.standard.getter();
    v21 = type metadata accessor for ContainerID();
    v0[45] = v21;
    v22 = *(v21 - 8);
    v23 = v22;
    v0[46] = v22;
    v71 = *(v22 + 64) + 15;
    v0[47] = swift_task_alloc();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    if (v17)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "In Testing mode, not setting up bundle IDs", v27, 2u);
      }

      v29 = v0[31];
      v28 = v0[32];

      v30 = *(type metadata accessor for ContainerID.Environment() - 8);
      v31 = *(v30 + 64) + 15;
      swift_task_alloc();
      (*(v30 + 104))();

      ContainerID.init(name:environment:)();

      v32 = *(*(type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration() - 8) + 64) + 15;
      swift_task_alloc();
      static AuthenticatedSession.Configuration.Application.PushRegistration.noRegistration.getter();
      v33 = AuthenticatedSession.Configuration.application.modify();
      AuthenticatedSession.Configuration.Application.pushRegistration.setter();
      v33(v0 + 24, 0);
    }

    else
    {
      if (v26)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Setting up Bundle IDs", v34, 2u);
      }

      v36 = v0[33];
      v35 = v0[34];
      v69 = v0[32];
      v70 = v0[31];

      v68 = type metadata accessor for BundleID();
      v37 = *(v68 - 8);
      v38 = *(v37 + 64) + 15;
      v39 = swift_task_alloc();
      static BundleID.custom(_:)();
      swift_task_alloc();
      (*(v37 + 16))();
      v40 = AuthenticatedSession.Configuration.application.modify();
      AuthenticatedSession.Configuration.Application.bundleID.setter();
      v40(v0 + 12, 0);

      v41 = *(*(type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration() - 8) + 64) + 15;
      swift_task_alloc();
      static AuthenticatedSession.Configuration.Application.PushRegistration.register(bundleID:)();
      v42 = AuthenticatedSession.Configuration.application.modify();
      AuthenticatedSession.Configuration.Application.pushRegistration.setter();
      v42(v0 + 16, 0);

      v43 = *(type metadata accessor for ContainerID.Environment() - 8);
      v44 = *(v43 + 64) + 15;
      swift_task_alloc();
      (*(v43 + 104))();

      ContainerID.init(name:environment:)();
      (*(v37 + 8))(v39, v68);
    }

    v45 = v0[38];
    v47 = v0[35];
    v46 = v0[36];

    swift_task_alloc();
    (*(v23 + 16))();
    AuthenticatedSession.Configuration.containerID.setter();

    v48 = *(*(type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity() - 8) + 64) + 15;
    swift_task_alloc();
    static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.custom(serviceName:)();
    v49 = AuthenticatedSession.Configuration.encryption.modify();
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.setter();
    v49(v0 + 20, 0);

    type metadata accessor for AuthenticatedSession();
    v50 = *(*(sub_10002ACB8(&qword_10039B300, &qword_100294290) - 8) + 64) + 15;
    v51 = swift_task_alloc();
    sub_1000232C4(v51);
    *(swift_allocObject() + 16) = v45;
    sub_10002C6AC(&qword_10039B240, &type metadata accessor for AuthenticatedSession);
    v52 = v45;
    static Session.acquire(configuration:previousInvalidationContext:onInvalidation:)();

    sub_10002C6F4(v51, &qword_10039B300, &qword_100294290);

    v53 = v0[5];
    v54 = sub_10002C528(v0 + 2, v53);
    v55 = *(v53 - 8);
    v56 = *(v55 + 64) + 15;
    v57 = swift_task_alloc();
    (*(v55 + 16))(v57, v54, v53);
    v0[10] = swift_getAssociatedTypeWitness();
    v0[11] = swift_getAssociatedConformanceWitness();
    sub_10002C56C(v0 + 7);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v58 = *(*(sub_10002ACB8(&qword_10039B378, &qword_1002943C8) - 8) + 64) + 15;
    v0[48] = swift_task_alloc();
    v59 = v0[10];
    v60 = v0[11];
    sub_10002C5D0((v0 + 7), v59);
    v61 = type metadata accessor for CloudCoreError();
    v0[49] = v61;
    v62 = *(v61 - 8);
    v0[50] = v62;
    v63 = *(v62 + 64) + 15;
    v64 = swift_task_alloc();
    v0[51] = v64;
    v65 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v66 = swift_task_alloc();
    v0[52] = v66;
    *v66 = v0;
    v66[1] = sub_100021FB0;
    v67 = v0[48];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v67, 0, 0, v64, v59, v60);
  }
}

uint64_t sub_100021FB0()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_100022E28;
  }

  else
  {
    v5 = *(v2 + 408);

    v4 = sub_1000220CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000220CC()
{
  v107 = v0;
  v1 = *(v0 + 384);
  v2 = sub_10002ACB8(&qword_10039B388, &qword_1002943D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 312);
  if (v4 == 1)
  {

    sub_10002C620((v0 + 56));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying task cancellation", v8, 2u);
    }

    v9 = *(v0 + 424);

    static Task<>.checkCancellation()();
    if (!v9)
    {
      _assertionFailure(_:_:file:line:flags:)();
      return;
    }

    v11 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 352);
    v13 = *(v0 + 360);
    v14 = *(v0 + 336);
    v15 = *(v0 + 344);
    sub_10002C66C(0, *(v0 + 328));
    (*(v11 + 8))(v10, v13);
    (*(v15 + 8))(v12, v14);
    goto LABEL_6;
  }

  v17 = *(v3 + 64) + 15;
  v18 = swift_task_alloc();
  (*(v3 + 32))(v18, v1, v2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got some event while acquiring session", v21, 2u);
  }

  v22 = swift_task_alloc();
  (*(v3 + 16))(v22, v18, v2);
  v23 = (*(v3 + 88))(v22, v2);
  if (&enum case for SessionReadiness.ready<A>(_:) && v23 == enum case for SessionReadiness.ready<A>(_:))
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 304) + *(v0 + 320);
    (*(v3 + 96))(v22, v2);
    v26 = *v22;
    os_unfair_lock_lock(v25);
    sub_100024308((v25 + 8), v26, &v106);
    os_unfair_lock_unlock(v25);
    if (v24)
    {
      return;
    }

    v104 = v106;
    if (v106)
    {
      v99 = v18;
      v27 = type metadata accessor for AuthenticatedSession.ResolvedUser();
      v28 = *(v27 - 8);
      v29 = *(v28 + 64) + 15;
      v30 = swift_task_alloc();
      AuthenticatedSession.resolvedUser.getter();
      v31 = AuthenticatedSession.ResolvedUser.userRecordID.getter();
      (*(v28 + 8))(v30, v27);
      v32 = [v31 recordName];

      if (!v32)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = String._bridgeToObjectiveC()();
      }

      v33 = *(v0 + 312);

      [v104 accountChangedFromUserID:0 toUserID:v32 shouldWipeLocalState:1];

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Returning after successfully acquiring a session", v36, 2u);
      }

      v101 = *(v0 + 384);
      v38 = *(v0 + 360);
      v37 = *(v0 + 368);
      v39 = *(v0 + 344);
      v97 = *(v0 + 352);
      v40 = *(v0 + 328);
      v93 = *(v0 + 376);
      v95 = *(v0 + 336);

      swift_unknownObjectRelease();
      sub_10002C66C(0, v40);
      (*(v3 + 8))(v99, v2);
      (*(v37 + 8))(v93, v38);
      (*(v39 + 8))(v97, v95);

      sub_10002C620((v0 + 56));
      sub_10002C620((v0 + 16));

      v16 = *(v0 + 8);
      goto LABEL_7;
    }

    v67 = *(v0 + 312);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "After Successful Session Acquisition: Might be missing KCSharingCloudCoreDelegate reference", v70, 2u);
    }

    type metadata accessor for KCSharingError(0);
    *(v0 + 240) = 39;
    sub_10001196C(&_swiftEmptyArrayStorage);
    sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v71 = *(v0 + 232);
    swift_willThrow();

    (*(v3 + 8))(v18, v2);

    v72 = *(v0 + 384);
    v73 = *(v0 + 312);

    sub_10002C620((v0 + 56));
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v78;
      *v77 = v78;
      _os_log_impl(&_mh_execute_header, v74, v75, "Got CKError while acquiring session: %@", v76, 0xCu);
      sub_10002C6F4(v77, &qword_10039B248, &qword_1002941A8);
    }

    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v81 = *(v0 + 304);

    os_unfair_lock_lock((v81 + v79));
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 67109120;
      _os_log_impl(&_mh_execute_header, v82, v83, "Setting SessionAcquisitionProgress flag to: %{BOOL}d", v84, 8u);
    }

    v86 = *(v0 + 368);
    v85 = *(v0 + 376);
    v87 = *(v0 + 352);
    v88 = *(v0 + 360);
    v89 = *(v0 + 344);
    v103 = *(v0 + 336);
    v90 = *(v0 + 320);
    v91 = *(v0 + 328);
    v92 = *(v0 + 304);

    *(v92 + v90 + 40) = 0;
    os_unfair_lock_unlock((v92 + v90));
    swift_willThrow();
    sub_10002C66C(0, v91);
    (*(v86 + 8))(v85, v88);
    (*(v89 + 8))(v87, v103);
LABEL_6:
    sub_10002C620((v0 + 16));

    v16 = *(v0 + 8);
LABEL_7:

    v16();
    return;
  }

  if (&enum case for SessionReadiness.blocked<A>(_:) && v23 == enum case for SessionReadiness.blocked<A>(_:))
  {
    v41 = *(v0 + 312);
    (*(v3 + 96))(v22, v2);
    v42 = type metadata accessor for SessionReadinessError();
    v43 = *(v42 - 8);
    v44 = *(v43 + 64) + 15;
    v45 = swift_task_alloc();
    (*(v43 + 32))(v45, v22, v42);
    v102 = swift_task_alloc();
    v105 = v45;
    v98 = *(v43 + 16);
    v98(v102, v45, v42);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v96 = v46;
      v48 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v48 = 138412290;
      sub_10002C6AC(&qword_10039B308, &type metadata accessor for SessionReadinessError);
      swift_allocError();
      v100 = v18;
      v98(v49, v102, v42);
      v50 = _swift_stdlib_bridgeErrorToNSError();
      v51 = *(v43 + 8);
      v51(v102, v42);

      *(v48 + 4) = v50;
      *v94 = v50;
      _os_log_impl(&_mh_execute_header, v96, v47, "Session Acquisition Readiness error: %@", v48, 0xCu);
      sub_10002C6F4(v94, &qword_10039B248, &qword_1002941A8);

      v51(v105, v42);
      (*(v3 + 8))(v100, v2);
    }

    else
    {

      v57 = *(v43 + 8);
      v57(v102, v42);
      v57(v105, v42);
      (*(v3 + 8))(v18, v2);
    }
  }

  else
  {
    v52 = *(v0 + 312);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "UNKNOWN SESSION READINESS EVENT", v55, 2u);
    }

    v56 = *(v3 + 8);
    v56(v18, v2);
    v56(v22, v2);
  }

  v58 = *(v0 + 80);
  v59 = *(v0 + 88);
  sub_10002C5D0(v0 + 56, v58);
  v60 = type metadata accessor for CloudCoreError();
  *(v0 + 392) = v60;
  v61 = *(v60 - 8);
  *(v0 + 400) = v61;
  v62 = *(v61 + 64) + 15;
  v63 = swift_task_alloc();
  *(v0 + 408) = v63;
  v64 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v65 = swift_task_alloc();
  *(v0 + 416) = v65;
  *v65 = v0;
  v65[1] = sub_100021FB0;
  v66 = *(v0 + 384);

  __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v66, 0, 0, v63, v58, v59);
}

uint64_t sub_100022E28()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  sub_10002C6AC(&qword_10039B380, &type metadata accessor for CloudCoreError);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[39];

  sub_10002C620(v0 + 7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Got CKError while acquiring session: %@", v10, 0xCu);
    sub_10002C6F4(v11, &qword_10039B248, &qword_1002941A8);
  }

  v13 = v0[39];
  v14 = v0[40];
  v15 = v0[38];

  os_unfair_lock_lock((v15 + v14));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    _os_log_impl(&_mh_execute_header, v16, v17, "Setting SessionAcquisitionProgress flag to: %{BOOL}d", v18, 8u);
  }

  v20 = v0[46];
  v19 = v0[47];
  v22 = v0[44];
  v21 = v0[45];
  v23 = v0[43];
  v29 = v0[42];
  v24 = v0[40];
  v25 = v0[41];
  v26 = v0[38];

  *(v26 + v24 + 40) = 0;
  os_unfair_lock_unlock((v26 + v24));
  swift_willThrow();
  sub_10002C66C(0, v25);
  (*(v20 + 8))(v19, v21);
  (*(v23 + 8))(v22, v29);
  sub_10002C620(v0 + 2);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000230FC@<X0>(uint64_t result@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  if (*result)
  {
    v6 = *(result + 8);
    v7 = *(result + 16);
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100011920(v8, qword_10039B220);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Try Returning based on already acquired session", v11, 2u);
    }

    result = sub_10002AFB4(v6, v7);
    if (!v3)
    {
      *a3 = result;
      a3[1] = v12;
      return result;
    }

    goto LABEL_10;
  }

  if (*(result + 32) == 1)
  {
    type metadata accessor for KCSharingError(0);
    sub_10001196C(&_swiftEmptyArrayStorage);
    sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    result = swift_willThrow();
    v3 = v13;
LABEL_10:
    *a2 = v3;
    return result;
  }

  *(result + 32) = 1;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_1000232C4@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = (v1 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  os_unfair_lock_lock(v3);
  sub_100025DAC(&v34);
  os_unfair_lock_unlock(v3);
  v4 = v34;
  if (*(&v34 + 1) >> 60 == 15)
  {
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100011920(v5, qword_10039B220);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalidation Context Get: Got Stored Invalidation context as nil", v8, 2u);

      sub_10002BAD0(v4, *(&v4 + 1));
    }

    v9 = type metadata accessor for SessionInvalidationContext();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for SessionInvalidationContext();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = type metadata accessor for JSONDecoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10002C6AC(&qword_10039B390, &type metadata accessor for SessionInvalidationContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v33 = v4;

    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_100011920(v19, qword_10039B220);
    v32 = v30;
    __chkstk_darwin(v20);
    v21 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v21, v15, v12);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = a1;
      v25 = v24;
      v30[0] = swift_slowAlloc();
      *&v34 = v30[0];
      *v25 = 136380675;
      sub_10002C6AC(&qword_10039B320, &type metadata accessor for SessionInvalidationContext);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v30[1] = v30;
      v28 = v27;
      (*(v13 + 8))(v21, v12);
      v29 = sub_10002A710(v26, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v4, "Invalidation Context Get: Getting Invalidation Context as:  %{private}s", v25, 0xCu);
      sub_10002C620(v30[0]);

      a1 = v31;

      sub_10002BAD0(v33, *(&v4 + 1));
    }

    else
    {
      sub_10002BAD0(v33, *(&v4 + 1));

      (*(v13 + 8))(v21, v12);
    }

    (*(v13 + 32))(a1, v15, v12);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_100023928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10002394C, 0, 0);
}

uint64_t sub_10002394C()
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100011920(v2, qword_10039B220);
  v3 = type metadata accessor for SessionReadinessError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(v4 + 16);
  v7(v6, v1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 138412290;
    sub_10002C6AC(&qword_10039B308, &type metadata accessor for SessionReadinessError);
    swift_allocError();
    v7(v11, v6, v3);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    (*(v4 + 8))(v6, v3);

    *(v10 + 4) = v12;
    *v22 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Session Invalidation Handler: Session got invalid due to error: %@", v10, 0xCu);
    sub_10002C6F4(v22, &qword_10039B248, &qword_1002941A8);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  v16 = *(*(sub_10002ACB8(&qword_10039B300, &qword_100294290) - 8) + 64) + 15;
  v17 = swift_task_alloc();
  v18 = type metadata accessor for SessionInvalidationContext();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, v14, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_100023CDC(v15, v17, 1);
  sub_10002C6F4(v17, &qword_10039B300, &qword_100294290);

  v20 = v0[1];

  return v20();
}

void sub_100023CDC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v9 = (v5 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex));
  sub_100025254(&v9[2], a2, &v47, &v48);
  if (v4)
  {
    os_unfair_lock_unlock(v9);
    return;
  }

  v45 = a3;
  os_unfair_lock_unlock(v9);
  v46 = v48;
  v10 = type metadata accessor for SessionReadinessError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = *(v11 + 16);
  v13(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 88))(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  if (&enum case for SessionReadinessError.accountNotLoggedIn(_:) && v14 == enum case for SessionReadinessError.accountNotLoggedIn(_:))
  {
    (*(v11 + 8))(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    p_vtable = RateLimiter.vtable;
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100011920(v16, qword_10039B220);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v46;
    v21 = v45;
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Session Invalidation Handler: Looks like no longer account is logged in", v22, 2u);
    }

    [v20 accountChangedFromUserID:0 toUserID:0 shouldWipeLocalState:1];
    if ((v21 & 1) == 0)
    {
LABEL_10:
      if (p_vtable[67] != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100011920(v23, qword_10039B220);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Session Invalidation Handler: NOT Setting up session reinit", v26, 2u);
        p_vtable = (RateLimiter + 24);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v43 = *(v11 + 8);
    v44 = 0;
    v43(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    p_vtable = RateLimiter.vtable;
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_100011920(v27, qword_10039B220);
    v42 = &v40;
    __chkstk_darwin(v28);
    v29 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13(v29, a1, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v32 = 138412290;
      sub_10002C6AC(&qword_10039B308, &type metadata accessor for SessionReadinessError);
      swift_allocError();
      v13(v33, v29, v10);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v43(v29, v10);
      v35 = v41;
      *(v32 + 4) = v34;
      *v35 = v34;
      p_vtable = (RateLimiter + 24);
      _os_log_impl(&_mh_execute_header, v30, v31, "Session Invalidation Handler: Looks like session got invalidated due non-account change issue: %@", v32, 0xCu);
      sub_10002C6F4(v35, &qword_10039B248, &qword_1002941A8);
    }

    else
    {

      v43(v29, v10);
    }

    v20 = v46;
    [v46 cancelExistingSyncEngines];
    if ((v45 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  [v20 setupSessionReinitOperationOnSessionInvalidation];
LABEL_22:
  if (p_vtable[67] != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100011920(v36, qword_10039B220);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Session Invalidation Handler: Handled session invalidation", v39, 2u);
  }

  swift_unknownObjectRelease();
}

void sub_100024308(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v31 = type metadata accessor for CKDatabaseConfiguration();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100011920(v12, qword_10039B220);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "In ready state, acquired a cloud core session", v15, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    static CKDatabaseConfiguration.standard(scope:)();
    static CKDatabaseConfiguration.standard(scope:)();
    v18 = AuthenticatedSession.database(configuration:)();
    v19 = AuthenticatedSession.database(configuration:)();
    [v17 setupCKNotificationListenersAfterSessionAcquisitionWithPrivateDB:v18 sharedDB:v19];

    a1[1] = v18;
    a1[2] = v19;
    v20 = *a1;

    *a1 = a2;
    *(a1 + 32) = 0;
    v21 = sub_10002ACB8(&qword_10039B300, &qword_100294290);
    v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v21 - 8);
    v24 = &v31 - v23;
    v25 = type metadata accessor for SessionInvalidationContext();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    sub_10002B1E4(v17, v24);
    sub_10002C6F4(v24, &qword_10039B300, &qword_100294290);
    v26 = *(v5 + 8);
    v27 = v31;
    v26(v9, v31);
    v26(v11, v27);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Session Invalidation Handler: Might be missing KCSharingCloudCoreDelegate reference", v30, 2u);
    }

    v17 = 0;
  }

  *v32 = v17;
}

Swift::Void __swiftcall KCSharingCloudCoreUtilities.setSessionAcquisitionInProgress(_:)(Swift::Bool a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  os_unfair_lock_lock(v3);
  sub_100024E44(&v3[2], a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1000248B8(int a1, int a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v6[5] = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v6[6] = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v6[7] = v16;
  swift_unknownObjectRetain();
  a6;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1000249F8;

  return sub_100021478(v9, v11, v12, v14, v15, v17, a4);
}

uint64_t sub_1000249F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  swift_unknownObjectRelease();

  v12 = *(v3 + 32);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v14 = *(v11 + 8);

  return v14();
}

id KCSharingCloudCoreUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KCSharingCloudCoreUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100024CDC(void *a1@<X0>, BOOL *a2@<X8>)
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011920(v4, qword_10039B220);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Checking Cloud Core Session Existence", v7, 2u);
  }

  *a2 = *a1 != 0;
}

void sub_100024E44(uint64_t a1, char a2)
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011920(v4, qword_10039B220);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting SessionAcquisitionProgress flag to: %{BOOL}d", v7, 8u);
  }

  *(a1 + 32) = a2 & 1;
}

void sub_100024FC4(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = v1 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex));
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v6;

  v8 = v5;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v9 = sub_10002AFB4(v5, v6);
    v12 = v11;
    v13 = v9;
    v2[2](v2, v9, v11, 0);
    _Block_release(v2);
  }

  else
  {
    type metadata accessor for KCSharingError(0);
    sub_10001196C(&_swiftEmptyArrayStorage);
    sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = _convertErrorToNSError(_:)();

    (v2)[2](v2, 0, 0, v10);
    _Block_release(v2);
  }
}

void sub_100025254(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v13 = sub_10002AFB4(v11, v12);
    if (v4)
    {
      if (qword_10039B218 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100011920(v15, qword_10039B220);
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v28 = a4;
        v18 = swift_slowAlloc();
        v27 = a2;
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Session Invalidation Handler: Might be missing DBs reference %@", v18, 0xCu);
        sub_10002C6F4(v19, &qword_10039B248, &qword_1002941A8);
        a2 = v27;

        a4 = v28;
      }

      else
      {
      }
    }

    else
    {
      v25 = v13;
      v26 = v14;
      [v10 removeCKNotificationListenersAfterSessionInvalidationWithPrivateDB:v13 sharedDB:v14];
    }

    sub_10002B1E4(v10, a2);

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *a4 = v10;
  }

  else
  {
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100011920(v21, qword_10039B220);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Session Invalidation Handler: Might be missing KCSharingCloudCoreDelegate reference", v24, 2u);
    }

    type metadata accessor for KCSharingError(0);
    sub_10001196C(&_swiftEmptyArrayStorage);
    sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    *a3 = v29;
  }
}