void sub_1000BE25C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 >> 7];
      v11 = *v10 + 32 * (v9 & 0x7F);
      v12 = *(v6 + (((*(a1 + 56) + v9) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 56) + v9) & 0x7F);
      if (v11 != v12)
      {
        do
        {
          *buf = v11 + 8;
          sub_1000B96B4(buf);
          v11 += 32;
          if (v11 - *v10 == 4096)
          {
            v13 = v10[1];
            ++v10;
            v11 = v13;
          }
        }

        while (v11 != v12);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v23 = v7 - v6;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v6);
        v24 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v23 = (v24 - v6) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 64;
    }

    else
    {
      if (v23 != 2)
      {
LABEL_26:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3BC18(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019CA4A8();
        }

        v26 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v27 = *v4;
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA4D0();
        }

        return;
      }

      v25 = 128;
    }

    *(a1 + 48) = v25;
    goto LABEL_26;
  }

  memset(buf, 0, 32);
  v14 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    *buf = *(a1 + 96);
    if (buf != v14)
    {
      sub_100288978(&buf[8], *(a1 + 104), *(a1 + 112), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 112) - *(a1 + 104)) >> 3));
    }

    v15 = *(a1 + 48);
    v16 = *(a1 + 24);
    v17 = (v16 + 8 * (v15 >> 7));
    if (*(a1 + 32) == v16)
    {
      v18 = 0;
      v22 = 0;
      v19 = (a1 + 56);
      v21 = (v16 + 8 * ((*(a1 + 56) + v15) >> 7));
    }

    else
    {
      v18 = *v17 + 32 * (*(a1 + 48) & 0x7FLL);
      v19 = (a1 + 56);
      v20 = *(a1 + 56) + v15;
      v21 = (v16 + 8 * (v20 >> 7));
      v22 = *v21 + 32 * (v20 & 0x7F);
    }

    v29 = sub_100A3BF68(v17, v18, v21, v22, *&v2, a1);
    v30 = *(a1 + 48) + *(a1 + 56);
    v31 = *(a1 + 24);
    v32 = (v31 + 8 * (v30 >> 7));
    if (*(a1 + 32) == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = *v32 + 32 * (v30 & 0x7F);
    }

    sub_100A3BCB4((a1 + 16), v29, v28, v32, v33);
    if (!*v19)
    {
      *v14 = 0xBFF0000000000000;
    }
  }

  v34 = &buf[8];
  sub_1000B96B4(&v34);
}

void sub_1000BE628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12)
{
  a10 = &a12;
  sub_1000B96B4(&a10);
  _Unwind_Resume(a1);
}

void sub_1000BE658(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_101D12D00;
  *(a2 + 16) = unk_101D12D10;
  if (*(a1 + 1050) >= 5u)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = sub_1000B7FEC((a1 + 1048), v5);
      v10 = *v9;
      v11 = v9[1];
      if (v11 > 0.0 && v10 != 1.79769313e308)
      {
        v13 = v6++ < 2;
        v14 = v8 + v11;
        v15 = v7 + v10;
        if (!v13)
        {
          ++v4;
          v8 = v14;
          v7 = v15;
        }
      }

      ++v5;
    }

    while (v5 < *(a1 + 1050));
    *(a2 + 16) = v4;
    if (v8 > 0.0)
    {
      v16 = fmin(vabdd_f64(v8, v7) / v8, 1.0);
      *(a2 + 24) = v16;
      v20 = xmmword_101D12CF0;
      v21 = v16;
      sub_10025BE14(&v21, &v22, &v20, 2, 1);
      v17 = v23;
      *(a2 + 8) = v23;
      if (v4 > 5)
      {
        if (v4 > 0x11)
        {
LABEL_16:
          *a2 = v17;
          return;
        }

        v18 = fmax(v17, 0.110000001);
        v19 = 0.889999976;
      }

      else
      {
        v18 = fmax(v17, 0.310000012);
        v19 = 0.689999988;
      }

      v17 = fmin(v18, v19);
      goto LABEL_16;
    }
  }
}

double sub_1000BE7E4(uint64_t a1)
{
  v1 = *(a1 + 1960);
  result = 0.0;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0.49;
      }
    }

    else
    {
      return -1.0;
    }
  }

  else
  {
    if ((v1 - 2) < 3)
    {
      v3 = xmmword_101D12CE0;
      v4 = *(a1 + 1864);
      sub_10025BE14(&v4, v5, &v3, 2, 1);
      return v5[1];
    }

    if (v1 == 5)
    {
      return 0.49;
    }
  }

  return result;
}

void sub_1000BE8A4(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 51;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F99390(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC94C();
        }

        return;
      }

      v10 = 102;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x66));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x66));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x66)) + 40 * (v11 % 0x66));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x66));
      v19 = (*v18 + 40 * (v17 % 0x66));
    }

    v23 = sub_100F9E338(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x66));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 40 * (v24 % 0x66));
    sub_100F3460C((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BEBB8(uint64_t a1, double *a2)
{
  if (*(a1 + 216) == 3)
  {
    v12 = 0;
    *v11 = xmmword_101C78400;
    memset(&v11[2], 0, 135);
    v13 = xmmword_101C78400;
    v14 = 0;
    v15 = 0;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0u;
    v21 = xmmword_101C78400;
    v22 = 0;
    v23 = 0;
    v24 = 0xFFEFFFFFFFFFFFFFLL;
    v35 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v36 = 0u;
    v37 = 0xFFEFFFFFFFFFFFFFLL;
    v38 = 0;
    v39 = 0;
    v44 = 0;
    v45 = 0;
    v50 = 0;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v40 = 0u;
    v41 = 0u;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    memset(v49, 0, sizeof(v49));
    v51 = 0xFFEFFFFFFFFFFFFFLL;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0xFFEFFFFFFFFFFFFFLL;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = -1.79769313e308;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0xFFEFFFFFFFFFFFFFLL;
    v83 = 0u;
    v84 = 0x80000000800000;
    v85 = 0u;
    v86 = xmmword_101C78410;
    v87 = 0x80000000800000;
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
    v91 = 0xFFEFFFFFFFFFFFFFLL;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0;
    v99 = 0xFFEFFFFFFFFFFFFFLL;
    v100 = 0;
    v101 = 0;
    v102 = 0xFFEFFFFFFFFFFFFFLL;
    v103 = 7;
    v104 = 0xFFEFFFFFFFFFFFFFLL;
    v105 = 0;
    v107 = 0;
    v106 = 0u;
    v7 = 6;
    v9 = 0;
    v10 = 0;
    __p = 0;
    sub_1004579D4(&__p, &v7, &__p, 1uLL);
    sub_1000C2B7C(a2, &__p, v11);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v77 == -1.79769313e308)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      if (v78 && v78 != 25)
      {
        v4 = v81;
      }
    }

    v5 = (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 48)) < 420.0) | v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000BEE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BEE88(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4.n128_u64[0] = sub_100A9A1F0(v2, *a1);
    v4.n128_u64[1] = v3;
    sub_100F9AC80(*a1, &v4);
  }
}

uint64_t sub_1000BEED0(uint64_t a1)
{
  if (*(a1 + 8) != 1 && *(a1 + 104) >= 1)
  {
    sub_10026ED10(a1 + 96);
  }

  return sub_1000C04C8(a1);
}

uint64_t sub_1000BEF2C(double *a1, int **a2, double *a3)
{
  v4 = a1[14];
  v5 = v4 != -1.0;
  if (v4 != -1.0 && v4 > -1.79769313e308)
  {
    v6 = a1[14];
  }

  else
  {
    v6 = -1.79769313e308;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v10 = *v7;
      if (*v7 > 6)
      {
        if (v10 > 9)
        {
          switch(v10)
          {
            case 10:
              v13 = (*(**a1 + 176))();
              goto LABEL_33;
            case 11:
              v13 = (*(**a1 + 192))();
              goto LABEL_33;
            case 12:
              v13 = (*(**a1 + 200))();
              goto LABEL_33;
          }
        }

        else
        {
          switch(v10)
          {
            case 7:
              v13 = (*(**a1 + 160))();
              goto LABEL_33;
            case 8:
              v13 = (*(**a1 + 136))();
              goto LABEL_33;
            case 9:
              v11 = (*(**a1 + 168))();
LABEL_16:
              v12 = *(v11 + 136);
LABEL_34:
              if (v12 != -1.0 && v12 > v6)
              {
                v6 = v12;
              }

              v5 &= v12 != -1.0;
              break;
          }
        }
      }

      else if (v10 > 3)
      {
        switch(v10)
        {
          case 4:
            v12 = *((*(**a1 + 128))() + 104);
            goto LABEL_34;
          case 5:
            v13 = (*(**a1 + 144))();
LABEL_33:
            v12 = *(v13 + 96);
            goto LABEL_34;
          case 6:
            v13 = (*(**a1 + 152))();
            goto LABEL_33;
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            v12 = *((*(**a1 + 104))() + 360);
            goto LABEL_34;
          case 2:
            v13 = (*(**a1 + 120))();
            goto LABEL_33;
          case 3:
            v11 = (*(**a1 + 112))();
            goto LABEL_16;
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  *a3 = v6;
  return v5 & 1;
}

void sub_1000BF264(uint64_t a1, int a2, double a3)
{
  if (*(a1 + 216) > 2u)
  {
    return;
  }

  if (sub_1000C0620(*(a1 + 104)) > 0.0 && (*(a1 + 32) & 1) != 0)
  {
    if (sub_100E34B78(a1, a3))
    {
      return;
    }

    v6 = *(a1 + 216);
    if (v6 == 2)
    {
      if (*(a1 + 236) < *(a1 + 232))
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DA68();
        }

        v17 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 232);
          v18 = *(a1 + 236);
          *buf = 134349568;
          v37 = a3;
          v38 = 1026;
          *v39 = v18;
          *&v39[4] = 1026;
          *&v39[6] = v19;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DC44();
          }

          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundEscalationManager::handleStairsEscalation(CFAbsoluteTime, BOOL)", "%s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        *(a1 + 8) = a3;
        *(a1 + 224) = a3;
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DC44();
        }

        v20 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 8);
          *buf = 134349056;
          v37 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery startTime set to %{public}.1f", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_52;
        }

LABEL_51:
        sub_101A9DE74();
LABEL_52:
        v22 = *(a1 + 240) + 1;
        *(a1 + 236) = *(a1 + 232);
        *(a1 + 240) = v22;
        return;
      }

      if (*(a1 + 224) + 180.0 >= a3)
      {
        return;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_101A9DA68();
      }

      v27 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v28 = a3 - *(a1 + 48);
        v29 = *(a1 + 240);
        v30 = *(a1 + 8);
        v31 = *(a1 + 16);
        *buf = 134350080;
        v37 = a3;
        v38 = 2050;
        *v39 = v28;
        *&v39[8] = 1026;
        v40 = v29;
        v41 = 2050;
        v42 = v30;
        v43 = 2050;
        v44 = v31;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, escalation end time : %{public}f, escalation duration : %{public}f, total number of floors ascended : %{public}u, recoveryStart : %{public}f, recoveryEnd : %{public}f", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9E060(a1, a3);
      }

      *(a1 + 16) = a3;
      if (qword_1025D43F0 != -1)
      {
        sub_101A9DC44();
      }

      v32 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a1 + 16);
        *buf = 134349056;
        v37 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery endTime set to %{public}f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9E1A0();
      }

      v25 = a1;
      v26 = 1;
    }

    else
    {
      if (v6 != 1)
      {
        if (!v6 && a2)
        {
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DA68();
          }

          v7 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v37 = a3;
            _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation triggered, timestamp : %{public}f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A9DF60(a3);
          }

          (*(**(a1 + 104) + 16))(*(a1 + 104));
          *(a1 + 216) = 1;
          *(a1 + 48) = a3;
          *(a1 + 34) = 0;
          *buf = 0;
          v8 = sub_1000206B4();
          if (byte_10265F2CF >= 0)
          {
            v9 = &qword_10265F2B8;
          }

          else
          {
            v9 = qword_10265F2B8;
          }

          sub_10005BBE4(v8, v9, buf);
          *(a1 + 336) = *buf;
          if (*(a1 + 176))
          {
            if ((*(a1 + 33) & 1) == 0)
            {
              Current = CFAbsoluteTimeGetCurrent();
              sub_100E34518(a1 + 152, 0, 0, 11, Current);
              *(a1 + 33) = 1;
            }
          }
        }

        return;
      }

      if (*(a1 + 236) < *(a1 + 232))
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DA68();
        }

        v12 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 232);
          v13 = *(a1 + 236);
          *buf = 134349568;
          v37 = a3;
          v38 = 1026;
          *v39 = v13;
          *&v39[4] = 1026;
          *&v39[6] = v14;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DC44();
          }

          v34 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundEscalationManager::handleStairsEscalation(CFAbsoluteTime, BOOL)", "%s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        *(a1 + 8) = a3;
        *(a1 + 216) = 2;
        *(a1 + 224) = a3;
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DC44();
        }

        v15 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 8);
          *buf = 134349056;
          v37 = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery startTime set to %{public}.1f", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (a3 - *(a1 + 48) <= 30.0)
      {
        return;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_101A9DA68();
      }

      v23 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 48);
        *buf = 134349312;
        v37 = a3;
        v38 = 2050;
        *v39 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, deescalated due to no confirmed flight, timestamp : %{public}f, escalationOnsetTime : %{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9DD60((a1 + 48), a3);
      }

      v25 = a1;
      v26 = 4;
    }

    sub_1000C066C(v25, v26);
    return;
  }

  if (sub_1000C0620(*(a1 + 104)) <= 0.0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 6;
  }

  sub_1000C066C(a1, v11);
  if (*(a1 + 208))
  {

    sub_1000B92AC(a1 + 184, 0);
  }
}

void sub_1000BFAE8(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_10025C2EC;
    v8[4] = nullsub_84;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BFC2C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1000BFC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BFC2C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 80;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

double sub_1000BFCAC(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000BFD70(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000BFD70(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000BFD70(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1000BFD70@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 5 >= v11 >> 5 ? v11 >> 5 : (a3 - v9) >> 5;
      if (v12)
      {
        __src = memmove(__dst, v9, 32 * v12);
      }

      v9 += 32 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 32 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1000BFE3C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x80)
  {
    a2 = 1;
  }

  if (v5 < 0x100)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1000BFEAC(uint64_t a1, double *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = sub_1000C0620(*(a1 + 88)) > 0.0;
    sub_100A8C4D4(v4, a2, v5);
  }

  if (*(a1 + 216) == 3)
  {
    ++*(a1 + 56);
  }

  if (sub_1000BEBB8(a1, a2))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Background escalation manager consuming more power than workout alerts", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9DB60();
    }

    v8 = a1 + 88;
    v7 = *(a1 + 88);
    ++*(a1 + 60);
    if (sub_1000C0620(v7) <= 0.0)
    {
      (*(**(a1 + 72) + 16))(*(a1 + 72));
    }

    else
    {
      (*(**(a1 + 88) + 16))(*(a1 + 88));
      v8 = a1 + 72;
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Background escalation manager not consuming more power than workout alerts", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9DA7C();
    }

    (*(**(a1 + 72) + 24))(*(a1 + 72));
    v8 = a1 + 88;
  }

  (*(**v8 + 24))();
  if ((atomic_load_explicit(&qword_10265F2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265F2E8))
  {
    *buf = 8;
    qword_10265F2D8 = 0;
    unk_10265F2E0 = 0;
    qword_10265F2D0 = 0;
    sub_1004579D4(&qword_10265F2D0, buf, &buf[4], 1uLL);
    __cxa_atexit(sub_10051F310, &qword_10265F2D0, dword_100000000);
    __cxa_guard_release(&qword_10265F2E8);
  }

  v22 = 0;
  *buf = xmmword_101C78400;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v23 = xmmword_101C78400;
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0u;
  v31 = xmmword_101C78400;
  v32 = 0;
  v33 = 0;
  v34 = 0xFFEFFFFFFFFFFFFFLL;
  v45 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v46 = 0u;
  v47 = 0xFFEFFFFFFFFFFFFFLL;
  v48 = 0;
  v49 = 0;
  v54 = 0;
  v55 = 0;
  v60 = 0;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  memset(v59, 0, sizeof(v59));
  v61 = -1.79769313e308;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0xFFEFFFFFFFFFFFFFLL;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0xFFEFFFFFFFFFFFFFLL;
  v93 = 0u;
  v94 = 0x80000000800000;
  v95 = 0u;
  v96 = xmmword_101C78410;
  v97 = 0x80000000800000;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  v101 = 0xFFEFFFFFFFFFFFFFLL;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0;
  v109 = 0xFFEFFFFFFFFFFFFFLL;
  v110 = 0;
  v111 = 0;
  v112 = 0xFFEFFFFFFFFFFFFFLL;
  v113 = 7;
  v114 = 0xFFEFFFFFFFFFFFFFLL;
  v115 = 0;
  v117 = 0;
  v116 = 0u;
  sub_1000C2B7C(a2, &qword_10265F2D0, buf);
  if (v61 != -1.79769313e308)
  {
    if (*(a1 + 244))
    {
      *(a1 + 232) = DWORD2(v66);
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A9DC44();
      }

      v10 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67240192;
        v12[1] = DWORD2(v66);
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Background escalation manager updating floors ascended baseline: %{public}u ", v12, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9DC6C(buf);
      }

      v11 = DWORD2(v66);
      *(a1 + 232) = DWORD2(v66);
      *(a1 + 236) = v11;
      *(a1 + 244) = 1;
    }

    if (*(a1 + 216) != 3)
    {
      sub_1000BF264(a1, 0, *(&v62 + 1));
    }
  }
}

