void sub_10063861C(uint64_t a1, char *a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v4 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (a2[23] < 0)
    {
      v5 = *a2;
    }

    v6 = a1;
    if (*(a1 + 23) < 0)
    {
      v6 = *a1;
    }

    v7 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v7 = *v7;
    }

    v8 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v8 = *v8;
    }

    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    v10 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v10 = *v10;
    }

    v11 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v11 = *v11;
    }

    v12 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v12 = *v12;
    }

    v13 = *(a1 + 168);
    v14 = *(a1 + 170);
    v15 = *(a1 + 169);
    v16 = 136317699;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 2081;
    v23 = v8;
    v24 = 2081;
    v25 = v9;
    v26 = 2081;
    v27 = v10;
    v28 = 2081;
    v29 = v11;
    v30 = 2081;
    v31 = v12;
    v32 = 1026;
    v33 = v13;
    v34 = 1026;
    v35 = v14;
    v36 = 1026;
    v37 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "%s,manufacturer,%{private}s,name,%{private}s,model,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,ppid,%{private}s,onDenyList,%{public}d,supportsCarPlay,%{public}d,supportsLocation,%{public}d", &v16, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EED50(a2, a1);
  }
}

void sub_100638AA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "userInfo")];
  v3 = v2;
  if ([*(a1 + 40) setupAccessory:v2 withListenerCall:1])
  {
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    *v27 = 0u;
    *v28 = 0u;
    *v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    *v24 = 0u;
    *v21 = 0u;
    *v22 = 0u;
    v31 = 257;
    sub_1006360B4(v2, v21);
    v4 = *(a1 + 40);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    sub_10063A160(v7, v21);
    v6(v5, v7, 1);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    if ((v30[23] & 0x80000000) != 0)
    {
      operator delete(*v30);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v25[0]) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(v21[0]);
    }
  }
}

void sub_100638C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10063A344(&a9);
  sub_10063A344(&a31);
  _Unwind_Resume(a1);
}

void sub_100638C74(id a1)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v1 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "accessory disconnected, no action taken", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EF1EC();
  }
}

void sub_100638D7C(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = [*(a1 + 40) userInfo];
    if (v2)
    {
      v3 = [v2 objectForKey:EAAccessoryNMEASentenceFromAccessoryKey];
      if (v3)
      {
        v4 = v3;
        if (([*(*(a1 + 32) + 8) isEqual:v3] & 1) == 0)
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE0CC();
          }

          v5 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "NMEA Received from different accessory", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018EF2D0();
          }

          v68 = 0u;
          memset(v69, 0, sizeof(v69));
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          *buf = 0u;
          v61 = 0u;
          v70 = 257;
          sub_1006360B4(*(*(a1 + 32) + 8), buf);
          v6 = *(a1 + 32);
          v7 = *(v6 + 32);
          v8 = *(v6 + 16);
          sub_10063A160(__dst, buf);
          v7(v8, __dst);
          if (v59 < 0)
          {
            operator delete(__p);
          }

          if (v57 < 0)
          {
            operator delete(v56);
          }

          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v49 < 0)
          {
            operator delete(v48);
          }

          if (v47 < 0)
          {
            operator delete(__dst[0]);
          }

          *(*(a1 + 32) + 8) = 0;
          v9 = v4;
          if ([*(a1 + 32) setupAccessory:v4 withListenerCall:1])
          {
            v43 = 0u;
            memset(v44, 0, sizeof(v44));
            *v41 = 0u;
            *v42 = 0u;
            *v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            *v38 = 0u;
            *v35 = 0u;
            *v36 = 0u;
            v45 = 257;
            sub_1006360B4(v4, v35);
            v10 = *(a1 + 32);
            v11 = *(v10 + 16);
            v12 = *(v10 + 24);
            sub_10063A160(v21, v35);
            v12(v11, v21, 1);
            if (v34 < 0)
            {
              operator delete(v33);
            }

            if (v32 < 0)
            {
              operator delete(v31);
            }

            if (v30 < 0)
            {
              operator delete(v29);
            }

            if (v28 < 0)
            {
              operator delete(v27);
            }

            if (v26 < 0)
            {
              operator delete(v25);
            }

            if (v24 < 0)
            {
              operator delete(v23);
            }

            if (v22 < 0)
            {
              operator delete(v21[0]);
            }

            if ((v44[23] & 0x80000000) != 0)
            {
              operator delete(*v44);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42[1]);
            }

            if (SHIBYTE(v42[0]) < 0)
            {
              operator delete(v41[0]);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[1]);
            }

            if (SHIBYTE(v39[0]) < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[1]);
            }

            if (SHIBYTE(v36[0]) < 0)
            {
              operator delete(*v35);
            }
          }

          if ((v69[23] & 0x80000000) != 0)
          {
            operator delete(*v69);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (SBYTE7(v67) < 0)
          {
            operator delete(v66);
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(*(&v64 + 1));
          }

          if (SBYTE7(v64) < 0)
          {
            operator delete(v63);
          }

          if (SHIBYTE(v62) < 0)
          {
            operator delete(*(&v61 + 1));
          }

          if (SBYTE7(v61) < 0)
          {
            operator delete(*buf);
          }
        }

        v13 = *(*(a1 + 32) + 8);
        if (v13)
        {
          *buf = 0;
          if ([v13 accessoryHasNMEASentencesAvailable])
          {
            do
            {
              [*(*(a1 + 32) + 8) getNMEASentence:buf];
              if (*buf)
              {
                (*(*(a1 + 32) + 40))(*(*(a1 + 32) + 16));
              }

              else
              {
                if (qword_1025D45E0 != -1)
                {
                  sub_1018EE1FC();
                }

                v14 = qword_1025D45E8;
                if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
                {
                  *v35 = 0;
                  _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "nmea data is null", v35, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018EF3BC(&v19, v20);
                }
              }
            }

            while (([*(*(a1 + 32) + 8) accessoryHasNMEASentencesAvailable] & 1) != 0);
          }
        }

        else
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE1FC();
          }

          v18 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "No Accessory information in NMEA message", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018EF4D0();
          }
        }
      }

      else
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1018EE0CC();
        }

        v17 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "No Accessory information in NMEA message", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018EF5BC();
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v16 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "No userInfo in NMEA message", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018EF6A8();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v15 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "no location accessory available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EF794();
    }
  }
}

void sub_1006393A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_10063A344(&a11);
  sub_10063A344(&a33);
  sub_10063A344(v33 - 240);
  _Unwind_Resume(a1);
}

void sub_100639560(uint64_t a1)
{
  if (([*(a1 + 32) setupEphemeris] & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v1 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "could not get ephemeris url", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018EF880();
    }
  }
}

void sub_100639674(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  if (*(*(a1 + 40) + 8))
  {
    v3 = v2;
    v4 = [v2 objectForKey:EATimeSyncInfoOffsetEstimate];
    if (v4)
    {
      [v4 doubleValue];
      v6 = v5;
      v7 = [v3 objectForKey:EATimeSyncInfoOffsetUncertainty];
      if (v7)
      {
        [v7 doubleValue];
        if (qword_1025D45E0 != -1)
        {
          v17 = v8;
          sub_1018EE0CC();
          v8 = v17;
        }

        v9 = v6 / 1000.0;
        v10 = qword_1025D45E8;
        v11 = v8 / 1000.0;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(a1 + 40) + 8);
          *buf = 134218496;
          v19 = v12;
          v20 = 2048;
          v21 = v9;
          v22 = 2048;
          v23 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "STARK,fAccessory,%p,timeSyncOffset,%.6lf,timeSyncUnc,%.6lf", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE1FC();
          }

          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver onStarkTimeSyncNotification:]_block_invoke", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      else
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1018EE0CC();
        }

        v16 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning STARK,unexpected,time sync unc is NULL", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018EF964();
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v15 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning STARK,unexpected,time sync estimate is NULL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EFA48();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v14 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "STARK,unexpected,fAccessory is NULL", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018EFB2C();
    }
  }
}

uint64_t sub_100639FE0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v11 = *(a2 + 84);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 168) = v11;
  return a1;
}

char *sub_10063A160(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100007244(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100007244(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100007244(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  v11 = *(a2 + 84);
  __dst[170] = *(a2 + 170);
  *(__dst + 84) = v11;
  return __dst;
}

void sub_10063A2B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063A344(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063A408(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10063A408(a1, *a2);
    sub_10063A408(a1, a2[1]);
    sub_10063A464((a2 + 4));

    operator delete(a2);
  }
}

void sub_10063A464(uint64_t a1)
{
  sub_10063A344(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double sub_10063A550(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_10063A57C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10063A650(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_10063A6A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063A784(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063A870(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063BA1C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void sub_10063BD94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    *(a2 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

uint64_t sub_10063BE10()
{
  if (qword_102637078)
  {
    (*(*qword_102637078 + 8))(qword_102637078);
  }

  if (qword_102637080)
  {
    (*(*qword_102637080 + 8))(qword_102637080);
  }

  if (qword_102637088)
  {
    (*(*qword_102637088 + 8))(qword_102637088);
  }

  if (qword_102637090)
  {
    (*(*qword_102637090 + 8))(qword_102637090);
  }

  if (qword_102637098)
  {
    (*(*qword_102637098 + 8))(qword_102637098);
  }

  if (qword_1026370A0)
  {
    (*(*qword_1026370A0 + 8))(qword_1026370A0);
  }

  if (qword_1026370A8)
  {
    (*(*qword_1026370A8 + 8))(qword_1026370A8);
  }

  result = qword_1026370B0;
  if (qword_1026370B0)
  {
    v1 = *(*qword_1026370B0 + 8);

    return v1();
  }

  return result;
}

void sub_10063BFB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_102658498 & 1) == 0)
  {
    byte_102658498 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPRayTracingTilesAvailability.pb.cc", a4);
    operator new();
  }
}

void *sub_10063C2F0(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_102464C78;
  return result;
}

void sub_10063C314(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(a1 + 20) |= 1u;
    v4 = *(a1 + 8);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 8);
    if (!v5)
    {
      v5 = *(qword_102637078 + 8);
    }

    sub_10063C8F4(v4, v5);
  }
}

void sub_10063C404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063C41C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464C78;
  if (qword_102637078 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063C4AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063C41C(a1);

  operator delete();
}

uint64_t sub_10063C4E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637078;
  if (!qword_102637078)
  {
    sub_10063BFB8(0, a2, a3, a4);
    return qword_102637078;
  }

  return result;
}

uint64_t sub_10063C560(uint64_t result)
{
  v1 = result;
  if (*(result + 20))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_10063C598(result);
    }
  }

  *(v1 + 20) = 0;
  return result;
}

uint64_t sub_10063C598(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (v2)
  {
    if (*(a1 + 52))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(a1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_10063D5E8(v4);
      }
    }
  }

  result = sub_1003C79DC(a1 + 24);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_10063C5FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v17);
      if (!sub_10063F724(v7, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v11);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10063C7D0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102637078 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_10063C7FC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637078 + 8);
    }

    v5 = sub_10063FC5C(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_10063C86C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063C314(a1, lpsrc);
}

void sub_10063C8F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_10063FE24((a1 + 24), a2 + 24);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_1026370B0 + 8);
      }

      sub_10063CDCC(v5, v6);
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 52) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = *(qword_1026370B0 + 16);
      }

      sub_10063D2E4(v7, v8);
    }
  }
}

void sub_10063CA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_10063CA90(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    result = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_10063CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063CB54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464CF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063CBF4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10063CC08(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v8 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v8) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v8;
      *(a1 + 20) |= 1u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10063CCF8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  }

  return result;
}

uint64_t sub_10063CD10(uint64_t a1)
{
  v1 = ((*(a1 + 20) << 31) >> 31) & 9;
  *(a1 + 16) = v1;
  return v1;
}

double sub_10063CD2C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063CA90(a1, lpsrc);
}

void sub_10063CDCC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_10063CE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063CEB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063CF50(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10063CF64(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[5] |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063D0E0(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_10063D14C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

void sub_10063D1DC(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063CDCC(a1, lpsrc);
}

uint64_t sub_10063D27C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102464DE0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  sub_10063D2E4(a1, a2);
  return a1;
}

void sub_10063D2E4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102637090 + 8);
      }

      sub_10063CA90(v6, v7);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 20);
    *(a1 + 48) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 24);
    *(a1 + 48) |= 8u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 28);
    *(a1 + 48) |= 0x10u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 32);
    *(a1 + 48) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 36);
    *(a1 + 48) |= 0x40u;
    *(a1 + 36) = v13;
    if ((*(a2 + 48) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 48) |= 0x80u;
    *(a1 + 40) = v5;
  }
}

