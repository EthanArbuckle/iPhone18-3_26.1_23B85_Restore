uint64_t sub_1000F106C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) silo];
  *(a1 + 832) = 1;
  v4 = sub_1000F1624(a1);
  if (v4)
  {
    v5 = *(a1 + 44);
    *a2 = *(a1 + 28);
    *(a2 + 16) = v5;
    v6 = *(a1 + 60);
    v7 = *(a1 + 76);
    v8 = *(a1 + 108);
    *(a2 + 64) = *(a1 + 92);
    *(a2 + 80) = v8;
    *(a2 + 32) = v6;
    *(a2 + 48) = v7;
    v9 = *(a1 + 124);
    v10 = *(a1 + 140);
    v11 = *(a1 + 156);
    *(a2 + 140) = *(a1 + 168);
    *(a2 + 112) = v10;
    *(a2 + 128) = v11;
    *(a2 + 96) = v9;
    memcpy((a2 + 160), (a1 + 184), 0x201uLL);
    v12 = *(a1 + 704);
    v13 = *(a1 + 712);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a2 + 680) = v12;
    v14 = *(a2 + 688);
    *(a2 + 688) = v13;
    if (v14)
    {
      sub_100008080(v14);
    }

    v15 = *(a1 + 720);
    v16 = *(a1 + 752);
    *(a2 + 712) = *(a1 + 736);
    *(a2 + 728) = v16;
    *(a2 + 696) = v15;
    v17 = *(a1 + 768);
    v18 = *(a1 + 784);
    v19 = *(a1 + 800);
    *(a2 + 785) = *(a1 + 809);
    *(a2 + 760) = v18;
    *(a2 + 776) = v19;
    *(a2 + 744) = v17;
  }

  return v4;
}

uint64_t sub_1000F1168(float64x2_t *a1, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52[0] = a2;
  *buf = v52;
  v10 = sub_1000F1950(&a1[67], v52);
  result = sub_100022424(a1, v52[0], a3);
  if (!result)
  {
    return result;
  }

  v12 = *a3;
  if (*a3 >= 5)
  {
    if (v12 == 9)
    {
      *(v10 + 8) = 0xFFFF;
      *(v10 + 44) = 0;
      *(v10 + 36) = 0;
      *(v10 + 52) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(v10 + 68) = _Q0;
      *(v10 + 84) = _Q0;
      *(v10 + 100) = _Q0;
      *(v10 + 29) = 0;
      v10[16] = 0;
      v10[17] = 0;
      v10[15] = 0xBFF0000000000000;
      *(v10 + 36) = 0;
      *(v10 + 148) = 0xBFF0000000000000;
      *(v10 + 39) = 0x7FFFFFFF;
      v10[21] = 0;
      v10[22] = 0;
      v10[20] = 0;
      result = 1;
      *(v10 + 184) = 0;
      return result;
    }

    if (v12 != 39)
    {
      return 1;
    }
  }

  v13 = sub_1000F24B8((v10 + 4), a4, 1);
  Current = CFAbsoluteTimeGetCurrent();
  v15 = *(a4 + 76);
  if (v13)
  {
    _NF = 1;
  }

  else
  {
    _NF = v15 < *(v10 + 108);
  }

  if (_NF)
  {
    return 0;
  }

  v17 = *(a4 + 20);
  v18 = *(v10 + 52);
  if (v18 < 0.0 || ((v19 = *(a6 + 8), v20 = v18 - v17, v19 >= 0.0) ? (v21 = v19 < v20) : (v21 = 1), v21 || (sub_1001097CC(a1 + 8, (v10 + 4), a4), v19 < v22)))
  {
    if (Current - v15 <= 1.0)
    {
      if (v17 > 0.0)
      {
        v27 = *(a4 + 16);
        *(v10 + 2) = *a4;
        *(v10 + 3) = v27;
        v28 = *(a4 + 32);
        v29 = *(a4 + 48);
        v30 = *(a4 + 80);
        *(v10 + 6) = *(a4 + 64);
        *(v10 + 7) = v30;
        *(v10 + 4) = v28;
        *(v10 + 5) = v29;
        v31 = *(a4 + 96);
        v32 = *(a4 + 112);
        v33 = *(a4 + 128);
        *(v10 + 172) = *(a4 + 140);
        *(v10 + 9) = v32;
        *(v10 + 10) = v33;
        *(v10 + 8) = v31;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a4 + 4);
        v25 = *(a4 + 12);
        v26 = CFAbsoluteTimeGetCurrent() - *(a4 + 76);
        *buf = 134546177;
        *&buf[4] = v24;
        v65 = 2053;
        v66 = v25;
        v67 = 2048;
        v68 = v26;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "<%{sensitive}+.8f,%{sensitive}+.8f> is stale from %.3fs ago, not using for distance filtering", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A5B4(a4, (a4 + 76));
      }
    }

    return 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101919C28();
  }

  v38 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a6 + 8);
    v40 = *(v10 + 36);
    v41 = *(v10 + 44);
    v42 = *(a4 + 4);
    v43 = *(a4 + 12);
    sub_1001097CC(a1 + 8, (v10 + 4), a4);
    *buf = 134219265;
    *&buf[4] = v39;
    v65 = 2053;
    v66 = v40;
    v67 = 2053;
    v68 = v41;
    v69 = 2053;
    v70 = v42;
    v71 = 2053;
    v72 = v43;
    v73 = 2048;
    v74 = v44;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "distance filter %.2f not exceeded by <%{sensitive}+.8f,%{sensitive}+.8f> and <%{sensitive}+.8f,%{sensitive}+.8f> (distance %.2f)", buf, 0x3Eu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v45 = *(a6 + 8);
    v46 = *(v10 + 36);
    v47 = *(v10 + 44);
    v48 = *(a4 + 4);
    v49 = *(a4 + 12);
    sub_1001097CC(a1 + 8, (v10 + 4), a4);
    v52[1] = 134219265;
    v53 = v45;
    v54 = 2053;
    v55 = v46;
    v56 = 2053;
    v57 = v47;
    v58 = 2053;
    v59 = v48;
    v60 = 2053;
    v61 = v49;
    v62 = 2048;
    v63 = v50;
    v51 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFilteredLocationController::shouldNotifyClient(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, const char &, CLLocationProvider_Type::RegInfo &)", "%s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000F1624(uint64_t a1)
{
  if (*(a1 + 48) <= 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Last confident location not available", v25, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B43D54();
      return 0;
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = (a1 + 104);
    v4 = *(a1 + 104);
    if (Current < v4 + 1800.0)
    {
      if (Current >= v4)
      {
        return 1;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101B4363C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v3;
        v25[0] = 134349056;
        *&v25[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#LastConfLoc,#Warning Last confident location is in future,timestamp,%{public}.3f", v25, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B43F70((a1 + 104));
      }

      *(a1 + 28) = 0xFFFF;
      *(a1 + 32) = 0u;
      *(a1 + 48) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 64) = _Q0;
      *(a1 + 80) = _Q0;
      *(a1 + 96) = _Q0;
      *(a1 + 112) = 0;
      *(a1 + 116) = 0xBFF0000000000000;
      *(a1 + 124) = 0u;
      *(a1 + 140) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 152) = 0x7FFFFFFF;
      *(a1 + 156) = 0;
      *(a1 + 164) = 0u;
      *(a1 + 180) = 0;
      sub_100021ED8(v25);
      memcpy((a1 + 184), v25, 0x201uLL);
      v12 = v26;
      v26 = 0u;
      v13 = *(a1 + 712);
      *(a1 + 704) = v12;
      if (v13)
      {
        sub_100008080(v13);
        v14 = *(&v26 + 1);
        v15 = v32[0];
        *(a1 + 784) = v31;
        *(a1 + 800) = v15;
        *(a1 + 809) = *(v32 + 9);
        v16 = v28;
        *(a1 + 720) = v27;
        *(a1 + 736) = v16;
        v17 = v30;
        *(a1 + 752) = v29;
        *(a1 + 768) = v17;
        if (v14)
        {
          sub_100008080(v14);
        }
      }

      else
      {
        v22 = v32[0];
        *(a1 + 784) = v31;
        *(a1 + 800) = v22;
        *(a1 + 809) = *(v32 + 9);
        v23 = v28;
        *(a1 + 720) = v27;
        *(a1 + 736) = v23;
        v24 = v30;
        *(a1 + 752) = v29;
        *(a1 + 768) = v24;
      }

      return 0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v21 = Current - *v3;
      v25[0] = 134349312;
      *&v25[1] = v21;
      LOWORD(v25[3]) = 2050;
      *(&v25[3] + 2) = 0x409C200000000000;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Last confident location too old,ageSec,%{public}.3f,maxAgeSec,%{public}.3f", v25, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B43E38(v3, Current);
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000F1950(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000F00A4();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t sub_1000F1A0C(uint64_t a1, _DWORD *a2)
{
  sub_1000F4588();
  if (*a2 >= 3u)
  {
    [*(*(a1 + 168) + 16) register:*(*(a1 + 168) + 8) forNotification:? registrationInfo:?];
  }

  return 1;
}

uint64_t *sub_1000F1A54(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 16))
    {
      v2 = dword_101CFCB5C[i];
      v3 = *(a1 + 16);
      do
      {
        v4 = *(v3 + 7);
        if (v2 >= v4)
        {
          if (v4 >= v2)
          {
            v12 = 0;
            v13 = 0;
            __asm { FMOV            V0.2D, #-1.0 }

            v11 = _Q0;
            return sub_1000F2160(a1, 0, &v11);
          }

          ++v3;
        }

        v3 = *v3;
      }

      while (v3);
    }
  }

  return sub_1001ED860(a1, 0);
}

uint64_t *sub_1000F1AF8(uint64_t a1, unsigned int a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  *&v16 = &v18;
  v11 = *(sub_100007FA0(a6, &v18) + 32);
  *&v16 = &v18;
  *(sub_100007FA0(a6, &v18) + 32) = a3;
  if (a3)
  {
    v12 = a4[1];
    v16 = *a4;
    v17 = v12;
    DWORD1(v17) = sub_1000F44E4(a1, v18);
    if (v11)
    {
      sub_100109ECC();
    }

    sub_10002FA64();
  }

  [*(*a5 + 16) unregister:*(*a5 + 8) forNotification:v18];
  v13 = 0;
  while (1)
  {
    v15 = dword_101CFDDE0[v13];
    *&v16 = &v15;
    result = sub_100007FA0(a6, &v15);
    if (result[4])
    {
      break;
    }

    if (++v13 == 3)
    {
      return [*(*a5 + 16) unregister:*(*a5 + 8) forNotification:9];
    }
  }

  return result;
}

uint64_t sub_1000F1CE4(void *a1, unsigned int *a2)
{
  sub_1000F4588();
  v4 = *a2;
  if (*a2 >= 3)
  {
    if (v4 != 9)
    {
      [*(a1[25] + 16) register:*(a1[25] + 8) forNotification:*a2 registrationInfo:0];
      v7 = 0;
      while (dword_101CFDAA0[v7] != *a2)
      {
        if (++v7 == 3)
        {
          return 1;
        }
      }

      [*(a1[26] + 16) register:*(a1[26] + 8) forNotification:? registrationInfo:?];
    }
  }

  else
  {
    v5 = a1[16];
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000F1F54(v5, v4, 1, Current);
  }

  return 1;
}

uint64_t sub_1000F1DA0(char *a1, int a2, int *a3, __int128 *a4)
{
  sub_100021AFC(v12);
  if (qword_1025D47B0 != -1)
  {
    sub_101A83058();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v9 = (*(*a1 + 128))(a1, a3, v12);
    buf = 68289282;
    v20 = 2082;
    v21 = "";
    v22 = 1026;
    v23 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:cached location, found:%{public}d}", &buf, 0x18u);
  }

  v10 = sub_100044404(a1, a2, a3, a4);

  if (v17)
  {
    sub_100008080(v17);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  return v10;
}

uint64_t sub_1000F1F54(uint64_t a1, int a2, int a3, double a4)
{
  v11 = a2;
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = a2;
    v18 = 1026;
    v19 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client interest changed, notification:%{public, location:CLLocationProvider_Type::Notification}lld, is interested:%{public}d}", buf, 0x22u);
  }

  v9 = a1 + 8;
  if (a3)
  {
    sub_1003C9410(v9, &v11);
  }

  else
  {
    sub_10004E6E0(v9, &v11);
  }

  return (*(*a1 + 96))(a1, a4);
}

uint64_t *sub_1000F2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  while (!*(a1 + 16))
  {
LABEL_8:
    if (++v6 == 3)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_101A7D5D0();
      }

      v10 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:State is out of sync with registrations}", &v17, 0x12u);
        if (qword_1025D47B0 != -1)
        {
          sub_101A7D564();
        }
      }

      v11 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State is out of sync with registrations", "{msg%{public}.0s:State is out of sync with registrations}", &v17, 0x12u);
      }

      return sub_1001ED860(a1, a2);
    }
  }

  v7 = dword_101CFCB5C[v6];
  v8 = *(a1 + 16);
  while (1)
  {
    v9 = *(v8 + 7);
    if (v7 >= v9)
    {
      break;
    }

LABEL_7:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (v9 < v7)
  {
    ++v8;
    goto LABEL_7;
  }

  if (v7 | a2)
  {
LABEL_25:
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D564();
    }
  }

  else
  {
    if (*(a1 + 93) != 1 || *(a1 + 92) != 1)
    {
      v7 = 0;
      goto LABEL_25;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Local GPS is forbidden right now.  Downgrading to wifi accuracy}", &v17, 0x12u);
      v7 = 1;
      goto LABEL_25;
    }

    v7 = 1;
  }

  v14 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v15 = *(a3 + 17);
    v17 = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = a2;
    v23 = 2050;
    v24 = v7;
    v25 = 1026;
    v26 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Starting location for source, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld, notification:%{public, location:CLLocationProvider_Type::Notification}lld, include motion:%{public}d}", &v17, 0x2Cu);
  }

  for (i = 0; i != 12; i += 4)
  {
    result = (***(a1 + 32))(*(a1 + 32), a2);
  }

  return result;
}

uint64_t sub_1000F24B8(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v5 = *(a1 + 88);
      v6 = *(a2 + 88);
      v7 = v5 == -1.0 && v6 == -1.0;
      v8 = v7 || vabdd_f64(v5 + *(a1 + 76), *(a2 + 76) + v6) < 2.22044605e-16;
    }

    else
    {
      v8 = *(a1 + 76) == *(a2 + 76);
    }

    if (*(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20) || *(a1 + 28) != *(a2 + 28) || *(a1 + 36) != *(a2 + 36) || *(a1 + 44) != *(a2 + 44) || *(a1 + 60) != *(a2 + 60) || *(a1 + 96) != *(a2 + 96) || !v8)
    {
      return 0;
    }

    v11 = *(a1 + 124);
    v12 = *(a2 + 124);
    v7 = v11 == v12;
    v13 = v11 != v12;
    if (!v7 || *(a1 + 132) == *(a2 + 132))
    {
      return !v13;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 4);
      v16 = *(a1 + 12);
      v17 = *(a1 + 132);
      v18 = *(a2 + 4);
      v19 = *(a2 + 12);
      v20 = *(a2 + 132);
      *buf = 134546945;
      v23 = v15;
      v24 = 2053;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 2053;
      v29 = v18;
      v30 = 2053;
      v31 = v19;
      v32 = 1024;
      v33 = v20;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "CLCommonCompareLocationEqualityClient compared two coordinates that were identical other than their reference frames: (%{sensitive}lf, %{sensitive}lf, %d) (%{sensitive}lf, %{sensitive}lf, %d)", buf, 0x36u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018A38B0();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "Boolean CLCommonCompareLocationEqualityClientWithTimeCheck(const CLClientLocation *, const CLClientLocation *, BOOL)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (!*(a1 + 132))
    {
      return 1;
    }

    return *(a2 + 132) == 0;
  }

  else
  {
    return (a1 | a2) == 0;
  }
}

uint64_t *sub_1000F2824(uint64_t a1, int a2, unsigned int a3, int a4, _OWORD *a5)
{
  if (a2 == 1)
  {
    v7 = a5[1];
    *buf = *a5;
    *&buf[16] = v7;
    return sub_1000F1AF8(a1, a3, a4, buf, a1 + 208, a1 + 168);
  }

  else
  {
    if (a2)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_101A83044();
      }

      v8 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a2;
        *&buf[24] = 2082;
        *&buf[26] = "assert";
        v13 = 2081;
        v14 = "false";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D47B0 != -1)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        v9 = qword_1025D47B8;
        if (os_signpost_enabled(qword_1025D47B8))
        {
          *buf = 68289795;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a2;
          *&buf[24] = 2082;
          *&buf[26] = "assert";
          v13 = 2081;
          v14 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid location source", "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
          if (qword_1025D47B0 != -1)
          {
            sub_101A83058();
          }
        }

        v10 = qword_1025D47B8;
        if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289795;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a2;
          *&buf[24] = 2082;
          *&buf[26] = "assert";
          v13 = 2081;
          v14 = "false";
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        }

        abort_report_np();
LABEL_15:
        sub_101A83058();
      }
    }

    v5 = a5[1];
    *buf = *a5;
    *&buf[16] = v5;
    return sub_1000F1AF8(a1, a3, a4, buf, a1 + 200, a1 + 144);
  }
}

uint64_t sub_1000F2AD8(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  *(a3 + 16) = *(v8 + 2);
  *a3 = v9;
  return 1;
}

void *sub_1000F2B3C(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_100019438(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_100019438(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_1000F2BC4(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_1000F2EC4();
  }

  return result;
}

uint64_t sub_1000F2C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  if (![*(a1 + 136) isKeyPathRegisteredSystemService:v5])
  {
    return 1;
  }

  result = sub_10018E72C(a1, v5);
  if (result)
  {
    return *(a3 + 8) <= 3000.0;
  }

  return result;
}

uint64_t sub_1000F2CB4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {

    v2 = *(v1 + 1168);
    if (v2)
    {
      sub_100008080(v2);
    }

    if (*(v1 + 927) < 0)
    {
      operator delete(*(v1 + 904));
    }

    v3 = *(v1 + 816);
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = *(v1 + 688);
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete();
  }

  return result;
}

BOOL sub_1000F2D48(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB504();
    }
  }

  return v5 != 0;
}

void sub_1000F2F58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

size_t sub_1000F2F74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [objc_msgSend(*(a1 + 24) "clientAnchor")];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

