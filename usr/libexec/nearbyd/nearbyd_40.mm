void sub_1002CF4F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  *a1 = xmmword_100569F90;
  *(a1 + 16) = xmmword_100569FA0;
  v7 = *(sub_1000054A8() + 144);
  *(a1 + 40) = 0;
  *(a1 + 32) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10003735C(v8, a4);
  sub_1001BEE30(a1 + 64, v6);
}

void sub_1002CFD24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10022A868(va);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (*(v5 - 225) < 0)
  {
    operator delete(*(v5 - 248));
  }

  if (*(v4 + 695) < 0)
  {
    operator delete(*(v4 + 672));
  }

  if (*(v4 + 671) < 0)
  {
    operator delete(*(v4 + 648));
  }

  if (*(v4 + 647) < 0)
  {
    operator delete(*(v4 + 624));
  }

  if (*(v4 + 623) < 0)
  {
    operator delete(*(v4 + 600));
  }

  if (*(v4 + 599) < 0)
  {
    operator delete(*(v4 + 576));
  }

  if (*(v4 + 535) < 0)
  {
    operator delete(*(v4 + 512));
  }

  sub_1000197C8(v4 + 480);
  sub_1000197C8(v4 + 448);

  sub_10022E460(v4 + 280);
  sub_1002D13E8(v3 + 24);
  *(v5 - 248) = v3;
  sub_10022E4E4((v5 - 248));

  _Unwind_Resume(a1);
}

uint64_t sub_1002CFF84(uint64_t a1, int a2)
{
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      return sub_1002D094C(a1);
    }

    else
    {
      return a2 != 8;
    }
  }

  else if (a2)
  {
    if (a2 == 5)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_10003229C(a1 + 448, 0);
    return 1;
  }
}

uint64_t sub_1002CFFE0(uint64_t a1, int a2)
{
  result = 2;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return result;
        }

        sub_1001BEFBC(a1 + 64);
      }

      else
      {
        sub_1001BF198(a1 + 64);
      }

      return 2;
    }

    if (a2 != 2)
    {
      v4 = a1 + 448;
      v5 = 1;
LABEL_19:
      sub_10003229C(v4, v5);
      return 2;
    }

    v6 = sub_100005288();
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 objectForKey:@"GeofenceLoggingIntervalOverride"];

    v9 = 3600.0;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 doubleValue];
        v9 = v10;
      }
    }

    v11 = v6 - *(a1 + 24);
    if (v11 >= v9)
    {
      *(a1 + 24) = v6;
      if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BA03C(a1);
      }
    }

    v12 = sub_1002CF250(a1, v11 >= v9);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        if (v11 >= v9)
        {
          v18 = qword_1009F3E00;
          if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "regulatory,geof,calling setHysteresisEvent DelayedUwbOn from NEAR", v21, 2u);
          }
        }

        v14 = (a1 + 280);
        sub_1002D0BC4(a1 + 280, 3, *a1);
        v15 = 4;
        goto LABEL_50;
      }

      if (v12 == 4)
      {
        if (v11 >= v9)
        {
          v16 = qword_1009F3E00;
          if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "geof,calling setHysteresisEvent DelayedUwbOn from FAR", v20, 2u);
          }
        }

        sub_1002D0BC4(a1 + 280, 3, *a1);
        sub_1001BEF10((a1 + 280), 4);
        if (!sub_100003AA8(*(a1 + 32)))
        {
          if (!sub_10041C748(*(a1 + 32)))
          {
            goto LABEL_52;
          }

          v19 = 4;
          goto LABEL_51;
        }

        sub_1001BEFBC(a1 + 64);
      }
    }

    else
    {
      if (v12 == 1)
      {
        if (v11 >= v9)
        {
          v17 = qword_1009F3E00;
          if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "regulatory,geof,Cannot determine region status", v23, 2u);
          }
        }

        goto LABEL_52;
      }

      if (v12 == 2)
      {
        if (v11 >= v9)
        {
          v13 = qword_1009F3E00;
          if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "regulatory,geof,calling setHysteresisEvent DelayedUwbOff from IN", buf, 2u);
          }
        }

        v14 = (a1 + 280);
        sub_1002D0BC4(a1 + 280, 4, *(a1 + 8));
        v15 = 3;
LABEL_50:
        sub_1001BEF10(v14, v15);
        v19 = 1;
LABEL_51:
        sub_1001BF1A4(a1 + 64, v19);
      }
    }

LABEL_52:

    return 2;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      if (sub_1002D094C(a1))
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else if (a2 == 8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = a1 + 448;
      v5 = 0;
      goto LABEL_19;
    }

    if (a2 == 6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1002D0390(uint64_t *a1)
{
  sub_1001BEE34(a1 + 8);
  v54 = 0.0;
  v2 = sub_10045C0F4("GeofenceUwbOnDelay", &v54);
  if (v54 != 0.0 && v2)
  {
    *a1 = v54;
    if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BA0E0(a1);
    }
  }

  v53 = 0.0;
  v4 = sub_10045C0F4("GeofenceUwbOffDelay", &v53);
  if (v53 != 0.0 && v4)
  {
    *(a1 + 1) = v53;
    if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BA154(a1 + 1);
    }
  }

  v52 = 0.0;
  v6 = sub_10045C0F4("GeofenceLocationAgeThreshold", &v52);
  if (v52 != 0.0 && v6)
  {
    *(a1 + 2) = v52;
    if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BA1C8(a1 + 2);
    }
  }

  v39 = +[NSUserDefaults standardUserDefaults];
  v37 = [v39 stringForKey:@"GeofencePlistPath"];
  v38 = [NSArray arrayWithContentsOfFile:?];
  if (v38)
  {
    v9 = a1[5];
    for (i = a1[6]; i != v9; sub_10022E56C((a1 + 5), i))
    {
      i -= 72;
    }

    v40 = a1 + 5;
    a1[6] = v9;
    if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BA23C();
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v38;
    v10 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v10)
    {
      v11 = *v49;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v48 + 1) + 8 * j);
          v14 = [v13 objectForKey:@"Name"];
          v15 = [v13 objectForKey:@"IsoCountry"];
          v16 = [v13 objectForKey:@"Latitude"];
          v17 = [v13 objectForKey:@"Longitude"];
          v18 = [v13 objectForKey:@"Radius"];
          v19 = v18;
          if (v14)
          {
            v20 = v15 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20 && v16 != 0 && v17 != 0 && v18 != 0)
          {
            [v16 doubleValue];
            v25 = v24;
            [v17 doubleValue];
            v27 = v26;
            [v19 doubleValue];
            v29 = v28;
            v30 = v14;
            sub_100004A08(buf, [v14 UTF8String]);
            v31 = v15;
            sub_100004A08(v42, [v15 UTF8String]);
            sub_1002CF104(__dst, buf, v42, v25, v27, v29);
            sub_1002D0EF0(v40, __dst);
            if (v47 < 0)
            {
              operator delete(__p);
            }

            if (v45 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v43 < 0)
            {
              operator delete(v42[0]);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(*buf);
            }

            v32 = qword_1009F3E00;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v33 = v14;
              v34 = [v14 UTF8String];
              v35 = v15;
              v36 = [v15 UTF8String];
              *buf = 136643843;
              *&buf[4] = v34;
              v56 = 2080;
              v57 = v36;
              v58 = 2053;
              v59 = v25;
              v60 = 2053;
              v61 = v27;
              v62 = 2053;
              v63 = v29;
              _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "regulatory,geof,default,site,name,%{sensitive}s,iso,%s,lat,%{sensitive}.6f,lon,%{sensitive}.6f,radius,%{sensitive}.2f", buf, 0x34u);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v10);
    }
  }
}

BOOL sub_1002D094C(uint64_t a1)
{
  if (sub_100003AA8(*(a1 + 32)))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (v2 != v3)
    {
      v4 = *(a1 + 40);
      do
      {
        v5 = sub_1002CF1C0(v4, (a1 + 576));
        if (v5)
        {
          break;
        }

        v4 += 72;
      }

      while (v4 != v3);
      do
      {
        v6 = sub_1002CF1C0(v2, (a1 + 600));
        if (v6)
        {
          break;
        }

        v2 += 72;
      }

      while (v2 != v3);
      return v5 || v6;
    }

    return 0;
  }

  if (!sub_10041C77C(*(a1 + 32)))
  {
    if (!sub_10041C7EC(*(a1 + 32)))
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      if (v18 != v19)
      {
        v20 = *(a1 + 40);
        do
        {
          v5 = sub_1002CF1C0(v20, (a1 + 624));
          if (v5)
          {
            break;
          }

          v20 += 72;
        }

        while (v20 != v19);
        do
        {
          v6 = sub_1002CF1C0(v18, (a1 + 648));
          if (v6)
          {
            break;
          }

          v18 += 72;
        }

        while (v18 != v19);
        return v5 || v6;
      }

      return 0;
    }

    v15 = *(a1 + 599);
    if (v15 < 0)
    {
      v15 = *(a1 + 584);
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    if (v15)
    {
      if (v16 == v17)
      {
        v7 = 0;
      }

      else
      {
        do
        {
          v7 = sub_1002CF1C0(v16, (a1 + 576));
          if (v7)
          {
            break;
          }

          v16 += 72;
        }

        while (v16 != v17);
      }

      v22 = qword_1009F3E00;
      if (!os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
      {
        return v7;
      }

      v26 = 0;
      v23 = "regulatory geof,using fSlot1Iso";
      v24 = &v26;
    }

    else
    {
      if (v16 == v17)
      {
        v7 = 0;
      }

      else
      {
        do
        {
          v7 = sub_1002CF1C0(v16, (a1 + 672));
          if (v7)
          {
            break;
          }

          v16 += 72;
        }

        while (v16 != v17);
      }

      v22 = qword_1009F3E00;
      if (!os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEFAULT))
      {
        return v7;
      }

      v25 = 0;
      v23 = "regulatory geof,using fWifiIso";
      v24 = &v25;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v24, 2u);
    return v7;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  do
  {
    v11 = sub_1002CF1C0(v10, (a1 + 576));
    if (v11)
    {
      break;
    }

    v10 += 72;
  }

  while (v10 != v9);
  v12 = v8;
  do
  {
    v13 = sub_1002CF1C0(v12, (a1 + 600));
    if (v13)
    {
      break;
    }

    v12 += 72;
  }

  while (v12 != v9);
  do
  {
    v14 = sub_1002CF1C0(v8, (a1 + 624));
    if (v14)
    {
      break;
    }

    v8 += 72;
  }

  while (v8 != v9);
  return v11 || v13 || v14;
}

void sub_1002D0BC4(uint64_t a1, int a2, double a3)
{
  v9 = a2;
  v5 = a1 + 88;
  v6 = *(a1 + 88);
  v7 = a1 + 80;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 28) > a2)
  {
LABEL_8:
    v10 = &v9;
    *(sub_1001BF9A0(v7, &v9) + 32) = 0;
LABEL_9:
    sub_1002D1668(a1, v9, a3);
    return;
  }

  v10 = &v9;
  if ((sub_1001BF9A0(v7, &v9)[4] & 1) == 0)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1002D0C9C(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA27C();
  }

  *(a1 + 440) = a2;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  return sub_100004D90(a1 + 280, v4);
}

void sub_1002D0D08(uint64_t a1, int a2, std::string *a3)
{
  if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA2F4(a3);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1 && sub_100003AA8(*(a1 + 32)))
      {
        v6 = 600;
        goto LABEL_21;
      }
    }

    else if (sub_100003AA8(*(a1 + 32)) || (sub_10041C77C(*(a1 + 32)) & 1) != 0 || (sub_10041C7EC(*(a1 + 32)) & 1) != 0)
    {
      v6 = 576;
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 == 2)
    {
      if (!sub_10041C748(*(a1 + 32)))
      {
        goto LABEL_22;
      }

      v6 = 624;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      if (!sub_10041C748(*(a1 + 32)))
      {
        goto LABEL_22;
      }

      v6 = 648;
      goto LABEL_21;
    }

    if (a2 == 4 && sub_10041C7EC(*(a1 + 32)))
    {
      v6 = 672;
LABEL_21:
      std::string::operator=((a1 + v6), a3);
    }
  }

LABEL_22:
  if ((*(a1 + 599) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 584))
    {
      goto LABEL_40;
    }
  }

  else if (*(a1 + 599))
  {
    goto LABEL_40;
  }

  if ((*(a1 + 623) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 608))
    {
      goto LABEL_40;
    }
  }

  else if (*(a1 + 623))
  {
    goto LABEL_40;
  }

  if ((*(a1 + 647) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 632))
    {
      goto LABEL_34;
    }

LABEL_40:
    sub_100004D90(a1 + 280, 7);
    return;
  }

  if (*(a1 + 647))
  {
    goto LABEL_40;
  }

LABEL_34:
  v7 = *(a1 + 671);
  if (v7 < 0)
  {
    v7 = *(a1 + 656);
  }

  if (v7)
  {
    goto LABEL_40;
  }

  v8 = *(a1 + 695);
  if (v8 < 0)
  {
    v8 = *(a1 + 680);
  }

  if (v8)
  {
    goto LABEL_40;
  }
}

void sub_1002D0E88(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_1009F3E00, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA37C();
  }

  if (a2 == 1)
  {
    sub_100004D90(a1 + 280, 8);
  }
}

uint64_t sub_1002D0EF0(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1002D0FF0(a1, a2);
  }

  else
  {
    sub_1002D0F30(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

__n128 sub_1002D0F30(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000056BC((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  result = a2[3];
  *(v4 + 64) = *(a2 + 8);
  *(v4 + 48) = result;
  *(a1 + 8) = v4 + 72;
  return result;
}

void sub_1002D0FC8(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D0FF0(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_100019B38();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1002D11A4(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000056BC((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_1002D1200(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1002D136C(&v17);
  return v16;
}

void sub_1002D1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1002D136C(va);
  _Unwind_Resume(a1);
}

void sub_1002D11A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1002D1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_10022E56C(a1, v5);
      v5 += 72;
    }
  }

  return sub_1002D12E0(v12);
}

uint64_t sub_1002D12E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1002D1318(a1);
  }

  return a1;
}

void sub_1002D1318(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_10022E56C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_1002D136C(void **a1)
{
  sub_1002D13A0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002D13A0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_10022E56C(v4, i - 72);
  }
}

uint64_t sub_1002D13E8(uint64_t a1)
{
  sub_1000197C8(a1 + 184);

  sub_1001BF454(a1 + 24);
  return a1;
}

void sub_1002D1428(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D1464(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D14A4(uint64_t a1, const void **a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_5;
    }

LABEL_20:
    __assert_rtn("PRStateMachine", "PRStateMachine.h", 55, "!name.empty()");
  }

  if (!a2[1])
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_100175C6C(&v12, v8 + 1);
  if (v13 >= 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12;
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 44;
  if (*(a1 + 143) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v12;
  *(a1 + 136) = v13;
  return a1;
}

void sub_1002D1610(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*v6);
  }

  sub_10002074C(v4, *(v1 + 88));
  sub_1001BF3F8(v3, *(v1 + 64));
  v8 = *(v1 + 40);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  sub_10002074C(v2, *v5);
  _Unwind_Resume(a1);
}

void sub_1002D1668(uint64_t a1, int a2, double a3)
{
  v16 = a2;
  v3 = *(a1 + 104);
  if (!v3)
  {
    sub_1004A5054();
  }

  if (a3 >= 0.0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v7 && *(v8 + 32) <= a2 && (v9 = *(v8 + 40)) != 0)
    {
      v10 = v9;
    }

    else
    {
LABEL_12:
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
      if (!v11)
      {
        return;
      }

      v10 = v11;
      v17 = &v16;
      v12 = sub_1001BF864(v7 - 8, &v16);
      objc_storeStrong(v12 + 5, v10);
      dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1002D1844;
      v14[3] = &unk_100998F28;
      v14[4] = a1;
      v15 = v16;
      dispatch_source_set_event_handler(v10, v14);
      dispatch_resume(v10);
    }

    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v17 = &v16;
    *(sub_1001BF9A0(a1 + 80, &v16) + 32) = 1;
  }
}

uint64_t *sub_1002D1844(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  sub_100004D90(v2, *(a1 + 40));
  result = sub_1001BF9A0(v2 + 80, v1);
  *(result + 32) = 0;
  return result;
}

void sub_1002D18B0()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F3E00 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_1002D1904(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = dispatch_queue_create("com.apple.nearby.niserver.backoff", 0);
  sub_1002D49FC(a1 + 48, a3);
  sub_1002247E0(a1 + 80, a6);
  sub_1002D4E54(a1 + 112, a7);
  *(a1 + 144) = v13;
  v15 = v14;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 152) = v15;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  __p = sub_1002D1C38;
  v17 = 0;
  v18 = a1;
  sub_1002D4A94();
}

void sub_1002D1B90(_Unwind_Exception *a1)
{
  v7 = *(v1 + 232);
  if (v7)
  {
    sub_10000AD84(v7);
  }

  sub_1001C321C(v1 + 112);
  sub_1001C329C(v1 + 80);
  sub_1001C331C(v4 + 8);

  v8 = *(v1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

void sub_1002D1C38(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  v4 = *(a1 + 240);
  if (v4 != a2)
  {
    v5 = v4 == 1 && a2 == 2;
    if (v5 && (*(a1 + 19) & 1) != 0)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#backoff,pausing motion detector for backoff", buf, 2u);
      }

      sub_1002231D8(*(a1 + 224));
      sub_1002D40A4(a1);
    }

    *(a1 + 240) = a2;
    v7 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a1 + 104))
    {
      v9 = *(a1 + 144);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3321888768;
      v10[2] = sub_1002D4210;
      v10[3] = &unk_1009A3460;
      v10[4] = a1;
      v10[5] = v7;
      v11 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = a2;
      dispatch_async(v9, v10);
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    sub_1002D32D0(a1);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_1002D1D94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D1DAC(unsigned __int8 *a1)
{
  sub_100193120(v42);
  v2 = sub_10000EA44(&v43, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v4 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v4, "'screenStateMonitoring': ", 25);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = sub_10000EA44(v6, ",", 1);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v9 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v9, "'stationaryStateMonitoring': ", 29);
  v10 = a1[1];
  v11 = std::ostream::operator<<();
  v12 = sub_10000EA44(v11, ",", 1);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v14 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v14, "'allowLockScreenOnly': ", 23);
  v15 = a1[2];
  v16 = std::ostream::operator<<();
  v17 = sub_10000EA44(v16, ",", 1);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v19 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v19, "'gravityOnlyMotion': ", 21);
  v20 = a1[3];
  v21 = std::ostream::operator<<();
  v22 = sub_10000EA44(v21, ",", 1);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v24 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v24, "'provideRecommendation': ", 25);
  v25 = a1[4];
  v26 = std::ostream::operator<<();
  v27 = sub_10000EA44(v26, ",", 1);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v29 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v29, "'strictStationary': ", 20);
  v30 = a1[5];
  v31 = std::ostream::operator<<();
  v32 = sub_10000EA44(v31, ",", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v47.__locale_) = 9;
  v34 = sub_10000EA44(&v43, &v47, 1);
  sub_10000EA44(v34, "'screenStateProcessingDelaySeconds': ", 37);
  v35 = *(a1 + 1);
  v36 = std::ostream::operator<<();
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  v38 = sub_10000EA44(&v43, "}", 1);
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v47);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v43 = v40;
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  std::locale::~locale(v45);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002D2564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_100193C68(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D25AC(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 152);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#backoff,Destructing backoff resume manager for session identifier %@", &v9, 0xCu);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 176);
    *(a1 + 176) = 0;
  }

  v6 = *(a1 + 232);
  if (v6)
  {
    sub_10000AD84(v6);
  }

  sub_1001C321C(a1 + 112);
  sub_1001C329C(a1 + 80);
  sub_1001C331C(a1 + 48);

  v7 = *(a1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_1002D26D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100020444(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002D26E0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 144));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 152);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#backoff,Invalidating backoff resume manager for session identifier %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D2834;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 152);
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#backoff,Invalidated backoff resume manager for session identifier %@", buf, 0xCu);
  }
}

void sub_1002D2834(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1002D4EEC((v1 + 6));
  sub_1002D28B4(v1);
  sub_100224878((v1 + 10));
  v2 = v1[28];
  if (v2)
  {
    sub_100222920(v2);
    v3 = v1[29];
    v1[28] = 0;
    v1[29] = 0;
    if (v3)
    {
      sub_10000AD84(v3);
    }
  }

  v4 = v1[20];
  if (v4)
  {

    dispatch_source_cancel(v4);
  }
}

void sub_1002D28B4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  sub_1002D4F70(a1 + 112);
  [*(a1 + 176) invalidate];
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#backoff,Stopped monitoring screen state", v4, 2u);
  }
}