void sub_10063D4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063D4C8(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464DE0;
  if (qword_102637090 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063D558(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063D4C8(a1);

  operator delete();
}

uint64_t sub_10063D5E8(uint64_t result)
{
  if (*(result + 48))
  {
    if (*(result + 48))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_10063D620(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_97;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_73;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_81;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_57;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_49;
      }

LABEL_36:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_36;
    }

    *(a1 + 48) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v42 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v15;
      *(this + 1) = v15 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
    if (!sub_10063CC08(v14, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
    }

    v26 = *(this + 1);
    v9 = *(this + 2);
    if (v26 < v9 && *v26 == 16)
    {
      v10 = v26 + 1;
      *(this + 1) = v10;
LABEL_49:
      if (v10 >= v9 || (v27 = *v10, v27 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v28 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v27;
        v28 = v10 + 1;
        *(this + 1) = v28;
      }

      *(a1 + 48) |= 2u;
      if (v28 < v9 && *v28 == 24)
      {
        v17 = v28 + 1;
        *(this + 1) = v17;
LABEL_57:
        if (v17 >= v9 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v30;
          v31 = v17 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 48) |= 4u;
        if (v31 < v9 && *v31 == 32)
        {
          v12 = v31 + 1;
          *(this + 1) = v12;
LABEL_65:
          if (v12 >= v9 || (v32 = *v12, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v32;
            v33 = v12 + 1;
            *(this + 1) = v33;
          }

          *(a1 + 48) |= 8u;
          if (v33 < v9 && *v33 == 40)
          {
            v16 = v33 + 1;
            *(this + 1) = v16;
LABEL_73:
            if (v16 >= v9 || (v34 = *v16, v34 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v35 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v34;
              v35 = v16 + 1;
              *(this + 1) = v35;
            }

            *(a1 + 48) |= 0x10u;
            if (v35 < v9 && *v35 == 48)
            {
              v11 = v35 + 1;
              *(this + 1) = v11;
LABEL_81:
              if (v11 >= v9 || (v36 = *v11, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v37 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v36;
                v37 = v11 + 1;
                *(this + 1) = v37;
              }

              *(a1 + 48) |= 0x20u;
              if (v37 < v9 && *v37 == 56)
              {
                v18 = v37 + 1;
                *(this + 1) = v18;
LABEL_89:
                if (v18 >= v9 || (v38 = *v18, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 36) = v38;
                  v39 = v18 + 1;
                  *(this + 1) = v39;
                }

                *(a1 + 48) |= 0x40u;
                if (v39 < v9 && *v39 == 64)
                {
                  v13 = v39 + 1;
                  *(this + 1) = v13;
LABEL_97:
                  if (v13 >= v9 || (v40 = *v13, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 40) = v40;
                    v41 = v13 + 1;
                    *(this + 1) = v41;
                  }

                  *(a1 + 48) |= 0x80u;
                  if (v41 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
                  {
                    *(this + 8) = 0;
                    result = 1;
                    *(this + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10063DB1C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637090 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
    if ((v5[12] & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v8, a2, a4);
}

uint64_t sub_10063DC44(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637090 + 8);
  }

  v6 = ((*(v5 + 20) << 31) >> 31) & 9;
  *(v5 + 16) = v6;
  v4 = v6 | 2u;
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_28:
  v13 = *(a1 + 28);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_32:
  v15 = *(a1 + 32);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_36:
  v17 = *(a1 + 36);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_40:
    v19 = *(a1 + 40);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_44:
  *(a1 + 44) = v4;
  return v4;
}

void sub_10063DDE8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063D2E4(a1, lpsrc);
}

double sub_10063DE88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_10063DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063DF6C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063E00C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10063E020(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v10;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10063E17C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_10063E1E8(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

double sub_10063E214(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063DE88(a1, lpsrc);
}

double sub_10063E2B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      *(a1 + 28) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_1026370A0 + 8);
      }

      result = sub_10063DE88(v6, v7);
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 16);
      if (!v9)
      {
        v9 = *(qword_1026370A0 + 16);
      }

      return sub_10063DE88(v8, v9);
    }
  }

  return result;
}

void sub_10063E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10063E420(void *result)
{
  if (qword_1026370A0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10063E4C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464ED0;
  sub_10063E420(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10063E514(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464ED0;
  sub_10063E420(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063E5C8(uint64_t result)
{
  LOBYTE(v1) = *(result + 28);
  if (v1)
  {
    if (*(result + 28))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(result + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10063E614(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v27 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
        {
          return 0;
        }
      }

      else
      {
        v27 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27);
      if (!sub_10063E020(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        *(this + 1) = v17 + 1;
LABEL_27:
        *(a1 + 28) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v28 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
        if (!sub_10063E020(v18, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v15 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v15)
        {
          *(this + 14) = v25;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063E8F4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_1026370A0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370A0 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10063E980(uint64_t a1)
{
  if (!*(a1 + 28))
  {
    v1 = 0;
    goto LABEL_20;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = *(qword_1026370A0 + 8);
  }

  v3 = *(v2 + 28);
  if (*(v2 + 28))
  {
    if ((v3 & 2) != 0)
    {
      v3 = ((v3 << 31 >> 31) & 9) + 9;
    }

    else
    {
      v3 = (v3 << 31 >> 31) & 9;
    }
  }

  *(v2 + 24) = v3;
  v1 = (v3 + 2);
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_13:
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1026370A0 + 16);
    }

    v5 = *(v4 + 28);
    if (*(v4 + 28))
    {
      if ((v5 & 2) != 0)
      {
        v5 = ((v5 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v5 = (v5 << 31 >> 31) & 9;
      }
    }

    *(v4 + 24) = v5;
    v1 = (v1 + v5 + 2);
  }

LABEL_20:
  *(a1 + 24) = v1;
  return v1;
}

double sub_10063EA30(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063E2B4(a1, lpsrc);
}

uint64_t sub_10063EAD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_102464F48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10063EB4C(a1, a2);
  return a1;
}

void sub_10063EB1C(_Unwind_Exception *a1)
{
  if (*(v1 + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double sub_10063EB4C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1003C7898(a1 + 16, *(a1 + 24) + v5);
    memcpy((*(a1 + 16) + 8 * *(a1 + 24)), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  if (*(a2 + 40))
  {
    *(a1 + 40) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_1026370A8 + 8);
    }

    return sub_10063E2B4(v6, v7);
  }

  return result;
}

void sub_10063EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063EC8C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464F48;
  if (qword_1026370A8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063ED38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063EC8C(a1);

  operator delete();
}

uint64_t sub_10063EDC0(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_10063E5C8(result);
    }
  }

  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_10063EDFC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_16;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v27[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
        {
          return 0;
        }
      }

      else
      {
        v27[0] = *v9;
        *(this + 1) = v9 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
      if (!sub_10063E614(v8, this, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
      v17 = *(this + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(this + 14) = v19;
      }

      v20 = *(this + 1);
      v10 = *(this + 2);
      if (v20 < v10 && *v20 == 18)
      {
        v11 = v20 + 1;
        *(this + 1) = v11;
LABEL_31:
        v28 = 0;
        if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }

          v21 = v28;
        }

        else
        {
          v28 = *v11;
          *(this + 1) = v11 + 1;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v21);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          *v27 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || (*v23 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v27))
            {
              return 0;
            }
          }

          else
          {
            *v27 = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            sub_1003C7898(a1 + 16, v24 + 1);
            v24 = *(a1 + 24);
          }

          v25 = *v27;
          v26 = *(a1 + 16);
          *(a1 + 24) = v24 + 1;
          *(v26 + 8 * v24) = v25;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
LABEL_46:
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      result = sub_10063F0F4(1, 0x12u, this, a1 + 16);
      if (!result)
      {
        return result;
      }

      goto LABEL_46;
    }

    if (v7 == 2)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_31;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063F0F4(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v19 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (*v7 & 0x8000000000000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v19 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  if (v9 == v10)
  {
    sub_1003C7898(a4, v9 + 1);
    v9 = *(a4 + 8);
    v10 = *(a4 + 12);
  }

  v11 = v19;
  v12 = *a4;
  v13 = v9 + 1;
  *(a4 + 8) = v9 + 1;
  *(v12 + 8 * v9) = v11;
  if (v10 - (v9 + 1) >= 1)
  {
    v14 = v10 - v9;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v18 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v18 < 2 || (a2 & 0x7F | 0x80) != *v18 || a2 >> 7 != v18[1])
        {
          return 1;
        }

        v17 = (v18 + 2);
      }

      else
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 >= v15 || *v16 != a2)
        {
          return 1;
        }

        v17 = (v16 + 1);
      }

      *(this + 1) = v17;
      if (v17 >= v15 || (*v17 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v13 = *(a4 + 8);
      }

      else
      {
        v19 = *v17;
        *(this + 1) = v17 + 1;
      }

      if (v13 >= *(a4 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
        v13 = *(a4 + 8);
      }

      *(*a4 + 8 * v13++) = v19;
      *(a4 + 8) = v13;
      --v14;
    }

    while (v14 > 1);
  }

  return 1;
}

void sub_10063F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063F2E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_1026370A8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v5 + 32));
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a2, *(*(v5 + 16) + 8 * v7++));
      }

      while (v7 < *(v5 + 24));
    }
  }

  return result;
}

uint64_t sub_10063F38C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_1026370A8 + 8);
    }

    v5 = sub_10063E980(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 24) < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      v9 = (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(a1 + 16) + 8 * v8++), a2) + v9);
    }

    while (v8 < *(a1 + 24));
    if (v9 > 0)
    {
      if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      }

      else
      {
        v10 = 2;
      }

      v3 += v10;
    }
  }

  result = (v3 + v9);
  *(a1 + 32) = v9;
  *(a1 + 36) = result;
  return result;
}

double sub_10063F46C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063EB4C(a1, lpsrc);
}

uint64_t sub_10063F50C(uint64_t a1, uint64_t a2)
{
  *a1 = off_102464FC0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  sub_10063C8F4(a1, a2);
  return a1;
}

void sub_10063F564(_Unwind_Exception *a1)
{
  sub_100027438(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_10063F588(uint64_t *a1)
{
  *a1 = off_102464FC0;
  v2 = a1 + 3;
  sub_10063F5EC(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_10063F5EC(void *result)
{
  if (qword_1026370B0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10063F690(uint64_t *a1)
{
  sub_10063F588(a1);

  operator delete();
}

uint64_t sub_10063F724(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v41 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
      if (!sub_10063CF64(v9, this, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 18)
      {
        *(this + 1) = v18 + 1;
LABEL_30:
        *(a1 + 52) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v42 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_10063D620(v19, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        v25 = *(this + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          do
          {
            *(this + 1) = v27 + 1;
LABEL_44:
            v28 = *(a1 + 36);
            v29 = *(a1 + 32);
            if (v29 >= v28)
            {
              if (v28 == *(a1 + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v28 + 1);
                v28 = *(a1 + 36);
              }

              *(a1 + 36) = v28 + 1;
              operator new();
            }

            v30 = *(a1 + 24);
            *(a1 + 32) = v29 + 1;
            v31 = *(v30 + 8 * v29);
            v43 = 0;
            v32 = *(this + 1);
            if (v32 >= *(this + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v32;
              *(this + 1) = v32 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
            if (!sub_10063EDFC(v31, this, v36) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v37 = *(this + 14);
            v16 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v16)
            {
              *(this + 14) = v38;
            }

            v27 = *(this + 1);
            v39 = *(this + 2);
          }

          while (v27 < v39 && *v27 == 26);
          if (v27 == v39 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063FBAC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_1026370B0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370B0 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_10063FC5C(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_1026370B0 + 8);
  }

  v5 = sub_10063D14C(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(a1 + 52) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370B0 + 16);
    }

    v9 = sub_10063DC44(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(a1 + 32);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_10063F38C(*(*(a1 + 24) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(a1 + 32));
  }

  *(a1 + 48) = v13;
  return v13;
}

void sub_10063FD84(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063C8F4(a1, lpsrc);
}

void sub_10063FE24(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003C7948(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_10063EB4C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_10063FF40()
{
  result = sub_100008074();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10063FFE0()
{
  if (qword_1026584A0 != -1)
  {
    sub_1018F05F4();
  }

  return qword_1026370B8;
}

void sub_100640020(void *a1)
{
  sub_101137710(a1);

  operator delete();
}

double sub_100640058(uint64_t a1, void *a2, int *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryHeartRate] Unrecognized update interval notification %{public}d", &v11, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_1018F061C(a2);
    }
  }

  else
  {
    sub_1011381C4(a1);
    v5 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
      if (v5 < 1.0)
      {
        v5 = 1.0;
      }
    }

    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349312;
      v12 = v5;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryHeartRate] Setting update interval to %{public}f, given minimumUpdateInterval, %f", &v11, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0720(a3, v5);
    }

    sub_10017A1F4(*(a1 + 32), v5);
  }

  return v5;
}

void sub_100640210(uint64_t a1)
{
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v4 = IntegerValue;
    if (IntegerValue == 16)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v6 = sub_1000080EC(TimeStamp);
      v22 = v6;
      v7 = *(DataValue + 13);
      v23 = v7;
      _H9 = *(DataValue + 14);
      __asm { FCVT            S0, H9 }

      v24 = _S0;
      v14 = *(DataValue + 5);
      v25 = v14;
      v15 = *(DataValue + 1);
      v26 = v15;
      if (qword_1025D4320 != -1)
      {
        sub_1018F0608();
      }

      v16 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        __asm { FCVT            D1, H9 }

        *buf = 67241731;
        v42 = v15;
        v43 = 1025;
        *v44 = v7;
        *&v44[4] = 2050;
        *&v44[6] = _D1;
        v45 = 2050;
        v46 = v14;
        v47 = 2050;
        v48 = v6;
        v49 = 1040;
        v50 = 16;
        v51 = 2097;
        v52 = DataValue;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x3Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_1018F0968();
        }

        __asm { FCVT            D0, H9 }

        v27 = 67241731;
        v28 = v15;
        v29 = 1025;
        v30 = v7;
        v31 = 2050;
        v32 = _D0;
        v33 = 2050;
        v34 = v14;
        v35 = 2050;
        v36 = v6;
        v37 = 1040;
        v38 = 16;
        v39 = 2097;
        v40 = DataValue;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      sub_100061FD8(a1, 0, &v22, 32);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018F0608();
      }

      v19 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157955;
        v42 = v4;
        v43 = 2097;
        *v44 = DataValue;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload: %{private}.*P", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F0850(v4, DataValue);
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v18 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F0990();
    }
  }
}

uint64_t sub_100640608(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return sub_10053700C(a1);
}

void sub_100641300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100641360(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 160);
  if (!v5)
  {
    sub_1018F0C08();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064A530;
  v7[3] = &unk_102465330;
  v8 = a2;
  v9 = a3;
  v7[4] = a4;
  v7[5] = a1;
  return [v5 async:v7];
}

id sub_1006413E0(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "AlsCell, cdma, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0D70(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = 0;
    v6 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v46 = _Q0;
    do
    {
      v12 = [*(a1 + 32) objectAtIndex:v5];
      sub_10006BB6C(&v53);
      if ([v12 hasSid])
      {
        v13 = [v12 sid];
      }

      else
      {
        v13 = -1;
      }

      v57 = v13;
      if ([v12 hasNid])
      {
        v14 = [v12 nid];
      }

      else
      {
        v14 = -1;
      }

      v58 = v14;
      if ([v12 hasMcc])
      {
        v15 = [v12 mcc];
      }

      else
      {
        v15 = -1;
      }

      v53 = v15;
      if ([v12 hasBsid])
      {
        v16 = [v12 bsid];
      }

      else
      {
        v16 = -1;
      }

      v60 = v16;
      if ([v12 hasZoneid])
      {
        v17 = [v12 zoneid];
      }

      else
      {
        v17 = -1;
      }

      v59 = v17;
      if ([v12 hasBandclass])
      {
        v18 = [v12 bandclass];
      }

      else
      {
        v18 = -1;
      }

      v61 = v18;
      if ([v12 hasChannel])
      {
        v19 = [v12 channel];
      }

      else
      {
        v19 = -1;
      }

      v62 = v19;
      if ([v12 hasPnoffset])
      {
        v20 = [v12 pnoffset];
      }

      else
      {
        v20 = -1;
      }

      v63 = v20;
      v21 = __p;
      v55 = __p;
      if (v53 != -1)
      {
        if (__p >= v56)
        {
          v22 = (v56 - __p) >> 1;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          if (v56 - __p >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          sub_1000B85D0(&__p, v23);
        }

        *__p = v53;
        v55 = v21 + 4;
      }

      sub_100621C1C(&v53, &v51);
      if (([objc_msgSend(v12 "location")] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100641C10(buf);
          v34 = buf;
          if (SBYTE3(v89) < 0)
          {
            v34 = *buf;
          }

          *v71 = 67240451;
          *&v71[4] = v6 - 1;
          *&v71[8] = 2081;
          *&v71[10] = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "AlsCell, cdma, %{public}d, unknown, %{private}s", v71, 0x12u);
          if (SBYTE3(v89) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100641C10(v71);
          if ((SBYTE3(v72) & 0x80u) == 0)
          {
            v44 = v71;
          }

          else
          {
            v44 = *v71;
          }

          LODWORD(v66) = 67240451;
          HIDWORD(v66) = v6 - 1;
          v67 = 2081;
          v68 = v44;
          v45 = _os_log_send_and_compose_impl();
          if (SBYTE3(v72) < 0)
          {
            operator delete(*v71);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v45);
          if (v45 != buf)
          {
            free(v45);
          }
        }

        v35 = *(*(a1 + 40) + 16);
        v36 = [*(a1 + 48) type];
        v37 = [*(a1 + 48) tag];
        v38 = *(v35 + 256);
        if (v38)
        {
          v38(v35, &v53, v36, v37, *(v35 + 152));
        }
      }

      else
      {
        *&v71[12] = 0;
        *&v71[4] = 0;
        v72 = xmmword_101C75BF0;
        v73 = v46;
        v74 = v46;
        v75 = v46;
        *v71 = 0xFFFF;
        v76 = 0;
        v77 = 0xBFF0000000000000;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0xBFF0000000000000;
        v82 = 0x7FFFFFFF;
        v84 = 0;
        v85 = 0;
        v83 = 0;
        v86 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend(v12 location:"location") timeReceived:{v71, *(a1 + 56)}];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v24 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100641C10(&v66);
          v25 = SBYTE3(v70);
          v26 = v66;
          sub_100AE970C(v49);
          v27 = &v66;
          if (v25 < 0)
          {
            v27 = v26;
          }

          v28 = v49;
          if (v50 < 0)
          {
            v28 = v49[0];
          }

          *buf = 67240707;
          *&buf[4] = v6 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v27;
          v88 = 2085;
          v89 = v28;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "AlsCell, cdma, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (SBYTE3(v70) < 0)
          {
            operator delete(v66);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100641C10(v49);
          v39 = v50;
          v40 = v49[0];
          sub_100AE970C(v47);
          v41 = v49;
          if (v39 < 0)
          {
            v41 = v40;
          }

          v42 = v47;
          if (v48 < 0)
          {
            v42 = v47[0];
          }

          LODWORD(v66) = 67240707;
          HIDWORD(v66) = v6 - 1;
          v67 = 2081;
          v68 = v41;
          v69 = 2085;
          v70 = v42;
          v43 = _os_log_send_and_compose_impl();
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v29 = *(*(a1 + 40) + 16);
        v30 = [*(a1 + 48) type];
        v31 = [*(a1 + 48) tag];
        v32 = *(v29 + 248);
        if (v32)
        {
          v32(v29, &v53, v71, v30, v31, *(v29 + 152));
        }
      }

      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v65 < 0)
      {
        operator delete(v64);
      }

      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      result = [*(a1 + 32) count];
      v5 = v6++;
    }

    while (result > v5);
  }

  return result;
}

void sub_100641B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10064A5B4(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_100641C10@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v7);
  v2 = std::ostream::operator<<();
  sub_100038730(v2, ".", 1);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v7, a1);
  v7[2] = v5;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100641DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641E08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 256);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100641E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 248);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

id sub_100641E30(uint64_t a1)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AlsCell, lte, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0E64(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v7 = 0;
    v8 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v41 = _Q0;
    do
    {
      v14 = [*(a1 + 32) objectAtIndex:v7];
      v47 = -1;
      v48 = -1;
      v46 = -1;
      v49 = -1;
      v50 = 0;
      v51 = 0;
      v52 = -1;
      v53 = -1;
      v54 = -1;
      v55 = xmmword_101C7F0A0;
      LODWORD(v46) = [v14 mcc];
      HIDWORD(v46) = [v14 mnc];
      LODWORD(v47) = [v14 tacID];
      HIDWORD(v47) = [v14 cellID];
      if ([v14 hasUarfcn])
      {
        v15 = [v14 uarfcn];
      }

      else
      {
        v15 = -1;
      }

      LODWORD(v48) = v15;
      if ([v14 hasPid])
      {
        v16 = [v14 pid];
      }

      else
      {
        v16 = -1;
      }

      HIDWORD(v48) = v16;
      if (([objc_msgSend(v14 "location")] & 0x80000000) != 0)
      {
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v28 = v3[197];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v29 = buf;
          if (SBYTE3(v79) < 0)
          {
            v29 = *buf;
          }

          *v61 = 67240451;
          *&v61[4] = v8 - 1;
          *&v61[8] = 2081;
          *&v61[10] = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "AlsCell, lte, %{public}d, unknown, %{private}s", v61, 0x12u);
          if (SBYTE3(v79) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          sub_100075418(v61);
          if ((SBYTE3(v62) & 0x80u) == 0)
          {
            v39 = v61;
          }

          else
          {
            v39 = *v61;
          }

          LODWORD(v56) = 67240451;
          HIDWORD(v56) = v8 - 1;
          v57 = 2081;
          v58 = v39;
          v40 = _os_log_send_and_compose_impl();
          if (SBYTE3(v62) < 0)
          {
            operator delete(*v61);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        v30 = *(*(a1 + 40) + 16);
        v31 = [*(a1 + 48) type];
        v32 = [*(a1 + 48) tag];
        v33 = *(v30 + 272);
        if (v33)
        {
          v33(v30, &v46, v31, v32, *(v30 + 152));
        }
      }

      else
      {
        *&v61[12] = 0;
        *&v61[4] = 0;
        v62 = xmmword_101C75BF0;
        v63 = v41;
        v64 = v41;
        v65 = v41;
        *v61 = 0xFFFF;
        v66 = 0;
        v67 = 0xBFF0000000000000;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0xBFF0000000000000;
        v72 = 0x7FFFFFFF;
        v74 = 0;
        v75 = 0;
        v73 = 0;
        v76 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend(v14 location:"location") timeReceived:{v61, *(a1 + 56)}];
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v17 = v3[197];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(&v56);
          v18 = v3;
          v19 = p_info;
          v20 = SBYTE3(v60);
          v21 = v56;
          sub_100AE970C(__p);
          v22 = &v56;
          if (v20 < 0)
          {
            v22 = v21;
          }

          v23 = __p;
          if (v45 < 0)
          {
            v23 = __p[0];
          }

          *buf = 67240707;
          *&buf[4] = v8 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v22;
          v78 = 2085;
          v79 = v23;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "AlsCell, lte, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v45 < 0)
          {
            operator delete(__p[0]);
          }

          p_info = v19;
          if (SBYTE3(v60) < 0)
          {
            operator delete(v56);
          }

          v3 = v18;
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100075418(__p);
          v34 = v45;
          v35 = __p[0];
          sub_100AE970C(v42);
          v36 = __p;
          if (v34 < 0)
          {
            v36 = v35;
          }

          v37 = v42;
          if (v43 < 0)
          {
            v37 = v42[0];
          }

          LODWORD(v56) = 67240707;
          HIDWORD(v56) = v8 - 1;
          v57 = 2081;
          v58 = v36;
          v59 = 2085;
          v60 = v37;
          v38 = _os_log_send_and_compose_impl();
          if (v43 < 0)
          {
            operator delete(v42[0]);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v45 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        v24 = *(*(a1 + 40) + 16);
        v25 = [*(a1 + 48) type];
        v26 = [*(a1 + 48) tag];
        v27 = *(v24 + 264);
        if (v27)
        {
          v27(v24, &v46, v61, v25, v26, *(v24 + 152));
        }
      }

      result = [*(a1 + 32) count];
      v7 = v8++;
    }

    while (result > v7);
  }

  return result;
}

void sub_1006424F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10064252C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 272);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100642540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 264);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

id sub_100642554(uint64_t a1)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AlsCell, nr, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0F58(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v7 = 0;
    v8 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v44 = _Q0;
    do
    {
      v14 = [*(a1 + 32) objectAtIndex:v7];
      v49 = -1;
      v50 = -1;
      v51 = -1;
      v52 = -1;
      v53 = -1;
      v54 = 0;
      v55 = 0;
      v56 = -1;
      v57 = -1;
      v58 = -1;
      v59 = 0xFFFFFFFF00000000;
      v60 = 0;
      if ([v14 hasMcc])
      {
        v15 = [v14 mcc];
      }

      else
      {
        v15 = -1;
      }

      LODWORD(v49) = v15;
      if ([v14 hasMnc])
      {
        v16 = [v14 mnc];
      }

      else
      {
        v16 = -1;
      }

      HIDWORD(v49) = v16;
      if ([v14 hasTacID])
      {
        v17 = [v14 tacID];
      }

      else
      {
        v17 = -1;
      }

      v50 = v17;
      if ([v14 hasCellID])
      {
        v18 = [v14 cellID];
      }

      else
      {
        v18 = -1;
      }

      v51 = v18;
      if ([v14 hasNrarfcn])
      {
        v19 = [v14 nrarfcn];
      }

      else
      {
        v19 = -1;
      }

      LODWORD(v52) = v19;
      if (([objc_msgSend(v14 "location")] & 0x80000000) != 0)
      {
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v31 = v3[197];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          sub_100642C8C(buf);
          v32 = buf;
          if (SBYTE3(v84) < 0)
          {
            v32 = *buf;
          }

          *v66 = 67240451;
          *&v66[4] = v8 - 1;
          *&v66[8] = 2081;
          *&v66[10] = v32;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "AlsCell, nr, %{public}d, unknown, %{private}s", v66, 0x12u);
          if (SBYTE3(v84) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          sub_100642C8C(v66);
          if ((SBYTE3(v67) & 0x80u) == 0)
          {
            v42 = v66;
          }

          else
          {
            v42 = *v66;
          }

          LODWORD(v61) = 67240451;
          HIDWORD(v61) = v8 - 1;
          v62 = 2081;
          v63 = v42;
          v43 = _os_log_send_and_compose_impl();
          if (SBYTE3(v67) < 0)
          {
            operator delete(*v66);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v33 = *(*(a1 + 40) + 16);
        v34 = [*(a1 + 48) type];
        v35 = [*(a1 + 48) tag];
        v36 = *(v33 + 288);
        if (v36)
        {
          v36(v33, &v49, v34, v35, *(v33 + 152));
        }
      }

      else
      {
        *&v66[12] = 0;
        *&v66[4] = 0;
        v67 = xmmword_101C75BF0;
        v68 = v44;
        v69 = v44;
        v70 = v44;
        *v66 = 0xFFFF;
        v71 = 0;
        v72 = 0xBFF0000000000000;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0xBFF0000000000000;
        v77 = 0x7FFFFFFF;
        v79 = 0;
        v80 = 0;
        v78 = 0;
        v81 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend(v14 location:"location") timeReceived:{v66, *(a1 + 56)}];
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v20 = v3[197];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_100642C8C(&v61);
          v21 = v3;
          v22 = p_info;
          v23 = SBYTE3(v65);
          v24 = v61;
          sub_100AE970C(__p);
          v25 = &v61;
          if (v23 < 0)
          {
            v25 = v24;
          }

          v26 = __p;
          if (v48 < 0)
          {
            v26 = __p[0];
          }

          *buf = 67240707;
          *&buf[4] = v8 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v25;
          v83 = 2085;
          v84 = v26;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "AlsCell, nr, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          p_info = v22;
          if (SBYTE3(v65) < 0)
          {
            operator delete(v61);
          }

          v3 = v21;
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100642C8C(__p);
          v37 = v48;
          v38 = __p[0];
          sub_100AE970C(v45);
          v39 = __p;
          if (v37 < 0)
          {
            v39 = v38;
          }

          v40 = v45;
          if (v46 < 0)
          {
            v40 = v45[0];
          }

          LODWORD(v61) = 67240707;
          HIDWORD(v61) = v8 - 1;
          v62 = 2081;
          v63 = v39;
          v64 = 2085;
          v65 = v40;
          v41 = _os_log_send_and_compose_impl();
          if (v46 < 0)
          {
            operator delete(v45[0]);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }

        v27 = *(*(a1 + 40) + 16);
        v28 = [*(a1 + 48) type];
        v29 = [*(a1 + 48) tag];
        v30 = *(v27 + 280);
        if (v30)
        {
          v30(v27, &v49, v66, v28, v29, *(v27 + 152));
        }
      }

      result = [*(a1 + 32) count];
      v7 = v8++;
    }

    while (result > v7);
  }

  return result;
}

