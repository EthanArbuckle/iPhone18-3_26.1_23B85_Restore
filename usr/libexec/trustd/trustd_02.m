void sub_10001C418(uint64_t a1)
{
  sub_10001C550(a1);
  if (*(a1 + 56))
  {
    sub_100018B84((a1 + 56));
  }

  v2 = *(a1 + 16);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = a1 + 136;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        *(v4 + 8 * v3) = 0;
        CFRelease(v5);
        v2 = *(a1 + 16);
      }

      ++v3;
    }

    while (v3 < v2);
  }
}

void sub_10001C488(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      sub_10001CA20(v2);
      *(a1 + 32) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      sub_100019788(v3);
      *(a1 + 40) = 0;
      v4 = *(a1 + 48);
      if (v4)
      {
        sub_10001E2B0(v4);
        *(a1 + 48) = 0;
      }
    }

    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }
}

void sub_10001C4EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v3 = *(a1 + 16);
    if (v3)
    {
      *(a1 + 16) = 0;
      CFRelease(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = 0;

    CFRelease(v4);
  }
}

void sub_10001C550(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    if (v3 >= 1)
    {
      v4 = 0;
      do
      {
        sub_10001C4EC(*(a1 + 80) + v4);
        v4 += 40;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 80);
    }

    free(v2);
    *(a1 + 80) = 0;
  }
}

void sub_10001C5B4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;

    CFRelease(v4);
  }
}

double sub_10001C61C(void *a1)
{
  v1 = a1[2];
  v2 = 0.0;
  if (v1 >= 2 && a1[10] && a1[11] >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 - 1;
    v7 = 0.0;
    do
    {
      v8 = a1[10];
      v2 = 0.0;
      if (v8 && (v9 = *(v8 + v4 + 16)) != 0 && (v2 = *(v9 + 72), v2 != 0.0))
      {
        if (v2 < v7 || v7 == 0.0)
        {
          v7 = *(v9 + 72);
        }
      }

      else
      {
        if (!v5)
        {
          return v2;
        }

        v10 = *(v8 + v4 + 8);
        if ((v10 & 0x8000000000000000) == 0 && a1[2] > v10)
        {
          v11 = a1[v10 + 17];
          if (v11)
          {
            v12 = *(v11 + 16);
          }
        }

        OCSPResponders = SecCertificateGetOCSPResponders();
        if (OCSPResponders)
        {
          if (CFArrayGetCount(OCSPResponders) && v6 != v5)
          {
            return v2;
          }
        }
      }

      ++v5;
      v4 += 40;
      v2 = v7;
    }

    while (v5 < a1[11]);
  }

  return v2;
}

uint64_t sub_10001C730(uint64_t *a1)
{
  if (a1[2] >= 2)
  {
    v1 = a1[10];
    if (v1)
    {
      v2 = a1[11];
      if (v2 < 2)
      {
LABEL_8:
        LOBYTE(v1) = 1;
      }

      else
      {
        v3 = v2 - 1;
        v4 = (v1 + 33);
        while (1)
        {
          v5 = *v4;
          v4 += 40;
          LOBYTE(v1) = v5;
          if ((v5 & 1) == 0)
          {
            break;
          }

          if (!--v3)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

void sub_10001C77C(void (**a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2](a1, a5);

  _Block_release(a1);
}

uint64_t sub_10001C7C0(uint64_t result, int a2)
{
  if (a2 == 4 || a2 == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_10001C7E4(uint64_t a1, CFDateRef theDate)
{
  AbsoluteTime = CFDateGetAbsoluteTime(theDate);
  if (AbsoluteTime > *(a1 + 40))
  {
    v4 = *(*(a1 + 32) + 8);
    if (AbsoluteTime < *(v4 + 24))
    {
      *(v4 + 24) = AbsoluteTime;
    }
  }
}

void sub_10001C830(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_10000E934(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_10000E934(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = v5[3];
    if (v6)
    {
      CFRelease(v6);
    }

    free(v5);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_10000E934(v7);
    *(a1 + 64) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 32) = 0;
    CFRelease(v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    *(a1 + 72) = 0;
    CFRelease(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    *(a1 + 88) = 0;
    CFRelease(v10);
  }

  v11 = *(a1 + 136);
  if (v11)
  {
    *(a1 + 136) = 0;
    CFRelease(v11);
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    *(a1 + 144) = 0;
    CFRelease(v12);
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    *(a1 + 152) = 0;
    CFRelease(v13);
  }

  v14 = *(a1 + 160);
  if (v14)
  {
    *(a1 + 160) = 0;
    CFRelease(v14);
  }

  v15 = *(a1 + 96);
  if (v15)
  {
    *(a1 + 96) = 0;
    CFRelease(v15);
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    *(a1 + 104) = 0;
    CFRelease(v16);
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    *(a1 + 112) = 0;
    CFRelease(v17);
  }

  v18 = *(a1 + 200);
  if (v18)
  {
    *(a1 + 200) = 0;
    CFRelease(v18);
  }

  v19 = *(a1 + 216);
  if (v19)
  {
    *(a1 + 216) = 0;
    CFRelease(v19);
  }

  v20 = *(a1 + 232);
  if (v20)
  {
    *(a1 + 232) = 0;
    CFRelease(v20);
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    *(a1 + 128) = 0;
    CFRelease(v21);
  }

  free(*(a1 + 272));
  *(a1 + 272) = 0;
  v22 = *(a1 + 184);
  if (v22)
  {
    v23 = *(a1 + 192);
    if (v23 >= 1)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = *(*(a1 + 184) + 8 * i);
        if (v25)
        {
          v26 = v25[1];
          if (v26)
          {
            v25[1] = 0;
            CFRelease(v26);
          }

          v27 = v25[7];
          if (v27)
          {
            v25[7] = 0;
            CFRelease(v27);
          }

          v28 = v25[5];
          if (v28)
          {
            v25[5] = 0;
            CFRelease(v28);
          }

          free(*(*(a1 + 184) + 8 * i));
          v23 = *(a1 + 192);
        }
      }

      v22 = *(a1 + 184);
    }

    free(v22);
    *(a1 + 184) = 0;
  }
}

void sub_10001CA20(const void **a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[5] = 0;
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[6] = 0;
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[7] = 0;
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *a1 = 0;
    CFRelease(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[1] = 0;
    CFRelease(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[2] = 0;
    CFRelease(v7);
  }

  free(a1);
}

void sub_10001CAB4(id a1)
{
  v1 = os_transaction_create();
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    qword_100092E58 = *&Current;
    v3 = *&qword_100092E60;
    if (*&qword_100092E60 == 0.0)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2000000000;
      v22 = 0xBFF0000000000000;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v18[2] = sub_100053108;
      v18[3] = &unk_100084428;
      v18[4] = &v19;
      sub_100011BD4(v18);
      v4 = v20[3];
      _Block_object_dispose(&v19, 8);
      if (v4 >= Current)
      {
        *&v5 = v4;
      }

      else
      {
        *&v5 = Current;
      }

      qword_100092E60 = v5;
      v18[0] = -1;
      v6 = CFPreferencesCopyValue(@"ValidUpdateInterval", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFNumberGetTypeID() && CFNumberGetValue(v7, kCFNumberCFIndexType, v18))
        {
          if (v18[0] > 299)
          {
            if (v18[0] > 0x93A80uLL)
            {
              v18[0] = 604800;
            }
          }

          else
          {
            v18[0] = 300;
          }
        }

        CFRelease(v7);
        v10 = v18[0];
        if (v18[0] <= 0)
        {
          v10 = 10800;
        }
      }

      else
      {
        v10 = 10800;
      }

      qword_100092E98 = v10;
      v3 = *&qword_100092E60;
      if (*&qword_100092E60 > *&qword_100092E58 + v10)
      {
        *&qword_100092E60 = *&qword_100092E58 + v10;
        v3 = *&qword_100092E58 + v10;
      }

      v9 = Current;
    }

    else
    {
      v9 = Current + qword_100092E98;
    }

    if (v3 <= Current)
    {
      v11 = sub_1000027AC("validupdate");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "starting update", v18, 2u);
      }

      qword_100092E60 = *&v9;
      v12 = sub_100051A00();
      v13 = sub_100052DBC(v12);
      v14 = sub_100052F9C();
      v15 = sub_100051D4C();
      if ((sub_100051AB4(v12, v13, v15, 0) & 1) == 0)
      {
        if (v14)
        {
          v16 = sub_100051CA8();
          sub_10003DFB4(v16, v12, v13);
        }

        else
        {
          v17 = sub_1000027AC("validupdate");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18[0]) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "skipping update", v18, 2u);
          }
        }
      }

      CFRelease(v12);
    }

    else
    {
      qword_100092E58 = 0;
    }
  }

  os_release(v1);
}

uint64_t sub_10001CDC8(void *a1, sqlite3_stmt *a2)
{
  v3 = *(a1[4] + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = *(a1[7] + 8);
    v5 = *(a1[5] + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_100049778;
    v8[3] = &unk_1000847F8;
    v8[4] = a1[6];
    v8[5] = a2;
    v6 = sub_100005D40(v4, a2, (v5 + 24), v8);
    v3 = *(a1[4] + 8);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 24) = v6;
  return *(*(a1[4] + 8) + 24);
}

uint64_t sub_10001CE8C(void *a1, CFDataRef theData, void *a3)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = -1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = a1 != 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (a1 && theData && CFDataGetLength(theData) >= 1)
  {
    v6 = atomic_load(&qword_100092928);
    if (v6 == -1)
    {
      atomic_store(sub_10001D11C(a1, 0), &qword_100092928);
    }

    v7 = atomic_load(&qword_100092928);
    if (v7 > 6)
    {
      v8 = v24;
      if (*(v24 + 24) == 1)
      {
        v9 = a1[1];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 0x40000000;
        v18[2] = sub_10001D85C;
        v18[3] = &unk_100084F48;
        v18[4] = &v23;
        v18[5] = &v19;
        v18[7] = theData;
        v18[8] = a1;
        v18[6] = &v27;
        v10 = sub_100004A60(v9, @"SELECT DISTINCT groupid FROM issuers WHERE issuer_hash=?", v20 + 3, v18);
        v8 = v24;
      }

      else
      {
        v10 = 0;
      }

      *(v8 + 24) = v10;
    }

    else if ((*(*a1 + 17) & 1) == 0)
    {
      *(*a1 + 17) = 1;
    }
  }

  if (*(v24 + 24) != 1 || v20[3])
  {
    v11 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v20[3];
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_SecRevocationDbGroupIdForIssuerHash failed: %@", buf, 0xCu);
    }

    v13 = v20[3];
    if (v13)
    {
      Code = CFErrorGetCode(v13);
    }

    else
    {
      Code = -2070;
    }

    sub_100054DC0(1, 3, Code);
    v15 = v20[3];
    if (v15)
    {
      if (a3 && !*a3)
      {
        *a3 = v15;
      }

      else
      {
        CFRelease(v15);
      }
    }
  }

  v16 = v28[3];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return v16;
}

uint64_t sub_10001D11C(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = a1 != 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v3 = *(a1 + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10001CDC8;
    v12[3] = &unk_100084820;
    v12[4] = &v17;
    v12[5] = &v13;
    v12[6] = &v21;
    v12[7] = a1;
    v4 = sub_100004A60(v3, @"SELECT ival FROM admin WHERE key='db_version'", &v16, v12);
    *(v18 + 24) = v4;
    if (v4 && !v14[3])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
  }

  v5 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v14[3];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_SecRevocationDbReadSchemaVersionFromDb failed: %@", buf, 0xCu);
  }

  v7 = v14[3];
  if (v7)
  {
    Code = CFErrorGetCode(v7);
  }

  else
  {
    Code = -2070;
  }

  sub_100054DC0(1, 3, Code);
  v9 = v14[3];
  if (v9)
  {
    if (a2 && !*a2)
    {
      *a2 = v9;
    }

    else
    {
      CFRelease(v9);
    }
  }