uint64_t sub_1000C042C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_1000C04C8(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    if (qword_1025D43F0 != -1)
    {
      sub_101992490();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      v3 = (v1 + 24);
      if (*(v1 + 47) < 0)
      {
        v3 = *v3;
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "NonInterruptingTimer, %s, stopTimer", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019927C0(v1);
    }

    v4 = sub_1000C0620(v1);
    result = sub_10099E4A0(v1, v4);
    *(v1 + 8) = 1;
  }

  return result;
}

double sub_1000C05D0(uint64_t a1)
{
  v5 = 0.0;
  v2 = sub_1000206B4();
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  sub_1000B9370(v2, v3, &v5);
  return v5;
}

double sub_1000C0620(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000C05D0(a1);
  if (!v2)
  {
    return v3 - (sub_1000081AC() - *(a1 + 16));
  }

  return v3;
}

void sub_1000C066C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 216) - 1) <= 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_1000C0620(*(a1 + 104));
      v8 = 134349056;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, deescalating, remaining budget : %{public}f", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9E880(a1);
    }

    (*(**(a1 + 104) + 24))(*(a1 + 104));
    sub_10099E5C0(*(a1 + 104));
    Current = CFAbsoluteTimeGetCurrent();
    v7 = Current;
    if (*(a1 + 176) && (*(a1 + 34) & 1) == 0)
    {
      sub_100E34518(a1 + 152, 1, a2, 11, Current);
      *(a1 + 34) = 1;
    }

    if (*(a1 + 336) == 3 && v7 - *(a1 + 48) >= 30.0)
    {
      sub_100E34CD0(a1);
    }

    *(a1 + 48) = 0xBFF0000000000000;
    *(a1 + 216) = 0;
    *(a1 + 33) = 0;
    *(a1 + 336) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 237) = 0;
    *(a1 + 320) = *(a1 + 312);
  }
}

void sub_1000C0828(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onStairsEscalationEnableDisable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onStairsEscalationEnableDisable, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  v6 = sub_100023ED4(0);
  (*(*v6 + 168))(v6, a1);
  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000C0A10(uint64_t a1, void *a2)
{
  LOBYTE(v5) = 80;
  HIBYTE(v5) = a2;
  if (qword_1025D43F0 != -1)
  {
    sub_101ADDB9C();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v7 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Sending stair escalation toggle update to the AOP,should enable,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADEA98(a2);
  }

  sub_1000BFAE8(a1 + 192, &v5, 0);
}

uint64_t sub_1000C0B18(uint64_t a1, uint64_t a2)
{
  if ((sub_1000C0620(*(a1 + 72)) > 0.0 || sub_1000C0620(*(a1 + 88)) > 0.0) && *(a1 + 32) == 1)
  {
    if (*a2 && *(a2 + 2) && *(a2 + 4) > 0.0)
    {
      return 0;
    }

    v5 = *(a1 + 24);
    goto LABEL_13;
  }

  result = 0;
  if (*a2 && *(a2 + 2) && *(a2 + 4) > 0.0)
  {
    v5 = 0;
LABEL_13:
    *a2 = v5;
    return 1;
  }

  return result;
}

uint64_t sub_1000C0BC0(uint64_t a1)
{
  result = sub_1000C0CAC(*(a1 + 632));
  if (result == 2 && *(a1 + 656) != 1 && *(a1 + 24) == 2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v3 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Workout predictor - keeping GPS alive because we're in an outdoor run escalation", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A6872C();
    }

    v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
    return sub_1006AE61C(v4);
  }

  return result;
}

uint64_t sub_1000C0CAC(uint64_t a1)
{
  if ((a1 - 1) > 0x5E)
  {
    return 26;
  }

  else
  {
    return qword_101D076D8[a1 - 1];
  }
}

void sub_1000C0CD0(double *a1, double a2)
{
  sub_1000B0EAC((a1 + 1), a2);
  if ((*(*a1 + 88))(a1))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[10];
    if (qword_1025D44D0 != -1)
    {
      sub_101A5D6C0();
    }

    v5 = vabdd_f64(Current, v4);
    v6 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 12);
      v8 = *(a1 + 7);
      v9 = sub_1000C14FC((a1 + 65));
      v10 = *(a1 + 9);
      *buf = 134219008;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      *v83 = v8;
      *&v83[4] = 2048;
      *&v83[6] = v9;
      *&v83[14] = 2048;
      *&v83[16] = v10;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor,TimeExceeded,maxAllowed,%f,timePassed,%f,locType,%d,distance,%f,outdoorProbability,%f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5DB70(a1, v11, v12, v13, v14, v15, v16, v17, v5);
    }

    *(a1 + 112) = 1;
    (*(*a1 + 72))(a1, 1, a1 + 7);
  }

  else
  {
    v18 = (*(**(a1 + 4) + 32))(*(a1 + 4));
    sub_1000C042C(v18);
    if (*(a1 + 113) == 1)
    {
      v19 = (*(**(a1 + 4) + 56))(*(a1 + 4));
      sub_100A3B3B4(v19);
      v20 = (*(**(a1 + 4) + 40))(*(a1 + 4));
      sub_1006AE61C(v20);
    }

    v21 = ((*(**(a1 + 4) + 32))(*(a1 + 4)) + 96);
    if (*v21 != -1.0)
    {
      memcpy(__dst, v21, sizeof(__dst));
      if (a1[11] == -1.79769313e308)
      {
        a1[11] = *__dst;
        sub_100F79F30((a1 + 78), __dst);
        memcpy(a1 + 15, __dst, 0x148uLL);
      }

      else
      {
        v22 = a1[15];
        v23 = a1[48];
        v24 = CFAbsoluteTimeGetCurrent();
        sub_1000BC774(a1 + 65, v22, v23, v24);
        memcpy(a1 + 15, __dst, 0x148uLL);
        sub_1000BCED8((a1 + 78), &v59, v24);
        if (vabdd_f64(CFAbsoluteTimeGetCurrent(), a1[10]) <= fmin(a1[12], 110.0))
        {
          v27 = v60;
        }

        else
        {
          v25 = sub_1000C14FC((a1 + 65));
          v26 = &v60;
          if (v25 > 100.0)
          {
            v26 = &v59;
          }

          v27 = *v26;
        }

        v28 = sub_1000BCBB0((a1 + 65), v24);
        v29 = sub_1000BC880((a1 + 56), v24);
        v30 = sub_1000C14FC((a1 + 65));
        v31 = sub_1000C1520(v27, v28, v29, v30);
        v32 = a1[7];
        v33 = a1[8];
        v34 = *(a1 + 9);
        sub_1000C1738(a1, buf, v31);
        *(a1 + 7) = *buf;
        a1[9] = *&buf[16];
        if (*(a1 + 8) != *&v33 || *(a1 + 7) != *&v32)
        {
          if (qword_1025D44D0 != -1)
          {
            sub_101A5DB48();
          }

          v35 = qword_1025D44D8;
          if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
          {
            v37 = a1[8];
            v36 = *(a1 + 9);
            v38 = *(a1 + 7);
            *buf = 134351104;
            *&buf[4] = v34;
            *&buf[12] = 2050;
            *&buf[14] = v33;
            *&buf[22] = 2050;
            *v83 = v32;
            *&v83[8] = 2050;
            *&v83[10] = v36;
            *&v83[18] = 2050;
            *&v83[20] = v27;
            v84 = 2050;
            v85 = v28;
            v86 = 2050;
            v87 = v29;
            v88 = 2050;
            v89 = v37;
            v90 = 2050;
            v91 = v38;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor,update,old probability,%{public}f,confidence,%{public}ld,state,%{public}ld,new probability,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdor,%{public}f,confidence,%{public}ld,state,%{public}ld", buf, 0x5Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D44D0 != -1)
            {
              sub_101A5DB48();
            }

            v55 = a1[8];
            v54 = a1[9];
            v56 = *(a1 + 7);
            v62 = 134351104;
            v63 = v34;
            v64 = 2050;
            v65 = v33;
            v66 = 2050;
            v67 = v32;
            v68 = 2050;
            v69 = v54;
            v70 = 2050;
            v71 = v27;
            v72 = 2050;
            v73 = v28;
            v74 = 2050;
            v75 = v29;
            v76 = 2050;
            v77 = v55;
            v78 = 2050;
            v79 = v56;
            v57 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorOutdoorDetectorWatch::update(CFAbsoluteTime)", "%s\n", v57);
            if (v57 != buf)
            {
              free(v57);
            }
          }

          if ((*(a1 + 113) & 1) == 0)
          {
            (*(*a1 + 72))(a1, 0, a1 + 7);
          }
        }

        v39 = CFAbsoluteTimeGetCurrent();
        v40 = a1[10];
        if (qword_1025D44D0 != -1)
        {
          v58 = v39;
          sub_101A5DB48();
          v39 = v58;
        }

        v41 = vabdd_f64(v39, v40);
        v42 = qword_1025D44D8;
        if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
        {
          v43 = v59;
          v44 = v60;
          v45 = sub_1000C14FC((a1 + 65));
          v47 = *(a1 + 7);
          v46 = *(a1 + 8);
          *buf = 134351360;
          *&buf[4] = v43;
          *&buf[12] = 2050;
          *&buf[14] = v44;
          *&buf[22] = 2050;
          *v83 = v41;
          *&v83[8] = 2050;
          *&v83[10] = v45;
          *&v83[18] = 2050;
          *&v83[20] = v27;
          v84 = 2050;
          v85 = v28;
          v86 = 2050;
          v87 = v29;
          v88 = 2050;
          v89 = v31;
          v90 = 2050;
          v91 = v46;
          v92 = 2050;
          v93 = v47;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "IndoorOutdoor,probabilities,llr,%{public}f,discordant,%{public}f,timeSinceStart,%{public}f,totalDistance,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdoor,%{public}f,probability,%{public}f,confidence,%{public}ld,location,%{public}ld", buf, 0x66u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D44D0 != -1)
          {
            sub_101A5DB48();
          }

          v48 = v59;
          v49 = v60;
          v50 = sub_1000C14FC((a1 + 65));
          v52 = *(a1 + 7);
          v51 = *(a1 + 8);
          v62 = 134351360;
          v63 = v48;
          v64 = 2050;
          v65 = v49;
          v66 = 2050;
          v67 = v41;
          v68 = 2050;
          v69 = v50;
          v70 = 2050;
          v71 = v27;
          v72 = 2050;
          v73 = v28;
          v74 = 2050;
          v75 = v29;
          v76 = 2050;
          v77 = v31;
          v78 = 2050;
          v79 = v51;
          v80 = 2050;
          v81 = v52;
          v53 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorOutdoorDetectorWatch::update(CFAbsoluteTime)", "%s\n", v53);
          if (v53 != buf)
          {
            free(v53);
          }
        }
      }
    }
  }
}

double sub_1000C14FC(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v1 == v2)
  {
    return 0.0;
  }

  else
  {
    return *(v2 - 8) - *(v1 + 8);
  }
}

double sub_1000C1520(double a1, float a2, float a3, double a4)
{
  v4 = a1;
  if (a4 > 100.0)
  {
    a4 = 100.0;
  }

  v5 = a4 * 0.819 / 100.0 + (100.0 - a4) * 0.7 / 100.0;
  v6 = 1.0 - a2;
  if (a2 == -1.0)
  {
    v6 = a2;
    v7 = 0.5;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0.3)
  {
    v5 = a4 * 0.977 / 100.0 + (100.0 - a4) * 0.0 / 100.0;
  }

  if (a2 == -1.0)
  {
    v8 = 0.1;
  }

  else
  {
    v8 = v5;
  }

  v9 = a3;
  v10 = a3 == -1.0;
  if (a3 == -1.0)
  {
    v11 = 0.1;
  }

  else
  {
    v11 = dbl_101CF7710[a3 >= 0.5];
  }

  if (v10)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = v9;
  }

  v13 = a1;
  if (a1 == -1.0)
  {
    v14 = 0.1;
  }

  else
  {
    v14 = dbl_101CF7720[v13 >= 0.5] * a4 / 100.0 + (100.0 - a4) * 0.1 / 100.0;
  }

  if (a1 == -1.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 + v11 + v8;
  v17 = v16;
  v18 = v11 / v16;
  v29 = pow(v12, v18);
  v19 = v8 / v17;
  v28 = pow(v7, v19);
  v20 = v14 / v17;
  v27 = pow(v15, v20);
  v21 = pow(1.0 - v12, v18);
  v22 = pow(1.0 - v7, v19);
  v23 = pow(1.0 - v15, v20);
  if (v4 == -1.0 || v4 >= 0.100000001 && v4 <= 0.899999976)
  {
    v24 = v27 * (v29 * v28);
    v25 = v23 * (v21 * v22);
    return (v24 / (v24 + v25));
  }

  return v4;
}