void sub_100642C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100642C8C@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v7);
  v2 = std::ostream::operator<<();
  sub_100038730(v2, ".", 1);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v7, a1);
  v7[2] = v5;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100642E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100642E70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 288);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100642E84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 280);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

void sub_1006430E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006435A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006435E4(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F1678();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A658;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

id sub_100643664(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F17E0();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A678;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

id sub_100643818(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F1A60();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A698;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

double *sub_100643B28(double *result)
{
  v1 = *(result + 6);
  if (v1 < *(result + 7) + v1)
  {
    v2 = result;
    __asm { FMOV            V0.2D, #-1.0 }

    v28 = _Q0;
    do
    {
      v8 = [*(v2 + 4) objectAtIndex:v1];
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v33 = v9;
      v34 = v9;
      LODWORD(v33) = [v8 mcc];
      DWORD1(v33) = [v8 mnc];
      DWORD2(v33) = [v8 lacID];
      HIDWORD(v33) = [v8 cellID];
      if ([v8 hasArfcn])
      {
        v10 = [v8 arfcn];
      }

      else
      {
        v10 = -1;
      }

      LODWORD(v34) = v10;
      if ([v8 hasPsc])
      {
        v11 = [v8 psc];
      }

      else
      {
        v11 = -1;
      }

      DWORD1(v34) = v11;
      if (([objc_msgSend(v8 "location")] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v19 = buf;
          if (v59 < 0)
          {
            v19 = *buf;
          }

          *v40 = 134349315;
          *&v40[4] = v1;
          *v41 = 2081;
          *&v41[2] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AlsCell, gsm, %{public}lu, unknown, %{private}s", v40, 0x16u);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100075418(v40);
          if (v41[11] >= 0)
          {
            v26 = v40;
          }

          else
          {
            v26 = *v40;
          }

          *v35 = 134349315;
          *&v35[4] = v1;
          v36 = 2081;
          v37 = v26;
          v27 = _os_log_send_and_compose_impl();
          if ((v41[11] & 0x80000000) != 0)
          {
            operator delete(*v40);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        result = *(*(v2 + 5) + 16);
        v20 = *(result + 23);
        if (v20)
        {
          result = v20(result, &v33, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      else
      {
        *v41 = 0;
        *&v40[4] = 0;
        *&v41[8] = xmmword_101C75BF0;
        v42 = v28;
        v43 = v28;
        v44 = v28;
        *v40 = 0xFFFF;
        v45 = 0;
        v46 = 0xBFF0000000000000;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0xBFF0000000000000;
        v51 = 0x7FFFFFFF;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v55 = 0;
        [*(v2 + 5) populateLocationFromTower:objc_msgSend(v8 location:"location") timeReceived:{v40, v2[8]}];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(v35);
          v13 = SHIBYTE(v38);
          v14 = *v35;
          sub_100AE970C(__p);
          v15 = v35;
          if (v13 < 0)
          {
            v15 = v14;
          }

          v16 = __p;
          if (v32 < 0)
          {
            v16 = __p[0];
          }

          *buf = 134349571;
          *&buf[4] = v1;
          v57 = 2081;
          v58 = v15;
          v59 = 2085;
          v60 = v16;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, %{public}lu, valid, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(*v35);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100075418(__p);
          v21 = v32;
          v22 = __p[0];
          sub_100AE970C(v29);
          v23 = __p;
          if (v21 < 0)
          {
            v23 = v22;
          }

          v24 = v29;
          if (v30 < 0)
          {
            v24 = v29[0];
          }

          *v35 = 134349571;
          *&v35[4] = v1;
          v36 = 2081;
          v37 = v23;
          v38 = 2085;
          v39 = v24;
          v25 = _os_log_send_and_compose_impl();
          if (v30 < 0)
          {
            operator delete(v29[0]);
          }

          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        result = *(*(v2 + 5) + 16);
        v17 = *(result + 22);
        if (v17)
        {
          result = v17(result, &v33, v40, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      ++v1;
    }

    while (v1 < *(v2 + 7) + *(v2 + 6));
  }

  return result;
}

void sub_1006440D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 184);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_10064411C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 176);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

double *sub_1006442A8(double *result)
{
  v1 = *(result + 6);
  if (v1 < *(result + 7) + v1)
  {
    v2 = result;
    __asm { FMOV            V0.2D, #-1.0 }

    v28 = _Q0;
    do
    {
      v8 = [*(v2 + 4) objectAtIndex:v1];
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v33 = v9;
      v34 = v9;
      LODWORD(v33) = [v8 mcc];
      DWORD1(v33) = [v8 mnc];
      DWORD2(v33) = [v8 lacID];
      HIDWORD(v33) = [v8 cellID];
      if ([v8 hasArfcn])
      {
        v10 = [v8 arfcn];
      }

      else
      {
        v10 = -1;
      }

      LODWORD(v34) = v10;
      if ([v8 hasPsc])
      {
        v11 = [v8 psc];
      }

      else
      {
        v11 = -1;
      }

      DWORD1(v34) = v11;
      if (([objc_msgSend(v8 "location")] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v19 = buf;
          if (v59 < 0)
          {
            v19 = *buf;
          }

          *v40 = 134349315;
          *&v40[4] = v1;
          *v41 = 2081;
          *&v41[2] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AlsCell, scdma, %{public}lu, unknown, %{private}s", v40, 0x16u);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100075418(v40);
          if (v41[11] >= 0)
          {
            v26 = v40;
          }

          else
          {
            v26 = *v40;
          }

          *v35 = 134349315;
          *&v35[4] = v1;
          v36 = 2081;
          v37 = v26;
          v27 = _os_log_send_and_compose_impl();
          if ((v41[11] & 0x80000000) != 0)
          {
            operator delete(*v40);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        result = *(*(v2 + 5) + 16);
        v20 = *(result + 25);
        if (v20)
        {
          result = v20(result, &v33, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      else
      {
        *v41 = 0;
        *&v40[4] = 0;
        *&v41[8] = xmmword_101C75BF0;
        v42 = v28;
        v43 = v28;
        v44 = v28;
        *v40 = 0xFFFF;
        v45 = 0;
        v46 = 0xBFF0000000000000;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0xBFF0000000000000;
        v51 = 0x7FFFFFFF;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v55 = 0;
        [*(v2 + 5) populateLocationFromTower:objc_msgSend(v8 location:"location") timeReceived:{v40, v2[8]}];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(v35);
          v13 = SHIBYTE(v38);
          v14 = *v35;
          sub_100AE970C(__p);
          v15 = v35;
          if (v13 < 0)
          {
            v15 = v14;
          }

          v16 = __p;
          if (v32 < 0)
          {
            v16 = __p[0];
          }

          *buf = 134349571;
          *&buf[4] = v1;
          v57 = 2081;
          v58 = v15;
          v59 = 2085;
          v60 = v16;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "AlsCell, scdma, %{public}lu, valid, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(*v35);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          sub_100075418(__p);
          v21 = v32;
          v22 = __p[0];
          sub_100AE970C(v29);
          v23 = __p;
          if (v21 < 0)
          {
            v23 = v22;
          }

          v24 = v29;
          if (v30 < 0)
          {
            v24 = v29[0];
          }

          *v35 = 134349571;
          *&v35[4] = v1;
          v36 = 2081;
          v37 = v23;
          v38 = 2085;
          v39 = v24;
          v25 = _os_log_send_and_compose_impl();
          if (v30 < 0)
          {
            operator delete(v29[0]);
          }

          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        result = *(*(v2 + 5) + 16);
        v17 = *(result + 24);
        if (v17)
        {
          result = v17(result, &v33, v40, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      ++v1;
    }

    while (v1 < *(v2 + 7) + *(v2 + 6));
  }

  return result;
}

void sub_100644850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 200);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_10064489C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 192);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

void sub_100645644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, void *a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void sub_100645734(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5, int a6)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_10064A838(&v25, *a2, a2[1], 0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 3));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_10064A838(&v22, *a3, a3[1], 0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3));
  v11 = *(a1 + 160);
  if (v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3321888768;
    v12[2] = sub_10064A714;
    v12[3] = &unk_1024653B0;
    v12[4] = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10064A838(&v13, v25, v26, 0xD37A6F4DE9BD37A7 * ((v26 - v25) >> 3));
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_10064A838(&__p, v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
    v19 = a4;
    v20 = a5;
    v21 = a6;
    [v11 async:v12];
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }

  else
  {
    sub_1018F1EAC();
    abort_report_np();
    __break(1u);
  }
}

void sub_1006458E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 88);
  if (v24)
  {
    *(v21 - 80) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100645954(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t *a4)
{
  *a1 = off_1024653F0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  *(a1 + 216) = a2[4];
  *(a1 + 200) = v8;
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[8];
  *(a1 + 264) = a2[7];
  *(a1 + 280) = v11;
  *(a1 + 248) = v10;
  *(a1 + 232) = v9;
  *(a1 + 296) = 0;
  *(a1 + 304) = a3;
  *a1 = off_1024651D8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 10;
  v12 = (a1 + 352);
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  sub_10000EC00((a1 + 352), off_1025D78C8);
  *(a1 + 376) = 0;
  v13 = *a4;
  *a4 = 0;
  *(a1 + 384) = v13;
  sub_100A2C934(a1 + 392);
  *(a1 + 472) = 0;
  [*(a1 + 304) silo];
  *(a1 + 312) = [[ALSLocationDelegate alloc] initWithRequester:a1];
  sub_10001CAF4(buf);
  *(a1 + 376) = sub_100175094(*buf, "AppleLocationServer", v12);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v14 = sub_10005BBE4(*buf, "AppleLocationServerTimeout", (a1 + 320));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v14 & 1) == 0)
  {
    *(a1 + 320) = 10;
  }

  sub_10001CAF4(buf);
  v15 = sub_1004FBF14(*buf, "AppleLocationServerRequestLog", (a1 + 328));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
    *(a1 + 328) = 0;
  }

  sub_10001CAF4(buf);
  v16 = sub_1004FBF14(*buf, "AppleLocationServerResponseLog", (a1 + 336));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v16 & 1) == 0)
  {
    *(a1 + 336) = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F0AA8();
  }

  v17 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v12;
    if (*(a1 + 375) < 0)
    {
      v18 = *v12;
    }

    v19 = *(a1 + 376);
    v20 = *(a1 + 320);
    v21 = *(a1 + 328) != 0;
    v22 = *(a1 + 336) != 0;
    *buf = 136381699;
    *&buf[4] = v18;
    *&buf[12] = 1026;
    *&buf[14] = v19;
    v26 = 1026;
    v27 = v20;
    v28 = 1026;
    v29 = v21;
    v30 = 1026;
    v31 = v22;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "AlsInit, server, %{private}s, override, %{public}d, timeout, %{public}d, log request/response, %{public}d, %{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLNetworkLocationRequesterALS::CLNetworkLocationRequesterALS(const Listener &, id<CLIntersiloUniverse>, std::unique_ptr<CLINetworkLocationRequesterALSExternal>)", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  return a1;
}

void sub_100645D68(_Unwind_Exception *a1)
{
  sub_100A2C938(v1 + 392);
  v4 = *(v1 + 384);
  *(v1 + 384) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(v1 + 375) < 0)
  {
    operator delete(*v2);
  }

  sub_100645E10(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100645E10(uint64_t a1)
{
  *a1 = off_1024653F0;
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v8 = (a1 + 56);
  sub_10064AA34(&v8);
  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_100645F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1018F2050(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100645F60(uint64_t a1)
{
  *a1 = off_1024651D8;

  v2 = *(a1 + 328);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 336);
  if (v3)
  {
    CFRelease(v3);
  }

  sub_10000EC00(__p, "final");
  sub_100C43164(&qword_1026584A8, __p, *(a1 + 472));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100A2C938(a1 + 392);
  v4 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  return sub_100645E10(a1);
}

void sub_100646050(uint64_t a1)
{
  sub_100645F60(a1);

  operator delete();
}

uint64_t sub_100646088(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_1012CFC28();
  if (qword_1025D48A0 != -1)
  {
    sub_1018F2088();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 12);
    *buf = 134546177;
    *&buf[4] = v6;
    *&buf[12] = 2053;
    *&buf[14] = v7;
    *&buf[22] = 1024;
    *&buf[24] = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "query: queryLocation, location, %{sensitive}14.8lf, %{sensitive}14.8lf, timeout, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F209C(a2);
  }

  [(ALSNearbyRequest *)v4 setLatitude:(*(a2 + 4) * 100000000.0)];
  [(ALSNearbyRequest *)v4 setLongitude:(*(a2 + 12) * 100000000.0)];
  [(ALSNearbyRequest *)v4 setNeedCellsTowers:0];
  [(ALSNearbyRequest *)v4 setNumberOfSurroundingWifis:0xFFFFFFFFLL];
  v8 = +[GEOCountryConfiguration sharedConfiguration];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [objc_msgSend(v8 defaultForKey:@"CLAppleLocationServiceNearbyRequestWifiBands" defaultValue:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", qword_1026370C8)), "componentsSeparatedByString:", @", "}];
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v72 count:16];
  if (v10)
  {
    v11 = *v50;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        if ([v13 isEqualToString:@"k2dot4GHZ"])
        {
          v14 = 1;
        }

        else if ([v13 isEqualToString:@"k5GHZ"])
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        [(ALSNearbyRequest *)v4 addWifiBands:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v49 objects:v72 count:16];
    }

    while (v10);
  }

  [(ALSNearbyRequest *)v4 setWifiAltitudeScale:2];
  if (*(a1 + 376) == 1)
  {
    v15 = (a1 + 352);
    if (*(a1 + 375) < 0)
    {
      v15 = *v15;
    }

    v45 = [NSString stringWithUTF8String:v15];
  }

  else
  {
    v16 = +[GEOCountryConfiguration sharedConfiguration];
    v17 = (a1 + 352);
    if (*(a1 + 375) < 0)
    {
      v17 = *v17;
    }

    v45 = [v16 defaultForKey:@"CLAppleLocationServer" defaultValue:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v17)}];
  }

  v18 = -[CLALSRequester initWithURL:delegate:queue:]([CLALSRequester alloc], "initWithURL:delegate:queue:", +[NSURL URLWithString:](NSURL, "URLWithString:", v45), *(a1 + 312), [objc_msgSend(*(a1 + 304) "silo")]);
  v19 = *(a1 + 344);
  *(a1 + 344) = v19 + 1;
  [(CLALSRequester *)v18 setTag:v19];
  [(CLALSRequester *)v18 setType:1];
  [(CLALSRequester *)v18 setTimestamp:CFAbsoluteTimeGetCurrent()];
  [(CLALSRequester *)v18 setTimeoutSeconds:*(a1 + 320)];
  sub_10004FD18(v48);
  sub_1002DC414(v48, "Connection", "close");
  [(CLALSRequester *)v18 setHttpRequestHeaders:sub_10007005C(v48)];
  [(CLALSRequester *)v18 addRequest:v4];
  if (*(a1 + 328))
  {
    [(CLALSRequester *)v18 setLogRequestToFile:?];
  }

  if (*(a1 + 336))
  {
    [(CLALSRequester *)v18 setLogResponseToFile:?];
  }

  if ((a3 & 0x80000000) == 0)
  {
    [(CLALSRequester *)v18 setTimeoutSeconds:a3];
  }

  v20 = *(a1 + 472);
  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  ++dword_1026584D8;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  v21 = [(CLALSRequester *)v18 uploadPayloadSize];
  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  dword_1026584D0 += v21;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  sub_10000EC00(buf, "queryLocation");
  sub_100C43164(&qword_1026584A8, buf, v20);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F14FC();
  }

  v22 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a2 + 4);
    v24 = *(a2 + 12);
    v25 = [(CLALSRequester *)v18 uploadPayloadSize];
    v26 = sub_100646A14(v4);
    *buf = 67110659;
    *&buf[4] = v19;
    *&buf[8] = 2053;
    *&buf[10] = v23;
    *&buf[18] = 2053;
    *&buf[20] = v24;
    v66 = 1024;
    *v67 = a3;
    *&v67[4] = 2048;
    *&v67[6] = v25;
    v68 = 1024;
    v69 = v20;
    v70 = 2114;
    v71 = v26;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "query: queryLocation, tag, %d, location, %{sensitive}14.8lf, %{sensitive}14.8lf, timeout, %d, payload, %lu, reachability, %d, bands, %{public}@", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F21C4(buf);
    v34 = *(a2 + 4);
    v35 = *(a2 + 12);
    v36 = [(CLALSRequester *)v18 uploadPayloadSize];
    v37 = sub_100646A14(v4);
    v53 = 67110659;
    v54 = v19;
    v55 = 2053;
    v56 = v34;
    v57 = 2053;
    v58 = v35;
    v59 = 1024;
    *v60 = a3;
    *&v60[4] = 2048;
    *&v60[6] = v36;
    v61 = 1024;
    v62 = v20;
    v63 = 2114;
    v64 = v37;
    v38 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::queryLocation(const CLDaemonLocation &, int)", "%s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  [(CLALSRequester *)v18 setNwActivityDomain:24];
  [(CLALSRequester *)v18 setNwActivityLabel:2];
  [(CLALSRequester *)v18 start];
  [*(a1 + 312) addRequesterWithOutstandingRequest:v18];
  if (qword_1025D4620 != -1)
  {
    sub_1018F0AA8();
  }

  v27 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a2 + 4);
    v29 = *(a2 + 12);
    v30 = [(NSString *)v45 UTF8String];
    v31 = *(a1 + 376);
    sub_10001A3E8();
    v32 = sub_10001CF3C();
    *buf = 67241731;
    *&buf[4] = v19;
    *&buf[8] = 2053;
    *&buf[10] = v28;
    *&buf[18] = 2053;
    *&buf[20] = v29;
    v66 = 2081;
    *v67 = v30;
    *&v67[8] = 1026;
    *&v67[10] = v31;
    v68 = 1026;
    v69 = v20;
    v70 = 1026;
    LODWORD(v71) = v32;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "@AlsFlow, request, tag, %{public}d, location, %{sensitive}0.2lf, %{sensitive}0.2lf, server, %{private}s, override, %{public}d, reach, %{public}d, watch, %{public}d", buf, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0BC4(buf);
    v39 = *(a2 + 4);
    v40 = *(a2 + 12);
    v41 = [(NSString *)v45 UTF8String];
    v42 = *(a1 + 376);
    sub_10001A3E8();
    v43 = sub_10001CF3C();
    v53 = 67241731;
    v54 = v19;
    v55 = 2053;
    v56 = v39;
    v57 = 2053;
    v58 = v40;
    v59 = 2081;
    *v60 = v41;
    *&v60[8] = 1026;
    *&v60[10] = v42;
    v61 = 1026;
    v62 = v20;
    v63 = 1026;
    LODWORD(v64) = v43;
    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::queryLocation(const CLDaemonLocation &, int)", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  AnalyticsSendEventLazy();

  sub_100005DA4(v48);
  return v19;
}

id sub_100646A14(void *a1)
{
  v2 = +[NSMutableArray array];
  if ([a1 wifiBandsCount])
  {
    v3 = 0;
    do
    {
      [v2 addObject:{-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(objc_msgSend(a1, "wifiBands") + v3++)), "stringValue")}];
    }

    while (v3 < [a1 wifiBandsCount]);
  }

  return [v2 componentsJoinedByString:{@", "}];
}

uint64_t sub_100646AC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, unsigned int a9)
{
  v11 = sub_100647744(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a7[1] != *a7)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ALSLocationRequest *)v11 wirelessAPsCount];
      v14 = (a7[1] - *a7) >> 3;
      *buf = 134349824;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      *&buf[22] = 1026;
      *&buf[24] = [(ALSLocationRequest *)v11 numberOfSurroundingWifis];
      *&buf[28] = 1026;
      LODWORD(v76) = 1000;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "AlsWifi, tx, %{public}lu, %{public}lu, surronding, %{public}d, max, %{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      v55 = [(ALSLocationRequest *)v11 wirelessAPsCount];
      v58 = a7;
      v56 = *a7;
      v57 = v58[1];
      *__p = 134349824;
      *&__p[4] = v55;
      *&__p[12] = 2050;
      *&__p[14] = (v57 - v56) >> 3;
      *&__p[22] = 1026;
      *&__p[24] = [(ALSLocationRequest *)v11 numberOfSurroundingWifis];
      *&__p[28] = 1026;
      LODWORD(v71) = 1000;
      v59 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::unifiedQuery(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &, int)", "%s\n", v59);
      if (v59 != buf)
      {
        free(v59);
      }
    }
  }

  if (*(a1 + 376) == 1)
  {
    v15 = (a1 + 352);
    if (*(a1 + 375) < 0)
    {
      v15 = *v15;
    }

    v16 = [NSString stringWithUTF8String:v15];
  }

  else
  {
    v17 = +[GEOCountryConfiguration sharedConfiguration];
    v18 = (a1 + 352);
    if (*(a1 + 375) < 0)
    {
      v18 = *v18;
    }

    v16 = [v17 defaultForKey:@"CLAppleLocationServer" defaultValue:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
  }

  v19 = v16;
  v20 = -[CLALSRequester initWithURL:delegate:queue:]([CLALSRequester alloc], "initWithURL:delegate:queue:", +[NSURL URLWithString:](NSURL, "URLWithString:", v16), *(a1 + 312), [objc_msgSend(*(a1 + 304) "silo")]);
  v21 = *(a1 + 472);
  v22 = *(a1 + 344);
  *(a1 + 344) = v22 + 1;
  v67 = v22;
  [(CLALSRequester *)v20 setTag:?];
  [(CLALSRequester *)v20 setType:0];
  [(CLALSRequester *)v20 setTimestamp:CFAbsoluteTimeGetCurrent()];
  [(CLALSRequester *)v20 setTimeoutSeconds:*(a1 + 320)];
  if (qword_1025D4620 != -1)
  {
    sub_1018F0AA8();
  }

  v23 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(NSString *)v19 UTF8String];
    v25 = *(a1 + 376);
    sub_10001A3E8();
    v26 = sub_10001CF3C();
    if (*(a8 + 31) < 0)
    {
      sub_100007244(__p, *(a8 + 8), *(a8 + 16));
    }

    else
    {
      *__p = *(a8 + 8);
      *&__p[16] = *(a8 + 24);
    }

    v27 = __p;
    if (__p[23] < 0)
    {
      v27 = *__p;
    }

    *buf = 136381955;
    *&buf[4] = v24;
    *&buf[12] = 1026;
    *&buf[14] = v67;
    *&buf[18] = 1026;
    *&buf[20] = v25;
    *&buf[24] = 1026;
    *&buf[26] = v21;
    LOWORD(v76) = 1026;
    *(&v76 + 2) = v26;
    HIWORD(v76) = 2082;
    *v77 = v27;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "@AlsFlow, server, %{private}s, tag, %{public}d, override, %{public}d, reach, %{public}d, watch, %{public}d, reason, %{public}s", buf, 0x2Eu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v43 = [(NSString *)v19 UTF8String];
    v44 = *(a1 + 376);
    sub_10001A3E8();
    v45 = sub_10001CF3C();
    if (*(a8 + 31) < 0)
    {
      sub_100007244(__dst, *(a8 + 8), *(a8 + 16));
    }

    else
    {
      *__dst = *(a8 + 8);
      v69 = *(a8 + 24);
    }

    v64 = __dst;
    if (v69 < 0)
    {
      v64 = __dst[0];
    }

    *__p = 136381955;
    *&__p[4] = v43;
    *&__p[12] = 1026;
    *&__p[14] = v67;
    *&__p[18] = 1026;
    *&__p[20] = v44;
    *&__p[24] = 1026;
    *&__p[26] = v21;
    LOWORD(v71) = 1026;
    *(&v71 + 2) = v45;
    HIWORD(v71) = 2082;
    *v72 = v64;
    v65 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v69) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::unifiedQuery(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &, int)", "%s\n", v65);
    if (v65 != buf)
    {
      free(v65);
    }
  }

  sub_10004FD18(__dst);
  sub_1002DC414(__dst, "Connection", "close");
  [(CLALSRequester *)v20 setHttpRequestHeaders:sub_10007005C(__dst)];
  [(CLALSRequester *)v20 addRequest:v11];
  if (*(a1 + 328))
  {
    [(CLALSRequester *)v20 setLogRequestToFile:?];
  }

  if (*(a1 + 336))
  {
    [(CLALSRequester *)v20 setLogResponseToFile:?];
  }

  if ((a9 & 0x80000000) == 0)
  {
    [(CLALSRequester *)v20 setTimeoutSeconds:a9];
  }

  [(CLALSRequester *)v20 setNwActivityDomain:24];
  [(CLALSRequester *)v20 setNwActivityLabel:1];
  [(CLALSRequester *)v20 start];
  [*(a1 + 312) addRequesterWithOutstandingRequest:v20];
  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  ++dword_1026584D8;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  v28 = [(CLALSRequester *)v20 uploadPayloadSize];
  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  dword_1026584D0 += v28;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  sub_10000EC00(buf, "unifiedQuery");
  sub_100C43164(&qword_1026584A8, buf, v21);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ([(ALSLocationRequest *)v11 wirelessAPsCount])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(ALSLocationRequest *)v11 wirelessAPsCount];
      v31 = [(ALSLocationRequest *)v11 numberOfSurroundingWifis];
      v32 = sub_100649B8C(v11);
      *buf = 67240962;
      *&buf[4] = v67;
      *&buf[8] = 2050;
      *&buf[10] = v30;
      *&buf[18] = 2050;
      *&buf[20] = v31;
      *&buf[28] = 2114;
      v76 = v32;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "@AlsFlow, request, tag, %{public}d, wifi, %{public}lu, surrounding, %{public}lu, bands, %{public}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0BC4(buf);
      v60 = [(ALSLocationRequest *)v11 wirelessAPsCount];
      v61 = [(ALSLocationRequest *)v11 numberOfSurroundingWifis];
      v62 = sub_100649B8C(v11);
      *__p = 67240962;
      *&__p[4] = v67;
      *&__p[8] = 2050;
      *&__p[10] = v60;
      *&__p[18] = 2050;
      *&__p[20] = v61;
      *&__p[28] = 2114;
      v71 = v62;
      v63 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::unifiedQuery(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &, int)", "%s\n", v63);
      if (v63 != buf)
      {
        free(v63);
      }
    }
  }

  if ([(ALSLocationRequest *)v11 cellTowersCount]|| [(ALSLocationRequest *)v11 lteCellTowersCount]|| [(ALSLocationRequest *)v11 cdmaCellTowersCount]|| [(ALSLocationRequest *)v11 nr5GCellTowersCount])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v33 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(ALSLocationRequest *)v11 cellTowersCount];
      v35 = [(ALSLocationRequest *)v11 lteCellTowersCount];
      v36 = [(ALSLocationRequest *)v11 cdmaCellTowersCount];
      v37 = [(ALSLocationRequest *)v11 nr5GCellTowersCount];
      v38 = [(ALSLocationRequest *)v11 numberOfSurroundingCells];
      v39 = [(ALSLocationRequest *)v11 numberOfSurroundingCdmaCells];
      v40 = [(ALSLocationRequest *)v11 numberOfSurroundingLteCells];
      v41 = [(ALSLocationRequest *)v11 numberOfSurroundingNr5GCells];
      *buf = 67241472;
      *&buf[4] = v67;
      *&buf[8] = 2050;
      *&buf[10] = v34;
      *&buf[18] = 2050;
      *&buf[20] = v35;
      *&buf[28] = 2050;
      v76 = v36;
      *v77 = 2050;
      *&v77[2] = v37;
      v78 = 2050;
      v79 = (v39 + v38 + v40 + v41);
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "@AlsFlow, request, tag, %{public}d, cell, gsm, %{public}lu, lte, %{public}lu, cdma, %{public}lu, nr, %{public}lu, surrounding, %{public}lu", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0BC4(buf);
      v46 = [(ALSLocationRequest *)v11 cellTowersCount];
      v47 = [(ALSLocationRequest *)v11 lteCellTowersCount];
      v48 = [(ALSLocationRequest *)v11 cdmaCellTowersCount];
      v49 = [(ALSLocationRequest *)v11 nr5GCellTowersCount];
      v50 = [(ALSLocationRequest *)v11 numberOfSurroundingCells];
      v51 = [(ALSLocationRequest *)v11 numberOfSurroundingCdmaCells];
      v52 = [(ALSLocationRequest *)v11 numberOfSurroundingLteCells];
      v53 = [(ALSLocationRequest *)v11 numberOfSurroundingNr5GCells];
      *__p = 67241472;
      *&__p[4] = v67;
      *&__p[8] = 2050;
      *&__p[10] = v46;
      *&__p[18] = 2050;
      *&__p[20] = v47;
      *&__p[28] = 2050;
      v71 = v48;
      *v72 = 2050;
      *&v72[2] = v49;
      v73 = 2050;
      v74 = (v51 + v50 + v52 + v53);
      v54 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual int CLNetworkLocationRequesterALS::unifiedQuery(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &, int)", "%s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }
  }

  AnalyticsSendEventLazy();

  sub_100005DA4(__dst);
  return v67;
}