LABEL_16:
  v10 = v22[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

uint64_t sub_10001D314()
{
  result = SecCertificateGetCertificatePolicies();
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(v1 + 16);
        result = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
        *(result + 16) = v4;
        *result = *(v5 + v3);
        v3 += 32;
        v4 = result;
        --v2;
      }

      while (v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10001D3A0(uint64_t a1)
{
  v2 = sqlite3_column_blob(*(a1 + 40), 0);
  v3 = sqlite3_column_bytes(*(a1 + 40), 0);
  v4 = CFDataCreate(kCFAllocatorDefault, v2, v3);
  v5 = sqlite3_column_int64(*(a1 + 40), 1);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_10001EF3C(v4, v5);

    CFRelease(v4);
  }
}

void sub_10001D450(uint64_t a1)
{
  if ((sqlite3_column_bytes(*(a1 + 56), 0) & 0x80000000) == 0)
  {
    *(&v15 + 1) = sqlite3_column_blob(*(a1 + 56), 0);
    *&v15 = sqlite3_column_bytes(*(a1 + 56), 0);
    CFDataGetBytePtr(*(a1 + 64));
    CFDataGetLength(*(a1 + 64));
    v2 = SecDigestCreate();
    v3 = *(a1 + 72);
    v4 = *v3;
    v5 = v3[1];
    v6 = SecDigestCreate();
    if (v2)
    {
      if (CFDataGetLength(v2) >= 1 && v6 != 0 && CFDataGetLength(v6) >= 1)
      {
        v8 = *(a1 + 32);
        if (*(*(v8 + 8) + 24) == 1)
        {
          v9 = *(a1 + 80);
          v10 = *(a1 + 40);
          v11 = *(v10 + 8);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 0x40000000;
          v12[2] = sub_10001D600;
          v12[3] = &unk_100083490;
          v12[7] = *(a1 + 88);
          v12[4] = v8;
          v12[5] = v10;
          v12[8] = v2;
          v12[9] = v6;
          v12[10] = *(a1 + 96);
          v13 = v15;
          v14 = v9;
          v12[6] = *(a1 + 48);
          *(*(*(a1 + 32) + 8) + 24) &= sub_100004A60(v9, @"SELECT ocspResponse,responseId FROM responses WHERE lastUsed>? AND responseId=(SELECT responseId FROM ocsp WHERE issuerNameHash=? AND issuerPubKeyHash=? AND serialNum=? AND hashAlgorithm=?) ORDER BY expires DESC", (v11 + 24), v12);
        }
      }

      CFRelease(v2);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

uint64_t sub_10001D600(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = sqlite3_bind_double(a2, 1, *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v5, a2, (v4 + 24), @"bind_double[%d]", 1);
  BytePtr = CFDataGetBytePtr(*(a1 + 64));
  Length = CFDataGetLength(*(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 2, BytePtr, Length, (*(*(a1 + 40) + 8) + 24));
  v8 = CFDataGetBytePtr(*(a1 + 72));
  v9 = CFDataGetLength(*(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 3, v8, v9, (*(*(a1 + 40) + 8) + 24));
  v10 = CFDataGetBytePtr(*(a1 + 80));
  v11 = CFDataGetLength(*(a1 + 80));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 4, v10, v11, (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 5, *(a1 + 96), *(a1 + 88), (*(*(a1 + 40) + 8) + 24));
  v12 = *(a1 + 104);
  v13 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10001D3A0;
  v15[3] = &unk_100083468;
  v15[4] = *(a1 + 48);
  v15[5] = a2;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005D40(v12, a2, (v13 + 24), v15);
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_10001D80C(uint64_t a1, uint64_t a2)
{
  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v5 = *(a1 + 24);
    if (!v5)
    {
      return 1;
    }

    v6 = *(a2 + 24);
    if (!v6)
    {
      return 1;
    }

    result = CFEqual(v5, v6);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10001D85C(uint64_t a1, sqlite3_stmt *a2)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  Length = CFDataGetLength(*(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 1, BytePtr, Length, (*(*(a1 + 40) + 8) + 24));
  v6 = *(*(a1 + 64) + 8);
  v7 = *(*(a1 + 40) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10001B79C;
  v9[3] = &unk_100084F20;
  v9[4] = *(a1 + 48);
  v9[5] = a2;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005D40(v6, a2, (v7 + 24), v9);
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_10001D964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        while (!DEROidCompare(v6, v2))
        {
          v6 = *(v6 + 40);
          if (!v6)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        sub_10000FC54(a1, v2, a2);
        v5 = 1;
      }

      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10001D9EC(uint64_t a1)
{
  v2 = *(*a1 + 200);
  if (v2 && (v3 = *(v2 + 16), v3 >= 1) && (v4 = *(v2 + 8 * v3 + 128)) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = off_1000927D0(off_1000927C0, v5, a1);
  if (qword_100092AE0 != -1)
  {
    dispatch_once(&qword_100092AE0, &stru_100081EF8);
  }

  if (byte_100092AD8)
  {
    if (v6)
    {
      return;
    }

LABEL_20:
    v8 = kSecPolicyCheckAnchorApple;

    sub_100012178(a1, v8, 0, kCFBooleanFalse, 0, 0);
    return;
  }

  if (SecIsInternalRelease())
  {
    v7 = 1;
    if (v6)
    {
      return;
    }

LABEL_18:
    if (sub_100008B24(v5, v7))
    {
      return;
    }

    goto LABEL_20;
  }

  if (sub_100003C24())
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_10001DB18(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = v5 - 1;
    if (v5 >= 1)
    {
      v7 = *(v4 + 8 * v6 + 136);
      if (v7)
      {
        v8 = *(v7 + 16);
      }
    }
  }

  else
  {
    v6 = -1;
  }

  v9 = SecCertificateCopySHA256Digest();
  if ((sub_10001DCC8(*(a1 + 8), *(a1 + 24), a2, v9) & 1) == 0)
  {
    sub_100012178(a1, kSecPolicyCheckAnchorSHA256, v6, kCFBooleanFalse, 0, 0);
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t sub_10001DBF4(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (result)
  {
    v8 = result;
    v9 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v9 == result)
    {
      valuePtr = 0xAAAAAAAAAAAAAAAALL;
      result = CFNumberGetValue(v8, kCFNumberCFIndexType, &valuePtr);
      if (result)
      {
        v10 = valuePtr == v5;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }
    }
  }

  return result;
}

const void *sub_10001DCC8(const __CFArray *a1, CFIndex a2, const void *a3, const void *a4)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  result = CFDictionaryGetValue(ValueAtIndex[4], a3);
  if (result)
  {
    v8 = result;
    v9 = CFGetTypeID(result);
    if (v9 == CFDataGetTypeID())
    {
      v10 = CFEqual(a4, v8);
      return (v10 != 0);
    }

    v11 = CFGetTypeID(v8);
    if (v11 == CFArrayGetTypeID())
    {
      v12.length = CFArrayGetCount(v8);
      v12.location = 0;
      v10 = CFArrayContainsValue(v8, v12, a4);
      return (v10 != 0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001DD74(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 3)
  {
    v8 = kSecPolicyCheckIntermediateOrganization;
    v9 = 18;
    do
    {
      v10 = *(*a1 + 200);
      if (v10)
      {
        if (*(v10 + 16) > v9 - 17)
        {
          v11 = *(v10 + 8 * v9);
          if (v11)
          {
            v12 = *(v11 + 16);
          }
        }
      }

      result = SecPolicyCheckCertSubjectOrganization();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, v8, v9 - 17, kCFBooleanFalse, 1, 0);
      }

      ++v9;
    }

    while (2 - v5 + v9 != 18);
  }

  return result;
}

uint64_t sub_10001DE78(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 < 3)
  {
LABEL_12:
    v13 = kSecPolicyCheckIntermediateMarkerOid;

    return sub_100012178(a1, v13, 0, kCFBooleanFalse, 1, 0);
  }

  else
  {
    v7 = 2 - v5;
    v8 = 18;
    while (1)
    {
      v9 = *(*a1 + 200);
      if (v9)
      {
        if (*(v9 + 16) > v8 - 17)
        {
          v10 = *(v9 + 8 * v8);
          if (v10)
          {
            v11 = *(v10 + 16);
          }
        }
      }

      result = SecCertificateHasMarkerExtension();
      if (result)
      {
        break;
      }

      ++v8;
      if (v7 + v8 == 18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_10001DF80(uint64_t a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  v6 = CFGetTypeID(Value);
  if (v6 == CFDataGetTypeID())
  {
    if (sub_10001E078(a1, Value))
    {
      return;
    }
  }

  else
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      OidDataFromString = SecCertificateCreateOidDataFromString();
      if (OidDataFromString)
      {
        v9 = OidDataFromString;
        v10 = sub_10001E078(a1, OidDataFromString);
        CFRelease(v9);
        if (v10)
        {
          return;
        }
      }
    }
  }

  sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
}

BOOL sub_10001E078(uint64_t a1, CFDataRef theData)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v17[0] = CFDataGetBytePtr(theData);
  v17[1] = CFDataGetLength(theData);
  if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(*a1 + 200);
      if (v8)
      {
        if (*(v8 + 16) > v6)
        {
          v9 = *(v8 + 8 * v6 + 136);
          if (v9)
          {
            v10 = *(v9 + 16);
          }
        }
      }

      v11 = sub_10001D314();
      if (v11)
      {
        v12 = v11;
        v13 = v11;
        do
        {
          v14 = DEROidCompare(v13, v17);
          if (v14)
          {
            break;
          }

          v13 = *(v13 + 16);
        }

        while (v13);
        do
        {
          v15 = v12[2];
          free(v12);
          v12 = v15;
        }

        while (v15);
        if (v14)
        {
          break;
        }
      }

      v7 = ++v6 < v5;
    }

    while (v6 != v5);
  }

  return v7;
}

uint64_t sub_10001E18C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 3)
  {
    v8 = kSecPolicyCheckIntermediateCountry;
    v9 = 18;
    do
    {
      v10 = *(*a1 + 200);
      if (v10)
      {
        if (*(v10 + 16) > v9 - 17)
        {
          v11 = *(v10 + 8 * v9);
          if (v11)
          {
            v12 = *(v11 + 16);
          }
        }
      }

      result = SecPolicyCheckCertSubjectCountry();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, v8, v9 - 17, kCFBooleanFalse, 1, 0);
      }

      ++v9;
    }

    while (2 - v5 + v9 != 18);
  }

  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

void sub_10001E2B0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFArray *sub_10001E2F0(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable && *(a1 + 88) && *(a1 + 96))
  {
    memset(v9, 170, sizeof(v9));
    if (DERDecodeItem(a1 + 88, v9) || v9[0] != 0x2000000000000010)
    {
      goto LABEL_14;
    }

    if (v9[2])
    {
      while (v9[2] >= 1)
      {
        v7 = 0;
        memset(v8, 170, sizeof(v8));
        if (DERDecodeItemPartialBufferGetLength(&v9[1], v8, &v7))
        {
          goto LABEL_14;
        }

        if (v8[0] != 0x2000000000000010)
        {
          goto LABEL_14;
        }

        v3 = v9[2];
        if (v3 < DERLengthOfItem(0x2000000000000010uLL, v7))
        {
          goto LABEL_14;
        }

        DERLengthOfItem(0x2000000000000010uLL, v7);
        v4 = SecCertificateCreateWithBytes();
        if (!v4)
        {
          goto LABEL_14;
        }

        v5 = v4;
        CFArrayAppendValue(Mutable, v4);
        v9[1] += SecCertificateGetLength();
        v9[2] -= SecCertificateGetLength();
        CFRelease(v5);
      }

      if (!CFArrayGetCount(Mutable))
      {
LABEL_14:
        CFRelease(Mutable);
        return 0;
      }
    }
  }

  return Mutable;
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

uint64_t sub_10001E660(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100020258;
    v5[3] = &unk_100083B18;
    v5[4] = &v6;
    v5[5] = a2;
    *buf = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10001FBBC;
    v13 = &unk_100083B68;
    v14 = v5;
    if (DERDecodeSequenceContentWithBlock((a1 + 152), buf))
    {
      v2 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "failed to parse single responses", buf, 2u);
      }
    }

    v3 = v7[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
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

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
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

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL sub_10001ECD4(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10001F97C;
  v3[3] = &unk_100083AD0;
  v3[4] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001FBBC;
  v4[3] = &unk_100083B68;
  v4[4] = v3;
  return DERDecodeSequenceContentWithBlock((a1 + 152), v4) == 0;
}

uint64_t sub_10001ED88(uint64_t a1, void *a2)
{
  v4 = sub_10001FCAC(a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*(v4 + 8) <= *(a1 + 32) + 4500.0)
  {
    if (a2[6] && a2[7] && (v8 = *(v4 + 16), v9 = *(a1 + 40), v8 > *(v9 + 24)))
    {
      v7 = 0;
      *(v9 + 24) = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = sub_1000027AC("ocsp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "OCSPResponse: thisUpdate more than 1:15 from now", v11, 2u);
    }

    v7 = 0xFFFFFFFFLL;
  }

  sub_10001E2B0(v5);
  return v7;
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

void *sub_10001EF3C(const __CFData *a1, uint64_t a2)
{
  if (!a1 || CFDataGetLength(a1) < 1)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0xD8uLL, 0x107004011397726uLL);
  if (!v4)
  {
    return v4;
  }

  CFRetain(a1);
  *v4 = a1;
  v4[26] = a2;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v5;
  v42 = v5;
  v40[0] = CFDataGetBytePtr(a1);
  v40[1] = CFDataGetLength(a1);
  v6 = DERParseSequence(v40, 2u, &unk_10006C3A8, &v41, 0x20uLL);
  if (v6)
  {
    v29 = v6;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v47[0]) = 67109120;
    DWORD1(v47[0]) = v29;
    v27 = "failed to parse OCSPResponse: %d";
LABEL_59:
    v28 = v47;
LABEL_96:
    v34 = v30;
    v35 = 8;
    goto LABEL_100;
  }

  if (!v41 || *(&v41 + 1) != 1)
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v47[0]) = 0;
    v27 = "OCSPResponse has missing/bad responseStatus";
LABEL_66:
    v28 = v47;
LABEL_80:
    v34 = v16;
    v35 = 2;
LABEL_100:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v27, v28, v35);
    goto LABEL_31;
  }

  v7 = *v41;
  *(v4 + 8) = v7;
  if (v7)
  {
    return v4;
  }

  if (!v42 || !*(&v42 + 1))
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v47[0]) = 0;
    v27 = "Successful OCSPResponse has missing/bad responseBytes";
    goto LABEL_66;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  v9 = DERParseSequence(&v42, 2u, &unk_10006C3D8, &v43, 0x20uLL);
  if (v9)
  {
    v31 = v9;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v47[0]) = 67109120;
    DWORD1(v47[0]) = v31;
    v27 = "failed to parse OCSPResponseBytes: %d";
    goto LABEL_59;
  }

  if (!DEROidCompare(&v43, &off_100083AB8))
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v47[0]) = 0;
    v27 = "unknown responseType";
    goto LABEL_66;
  }

  if (!v44 || !*(&v44 + 1))
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v47[0]) = 0;
    v27 = "OCSPResponseBytes with missing response";
    goto LABEL_66;
  }

  v10 = DERParseSequence(&v44, 4u, &unk_10006C418, (v4 + 5), 0x40uLL);
  if (v10)
  {
    v32 = v10;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v50[0]) = 67109120;
    HIDWORD(v50[0]) = v32;
    v27 = "failed to parse BasicOCSPResponse: %d";
LABEL_77:
    v28 = v50;
    goto LABEL_96;
  }

  if (!v4[5] || !v4[6])
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v50[0]) = 0;
    v27 = "BasicOCSPResponse missing/bad responseData";
    goto LABEL_79;
  }

  v11 = DERParseSequence((v4 + 5), 5u, &unk_10006C478, (v4 + 13), 0x50uLL);
  if (v11)
  {
    v33 = v11;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v50[0]) = 67109120;
    HIDWORD(v50[0]) = v33;
    v27 = "failed to parse ResponseData: %d";
    goto LABEL_77;
  }

  if (!v4[13] || !v4[14])
  {
    goto LABEL_24;
  }

  *v48 = 0;
  memset(v50, 170, sizeof(v50));
  v12 = DERDecodeItem((v4 + 13), v50);
  if (v12)
  {
    v36 = v12;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 67109120;
    *&buf[4] = v36;
    v27 = "failed to parse version from ResponseData: %d";
LABEL_95:
    v28 = buf;
    goto LABEL_96;
  }

  if (v50[0] != 2)
  {
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 67109120;
    *&buf[4] = 2;
    v27 = "failed to parse version from ResponseData: %d";
    goto LABEL_95;
  }

  v13 = DERParseInteger64(&v50[1], v48);
  if (v13)
  {
    v37 = v13;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 67109120;
    *&buf[4] = v37;
    v27 = "failed to parse version from ResponseData: %d";
    goto LABEL_95;
  }

  if (*v48)
  {
    v25 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 134217984;
    *&buf[4] = *v48;
    v27 = "ResponseData has unknown version: %llu";
    v28 = buf;
    goto LABEL_99;
  }

LABEL_24:
  if (!v4[15] || !v4[16])
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v50[0]) = 0;
    v27 = "ResponseData missing responderId";
LABEL_79:
    v28 = v50;
    goto LABEL_80;
  }

  memset(v50, 170, sizeof(v50));
  if (DERDecodeItem((v4 + 15), v50))
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *v48 = 0;
    v27 = "failed to parse ResponderId";
    goto LABEL_113;
  }

  v14 = &v50[1];
  if (v50[0] == 0xA000000000000002)
  {
    v4[23] = 0xA000000000000002;
    memset(buf, 170, 24);
    if (DERDecodeItem(&v50[1], buf))
    {
      v16 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *v48 = 0;
      v27 = "failed to parse ResponderId byKey";
    }

    else if (*buf == 4)
    {
      v18 = DERLengthOfItem(4uLL, *&buf[16]);
      if (v18 == v50[2])
      {
        v14 = &buf[8];
        v15 = &buf[16];
        goto LABEL_38;
      }

      v16 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *v48 = 0;
      v27 = "failed to parse ResponderId byKey, extra data";
    }

    else
    {
      v16 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *v48 = 0;
      v27 = "failed to parse ResponderId byKey, wrong type";
    }

LABEL_113:
    v28 = v48;
    goto LABEL_80;
  }

  if (v50[0] != 0xA000000000000001)
  {
    v25 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v26 = v4[23];
    *v48 = 134217984;
    *&v48[4] = v26;
    v27 = "unknown responderId choice: %llu";
    v28 = v48;
LABEL_99:
    v34 = v25;
    v35 = 12;
    goto LABEL_100;
  }

  v15 = &v50[2];
  v4[23] = 0xA000000000000001;
LABEL_38:
  v19 = *v15;
  v4[24] = *v14;
  v4[25] = v19;
  if (!v4[17] || !v4[18])
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v50[0]) = 0;
    v27 = "ResponseData with missing producedAt";
    goto LABEL_79;
  }

  v46 = 0;
  SecAbsoluteTimeFromDateContentWithError();
  v4[2] = v20;
  if (v46)
  {
    v25 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v50[0]) = 138412290;
    *(v50 + 4) = v46;
    v27 = "failed to decode producedAt time: %@";
    v28 = v50;
    goto LABEL_99;
  }

  if (!sub_10001ECD4(v4, &stru_100083BC8) || v4[21] && v4[22] && !sub_100040618((v4 + 21), 0))
  {
    goto LABEL_31;
  }

  if (!v4[7] || !v4[8])
  {
    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v50[0]) = 0;
    v27 = "BasicOCSPResponse missing/bad signatureAlgorithm";
    goto LABEL_79;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47[0] = v21;
  v47[1] = v21;
  v22 = DERParseSequenceContent(v4 + 7, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v47, 0x20uLL);
  if (v22)
  {
    v38 = v22;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v50[0]) = 67109120;
    HIDWORD(v50[0]) = v38;
    v27 = "failed to parse BasicOCSPResponse signatureAlgorithm: %d";
    goto LABEL_77;
  }

  if (!v4[9] || !v4[10])
  {
    v16 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50[0]) = 0;
      v27 = "BasicOCSPResponse missing/bad signature";
      goto LABEL_79;
    }