uint64_t sub_1000C1738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  result = (*(*a1 + 80))(a1);
  if ((a3 <= 0.525 || a3 > 0.7) && (a3 <= 0.3 || a3 > 0.45))
  {
    if ((a3 <= 0.7 || a3 > 0.9) && (a3 <= 0.1 || a3 > 0.3))
    {
      if (a3 <= 0.9 || a3 > 1.0)
      {
        v9 = a3 <= 0.1 && a3 > 0.0;
        v6 = 3;
        if (!v9 && fabsf(a3) > 0.001)
        {
          if (qword_1025D44D0 != -1)
          {
            sub_101A5D6C0();
          }

          v10 = qword_1025D44D8;
          if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
          {
            v19 = 134349056;
            v20 = a3;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "IndoorOutdoor, low confidence estimate,probability,%{public}f", &v19, 0xCu);
          }

          v11 = sub_10000A100(121, 2);
          if (v11)
          {
            sub_101A5DCC8(v11, v12, v13, v14, v15, v16, v17, v18, a3);
          }

          v6 = 0;
          result = 0;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t sub_1000C1920(float a1)
{
  if (a1 <= 0.5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1000C1934(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 144);
  v4 = *(a1 + 160);
  if (v4 <= 2)
  {
    operator new();
  }

  v5 = *v3;
  v6 = *(a2 + 80);
  v7 = v6 - *(*v3 + 12);
  if (v7 > 0.0 && v7 < 9.0)
  {
    v15 = *(a1 + 152);
    if (v15 != v3)
    {
      v16 = 0;
      while (1)
      {
        if (*(v15 + 16) == *a2)
        {
          ++v16;
        }

        if (v16 >= 2)
        {
          break;
        }

        v15 = *(v15 + 8);
        if (v15 == v3)
        {
          goto LABEL_16;
        }
      }

      *(a1 + 8) = *a2;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      v19 = *(a2 + 48);
      *(a1 + 72) = *(a2 + 64);
      *(a1 + 56) = v19;
      *(a1 + 40) = v18;
      *(a1 + 24) = v17;
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 112);
      *(a1 + 136) = *(a2 + 128);
      *(a1 + 120) = v22;
      *(a1 + 104) = v21;
      *(a1 + 88) = v20;
      v6 = *(a2 + 80);
    }

LABEL_16:
    *(a1 + 88) = v6;
  }

  else
  {
    *(a1 + 8) = *a2;
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    *(a1 + 72) = *(a2 + 64);
    *(a1 + 56) = v11;
    *(a1 + 40) = v10;
    *(a1 + 24) = v9;
    v12 = *(a2 + 80);
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 120) = v14;
    *(a1 + 104) = v13;
    *(a1 + 88) = v12;
  }

  v24 = *v5;
  v23 = v5[1];
  *(v24 + 8) = v23;
  *v23 = v24;
  *(a1 + 160) = v4 - 1;
  operator delete(v5);
  operator new();
}

uint64_t sub_1000C1B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = *(result + 120);
  *(a2 + 96) = *(result + 104);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(result + 136);
  v4 = *(result + 24);
  v5 = *(result + 56);
  *(a2 + 32) = *(result + 40);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(result + 72);
  *(a2 + 80) = v2;
  *a2 = *(result + 8);
  *(a2 + 16) = v4;
  if (*result)
  {
    *a2 = *result;
  }

  return result;
}

void sub_1000C1B94(uint64_t a1, uuid_t dst)
{
  if (*a1)
  {
    uuid_copy(dst, (a1 + 168));
  }

  else
  {
    uuid_clear(dst);
  }
}

void sub_1000C1BB4(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_1000C20C0();
    }
  }
}

void sub_1000C208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1000C2174(void *a1, int *a2, void *a3)
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
        v10 = sub_1000C2530(a3);
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
              sub_1000C25CC(a1, &v36, &v37, a3);
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
                sub_1019013B8();
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
                  sub_1019013B8();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

id sub_1000C2530(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1006A32F8(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1000C2978(a1);
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1000C25CC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000C2530(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_1000C26C4(__int128 *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];

  return sub_1000C2718(a2, a1);
}

uint64_t sub_1000C2718(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v39 = a2[6];
  v40 = v3;
  v4 = a2[9];
  v41 = a2[8];
  v42 = v4;
  v5 = a2[3];
  v35 = a2[2];
  v36 = v5;
  v6 = a2[5];
  v37 = a2[4];
  v38 = v6;
  v7 = a2[1];
  v33 = *a2;
  v34 = v7;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(&v28, 0, sizeof(v28));
  sub_1000B0BE8(&v33, &v28);
  if (CLMotionActivity::isTypeStatic())
  {
    v9 = *(a1 + 656);
    *(a1 + 656) = v9 + 1;
    if (v9 <= 2)
    {
      v28.confidence = 0;
    }
  }

  else
  {
    *(a1 + 656) = 0;
  }

  if ((CLMotionActivity::isSimilar((a1 + 112), &v28, v8) & 1) == 0)
  {
    sub_10123D1BC(a1, &v33);
    sub_1005C2E8C((a1 + 112), &v28.type);
    sub_1005C2E98(a1, &v28);
    sub_1005C3158(a1, &v28);
    sub_1005C32F4(a1);
    v10 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v18 = v33;
    v19 = v34;
    v17[2] = sub_10123D290;
    v17[3] = &unk_1024D8758;
    v17[4] = a1;
    [v10 async:v17];
  }

  v11 = *(a1 + 531);
  v12 = *(a1 + 536);
  Current = CFAbsoluteTimeGetCurrent();
  v14 = sub_1000C456C(a1, v12, Current);
  sub_1000C3344(a1, v11, v14);
  v43.type = 10;
  result = sub_10000608C(a1, &v43.type, 1);
  if (result)
  {
    v16 = 10;
    v45 = v30;
    v46 = v31;
    v47 = v32;
    v43 = v28;
    v44 = v29;
    return (*(*a1 + 152))(a1, &v16, &v43, 0, 0xFFFFFFFFLL, 0);
  }

  return result;
}

id sub_1000C2978(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101905D00();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101905F0C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101905D00();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101906008();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1000C2B7C(double *a1, int **a2, uint64_t a3)
{
  v35 = 0.0;
  v6 = sub_1000BEF2C(a1, a2, &v35);
  memset(&v36[6], 0, 24);
  *(a3 + 160) = xmmword_101C78400;
  *(a3 + 152) = 0;
  *a3 = xmmword_101C78400;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 143) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 205) = 0;
  *(a3 + 214) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = xmmword_101C78400;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 376) = 0;
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 441) = 0u;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 496) = 0;
  *(a3 + 504) = 0;
  *(a3 + 592) = 0;
  *(a3 + 600) = 0;
  *(a3 + 572) = 0u;
  *(a3 + 544) = 0u;
  *(a3 + 560) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 616) = *&v36[14];
  *(a3 + 602) = *v36;
  *(a3 + 640) = 0;
  *(a3 + 632) = 0;
  *(a3 + 656) = 0;
  *(a3 + 651) = 0;
  *(a3 + 644) = 0;
  *(a3 + 664) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 960) = 0u;
  *(a3 + 976) = 0u;
  *(a3 + 928) = 0u;
  *(a3 + 944) = 0u;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0u;
  *(a3 + 864) = 0u;
  *(a3 + 880) = 0u;
  *(a3 + 832) = 0u;
  *(a3 + 848) = 0u;
  *(a3 + 800) = 0u;
  *(a3 + 816) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 992) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1000) = 0u;
  *(a3 + 1016) = 0u;
  *(a3 + 1032) = 0u;
  *(a3 + 1048) = 0u;
  *(a3 + 1064) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1072) = 0;
  *(a3 + 1080) = 0;
  *(a3 + 1088) = 0;
  *(a3 + 1096) = 0;
  *(a3 + 1104) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1112) = 0u;
  *(a3 + 1128) = 0x80000000800000;
  *(a3 + 1136) = 0u;
  *(a3 + 1152) = xmmword_101C78410;
  *(a3 + 1168) = 0x80000000800000;
  *(a3 + 1208) = 0;
  *(a3 + 1176) = 0u;
  *(a3 + 1192) = 0u;
  *(a3 + 1216) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1224) = 0u;
  *(a3 + 1240) = 0u;
  *(a3 + 1256) = 0u;
  *(a3 + 1272) = 0u;
  *(a3 + 1288) = 0u;
  *(a3 + 1304) = 0u;
  *(a3 + 1320) = 0;
  *(a3 + 1328) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1336) = 0;
  *(a3 + 1340) = 0;
  *(a3 + 1344) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1352) = 7;
  *(a3 + 1360) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1368) = 0;
  *(a3 + 1388) = 0;
  *(a3 + 1372) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v8 != v7)
  {
    v9 = v35;
    do
    {
      switch(*v8)
      {
        case 0:
          v6 &= sub_1000BB630((a1 + 1), a3, v9);
          sub_100A3B02C((a1 + 1));
          break;
        case 1:
          v24 = (*(**a1 + 104))();
          v6 &= sub_100F989C4(v24, (a3 + 160), v9);
          v25 = (*(**a1 + 104))();
          sub_100F98AA4(v25);
          break;
        case 2:
          v18 = (*(**a1 + 120))();
          v6 &= sub_1000B6BF0(v18, (a3 + 288), v9);
          v19 = (*(**a1 + 120))();
          sub_1006AE61C(v19);
          break;
        case 3:
          v20 = (*(**a1 + 112))();
          v6 &= sub_100F98B40(v20, (a3 + 224), v9);
          v21 = (*(**a1 + 112))();
          sub_100F98C20(v21);
          break;
        case 4:
          v12 = (*(**a1 + 128))();
          v6 &= sub_100F98CBC(v12, a3 + 480, v9);
          v13 = (*(**a1 + 128))();
          sub_100F98DF4(v13);
          break;
        case 5:
          v26 = (*(**a1 + 144))();
          v6 &= sub_1000B6E08(v26, a3 + 992, v9);
          v27 = (*(**a1 + 144))();
          sub_10069B530(v27);
          break;
        case 6:
          v28 = (*(**a1 + 152))();
          v6 &= sub_100F98E90(v28, a3 + 1064, v9);
          v29 = (*(**a1 + 152))();
          sub_100F98F90(v29);
          break;
        case 7:
          v22 = (*(**a1 + 160))();
          v6 &= sub_1000B6E08(v22, a3 + 1104, v9);
          v23 = (*(**a1 + 160))();
          sub_100A3B3B4(v23);
          break;
        case 8:
          v32 = (*(**a1 + 136))();
          v6 &= sub_1000BC63C(v32, (a3 + 664), v9);
          v33 = (*(**a1 + 136))();
          sub_1000C042C(v33);
          break;
        case 9:
          v16 = (*(**a1 + 168))();
          v6 &= sub_100F9902C(v16, a3 + 1176, v9);
          v17 = (*(**a1 + 168))();
          sub_100F99158(v17);
          break;
        case 10:
          v30 = (*(**a1 + 176))();
          v6 &= sub_1000BC56C(v30, (a3 + 1328), v9);
          v31 = (*(**a1 + 176))();
          sub_1006ACA0C(v31);
          break;
        case 11:
          v10 = (*(**a1 + 192))();
          v6 &= sub_1000BC56C(v10, (a3 + 1344), v9);
          v11 = (*(**a1 + 192))();
          sub_100F991F4(v11);
          break;
        case 12:
          v14 = (*(**a1 + 200))();
          v6 &= sub_100F99290(v14, a3 + 1360, v9);
          v15 = (*(**a1 + 200))();
          sub_100F99390(v15);
          break;
        default:
          break;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return v6 & 1;
}

uint64_t sub_1000C3344(uint64_t result, int a2, char a3)
{
  v3 = result;
  if (!a2)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  result = sub_100023B30();
  if ((result & 0x2000000) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + 534);
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 1) == 0)
  {
    v6 = *(v3 + 533);
    goto LABEL_10;
  }

LABEL_9:
  v6 = v5;
LABEL_10:
  v7 = (v5 & 1);
  v8 = (v6 & 1);
  if (__PAIR64__(*(v3 + 532), *(v3 + 531)) != __PAIR64__(v8, v7))
  {
    if (qword_1025D4250 != -1)
    {
      sub_101B7BA74();
    }

    v9 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Authorization changed, authorized for location, %d, active scanning, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7BA88(v8, v7);
    }

    v10 = *(v3 + 616);
    if (v10)
    {
      *(v3 + 616) = 0;
      (*(*v10 + 8))(v10);
    }

    [*(*(v3 + 608) + 16) unregister:*(*(v3 + 608) + 8) forNotification:22];
    if (v7)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *buf = _Q0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v17 = v8;
      sub_10002FA64();
    }

    result = [objc_msgSend(objc_msgSend(*(v3 + 32) "vendor")];
    *(v3 + 531) = 0;
    *(v3 + 532) = v8;
  }

  return result;
}

id sub_1000C35C4(uint64_t a1, int a2, void *a3)
{
  result = sub_1000C2530(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1000C3614(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD3BE0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStepCountNotifier::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD3BF4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStepCountNotifier::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000C37E0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000C37E0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 > 2)
  {
    if ((v4 - 3) < 3)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v12 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        v13 = *a3;
        v21 = 67240192;
        LODWORD(v22) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Unexpected CLMotionStateMediator_Type: %{public}d", &v21, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD4DBC(a3);
      }
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v14 = *(a1 + 7576);
      if (v14 != *(a4 + 144))
      {
        v15 = *(a1 + 7624);
        sub_10001A3E8();
        v16 = sub_10001CF3C();
        v17 = sub_1008D4B60(*(a4 + 144));
        v18 = 0x304001u >> v17;
        if (v17 > 0x15)
        {
          LOBYTE(v18) = 0;
        }

        if (!v15)
        {
          LOBYTE(v18) = 0;
        }

        if (!v16)
        {
          LOBYTE(v18) = 0;
        }

        sub_10136BBA0(*(a1 + 128), (v18 & 1));
        sub_10136BDF0(*(a1 + 128), *(a4 + 144));
        v14 = *(a4 + 144);
      }

      *(a1 + 7576) = v14;
      sub_100C49484(a1 + 856, a4);
      sub_100C49484(a1 + 2400, a4);
      sub_10001A3E8();
      if (sub_10001CF3C())
      {
        sub_100D3EBA0(*(a1 + 840), a4);
      }

      sub_10001A3E8();
      if (sub_10001CF3C())
      {
        sub_1013783EC(a1);
      }

      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v19 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 7576);
        v21 = 134217984;
        v22 = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "step counting overrideActivityType,%lu,", &v21, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD4F9C();
      }
    }

    else if (v4 == 2)
    {
      sub_100F74DBC(a1 + 3944, a4);
      if (*(a4 + 208) == 1 && *(a4 + 16) == 1)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101BD36D0();
        }

        v7 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
        {
          v8 = *(a4 + 96);
          v21 = 134217984;
          v22 = v8;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Flushing buffered step distance on workout end, workout type, %lu", &v21, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD4EB0();
        }

        v9 = sub_100C493B8((a1 + 2400));
        sub_10009C564(a1, v9);
      }

      sub_100C495F8(a1 + 856, a4);
      sub_100C495F8(a1 + 2400, a4);
      v10 = *(a1 + 272);
      if (v10)
      {
        sub_100E4ABF4(v10, a4);
      }

      sub_101377D78(a1, a4);
    }
  }

  else
  {
    sub_100C49774(a1 + 856, a4);

    sub_100C49774(a1 + 2400, a4);
  }
}

__n128 sub_1000C3B70(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) + ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100C4AB08(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x11)) + 232 * (v7 % 0x11);
  v9 = *a2;
  v10 = a2[2];
  *(v8 + 16) = a2[1];
  *(v8 + 32) = v10;
  *v8 = v9;
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[6];
  *(v8 + 80) = a2[5];
  *(v8 + 96) = v13;
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  v14 = a2[7];
  v15 = a2[8];
  v16 = a2[10];
  *(v8 + 144) = a2[9];
  *(v8 + 160) = v16;
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  result = a2[11];
  v18 = a2[12];
  v19 = a2[13];
  *(v8 + 224) = *(a2 + 28);
  *(v8 + 192) = v18;
  *(v8 + 208) = v19;
  *(v8 + 176) = result;
  ++a1[5];
  return result;
}