ALSLocationRequest *sub_100647744(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int *a8)
{
  v121 = sub_1012CFAB4();
  v116 = a4;
  v119 = a3;
  v120 = a2;
  v117 = a6;
  v118 = a5;
  if (0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4) + ((a2[1] - *a2) >> 5) + ((a3[1] - *a3) >> 5) + 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3) != 0x5555555555555555 * ((a6[1] - *a6) >> 5))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
      v15 = (a2[1] - *a2) >> 5;
      v16 = (a3[1] - *a3) >> 5;
      v17 = 0x2E8BA2E8BA2E8BA3 * ((v118[1] - *v118) >> 3);
      v18 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134350336;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v139 = v16;
      v140 = 2050;
      v141 = v17;
      v142 = 2050;
      v143 = v18;
      v144 = 1026;
      v145 = 100;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "AlsCell, query, cdma, %{public}lu, gsm, %{public}lu, scdma, %{public}lu, lte, %{public}lu, nr, %{public}lu, max, %{public}d", &buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      v107 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
      v108 = (a2[1] - *a2) >> 5;
      v109 = (a3[1] - *a3) >> 5;
      v110 = 0x2E8BA2E8BA2E8BA3 * ((v118[1] - *v118) >> 3);
      v111 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
      LODWORD(v130.__r_.__value_.__l.__data_) = 134350336;
      *(v130.__r_.__value_.__r.__words + 4) = v107;
      WORD2(v130.__r_.__value_.__r.__words[1]) = 2050;
      *(&v130.__r_.__value_.__r.__words[1] + 6) = v108;
      HIWORD(v130.__r_.__value_.__r.__words[2]) = 2050;
      v131 = v109;
      v132 = 2050;
      v133 = v110;
      v134 = 2050;
      v135 = v111;
      v136 = 1026;
      v137 = 100;
      v112 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v112);
      if (v112 != &buf)
      {
        free(v112);
      }
    }
  }

  if (a4[1] != *a4)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if (v20 > 0x63)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v31 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100649F0C(*v116 + 432 * v19, &buf);
          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v20;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = p_buf;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "AlsCell, cdma, dropping, %{public}u, key, %{private}s, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100649F0C(*v116 + 432 * v19, &v130);
          v33 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v20;
          *&v123[8] = 2081;
          *&v123[10] = v33;
          v34 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v34);
          if (v34 != &buf)
          {
            free(v34);
          }
        }
      }

      else
      {
        v21 = objc_alloc_init(ALSCdmaCellTower);
        v22 = *v116 + 432 * v19;
        [(ALSCdmaCellTower *)v21 setSid:*(v22 + 32)];
        [(ALSCdmaCellTower *)v21 setNid:*(v22 + 36)];
        [(ALSCdmaCellTower *)v21 setBsid:*(v22 + 44)];
        [(ALSCdmaCellTower *)v21 setZoneid:*(v22 + 40)];
        [(ALSCdmaCellTower *)v21 setBandclass:*(v22 + 48)];
        [(ALSCdmaCellTower *)v21 setChannel:*(v22 + 52)];
        [(ALSCdmaCellTower *)v21 setPnoffset:*(v22 + 56)];
        v23 = *(v22 + 8);
        if (*(v22 + 16) == v23)
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018F1154();
          }

          v24 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *v22;
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v25;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#Warning query: don't have derivedMcc - using %d", &buf, 8u);
          }

          v26 = sub_10000A100(121, 2);
          v23 = v22;
          if (v26)
          {
            sub_1018F2208(&v128, v22, v129);
            v23 = v22;
          }
        }

        [(ALSCdmaCellTower *)v21 setMcc:*v23];
        if (*(v22 + 8) == *(v22 + 16))
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018F1154();
          }

          v35 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
          {
            v36 = [(ALSCdmaCellTower *)v21 mcc];
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v36;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "query: Adding single derivedMcc %d", &buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F2448(&v126, v21, v127);
          }

          [(ALSLocationRequest *)v121 addCdmaCellTower:v21];
        }

        else
        {
          v27 = 0;
          do
          {
            v28 = objc_alloc_init(ALSCdmaCellTower);
            [(ALSCdmaCellTower *)v28 setSid:[(ALSCdmaCellTower *)v21 sid]];
            [(ALSCdmaCellTower *)v28 setNid:[(ALSCdmaCellTower *)v21 nid]];
            [(ALSCdmaCellTower *)v28 setBsid:[(ALSCdmaCellTower *)v21 bsid]];
            [(ALSCdmaCellTower *)v28 setZoneid:[(ALSCdmaCellTower *)v21 zoneid]];
            [(ALSCdmaCellTower *)v28 setBandclass:[(ALSCdmaCellTower *)v21 bandclass]];
            [(ALSCdmaCellTower *)v28 setChannel:[(ALSCdmaCellTower *)v21 channel]];
            [(ALSCdmaCellTower *)v28 setPnoffset:[(ALSCdmaCellTower *)v21 pnoffset]];
            [(ALSCdmaCellTower *)v28 setMcc:*(*(v22 + 8) + 4 * v27)];
            if (qword_1025D4860 != -1)
            {
              sub_1018F1154();
            }

            v29 = qword_1025D4868;
            if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
            {
              v30 = [(ALSCdmaCellTower *)v28 mcc];
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v30;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "query: Adding multi derivedMcc %d", &buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018F2320(&v124, v28, v125);
            }

            [(ALSLocationRequest *)v121 addCdmaCellTower:v28];

            ++v27;
          }

          while (v27 < (*(v22 + 16) - *(v22 + 8)) >> 2);
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v37 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100649F0C(*v116 + 432 * v19, &buf);
          v38 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v20;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v38;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "AlsCell, cdma, query, %{public}d, key, %{private}s", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100649F0C(*v116 + 432 * v19, &v130);
          v39 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v39 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v20;
          *&v123[8] = 2081;
          *&v123[10] = v39;
          v40 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v40);
          if (v40 != &buf)
          {
            free(v40);
          }
        }
      }

      v19 = ++v20;
    }

    while (0x84BDA12F684BDA13 * ((v116[1] - *v116) >> 4) > v20);
  }

  if (v120[1] != *v120)
  {
    v41 = 0;
    v42 = 1;
    do
    {
      if (v42 - 1 > 0x63)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v46 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10064A38C((*v120 + 32 * v41), &buf);
          v47 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v42 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v47;
          _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "AlsCell, gsm, dropping, %{public}u, key, %{private}s, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10064A38C((*v120 + 32 * v41), &v130);
          v48 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v48 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v42 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v48;
          v49 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v49);
          if (v49 != &buf)
          {
            free(v49);
          }
        }
      }

      else
      {
        v43 = objc_alloc_init(ALSCellTower);
        [(ALSCellTower *)v43 setMcc:*(*v120 + 32 * v41)];
        [(ALSCellTower *)v43 setMnc:*(*v120 + 32 * v41 + 4)];
        [(ALSCellTower *)v43 setLacID:*(*v120 + 32 * v41 + 8)];
        [(ALSCellTower *)v43 setCellID:*(*v120 + 32 * v41 + 12)];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v44 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10064A38C((*v120 + 32 * v41), &buf);
          v45 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v42 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v45;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, query, %{public}d, key, %{private}s", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10064A38C((*v120 + 32 * v41), &v130);
          v50 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v50 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v42 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v50;
          v51 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v51);
          if (v51 != &buf)
          {
            free(v51);
          }
        }

        [(ALSLocationRequest *)v121 addCellTower:v43];
      }

      v41 = v42++;
    }

    while (v41 < (v120[1] - *v120) >> 5);
  }

  if (v119[1] != *v119)
  {
    v52 = 0;
    v53 = 1;
    do
    {
      if (v53 - 1 > 0x63)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v57 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10064A38C((*v119 + 32 * v52), &buf);
          v58 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v53 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v58;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "AlsCell. scdma, dropping, %{public}u, key, %{private}s, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10064A38C((*v119 + 32 * v52), &v130);
          v59 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v53 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v59;
          v60 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v60);
          if (v60 != &buf)
          {
            free(v60);
          }
        }
      }

      else
      {
        v54 = objc_alloc_init(ALSScdmaCellTower);
        [(ALSScdmaCellTower *)v54 setMcc:*(*v119 + 32 * v52)];
        [(ALSScdmaCellTower *)v54 setMnc:*(*v119 + 32 * v52 + 4)];
        [(ALSScdmaCellTower *)v54 setLacID:*(*v119 + 32 * v52 + 8)];
        [(ALSScdmaCellTower *)v54 setCellID:*(*v119 + 32 * v52 + 12)];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v55 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10064A38C((*v119 + 32 * v52), &buf);
          v56 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v53 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v56;
          _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "AlsCell, scdma, query, %{public}d, key, %{private}s", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10064A38C((*v119 + 32 * v52), &v130);
          v61 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v61 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v53 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v61;
          v62 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v62);
          if (v62 != &buf)
          {
            free(v62);
          }
        }

        [(ALSLocationRequest *)v121 addScdmaCellTower:v54];
      }

      v52 = v53++;
    }

    while (v52 < (v119[1] - *v119) >> 5);
  }

  if (v118[1] != *v118)
  {
    v63 = 0;
    v64 = 1;
    do
    {
      if (v64 - 1 > 0x63)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v68 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100081198(&buf);
          v69 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v64 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v69;
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "AlsCell. lte, dropping, %{public}u, key, %{private}s, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100081198(&v130);
          v71 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v71 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v64 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v71;
          v72 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v72);
          if (v72 != &buf)
          {
            free(v72);
          }
        }
      }

      else
      {
        v65 = objc_alloc_init(ALSLteCellTower);
        [(ALSLteCellTower *)v65 setMcc:*(*v118 + 88 * v63)];
        [(ALSLteCellTower *)v65 setMnc:*(*v118 + 88 * v63 + 4)];
        [(ALSLteCellTower *)v65 setTacID:*(*v118 + 88 * v63 + 8)];
        [(ALSLteCellTower *)v65 setCellID:*(*v118 + 88 * v63 + 12)];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v66 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(&buf);
          v67 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v64 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v67;
          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "AlsCell, lte, query, %{public}d, key, %{private}s", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100075418(&v130);
          v73 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v73 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v64 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v73;
          v74 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v74);
          if (v74 != &buf)
          {
            free(v74);
          }
        }

        [(ALSLocationRequest *)v121 addLteCellTower:v65];
      }

      v63 = v64;
      v70 = 0x2E8BA2E8BA2E8BA3 * ((v118[1] - *v118) >> 3) > v64++;
    }

    while (v70);
  }

  if (v117[1] != *v117)
  {
    v75 = 0;
    v76 = 1;
    do
    {
      if (v76 - 1 > 0x63)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v80 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10062233C(&buf);
          v81 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v76 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v81;
          _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEFAULT, "AlsCell. nr, dropping, %{public}u, key, %{private}s, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10062233C(&v130);
          v82 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v82 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v76 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v82;
          v83 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v83);
          if (v83 != &buf)
          {
            free(v83);
          }
        }
      }

      else
      {
        v77 = objc_alloc_init(ALSNr5GCellTower);
        [(ALSNr5GCellTower *)v77 setMcc:*(*v117 + 96 * v75)];
        [(ALSNr5GCellTower *)v77 setMnc:*(*v117 + 96 * v75 + 4)];
        [(ALSNr5GCellTower *)v77 setTacID:*(*v117 + 96 * v75 + 8)];
        [(ALSNr5GCellTower *)v77 setCellID:*(*v117 + 96 * v75 + 16)];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v78 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100642C8C(&buf);
          v79 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v79 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v130.__r_.__value_.__l.__data_) = 67240451;
          HIDWORD(v130.__r_.__value_.__r.__words[0]) = v76 - 1;
          LOWORD(v130.__r_.__value_.__r.__words[1]) = 2081;
          *(&v130.__r_.__value_.__r.__words[1] + 2) = v79;
          _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEBUG, "AlsCell, nr, query, %{public}d, key, %{private}s", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_100642C8C(&v130);
          v84 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v84 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 67240451;
          *&v123[4] = v76 - 1;
          *&v123[8] = 2081;
          *&v123[10] = v84;
          v85 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v85);
          if (v85 != &buf)
          {
            free(v85);
          }
        }

        [(ALSLocationRequest *)v121 addNr5GCellTower:v77];
      }

      v75 = v76;
      v70 = 0xAAAAAAAAAAAAAAABLL * ((v117[1] - *v117) >> 5) > v76++;
    }

    while (v70);
  }

  sub_10001A3E8();
  if (sub_10003A088())
  {
    v86 = *(a1 + 296);
  }

  else
  {
    v86 = 0;
  }

  [(ALSLocationRequest *)v121 setNumberOfSurroundingCells:v86];
  if (a7[1] != *a7)
  {
    v87 = 1;
    do
    {
      if (v87 - 1 > 0x3E7)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v93 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&buf);
          v94 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 136380931;
          *(v130.__r_.__value_.__r.__words + 4) = v94;
          WORD2(v130.__r_.__value_.__r.__words[1]) = 1026;
          *(&v130.__r_.__value_.__r.__words[1] + 6) = v87 - 1;
          _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEFAULT, "AlsWifi, dropping, %{private}s, %{public}u, #CloneMe", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10018F0D0(&v130);
          v96 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v96 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 136380931;
          *&v123[4] = v96;
          *&v123[12] = 1026;
          *&v123[14] = v87 - 1;
          v97 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v97);
          if (v97 != &buf)
          {
            free(v97);
          }
        }
      }

      else
      {
        v88 = objc_alloc_init(ALSWirelessAP);
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v89 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10018F0D0(&buf);
          v90 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v130.__r_.__value_.__l.__data_) = 136380931;
          *(v130.__r_.__value_.__r.__words + 4) = v90;
          WORD2(v130.__r_.__value_.__r.__words[1]) = 1026;
          *(&v130.__r_.__value_.__r.__words[1] + 6) = v87 - 1;
          _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "AlsWifi, query, %{private}s, %{public}d", &v130, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          sub_10018F0D0(&v130);
          v98 = &v130;
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v98 = v130.__r_.__value_.__r.__words[0];
          }

          *v123 = 136380931;
          *&v123[4] = v98;
          *&v123[12] = 1026;
          *&v123[14] = v87 - 1;
          v99 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "ALSLocationRequest *CLNetworkLocationRequesterALS::createUnifiedQueryRequest(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v99);
          if (v99 != &buf)
          {
            free(v99);
          }
        }

        sub_1000ECD9C(&buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = &buf;
        }

        else
        {
          v91 = buf.__r_.__value_.__r.__words[0];
        }

        v92 = sub_100053C00(v91);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        [(ALSWirelessAP *)v88 setMacID:v92];
        CFRelease(v92);
        [(ALSLocationRequest *)v121 addWirelessAP:v88];
      }

      v95 = v87++;
    }

    while (v95 < (a7[1] - *a7) >> 3);
  }

  v100 = *a8;
  memset(&buf, 0, sizeof(buf));
  switch(v100)
  {
    case 3:
      operator new();
    case 2:
      operator new();
    case 1:
      operator new();
  }

  [(ALSLocationRequest *)v121 setWifiAltitudeScale:2];
  sub_10001A3E8();
  if ((sub_10003A088() & 2) != 0)
  {
    v101 = *(a1 + 300);
  }

  else
  {
    v101 = 0;
  }

  [(ALSLocationRequest *)v121 setNumberOfSurroundingWifis:v101];
  if ([(ALSLocationRequest *)v121 wirelessAPsCount])
  {
    sub_100A2D99C((a1 + 392), [(ALSLocationRequest *)v121 wirelessAPsCount], [(ALSLocationRequest *)v121 numberOfSurroundingWifis]);
  }

  if ([(ALSLocationRequest *)v121 cellTowersCount]|| [(ALSLocationRequest *)v121 lteCellTowersCount]|| [(ALSLocationRequest *)v121 cdmaCellTowersCount]|| [(ALSLocationRequest *)v121 nr5GCellTowersCount])
  {
    *&buf.__r_.__value_.__r.__words[1] = 0uLL;
    buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
    v102 = [(ALSLocationRequest *)v121 cellTowersCount];
    sub_100A2DAA8(&v130);
    *v123 = &v130;
    *(sub_10054987C(&buf, &v130.__r_.__value_.__l.__data_) + 56) = v102;
    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    v103 = [(ALSLocationRequest *)v121 cdmaCellTowersCount];
    sub_100A2DAB8(&v130);
    *v123 = &v130;
    *(sub_10054987C(&buf, &v130.__r_.__value_.__l.__data_) + 56) = v103;
    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    v104 = [(ALSLocationRequest *)v121 lteCellTowersCount];
    sub_100A2DAC8(&v130);
    *v123 = &v130;
    *(sub_10054987C(&buf, &v130.__r_.__value_.__l.__data_) + 56) = v104;
    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    v105 = [(ALSLocationRequest *)v121 nr5GCellTowersCount];
    sub_100A2DAD8(&v130);
    *v123 = &v130;
    *(sub_10054987C(&buf, &v130.__r_.__value_.__l.__data_) + 56) = v105;
    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    v122 = buf;
    if (buf.__r_.__value_.__r.__words[2])
    {
      *(buf.__r_.__value_.__l.__size_ + 16) = &v122.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
      *&buf.__r_.__value_.__r.__words[1] = 0uLL;
    }

    else
    {
      v122.__r_.__value_.__r.__words[0] = &v122.__r_.__value_.__l.__size_;
    }

    sub_100A2D4D8(a1 + 392, &v122, [(ALSLocationRequest *)v121 numberOfSurroundingWifis]);
    sub_10001AF44(&v122, v122.__r_.__value_.__l.__size_);
    sub_10001AF44(&buf, buf.__r_.__value_.__l.__size_);
  }

  return v121;
}