uint64_t sub_1000F3088(uint64_t a1)
{
  [objc_msgSend(*(a1 + 176) objectForKey:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
  v3 = v2;
  [objc_msgSend(*(a1 + 176) objectForKey:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
  v5 = v4;
  v6 = [*(a1 + 16) inUseLevelIsAtLeast:3] ^ 1;
  v7 = [*(a1 + 16) isAuthorizedForServiceType:17];
  v8 = v7;
  if (v3 > 0.0 || (v9 = 0, v5 >= 1000.0) && v5 <= 6383135.0)
  {
    v9 = v6 & v7;
    if ((*(a1 + 58) & 1) == 0 && v9 && (sub_1000F42F8(a1) & 1) == 0)
    {
      *(a1 + 58) = 1;
      *(a1 + 64) = CFAbsoluteTimeGetCurrent();
      if (qword_1025D47A0 != -1)
      {
        sub_101B13524();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 24);
        v12 = *(a1 + 64);
        v18 = 68289538;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2114;
        v23 = v11;
        v24 = 2050;
        v25 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver LossTracking enabled, Client:%{public, location:escape_only}@, LossTrackingStartTime:%{public}f}", &v18, 0x26u);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      v18 = 68290562;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v14;
      v24 = 2050;
      v25 = v3;
      v26 = 2050;
      v27 = v5;
      v28 = 1026;
      v29 = v6;
      v30 = 1026;
      v31 = v8;
      v32 = 1026;
      v33 = v9;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver should release processAssertion, Client:%{public, location:escape_only}@, distanceFilter:%{public}f, desiredAccuracy:%{public}f, inUseLevelLessThanDecayingUserEng:%{public}hhd, suspendible:%{public}hhd, eligibleForReleasingProcessAssertion:%{public}hhd}", &v18, 0x42u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 24);
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ineligible for releasing process assertion - #cblsPowerSaver feature-flag not enabled, Client:%{public, location:escape_only}@}", &v18, 0x1Cu);
    }

    return 0;
  }

  return v9;
}

void sub_1000F33B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001A3E8();
  if (sub_10001CF3C() & 1) != 0 || (*(a1 + 1080))
  {
    return;
  }

  v6 = *(a1 + 1056);
  v7 = *(a1 + 1064);
  if (v6 == v7)
  {
LABEL_6:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v9 = "Unknown";
      if (a2 == 1)
      {
        v9 = "Bluetooth";
      }

      if (a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = "Wifi";
      }

      sub_10000EC00(&__p, v10);
      if (v37 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      *v29 = p_p;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "ImproveAccuracyNotification object not created for technology, %{public}s", buf, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192F088(a2);
    }

    return;
  }

  while (*v6 != a2)
  {
    v6 += 32;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  if (*(v6 + 16) < 0.0 || CFAbsoluteTimeGetCurrent() - *(v6 + 8) <= *(v6 + 16))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = "Unknown";
      if (a2 == 1)
      {
        v15 = "Bluetooth";
      }

      if (a2)
      {
        v16 = v15;
      }

      else
      {
        v16 = "Wifi";
      }

      sub_10000EC00(&__p, v16);
      if (v37 >= 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      *buf = 136315138;
      *v29 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "improve accuracy notification for %s is not eligible to post.", buf, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192EF5C(a2);
    }

    return;
  }

  if (*v6 != 1)
  {
    if (*v6 || *(a1 + 1081) != 1)
    {
      return;
    }

    if (sub_10027A2E8())
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289026;
        LOWORD(v37) = 2082;
        *(&v37 + 2) = "";
        v13 = "{msg%{public}.0s:WiFi is disabled, but the prompt will be suppressed because we're in demo mode}";
LABEL_70:
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, v13, &__p, 0x12u);
        return;
      }

      return;
    }

    if ((*(a1 + 1600) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289026;
        LOWORD(v37) = 2082;
        *(&v37 + 2) = "";
        v13 = "{msg%{public}.0s:WiFi is disabled, but the device has yet to be unlocked, so we will suppress the prompt for now}";
        goto LABEL_70;
      }

      return;
    }

LABEL_48:
    LODWORD(__p) = -1;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
    {
      v18 = (*(*a3 + 192))(a3);
      if (v18 == __p && !*(a1 + 272) && !*(v6 + 24))
      {
        v19 = sub_1000344B0(a3, 0);
        v20 = sub_10077E260(a1, v19, a2, v6);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v21 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_1000344B0(a3, 0);
          v23 = "Unknown";
          if (a2 == 1)
          {
            v23 = "Bluetooth";
          }

          if (a2)
          {
            v24 = v23;
          }

          else
          {
            v24 = "Wifi";
          }

          sub_10000EC00(v26, v24);
          if (v27 >= 0)
          {
            v25 = v26;
          }

          else
          {
            v25 = v26[0];
          }

          *buf = 68289794;
          *v29 = 0;
          *&v29[4] = 2082;
          *&v29[6] = "";
          v30 = 2114;
          v31 = v22;
          v32 = 2082;
          v33 = v25;
          v34 = 1026;
          v35 = v20;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt posted improve accuracy notification, client:%{public, location:escape_only}@, technology:%{public, location:escape_only}s, status:%{public}hhd}", buf, 0x2Cu);
          if (v27 < 0)
          {
            operator delete(v26[0]);
          }
        }
      }
    }

    sub_10027A45C(&__p);
    return;
  }

  if (*(a1 + 1082))
  {
    goto LABEL_48;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    __p = 68289026;
    LOWORD(v37) = 2082;
    *(&v37 + 2) = "";
    v13 = "{msg%{public}.0s:bluetooth not disabled, suppress improve accuracy notification}";
    goto LABEL_70;
  }
}

void sub_1000F395C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10027A45C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000F3990(uint64_t a1)
{
  v2 = [*(a1 + 16) inUseLevel];
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 44);
    v7[0] = 68289794;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2114;
    v11 = v4;
    v12 = 1026;
    v13 = v5;
    v14 = 1026;
    v15 = v2 < 5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:canBePaused(), Client:%{public, location:escape_only}@, pid:%{public}d, flag:%{public}hhd}", v7, 0x28u);
  }

  return v2 < 5;
}

id sub_1000F3AA8(uint64_t a1, int a2)
{
  v3 = sub_10004D8F4(a1);
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (a2)
  {

    return [v4 register:v5 forNotification:34 registrationInfo:0];
  }

  else
  {

    return [v4 unregister:v5 forNotification:34];
  }
}

id sub_1000F3B0C(uint64_t a1, int a2)
{
  v3 = sub_10004D8F4(a1);
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (a2)
  {

    return [v4 register:v5 forNotification:35 registrationInfo:0];
  }

  else
  {

    return [v4 unregister:v5 forNotification:35];
  }
}

__CFArray *sub_1000F3B98(double a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (a1 < 100.0)
  {
    valuePtr = 1;
    v3 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v3);
    CFRelease(v3);
    valuePtr = 10;
    v4 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v4);
  }

  if (a1 < 1000.0)
  {
    valuePtr = 4;
    v5 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v5);
    CFRelease(v5);
  }

  if (a1 < 6378135.0)
  {
    valuePtr = 6;
    v6 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

void sub_1000F3CBC(uint64_t a1, int a2, void *a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  v8 = *(a1 + 176);
  *(a1 + 176) = a3;
  v9 = a3;

  if ((sub_1000F3B70(a1) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000F3B70(a1);
  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  if (![*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDistanceFilterKey"])
  {
    v13 = -1.0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_17:
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v18 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 24);
      *buf = 68290050;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      LOWORD(v24[0]) = 2050;
      *(v24 + 2) = a1;
      HIWORD(v24[2]) = 2114;
      *&v24[3] = v19;
      v25 = 2050;
      v26 = v11;
      v27 = 2050;
      *v28 = v13;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationSubcription #pwrlog client unsubscribing, this:%{public}p, ClientKeyPath:%{public, location:escape_only}@, DesiredAccuracy:%{public}f, DistanceFilter:%{public}f}", buf, 0x3Au);
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B13474();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 24);
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@ClxClient, unsubscribe, %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1349C(buf);
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleRequestLocation(BOOL, NSDictionary *)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    [*(a1 + 576) invalidate];

    *(a1 + 576) = 0;
    *(a1 + 236) = 0;
    sub_100050114(a1);
  }

  [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
  v13 = v12;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_7:
  v14 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  v15 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageAlteredAccessoryLocationsKey", "BOOLValue"}];
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v16 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 24);
    *buf = 68290306;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    LOWORD(v24[0]) = 2114;
    *(v24 + 2) = v17;
    HIWORD(v24[2]) = 2050;
    *&v24[3] = v11;
    v25 = 2050;
    v26 = v13;
    v27 = 1026;
    *v28 = v14;
    *&v28[4] = 1026;
    *&v28[6] = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client subscribing to location, Client:%{public, location:escape_only}@, desiredAccuracy:%{public}f, distanceFilter:%{public}f, dynamicAccuracyReductionEnabled:%{public}d, allowsAlteredAccessoryLocations:%{public}d}", buf, 0x3Cu);
  }

  if (*(a1 + 224) != -1.0)
  {
    *(a1 + 224) = sub_1001CA9C4();
  }

  if (v7 != v14)
  {
    sub_100050790();
  }

  sub_10004B904(a1);
  sub_1000F3388(a1);
LABEL_27:
}

uint64_t sub_1000F42C0()
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  return byte_102659158;
}

id sub_1000F4320(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 57) != 1)
  {
    v6 = sub_10004D830(a1);
    [*(*v6 + 16) unregister:*(*v6 + 8) forNotification:a2];
    sub_10004D8F4(a1);
    sub_10002FA64();
  }

  v4 = sub_10004D8F4(a1);
  [*(*v4 + 16) unregister:*(*v4 + 8) forNotification:a2];
  v5 = *sub_10004D830(a1);
  v8 = *(v5 + 8);
  v7 = *(v5 + 16);

  return [v7 register:v8 forNotification:a2 registrationInfo:0];
}

uint64_t sub_1000F43D0(uint64_t a1, _OWORD *a2)
{
  sub_100021AFC(v11);
  v10 = 0;
  v4 = (*(*a1 + 128))(a1, &v10, v11);
  if (v4)
  {
    v5 = v11[7];
    a2[6] = v11[6];
    a2[7] = v5;
    a2[8] = v12[0];
    *(a2 + 140) = *(v12 + 12);
    v6 = v11[3];
    a2[2] = v11[2];
    a2[3] = v6;
    v7 = v11[5];
    a2[4] = v11[4];
    a2[5] = v7;
    v8 = v11[1];
    *a2 = v11[0];
    a2[1] = v8;
  }

  if (v17)
  {
    sub_100008080(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  return v4;
}

void sub_1000F44D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F44E4(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = (v5 + 48);
  result = 11;
  if (v7 != v8)
  {
    do
    {
      v9 = *(v7 + 15);
      if (v9 < result)
      {
        result = *(v7 + 15);
        if (!v9)
        {
          break;
        }
      }

      v10 = v7[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }

  return result;
}

void sub_1000F4590(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "attributions")])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus adding attribution; already exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = *(a1 + 32);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus adding attribution; already exists!", "{msg%{public}.0s:#SystemStatus adding attribution; already exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    v8 = *(a1 + 32);

    [a2 addAttribution:v8];
  }
}

BOOL sub_1000F4760()
{
  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  return (byte_102659198 & 1) == 0;
}

void sub_1000F47A0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10001A3E8();
  if (sub_1000F4760())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v7 = [+[NSUUID UUID](NSUUID UUIDString];
      *buf = 68289794;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a2;
      v17 = 2114;
      v18 = a3;
      v19 = 2082;
      v20 = [(NSString *)v7 UTF8String];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SystemStatus Publishing receiving location interval begin, Client:%{public, location:escape_only}@, AttributionIdentifier:%{public, location:escape_only}@, MessageUUID:%{public, location:escape_only}s}", buf, 0x30u);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 424);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F4590;
    v10[3] = &unk_10246FE80;
    v10[4] = a3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10077AC8C;
    v9[3] = &unk_102447418;
    v9[4] = v7;
    [v8 updateVolatileData:v10 completion:v9];
    if (_os_feature_enabled_impl())
    {
      sub_10077AD68(a1, *(a1 + 568), (a1 + 528), a2);
    }
  }
}

double sub_1000F49A8(int a1)
{
  result = 60.0;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (a1 == 1)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1000F49CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10004FD18(v30);
  if (sub_1000F5F94(v2))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 24);
      v5 = sub_1007F2CF8(v2);
      v6 = LocationLogEncryptionDataSize();
      v7 = LocationLogEncryptionEncryptData();
      v8 = *(v2 + 304);
      v9 = **(a1 + 1600);
      v10 = sub_100023764(a1 + 40);
      *buf = 68290819;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v4;
      *&buf[28] = 2050;
      *&buf[30] = v5;
      *&buf[38] = 1040;
      *&buf[40] = v6;
      *&buf[44] = 2098;
      *&buf[46] = v7;
      *&buf[54] = 2050;
      *&buf[56] = v8;
      *&buf[64] = 2050;
      *&buf[66] = v9;
      *&buf[74] = 2049;
      *&buf[76] = v10;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending location to client, Client:%{public, location:escape_only}@, DC:%{public}p, location:%{public, location:Encrypted_CLClientLocation}.*P, desiredAccuracy:%{public}f, notification:%{public, location:CLLocationProvider_Type::Notification}lld, hash:0x%{private}llx}", buf, 0x54u);
    }

    if ([objc_msgSend(*(v2 + 24) "clientAnchor")])
    {
      if (qword_1025D4660 != -1)
      {
        sub_101B14E64();
      }

      v11 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v12 = LocationLogEncryptionDataSize();
        v13 = LocationLogEncryptionEncryptData();
        v14 = LocationLogEncryptionDataSize();
        v15 = LocationLogEncryptionEncryptData();
        v16 = *(a1 + 68);
        v17 = *(a1 + 60);
        *buf = 68290563;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1040;
        *&buf[20] = v12;
        *&buf[24] = 2098;
        *&buf[26] = v13;
        *&buf[34] = 1040;
        *&buf[36] = v14;
        *&buf[40] = 2098;
        *&buf[42] = v15;
        *&buf[50] = 2049;
        *&buf[52] = v16;
        *&buf[60] = 2049;
        *&buf[62] = v17;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd #thumper Caching location , lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, alt:%{private}f, accuracy:%{private}f}", buf, 0x46u);
      }

      v18 = [objc_msgSend(*(v2 + 8) "vendor")];
      v19 = *(a1 + 152);
      v34 = *(a1 + 136);
      v35 = v19;
      v36[0] = *(a1 + 168);
      *(v36 + 12) = *(a1 + 180);
      v20 = *(a1 + 88);
      *&buf[32] = *(a1 + 72);
      *&buf[48] = v20;
      v21 = *(a1 + 120);
      *&buf[64] = *(a1 + 104);
      *&buf[80] = v21;
      v22 = *(a1 + 56);
      *buf = *(a1 + 40);
      *&buf[16] = v22;
      [v18 cacheEmergencyAWDStatistics:buf];
    }

    v23 = sub_10007005C(v30);
    if ([objc_msgSend(v23 "allKeys")])
    {
      v24 = [v23 valueForKey:@"CoarseMetaData"];
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v25 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v24 length];
        *buf = 134217984;
        *&buf[4] = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CoarseMetaData found in nvp. Encoded data size : %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B134E0(buf);
        v28 = [v24 length];
        v31 = 134217984;
        v32 = v28;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::deliverLocationToClient(const CLLocationProvider_Type::NotificationData &, const CLLocationProvider_Type::Notification &)_block_invoke", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    if (*(a1 + 136) == 12)
    {
      sub_10014F554();
    }

    sub_10010C984();
  }

  return sub_100005DA4(v30);
}

void sub_1000F4FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_1000F5010(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1000F5084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F5104(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B133A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationSubscription::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B133B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationSubscription::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000F52D0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1000F52D0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_10004FD18(v27);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v7 = *a3;
  v26 = v7;
  if (v7 <= 0x27)
  {
    if (((1 << v7) & 0x800040003FLL) != 0)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000F5EB8;
      v24[3] = &unk_1024CADA8;
      v24[4] = v25;
      v24[5] = a1;
      sub_1000F5960(a1, a4, v24);
      if (*(a1 + 312) == 1)
      {
        v8 = *(a4 + 808);
        if (v8)
        {
          for (i = 0; i < sub_10030D934(v8); ++i)
          {
            sub_10030E2C0(*(a4 + 808), i, buf);
            sub_10018E434(a1, buf);
            v8 = *(a4 + 808);
          }
        }

        else
        {
          sub_10018E434(a1, a4);
        }

        v31[0] = @"ClientKey";
        v11 = (a1 + 328);
        if (*(a1 + 351) < 0)
        {
          v11 = *v11;
        }

        v32[0] = [NSString stringWithUTF8String:v11];
        v31[1] = @"DeliveredLocationCount";
        v32[1] = [NSNumber numberWithInt:*(a1 + 436)];
        v31[2] = @"DesiredHAccuracy";
        v32[2] = [NSNumber numberWithDouble:*(a1 + 384)];
        v31[3] = @"ReportedHAccuracy";
        v32[3] = [NSNumber numberWithDouble:*(a4 + 20)];
        v31[4] = @"CorrectiveCompensation";
        v32[4] = [NSNumber numberWithBool:sub_100030B7C(a1, 12) ^ 1];
        [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
        AnalyticsSendEvent();
        Current = CFAbsoluteTimeGetCurrent();
        v13 = *(a4 + 76);
        if (vabdd_f64(Current, v13) < 3.0)
        {
          v14 = v13 - *(a1 + 320);
          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          if (*(a1 + 408) < 0.0)
          {
            *(a1 + 408) = v14;
          }

          if (*(a1 + 416) < 0.0 && *(a4 + 96) == 1)
          {
            *(a1 + 416) = v14;
          }

          v15 = *(a1 + 400);
          v16 = *(a4 + 20);
          if (v15 < 0.0 || v16 >= 0.0 && v16 < v15)
          {
            *(a1 + 400) = v16;
          }

          v17 = *(a4 + 44);
          if (*(a1 + 424) < v17)
          {
            *(a1 + 424) = v17;
          }
        }
      }
    }

    else
    {
      if (v7 == 9)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101B133E0();
        }

        v10 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "notifying clients of unavailable location", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B134E0(buf);
          LOWORD(v28) = 0;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        *buf = sub_10007005C(v27);
        sub_101085400();
      }

      if (((1 << v7) & 0xC10000000) != 0)
      {
        if (qword_1025D4790 != -1)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v20 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *a3;
            *buf = 67240192;
            *&buf[4] = v21;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Wiring bug: %{public}d should not notify", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B134E0(buf);
            v22 = *a3;
            v28 = 67240192;
            v29 = v22;
            v23 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          abort_report_np();
          __break(1u);
LABEL_41:
          sub_101B133E0();
        }
      }
    }
  }

  _Block_object_dispose(v25, 8);
  return sub_100005DA4(v27);
}