void sub_1002D2948(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[18]);
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([v2 BOOLForKey:@"NISessionIgnoreMotionBackoff"])
  {
    *(a1 + 32) = 1;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#backoff,Not monitoring motion activity. NISessionIgnoreMotionBackoff is set to true.", buf, 2u);
    }
  }

  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = dispatch_time(0, 50000000);
  v7 = a1[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1002D2AA4;
  v8[3] = &unk_1009A33A0;
  v8[4] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_after(v6, v7, v8);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1002D2AA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#backoff,To start monitoring screen state and motion state", v8, 2u);
        }

        if (*(v5 + 16) == 1)
        {
          sub_1002D2B90(v5);
        }

        if (*(v5 + 17) == 1)
        {
          v7 = *(v5 + 224);
          if (v7)
          {
            if (*(v5 + 32) == 1)
            {
              sub_1002236D8(v7);
            }

            else
            {
              sub_100222DF0(v7);
            }
          }
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_1002D2B90(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[5]);
  v2 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1002D36B8;
  v10[3] = &unk_1009A3430;
  v10[4] = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v2 setTransitionHandler:v10];
  v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3];
  v7 = a1[22];
  a1[22] = v6;

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#backoff,Started monitoring screen state", v9, 2u);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1002D2CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002D2D00(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D2D1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002D2D2C(uint64_t a1, unsigned __int8 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 144));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002D1DAC((a1 + 16));
    sub_1002D2F3C(a2);
    v5 = v13;
    if (v14 < 0)
    {
      v5 = *v13;
    }

    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v16 = v5;
    v17 = 2080;
    v18 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#backoff,Configuration update.\nCurrent configuration = \n%sConfiguration update =\n%s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(*v13);
    }
  }

  v7 = *a2;
  if (v7 != *(a1 + 18))
  {
    *(a1 + 18) = v7;
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#backoff,Config changed. Generating new recommendation", v13, 2u);
    }

    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002D32C8;
    v10[3] = &unk_10098AD98;
    v10[4] = a1;
    dispatch_async(v9, v10);
  }
}

void sub_1002D2F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002D2F3C(unsigned __int8 *a1)
{
  sub_100193120(v13);
  v2 = sub_10000EA44(&v14, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v18.__locale_) = 9;
  v4 = sub_10000EA44(&v14, &v18, 1);
  sub_10000EA44(v4, "'allowLockScreenOnly': ", 23);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = sub_10000EA44(v6, ",", 1);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  v9 = sub_10000EA44(&v14, "}", 1);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v14 = v11;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002D329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_100193C68(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D32D0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  if (*(a1 + 20) == 1)
  {
    v2 = sub_1002D3C3C(a1);
    if ((v2 & 0x100000000) != 0)
    {
      v3 = v2;
      if (*(a1 + 212) == 1 && *(a1 + 208) == v2)
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v3 ? "Resume" : "Suspend";
          sub_100004A08(buf, v16);
          v17 = v27 >= 0 ? buf : *buf;
          *v22 = 136315138;
          *&v22[4] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#backoff,new recommendation %s is same as current recommendation, return", v22, 0xCu);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        *(a1 + 208) = v2;
        *(a1 + 212) = 1;
        ++*(a1 + 248);
        v5 = sub_100005288();
        v6 = qword_1009F9820;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(a1 + 212) & 1) == 0)
          {
            sub_1000195BC();
          }

          if (*(a1 + 208))
          {
            v7 = "Resume";
          }

          else
          {
            v7 = "Suspend";
          }

          v8 = v22;
          sub_100004A08(v22, v7);
          if (v23 < 0)
          {
            v8 = *v22;
          }

          sub_1002D3EF0(*(a1 + 184), v20);
          v9 = v21;
          v10 = v20[0];
          sub_1002225C8(*(a1 + 240), __p);
          v11 = v20;
          if (v9 < 0)
          {
            v11 = v10;
          }

          if (v19 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v13 = *(a1 + 248);
          *buf = 136316162;
          *&buf[4] = v8;
          v25 = 2048;
          v26 = v5;
          v27 = 2080;
          v28 = v11;
          v29 = 2080;
          v30 = v12;
          v31 = 2048;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#backoff,Generated tentative recommendation %s at time %f with screen state %s, motion state %s, event_id %lld", buf, 0x34u);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          if (v23 < 0)
          {
            operator delete(*v22);
          }
        }

        if (*(a1 + 200) != 1)
        {
          goto LABEL_40;
        }

        v14 = v5 - *(a1 + 192);
        if (v14 < 0.0)
        {
          sub_1004BA3F4();
        }

        if (*(a1 + 160) || v14 < *(a1 + 24))
        {
          sub_1002D4658(a1);
        }

        else
        {
LABEL_40:
          sub_1002D437C(a1);
        }
      }
    }
  }
}

void sub_1002D35B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1002D3600(uint64_t a1, void *a2)
{
  if (*(a1 + 224))
  {
    v2 = *(a1 + 40);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002D3694;
    v4[3] = &unk_10098A450;
    v4[4] = a2;
    v4[5] = a1;
    v3 = a2;
    dispatch_sync(v2, v4);
  }
}

void sub_1002D3694(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 224);
  if (v2)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      sub_100222AA4(v2, *(a1 + 32));
    }
  }
}

void sub_1002D36B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 40);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1002D37E8;
        block[3] = &unk_1009A3400;
        v15 = *(a1 + 40);
        v20 = v13;
        v21 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v7;
        v18 = v8;
        v19 = v9;
        dispatch_async(v14, block);

        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }
      }

      sub_10000AD84(v12);
    }
  }
}

void sub_1002D37E8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v5 = v3;
      v6 = *(a1 + 56);
      if (v6)
      {
        sub_1002D3860(v6, v4, *(a1 + 40));
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_1002D3860(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v25 = v4;
  dispatch_assert_queue_V2(*(a1 + 40));
  if (v4)
  {
    v5 = [v4 displayBacklightLevel];
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v6 = [v4 elements];
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    v8 = v5;
    if (v7)
    {
      v9 = 0;
      v10 = *v32;
      v11 = FBSDisplayLayoutElementLockScreenIdentifier;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [*(*(&v31 + 1) + 8 * i) identifier];
          v14 = [v13 isEqualToString:v11];

          v9 |= v14;
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);

      if (v9)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {

      v15 = 2;
    }

    if (v8 <= 0)
    {
      v15 = 3;
    }

    if (*(a1 + 184) != v15)
    {
      *(a1 + 184) = v15;
      v17 = qword_1009F9820;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_1002D3EF0(*(a1 + 184), __p);
        v18 = v30 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#backoff,New screen state is %s", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v19 = *a1;
      v20 = *(a1 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(a1 + 184);
      if (*(a1 + 136))
      {
        v22 = *(a1 + 144);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1002D3F04;
        block[3] = &unk_1009A3460;
        block[4] = a1;
        block[5] = v19;
        v27 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v21;
        dispatch_async(v22, block);
        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        v21 = *(a1 + 184);
      }

      if ((v21 - 1) >= 2)
      {
        if (v21 == 3)
        {
          v24 = *(a1 + 224);
          if (v24)
          {
            if ((*(a1 + 32) & 1) == 0)
            {
              sub_1002231D8(v24);
              sub_1002D4018(a1);
            }
          }
        }
      }

      else
      {
        v23 = *(a1 + 224);
        if (v23 && (*(a1 + 32) & 1) == 0)
        {
          sub_100223460(v23);
        }
      }

      sub_1002D32D0(a1);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }
    }
  }

  else
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA420(v16);
    }

    *(a1 + 184) = 0;
  }
}

uint64_t sub_1002D3C10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D3C2C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

unint64_t sub_1002D3C3C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002D3EF0(*(a1 + 184), v17);
    v3 = v18;
    v4 = v17[0];
    sub_1002225C8(*(a1 + 240), __p);
    v5 = v17;
    if (v3 < 0)
    {
      v5 = v4;
    }

    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = *(a1 + 32);
    *buf = 136315650;
    v20 = v5;
    v21 = 2080;
    *v22 = v6;
    *&v22[8] = 1024;
    *&v22[10] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#backoff,getRecommendation() with current screen state is %s, current motion state is %s, ignore motion is %d", buf, 0x1Cu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (*(a1 + 32) == 1 && (*(a1 + 18) & 1) == 0)
  {
    v8 = *(a1 + 184);
    if (v8 < 4)
    {
      v9 = qword_10056A340[v8];
      v10 = &unk_10056A360;
LABEL_26:
      v11 = v10[v8];
      return v11 | v9;
    }
  }

  v9 = *(a1 + 184);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      if ((*(a1 + 18) & 1) == 0)
      {
        v8 = *(a1 + 240);
        if (v8 < 3)
        {
          v9 = qword_10056A380[v8];
          v10 = &unk_10056A398;
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }

    else if (v9 != 3)
    {
      goto LABEL_28;
    }

    v11 = 0;
    v9 = &_mh_execute_header;
    return v11 | v9;
  }

  v11 = *(a1 + 184);
  if (v9)
  {
    if (v9 == 1)
    {
      v9 = &_mh_execute_header;
      v11 = 1;
      return v11 | v9;
    }

LABEL_28:
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BA464(v13);
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/BackoffResumeManager/NIServerBackoffResumeManager.mm";
      v21 = 1024;
      *v22 = 273;
      *&v22[4] = 2080;
      *&v22[6] = "_getRecommendation";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#backoff,%s:%d: assertion failure in %s", buf, 0x1Cu);
    }

    abort();
  }

  return v11 | v9;
}

void sub_1002D3EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002D3F04(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40) && *(v3 + 136))
      {
        sub_1002D3F98(v3 + 112, *(a1 + 56));
      }

      sub_10000AD84(v5);
    }
  }
}

uint64_t sub_1002D3F98(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1002D3FEC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D4008(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002D4018(uint64_t a1)
{
  if (*(a1 + 168))
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#backoff,cancelling boost backoff timer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 168));
    v3 = *(a1 + 168);
    *(a1 + 168) = 0;
  }
}

void sub_1002D40A4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  sub_1002D4018(a1);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 40));
  v3 = *(a1 + 168);
  *(a1 + 168) = v2;

  v4 = *(a1 + 168);
  v5 = dispatch_time(0, llround(6.0e10));
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 168);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3321888768;
  handler[2] = sub_1002D42A4;
  handler[3] = &unk_1009A3490;
  handler[4] = a1;
  handler[5] = v6;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(*(a1 + 168));
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#backoff,Re-armed stationary backoff timer.", v10, 2u);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1002D4210(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40) && *(v3 + 224))
      {
        sub_100224130(v3 + 80, *(a1 + 56));
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_1002D42A4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#backoff,boost backoff ended, re-enabling motion detector", v7, 2u);
        }

        sub_100223460(*(v3 + 224));
      }

      sub_10000AD84(v5);
    }
  }
}

_BYTE *sub_1002D435C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = "Resume";
  }

  else
  {
    v2 = "Suspend";
  }

  return sub_100004A08(a2, v2);
}

void sub_1002D437C(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[5]);
  if (*(a1 + 20) == 1)
  {
    if ((*(a1 + 212) & 1) == 0)
    {
      sub_1004BA4A8();
    }

    v2 = *(a1 + 52);
    if (*(a1 + 220) == 1)
    {
      v3 = *(a1 + 54);
      if (v3 == v2)
      {
        v4 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        LOWORD(__p[0]) = 0;
        v5 = "#backoff,Not delivering a duplicate recommendation.";
LABEL_30:
        v15 = v4;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v5, __p, 2u);
        return;
      }

      if (v2 == 1 && v3)
      {
LABEL_28:
        v4 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        LOWORD(__p[0]) = 0;
        v5 = "#backoff,Should not give a 'resume' decision if never told to 'backoff'. Return.";
        goto LABEL_30;
      }
    }

    else if (v2 == 1)
    {
      goto LABEL_28;
    }

    v6 = qword_1009F9820;
    if (a1[9])
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v2 ? "Resume" : "Suspend";
        sub_100004A08(__p, v8);
        v9 = v21 >= 0 ? __p : __p[0];
        v10 = a1[31];
        *buf = 136315394;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#backoff,To deliver recommendation %s with event id %lld", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 54) = v2;
      *(a1 + 220) = 1;
      v11 = sub_100005288();
      *(a1 + 24) = v11;
      *(a1 + 200) = 1;
      v12 = *a1;
      v13 = a1[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a1[18];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_1002D47D4;
      block[3] = &unk_1009A34C0;
      block[4] = a1;
      block[5] = v12;
      v17 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v11;
      v19 = v2;
      dispatch_async(v14, block);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v5 = "#backoff,Delivering recommendation fails because of invalid BackoffResumeHandler";
      v15 = v6;
      goto LABEL_31;
    }
  }
}

void sub_1002D4658(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  sub_1002D48D0(a1);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 40));
  v3 = *(a1 + 160);
  *(a1 + 160) = v2;

  v4 = *(a1 + 160);
  v5 = dispatch_time(0, llround(*(a1 + 24) * 1000000000.0));
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 248);
  v9 = *(a1 + 160);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3321888768;
  handler[2] = sub_1002D495C;
  handler[3] = &unk_1009A34F0;
  handler[4] = a1;
  handler[5] = v6;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v8;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(*(a1 + 160));
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#backoff,Re-armed delayed processing timer.", v11, 2u);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1002D47D4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40) && *(v3 + 72))
      {
        sub_1002D4870(v3 + 48, *(a1 + 64), *(v3 + 184), *(a1 + 56));
      }

      sub_10000AD84(v5);
    }
  }
}

uint64_t sub_1002D4870(uint64_t a1, int a2, int a3, double a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void sub_1002D48D0(uint64_t a1)
{
  if (*(a1 + 160))
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#backoff,Canceling delayed processing timer.", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 160));
    v3 = *(a1 + 160);
    *(a1 + 160) = 0;
  }
}

void sub_1002D495C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        if (a1[7] == v3[31])
        {
          sub_1002D48D0(v3);
        }

        sub_1002D437C(v3);
      }

      sub_10000AD84(v5);
    }
  }
}

uint64_t sub_1002D49FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1002D4B38(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A3530;
  sub_1002D4C34(&v3, (a1 + 3), a2, a3);
}

void sub_1002D4BD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A3530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002D4C34(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = *(a4 + 2);
  operator new();
}

void sub_1002D4D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001C329C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1002D4DA4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A3580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1002D4DDC(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_1002D4E08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1002D4EEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1002D4F70(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const __CFString *sub_1002D6258(uint64_t a1)
{
  if (!a1)
  {
    return @"Default";
  }

  if (a1 != 10)
  {
    sub_1004BA500();
  }

  return @"Large";
}

void sub_1002D63A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v7 = [v6 discoveryToken];
  v8 = [v7 rawToken];

  v43 = v8;
  v9 = [v8 length];
  v10 = 0;
  if (v9)
  {
    sub_100009838(&__p, v9);
    v10 = __p;
  }

  else if (v45 != __p)
  {
    v45 = __p;
  }

  [v8 getBytes:v10 length:{objc_msgSend(v8, "length")}];
  v11 = [v6 relationship] - 1;
  if (v11 >= 8)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_10056A424[v11];
  }

  [v6 distance];
  v14 = v13;
  v15 = NINearbyObjectDistanceNotAvailable;
  [v6 direction];
  v40 = v16;
  v39 = NINearbyObjectDirectionNotAvailable;
  if (v14 == v15)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    [v6 distance];
    v18 = v17;
    v19 = 1;
  }

  v20 = vceqq_f32(v40, v39);
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) != 0)
  {
    v24 = 0;
  }

  else
  {
    [v6 direction];
    v41 = v21;
    [v6 direction];
    v39 = v22;
    [v6 direction];
    v2 = v41;
    v3 = v39.f32[1];
    v4 = v23;
    v24 = 1;
  }

  [v6 signalStrength];
  if (v25 == *&NINearbyObjectSignalStrengthNotAvailable)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    [v6 signalStrength];
    v27 = v26;
    v28 = 1;
  }

  v29 = [v6 remoteTxAntennaMask];
  if (v29 == NINearbyObjectRemoteTxAntennaMaskNotAvailable)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v31 = [v6 remoteTxAntennaMask];
    v30 = 1;
  }

  [v6 boundedRegionRange];
  v42 = v28;
  v33 = v12;
  if (v32 == *&NINearbyObjectRegionBoundaryRangeNotAvailable)
  {
    v36 = 0;
    v35 = 0.0;
  }

  else
  {
    [v6 boundedRegionRange];
    v35 = v34;
    v36 = 1;
  }

  v37 = [v6 discoveryToken];
  v38 = [v37 hash];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100009A48(a2, __p, v45, v45 - __p);
  *(a2 + 24) = v38;
  *(a2 + 32) = v33;
  *(a2 + 36) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v24;
  *(a2 + 56) = v2;
  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  *(a2 + 80) = v24;
  *(a2 + 88) = v27;
  *(a2 + 96) = v42;
  *(a2 + 104) = v31 | (v30 << 8);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = v35;
  *(a2 + 152) = v36;

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }
}

void sub_1002D66A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002D6720()
{
  v0 = objc_autoreleasePoolPush();
  v8 = xmmword_10056A3B0;
  v9[0] = unk_10056A3C0;
  sub_1001BD0B0(qword_1009F3E08, &v8, 4);
  xmmword_1009F3E20 = xmmword_100563BD0;
  *algn_1009F3E30 = xmmword_100563BE0;
  qword_1009F3E48 = 0;
  unk_1009F3E50 = 0;
  qword_1009F3E40 = 0x3FD999999999999ALL;
  unk_1009F3E58 = xmmword_100563BF0;
  dword_1009F3E68 = 5;
  qword_1009F3E70 = 0x4000000000000000;
  dword_1009F3E78 = 5;
  byte_1009F3E80 = 0;
  *&algn_1009F3E81[3] = 0x30000000ALL;
  xmmword_1009F3E90 = xmmword_100563C00;
  unk_1009F3EA0 = xmmword_100563C10;
  xmmword_1009F3EB0 = xmmword_100563C20;
  qword_1009F3EC0 = 0x3FE3333333333333;
  dword_1009F3EC8 = 3;
  xmmword_1009F3ED0 = xmmword_100563C30;
  unk_1009F3EE0 = xmmword_100563C10;
  xmmword_1009F3EF0 = xmmword_100563C00;
  qword_1009F3F00 = 0x3FE3333333333333;
  byte_1009F3F08 = 0;
  xmmword_1009F3F10 = xmmword_100563C40;
  unk_1009F3F20 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F3F30 = _Q0;
  qword_1009F3F40 = 0xBFD3333333333333;
  xmmword_1009F3F48 = xmmword_100563C60;
  qword_1009F3F58 = 0x3E99999A40000000;
  xmmword_1009F3F60 = xmmword_100563BE0;
  qword_1009F3F78 = 0;
  unk_1009F3F80 = 0;
  qword_1009F3F70 = 0x3FD999999999999ALL;
  xmmword_1009F3F88 = xmmword_100563BF0;
  dword_1009F3F98 = 5;
  qword_1009F3FA0 = 0x4000000000000000;
  dword_1009F3FA8 = 4;
  qword_1009F3FB0 = 0x300000008;
  qword_1009F3FB8 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F3FC0, &v7, 1);
  xmmword_1009F3FD8 = xmmword_100563C70;
  qword_1009F3FE8 = 0x4024000000000000;
  dword_1009F3FF0 = 45;
  byte_1009F3FF8 = 0;
  byte_1009F4010 = 0;
  qword_1009F4018 = 0;
  byte_1009F4020 = 0;
  dword_1009F4024 = 1;
  byte_1009F4028 = 1;
  xmmword_1009F4030 = xmmword_100563C80;
  xmmword_1009F4040 = xmmword_100563C90;
  xmmword_1009F4050 = v6;
  qword_1009F4060 = 0xC059000000000000;
  xmmword_1009F4068 = xmmword_100563CA0;
  qword_1009F4078 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F4080 = xmmword_100563BE0;
  qword_1009F4090 = 0x3FD999999999999ALL;
  xmmword_1009F4098 = 0u;
  unk_1009F40A8 = xmmword_100563BF0;
  dword_1009F40B8 = 5;
  qword_1009F40C0 = 0x4000000000000000;
  dword_1009F40C8 = 10;
  qword_1009F40D0 = 0x4034000000000000;
  dword_1009F40D8 = 3;
  xmmword_1009F40E0 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F3E08, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EBEE8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBEF0, &_mh_execute_header);
  v8 = xmmword_10056A3D0;
  v9[0] = unk_10056A3E0;
  v9[1] = xmmword_10056A3F0;
  v9[2] = unk_10056A400;
  qword_1009F40F8 = 0;
  unk_1009F4100 = 0;
  qword_1009F40F0 = 0;
  sub_10004EEB8(&qword_1009F40F0, &v8, &v10, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F40F0, &_mh_execute_header);
  v8 = xmmword_10056A410;
  qword_1009F4110 = 0;
  unk_1009F4118 = 0;
  qword_1009F4108 = 0;
  sub_10004EEB8(&qword_1009F4108, &v8, v9, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F4108, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002D6B58(id a1)
{
  v1 = os_log_create("com.apple.NearbyInteraction", "LocalDeviceInteraction");
  v2 = qword_1009F4120;
  qword_1009F4120 = v1;
}

void sub_1002D6DE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setAsyncLocalDeviceInteractableDiscoveryTokens:completion replied error: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 40) invalidate];
}

void sub_1002D708C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = [v5 count];
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAsyncInteractableDiscoveryTokens: replied %d tokens. Server error: %@", v9, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  [*(a1 + 40) invalidate];
}

void sub_1002D7374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = [v5 count];
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAsyncActivelyInteractingDiscoveryTokens: replied %d tokens. Server error: %@", v9, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  [*(a1 + 40) invalidate];
}

uint64_t sub_1002D78C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002D78D8(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002D7C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  v37 = v36;

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1002D7D04(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002D814C(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002D8538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1002D85D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002D89F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1002D8A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002D8E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1002D8F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1002D901C(uint64_t a1)
{
  for (i = 0; i != -96; i -= 48)
  {
    v3 = a1 + i;
    if (*(a1 + i + 95) < 0)
    {
      operator delete(*(v3 + 72));
    }

    if (*(v3 + 71) < 0)
    {
      operator delete(*(v3 + 48));
    }
  }

  return a1;
}

uint64_t sub_1002D907C(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  *a1 = off_1009A3790;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 88), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 104) = *(a2 + 2);
    *(a1 + 88) = v9;
  }

  v10 = *a3;
  *a3 = 0;
  v12 = *a4;
  v11 = a4[1];
  *(a1 + 112) = v10;
  *(a1 + 120) = v12;
  *(a1 + 128) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  *(a1 + 136) = *a5;
  *(a1 + 144) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = dispatch_queue_create("com.apple.nearbyd.Rose.ProtobufLogger", 0);
  *(a1 + 152) = v14;
  if (!*(a1 + 120))
  {
    __assert_rtn("Logger", "PRProtobufLogger.cpp", 227, "fTimestampSrc != nullptr");
  }

  if (*(a1 + 112))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1002D9280;
    block[3] = &unk_1009A3800;
    block[4] = a1;
    dispatch_async(v14, block);
  }

  return a1;
}