void sub_100649AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100649B8C(void *a1)
{
  v2 = +[NSMutableArray array];
  if ([a1 surroundingWifiBandsCount])
  {
    v3 = 0;
    do
    {
      [v2 addObject:{-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(objc_msgSend(a1, "surroundingWifiBands") + v3++)), "stringValue")}];
    }

    while (v3 < [a1 surroundingWifiBandsCount]);
  }

  return [v2 componentsJoinedByString:{@", "}];
}

NSDictionary *sub_100649C2C(uint64_t a1)
{
  v9[0] = @"cdmaRequestCount";
  v10[0] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) cdmaCellTowersCount] != 0);
  v9[1] = @"cdmaTowerCount";
  v10[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) cdmaCellTowersCount]);
  v9[2] = @"cellRequestCount";
  v10[2] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) cellTowersCount] != 0);
  v9[3] = @"cellTowerCount";
  v10[3] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) cellTowersCount]);
  v10[4] = &off_10254EDB0;
  v9[4] = @"locationCount";
  v9[5] = @"lteRequestCount";
  v10[5] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) lteCellTowersCount] != 0);
  v9[6] = @"lteTowerCount";
  v10[6] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) lteCellTowersCount]);
  v9[7] = @"nr5gRequestCount";
  v10[7] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) nr5GCellTowersCount] != 0);
  v9[8] = @"nr5gTowerCount";
  v10[8] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) nr5GCellTowersCount]);
  v10[9] = &off_10254EDC8;
  v9[9] = @"totalRequestCount";
  v9[10] = @"wifiAPCount";
  v10[10] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) wirelessAPsCount]);
  v9[11] = @"wifiRequestCount";
  v10[11] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) wirelessAPsCount] != 0);
  v9[12] = @"requestReason";
  v2 = *(a1 + 40);
  if (*(v2 + 31) < 0)
  {
    sub_100007244(__p, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    v8 = *(v2 + 24);
    *__p = v3;
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v10[12] = [NSString stringWithUTF8String:v4, __p[0], __p[1], v8];
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:13];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

uint64_t sub_100649F0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v43);
  sub_100038730(&v44, "Band Class ", 11);
  v4 = std::ostream::operator<<();
  v5 = sub_100038730(v4, ", ", 2);
  sub_100038730(v5, "BSID ", 5);
  v6 = std::ostream::operator<<();
  v7 = sub_100038730(v6, ", ", 2);
  sub_100038730(v7, "RAT ", 4);
  v8 = std::ostream::operator<<();
  v9 = sub_100038730(v8, ", ", 2);
  sub_100038730(v9, "CellType ", 9);
  v10 = std::ostream::operator<<();
  v11 = sub_100038730(v10, ", ", 2);
  sub_100038730(v11, "Channel ", 8);
  v12 = std::ostream::operator<<();
  v13 = sub_100038730(v12, ", ", 2);
  sub_100038730(v13, "MCC ", 4);
  v14 = std::ostream::operator<<();
  v15 = sub_100038730(v14, ", ", 2);
  sub_100038730(v15, "MNC ", 4);
  v16 = std::ostream::operator<<();
  v17 = sub_100038730(v16, ", ", 2);
  sub_100038730(v17, "NID ", 4);
  v18 = std::ostream::operator<<();
  v19 = sub_100038730(v18, ", ", 2);
  sub_100038730(v19, "PN offset ", 10);
  v20 = std::ostream::operator<<();
  v21 = sub_100038730(v20, ", ", 2);
  sub_100038730(v21, "SID ", 4);
  v22 = std::ostream::operator<<();
  v23 = sub_100038730(v22, ", ", 2);
  sub_100038730(v23, "Zone ID ", 8);
  v24 = std::ostream::operator<<();
  v25 = sub_100038730(v24, ", ", 2);
  v26 = sub_100038730(v25, "Sector ID ", 10);
  v27 = *(a1 + 263);
  if (v27 >= 0)
  {
    v28 = a1 + 240;
  }

  else
  {
    v28 = *(a1 + 240);
  }

  if (v27 >= 0)
  {
    v29 = *(a1 + 263);
  }

  else
  {
    v29 = *(a1 + 248);
  }

  v30 = sub_100038730(v26, v28, v29);
  v31 = sub_100038730(v30, ", ", 2);
  sub_100038730(v31, "ltmOffset ", 10);
  v32 = std::ostream::operator<<();
  v33 = sub_100038730(v32, ", ", 2);
  sub_100038730(v33, "dayLightSaving ", 15);
  v34 = std::ostream::operator<<();
  v35 = sub_100038730(v34, ", ", 2);
  sub_100038730(v35, "derivedMccNum ", 14);
  v36 = std::ostream::operator<<();
  v37 = sub_100038730(v36, ", ", 2);
  sub_100038730(v37, "derivedMCC ", 11);
  std::ostream::operator<<();
  sub_100073518(v43, __p);
  if (v42 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  sub_10000EC00(a2, v38);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  v44 = v39;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  std::locale::~locale(v46);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10064A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

id sub_10064A47C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    sub_1018F2570();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10064AB10;
  v8[3] = &unk_1024605D8;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v9 = a4;
  v10 = a5;
  return [v6 async:v8];
}