LABEL_31:
    sub_100019788(v4);
    return 0;
  }

  memset(v45, 170, sizeof(v45));
  v23 = DERParseBitString((v4 + 9), &v45[1], v45);
  if (v23)
  {
    v39 = v23;
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LODWORD(v50[0]) = 67109120;
    HIDWORD(v50[0]) = v39;
    v27 = "failed to parse BasicOCSPResponse signature: %d";
    goto LABEL_77;
  }

  if (v4[11] && v4[12])
  {
    v24 = sub_10001E2F0(v4);
    if (v24)
    {
      CFRelease(v24);
      return v4;
    }

    v16 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    LOWORD(v50[0]) = 0;
    v27 = "failed to parse BasicOCSPResponse certs";
    goto LABEL_79;
  }

  return v4;
}

uint64_t sub_10001F97C(uint64_t a1, unint64_t *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v4;
  v16[1] = v4;
  v5 = sub_10001FCAC(a2);
  if (!v5)
  {
    return 3;
  }

  v6 = v5;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v7;
  v17[3] = v7;
  v17[0] = v7;
  v17[1] = v7;
  v8 = DERParseSequenceContentToObject(a2, 4u, &unk_10006C598, v17, 0x40uLL, 0x40uLL);
  if (v8)
  {
    v10 = v8;
    v12 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v13 = "failed to parse certId in single response";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v15, 2u);
    }
  }

  else
  {
    v9 = DERParseSequenceContent(v17, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v16, 0x20uLL);
    if (!v9)
    {
      if (a2[8] && a2[9] && !sub_100040618((a2 + 8), v6))
      {
        v14 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "failed to parse single extensions", v15, 2u);
        }

        v10 = 3;
      }

      else
      {
        v10 = (*(*(a1 + 32) + 16))();
      }

      goto LABEL_8;
    }

    v10 = v9;
    v12 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v13 = "failed to parse certId hash algorithm";
      goto LABEL_15;
    }
  }

LABEL_8:
  sub_10001E2B0(v6);
  return v10;
}

unint64_t DERLengthOfItem(unint64_t result, unint64_t a2)
{
  v2 = result & 0x1FFFFFFFFFFFFFFFLL;
  v3 = 1;
  if ((result & 0x1FFFFFFFFFFFFFFFLL) >= 0x1F)
  {
    do
    {
      ++v3;
      v4 = v2 > 0x7F;
      v2 >>= 7;
    }

    while (v4);
  }

  v5 = 1;
  if (a2 >= 0x80)
  {
    v6 = a2;
    do
    {
      ++v5;
      v4 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v4);
  }

  v7 = __CFADD__(v3, v5);
  v8 = v3 + v5;
  if (v7 || (result = v8 + a2, __CFADD__(v8, a2)))
  {
    __break(0x5500u);
  }

  return result;
}

uint64_t sub_10001FBBC(uint64_t a1, void *a2)
{
  if (*a2 != 0x2000000000000010)
  {
    return 2;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[3] = v3;
  v9[4] = v3;
  v9[1] = v3;
  v9[2] = v3;
  v9[0] = v3;
  v4 = DERParseSequenceContentToObject(a2 + 1, 5u, &unk_10006C4F0, v9, 0x50uLL, 0x50uLL);
  if (!v4)
  {
    return (*(*(a1 + 32) + 16))();
  }

  v5 = v4;
  v6 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to parse single response", v8, 2u);
  }

  return v5;
}

uint64_t sub_10001FCAC(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1060040FCA6B05FuLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *v2 = -1;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 8) = -1;
  v2[5] = 0;
  if (!a1[2] || !a1[3])
  {
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "missing certStatus in SingleResponse";
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  memset(v15, 170, sizeof(v15));
  if (DERDecodeItem((a1 + 2), v15))
  {
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "failed to decode certStatus in SingleResponse";
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (v15[0] != 0xA000000000000001)
  {
    if (v15[0] == 0x8000000000000002)
    {
      *v3 = 2;
      if (v15[2])
      {
        v4 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "invalid Unknown certStatus content";
          goto LABEL_42;
        }

LABEL_36:
        sub_10001E2B0(v3);
        return 0;
      }
    }

    else
    {
      if (v15[0] != 0x8000000000000000)
      {
        v10 = sub_1000027AC("SecError");
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 134217984;
        *&buf[4] = v15[0];
        v5 = "Unknown cert status: %llu";
        v12 = buf;
LABEL_51:
        v13 = v10;
        v14 = 12;
        goto LABEL_52;
      }

      *v3 = 0;
      if (v15[2])
      {
        v4 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "invalid Good certStatus content";
LABEL_42:
          v12 = buf;
LABEL_43:
          v13 = v4;
          v14 = 2;
LABEL_52:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v5, v12, v14);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_24;
  }

  *v3 = 1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v6;
  *&buf[16] = v6;
  if (DERParseSequenceContentToObject(&v15[1], 2u, &unk_10006C568, buf, 0x20uLL, 0x20uLL))
  {
    v4 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    LOWORD(v18[0]) = 0;
    v5 = "failed to parse RevokedInfo";
LABEL_55:
    v12 = v18;
    goto LABEL_43;
  }

  if (!*buf || !*&buf[8])
  {
    v4 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    LOWORD(v18[0]) = 0;
    v5 = "RevokedInfo missing revocationTime";
    goto LABEL_55;
  }

  v17 = 0;
  SecAbsoluteTimeFromDateContentWithError();
  *(v3 + 24) = v7;
  if (v17)
  {
    v10 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    LODWORD(v18[0]) = 138412290;
    *(v18 + 4) = v17;
    v5 = "failed to decode revocationTime: %@";
LABEL_58:
    v12 = v18;
    goto LABEL_51;
  }

  if (*&buf[16] && *&buf[24])
  {
    memset(v18, 170, 24);
    if (DERDecodeItem(&buf[16], v18))
    {
      v4 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v16 = 0;
      v5 = "failed to parse revocation reason";
    }

    else
    {
      if (v18[0] == 10 && v18[2] == 1)
      {
        *(v3 + 32) = *v18[1];
        goto LABEL_24;
      }

      v4 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v16 = 0;
      v5 = "failed to parse revocation reason";
    }

    v12 = &v16;
    goto LABEL_43;
  }

LABEL_24:
  if (!a1[4] || !a1[5])
  {
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "SingleResponse missing thisUpdate";
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  SecAbsoluteTimeFromDateContentWithError();
  *(v3 + 8) = v8;
  if (a1[6])
  {
    if (a1[7])
    {
      memset(buf, 170, 24);
      v15[0] = 0;
      if (DERDecodeItem((a1 + 6), buf) || *buf != 24 || (SecAbsoluteTimeFromDateContentWithError(), *(v3 + 16) = v9, v15[0]))
      {
        v10 = sub_1000027AC("SecError");
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        LODWORD(v18[0]) = 138412290;
        *(v18 + 4) = v15[0];
        v5 = "failed to decode nextUpdate: %@";
        goto LABEL_58;
      }
    }
  }

  if (a1[8] && a1[9] && !sub_100040618((a1 + 8), v3))
  {
    goto LABEL_36;
  }

  return v3;
}

uint64_t sub_100020258(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v33[0] = v6;
  v33[1] = v6;
  v7 = *(a1 + 40);
  v8 = v7;
  if (*v7 && *(v7 + 8))
  {
    PublicKeyData = SecCertificateGetPublicKeyData();
    if ((*(PublicKeyData + 8) & 0x8000000000000000) != 0)
    {
      return 7;
    }

    v10 = PublicKeyData;
    v11 = **(a1 + 40);
    v12 = SecCertificateCopyIssuerSequence();
    v13 = SecCertificateCopySerialNumberData(**(a1 + 40), 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v16 = *(v7 + 40);
    if (v16)
    {
      CFRetain(*(v7 + 40));
      v8 = *(a1 + 40);
    }

    v15 = *(v8 + 48);
    if (v15)
    {
      CFRetain(*(v8 + 48));
      v8 = *(a1 + 40);
    }

    v13 = *(v8 + 56);
    if (!v13)
    {
      v20 = DERParseSequenceContentToObject(a2, 4u, &unk_10006C598, &v34, 0x40uLL, 0x40uLL);
      v12 = 0;
      v13 = 0;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }

    v14 = v7 + 24;
    CFRetain(*(v8 + 56));
    v10 = 0;
    v12 = 0;
  }

  v17 = DERParseSequenceContentToObject(a2, 4u, &unk_10006C598, &v34, 0x40uLL, 0x40uLL);
  if (v17)
  {
    v20 = v17;
LABEL_48:
    v30 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v32 = 0;
    v31 = "failed to parse certId in single response";
    goto LABEL_50;
  }

  if (!v13 || (v18 = *(&v37 + 1), v18 != CFDataGetLength(v13)) || (BytePtr = CFDataGetBytePtr(v13), memcmp(BytePtr, v37, *(&v37 + 1))))
  {
LABEL_15:
    v20 = 0;
    goto LABEL_17;
  }

  if (!v10 || !v12)
  {
LABEL_36:
    if (v15 && v16)
    {
      v25 = *(&v35 + 1);
      if (v25 == CFDataGetLength(v16) && (v26 = CFDataGetBytePtr(v16), !memcmp(v26, v35, *(&v35 + 1))) && (v27 = *(&v36 + 1), v27 == CFDataGetLength(v15)) && (v28 = CFDataGetBytePtr(v15), !memcmp(v28, v36, *(&v36 + 1))) && (*(*(*(a1 + 32) + 8) + 24) = sub_10001FCAC(a2)) != 0)
      {
        v20 = 0;
        *a3 = 1;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_18;
    }

    v29 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Unknown hash algorithm in singleResponse", v32, 2u);
    }

    goto LABEL_15;
  }

  v22 = DERParseSequenceContent(&v34, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v33, 0x20uLL);
  if (!v22)
  {
    if (!DEROidCompare(v33, v14))
    {
      if (v16)
      {
        CFRelease(v16);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      v23 = CFDataGetBytePtr(v12);
      Length = CFDataGetLength(v12);
      v16 = sub_10002060C(v23, Length, v33);
      v15 = sub_10002060C(*v10, *(v10 + 8), v33);
    }

    goto LABEL_36;
  }

  v20 = v22;
  v30 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    v31 = "failed to parse certId hash algorithm";
LABEL_50:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, v32, 2u);
  }

LABEL_17:
  if (v15)
  {
LABEL_18:
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v20;
}

__CFData *sub_10002060C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  Mutable = 0;
  if (!(a2 >> 31) && a1 && a3)
  {
    if (DEROidCompare(a3, &oidSha1))
    {
      v7 = &_CC_SHA1;
      v8 = 20;
    }

    else if (DEROidCompare(a3, &oidSha224))
    {
      v7 = &CC_SHA224;
      v8 = 28;
    }

    else if (DEROidCompare(a3, &oidSha256))
    {
      v7 = &CC_SHA256;
      v8 = 32;
    }

    else if (DEROidCompare(a3, &oidSha384))
    {
      v7 = &CC_SHA384;
      v8 = 48;
    }

    else
    {
      if (!DEROidCompare(a3, &oidSha512))
      {
        return 0;
      }

      v7 = &CC_SHA512;
      v8 = 64;
    }

    Mutable = CFDataCreateMutable(0, v8);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    (v7)(a1, a2, MutableBytePtr);
  }

  return Mutable;
}

uint64_t sub_10002076C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  result = SecPolicyCheckCertLeafMarkerOid();
  if ((result & 1) == 0)
  {
    v9 = kSecPolicyCheckLeafMarkerOid;

    return sub_100012178(a1, v9, 0, kCFBooleanFalse, 1, 0);
  }

  return result;
}

void sub_100020834(uint64_t a1, const __CFData *a2)
{
  v3 = sub_10001EF3C(a2, -1);
  v4 = *(a1 + 32);

  sub_100013CE0(v4, v3, 0, 0, 0.0);
}

CFMutableArrayRef sub_100020884(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, *(a1 + 16), &kCFTypeArrayCallBacks);
  v3 = Mutable;
  if (Mutable)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v12 = sub_10002095C;
    v13 = &unk_100083078;
    v14 = Mutable;
    v15 = 0;
    v4 = *(a1 + 16);
    v5 = v4 < 1;
    v6 = v4 - 1;
    if (!v5)
    {
      v7 = (a1 + 136);
      do
      {
        v8 = v6;
        v9 = *v7++;
        (v12)(v11, *(v9 + 16), &v15);
        if (v15)
        {
          break;
        }

        v6 = v8 - 1;
      }

      while (v8);
    }
  }

  return v3;
}

CFTypeRef sub_100020964(uint64_t a1, __SecCertificate *a2)
{
  result = sub_100020AB8(*(a1 + 40), a2);
  if (result)
  {
    if (a2)
    {
      result = CFRetain(a2);
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

void sub_1000209AC(uint64_t a1, int a2)
{
  if (*(a1 + 178) != a2)
  {
    v12 = v2;
    v13 = v3;
    *(a1 + 178) = a2;
    v6 = sub_1000027AC("http");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (a2)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "network access re-enabled by policy", buf, 2u);
      }

      CFArrayAppendValue(*(a1 + 88), &off_100092808);
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "network access disabled by policy", v10, 2u);
      }

      v8 = *(a1 + 88);
      v14.length = CFArrayGetCount(v8);
      v14.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v14, &off_100092808);
      if ((FirstIndexOfValue & 0x8000000000000000) == 0)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 88), FirstIndexOfValue);
      }
    }
  }
}