double sub_1000C3C58(double *a1, double a2)
{
  v12 = 0u;
  v13 = 0u;
  v4 = a2 + -360.0;
  sub_1000C3DC0(a1, &v12, a2 + -360.0, a2);
  v10 = 0u;
  v11 = 0u;
  sub_1000C3DC0(a1, &v10, a2 + -720.0, v4);
  v5 = 0;
  if (*(&v13 + 1) >= 0.45 && v13 >= 0x32)
  {
    v5 = vabdd_f64(*(&v12 + 1), *&v12) > 324.0;
  }

  v6 = 0;
  if (*(&v11 + 1) >= 0.45 && v11 >= 0x32)
  {
    v6 = fabs(*(&v10 + 1) - *&v10) > 324.0;
  }

  if (v5)
  {
    v7 = *a1;
    if (*a1 < 3.0)
    {
      v7 = v7 + vabdd_f64(*(&v12 + 1), a1[8]) / 720.0;
      *a1 = v7;
      v8 = 0.0;
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v8 = 0.0;
    if (v6)
    {
LABEL_13:
      v8 = 0.05;
    }
  }

  else
  {
    *a1 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

LABEL_14:
  result = fmin(v8 * v7, 0.3);
  a1[8] = *(&v12 + 1);
  return result;
}

void sub_1000C3DC0(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = xmmword_101D050C8;
  *(a2 + 16) = unk_101D050D8;
  __src = 0;
  v41 = 0;
  v42 = 0;
  v7 = *(a1 + 24);
  if (*(a1 + 32) == v7 || (v9 = *(a1 + 48), v10 = (v7 + 8 * (v9 >> 8)), v11 = (*v10 + 16 * v9), v12 = *(v7 + (((*(a1 + 56) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 56) + v9), v11 == v12))
  {
    *(a2 + 16) = 0;
    return;
  }

  v13 = 0;
  v14 = 1.79769313e308;
  v15 = -1.79769313e308;
  do
  {
    v16 = *v11;
    if (*v11 >= a3 && v16 <= a4)
    {
      if (v15 >= v16)
      {
        v18 = (a2 + 8);
      }

      else
      {
        v18 = v11;
      }

      v15 = *v18;
      *(a2 + 8) = *v18;
      v19 = v11[1];
      if (*v11 < v14)
      {
        v14 = *v11;
      }

      *a2 = v14;
      v20 = v19;
      v21 = (*(a1 + 12) - v20) / (*(a1 + 12) - *(a1 + 8));
      v22 = (1.0 - v21);
      if (v13 >= v42)
      {
        v23 = __src;
        v24 = v13 - __src;
        v25 = (v13 - __src) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v27 = v42 - __src;
        if ((v42 - __src) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          sub_1000B9708(&__src, v28);
        }

        v29 = v25;
        v30 = (8 * v25);
        v31 = &v30[-v29];
        *v30 = v22;
        v13 = v30 + 1;
        memcpy(v31, v23, v24);
        v32 = __src;
        __src = v31;
        v41 = v13;
        v42 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v13++ = v22;
      }

      v41 = v13;
    }

    v11 += 2;
    if ((v11 - *v10) == 4096)
    {
      v33 = v10[1];
      ++v10;
      v11 = v33;
    }
  }

  while (v11 != v12);
  v34 = __src;
  v35 = v13 == __src;
  v36 = (v13 - __src) >> 3;
  *(a2 + 16) = v36;
  if (v35)
  {
    if (!v34)
    {
      return;
    }
  }

  else
  {
    v37 = vcvtd_n_f64_u64(v36 - 1, 1uLL);
    v38 = v37;
    v39 = &v34[v37];
    if (v39 != v13)
    {
      sub_1003E3EC0(v34, v39, v13, v37);
      v34 = __src;
    }

    *(a2 + 24) = v34[v38];
  }

  v41 = v34;
  operator delete(v34);
}

void sub_1000C4024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000C4048(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *sub_1000C40B0(a1, v2++);
  }

  while (v2 < a1[1]);
  return v3;
}

uint64_t sub_1000C40B0(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10247F6A0);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10247F6A0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<double>::operator[](const size_t) const [T = double]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

unsigned __int16 *sub_1000C42AC(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 < v3)
  {
    v3 = 0;
  }

  *&result[2 * (v4 + v2 - v3) + 4] = *a2;
  v5 = *(result + 1);
  if (v5 <= v2)
  {
    v6 = v4 + 1;
    if (v4 + 1 >= v5)
    {
      v7 = *(result + 1);
    }

    else
    {
      v7 = 0;
    }

    *result = v6 - v7;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

double sub_1000C4304(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *sub_1000C4370(a1, v2++);
  }

  while (v2 < a1[1]);
  return v3;
}

uint64_t sub_1000C4370(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_102460A50);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_102460A50);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<int>::operator[](const size_t) const [T = int]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[2 * (v4 - v5) + 4];
}

BOOL sub_1000C456C(uint64_t a1, double a2, double a3)
{
  v9 = a2;
  v4 = a3 - a2;
  v5 = v4 > -60.0 && fabs(v4) < *(a1 + 544);
  if (*(a1 + 536) != a2)
  {
    v6 = sub_1000206B4();
    sub_100116D68(v6, "LastMotionStateQuery", &v9);
    v7 = *sub_1000206B4();
    (*(v7 + 944))();
    *(a1 + 536) = v9;
  }

  return v5;
}

void sub_1000C462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];

  sub_1000C4690(a4);
}

void sub_1000C4690(uint64_t a1)
{
  __chkstk_darwin(a1);
  v4 = v3;
  v5 = v1;
  if (*v2 == 2)
  {
    v25 = *(v3 + 16);
    if (v25 == 1)
    {
      *(v1 + 3448) = 0;
      v30 = sub_100023ED4(0);
      (*(*(v30 + 56) + 24))();
      v5[357] = 0;
      *(v5 + 179) = xmmword_101CFA0F0;
      *(v5 + 2880) = 0;
      v5[361] = 0xFFF0000000000000;
      *(v5 + 181) = xmmword_101D1D530;
      *(v5 + 728) = 0;
      *(v5 + 2928) = 0;
      *(sub_1010E47C0((v5[344] + 3512)) + 123) = 0;
    }

    else if (!v25)
    {
      *(v1 + 3448) = 1;
      sub_1010E46D4(v1);
      sub_1008D4B60(*(v4 + 96));
      v26 = sub_100023ED4(0);
      (*(*(v26 + 56) + 24))();
      v5[357] = 0;
      *(v5 + 179) = xmmword_101CFA0F0;
      *(v5 + 2880) = 0;
      v5[361] = 0xFFF0000000000000;
      *(v5 + 181) = xmmword_101D1D530;
      *(v5 + 728) = 0;
      v5[365] = *(v4 + 24);
      *(v5 + 2928) = 0;
      v27 = *(v5 + 100);
      v28 = sub_1000DA93C();
      if (v27)
      {
        sub_101241800(v28, 1);
        v29 = sub_1000A23E0();
        *buf = 1;
      }

      else
      {
        sub_101241800(v28, 2);
        v29 = sub_1000A23E0();
        *buf = 2;
      }

      sub_100E04414(v29, buf);
      *(sub_1010E47C0((v5[344] + 3512)) + 123) = 1;
      if ((v5[47] & 1) == 0)
      {
        sub_1010E00C0(v5);
      }

      v31 = sub_1000A23E0();
      v32 = (v5[344] + 4520);
      v33 = *(v5[344] + 4536);
      *buf = *v32;
      v71 = v33;
      *v72 = v32[2];
      *&v72[12] = *(v32 + 44);
      sub_100E0403C(v31, buf);
    }

    if (sub_1000A154C(v4) == 1)
    {
      v34 = sub_100D5FAA8(v5 + 2929, v5[344] + 4520, buf);
      *&v34 = v34;
      *&v86.var5.var4.var0.var1 = CMNatalimeterSetUserHrmax;
      *&v86.var5.var5.var0 = [NSNumber numberWithFloat:v34];
      sub_1010E2F50(v5, [NSDictionary dictionaryWithObjects:&v86.var5.var5 forKeys:&v86.var5.var4.var1 + 1 count:1], 0);
      *v68 = nullsub_34(v35);
      *&v68[8] = v36;
      *&v68[16] = v37;
      CHVO2MaxEstimator::feedHRMaxFeatures();
    }

    memset(&v86, 0, 112);
    v38 = *(v4 + 176);
    v77 = *(v4 + 160);
    v78 = v38;
    v79 = *(v4 + 192);
    v80 = *(v4 + 208);
    v39 = *(v4 + 112);
    *v74 = *(v4 + 96);
    *&v74[16] = v39;
    v40 = *(v4 + 144);
    v75 = *(v4 + 128);
    v76 = v40;
    v41 = *(v4 + 48);
    *v72 = *(v4 + 32);
    *&v72[16] = v41;
    v42 = *(v4 + 80);
    *v73 = *(v4 + 64);
    *&v73[16] = v42;
    v43 = *(v4 + 16);
    *buf = *v4;
    v71 = v43;
    sub_100D9AC04(buf, &v86);
    CHVO2MaxEstimator::feedWorkoutEvent(&v81, (v5 + 402), &v86);
    if (*(v5 + 99) == 2 && *&v82 != -1.0 && BYTE12(v82) == 1)
    {
      if ((v5[47] & 1) == 0)
      {
        sub_1010E00C0(v5);
      }

      v44 = sub_100011660();
      sub_100185AC0(v44, buf);
      sub_10005BBE4(*buf, "Vo2MaxCalLevel", v5 + 99);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (BYTE11(v82) == 1)
      {
        sub_1010E47FC(v5, &v81);
        v45 = *(v4 + 24);
        v46 = v5[475];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&v71 = sub_1010E81AC;
        *(&v71 + 1) = &unk_10245D2A8;
        *v72 = v5;
        *&v72[8] = v45;
        dispatch_async(v46, buf);
      }

      bzero(&v73[8], 0xD30uLL);
      *v72 = v83;
      *&v72[16] = v84;
      *v73 = v85;
      v71 = v82;
      *buf = v81;
      if (qword_1025D43F0 != -1)
      {
        sub_101B2CFD0();
      }

      v47 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
      {
        *v68 = 134284033;
        *&v68[4] = v82;
        *&v68[12] = 1025;
        *&v68[14] = BYTE9(v82);
        *&v68[18] = 1025;
        *&v68[20] = BYTE11(v82);
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "VO2Max, estimate, %{private}.2f, betaBlockerUser, %{private}d, eligibleForHealthKit, %{private}d", v68, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(v68, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101B2CFD0();
        }

        v62 = 134284033;
        v63 = v82;
        v64 = 1025;
        v65 = BYTE9(v82);
        v66 = 1025;
        v67 = BYTE11(v82);
        v58 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalimetryNotifier::onMotionStateMediatorNotification(int, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v58);
        if (v58 != v68)
        {
          free(v58);
        }
      }

      *v68 = 6;
      (*(*v5 + 152))(v5, v68, buf, 1, 0xFFFFFFFFLL, 0);
    }

    else if (*(v4 + 16) == 1)
    {
      v48 = sub_100EB14D4(*(v4 + 96), *(v4 + 104));
      if (v48 <= 0x18 && ((1 << v48) & 0x1028000) != 0)
      {
        HIDWORD(v85) = *(v4 + 32);
        bzero(&v73[8], 0xD30uLL);
        *v72 = v83;
        *&v72[16] = v84;
        *v73 = v85;
        v71 = v82;
        *buf = v81;
        *v68 = 6;
        (*(*v5 + 152))(v5, v68, buf, 1, 0xFFFFFFFFLL, 0);
        if (sub_1010E4A14())
        {
          v49 = v5[475];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1010E4A94;
          block[3] = &unk_102449A78;
          block[4] = v5;
          dispatch_async(v49, block);
        }
      }
    }

    v50 = v84;
    if (*&v84 != 0.0)
    {
      bzero(&buf[8], 0xD70uLL);
      *buf = v50;
      *v68 = 8;
      (*(*v5 + 152))(v5, v68, buf, 0, 0xFFFFFFFFLL, 0);
    }

    if (BYTE13(v83) == 1)
    {
      v51 = [[NSUUID alloc] initWithUUIDBytes:&v82 + 13];
      if (qword_1025D4450 != -1)
      {
        sub_101B2CFF8();
      }

      v52 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [v51 UUIDString];
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "Sending sessionId %@ to CLVO2MaxCloudKitManager", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B2D020(v51);
      }

      [objc_msgSend(objc_msgSend(v5[4] "vendor")];
    }

    (*(*v5[347] + 24))(v5[347], v4);
    (*(*v5[346] + 8))(v5[346], v4);
    sub_1012035CC((v5 + 444), v4, buf);
    if (v72[8] == 1)
    {
      if (v71)
      {
        if (qword_1025D4520 != -1)
        {
          sub_101B2D128();
        }

        v54 = qword_1025D4528;
        if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEFAULT))
        {
          *v68 = 134218240;
          *&v68[4] = *buf;
          *&v68[12] = 2048;
          *&v68[14] = *&buf[8];
          _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "Cycling Session Ended, ftp: %f confidence %f", v68, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B2D234();
        }

        if (BYTE1(v71) == 1)
        {
          if (qword_1025D4520 != -1)
          {
            sub_101B2D128();
          }

          v55 = qword_1025D4528;
          if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEFAULT))
          {
            *v68 = 134218240;
            *&v68[4] = *buf;
            *&v68[12] = 2048;
            *&v68[14] = *&buf[8];
            _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "new FTP will be written into HK: %f confidence %f", v68, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B2D33C();
          }

          v56 = objc_alloc_init(CLCyclingPowerHKWriter);
          *v68 = *buf;
          *&v68[16] = v71;
          v69 = *v72;
          [(CLCyclingPowerHKWriter *)v56 writeFTPToHK:v68];
        }
      }

      else
      {
        if (qword_1025D4520 != -1)
        {
          sub_101B2D128();
        }

        v57 = qword_1025D4528;
        if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
        {
          *v68 = 0;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "Cycling session ended but was not eligible for FTP calculation.", v68, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B2D150();
        }
      }
    }

    sub_10062E9A4(v5[344], v4);
  }

  else if (!*v2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v4 + 8);
      v8 = *(v4 + 12);
      v9 = *(v4 + 20);
      v10 = *(v4 + 24);
      v11 = *(v4 + 60);
      v12 = *(v4 + 64);
      v13 = *(v4 + 88);
      v14 = *(v4 + 152);
      v15 = *(v4 + 176);
      v16 = *(v4 + 180);
      v17 = *(v4 + 160);
      v18 = *(v4 + 164);
      v19 = *(v4 + 168);
      v20 = *(v4 + 172);
      v21 = *(v4 + 156);
      *buf = 67112704;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 1024;
      LODWORD(v71) = v9;
      WORD2(v71) = 1024;
      *(&v71 + 6) = v10;
      WORD5(v71) = 1024;
      HIDWORD(v71) = v11;
      *v72 = 2048;
      *&v72[2] = v12;
      *&v72[10] = 2048;
      *&v72[12] = v13;
      *&v72[20] = 2048;
      *&v72[22] = v14;
      *&v72[30] = 1024;
      *v73 = v15;
      *&v73[4] = 1024;
      *&v73[6] = v16;
      *&v73[10] = 2048;
      *&v73[12] = v17;
      *&v73[20] = 2048;
      *&v73[22] = v18;
      *&v73[30] = 2048;
      *v74 = v19;
      *&v74[8] = 2048;
      *&v74[10] = v20;
      *&v74[18] = 2048;
      *&v74[20] = v21;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ActivitySpectator,activity{State,%d,Confidence,%d,MountedState,%d,MountedConfidence,%d,exitState,%d,estExitTime,%f,startTime,%f},nataliFeatures{fVectorMagnitude,%f,fEpochType,%d,fStanding,%d,fMachineFrequency,%f,fRowStrokeFrequency,%f,fRowStrokeAmplitude,%f,fRowStrokePower,%f,fPushVectorMagnitude,%f}", buf, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B2D444(v4);
    }

    if (*(v5 + 3448) == 1 && *(v5 + 424) == 1)
    {
      sub_1004A243C(v5[344] + 3296);
    }

    *(v5[344] + 4584) = sub_1000C3C58(v5 + 432, *v4);
    sub_10000EC00(__p, "CalorimetryProcessing");
    *&v86.var5.var5.var1[23] = off_1024CF5A8;
    *&v86.var5.var5.var1[47] = &v86.var5.var5.var1[23];
    sub_10100E218(buf, __p, &v86.var5.var5.var1[23], *(v5 + 3793));
    sub_10100E370(&v86.var5.var5.var1[23]);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    (**v5[346])(v5[346], v4);
    sub_10100E2D4(buf);
    v22 = *(v4 + 148);
    v23 = *(v4 + 164);
    *(v5 + 686) = *(v4 + 180);
    *(v5 + 339) = v22;
    *(v5 + 341) = v23;
    if (CFAbsoluteTimeGetCurrent() - *(v5 + 365) > 90.0 && *(v5 + 2928) == 1)
    {
      v24 = sub_10062BD40(v5[344], *(v5 + 358));
      if (v24 > 0.0)
      {
        *&v86.var5.var5.var1[7] = CMNatalimeterSetUserOnsetVo2max;
        *&v86.var5.var5.var1[15] = [NSNumber numberWithDouble:v24];
        sub_1010E2F50(v5, [NSDictionary dictionaryWithObjects:&v86.var5.var5.var1[15] forKeys:&v86.var5.var5.var1[7] count:1], 0);
      }

      *(v5 + 2928) = 0;
    }

    if (*(v4 + 208) == 1)
    {
      if (CLMotionActivity::isTypeCycling())
      {
        sub_1010E4120(v5);
      }
    }
  }
}