uint64_t sub_10064A530(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 168);
  if (v3)
  {
    v3(*(a1 + 40), 1, *(a1 + 48), *(a1 + 52), *(v2 + 152));
  }

  result = (*(*(a1 + 32) + 16))();
  v5 = *(v2 + 168);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 52);
    v8 = *(v2 + 152);

    return v5(v2, 0, v6, v7, v8);
  }

  return result;
}

uint64_t sub_10064A5B4(uint64_t a1)
{
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10064A658(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 224);
  if (v3)
  {
    return v3(result, *(a1 + 40), *(a1 + 44), *(result + 152));
  }

  return result;
}

uint64_t sub_10064A678(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 232);
  if (v3)
  {
    return v3(result, *(a1 + 40), *(a1 + 44), *(result + 152));
  }

  return result;
}

uint64_t sub_10064A698(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 240);
  if (v3)
  {
    return v3(result, *(a1 + 40), *(a1 + 44), *(result + 152));
  }

  return result;
}

void sub_10064A6B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10064A714(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 208);
  if (v3)
  {
    return v3(result, a1 + 40, a1 + 64, *(a1 + 88), *(a1 + 92), *(a1 + 96), *(result + 152));
  }

  return result;
}

uint64_t sub_10064A740(void *a1, uint64_t *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_10064A838((a1 + 5), a2[5], a2[6], 0xD37A6F4DE9BD37A7 * ((a2[6] - a2[5]) >> 3));
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return sub_10064A838((a1 + 8), a2[8], a2[9], 0xD37A6F4DE9BD37A7 * ((a2[9] - a2[8]) >> 3));
}