BOOL sub_100020AB8(void *a1, __SecCertificate *a2)
{
  v4 = a1[23];
  if (v4 == 0xA000000000000002)
  {
    v5 = SecCertificateCopyPublicKeySHA1Digest();
  }

  else
  {
    if (v4 != 0xA000000000000001)
    {
      return 0;
    }

    v5 = SecCertificateCopySubjectSequence();
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  if (CFDataGetLength(v5) != a1[25])
  {
    CFRelease(v6);
    return 0;
  }

  v7 = a1[24];
  BytePtr = CFDataGetBytePtr(v6);
  LODWORD(v7) = memcmp(v7, BytePtr, a1[25]);
  CFRelease(v6);
  if (v7)
  {
    return 0;
  }

  v9 = SecCertificateCopyKey(a2);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v11;
  v18[1] = v11;
  if (DERParseSequenceContent(a1 + 7, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v18, 0x20uLL) || (v17 = -86, v16[0] = 0xAAAAAAAAAAAAAAAALL, v16[1] = 0xAAAAAAAAAAAAAAAALL, DERParseBitString((a1 + 9), v16, &v17)))
  {
    v12 = 0;
  }

  else
  {
    v14 = a1[5];
    v15 = a1[6];
    v12 = SecKeyDigestAndVerify() == 0;
  }

  CFRelease(v10);
  return v12;
}

uint64_t sub_100020C1C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  result = SecCertificateIsCA();
  if (result)
  {

    return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  return result;
}

uint64_t sub_100020CB0(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v9 == result)
    {
      result = SecPolicyCheckCertSubjectOrganizationalUnit();
      if ((result & 1) == 0)
      {

        return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100020D98(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v9 == result)
    {
      result = SecPolicyCheckCertSubjectCommonNameTEST();
      if ((result & 1) == 0)
      {

        return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100020E80(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(*a1 + 200);
  if (!v4 || *(v4 + 16) < 2)
  {
    goto LABEL_3;
  }

  v6 = *(v4 + 144);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], cf1);
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v9 == result)
    {
      result = SecPolicyCheckCertSubjectCommonName();
      if ((result & 1) == 0)
      {
LABEL_3:

        return sub_100012178(a1, cf1, 0, kCFBooleanFalse, 0, 0);
      }
    }
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

uint64_t sub_100021010(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
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

uint64_t sub_1000212CC(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
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

uint64_t sub_1000216BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
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

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return sub_100021AB4(a1, a2, v6, a4, 0, a5);
}

void *sub_100021840(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void sub_100021858(void *a1, _OWORD *a2)
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

uint64_t sub_100021AB4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
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

uint64_t sub_100021D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
  if (DERParseSequenceToObject(v23, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v22, 0x20uLL, 0x20uLL) || sub_100021F8C(v10, *(&v22[0] + 1), *&v22[0]))
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

  result = sub_100021D38(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100021F8C(unint64_t *a1, unint64_t a2, _BYTE *a3)
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
        if (!sub_1000228EC(v29, v30, 3u) && !sub_1000222D0(v30, 3u, &v32, v34, v37, v40))
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

            result = sub_10002251C(&v37[v17], v16, a7);
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
                  result = DEROidCompare(&off_100081A80, &v28);
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

uint64_t sub_1000222D0(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

    result = sub_1000229C8(v12, (a6 + 16 * v8));
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

uint64_t sub_10002251C(void *a1, void *a2, uint64_t a3)
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

uint64_t sub_1000226C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = sub_1000222D0(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = sub_10002251C(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100022868(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (sub_1000228EC(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000228B4(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (sub_1000228EC(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000228EC(unint64_t *a1, uint64_t a2, unsigned int a3)
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

uint64_t sub_1000229C8(uint64_t a1, void *a2)
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

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  memset(v4, 170, sizeof(v4));
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t start()
{
  v0 = os_transaction_create();
  [NSError _setFileNameLocalizationEnabled:0];
  v1 = getenv("WAIT4DEBUGGER");
  if (v1 && !strcasecmp("YES", v1))
  {
    v2 = sub_1000027AC("SecCritical");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIGSTOPing self, awaiting debugger", buf, 2u);
    }

    v3 = getpid();
    kill(v3, 17);
    v4 = sub_1000027AC("SecCritical");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Again, for good luck (or bad debuggers)", buf, 2u);
    }

    v5 = getpid();
    kill(v5, 17);
  }

  bzero(buf, 0x400uLL);
  _set_user_dir_suffix();
  confstr(65537, buf, 0x400uLL);
  v6 = objc_autoreleasePoolPush();
  *v133 = 0;
  *&v133[8] = v133;
  *&v133[16] = 0x2020000000;
  LOBYTE(v134) = 0;
  if (sub_100003140())
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100035980;
    *&buf[24] = &unk_100082B58;
    *&buf[32] = v133;
    sub_10002ABBC(@"Analytics", buf);
    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_100035B00;
    v123[3] = &unk_100082B58;
    v123[4] = v133;
    v7 = v123;
    v8 = sub_100008D3C(@"TrustStore.sqlite3");
    sub_10002AB18(v8, v7);

    LOBYTE(v7) = *(*&v133[8] + 24);
    _Block_object_dispose(v133, 8);
    if (v7)
    {
      v9 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.securityuploadd" options:0];
      v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TrustdFileHelper_protocol];
      [v9 setRemoteObjectInterface:v10];

      [v9 resume];
      if (v9)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100035BF8;
        *&buf[24] = &unk_100082B08;
        *&buf[32] = @"securityuploadd";
        v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:buf];
        v12 = v11;
        if (v11)
        {
          *v133 = _NSConcreteStackBlock;
          *&v133[8] = 3221225472;
          *&v133[16] = sub_100035CC8;
          v134 = &unk_100082B30;
          v135 = @"securityuploadd";
          [v11 fixFiles:v133];
        }

        [v9 invalidate];

        v13 = *&buf[32];
      }

      else
      {
        v13 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = @"securityuploadd";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "failed to ceate %{public}@ connection", buf, 0xCu);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    _Block_object_dispose(v133, 8);
  }

  v14 = sub_1000027AC("helper");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "trustd file permissions already fixed. skipping trustdFileHelper call.", buf, 2u);
  }

LABEL_21:
  objc_autoreleasePoolPop(v6);
  if (qword_100092B48 != -1)
  {
    dispatch_once(&qword_100092B48, &stru_100082140);
  }

  gTrustd = &off_100092820;
  if (!sub_100003140())
  {
    goto LABEL_184;
  }

  error = 0;
  if (qword_100092DF0 != -1)
  {
    dispatch_once(&qword_100092DF0, &stru_1000839C0);
  }

  if (qword_100092DF8 != -1)
  {
    dispatch_once(&qword_100092DF8, &stru_1000839E0);
  }

  *v133 = 0;
  v15 = sub_10001BF8C();
  sub_10001BFBC(v15, v133);

  v16 = *v133;
  if (*v133)
  {
    *v133 = 0;
    CFRelease(v16);
    syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
    v17 = sub_100009020(@"Library/Keychains", @"com.apple.security.exception_reset_counter.plist");
    v18 = sub_10001BFBC(v17, 0);

    v19 = sub_10001BF8C();
    LOBYTE(v18) = sub_100039FB0(v18, v19, v133);

    if (v18)
    {
      sub_10002ABBC(@"com.apple.security.exception_reset_counter.plist", &stru_1000831B8);
    }

    else
    {
      v20 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = *v133;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to migrate exceptions reset count: %@", buf, 0xCu);
      }

      v21 = *v133;
      if (*v133)
      {
        *v133 = 0;
        CFRelease(v21);
      }
    }
  }

  memset(buf, 170, sizeof(buf));
  if (sub_10005C07C(buf))
  {
    v22 = fopen(buf, "r");
    if (v22)
    {
      fclose(v22);
      *v136 = 0;
      ppStmt = 0;
      db = 0;
      v125 = 0;
      pStmt = 0;
      if (sub_10005CCA0(buf, &db))
      {
        v25 = 0;
        goto LABEL_162;
      }

      v23 = sqlite3_prepare_v3(db, "SELECT INSTR(sql,'uuid') FROM sqlite_master WHERE type='table' AND name='tsettings'", 84, 0, &ppStmt, 0);
      if (v23)
      {
        v45 = sub_100026D4C(v23, db, &error, @"failed to prepare findColStmt");
        goto LABEL_83;
      }

      v24 = sqlite3_step(ppStmt);
      if (v24 && v24 != 101)
      {
        if (v24 != 100)
        {
          v45 = sub_100005AD8(v24, ppStmt, &error, @"check for uuid column failed");
          goto LABEL_83;
        }

        if (sqlite3_column_int64(ppStmt, 0) > 0)
        {
          v25 = 0;
LABEL_126:
          v46 = 1;
          goto LABEL_163;
        }

        v47 = sub_1000027AC("config");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v133 = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "trust store schema not current, will update", v133, 2u);
        }
      }

      v48 = ppStmt;
      if (!ppStmt || (ppStmt = 0, v49 = sqlite3_finalize(v48), !v49))
      {
        v25 = sub_100008190(0x11Au);
        if (!v25)
        {
          sub_10001C2D4(-50, &error, @"get uuid failed");
          goto LABEL_162;
        }

        if (!sqlite3_exec(db, "BEGIN EXCLUSIVE TRANSACTION;", 0, 0, 0))
        {
          v50 = sqlite3_exec(db, "CREATE TABLE tmp_tsettings(sha256 BLOB NOT NULL DEFAULT '',subj BLOB NOT NULL DEFAULT '',tset BLOB,data BLOB,uuid BLOB NOT NULL DEFAULT '',UNIQUE(sha256,uuid));", 0, 0, v136);
          if (*v136)
          {
            v51 = sub_1000027AC("SecWarning");
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *v133 = 136315138;
              *&v133[4] = *v136;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "CREATE TABLE tmp_tsettings: %s", v133, 0xCu);
            }

            sqlite3_free(*v136);
          }

          if (v50)
          {
            v74 = 0;
            goto LABEL_155;
          }

          v52 = sqlite3_prepare_v3(db, "SELECT COUNT(*) FROM tsettings", 31, 0, &pStmt, 0);
          if (v52)
          {
            v50 = v52;
            v59 = db;
            v60 = @"failed to prepare countAllStmt";
            goto LABEL_128;
          }

          if (sqlite3_step(pStmt) == 100)
          {
            v53 = sqlite3_column_int64(pStmt, 0);
          }

          else
          {
            v53 = -1;
          }

          v54 = pStmt;
          if (pStmt)
          {
            pStmt = 0;
            v55 = sqlite3_finalize(v54);
            if (v55)
            {
              v50 = v55;
              v59 = db;
              v60 = @"failed to finalize countAllStmt";
              goto LABEL_128;
            }
          }

          v56 = sub_1000027AC("config");
          v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          if (v53 < 1)
          {
            if (v57)
            {
              *v133 = 134217984;
              *&v133[4] = v53;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "no existing tsettings (%lld rows)", v133, 0xCu);
            }
          }

          else
          {
            if (v57)
            {
              *v133 = 134217984;
              *&v133[4] = v53;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "copying %lld rows from tsettings", v133, 0xCu);
            }

            v58 = sqlite3_exec(db, "INSERT OR REPLACE INTO tmp_tsettings(sha256,subj,tset,data) SELECT sha256,subj,tset,data FROM tsettings", 0, 0, 0);
            if (v58)
            {
              v50 = v58;
              v59 = db;
              v60 = @"failed to copy table data";
              goto LABEL_128;
            }
          }

          v61 = sqlite3_exec(db, "DROP TABLE tsettings;", 0, 0, 0);
          v62 = db;
          if (v61)
          {
            v50 = v61;
            v60 = @"failed to drop old table";
          }

          else
          {
            v63 = sqlite3_exec(db, "ALTER TABLE tmp_tsettings RENAME TO tsettings;", 0, 0, 0);
            if (v63)
            {
              v50 = v63;
              v59 = db;
              v60 = @"failed to rename new table";
              goto LABEL_128;
            }

            if (v53 >= 1)
            {
              v64 = sqlite3_prepare_v3(db, "UPDATE tsettings SET uuid=? WHERE uuid=''", 42, 1u, &v125, 0);
              if (v64)
              {
                v50 = v64;
                v59 = db;
                v60 = @"failed to prepare updateUUIDStmt";
                goto LABEL_128;
              }

              v65 = v125;
              BytePtr = CFDataGetBytePtr(v25);
              Length = CFDataGetLength(v25);
              if (Length >> 31)
              {
                v50 = 18;
LABEL_114:
                v59 = db;
                v60 = @"failed to bind uuid value";
                goto LABEL_128;
              }

              v68 = sqlite3_bind_blob(v65, 1, BytePtr, Length, 0);
              if (v68)
              {
                v50 = v68;
                goto LABEL_114;
              }

              v69 = sqlite3_step(v125);
              if (v69)
              {
                v50 = v69;
                if (v69 != 101)
                {
                  v59 = db;
                  v60 = @"failed to update uuid column";
                  goto LABEL_128;
                }
              }
            }

            v70 = sqlite3_exec(db, "DROP INDEX IF EXISTS isubj;", 0, 0, 0);
            v62 = db;
            if (v70)
            {
              v50 = v70;
              v60 = @"failed to drop old index";
            }

            else
            {
              v71 = sqlite3_exec(db, "CREATE INDEX isubj ON tsettings(subj);", 0, 0, 0);
              v62 = db;
              if (!v71)
              {
                v72 = sqlite3_exec(db, "COMMIT TRANSACTION", 0, 0, 0);
                if (v72)
                {
                  v50 = v72;
                  v73 = sub_1000027AC("SecError");
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *v133 = 67109120;
                    *&v133[4] = v50;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Failed to commit transaction (%d), will attempt rollback", v133, 8u);
                  }

                  v74 = 1;
                  goto LABEL_155;
                }

                v75 = sub_1000027AC("config");
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *v133 = 0;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "successfully updated trust store schema", v133, 2u);
                }

                goto LABEL_126;
              }

              v50 = v71;
              v60 = @"failed to recreate index";
            }
          }

          v76 = v50;
          v59 = v62;
          goto LABEL_154;
        }

LABEL_162:
        while (1)
        {
          v46 = 0;
LABEL_163:
          if (v125)
          {
            v81 = sqlite3_finalize(v125);
            if (v81)
            {
              break;
            }
          }

          if (pStmt)
          {
            v82 = sqlite3_finalize(pStmt);
            if (v82)
            {
              v121 = sub_100026D4C(v82, db, &error, @"failed to finalize countAllStmt");
              goto LABEL_207;
            }
          }

          if (ppStmt)
          {
            v83 = sqlite3_finalize(ppStmt);
            if (v83)
            {
              v121 = sub_100026D4C(v83, db, &error, @"failed to finalize findColStmt");
              goto LABEL_207;
            }
          }

LABEL_169:
          if (v46)
          {
            goto LABEL_173;
          }

          while (1)
          {
            v84 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              *v133 = 138412290;
              *&v133[4] = v25;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Failed to update schema (uuid %@)", v133, 0xCu);
            }

            v85 = sqlite3_exec(db, "DROP TABLE tsettings;", 0, 0, 0);
            if (v85)
            {
              break;
            }

LABEL_173:
            if (!db || (v86 = sqlite3_close(db)) == 0)
            {
              if (v25)
              {
                CFRelease(v25);
              }

              if ((v46 & 1) == 0)
              {
                goto LABEL_179;
              }

              goto LABEL_181;
            }

            sub_100026CFC(v86, &error, @"failed to close trust store after schema update");
            v46 = 0;
          }

          v50 = v85;
          v59 = db;
          v60 = @"failed to drop tsettings table";
LABEL_128:
          v76 = v50;
LABEL_154:
          v74 = sub_100026D4C(v76, v59, &error, v60);
LABEL_155:
          v77 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *v133 = 67109378;
            *&v133[4] = v50;
            *&v133[8] = 2112;
            *&v133[10] = error;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Failed to update trust store: (%d) %@", v133, 0x12u);
          }

          sub_100054DC0(4, 2, v50);
          if (v74)
          {
            sub_10001C2D4(-26276, &error, @"sqlite3 error: %d", v50);
          }

          v78 = sqlite3_exec(db, "ROLLBACK TRANSACTION", 0, 0, 0);
          if (v78)
          {
            v79 = v78;
            v80 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *v133 = 67109378;
              *&v133[4] = v79;
              *&v133[8] = 2112;
              *&v133[10] = error;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Failed to rollback transaction (%d) %@", v133, 0x12u);
            }
          }
        }

        v121 = sub_100026D4C(v81, db, &error, @"failed to finalize updateUUIDStmt");
LABEL_207:
        v46 = v121;
        goto LABEL_169;
      }

      v45 = sub_100026D4C(v49, db, &error, @"failed to finalize findColStmt");