void sub_1002D9200(_Unwind_Exception *a1)
{
  v4 = *(v1 + 80);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  std::mutex::~mutex(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D9280(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(**(v1 + 112) + 16))(*(v1 + 112));
  result = *(v1 + 112);
  *(v1 + 112) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t sub_1002D9314(uint64_t a1)
{
  *a1 = off_1009A3790;
  v2 = *(a1 + 72);
  if (v2 && sub_10000B4C8(v2))
  {
    sub_1000DE818(*(a1 + 72));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    sub_10000AD84(v7);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1002D940C(uint64_t a1)
{
  sub_1002D9314(a1);

  operator delete();
}

uint64_t sub_1002D9444(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = *(a1 + 72);
  if (!v2 || (sub_10000B4C8(v2) & 1) == 0)
  {
    sub_1002EB6FC();
  }

  std::mutex::unlock((a1 + 8));
  return 1;
}

uint64_t sub_1002D94FC(uint64_t a1, const std::string *a2, const std::string *a3)
{
  sub_100009FF4(v13);
  if (sub_100009FF8(v13, *(a1 + 120)))
  {
    v15 |= 2u;
    v6 = v14;
    if (!v14)
    {
      operator new();
    }

    *(v14 + 44) |= 2u;
    v7 = *(v6 + 24);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 496) |= 1u;
    v8 = *(v7 + 16);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 36) |= 1u;
    v9 = *(v8 + 16);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, a2);
    *(v8 + 36) |= 2u;
    v10 = *(v8 + 24);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, a3);
    v11 = sub_10000A2E0(a1, v13);
  }

  else
  {
    v11 = 0;
  }

  sub_10000A80C(v13);
  return v11;
}

uint64_t sub_1002D9714(uint64_t a1, uint64_t a2, double a3)
{
  if (*a2 != 1)
  {
    return 0;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    sub_1004BA5B4();
  }

  v6 = sub_1002D9AD4(*(a2 + 4));
  v7 = *(a2 + 8) != 0;
  sub_1000798FC(v29);
  if (!sub_100079CA8(v6))
  {
    v17 = "::CLP::LogEntry::Nearbyd::AccessoryType_IsValid(value)";
    v18 = 3578;
    v19 = "set_accessory";
    goto LABEL_26;
  }

  v32 |= 1u;
  v30 = v6;
  if (!sub_100079CC4(v7))
  {
    v17 = "::CLP::LogEntry::Nearbyd::AccessoryActivity_IsValid(value)";
    v18 = 3601;
    v19 = "set_activity";
LABEL_26:
    __assert_rtn(v19, "CLPNearbyd.pb.h", v18, v17);
  }

  v32 |= 2u;
  v31 = v7;
  sub_100009FF4(v26);
  sub_100079EB8(v23, v29);
  if ((sub_100009FF8(v26, *(a1 + 120)) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA5E0();
  }

  v28 |= 2u;
  v8 = v27;
  if (!v27)
  {
    operator new();
  }

  *(v27 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x400u;
  v10 = *(v9 + 88);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 36) |= 2u;
  v11 = *(v10 + 24);
  if (!v11)
  {
    operator new();
  }

  v12 = v24;
  if (!sub_100079CA8(v24))
  {
    v20 = "::CLP::LogEntry::Nearbyd::AccessoryType_IsValid(value)";
    v21 = 3578;
    v22 = "set_accessory";
    goto LABEL_29;
  }

  v11[7] |= 1u;
  v11[4] = v12;
  v13 = v25;
  if (!sub_100079CC4(v25))
  {
    v20 = "::CLP::LogEntry::Nearbyd::AccessoryActivity_IsValid(value)";
    v21 = 3601;
    v22 = "set_activity";
LABEL_29:
    __assert_rtn(v22, "CLPNearbyd.pb.h", v21, v20);
  }

  v11[7] |= 2u;
  v11[5] = v13;
  *(v9 + 496) |= 0x400u;
  v14 = *(v9 + 88);
  if (!v14)
  {
    operator new();
  }

  sub_100079EBC(v23);
  *(v14 + 36) |= 1u;
  *(v14 + 16) = a3;
  v15 = sub_10000A2E0(a1, v26);
  sub_10000A80C(v26);
  sub_100079EBC(v29);
  return v15;
}

uint64_t sub_1002D9AD4(uint64_t result)
{
  switch(result)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return result;
    default:
      if (result == 999)
      {
        v1 = 999;
      }

      else
      {
        v1 = 0;
      }

      if (result == 998)
      {
        result = 998;
      }

      else
      {
        result = v1;
      }

      break;
  }

  return result;
}

uint64_t sub_1002D9B18(uint64_t a1, int a2, double a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA614();
  }

  sub_100009FF4(v10);
  v6 = sub_1002D9BFC(v10, 1u, *(a1 + 120));
  v7 = *(v6 + 36);
  *(v6 + 28) = a2;
  *(v6 + 36) = v7 | 6;
  *(v6 + 16) = a3;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA648();
  }

  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  return v8;
}

uint64_t sub_1002D9BFC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((sub_100009FF8(a1, a3) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA5E0();
  }

  *(a1 + 60) |= 2u;
  v5 = *(a1 + 48);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 44) |= 2u;
  v6 = *(v5 + 24);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 496) |= 0x100u;
  v7 = *(v6 + 72);
  if (!v7)
  {
    operator new();
  }

  if (!sub_100079CD0(a2))
  {
    sub_10049D7A0();
  }

  *(v7 + 36) |= 1u;
  *(v7 + 24) = a2;
  *(v6 + 496) |= 0x100u;
  if (!*(v6 + 72))
  {
    operator new();
  }

  return *(v6 + 72);
}

uint64_t sub_1002D9D9C(uint64_t a1, int a2, double a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA67C();
  }

  sub_100009FF4(v10);
  v6 = sub_1002D9BFC(v10, 2u, *(a1 + 120));
  v7 = *(v6 + 36);
  *(v6 + 28) = a2;
  *(v6 + 36) = v7 | 6;
  *(v6 + 16) = a3;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA6B0();
  }

  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  return v8;
}

uint64_t sub_1002D9E80(uint64_t a1, int a2, double a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA6E4();
  }

  sub_100009FF4(v10);
  v6 = sub_1002D9BFC(v10, 5u, *(a1 + 120));
  v7 = *(v6 + 36);
  *(v6 + 28) = a2;
  *(v6 + 36) = v7 | 6;
  *(v6 + 16) = a3;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA718();
  }

  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  return v8;
}

uint64_t sub_1002D9F64(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if ((sub_100009FF8(a1, a4) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA5E0();
  }

  *(a1 + 60) |= 2u;
  v7 = *(a1 + 48);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 44) |= 4u;
  v8 = *(v7 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 44) |= 1u;
  v9 = *(v8 + 16);
  if (!v9)
  {
    operator new();
  }

  if (!sub_100094760(a2))
  {
    sub_10049D8D4();
  }

  v9[65] |= 1u;
  v9[4] = a2;
  if ((sub_100094770(a3) & 1) == 0)
  {
    sub_10049D900();
  }

  v9[65] |= 2u;
  v9[5] = a3;
  *(v8 + 44) |= 1u;
  if (!*(v8 + 16))
  {
    operator new();
  }

  return *(v8 + 16);
}

uint64_t sub_1002DA13C(unsigned int *a1, unsigned int a2)
{
  v4 = sub_100094788(a2);
  if (v4)
  {
    *a1 = a2;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA74C();
  }

  return v4;
}

_BYTE *sub_1002DA1B0(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_1002DA260(uint64_t a1, const std::string *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA7BC();
  }

  sub_100009FF4(v9);
  v4 = sub_1002D9F64(v9, 1, 0, *(a1 + 120));
  *(v4 + 260) |= 4u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 28) |= 1u;
  v6 = *(v5 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, a2);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA7F0();
  }

  v7 = sub_10000A2E0(a1, v9);
  sub_10000A80C(v9);
  return v7;
}

uint64_t sub_1002DA3DC(unsigned int *a1, unsigned int a2)
{
  v4 = sub_1000947C4(a2);
  if (v4)
  {
    *a1 = a2;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA824();
  }

  return v4;
}

BOOL sub_1002DA450(unsigned int *a1, unsigned int a2)
{
  v4 = sub_100079CC4(a2);
  if (v4)
  {
    *a1 = a2;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA894();
  }

  return v4;
}

uint64_t sub_1002DA4C4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_100094788(a2);
  if (v6)
  {
    if ((sub_100094788(a2) & 1) == 0)
    {
      sub_10049DD78();
    }

    v7 = *(a1 + 32);
    *(a1 + 24) = a2;
    *(a1 + 32) = v7 | 3;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 32) |= 2u;
    *(v8 + 24) = a3;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BA74C();
  }

  return v6;
}

uint64_t sub_1002DA5B8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA904();
  }

  sub_100009FF4(v21);
  v4 = sub_1002D9F64(v21, 2, 1u, *(a1 + 120));
  *(v4 + 260) |= 8u;
  v5 = *(v4 + 32);
  if (!v5)
  {
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(v5 + 68) |= 1u;
  v6 = *(v5 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = __rev16(*(a2 + 24));
  v8 = *(v5 + 68);
  v9 = *(a2 + 26);
  v10 = v8 | 6;
  *(v5 + 68) = v8 | 6;
  *(v5 + 24) = v7;
  *(v5 + 28) = v9;
  if (*(a2 + 96) == 1)
  {
    v11 = *(a2 + 36);
    *(v5 + 32) = *(a2 + 34);
    *(v5 + 36) = v11;
    *(v5 + 68) = v8 | 0x3E;
    v12 = *(v5 + 40);
    if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v12, (a2 + 40));
    v13 = *(a2 + 64);
    v14 = *(v5 + 68);
    v15 = *(a2 + 66);
    *(v5 + 68) = v14 | 0xC0;
    *(v5 + 48) = v13;
    *(v5 + 52) = v15;
    v16 = *(a2 + 68);
    v10 = v14 | 0x1C0;
    *(v5 + 68) = v14 | 0x1C0;
    *(v5 + 56) = v16;
  }

  v17 = *(a2 + 104);
  if ((v17 & 0x100000000) != 0)
  {
    *(v5 + 68) = v10 | 0x200;
    *(v5 + 60) = v17;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA938();
  }

  v18 = sub_10000A2E0(a1, v21);
  sub_10000A80C(v21);
  return v18;
}

void sub_1002DA828(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1002DA818);
}

BOOL sub_1002DA840(uint64_t a1, unsigned int a2)
{
  result = sub_100079CC4(a2);
  if (!result)
  {
    sub_10049DC70();
  }

  *(a1 + 88) |= 2u;
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_1002DA884(uint64_t a1, unsigned __int8 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA96C();
  }

  sub_100009FF4(v25);
  v4 = sub_1002D9F64(v25, 1, 0x1Au, *(a1 + 120));
  *(v4 + 260) |= 0x8000000u;
  v5 = *(v4 + 224);
  if (!v5)
  {
    operator new();
  }

  if (a2[1] != 1 || a2[417] != 1 || a2[419] != 1 || a2[422] != 1 || a2[426] != 1 || a2[429] != 1 || a2[3] != 1 || a2[5] != 1 || a2[432] != 1 || a2[442] != 1 || a2[445] != 1 || a2[447] != 1 || a2[7] != 1 || a2[78] != 1 || (a2[24] & 1) == 0)
  {
    v22 = qword_1009F9820;
    v21 = 0;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    LOWORD(v24[0]) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "pblogger, Test NMI range enable params not available", v24, 2u);
LABEL_39:
    v21 = 0;
    goto LABEL_40;
  }

  v6 = *a2;
  v24[0] = 0;
  if (!sub_1002DA450(v24, v6))
  {
    goto LABEL_39;
  }

  sub_1002DA840(v5, v24[0]);
  if (a2[426] != 1)
  {
    goto LABEL_41;
  }

  v7 = *(a2 + 212);
  v8 = *(v5 + 88);
  *(v5 + 88) = v8 | 4;
  *(v5 + 28) = v7;
  if (a2[417] != 1)
  {
    goto LABEL_41;
  }

  v9 = a2[416];
  *(v5 + 88) = v8 | 0xC;
  *(v5 + 32) = v9;
  if (a2[419] != 1)
  {
    goto LABEL_41;
  }

  v10 = a2[418];
  *(v5 + 88) = v8 | 0x1C;
  *(v5 + 36) = v10;
  if (a2[422] != 1)
  {
    goto LABEL_41;
  }

  v11 = *(a2 + 210);
  *(v5 + 88) = v8 | 0x3C;
  *(v5 + 40) = v11;
  if (a2[429] != 1)
  {
    goto LABEL_41;
  }

  *(v5 + 44) = a2[428];
  v12 = a2[442];
  *(v5 + 88) = v8 | 0xFC;
  *(v5 + 48) = v12;
  if (a2[3] != 1)
  {
    goto LABEL_41;
  }

  v13 = a2[2];
  *(v5 + 88) = v8 | 0x1FC;
  *(v5 + 52) = v13;
  if (a2[5] != 1)
  {
    goto LABEL_41;
  }

  v14 = a2[4];
  *(v5 + 88) = v8 | 0x3FC;
  *(v5 + 56) = v14;
  if (a2[432] != 1)
  {
    goto LABEL_41;
  }

  v15 = *(a2 + 215);
  *(v5 + 88) = v8 | 0x7FC;
  *(v5 + 60) = v15;
  if (a2[445] != 1)
  {
    goto LABEL_41;
  }

  v16 = a2[444];
  *(v5 + 88) = v8 | 0xFFC;
  *(v5 + 64) = v16;
  if (a2[447] != 1)
  {
    goto LABEL_41;
  }

  v17 = a2[446];
  *(v5 + 88) = v8 | 0x1FFC;
  *(v5 + 68) = v17;
  if (a2[7] != 1 || (v18 = a2[6], *(v5 + 88) = v8 | 0x3FFC, *(v5 + 72) = v18, a2[78] != 1) || (v19 = *(a2 + 38), *(v5 + 88) = v8 | 0x7FFC, *(v5 + 76) = v19, (a2[24] & 1) == 0))
  {
LABEL_41:
    sub_1000195BC();
  }

  v20 = a2[22] & 1;
  *(v5 + 88) = v8 | 0xFFFC;
  *(v5 + 80) = v20;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA9A0();
  }

  v21 = sub_10000A2E0(a1, v25);
LABEL_40:
  sub_10000A80C(v25);
  return v21;
}