void sub_1000F5920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  sub_100005DA4(va1);
  _Unwind_Resume(a1);
}

void sub_1000F5960(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  if ([*(a1 + 16) isAuthorizedForServiceType:12] && (v6 & 1) != 0)
  {
    v7 = *(a1 + 528);
    v8 = *(a1 + 536);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v8);
    }

    sub_100022008(v28, a2);
    v9 = sub_1000E5608(a1);
    v10 = [CLLocation alloc];
    v11 = a2[7];
    v26[6] = a2[6];
    v26[7] = v11;
    v27[0] = a2[8];
    *(v27 + 12) = *(a2 + 140);
    v12 = a2[3];
    v26[2] = a2[2];
    v26[3] = v12;
    v13 = a2[5];
    v26[4] = a2[4];
    v26[5] = v13;
    v14 = a2[1];
    v26[0] = *a2;
    v26[1] = v14;
    v15 = [v10 initWithClientLocation:v26];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3321888768;
    v17[2] = sub_101084F30;
    v17[3] = &unk_1024CACE0;
    v17[5] = v7;
    v18 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100022008(&v19, v28);
    v17[4] = a3;
    [v9 reduceAccuracy:v15 withReply:v17];

    if (v24)
    {
      sub_100008080(v24);
    }

    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      sub_100008080(v21);
    }

    if (v20)
    {
      sub_100008080(v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v33)
    {
      sub_100008080(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30)
    {
      sub_100008080(v30);
    }

    if (v29)
    {
      sub_100008080(v29);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    v16 = *(a3 + 16);

    v16(a3, a2);
  }
}

void sub_1000F5BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_100311054(v16 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_100311054(&STACK[0x6F8]);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void sub_1000F5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100022008(v27, a2);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v16 = sub_1000F49CC;
  v17 = &unk_1024CAD10;
  v18 = a1;
  sub_100022008(&v19, v27);
  v26 = a3;
  v5 = *(a1 + 560);
  v6 = *(a1 + 568);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v6);
  }

  if ([*(a1 + 16) isNonProvisionallyAuthorizedForServiceType:5])
  {
    v16(v15);
  }

  else
  {
    v7 = [CLLocation alloc];
    v13[6] = v27[6];
    v13[7] = v27[7];
    v14[0] = v28[0];
    *(v14 + 12) = *(v28 + 12);
    v13[2] = v27[2];
    v13[3] = v27[3];
    v13[4] = v27[4];
    v13[5] = v27[5];
    v13[0] = v27[0];
    v13[1] = v27[1];
    v8 = [v7 initWithClientLocation:v13];
    v9 = sub_1000E5608(a1);
    v10 = [*(a1 + 24) legacyClientKey];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_101085244;
    v11[3] = &unk_1024CAD70;
    v11[5] = a1;
    v11[6] = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11[4] = v15;
    [v9 handleProvisionalIntermediationForService:5 forClientKey:v10 at:v8 withReply:v11];
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v24)
  {
    sub_100008080(v24);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v20)
  {
    sub_100008080(v20);
  }

  if (v33)
  {
    sub_100008080(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30)
  {
    sub_100008080(v30);
  }

  if (v29)
  {
    sub_100008080(v29);
  }
}

void sub_1000F5E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_100311054(v17 + 40);
  sub_100311054(&STACK[0x728]);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5ECC(_BYTE *a1, UInt8 *a2, uint64_t a3)
{
  v7[0] = sub_1000F5F10(a1);
  v7[1] = v5;
  return sub_100046340(a2, a3, v7);
}

unint64_t sub_1000F5F10(_BYTE *a1)
{
  v2 = sub_100049A40(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000F5FBC(v2);
    v5 = *(v3 + 194) << 8;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (a1[277] & 1) != 0 || (a1[278] & 1) != 0 || (a1[279])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = a1[280] << 16;
  }

  return (v7 | v5) & 0x1FF00 | v6;
}

id sub_1000F5FBC(uint64_t a1)
{
  v1 = [*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageAlteredAccessoryLocationsKey"];

  return [v1 BOOLValue];
}

uint64_t sub_1000F5FF0(uint64_t a1, char *a2)
{
  v4 = _os_feature_enabled_impl();
  v5 = sub_10001A3E8();
  if (v4)
  {
    result = (**v5)(v5);
    if (!result)
    {
      return result;
    }
  }

  else if ((sub_10001CF3C() & 1) == 0)
  {
    v7 = sub_10001A3E8();
    result = (**v7)(v7);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = sub_1000F610C(a1, a2);
  if (result)
  {
    result = sub_100792C78(a1, a2);
    if (result)
    {
      v8 = result;
      v9 = *(a1 + 1552);
      if (a2[23] >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      v11 = [NSString stringWithUTF8String:v10];

      return [v9 client:v11 didChangeUsageData:v8];
    }
  }

  return result;
}

BOOL sub_1000F610C(uint64_t a1, char *a2)
{
  if (!_os_feature_enabled_impl())
  {
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7))}];
    return [v8 isValidCKP] && (objc_msgSend(*(a1 + 136), "isKeyPathRegisteredSystemService:", v8) & 1) != 0 || sub_10001A2EC((a1 + 1512), a2) != 0;
  }

  if (a1 + 624 == sub_10045EF04(a1 + 616, a2))
  {
    v4 = sub_1005D7C24((a1 + 640), a2) != 0;
  }

  else
  {
    *buf = a2;
    v4 = *(*(sub_1007AE4E4(a1 + 616, a2) + 56) + 72);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    if (a2[23] >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v6;
    v17 = 1026;
    v18 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync fTemporaryInUseAssertions, client:%{public, location:escape_only}s, shouldSync:%{public}hhd}", buf, 0x22u);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

LABEL_20:
  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    if (a2[23] >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v10;
    v17 = 1026;
    v18 = v4;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync shouldSyncUsageForClient, client:%{public, location:escape_only}s, shouldSync:%{public}hhd}", buf, 0x22u);
  }

  return v4;
}

BOOL sub_1000F6390(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v7 = sub_1000184F4(a1, a2);
  if (([*(a1 + 136) BOOLForKey:@"isSystemService" atKeyPath:v7 defaultValue:0] & 1) == 0)
  {
    if (a3 && sub_1000199AC(*(a1 + 400), v7) <= 1)
    {
      sub_10077AD68(a1, *(a1 + 504), (a1 + 464), v7);
    }

    else
    {
      sub_1000ED87C(a1, *(a1 + 504), (a1 + 464), v7);
    }
  }

  v8 = [*(a1 + 416) objectForKeyedSubscript:v7];
  if (qword_102659F70 != -1)
  {
    sub_10192DA90();
  }

  v9 = qword_102659F68;
  if (os_log_type_enabled(qword_102659F68, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v24 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Delivered location information to '%@'", buf, 0xCu);
  }

  v10 = v8;
  if (!v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(a1, v7, 0xAuLL, 1, 0, 0, Current);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2114;
      v26 = v7;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:started receiving location information, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100125B78;
    v22[3] = &unk_102449BC0;
    v22[4] = v7;
    v22[5] = a1;
    dispatch_source_set_event_handler(v10, v22);
    [*(a1 + 416) setObject:v10 forKeyedSubscript:v7];
  }

  v13 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  if (!v8)
  {
    dispatch_resume(v10);
    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_18:
    sub_1000F6978(a1, v7, -1, 0, 0.0);
  }

LABEL_19:
  if (([*(a1 + 136) isKeyPathRegisteredSystemService:v7] & 1) != 0 || !-[PAAccessLogger loggingEnabled](+[PAAccessLogger sharedInstance](PAAccessLogger, "sharedInstance"), "loggingEnabled") || objc_msgSend(*(a1 + 456), "objectForKeyedSubscript:", v7))
  {
    return v8 == 0;
  }

  v14 = [v7 bundleId];
  v15 = [v7 bundlePath];
  if (v14)
  {
    v16 = [PAApplication applicationWithBundleID:v14];
    goto LABEL_24;
  }

  v18 = v15;
  if (v15)
  {
    [NSBundle bundleWithPath:v15];
    v19 = PAImplicitClientIdentityForBundle();
    if (v19)
    {
      v16 = [[PAApplication alloc] initWithTCCIdentity:v19];
    }

    else
    {
      v16 = [PAApplication applicationWithPath:v18];
    }

LABEL_24:
    if (v16)
    {
      [*(a1 + 456) setObject:-[PAAccessLogger beginIntervalForAccess:](+[PAAccessLogger sharedInstance](PAAccessLogger forKeyedSubscript:{"sharedInstance"), "beginIntervalForAccess:", objc_msgSend([PALocationAccess alloc], "initWithAccessor:", v16)), v7}];
    }

    return v8 == 0;
  }

  if (qword_1025D4790 != -1)
  {
    sub_10192DAA4();
  }

  v20 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *v24 = 0;
    *&v24[4] = 2082;
    *&v24[6] = "";
    v25 = 2114;
    v26 = v7;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Don't know how to convert name to PAApplication, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }
  }

  v21 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    *buf = 68289282;
    *v24 = 0;
    *&v24[4] = 2082;
    *&v24[6] = "";
    v25 = 2114;
    v26 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Don't know how to convert name to PAApplication", "{msg%{public}.0s:Don't know how to convert name to PAApplication, client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  return v8 == 0;
}

void sub_1000F6870(uint64_t *a1, uint64_t a2, double a3)
{
  if ((a2 & 0x14) == 0)
  {
    return;
  }

  v4 = a2;
  v6 = a1[8];
  v7 = v6 & a2;
  if ((v6 & a2) != 0)
  {
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    a1[8] = v6 | a2;
    if ((a2 & 0x10) == 0)
    {
LABEL_4:
      if ((a2 & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v8 = a1[2];
  if ([a1[6] isAuthLimited])
  {
    v9 = sub_1001D2EC4(a1[2], a1[6]);
  }

  else
  {
    v9 = a1[6];
  }

  sub_1000F6978(v8, v9, 4, v7 == 0, a3);
  if ((v4 & 4) != 0)
  {
LABEL_11:
    v10 = a1[2];
    if ([a1[6] isAuthLimited])
    {
      v11 = sub_1001D2EC4(a1[2], a1[6]);
    }

    else
    {
      v11 = a1[6];
    }

    sub_1000F6978(v10, v11, 2, v7 == 0, a3);
  }
}

void sub_1000F6978(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  sub_10001A3E8();
  if (!sub_1000F4760())
  {
    return;
  }

  v10 = sub_1000184F4(a1, a2);
  v11 = [v10 clientAnchor];
  if (!v11)
  {
    goto LABEL_5;
  }

  sub_10000EC00(buf, [v11 UTF8String]);
  v12 = sub_1005D7C24(qword_102659E68, buf);
  v13 = v12;
  if ((v43[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
LABEL_5:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2114;
      *v43 = v10;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting attribution for attribution-unavailable client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v15 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2114;
      *v43 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatusAttribution attempting attribution for attribution-unavailable client", "{msg%{public}.0s:#SystemStatusAttribution attempting attribution for attribution-unavailable client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return;
  }

  v16 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v10), "dictionary"}];
  v17 = sub_1000F70DC(v10, v16);
  if (!v17)
  {
    return;
  }

  if (v17 == 2)
  {
    v18 = qword_102659F08;
    if (*(a1 + 448) == 1)
    {
      v19 = 0;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2114;
        *v43 = v18;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution attribution to System Service; defaulting to Traffic for record keeping, SystemService:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
    v18 = v10;
  }

  v21 = [*(a1 + 440) objectForKey:v18];
  if (v21)
  {
    goto LABEL_25;
  }

  v23 = sub_1000EDD7C(0, v18, v16);
  v24 = [*(a1 + 40) newTimer];
  if (!v23)
  {
    return;
  }

  v21 = [[CLAttributionRecord alloc] initWithAttributionId:v23 andTimer:v24];
  [*(a1 + 440) setObject:v21 forKey:v18];
  v25 = *(a1 + 440);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100125CD4;
  v37[3] = &unk_10246FE58;
  v37[7] = v25;
  v37[8] = a1;
  v38 = v19;
  v37[4] = v18;
  v37[5] = v21;
  v37[6] = v10;
  [(CLTimer *)[(CLAttributionRecord *)v21 attributionTimer] setHandler:v37];
  if (v19)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v26 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2114;
      *v43 = v18;
      *&v43[8] = 2114;
      *&v43[10] = v21;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution Created new AttributionRecord for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", buf, 0x26u);
    }

LABEL_25:
    if (a3 != -1 && (a4 & 1) != 0)
    {
      [(CLAttributionRecord *)v21 incrementAttributionCountForServiceType:a3];
      if (v19)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v22 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289794;
          *&buf[4] = 0;
          v40 = 2082;
          v41 = "";
          v42 = 1026;
          *v43 = a3;
          *&v43[4] = 2114;
          *&v43[6] = v18;
          *&v43[14] = 2114;
          *&v43[16] = v21;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution #AttributionRecord servicetype count incremented, ServiceType:%{public}d, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", buf, 0x2Cu);
        }
      }
    }

    goto LABEL_41;
  }

  if (a3 != -1 && a4)
  {
    [(CLAttributionRecord *)v21 incrementAttributionCountForServiceType:a3];
  }

LABEL_41:
  v27 = 10.0;
  if (a5 > 0.0)
  {
    v28 = a5 > 60.0 ? v19 : 0;
    v27 = a5 <= 60.0 ? a5 : 60.0;
    if (v28 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2114;
        *v43 = v18;
        *&v43[8] = 2050;
        *&v43[10] = a5;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribtuion attributionDuration longer than 1m. Shortening attribution duration to 1m, client:%{public, location:escape_only}@, attributionDuration:%{public}f}", buf, 0x26u);
      }

      v27 = 60.0;
    }
  }

  [(CLTimer *)[(CLAttributionRecord *)v21 attributionTimer] nextFireDelay];
  if (v30 == 1.79769313e308)
  {
    sub_1000F47A0(a1, v10, [(CLAttributionRecord *)v21 attributionIdentifier]);
    [(CLTimer *)[(CLAttributionRecord *)v21 attributionTimer] setNextFireDelay:v27];
    if (v19)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2114;
        *v43 = v18;
        *&v43[8] = 2114;
        *&v43[10] = v21;
        v33 = "{msg%{public}.0s:#SystemStatusAttribution Started attribution timer for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}";
        v34 = v36;
        v35 = 38;
        goto LABEL_67;
      }
    }
  }

  else
  {
    [(CLTimer *)[(CLAttributionRecord *)v21 attributionTimer] nextFireDelay];
    if (v27 > v31)
    {
      [(CLTimer *)[(CLAttributionRecord *)v21 attributionTimer] setNextFireDelay:v27];
    }

    if (v19)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v32 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2114;
        *v43 = v18;
        *&v43[8] = 2114;
        *&v43[10] = v21;
        *&v43[18] = 2050;
        *&v43[20] = v27;
        v33 = "{msg%{public}.0s:#SystemStatusAttribution Extended attribution timer for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@, Duration:%{public}f}";
        v34 = v32;
        v35 = 48;
LABEL_67:
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);
      }
    }
  }
}

uint64_t sub_1000F70DC(void *a1, void *a2)
{
  v3 = sub_1000401B4(a2);
  result = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if ((v3 - 1) >= 2)
      {
        if (!v3)
        {
          if ([a1 isEqual:qword_102659F08])
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }

        return result;
      }

      return 1;
    }

    if (v3 != 3)
    {
      return 6;
    }

    return 2;
  }

  if (v3 <= 6)
  {
    if (v3 != 5)
    {
      return 1;
    }

    return 2;
  }

  if (v3 == 7)
  {
    return 10;
  }

  if (v3 == 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus failed to determine eligibleModes, Client:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a1;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus failed to determine eligibleModes", "{msg%{public}.0s:#SystemStatus failed to determine eligibleModes, Client:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    return 0;
  }

  return result;
}

void sub_1000F72F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v6, v7);
  v9 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"kCLConnectionMessageSubscribeKey", "BOOLValue"}];
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = (a2 + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  v10(v12, v9, DictionaryOfClasses);
  if (v5)
  {

    sub_100008080(v5);
  }
}