void sub_10064A7C4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A7E0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

uint64_t sub_10064A838(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10064A8B4(result, a4);
  }

  return result;
}

void sub_10064A898(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A8B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    sub_10064A6B8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10064A904()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018F2088();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "Unimplemented CDMA NetworkLocationRequester", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018F26D8();
  }

  return 0;
}

uint64_t sub_10064A99C()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018F2088();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "nearby data query not supported", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018F27C4();
  }

  return 0xFFFFFFFFLL;
}

void sub_10064AA34(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 432;
        sub_10064AAB8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10064AAB8(uint64_t a1)
{
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

uint64_t sub_10064AB10(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 216);
  if (v3)
  {
    return v3(result, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(result + 152));
  }

  return result;
}

uint64_t sub_10064AB34()
{
  qword_1026370C0 = [@"k2dot4GHZ" UTF8String];
  qword_1026370C8 = [@"k2dot4GHZ" UTF8String];
  sub_100C43160(&qword_1026584A8, "ALS");

  return __cxa_atexit(sub_100640608, &qword_1026584A8, dword_100000000);
}

double sub_10064ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ~sub_1002EE588(a2, a1);
  v9 = sub_1002EE588(a3, a2);
  if (!v8)
  {
    v14 = (a1 + 8);
    v15 = *a1;
    if (v9 == -1)
    {
      *a1 = *a3;
    }

    else
    {
      *a1 = *a2;
      *a2 = v15;
      v14 = (a2 + 8);
      v16 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v16;
      if (sub_1002EE588(a3, a2) != 0xFF)
      {
        goto LABEL_11;
      }

      v15 = *a2;
      *a2 = *a3;
    }

    *a3 = v15;
    v11 = (a3 + 8);
    goto LABEL_10;
  }

  if (v9 == -1)
  {
    v10 = *a2;
    *a2 = *a3;
    *a3 = v10;
    v11 = (a2 + 8);
    v12 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v12;
    if (sub_1002EE588(a2, a1) == 0xFF)
    {
      v13 = *a1;
      *a1 = *a2;
      v14 = (a1 + 8);
      *a2 = v13;
LABEL_10:
      v17 = *v14;
      *v14 = *v11;
      *v11 = v17;
    }
  }

LABEL_11:
  if (sub_1002EE588(a4, a3) == 0xFF)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v20;
    if (sub_1002EE588(a3, a2) == 0xFF)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v22 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v22;
      if (sub_1002EE588(a2, a1) == 0xFF)
      {
        v23 = *a1;
        *a1 = *a2;
        *a2 = v23;
        result = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = result;
      }
    }
  }

  return result;
}