void sub_1002DAC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A80C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DAC50(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, char a5)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BA9D4();
  }

  sub_100009FF4(v106);
  v10 = sub_1002D9F64(v106, 3, 0xDu, *(a1 + 120));
  *(v10 + 260) |= 0x8000u;
  v11 = *(v10 + 128);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 468) |= 1u;
  v12 = *(v11 + 16);
  if (!v12)
  {
    operator new();
  }

  if ((sub_1002DA4C4(v12, *(a2 + 48), *(a2 + 49)) & 1) == 0 || (v105 = 0, (sub_1002DA3DC(&v105, a2[100]) & 1) == 0))
  {
    v38 = 0;
    goto LABEL_33;
  }

  v13 = v105;
  if ((sub_1000947C4(v105) & 1) == 0)
  {
    __assert_rtn("set_session_type", "CLPRoseCommunicationEvent.pb.h", 11711, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseSessionType_IsValid(value)");
  }

  v14 = *(v11 + 468);
  *(v11 + 168) = *(a2 + 13);
  v15 = *(a2 + 56);
  *(v11 + 32) = v13;
  *(v11 + 36) = v15;
  v16 = a2[114];
  v14 |= 0x100001Au;
  *(v11 + 468) = v14;
  *(v11 + 48) = v16;
  *(&__str.__r_.__value_.__s + 23) = 8;
  __str.__r_.__value_.__r.__words[0] = *(a2 + 115);
  __str.__r_.__value_.__s.__data_[8] = 0;
  *(v11 + 468) = v14 | 0x20;
  v17 = *(v11 + 40);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, &__str);
  v18 = *(v11 + 468);
  if (!*(v12 + 24))
  {
    v19 = *(a2 + 16);
    v20 = v18 | 0x10000;
    *(v11 + 468) = v18 | 0x10000;
    *(v11 + 96) = v19;
    if (*(a2 + 132))
    {
      v21 = *(a2 + 65);
      *(v11 + 472) |= 4u;
      *(v11 + 248) = v21;
    }

    if (*(a2 + 136))
    {
      v22 = *(a2 + 67);
      *(v11 + 472) |= 8u;
      *(v11 + 256) = v22;
    }

    v23 = *(a2 + 17);
    v24 = *(a2 + 18);
    if (v23 != v24)
    {
      v103 = a4;
      v25 = v23 + 5;
      v26 = 1;
      do
      {
        v27 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v108 = v26;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "pblogger, Logger::logRangeResult: aoaHypothesis %d", buf, 8u);
          ++v26;
        }

        v28 = *(v11 + 204);
        v29 = *(v11 + 200);
        if (v29 >= v28)
        {
          if (v28 == *(v11 + 208))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 192), v28 + 1);
            v28 = *(v11 + 204);
          }

          *(v11 + 204) = v28 + 1;
          sub_1000CCEC8();
        }

        v30 = *(v11 + 192);
        *(v11 + 200) = v29 + 1;
        v31 = *(v30 + 8 * v29);
        v32 = v25 - 5;
        v33 = *(v31 + 76);
        *(v31 + 16) = *(v25 - 5);
        v34 = *(v25 - 3);
        v35 = v33 | 7;
        *(v31 + 76) = v33 | 7;
        *(v31 + 32) = v34;
        if (*(v25 - 8) == 1)
        {
          v36 = *(v25 - 2);
          v35 = v33 | 0x17;
          *(v31 + 76) = v33 | 0x17;
          *(v31 + 48) = v36;
        }

        if (*(v25 + 8) == 1)
        {
          v37 = *v25;
          *(v31 + 76) = v35 | 0x20;
          *(v31 + 56) = v37;
        }

        v25 += 7;
      }

      while (v32 + 7 != v24);
      v20 = *(v11 + 468);
      a4 = v103;
    }

    v40 = v20 | 0x600;
    *(v11 + 468) = v20 | 0x600;
    *(v11 + 64) = *(a2 + 10);
    if (*(a2 + 46))
    {
      v41 = *(a2 + 22);
      *(v11 + 472) |= 0x2000000u;
      *(v11 + 392) = v41;
    }

    if (*(a2 + 50))
    {
      v42 = *(a2 + 24);
      v40 = v20 | 0x20000600;
      *(v11 + 468) = v20 | 0x20000600;
      *(v11 + 216) = v42;
    }

    if (*(a2 + 54))
    {
      v43 = *(a2 + 26);
      v40 |= 0x40000000u;
      *(v11 + 468) = v40;
      *(v11 + 224) = v43;
    }

    if (*(a2 + 58))
    {
      v44 = *(a2 + 28);
      v40 |= 0x80000000;
      *(v11 + 468) = v40;
      *(v11 + 232) = v44;
    }

    v45 = v40 | 0x180000;
    *(v11 + 468) = v40 | 0x180000;
    *(v11 + 120) = *(a2 + 15);
    if (*(a2 + 66))
    {
      v46 = *(a2 + 32);
      v45 = v40 | 0x580000;
      *(v11 + 468) = v40 | 0x580000;
      *(v11 + 152) = v46;
    }

    if (*(a2 + 70))
    {
      v47 = *(a2 + 34);
      v45 |= 0x800000u;
      *(v11 + 468) = v45;
      *(v11 + 160) = v47;
    }

    v48 = *(v11 + 472);
    *(v11 + 300) = *(a2 + 73);
    v49 = *(a2 + 37);
    v18 = v45 | 0x8000000;
    *(v11 + 468) = v45 | 0x8000000;
    *(v11 + 184) = v49;
    v50 = a2[312];
    v51 = v48 | 0x4001;
    *(v11 + 472) = v48 | 0x4001;
    *(v11 + 240) = v50;
    if (*(a2 + 82))
    {
      v52 = *(a2 + 40);
      v51 = v48 | 0x4011;
      *(v11 + 472) = v48 | 0x4011;
      *(v11 + 264) = v52;
    }

    if (*(a2 + 86))
    {
      v53 = *(a2 + 42);
      v51 |= 0x20u;
      *(v11 + 472) = v51;
      *(v11 + 272) = v53;
    }

    if (*(a2 + 90))
    {
      v54 = *(a2 + 44);
      v51 |= 0x40u;
      *(v11 + 472) = v51;
      *(v11 + 280) = v54;
    }

    if (*(a2 + 98))
    {
      v55 = *(a2 + 48);
      v51 |= 0x200000u;
      *(v11 + 472) = v51;
      *(v11 + 352) = v55;
    }

    if (*(a2 + 102))
    {
      v56 = *(a2 + 50);
      v51 |= 0x400000u;
      *(v11 + 472) = v51;
      *(v11 + 360) = v56;
    }

    if (*(a2 + 106))
    {
      v57 = *(a2 + 52);
      v51 |= 0x800000u;
      *(v11 + 472) = v51;
      *(v11 + 368) = v57;
    }

    if (*(a2 + 110))
    {
      v58 = *(a2 + 54);
      *(v11 + 472) = v51 | 0x1000000;
      *(v11 + 384) = v58;
    }
  }

  if (*(a2 + 4))
  {
    v59 = *(a2 + 1);
    v18 |= 0x2000000u;
    *(v11 + 468) = v18;
    *(v11 + 176) = v59;
  }

  v60 = *(a2 + 144);
  *(v11 + 468) = v18 | 0x4000000;
  *(v11 + 140) = v60;
  v61 = a2[368] != 5;
  if (!sub_100079CC4(v61))
  {
    v97 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseRFChannel_IsValid(value)";
    v98 = 12467;
    v99 = "set_rf_channel";
    goto LABEL_130;
  }

  *(v11 + 472) |= 2u;
  *(v11 + 244) = v61;
  if ((*(a2 + 369) & 0x100) != 0)
  {
    v62 = *(a2 + 369);
    if (sub_1000947E0(v62))
    {
      if (!sub_1000947E0(v62))
      {
        __assert_rtn("set_nb_band", "CLPRoseCommunicationEvent.pb.h", 13148, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseNbBand_IsValid(value)");
      }

      *(v11 + 472) |= 0x80000000;
      *(v11 + 416) = v62;
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BAA08();
    }
  }

  v63 = *(a2 + 93);
  if ((v63 & 0x10000) != 0)
  {
    *(v11 + 476) |= 1u;
    *(v11 + 420) = v63;
  }

  v64 = *(v11 + 472);
  *(v11 + 340) = *(a2 + 188);
  *(v11 + 344) = *(a2 + 189);
  v65 = *(a2 + 190);
  v66 = v64 | 0xE0000;
  *(v11 + 472) = v64 | 0xE0000;
  *(v11 + 348) = v65;
  v67 = *(a2 + 224);
  if ((v67 & 0x100) != 0)
  {
    v66 = v64 | 0x40E0000;
    *(v11 + 472) = v64 | 0x40E0000;
    *(v11 + 380) = v67;
  }

  v68 = *(a2 + 225);
  if ((v68 & 0x100) != 0)
  {
    v66 |= 0x8000000u;
    *(v11 + 472) = v66;
    *(v11 + 400) = v68;
  }

  v69 = *(a2 + 454);
  if ((v69 & 0x10000) != 0)
  {
    v66 |= 0x20000000u;
    *(v11 + 472) = v66;
    *(v11 + 408) = v69;
  }

  v70 = *(a2 + 458);
  if ((v70 & 0x10000) != 0)
  {
    v66 |= 0x40000000u;
    *(v11 + 472) = v66;
    *(v11 + 412) = v70;
  }

  v71 = *(a2 + 10);
  if (v71 == 1)
  {
    if (sub_1000947F0(2))
    {
      v72 = 2;
      goto LABEL_85;
    }

    goto LABEL_129;
  }

  if (v71)
  {
    goto LABEL_86;
  }

  if (!sub_1000947F0(1))
  {
LABEL_129:
    v97 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseRangeResultEventSource_IsValid(value)";
    v98 = 12600;
    v99 = "set_source";
LABEL_130:
    __assert_rtn(v99, "CLPRoseCommunicationEvent.pb.h", v98, v97);
  }

  v72 = 1;
LABEL_85:
  v66 = *(v11 + 472) | 0x80;
  *(v11 + 472) = v66;
  *(v11 + 288) = v72;
LABEL_86:
  *(v11 + 292) = *(a2 + 28);
  *(v11 + 296) = a2[4];
  *(v11 + 297) = a4;
  *(v11 + 298) = a5;
  v73 = *(a2 + 6);
  *(v11 + 472) = v66 | 0x1F00;
  *(v11 + 304) = v73;
  if (*(a3 + 36) == 1)
  {
    *(v11 + 472) = v66 | 0x3F00;
    v74 = *(v11 + 312);
    if (!v74)
    {
      operator new();
    }

    v75 = *a3;
    if (sub_100094800(*a3))
    {
      v74[13] |= 1u;
      v74[4] = v75;
      v76 = *(a3 + 4);
      if (sub_100094800(v76))
      {
        v74[13] |= 2u;
        v74[5] = v76;
        v77 = *(a3 + 8);
        if (sub_100094800(v77))
        {
          v74[13] |= 4u;
          v74[6] = v77;
          v78 = *(a3 + 12);
          if (sub_100079CD0(v78))
          {
            v74[13] |= 8u;
            v74[7] = v78;
            v79 = *(a3 + 16);
            if (sub_100079CD0(v79))
            {
              v74[13] |= 0x10u;
              v74[8] = v79;
              v80 = *(a3 + 20);
              if (sub_100079CD0(v80))
              {
                v74[13] |= 0x20u;
                v74[9] = v80;
                v81 = *(a3 + 24);
                if (sub_100079CC4(v81))
                {
                  v74[13] |= 0x40u;
                  v74[10] = v81;
                  v82 = *(a3 + 28);
                  if (sub_100079CC4(v82))
                  {
                    v74[13] |= 0x80u;
                    v74[11] = v82;
                    goto LABEL_98;
                  }

                  v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckRSSIsResult_IsValid(value)";
                  v101 = 11646;
                  v102 = "set_check_rssis_result";
                }

                else
                {
                  v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckTimestampsResult_IsValid(value)";
                  v101 = 11623;
                  v102 = "set_check_timestamps_result";
                }
              }

              else
              {
                v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckFPSNRsOkForSensorFusionResult_IsValid(value)";
                v101 = 11600;
                v102 = "set_check_fp_snrs_ok_for_sensor_fusion_result";
              }
            }

            else
            {
              v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckToaCirResult_IsValid(value)";
              v101 = 11577;
              v102 = "set_check_toa_cir_result";
            }
          }

          else
          {
            v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckAoaCirResult_IsValid(value)";
            v101 = 11554;
            v102 = "set_check_aoa_cir_result";
          }
        }

        else
        {
          v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckFPIndicesResult_IsValid(value)";
          v101 = 11531;
          v102 = "set_check_fp_indices_result";
        }
      }

      else
      {
        v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckFPSNRsResult_IsValid(value)";
        v101 = 11508;
        v102 = "set_check_fp_snrs_result";
      }
    }

    else
    {
      v100 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::ME_CheckPDOAResult_IsValid(value)";
      v101 = 11485;
      v102 = "set_check_pdoa_result";
    }

    __assert_rtn(v102, "CLPRoseCommunicationEvent.pb.h", v101, v100);
  }

LABEL_98:
  v83 = *(a2 + 9);
  v84 = *(a2 + 10);
  if (v83 != v84)
  {
    v85 = *(v11 + 328);
    do
    {
      v86 = *v83;
      if (v85 == *(v11 + 332))
      {
        sub_1000778F4((v11 + 320), v85 + 1);
        v85 = *(v11 + 328);
      }

      *(*(v11 + 320) + 8 * v85++) = v86;
      *(v11 + 328) = v85;
      ++v83;
    }

    while (v83 != v84);
  }

  if (a2[1])
  {
    v87 = *a2;
    *(v11 + 472) |= 0x10000u;
    *(v11 + 336) = v87;
  }

  v88 = *(a2 + 191);
  if ((v88 & 0x100) != 0)
  {
    *(v11 + 472) |= 0x100000u;
    *(v11 + 376) = v88;
  }

  v89 = *(a2 + 462);
  if ((v89 & 0x10000) != 0)
  {
    *(v11 + 476) |= 2u;
    *(v11 + 424) = v89;
  }

  v90 = *(a2 + 233);
  if ((v90 & 0x100) != 0)
  {
    *(v11 + 476) |= 4u;
    *(v11 + 428) = v90;
  }

  if (*(a2 + 120))
  {
    v91 = *(a2 + 59);
    *(v11 + 476) |= 8u;
    *(v11 + 432) = v91;
  }

  if (*(a2 + 124))
  {
    v92 = *(a2 + 61);
    *(v11 + 476) |= 0x10u;
    *(v11 + 440) = v92;
  }

  v93 = *(a2 + 252);
  if ((v93 & 0x100) != 0)
  {
    *(v11 + 476) |= 0x20u;
    *(v11 + 448) = v93;
  }

  v94 = *(a2 + 253);
  if ((v94 & 0x100) != 0)
  {
    *(v11 + 476) |= 0x40u;
    *(v11 + 452) = v94;
  }

  v95 = *(a2 + 254);
  if ((v95 & 0x100) != 0)
  {
    *(v11 + 476) |= 0x80u;
    *(v11 + 456) = v95;
  }

  v96 = *(a2 + 255);
  if ((v96 & 0x100) != 0)
  {
    *(v11 + 476) |= 0x100u;
    *(v11 + 460) = v96;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAA78();
  }

  v38 = sub_10000A2E0(a1, v106);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_33:
  sub_10000A80C(v106);
  return v38;
}

std::string *sub_1002DB858(uint64_t a1, std::string *__str)
{
  *(a1 + 468) |= 0x20u;
  v2 = *(a1 + 40);
  if (v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v2, __str);
}

uint64_t sub_1002DB8D4(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAAAC();
  }

  v74 = *a2;
  v3 = *(a2 + 3);
  v75 = *(a2 + 2);
  v76 = 0;
  v77 = 0;
  v78 = 0;
  sub_1001895D0(&v76, v3, *(a2 + 4), 0x86BCA1AF286BCA1BLL * ((*(a2 + 4) - v3) >> 3));
  v79 = 0;
  v80 = 0;
  v81 = 0;
  sub_100189C1C(&v79, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 5);
  sub_100009FF4(v70);
  v4 = sub_1002D9F64(v70, 3, 0xFu, *(a1 + 120));
  *(v4 + 260) |= 0x20000u;
  v5 = *(v4 + 144);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 96) |= 1u;
  v6 = *(v5 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = v74;
  *(v6 + 32) |= 2u;
  *(v6 + 24) = v7;
  v69 = 0;
  if (sub_1002DA3DC(&v69, BYTE2(v74)))
  {
    v8 = v69;
    if ((sub_1000947C4(v69) & 1) == 0)
    {
      __assert_rtn("set_session_type", "CLPRoseCommunicationEvent.pb.h", 14039, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseSessionType_IsValid(value)");
    }

    v9 = *(v5 + 96);
    v10 = WORD2(v74);
    *(v5 + 24) = v8;
    *(v5 + 28) = v10;
    *(v5 + 88) = BYTE6(v74);
    *(&__str.__r_.__value_.__s + 23) = 8;
    __str.__r_.__value_.__r.__words[0] = *(&v74 + 7);
    __str.__r_.__value_.__s.__data_[8] = 0;
    *(v5 + 96) = v9 | 0x1E;
    v11 = *(v5 + 32);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, &__str);
    v13 = v76;
    v12 = v77;
    v64 = v77;
    while (v13 != v12)
    {
      v14 = *(v5 + 52);
      v15 = *(v5 + 48);
      if (v15 >= v14)
      {
        if (v14 == *(v5 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40), v14 + 1);
          v14 = *(v5 + 52);
        }

        *(v5 + 52) = v14 + 1;
        sub_1000CCFF4();
      }

      v16 = *(v5 + 40);
      *(v5 + 48) = v15 + 1;
      v17 = *(v16 + 8 * v15);
      v72 = *v13;
      if (v72)
      {
        v18 = 0;
      }

      else
      {
        v19 = HIBYTE(v72);
        if (v19 >= 0xE || ((0x3C3Fu >> SHIBYTE(v72)) & 1) == 0)
        {
          v61 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004286CC(&v72);
            sub_1004BAB14(&__dst, &v73, v61, &v65);
            v61 = v65.__r_.__value_.__r.__words[0];
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_1004BAB9C();
          }

LABEL_105:
          v52 = 0;
          goto LABEL_106;
        }

        v18 = dword_10056A5CC[v19];
      }

      if ((sub_10009480C(v18) & 1) == 0)
      {
        __assert_rtn("set_packet_type", "CLPRoseCommunicationEvent.pb.h", 13683, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RangeCIRPacketType_IsValid(value)");
      }

      v20 = *(v17 + 100);
      *(v17 + 16) = v18;
      v21 = *(v13 + 2);
      *(v17 + 100) = v20 | 3;
      *(v17 + 20) = v21;
      sub_1002DA1B0(&__dst, *(v13 + 1), *(v13 + 2) - *(v13 + 1));
      *(v17 + 100) |= 4u;
      v22 = *(v17 + 24);
      if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v22, &__dst);
      sub_1002DA1B0(&v73, *(v13 + 4), *(v13 + 5) - *(v13 + 4));
      *(v17 + 100) |= 8u;
      v23 = *(v17 + 32);
      if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v23, &v73);
      *(v17 + 100) |= 0x10u;
      v24 = *(v17 + 40);
      if (!v24)
      {
        operator new();
      }

      v25 = 0;
      v26 = 0;
      v27 = 1;
      while ((v27 & v13[1]) == 0)
      {
LABEL_56:
        v25 = v27 > 2;
        v39 = v27 >= 3;
        v27 *= 2;
        if (v39)
        {
          if (*(v13 + 88) == 1)
          {
            v40 = *(v13 + 10);
            *(v17 + 100) |= 0x20u;
            *(v17 + 48) = v40;
          }

          if (*(v13 + 104) == 1)
          {
            v41 = *(v13 + 12);
            *(v17 + 100) |= 0x40u;
            *(v17 + 56) = v41;
          }

          if (*(v13 + 120) == 1)
          {
            v42 = *(v13 + 14);
            *(v17 + 100) |= 0x80u;
            *(v17 + 64) = v42;
          }

          v43 = *(v13 + 16);
          v44 = *(v13 + 17);
          while (v43 != v44)
          {
            v45 = *(v17 + 84);
            v46 = *(v17 + 80);
            if (v46 >= v45)
            {
              if (v45 == *(v17 + 88))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 72), v45 + 1);
                v45 = *(v17 + 84);
              }

              *(v17 + 84) = v45 + 1;
              sub_1000CCF90();
            }

            v47 = *(v17 + 72);
            *(v17 + 80) = v46 + 1;
            v48 = *(v47 + 8 * v46);
            v49 = *(v48 + 36);
            *(v48 + 16) = *v43;
            LODWORD(v47) = *(v43 + 1);
            *(v48 + 36) = v49 | 3;
            *(v48 + 20) = v47;
            sub_1002DA1B0(&v65, v43[1], v43[2] - v43[1]);
            *(v48 + 36) |= 4u;
            v50 = *(v48 + 24);
            if (v50 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v50, &v65);
            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            v43 += 4;
          }

          goto LABEL_78;
        }
      }

      if (v27 <= 4 && ((1 << v27) & 0x16) != 0)
      {
        v28 = v26 + 1;
        v29 = (*(v13 + 7) + (v26 << 10) + 2);
        v30 = 1024;
        while (1)
        {
          if (v27 == 2)
          {
            v34 = v24[13];
            v32 = v24[12];
            if (v32 >= v34)
            {
              if (v34 == v24[14])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 10), v34 + 1);
                v34 = v24[13];
              }

              v24[13] = v34 + 1;
              sub_1000CCF2C();
            }

            v33 = *(v24 + 5);
            v24[12] = v32 + 1;
          }

          else if (v27 == 1)
          {
            v31 = v24[7];
            v32 = v24[6];
            if (v32 >= v31)
            {
              if (v31 == v24[8])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 4), v31 + 1);
                v31 = v24[7];
              }

              v24[7] = v31 + 1;
              sub_1000CCF2C();
            }

            v33 = *(v24 + 2);
            v24[6] = v32 + 1;
          }

          else
          {
            v35 = v24[19];
            v32 = v24[18];
            if (v32 >= v35)
            {
              if (v35 == v24[20])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 16), v35 + 1);
                v35 = v24[19];
              }

              v24[19] = v35 + 1;
              sub_1000CCF2C();
            }

            v33 = *(v24 + 8);
            v24[18] = v32 + 1;
          }

          v36 = *(v33 + 8 * v32);
          if (!v36)
          {
            break;
          }

          v37 = v36[7];
          v36[4] = *(v29 - 1);
          v38 = *v29;
          v36[7] = v37 | 3;
          v36[5] = v38;
          v29 += 2;
          v30 -= 4;
          if (!v30)
          {
            v26 = v28;
            goto LABEL_56;
          }
        }
      }

      v51 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BABD0(&buf, v67, v51);
      }

LABEL_78:
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (!v25)
      {
        goto LABEL_105;
      }

      v13 += 76;
      v12 = v64;
    }

    v53 = v79;
    for (i = v80; v53 != i; v53 += 4)
    {
      v55 = *(v5 + 76);
      v56 = *(v5 + 72);
      if (v56 >= v55)
      {
        if (v55 == *(v5 + 80))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 64), v55 + 1);
          v55 = *(v5 + 76);
        }

        *(v5 + 76) = v55 + 1;
        sub_1000CCF90();
      }

      v57 = *(v5 + 64);
      *(v5 + 72) = v56 + 1;
      v58 = *(v57 + 8 * v56);
      v59 = *(v58 + 36);
      *(v58 + 16) = *v53;
      LODWORD(v57) = *(v53 + 1);
      *(v58 + 36) = v59 | 3;
      *(v58 + 20) = v57;
      sub_1002DA1B0(&__dst, v53[1], v53[2] - v53[1]);
      *(v58 + 36) |= 4u;
      v60 = *(v58 + 24);
      if (v60 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v60, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BAC10();
    }

    v52 = sub_10000A2E0(a1, v70);
LABEL_106:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BAAE0();
    }

    v52 = 0;
  }

  sub_10000A80C(v70);
  v70[0] = &v79;
  sub_100189A94(v70);
  v70[0] = &v76;
  sub_100189B38(v70);
  return v52;
}

uint64_t sub_1002DC3C0(uint64_t a1, uint64_t *a2)
{
  sub_100009FF4(v49);
  v4 = sub_1002D9F64(v49, 3, 0x1Cu, *(a1 + 120));
  *(v4 + 260) |= 0x40000000u;
  v5 = *(v4 + 248);
  if (!v5)
  {
    operator new();
  }

  v6 = *a2;
  v7 = *(v5 + 240);
  v8 = v7 | 1;
  *(v5 + 240) = v7 | 1;
  *(v5 + 16) = v6;
  if (*(a2 + 16) == 1)
  {
    v9 = a2[1];
    v8 = v7 | 3;
    *(v5 + 240) = v7 | 3;
    *(v5 + 24) = v9;
  }

  v10 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 12);
  *(v5 + 36) = v10;
  v11 = *(a2 + 17);
  *(v5 + 240) = v8 | 0x3C;
  v12 = *(a2 + 36);
  *(v5 + 40) = v11;
  *(v5 + 44) = v12;
  v13 = *(a2 + 10);
  v14 = a2[6];
  *(v5 + 48) = v14;
  v15 = *(a2 + 28);
  *(v5 + 56) = v13;
  *(v5 + 60) = v15;
  v16 = *(a2 + 29);
  *(v5 + 240) = v8 | 0x3FC;
  v17 = *(a2 + 15);
  *(v5 + 64) = v16;
  *(v5 + 68) = v17;
  v14.i32[0] = *(a2 + 16);
  *(v5 + 72) = vmovl_u16(*&vmovl_u8(v14));
  v18 = *(a2 + 36);
  *(v5 + 88) = *(a2 + 68);
  *(v5 + 92) = v18;
  *(v5 + 96) = *(a2 + 19);
  *(v5 + 240) = v8 | 0xFFFFC;
  *(v5 + 104) = *(a2 + 5);
  v19 = *(a2 + 50);
  *(v5 + 120) = *(a2 + 24);
  *(v5 + 124) = v19;
  *(v5 + 128) = *(a2 + 26);
  *(v5 + 240) = v8 | 0x1FFFFFC;
  *(v5 + 136) = *(a2 + 7);
  v20 = *(a2 + 32);
  *(v5 + 240) = v8 | 0x3FFFFFC;
  *(v5 + 152) = v20;
  if (*(a2 + 160) == 1)
  {
    *(v5 + 156) = 0;
    *(v5 + 160) = *(a2 + 17);
    v21 = a2[19];
    *(v5 + 240) = v8 | 0x3FFFFFFC;
    v22 = 176;
LABEL_9:
    *(v5 + v22) = v21;
    goto LABEL_10;
  }

  if (*(a2 + 192) == 1)
  {
    *(v5 + 156) = 1;
    *(v5 + 184) = *(a2 + 21);
    v21 = a2[23];
    v23 = *(v5 + 244) | 1;
    *(v5 + 240) = v8 | 0xC7FFFFFC;
    *(v5 + 244) = v23;
    v22 = 200;
    goto LABEL_9;
  }

LABEL_10:
  v25 = a2[25];
  v24 = a2[26];
  while (v25 != v24)
  {
    v26 = *(v5 + 220);
    v27 = *(v5 + 216);
    if (v27 >= v26)
    {
      if (v26 == *(v5 + 224))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 208), v26 + 1);
        v26 = *(v5 + 220);
      }

      *(v5 + 220) = v26 + 1;
      sub_1000CD120();
    }

    v28 = *(v5 + 208);
    *(v5 + 216) = v27 + 1;
    v29 = *(v28 + 8 * v27);
    v30 = *v25;
    v31 = *(v29 + 132);
    *(v29 + 16) = v25[1];
    v32 = *(v25 + 4);
    *(v29 + 24) = v30;
    *(v29 + 28) = v32;
    v33 = *(v25 + 5);
    v34 = *(v25 + 3);
    *(v29 + 32) = *(v25 + 2);
    *(v29 + 132) = v31 | 0x3F;
    v35 = *(v25 + 8);
    *(v29 + 40) = v33;
    *(v29 + 44) = v35;
    v36 = v25[9];
    *(v29 + 48) = v34;
    *(v29 + 56) = v36;
    *(v29 + 64) = *(v25 + 5);
    v37 = *(v25 + 48);
    *(v29 + 132) = v31 | 0x3FF;
    *(v29 + 72) = v37;
    if (v25[20])
    {
      v38 = 0;
      v39 = 0x3FFF;
      v40 = 14;
      v41 = 80;
      v42 = 16;
      v43 = 88;
      v44 = 18;
      v45 = 96;
    }

    else
    {
      if (*(v25 + 112) != 1)
      {
        goto LABEL_22;
      }

      v39 = 116735;
      v38 = 1;
      v40 = 22;
      v41 = 104;
      v42 = 24;
      v43 = 112;
      v44 = 26;
      v45 = 120;
    }

    *(v29 + 76) = v38;
    *(v29 + v41) = *&v25[v40];
    *(v29 + v43) = *&v25[v42];
    v46 = *&v25[v44];
    *(v29 + 132) = v31 | v39;
    *(v29 + v45) = v46;