void sub_1000C547C(_Unwind_Exception *a1)
{
  if (STACK[0x6D8])
  {
    sub_100008080(STACK[0x6D8]);
  }

  _Unwind_Resume(a1);
}

void sub_1000C54CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C559C(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = (v7 + 8 * (a1[6] >> 4));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 328 * (a1[6] & 0xFLL));
  }

  v11 = a4 + 1.0e-13;
  while (1)
  {
    if (v8 == v7)
    {
      v13 = 0;
    }

    else
    {
      v12 = a1[7] + a1[6];
      v13 = *(v7 + ((v12 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (v12 & 0xF);
    }

    if (v10 == v13)
    {
      break;
    }

    if (*v10 <= v11 && *v10 + 1.0e-13 > a3)
    {
      v16 = *(a2 + 8);
      v15 = *(a2 + 16);
      if (v16 >= v15)
      {
        v18 = 0x8F9C18F9C18F9C19 * ((v16 - *a2) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xC7CE0C7CE0C7CELL)
        {
          sub_10028C64C();
        }

        v20 = 0x8F9C18F9C18F9C19 * ((v15 - *a2) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x63E7063E7063E7)
        {
          v21 = 0xC7CE0C7CE0C7CELL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_1000CE5E8(a2, v21);
        }

        v22 = 328 * v18;
        memcpy(v22, v10, 0x148uLL);
        v17 = v22 + 328;
        v23 = *(a2 + 8) - *a2;
        v24 = (v22 - v23);
        memcpy(v24, *a2, v23);
        v25 = *a2;
        *a2 = v24;
        *(a2 + 8) = v17;
        *(a2 + 16) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        memcpy(*(a2 + 8), v10, 0x148uLL);
        v17 = v16 + 328;
      }

      *(a2 + 8) = v17;
    }

    v10 += 41;
    if ((v10 - *v9) == 5248)
    {
      v26 = v9[1];
      ++v9;
      v10 = v26;
    }

    v7 = a1[3];
    v8 = a1[4];
  }
}

uint64_t sub_1000C57A0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 49);
  }

  else
  {
    v1 = *(a1 + 8) > 0.0;
  }

  return v1 & 1;
}

__n128 sub_1000C57CC(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 184);
  *(a2 + 32) = *(a1 + 216);
  result = *(a1 + 200);
  *(a2 + 16) = result;
  return result;
}

void *sub_1000C5804(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000C58B0(uint64_t a1, uint64_t a2)
{
  sub_1000C590C(a1 + 48, 1, *(a2 + 80));
  v4 = *(a2 + 80) + -300.0;

  sub_1000C590C(a1 + 216, 1, v4);
}

void sub_1000C590C(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 80);
  if (v4 == 0.0)
  {
    return;
  }

  if (*(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 == 2;
  }

  v7 = a3 + -7.0;
  if (v6)
  {
    v7 = a3;
  }

  v8 = v7 - v4;
  v23 = 7;
  strcpy(v21, "unknown");
  if (a2 == 2)
  {
    v9 = &v21[11];
    v23 = 11;
    qmemcpy(v21, "gaitMetrics", 11);
  }

  else
  {
    v9 = &v22;
    if (a2 == 1)
    {
      v23 = 14;
      v10 = "motionActivity";
    }

    else
    {
      if (a2)
      {
        goto LABEL_16;
      }

      v23 = 14;
      v10 = "stepCountEntry";
    }

    *v21 = *v10;
    *&v21[6] = *(v10 + 6);
  }

  *v9 = 0;
LABEL_16:
  if (v8 >= *(a1 + 24))
  {
    if (qword_1025D4420 != -1)
    {
      sub_1019EB98C();
    }

    v11 = qword_1025D4428;
    if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 63) < 0)
      {
        sub_100007244(__p, *(a1 + 40), *(a1 + 48));
        if (__p[23] >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = *__p;
        }

        v13 = v21;
        if (v23 < 0)
        {
          v13 = *v21;
        }
      }

      else
      {
        *&__p[16] = *(a1 + 56);
        *__p = *(a1 + 40);
        v12 = __p;
        if (__p[23] < 0)
        {
          v12 = *__p;
        }

        v13 = v21;
      }

      v14 = *(a1 + 72);
      *buf = 136446978;
      v29 = v12;
      v30 = 2050;
      v31 = v14;
      v32 = 2082;
      v33 = v13;
      v34 = 2050;
      v35 = a3;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "BoutDetector (%{public}s): Ending bout (%{public}.2f) due to maxTimeSinceEndOfBout from %{public}s time (%{public}.2f)", buf, 0x2Au);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4420 != -1)
      {
        sub_1019EBC4C();
      }

      if (*(a1 + 63) < 0)
      {
        sub_100007244(__dst, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        *__dst = *(a1 + 40);
        v20 = *(a1 + 56);
      }

      v15 = __dst;
      if (v20 < 0)
      {
        v15 = __dst[0];
      }

      v16 = *(a1 + 72);
      v17 = v21;
      if (v23 < 0)
      {
        v17 = *v21;
      }

      *__p = 136446978;
      *&__p[4] = v15;
      *&__p[12] = 2050;
      *&__p[14] = v16;
      *&__p[22] = 2082;
      v25 = v17;
      v26 = 2050;
      v27 = a3;
      v18 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__dst[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLMobility::BoutDetector::checkBoutEndWithPacketTime(CFAbsoluteTime, PacketType)", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    sub_100AF42B8(a1, 1);
    if (v23 < 0)
    {
      operator delete(*v21);
    }
  }
}

void sub_1000C5CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5CF0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B1207C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateObserver::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B12090();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateObserver::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*a4 + 29))(a4, a2, a3);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1000C5EDC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    result = *a3;
    v4 = *(a3 + 8);
    v5 = *(a3 + 108);
    v6 = *(a3 + 72);
    *(a1 + 146) = *a3;
    *(a1 + 154) = v4;
    *(a1 + 158) = v5;
    *(a1 + 162) = v6;
  }

  return result;
}

void sub_1000C5F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8392);
  if (v3)
  {
    sub_100C1C200(v3, a2);
  }

  if (qword_1025D4760 != -1)
  {
    sub_101900230();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = *(a2 + 48);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = 134219520;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Update reached MotionStateMediator, startTime, %f, mctTimestampSec, %f type, %ld, confidence, %ld, estimatedStateProbabilityOutdoor, %f, isAstronomicalDaytime, %d, daylightConfidence, %ld", &v12, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900244(a2);
  }
}

id sub_1000C6128(int a1, unsigned int *a2, void *__src, void *a4)
{
  v5 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  return [a4 onMotionStateMediatorNotification:v5 data:__dst];
}

void sub_1000C61E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  *(a1 + 2224) = *a2;
  if (*(a1 + 2232) == 0.0)
  {
    *(a1 + 2232) = v5;
  }

  v103 = 0u;
  v104 = 0u;
  v102 = v5;
  LODWORD(v103) = *(a2 + 52);
  *(&v103 + 1) = *(a2 + 40);
  *&v104 = *(a2 + 32);
  BYTE8(v104) = *(a2 + 48);
  sub_1000C6DD8((a1 + 2248), &v102);
  *(a1 + 2376) = *(a1 + 2368);
  v6 = *(a1 + 26);
  if (*(a1 + 28) == v6)
  {
    sub_1000C6800(a1, *(a1 + 24 * *(a1 + 24) + 32));
    v6 = *(a1 + 26);
  }

  v100 = 0;
  v99 = 0;
  v101 = 0;
  if (v6)
  {
    v7 = *(a1 + 24) + v6 - 1;
    v8 = *(a1 + 28);
    if (v7 < v8)
    {
      v8 = 0;
    }

    v9 = *(a1 + 24 * (v7 - v8) + 32);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = (*(**(*(a1 + 2392) + 24) + 32))(*(*(a1 + 2392) + 24));
  sub_1000C559C(v10, &v99, v9, *a2);
  v11 = v99;
  v25 = v100;
  if (v99 != v100)
  {
    v12 = a1 + 32;
    do
    {
      *(&v96 + 1) = v11[3];
      v97 = *(v11 + 56);
      *&v96 = *v11;
      v26 = xmmword_101C76220;
      v35 = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v36 = 0xBFF0000000000000;
      v37 = 0;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v38 = 0xBFF0000000000000;
      v59 = 0xBFF0000000000000;
      v60 = 0;
      v61 = 0xBFF0000000000000;
      v72 = 0;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      memset(v71, 0, sizeof(v71));
      v73 = xmmword_101C76220;
      v74 = 0;
      v75 = 0;
      v76 = 0x80000000800000;
      v77 = 0;
      v78 = 0;
      v79 = xmmword_101C78410;
      v80 = 0x80000000800000;
      v81 = 0xBFF0000000000000;
      memset(v82, 0, sizeof(v82));
      v83 = 0xBFF0000000000000;
      memset(v84, 0, sizeof(v84));
      v85 = 0xBFF0000000000000;
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
      v89 = 0xBFF0000000000000;
      v90 = 0x600000006;
      __p = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0xBFF0000000000000;
      v95 = 0xBFF0000000000000;
      v13 = (*(**(*(a1 + 2392) + 24) + 16))(*(*(a1 + 2392) + 24));
      sub_1000BB630(v13, &v26, *v11);
      v98 = DWORD2(v27);
      sub_1000CE644((a1 + 24), &v96);
      if (*(a1 + 28) == *(a1 + 26))
      {
        for (i = 2160; i != 2224; i += 8)
        {
          if ((sub_1000CE6B0(*(a1 + i), (a1 + 24)) & 1) != 0 && *(v12 + 24 * *(a1 + 24)) >= v15)
          {
            v16 = *(a1 + i);
            if (*(v16 + 72))
            {
              sub_1000CE828(v16 + 48, v15);
            }
          }
        }

        v17 = *(a1 + 2296);
        v18 = *(v12 + 24 * *(a1 + 24));
        if (v17 > v18 && *(a1 + 2368) == *(a1 + 2376))
        {
          *buf = *(a1 + 2336);
          v110[0] = v17;
          sub_1000CFC60(a1, buf, v18);
        }

        v24 = *(a1 + 16);
        if (qword_1025D4760 != -1)
        {
          sub_101B82360();
        }

        v19 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
        {
          v20 = *(v12 + 24 * *(a1 + 24));
          *buf = 67109376;
          *&buf[4] = v24;
          LOWORD(v110[0]) = 2048;
          *(v110 + 2) = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "DaylightEstimator,state,%d,startTime,%f", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B82388(buf);
          v21 = *(v12 + 24 * *(a1 + 24));
          v105 = 67109376;
          v106 = v24;
          v107 = 2048;
          v108 = v21;
          v22 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<CLDaylightEstimator::Result> CLDaylightEstimator::update(const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      if (v87)
      {
        *(&v87 + 1) = v87;
        operator delete(v87);
      }

      *buf = v82;
      sub_1000B96B4(buf);
      v11 += 41;
    }

    while (v11 != v25);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1004BF900(a3, *(a1 + 2368), *(a1 + 2376), (*(a1 + 2376) - *(a1 + 2368)) >> 4);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_1000C67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100A3AFA0(&a29);
  v30 = STACK[0x470];
  if (STACK[0x470])
  {
    STACK[0x478] = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1000C6800(uint64_t a1, double a2)
{
  sub_1000C6A84(a1, *(a1 + 2344), a2);
  v4 = *(a1 + 2344);
  if (v4 < a2)
  {
    v4 = a2;
  }

  *(a1 + 2344) = v4;
  v5 = *(a1 + 2256);
  v6 = *(a1 + 2280);
  v7 = (v5 + 8 * (v6 / 0x66));
  if (*(a1 + 2264) == v5)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(v5 + 8 * (v6 / 0x66));
    v9 = &v8[40 * (v6 % 0x66)];
    v10 = (*(v5 + 8 * ((*(a1 + 2288) + v6) / 0x66)) + 40 * ((*(a1 + 2288) + v6) % 0x66));
    if (v9 != v10)
    {
      while (*v9 > a2)
      {
        v9 = (v9 + 40);
        if (v9 - v8 == 4080)
        {
          v11 = v7[1];
          ++v7;
          v8 = v11;
          v9 = v11;
        }

        if (v9 == v10)
        {
          goto LABEL_24;
        }
      }

      sub_1000CFB4C(a1, v9);
      v12 = *(a1 + 2328);
      if (!v12)
      {
LABEL_30:
        sub_1000CF05C();
      }

      v13 = *v9;
      v29 = (*(*v12 + 48))(v12, v9);
      v30 = v14;
      sub_1000CFC60(a1, &v29, *&v13);
    }

    if (v9 != v10)
    {
      v15 = v9;
      v16 = v7;
      while (1)
      {
        v15 = (v15 + 40);
        if ((v15 - *v16) == 4080)
        {
          v17 = v16[1];
          ++v16;
          v15 = v17;
        }

        if (v15 == v10)
        {
          break;
        }

        if (*v15 > a2)
        {
          v21 = *v15;
          v22 = v15[1];
          *(v9 + 4) = *(v15 + 4);
          *v9 = v21;
          v9[1] = v22;
          v9 = (v9 + 40);
          if ((v9 - *v7) == 4080)
          {
            v23 = v7[1];
            ++v7;
            v9 = v23;
          }
        }

        else
        {
          sub_1000CFB4C(a1, v15);
          v18 = *(a1 + 2328);
          if (!v18)
          {
            goto LABEL_30;
          }

          v19 = *v15;
          v29 = (*(*v18 + 48))(v18, v15);
          v30 = v20;
          sub_1000CFC60(a1, &v29, *&v19);
        }
      }

      v10 = v9;
    }
  }

LABEL_24:
  v24 = *(a1 + 2280) + *(a1 + 2288);
  v25 = *(a1 + 2256);
  v26 = (v25 + 8 * (v24 / 0x66));
  if (*(a1 + 2264) == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 40 * (v24 % 0x66));
  }

  return sub_1000C6E90((a1 + 2248), v7, v10, v26, v27);
}

uint64_t sub_1000C6A84(uint64_t result, double a2, double a3)
{
  if (*(result + 26))
  {
    v5 = result;
    v6 = 0;
    v7 = (result + 2452);
    do
    {
      result = sub_1000C6BD8((v5 + 24), v6);
      if (*result >= a2)
      {
        result = sub_1000C6BD8((v5 + 24), v6);
        if (*result <= a3)
        {
          v8 = *(sub_1000C6BD8((v5 + 24), v6) + 16) != 0;
          v9.i32[0] = 1;
          v9.i32[1] = v8;
          *(v5 + 2440) = vadd_s32(*(v5 + 2440), v9);
          v10 = *(sub_1000C6BD8((v5 + 24), v6) + 20);
          *v7 = vsub_s32(*v7, vceq_s32(vdup_n_s32(v10), 0x100000080));
          v11 = 1;
          if (v10 != 256 && v10 != 512)
          {
            v11 = v10 == 4096;
          }

          *(v5 + 2448) += v11;
          result = sub_1000C6BD8((v5 + 24), v6);
          v12 = *result >= *(v5 + 2352) && *result <= *(v5 + 2360);
          *(v5 + 2460) += v12;
        }
      }

      ++v6;
    }

    while (v6 < *(v5 + 26));
  }

  return result;
}

uint64_t sub_1000C6BD8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024DA608);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024DA608);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLDaylightEstimator::StepsAndActivity>::operator[](const size_t) const [T = CLDaylightEstimator::StepsAndActivity]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

__n128 sub_1000C6DD8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10125D864(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

unint64_t sub_1000C6E90(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 3) + 0x3333333333333333 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x66));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[40 * (v7 % 0x66)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 3) + 0x3333333333333333 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x66);
  v24[0].n128_u64[1] = v10;
  sub_1000C5804(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C5804(v24, v6);
      sub_100F9DCA0(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C5804(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x66));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[40 * (v14 % 0x66)];
      }

      v24[0] = v12;
      sub_1000CFCA0(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x66));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 40 * (v19 % 0x66);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C5804(v24, v11);
  return v24[0].n128_u64[0];
}