LABEL_83:
      v46 = v45;
      v25 = 0;
      goto LABEL_163;
    }
  }

  v26 = sub_1000027AC("config");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "migrating trust store", v133, 2u);
  }

  *v133 = 0;
  *v136 = 0;
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v27 = sub_100009020(@"Library/Keychains", @"TrustStore.sqlite3");
  v28 = v27;
  if (!v27)
  {
    sub_10001C2D4(-36, &error, @"failed to get old DB file URL");
    goto LABEL_139;
  }

  if (!CFURLGetFileSystemRepresentation(v27, 0, buf, 1024))
  {
    sub_10001C2D4(-36, &error, @"failed to get old DB file path");
    goto LABEL_139;
  }

  v29 = sqlite3_open_v2(buf, v133, 1, 0);
  if (v29)
  {
    sub_100026CFC(v29, &error, @"failed to open old trust store database; new trust store will be empty");
    goto LABEL_139;
  }

  v30 = sqlite3_prepare_v2(*v133, "SELECT data,tset FROM tsettings ORDER BY sha1", 46, v136, 0);
  if (v30)
  {
    v42 = sub_100026D4C(v30, *v133, &error, @"failed to prepare old trust store read");
  }

  else
  {
    v31 = sub_100007F74(@"user", &error);
    if (!v31)
    {
      sub_10001C2D4(-108, &error, @"failed to open new trust store");
      goto LABEL_65;
    }

    while (1)
    {
      v32 = sqlite3_step(*v136);
      if (v32 != 100)
      {
        break;
      }

      sqlite3_column_blob(*v136, 0);
      sqlite3_column_bytes(*v136, 0);
      v33 = SecCertificateCreateWithBytes();
      if (!v33)
      {
        sub_10001C2D4(-26275, &error, @"failed to decode cert in old DB");
        v38 = 0;
        v36 = 0;
        goto LABEL_140;
      }

      v34 = sqlite3_column_blob(*v136, 1);
      v35 = sqlite3_column_bytes(*v136, 1);
      v36 = CFDataCreate(0, v34, v35);
      if (!v36)
      {
        sub_10001C2D4(-50, &error, @"no tset data in old DB");
        v38 = 0;
        goto LABEL_140;
      }

      v37 = CFPropertyListCreateWithData(0, v36, 0, 0, &error);
      v38 = v37;
      if (!v37)
      {
        goto LABEL_140;
      }

      v39 = CFGetTypeID(v37);
      if (v39 != CFArrayGetTypeID())
      {
        sub_10001C2D4(-26275, &error, @"tset is not an array in old DB");
        goto LABEL_140;
      }

      if (!sub_10005CEB0(v31, v33, v38, &error))
      {
        goto LABEL_140;
      }

      CFRelease(v33);
      CFRelease(v36);
      CFRelease(v38);
    }

    if (v32 && v32 != 101)
    {
      v42 = sub_100005AD8(v32, *v136, &error, @"sqlite3_step failed");
      goto LABEL_64;
    }

    v40 = sqlite3_finalize(*v136);
    if (!v40)
    {
      *v136 = 0;
      v41 = sqlite3_close(*v133);
      if (!v41)
      {
        *v133 = 0;
        sub_10002ABBC(@"TrustStore.sqlite3", &stru_100085D30);
        v38 = 0;
        v36 = 0;
        v33 = 0;
        LOBYTE(v31) = 1;
        goto LABEL_66;
      }

      sub_100026CFC(v41, &error, @"failed to close old trust store");
LABEL_139:
      v38 = 0;
      v36 = 0;
      v33 = 0;
LABEL_140:
      LOBYTE(v31) = 0;
      goto LABEL_66;
    }

    v42 = sub_100026D4C(v40, *v133, &error, @"failed to finalize old trust store read");
  }

LABEL_64:
  LOBYTE(v31) = v42;
LABEL_65:
  v38 = 0;
  v36 = 0;
  v33 = 0;
  while (1)
  {
LABEL_66:
    while (*v136)
    {
      v43 = sqlite3_finalize(*v136);
      if (!v43)
      {
        break;
      }

      LOBYTE(v31) = sub_100026D4C(v43, *v133, &error, @"failed to finalize old trust store read");
    }

    if (!*v133)
    {
      break;
    }

    v44 = sqlite3_close(*v133);
    if (!v44)
    {
      break;
    }

    sub_100026CFC(v44, &error, @"failed to close old trust store");
    LOBYTE(v31) = 0;
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if ((v31 & 1) == 0)
  {
LABEL_179:
    v87 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = error;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "failed to migrate user trust store; new trust store will be empty: %@", buf, 0xCu);
    }
  }

LABEL_181:
  v88 = error;
  if (error)
  {
    error = 0;
    CFRelease(v88);
    v89 = error;
    if (error)
    {
      error = 0;
      CFRelease(v89);
    }
  }

LABEL_184:
  qword_100092E20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  qword_100092E28 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSSLHostname, sub_1000061A8);
  v90 = kSecPolicyCheckEmail;
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckEmail, sub_1000479A0);
  CFDictionaryAddValue(qword_100092E28, v90, sub_1000479A0);
  v91 = kSecPolicyCheckTemporalValidity;
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckTemporalValidity, sub_100008A40);
  CFDictionaryAddValue(qword_100092E28, v91, sub_100008A40);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckValidLeaf, sub_100047908);
  v92 = kSecPolicyCheckWeakKeySize;
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckWeakKeySize, sub_100008978);
  CFDictionaryAddValue(qword_100092E28, v92, sub_100008978);
  v93 = kSecPolicyCheckWeakSignature;
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckWeakSignature, sub_100008888);
  CFDictionaryAddValue(qword_100092E28, v93, sub_100008888);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckKeyUsage, sub_100012818);
  v94 = kSecPolicyCheckExtendedKeyUsage;
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckExtendedKeyUsage, sub_100007390);
  CFDictionaryAddValue(qword_100092E28, v94, sub_100007390);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSubjectCommonName, sub_100047820);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSubjectCommonNamePrefix, sub_100047738);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSubjectCommonNameTEST, sub_100020D98);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSubjectOrganization, sub_100011734);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckSubjectOrganizationalUnit, sub_100020CB0);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckNotValidBefore, sub_100047650);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckEAPTrustedServerNames, sub_100047578);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckLeafMarkerOid, sub_10002076C);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckLeafMarkerOidWithoutValueCheck, sub_10001C358);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckLeafMarkersProdAndQA, sub_1000117F4);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckBlackListedLeaf, sub_1000086A0);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckGrayListedLeaf, sub_1000085B0);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckLeafSPKISHA256, sub_100047438);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckNotCA, sub_100020C1C);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckMarkRepresentation, sub_10004713C);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckURI, sub_100047054);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIssuerCommonName, sub_100020E80);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIssuerCommonNamePrefix, sub_100046F6C);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckBasicConstraints, nullsub_1);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckBasicConstraintsCA, sub_100046EB8);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateSPKISHA256, sub_100046DA4);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateEKU, sub_100046CAC);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateMarkerOid, sub_10001DE78);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateMarkerOidWithoutValueCheck, sub_100046BBC);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateOrganization, sub_10001DD74);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIntermediateCountry, sub_10001E18C);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckAnchorSHA256, sub_10001DB18);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckAnchorApple, sub_10001D9EC);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckCAspkiSHA256, sub_100046A64);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckRootMarkerOid, sub_100046980);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckNonEmptySubject, sub_10001612C);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckIdLinkage, sub_100016360);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckKeySize, sub_100011604);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSignatureHashAlgorithms, sub_10000FEE4);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckCertificatePolicy, sub_10001DF80);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckCriticalExtensions, nullsub_2);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckChainLength, sub_10001DBF4);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckBasicCertificateProcessing, sub_10000BAD8);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSystemTrustedWeakHash, sub_10000F340);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSystemTrustedWeakKey, sub_10000F1C0);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckPinningRequired, sub_100046854);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckRevocation, sub_100011920);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckRevocationResponseRequired, sub_100046848);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckCTRequired, sub_100046828);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSystemTrustedCTRequired, sub_10000E374);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckValidityPeriodMaximums, sub_1000460EC);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSystemTrustValidityPeriod, sub_10001035C);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckOtherTrustValidityPeriod, sub_100010108);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckServerAuthEKU, sub_100010480);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckEmailProtectionEKU, sub_100045EBC);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckSinglePurposeChainEKU, sub_100045D78);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckUnparseableExtension, sub_10001603C);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckNonTlsCTRequired, sub_100045BF4);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckDuplicateExtension, sub_100016220);
  CFDictionaryAddValue(qword_100092E28, kSecPolicyCheckQWAC, sub_1000457E4);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckNoNetworkAccess, sub_100017D14);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckRevocationOnline, sub_1000457D4);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckRevocationIfTrusted, sub_1000457C4);
  CFDictionaryAddValue(qword_100092E20, kSecPolicyCheckRevocationDbIgnored, sub_100019894);
  CFDictionaryAddValue(qword_100092E20, @"CheckLeafMarkerOid", sub_10002076C);
  CFDictionaryAddValue(qword_100092E20, @"CheckLeafMarkersProdAndQA", sub_1000117F4);
  CFDictionaryAddValue(qword_100092E28, @"CheckIntermediateMarkerOid", sub_10001DE78);
  CFDictionaryAddValue(qword_100092E28, @"CheckIntermediateCountry", sub_10001E18C);
  CFDictionaryAddValue(qword_100092E28, @"CheckIntermediateOrganization", sub_10001DD74);
  v95 = os_transaction_create();
  db = 0;
  p_db = &db;
  v130 = 0x2000000000;
  v131 = 0;
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    if (sub_100003140())
    {
      sub_1000357EC(0, &stru_100084168);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_100051810;
      *&buf[24] = &unk_100084190;
      *&buf[32] = &db;
      sub_1000357EC(@".valid_replace", buf);
      *v133 = _NSConcreteStackBlock;
      *&v133[8] = 0x40000000;
      *&v133[16] = sub_100051928;
      v134 = &unk_1000841B8;
      v135 = &db;
      sub_1000357EC(@"valid.sqlite3", v133);
      if (*(p_db + 24) == 1)
      {
        v96 = sub_100051A00();
        v97 = sub_1000027AC("validupdate");
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "initializing database", v136, 2u);
        }

        if ((sub_100051AB4(v96, 0, 0, 1) & 1) == 0)
        {
          v98 = sub_100051CA8();
          sub_10003DFB4(v98, v96, 0);
        }

        CFRelease(v96);
      }
    }
  }

  v99 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
  {
    v118 = sub_100051D4C();
    v119 = sub_100051DF4();
    v120 = sub_100051E9C();
    *v136 = 134218496;
    *&v136[4] = v118;
    v137 = 2048;
    v138 = v119;
    v139 = 2048;
    v140 = v120;
    _os_log_debug_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "starting service with g%ld, v%ld, schema v%ld", v136, 0x20u);
  }

  os_release(v95);
  _Block_object_dispose(&db, 8);
  if (qword_100092E18 != -1)
  {
    dispatch_once(&qword_100092E18, &stru_100083F48);
  }

  if (qword_100092F50 != -1)
  {
    dispatch_once(&qword_100092F50, &stru_1000857C0);
  }

  if (sub_100003140())
  {
    v100 = objc_autoreleasePoolPush();
    v101 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v102 = dispatch_queue_attr_make_with_autorelease_frequency(v101, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v103 = dispatch_queue_create("com.apple.trustd.Background.Analytics", v102);
    v104 = qword_100092EC0;
    qword_100092EC0 = v103;

    qword_100092ED8 = mach_absolute_time();
    v105 = +[NSMutableDictionary dictionary];
    v106 = qword_100092EC8;
    qword_100092EC8 = v105;

    v107 = +[NSMutableDictionary dictionary];
    v108 = qword_100092ED0;
    qword_100092ED0 = v107;

    v109 = +[TrustAnalytics logger];
    v110 = SFAnalyticsSamplerIntervalOncePerReport;
    v111 = [v109 AddMultiSamplerForName:@"VersionSampler" withTimeInterval:&stru_1000853E8 block:SFAnalyticsSamplerIntervalOncePerReport];

    v112 = +[NetworkingAnalytics logger];
    v113 = [v112 AddMultiSamplerForName:@"VersionSampler" withTimeInterval:&stru_100085408 block:v110];

    objc_autoreleasePoolPop(v100);
  }

  v114 = sub_1000020D8();
  signal(15, 1);
  qword_100092AB0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v114);
  dispatch_source_set_event_handler(qword_100092AB0, &stru_100081B70);
  dispatch_activate(qword_100092AB0);
  mach_service = xpc_connection_create_mach_service("com.apple.trustd", 0, 1uLL);
  if (!mach_service)
  {
    v122 = sub_1000027AC("SecCritical");
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "com.apple.trustd";
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "security failed to register xpc listener for %s, exiting", buf, 0xCu);
    }

    abort();
  }

  v116 = mach_service;
  xpc_connection_set_event_handler(mach_service, &stru_100081BB0);
  xpc_connection_activate(v116);
  os_release(v0);
  CFRunLoopRun();
  return 0;
}

void sub_100024FB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *(v3 - 160) = 138412290;
      *(v2 + 52) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failed to fix files; caught exception: %@", (v3 - 160), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1000231D8);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100025058(unsigned int a1, __SecTask *a2, const __CFString *a3, __CFString **a4)
{
  v8 = sub_10000227C(a2, a3);
  if (!v8)
  {
    if (a1 > 0x88)
    {
      v9 = @"Unknown xpc operation";
    }

    else
    {
      v9 = *(&off_100085F70 + a1);
    }

    sub_10001C2D4(-34018, a4, @"%@: %@ lacks entitlement %@", v9, a2, a3);
  }

  return v8;
}

void sub_1000250F4(uint64_t a1, BOOL value, void *cf)
{
  if (cf)
  {
    CFRetain(cf);
    v5 = sub_10002AE7C(cf);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 32), "error", v5);
      xpc_release(v6);
    }

    CFRelease(cf);
  }

  else
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), "status", value);
  }

  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {

    CFRelease(v8);
  }
}