LABEL_22:
    v25 += 30;
  }

  v47 = sub_10000A2E0(a1, v49);
  sub_10000A80C(v49);
  return v47;
}

uint64_t sub_1002DC744(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAC44();
  }

  sub_100009FF4(v40);
  v4 = sub_1002D9F64(v40, 3, 0x11u, *(a1 + 120));
  *(v4 + 260) |= 0x80000u;
  v5 = *(v4 + 160);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 132);
  *(v5 + 16) = *a2;
  v7 = *(a2 + 10);
  *(v5 + 24) = *(a2 + 8);
  *(v5 + 28) = v7;
  *(v5 + 132) = v6 | 0xF;
  v8 = *(v5 + 32);
  if (!v8)
  {
    operator new();
  }

  v9 = 0;
  v10 = *(a2 + 12);
  *(v8 + 32) |= 2u;
  *(v8 + 24) = v10;
  v11 = *(a2 + 14);
  v12 = *(v5 + 132);
  *(v5 + 132) = v12 | 0x10;
  v13 = *(a2 + 16);
  *(v5 + 72) = v11;
  *(v5 + 76) = v13;
  v14 = *(a2 + 24);
  *(v5 + 132) = v12 | 0x230;
  *(v5 + 40) = v14;
  v15 = a2 + 32;
  do
  {
    v16 = *(v5 + 60);
    v17 = *(v5 + 56);
    if (v17 >= v16)
    {
      if (v16 == *(v5 + 64))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48), v16 + 1);
        v16 = *(v5 + 60);
      }

      *(v5 + 60) = v16 + 1;
      sub_1000CCF2C();
    }

    v18 = *(v5 + 48);
    *(v5 + 56) = v17 + 1;
    v19 = *(v18 + 8 * v17);
    v20 = *(v15 + v9);
    v21 = *(v15 + v9 + 2);
    v19[7] |= 3u;
    v19[4] = v20;
    v19[5] = v21;
    v9 += 4;
  }

  while (v9 != 32);
  v22 = 0;
  v23 = a2 + 64;
  do
  {
    v24 = *(v5 + 92);
    v25 = *(v5 + 88);
    if (v25 >= v24)
    {
      if (v24 == *(v5 + 96))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 80), v24 + 1);
        v24 = *(v5 + 92);
      }

      *(v5 + 92) = v24 + 1;
      sub_1000CCF2C();
    }

    v26 = *(v5 + 80);
    *(v5 + 88) = v25 + 1;
    v27 = *(v26 + 8 * v25);
    v28 = *(v23 + v22);
    v29 = *(v23 + v22 + 2);
    v27[7] |= 3u;
    v27[4] = v28;
    v27[5] = v29;
    v22 += 4;
  }

  while (v22 != 32);
  v30 = 0;
  v31 = a2 + 96;
  do
  {
    v32 = *(v5 + 116);
    v33 = *(v5 + 112);
    if (v33 >= v32)
    {
      if (v32 == *(v5 + 120))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 104), v32 + 1);
        v32 = *(v5 + 116);
      }

      *(v5 + 116) = v32 + 1;
      sub_1000CCF2C();
    }

    v34 = *(v5 + 104);
    *(v5 + 112) = v33 + 1;
    v35 = *(v34 + 8 * v33);
    v36 = *(v31 + v30);
    v37 = *(v31 + v30 + 2);
    v35[7] |= 3u;
    v35[4] = v36;
    v35[5] = v37;
    v30 += 4;
  }

  while (v30 != 32);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAC78();
  }

  v38 = sub_10000A2E0(a1, v40);
  sub_10000A80C(v40);
  return v38;
}

uint64_t sub_1002DCADC(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BACAC();
  }

  sub_100009FF4(v24);
  v4 = sub_1002D9F64(v24, 3, 0x12u, *(a1 + 120));
  *(v4 + 260) |= 0x100000u;
  v5 = *(v4 + 168);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 96);
  *(v5 + 16) = *a2;
  v7 = *(a2 + 10);
  *(v5 + 24) = *(a2 + 8);
  *(v5 + 28) = v7;
  *(v5 + 96) = v6 | 0xF;
  v8 = *(v5 + 32);
  if (!v8)
  {
    operator new();
  }

  v9 = 0;
  v10 = *(a2 + 12);
  *(v8 + 32) |= 2u;
  *(v8 + 24) = v10;
  v11 = *(v5 + 96);
  v12 = *(a2 + 16);
  *(v5 + 40) = *(a2 + 14);
  *(v5 + 44) = v12;
  v13 = *(a2 + 24);
  *(v5 + 96) = v11 | 0x70;
  *(v5 + 88) = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v5 + 96) = v11 | 0x2F0;
  *(v5 + 48) = v13;
  *(v5 + 56) = v14;
  v15 = a2 + 48;
  do
  {
    v16 = *(v5 + 76);
    v17 = *(v5 + 72);
    if (v17 >= v16)
    {
      if (v16 == *(v5 + 80))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 64), v16 + 1);
        v16 = *(v5 + 76);
      }

      *(v5 + 76) = v16 + 1;
      sub_1000CCF2C();
    }

    v18 = *(v5 + 64);
    *(v5 + 72) = v17 + 1;
    v19 = *(v18 + 8 * v17);
    v20 = *(v15 + v9);
    v21 = *(v15 + v9 + 2);
    v19[7] |= 3u;
    v19[4] = v20;
    v19[5] = v21;
    v9 += 4;
  }

  while (v9 != 32);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BACE0();
  }

  v22 = sub_10000A2E0(a1, v24);
  sub_10000A80C(v24);
  return v22;
}

uint64_t sub_1002DCD58(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAD14();
  }

  sub_100009FF4(v45);
  v4 = sub_1002D9F64(v45, 3, 0x19u, *(a1 + 120));
  *(v4 + 260) |= 0x4000000u;
  v5 = *(v4 + 216);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 76);
  *(v5 + 16) = *a2;
  v7 = *(a2 + 10);
  *(v5 + 24) = *(a2 + 8);
  *(v5 + 28) = v7;
  v8 = *(a2 + 14);
  *(v5 + 40) = *(a2 + 11);
  *(v5 + 44) = v8;
  *(v5 + 76) = v6 | 0x3F;
  v9 = *(v5 + 32);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 12);
  *(v9 + 32) |= 2u;
  *(v9 + 24) = v10;
  v11 = *(v5 + 60);
  v12 = *(v5 + 56);
  if (v12 >= v11)
  {
    if (v11 == *(v5 + 64))
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48), v11 + 1);
      v11 = *(v5 + 60);
    }

    *(v5 + 60) = v11 + 1;
    sub_1000CD058();
  }

  v13 = *(v5 + 48);
  *(v5 + 56) = v12 + 1;
  v14 = *(v13 + 8 * v12);
  v15 = sub_100193AD8(a2, 0);
  v14[15] |= 1u;
  v14[4] = v15;
  v16 = sub_100193B00(a2, 0);
  v14[15] |= 2u;
  v14[5] = v16;
  v17 = sub_100193B28(a2, 0);
  v14[15] |= 4u;
  v14[6] = v17;
  v18 = sub_100193B50(a2, 0);
  v14[15] |= 8u;
  v14[7] = v18;
  v19 = (sub_100193B78(a2, 0) + 2);
  v20 = 32;
  do
  {
    v21 = v14[11];
    v22 = v14[10];
    if (v22 >= v21)
    {
      if (v21 == v14[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v14 + 8), v21 + 1);
        v21 = v14[11];
      }

      v14[11] = v21 + 1;
      sub_1000CCF2C();
    }

    v23 = *(v14 + 4);
    v14[10] = v22 + 1;
    v24 = *(v23 + 8 * v22);
    v25 = *(v19 - 1);
    v26 = *v19;
    v24[7] |= 3u;
    v24[4] = v25;
    v24[5] = v26;
    v19 += 2;
    v20 -= 4;
  }

  while (v20);
  v27 = *(v5 + 60);
  v28 = *(v5 + 56);
  if (v28 >= v27)
  {
    if (v27 == *(v5 + 64))
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48), v27 + 1);
      v27 = *(v5 + 60);
    }

    *(v5 + 60) = v27 + 1;
    sub_1000CD058();
  }

  v29 = *(v5 + 48);
  *(v5 + 56) = v28 + 1;
  v30 = *(v29 + 8 * v28);
  v31 = sub_100193AD8(a2, 1);
  v30[15] |= 1u;
  v30[4] = v31;
  v32 = sub_100193B00(a2, 1);
  v30[15] |= 2u;
  v30[5] = v32;
  v33 = sub_100193B28(a2, 1);
  v30[15] |= 4u;
  v30[6] = v33;
  v34 = sub_100193B50(a2, 1);
  v30[15] |= 8u;
  v30[7] = v34;
  v35 = (sub_100193B78(a2, 1) + 2);
  v36 = 32;
  do
  {
    v37 = v30[11];
    v38 = v30[10];
    if (v38 >= v37)
    {
      if (v37 == v30[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v30 + 8), v37 + 1);
        v37 = v30[11];
      }

      v30[11] = v37 + 1;
      sub_1000CCF2C();
    }

    v39 = *(v30 + 4);
    v30[10] = v38 + 1;
    v40 = *(v39 + 8 * v38);
    v41 = *(v35 - 1);
    v42 = *v35;
    v40[7] |= 3u;
    v40[4] = v41;
    v40[5] = v42;
    v35 += 2;
    v36 -= 4;
  }

  while (v36);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAD48();
  }

  v43 = sub_10000A2E0(a1, v45);
  sub_10000A80C(v45);
  return v43;
}

uint64_t sub_1002DD214(int *a1)
{
  v2 = a1[15];
  v3 = a1[14];
  if (v3 >= v2)
  {
    if (v2 == a1[16])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 12), v2 + 1);
      v2 = a1[15];
    }

    a1[15] = v2 + 1;
    sub_1000CD058();
  }

  v4 = *(a1 + 6);
  a1[14] = v3 + 1;
  return *(v4 + 8 * v3);
}

uint64_t sub_1002DD294(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAD7C();
  }

  sub_100009FF4(v18);
  v4 = sub_1002D9F64(v18, 3, 0x10u, *(a1 + 120));
  *(v4 + 260) |= 0x40000u;
  v5 = *(v4 + 152);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 300) |= 1u;
  v6 = *(v5 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 8);
  *(v6 + 32) |= 2u;
  *(v6 + 24) = v7;
  v17 = 0;
  if (sub_1002DA3DC(&v17, *(a2 + 18)))
  {
    *(&__p.__r_.__value_.__s + 23) = 8;
    __p.__r_.__value_.__r.__words[0] = *(a2 + 23);
    __p.__r_.__value_.__s.__data_[8] = 0;
    v8 = v17;
    if ((sub_1000947C4(v17) & 1) == 0)
    {
      __assert_rtn("set_session_type", "CLPRoseCommunicationEvent.pb.h", 14268, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseSessionType_IsValid(value)");
    }

    v9 = *(v5 + 300);
    v10 = *(a2 + 10);
    *(v5 + 24) = v8;
    *(v5 + 28) = v10;
    *(v5 + 120) = *(a2 + 22);
    *(v5 + 300) = v9 | 0x1E;
    v11 = *(v5 + 32);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, &__p);
    *(v5 + 40) = *(a2 + 5);
    *(v5 + 56) = *(a2 + 7);
    *(v5 + 72) = *(a2 + 9);
    *(v5 + 88) = *(a2 + 11);
    *(v5 + 224) = *(a2 + 13);
    *(v5 + 240) = *(a2 + 15);
    *(v5 + 256) = *(a2 + 17);
    *(v5 + 272) = *(a2 + 19);
    *(v5 + 112) = a2[21];
    *(v5 + 128) = *(a2 + 11);
    *(v5 + 144) = *(a2 + 12);
    *(v5 + 160) = *(a2 + 13);
    *(v5 + 176) = *(a2 + 14);
    *(v5 + 192) = *(a2 + 15);
    v12 = *a2;
    *(v5 + 208) = a2[32];
    *(v5 + 216) = v12;
    v13 = *(a2 + 4);
    *(v5 + 300) = vorr_s8(*(v5 + 300), 0xFFFFFDFE0);
    *(v5 + 124) = v13;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BADE4();
    }

    v14 = sub_10000A2E0(a1, v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BADB0();
    }

    v14 = 0;
  }

  sub_10000A80C(v18);
  return v14;
}

uint64_t sub_1002DD5D8(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a2 + 6))
  {
    sub_1004BAE18();
  }

  if ((a2[208] & 1) == 0)
  {
    sub_1004BAE44();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAE70();
  }

  sub_100009FF4(v43);
  v4 = sub_1002D9F64(v43, 3, 0x13u, *(a1 + 120));
  *(v4 + 260) |= 0x200000u;
  v5 = *(v4 + 176);
  if (!v5)
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    v6 = *(a2 + 4);
    v7 = *(v5 + 232) | 1;
    *(v5 + 232) = v7;
    *(v5 + 16) = v6;
  }

  else
  {
    v7 = *(v5 + 232);
  }

  v8 = *(a2 + 25);
  *(v5 + 232) = v7 | 2;
  *(v5 + 24) = v8;
  v42 = 0;
  if ((sub_1002DA13C(&v42, *(a2 + 24)) & 1) == 0)
  {
    v37 = 0;
    goto LABEL_22;
  }

  v9 = v42;
  if (!sub_100094788(v42))
  {
    v39 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseErrorCode_IsValid(value)";
    v40 = 15943;
    v41 = "set_error_code";
    goto LABEL_27;
  }

  v10 = *(v5 + 232);
  *(v5 + 28) = v9;
  *(v5 + 40) = *(a2 + 29);
  v11 = *(a2 + 9);
  *(v5 + 32) = *(a2 + 8);
  v12 = v10 | 0x3C;
  *(v5 + 232) = v12;
  *(v5 + 48) = v11;
  if (a2[1] == 1)
  {
    v13 = *a2 != 5;
    if (sub_100079CC4(v13))
    {
      v12 = *(v5 + 232) | 0x40;
      *(v5 + 232) = v12;
      *(v5 + 44) = v13;
      goto LABEL_15;
    }

    v39 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseRFChannel_IsValid(value)";
    v40 = 16032;
    v41 = "set_rf_channel";
LABEL_27:
    __assert_rtn(v41, "CLPRoseCommunicationEvent.pb.h", v40, v39);
  }

LABEL_15:
  if (a2[16] == 1)
  {
    v14 = *(a2 + 1);
    v12 |= 0x80u;
    *(v5 + 232) = v12;
    *(v5 + 56) = v14;
  }

  if ((a2[208] & 1) == 0)
  {
    sub_1000195BC();
  }

  v15 = *(a2 + 50);
  *(v5 + 232) = v12 | 0x100;
  *(v5 + 64) = v15;
  v16 = *(a2 + 51);
  *(v5 + 232) = v12 | 0x300;
  *(v5 + 68) = v16;
  v17 = a2[104];
  *(v5 + 232) = v12 | 0x700;
  *(v5 + 72) = v17;
  v18 = a2[105];
  *(v5 + 232) = v12 | 0xF00;
  *(v5 + 76) = v18;
  v19 = *(a2 + 53);
  *(v5 + 232) = v12 | 0x1F00;
  *(v5 + 88) = v19;
  v20 = *(a2 + 108);
  *(v5 + 232) = v12 | 0x3F00;
  *(v5 + 80) = v20;
  v21 = *(a2 + 116);
  *(v5 + 232) = v12 | 0x7F00;
  *(v5 + 96) = v21;
  LODWORD(v21) = *(a2 + 62);
  *(v5 + 232) = v12 | 0xFF00;
  *(v5 + 92) = v21;
  LODWORD(v21) = a2[126];
  *(v5 + 232) = v12 | 0x1FF00;
  *(v5 + 104) = v21;
  LODWORD(v21) = a2[127];
  *(v5 + 232) = v12 | 0x3FF00;
  *(v5 + 108) = v21;
  v22 = *(a2 + 16);
  *(v5 + 232) = v12 | 0x7FF00;
  *(v5 + 112) = v22;
  v23 = *(a2 + 17);
  *(v5 + 232) = v12 | 0xFFF00;
  *(v5 + 120) = v23;
  LODWORD(v23) = *(a2 + 72);
  *(v5 + 232) = v12 | 0x1FFF00;
  *(v5 + 128) = v23;
  LODWORD(v23) = *(a2 + 73);
  *(v5 + 232) = v12 | 0x3FFF00;
  *(v5 + 132) = v23;
  LODWORD(v23) = *(a2 + 74);
  *(v5 + 232) = v12 | 0x7FFF00;
  *(v5 + 136) = v23;
  LODWORD(v23) = *(a2 + 75);
  *(v5 + 232) = v12 | 0xFFFF00;
  *(v5 + 140) = v23;
  LODWORD(v23) = *(a2 + 76);
  *(v5 + 232) = v12 | 0x1FFFF00;
  *(v5 + 144) = v23;
  LODWORD(v23) = *(a2 + 154);
  *(v5 + 232) = v12 | 0x3FFFF00;
  *(v5 + 148) = v23;
  LODWORD(v23) = a2[158];
  *(v5 + 232) = v12 | 0x7FFFF00;
  *(v5 + 152) = v23;
  LODWORD(v23) = a2[159];
  *(v5 + 232) = v12 | 0xFFFFF00;
  *(v5 + 156) = v23;
  LODWORD(v23) = a2[160];
  *(v5 + 232) = v12 | 0x1FFFFF00;
  *(v5 + 160) = v23;
  LODWORD(v23) = *(a2 + 161);
  *(v5 + 232) = v12 | 0x3FFFFF00;
  *(v5 + 164) = v23;
  LODWORD(v23) = *(a2 + 163);
  *(v5 + 232) = v12 | 0x7FFFFF00;
  *(v5 + 168) = v23;
  LODWORD(v23) = a2[165];
  *(v5 + 232) = v12 | 0xFFFFFF00;
  *(v5 + 172) = v23;
  v24 = *(a2 + 83);
  LODWORD(v23) = *(v5 + 236);
  *(v5 + 236) = v23 | 1;
  *(v5 + 176) = v24;
  v25 = *(a2 + 84);
  *(v5 + 236) = v23 | 3;
  *(v5 + 180) = v25;
  v26 = a2[170];
  *(v5 + 236) = v23 | 7;
  *(v5 + 184) = v26;
  v27 = *(a2 + 171);
  *(v5 + 236) = v23 | 0xF;
  *(v5 + 188) = v27;
  v28 = *(a2 + 173);
  *(v5 + 236) = v23 | 0x1F;
  *(v5 + 192) = v28;
  v29 = *(a2 + 175);
  *(v5 + 236) = v23 | 0x3F;
  *(v5 + 196) = v29;
  v30 = a2[179];
  *(v5 + 236) = v23 | 0x7F;
  *(v5 + 200) = v30;
  v31 = *(a2 + 90);
  *(v5 + 236) = v23 | 0xFF;
  *(v5 + 204) = v31;
  v32 = *(a2 + 91);
  *(v5 + 236) = v23 | 0x1FF;
  *(v5 + 208) = v32;
  v33 = *(a2 + 92);
  *(v5 + 236) = v23 | 0x3FF;
  *(v5 + 212) = v33;
  v34 = *(a2 + 93);
  *(v5 + 236) = v23 | 0x7FF;
  *(v5 + 216) = v34;
  v35 = *(a2 + 95);
  *(v5 + 236) = v23 | 0x17FF;
  *(v5 + 224) = v35;
  v36 = *(a2 + 94);
  *(v5 + 236) = v23 | 0x1FFF;
  *(v5 + 220) = v36;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAEA4();
  }

  v37 = sub_10000A2E0(a1, v43);
LABEL_22:
  sub_10000A80C(v43);
  return v37;
}

uint64_t sub_1002DDAA0(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a2 + 6) != 1)
  {
    sub_1004BAED8();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAF04();
  }

  sub_100009FF4(v21);
  v4 = sub_1002D9F64(v21, 3, 0x14u, *(a1 + 120));
  *(v4 + 260) |= 0x400000u;
  v5 = *(v4 + 184);
  if (!v5)
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    v6 = *(a2 + 4);
    v7 = *(v5 + 68) | 1;
    *(v5 + 68) = v7;
    *(v5 + 16) = v6;
  }

  else
  {
    v7 = *(v5 + 68);
  }

  v8 = *(a2 + 25);
  *(v5 + 68) = v7 | 2;
  *(v5 + 24) = v8;
  v20 = 0;
  if ((sub_1002DA13C(&v20, *(a2 + 24)) & 1) == 0)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v9 = v20;
  if (!sub_100094788(v20))
  {
    v17 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseErrorCode_IsValid(value)";
    v18 = 16939;
    v19 = "set_error_code";
    goto LABEL_24;
  }

  v10 = *(v5 + 68);
  *(v5 + 28) = v9;
  *(v5 + 40) = *(a2 + 29);
  v11 = *(a2 + 9);
  *(v5 + 32) = *(a2 + 8);
  v12 = v10 | 0x3C;
  *(v5 + 68) = v12;
  *(v5 + 48) = v11;
  if (a2[1] == 1)
  {
    v13 = *a2 != 5;
    if (sub_100079CC4(v13))
    {
      v12 = *(v5 + 68) | 0x40;
      *(v5 + 68) = v12;
      *(v5 + 44) = v13;
      goto LABEL_14;
    }

    v17 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseRFChannel_IsValid(value)";
    v18 = 17028;
    v19 = "set_rf_channel";
LABEL_24:
    __assert_rtn(v19, "CLPRoseCommunicationEvent.pb.h", v18, v17);
  }