__n128 sub_1000C70F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 80);
  return result;
}

uint64_t sub_1000C7110(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8();
  sub_10000B230(v7);
  sub_10000B324(v4, v7[0].i8);
  v8 = 22;
  v7[0].i32[0] = 22;
  v7[0].i32[1] = sub_10000AD98(&v8);
  v5 = sub_10000AE98();
  sub_1000C71C0(v5, v7, (a1 + 5220), a2);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 48))(result, a2);
  }

  return result;
}

void sub_1000C71C0(uint64_t a1, int32x4_t *a2, int *a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a2->i32[0])
        {
          v7 = a2->i32[1] == 0;
        }

        else
        {
          v7 = 1;
        }

        v8 = !v7;
        if (*a3)
        {
          v9 = a3[1] == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = !v9;
        *buf = 67109376;
        v64 = v8;
        v65 = 1024;
        LODWORD(v66) = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLOutdoor_Type,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a2->i32[0])
        {
          v11 = a2->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a3)
        {
          v13 = a3[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        v58[0] = 67109376;
        v58[1] = v12;
        v59 = 1024;
        v60 = v14;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    else
    {
      sub_10000AED0(v58);
      v18 = sub_10000B1F8();
      sub_10000AED4(v18, v48);
      v47 = 4;
      sub_10000AFE4(v58, &v47, a2->i32, a3, v48);
      v62 |= 2u;
      v19 = v61;
      if (!v61)
      {
        operator new();
      }

      *(v61 + 492) |= 0x800u;
      v20 = *(v19 + 352);
      if (!v20)
      {
        operator new();
      }

      *(v20 + 200) |= 0x20000u;
      v21 = *(v20 + 136);
      if (!v21)
      {
        operator new();
      }

      *(v21 + 28) |= 1u;
      *(v21 + 8) = -1;
      if (!sub_100437D64(1u))
      {
        __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13205, "::CLP::LogEntry::PrivateData::OutdoorServiceNotification_NotificationType_IsValid(value)");
      }

      v22 = *(v21 + 28);
      *(v21 + 12) = 1;
      *(v21 + 28) = v22 | 6;
      v23 = *(v21 + 16);
      if (!v23)
      {
        operator new();
      }

      *(v23 + 20) |= 1u;
      v24 = *(v23 + 8);
      if (!v24)
      {
        operator new();
      }

      sub_1000C7A24(a4, v24);
      v25 = sub_10000BFC0(a1);
      if (*(a1 + 8) == 1)
      {
        v26 = v25;
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v27 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v28 = &v49;
          sub_101322EE0(&v47, &v49);
          if (SBYTE3(v53) < 0)
          {
            v28 = v49;
          }

          LODWORD(v40[0]) = a2->i32[0];
          v29 = v45;
          sub_1013230DC(v40, v45);
          if (v46 < 0)
          {
            v29 = v45[0];
          }

          v42 = *a3;
          v30 = __p;
          sub_1013230DC(&v42, __p);
          if (v44 < 0)
          {
            v30 = __p[0];
          }

          v31 = sub_10000B1F8();
          v32 = sub_100125220(v31);
          *buf = 67110146;
          v64 = v26;
          v65 = 2080;
          v66 = v28;
          v67 = 2080;
          v68 = v29;
          v69 = 2080;
          v70 = v30;
          v71 = 2050;
          v72 = v32;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLOutdoor_Type,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", buf, 0x30u);
          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (v46 < 0)
          {
            operator delete(v45[0]);
          }

          if (SBYTE3(v53) < 0)
          {
            operator delete(v49);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          v33 = v45;
          sub_101322EE0(&v47, v45);
          if (v46 < 0)
          {
            v33 = v45[0];
          }

          v42 = a2->i32[0];
          v34 = __p;
          sub_1013230DC(&v42, __p);
          if (v44 < 0)
          {
            v34 = __p[0];
          }

          v39 = *a3;
          v35 = v40;
          sub_1013230DC(&v39, v40);
          if (v41 < 0)
          {
            v35 = v40[0];
          }

          v36 = sub_10000B1F8();
          v37 = sub_100125220(v36);
          LODWORD(v49) = 67110146;
          HIDWORD(v49) = v26;
          v50 = 2080;
          v51 = v33;
          v52 = 2080;
          v53 = v34;
          v54 = 2080;
          v55 = v35;
          v56 = 2050;
          v57 = v37;
          v38 = _os_log_send_and_compose_impl();
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (v46 < 0)
          {
            operator delete(v45[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }
      }

      sub_10000CE1C(v58);
    }
  }
}

void *sub_1000C79A4(void *result)
{
  *result = &off_1024B47E0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000C79C8(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_1024B4768;
  return result;
}

double sub_1000C79EC(uint64_t a1)
{
  *a1 = off_1024546D8;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0;
  return result;
}

void sub_1000C7A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 56) |= 3u;
    *(a2 + 8) = *a1;
    v4 = sub_1000C7C58((a1 + 16));
    if (!sub_10041ECEC(v4))
    {
      sub_101882F4C();
    }

    *(a2 + 56) |= 4u;
    *(a2 + 24) = v4;
    v5 = sub_1000C7B70((a1 + 24));
    if (!sub_10041ECF8(v5))
    {
      sub_101882F78();
    }

    v6 = *(a2 + 56);
    *(a2 + 28) = v5;
    v7 = *(a1 + 32);
    *(a2 + 56) = v6 | 0x18;
    *(a2 + 32) = v7;
    v8 = sub_1000C7B70((a1 + 40));
    if (!sub_10041ECF8(v8))
    {
      sub_101882FA4();
    }

    v9 = *(a2 + 56);
    *(a2 + 40) = v8;
    *(a2 + 44) = *(a1 + 48);
    v10 = *(a1 + 52);
    *(a2 + 56) = v9 | 0xE0;
    *(a2 + 48) = v10;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "ConvertOutdoorUpdateToProtobuf,invalid pMsg pointer", v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8C748();
    }
  }
}

unint64_t sub_1000C7B70(unint64_t *a1)
{
  result = *a1;
  if (result >= 4)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertIndoorOutdoorConfidenceTypeToProtobuf,unhandled type,%{public}d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B8C654(a1);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000C7C58(unint64_t *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertIndoorOutdoorTypeToProtobuf,unhandled type,%{public}d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B8C560(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C7D40(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637ED0 + 8);
    }

    v5 = sub_1000C7EAC(v4, a2);
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

uint64_t sub_1000C7DB0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EC8 + 16);
    }

    v9 = sub_1000C7D40(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_1000C7EAC(unsigned int *a1, unsigned int a2)
{
  v3 = a1[14];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = a1[6];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 8) != 0)
    {
      v8 = a1[7];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v10 = a1[10];
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v11 = 2;
      }

      v4 += v11;
    }

    v12 = ((v3 >> 5) & 2) + v4;
    if ((v3 & 0x80) != 0)
    {
      result = v12 + 5;
    }

    else
    {
      result = v12;
    }
  }

  else
  {
    result = 0;
  }

  a1[13] = result;
  return result;
}

uint64_t sub_1000C7FBC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EC8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_1000C8058(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102637ED0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_1000C8084(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v7, a3);
}

void sub_1000C81A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000D0100(a1);

  operator delete();
}

void sub_1000C81DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000CFEBC(a1);

  operator delete();
}

void sub_1000C8214(uint64_t a1, uint64_t a2)
{
  sub_1000C828C(*(a1 + 40));
  if (*(a2 + 8))
  {
    sub_1000A2B60((a1 + 72), a2);
    sub_1000CB57C(*(a1 + 40) + 3728);

    sub_1000CB718();
  }
}

void sub_1000C828C(uint64_t a1)
{
  sub_1000C8470(a1 + 3296);
  sub_10062ADF4(a1 + 4232);
  sub_1000C83B0(a1 + 3368);
  sub_1000C54CC(a1 + 3440);
  sub_1000C88D4(a1 + 3512);
  sub_1000CA484(a1 + 3584);
  sub_1000CA484(a1 + 3656);
  sub_1000CA544(a1 + 3728);
  sub_1000C9C50(a1 + 3800);
  sub_1000C8F80(a1 + 3872);
  sub_1000C95FC(a1 + 3944);
  sub_1000C96BC(a1 + 4016);
  sub_1000C9B90(a1 + 4088);
  sub_1000CAE68(a1 + 4160);
  sub_1000CB2A0(a1 + 4304);
  sub_1000CB4BC(a1 + 4376);
  sub_10062AEB4(a1 + 4448);
  sub_1000CB360((a1 + 3584));

  sub_1000CB360((a1 + 3656));
}

void sub_1000C83B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C8470(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C8530(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 121) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 122);
      *buf = 134218752;
      v25 = v7 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v7;
      v30 = 1024;
      v31 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, all-day elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCoarseElevationChangeEntry>::update(CFAbsoluteTime)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 122) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 121) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = (v10 + 8 * (v9 >> 8));
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + 16 * v9;
  }

  v14 = v10 + 8 * (v9 >> 8);
LABEL_19:
  v15 = v13;
  while (1)
  {
    v16 = v11 == v10 ? 0 : *(v10 + (((*(a1 + 64) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v9);
    if (v15 == v16 || vabdd_f64(*(a1 + 104), *v15) <= 1200.0)
    {
      break;
    }

    v15 += 2;
    v13 += 16;
    if (*v14 + 4096 == v13)
    {
      v17 = *(v14 + 8);
      v14 += 8;
      v13 = v17;
      goto LABEL_19;
    }
  }

  if (v11 == v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v12 + 16 * v9;
  }

  result = sub_1000B3638((a1 + 24), v12, v18, v14, v13);
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(*(*(a1 + 32) + (((v20 + *(a1 + 56) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v20 + *(a1 + 56) - 1)) + 180.0 + 20.0;
  }

  else
  {
    v21 = -1.79769313e308;
  }

  v22 = v21 > a2 && *(a1 + 123) != 1;
  *(a1 + 120) = v22;
  return result;
}

void sub_1000C88D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

unint64_t sub_1000C8994(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLSwimEntry>::update(CFAbsoluteTime) [Data_T = CLSwimEntry]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x1A));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 152 * (v10 % 0x1A));
  }

  v15 = (v11 + 8 * (v10 / 0x1A));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x1A)) + 152 * ((*(a1 + 64) + v10) % 0x1A);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *(v16 + 5)) <= 1200.0)
    {
      break;
    }

    v14 += 152;
    v16 += 152;
    if ((*v15 + 3952) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 152 * (v10 % 0x1A));
  }

  return sub_1000C8D14((a1 + 24), v13, v19, v15, v14);
}

unint64_t sub_1000C8D14(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 26 * (a4 - a2) - 0x79435E50D79435E5 * (&a5[-*a4] >> 3) + 0x79435E50D79435E5 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x1A));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[152 * (v7 % 0x1A)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 26 * (a2 - v9) - 0x79435E50D79435E5 * (&a3[-*a2] >> 3) + 0x79435E50D79435E5 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x1A);
  v24[0].n128_u64[1] = v10;
  sub_1000B9760(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000B9760(v24, v6);
      sub_10045F038(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000B9760(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x1A));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[152 * (v14 % 0x1A)];
      }

      v24[0] = v12;
      sub_10045F1EC(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x1A));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 152 * (v19 % 0x1A);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000B9760(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000C8F80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

unint64_t sub_1000C9040(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 24 * ((a4 - a2) >> 3) - 0x30C30C30C30C30C3 * (&a5[-*a4] >> 3) + 0x30C30C30C30C30C3 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x18));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[168 * (v7 % 0x18)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 24 * ((a2 - v9) >> 3) - 0x30C30C30C30C30C3 * (&a3[-*a2] >> 3) + 0x30C30C30C30C30C3 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x18);
  v24[0].n128_u64[1] = v10;
  sub_1010F17CC(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1010F17CC(v24, v6);
      sub_1010F1870(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1010F17CC(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x18));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[168 * (v14 % 0x18)];
      }

      v24[0] = v12;
      sub_1010F1A24(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x18));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 168 * (v19 % 0x18);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1010F17CC(v24, v11);
  return v24[0].n128_u64[0];
}

void *sub_1000C92B4(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryFunctionalStrengthDMFeatures]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 8));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v10;
  }

  v15 = v11 + 8 * (v10 >> 8);
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v10);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 2;
    v14 += 16;
    if (*v15 + 4096 == v14)
    {
      v18 = *(v15 + 8);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v13 + 16 * v10;
  }

  return sub_1000B3638((a1 + 24), v13, v19, v15, v14);
}

void sub_1000C95FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C96BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

unint64_t sub_1000C977C(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryDanceDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryDanceDMFeatures]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0xAA));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 24 * (v10 % 0xAA));
  }

  v15 = (v11 + 8 * (v10 / 0xAA));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0xAA)) + 24 * ((*(a1 + 64) + v10) % 0xAA);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 3;
    v14 += 24;
    if ((*v15 + 4080) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 24 * (v10 % 0xAA));
  }

  return sub_1000CA088((a1 + 24), v13, v19, v15, v14);
}

void *sub_1000C9AF4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000C9B90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C9C50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

unint64_t sub_1000C9D10(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<_CLFitnessMachineData>::update(CFAbsoluteTime) [Data_T = _CLFitnessMachineData]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x18));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 168 * (v10 % 0x18));
  }

  v15 = (v11 + 8 * (v10 / 0x18));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x18)) + 168 * ((*(a1 + 64) + v10) % 0x18);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 21;
    v14 += 168;
    if ((*v15 + 4032) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 168 * (v10 % 0x18));
  }

  return sub_1000C9040((a1 + 24), v13, v19, v15, v14);
}