void sub_1000251C4(uint64_t a1, BOOL value, void *cf)
{
  if (cf)
  {
    CFRetain(cf);
    v5 = sub_10002AE7C(cf);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 32), "error", v5);
      xpc_release(v6);
    }

    CFRelease(cf);
  }

  else
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), "status", value);
  }

  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v7 = *(a1 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t sub_100025288(int a1, xpc_object_t xdict, uint64_t a3, __CFString **a4)
{
  result = xpc_dictionary_get_uint64(xdict, "flags");
  if (result)
  {

    return sub_10005A0DC(result, a4);
  }

  return result;
}

BOOL sub_1000252DC(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v6 = sub_100025344(a2, a4);
  v7 = v6;
  if (v6)
  {
    v8 = sub_10005D994(v6, a4);
    xpc_dictionary_set_BOOL(a3, "status", v8);
  }

  return v7 != 0;
}

CFStringRef sub_100025344(void *a1, __CFString **a2)
{
  result = sub_100016D54(a1, "domain", a2);
  if (result)
  {
    v4 = result;
    v5 = sub_100007F74(result, a2);
    CFRelease(v4);
    return v5;
  }

  return result;
}

uint64_t sub_100025394(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v7 = sub_100016D54(a2, "domain", a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  theData = 0;
  v9 = sub_100059D2C(*(a1 + 20), v7, &theData, a4);
  v10 = theData;
  if (theData)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    if (CFDataGetLength(theData) < 0)
    {
      sub_10001C2D4(-50, a4, @"no data for key %s", "status");
    }

    else
    {
      BytePtr = CFDataGetBytePtr(v10);
      Length = CFDataGetLength(v10);
      xpc_dictionary_set_data(a3, "status", BytePtr, Length);
    }

    v10 = theData;
  }

  if (v10)
  {
    theData = 0;
    CFRelease(v10);
  }

  CFRelease(v8);
  return v11;
}

uint64_t sub_1000254A4(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v11 = 0;
  sub_10006117C(a2, "appID", &v11, a4);
  v6 = v11;
  v7 = sub_10003FD6C(v11, a4);
  if (v7)
  {
    v9 = v7;
    sub_10001A6B8(a3, "anchors", v7, a4, v8);
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_100025538(__SecTask **a1, void *a2, void *a3, __CFString **a4)
{
  v14 = 0;
  v15 = 0;
  v8 = sub_10006117C(a2, "appID", &v15, a4);
  v9 = v15;
  if (!v8 || v15 == 0)
  {
    v9 = sub_1000022EC(*a1);
  }

  sub_10000260C(a2, "anchors", &v14, a4);
  v11 = v14;
  v12 = sub_10003FCAC(v9, v14, a4);
  xpc_dictionary_set_BOOL(a3, "status", v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

uint64_t sub_10002560C(int a1, int a2, void *a3, __CFString **a4)
{
  v5 = sub_1000534AC(a4);
  xpc_dictionary_set_uint64(a3, "status", v5);
  return 1;
}

uint64_t sub_10002564C(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v11 = 0;
  sub_10006117C(a2, "appID", &v11, a4);
  v6 = v11;
  v7 = sub_100008C98(v11, a4);
  if (v7)
  {
    v9 = v7;
    sub_10001A6B8(a3, "revocationCheck", v7, a4, v8);
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_1000256E0(__SecTask **a1, void *a2, void *a3, __CFString **a4)
{
  v14 = 0;
  v15 = 0;
  v8 = sub_10006117C(a2, "appID", &v15, a4);
  v9 = v15;
  if (!v8 || v15 == 0)
  {
    v9 = sub_1000022EC(*a1);
  }

  sub_100061030(a2, "revocationCheck", &v14, a4);
  v11 = v14;
  v12 = sub_10003FBB0(v9, v14, a4);
  xpc_dictionary_set_BOOL(a3, "status", v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

id sub_1000257B4(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v6 = sub_100039EB0(a4);
  v7 = !v6 || a4 && *a4;
  xpc_dictionary_set_BOOL(a3, "status", v7);
  return v6;
}

uint64_t sub_10002581C(int a1, int a2, void *a3, __CFString **a4)
{
  v5 = sub_100034F2C(a4);
  xpc_dictionary_set_uint64(a3, "status", v5);
  return 1;
}

BOOL sub_10002585C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100035008();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _CFXPCCreateXPCObjectFromCFObject();
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    xpc_dictionary_set_value(a3, "status", v6);
    xpc_release(v8);
  }

  CFRelease(v5);
  return v7;
}

uint64_t sub_1000258D4(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v11 = 0;
  sub_10006117C(a2, "appID", &v11, a4);
  v6 = v11;
  v7 = sub_10003F814(v11, a4);
  if (v7)
  {
    v9 = v7;
    sub_10001A6B8(a3, "exceptions", v7, a4, v8);
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_100025968(__SecTask **a1, void *a2, void *a3, __CFString **a4)
{
  v14 = 0;
  v15 = 0;
  v8 = sub_10006117C(a2, "appID", &v15, a4);
  v9 = v15;
  if (!v8 || v15 == 0)
  {
    v9 = sub_1000022EC(*a1);
  }

  sub_100061030(a2, "exceptions", &v14, a4);
  v11 = v14;
  v12 = sub_10003F208(v9, v14, a4);
  xpc_dictionary_set_BOOL(a3, "status", v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

BOOL sub_100025A3C(int a1, xpc_object_t xdict, void *a3)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  if (data)
  {
    v5 = length - 1 > 0x7FFFFFFFFFFFFFFDLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, data, length, kCFAllocatorNull);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_100034B18(v6);
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(a3, "status", v11);
    xpc_release(v11);
    CFRelease(v10);
  }

  CFRelease(v7);
  return v9;
}

BOOL sub_100025B24(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v5 = sub_100034984(a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7 != 0;
  if (v7)
  {
    v9 = v7;
    xpc_dictionary_set_value(a3, "status", v7);
    xpc_release(v9);
  }

  CFRelease(v6);
  return v8;
}

uint64_t sub_100025BA0(int a1, int a2, void *a3, __CFString **a4)
{
  v5 = sub_100034E50(a4);
  xpc_dictionary_set_uint64(a3, "status", v5);
  return 1;
}

uint64_t sub_100025BE0(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v5 = sub_1000327C0(a4);
  xpc_dictionary_set_uint64(a3, "status", v5);
  return 1;
}

uint64_t sub_100025C20(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v5 = sub_100034E00(a4);
  xpc_dictionary_set_uint64(a3, "status", v5);
  return 1;
}

BOOL sub_100025C60(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v5 = sub_100034C20(a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7 != 0;
  if (v7)
  {
    v9 = v7;
    xpc_dictionary_set_value(a3, "status", v7);
    xpc_release(v9);
  }

  CFRelease(v6);
  return v8;
}

BOOL sub_100025CDC(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v5 = sub_100034BBC(a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7 != 0;
  if (v7)
  {
    v9 = v7;
    xpc_dictionary_set_value(a3, "status", v7);
    xpc_release(v9);
  }

  CFRelease(v6);
  return v8;
}

uint64_t sub_100025D60(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  result = sub_100025344(a2, a4);
  if (result)
  {
    v8 = result;
    result = sub_100025DE8(a2, a4);
    if (result)
    {
      v9 = result;
      v10 = sub_10005D678(v8, result, a4);
      xpc_dictionary_set_BOOL(a3, "status", v10);
      CFRelease(v9);
      return 1;
    }
  }

  return result;
}

uint64_t sub_100025DE8(void *a1, __CFString **a2)
{
  length = 0;
  if (xpc_dictionary_get_data(a1, "cert", &length))
  {
    v3 = length - 1 > 0x7FFFFFFFFFFFFFFDLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_10001C2D4(-50, a2, @"object for key %s missing", "cert");
    return 0;
  }

  result = SecCertificateCreateWithBytes();
  if (!result)
  {
    sub_10001C2D4(-26275, a2, @"object for key %s failed to create certificate from data", "cert");
    return 0;
  }

  return result;
}

uint64_t sub_100025E8C(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v7 = sub_100025344(a2, a4);
  if (v7)
  {
    v8 = sub_100025DE8(a2, a4);
    if (v8)
    {
      v9 = v8;
      cf = 0;
      v10 = sub_100010020(v7, v8, &cf, a4);
      if (cf)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0;
      }

      if (v7 == 1)
      {
        sub_10001A6B8(a3, "status", cf, a4, v11);
        v12 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v12);
        }
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100025F50(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v13 = 0;
  v7 = sub_100025344(a2, a4);
  sub_10006117C(a2, "policies", &v13, a4);
  if (v7)
  {
    cf = 0;
    v8 = sub_10005DCF8(v7, v13, &cf, a4);
    if (cf)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      sub_10001A6B8(a3, "status", cf, a4, v9);
      v10 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v10);
      }
    }
  }

  return v7;
}

BOOL sub_10002600C(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v7 = sub_100025344(a2, a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  length = 0;
  v9 = 0;
  if (xpc_dictionary_get_data(a2, "cert", &length) && length - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v9 = SecCertificateCreateWithBytes();
  }

  length = 0;
  v10 = sub_100061100(a2, &length, a4);
  if (v10)
  {
    v11 = length;
    v12 = sub_10005CEB0(v8, v9, length, a4);
    xpc_dictionary_set_BOOL(a3, "status", v12);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t sub_10002611C(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v7 = sub_100025344(a2, a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_100025DE8(a2, a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  value = -86;
  v11 = sub_1000080B8(v8, v9, &value, a4);
  if (v11)
  {
    xpc_dictionary_set_BOOL(a3, "status", value);
  }

  CFRelease(v10);
  return v11;
}

void sub_1000261C8(id a1)
{
  v1 = sub_1000027AC("serverxpc");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Received signal SIGTERM. Will terminate when clean.", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100026238(id a1)
{
  v1 = _os_feature_enabled_impl();
  byte_100092AB8 = v1;

  sub_10002628C("QWACValidation", v1);
}

void sub_10002628C(uint64_t a1, int a2)
{
  v4 = sub_1000027AC("trustd");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v6 = 136315394;
    v7 = a1;
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s is %s (via feature flags)", &v6, 0x16u);
  }
}

void sub_100026360(id a1)
{
  v1 = _os_feature_enabled_impl();
  byte_100092AC8 = v1;

  sub_10002628C("EarlyAnchorExpiration", v1);
}

void sub_1000263B4(id a1)
{
  v1 = _os_feature_enabled_impl();
  byte_100092AD8 = v1;

  sub_10002628C("RemoveOldAppleAnchorSource", v1);
}

void sub_100026408(id a1)
{
  v1 = _os_feature_enabled_impl();
  byte_100092AE8 = v1;

  sub_10002628C("RemoveOldSystemAnchorSource", v1);
}

void sub_10002648C(uint64_t a1, const char *a2)
{
  v2 = qword_100092B10;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

uint64_t sub_1000264DC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100026574;
  block[3] = &unk_100081FB8;
  block[4] = &qword_100092B20;
  if (qword_100092B18 != -1)
  {
    dispatch_once(&qword_100092B18, block);
  }

  return qword_100092B20;
}

CFDictionaryRef sub_100026574(uint64_t a1)
{
  values = kCFBooleanTrue;
  keys = @"debug";
  result = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  **(a1 + 32) = result;
  return result;
}

void sub_100026614(id a1)
{
  qword_100092B40 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_100092B40, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t sub_1000266C4(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

uint64_t sub_100026754(char **a1, unint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (*a1)
  {
    if (v7 >= a2)
    {
      sub_100029B54(-1, @"com.apple.security.cfder.error", a3, a3, a5, @"Unexpected end of datetime");
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

  sub_100029B54(-1, @"com.apple.security.cfder.error", a3, a3, a5, @"Not a decimal digit");
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

char *sub_1000267E8(double *a1, CFTypeRef *a2, unsigned int a3, char *a4, unint64_t a5)
{
  v70 = a4;
  v67 = sub_100026754(&v70, a5, a2, a4, a5);
  v66 = sub_100026754(&v70, a5, a2, v7, v8);
  v65 = sub_100026754(&v70, a5, a2, v9, v10);
  v13 = sub_100026754(&v70, a5, a2, v11, v12);
  v16 = sub_100026754(&v70, a5, a2, v14, v15);
  v19 = sub_100026754(&v70, a5, a2, v17, v18);
  v22 = sub_100026754(&v70, a5, a2, v20, v21);
  v25 = sub_100026754(&v70, a5, a2, v23, v24);
  v28 = sub_100026754(&v70, a5, a2, v26, v27);
  v34 = sub_100026754(&v70, a5, a2, v29, v30);
  v35 = 0;
  v36 = v70;
  v37 = NAN;
  if (!v70 || v70 >= a5)
  {
LABEL_24:
    sub_100029B54(-1, @"com.apple.security.cfder.error", v31, a2, v33, @"Invalid datetime character");
    v47 = NAN;
    if (!v35)
    {
      return v35;
    }

    goto LABEL_25;
  }

  v38 = *v70;
  if (v38 == 46)
  {
    if ((v70 + 1) < a5)
    {
      v38 = v70[1];
      if ((v38 - 58) < 0xFFFFFFF6)
      {
        v39 = @"fraction without digits";
LABEL_14:
        v41 = -1;
LABEL_23:
        sub_100029B54(v41, @"com.apple.security.cfder.error", v31, a2, v33, v39);
        v35 = 0;
        goto LABEL_24;
      }

      v42 = 0;
      v43 = v70 + 2;
      v44 = 1;
      while (v43 != a5)
      {
        v45 = v38;
        v36 = v43;
        if (v44 < 0x1999999999999999)
        {
          v44 *= 10;
          v42 = (v38 & 0xF) + 10 * v42;
        }

        v46 = *v43++;
        v38 = v46;
        if ((v46 - 58) < 0xFFFFFFF6)
        {
          if (v45 == 48)
          {
            v39 = @"fraction ends in 0";
            goto LABEL_14;
          }

          v37 = v42 / v44;
          goto LABEL_8;
        }
      }
    }

    v39 = @"overflow";
    v41 = -8;
    goto LABEL_23;
  }

  v37 = 0.0;
LABEL_8:
  if (v36 >= a5)
  {
    v39 = @"Unexpected end of datetime";
    goto LABEL_14;
  }

  v35 = v36 + 1;
  v70 = v36 + 1;
  if (v38 == 90)
  {
    v47 = 0.0;
  }

  else
  {
    if (v38 == 45)
    {
      v40 = -60;
    }

    else
    {
      if (v38 != 43)
      {
        goto LABEL_24;
      }

      v40 = 60;
    }

    v64 = v40;
    v55 = sub_100026754(&v70, a5, a2, v32, v33);
    v63 = sub_100026754(&v70, a5, a2, v56, v57) + 10 * v55;
    v60 = sub_100026754(&v70, a5, a2, v58, v59);
    v47 = ((sub_100026754(&v70, a5, a2, v61, v62) + 10 * v60 + 60 * v63) * v64);
    v35 = v70;
    if (!v70)
    {
      return v35;
    }
  }

LABEL_25:
  if (v35 == a5)
  {
    v48 = (v13 + 10 * v65);
    v49 = (v19 + 10 * v16);
    v50 = (v25 + 10 * v22);
    v86[0] = 0;
    if (sub_10001ACF4(a3, (v66 + 10 * v67), v48, v49, v50, (v34 + 10 * v28), v86, a2))
    {
      v82 = 0;
      v83 = &v82;
      v84 = 0x2000000000;
      v85 = 0;
      v78 = 0;
      v79 = (&v77 + 4);
      v80 = 0x2000000000;
      v81 = 0;
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 0x40000000;
      v71[2] = sub_100026C88;
      v71[3] = &unk_1000820D8;
      v71[4] = &v82;
      v71[5] = &v77 + 4;
      v72 = a3;
      v73 = v66 + 10 * v67;
      v74 = v48;
      v75 = v49;
      v76 = v50;
      v77 = (v34 + 10 * v28);
      sub_10001AB7C(v71);
      if (v83[3])
      {
        v53 = v79[3] - v47;
      }

      else
      {
        sub_100029B54(-1, @"com.apple.security.cfder.error", v51, a2, v52, @"Failed to encode date from components");
        v53 = NAN;
      }

      _Block_object_dispose(&v77 + 4, 8);
      _Block_object_dispose(&v82, 8);
      *a1 = v53;
      *a1 = v37 + v53;
    }

    else
    {
      v35 = 0;
      *a1 = NAN;
    }
  }

  else
  {
    sub_100029B54(-1, @"com.apple.security.cfder.error", v31, a2, v33, @"trailing garbage at end of datetime");
    return 0;
  }

  return v35;
}

uint64_t sub_100026C88(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarComposeAbsoluteTime(calendar, (*(*(a1 + 40) + 8) + 24), "yMdHms", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void sub_100026CFC(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2)
  {
    v4 = *a2;
    *a2 = 0;
    sub_1000298A0(a1, @"com.apple.utilities.sqlite3", v4, a2, format, va);
  }
}

BOOL sub_100026D4C(uint64_t a1, sqlite3 *a2, CFTypeRef *a3, CFStringRef format, ...)
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
      v9 = CFRetain(&stru_100086858);
    }

    v10 = v9;
    v11 = sqlite3_extended_errcode(a2);
    v12 = sqlite3_errmsg(a2);
    if (v11 == a1)
    {
      sub_100026CFC(a1, a3, @"%@: [%d]%@ %s", v7, a1, v10, v12, v14, va);
    }

    else
    {
      sub_100026CFC(a1, a3, @"%@: [%d->%d]%@ %s", v7, a1, v11, v10, v12, va);
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

void sub_100026E70(id a1)
{
  v1 = sqlite3_config(16, nullsub_3, 0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not set up sqlite global error logging to syslog: %d", buf, 8u);
    }
  }
}

uint64_t sub_100026F34(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_100026F68(uint64_t a1)
{
  sub_1000264DC();
  v2 = *(a1 + 16);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDb path:%@ connections: %@>", v2, *(a1 + 48));
}

void sub_100027004(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000270E8;
  block[3] = &unk_1000823B0;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 32) = 0;
  }

  pthread_mutex_destroy((a1 + 56));
  v6 = *(a1 + 120);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 120) = 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 136) = 0;
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    *(a1 + 152) = 0;
    CFRelease(v8);
  }
}

void sub_1000270E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    *(v2 + 40) = 0;
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    *(v2 + 48) = 0;

    CFRelease(v4);
  }
}

uint64_t sub_100027148(const __CFString *a1, __int16 a2, char a3, char a4, char a5, char a6, const void *a7)
{
  *buf = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_100026F34;
  v32 = &unk_1000821C0;
  v33 = &qword_100092B58;
  if (qword_100092B50 != -1)
  {
    dispatch_once(&qword_100092B50, buf);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v26 = a2;
    v25 = a4;
    v15 = a3;
    if (getenv("__OSINSTALL_ENVIRONMENT"))
    {
      v16 = sub_1000027AC("#SecDB");
      v17 = a5;
      v18 = a6;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "SecDB: running from installer", buf, 2u);
      }

      Copy = @"file::memory:?cache=shared";
    }

    else
    {
      v17 = a5;
      v18 = a6;
      Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
    }

    *(Instance + 16) = Copy;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 0x40000000;
    v28[2] = sub_100027580;
    v28[3] = &unk_1000821E0;
    v28[4] = Instance;
    *buf = _NSConcreteStackBlock;
    v30 = 0x40000000;
    v31 = sub_100026744;
    v32 = &unk_100082030;
    v33 = v28;
    sub_1000054FC(a1, buf);
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-commit", a1);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 0x40000000;
    v27[2] = sub_1000275B4;
    v27[3] = &unk_100082200;
    v27[4] = Instance;
    *buf = _NSConcreteStackBlock;
    v30 = 0x40000000;
    v31 = sub_100026744;
    v32 = &unk_100082030;
    v33 = v27;
    sub_1000054FC(v20, buf);
    if (v20)
    {
      CFRelease(v20);
    }

    *(Instance + 40) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(Instance + 48) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v34.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v34.__opaque = 0xAAAAAAAAAAAAAAAALL;
    if (pthread_mutexattr_init(&v34) || (v21 = &v34, pthread_mutexattr_setpolicy_np(&v34, 1)))
    {
      v22 = sub_1000027AC("SecCritical");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to create attributes for the write mutex; fairness properties are no longer present", buf, 2u);
      }

      v21 = 0;
    }

    if (pthread_mutex_init((Instance + 56), v21))
    {
      v23 = sub_1000027AC("SecCritical");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to init the write mutex, this will end badly", buf, 2u);
      }
    }

    pthread_mutexattr_destroy(&v34);
    *(Instance + 120) = dispatch_semaphore_create(5);
    *(Instance + 128) = 0;
    *(Instance + 136) = _Block_copy(a7);
    *(Instance + 144) = 0;
    *(Instance + 148) = 0;
    *(Instance + 152) = 0;
    *(Instance + 160) = v26;
    *(Instance + 162) = v15;
    *(Instance + 163) = v25;
    *(Instance + 164) = v17;
    *(Instance + 165) = v18;
    *(Instance + 166) = 2;
    *(Instance + 168) = 0;
  }

  return Instance;
}

dispatch_queue_t sub_100027580(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, 0);
  *(*(a1 + 32) + 24) = result;
  return result;
}

dispatch_queue_t sub_1000275B4(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, &_dispatch_queue_attr_concurrent);
  *(*(a1 + 32) + 32) = result;
  return result;
}

BOOL sub_1000275F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  if (a2 - 5 > 1)
  {
    return sub_1000277A8(a1, a2, a5, @"%@", a3);
  }

  if (a4 > 4)
  {
    v10 = 250;
    v11 = 250 * a4 - 820;
  }

  else
  {
    v10 = dword_100068AD4[a4];
    v11 = dword_100068AE8[a4];
  }

  v12 = sub_1000027AC("#SecDB");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 > 299999)
  {
    if (v13)
    {
      *buf = 67109120;
      v16 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "sqlite busy/locked: too long: %d ms, giving up", buf, 8u);
    }

    return sub_1000277A8(a1, a2, a5, @"%@", a3);
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

BOOL sub_1000277A8(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFStringRef format, ...)
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
    sub_100026D4C(a2, *(a1 + 64), a3, @"%@", v7);
    CFRelease(v7);
  }

  *(a1 + 48) |= a2 == 10;
  if (*(a1 + 40) == 1)
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SQL DB %@ is corrupted already. Corruption error was: %d (previously %d)", format, *(*(a1 + 16) + 16), a2, *(a1 + 44));
    v9 = sub_1000027AC("SecError");
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

    sub_10002AC20(v8, v10);
    if (v8)
    {
      CFRelease(v8);
    }

    if (a2 == 26 || a2 == 11)
    {
      v33 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v30 = "SecDbConnectionCheckCode detected corruption twice: going to handle corrupt DB";
        v31 = v33;
        v32 = 2;
        goto LABEL_51;
      }

      goto LABEL_52;
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
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v51 = sub_100027E7C;
  v52 = &unk_100082450;
  v53 = &v36;
  v54 = &v40;
  v55 = &v44;
  v56 = a1;
  v12 = sub_10000512C(a1, @"PRAGMA integrity_check", 0, &v39);
  if (v12)
  {
    v13 = v12;
    v51(&buf, v12);
    sub_100006318(v13, &v39);
  }

  if ((v45[3] & 1) == 0)
  {
    v14 = v37[3];
    if (!v14)
    {
      *(v41 + 24) = 1;
      v21 = sub_1000027AC("#SecDB");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *v48 = 0;
      v18 = "#SecDB warning: failed to run integrity check due to corruption";
      v19 = v21;
      v20 = 2;
      goto LABEL_60;
    }

    Code = CFErrorGetCode(v14);
    if (Code == 26 || Code == 11)
    {
      *(v41 + 24) = 1;
    }

    v16 = sub_1000027AC("#SecDB");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = v37[3];
      *v48 = 138543362;
      v49 = v17;
      v18 = "#SecDB warning error %{public}@ when running integrity check";
      v19 = v16;
      v20 = 12;
LABEL_60:
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v18, v48, v20);
    }
  }

LABEL_28:
  if (*(v41 + 24) == 1)
  {
    v22 = *(v45 + 24);
    v23 = sub_1000027AC("SecError");
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22 == 1)
    {
      if (v24)
      {
        *v48 = 0;
        v25 = "SecDBCheckCorrupted ran integrity_check, and that didn't return ok";
LABEL_34:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, v48, 2u);
      }
    }

    else if (v24)
    {
      *v48 = 0;
      v25 = "SecDBCheckCorrupted failed to run integrity check";
      goto LABEL_34;
    }
  }

  v26 = v37[3];
  if (v26)
  {
    v37[3] = 0;
    CFRelease(v26);
  }

  v27 = *(v41 + 24);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  *(a1 + 40) = v27;
  v28 = sub_1000027AC("SecError");
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27 == 1)
  {
    if (v29)
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a2;
      v30 = "operation returned code: %d integrity check=fail";
      v31 = v28;
      v32 = 8;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &buf, v32);
    }