LABEL_14:
  if (a2[16] == 1)
  {
    v14 = *(a2 + 1);
    *(v5 + 68) = v12 | 0x80;
    *(v5 + 56) = v14;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAF38();
  }

  v15 = sub_10000A2E0(a1, v21);
LABEL_20:
  sub_10000A80C(v21);
  return v15;
}

uint64_t sub_1002DDCF4(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAF6C();
  }

  sub_100009FF4(v49);
  v4 = sub_1002D9F64(v49, 3, 0x1Cu, *(a1 + 120));
  *(v4 + 260) |= 0x20000000u;
  v5 = *(v4 + 240);
  if (!v5)
  {
    operator new();
  }

  v6 = *a2;
  v7 = *(v5 + 160);
  v8 = v7 | 1;
  *(v5 + 160) = v7 | 1;
  *(v5 + 16) = v6;
  if (*(a2 + 104) == 1)
  {
    v9 = a2[12];
    v8 = v7 | 3;
    *(v5 + 160) = v7 | 3;
    *(v5 + 24) = v9;
  }

  v10 = *(a2 + 4);
  *(v5 + 160) = v8 | 4;
  *(v5 + 32) = v10;
  v48 = 0;
  if ((sub_1002DA13C(&v48, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v11 = v48;
  if ((sub_100094788(v48) & 1) == 0)
  {
    __assert_rtn("set_error_code", "CLPRoseCommunicationEvent.pb.h", 17192, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseErrorCode_IsValid(value)");
  }

  v12 = *(v5 + 160);
  *(v5 + 36) = v11;
  *(v5 + 160) = v12 | 0x18;
  v13 = *(v5 + 40);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 9);
  *(v13 + 32) |= 2u;
  *(v13 + 24) = v14;
  v47 = 0;
  if ((sub_1002DA3DC(&v47, *(a2 + 20)) & 1) == 0)
  {
LABEL_27:
    v41 = 0;
    goto LABEL_28;
  }

  v15 = v47;
  if ((sub_1000947C4(v47) & 1) == 0)
  {
    __assert_rtn("set_session_type", "CLPRoseCommunicationEvent.pb.h", 17253, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseSessionType_IsValid(value)");
  }

  v16 = *(v5 + 160);
  *(v5 + 56) = a2[3];
  *(v5 + 160) = v16 | 0xE0;
  v17 = *(a2 + 20);
  *(v5 + 48) = v15;
  *(v5 + 52) = v17;
  *(&__p.__r_.__value_.__s + 23) = 8;
  __p.__r_.__value_.__r.__words[0] = a2[4];
  __p.__r_.__value_.__s.__data_[8] = 0;
  *(v5 + 160) = v16 | 0x1E0;
  v18 = *(v5 + 64);
  if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v18, &__p);
  LOWORD(v19) = *(a2 + 22);
  v20.f64[0] = v19;
  LOBYTE(v21) = *(a2 + 46);
  v20.f64[1] = v21;
  v22 = *(v5 + 160);
  *(v5 + 88) = *(a2 + 21);
  v23 = vmulq_f64(v20, vdupq_n_s64(0x406F400000000000uLL));
  *(v5 + 72) = v23;
  LOBYTE(v23.f64[0]) = *(a2 + 47);
  *(v5 + 160) = v22 | 0x1E00;
  *(v5 + 96) = *&v23.f64[0] * 250.0;
  v24 = sub_1002DE214(*(a2 + 48));
  if (!sub_10007A654(v24))
  {
    v43 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RosePreamble_IsValid(value)";
    v44 = 17478;
    v45 = "set_tx_preamble";
    goto LABEL_39;
  }

  *(v5 + 160) |= 0x2000u;
  *(v5 + 92) = v24;
  v25 = sub_1002DE214(*(a2 + 49));
  if (!sub_10007A654(v25))
  {
    v43 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RosePreamble_IsValid(value)";
    v44 = 17501;
    v45 = "set_rx_preamble";
    goto LABEL_39;
  }

  v26 = *(a2 + 50);
  *(v5 + 160) |= 0xC000u;
  *(v5 + 104) = v25;
  *(v5 + 108) = v26;
  v27 = *(a2 + 51);
  if ((sub_100094824(v27) & 1) == 0)
  {
    v43 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RxStatus_IsValid(value)";
    v44 = 17546;
    v45 = "set_poll_rx_status";
LABEL_39:
    __assert_rtn(v45, "CLPRoseCommunicationEvent.pb.h", v44, v43);
  }

  v28 = *(v5 + 160);
  *(v5 + 112) = a2[7];
  v29 = *(a2 + 64);
  *(v5 + 120) = v27;
  *(v5 + 124) = v29;
  v30 = *(a2 + 65);
  *(v5 + 160) = v28 | 0xF0000;
  *(v5 + 152) = v30;
  v31 = a2[9];
  v32 = a2[10];
  while (v31 != v32)
  {
    v33 = *(v5 + 140);
    v34 = *(v5 + 136);
    if (v34 >= v33)
    {
      if (v33 == *(v5 + 144))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 128), v33 + 1);
        v33 = *(v5 + 140);
      }

      *(v5 + 140) = v33 + 1;
      sub_1000CD0BC();
    }

    v35 = *(v5 + 128);
    *(v5 + 136) = v34 + 1;
    v36 = *(v35 + 8 * v34);
    v37 = *v31;
    v38 = sub_100094824(v37);
    if ((v38 & 1) == 0)
    {
      __assert_rtn("set_rx_status", "CLPRoseCommunicationEvent.pb.h", 17077, "::CLP::LogEntry::Rose::RoseCommunicationEvent::RxStatus_IsValid(value)");
    }

    v39 = *(v36 + 32);
    *(v36 + 24) = v37;
    v40 = *(v31 + 1);
    *(v36 + 32) = v39 | 3;
    *(v36 + 16) = v40;
    v31 += 16;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BAFA0();
  }

  v41 = sub_10000A2E0(a1, v49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_28:
  sub_10000A80C(v49);
  return v41;
}

uint64_t sub_1002DE214(int a1)
{
  result = 0;
  if (a1 > 11)
  {
    if (a1 == 12)
    {
      return 3;
    }

    if ((a1 - 13) >= 0x14)
    {
      return result;
    }

LABEL_9:
    sub_1004BAFD4();
  }

  switch(a1)
  {
    case 10:
      return 1;
    case 11:
      return 2;
    case 0:
      goto LABEL_9;
  }

  return result;
}

uint64_t sub_1002DE278(uint64_t a1, void *a2)
{
  sub_100009FF4(v9);
  if (sub_100009FF8(v9, *(a1 + 120)))
  {
    v11 |= 2u;
    v4 = v10;
    if (!v10)
    {
      operator new();
    }

    *(v10 + 44) |= 4u;
    v5 = *(v4 + 32);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 44) |= 4u;
    v6 = *(v5 + 32);
    if (!v6)
    {
      operator new();
    }

    sub_1002DE428(v6, a2);
    v7 = sub_10000A2E0(a1, v9);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v7 = 0;
  }

  sub_10000A80C(v9);
  return v7;
}

double sub_1002DE428(uint64_t a1, void *a2)
{
  *(a1 + 28) |= 1u;
  v2 = *(a1 + 16);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 76);
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 48) = v4;
  *(v2 + 76) = v3 | 0x19;
  v5 = *(v2 + 40);
  if (!v5)
  {
    operator new();
  }

  v6 = a2[2];
  v7 = *(v5 + 44);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v6[1];
  v8 = v6[2];
  *(v5 + 44) = v7 | 7;
  *(v5 + 32) = v8;
  *(v2 + 76) |= 4u;
  v9 = *(v2 + 32);
  if (!v9)
  {
    operator new();
  }

  v10 = a2[5];
  v11 = *(v9 + 44);
  *(v9 + 16) = *v10;
  *(v9 + 24) = v10[1];
  v12 = v10[2];
  *(v9 + 44) = v11 | 7;
  *(v9 + 32) = v12;
  *(v2 + 76) |= 2u;
  v13 = *(v2 + 24);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 52) |= 1u;
  v14 = *(v13 + 16);
  if (!v14)
  {
    operator new();
  }

  v15 = a2[8];
  v16 = *(v14 + 52);
  *(v14 + 16) = *v15;
  *(v14 + 24) = v15[1];
  *(v14 + 32) = v15[2];
  v17 = v15[3];
  *(v14 + 52) = v16 | 0xF;
  *(v14 + 40) = v17;
  *(v2 + 76) |= 0x20u;
  v18 = *(v2 + 56);
  if (!v18)
  {
    operator new();
  }

  v19 = a2[11];
  v20 = *(v18 + 44);
  *(v18 + 16) = *v19;
  *(v18 + 24) = v19[1];
  v21 = v19[2];
  *(v18 + 44) = v20 | 7;
  *(v18 + 32) = v21;
  *(v2 + 76) |= 0x40u;
  v22 = *(v2 + 64);
  if (!v22)
  {
    operator new();
  }

  v23 = a2[14];
  v24 = *(v22 + 44);
  *(v22 + 16) = *v23;
  *(v22 + 24) = *(v23 + 8);
  result = *(v23 + 16);
  *(v22 + 44) = v24 | 7;
  *(v22 + 32) = result;
  return result;
}

uint64_t sub_1002DE704(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB000(a3, v6);
  }

  sub_100009FF4(v16);
  if (sub_100009FF8(v16, *(a1 + 120)))
  {
    v18 |= 2u;
    v7 = v17;
    if (!v17)
    {
      operator new();
    }

    *(v17 + 44) |= 4u;
    v8 = *(v7 + 32);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 44) |= 2u;
    v9 = *(v8 + 24);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    v10 = *(v9 + 16);
    if (!v10)
    {
      operator new();
    }

    *(v10 + 36) |= 1u;
    v11 = *(v10 + 16);
    if (!v11)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    *(v10 + 36) |= 2u;
    v13 = *(v10 + 24);
    if (!v13)
    {
      operator new();
    }

    *(v11 + 60) |= 2u;
    v14 = *(v11 + 24);
    if (!v14)
    {
      operator new();
    }

    sub_1002DE428(v14, a2);
    sub_1002DEA70(v13, a3);
    v12 = sub_10000A2E0(a1, v16);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v12 = 0;
  }

  sub_10000A80C(v16);
  return v12;
}

double sub_1002DEA70(uint64_t a1, uint64_t a2)
{
  *(a1 + 68) |= 4u;
  v3 = *(a1 + 48);
  if (!v3)
  {
    operator new();
  }

  v4 = *(v3 + 148);
  *(v3 + 16) = *a2;
  v5 = v4 | 3;
  *(v3 + 148) = v5;
  v6 = *(a2 + 16);
  *(v3 + 24) = *(a2 + 8);
  v7 = (a2 + 24);
  if (v6 != (a2 + 24))
  {
    do
    {
      v8 = *(v6 + 13);
      v9 = *(v3 + 40);
      if (v9 == *(v3 + 44))
      {
        sub_100077844((v3 + 32), v9 + 1);
        v9 = *(v3 + 40);
      }

      v10 = *(v3 + 32);
      *(v3 + 40) = v9 + 1;
      *(v10 + 4 * v9) = v8;
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != v7);
    v5 = *(v3 + 148);
  }

  v14 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 40);
  v15 = *(a2 + 72);
  *(v3 + 80) = v14;
  *(v3 + 88) = v15;
  *(v3 + 56) = vextq_s8(*(a2 + 56), *(a2 + 56), 8uLL);
  v16 = *(a2 + 88);
  *(v3 + 72) = *(a2 + 80);
  *(v3 + 96) = v16;
  v17 = (v3 + 104);
  v19.val[1] = *(a2 + 96);
  v19.val[0] = *(a2 + 112);
  vst2q_f64(v17, v19);
  result = *(a2 + 128);
  *(v3 + 148) = v5 | 0x7FF8;
  *(v3 + 136) = result;
  return result;
}

uint64_t sub_1002DEBD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_100009FF4(v24);
  if (sub_100009FF8(v24, *(a1 + 120)))
  {
    v26 |= 2u;
    v10 = v25;
    if (!v25)
    {
      operator new();
    }

    *(v25 + 44) |= 4u;
    v11 = *(v10 + 32);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 44) |= 2u;
    v12 = *(v11 + 24);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 28) |= 1u;
    v13 = *(v12 + 16);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 36) |= 1u;
    v14 = *(v13 + 16);
    if (!v14)
    {
      operator new();
    }

    *(v12 + 28) |= 1u;
    *(v13 + 36) |= 2u;
    v16 = *(v13 + 24);
    if (!v16)
    {
      operator new();
    }

    sub_1002DEF8C(v14, a2);
    sub_1002DEA70(v16, a3);
    sub_1002DF2A0(v16, a4);
    *(v16 + 68) |= 8u;
    v17 = *(v16 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a5 + 8);
    v19 = *(v17 + 40);
    v20 = v19 | 1;
    *(v17 + 40) = v19 | 1;
    *(v17 + 32) = v18;
    if (*(a5 + 24) == 1)
    {
      v21 = *(a5 + 16);
      v20 = v19 | 3;
      *(v17 + 40) = v19 | 3;
      *(v17 + 16) = v21;
    }

    if (*(a5 + 40) == 1)
    {
      v22 = *(a5 + 32);
      *(v17 + 40) = v20 | 4;
      *(v17 + 24) = v22;
    }

    v15 = sub_10000A2E0(a1, v24);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v15 = 0;
  }

  sub_10000A80C(v24);
  return v15;
}

void sub_1002DEF8C(int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[11];
      v6 = a1[10];
      if (v6 >= v5)
      {
        if (v5 == a1[12])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v5 + 1);
          v5 = a1[11];
        }

        a1[11] = v5 + 1;
        sub_100166734();
      }

      v7 = *(a1 + 4);
      a1[10] = v6 + 1;
      v8 = *(v7 + 8 * v6);
      LODWORD(v7) = *(v8 + 140);
      *(v8 + 16) = *(v2 + 40);
      *(v8 + 24) = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 10);
      *(v8 + 140) = v7 | 0x303;
      *(v8 + 80) = v9;
      *(v8 + 84) = v10;
      sub_1002DA1B0(&__str, *(v2 + 16), *(v2 + 24) - *(v2 + 16));
      *(v8 + 140) |= 0x400u;
      v11 = *(v8 + 88);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, &__str);
      v12 = sub_1000422D4(*(v2 + 64));
      *(v8 + 140) |= 0x10u;
      *(v8 + 48) = v12;
      v13 = sub_1000422D4(*(v2 + 80));
      *(v8 + 140) |= 0x20u;
      *(v8 + 56) = v13;
      v14 = sub_1000422D4(*(v2 + 72));
      *(v8 + 140) |= 4u;
      *(v8 + 32) = v14;
      v15 = sub_1000422D4(*(v2 + 88));
      *(v8 + 140) |= 8u;
      *(v8 + 40) = v15;
      v16 = sub_1000422D4(*(v2 + 96));
      v17 = *(v8 + 140);
      *(v8 + 96) = v16;
      *(v8 + 140) = v17 | 0x8C0;
      *(v8 + 64) = *(v2 + 48);
      if (*(v2 + 112) == 1)
      {
        v18 = *(v2 + 104);
        *(v8 + 140) = v17 | 0x18C0;
        *(v8 + 104) = v18;
      }

      v20 = *(v2 + 120);
      v19 = *(v2 + 128);
      if (v20 != v19)
      {
        v21 = *(v8 + 120);
        do
        {
          v22 = *v20;
          if (v21 == *(v8 + 124))
          {
            sub_1000778F4((v8 + 112), v21 + 1);
            v21 = *(v8 + 120);
          }

          *(*(v8 + 112) + 8 * v21++) = v22;
          *(v8 + 120) = v21;
          ++v20;
        }

        while (v20 != v19);
      }

      if (sub_100079CC4(*(v2 + 144)))
      {
        v23 = *(v2 + 144) != 5;
        if (!sub_100079CC4(v23))
        {
          v25 = 4721;
          v26 = "::CLP::LogEntry::Rose::RoseCommunicationEvent::RoseRFChannel_IsValid(value)";
          v27 = "set_rf_channel";
          goto LABEL_28;
        }

        *(v8 + 140) |= 0x4000u;
        *(v8 + 128) = v23;
      }

      if (sub_100079CC4(*(v2 + 145)))
      {
        v24 = *(v2 + 145);
        if (!sub_100079CC4(v24))
        {
          v25 = 4744;
          v27 = "set_channel_usage_type";
          v26 = "::CLP::LogEntry::Rose::RangeAndAoaSolution_SensorFusion_ChannelUsageType_IsValid(value)";
LABEL_28:
          __assert_rtn(v27, "CLPRangeAndAoaSolution.pb.h", v25, v26);
        }

        *(v8 + 140) |= 0x8000u;
        *(v8 + 132) = v24;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v2 += 152;
    }

    while (v2 != v3);
  }
}

void sub_1002DF27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002DF2A0(_BOOL8 result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = v4[9];
      v6 = v4[8];
      if (v6 >= v5)
      {
        if (v5 == v4[10])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 6), v5 + 1);
          v5 = v4[9];
        }

        v4[9] = v5 + 1;
        sub_100166798();
      }

      v7 = *(v4 + 3);
      v4[8] = v6 + 1;
      v8 = *(v7 + 8 * v6);
      LODWORD(v7) = *v2;
      *(v8 + 92) |= 1u;
      *(v8 + 24) = v7;
      v9 = *(v2 + 432);
      if (!sub_10007A654(*(v2 + 432)))
      {
        sub_10049E518();
      }

      v10 = *(v2 + 448);
      *(v8 + 32) = *(v2 + 440);
      v11 = *(v8 + 92);
      *(v8 + 28) = v9;
      *(v8 + 48) = v10;
      v12 = *(v2 + 456);
      *(v8 + 92) = v11 | 0x3C;
      *(v8 + 40) = v12;
      LODWORD(v12) = *(v2 + 464);
      *(v8 + 92) = v11 | 0x7C;
      v13 = *(v2 + 468);
      *(v8 + 56) = v12;
      *(v8 + 60) = v13;
      *(v8 + 92) = v11 | 0x1FC;
      v14 = *(v8 + 64);
      if (!v14)
      {
        operator new();
      }

      *(v14 + 48) |= 1u;
      v15 = *(v14 + 16);
      if (!v15)
      {
        operator new();
      }

      v16 = sub_1002EB67C(v2 + 8, 0);
      *(v15 + 44) |= 1u;
      *(v15 + 16) = v16;
      v17 = sub_1002EB67C(v2 + 8, 1u);
      *(v15 + 44) |= 2u;
      *(v15 + 24) = v17;
      v18 = sub_1002EB67C(v2 + 8, 2u);
      *(v15 + 44) |= 4u;
      *(v15 + 32) = v18;
      *(v14 + 48) |= 2u;
      v19 = *(v14 + 24);
      if (!v19)
      {
        operator new();
      }

      v20 = sub_1002EB67C(v2 + 8, 3u);
      *(v19 + 44) |= 1u;
      *(v19 + 16) = v20;
      v21 = sub_1002EB67C(v2 + 8, 4u);
      *(v19 + 44) |= 2u;
      *(v19 + 24) = v21;
      v22 = sub_1002EB67C(v2 + 8, 5u);
      *(v19 + 44) |= 4u;
      *(v19 + 32) = v22;
      *(v14 + 48) |= 4u;
      v23 = *(v14 + 32);
      if (!v23)
      {
        operator new();
      }

      v24 = 0;
      *(v23 + 52) |= 3u;
      *(v23 + 16) = 0x600000006;
      do
      {
        v25 = *(v23 + 36);
        v26 = *(v23 + 32);
        if (v26 >= v25)
        {
          if (v25 == *(v23 + 40))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v23 + 24), v25 + 1);
            v25 = *(v23 + 36);
          }

          *(v23 + 36) = v25 + 1;
          sub_1001667FC();
        }

        v27 = *(v23 + 24);
        *(v23 + 32) = v26 + 1;
        v28 = *(v27 + 8 * v26);
        for (i = 0; i != 6; ++i)
        {
          v30 = sub_1002EB6B8(v2 + 96, v24, i);
          v31 = *(v28 + 24);
          if (v31 == *(v28 + 28))
          {
            sub_1000778F4((v28 + 16), v31 + 1);
            v31 = *(v28 + 24);
          }

          v32 = *(v28 + 16);
          *(v28 + 24) = v31 + 1;
          *(v32 + 8 * v31) = v30;
        }

        ++v24;
      }

      while (v24 != 6);
      v33 = *(v2 + 424) - 1;
      if (v33 > 8)
      {
        v34 = 1;
      }

      else
      {
        v34 = dword_10056A604[v33];
      }

      result = sub_10015627C(v34);
      if (!result)
      {
        sub_10049E4EC();
      }

      *(v14 + 48) |= 8u;
      *(v14 + 40) = v34;
      if (*(v2 + 576))
      {
        *(v8 + 92) |= 0x200u;
        v35 = *(v8 + 72);
        if (!v35)
        {
          operator new();
        }

        v36 = *(v35 + 44);
        v38 = *(v2 + 488);
        v37 = *(v2 + 496);
        *(v35 + 16) = *(v2 + 480);
        *(v35 + 24) = v37;
        *(v35 + 44) = v36 | 7;
        *(v35 + 32) = v38;
        *(v8 + 92) |= 0x400u;
        v39 = *(v8 + 80);
        if (!v39)
        {
          operator new();
        }

        v40 = *(v39 + 92);
        *(v39 + 16) = *(v2 + 504);
        *(v39 + 24) = *(v2 + 512);
        *(v39 + 32) = *(v2 + 520);
        *(v39 + 40) = *(v2 + 528);
        *(v39 + 48) = *(v2 + 536);
        *(v39 + 56) = *(v2 + 544);
        *(v39 + 64) = *(v2 + 552);
        *(v39 + 72) = *(v2 + 560);
        v41 = *(v2 + 568);
        *(v39 + 92) = v40 | 0x1FF;
        *(v39 + 80) = v41;
      }

      v2 += 584;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_1002DF7B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100009FF4(v14);
  if (sub_100009FF8(v14, *(a1 + 120)))
  {
    v16 |= 2u;
    v6 = v15;
    if (!v15)
    {
      operator new();
    }

    *(v15 + 44) |= 4u;
    v7 = *(v6 + 32);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 44) |= 2u;
    v8 = *(v7 + 24);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 28) |= 1u;
    v9 = *(v8 + 16);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 36) |= 1u;
    v10 = *(v9 + 16);
    if (!v10)
    {
      operator new();
    }

    *(v8 + 28) |= 1u;
    *(v9 + 36) |= 2u;
    v12 = *(v9 + 24);
    if (!v12)
    {
      operator new();
    }

    sub_1002DEF8C(v10, a2);
    sub_1002DF2A0(v12, a3);
    v11 = sub_10000A2E0(a1, v14);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v11 = 0;
  }

  sub_10000A80C(v14);
  return v11;
}