double sub_10064ADC4(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10064ABEC(a1, a2, a3, a4);
  if (sub_1002EE588(a5, a4) == 0xFF)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v12;
    if (sub_1002EE588(a4, a3) == 0xFF)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      v14 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v14;
      if (sub_1002EE588(a3, a2) == 0xFF)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        v16 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v16;
        if (sub_1002EE588(a2, a1) == 0xFF)
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
          result = a1[1];
          a1[1] = *(a2 + 8);
          *(a2 + 8) = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10064AEE4(uint64_t result, double *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v5 = result + 8;
      do
      {
        v6 = v4;
        result = sub_1002EE588(v4, v3);
        if (result == 0xFF)
        {
          v7 = *v6;
          v8 = v3[3];
          v9 = v5;
          v10 = *v3;
          while (1)
          {
            v11 = *v9;
            v9[1] = v10;
            v9[2] = v11;
            v10 = *(v9 - 3);
            v12 = v7 < v10;
            if (v7 == v10)
            {
              v12 = v8 < *(v9 - 2);
            }

            if (!v12)
            {
              break;
            }

            v9 -= 2;
          }

          *(v9 - 1) = v7;
          *v9 = v8;
        }

        v4 = v6 + 2;
        v5 += 16;
        v3 = v6;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

double *sub_10064AFA0(double *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 16);
  if (*a1 == v4)
  {
    if (v3 < *(a2 - 8))
    {
LABEL_3:
      for (i = a1 + 2; ; i += 2)
      {
        v6 = v2 < *i;
        if (v2 == *i)
        {
          v6 = v3 < i[1];
        }

        if (v6)
        {
          break;
        }
      }

      goto LABEL_15;
    }
  }

  else if (*a1 < v4)
  {
    goto LABEL_3;
  }

  for (i = a1 + 2; i < a2; i += 2)
  {
    v7 = v2 < *i;
    if (v2 == *i)
    {
      v7 = v3 < i[1];
    }

    if (v7)
    {
      break;
    }
  }

LABEL_15:
  if (i < a2)
  {
    for (a2 -= 16; ; a2 -= 16)
    {
      if (v2 == v4)
      {
        if (v3 >= *(a2 + 8))
        {
          break;
        }
      }

      else if (v2 >= v4)
      {
        break;
      }

      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 1);
      i[1] = *(a2 + 8);
      *(a2 + 8) = v11;
      do
      {
        while (1)
        {
          v12 = i[2];
          i += 2;
          v9 = v12;
          v13 = v2 < v12;
          if (v2 == v12)
          {
            break;
          }

          if (v13)
          {
            goto LABEL_32;
          }
        }
      }

      while (v3 >= i[1]);
      do
      {
LABEL_32:
        while (1)
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
          v15 = v2 < v14;
          if (v2 != v14)
          {
            break;
          }

          if (v3 >= *(a2 + 8))
          {
            goto LABEL_34;
          }
        }
      }

      while (v15);
LABEL_34:
      ;
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t sub_10064B0D8(double *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    v6 = v5 < v3;
    if (v5 == v3)
    {
      v6 = a1[v2 + 3] < v4;
    }

    if (!v6)
    {
      break;
    }

    v2 += 2;
  }

  v7 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v9 = v8 < v3;
      if (v8 == v3)
      {
        v9 = *(a2 + 8) < v4;
      }
    }

    while (!v9);
  }

  else if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 16);
      a2 -= 16;
      v11 = v10 < v3;
      if (v10 == v3)
      {
        v11 = *(a2 + 8) < v4;
      }
    }

    while (!v11 && v7 < a2);
  }

  if (v7 >= a2)
  {
    v14 = &a1[v2 + 2];
  }

  else
  {
    v13 = *a2;
    v14 = &a1[v2 + 2];
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v5;
      v16 = *(v14 + 8);
      *(v14 + 8) = *(v15 + 8);
      *(v15 + 8) = v16;
      do
      {
        while (1)
        {
          v17 = *(v14 + 16);
          v14 += 16;
          v5 = v17;
          v18 = v17 < v3;
          if (v17 == v3)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_30;
          }
        }
      }

      while (*(v14 + 8) < v4);
      do
      {
LABEL_30:
        while (1)
        {
          v19 = *(v15 - 16);
          v15 -= 16;
          v13 = v19;
          v20 = v19 < v3;
          if (v19 != v3)
          {
            break;
          }

          if (*(v15 + 8) < v4)
          {
            goto LABEL_33;
          }
        }
      }

      while (!v20);
LABEL_33:
      ;
    }

    while (v14 < v15);
  }

  if ((v14 - 16) != a1)
  {
    *a1 = *(v14 - 16);
    a1[1] = *(v14 - 8);
  }

  *(v14 - 16) = v3;
  *(v14 - 8) = v4;
  return v14 - 16;
}

BOOL sub_10064B1FC(uint64_t a1, double *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v7 = ~sub_1002EE588((a1 + 16), a1);
        v8 = sub_1002EE588(a2 - 2, (a1 + 16));
        if (v7)
        {
          if (v8 != -1)
          {
            return 1;
          }

          v9 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = (a1 + 24);
          v11 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v11;
          if (sub_1002EE588((a1 + 16), a1) != 0xFF)
          {
            return 1;
          }

          v12 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 16) = v12;
          v13 = (a1 + 8);
        }

        else
        {
          v13 = (a1 + 8);
          v21 = *a1;
          if (v8 == -1)
          {
            *a1 = *(a2 - 2);
          }

          else
          {
            v22 = *(a1 + 16);
            *(a1 + 24) = *(a1 + 8);
            v13 = (a1 + 24);
            *(a1 + 16) = v21;
            *a1 = v22;
            if (sub_1002EE588(a2 - 2, (a1 + 16)) != 0xFF)
            {
              return 1;
            }

            v21 = *(a1 + 16);
            *(a1 + 16) = *(a2 - 2);
          }

          *(a2 - 2) = v21;
          v10 = a2 - 1;
        }

        v25 = *v13;
        *v13 = *v10;
        *v10 = v25;
        return 1;
      case 4:
        sub_10064ABEC(a1, a1 + 16, a1 + 32, (a2 - 2));
        return 1;
      case 5:
        sub_10064ADC4(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 2));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (sub_1002EE588(a2 - 2, a1) == 0xFF)
      {
        v5 = *a1;
        *a1 = *(a2 - 2);
        *(a2 - 2) = v5;
        v6 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = (a1 + 32);
  v15 = ~sub_1002EE588((a1 + 16), a1);
  v16 = sub_1002EE588((a1 + 32), (a1 + 16));
  if (!v15)
  {
    v20 = (a1 + 8);
    v23 = *a1;
    if (v16 == -1)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      v24 = *(a1 + 16);
      *(a1 + 24) = *(a1 + 8);
      v20 = (a1 + 24);
      *(a1 + 16) = v23;
      *a1 = v24;
      if (sub_1002EE588((a1 + 32), (a1 + 16)) != 0xFF)
      {
        goto LABEL_31;
      }

      v23 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v23;
    v18 = (a1 + 40);
    goto LABEL_30;
  }

  if (v16 == -1)
  {
    v17 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v17;
    if (sub_1002EE588((a1 + 16), a1) == 0xFF)
    {
      v18 = (a1 + 24);
      v19 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
      v20 = (a1 + 8);
LABEL_30:
      v26 = *v20;
      *v20 = *v18;
      *v18 = v26;
    }
  }

LABEL_31:
  v27 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (2)
  {
    if (sub_1002EE588(v27, v14) != 0xFF)
    {
      goto LABEL_43;
    }

    v30 = *v27;
    v31 = v27[1];
    *v27 = *v14;
    v27[1] = v14[1];
    v32 = v28;
    while (1)
    {
      v33 = a1 + v32;
      v34 = *(a1 + v32 + 16);
      if (v30 == v34)
      {
        break;
      }

      if (v30 >= v34)
      {
        goto LABEL_41;
      }

      v35 = *(a1 + v32 + 24);
LABEL_39:
      *(v33 + 32) = v34;
      *(a1 + v32 + 40) = v35;
      v32 -= 16;
      if (v32 == -32)
      {
        v36 = a1;
        goto LABEL_42;
      }
    }

    v35 = *(v33 + 24);
    if (v31 < v35)
    {
      goto LABEL_39;
    }

LABEL_41:
    v36 = (a1 + v32 + 32);
LABEL_42:
    *v36 = v30;
    v36[1] = v31;
    if (++v29 != 8)
    {
LABEL_43:
      v14 = v27;
      v28 += 16;
      v27 += 2;
      if (v27 == a2)
      {
        return 1;
      }

      continue;
    }

    return v27 + 2 == a2;
  }
}

uint64_t sub_10064B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_10064B6FC(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (sub_1002EE588(v12, a1) == 0xFF)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v14;
          sub_10064B6FC(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = (a2 - 16);
      do
      {
        v17 = *a1;
        v16 = *(a1 + 8);
        v18 = sub_10064B848(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          v18[1] = v15[1];
          *v15 = v17;
          *(v15 + 1) = v16;
          sub_10064B8F8(a1, (v18 + 2), a4, (v18 - a1 + 16) >> 4);
        }

        v15 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10064B6FC(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && sub_1002EE588((result + 16 * (v9 + 1)), v11 + 2) == 255)
      {
        v11 += 2;
        v10 = v12;
      }

      result = sub_1002EE588(v11, a4);
      if (result != 0xFF)
      {
        v13 = *a4;
        v14 = a4[1];
        *a4 = *v11;
        a4[1] = v11[1];
        if (v7 >= v10)
        {
          while (1)
          {
            v16 = 2 * v10;
            v10 = (2 * v10) | 1;
            v15 = (v6 + 16 * v10);
            v17 = v16 + 2;
            if (v16 + 2 < a3)
            {
              result = sub_1002EE588((v6 + 16 * v10), v15 + 2);
              if (result == 255)
              {
                v15 += 2;
                v10 = v17;
              }
            }

            v18 = *v15 < v13;
            if (*v15 == v13)
            {
              v18 = v15[1] < v14;
            }

            if (v18)
            {
              break;
            }

            *v11 = *v15;
            v11[1] = v15[1];
            v11 = v15;
            if (v7 < v10)
            {
              goto LABEL_16;
            }
          }
        }

        v15 = v11;
LABEL_16:
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

void *sub_10064B848(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 4;
      if (sub_1002EE588(v7 + 2, v7 + 4) == 255)
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1[1] = v8[1];
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}