unint64_t sub_1000CA088(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * (a4 - a2) - 0x5555555555555555 * (&a5[-*a4] >> 3) + 0x5555555555555555 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0xAA));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[24 * (v7 % 0xAA)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 170 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 3) + 0x5555555555555555 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0xAA);
  v24[0].n128_u64[1] = v10;
  sub_1000C9AF4(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C9AF4(v24, v6);
      sub_100F9DFE0(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C9AF4(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0xAA));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[24 * (v14 % 0xAA)];
      }

      v24[0] = v12;
      sub_100F9E194(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0xAA));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 24 * (v19 % 0xAA);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C9AF4(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000CA2F4(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 258))
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 4);
    v6 = a3;
    v7 = 2;
    sub_1013194B0(a1, &v6);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174913;
      v11 = v9;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedGnssAvailability,gnssAvailabilityEvidence,%{private}d,currentTime,%f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B53470();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffGnssAvailability", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B5339C();
    }
  }
}

void sub_1000CA484(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000CA544(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

uint64_t sub_1000CA604(char **a1, uint64_t a2, double a3)
{
  v6 = sub_1000CAADC(a2);
  if ((v6 & 0x100000000) == 0)
  {
    sub_101B6DFAC(a2);
  }

  v7 = v6;
  v8 = *a1;

  return sub_1000D4CD8(v8, v7, 1, a3);
}

uint64_t sub_1000CA668(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10198BE00();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10198BD94();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10198BE00();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10198BD94();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

uint64_t sub_1000CAADC(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 0x100000006;
  }

  else
  {
    return qword_101D24460[a1 - 1] | qword_101D243E0[a1 - 1];
  }
}

void *sub_1000CAB14(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryRowingDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryRowingDMFeatures]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 7));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  v15 = v11 + 8 * (v10 >> 7);
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 64) + v10) & 0x7F);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 4;
    v14 += 32;
    if (*v15 + 4096 == v14)
    {
      v18 = *(v15 + 8);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v13 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  return sub_1000B98C0((a1 + 24), v13, v19, v15, v14);
}

void sub_1000CAE68(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

unint64_t sub_1000CAF28(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryKickboxingDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryKickboxingDMFeatures]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0xAA));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 24 * (v10 % 0xAA));
  }

  v15 = (v11 + 8 * (v10 / 0xAA));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0xAA)) + 24 * ((*(a1 + 64) + v10) % 0xAA);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 3;
    v14 += 24;
    if ((*v15 + 4080) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 24 * (v10 % 0xAA));
  }

  return sub_1000CA088((a1 + 24), v13, v19, v15, v14);
}

void sub_1000CB2A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000CB360(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA700(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632D24(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100632DB4(a1, 0, *(a1 + 5));
  }
}

void sub_1000CB4BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

uint64_t sub_1000CB57C(uint64_t result)
{
  if (!*(result + 24) || (*(result + 28) & 1) != 0)
  {
    if (!*result)
    {
      sub_1018D0F24();
    }

    v2 = *(**result + 32);
    v3 = *result;

    return v2(v3);
  }

  return result;
}

double sub_1000CB5DC(void *a1, __int128 *a2)
{
  v4 = a1[8];
  if (v4 >= 0x5DC && v4 % 0x64 == 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[1];
      v8 = a1[8];
      v10 = 136315394;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Extremely large CLNatalieInputBuffer, %s, size, %lu", &v10, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A35BB8();
    }
  }

  *&result = sub_1000C3B70(a1 + 3, a2).n128_u64[0];
  return result;
}

void sub_1000CB718()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if (sub_1004A2080(*(v0 + 40) + 3728, &v62, v1))
  {
    v5 = *(v3 + 32);
    v4.n128_f64[0] = v2;
    v6 = sub_1000CCE3C(*(v3 + 40) + 3296, v4);
    (**v5)(buf, v5, &v62, v6, *(v3 + 40), v2);
    (*(**buf + 24))(*buf, *(v3 + 40), v2);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }
  }

  if ((*(v3 + 216) & 1) == 0)
  {
    v7.n128_u64[1] = 0;
    do
    {
      if (!*(v3 + 112))
      {
        break;
      }

      v8 = *(*(*(v3 + 80) + ((*(v3 + 104) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v3 + 104) & 0x1FFLL));
      v7.n128_f64[0] = v8;
      if (sub_1000CD414(*(v3 + 40) + 3728, v7) && sub_1004A2080(*(v3 + 40) + 3728, &v62, v8))
      {
        sub_1005A7B84(*(v3 + 40) + 3296, &v50, v8);
        (***(v3 + 32))(&v48, v8);
        v9.n128_f64[0] = v8;
        if ((sub_1000CDACC(v48, *(v3 + 40), v9) & 1) != 0 || (v10 = *(v3 + 112) + *(v3 + 104) - 1, vabdd_f64(*(*(*(v3 + 80) + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)), v8) > *(v3 + 16)))
        {
          sub_1000D30E4(*(v3 + 40), v8);
          (*(*v48 + 16))(buf);
          sub_1005A791C(buf, *(v3 + 40), &v42);
          v11 = v47;
          if (v47)
          {
            v12 = v43;
          }

          else
          {
            (*(**(v3 + 32) + 16))(v51);
            (*(*v51[0] + 16))(buf);
            if (v51[1])
            {
              sub_100008080(v51[1]);
            }

            v12 = *&buf[12];
            v11 = DWORD1(v58);
          }

          if (v64 <= 1.0 && (v63 & 0xFFFFFFFB) == 3)
          {
            v16 = 1;
          }

          else
          {
            v16 = v63;
          }

          v17 = sub_1000D85C4((*(v3 + 40) + 4520), v16);
          sub_1000D7F78(v12, v17);
          v35 = v18;
          if (v11 <= 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = v11;
          }

          sub_10001A3E8();
          if (sub_10001CF3C())
          {
            sub_100E8A478(*(v3 + 64), v19, *(*(v3 + 40) + 24), v35);
          }

          sub_1000DD728(v3 + 520, *(v3 + 40), v40);
          if (v41 == 1)
          {
            v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:v40[1]];
            [*(v3 + 56) writeToHealthRunningPower:v20 startDate:v20 endDate:v40[0]];
          }

          if (*(v3 + 218) == 1 && *(*(v3 + 40) + 248) == 1)
          {
            v51[0] = off_102491780;
            v51[1] = COERCE_VOID_(CFAbsoluteTimeGetCurrent());
            v21 = v42;
            v22 = v45;
            v23 = v44;
            v52 = v45;
            v53 = v42;
            v24 = v46;
            v54 = v46;
            v55 = v44;
            v25 = sub_10015ADF4();
            sub_1010CF5BC(v25, v51);
            sub_10152D354(buf);
            sub_1015560F4(buf);
            v61 |= 1u;
            v59 = v51[1];
            v26 = v60;
            *(v60 + 28) |= 1u;
            *(v26 + 8) = v22;
            v27 = v60;
            *(v60 + 28) |= 4u;
            *(v27 + 16) = v21;
            v28 = v60;
            *(v60 + 28) |= 8u;
            *(v28 + 20) = HIDWORD(v21);
            v29 = v60;
            *(v60 + 28) |= 0x10u;
            *(v29 + 24) = v24;
            v30 = v60;
            *(v60 + 28) |= 2u;
            *(v30 + 12) = v23;
            if (qword_102637F48 != -1)
            {
              sub_1018D0DFC();
            }

            if (qword_102637F50)
            {
              sub_1017F73BC(qword_102637F50, buf);
            }

            sub_101532FA8(buf);
          }

          v31 = v45;
          (*(**(v3 + 32) + 8))(buf);
          (*(**buf + 16))(&v38);
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }

          if (v39 > 0.0)
          {
            if (v31 >= 1.3)
            {
              v32 = v31;
            }

            else
            {
              v32 = 1.3;
            }

            v31 = v32 + v39;
          }

          sub_1000DDC60(v3 + 248, *(*(v3 + 40) + 16), v31);
        }

        v14 = 3;
        if (v49)
        {
          sub_100008080(v49);
        }
      }

      else
      {
        if (qword_1025D4230 != -1)
        {
          sub_1018D1104();
        }

        v13 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "Popping out an activity since there's no activity associated with current time.  This shouldn't happen", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D112C(&v36, v37);
        }

        *(v3 + 104) = vaddq_s64(*(v3 + 104), xmmword_101C66230);
        sub_1000A2BE8(v3 + 72, 1);
        v14 = 0;
      }
    }

    while (!v14);
    v33 = sub_1000DA93C();
    sub_1000DCFEC(v33, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0, 0);
    memset(buf, 0, sizeof(buf));
    *&v57 = 0;
    v34 = sub_1000A23E0();
    sub_1000DD1D0(v34, buf);
  }
}

void sub_1000CCD74(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000CCE3C(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_1000CD2B0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208) == 1)
  {

    sub_1011D6FD8(a1, a2, a3);
  }

  else
  {
    v6 = a1[4];
    a1[3] = 0;
    a1[4] = 0;
    if (v6)
    {
      sub_100008080(v6);
    }

    v7 = a1[6];
    a1[5] = 0;
    a1[6] = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    v8 = a1[8];
    a1[7] = 0;
    a1[8] = 0;
    if (v8)
    {
      sub_100008080(v8);
    }

    v9 = a1[10];
    a1[9] = 0;
    a1[10] = 0;
    if (v9)
    {
      sub_100008080(v9);
    }

    v10 = a1[12];
    a1[11] = 0;
    a1[12] = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    v11 = a1[14];
    a1[13] = 0;
    a1[14] = 0;
    if (v11)
    {
      sub_100008080(v11);
    }

    v12 = a1[16];
    a1[15] = 0;
    a1[16] = 0;
    if (v12)
    {
      sub_100008080(v12);
    }

    v13 = a1[18];
    a1[17] = 0;
    a1[18] = 0;
    if (v13)
    {
      sub_100008080(v13);
    }

    v14 = a1[20];
    a1[19] = 0;
    a1[20] = 0;
    if (v14)
    {
      sub_100008080(v14);
    }

    v15 = a1[22];
    a1[21] = 0;
    a1[22] = 0;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = a1[24];
    a1[23] = 0;
    a1[24] = 0;
    if (v16)
    {
      sub_100008080(v16);
    }

    v17 = a1[32];
    a1[31] = 0;
    a1[32] = 0;
    if (v17)
    {
      sub_100008080(v17);
    }

    v18 = a1[26];
    a1[25] = 0;
    a1[26] = 0;
    if (v18)
    {
      sub_100008080(v18);
    }

    if (*(a2 + 8) == 5)
    {
      v20 = a1[27];
      v19 = a1[28];
    }

    else
    {
      v20 = a1[1];
      v19 = a1[2];
    }

    *a3 = v20;
    a3[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

uint64_t sub_1000CD414(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_1000CD888(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  if (sub_1000CD414(a2 + 3728, a3))
  {
    if (sub_1004A2080(a2 + 3728, &v8, v4))
    {
      v6 = *(a1 + 8);
      *(v6 + 8) = v9;
      *(v6 + 9) = CLMotionActivity::isTypeIndoorPedestrian();
      v7 = *(a1 + 24);
      *(v7 + 8) = v9;
      *(v7 + 9) = CLMotionActivity::isTypeIndoorPedestrian();
      if (v9 == 1)
      {
        sub_100AAF21C(a2 + 3440);
        sub_1004A243C(a2 + 3296);
        if (CLMotionActivity::isTypeIndoorPedestrian())
        {
          sub_100A9C040(a2 + 3872);
        }
      }
    }
  }
}

BOOL sub_1000CD974(uint64_t a1, double a2)
{
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8 * ((v4 + *(a1 + 56) - 1) / 0x11uLL)) + 232 * ((v4 + *(a1 + 56) - 1) % 0x11uLL));
  }

  else
  {
    v5 = -1.79769313e308;
  }

  if (v5 >= a2)
  {
    if (sub_1000A2C48(a1, v11, v10, a2))
    {
      return 1;
    }

    v6 = (a1 + 80);
  }

  else
  {
    v6 = (a1 + 80);
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 16);
      if (*(a1 + 72) - v7 < a2 && v7 + *(a1 + 88) > a2)
      {
        v8 = *(a1 + 104);
        if (v8 - (*(*a1 + 56))(a1, a2) < a2)
        {
          return 0;
        }
      }
    }
  }

  return (*v6 & 1) != 0 || (*(a1 + 120) & 1) != 0 || *(a1 + 104) + -2.0 >= a2;
}

uint64_t sub_1000CDACC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  result = sub_1000CD414(a2 + 3728, a3);
  if (result)
  {
    result = sub_1004A2080(a2 + 3728, v8, v4);
    if (result)
    {
      if (v8[208])
      {
        return (*(*a1 + 32))(a1, a2, v4);
      }

      v7.n128_f64[0] = v4;
      result = sub_1000CDBA0(a2 + 3512, v7);
      if (result)
      {
        return (*(*a1 + 32))(a1, a2, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1000CDBA0(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018FE7D0();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018FE7E4();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018FE7D0();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018FE7E4();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

uint64_t sub_1000CE014(void *a1, double a2)
{
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v4 = a1[8];
  if (v4)
  {
    v5 = *(*(a1[4] + (((v4 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(a1 + 56) - 1));
  }

  else
  {
    v5 = -1.79769313e308;
  }

  if (v5 >= a2 && sub_1000D52D0(a1, v18, v17, a2) || (v6 = *(a1 + 13), v6 - (*(*a1 + 56))(a1, a2) >= a2) || (*(a1 + 121) & 1) != 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A268();
    }

    v7 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v8 = a1[1];
      v9 = (*(*a1 + 56))(a1, a2);
      *buf = 136315650;
      v26 = v8;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%s is ready at, %f, timeout, %f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B3212C(a1, a2);
    }

    return 1;
  }

  else
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A268();
    }

    v11 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[1];
      v13 = (*(*a1 + 56))(a1, a2);
      *buf = 136315650;
      v26 = v12;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s is not ready at, %f, timeout, %f", buf, 0x20u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v14 = a1[1];
      v15 = (*(*a1 + 56))(a1, a2);
      v19 = 136315650;
      v20 = v14;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLNatalieInput<CLCoarseElevationChangeEntry>::isReady(CFAbsoluteTime)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }

      return 0;
    }
  }

  return result;
}

double sub_1000CE3A8(uint64_t a1, double a2)
{
  v2 = 2.0;
  if (*(a1 + 120) == 1 && (*(a1 + 123) & 1) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = *(*(*(a1 + 32) + (((v3 + *(a1 + 56) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v3 + *(a1 + 56) - 1)) + 180.0 + 20.0;
    }

    else
    {
      v4 = -1.79769313e308;
    }

    v2 = v4 - a2;
  }

  *(a1 + 96) = v2;
  return v2;
}

uint64_t sub_1000CE420(uint64_t a1, double a2)
{
  v4 = (*(*a1 + 40))(a1);
  v6 = 24;
  if (v4)
  {
    v6 = 8;
  }

  v7 = *(**(a1 + v6) + 32);
  v5.n128_f64[0] = a2;

  return v7(v5);
}

uint64_t sub_1000CE4D0(double a1, uint64_t a2, uint64_t a3)
{
  sub_1004A2080(a3 + 3728, v8, a1);
  if (CLMotionActivity::isTypePedestrian() && v8[208] == 1)
  {
    v5.n128_f64[0] = a1;
    result = sub_1000CA668(a3 + 3584, v5);
    if (result)
    {
      v7.n128_f64[0] = a1;
      return sub_100AAF3EC(a3 + 3440, v7);
    }
  }

  else
  {
    v5.n128_f64[0] = a1;
    return sub_1000CA668(a3 + 3584, v5);
  }

  return result;
}

BOOL sub_1000CE580(double a1, double a2)
{
  v2 = a2 * 39.3700981;
  v3 = fmax((v2 + -59.0) * 0.0375 + 4.2, 4.2);
  if (v3 > 4.8)
  {
    v3 = 4.8;
  }

  return 2.23693991 / v3 > a1 && a1 > 0.0;
}

void sub_1000CE5E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_1001D0818();
}

unsigned __int16 *sub_1000CE644(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[12 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_1000CE6B0(uint64_t *a1, unsigned __int16 *a2)
{
  if (*a1 >= a2[1])
  {
    v2 = a2[1];
  }

  else
  {
    v2 = *a1;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = -1.0;
  while (1)
  {
    v9 = sub_1000C6BD8(a2, v6);
    v10 = a1[5];
    if (!v10)
    {
      sub_1000CF05C();
    }

    if ((*(*v10 + 48))(v10, v9))
    {
      if (v8 == -1.0)
      {
        v8 = v11;
      }

      if (++v5 >= *(a1 + 2))
      {
        break;
      }
    }

    if (v2 == ++v6)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1000CE7D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 20) == 128;
  }

  v3 = v2;
  return v3 ^ 1u;
}

uint64_t sub_1000CE7F4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 2, &v4);
}

uint64_t sub_1000CE828(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000CE87C(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = (*v6 + v7);
    if (*v9 != *(v6 + 16) || v9[1] != a2)
    {
      goto LABEL_7;
    }

    v10 = v9[2];
    v11 = *(v9 + 2);
    result = (*(v9 + 1))(v6, a3);
    if (result)
    {
      break;
    }

    v3 = *(v6 + 8);
LABEL_7:
    ++v8;
    v7 += 24;
    if (v3 <= v8)
    {
      return result;
    }
  }

  if (*(v6 + 17) <= 1u && *(v6 + 16) != v10)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AE5C5C();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v6 + 17);
      v14 = *(v6 + 16);
      *buf = 67109888;
      v17 = v13;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[FSM] %u,event,%u,transition,from,%u,to,%u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101AE5C70();
      }

      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  *(v6 + 16) = v10;
  return v11(v6, a3);
}

BOOL sub_1000CEB20(uint64_t a1, uint64_t a2)
{
  result = 0;
  v3 = *(a2 + 20);
  if (v3 != 256 && v3 != 512)
  {
    return v3 != 4096;
  }

  return result;
}

uint64_t sub_1000CEB5C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 4, &v4);
}