uint64_t sub_1002DFAB8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB0A8();
  }

  sub_100009FF4(v9);
  if (sub_100009FF8(v9, *(a1 + 120)))
  {
    v11 |= 2u;
    v4 = v10;
    if (!v10)
    {
      operator new();
    }

    *(v10 + 44) |= 2u;
    v5 = *(v4 + 24);
    if (!v5)
    {
      operator new();
    }

    v6 = sub_1002DFC7C(a2);
    if (!sub_100079C8C(v6))
    {
      __assert_rtn("set_device_type", "CLPNearbyd.pb.h", 6367, "::CLP::LogEntry::Nearbyd::DeviceType_IsValid(value)");
    }

    *(v5 + 496) |= 0x20u;
    *(v5 + 488) = v6;
    v7 = sub_10000A2E0(a1, v9);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v7 = 0;
  }

  sub_10000A80C(v9);
  return v7;
}

uint64_t sub_1002DFC7C(uint64_t a1)
{
  result = 0;
  if (a1 > 199)
  {
    if (a1 == 999)
    {
      v3 = 101;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 997)
    {
      v4 = 100;
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 202)
    {
      v5 = 57;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == 201)
    {
      v6 = 29;
    }

    else
    {
      v6 = 0;
    }

    if (a1 == 200)
    {
      v7 = 11;
    }

    else
    {
      v7 = v6;
    }

    if (a1 <= 201)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        result = a1;
        break;
      case 7:
        result = 12;
        break;
      case 8:
        result = 13;
        break;
      case 9:
        result = 14;
        break;
      case 10:
        result = 15;
        break;
      case 11:
        result = 20;
        break;
      case 12:
        result = 21;
        break;
      case 13:
        result = 22;
        break;
      case 14:
        result = 23;
        break;
      case 15:
        result = 30;
        break;
      case 16:
        result = 31;
        break;
      case 17:
        result = 32;
        break;
      case 18:
        result = 33;
        break;
      case 19:
        result = 39;
        break;
      case 20:
        result = 40;
        break;
      case 21:
        result = 41;
        break;
      case 22:
        result = 42;
        break;
      case 23:
        result = 47;
        break;
      case 24:
        result = 53;
        break;
      case 25:
        result = 54;
        break;
      case 26:
        result = 55;
        break;
      case 27:
        result = 56;
        break;
      case 100:
        result = 7;
        break;
      case 101:
        result = 8;
        break;
      case 102:
        result = 9;
        break;
      case 103:
        result = 10;
        break;
      case 104:
        result = 16;
        break;
      case 105:
        result = 17;
        break;
      case 106:
        result = 18;
        break;
      case 107:
        result = 19;
        break;
      case 108:
        result = 24;
        break;
      case 109:
        result = 25;
        break;
      case 110:
        result = 26;
        break;
      case 111:
        result = 27;
        break;
      case 112:
        result = 28;
        break;
      case 113:
        result = 34;
        break;
      case 114:
        result = 35;
        break;
      case 115:
        result = 36;
        break;
      case 116:
        result = 37;
        break;
      case 117:
        result = 38;
        break;
      case 118:
        result = 43;
        break;
      case 119:
        result = 44;
        break;
      case 120:
        result = 45;
        break;
      case 121:
        result = 46;
        break;
      case 122:
        result = 52;
        break;
      case 123:
        result = 48;
        break;
      case 124:
        result = 49;
        break;
      case 125:
        result = 50;
        break;
      case 126:
        result = 51;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1002DFE88(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB0DC();
  }

  sub_100009FF4(v10);
  if (sub_100009FF8(v10, *(a1 + 120)))
  {
    v12 |= 2u;
    v4 = v11;
    if (!v11)
    {
      operator new();
    }

    *(v11 + 44) |= 2u;
    v5 = *(v4 + 24);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 496) |= 0x40u;
    v6 = *(v5 + 56);
    if (!v6)
    {
      operator new();
    }

    v7 = *(v6 + 40);
    *(v6 + 24) = *a2;
    *(v6 + 40) = v7 | 0x7FA;
    *(v6 + 26) = *(a2 + 4);
    v8 = sub_10000A2E0(a1, v10);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v8 = 0;
  }

  sub_10000A80C(v10);
  return v8;
}

uint64_t sub_1002E006C(uint64_t a1, unsigned int *a2)
{
  sub_100009FF4(v43);
  if (sub_100009FF8(v43, *(a1 + 120)))
  {
    v42 = a1;
    v45 |= 2u;
    v4 = v44;
    if (!v44)
    {
      operator new();
    }

    *(v44 + 44) |= 2u;
    v5 = *(v4 + 24);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 496) |= 0x80u;
    v6 = *(v5 + 64);
    if (!v6)
    {
      operator new();
    }

    v7 = sub_1002DFC7C(*a2);
    if (!sub_100079C8C(v7))
    {
      __assert_rtn("set_device_type", "CLPNearbyd.pb.h", 4066, "::CLP::LogEntry::Nearbyd::DeviceType_IsValid(value)");
    }

    v8 = *(v6 + 68);
    *(v6 + 16) = v7;
    *(v6 + 24) = 0x2500000003;
    *(v6 + 68) = v8 | 0x1D;
    *(v6 + 56) = 37;
    v9 = atomic_load(a2 + 1);
    v10 = sub_1002D9AD4(v9);
    if (!sub_100079CA8(v10))
    {
      __assert_rtn("set_accessory_type", "CLPNearbyd.pb.h", 4202, "::CLP::LogEntry::Nearbyd::AccessoryType_IsValid(value)");
    }

    *(v6 + 68) |= 0x40u;
    *(v6 + 60) = v10;
    v11 = *(a2 + 2);
    if (v11)
    {
      if (v11[1] - *v11 != 72)
      {
        __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1656, "luts.size() == measurement_engine::kNumOfLUT");
      }

      v40 = a2;
      for (i = 0; i != 3; ++i)
      {
        v13 = (*v11 + 24 * i);
        if (v13[1] - *v13 != 888)
        {
          __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1659, "table.size() == measurement_engine::kLutSize");
        }

        for (j = 0; j != 37; ++j)
        {
          v15 = (*v13 + 24 * j);
          if (v15[1] - *v15 != 148)
          {
            __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1662, "row.size() == measurement_engine::kLutSize");
          }

          v16 = 0;
          do
          {
            v17 = (*v15 + v16);
            v18 = *v17;
            v19 = v17[1];
            v20 = *(v6 + 44);
            v21 = *(v6 + 40);
            if (v21 >= v20)
            {
              if (v20 == *(v6 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 32), v20 + 1);
                v20 = *(v6 + 44);
              }

              *(v6 + 44) = v20 + 1;
              sub_10009094C();
            }

            v22 = *(v6 + 32);
            *(v6 + 40) = v21 + 1;
            v23 = *(v22 + 8 * v21);
            v16 += 4;
            v23[7] |= 3u;
            v23[4] = v18;
            v23[5] = v19;
          }

          while (v16 != 148);
        }
      }

      v24 = 1;
      a2 = v40;
    }

    else
    {
      v24 = 0;
    }

    v26 = *(a2 + 12);
    if (v26)
    {
      v41 = v24;
      if (v26[1] - *v26 != 72)
      {
        __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1677, "luts.size() == measurement_engine::kNumOfLUT");
      }

      for (k = 0; k != 3; ++k)
      {
        v28 = (*v26 + 24 * k);
        if (v28[1] - *v28 != 888)
        {
          __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1680, "table.size() == measurement_engine::kLutSize");
        }

        for (m = 0; m != 37; ++m)
        {
          v30 = (*v28 + 24 * m);
          if (v30[1] - *v30 != 148)
          {
            __assert_rtn("logCalReverseLUTs", "PRProtobufLogger.cpp", 1683, "row.size() == measurement_engine::kLutSize");
          }

          v31 = 0;
          do
          {
            v32 = (*v30 + v31);
            v33 = *v32;
            v34 = v32[1];
            v35 = *(v6 + 44);
            v36 = *(v6 + 40);
            if (v36 >= v35)
            {
              if (v35 == *(v6 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 32), v35 + 1);
                v35 = *(v6 + 44);
              }

              *(v6 + 44) = v35 + 1;
              sub_10009094C();
            }

            v37 = *(v6 + 32);
            *(v6 + 40) = v36 + 1;
            v38 = *(v37 + 8 * v36);
            v31 += 4;
            v38[7] |= 3u;
            v38[4] = v33;
            v38[5] = v34;
          }

          while (v31 != 148);
        }
      }

      v24 = v41 + 1;
    }

    *(v6 + 68) |= 2u;
    *(v6 + 20) = v24;
    v25 = sub_10000A2E0(v42, v43);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v25 = 0;
  }

  sub_10000A80C(v43);
  return v25;
}

uint64_t sub_1002E0600(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (sub_1001F41D4(a4))
  {
    sub_100009FF4(v44);
    if (sub_100009FF8(v44, *(a1 + 120)))
    {
      v46 |= 2u;
      v8 = v45;
      if (!v45)
      {
        operator new();
      }

      *(v45 + 44) |= 2u;
      v9 = *(v8 + 24);
      if (!v9)
      {
        operator new();
      }

      *(v9 + 496) |= 0x200u;
      v10 = *(v9 + 80);
      if (!v10)
      {
        operator new();
      }

      v11 = sub_1001F4164(a4);
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = v11;
          v12 += v11 & 1;
          LOBYTE(v11) = v11 >> 1;
        }

        while (v13 > 1);
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v16 = sub_1002DFC7C(a2);
      if (sub_100079C8C(v16))
      {
        v17 = *(v10 + 108);
        *(v10 + 16) = v16;
        *(v10 + 20) = v14;
        *(v10 + 24) = 2 * v14;
        *(v10 + 28) = 181;
        *(v10 + 108) = v17 | 0x1F;
        *(v10 + 64) = 181;
        v18 = sub_1002D9AD4(a3);
        if (sub_100079CA8(v18))
        {
          *(v10 + 108) |= 0x200u;
          *(v10 + 68) = v18;
          if (sub_1001F416C(a4))
          {
            if ((a4[64] & 1) == 0)
            {
              sub_1000195BC();
            }

            if (a4[128] != 1)
            {
              sub_1000195BC();
            }

            for (i = 0; i != 181; ++i)
            {
              for (j = 0; j != 181; ++j)
              {
                v21 = sub_1001F37B8((a4 + 8), i, j);
                v22 = *(v10 + 40);
                if (v22 == *(v10 + 44))
                {
                  sub_100077844((v10 + 32), v22 + 1);
                  v22 = *(v10 + 40);
                }

                v23 = *(v10 + 32);
                *(v10 + 40) = v22 + 1;
                *(v23 + 4 * v22) = v21;
              }
            }

            for (k = 0; k != 181; ++k)
            {
              for (m = 0; m != 181; ++m)
              {
                v26 = sub_1001F37B8((a4 + 72), k, m);
                v27 = *(v10 + 56);
                if (v27 == *(v10 + 60))
                {
                  sub_100077844((v10 + 48), v27 + 1);
                  v27 = *(v10 + 56);
                }

                v28 = *(v10 + 48);
                *(v10 + 56) = v27 + 1;
                *(v28 + 4 * v27) = v26;
              }
            }
          }

          if (sub_1001F41A0(a4))
          {
            if ((a4[192] & 1) == 0)
            {
              sub_1000195BC();
            }

            if (a4[256] != 1)
            {
              sub_1000195BC();
            }

            for (n = 0; n != 181; ++n)
            {
              for (ii = 0; ii != 181; ++ii)
              {
                v31 = sub_1001F37B8((a4 + 136), n, ii);
                v32 = *(v10 + 80);
                if (v32 == *(v10 + 84))
                {
                  sub_100077844((v10 + 72), v32 + 1);
                  v32 = *(v10 + 80);
                }

                v33 = *(v10 + 72);
                *(v10 + 80) = v32 + 1;
                *(v33 + 4 * v32) = v31;
              }
            }

            for (jj = 0; jj != 181; ++jj)
            {
              for (kk = 0; kk != 181; ++kk)
              {
                v36 = sub_1001F37B8((a4 + 200), jj, kk);
                v37 = *(v10 + 96);
                if (v37 == *(v10 + 100))
                {
                  sub_100077844((v10 + 88), v37 + 1);
                  v37 = *(v10 + 96);
                }

                v38 = *(v10 + 88);
                *(v10 + 96) = v37 + 1;
                *(v38 + 4 * v37) = v36;
              }
            }

            v15 = sub_10000A2E0(a1, v44);
LABEL_53:
            sub_10000A80C(v44);
            return v15;
          }

          v40 = "calBlob.ch9CalAvailable()";
          v41 = 1744;
          v42 = "PRProtobufLogger.cpp";
          v43 = "logCalForwardLUTs";
        }

        else
        {
          v40 = "::CLP::LogEntry::Nearbyd::AccessoryType_IsValid(value)";
          v41 = 4511;
          v42 = "CLPNearbyd.pb.h";
          v43 = "set_accessory_type";
        }
      }

      else
      {
        v40 = "::CLP::LogEntry::Nearbyd::DeviceType_IsValid(value)";
        v41 = 4300;
        v42 = "CLPNearbyd.pb.h";
        v43 = "set_device_type";
      }

      __assert_rtn(v43, v42, v41, v40);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v15 = 0;
    goto LABEL_53;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB110();
  }

  return 0;
}

uint64_t sub_1002E0AF0(uint64_t a1, uint64_t *a2)
{
  sub_100009FF4(v19);
  if (sub_100009FF8(v19, *(a1 + 120)))
  {
    v21 |= 2u;
    v4 = v20;
    if (!v20)
    {
      operator new();
    }

    *(v20 + 44) |= 2u;
    v5 = *(v4 + 24);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 500) |= 0x80u;
    v6 = *(v5 + 320);
    if (!v6)
    {
      operator new();
    }

    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        v9 = v6[7];
        v10 = v6[6];
        if (v10 >= v9)
        {
          if (v9 == v6[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 4), v9 + 1);
            v9 = v6[7];
          }

          v6[7] = v9 + 1;
          sub_1000909B0();
        }

        v11 = *(v6 + 2);
        v6[6] = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v13 = *(v12 + 36);
        v14 = *(v7 + 8);
        v15 = *(v7 + 16);
        *(v12 + 16) = *v7;
        *(v12 + 20) = v14;
        *(v12 + 36) = v13 | 7;
        v16 = *(v12 + 24);
        if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::assign(v16, v15, v14);
        v7 += 40;
      }

      while (v7 != v8);
    }

    v17 = sub_10000A2E0(a1, v19);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v17 = 0;
  }

  sub_10000A80C(v19);
  return v17;
}

uint64_t sub_1002E0D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009FF4(v82);
  if (sub_100009FF8(v82, *(a1 + 120)))
  {
    v84 |= 2u;
    v6 = v83;
    if (!v83)
    {
      operator new();
    }

    *(v83 + 44) |= 2u;
    v7 = *(v6 + 24);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 496) |= 0x800u;
    v8 = *(v7 + 96);
    if (!v8)
    {
      operator new();
    }

    v9 = sub_1002D9AD4(a2);
    if (!sub_100079CA8(v9))
    {
      __assert_rtn("set_accessory_type", "CLPNearbyd.pb.h", 4602, "::CLP::LogEntry::Nearbyd::AccessoryType_IsValid(value)");
    }

    v10 = 0;
    *(v8 + 40) |= 1u;
    *(v8 + 32) = v9;
    v11 = a3;
    do
    {
      v12 = 0;
      v10 += 168;
      v13 = *(v8 + 24);
      do
      {
        v14 = *(v11 + v12);
        if (v13 == *(v8 + 28))
        {
          sub_100077844((v8 + 16), v13 + 1);
          v13 = *(v8 + 24);
        }

        *(*(v8 + 16) + 4 * v13++) = v14;
        *(v8 + 24) = v13;
        v12 += 4;
      }

      while (v12 != 168);
      v11 += 168;
    }

    while (v10 != 8400);
    v15 = 8600;
    v16 = a3 + 8600;
    do
    {
      v17 = 0;
      v15 += 200;
      v18 = *(v8 + 24);
      do
      {
        v19 = *(v16 + v17);
        if (v18 == *(v8 + 28))
        {
          sub_100077844((v8 + 16), v18 + 1);
          v18 = *(v8 + 24);
        }

        *(*(v8 + 16) + 4 * v18++) = v19;
        *(v8 + 24) = v18;
        v17 += 4;
      }

      while (v17 != 200);
      v16 += 200;
    }

    while (v15 != 13600);
    v20 = 13700;
    v21 = a3 + 13700;
    do
    {
      v22 = 0;
      v20 += 100;
      v23 = *(v8 + 24);
      do
      {
        v24 = *(v21 + v22);
        if (v23 == *(v8 + 28))
        {
          sub_100077844((v8 + 16), v23 + 1);
          v23 = *(v8 + 24);
        }

        *(*(v8 + 16) + 4 * v23++) = v24;
        *(v8 + 24) = v23;
        v22 += 4;
      }

      while (v22 != 100);
      v21 += 100;
    }

    while (v20 != 14900);
    v25 = 14948;
    v26 = a3 + 14948;
    do
    {
      v27 = 0;
      v25 += 48;
      v28 = *(v8 + 24);
      do
      {
        v29 = *(v26 + v27);
        if (v28 == *(v8 + 28))
        {
          sub_100077844((v8 + 16), v28 + 1);
          v28 = *(v8 + 24);
        }

        *(*(v8 + 16) + 4 * v28++) = v29;
        *(v8 + 24) = v28;
        v27 += 4;
      }

      while (v27 != 48);
      v26 += 48;
    }

    while (v25 != 15236);
    v30 = 0;
    v31 = *(v8 + 24);
    do
    {
      v32 = *(a3 + 8400 + v30);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
      }

      v33 = *(v8 + 16);
      *(v33 + 4 * v31++) = v32;
      *(v8 + 24) = v31;
      v30 += 4;
    }

    while (v30 != 200);
    for (i = 0; i != 100; i += 4)
    {
      v35 = *(a3 + 13600 + i);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v35;
      *(v8 + 24) = v31;
    }

    for (j = 0; j != 48; j += 4)
    {
      v37 = *(a3 + 14900 + j);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v37;
      *(v8 + 24) = v31;
    }

    for (k = 0; k != 24; k += 4)
    {
      v39 = *(a3 + 15236 + k);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v39;
      *(v8 + 24) = v31;
    }

    for (m = 0; m != 200; m += 4)
    {
      v41 = *(a3 + 15264 + m);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v41;
      *(v8 + 24) = v31;
    }

    for (n = 0; n != 200; n += 4)
    {
      v43 = *(a3 + 15464 + n);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v43;
      *(v8 + 24) = v31;
    }

    for (ii = 0; ii != 200; ii += 4)
    {
      v45 = *(a3 + 15664 + ii);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v31 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v31++) = v45;
      *(v8 + 24) = v31;
    }

    for (jj = 0; jj != 200; jj += 4)
    {
      v47 = *(a3 + 15864 + jj);
      if (v31 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v31 + 1);
        v48 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      else
      {
        v48 = v31;
      }

      v31 = v48 + 1;
      *(v8 + 24) = v48 + 1;
      *(v33 + 4 * v48) = v47;
    }

    v49 = *(a3 + 16064);
    if (v31 == *(v8 + 28))
    {
      sub_100077844((v8 + 16), v48 + 2);
      v31 = *(v8 + 24);
      v33 = *(v8 + 16);
    }

    v50 = 0;
    v51 = v49;
    v52 = v31 + 1;
    *(v8 + 24) = v31 + 1;
    *(v33 + 4 * v31) = v51;
    do
    {
      v53 = *(a3 + 16072 + v50);
      if (v52 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v52 + 1);
        v52 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v52++) = v53;
      *(v8 + 24) = v52;
      v50 += 4;
    }

    while (v50 != 100);
    for (kk = 0; kk != 100; kk += 4)
    {
      v55 = *(a3 + 16172 + kk);
      if (v52 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v52 + 1);
        v52 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v52++) = v55;
      *(v8 + 24) = v52;
    }

    for (mm = 0; mm != 100; mm += 4)
    {
      v57 = *(a3 + 16272 + mm);
      if (v52 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v52 + 1);
        v52 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v52++) = v57;
      *(v8 + 24) = v52;
    }

    for (nn = 0; nn != 100; nn += 4)
    {
      v59 = *(a3 + 16372 + nn);
      if (v52 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v52 + 1);
        v60 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      else
      {
        v60 = v52;
      }

      v52 = v60 + 1;
      *(v8 + 24) = v60 + 1;
      *(v33 + 4 * v60) = v59;
    }

    v61 = *(a3 + 16472);
    if (v52 == *(v8 + 28))
    {
      sub_100077844((v8 + 16), v60 + 2);
      v52 = *(v8 + 24);
      v33 = *(v8 + 16);
    }

    v62 = 0;
    v63 = v61;
    v64 = v52 + 1;
    *(v8 + 24) = v52 + 1;
    *(v33 + 4 * v52) = v63;
    do
    {
      v65 = *(a3 + 16480 + v62);
      if (v64 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v64 + 1);
        v64 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v64++) = v65;
      *(v8 + 24) = v64;
      v62 += 4;
    }

    while (v62 != 48);
    for (i1 = 0; i1 != 48; i1 += 4)
    {
      v67 = *(a3 + 16528 + i1);
      if (v64 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v64 + 1);
        v64 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v64++) = v67;
      *(v8 + 24) = v64;
    }

    for (i2 = 0; i2 != 48; i2 += 4)
    {
      v69 = *(a3 + 16576 + i2);
      if (v64 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v64 + 1);
        v64 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      *(v33 + 4 * v64++) = v69;
      *(v8 + 24) = v64;
    }

    for (i3 = 0; i3 != 48; i3 += 4)
    {
      v71 = *(a3 + 16624 + i3);
      if (v64 == *(v8 + 28))
      {
        sub_100077844((v8 + 16), v64 + 1);
        v72 = *(v8 + 24);
        v33 = *(v8 + 16);
      }

      else
      {
        v72 = v64;
      }

      v64 = v72 + 1;
      *(v8 + 24) = v72 + 1;
      *(v33 + 4 * v72) = v71;
    }

    v73 = *(a3 + 16672);
    v74 = *(v8 + 28);
    if (v64 == v74)
    {
      sub_100077844((v8 + 16), v72 + 2);
      v33 = *(v8 + 16);
      v64 = *(v8 + 24);
      v74 = *(v8 + 28);
    }

    v75 = v73;
    v76 = v64 + 1;
    *(v8 + 24) = v64 + 1;
    *(v33 + 4 * v64) = v75;
    v77 = *(a3 + 16680);
    if (v64 + 1 == v74)
    {
      sub_100077844((v8 + 16), v64 + 2);
      v33 = *(v8 + 16);
      v76 = *(v8 + 24);
      v74 = *(v8 + 28);
    }

    v78 = v76 + 1;
    *(v8 + 24) = v76 + 1;
    *(v33 + 4 * v76) = v77;
    v79 = *(a3 + 16684);
    if (v76 + 1 == v74)
    {
      sub_100077844((v8 + 16), v76 + 2);
      v78 = *(v8 + 24);
      v33 = *(v8 + 16);
    }

    *(v8 + 24) = v78 + 1;
    *(v33 + 4 * v78) = v79;
    v80 = sub_10000A2E0(a1, v82);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BA5E0();
    }

    v80 = 0;
  }

  sub_10000A80C(v82);
  return v80;
}