LABEL_52:
    sub_100027D48(a1, a2, a3);
    return !a2 || a2 == 101;
  }

  if (v29)
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "operation returned code: %d: integrity check=pass", &buf, 8u);
  }

  return !a2 || a2 == 101;
}

uint64_t sub_100027D48(uint64_t a1, uint64_t __errnum, CFTypeRef *a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 163) == 1)
  {
    v12 = *(v3 + 16);
    *buf = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_100026744;
    v17 = &unk_100082030;
    v18 = &stru_100082500;
    sub_1000054FC(v12, buf);
    v13 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: killing self so that successor might cleanly delete corrupt db", buf, 2u);
    }

    exit(1);
  }

  v7 = __errnum;
  v8 = strerror(__errnum);
  sub_100029B54(v7, kCFErrorDomainPOSIX, v9, a3, v10, @"SecDbHandleCorrupt not allowed to repair, handled error: [%d] %s", __errnum, v8);
  *(a1 + 40) = 0;
  return 0;
}

uint64_t sub_100027E7C(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 40);
  return sub_100005D40(*(a1 + 56), a2);
}

void sub_100027F04(uint64_t a1)
{
  v2 = sqlite3_column_text(*(a1 + 48), 0);
  v3 = v2;
  if (!v2 || strncasecmp(v2, "ok", 3uLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NULL";
      if (v3)
      {
        v5 = v3;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecDBCheckCorrupted integrity_check returned %s", &v6, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_10002800C(id a1, const char *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v7, 0, sizeof(v7));
  if (!stat(__b, &v7))
  {
    v3 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v9 = __b;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: Tried to write corruption marker %s but one already exists", buf, 0xCu);
    }
  }

  v4 = fopen(__b, "w");
  if (v4)
  {
    fclose(v4);
  }

  else
  {
    v5 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      *buf = 67109378;
      *v9 = v6;
      *&v9[4] = 2082;
      *&v9[6] = __b;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: Unable (%{darwin.errno}d) to create corruption marker %{public}s", buf, 0x12u);
    }
  }
}

void sub_100028194(uint64_t a1)
{
  v2 = sqlite3_column_text(*(a1 + 32), 3);
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
  if (v3)
  {
    v4 = v3;
    CFStringAppend(*(a1 + 40), v3);
    CFStringAppend(*(a1 + 40), @";");

    CFRelease(v4);
  }
}

uint64_t sub_100028258(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000289F8;
  block[3] = &unk_100082390;
  block[4] = &qword_100092B68;
  if (qword_100092B60 != -1)
  {
    dispatch_once(&qword_100092B60, block);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = a2;
    *(Instance + 25) = 0;
    *(Instance + 32) = 2;
    *(Instance + 40) = 0;
    *(Instance + 44) = 0;
    *(Instance + 48) = 0;
    *(Instance + 56) = 0;
    *(Instance + 64) = 0;
    *(Instance + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  return v5;
}

uint64_t sub_10002836C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  v3 = *(*(a1 + 16) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100028464;
  v6[3] = &unk_1000824A0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100026744;
  v11[3] = &unk_100082030;
  v11[4] = v6;
  sub_1000054FC(v3, v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100028464(uint64_t a1, char *filename)
{
  v4 = *(a1 + 40);
  v5 = 4194305;
  if (*(*(v4 + 16) + 162) == 1)
  {
    if (*(v4 + 24))
    {
      v5 = 4194305;
    }

    else
    {
      v5 = 4194306;
    }
  }

  if (*(a1 + 48))
  {
    v6 = sub_1000286A4(v4, filename, v5, 0);
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  v7 = *(*(a1 + 32) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    if (*(a1 + 48))
    {
      v8 = dirname(filename);
      if (v8)
      {
        v9 = v8;
        v10 = *(*(*(a1 + 40) + 16) + 160);
        v11 = mkpath_np(v8, (v10 >> 2) & 0x49 | v10);
        if (v11 && v11 != 17)
        {
          v13 = v11;
          v14 = v11;
          v15 = *(a1 + 56);
          v16 = strerror(v11);
          sub_100029B54(v14, kCFErrorDomainPOSIX, v17, v15, v18, @"mkpath_np %s: [%d] %s", v9, v13, v16);
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }

    v19 = *(*(a1 + 32) + 8);
    if (*(v19 + 24) == 1)
    {
      v20 = sub_1000286A4(*(a1 + 40), filename, 4194310, *(a1 + 56));
      v19 = *(*(a1 + 32) + 8);
    }

    else
    {
      v20 = 0;
    }

    *(v19 + 24) = v20;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      chmod(filename, *(*(*(a1 + 40) + 16) + 160));
      v21 = *(a1 + 48);
      if (v21)
      {
        *v21 = 1;
      }
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (qword_100092B70 != -1)
    {
      dispatch_once(&qword_100092B70, &stru_1000824E0);
    }

    v22 = dword_100092B78;
    if (dword_100092B78)
    {
      v23 = *(a1 + 40);
      v24 = v23[8];

      sqlite3_trace_v2(v24, v22, sub_10002882C, v23);
    }
  }
}

BOOL sub_1000286A4(uint64_t a1, char *filename, uint64_t a3, CFTypeRef *a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 164);
  v10 = *(v8 + 165);
  ppDb = 0;
  v11 = sqlite3_open_v2(filename, &ppDb, a3, 0);
  if (v11)
  {
    if (ppDb)
    {
      sub_100026D4C(v11, ppDb, a4, @"open_v2 %s 0x%X", filename, a3);
      sqlite3_close(ppDb);
      ppDb = 0;
    }

    else
    {
      sub_100026CFC(v11, a4, @"open_v2 %s 0x%X", filename, a3);
    }

    goto LABEL_16;
  }

  if ((a3 & 2) == 0)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    ppStmt = 0;
    if (!sqlite3_prepare_v2(ppDb, "PRAGMA auto_vacuum", -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v12 = sqlite3_column_int(ppStmt, 0);
        sqlite3_finalize(ppStmt);
        if (v12 == 2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sqlite3_finalize(ppStmt);
      }
    }

    sqlite3_exec(ppDb, "PRAGMA auto_vacuum = incremental", 0, 0, 0);
    sqlite3_exec(ppDb, "VACUUM", 0, 0, 0);
  }

LABEL_13:
  if (v9)
  {
    sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL", 0, 0, 0);
  }

  sqlite3_busy_timeout(ppDb, 5000);
LABEL_16:
  v13 = ppDb;
  *(a1 + 64) = ppDb;
  return v13 != 0;
}

void sub_100028834(id a1)
{
  if (sub_10002891C())
  {
    dword_100092B78 = 2;
  }

  if (sub_10002891C())
  {
    dword_100092B78 = 1;
  }

  if (sub_10002891C())
  {
    dword_100092B78 = 4;
  }

  v1 = sub_1000027AC("#SecDB");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2[0] = 67109120;
    v2[1] = dword_100092B78;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "sqlDb: sql trace mask: 0x%08x", v2, 8u);
  }
}

uint64_t sub_10002891C()
{
  if (!csr_check())
  {
    v1 = CFPreferencesCopyValue(@"SQLProfile", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
    if (v1)
    {
      v2 = v1;
      v3 = CFGetTypeID(v1);
      if (v3 == CFBooleanGetTypeID())
      {
        v4 = CFBooleanGetValue(v2) == 0;
      }

      else
      {
        v5 = CFGetTypeID(v2);
        if (v5 != CFNumberGetTypeID())
        {
          v0 = 0;
LABEL_12:
          CFRelease(v2);
          return v0;
        }

        valuePtr = 0;
        CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
        v4 = valuePtr == 0;
      }

      v0 = !v4;
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_1000289F8(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_100028A2C(uint64_t a1)
{
  sub_1000264DC();
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

CFStringRef sub_100028AB0(uint64_t a1)
{
  v1 = "rw";
  if (*(a1 + 24))
  {
    v1 = "ro";
  }

  if (*(a1 + 64))
  {
    v2 = "open";
  }

  else
  {
    v2 = "closed";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDbConnection %s %s>", v1, v2);
}

void sub_100028B28(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && (v3 = sqlite3_close(v2)) != 0)
  {
    v9 = v3;
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 16) + 16);
      v8 = sqlite3_errmsg(*(a1 + 64));
      *buf = 67109634;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to close database connection (%d) for %@: %s", buf, 0x1Cu);
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = 0;
    v4 = *(a1 + 72);
    if (v4)
    {
      *(a1 + 72) = 0;
      CFRelease(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      *(a1 + 56) = 0;

      CFRelease(v5);
    }
  }
}

void sub_100028C80(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v20, 0, sizeof(v20));
  if (!stat(__b, &v20))
  {
    v9 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v22 = __b;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbSecDbProcessCorruptionMarker: found corruption marker %s", buf, 0xCu);
    }

    if (remove(__b, v10))
    {
      v12 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *__error();
        *buf = 67109120;
        *v22 = v13;
        v14 = "SecDbSecDbProcessCorruptionMarker: Unable (%{darwin.errno}d) to delete corruption marker";
        v15 = v12;
        v16 = 8;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (!remove(a2, v11) || *__error() == 2)
      {
        v17 = sub_1000027AC("SecWarning");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136446210;
        *v22 = a2;
        v6 = "SecDbSecDbProcessCorruptionMarker: deleted corrupt db %{public}s";
        v7 = v17;
        v8 = 12;
        goto LABEL_16;
      }

      v18 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        *buf = 67109378;
        *v22 = v19;
        *&v22[4] = 2082;
        *&v22[6] = a2;
        v14 = "SecDbSecDbProcessCorruptionMarker: Unable (%{darwin.errno}d) to delete db %{public}s";
        v15 = v18;
        v16 = 18;
        goto LABEL_10;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (*__error() != 2)
  {
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *__error();
      *buf = 67109120;
      *v22 = v5;
      v6 = "SecDbSecDbProcessCorruptionMarker: Unable to check for corruption marker: %{darwin.errno}d";
      v7 = v4;
      v8 = 8;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }
}

uint64_t sub_100028F3C(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  for (i = 0; ; i = (i + 1))
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v9 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbForEach: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v11 = sqlite3_step(pStmt);
    if (v11 != 100)
    {
      break;
    }

    if (a4)
    {
      if (((*(a4 + 16))(a4, i) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v12 = sqlite3_sql(pStmt);
      sub_100026CFC(100, a3, @"step[%d]: %s returned SQLITE_ROW with NULL row block", i, v12);
    }
  }

  if (v11 == 101)
  {
    return 1;
  }

  sub_1000277A8(a1, v11, a3, @"SecDbForEach step[%d]", i);
  return 0;
}

void sub_1000290CC(id a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100029224(Mutable, byte_10006C044, 1);
  sub_100029224(Mutable, byte_10006C064, 1);
  sub_100029224(Mutable, byte_10006C084, 1);
  sub_100029224(Mutable, byte_10006C0A4, 1);
  sub_100029224(Mutable, byte_10006C0C4, 1);
  sub_100029224(Mutable, byte_10006C0E4, 1);
  sub_100029224(Mutable, byte_10006C104, 0);
  sub_100029224(Mutable, byte_10006C124, 0);
  sub_100029224(Mutable, byte_10006C144, 0);
  sub_100029224(Mutable, byte_10006C164, 0);
  sub_100029224(Mutable, byte_10006C184, 0);
  sub_100029224(Mutable, byte_10006C1A4, 0);
  sub_100029224(Mutable, byte_10006C1C4, 0);
  sub_100029224(Mutable, byte_10006C1E4, 0);
  qword_100092BA8 = Mutable;
}

void sub_100029224(const __CFDictionary *a1, const UInt8 *a2, int a3)
{
  v5 = CFDataCreateWithBytesNoCopy(0, a2, 32, kCFAllocatorNull);
  if (CFDictionaryGetValue(a1, v5))
  {
    abort();
  }

  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, v5, *v6);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1000292D0(id a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2 = CFDataCreateWithBytesNoCopy(0, byte_100068AFC, 32, kCFAllocatorNull);
  CFDictionarySetValue(Mutable, v2, kCFBooleanTrue);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CFDataCreateWithBytesNoCopy(0, byte_100068B1C, 32, kCFAllocatorNull);
  CFDictionarySetValue(Mutable, v3, kCFBooleanTrue);
  if (v3)
  {
    CFRelease(v3);
  }

  qword_100092B88 = Mutable;
}

void sub_1000293A4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 6, &kCFTypeArrayCallBacks);
  sub_10002950C(Mutable);
  sub_10002950C(Mutable);
  sub_10002950C(Mutable);
  sub_10002950C(Mutable);
  sub_10002950C(Mutable);
  sub_10002950C(Mutable);
  if ((SecIsInternalRelease() & 1) != 0 || *(a1 + 32) == 1)
  {
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
    sub_10002950C(Mutable);
  }

  qword_100092B90 = Mutable;
}

void sub_10002950C(const __CFArray *a1)
{
  v2 = SecCertificateCreateWithBytes();
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;
  if (CFArrayContainsValue(a1, v4, v2))
  {
    abort();
  }

  CFArrayAppendValue(a1, v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFMutableArrayRef sub_10002958C(unsigned __int16 *a1, unint64_t a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = Mutable;
  if (a2 < 3 || !Mutable)
  {
    goto LABEL_11;
  }

  v6 = __rev16(*a1);
  if (v6 != a2 - 2)
  {
LABEL_12:
    CFRelease(v5);
    return 0;
  }

  v7 = (a1 + 1);
  if (v6)
  {
    while (v6 != 1)
    {
      v8 = __rev16(*v7);
      v9 = v6 - 2 >= v8;
      v6 = v6 - 2 - v8;
      if (!v9)
      {
        break;
      }

      v10 = v7 + 2;
      v11 = CFDataCreate(kCFAllocatorDefault, v10, v8);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v7 = &v10[v8];
      CFArrayAppendValue(v5, v11);
      CFRelease(v12);
      if (!v6)
      {
        return v5;
      }
    }

LABEL_11:
    if (v5)
    {
      goto LABEL_12;
    }
  }

  return v5;
}

uint64_t sub_100029678(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v5 = 9;
      v6 = 48;
      do
      {
        if ((v5 - 2) < 2)
        {
          break;
        }

        v7 = valuePtr >> v6;
        --v5;
        v6 -= 8;
      }

      while (HIBYTE(valuePtr) == v7);
    }

    return ccder_sizeof();
  }

  else
  {
    sub_100029B54(-4, @"com.apple.security.cfder.error", v3, a2, v4, @"Unable to get number from data");
    return 0;
  }
}

uint64_t sub_100029750(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    sub_100029B54(-4, @"com.apple.security.cfder.error", v7, a2, v8, @"Unable to get number from data");
    return 0;
  }

  v9 = valuePtr;
  v10 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v15 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 9;
    v12 = 48;
    v13 = 1;
    while ((v11 - 2) >= 2)
    {
      v14 = valuePtr >> v12;
      --v11;
      v12 -= 8;
      if (v10 != v14)
      {
        v13 = v11 - 1;
        goto LABEL_11;
      }
    }

    v11 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v13 - 8)) ^ v10) & 0x80) != 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v15)
  {
LABEL_22:
    sub_100029B54(-3, @"com.apple.security.cfder.error", v7, a2, v8, @"Unknown size");
    return 0;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  do
  {
    *--a4 = v9;
    v9 >>= 8;
    --v16;
  }

  while (v16);
  valuePtr = v9;
  result = ccder_encode_tl();
  if (!result)
  {
    sub_100029B54(-7, @"com.apple.security.cfder.error", v18, a2, v19, @"ccder failed to encode");
    return 0;
  }

  return result;
}

void sub_1000298A0(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v28 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v11 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v11, kCFErrorDescriptionKey);
  if (Value)
  {
    v13 = CFStringCompare(v10, Value, 0) == kCFCompareEqualTo;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v16 = CFStringCompare(a2, Domain, 0);
  v18 = Code == a1 && v16 == kCFCompareEqualTo;
  v19 = cf;
  if (v18 && v13)
  {
    goto LABEL_19;
  }

  v21 = CFErrorCopyUserInfo(cf);
  if (v21)
  {
    v22 = v21;
    v23 = kSOSCountKey;
    if (CFDictionaryContainsKey(v21, kSOSCountKey) == 1)
    {
      v24 = CFDictionaryGetValue(v22, v23);
      if (v24)
      {
        valuePtr = 0;
        CFNumberGetValue(v24, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v22);
          v19 = cf;
LABEL_19:
          CFRetain(v19);
          *a4 = cf;
          CFRelease(cf);
          if (!v10)
          {
            return;
          }

          v20 = v10;
          goto LABEL_44;
        }

        v28 = valuePtr + 1;
      }
    }

    CFRelease(v22);
  }

LABEL_30:
  v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v28);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v27 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v25)
  {
    CFDictionaryAddValue(v27, kSOSCountKey, v25);
  }

  if (v10)
  {
    CFDictionaryAddValue(v27, kCFErrorDescriptionKey, v10);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    v20 = cf;
LABEL_44:
    CFRelease(v20);
  }
}

uint64_t sub_100029B88(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  if (a4)
  {
    if (ccder_decode_tag())
    {
      sub_100029B54(-2, @"com.apple.security.cfder.error", v7, a3, v8, @"Unsupported DER Type");
    }

    else
    {
      sub_100029B54(-1, @"com.apple.security.cfder.error", v7, a3, v8, @"invalid tag");
    }

    return 0;
  }

  else
  {
    sub_100029B54(-6, @"com.apple.security.cfder.error", a3, a3, a5, @"null input");
  }

  return v5;
}

NSObject *sub_10002A5CC(NSObject *a1, char *label, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    dispatch_retain(a1);
  }

  else
  {
    v4 = dispatch_queue_create(label, 0);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v4);
  v6 = malloc_type_malloc(0x20uLL, 0x10A0040A7A12BA5uLL);
  *v6 = v4;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = a3;
  dispatch_set_context(v5, v6);
  dispatch_source_set_event_handler_f(v5, sub_100006130);
  dispatch_set_finalizer_f(v5, sub_10002A690);
  return v5;
}