uint64_t sub_1000CEB90(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 6, &v4);
}

uint64_t sub_1000CEBDC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 7, &v4);
}

double *sub_1000CEC28(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[v2 + 1];
    v6 = v5;
    ++v2;
  }

  while (v6 > v4);
  v7 = &a1[v2];
  v8 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *--a2;
      v12 = v11;
    }

    while (v12 <= v4);
  }

  else
  {
    do
    {
      v9 = *--a2;
      v10 = v9;
    }

    while (v10 <= v4);
  }

  if (v7 < a2)
  {
    v13 = *a2;
    v14 = &a1[v2];
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v5;
      do
      {
        v16 = v14[1];
        ++v14;
        v5 = v16;
        v17 = v16;
      }

      while (v17 > v4);
      do
      {
        v18 = *--v15;
        v13 = v18;
        v19 = v18;
      }

      while (v19 <= v4);
    }

    while (v14 < v15);
    v8 = v14 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

uint64_t sub_1000CECF4(_OWORD *a1, uint64_t a2)
{
  a1[2] = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  a1[5] = *(a2 + 48);
  a1[6] = v4;
  a1[3] = v2;
  a1[4] = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  a1[9] = *(a2 + 112);
  a1[10] = v7;
  a1[7] = v5;
  a1[8] = v6;
  return sub_1000D0778(a1, (a2 + 8), *a2);
}

uint64_t sub_1000CED24(uint64_t a1, uint64_t a2)
{
  *(a2 + 144) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = (*(*a1 + 16))(a1, &v14, &v12);
  if (result)
  {
    v4 = *(&v15 + 1);
    if (*(&v15 + 1) == *(&v13 + 1))
    {
      return 0;
    }

    else
    {
      if (*v15 == *(&v15 + 1))
      {
        v4 = *(v15 - 8) + 3952;
      }

      v5 = *(v4 - 136);
      *a2 = *(v4 - 152);
      *(a2 + 16) = v5;
      v6 = *(v4 - 120);
      v7 = *(v4 - 104);
      v8 = *(v4 - 72);
      *(a2 + 64) = *(v4 - 88);
      *(a2 + 80) = v8;
      *(a2 + 32) = v6;
      *(a2 + 48) = v7;
      v9 = *(v4 - 56);
      v10 = *(v4 - 40);
      v11 = *(v4 - 24);
      *(a2 + 144) = *(v4 - 8);
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      *(a2 + 96) = v9;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000CEE14(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x1A));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 152 * (v4 % 0x1A);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x1A));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 152 * (v9 % 0x1A);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 3952;
      }

      v18 = vabdd_f64(*(v17 - 112), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 3952;
        }

        v14 = v18;
        if (*(v19 - 112) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 3952;
      }

      v15 -= 152;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000CEF64(uint64_t a1, uint64_t a2)
{
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = (*(*a1 + 16))(a1, &v15, &v13);
  if (result)
  {
    v4 = *(&v16 + 1);
    if (*(&v16 + 1) == *(&v14 + 1))
    {
      return 0;
    }

    else
    {
      if (*v16 == *(&v16 + 1))
      {
        v4 = *(v16 - 8) + 4032;
      }

      v5 = *(v4 - 168);
      v6 = *(v4 - 136);
      *(a2 + 16) = *(v4 - 152);
      *(a2 + 32) = v6;
      *a2 = v5;
      v7 = *(v4 - 120);
      v8 = *(v4 - 104);
      v9 = *(v4 - 72);
      *(a2 + 80) = *(v4 - 88);
      *(a2 + 96) = v9;
      *(a2 + 48) = v7;
      *(a2 + 64) = v8;
      v10 = *(v4 - 56);
      v11 = *(v4 - 40);
      v12 = *(v4 - 24);
      *(a2 + 160) = *(v4 - 8);
      *(a2 + 128) = v11;
      *(a2 + 144) = v12;
      *(a2 + 112) = v10;
      return 1;
    }
  }

  return result;
}

void sub_1000CF05C()
{
  exception = __cxa_allocate_exception(8uLL);
}

double *sub_1000CF0A8(double *result, double *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        v7 = v5;
        v8 = v6;
        if (v7 > v8)
        {
          v9 = v3;
          while (1)
          {
            *(result + v9 + 8) = v6;
            if (!v9)
            {
              break;
            }

            v6 = *(result + v9 - 8);
            v10 = v6;
            v9 -= 8;
            if (v7 <= v10)
            {
              v11 = (result + v9 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

void sub_1000CF128(uint64_t a1, __int128 *a2, double a3)
{
  if (*(a1 + 260))
  {
    v4 = a2[1];
    v9 = *a2;
    v10 = v4;
    v7 = a3;
    v8 = 6;
    sub_101319B64(a1, &v7);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283777;
      v12 = *(&v9 + 1);
      v13 = 2048;
      v14 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedCMGpsModelOutput,gpsModelOutputEvidence,%{private}f,currentTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B53630();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffCMGpsModelOutput", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B5355C();
    }
  }
}

double sub_1000CF2B0(uint64_t a1)
{
  __src = 0;
  v25 = 0;
  v26 = 0;
  sub_1003E4354(&__src, 0x40uLL);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    v4 = v25;
  }

  else
  {
    v4 = v25;
    do
    {
      v5 = *(v2 + 8);
      if (v4 >= v26)
      {
        v6 = __src;
        v7 = v4 - __src;
        v8 = (v4 - __src) >> 3;
        v9 = v8 + 1;
        if ((v8 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v10 = v26 - __src;
        if ((v26 - __src) >> 2 > v9)
        {
          v9 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          sub_1000B9708(&__src, v11);
        }

        v12 = v8;
        v13 = (8 * v8);
        v14 = &v13[-v12];
        *v13 = v5;
        v4 = v13 + 1;
        memcpy(v14, v6, v7);
        v15 = __src;
        __src = v14;
        v25 = v4;
        v26 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v4++ = v5;
      }

      v25 = v4;
      v2 += 16;
    }

    while (v2 != v3);
  }

  v16 = __src;
  if (__src == v4)
  {
    v22 = -1.0;
    if (!__src)
    {
      return v22;
    }

    goto LABEL_32;
  }

  sub_1000CF4A8(__src, v4, &v27, 126 - 2 * __clz((v4 - __src) >> 3), 1);
  v16 = __src;
  v17 = (v25 - __src) >> 3;
  if (v17 >= 5)
  {
    v17 = 5;
  }

  if (v25 == __src)
  {
    v19 = 0.0;
  }

  else
  {
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    v20 = __src;
    do
    {
      v21 = *v20++;
      v19 = v19 + v21;
      --v18;
    }

    while (v18);
  }

  v22 = v19 / v17;
  if (__src)
  {
LABEL_32:
    v25 = v16;
    operator delete(v16);
  }

  return v22;
}

void sub_1000CF484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1000CF4A8(double *result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = v78;
        v80 = *v9;
        v81 = *v9;
        if (v79 > v81)
        {
          *v9 = v78;
          *(a2 - 1) = v80;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = v83;
      v87 = *v9;
      v88 = *v9;
      v89 = v85;
      if (v86 <= v88)
      {
        if (v89 > v86)
        {
          *v82 = v85;
          *v84 = v83;
          v90 = v9;
          v91 = v9 + 1;
          if (v89 > v88)
          {
            goto LABEL_108;
          }

LABEL_110:
          v104 = *(a2 - 1);
          v105 = v104;
          if (v86 < v105)
          {
            *v84 = v104;
            *(a2 - 1) = v83;
            v106 = *v84;
            v107 = *v84;
            v108 = *v82;
            v109 = *v82;
            if (v107 > v109)
            {
              v9[1] = v106;
              v9[2] = v108;
              v110 = *v9;
              v111 = *v9;
              if (v107 > v111)
              {
                *v9 = v106;
                *(v9 + 1) = v110;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v89 > v86)
        {
          v90 = v9;
          v91 = v9 + 2;
          v86 = *v9;
          v83 = *v9;
          goto LABEL_108;
        }

        *v9 = v83;
        v9[1] = v87;
        v90 = v9 + 1;
        v91 = v9 + 2;
        v86 = v88;
        v83 = v87;
        if (v89 > v88)
        {
LABEL_108:
          *v90 = v85;
          *v91 = v87;
          goto LABEL_110;
        }
      }

      v86 = v85;
      v83 = v85;
      goto LABEL_110;
    }

    if (v12 == 5)
    {

      return sub_100248674(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1000CF0A8(v9, a2);
      }

      else if (v9 != a2)
      {
        while (v8 + 1 != a2)
        {
          v97 = *v8;
          v96 = v8[1];
          v101 = ++v8;
          v98 = v96;
          v99 = v97;
          if (v98 > v99)
          {
            do
            {
              *v101 = v97;
              v97 = *(v101 - 2);
              v100 = v97;
              --v101;
            }

            while (v98 > v100);
            *v101 = v96;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_100FBE518(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    v16 = v15;
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v13;
      v19 = *v9;
      v20 = *v9;
      if (v18 <= v20)
      {
        if (v16 > v18)
        {
          *v13 = v15;
          *(a2 - 1) = v17;
          v25 = *v13;
          v26 = *v9;
          v27 = *v9;
          if (v25 > v27)
          {
            *v9 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v16 > v18)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v17;
        *v13 = v19;
        v31 = *(a2 - 1);
        v32 = v31;
        if (v32 > v20)
        {
          *v13 = v31;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v33 = v13 - 1;
      v34 = *(v13 - 1);
      v35 = v34;
      v36 = v9[1];
      v37 = v36;
      v38 = *(a2 - 2);
      v39 = v38;
      if (v35 <= v37)
      {
        if (v39 > v35)
        {
          *v33 = v38;
          *(a2 - 2) = v34;
          v40 = *v33;
          v41 = v9[1];
          v42 = v41;
          if (v40 > v42)
          {
            v9[1] = *v33;
            *v33 = v41;
          }
        }
      }

      else
      {
        if (v39 > v35)
        {
          v9[1] = v38;
          goto LABEL_43;
        }

        v9[1] = v34;
        *v33 = v36;
        v45 = *(a2 - 2);
        v46 = v45;
        if (v46 > v37)
        {
          *v33 = v45;
LABEL_43:
          *(a2 - 2) = v36;
        }
      }

      v48 = v13[1];
      v47 = v13 + 1;
      v49 = v48;
      v50 = v48;
      v51 = v9[2];
      v52 = v51;
      v53 = *(a2 - 3);
      v54 = v53;
      if (v50 <= v52)
      {
        if (v54 > v50)
        {
          *v47 = v53;
          *(a2 - 3) = v49;
          v55 = *v47;
          v56 = v9[2];
          v57 = v56;
          if (v55 > v57)
          {
            v9[2] = *v47;
            *v47 = v56;
          }
        }
      }

      else
      {
        if (v54 > v50)
        {
          v9[2] = v53;
          goto LABEL_52;
        }

        v9[2] = v49;
        *v47 = v51;
        v58 = *(a2 - 3);
        v59 = v58;
        if (v59 > v52)
        {
          *v47 = v58;
LABEL_52:
          *(a2 - 3) = v51;
        }
      }

      v60 = *v14;
      v61 = *v14;
      v62 = *v33;
      v63 = *v33;
      v64 = *v47;
      v65 = *v47;
      if (v61 <= v63)
      {
        if (v65 > v61)
        {
          *v14 = v64;
          *v47 = v60;
          v47 = v14;
          v60 = v62;
          if (v65 > v63)
          {
            goto LABEL_59;
          }

          v60 = v64;
        }
      }

      else
      {
        if (v65 <= v61)
        {
          *v33 = v60;
          *v14 = v62;
          v33 = v14;
          v60 = v64;
          if (v65 <= v63)
          {
            v60 = v62;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v33 = v64;
        *v47 = v62;
      }

LABEL_60:
      v66 = *v9;
      *v9 = v60;
      *v14 = v66;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v21 = *v9;
    v22 = *v9;
    v23 = *v13;
    v24 = *v13;
    if (v22 > v24)
    {
      if (v16 > v22)
      {
        *v13 = v15;
        goto LABEL_38;
      }

      *v13 = v21;
      *v9 = v23;
      v43 = *(a2 - 1);
      v44 = v43;
      if (v44 > v24)
      {
        *v9 = v43;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 <= v22)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v21;
    v28 = *v9;
    v29 = *v13;
    v30 = *v13;
    if (v28 <= v30)
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    v67 = *(v9 - 1);
    v68 = *v9;
    if (v67 <= v68)
    {
      result = sub_1002481B4(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v69 = sub_1000CEC28(v9, a2);
    if ((v70 & 1) == 0)
    {
      goto LABEL_67;
    }

    v71 = sub_100248280(v9, v69);
    v9 = v69 + 1;
    result = sub_100248280(v69 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v69;
      if (v71)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v71)
    {
LABEL_67:
      result = sub_1000CF4A8(v8, v69, a3, -v11, a5 & 1);
      v9 = v69 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v72 = *v9;
  v73 = v9[1];
  v74 = v73;
  v75 = *v9;
  v76 = *(a2 - 1);
  v77 = v76;
  if (v74 <= v75)
  {
    if (v77 > v74)
    {
      v9[1] = v76;
      *(a2 - 1) = v73;
      v93 = *v9;
      v92 = v9[1];
      v94 = v92;
      v95 = *v9;
      if (v94 > v95)
      {
        *v9 = v92;
        v9[1] = v93;
      }
    }
  }

  else
  {
    if (v77 <= v74)
    {
      *v9 = v73;
      v9[1] = v72;
      v102 = *(a2 - 1);
      v103 = v102;
      if (v103 <= v75)
      {
        return result;
      }

      v9[1] = v102;
    }

    else
    {
      *v9 = v76;
    }

    *(a2 - 1) = v72;
  }

  return result;
}