uint64_t sub_1002E16FC(uint64_t a1, const std::string *a2, uint64_t *a3, double a4)
{
  sub_10000A25C(*(a1 + 120), v23);
  if (v24 != 1)
  {
    return 0;
  }

  sub_10000A258(v20, v23);
  v22 |= 2u;
  v8 = v21;
  if (!v21)
  {
    operator new();
  }

  *(v21 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x10000u;
  v10 = *(v9 + 136);
  if (!v10)
  {
    operator new();
  }

  v11 = *(v10 + 60);
  *(v10 + 16) = a4;
  *(v10 + 60) = v11 | 3;
  v12 = *(v10 + 24);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, a2);
  v14 = *a3;
  v13 = a3[1];
  while (v14 != v13)
  {
    v15 = *(v10 + 44);
    v16 = *(v10 + 40);
    if (v16 >= v15)
    {
      if (v15 == *(v10 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 32), v15 + 1);
        v15 = *(v10 + 44);
      }

      *(v10 + 44) = v15 + 1;
      sub_100149848();
    }

    v17 = *(v10 + 32);
    *(v10 + 40) = v16 + 1;
    sub_1002E1998(*(v17 + 8 * v16), v14);
    v14 += 160;
  }

  v18 = sub_10000A2E0(a1, v20);
  sub_10000A80C(v20);
  if (v24)
  {
    sub_10000A80C(v23);
  }

  return v18;
}

double sub_1002E1998(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  *(a1 + 84) |= 1u;
  v6 = *(a1 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::assign(v6, v4, v5);
  v7 = *(a2 + 24);
  *(a1 + 84) |= 2u;
  *(a1 + 24) = v7;
  if (!sub_10007A654(0))
  {
    sub_10049E074();
  }

  *(a1 + 84) |= 4u;
  *(a1 + 48) = 0;
  if ((*(a2 + 32) - 1) >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (!sub_10007A654(v8))
  {
    sub_10049E074();
  }

  v10 = *(a1 + 84);
  v11 = v10 | 4;
  *(a1 + 84) = v10 | 4;
  *(a1 + 48) = v8;
  if (*(a2 + 40) == 1)
  {
    result = *(a2 + 36);
    v11 = v10 | 0xC;
    *(a1 + 84) = v10 | 0xC;
    *(a1 + 32) = result;
  }

  if (*(a2 + 80) == 1)
  {
    *(a1 + 84) = v11 | 0x10;
    v12 = *(a1 + 40);
    if (!v12)
    {
      operator new();
    }

    v13 = *(v12 + 48);
    *(v12 + 16) = *(a2 + 56);
    result = *(a2 + 72);
    *(v12 + 48) = v13 | 0xE;
    *(v12 + 32) = result;
    if (*(a2 + 48) == 1)
    {
      if (!sub_100079CC4(1u))
      {
        sub_10049E048();
      }

      *(v12 + 48) |= 1u;
      *(v12 + 40) = 1;
    }
  }

  if (*(a2 + 96) == 1)
  {
    result = *(a2 + 88);
    *(a1 + 84) |= 0x20u;
    *(a1 + 56) = result;
  }

  if (*(a2 + 105) == 1)
  {
    v14 = *(a2 + 104);
    *(a1 + 84) |= 0x40u;
    *(a1 + 52) = v14;
  }

  if (*(a2 + 120) == 1)
  {
    result = *(a2 + 112);
    *(a1 + 84) |= 0x80u;
    *(a1 + 64) = result;
  }

  if (*(a2 + 152) == 1)
  {
    result = *(a2 + 144);
    *(a1 + 84) |= 0x100u;
    *(a1 + 72) = result;
  }

  return result;
}

uint64_t sub_1002E1BC8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6, double a7)
{
  sub_10000A25C(*(a1 + 120), v23);
  if (v24 != 1)
  {
    return 0;
  }

  sub_10000A258(v20, v23);
  v22 |= 2u;
  v14 = v21;
  if (!v21)
  {
    operator new();
  }

  *(v21 + 44) |= 2u;
  v15 = *(v14 + 24);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 496) |= 0x1000u;
  v16 = *(v15 + 104);
  if (!v16)
  {
    operator new();
  }

  v17 = *(v16 + 56);
  *(v16 + 16) = a2;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 28) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = v17 | 0x3F;
  *(v16 + 40) = a5;
  v18 = sub_10000A2E0(a1, v20);
  sub_10000A80C(v20);
  if (v24)
  {
    sub_10000A80C(v23);
  }

  return v18;
}

uint64_t sub_1002E1DCC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_10000A25C(*(a1 + 120), v19);
  if (v20 != 1)
  {
    return 0;
  }

  sub_10000A258(v16, v19);
  v18 |= 2u;
  v8 = v17;
  if (!v17)
  {
    operator new();
  }

  *(v17 + 44) |= 2u;
  v9 = *(v8 + 24);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 496) |= 0x2000u;
  v10 = *(v9 + 112);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 148) |= 1u;
  v11 = *(v10 + 16);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 44);
  *(v11 + 16) = a4;
  *(v11 + 32) = a2;
  *(v11 + 44) = v12 | 7;
  v13 = *(v11 + 24);
  if (!v13)
  {
    operator new();
  }

  sub_1002E1998(v13, a3);
  v14 = sub_10000A2E0(a1, v16);
  sub_10000A80C(v16);
  if (v20)
  {
    sub_10000A80C(v19);
  }

  return v14;
}

uint64_t sub_1002E2058(uint64_t a1, const std::string *a2, std::string **a3, uint64_t a4, const std::string *a5, uint64_t a6)
{
  sub_10000A25C(*(a1 + 120), v64);
  if (v65 != 1)
  {
    return 0;
  }

  sub_10000A258(v61, v64);
  v63 |= 2u;
  v12 = v62;
  if (!v62)
  {
    operator new();
  }

  *(v62 + 44) |= 2u;
  v13 = *(v12 + 24);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 496) |= 0x2000u;
  v14 = *(v13 + 112);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 148) |= 2u;
  v15 = *(v14 + 24);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 120) |= 1u;
  v16 = *(v15 + 16);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, a2);
  *(v15 + 120) |= 0x80u;
  v17 = *(v15 + 88);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, a5);
  v19 = *a3;
  v18 = a3[1];
  while (v19 != v18)
  {
    v20 = *(v15 + 36);
    v21 = *(v15 + 32);
    if (v21 >= v20)
    {
      if (v20 == *(v15 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v15 + 24), v20 + 1);
        v20 = *(v15 + 36);
      }

      *(v15 + 36) = v20 + 1;
      sub_1001496B8();
    }

    v22 = *(v15 + 24);
    *(v15 + 32) = v21 + 1;
    sub_1002E2968(*(v22 + 8 * v21), v19);
    v19 += 2;
  }

  *(v15 + 120) |= 0x20u;
  v24 = *(v15 + 72);
  if (!v24)
  {
    operator new();
  }

  v25 = *a4;
  if (*a4 != a4 + 8)
  {
    v26 = "::CLP::LogEntry::Nearbyd::NI::RangingTechnology_IsValid(value)";
    do
    {
      v27 = v24[7];
      v28 = v24[6];
      if (v28 >= v27)
      {
        if (v27 == v24[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 4), v27 + 1);
          v27 = v24[7];
        }

        v24[7] = v27 + 1;
        sub_100149654();
      }

      v29 = *(v24 + 2);
      v24[6] = v28 + 1;
      v30 = *(v29 + 8 * v28);
      v31 = *(v25 + 7);
      if (v31 <= 2)
      {
        if (v31 == 1)
        {
          if (!sub_100079CD0(1u))
          {
LABEL_84:
            v59 = 15350;
            v60 = "set_technology";
            goto LABEL_86;
          }

          v32 = 1;
        }

        else
        {
          if (v31 != 2)
          {
            goto LABEL_48;
          }

          if (!sub_100079CD0(2u))
          {
            goto LABEL_84;
          }

          v32 = 2;
        }
      }

      else
      {
        switch(v31)
        {
          case 3:
            if (!sub_100079CD0(3u))
            {
              goto LABEL_84;
            }

            v32 = 3;
            break;
          case 4:
            if (!sub_100079CD0(4u))
            {
              goto LABEL_84;
            }

            v32 = 4;
            break;
          case 5:
            if (!sub_100079CD0(0))
            {
              goto LABEL_84;
            }

            v32 = 0;
            break;
          default:
            goto LABEL_48;
        }
      }

      v30[7] |= 1u;
      v30[4] = v32;
LABEL_48:
      v33 = *(v25 + 8);
      switch(v33)
      {
        case 3:
          if (!sub_10007A654(3u))
          {
LABEL_85:
            v59 = 15373;
            v60 = "set_filter";
            v26 = "::CLP::LogEntry::Nearbyd::NI::FilterType_IsValid(value)";
LABEL_86:
            __assert_rtn(v60, "NearbyInteractionTypes.pb.h", v59, v26);
          }

          goto LABEL_56;
        case 2:
          v34 = sub_10007A654(2u);
          goto LABEL_53;
        case 1:
          v34 = sub_10007A654(1u);
LABEL_53:
          if (!v34)
          {
            goto LABEL_85;
          }

LABEL_56:
          v30[7] |= 2u;
          v30[5] = v33;
          break;
      }

      v35 = v25[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v25[2];
          v37 = *v36 == v25;
          v25 = v36;
        }

        while (!v37);
      }

      v25 = v36;
    }

    while (v36 != (a4 + 8));
  }

  *(v15 + 120) |= 4u;
  v38 = *(v15 + 48);
  if (!v38)
  {
    operator new();
  }

  v39 = *(v38 + 36);
  *(v38 + 16) = *(a4 + 24);
  *(v38 + 36) = v39 | 7;
  v40 = *(v38 + 24);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 28) |= 3u;
  *(v40 + 16) = *(a4 + 32);
  *(v15 + 120) |= 0x10u;
  v41 = *(v15 + 64);
  if (!v41)
  {
    operator new();
  }

  v42 = *(v41 + 72);
  *(v41 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a4 + 264)), *(a4 + 280));
  *(v41 + 32) = vcvt_f32_f64(*(a4 + 296));
  v43 = *(a4 + 312);
  *(v41 + 64) = v43;
  *(v41 + 40) = *(a4 + 320);
  *(v41 + 72) = v42 | 0x3FF;
  v44 = *(v41 + 56);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 28) |= 3u;
  *(v44 + 16) = *(a4 + 336);
  *(v15 + 120) |= 0x40u;
  v45 = *(v15 + 80);
  if (!v45)
  {
    operator new();
  }

  v46 = *(v45 + 40);
  *(v45 + 16) = *(a4 + 424);
  v47 = *(a4 + 536);
  *(v45 + 40) = v46 | 9;
  *(v45 + 32) = v47;
  *(v15 + 120) |= 0x200u;
  v48 = *(v15 + 104);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a4 + 120);
  v50 = *(v48 + 44);
  *(v48 + 44) = v50 | 1;
  *(v48 + 16) = v49;
  *(v48 + 20) = *(a4 + 124);
  *(v48 + 44) = v50 | 7;
  v51 = *(v48 + 24);
  if (!v51)
  {
    operator new();
  }

  v52 = *(v51 + 88);
  *(v51 + 80) = *(a4 + 128);
  *(v51 + 24) = *(a4 + 136);
  *(v51 + 40) = *(a4 + 152);
  *(v51 + 56) = *(a4 + 168);
  v53 = *(a4 + 184);
  *(v51 + 88) = v52 | 0x3FC;
  *(v51 + 72) = v53;
  *(v48 + 44) |= 8u;
  v54 = *(v48 + 32);
  if (!v54)
  {
    operator new();
  }

  v55 = *(v54 + 88);
  *(v54 + 80) = *(a4 + 192);
  *(v54 + 24) = *(a4 + 200);
  *(v54 + 40) = *(a4 + 216);
  *(v54 + 56) = *(a4 + 232);
  v56 = *(a4 + 248);
  *(v54 + 88) = v55 | 0x3FC;
  *(v54 + 72) = v56;
  v57 = *a6;
  if (!*(a6 + 4))
  {
    v57 = 0.0;
  }

  *(v15 + 120) |= 0x400u;
  *(v15 + 112) = v57;
  v23 = sub_10000A2E0(a1, v61);
  sub_10000A80C(v61);
  if (v65)
  {
    sub_10000A80C(v64);
  }

  return v23;
}

BOOL sub_1002E2968(uint64_t a1, std::string *__str)
{
  *(a1 + 56) |= 1u;
  v4 = *(a1 + 16);
  if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v4, __str);
  v5 = *&__str[1].__r_.__value_.__l.__data_;
  v6 = *(a1 + 56);
  *(a1 + 56) = v6 | 2;
  *(a1 + 24) = v5;
  v7 = __str[1].__r_.__value_.__r.__words[1];
  v8 = SHIDWORD(__str[1].__r_.__value_.__r.__words[0]);
  *(a1 + 56) = v6 | 0x22;
  *(a1 + 40) = v8;
  if (v7 - 1 >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (!sub_10007A654(v9))
  {
    sub_10049DFF0();
  }

  v10 = *(a1 + 56);
  *(a1 + 32) = v9;
  *(a1 + 48) = __str[1].__r_.__value_.__r.__words[2];
  *(a1 + 56) = v10 | 0x4C;
  v11 = HIDWORD(__str[1].__r_.__value_.__r.__words[1]) - 2;
  if (v11 > 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_10056A628[v11];
  }

  result = sub_1000FD2A8(v12);
  if (!result)
  {
    sub_10049E01C();
  }

  *(a1 + 56) |= 0x10u;
  *(a1 + 36) = v12;
  return result;
}

uint64_t sub_1002E2A8C(uint64_t a1, const std::string *a2)
{
  sub_10000A25C(*(a1 + 120), v14);
  if (v15 != 1)
  {
    return 0;
  }

  sub_10000A258(v11, v14);
  v13 |= 2u;
  v4 = v12;
  if (!v12)
  {
    operator new();
  }

  *(v12 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 496) |= 0x2000u;
  v6 = *(v5 + 112);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 148) |= 0x10u;
  v7 = *(v6 + 48);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 28) |= 1u;
  v8 = *(v7 + 16);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, a2);
  v9 = sub_10000A2E0(a1, v11);
  sub_10000A80C(v11);
  if (v15)
  {
    sub_10000A80C(v14);
  }

  return v9;
}

uint64_t sub_1002E2CD4(uint64_t a1, uint64_t a2, int a3, std::string **a4, int a5, double a6)
{
  sub_10000A25C(*(a1 + 120), v28);
  if (v29 != 1)
  {
    return 0;
  }

  sub_10000A258(v25, v28);
  v27 |= 2u;
  v12 = v26;
  if (!v26)
  {
    operator new();
  }

  *(v26 + 44) |= 2u;
  v13 = *(v12 + 24);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 496) |= 0x2000u;
  v14 = *(v13 + 112);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 148) |= 0x1000u;
  v15 = *(v14 + 112);
  if (!v15)
  {
    operator new();
  }

  v16 = *(v15 + 72);
  *(v15 + 16) = a6;
  *(v15 + 72) = v16 | 7;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v18 = *a4;
  v17 = a4[1];
  while (v18 != v17)
  {
    v19 = *(v15 + 52);
    v20 = *(v15 + 48);
    if (v20 >= v19)
    {
      if (v19 == *(v15 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v15 + 40), v19 + 1);
        v19 = *(v15 + 52);
      }

      *(v15 + 52) = v19 + 1;
      sub_1001496B8();
    }

    v21 = *(v15 + 40);
    *(v15 + 48) = v20 + 1;
    sub_1002E2968(*(v21 + 8 * v20), v18);
    v18 += 2;
  }

  if ((a5 - 1) >= 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_10056A470[a5 - 1];
  }

  if (!sub_100094800(v23))
  {
    __assert_rtn("set_intent_predictor_type", "NearbyInteractionTypes.pb.h", 16866, "::CLP::LogEntry::Nearbyd::NI::IntentPredictorType_IsValid(value)");
  }

  *(v15 + 72) |= 0x10u;
  *(v15 + 64) = v23;
  v22 = sub_10000A2E0(a1, v25);
  sub_10000A80C(v25);
  if (v29)
  {
    sub_10000A80C(v28);
  }

  return v22;
}

uint64_t sub_1002E3000(uint64_t a1, uint64_t a2)
{
  sub_10000A25C(*(a1 + 120), v13);
  if (v14 != 1)
  {
    return 0;
  }

  sub_10000A258(v10, v13);
  v12 |= 2u;
  v4 = v11;
  if (!v11)
  {
    operator new();
  }

  *(v11 + 44) |= 2u;
  v5 = *(v4 + 24);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 496) |= 0x2000u;
  v6 = *(v5 + 112);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 148) |= 0x2000u;
  v7 = *(v6 + 120);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 28) |= 1u;
  *(v7 + 16) = a2;
  v8 = sub_10000A2E0(a1, v10);
  sub_10000A80C(v10);
  if (v14)
  {
    sub_10000A80C(v13);
  }

  return v8;
}

uint64_t sub_1002E320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  sub_10000A25C(*(a1 + 120), v24);
  if (v25 != 1)
  {
    return 0;
  }

  sub_10000A258(v21, v24);
  v23 |= 2u;
  v12 = v22;
  if (!v22)
  {
    operator new();
  }

  *(v22 + 44) |= 2u;
  v13 = *(v12 + 24);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 496) |= 0x2000u;
  v14 = *(v13 + 112);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 148) |= 0x200u;
  v15 = *(v14 + 88);
  if (!v15)
  {
    operator new();
  }

  v16 = *(v15 + 56);
  *(v15 + 16) = a6;
  *(v15 + 56) = v16 | 9;
  v17 = *(v15 + 40);
  if (!v17)
  {
    operator new();
  }

  sub_1002E1998(v17, a4);
  v18 = *(v15 + 56);
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 56) = v18 | 0x16;
  *(v15 + 48) = a5;
  v19 = sub_10000A2E0(a1, v21);
  sub_10000A80C(v21);
  if (v25)
  {
    sub_10000A80C(v24);
  }

  return v19;
}