void sub_1000F73E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F73FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 9);
  do
  {
    result = 2 * (result + v1);
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1000F742C(const char *a1)
{
  result = strcmp(a1, "kCLConnectionMessageCollectMetricsForFunction");
  if (result)
  {
    result = strcmp(a1, "kCLConnectionMessageGesture");
    if (result)
    {
      result = strcmp(a1, "kCLConnectionMessageGyroBiasEstimation");
      if (result)
      {
        result = strcmp(a1, "kCLConnectionMessageMotionActivityUpdate");
        if (result)
        {
          result = strcmp(a1, "kCLConnectionMessageMotionActivityPeriodicUpdate");
          if (result)
          {
            result = strcmp(a1, "kCLConnectionMessageMotionActivityQuery");
            if (result)
            {
              result = strcmp(a1, "kCLConnectionMessageMotionActivityAvailable");
              if (result)
              {
                result = strcmp(a1, "kCLConnectionMessageActivityAlarmStart");
                if (result)
                {
                  result = strcmp(a1, "kCLConnectionMessageActivityAlarmAvailable");
                  if (result)
                  {
                    result = strcmp(a1, "kCLConnectionMessageStepCountUpdate");
                    if (result)
                    {
                      result = strcmp(a1, "kCLConnectionMessagePedometerEvent");
                      if (result)
                      {
                        result = strcmp(a1, "kCLConnectionMessageStartStepCountAvailable");
                        if (result)
                        {
                          result = strcmp(a1, "kCLConnectionMessageStepCountQuery");
                          if (result)
                          {
                            result = strcmp(a1, "kCLConnectionMessageStepCountRecordQuery");
                            if (result)
                            {
                              result = strcmp(a1, "kCLConnectionMessageFloorCountAvailable");
                              if (result)
                              {
                                result = strcmp(a1, "kCLConnectionMessagePaceAndCadenceAPIAvailable");
                                if (result)
                                {
                                  result = strcmp(a1, "InUseAssertion/kCLConnectionMessage");
                                  if (result)
                                  {
                                    result = strcmp(a1, "EmergencyEnablementAssertion/kCLConnectionMessage");
                                    if (result)
                                    {
                                      result = strcmp(a1, "LocationIndependenceAssertion/kCLConnectionMessage");
                                      if (result)
                                      {
                                        result = strcmp(a1, "AccuracyEnablementAssertion/kCLConnectionMessage");
                                        if (result)
                                        {
                                          result = strcmp(a1, "kCLConnectionMessageStepCountReset");
                                          if (result)
                                          {
                                            result = strcmp(a1, "kCLConnectionMessageOdometerGpsAvailability");
                                            if (result)
                                            {
                                              result = strcmp(a1, "kCLConnectionMessageStartOdometerUpdate");
                                              if (result)
                                              {
                                                result = strcmp(a1, "kCLConnectionMessageCyclingWorkoutDistanceUpdate");
                                                if (result)
                                                {
                                                  result = strcmp(a1, "kCLConnectionMessageOdometerSuitabilityUpdate");
                                                  if (result)
                                                  {
                                                    result = strcmp(a1, "kCLConnectionMessageSedentaryTimerIsAvailable");
                                                    if (result)
                                                    {
                                                      result = strcmp(a1, "kCLConnectionMessageSedentaryTimerIsArmed");
                                                      if (result)
                                                      {
                                                        result = strcmp(a1, "kCLConnectionMessageSedentaryTimerStart");
                                                        if (result)
                                                        {
                                                          result = strcmp(a1, "kCLConnectionMessageSedentaryTimerStop");
                                                          if (result)
                                                          {
                                                            result = strcmp(a1, "kCLConnectionMessageSedentaryTimerQuery");
                                                            if (result)
                                                            {
                                                              result = strcmp(a1, "kCLConnectionMessageSedentaryTimerAlarm");
                                                              if (result)
                                                              {
                                                                result = strcmp(a1, "kCLConnectionMessageOnBodyDetection");
                                                                if (result)
                                                                {
                                                                  result = strcmp(a1, "kCLConnectionMessageOnBodyDetectionParams");
                                                                  if (result)
                                                                  {
                                                                    result = strcmp(a1, "kCLConnectionMessageSidebandSensorFusionEnable");
                                                                    if (result)
                                                                    {
                                                                      result = strcmp(a1, "kCLConnectionMessageNatalimetryUpdate");
                                                                      if (result)
                                                                      {
                                                                        result = strcmp(a1, "kCLConnectionMessageNatalimetryAvailable");
                                                                        if (result)
                                                                        {
                                                                          result = strcmp(a1, "kCLConnectionMessageNatalimetryQuery");
                                                                          if (result)
                                                                          {
                                                                            result = strcmp(a1, "Health/kCLConnectionMessageMetMinutesQuery");
                                                                            if (result)
                                                                            {
                                                                              result = strcmp(a1, "Health/kCLConnectionMessageVO2MaxInputsQuery");
                                                                              if (result)
                                                                              {
                                                                                result = strcmp(a1, "kCLConnectionMessageNatalimetryGetUserProfile");
                                                                                if (result)
                                                                                {
                                                                                  result = strcmp(a1, "kCLConnectionMessageNatalimetrySetUserProfile");
                                                                                  if (result)
                                                                                  {
                                                                                    result = strcmp(a1, "kCLConnectionMessageExerciseMinuteQuery");
                                                                                    if (result)
                                                                                    {
                                                                                      result = strcmp(a1, "kCLConnectionMessageExerciseMinuteUpdate");
                                                                                      if (result)
                                                                                      {
                                                                                        result = strcmp(a1, "kCLConnectionMessageWorkoutEvent");
                                                                                        if (result)
                                                                                        {
                                                                                          result = strcmp(a1, "kCLConnectionMessageBeginWorkoutSession");
                                                                                          if (result)
                                                                                          {
                                                                                            result = strcmp(a1, "kCLConnectionMessageEndWorkoutSession");
                                                                                            if (result)
                                                                                            {
                                                                                              result = strcmp(a1, "kCLConnectionMessageSetCurrentWorkoutType");
                                                                                              if (result)
                                                                                              {
                                                                                                result = strcmp(a1, "kCLConnectionMessagePauseWorkout");
                                                                                                if (result)
                                                                                                {
                                                                                                  result = strcmp(a1, "kCLConnectionMessageResumeWorkout");
                                                                                                  if (result)
                                                                                                  {
                                                                                                    result = strcmp(a1, "kCLConnectionMessageVehicleStateIsAvailable");
                                                                                                    if (result)
                                                                                                    {
                                                                                                      result = strcmp(a1, "kCLConnectionMessageFallStatsAvailable");
                                                                                                      if (result)
                                                                                                      {
                                                                                                        result = strcmp(a1, "kCLConnectionMessageFallStatsSetEnabled");
                                                                                                        if (result)
                                                                                                        {
                                                                                                          result = strcmp(a1, "kCLConnectionMessageFallStatsSendStats");
                                                                                                          if (result)
                                                                                                          {
                                                                                                            result = strcmp(a1, "kCLConnectionMessageFallStatsGetConfig");
                                                                                                            if (result)
                                                                                                            {
                                                                                                              result = strcmp(a1, "kCLConnectionMessageAnomalyEvent");
                                                                                                              if (result)
                                                                                                              {
                                                                                                                result = strcmp(a1, "kCLConnectionMessageAnomalyEventCompleted");
                                                                                                                if (result)
                                                                                                                {
                                                                                                                  result = strcmp(a1, "kCLConnectionMessageAnomalyEventCompletedMostRecent");
                                                                                                                  if (result)
                                                                                                                  {
                                                                                                                    result = strcmp(a1, "kCLConnectionMessageAnomalyEventEnabled");
                                                                                                                    if (result)
                                                                                                                    {
                                                                                                                      result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerIsTracking");
                                                                                                                      if (result)
                                                                                                                      {
                                                                                                                        result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerStart");
                                                                                                                        if (result)
                                                                                                                        {
                                                                                                                          result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerStop");
                                                                                                                          if (result)
                                                                                                                          {
                                                                                                                            result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerQuery");
                                                                                                                            if (result)
                                                                                                                            {
                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMiLoServiceEvent");
                                                                                                                              if (result)
                                                                                                                              {
                                                                                                                                result = strcmp(a1, "kCLConnectionMessageMiLoCreateService");
                                                                                                                                if (result)
                                                                                                                                {
                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageMiLoDeleteService");
                                                                                                                                  if (result)
                                                                                                                                  {
                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageMiLoQueryMyServices");
                                                                                                                                    if (result)
                                                                                                                                    {
                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageMiLoQueryConnectionStatus");
                                                                                                                                      if (result)
                                                                                                                                      {
                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageMiLoConnectToService");
                                                                                                                                        if (result)
                                                                                                                                        {
                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageMiLoPredictionEventUpdate");
                                                                                                                                          if (result)
                                                                                                                                          {
                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageMiLoServiceDebugResponse");
                                                                                                                                            if (result)
                                                                                                                                            {
                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMiLoConnectionStatusEvent");
                                                                                                                                              if (result)
                                                                                                                                              {
                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageMiLoGenericEventResponse");
                                                                                                                                                if (result)
                                                                                                                                                {
                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation");
                                                                                                                                                  if (result)
                                                                                                                                                  {
                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageRemoveCustomLOI");
                                                                                                                                                    if (result)
                                                                                                                                                    {
                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageAbsoluteAltitudeUpdate");
                                                                                                                                                      if (result)
                                                                                                                                                      {
                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageKappaStatsAvailable");
                                                                                                                                                        if (result)
                                                                                                                                                        {
                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageKappaSendAPCommand");
                                                                                                                                                          if (result)
                                                                                                                                                          {
                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageKappaGetStateRequest");
                                                                                                                                                            if (result)
                                                                                                                                                            {
                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageKappaGetState");
                                                                                                                                                              if (result)
                                                                                                                                                              {
                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageIndoorOutdoorUpdate");
                                                                                                                                                                if (result)
                                                                                                                                                                {
                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageIndoorOutdoorLastKnownState");
                                                                                                                                                                  if (result)
                                                                                                                                                                  {
                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferAssert");
                                                                                                                                                                    if (result)
                                                                                                                                                                    {
                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferAssertError");
                                                                                                                                                                      if (result)
                                                                                                                                                                      {
                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferMeasurement");
                                                                                                                                                                        if (result)
                                                                                                                                                                        {
                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageGNSSHeatMap");
                                                                                                                                                                          if (result)
                                                                                                                                                                          {
                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageGnssDisablementAssertReq");
                                                                                                                                                                            if (result)
                                                                                                                                                                            {
                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageGnssDisablementAssertRsp");
                                                                                                                                                                              if (result)
                                                                                                                                                                              {
                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageVO2MaxRetrocomputeStatusQuery");
                                                                                                                                                                                if (result)
                                                                                                                                                                                {
                                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageEclipseServiceRequest");
                                                                                                                                                                                  if (result)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageEclipseViewObstructedStateRequest");
                                                                                                                                                                                    if (result)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageProxPDPUpdate");
                                                                                                                                                                                      if (result)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageALSPhoneUpdate");
                                                                                                                                                                                        if (result)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageWriteContextConfiguration");
                                                                                                                                                                                          if (result)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageMagicMountServiceRequest");
                                                                                                                                                                                            if (result)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMagicMountAPWakesAllowed");
                                                                                                                                                                                              if (result)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageFlickGestureServiceRequest");
                                                                                                                                                                                                if (result)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageGnssExtensionsClient");
                                                                                                                                                                                                  if (result)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageGnssExtensionsClientError");
                                                                                                                                                                                                    if (result)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageGnssExtensionsData");
                                                                                                                                                                                                      if (result)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageBatchedAccelerometer");
                                                                                                                                                                                                        if (result)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageBatchedDeviceMotion");
                                                                                                                                                                                                          if (result)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageBatchedSensorAvailabilityUpdate");
                                                                                                                                                                                                            if (result)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageBatchedSensorError");
                                                                                                                                                                                                              if (result)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageCLGNSSStateQueryAssertionResponse");
                                                                                                                                                                                                                if (result)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  return strcmp(a1, "kCLConnectionMessageBBGnssStatusQuery") != 0;
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
        }
      }
    }
  }

  return result;
}

void sub_1000F7C80(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = 0;
  }

  v6 = v4;
  v8 = a3;
  v9 = a4;
  sub_100048DBC(a1, &v6);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1000F7CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F7D18(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if ([a2 website])
  {
    v4 = [v4 anchorKeyPath];
  }

  v6 = [*(a1 + 136) BOOLForKey:@"SuppressShowingInSettings" atKeyPath:v4 defaultValue:0];
  [*(a1 + 136) removeValueForKey:@"SuppressShowingInSettings" atKeyPath:v4];
  [*(a1 + 136) setBool:1 forKey:@"Registered" atKeyPath:v4];
  if (v6)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v4;
      v17 = 1026;
      v18 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client will now show up in settings, Client:%{public, location:escape_only}@, shouldSync:%{public}hhd}", buf, 0x22u);
    }

    if (a3)
    {
      v8 = sub_10001A3E8();
      if (((**v8)(v8) & 1) != 0 || (sub_10001A3E8(), sub_10001CF3C()))
      {
        sub_10000EC00(__p, "ShowingClientInSettings");
        sub_10077A934(a1, v4, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1000F7EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F8078(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    *(a1 + 192) = *(a2 + 192);
    v10 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v10;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    v11 = *(a2 + 224);
    v12 = *(a2 + 240);
    v13 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v12;
    *(a1 + 256) = v13;
    *(a1 + 224) = v11;
    *(a1 + 280) = 1;
  }

  *(a1 + 288) = *(a2 + 288);
  v14 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v14;
  *(a2 + 296) = 0u;
  v15 = *(a2 + 392);
  v17 = *(a2 + 344);
  v16 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v15;
  *(a1 + 344) = v17;
  *(a1 + 360) = v16;
  v19 = *(a2 + 424);
  v18 = *(a2 + 440);
  v20 = *(a2 + 408);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v19;
  *(a1 + 440) = v18;
  *(a1 + 408) = v20;
  v21 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v21;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0u;
  v22 = *(a2 + 1040);
  v23 = *(a2 + 1024);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v23;
  *(a1 + 1040) = v22;
  v24 = *(a2 + 1056);
  v25 = *(a2 + 1097);
  v26 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1072) = v26;
  *(a1 + 1097) = v25;
  *(a1 + 1056) = v24;
  v27 = *(a2 + 1136);
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = v27;
  v28 = *(a2 + 1232);
  v29 = *(a2 + 1248);
  v30 = *(a2 + 1216);
  *(a1 + 1260) = *(a2 + 1260);
  *(a1 + 1216) = v30;
  *(a1 + 1248) = v29;
  *(a1 + 1232) = v28;
  v31 = *(a2 + 1168);
  v32 = *(a2 + 1184);
  v33 = *(a2 + 1152);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1152) = v33;
  *(a1 + 1184) = v32;
  *(a1 + 1168) = v31;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  *(a1 + 1800) = *(a2 + 1800);
  *(a1 + 1808) = *(a2 + 1808);
  *(a2 + 1800) = 0u;
  v35 = *(a2 + 1880);
  v34 = *(a2 + 1896);
  v36 = *(a2 + 1864);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v35;
  *(a1 + 1896) = v34;
  *(a1 + 1864) = v36;
  v38 = *(a2 + 1832);
  v37 = *(a2 + 1848);
  *(a1 + 1816) = *(a2 + 1816);
  *(a1 + 1832) = v38;
  *(a1 + 1848) = v37;
  *(a1 + 1928) = *(a2 + 1928);
  *(a1 + 1936) = *(a2 + 1936);
  *(a2 + 1928) = 0u;
  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  *(a1 + 2832) = *(a2 + 2832);
  *(a2 + 2832) = 0u;
  v39 = *(a2 + 2880);
  v40 = *(a2 + 2864);
  *(a1 + 2848) = *(a2 + 2848);
  *(a1 + 2864) = v40;
  *(a1 + 2880) = v39;
  v41 = *(a2 + 2896);
  v42 = *(a2 + 2937);
  v43 = *(a2 + 2928);
  *(a1 + 2912) = *(a2 + 2912);
  *(a1 + 2928) = v43;
  *(a1 + 2937) = v42;
  *(a1 + 2896) = v41;
  v44 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v44;
  LOBYTE(v44) = *(a2 + 2984);
  *(a1 + 2976) = *(a2 + 2976);
  *(a1 + 2984) = v44;
  v45 = *(a2 + 3008);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 3008) = v45;
  *(a2 + 3008) = 0;
  *(a2 + 2992) = 0u;
  *(a1 + 3016) = *(a2 + 3016);
  v46 = *(a2 + 3032);
  v47 = *(a2 + 3048);
  v48 = *(a2 + 3064);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v47;
  *(a1 + 3064) = v48;
  *(a1 + 3032) = v46;
  v49 = *(a2 + 3112);
  *(a1 + 3096) = *(a2 + 3096);
  *(a1 + 3112) = v49;
  *(a2 + 3112) = 0;
  *(a2 + 3096) = 0u;
  v50 = *(a2 + 3152);
  v51 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v51;
  *(a1 + 3152) = v50;
  v52 = *(a2 + 3184);
  v53 = *(a2 + 3200);
  v54 = *(a2 + 3216);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3216) = v54;
  *(a1 + 3200) = v53;
  *(a1 + 3184) = v52;
  v55 = *(a2 + 3232);
  v56 = *(a2 + 3248);
  v57 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v57;
  *(a1 + 3248) = v56;
  *(a1 + 3232) = v55;
  *(a1 + 3288) = *(a2 + 3288);
  *(a1 + 3296) = *(a2 + 3296);
  *(a2 + 3288) = 0u;
  v58 = *(a2 + 3304);
  v59 = *(a2 + 3320);
  v60 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v59;
  *(a1 + 3336) = v60;
  *(a1 + 3304) = v58;
  *(a1 + 3360) = *(a2 + 3360);
  *(a2 + 3360) = 0u;
  v61 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v61;
  return a1;
}

uint64_t sub_1000F8468(uint64_t a1)
{
  v2 = a1 + 64;
  v1 = *(a1 + 64);
  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = a1 + 64;
  do
  {
    v4 = *(v1 + 32);
    if ((v4 & 0x80000000) == 0)
    {
      v3 = v1;
    }

    v1 = *(v1 + ((v4 >> 28) & 8));
  }

  while (v1);
  if (v3 == v2 || *(v3 + 32) >= 1)
  {
LABEL_8:
    v3 = a1 + 64;
  }

  v12 = 0;
  result = sub_10000608C(a1, &v12, 1);
  if (result)
  {
    if (v3 != v2)
    {
      v6 = *(v3 + 40);
      if (v6 != (v3 + 48))
      {
        v7 = 10000.0;
        do
        {
          v8 = v6[5];
          if (v7 >= v8)
          {
            v7 = v6[5];
          }

          v9 = *(v6 + 1);
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = *(v6 + 2);
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != (v3 + 48));
      }
    }
  }

  return result;
}

uint64_t sub_1000F8550()
{
  sub_10001A3E8();

  return sub_10001CF3C();
}

uint64_t sub_1000F85B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v10 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v11 = *(a1 + 152);
  *(a1 + 144) = v10;
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v13 = *(a1 + 168);
  *(a1 + 160) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v15 = *(a1 + 184);
  *(a1 + 176) = v14;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_1000F8A78(a1 + 192, a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v16 = *(a2 + 296);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v17 = *(a1 + 304);
  *(a1 + 296) = v16;
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v18;
  v19 = *(a2 + 344);
  v20 = *(a2 + 360);
  v21 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v21;
  *(a1 + 344) = v19;
  *(a1 + 360) = v20;
  v22 = *(a2 + 408);
  v23 = *(a2 + 424);
  v24 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v23;
  *(a1 + 440) = v24;
  *(a1 + 408) = v22;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  v25 = *(a2 + 992);
  *(a2 + 992) = 0u;
  v26 = *(a1 + 1000);
  *(a1 + 992) = v25;
  if (v26)
  {
    sub_100008080(v26);
  }

  v27 = *(a2 + 1008);
  v28 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v27;
  *(a1 + 1024) = v28;
  v29 = *(a2 + 1056);
  v30 = *(a2 + 1072);
  v31 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v31;
  *(a1 + 1072) = v30;
  *(a1 + 1056) = v29;
  v32 = *(a2 + 1168);
  v33 = *(a2 + 1184);
  v34 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v34;
  *(a1 + 1184) = v33;
  *(a1 + 1168) = v32;
  v35 = *(a2 + 1232);
  v36 = *(a2 + 1248);
  v37 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v37;
  *(a1 + 1248) = v36;
  *(a1 + 1232) = v35;
  v38 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v38;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  v39 = *(a2 + 1800);
  *(a2 + 1800) = 0u;
  v40 = *(a1 + 1808);
  *(a1 + 1800) = v39;
  if (v40)
  {
    sub_100008080(v40);
  }

  v41 = *(a2 + 1816);
  v42 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v42;
  *(a1 + 1816) = v41;
  v43 = *(a2 + 1864);
  v44 = *(a2 + 1880);
  v45 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v44;
  *(a1 + 1896) = v45;
  *(a1 + 1864) = v43;
  v46 = *(a2 + 1928);
  *(a2 + 1928) = 0u;
  v47 = *(a1 + 1936);
  *(a1 + 1928) = v46;
  if (v47)
  {
    sub_100008080(v47);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  v48 = *(a2 + 2832);
  *(a2 + 2832) = 0u;
  v49 = *(a1 + 2840);
  *(a1 + 2832) = v48;
  if (v49)
  {
    sub_100008080(v49);
  }

  v50 = *(a2 + 2848);
  v51 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v51;
  *(a1 + 2848) = v50;
  v52 = *(a2 + 2896);
  v53 = *(a2 + 2912);
  v54 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v54;
  *(a1 + 2912) = v53;
  *(a1 + 2896) = v52;
  v55 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v55;
  v56 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v56;
  v57 = (a1 + 2992);
  if (*(a1 + 3015) < 0)
  {
    operator delete(*v57);
  }

  v58 = *(a2 + 2992);
  *(a1 + 3008) = *(a2 + 3008);
  *v57 = v58;
  *(a2 + 3015) = 0;
  *(a2 + 2992) = 0;
  v59 = *(a2 + 3076);
  v61 = *(a2 + 3048);
  v60 = *(a2 + 3064);
  *(a1 + 3032) = *(a2 + 3032);
  *(a1 + 3048) = v61;
  *(a1 + 3064) = v60;
  *(a1 + 3076) = v59;
  *(a1 + 3016) = *(a2 + 3016);
  v62 = (a1 + 3096);
  if (*(a1 + 3119) < 0)
  {
    operator delete(*v62);
  }

  v63 = *(a2 + 3096);
  *(a1 + 3112) = *(a2 + 3112);
  *v62 = v63;
  *(a2 + 3119) = 0;
  *(a2 + 3096) = 0;
  v64 = *(a2 + 3216);
  v65 = *(a2 + 3200);
  v66 = *(a2 + 3184);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3184) = v66;
  *(a1 + 3200) = v65;
  *(a1 + 3216) = v64;
  v67 = *(a2 + 3152);
  v68 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v68;
  *(a1 + 3152) = v67;
  v69 = *(a2 + 3232);
  v70 = *(a2 + 3248);
  v71 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v71;
  *(a1 + 3248) = v70;
  *(a1 + 3232) = v69;
  v72 = *(a2 + 3288);
  v73 = 0uLL;
  *(a2 + 3288) = 0u;
  v74 = *(a1 + 3296);
  *(a1 + 3288) = v72;
  if (v74)
  {
    sub_100008080(v74);
    v73 = 0uLL;
  }

  v75 = *(a2 + 3304);
  v76 = *(a2 + 3320);
  v77 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v76;
  *(a1 + 3336) = v77;
  *(a1 + 3304) = v75;
  v78 = *(a2 + 3360);
  *(a2 + 3360) = v73;
  v79 = *(a1 + 3368);
  *(a1 + 3360) = v78;
  if (v79)
  {
    sub_100008080(v79);
  }

  v80 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v80;
  return a1;
}

void *sub_1000F8A0C(void *a1)
{
  *a1 = off_102468328;
  sub_100102BC8(a1 + 1);
  return a1;
}

__n128 sub_1000F8A78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
      result = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v6;
      *(a1 + 64) = v7;
      *(a1 + 32) = result;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    *a1 = *a2;
    v8 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    result = *(a2 + 32);
    v9 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 32) = result;
    *(a1 + 88) = 1;
  }

  return result;
}

uint64_t sub_1000F8B58(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1000F8C1C(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        sub_1000B96B4(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000F8C90(uint64_t a1)
{
  sub_10001AF44(a1 + 288, *(a1 + 296));
  sub_10001AF44(a1 + 200, *(a1 + 208));
  sub_1000F8D2C(a1 + 176, *(a1 + 184));
  sub_10001AF44(a1 + 152, *(a1 + 160));
  sub_10001AF44(a1 + 128, *(a1 + 136));
  sub_10001AF44(a1 + 104, *(a1 + 112));
  sub_10001AF44(a1 + 80, *(a1 + 88));
  sub_10001AF44(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 40);

  sub_10001AF44(a1 + 32, v2);
}

void sub_1000F8D2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000F8D2C(a1, *a2);
    sub_1000F8D2C(a1, a2[1]);
    sub_10067DEC0((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000F8D88(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1000B96B4(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_1000F8DFC(uint64_t a1)
{
  v2 = a1 + 620;
  *a1 = 0;
  sub_1000FB1DC(a1 + 8);
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0xFFFF;
  *(a1 + 604) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *v2 = xmmword_101C75BF0;
  *(v2 + 16) = _Q2;
  *(v2 + 32) = _Q2;
  *(v2 + 48) = _Q2;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0xBFF0000000000000;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *(v2 + 96) = 0xBFF0000000000000;
  *(a1 + 724) = 0x7FFFFFFF;
  *(a1 + 752) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0xBFF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 856) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2264) = 0;
  *(a1 + 2272) = 0;
  *(a1 + 2296) = 0;
  *(a1 + 848) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  return a1;
}

void sub_1000F8F80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      *a1 = *a2;
      std::string::operator=((a1 + 8), (a2 + 8));
      v5 = *(a2 + 48);
      v4 = *(a2 + 64);
      v6 = *(a2 + 32);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v5;
      *(a1 + 64) = v4;
      *(a1 + 32) = v6;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    sub_1001005C4(a1, a2);
    *(a1 + 88) = 1;
  }
}

void sub_1000F9018(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1000F8C1C(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1002887D4(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_1000F9188(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        sub_1000B96B4(&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1000F9188(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_100288878(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

uint64_t *sub_1000F9188(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_100288978(a4, *v5, v5[1], 0x2E8BA2E8BA2E8BA3 * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1000F9270(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_1000F9314(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      v4 = *a2;
      *(a1 + 13) = *(a2 + 13);
      *a1 = v4;
      std::string::operator=((a1 + 24), a2 + 1);

      sub_1002DA420(a1 + 48, (a2 + 3));
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 80) == 1)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        *(a1 + 64) = v5;
        operator delete(v5);
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v6;
    if (*(a2 + 47) < 0)
    {
      sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v7;
    }

    sub_1002DA384(a1 + 48, (a2 + 3));
    *(a1 + 88) = 1;
  }
}

void sub_1000F9410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F942C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xD37A6F4DE9BD37A7 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1642C8590B21642)
    {
      v9 = 0xD37A6F4DE9BD37A7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xB21642C8590B21)
      {
        v11 = 0x1642C8590B21642;
      }

      else
      {
        v11 = v10;
      }

      sub_10031B65C(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xD37A6F4DE9BD37A7 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

std::string *sub_1000F95A0(std::string *result, uint64_t a2)
{
  v3 = result;
  if (result[3].__r_.__value_.__s.__data_[8] == *(a2 + 80))
  {
    if (result[3].__r_.__value_.__s.__data_[8])
    {
      if (result != a2)
      {
        LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
        sub_100103B9C(result, *(a2 + 16), 0);
      }

      *(v3 + 40) = *(a2 + 40);
      *(v3 + 48) = *(a2 + 48);

      return std::string::operator=((v3 + 56), (a2 + 56));
    }
  }

  else if (result[3].__r_.__value_.__s.__data_[8])
  {
    if (result[3].__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(result[2].__r_.__value_.__l.__size_);
    }

    result = sub_1004906DC(v3);
    *(v3 + 80) = 0;
  }

  else
  {
    result = sub_100103020(result, a2);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 48) = *(a2 + 48);
    if (*(a2 + 79) < 0)
    {
      result = sub_100007244((v3 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v4 = *(a2 + 56);
      *(v3 + 72) = *(a2 + 72);
      *(v3 + 56) = v4;
    }

    *(v3 + 80) = 1;
  }

  return result;
}

__n128 sub_1000F96B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 808) == *(a2 + 808))
  {
    if (*(a1 + 808))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      v8 = *(a2 + 96);
      v9 = *(a2 + 112);
      v10 = *(a2 + 128);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 112) = v9;
      *(a1 + 128) = v10;
      *(a1 + 96) = v8;
      memcpy((a1 + 160), (a2 + 160), 0x201uLL);
      v11 = *(a2 + 680);
      v12 = *(a2 + 688);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 680) = v11;
      v13 = *(a1 + 688);
      *(a1 + 688) = v12;
      if (v13)
      {
        sub_100008080(v13);
      }

      v14 = *(a2 + 696);
      v15 = *(a2 + 728);
      *(a1 + 712) = *(a2 + 712);
      *(a1 + 728) = v15;
      *(a1 + 696) = v14;
      result = *(a2 + 744);
      v17 = *(a2 + 760);
      v18 = *(a2 + 776);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 760) = v17;
      *(a1 + 776) = v18;
      *(a1 + 744) = result;
    }
  }

  else if (*(a1 + 808))
  {
    v19 = *(a1 + 688);
    if (v19)
    {
      sub_100008080(v19);
    }

    *(a1 + 808) = 0;
  }

  else
  {
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    v23 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v23;
    *(a1 + 32) = v21;
    *(a1 + 48) = v22;
    v24 = *(a2 + 96);
    v25 = *(a2 + 112);
    v26 = *(a2 + 128);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 112) = v25;
    *(a1 + 128) = v26;
    *(a1 + 96) = v24;
    memcpy((a1 + 160), (a2 + 160), 0x201uLL);
    *(a1 + 680) = *(a2 + 680);
    v27 = *(a2 + 688);
    *(a1 + 688) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(a2 + 696);
    v29 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v29;
    *(a1 + 696) = v28;
    result = *(a2 + 744);
    v30 = *(a2 + 760);
    v31 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v30;
    *(a1 + 776) = v31;
    *(a1 + 744) = result;
    *(a1 + 808) = 1;
  }

  return result;
}

void sub_1000F9838(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0x6F96F96F96F96F97 * (&v3[-*a2] >> 2);
      v5 = *a2;

      sub_1007BE820(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10031D97C(a1, *a2, *(a2 + 8), 0x6F96F96F96F96F97 * ((*(a2 + 8) - *a2) >> 2));
    *(a1 + 24) = 1;
  }
}

void sub_1000F9AC0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6536);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1000F9AE0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t sub_1000F9B54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 64) = v6;
  if (*(a2 + 151) < 0)
  {
    sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_1000FA008(a1 + 264, *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
  *(a1 + 288) = *(a2 + 288);
  sub_100103020(a1 + 296, a2 + 296);
  sub_100103110(a1 + 336, a2 + 336);
  sub_100103098(a1 + 376, a2 + 376);
  sub_100103020(a1 + 416, a2 + 416);
  sub_100103020(a1 + 456, a2 + 456);
  memcpy((a1 + 496), (a2 + 496), 0x120uLL);
  sub_1000FA090(a1 + 784, (a2 + 784));
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  sub_1000FA1A0(a1 + 824, *(a2 + 824), *(a2 + 832), 0xD37A6F4DE9BD37A7 * ((*(a2 + 832) - *(a2 + 824)) >> 3));
  *(a1 + 848) = *(a2 + 848);
  sub_1000FA0E0(a1 + 856, (a2 + 856));
  sub_1000FA2C8(a1 + 952, a2 + 952);
  sub_1000FA21C(a1 + 1040, a2 + 1040);
  v15 = *(a2 + 1120);
  v16 = *(a2 + 1136);
  v17 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1152) = v17;
  *(a1 + 1136) = v16;
  *(a1 + 1120) = v15;
  v18 = *(a2 + 1184);
  v19 = *(a2 + 1200);
  v20 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v20;
  *(a1 + 1200) = v19;
  *(a1 + 1184) = v18;
  sub_1000FA87C(a1 + 1240, (a2 + 1240));
  *(a1 + 1272) = 0;
  *(a1 + 2080) = 0;
  if (*(a2 + 2080) == 1)
  {
    v21 = *(a2 + 1288);
    *(a1 + 1272) = *(a2 + 1272);
    *(a1 + 1288) = v21;
    v22 = *(a2 + 1304);
    v23 = *(a2 + 1320);
    v24 = *(a2 + 1352);
    *(a1 + 1336) = *(a2 + 1336);
    *(a1 + 1352) = v24;
    *(a1 + 1304) = v22;
    *(a1 + 1320) = v23;
    v25 = *(a2 + 1368);
    v26 = *(a2 + 1384);
    v27 = *(a2 + 1400);
    *(a1 + 1412) = *(a2 + 1412);
    *(a1 + 1384) = v26;
    *(a1 + 1400) = v27;
    *(a1 + 1368) = v25;
    memcpy((a1 + 1432), (a2 + 1432), 0x201uLL);
    *(a1 + 1952) = *(a2 + 1952);
    v28 = *(a2 + 1960);
    *(a1 + 1960) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v29 = *(a2 + 1968);
    v30 = *(a2 + 1984);
    *(a1 + 2000) = *(a2 + 2000);
    *(a1 + 1984) = v30;
    *(a1 + 1968) = v29;
    v31 = *(a2 + 2016);
    v32 = *(a2 + 2032);
    v33 = *(a2 + 2048);
    *(a1 + 2057) = *(a2 + 2057);
    *(a1 + 2048) = v33;
    *(a1 + 2032) = v32;
    *(a1 + 2016) = v31;
    *(a1 + 2080) = 1;
  }

  sub_1000FA82C(a1 + 2088, a2 + 2088);
  sub_100105E8C(a1 + 2120, (a2 + 2120));
  sub_1000FA3E4(a1 + 2272, (a2 + 2272));
  return a1;
}

void sub_1000F9E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 47) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA008(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002887D4(result, a4);
  }

  return result;
}

void sub_1000FA070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000F8D88(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FA090(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA0C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018714AC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA0E0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v4;
    if (*(a2 + 47) < 0)
    {
      sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
    }

    sub_1002DA384(a1 + 48, (a2 + 3));
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_1000FA168(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_10067E130(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA1A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10031B65C(result, a4);
  }

  return result;
}

void sub_1000FA200(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA21C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    sub_100103020(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    if (*(a2 + 71) < 0)
    {
      sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v4 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v4;
    }

    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1000FA298(_Unwind_Exception *a1)
{
  sub_1004906DC(v1);
  if (*(v1 + 72) == 1)
  {
    sub_10067E0EC(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000FA2C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100103020(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    if (*(a2 + 79) < 0)
    {
      sub_100007244((a1 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v4 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v4;
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_1000FA34C(_Unwind_Exception *a1)
{
  sub_1004906DC(v1);
  if (*(v1 + 80) == 1)
  {
    sub_10067E0A8(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000FA37C(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10031D97C(result, *a2, *(a2 + 8), 0x6F96F96F96F96F97 * ((*(a2 + 8) - *a2) >> 2));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000FA3E4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018FE7C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FA434(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FA8CC(a2);
    case 7:

      sub_1002E9E8C(a2);
    case 0x14:

      sub_1007BE178(a2);
    default:
      sub_10053508C();
  }
}

const char *sub_1000FA5E4(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  result = "None";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "Wifi::ScanReady";
      break;
    case 2:
      result = "Wifi::ScanError";
      break;
    case 3:
      result = "Wifi::ScanBusy";
      break;
    case 4:
      result = "Wifi::Power";
      break;
    case 5:
      result = "Wifi::LinkStatus";
      break;
    case 6:
      result = "Wifi::Roam";
      break;
    case 7:
      result = "Wifi::Scan";
      break;
    case 8:
      result = "Wifi::Wsb";
      break;
    case 9:
      result = "System::Privacy";
      break;
    case 10:
      result = "System::Reachability";
      break;
    case 11:
      result = "System::CoarseMotion";
      break;
    case 12:
      result = "System::BatterySaverMode";
      break;
    case 13:
      result = "System::DeviceWake";
      break;
    case 14:
      result = "System::CompanionNearby";
      break;
    case 15:
      result = "System::SignalEnvironment";
      break;
    case 16:
      result = "System::LeechLocation";
      break;
    case 17:
      result = "System::MetricHeartbeat";
      break;
    case 18:
      result = "System::Elevation";
      break;
    case 19:
      result = "Network::AlsError";
      break;
    case 20:
      result = "Network::AlsFinished";
      break;
    case 21:
      result = "Network::AlsRequestResult";
      break;
    case 22:
      result = "Network::AlsAllUnknown";
      break;
    case 23:
      result = "Client::EmergencyState";
      break;
    case 24:
      result = "Client::LocationRequest";
      break;
    case 25:
      result = "Client::Registration";
      break;
    case 26:
      result = "Client::Unregistration";
      break;
    case 27:
      result = "Client::UpdateTimer";
      break;
    case 28:
      result = "Client::WsbTimer";
      break;
    case 29:
      result = "ReprocessWifiScanBuffer";
      break;
    default:
      sub_10053508C();
  }

  return result;
}

uint64_t sub_1000FA82C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1000FA37C(a1, a2);
  return a1;
}

void sub_1000FA85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018D08DC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA87C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA8AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018FE7C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FA9A0(_Unwind_Exception *a1)
{
  if (*(v1 + 6551) < 0)
  {
    operator delete(*(v1 + v2));
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

void sub_1000FAA50(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6536);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

void sub_1000FAAD0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  sub_1000FAC0C(a1 + 1448);
}

void sub_1000FAB74(_Unwind_Exception *a1)
{
  if (*(v1 + 1440) == 1 && *(v1 + 1439) < 0)
  {
    operator delete(*(v1 + 1416));
  }

  sub_10067E180(v1 + 1264);
  if (*(v1 + 1256) == 1)
  {
    v5 = *(v1 + 1232);
    if (v5)
    {
      *(v1 + 1240) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 1224) == 1)
  {
    v6 = *(v1 + 1104);
    if (v6)
    {
      sub_100008080(v6);
    }
  }

  if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
  {
    operator delete(*(v1 + 384));
  }

  sub_10067E1D0(v3);
  sub_10067E22C(v2);
  sub_10067E274(v1);
  _Unwind_Resume(a1);
}

void sub_1000FB090(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3296);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1005F3518(v1 + 2976);
  v4 = *(v1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(v1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(v1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(v1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(v1 + 280) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  v9 = *(v1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(v1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  _Unwind_Resume(a1);
}

double sub_1000FB170(uint64_t a1)
{
  *a1 = xmmword_101D210A0;
  *(a1 + 16) = xmmword_101D210A0;
  *(a1 + 32) = sub_1000F7F38()[3];
  *(a1 + 40) = sub_1000F7F38()[4];
  *(a1 + 48) = sub_1000F7F38()[5];
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 56) = _Q0;
  *(a1 + 72) = _Q0;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t sub_1000FB1DC(uint64_t a1)
{
  v3 = 7;
  strcpy(&v2, "default");
  return sub_100103CE8(a1, 0, 0, &v2, 0.0);
}

uint64_t sub_1000FB234(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v10 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000FB724((a1 + 192), a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v13 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v14;
  v15 = *(a2 + 344);
  v16 = *(a2 + 360);
  v17 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v17;
  *(a1 + 344) = v15;
  *(a1 + 360) = v16;
  v18 = *(a2 + 408);
  v19 = *(a2 + 424);
  v20 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v19;
  *(a1 + 440) = v20;
  *(a1 + 408) = v18;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  *(a1 + 992) = *(a2 + 992);
  v21 = *(a2 + 1000);
  *(a1 + 1000) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(a2 + 1008);
  v23 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v22;
  *(a1 + 1024) = v23;
  v24 = *(a2 + 1056);
  v25 = *(a2 + 1072);
  v26 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v26;
  *(a1 + 1072) = v25;
  *(a1 + 1056) = v24;
  v27 = *(a2 + 1168);
  v28 = *(a2 + 1184);
  v29 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v29;
  *(a1 + 1184) = v28;
  *(a1 + 1168) = v27;
  v30 = *(a2 + 1232);
  v31 = *(a2 + 1248);
  v32 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v32;
  *(a1 + 1248) = v31;
  *(a1 + 1232) = v30;
  v33 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v33;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  *(a1 + 1800) = *(a2 + 1800);
  v34 = *(a2 + 1808);
  *(a1 + 1808) = v34;
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = *(a2 + 1816);
  v36 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v36;
  *(a1 + 1816) = v35;
  v37 = *(a2 + 1864);
  v38 = *(a2 + 1880);
  v39 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v38;
  *(a1 + 1896) = v39;
  *(a1 + 1864) = v37;
  *(a1 + 1928) = *(a2 + 1928);
  v40 = *(a2 + 1936);
  *(a1 + 1936) = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  *(a1 + 2832) = *(a2 + 2832);
  v41 = *(a2 + 2840);
  *(a1 + 2840) = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(a2 + 2848);
  v43 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v43;
  *(a1 + 2848) = v42;
  v44 = *(a2 + 2896);
  v45 = *(a2 + 2912);
  v46 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v46;
  *(a1 + 2912) = v45;
  *(a1 + 2896) = v44;
  v47 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v47;
  v48 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v48;
  if (*(a2 + 3015) < 0)
  {
    sub_100007244((a1 + 2992), *(a2 + 2992), *(a2 + 3000));
  }

  else
  {
    v49 = *(a2 + 2992);
    *(a1 + 3008) = *(a2 + 3008);
    *(a1 + 2992) = v49;
  }

  *(a1 + 3016) = *(a2 + 3016);
  v50 = *(a2 + 3032);
  v51 = *(a2 + 3048);
  v52 = *(a2 + 3064);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v51;
  *(a1 + 3064) = v52;
  *(a1 + 3032) = v50;
  v53 = (a1 + 3096);
  if (*(a2 + 3119) < 0)
  {
    sub_100007244(v53, *(a2 + 3096), *(a2 + 3104));
  }

  else
  {
    v54 = *(a2 + 3096);
    *(a1 + 3112) = *(a2 + 3112);
    *v53 = v54;
  }

  v55 = *(a2 + 3120);
  v56 = *(a2 + 3136);
  *(a1 + 3152) = *(a2 + 3152);
  *(a1 + 3136) = v56;
  *(a1 + 3120) = v55;
  v57 = *(a2 + 3168);
  v58 = *(a2 + 3184);
  v59 = *(a2 + 3200);
  *(a1 + 3216) = *(a2 + 3216);
  *(a1 + 3200) = v59;
  *(a1 + 3184) = v58;
  *(a1 + 3168) = v57;
  v60 = *(a2 + 3232);
  v61 = *(a2 + 3248);
  v62 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v62;
  *(a1 + 3248) = v61;
  *(a1 + 3232) = v60;
  *(a1 + 3288) = *(a2 + 3288);
  v63 = *(a2 + 3296);
  *(a1 + 3296) = v63;
  if (v63)
  {
    atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
  }

  v64 = *(a2 + 3304);
  v65 = *(a2 + 3320);
  v66 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v65;
  *(a1 + 3336) = v66;
  *(a1 + 3304) = v64;
  *(a1 + 3360) = *(a2 + 3360);
  v67 = *(a2 + 3368);
  *(a1 + 3368) = v67;
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
  }

  v68 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v68;
  return a1;
}

void sub_1000FB67C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 3015) < 0)
  {
    operator delete(*v2);
  }

  v4 = *(v1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(v1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(v1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(v1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(v1 + 280) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  v9 = *(v1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(v1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000FB724(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[88] = 0;
  if (*(a2 + 88) == 1)
  {
    sub_1001005C4(a1, a2);
    a1[88] = 1;
  }

  return a1;
}

void sub_1000FB76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_101872B04(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FB78C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  return __dst;
}

void sub_1000FB7DC(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FB9B8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000FB9B8(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 5)
  {
    v6 = sub_1000081AC();
    v7 = *(a1 + 3648);
    v8 = v6 - v7;
    if (v7 == 0.0 || v8 >= 1.0)
    {
      *(a1 + 3648) = v6;
      v10 = a4[7];
      v26 = a4[6];
      v27 = v10;
      v28[0] = a4[8];
      *(v28 + 12) = *(a4 + 140);
      v11 = a4[3];
      v22 = a4[2];
      v23 = v11;
      v12 = a4[5];
      v24 = a4[4];
      v25 = v12;
      v13 = a4[1];
      v20 = *a4;
      v21 = v13;
      memcpy(v29, a4 + 10, sizeof(v29));
      v14 = *(a4 + 85);
      v15 = *(a4 + 86);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      *(v48 + 9) = *(a4 + 785);
      v16 = *(a4 + 776);
      v47 = *(a4 + 760);
      v48[0] = v16;
      v17 = *(a4 + 712);
      v43 = *(a4 + 696);
      v44 = v17;
      v18 = *(a4 + 744);
      v45 = *(a4 + 728);
      v46 = v18;
      v32 = v21;
      v31 = v20;
      v36 = v25;
      v35 = v24;
      v34 = v23;
      v33 = v22;
      *(v39 + 12) = *(v28 + 12);
      v39[0] = v28[0];
      v38 = v27;
      v37 = v26;
      memcpy(v40, v29, sizeof(v40));
      v41 = v14;
      v42 = v15;
      v30 = 16;
      sub_1000FFE90();
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v20) = 134349056;
      *(&v20 + 4) = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "@WifiLogic, LeechLocation event dropped due to 1s rate limit, timeSinceLastEvent=%{public}.6f", &v20, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD46C();
    }
  }
}

__n128 sub_1000FBC00(uint64_t a1, __int128 *a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  v5 = *a2;
  *(v4 + 24) = a2[1];
  *(v4 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(v4 + 88) = a2[5];
  *(v4 + 72) = v8;
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(v4 + 148) = *(a2 + 140);
  *(v4 + 136) = v11;
  *(v4 + 120) = v10;
  *(v4 + 104) = v9;
  memcpy((v4 + 168), a2 + 10, 0x201uLL);
  *(v4 + 688) = *(a2 + 85);
  v12 = *(a2 + 86);
  *(v4 + 696) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 696);
  v14 = *(a2 + 728);
  *(v4 + 720) = *(a2 + 712);
  *(v4 + 736) = v14;
  *(v4 + 704) = v13;
  result = *(a2 + 744);
  v16 = *(a2 + 760);
  v17 = *(a2 + 776);
  *(v4 + 793) = *(a2 + 785);
  *(v4 + 768) = v16;
  *(v4 + 784) = v17;
  *(v4 + 752) = result;
  **a1 = *(a1 + 8);
  return result;
}

void sub_1000FC0E0(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_102663F90, memory_order_acquire) & 1) == 0)
  {
    sub_101B4B4AC();
  }

  if (qword_102663F70 != -1)
  {
    sub_101B4B51C();
  }

  v2 = *(&xmmword_102663FA0 + 1);
  *a1 = xmmword_102663FA0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1000FC150(double *a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(qword_102663F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_102663F80))
  {
    word_102663F78 = sub_10116627C();
    __cxa_guard_release(qword_102663F80);
  }

  v6 = &word_102663F78;
  if ((word_102663F78 & 0x100) == 0)
  {
    v6 = sub_100100690();
  }

  if (*v6 == 1)
  {
    v7 = *(a2 + 96);
    if (v7 == 10 || v7 == 1)
    {
      v9 = *(a2 + 76) - *a1;
      if (v9 >= *(sub_100100690() + 4))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B4B530();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_1001D78F4(v25);
          v11 = v26;
          v12 = v25[0];
          *v22 = *a3;
          sub_10018F0D0(&__p);
          v13 = v25;
          if (v11 < 0)
          {
            v13 = v12;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136643075;
          *(buf.__r_.__value_.__r.__words + 4) = v13;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Attempting to harvest location %{sensitive}s for associated AP %{private}s", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B4B544(v25);
          sub_1001D78F4(&__p);
          v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v16 = __p.__r_.__value_.__r.__words[0];
          sub_10018F0D0(&buf);
          v17 = &__p;
          if (v15 < 0)
          {
            v17 = v16;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v22 = 136643075;
          *&v22[4] = v17;
          v23 = 2081;
          v24 = p_buf;
          v19 = _os_log_send_and_compose_impl();
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApGpsIndoorHarvester::harvestLocationForAssociatedAp(const CLDaemonLocation &, const CLWifiService_Type::AccessPoint &)", "%s\n", v19);
          if (v19 != v25)
          {
            free(v19);
          }
        }

        sub_10018F18C(v25, a3, a2, -1);
        sub_10001A3E8();
        if (sub_10001CF3C())
        {
          sub_1001CBD74(&__p);
          sub_10018F858(__p.__r_.__value_.__l.__data_, v25);
        }

        else
        {
          sub_1001CBD74(&__p);
          sub_10023FC28(__p.__r_.__value_.__l.__data_, v25);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100008080(__p.__r_.__value_.__l.__size_);
        }

        *a1 = *(a2 + 76);
      }
    }
  }
}

BOOL sub_1000FC51C(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a2);
  if (result)
  {
    v5 = *(a2 + 96);
    if (v5 != 10 && v5 != 1)
    {
      return 0;
    }

    if (*(a2 + 20) > 30.0)
    {
      return 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (sub_1001D24B0(a2, Current) > *a1)
    {
      return 0;
    }

    v8 = *(a1 + 48);
    if (v8 && ((v9 = *(a2 + 76), v10 = *(*(*(a1 + 16) + 8 * ((v8 + *(a1 + 40) - 1) / 0x1AuLL)) + 156 * ((v8 + *(a1 + 40) - 1) % 0x1AuLL) + 76), v9 >= v10) ? (v11 = v9 - v10 < 1.0) : (v11 = 1), v11))
    {
      return 0;
    }

    else
    {
      sub_100226FAC((a1 + 8), a2);
      while (*(a1 + 48))
      {
        v12 = *(*(a1 + 16) + 8 * (*(a1 + 40) / 0x1AuLL)) + 156 * (*(a1 + 40) % 0x1AuLL);
        v13 = CFAbsoluteTimeGetCurrent();
        if (sub_1001D24B0(v12, v13) <= *a1)
        {
          break;
        }

        *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_101C66230);
        sub_1001FD668(a1 + 8, 1);
      }

      v14 = sub_1000081AC();
      if (v14 - *(a1 + 56) >= 10.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101B44984();
        }

        v15 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 48);
          sub_1001D78F4(__p);
          v17 = v36 >= 0 ? __p : __p[0];
          *buf = 134349315;
          *&buf[4] = v16;
          v28 = 2081;
          v29 = v17;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, latest ref location %{private}s", buf, 0x16u);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101B44998();
          }

          v21 = *(a1 + 48);
          sub_1001D78F4(buf);
          if (v30 >= 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          v31 = 134349315;
          v32 = v21;
          v33 = 2081;
          v34 = v22;
          v23 = _os_log_send_and_compose_impl();
          if (v30 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLReferenceLocations::receiveLocation(const CLDaemonLocation &)", "%s\n", v23);
          if (v23 != __p)
          {
            free(v23);
          }
        }

        if (qword_1025D4600 != -1)
        {
          sub_101B44998();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 48);
          sub_1001D78F4(__p);
          v20 = v36 >= 0 ? __p : __p[0];
          *buf = 134349315;
          *&buf[4] = v19;
          v28 = 2081;
          v29 = v20;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, oldest ref location %{private}s", buf, 0x16u);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101B44998();
          }

          v24 = *(a1 + 48);
          sub_1001D78F4(buf);
          if (v30 >= 0)
          {
            v25 = buf;
          }

          else
          {
            v25 = *buf;
          }

          v31 = 134349315;
          v32 = v24;
          v33 = 2081;
          v34 = v25;
          v26 = _os_log_send_and_compose_impl();
          if (v30 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLReferenceLocations::receiveLocation(const CLDaemonLocation &)", "%s\n", v26);
          if (v26 != __p)
          {
            free(v26);
          }
        }

        *(a1 + 56) = v14;
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_1000FCAB8(_OWORD **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(a2 + 64) = v3[4];
  *(a2 + 80) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  *(a2 + 140) = *(v3 + 140);
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  *(a2 + 96) = v8;
  memcpy((a2 + 160), v3 + 10, 0x201uLL);
  v11 = *(v3 + 85);
  v12 = *(v3 + 86);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 680) = v11;
  v13 = *(a2 + 688);
  *(a2 + 688) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(v3 + 696);
  v15 = *(v3 + 728);
  *(a2 + 712) = *(v3 + 712);
  *(a2 + 728) = v15;
  *(a2 + 696) = v14;
  result = *(v3 + 744);
  v17 = *(v3 + 760);
  v18 = *(v3 + 776);
  *(a2 + 785) = *(v3 + 785);
  *(a2 + 760) = v17;
  *(a2 + 776) = v18;
  *(a2 + 744) = result;
  return result;
}

void sub_1000FCB78(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FCF34(a2);
    case 7:

      sub_1002F2DCC(a2);
    case 0x14:

      sub_100A313A8(a2);
    case 0x18:

      sub_1001E82F4(a2);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1000FCCC8(uint64_t a1)
{
  sub_100107AE0(a1 + 1448);
  if (*(a1 + 1440) == 1 && *(a1 + 1439) < 0)
  {
    operator delete(*(a1 + 1416));
  }

  if (*(a1 + 1408) == 1)
  {
    if (*(a1 + 1407) < 0)
    {
      operator delete(*(a1 + 1384));
    }

    if (*(a1 + 1303) < 0)
    {
      operator delete(*(a1 + 1280));
    }
  }

  if (*(a1 + 1256) == 1)
  {
    v2 = *(a1 + 1232);
    if (v2)
    {
      *(a1 + 1240) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 1224) == 1)
  {
    v3 = *(a1 + 1104);
    if (v3)
    {
      sub_100008080(v3);
    }
  }

  if (*(a1 + 408) == 1 && *(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 248) == 1)
    {
      v4 = *(a1 + 224);
      if (v4)
      {
        *(a1 + 232) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }
  }

  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    sub_1004906DC(a1 + 88);
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

void sub_1000FD0B8(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_1000FD058(a2);
    case 7:

      sub_1002F2E84(a2);
    case 8:

      sub_10031D2D8(a2);
    case 0x1D:

      sub_100BE1544(a2);
    default:
      sub_10053508C();
  }
}

void sub_1000FD338(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FD2D8(a2);
    case 0x17:

      sub_101139998(a2);
    default:
      sub_10053508C();
  }
}

void sub_1000FD574(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 9:
    case 0xC:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1D:

      sub_1000FD514(a2);
    case 2:

      sub_100CEBBC8(a2);
    case 3:

      sub_100CEB82C(a2);
    case 4:

      sub_100CEB440(a2);
    case 5:

      sub_100CEBDBC(a2);
    case 6:
      sub_1000FD514(a2);
    case 7:

      sub_1002F4120(a2);
    case 8:

      sub_10031D798(a2);
    case 0xA:

      sub_100CEC7D4(a2);
    case 0xB:

      sub_100CEBF84(a2);
    case 0xD:

      sub_10027968C(a2);
    case 0x14:

      sub_100CEC5F8(a2);
    case 0x15:

      sub_100CEC26C(a2);
    case 0x18:

      sub_1001E3C40(a2);
    case 0x1A:
      sub_1000FD514(a2);
    case 0x1B:

      sub_100288010(a2);
    case 0x1C:

      sub_100CECB20(a2);
    default:
      sub_10053508C();
  }
}

void sub_1000FDAD8(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1D:

      sub_1000FDA78(a2);
    case 0x14:

      sub_100D9A82C(a2);
    case 0x1C:

      sub_100D9A648(a2);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1000FDC18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v29);
  v4 = sub_100038730(&v30, "Request, type, ", 15);
  v5 = *a1 - 1;
  if (v5 > 6)
  {
    v6 = "none";
  }

  else
  {
    v6 = off_10246B3C8[v5];
  }

  v7 = strlen(v6);
  v8 = sub_100038730(v4, v6, v7);
  v9 = sub_100038730(v8, ", lowPriority, ", 15);
  if (*(a1 + 8))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (*(a1 + 8))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_100038730(v9, v10, v11);
  v13 = sub_100038730(v12, ", requester, ", 13);
  v14 = *(a1 + 39);
  if (v14 >= 0)
  {
    v15 = a1 + 16;
  }

  else
  {
    v15 = *(a1 + 16);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 39);
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = sub_100038730(v13, v15, v16);
  sub_100038730(v17, ", numOfRequestedScans, ", 23);
  v18 = std::ostream::operator<<();
  v19 = sub_100038730(v18, ", timestamp, ", 13);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v19 + *(v20 - 24) + 16) = 1;
  v21 = std::ostream::operator<<();
  v22 = sub_100038730(v21, ", age, ", 7);
  v23 = *v22;
  *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v22 + *(v23 - 24) + 16) = 1;
  CFAbsoluteTimeGetCurrent();
  std::ostream::operator<<();
  if ((v37 & 0x10) != 0)
  {
    v25 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v25 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v24 = 0;
      a2[23] = 0;
      goto LABEL_29;
    }

    locale = v32[1].__locale_;
    v25 = v32[3].__locale_;
  }

  v24 = v25 - locale;
  if ((v25 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  a2[23] = v24;
  if (v24)
  {
    memmove(a2, locale, v24);
  }

LABEL_29:
  a2[v24] = 0;
  v30 = v27;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000FE02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000FE05C(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1000FE594();
    }
  }
}

void sub_1000FE560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1000FE660(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10010794C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_1001079E8(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1003286C0();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1003286C0();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionState_Type::Notification, CLMotionState_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionState_Type::Notification, NotificationData_T = CLMotionState_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

void sub_1000FEA1C(uint64_t a1, int *a2, uint64_t a3, unint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B7BA38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionState7::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B7BA4C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionState7::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FEBE8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

unint64_t sub_1000FEBE8(unint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = result;
  v7 = *a3;
  if (*a3 > 12)
  {
    if (v7 == 13)
    {
      v18 = sub_10123C178(result);
      v19 = v6[532];

      return sub_1000C3344(v6, v18, v19);
    }

    else if (v7 == 22)
    {
      v13 = *(a4 + 112);
      v21[6] = *(a4 + 96);
      v21[7] = v13;
      v22[0] = *(a4 + 128);
      *(v22 + 12) = *(a4 + 140);
      v14 = *(a4 + 48);
      v21[2] = *(a4 + 32);
      v21[3] = v14;
      v15 = *(a4 + 80);
      v21[4] = *(a4 + 64);
      v21[5] = v15;
      v16 = *(a4 + 16);
      v21[0] = *a4;
      v21[1] = v16;
      v20[0] = 9;
      (*(*result + 152))(result, v20, v21, 1, 0xFFFFFFFFLL, 0);
      result = sub_10030D934(*(a4 + 808));
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          sub_10030E2C0(*(a4 + 808), i, v20);
          sub_1000FEE18(v6, a3, v20);
          result = sub_10030D934(*(a4 + 808));
        }
      }
    }
  }

  else
  {
    if (v7)
    {
      v8 = v7 == 5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_1000FEE18(result, a3, a4);
      v9 = *(a4 + 112);
      v23[6] = *(a4 + 96);
      v23[7] = v9;
      v24[0] = *(a4 + 128);
      *(v24 + 12) = *(a4 + 140);
      v10 = *(a4 + 48);
      v23[2] = *(a4 + 32);
      v23[3] = v10;
      v11 = *(a4 + 80);
      v23[4] = *(a4 + 64);
      v23[5] = v11;
      v12 = *(a4 + 16);
      v23[0] = *a4;
      v23[1] = v12;
      v20[0] = 9;
      return (*(*v6 + 152))(v6, v20, v23, 1, 0xFFFFFFFFLL, 0);
    }
  }

  return result;
}

void sub_1000FEE18(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4250 != -1)
  {
    sub_101B7BA74();
  }

  v6 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *(a3 + 96);
    v9 = *(a3 + 44);
    v10 = *(a3 + 52);
    v11 = *(a3 + 76);
    v12 = *(a3 + 20);
    v13 = *(a3 + 4);
    v14 = *(a3 + 12);
    LODWORD(buf) = 67110912;
    HIDWORD(buf) = v7;
    v55 = 1024;
    v56 = v8;
    v57 = 2048;
    v58 = v9;
    v59 = 2048;
    v60 = v10;
    v61 = 2048;
    v62 = v11;
    v63 = 2048;
    v64 = v12;
    v65 = 2048;
    v66 = v13;
    v67 = 2048;
    v68 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Notification, Type, Speed, SpeedUncertainty, LocationTimestamp, hAcc, Lat, Long, %d, %d, %f, %f, %f, %f, %f, %f", &buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7C42C(a2);
  }

  if (*(a1 + 528) == 1)
  {
    v44 = off_102491468;
    v47 = *(a3 + 96);
    v15 = *(a1 + 530);
    v16 = vdup_n_s32(v15);
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v18 = vandq_s8(*(a3 + 4), vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)));
    v48 = *(a3 + 44);
    v49 = v18;
    v50 = *(a3 + 20);
    v51 = *(a3 + 36);
    v52 = *(a3 + 60);
    v53 = v15;
    v46 = *(a3 + 76);
    Current = CFAbsoluteTimeGetCurrent();
    v19 = sub_10015ADF4();
    sub_1010CF5BC(v19, &v44);
    sub_10152D354(&buf);
    sub_1015559A4(&buf);
    v71 |= 1u;
    v69 = Current;
    v20 = v70;
    v21 = *(a3 + 76);
    *(v70 + 100) |= 0x100u;
    *(v20 + 72) = v21;
    v22 = v70;
    v23 = *(a3 + 96);
    *(v70 + 100) |= 0x1000u;
    *(v22 + 96) = v23;
    v24 = v70;
    v25 = *(a3 + 44);
    *(v70 + 100) |= 0x40u;
    *(v24 + 56) = v25;
    v26 = v70;
    v27 = *(a3 + 52);
    *(v70 + 100) |= 0x80u;
    *(v26 + 64) = v27;
    v28 = v70;
    v29 = *(a3 + 4);
    if (!*(a1 + 530))
    {
      v29 = 0.0;
    }

    *(v70 + 100) |= 0x10u;
    *(v28 + 40) = v29;
    v30 = v70;
    v31 = *(a3 + 12);
    if (!*(a1 + 530))
    {
      v31 = 0.0;
    }

    *(v70 + 100) |= 0x20u;
    *(v30 + 48) = v31;
    v32 = v70;
    v33 = *(a3 + 20);
    *(v70 + 100) |= 8u;
    *(v32 + 32) = v33;
    v34 = v70;
    v35 = *(a3 + 28);
    *(v70 + 100) |= 1u;
    *(v34 + 8) = v35;
    v36 = v70;
    v37 = *(a3 + 36);
    *(v70 + 100) |= 0x200u;
    *(v36 + 80) = v37;
    v38 = v70;
    v39 = *(a3 + 60);
    *(v70 + 100) |= 2u;
    *(v38 + 16) = v39;
    v40 = v70;
    v41 = *(a3 + 68);
    *(v70 + 100) |= 4u;
    *(v40 + 24) = v41;
    v42 = v70;
    v43 = *(a1 + 530);
    *(v70 + 100) |= 0x800u;
    *(v42 + 92) = v43;
    if (qword_102637F48 != -1)
    {
      sub_101B7BC8C();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, &buf);
    }

    sub_101532FA8(&buf);
  }
}

void sub_1000FF198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_1000FF1B8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B95E54();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B95E68();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FF394(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000FF394(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (*(a1 + 413))
  {
    if (*(a1 + 217))
    {
      if (*a3 == 5)
      {
        v7 = (*(**(a1 + 448) + 56))(*(a1 + 448));
        v8 = *(a1 + 392);
        v9 = *(a1 + 252);
        v10 = v9 > *(a4 + 20) && v9 > 100.0;
        if (qword_1025D4620 != -1)
        {
          sub_101B2365C();
        }

        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 392);
          v12 = *(a1 + 400);
          sub_100072AFC(a4, __p);
          v14 = (v53 & 0x80000000) == 0 ? __p : *__p;
          *buf = 134349827;
          *v57 = v13;
          *&v57[8] = 1026;
          *&v57[10] = v10;
          v58 = 2050;
          v59 = v12;
          v60 = 2085;
          v61 = v14;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", buf, 0x26u);
          if (SBYTE3(v53) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          v44 = *(a1 + 392);
          v43 = *(a1 + 400);
          sub_100072AFC(a4, v47);
          if (v48 >= 0)
          {
            v45 = v47;
          }

          else
          {
            v45 = v47[0];
          }

          *__p = 134349827;
          *&__p[4] = v44;
          v50 = 1026;
          v51 = v10;
          v52 = 2050;
          v53 = v43;
          v54 = 2085;
          v55 = v45;
          v46 = _os_log_send_and_compose_impl();
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        v15 = *(a4 + 16);
        *(a1 + 232) = *a4;
        *(a1 + 248) = v15;
        v16 = *(a4 + 32);
        v17 = *(a4 + 48);
        v18 = *(a4 + 80);
        *(a1 + 296) = *(a4 + 64);
        *(a1 + 312) = v18;
        *(a1 + 264) = v16;
        *(a1 + 280) = v17;
        v19 = *(a4 + 96);
        v20 = *(a4 + 112);
        v21 = *(a4 + 128);
        *(a1 + 372) = *(a4 + 140);
        *(a1 + 344) = v20;
        *(a1 + 360) = v21;
        *(a1 + 328) = v19;
        if (v7 - v8 >= 600.0 || v10)
        {
          v22 = *(a1 + 252);
          if (v22 >= 0.0 && v22 <= 5000.0)
          {
            sub_10022FBB0(a1, a1 + 232, v7);
            sub_100233368(a1, 0, v7);
            sub_100235624(a1, a1 + 232);
            *(a1 + 392) = v7;
          }
        }

        if (*(a1 + 216) == 1 && (v7 - *(a1 + 400) >= 330.0 || v10))
        {
          v23 = *(a4 + 16);
          *(a1 + 232) = *a4;
          *(a1 + 248) = v23;
          v24 = *(a4 + 32);
          v25 = *(a4 + 48);
          v26 = *(a4 + 80);
          *(a1 + 296) = *(a4 + 64);
          *(a1 + 312) = v26;
          *(a1 + 264) = v24;
          *(a1 + 280) = v25;
          v27 = *(a4 + 96);
          v28 = *(a4 + 112);
          v29 = *(a4 + 128);
          *(a1 + 372) = *(a4 + 140);
          *(a1 + 344) = v28;
          *(a1 + 360) = v29;
          *(a1 + 328) = v27;
          *(a1 + 400) = v7;
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B23F7C();
        }

        v40 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v41 = *a3;
          v42 = sub_100048D98(*a3);
          *buf = 67109378;
          *v57 = v41;
          *&v57[4] = 2080;
          *&v57[6] = v42;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, unknown notification, %d, %s", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B274B4(a3);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B2365C();
      }

      v31 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 216);
        *buf = 67240192;
        *v57 = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B273C0(a1);
      }

      if (*a3 == 5)
      {
        v33 = *a4;
        *(a1 + 248) = *(a4 + 16);
        *(a1 + 232) = v33;
        v34 = *(a4 + 32);
        v35 = *(a4 + 48);
        v36 = *(a4 + 80);
        *(a1 + 296) = *(a4 + 64);
        *(a1 + 312) = v36;
        *(a1 + 264) = v34;
        *(a1 + 280) = v35;
        v37 = *(a4 + 96);
        v38 = *(a4 + 112);
        v39 = *(a4 + 128);
        *(a1 + 372) = *(a4 + 140);
        *(a1 + 344) = v38;
        *(a1 + 360) = v39;
        *(a1 + 328) = v37;
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v30 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, ignore leech when LS off", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B272DC();
    }
  }
}

uint64_t sub_1000FF93C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v11 = *(a2 + 144);
  v10 = *(a2 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 152);
  *(a1 + 144) = v11;
  *(a1 + 152) = v10;
  if (v12)
  {
    sub_100008080(v12);
  }

  v14 = *(a2 + 160);
  v13 = *(a2 + 168);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 168);
  *(a1 + 160) = v14;
  *(a1 + 168) = v13;
  if (v15)
  {
    sub_100008080(v15);
  }

  v17 = *(a2 + 176);
  v16 = *(a2 + 184);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 184);
  *(a1 + 176) = v17;
  *(a1 + 184) = v16;
  if (v18)
  {
    sub_100008080(v18);
  }

  sub_1000F8F80(a1 + 192, a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v20 = *(a2 + 296);
  v19 = *(a2 + 304);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 304);
  *(a1 + 296) = v20;
  *(a1 + 304) = v19;
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v22;
  v23 = *(a2 + 344);
  v24 = *(a2 + 360);
  v25 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v25;
  *(a1 + 344) = v23;
  *(a1 + 360) = v24;
  v26 = *(a2 + 408);
  v27 = *(a2 + 424);
  v28 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v27;
  *(a1 + 440) = v28;
  *(a1 + 408) = v26;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  v29 = *(a2 + 992);
  v30 = *(a2 + 1000);
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 992) = v29;
  v31 = *(a1 + 1000);
  *(a1 + 1000) = v30;
  if (v31)
  {
    sub_100008080(v31);
  }

  v32 = *(a2 + 1008);
  v33 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v32;
  *(a1 + 1024) = v33;
  v34 = *(a2 + 1056);
  v35 = *(a2 + 1072);
  v36 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v36;
  *(a1 + 1072) = v35;
  *(a1 + 1056) = v34;
  v37 = *(a2 + 1168);
  v38 = *(a2 + 1184);
  v39 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v39;
  *(a1 + 1184) = v38;
  *(a1 + 1168) = v37;
  v40 = *(a2 + 1232);
  v41 = *(a2 + 1248);
  v42 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v42;
  *(a1 + 1248) = v41;
  *(a1 + 1232) = v40;
  v43 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v43;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  v44 = *(a2 + 1800);
  v45 = *(a2 + 1808);
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1800) = v44;
  v46 = *(a1 + 1808);
  *(a1 + 1808) = v45;
  if (v46)
  {
    sub_100008080(v46);
  }

  v47 = *(a2 + 1816);
  v48 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v48;
  *(a1 + 1816) = v47;
  v49 = *(a2 + 1864);
  v50 = *(a2 + 1880);
  v51 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v50;
  *(a1 + 1896) = v51;
  *(a1 + 1864) = v49;
  v52 = *(a2 + 1928);
  v53 = *(a2 + 1936);
  if (v53)
  {
    atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1928) = v52;
  v54 = *(a1 + 1936);
  *(a1 + 1936) = v53;
  if (v54)
  {
    sub_100008080(v54);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  v55 = *(a2 + 2832);
  v56 = *(a2 + 2840);
  if (v56)
  {
    atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2832) = v55;
  v57 = *(a1 + 2840);
  *(a1 + 2840) = v56;
  if (v57)
  {
    sub_100008080(v57);
  }

  v58 = *(a2 + 2848);
  v59 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v59;
  *(a1 + 2848) = v58;
  v60 = *(a2 + 2896);
  v61 = *(a2 + 2912);
  v62 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v62;
  *(a1 + 2912) = v61;
  *(a1 + 2896) = v60;
  v63 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v63;
  v64 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v64;
  std::string::operator=((a1 + 2992), (a2 + 2992));
  *(a1 + 3016) = *(a2 + 3016);
  v66 = *(a2 + 3048);
  v65 = *(a2 + 3064);
  v67 = *(a2 + 3032);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v66;
  *(a1 + 3064) = v65;
  *(a1 + 3032) = v67;
  std::string::operator=((a1 + 3096), (a2 + 3096));
  v68 = *(a2 + 3152);
  v69 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v69;
  *(a1 + 3152) = v68;
  v70 = *(a2 + 3184);
  v71 = *(a2 + 3200);
  v72 = *(a2 + 3216);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3216) = v72;
  *(a1 + 3200) = v71;
  *(a1 + 3184) = v70;
  v73 = *(a2 + 3248);
  v74 = *(a2 + 3264);
  v75 = *(a2 + 3280);
  *(a1 + 3232) = *(a2 + 3232);
  *(a1 + 3280) = v75;
  *(a1 + 3264) = v74;
  *(a1 + 3248) = v73;
  v76 = *(a2 + 3288);
  v77 = *(a2 + 3296);
  if (v77)
  {
    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3288) = v76;
  v78 = *(a1 + 3296);
  *(a1 + 3296) = v77;
  if (v78)
  {
    sub_100008080(v78);
  }

  v79 = *(a2 + 3304);
  v80 = *(a2 + 3320);
  v81 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v80;
  *(a1 + 3336) = v81;
  *(a1 + 3304) = v79;
  v82 = *(a2 + 3360);
  v83 = *(a2 + 3368);
  if (v83)
  {
    atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3360) = v82;
  v84 = *(a1 + 3368);
  *(a1 + 3368) = v83;
  if (v84)
  {
    sub_100008080(v84);
  }

  v85 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v85;
  return a1;
}

void *sub_1000FFE14(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024683B0;
  sub_1000FFE70((a1 + 3), a2);
  return a1;
}

double sub_1000FFE70(uint64_t a1, void *a2)
{
  *a1 = *a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1000FFE90()
{
  __chkstk_darwin();
  sub_10000FF38(v0, "wifi1Event", 0);
  v1 = 0;
  sub_1000FAC0C(&v2);
}

void sub_100100530(_Unwind_Exception *a1)
{
  sub_100107AE0(v1 + 816);
  sub_1001039FC(&STACK[0x3398]);
  sub_10001A420(&STACK[0x2068]);
  _Unwind_Resume(a1);
}

void sub_1001005A4(void *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  JUMPOUT(0x10010059CLL);
}

uint64_t sub_1001005C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100007244(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t *sub_10010069C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = mach_absolute_time();
  (*(v2 + 16))(v2, v3, v4);
  return a1;
}

void sub_1001006EC(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a1 + 2;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v4 = a2;
      v5 = v3;

      break;
    case 1:
      v4 = a2;
      v5 = v3;

      break;
    case 2:
      v4 = a2;
      v5 = v3;

      break;
    case 3:

      sub_1010525F0(a3);
    case 4:
      v4 = a2;
      v5 = v3;

      break;
    case 5:
      v4 = a2;
      v5 = v3;

      break;
    case 6:
      v4 = a2;
      v5 = v3;

      break;
    case 7:

      sub_1002F189C(a3);
    case 8:

      sub_10031C12C(a3);
    case 9:
      v4 = a2;
      v5 = v3;

      break;
    case 0xA:
      v4 = a2;
      v5 = v3;

      break;
    case 0xB:
      v4 = a2;
      v5 = v3;

      break;
    case 0xC:
      v4 = a2;
      v5 = v3;

      break;
    case 0xD:
      v4 = a2;
      v5 = v3;

      break;
    case 0xE:
      v4 = a2;
      v5 = v3;

      break;
    case 0xF:
      v4 = a2;
      v5 = v3;

      break;
    case 0x10:
      v4 = a2;
      v5 = v3;

      break;
    case 0x11:
      v4 = a2;
      v5 = v3;

      break;
    case 0x12:
      v4 = a2;
      v5 = v3;

      break;
    case 0x13:
      v4 = a2;
      v5 = v3;

      break;
    case 0x14:

      sub_101051C1C(a3);
    case 0x15:
      v4 = a2;
      v5 = v3;

      break;
    case 0x16:

      sub_101051DF4(a3);
    case 0x17:
      v4 = a2;
      v5 = v3;

      break;
    case 0x18:

      sub_1001E57E8(a3);
    case 0x19:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1A:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1B:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1C:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1D:

      sub_101051990(a3);
    default:
      sub_10053508C();
  }

  sub_100103C9C(v4, v5, a3);
}

void sub_100100BE0(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x18:
    case 0x1A:
    case 0x1C:
    case 0x1D:

      sub_100100B80(a2);
    case 1:

      sub_100CD88B8(a2);
    case 4:

      sub_100CD8A98(a2);
    case 9:

      sub_100CD8C78(a2);
    case 0x17:

      sub_100CD8E5C(a2);
    case 0x19:

      sub_100183E00(a2);
    case 0x1B:

      sub_10028820C(a2);
    default:
      sub_10053508C();
  }
}

uint64_t sub_100100D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA2C8(a1, a2);
  sub_1000FA21C(v4 + 88, a2 + 88);
  sub_1000FA0E0(a1 + 168, (a2 + 168));
  v5 = *(a2 + 264);
  v6 = *(a2 + 280);
  v7 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v7;
  *(a1 + 264) = v5;
  *(a1 + 280) = v6;
  v8 = *(a2 + 328);
  v9 = *(a2 + 344);
  v10 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 344) = v9;
  *(a1 + 360) = v10;
  *(a1 + 328) = v8;
  sub_1000FA87C(a1 + 384, (a2 + 384));
  *(a1 + 416) = 0;
  *(a1 + 1224) = 0;
  if (*(a2 + 1224) == 1)
  {
    v11 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v11;
    v12 = *(a2 + 448);
    v13 = *(a2 + 464);
    v14 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v14;
    *(a1 + 448) = v12;
    *(a1 + 464) = v13;
    v15 = *(a2 + 512);
    v16 = *(a2 + 528);
    v17 = *(a2 + 544);
    *(a1 + 556) = *(a2 + 556);
    *(a1 + 528) = v16;
    *(a1 + 544) = v17;
    *(a1 + 512) = v15;
    memcpy((a1 + 576), (a2 + 576), 0x201uLL);
    *(a1 + 1096) = *(a2 + 1096);
    v18 = *(a2 + 1104);
    *(a1 + 1104) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a2 + 1112);
    v20 = *(a2 + 1144);
    *(a1 + 1128) = *(a2 + 1128);
    *(a1 + 1144) = v20;
    *(a1 + 1112) = v19;
    v21 = *(a2 + 1160);
    v22 = *(a2 + 1176);
    v23 = *(a2 + 1192);
    *(a1 + 1201) = *(a2 + 1201);
    *(a1 + 1176) = v22;
    *(a1 + 1192) = v23;
    *(a1 + 1160) = v21;
    *(a1 + 1224) = 1;
  }

  sub_1000FA82C(a1 + 1232, a2 + 1232);
  sub_100105E8C(a1 + 1264, (a2 + 1264));
  sub_1000FA3E4(a1 + 1416, (a2 + 1416));
  sub_1000FB234(a1 + 1448, a2 + 1448);
  return a1;
}

void sub_100100F08(_Unwind_Exception *a1)
{
  if (*(v1 + 1440) == 1 && *(v1 + 1439) < 0)
  {
    operator delete(*v3);
  }

  sub_10067E180(v1 + 1264);
  if (*(v1 + 1256) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *(v1 + 1240) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 1224) == 1)
  {
    v6 = *(v1 + 1104);
    if (v6)
    {
      sub_100008080(v6);
    }
  }

  if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
  {
    operator delete(*(v1 + 384));
  }

  sub_10067E1D0(v1 + 168);
  sub_10067E22C(v1 + 88);
  sub_10067E274(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100100FD0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_1000FF93C(v0 + 224, v1 + 1448);
  if (*(v2 + 1408) == 1)
  {
    v5 = sub_100184100(v3, v2 + 1264);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v6 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, newUpdate, didStart, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD568(v5);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(v2 + 1440) == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v8 = v2 + 1416;
      if (*(v2 + 1439) < 0)
      {
        v8 = *(v2 + 1416);
      }

      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@WsbReproc, reason, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD65C();
    }

    v156[0] = 29;
    sub_1000FFE90(v3, v156);
    sub_1001039FC(v156);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, reprocWsb", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD764();
    }
  }

  if (*(v2 + 80) == 1)
  {
    v10 = *(v2 + 16);
    memset(__p, 0, 24);
    v11 = 0;
    if (v10)
    {
      v12 = v10;
      do
      {
        ++v11;
        v12 = *v12;
      }

      while (v12);
    }

    sub_10018B8F4(__p, v10, 0, v11);
    v13 = (*(**(v3 + 120) + 160))(*(v3 + 120), __p, *(v2 + 40), *(v2 + 41), v2 + 48);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v14 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, alsreq", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      LOWORD(v123) = 0;
      v93 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v93);
      if (v93 != buf)
      {
        free(v93);
      }
    }

    v142 = v13;
    v141 = 21;
    sub_1000FFE90(v3, &v141);
    sub_1001039FC(&v141);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  if (*(v2 + 160) == 1)
  {
    v15 = *(v2 + 104);
    memset(__p, 0, 24);
    v16 = 0;
    if (v15)
    {
      v17 = v15;
      do
      {
        ++v16;
        v17 = *v17;
      }

      while (v17);
    }

    sub_10018B8F4(__p, v15, 0, v16);
    v140 = (*(**(v3 + 120) + 160))(*(v3 + 120), __p, 1, 0, v2 + 128) | dword_100000000;
    v139 = 21;
    sub_1000FFE90(v3, &v139);
    sub_1001039FC(&v139);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v18 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = (*&__p[8] - *__p) >> 3;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, alswsb, aps, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v123 = 134349056;
      v124 = (*&__p[8] - *__p) >> 3;
      v94 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v94);
      if (v94 != buf)
      {
        free(v94);
      }
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  if (*(v2 + 256) != 1)
  {
    v23 = v5;
    goto LABEL_81;
  }

  v19 = *(v3 + 120);
  v20 = *(v2 + 168);
  v21 = *(v2 + 184);
  v22 = *(v2 + 188);
  if (*(v2 + 215) < 0)
  {
    sub_100007244(__dst, *(v2 + 192), *(v2 + 200));
  }

  else
  {
    *__dst = *(v2 + 192);
    v122 = *(v2 + 208);
  }

  if (*(v2 + 248) == 1)
  {
    memset(buf, 0, 24);
    sub_10038EB38(buf, *(v2 + 224), *(v2 + 232), (*(v2 + 232) - *(v2 + 224)) >> 2);
    v24 = 1;
  }

  else
  {
    v24 = 0;
    buf[0] = 0;
  }

  buf[24] = v24;
  v23 = (*(*v19 + 144))(v19, v20, v21 == 1, v22, __dst, buf);
  if (buf[24] == 1 && *buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(__dst[0]);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018FC728();
  }

  v25 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(v2 + 168);
    v27 = "normal";
    v28 = *(v2 + 188);
    if (*(v2 + 184) == 1)
    {
      v27 = "low";
    }

    *buf = 68290050;
    if (v28)
    {
      v29 = "low";
    }

    else
    {
      v29 = "default";
    }

    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v26;
    *&buf[24] = 2082;
    *&buf[26] = v27;
    *&buf[34] = 2082;
    *&buf[36] = v29;
    *&buf[44] = 1026;
    *&buf[46] = v23;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:requesting wifi scan, scan_type:%{public}d, priority:%{public, location:escape_only}s, latency:%{public, location:escape_only}s, scan_request_successful:%{public}hhd}", buf, 0x32u);
    v30 = qword_1025D4630;
    if (v23 & 1 | ((v5 & 1) == 0))
    {
      goto LABEL_75;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

LABEL_71:
    v31 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "value of didStartScan being reset to false after successfully beginning a scan", buf, 2u);
    }

    v32 = sub_10000A100(121, 0);
    v30 = qword_1025D4630;
    if (v32)
    {
      sub_1018FD848();
      v30 = *buf;
    }

LABEL_75:
    if (v30 != -1)
    {
      sub_1018FC728();
    }

    goto LABEL_77;
  }

  if (!(v23 & 1 | ((v5 & 1) == 0)))
  {
    goto LABEL_71;
  }

LABEL_77:
  v33 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = v23;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, scanreq, didStart, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FD944(v23);
  }

LABEL_81:
  if (*(v2 + 268) == 1)
  {
    v34 = *(v2 + 264);
    if (v34 == 1)
    {
      (*(**(v3 + 120) + 168))(*(v3 + 120), 0);
      (*(**(v3 + 120) + 176))(*(v3 + 120), 1);
    }

    else if (!v34)
    {
      (*(**(v3 + 120) + 176))(*(v3 + 120), 0);
      (*(**(v3 + 120) + 168))(*(v3 + 120), 1);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v35 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 264))
      {
        v36 = "powoffajon";
      }

      else
      {
        v36 = "ajoffpowon";
      }

      *buf = 136446210;
      *&buf[4] = v36;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "@WifiLogic, decision, wifipower, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDA38((v2 + 264));
    }
  }

  if (*(v2 + 328) == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v37 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(v2 + 312);
      v39 = *(v2 + 320);
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2049;
      *&buf[20] = v38;
      *&buf[28] = 2049;
      *&buf[30] = v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:requesting wifi tile download, latitude:%{private}f, longitude:%{private}f}", buf, 0x26u);
    }

    (*(**(v3 + 120) + 208))(*(v3 + 120), v2 + 272, *(v2 + 312), *(v2 + 320));
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v40 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(v2 + 312);
      v42 = *(v2 + 320);
      *buf = 134545921;
      *&buf[4] = v41;
      *&buf[12] = 2053;
      *&buf[14] = v42;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, tiledl, %{sensitive}.02f, %{sensitive}.02f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDB50();
    }
  }

  if (*(v2 + 344) == 1)
  {
    v43 = *(v2 + 336);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v44 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v43;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:update schedule of refresh timer, delay_s:%{public}.09f}", buf, 0x1Cu);
    }

    sub_1001E8654(v3, v45, v43);
    *(v3 + 152) = *(v2 + 336) == 15.0;
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v46 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v47 = *(v3 + 152);
      *buf = 134349312;
      *&buf[4] = v43;
      *&buf[12] = 1026;
      *&buf[14] = v47;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, timer, %{public}.1f, reIssue, %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDC64(v43);
    }
  }

  if (*(v2 + 353) == 1)
  {
    sub_1001E8654(v3, v4, 1.79769313e308);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v48 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, timer, cancel", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDD80();
    }
  }

  if (*(v2 + 368) == 1)
  {
    v49 = *(v2 + 360);
    [*(v3 + 144) setNextFireDelay:v49];
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v50 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v49;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, wsbtimer, %{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDE64();
    }
  }

  if (*(v2 + 377) == 1)
  {
    [*(v3 + 144) setNextFireDelay:1.79769313e308];
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v51 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, wsbtimer, cancel", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDF60();
    }
  }

  if (*(v2 + 408) == 1)
  {
    sub_1001E87E0(1u);
    if (qword_1025D4620 != -1)
    {
      sub_1018FE044();
    }

    v52 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v2 + 384;
      if (*(v2 + 407) < 0)
      {
        v53 = *(v2 + 384);
      }

      *buf = 136446210;
      *&buf[4] = v53;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "@ClxWifi, Fix, 0, ll, N/A, reason, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE06C();
    }

    *(v3 + 152) = 0;
    v54 = *(v3 + 120);
    *buf = 9;
    (*(*v54 + 104))(v54, buf, 1);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v55 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, notifyUnavail", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE174();
    }
  }

  if (*(v2 + 1224) == 1)
  {
    sub_100021AFC(__p);
    v56 = *(v2 + 528);
    v104 = *(v2 + 512);
    v105 = v56;
    v106[0] = *(v2 + 544);
    *(v106 + 12) = *(v2 + 556);
    v57 = *(v2 + 464);
    *&__p[32] = *(v2 + 448);
    v102 = v57;
    v58 = *(v2 + 496);
    *v103 = *(v2 + 480);
    *&v103[16] = v58;
    v59 = *(v2 + 432);
    *__p = *(v2 + 416);
    *&__p[16] = v59;
    memcpy(v107, (v2 + 576), sizeof(v107));
    v60 = *(v2 + 1096);
    v61 = *(v2 + 1104);
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v108 = v60;
    v62 = v109;
    v109 = v61;
    if (v62)
    {
      sub_100008080(v62);
    }

    v63 = *(v2 + 1192);
    v114 = *(v2 + 1176);
    v115[0] = v63;
    *(v115 + 9) = *(v2 + 1201);
    v64 = *(v2 + 1128);
    v110 = *(v2 + 1112);
    v111 = v64;
    v65 = *(v2 + 1160);
    v112 = *(v2 + 1144);
    v113 = v65;
    v66 = *(v2 + 4768);
    v67 = *(v2 + 4576);
    v68 = *(v2 + 4592);
    v69 = *&v103[12];
    if (qword_1025D48C0 != -1)
    {
      sub_1018FE258();
    }

    v70 = v66 - v67;
    v71 = v66 - v68;
    v72 = v66 - v69;
    v73 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v74 = v70;
      v75 = v71;
      v76 = v72;
      *buf = 136318467;
      *&buf[4] = "WiFi";
      *&buf[12] = 1024;
      *&buf[14] = 1;
      *&buf[18] = 2053;
      *&buf[20] = *&__p[4];
      *&buf[28] = 2053;
      *&buf[30] = *&__p[12];
      *&buf[38] = 2048;
      *&buf[40] = *&__p[20];
      *&buf[48] = 1024;
      *&buf[50] = *&v103[20];
      *v144 = 2048;
      *&v144[2] = v74;
      *v145 = 2048;
      *&v145[2] = v75;
      *v146 = 1024;
      *&v146[2] = 0;
      *v147 = 2048;
      *&v147[2] = *&__p[28];
      v148 = 2048;
      v149 = *&__p[36];
      v150 = 1024;
      v151 = 0;
      v152 = 2048;
      v153 = v76;
      v154 = 1024;
      v155 = v106[0];
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,TTF,%.3f,sinceReg,%.3f,Confirmed,%d,Altitude,%.2f,VerticalAccuracy,%.2lf,locationSimulated,%d,notifiedLocationAge,%f,integrity,%d", buf, 0x7Au);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1018FE280(buf);
      v95 = v70;
      v96 = v71;
      v97 = v72;
      v123 = 136318467;
      v124 = "WiFi";
      v125 = 1024;
      *v126 = 1;
      *&v126[4] = 2053;
      *&v126[6] = *&__p[4];
      *&v126[14] = 2053;
      *&v126[16] = *&__p[12];
      *&v126[24] = 2048;
      *&v126[26] = *&__p[20];
      *&v126[34] = 1024;
      *&v126[36] = *&v103[20];
      *v127 = 2048;
      *&v127[2] = v95;
      *v128 = 2048;
      *&v128[2] = v96;
      *v129 = 1024;
      *&v129[2] = 0;
      *v130 = 2048;
      *&v130[2] = *&__p[28];
      v131 = 2048;
      v132 = *&__p[36];
      v133 = 1024;
      v134 = 0;
      v135 = 2048;
      v136 = v97;
      v137 = 1024;
      v138 = v106[0];
      v98 = _os_log_send_and_compose_impl();
      sub_100152C7C("LOCATION", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v98);
      if (v98 != buf)
      {
        free(v98);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018FE044();
    }

    v77 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134547713;
      *&buf[4] = *&__p[4];
      *&buf[12] = 2053;
      *&buf[14] = *&__p[12];
      *&buf[22] = 2050;
      *&buf[24] = *&__p[20];
      *&buf[32] = 2049;
      *&buf[34] = *&__p[28];
      *&buf[42] = 2050;
      *&buf[44] = *&__p[36];
      *&buf[52] = 2050;
      *v144 = *&v103[12];
      *&v144[8] = 2050;
      *v145 = *&v103[24];
      *&v145[8] = 1026;
      *v146 = *&v103[20];
      *&v146[4] = 1026;
      *v147 = v106[0];
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "@ClxWifi, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.1f, course, -1.0, alt, %{private}.1f, altunc, %{public}.1f, timestamp, %{public}.2f, lifespan, %{public}.1f, confidence, %{public}d, integrity, %{public}d", buf, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE2C4(buf);
      v123 = 134547713;
      v124 = *&__p[4];
      v125 = 2053;
      *v126 = *&__p[12];
      *&v126[8] = 2050;
      *&v126[10] = *&__p[20];
      *&v126[18] = 2049;
      *&v126[20] = *&__p[28];
      *&v126[28] = 2050;
      *&v126[30] = *&__p[36];
      *&v126[38] = 2050;
      *v127 = *&v103[12];
      *&v127[8] = 2050;
      *v128 = *&v103[24];
      *&v128[8] = 1026;
      *v129 = *&v103[20];
      *&v129[4] = 1026;
      *v130 = v106[0];
      v99 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v99);
      if (v99 != buf)
      {
        free(v99);
      }
    }

    sub_1001E87E0(0);
    v78 = *(v3 + 120);
    *buf = 0;
    (*(*v78 + 112))(v78, buf, __p, 0, 0xFFFFFFFFLL, 0);
    sub_1001E88F8(buf);
    sub_1001E41C8(*buf, __p);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v79 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, notifyLoc", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      LOWORD(v123) = 0;
      v100 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v100);
      if (v100 != buf)
      {
        free(v100);
      }
    }

    if (v119)
    {
      sub_100008080(v119);
    }

    if (v118 < 0)
    {
      operator delete(v117);
    }

    if (v116)
    {
      sub_100008080(v116);
    }

    if (v109)
    {
      sub_100008080(v109);
    }
  }

  if (*(v2 + 1256) == 1)
  {
    if (*(v2 + 1232) != *(v2 + 1240))
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v80 = (v2 + 1232);
      v81 = (v2 + 1240);
      v82 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v83 = 0x6F96F96F96F96F97 * ((*v81 - *v80) >> 2);
        *buf = 134349056;
        *&buf[4] = v83;
        _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "notifying clients of %{public}ld batched wifi locations", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE308();
      }

      sub_100021AFC(__p);
      v84 = *v81;
      v85 = *(*v81 - 140);
      *__p = *(*v81 - 156);
      *&__p[16] = v85;
      v86 = *(v84 - 108);
      v87 = *(v84 - 76);
      v88 = *(v84 - 124);
      *v103 = *(v84 - 92);
      *&v103[16] = v87;
      *&__p[32] = v88;
      v102 = v86;
      v89 = *(v84 - 44);
      v90 = *(v84 - 28);
      v91 = *(v84 - 60);
      *(v106 + 12) = *(v84 - 16);
      v105 = v89;
      v106[0] = v90;
      v104 = v91;
      sub_10031D9F8();
    }

    sub_1018FE418(qword_1025D4630 == -1);
  }

  return v23;
}