void sub_10002A690(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  free(a1);
}

uint64_t sub_10002A6DC(CFTypeRef *a1)
{
  v4 = ccder_encode_tl();
  if (!v4)
  {
    sub_100029B54(-7, @"com.apple.security.cfder.error", v2, a1, v3, @"ccder failed to encode");
  }

  return v4;
}

uint64_t sub_10002A738(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_100068A00;
  v4 = a2;
  CFSetApplyFunction(a1, sub_10002A7A0, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A7A0(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = sub_10001A414(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_10002A7F0(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFSetApplyFunction(a1, sub_10002AA30, v13);
  if ((v13[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v14.length = CFArrayGetCount(Mutable);
  v14.location = 0;
  CFArraySortValues(Mutable, v14, sub_10002A974, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_100029B54(-7, @"com.apple.security.cfder.error", v11, a2, v12, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10002A974(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_10002AA30(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v7 = sub_10001A414(a1, *(a2 + 8), a3, a4, a5);
    if (!v7)
    {
      *a2 = 0;
      return;
    }

    v8 = v7;
    Mutable = CFDataCreateMutable(*(a2 + 24), v7);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v11 = sub_100018DC8(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v8]);
    if (v11)
    {
      v13.length = v11 - MutableBytePtr;
      v13.location = 0;
      CFDataDeleteBytes(Mutable, v13);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

void sub_10002AB18(const __CFURL *a1, uint64_t a2)
{
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(a1, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(a1);
  }
}

void sub_10002ABBC(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = sub_100009020(@"Library/Keychains", a1);

  sub_10002AB18(v4, a2);
}

uint64_t sub_10002AC20(uint64_t a1, int a2)
{
  v4 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v6, 0x12u);
  }

  getpid();
  return SimulateCrash();
}

void sub_10002ACF4(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

xpc_object_t sub_10002AE7C(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10002AFF4;
  v15[3] = &unk_100082628;
  v15[4] = v2;
  v15[5] = "domain";
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_100026744;
  v16[3] = &unk_100082030;
  v16[4] = v15;
  sub_1000054FC(Domain, v16);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v9 = sub_10001A414(v5, 0, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_malloc(v9, 0xD5244697uLL);
    v12 = &v11[v10];
    v13 = sub_100018DC8(v5, 0, 0, v11, v12);
    if (v13)
    {
      xpc_dictionary_set_data(v2, "userinfo", v13, v12 - v13);
    }

    free(v11);
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_10002B004(uint64_t a1, const __CFArray *a2, _BYTE *a3, int a4)
{
  v7 = SecCertificateCopySubjectSequence();
  if (!v7)
  {
    return 4294941021;
  }

  v8 = v7;
  SubjectAltName = SecCertificateGetSubjectAltName();
  if (sub_10002B26C(v8) && !SubjectAltName)
  {
    v15 = 4294941021;
    goto LABEL_16;
  }

  v10 = SecCertificateCopySubjectSequence();
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  if (CFDataGetLength(v10) < 0 || sub_10002B26C(v11))
  {
    CFRelease(v11);
LABEL_8:
    v12 = 0;
    v13 = a4;
    goto LABEL_9;
  }

  Count = CFArrayGetCount(a2);
  v27 = 0;
  v26[0] = CFDataGetBytePtr(v11);
  v26[1] = CFDataGetLength(v11);
  context[0] = 0xAAAAAAAA00000004;
  context[1] = v26;
  context[2] = &v27;
  v28.location = 0;
  v28.length = Count;
  CFArrayApplyFunction(a2, v28, sub_10002B538, context);
  CFRelease(v11);
  v12 = v27;
  if (v27)
  {
    v13 = HIBYTE(v27);
  }

  else
  {
    v13 = a4;
  }

  v23 = 0;
  v24 = a4;
  v18 = SecCertificateCopyRFC822NamesFromSubject();
  if (v18)
  {
    v19 = v18;
    v29.length = CFArrayGetCount(v18);
    v21[0] = a2;
    v21[1] = &v23;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    LOBYTE(v22) = a4;
    v29.location = 0;
    CFArrayApplyFunction(v19, v29, sub_10002B3C4, v21);
    CFRelease(v19);
    v20 = v24 | v13;
    if (a4)
    {
      v20 = v24 & v13;
    }

    if (v23)
    {
      v13 = v20;
    }

    v12 |= v23;
  }

LABEL_9:
  if (SubjectAltName)
  {
    v14 = SecCertificateParseGeneralNames();
    if (v14)
    {
      v15 = v14;
      v13 = 0;
      goto LABEL_15;
    }

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_14:
    v15 = 0;
    v13 = a4;
    goto LABEL_15;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v15 = 0;
LABEL_15:
  *a3 = v13;
LABEL_16:
  CFRelease(v8);
  return v15;
}

BOOL sub_10002B26C(const __CFData *a1)
{
  result = 1;
  if (CFDataGetLength(a1) >= 1)
  {
    v4[0] = CFDataGetBytePtr(a1);
    v4[1] = CFDataGetLength(a1);
    memset(v3, 170, sizeof(v3));
    if (!DERDecodeItem(v4, v3))
    {
      if (v3[2])
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10002B2E8(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294941021;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 4294941021;
  }

  v16.length = CFArrayGetCount(*a1);
  v15 = 0;
  v12[1] = -1431655766;
  v13 = a3;
  v12[0] = a2;
  v14 = &v15;
  v16.location = 0;
  CFArrayApplyFunction(v4, v16, sub_10002B538, v12);
  v7 = *(a1 + 8);
  if (v7 && v15 == 1)
  {
    v8 = *(a1 + 16);
    *v7 = 1;
    v9 = v7[1];
    if (v8)
    {
      v10 = v9 & HIBYTE(v15);
    }

    else
    {
      v10 = v9 | HIBYTE(v15);
    }

    v7[1] = v10;
  }

  return 0;
}

void sub_10002B3C4(const __CFString *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *a2;
  if (!*a2)
  {
    return;
  }

  Count = CFArrayGetCount(*a2);
  v15 = 0;
  if (!a1)
  {
    v8 = strdup("");
    if (!v8)
    {
      return;
    }

    goto LABEL_9;
  }

  CFRetain(a1);
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v8, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    *v8 = 0;
  }

  CFRelease(a1);
  if (v8)
  {
LABEL_9:
    v14[0] = v8;
    v14[1] = strlen(v8);
    v13[0] = 0xAAAAAAAA00000001;
    v13[1] = v14;
    v13[2] = &v15;
    v16.location = 0;
    v16.length = Count;
    CFArrayApplyFunction(v3, v16, sub_10002B538, v13);
    free(v8);
    v9 = *(a2 + 8);
    if (v9 && v15 == 1)
    {
      v10 = *(a2 + 16);
      *v9 = 1;
      v11 = v9[1];
      if (v10)
      {
        v12 = v11 & HIBYTE(v15);
      }

      else
      {
        v12 = v11 | HIBYTE(v15);
      }

      v9[1] = v12;
    }
  }
}