void sub_100123E6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100123E78(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a2 + 110) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 360);
  if (v7 >= 0.0)
  {
    *(a1 + 352) = v7;
  }

  if (a3 >= 0.5 && (v8 = *(a2 + 28), fabsf(v8) >= 0.005) && (v9 = *(a2 + 32), fabsf(v9) >= 0.005))
  {
    v14 = atan2f(*(a2 + 32), *(a2 + 28));
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 6.28318531;
    }

    v16 = 6.28318531 - v15;
    if (v16 < 0.0 || v16 >= 6.28318531)
    {
      v16 = fmod(v16, 6.28318531);
      if (v16 < 0.0)
      {
        v16 = v16 + 6.28318531;
      }
    }

    *(a1 + 360) = v16;
    v17 = -v8 / (a3 * a3) * (-v8 / (a3 * a3)) * (*(a2 + 24) * 0.09) + v9 / (a3 * a3) * (v9 / (a3 * a3)) * (*(a2 + 24) * 0.09);
    *(a1 + 368) = v17;
    if (v17 < 0.0)
    {
      *(a1 + 368) = qword_101C7FE50[*(a2 + 104) == 1];
    }

    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a2 + 8);
      v20 = *(a2 + 104);
      v21 = *(a1 + 344);
      v22 = *(a1 + 368);
      v23 = *(a1 + 360) * 57.2957795;
      *buf = 134350848;
      v24 = *(a2 + 28);
      v25 = *(a2 + 32);
      v29 = v19;
      v30 = 1026;
      *v31 = v20;
      *&v31[4] = 2050;
      *&v31[6] = a3;
      *&v31[14] = 2050;
      *&v31[16] = v21;
      *&v31[24] = 2050;
      *&v31[26] = v23;
      *&v31[34] = 2050;
      *&v31[36] = sqrt(v22) * 57.2957795;
      v32 = 2050;
      v33 = v24;
      v34 = 2050;
      v35 = v25;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,estimated course,sample mct,%{public}.3f,RefF,%{public}d,GDistanceMoved_m,%{public}.3f,GSpeed_mps,%{public}.3f,Course_deg,%{public}.1f,CourseStdv_deg,%{public}.1f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::estimateCourseOverGroundPDR(const CLPIOSample &, const double)", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    return 1;
  }

  else
  {
    *(a1 + 360) = 0xBFF0000000000000;
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 28);
      v13 = *(a2 + 32);
      *buf = 134350080;
      v29 = v11;
      v30 = 2050;
      *v31 = a3;
      *&v31[8] = 2050;
      *&v31[10] = 0x3FE0000000000000;
      *&v31[18] = 2050;
      *&v31[20] = v12;
      *&v31[28] = 2050;
      *&v31[30] = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,cannot compute course,sample mct,%{public}.3f,GDistanceMoved,%{public}.3f,threshold,%{public}.3f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", buf, 0x34u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018D54AC(buf);
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::estimateCourseOverGroundPDR(const CLPIOSample &, const double)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }

      return 0;
    }
  }

  return result;
}

void sub_100124388(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100124394(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V1.2D, #-1.0 }

  *a2 = xmmword_101C75BF0;
  *(a2 + 16) = _Q1;
  *(a2 + 32) = 0xBFF0000000000000;
  v8 = *(a1 + 344);
  if (v8 >= 0.0)
  {
    *a2 = *(a1 + 8);
    *(a2 + 8) = v8;
    *(a2 + 16) = 0x3FC70A3D70A3D70ALL;
    v9 = *(a1 + 360);
    if (v9 <= -1.0)
    {
      v9 = *(a1 + 352);
    }

    v10 = *(a1 + 368);
    if (v10 >= 0.069)
    {
      v11 = *(a1 + 368);
    }

    else
    {
      v11 = 0.069;
    }

    *(a2 + 24) = v9;
    *(a2 + 32) = v11;
    if (*a1 == 1)
    {
      v12 = (a1 + 368);
      if (v10 < 9.8696044)
      {
        v12 = &unk_101C7FEC0;
      }

      v13 = *v12;
      goto LABEL_11;
    }

    if (*(a1 + 40) > 0.0)
    {
      v14 = *(a1 + 56);
      if (v14 >= 0.0)
      {
        v15 = *(a1 + 48);
        v16 = *(a1 + 72);
        v17 = *(a1 + 80);
        if (v17 > 0.616850275 && v14 > 5.0)
        {
          if (v11 >= v17)
          {
            v13 = v11;
          }

          else
          {
            v13 = *(a1 + 80);
          }

LABEL_11:
          *(a2 + 32) = v13;
          return;
        }

        if (*(a1 + 608) == 1)
        {
          v18 = atan2(*(a1 + 64), v14);
          *(a2 + 32) = v11 + v18 * v18;
          v19 = 1.0;
          if (v15 > 0.0)
          {
            v19 = v15;
          }

          *(a2 + 16) = v16 / v19 * (v16 / v19) + 0.18;
        }
      }
    }
  }
}

unint64_t sub_1001244F0(int64x2_t *a1, void *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 / 0x24;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 / 0x24));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 112 * (v10 % 0x24);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 36 * (a2 - v14) + 0x6DB6DB6DB6DB6DB7 * ((a3 - *a2) >> 4) - 0x6DB6DB6DB6DB6DB7 * ((v15 - *v14) >> 4);
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = 36 * ((v13 - v12) >> 3) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      sub_100931C4C(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 / 0x24));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + 112 * (v21 % 0x24));
    }

    v28 = v17 - v16;
    if (v6 <= v17 - v16)
    {
      v30 = v24;
      v31 = (v12 + 8 * (v21 / 0x24));
      if (!v6)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v29 = &a5[-112 * (v6 - (v17 - v16))];
      if (v28 < v6 >> 1)
      {
        v29 = &a4[112 * v28];
      }

      if (v29 == a5)
      {
        v30 = v24;
        v31 = v23;
      }

      else
      {
        v50 = v29;
        v31 = v23;
        v30 = v24;
        do
        {
          v51 = *v50;
          v52 = *(v50 + 2);
          v30[1] = *(v50 + 1);
          v30[2] = v52;
          *v30 = v51;
          v53 = *(v50 + 3);
          v54 = *(v50 + 4);
          v55 = *(v50 + 6);
          v30[5] = *(v50 + 5);
          v30[6] = v55;
          v30[3] = v53;
          v30[4] = v54;
          v30 += 7;
          if ((v30 - *v31) == 4032)
          {
            v56 = v31[1];
            ++v31;
            v30 = v56;
          }

          v50 += 112;
          ++a1[2].i64[1];
        }

        while (v50 != a5);
      }

      a5 = v29;
      v6 = v17 - v16;
      if (!v28)
      {
        goto LABEL_64;
      }
    }

    v72.n128_u64[0] = v23;
    v72.n128_u64[1] = v24;
    sub_100124A54(&v72, -v6);
    v57 = v72;
    if (v72.n128_u64[1] != v24)
    {
      v59 = v72.n128_u64[1];
      v58 = v72.n128_u64[0];
      do
      {
        v60 = *v59;
        v61 = v59[2];
        v30[1] = v59[1];
        v30[2] = v61;
        *v30 = v60;
        v62 = v59[3];
        v63 = v59[4];
        v64 = v59[6];
        v30[5] = v59[5];
        v30[6] = v64;
        v30[3] = v62;
        v30[4] = v63;
        v30 += 7;
        if ((v30 - *v31) == 4032)
        {
          v65 = v31[1];
          ++v31;
          v30 = v65;
        }

        v59 += 7;
        if ((v59 - *v58) == 4032)
        {
          v66 = v58[1];
          ++v58;
          v59 = v66;
        }

        ++a1[2].i64[1];
      }

      while (v59 != v24);
    }

    if (v6 < v28)
    {
      v72.n128_u64[0] = v23;
      v72.n128_u64[1] = v24;
      sub_100124A54(&v72, -v28);
      sub_100932124(v72.n128_u64[0], v72.n128_u64[1], v57.n128_u64[0], v57.n128_u64[1], v23, v24, &v72);
      v23 = v73;
      v24 = v74;
    }

    sub_1009321F4(a4, a5, v23, v24, &v72);
    goto LABEL_64;
  }

  if (a6 > v10)
  {
    sub_1009318EC(a1, a6 - v10);
    v10 = a1[2].u64[0];
    v12 = a1->i64[1];
    v13 = a1[1].i64[0];
    v11 = v10 / 0x24;
  }

  v18 = (v12 + 8 * v11);
  if (v13 == v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 112 * (v10 % 0x24);
  }

  if (v6 <= v16)
  {
    v26 = v19;
    v27 = (v12 + 8 * v11);
    if (!v6)
    {
      goto LABEL_64;
    }

    goto LABEL_39;
  }

  v25 = &a4[112 * (v6 - v16)];
  if (v16 < v6 >> 1)
  {
    v25 = &a5[-112 * v16];
  }

  if (v25 == a4)
  {
    v26 = v19;
    v27 = v18;
  }

  else
  {
    v32 = v25;
    v27 = v18;
    v26 = v19;
    do
    {
      if (v26 == *v27)
      {
        v33 = *--v27;
        v26 = (v33 + 4032);
      }

      v34 = *(v32 - 7);
      v35 = *(v32 - 5);
      *(v26 - 6) = *(v32 - 6);
      *(v26 - 5) = v35;
      *(v26 - 7) = v34;
      v36 = *(v32 - 4);
      v37 = *(v32 - 3);
      v38 = *(v32 - 1);
      *(v26 - 2) = *(v32 - 2);
      *(v26 - 1) = v38;
      *(v26 - 4) = v36;
      *(v26 - 3) = v37;
      v26 -= 112;
      a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
      v32 -= 112;
    }

    while (v32 != a4);
  }

  a4 = v25;
  v6 = v16;
  if (v16)
  {
LABEL_39:
    v72.n128_u64[0] = v18;
    v72.n128_u64[1] = v19;
    sub_100124A54(&v72, v6);
    v39 = v72;
    if (v72.n128_u64[1] != v19)
    {
      v41 = v72.n128_u64[1];
      v40 = v72.n128_u64[0];
      do
      {
        if (v26 == *v27)
        {
          v42 = *--v27;
          v26 = (v42 + 4032);
        }

        if (v41 == *v40)
        {
          v43 = *--v40;
          v41 = v43 + 4032;
        }

        v26 -= 112;
        v44 = *(v41 - 112);
        v45 = *(v41 - 80);
        *(v26 + 1) = *(v41 - 96);
        *(v26 + 2) = v45;
        *v26 = v44;
        v46 = *(v41 - 64);
        v47 = *(v41 - 48);
        v48 = *(v41 - 16);
        *(v26 + 5) = *(v41 - 32);
        *(v26 + 6) = v48;
        *(v26 + 3) = v46;
        *(v26 + 4) = v47;
        a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
        v41 -= 112;
      }

      while (v41 != v19);
    }

    if (v6 < v16)
    {
      v72.n128_u64[0] = v18;
      v72.n128_u64[1] = v19;
      sub_100124A54(&v72, v16);
      v49 = v72;
      v72.n128_u64[0] = v18;
      v72.n128_u64[1] = v19;
      sub_100931F98(v39.n128_u64[0], v39.n128_u64[1], v49.n128_u64[0], v49.n128_u64[1], &v72);
      v19 = v72.n128_u64[1];
      v18 = v72.n128_u64[0];
    }

    sub_10093203C(a4, v19, a5, v18, &v72);
  }

LABEL_64:
  v67 = a1[2].u64[0];
  v68 = a1->i64[1];
  v69 = (v68 + 8 * (v67 / 0x24));
  if (a1[1].i64[0] == v68)
  {
    v70 = 0;
  }

  else
  {
    v70 = *v69 + 112 * (v67 % 0x24);
  }

  v72.n128_u64[0] = v69;
  v72.n128_u64[1] = v70;
  sub_100124A54(&v72, v16);
  return v72.n128_u64[0];
}

void *sub_100124A54(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6DB6DB6DB6DB6DB7 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 35 - v3;
      v6 = &v2[-(v5 / 0x24)];
      *result = v6;
      v4 = *v6 + 112 * (36 * (v5 / 0x24) - v5) + 3920;
    }

    else
    {
      *result = &v2[v3 / 0x24];
      v4 = v2[v3 / 0x24] + 112 * (v3 % 0x24);
    }

    result[1] = v4;
  }

  return result;
}

void sub_100124B08(uint64_t a1, uint64_t *a2, double a3, __n128 a4)
{
  sub_10011E08C(a1 + 600, a2, a3, a4);

  sub_100124B4C(a1 + 816, a2);
}

void sub_100124B4C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 21) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      do
      {
        if ((*(v2 + 110) & 4) != 0 && !*(v2 + 105))
        {
          v5 = *(v2 + 64);
          if ((*(a1 + 20) & 1) == 0)
          {
            *(a1 + 36) = v5;
            *(a1 + 24) = *(v2 + 52);
            *(a1 + 32) = *(v2 + 60);
            *(a1 + 20) = 1;
            goto LABEL_25;
          }

          v6 = *(v2 + 52);
          v7 = *(v2 + 56);
          v9 = *(a1 + 24);
          v8 = *(a1 + 28);
          v10 = *(v2 + 60);
          v11 = *(a1 + 32);
          v12 = *(a1 + 36);
          if (qword_1025D4600 != -1)
          {
            sub_1002F97BC();
          }

          v13 = ((vabds_f32(v5, v12) + vabds_f32(v6, v9)) + vabds_f32(v7, v8)) + vabds_f32(v10, v11);
          v14 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 40);
            v16 = *(a1 + 44);
            *buf = 134349568;
            v23 = v13;
            v24 = 1026;
            v25 = v15;
            v26 = 1026;
            v27 = v16;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#CLProactiveLocation,raw_turn_detect_value,%{public}0.6lf,consecutive_count_over,%{public}d,consecutive_count_under,%{public}d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1002F97BC();
            }

            v21 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocationTurnDetectorOverride::feedIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          if (v13 <= *(a1 + 4))
          {
            if (v13 >= *a1)
            {
              v17 = *(a1 + 40) + 1;
              *(a1 + 40) = v17;
              v18 = *(a1 + 72);
              if (v18 && v17 == *(a1 + 12))
              {
                (*(*v18 + 48))(v18);
              }
            }

            else
            {
              *(a1 + 40) = 0;
            }

            if (v13 <= *(a1 + 8))
            {
              v19 = *(a1 + 44) + 1;
              *(a1 + 44) = v19;
              v20 = *(a1 + 104);
              if (v20)
              {
                if (!(v19 % *(a1 + 16)))
                {
                  (*(*v20 + 48))(v20);
                }
              }
            }

            else
            {
              *(a1 + 44) = 0;
            }

            *(a1 + 24) = *(v2 + 52);
            goto LABEL_25;
          }
        }

        *(a1 + 20) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
LABEL_25:
        v2 += 112;
      }

      while (v2 != v3);
    }
  }
}

void sub_100124EAC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 136) == 1)
  {
    v14 = 0.0;
    v3 = (a1 + 488);
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = 0;
      v7 = *(a1 + 488) * *(a1 + 488);
      do
      {
        sub_100125068(a1, v4, (a1 + 472), (a1 + 476), (a1 + 480), (a1 + 484), &v14);
        v6 |= v14 > v7;
        if (v14 > v7)
        {
          v7 = v14;
        }

        v4 += 112;
      }

      while (v4 != v5);
      if (v6)
      {
        *v3 = sqrtf(v7);
      }
    }

    if (*(a1 + 520) > 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754D8();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 472);
        v10 = *(a1 + 476);
        v11 = *(a1 + 480);
        v12 = *(a1 + 484);
        v13 = *(a1 + 488);
        *buf = 134350080;
        v16 = v9;
        v17 = 2050;
        v18 = v10;
        v19 = 2050;
        v20 = v11;
        v21 = 2050;
        v22 = v12;
        v23 = 2050;
        v24 = v13;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,io,cX,%{public}5.1f,cY,%{public}5.1f,cZ,%{public}5.1f,cU,%{public}5.1f,maxV,%{public}4.1lf", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018754EC();
      }
    }
  }
}

void sub_100125068(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *(a2 + 110);
  if (v7)
  {
    *a3 = *a3 + fabsf(*(a2 + 28));
    *a4 = *a4 + fabsf(*(a2 + 32));
    *a5 = *a5 + fabsf(*(a2 + 36));
  }

  else
  {
    v8 = *a6 + 0.185185185;
    *a6 = v8;
  }

  v9 = 0.0;
  if ((v7 & 2) != 0)
  {
    v9 = ((*(a2 + 44) * *(a2 + 44)) + (*(a2 + 40) * *(a2 + 40))) + (*(a2 + 48) * *(a2 + 48));
  }

  *a7 = v9;
}

BOOL sub_100125258(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isInVehicle((a1 + 40)) && ((CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001252CC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 >= 0.0 && (a3 >= 0.0 ? (v5 = v3 <= a2) : (v5 = 0), v5 ? (v6 = a2 - v3 <= a3) : (v6 = 1), v6))
  {
    v4 = *(a1 + 88);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100125300(uint64_t a1, double *a2)
{
  if (*(a1 + 24) == 1)
  {
    *a2 = *(a1 + 16) - *a1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "TCONV,getMachContinuousToCFAbsoluteOffsetSec failed", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019D1C9C();
    }
  }

  return *(a1 + 24);
}

BOOL sub_1001253BC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isTypeStatic() && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100125424(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 0.0)
  {
    return 0;
  }

  v5 = a3 >= 0.0 && v3 <= a2;
  if (v5 && a2 - v3 > a3)
  {
    return 0;
  }

  if (CLMotionActivity::isInVehicle((a1 + 40)))
  {
    v8 = (CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0;
  }

  else
  {
    v8 = 0;
  }

  if (CLMotionActivity::isCycling((a1 + 40)))
  {
    v9 = *(a1 + 44) > 0;
  }

  else
  {
    v9 = 0;
  }

  if (v8 || v9 || (*(a1 + 88) & 1) != 0)
  {
    return 1;
  }

  return sub_1001254F8(a1);
}

uint64_t *sub_100125538(uint64_t a1, unsigned int a2, double a3)
{
  v6 = a2;
  v7 = &v6;
  result = sub_1000AE2AC(a1, &v6);
  *(result + 5) = a3;
  *(a1 + 24) = v6;
  return result;
}

BOOL sub_1001255A0(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isCycling((a1 + 40)) && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100125608(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isTypePedestrian() && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100125678(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 276) != 1)
  {
LABEL_4:
    if (a2 == 1)
    {
      [*(v3 + 264) startLeechingVisitsForClient:*(v3 + 256)];
    }

    else if (!a2)
    {
      [*(v3 + 264) startMonitoringVisitsForClient:*(v3 + 256)];
    }

    *(v3 + 272) = a2;
    *(v3 + 276) = 1;
    [objc_msgSend(*(v3 + 128) "vendor")];
    v4 = *(v3 + 64);
    if (v4)
    {
      [v4 clientName];
    }

    sub_100043B98();
  }

  if (*(result + 272) != a2)
  {
    sub_1000309A8(result);
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10012585C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102639C88 + 8);
    }

    v6 = sub_101236020(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v8 + 1);
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102639C88 + 16);
    }

    v10 = sub_10123906C(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 36);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 = (v4 + v18 + v14 + 1);
  }

LABEL_28:
  *(a1 + 32) = v4;
  return v4;
}

BOOL sub_100125988(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = (*(*v1 + 32))(v1);
  v3 = v1[1];

  return sub_1001752AC(v3, v2);
}

uint64_t sub_1001259EC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(*a1 + 16))(a1);
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, timer event, state:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  *(a1 + 16) = 1;
  *(*(a1 + 8) + 80) = 0;
  sub_100175108(a1);
  return *(***(a1 + 8) - 8);
}

void sub_100125B1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10038694C(exception, a1);
}

void sub_100125B78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:stopped receiving location information, client:%{public, location:escape_only}@}", v7, 0x1Cu);
  }

  dispatch_source_cancel([*(v2 + 416) objectForKeyedSubscript:*(a1 + 32)]);
  [*(v2 + 416) removeObjectForKey:*(a1 + 32)];
  [objc_msgSend(*(v2 + 456) objectForKeyedSubscript:{*(a1 + 32)), "end"}];
  [*(v2 + 456) setObject:0 forKeyedSubscript:*(a1 + 32)];
  v5 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10002FE04(v2, v5, 0xAuLL, 0, 0, 0, Current);
  sub_1000ED87C(v2, *(v2 + 504), (v2 + 464), *(a1 + 32));
}

void sub_100125CD4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution Attribution timer fired, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &v9, 0x26u);
    }
  }

  sub_100125EAC(v2, *(a1 + 48), [*(a1 + 40) attributionIdentifier], 0);
  if (![*(a1 + 40) totalAttributionCount])
  {
    [objc_msgSend(*(a1 + 40) "attributionTimer")];
    [*(a1 + 56) removeObjectForKey:*(a1 + 32)];
    if (*(a1 + 72) == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = 68289538;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution No subscriptions remaining; removing AttributionRecord for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &v9, 0x26u);
      }
    }
  }
}

void sub_100125EAC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_10001A3E8();
  if (sub_1000F4760())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v9 = [+[NSUUID UUID](NSUUID UUIDString];
      *buf = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = a2;
      v20 = 2114;
      v21 = a3;
      v22 = 2082;
      v23 = [(NSString *)v9 UTF8String];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SystemStatus Publishing receiving location interval end, Client:%{public, location:escape_only}@, AttributionIdentifier:%{public, location:escape_only}@, MessageUUID:%{public, location:escape_only}s}", buf, 0x30u);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 424);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001260A4;
    v12[3] = &unk_10246FEA8;
    v12[4] = a3;
    v13 = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10077B190;
    v11[3] = &unk_102447418;
    v11[4] = v9;
    [v10 updateVolatileData:v12 completion:v11];
    if (_os_feature_enabled_impl())
    {
      sub_1000ED87C(a1, *(a1 + 568), (a1 + 528), a2);
    }
  }
}

void sub_1001260A4(uint64_t a1, void *a2, void *a3)
{
  if ([objc_msgSend(a2 "attributions")])
  {
    [a2 removeAttribution:*(a1 + 32)];
    [a3 setUserInitiated:*(a1 + 40)];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus removing attribution that doesn't exist!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v8 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus removing attribution that doesn't exist!", "{msg%{public}.0s:#SystemStatus removing attribution that doesn't exist!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }

  if ([objc_msgSend(a2 "attributions")])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus removed attribution but it still exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v13 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus removed attribution but it still exists!", "{msg%{public}.0s:#SystemStatus removed attribution but it still exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }
}

void sub_100126380(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018B4480();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,bbGnssStatusQueryReportingTimeout", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B4494();
  }

  sub_10011E75C(a1, (a1 + 24));
}

void sub_100126424(unsigned __int8 *a1)
{
  v2 = sub_100126B4C(a1);
  v3 = sub_1001278E0(a1);
  v4 = sub_100126564(a1);
  v5 = 0x10000;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v3)
  {
    v6 = 0;
  }

  sub_100128330(a1, v6 | v2 | v5);
  if (qword_1025D4340 != -1)
  {
    sub_101BB96A4();
  }

  v7 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[616];
    v9[0] = 67109120;
    v9[1] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "timeout fClientArmedRemotely %d", v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB9AC0(a1);
  }

  if (a1[616])
  {
    sub_1013281EC(a1);
  }
}

uint64_t sub_100126564(uint64_t a1)
{
  if ((*(a1 + 317) & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC244();
    }

    if (qword_102665710)
    {
      *(a1 + 317) = off_1026346A0();
      if (qword_1025D4550 != -1)
      {
        sub_101BB996C();
      }

      v2 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 317);
        *buf = 67109120;
        v43 = v3;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC36C((a1 + 317));
      }
    }
  }

  *buf = 0;
  v4 = sub_1000206B4();
  sub_10005BBE4(v4, "CLIgneousArmMinutes", buf);
  v5 = 0;
  v6 = *buf;
  if ((*(a1 + 313) & 1) == 0)
  {
    v5 = *(a1 + 317);
  }

  sub_100127D64(a1);
  v7 = (v5 & *(a1 + 318));
  sub_100127E1C(a1);
  v8 = sub_1001282B4(a1);
  LOBYTE(v27[0]) = 0;
  sub_100126E84(buf, "IgneousForceInRandomArmSession", v27, 0);
  v9 = v8 | buf[1];
  v11 = v6 > 0 && v7 != 0;
  if ((v8 | buf[1]))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a1 + 314);
  }

  v13 = v11 & v12;
  LOBYTE(v27[0]) = 0;
  sub_100126E84(buf, "IgneousForceOn", v27, 0);
  v14 = buf[1];
  if (qword_1025D4550 != -1)
  {
    sub_101BB9A5C();
  }

  v15 = v13 | v14;
  v16 = qword_1025D4558;
  if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 313);
    v18 = *(a1 + 317);
    v19 = *(a1 + 314);
    v20 = *(a1 + 318);
    *buf = 67241984;
    v43 = v15 & 1;
    v44 = 1026;
    v45 = 1;
    v46 = 1026;
    v47 = v17;
    v48 = 1026;
    v49 = v18;
    v50 = 1026;
    v51 = v19;
    v52 = 1026;
    v53 = v9 & 1;
    v54 = 1026;
    v55 = v6;
    v56 = 1026;
    v57 = v20;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "shouldEnableIgneous, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v22 = *(a1 + 313);
    v23 = *(a1 + 317);
    v24 = *(a1 + 314);
    v25 = *(a1 + 318);
    v27[0] = 67241984;
    v27[1] = v15 & 1;
    v28 = 1026;
    v29 = 1;
    v30 = 1026;
    v31 = v22;
    v32 = 1026;
    v33 = v23;
    v34 = 1026;
    v35 = v24;
    v36 = 1026;
    v37 = v9 & 1;
    v38 = 1026;
    v39 = v6;
    v40 = 1026;
    v41 = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableIgneous()", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  return v15 & 1;
}

uint64_t sub_100126928(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1003C9358(&v6, v3);
  }

  return v2;
}

uint64_t sub_1001269E8(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100126ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100126AE8(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1001269E8((a1 + 3), a2);
  return a1;
}

uint64_t sub_100126B4C(_BYTE *a1)
{
  v2 = +[SOSUtilities kappaTriggersEmergencySOS];
  if (+[SOSUtilities getKappaThirdPartyDisplayNameForApp])
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if ((a1[317] & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC244();
    }

    if (qword_102665710)
    {
      a1[317] = off_1026346A0();
      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v4 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v5 = a1[317];
        *buf = 67109120;
        v32 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC258(a1 + 317);
        if (v3)
        {
          goto LABEL_14;
        }

LABEL_17:
        v6 = 0;
        goto LABEL_18;
      }
    }
  }

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (a1[313] & 1) != 0 || (a1[315] & 1) != 0 || (a1[316])
  {
    goto LABEL_17;
  }

  v6 = a1[317];
LABEL_18:
  LOBYTE(v20[0]) = 0;
  sub_100126E84(buf, "KappaForceOn", v20, 0);
  v7 = buf[1];
  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v8 = v6 | v7;
  v9 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
  {
    v10 = a1[313];
    v11 = a1[315];
    v12 = a1[316];
    v13 = a1[317];
    *buf = 67241472;
    v32 = v8;
    v33 = 1026;
    v34 = v3;
    v35 = 1026;
    v36 = v10;
    v37 = 1026;
    v38 = v11;
    v39 = 1026;
    v40 = v12;
    v41 = 1026;
    v42 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "shouldEnableKappa, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4340 != -1)
    {
      sub_101BB9C9C();
    }

    v15 = a1[313];
    v16 = a1[315];
    v17 = a1[316];
    v18 = a1[317];
    v20[0] = 67241472;
    v20[1] = v8;
    v21 = 1026;
    v22 = v3;
    v23 = 1026;
    v24 = v15;
    v25 = 1026;
    v26 = v16;
    v27 = 1026;
    v28 = v17;
    v29 = 1026;
    v30 = v18;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableKappa()", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  return v8;
}

unsigned __int8 *sub_100126E84(unsigned __int8 *a1, const char *a2, unsigned __int8 *a3, unsigned __int8 a4)
{
  *a1 = 0;
  a1[1] = *a3;
  v6 = (a1 + 1);
  a1[2] = a4;
  v7 = sub_100011660();
  sub_100185AC0(v7, buf);
  *a1 = sub_10001CB4C(*buf, a2, v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10003848C(v34);
  std::ostream::operator<<();
  if ((a1[2] & 1) == 0)
  {
    if (*a1)
    {
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v10 = qword_1025D4208;
      if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v11 = *a1;
      if ((v44 & 0x10) != 0)
      {
        v20 = v43;
        if (v43 < v40)
        {
          v43 = v40;
          v20 = v40;
        }

        v21 = __src;
      }

      else
      {
        if ((v44 & 8) == 0)
        {
          v12 = 0;
          BYTE3(v49) = 0;
LABEL_46:
          __dst[v12] = 0;
          v24 = __dst;
          if (SBYTE3(v49) < 0)
          {
            v24 = *__dst;
          }

          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          v51 = 2080;
          v52 = v24;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
          if (SBYTE3(v49) < 0)
          {
            operator delete(*__dst);
          }

LABEL_50:
          if (!sub_10000A100(121, 2))
          {
            goto LABEL_71;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4200 != -1)
          {
            dispatch_once(&qword_1025D4200, &stru_102503608);
          }

          v25 = *a1;
          sub_10003DD04(&v35, __p);
          if (v33 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = a2;
          v46 = 1024;
          v47 = v25;
          v48 = 2080;
          v49 = v26;
          v16 = _os_log_send_and_compose_impl();
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_81;
        }

        v21 = v37;
        v20 = v38;
      }

      v12 = v20 - v21;
      if (v20 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      BYTE3(v49) = v20 - v21;
      if (v12)
      {
        memmove(__dst, v21, v12);
      }

      goto LABEL_46;
    }

    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v17 = qword_1025D4208;
    if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
LABEL_70:
      if (!sub_10000A100(121, 2))
      {
        goto LABEL_71;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v30 = *a1;
      sub_10003DD04(&v35, __p);
      if (v33 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      *__dst = 136315650;
      *&__dst[4] = a2;
      v46 = 1024;
      v47 = v30;
      v48 = 2080;
      v49 = v31;
      v16 = _os_log_send_and_compose_impl();
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_81:
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "%s\n", v16);
      if (v16 == buf)
      {
        goto LABEL_71;
      }

      goto LABEL_82;
    }

    v18 = *a1;
    if ((v44 & 0x10) != 0)
    {
      v22 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v22 = v40;
      }

      v23 = __src;
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v19 = 0;
        BYTE3(v49) = 0;
LABEL_66:
        __dst[v19] = 0;
        v27 = __dst;
        if (SBYTE3(v49) < 0)
        {
          v27 = *__dst;
        }

        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v18;
        v51 = 2080;
        v52 = v27;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
        if (SBYTE3(v49) < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_70;
      }

      v23 = v37;
      v22 = v38;
    }

    v19 = v22 - v23;
    if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    BYTE3(v49) = v22 - v23;
    if (v19)
    {
      memmove(__dst, v23, v19);
    }

    goto LABEL_66;
  }

  if (*a1)
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 == -1)
      {
LABEL_25:
        v15 = *a1;
        *__dst = 136315394;
        *&__dst[4] = a2;
        v46 = 1024;
        v47 = v15;
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "%s\n", v16);
        if (v16 == buf)
        {
          goto LABEL_71;
        }

LABEL_82:
        free(v16);
        goto LABEL_71;
      }

LABEL_85:
      dispatch_once(&qword_1025D4200, &stru_102503608);
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v14 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_85;
    }
  }

LABEL_71:
  v34[2] = v28;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_10012787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001278E0(_BYTE *a1)
{
  v2 = (+[SOSUtilities kappaTriggersEmergencySOS](SOSUtilities, "kappaTriggersEmergencySOS") & 1) != 0 || +[SOSUtilities getKappaThirdPartyDisplayNameForApp]!= 0;
  sub_10004FD18(v25);
  v3 = sub_1000206B4();
  if (sub_100185ADC(v3, "Kappa", v25))
  {
    v4 = sub_10007005C(v25);
    v5 = [v4 objectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyShouldArm")}];
    v6 = v5 == 0 && v2;
    if (v5 && v2)
    {
      v6 = [objc_msgSend(v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyShouldArm")), "BOOLValue"}];
    }
  }

  else
  {
    v6 = v2;
  }

  if ((a1[317] & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC344();
    }

    if (qword_102665710)
    {
      a1[317] = off_1026346A0();
      if (qword_1025D4340 != -1)
      {
        sub_101BB9C9C();
      }

      v7 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v8 = a1[317];
        *buf = 67109120;
        v39 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBB9D0(buf);
        v23 = a1[317];
        v26 = 67109120;
        v27 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableMarty()", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }
  }

  if (!v6 || (a1[313] & 1) != 0 || (a1[315] & 1) != 0 || (a1[316] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1[317];
  }

  LOBYTE(v26) = 0;
  sub_100126E84(buf, "MartyForceOn", &v26, 0);
  v10 = buf[1];
  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v11 = v9 | v10;
  v12 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
  {
    v13 = a1[313];
    v14 = a1[315];
    v15 = a1[316];
    v16 = a1[317];
    *buf = 67241472;
    v39 = v11;
    v40 = 1026;
    v41 = v6;
    v42 = 1026;
    v43 = v13;
    v44 = 1026;
    v45 = v14;
    v46 = 1026;
    v47 = v15;
    v48 = 1026;
    v49 = v16;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "shouldEnableMarty, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BBB9D0(buf);
    v18 = a1[313];
    v19 = a1[315];
    v20 = a1[316];
    v21 = a1[317];
    v26 = 67241472;
    v27 = v11;
    v28 = 1026;
    v29 = v6;
    v30 = 1026;
    v31 = v18;
    v32 = 1026;
    v33 = v19;
    v34 = 1026;
    v35 = v20;
    v36 = 1026;
    v37 = v21;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableMarty()", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  sub_100005DA4(v25);
  return v11;
}

void sub_100127D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100127D64(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(a1 + 720) > *(a1 + 712))
  {
    *(a1 + 720) = Current;
    v3 = +[SafetyAlerts sharedInterface];
    v4 = [objc_msgSend(*(a1 + 32) "silo")];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10132DB28;
    v5[3] = &unk_1024E0A20;
    v5[4] = a1;
    [v3 fetchIsSaewEnabledOnQueue:v4 withReply:v5];
  }
}

void sub_100127E1C(double *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v27 = Current;
  v26 = 0.0;
  v3 = sub_1000206B4();
  sub_1000B9370(v3, "CLIgneousScheduledEnableLastRenewTime", &v26);
  if (Current - v26 > a1[88])
  {
    v4 = drand48() * a1[88];
    v5 = sub_1000206B4();
    sub_100116D68(v5, "CLIgneousScheduledEnableLastRenewTime", &v27);
    v6 = sub_1000206B4();
    *buf = v4 + v27;
    sub_100116D68(v6, "CLIgneousScheduledEnableStartTime", buf);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v7 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4 + v27 + a1[87];
      *buf = 134218752;
      *&buf[4] = v27;
      *&buf[12] = 2048;
      v36 = v4;
      v37 = 2048;
      v38 = v4 + v27;
      v39 = 2048;
      v40 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Renewed Igneous random arm session,now,%.0f,delay,%.0f,startTime,%.0f,endTime,%.0f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v20 = v4 + v27 + a1[87];
      v28 = 134218752;
      *v29 = v27;
      *&v29[8] = 2048;
      v30 = v4;
      v31 = 2048;
      v32 = v4 + v27;
      v33 = 2048;
      v34 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::scheduleRandomArmSessionIgneous()", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v9 = sub_1000206B4();
    v10 = (a1 + 86);
    sub_10004345C(v9, "CLIgneousArmMinutes", a1 + 86);
    v11 = (a1 + 85);
    v12 = a1 + 171;
    a1[85] = 0.0;
    v13 = sub_1000206B4();
    sub_10004345C(v13, "CLIgneousMotionTriggerCountOnCharger", a1 + 85);
    v14 = sub_1000206B4();
    sub_10004345C(v14, "CLIgneousMotionTriggerCountOffCharger", a1 + 684);
    v15 = *sub_1000206B4();
    (*(v15 + 944))();
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v16 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v10;
      v18 = *v11;
      v19 = *v12;
      *buf = 67109632;
      *&buf[4] = v17;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      LOWORD(v36) = 1024;
      *(&v36 + 2) = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Replenished Igneous arm minutes, %d, %d, %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v22 = *v10;
      v23 = *v11;
      v24 = *v12;
      v28 = 67109632;
      *v29 = v22;
      *&v29[4] = 1024;
      *&v29[6] = v23;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v24;
      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::scheduleRandomArmSessionIgneous()", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    sub_101327294();
    sub_1005D8008();
    sub_10132D93C(a1, (a1 + 52), "com.apple.igneous.enableIgneousWithDelay", v4);
    sub_10132D93C(a1, (a1 + 64), "com.apple.igneous.disableIgneousWithDelay", v4 + a1[87]);
  }
}

BOOL sub_1001282B4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = 0.0;
  v3 = sub_1000206B4();
  sub_1000B9370(v3, "CLIgneousScheduledEnableStartTime", &v5);
  return Current > v5 && Current < v5 + *(a1 + 696);
}

void sub_100128330(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  buf[0] = 0;
  v5 = sub_1000206B4();
  sub_10001CB4C(v5, "CLIgneousArmStatus", buf);
  v6 = buf[0];
  if ((buf[0] & 1) != 0 || (*&v2 & 0xFF0000) == 0)
  {
    v9 = v4;
    v10 = v2 & 0xFF000000 | (BYTE2(v2) << 16) | (v4 << 8);
    v11 = v2;
    sub_1001286B0(a1, v10 & 0xFFFFFF00 | v2);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v12 = BYTE2(v2);
    v13 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240960;
      *v16 = v6;
      *&v16[4] = 1026;
      *&v16[6] = v11;
      v17 = 1026;
      v18 = v9;
      v19 = 1026;
      v20 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Updated AOP arm status, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::updateAOPArmStatus(CMMotionCoprocessorCommand::Kappa::EnableClient)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (!sub_1006E3EAC(a1 + 320))
    {
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v7 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v16 = "com.apple.igneous.enableIgneous";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%s is not scheduled, submit a new task", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC458();
      }

      sub_10132D93C(a1, a1 + 320, "com.apple.igneous.enableIgneous", 0.0);
    }

    sub_1001286B0(a1, v2 | (v4 << 8));
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v8 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240960;
      *v16 = 0;
      *&v16[4] = 1026;
      *&v16[6] = v2;
      v17 = 1026;
      v18 = v4;
      v19 = 1026;
      v20 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Updated AOP arm status, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BBC550(v2, v4);
    }
  }
}

void sub_1001286B0(uint64_t a1, int a2)
{
  v13 = a2;
  HIBYTE(v13) = *(a1 + 314);
  sub_10012888C(10, &v13, 4uLL);
  buf[0] = 0;
  v3 = sub_1000206B4();
  sub_10001CB4C(v3, "CLIgneousArmStatus", buf);
  if ((buf[0] & 1) == 0 && BYTE2(v13))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = Current;
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v5 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 314);
      *buf = 134218240;
      v15 = Current;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "save Igneous arm session startTime,%f,isCharging,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BBFA8C(Current);
    }

    v7 = sub_1000206B4();
    sub_100116D68(v7, "CLIgneousArmSessionStartTime", &v12);
    v8 = sub_1000206B4();
    sub_100043360(v8, "CLIgneousArmSessionIsCharging", (a1 + 314));
    v9 = sub_1000206B4();
    (*(*v9 + 944))(v9);
    *(a1 + 728) = CFAbsoluteTimeGetCurrent();
    v10 = a1;
    v11 = 1;
    goto LABEL_13;
  }

  if (buf[0] && !BYTE2(v13))
  {
    *(a1 + 728) = 0;
    v10 = a1;
    v11 = 0;
LABEL_13:
    sub_10132D764(v10, v11);
  }

  sub_100128B48(a1);
}

void sub_10012888C(char a1, void *a2, unint64_t a3)
{
  v6 = sub_100023ED4(0);
  if (v6)
  {
    if (v7)
    {

      sub_100128938(v7, a1, a2, a3);
    }
  }
}

void sub_100128938(uint64_t a1, char a2, void *__src, unint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  LOBYTE(v6[0]) = 65;
  BYTE1(v6[0]) = a2;
  if (__src && a4)
  {
    v5 = 96;
    if (a4 < 0x60)
    {
      v5 = a4;
    }

    memcpy(v6 + 4, __src, v5);
  }

  sub_1001289B8(a1 + 192, v6, 0);
}

void sub_1001289B8(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x9812000000;
    v11[3] = sub_100128B1C;
    v11[4] = nullsub_72;
    v11[5] = &unk_10238AE8B;
    v4 = a2[5];
    v16 = a2[4];
    v17 = v4;
    v18 = *(a2 + 24);
    v5 = a2[1];
    v12 = *a2;
    v13 = v5;
    v6 = a2[3];
    v14 = a2[2];
    v15 = v6;
    if (aBlock)
    {
      v7 = _Block_copy(aBlock);
    }

    else
    {
      v7 = 0;
    }

    v9 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100128D10;
    v10[3] = &unk_102462080;
    v10[5] = v11;
    v10[6] = a1;
    v10[4] = v7;
    dispatch_async(v9, v10);
    _Block_object_dispose(v11, 8);
  }

  else if (aBlock)
  {
    v8 = *(aBlock + 2);

    v8(aBlock, 0);
  }
}

void sub_100128B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100128B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  result = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  *(a1 + 96) = result;
  return result;
}

void sub_100128B48(uint64_t a1)
{
  *buf = 0;
  v2 = sub_1000206B4();
  sub_10005BBE4(v2, "CLIgneousArmMinutes", buf);
  v3 = *buf;
  buf[0] = 0;
  v4 = sub_1000206B4();
  sub_10001CB4C(v4, "CLIgneousArmStatus", buf);
  v5 = buf[0];
  Current = CFAbsoluteTimeGetCurrent();
  if (v5 == 1)
  {
    v7 = Current;
    v8 = *(a1 + 728);
    if (v8 > 0.0)
    {
      v9 = llround((v7 - v8) / 60.0);
      v13 = (v3 - v9) & ~((v3 - v9) >> 31);
      *(a1 + 728) = v7;
      v10 = sub_1000206B4();
      sub_10004345C(v10, "CLIgneousArmMinutes", &v13);
      v11 = *sub_1000206B4();
      (*(v11 + 944))();
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v12 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240448;
        v15 = v13;
        v16 = 2050;
        v17 = v7;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "saved Igneous arm minutes,%{public}d,now,%{public}f", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBFBA0(v7);
      }
    }
  }
}

void sub_100128D10(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 65;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 100);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_100128D94(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      v6 = *&a3[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback];
      v5 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
LABEL_7:
    v9 = a3;
    sub_100128F6C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, v9);

    return;
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v11[0] = a1;
  LOWORD(v11[1]) = a2;
  BYTE2(v11[1]) = BYTE2(a2);
  BYTE3(v11[1]) = BYTE3(a2);
  BYTE4(v11[1]) = BYTE4(a2);
  v5 = BYTE6(a2);
  BYTE5(v11[1]) = BYTE5(a2);
  v6 = *&a3[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback];
LABEL_9:
  v6(v11, v5);
}

void sub_100128F6C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __DataStorage._length.getter();
  if (v7)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    (*&a4[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback])(v7, v12);
  }
}

double sub_100129044(uint64_t a1)
{
  *a1 = off_1024B8808;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  return result;
}

uint64_t sub_1001290A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_10072170C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100D18DDC(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_100723720(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 23) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_100722238(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_100E7BAF0(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v4 = *(v1 + 72);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_10072401C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      result = *(v1 + 88);
      if (result)
      {
        result = sub_100723AF4(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v5 = *(v1 + 104);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_100E7BB6C(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_100876448(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v6 = *(v1 + 128);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_100892E9C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_10089835C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_10089DD44(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      result = *(v1 + 160);
      if (result)
      {
        result = sub_1008A9BB8(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_1008AD730(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_10087FA0C(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_10087DB08(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      result = *(v1 + 200);
      if (result)
      {
        result = sub_10087A558(result);
      }
    }
  }

  *(v1 + 216) = 0;
  return result;
}

uint64_t sub_1001292F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v224 = 0;
        v8 = *(this + 1);
        if (v8 < *(this + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 1) = v8 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
        if (result)
        {
          v9 = v224;
LABEL_72:
          if (v9 <= 0x1B && ((1 << v9) & 0xFDFFE3F) != 0)
          {
            if (v9 > 0x1B || ((1 << v9) & 0xFDFFE3F) == 0)
            {
              sub_101AAD804();
            }

            *(a1 + 216) |= 1u;
            *(a1 + 8) = v9;
          }

          v27 = *(this + 1);
          v19 = *(this + 2);
          if (v27 < v19 && *v27 == 16)
          {
            v20 = v27 + 1;
            *(this + 1) = v20;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
LABEL_82:
        v224 = 0;
        if (v20 >= v19 || (v28 = *v20, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v28 = v224;
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (sub_100132484(v28))
        {
          *(a1 + 216) |= 2u;
          *(a1 + 12) = v28;
        }

        v29 = *(this + 1);
        v17 = *(this + 2);
        if (v29 >= v17 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_92:
        if (v18 >= v17 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        v21 = *(a1 + 216) | 4;
        *(a1 + 216) = v21;
        if (v31 >= v17 || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_100:
        *(a1 + 216) = v21 | 8;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v224 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10012EBF8(v32, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v38 = *(this + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 42)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_114:
        *(a1 + 216) |= 0x10u;
        v42 = *(a1 + 32);
        if (!v42)
        {
          operator new();
        }

        v224 = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10013B658(v42, this, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
        v48 = *(this + 14);
        v39 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v39)
        {
          *(this + 14) = v49;
        }

        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 50)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
LABEL_128:
        *(a1 + 216) |= 0x20u;
        v51 = *(a1 + 40);
        if (!v51)
        {
          operator new();
        }

        v224 = 0;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v52;
          *(this + 1) = v52 + 1;
        }

        v53 = *(this + 14);
        v54 = *(this + 15);
        *(this + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10013ADC8(v51, this, v56) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v55);
        v57 = *(this + 14);
        v39 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v39)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 74)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_142:
        *(a1 + 216) |= 0x40u;
        v60 = *(a1 + 48);
        if (!v60)
        {
          operator new();
        }

        v224 = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E7D038(v60, this, v65) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        v66 = *(this + 14);
        v39 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v39)
        {
          *(this + 14) = v67;
        }

        v68 = *(this + 1);
        if (v68 >= *(this + 2) || *v68 != 82)
        {
          continue;
        }

        *(this + 1) = v68 + 1;
LABEL_156:
        *(a1 + 216) |= 0x80u;
        v69 = *(a1 + 56);
        if (!v69)
        {
          operator new();
        }

        v224 = 0;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v70;
          *(this + 1) = v70 + 1;
        }

        v71 = *(this + 14);
        v72 = *(this + 15);
        *(this + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10032069C(v69, this, v74) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
        v75 = *(this + 14);
        v39 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v39)
        {
          *(this + 14) = v76;
        }

        v77 = *(this + 1);
        if (*(this + 4) - v77 <= 1 || *v77 != 130 || v77[1] != 1)
        {
          continue;
        }

        *(this + 1) = v77 + 2;
LABEL_171:
        *(a1 + 216) |= 0x100u;
        v78 = *(a1 + 64);
        if (!v78)
        {
          operator new();
        }

        v224 = 0;
        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v79;
          *(this + 1) = v79 + 1;
        }

        v80 = *(this + 14);
        v81 = *(this + 15);
        *(this + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E84AA4(v78, this, v83) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
        v84 = *(this + 14);
        v39 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v39)
        {
          *(this + 14) = v85;
        }

        v86 = *(this + 1);
        if (*(this + 4) - v86 <= 1 || *v86 != 138 || v86[1] != 1)
        {
          continue;
        }

        *(this + 1) = v86 + 2;
LABEL_186:
        *(a1 + 216) |= 0x200u;
        v87 = *(a1 + 72);
        if (!v87)
        {
          operator new();
        }

        v224 = 0;
        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v88;
          *(this + 1) = v88 + 1;
        }

        v89 = *(this + 14);
        v90 = *(this + 15);
        *(this + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        v91 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E850E0(v87, this, v92) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v91);
        v93 = *(this + 14);
        v39 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v39)
        {
          *(this + 14) = v94;
        }

        v95 = *(this + 1);
        if (*(this + 4) - v95 <= 1 || *v95 != 146 || v95[1] != 1)
        {
          continue;
        }

        *(this + 1) = v95 + 2;
LABEL_201:
        *(a1 + 216) |= 0x400u;
        v96 = *(a1 + 80);
        if (!v96)
        {
          operator new();
        }

        v224 = 0;
        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v97;
          *(this + 1) = v97 + 1;
        }

        v98 = *(this + 14);
        v99 = *(this + 15);
        *(this + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1001741FC(v96, this, v101) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v100);
        v102 = *(this + 14);
        v39 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v39)
        {
          *(this + 14) = v103;
        }

        v104 = *(this + 1);
        if (*(this + 4) - v104 <= 1 || *v104 != 154 || v104[1] != 1)
        {
          continue;
        }

        *(this + 1) = v104 + 2;
LABEL_216:
        *(a1 + 216) |= 0x800u;
        v105 = *(a1 + 88);
        if (!v105)
        {
          operator new();
        }

        v224 = 0;
        v106 = *(this + 1);
        if (v106 >= *(this + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v106;
          *(this + 1) = v106 + 1;
        }

        v107 = *(this + 14);
        v108 = *(this + 15);
        *(this + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100723B0C(v105, this, v110) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
        v111 = *(this + 14);
        v39 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v39)
        {
          *(this + 14) = v112;
        }

        v113 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v113 <= 1 || *v113 != 160 || v113[1] != 1)
        {
          continue;
        }

        v16 = (v113 + 2);
        *(this + 1) = v16;
LABEL_231:
        v224 = 0;
        if (v16 >= v15 || (v114 = *v16, (v114 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v114 = v224;
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (sub_100134974(v114))
        {
          if (!sub_100134974(v114))
          {
            sub_101AAD888();
          }

          *(a1 + 216) |= 0x2000u;
          *(a1 + 100) = v114;
        }

        v115 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v115 < 2 || *v115 != 176 || v115[1] != 1)
        {
          continue;
        }

        v11 = (v115 + 2);
        *(this + 1) = v11;
LABEL_243:
        v224 = 0;
        if (v11 >= v10 || (v116 = *v11, (v116 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v116 = v224;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (sub_100134974(v116))
        {
          if (!sub_100134974(v116))
          {
            sub_101AAD85C();
          }

          *(a1 + 216) |= 0x1000u;
          *(a1 + 96) = v116;
        }

        v117 = *(this + 1);
        if (*(this + 4) - v117 < 2 || *v117 != 186 || v117[1] != 1)
        {
          continue;
        }

        *(this + 1) = v117 + 2;
LABEL_255:
        *(a1 + 216) |= 0x4000u;
        v118 = *(a1 + 104);
        if (!v118)
        {
          operator new();
        }

        v224 = 0;
        v119 = *(this + 1);
        if (v119 >= *(this + 2) || *v119 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v119;
          *(this + 1) = v119 + 1;
        }

        v120 = *(this + 14);
        v121 = *(this + 15);
        *(this + 14) = v120 + 1;
        if (v120 >= v121)
        {
          return 0;
        }

        v122 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E884AC(v118, this, v123) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v122);
        v124 = *(this + 14);
        v39 = __OFSUB__(v124, 1);
        v125 = v124 - 1;
        if (v125 < 0 == v39)
        {
          *(this + 14) = v125;
        }

        v126 = *(this + 1);
        if (*(this + 4) - v126 <= 1 || *v126 != 202 || v126[1] != 1)
        {
          continue;
        }

        *(this + 1) = v126 + 2;
LABEL_270:
        *(a1 + 216) |= 0x8000u;
        v127 = *(a1 + 112);
        if (!v127)
        {
          operator new();
        }

        v224 = 0;
        v128 = *(this + 1);
        if (v128 >= *(this + 2) || *v128 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v128;
          *(this + 1) = v128 + 1;
        }

        v129 = *(this + 14);
        v130 = *(this + 15);
        *(this + 14) = v129 + 1;
        if (v129 >= v130)
        {
          return 0;
        }

        v131 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E889D8(v127, this, v132) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v131);
        v133 = *(this + 14);
        v39 = __OFSUB__(v133, 1);
        v134 = v133 - 1;
        if (v134 < 0 == v39)
        {
          *(this + 14) = v134;
        }

        v135 = *(this + 1);
        if (*(this + 4) - v135 <= 1 || *v135 != 242 || v135[1] != 1)
        {
          continue;
        }

        *(this + 1) = v135 + 2;
LABEL_285:
        *(a1 + 216) |= 0x10000u;
        v136 = *(a1 + 120);
        if (!v136)
        {
          operator new();
        }

        v224 = 0;
        v137 = *(this + 1);
        if (v137 >= *(this + 2) || *v137 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v137;
          *(this + 1) = v137 + 1;
        }

        v138 = *(this + 14);
        v139 = *(this + 15);
        *(this + 14) = v138 + 1;
        if (v138 >= v139)
        {
          return 0;
        }

        v140 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100876498(v136, this, v141) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v140);
        v142 = *(this + 14);
        v39 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v39)
        {
          *(this + 14) = v143;
        }

        v144 = *(this + 1);
        if (*(this + 4) - v144 <= 1 || *v144 != 250 || v144[1] != 1)
        {
          continue;
        }

        *(this + 1) = v144 + 2;
LABEL_300:
        *(a1 + 216) |= 0x20000u;
        if (*(a1 + 128) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v145 = *(this + 1);
        if (*(this + 4) - v145 < 2 || *v145 != 194 || v145[1] != 2)
        {
          continue;
        }

        *(this + 1) = v145 + 2;
LABEL_307:
        *(a1 + 216) |= 0x40000u;
        v146 = *(a1 + 136);
        if (!v146)
        {
          operator new();
        }

        v224 = 0;
        v147 = *(this + 1);
        if (v147 >= *(this + 2) || *v147 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v147;
          *(this + 1) = v147 + 1;
        }

        v148 = *(this + 14);
        v149 = *(this + 15);
        *(this + 14) = v148 + 1;
        if (v148 >= v149)
        {
          return 0;
        }

        v150 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100892F50(v146, this, v151) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v150);
        v152 = *(this + 14);
        v39 = __OFSUB__(v152, 1);
        v153 = v152 - 1;
        if (v153 < 0 == v39)
        {
          *(this + 14) = v153;
        }

        v154 = *(this + 1);
        if (*(this + 4) - v154 <= 1 || *v154 != 202 || v154[1] != 2)
        {
          continue;
        }

        *(this + 1) = v154 + 2;
LABEL_322:
        *(a1 + 216) |= 0x80000u;
        v155 = *(a1 + 144);
        if (!v155)
        {
          operator new();
        }

        v224 = 0;
        v156 = *(this + 1);
        if (v156 >= *(this + 2) || *v156 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v156;
          *(this + 1) = v156 + 1;
        }

        v157 = *(this + 14);
        v158 = *(this + 15);
        *(this + 14) = v157 + 1;
        if (v157 >= v158)
        {
          return 0;
        }

        v159 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008983DC(v155, this, v160) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v159);
        v161 = *(this + 14);
        v39 = __OFSUB__(v161, 1);
        v162 = v161 - 1;
        if (v162 < 0 == v39)
        {
          *(this + 14) = v162;
        }

        v163 = *(this + 1);
        if (*(this + 4) - v163 <= 1 || *v163 != 210 || v163[1] != 2)
        {
          continue;
        }

        *(this + 1) = v163 + 2;
LABEL_337:
        *(a1 + 216) |= 0x100000u;
        v164 = *(a1 + 152);
        if (!v164)
        {
          operator new();
        }

        v224 = 0;
        v165 = *(this + 1);
        if (v165 >= *(this + 2) || *v165 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v165;
          *(this + 1) = v165 + 1;
        }

        v166 = *(this + 14);
        v167 = *(this + 15);
        *(this + 14) = v166 + 1;
        if (v166 >= v167)
        {
          return 0;
        }

        v168 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10089DDD4(v164, this, v169) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v168);
        v170 = *(this + 14);
        v39 = __OFSUB__(v170, 1);
        v171 = v170 - 1;
        if (v171 < 0 == v39)
        {
          *(this + 14) = v171;
        }

        v172 = *(this + 1);
        if (*(this + 4) - v172 <= 1 || *v172 != 218 || v172[1] != 2)
        {
          continue;
        }

        *(this + 1) = v172 + 2;
LABEL_352:
        *(a1 + 216) |= 0x200000u;
        v173 = *(a1 + 160);
        if (!v173)
        {
          operator new();
        }

        v224 = 0;
        v174 = *(this + 1);
        if (v174 >= *(this + 2) || *v174 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v174;
          *(this + 1) = v174 + 1;
        }

        v175 = *(this + 14);
        v176 = *(this + 15);
        *(this + 14) = v175 + 1;
        if (v175 >= v176)
        {
          return 0;
        }

        v177 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008A9BCC(v173, this, v178) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v177);
        v179 = *(this + 14);
        v39 = __OFSUB__(v179, 1);
        v180 = v179 - 1;
        if (v180 < 0 == v39)
        {
          *(this + 14) = v180;
        }

        v181 = *(this + 1);
        if (*(this + 4) - v181 <= 1 || *v181 != 226 || v181[1] != 2)
        {
          continue;
        }

        *(this + 1) = v181 + 2;
LABEL_367:
        *(a1 + 216) |= 0x400000u;
        v182 = *(a1 + 168);
        if (!v182)
        {
          operator new();
        }

        v224 = 0;
        v183 = *(this + 1);
        if (v183 >= *(this + 2) || *v183 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v183;
          *(this + 1) = v183 + 1;
        }

        v184 = *(this + 14);
        v185 = *(this + 15);
        *(this + 14) = v184 + 1;
        if (v184 >= v185)
        {
          return 0;
        }

        v186 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008AD7B0(v182, this, v187) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v186);
        v188 = *(this + 14);
        v39 = __OFSUB__(v188, 1);
        v189 = v188 - 1;
        if (v189 < 0 == v39)
        {
          *(this + 14) = v189;
        }

        v190 = *(this + 1);
        if (*(this + 4) - v190 <= 1 || *v190 != 146 || v190[1] != 3)
        {
          continue;
        }

        *(this + 1) = v190 + 2;
LABEL_382:
        *(a1 + 216) |= 0x800000u;
        v191 = *(a1 + 176);
        if (!v191)
        {
          operator new();
        }

        v224 = 0;
        v192 = *(this + 1);
        if (v192 >= *(this + 2) || *v192 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v192;
          *(this + 1) = v192 + 1;
        }

        v193 = *(this + 14);
        v194 = *(this + 15);
        *(this + 14) = v193 + 1;
        if (v193 >= v194)
        {
          return 0;
        }

        v195 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087FAC4(v191, this, v196) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v195);
        v197 = *(this + 14);
        v39 = __OFSUB__(v197, 1);
        v198 = v197 - 1;
        if (v198 < 0 == v39)
        {
          *(this + 14) = v198;
        }

        v199 = *(this + 1);
        if (*(this + 4) - v199 <= 1 || *v199 != 154 || v199[1] != 3)
        {
          continue;
        }

        *(this + 1) = v199 + 2;
LABEL_397:
        *(a1 + 216) |= 0x1000000u;
        v200 = *(a1 + 184);
        if (!v200)
        {
          operator new();
        }

        v224 = 0;
        v201 = *(this + 1);
        if (v201 >= *(this + 2) || *v201 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v201;
          *(this + 1) = v201 + 1;
        }

        v202 = *(this + 14);
        v203 = *(this + 15);
        *(this + 14) = v202 + 1;
        if (v202 >= v203)
        {
          return 0;
        }

        v204 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087DBA4(v200, this, v205) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v204);
        v206 = *(this + 14);
        v39 = __OFSUB__(v206, 1);
        v207 = v206 - 1;
        if (v207 < 0 == v39)
        {
          *(this + 14) = v207;
        }

        v208 = *(this + 1);
        v12 = *(this + 2);
        if (v12 - v208 <= 1 || *v208 != 160 || v208[1] != 3)
        {
          continue;
        }

        v13 = (v208 + 2);
        *(this + 1) = v13;
LABEL_412:
        if (v13 >= v12 || (v209 = *v13, v209 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 192));
          if (!result)
          {
            return result;
          }

          v210 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 192) = v209;
          v210 = (v13 + 1);
          *(this + 1) = v210;
        }

        *(a1 + 216) |= 0x2000000u;
        if (v12 - v210 < 2 || *v210 != 168 || v210[1] != 3)
        {
          continue;
        }

        v24 = (v210 + 2);
        *(this + 1) = v24;
LABEL_421:
        v224 = 0;
        if (v24 >= v12 || (v211 = *v24, (v211 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v211 = v224;
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        if (v211 <= 4 && v211 != 3)
        {
          *(a1 + 216) |= 0x4000000u;
          *(a1 + 196) = v211;
        }

        v213 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v213 < 2 || *v213 != 176 || v213[1] != 3)
        {
          continue;
        }

        v23 = (v213 + 2);
        *(this + 1) = v23;
LABEL_435:
        if (v23 >= v22 || (v214 = *v23, v214 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 208));
          if (!result)
          {
            return result;
          }

          v215 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          *(a1 + 208) = v214;
          v215 = (v23 + 1);
          *(this + 1) = v215;
        }

        v14 = *(a1 + 216) | 0x8000000;
        *(a1 + 216) = v14;
        if (v22 - v215 < 2 || *v215 != 186 || v215[1] != 3)
        {
          continue;
        }

        *(this + 1) = v215 + 2;
LABEL_444:
        *(a1 + 216) = v14 | 0x10000000;
        v216 = *(a1 + 200);
        if (!v216)
        {
          operator new();
        }

        v224 = 0;
        v217 = *(this + 1);
        if (v217 >= *(this + 2) || *v217 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v217;
          *(this + 1) = v217 + 1;
        }

        v218 = *(this + 14);
        v219 = *(this + 15);
        *(this + 14) = v218 + 1;
        if (v218 >= v219)
        {
          return 0;
        }

        v220 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087A570(v216, this, v221) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v220);
        v222 = *(this + 14);
        v39 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v39)
        {
          *(this + 14) = v223;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_92;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v21 = *(a1 + 216);
        goto LABEL_100;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_243;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_255;
        }

        goto LABEL_66;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_270;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_285;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_300;
        }

        goto LABEL_66;
      case 0x28u:
        if (v7 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_66;
      case 0x29u:
        if (v7 == 2)
        {
          goto LABEL_322;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v7 == 2)
        {
          goto LABEL_337;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v7 == 2)
        {
          goto LABEL_352;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v7 == 2)
        {
          goto LABEL_367;
        }

        goto LABEL_66;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_66;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_397;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_412;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_421;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_435;
      case 0x37u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v14 = *(a1 + 216);
        goto LABEL_444;
      default:
LABEL_66:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    return result;
  }
}

uint64_t sub_10012AF48(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v6 = v2;
  sub_10012AFE4(v3, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

void sub_10012AFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10164BCBC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012AFE4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      v6 = *(v2 + 8);
      switch(v6)
      {
        case 1:
          *a2 = 0;
          v41 = v2;
          sub_100138888(a1, &v41);
          goto LABEL_71;
        case 2:
          if ((v3 & 0x40) != 0)
          {
            v15 = *(v2 + 48);
            if (!v15)
            {
              v15 = *(qword_102637FA0 + 48);
            }

            if (qword_1025D4650 != -1)
            {
              sub_1002981B4();
            }

            v16 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v17 = *(v15 + 24);
              v18 = *(v15 + 25);
              v19 = *(v15 + 26);
              v20 = *(v15 + 8) * 0.000000001;
              v21 = *(v15 + 16) * 0.000000001;
              *buf = 67110144;
              v43 = v17;
              v44 = 1024;
              v45 = v18;
              v46 = 1024;
              v47 = v19;
              v48 = 2048;
              v49 = v20;
              v50 = 2048;
              v51 = v21;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,status,device_init,%d,device_busy,%d,device_active,%d,gpsd_uptime,%f,device_uptime,%f", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770888(v15);
            }
          }

          return;
        case 3:
          v14 = *a2;

          sub_10013B064(a1, v14);
          return;
        case 5:
          v23 = *a2;

          sub_1017635AC(a1, v23);
          return;
        case 9:
          *a2 = 0;
          v40 = v2;
          sub_100320FA8(a1, &v40);
          goto LABEL_71;
        case 10:
          *a2 = 0;
          v39 = v2;
          sub_101761D18(a1, &v39);
          goto LABEL_71;
        case 11:
          *a2 = 0;
          v38 = v2;
          sub_101761EF4(a1, &v38);
          goto LABEL_71;
        case 12:
          *a2 = 0;
          v37 = v2;
          sub_101762274(a1, &v37);
          goto LABEL_71;
        case 13:
          *a2 = 0;
          v35 = v2;
          sub_10176274C(a1, &v35);
          goto LABEL_71;
        case 14:
          *a2 = 0;
          v34 = v2;
          sub_101762A08(a1, &v34);
          goto LABEL_71;
        case 15:
          *a2 = 0;
          v33 = v2;
          sub_101762BC8(a1, &v33);
          goto LABEL_71;
        case 16:
          *a2 = 0;
          v32 = v2;
          sub_101762CB0(a1, &v32);
          goto LABEL_71;
        case 17:
          if (qword_1025D4650 != -1)
          {
            sub_1002981B4();
          }

          v10 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gpsd,EMERG_FT_ASSISTANCE_NEEDED_REPORT", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1017707A4();
          }

          v11 = *a2;
          *a2 = 0;
          v31 = v11;
          sub_101763924(a1, &v31);
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          return;
        case 18:
          v9 = *a2;

          sub_1001744B0(a1, v9);
          return;
        case 19:
          v22 = *a2;

          sub_101763358(a1, v22);
          return;
        case 20:
          *a2 = 0;
          v29 = v2;
          sub_101763AC4(a1, &v29);
          goto LABEL_71;
        case 22:
          *a2 = 0;
          v30 = v2;
          sub_100173BEC(a1, &v30);
          goto LABEL_71;
        case 23:
          *a2 = 0;
          v28 = v2;
          sub_101763D6C(a1, &v28);
          goto LABEL_71;
        case 24:
          *a2 = 0;
          v27 = v2;
          sub_101763FB0(a1, &v27);
          goto LABEL_71;
        case 25:
          v12 = *(a1 + 2792);
          if (v12)
          {
            v13 = *v12;

            sub_1017ADDB8(v13);
          }

          return;
        case 26:
          *a2 = 0;
          v36 = v2;
          sub_10176251C(a1, &v36);
          goto LABEL_71;
        case 27:
          *a2 = 0;
          v26 = v2;
          sub_10176419C(a1, &v26);
LABEL_71:
          v25 = *(*v2 + 8);

          v25(v2);
          break;
        default:
          if (qword_1025D4650 != -1)
          {
            sub_1002981B4();
          }

          v24 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 67240192;
            v43 = v6;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#gpsd,unhandled indication,%{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1017709D8();
          }

          break;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#gpsd,processGpsdIndication,no type", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101770AD0();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#gpsd,processGpsdIndication,nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101770BBC();
    }
  }
}

void sub_10012B6A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101700F68(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10012B79C(void *result)
{
  v1 = result;
  v2 = result[16];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637FA0 != result)
  {
    v4 = result[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    result = v1[25];
    if (result)
    {
      v23 = *(*result + 8);

      return v23();
    }
  }

  return result;
}

void sub_10012BB94(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8808;
  sub_10012B79C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10012BBFC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 0)
  {
    operator new();
  }

  if (qword_1025D4650 != -1)
  {
    sub_101700F54();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v6 = a3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "GpsToolCGClient::onIndication, received request of zero length, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101700FA0(a3);
  }
}

uint64_t sub_10012BF58(void *a1)
{
  result = (a1 - 1);
  if (result >= 4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101621394();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::EstimationTechnology", v5, 8u);
    }

    v4 = sub_10000A100(121, 0);
    result = 0;
    if (v4)
    {
      sub_101622C34(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012C044(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
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
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
LABEL_50:
            v34[0] = 0;
            if (v17 >= v11 || (v22 = *v17, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
              if (!result)
              {
                return result;
              }

              v22 = v34[0];
              v23 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v23 = v17 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 20) = v22 != 0;
            *(a1 + 72) |= 4u;
            if (v23 < v11 && *v23 == 32)
            {
              v12 = v23 + 1;
              *(this + 1) = v12;
LABEL_58:
              v34[0] = 0;
              if (v12 >= v11 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
                if (!result)
                {
                  return result;
                }

                v24 = v34[0];
                v25 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 64) = v24;
              *(a1 + 72) |= 8u;
              if (v25 < v11 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            if (v14 >= v13 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              v13 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v15;
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 72) |= 1u;
            if (v16 < v13 && *v16 == 21)
            {
              *(this + 1) = v16 + 1;
LABEL_46:
              v34[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v34) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 16) = v34[0];
              *(a1 + 72) |= 2u;
              v21 = *(this + 1);
              v11 = *(this + 2);
              if (v21 < v11 && *v21 == 24)
              {
                v17 = v21 + 1;
                *(this + 1) = v17;
                goto LABEL_50;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
LABEL_66:
        if (v18 >= v11 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v26;
          v27 = v18 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 0x10u;
        if (v27 < v11 && *v27 == 49)
        {
          *(this + 1) = v27 + 1;
LABEL_74:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v34;
          *(a1 + 72) |= 0x20u;
          v28 = *(this + 1);
          if (v28 < *(this + 2) && *v28 == 57)
          {
            *(this + 1) = v28 + 1;
LABEL_78:
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v34;
            *(a1 + 72) |= 0x40u;
            v29 = *(this + 1);
            v9 = *(this + 2);
            if (v29 < v9 && *v29 == 64)
            {
              v19 = v29 + 1;
              *(this + 1) = v19;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(this + 1);
      v9 = *(this + 2);
LABEL_82:
      if (v19 >= v9 || (v30 = *v19, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        v31 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 48) = v30;
        v31 = v19 + 1;
        *(this + 1) = v31;
      }

      *(a1 + 72) |= 0x80u;
      if (v31 < v9 && *v31 == 72)
      {
        v10 = v31 + 1;
        *(this + 1) = v10;
LABEL_90:
        if (v10 >= v9 || (v32 = *v10, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v32;
          v33 = v10 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 72) |= 0x100u;
        if (v33 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10012C4CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v15;
          *(a1 + 60) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_38;
        }

        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v15;
        *(a1 + 60) |= 1u;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 17)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_25;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v15;
      *(a1 + 60) |= 2u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 25)
      {
        *(this + 1) = v10 + 1;
LABEL_29:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v15;
        *(a1 + 60) |= 4u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 33)
        {
          *(this + 1) = v11 + 1;
LABEL_33:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v15;
          *(a1 + 60) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
LABEL_41:
            v15 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v15;
            *(a1 + 60) |= 0x10u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 49)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10012C7A0(uint64_t a1, void *a2)
{
  if (*(a1 + 2904) || (*(a1 + 2928) & 1) != 0 || !*(a1 + 1672))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 2904) != 0;
      v18 = *(a1 + 2928);
      v19 = *(a1 + 1672) != 0;
      *buf = 67240704;
      *v26 = v17;
      *&v26[4] = 1026;
      *&v26[6] = v18;
      LOWORD(v27) = 1026;
      *(&v27 + 2) = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,protoFix,%{public}d,%{public}d,%{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101775FE0();
    }
  }

  else
  {
    v4 = a2 + 6;
    if ((a2[6] & 1) == 0)
    {
      goto LABEL_25;
    }

    v5 = a2[1];
    if (!v5)
    {
      v5 = *(qword_102637238 + 8);
    }

    if ((~*(v5 + 72) & 0x183) != 0)
    {
LABEL_25:
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a2[6] & 1;
        v22 = a2[1];
        if (!v22)
        {
          v22 = *(qword_102637238 + 8);
        }

        v23 = *(v22 + 72);
        *buf = 67241216;
        *v26 = v21;
        *&v26[4] = 1026;
        *&v26[6] = v23 & 1;
        LOWORD(v27) = 1026;
        *(&v27 + 2) = (v23 >> 1) & 1;
        HIWORD(v27) = 1026;
        *v28 = (v23 >> 7) & 1;
        *&v28[4] = 1026;
        *&v28[6] = (v23 >> 8) & 1;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,protoFix,isTimeValidInFix,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101775EA4(v4, a2);
      }
    }

    else
    {
      *(a1 + 2864) = *(v5 + 8);
      *(a1 + 2872) = *(v5 + 16);
      *(a1 + 2816) = sub_10012BF30();
      *(a1 + 2880) = sub_10029E3E8();
      v6 = a2[1];
      if (!v6)
      {
        v6 = *(qword_102637238 + 8);
      }

      v7 = *(v6 + 48);
      *(a1 + 2824) = (v7 * 0.000001);
      *&v7 = -((v7 * 0.000001) - v7 * 0.000001);
      *(a1 + 2832) = LODWORD(v7);
      *&v7 = *(v6 + 56) * 0.000000999999997;
      *(a1 + 2836) = LODWORD(v7);
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v8 = (a1 + 2816);
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v8;
        v11 = a2[1];
        if (!v11)
        {
          v11 = *(qword_102637238 + 8);
        }

        v12 = *(v11 + 48);
        v13 = *(a1 + 2824);
        v14 = *(a1 + 2832);
        v15 = *(a1 + 2836);
        *buf = 134219008;
        *v26 = v10;
        *&v26[8] = 2048;
        v27 = v12;
        *v28 = 2048;
        *&v28[2] = v13;
        v29 = 2048;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const proto::gnss::Fix &)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      sub_1016E961C(a1 + 1648);
      *v8 = 0;
      *(a1 + 2824) = 0;
      *(a1 + 2832) = 0xBF800000BF800000;
      *(a1 + 2840) = 0x7FF8000000000000;
      *(a1 + 2848) = 3212836864;
      *(a1 + 2856) = 0x7FF8000000000000;
      *(a1 + 2864) = 0;
      *(a1 + 2872) = 3212836864;
      *(a1 + 2880) = 0x8000;
      *(a1 + 2882) = 0;
      *(a1 + 2888) = 0;
      *(a1 + 2896) = 0x8000;
      *(a1 + 2898) = 0;
      *(a1 + 2902) = 0;
    }
  }
}

uint64_t sub_10012CCAC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1416);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10012CD08(uint64_t a1, char *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101943AC8();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Vendor";
    if (a2)
    {
      v4 = "";
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@ClxGps%{public}s, Fix, 0, ll, N/A", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943ADC(a2);
  }
}

uint64_t sub_10012CDF4(uint64_t a1, double a2)
{
  *(a1 + 2736) = a2;
  v20 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v26 = _Q1;
  v27 = 0;
  v28 = _Q1;
  v29 = 0;
  v30 = _Q1;
  v31 = 0;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v35 = 1065353216;
  v36 = 0x100000005;
  v37 = 0;
  v8 = *(a1 + 992);
  if (v8)
  {
    sub_100139E64(v8, v17);
  }

  v9 = *(a1 + 1016);
  if (v9)
  {
    sub_10012CF34(v9, v17);
  }

  v10 = *(a1 + 1000);
  if (v10)
  {
    sub_10013061C(v10, v17);
  }

  v11 = *(a1 + 1040);
  if (v11)
  {
    sub_1001306F4(v11);
  }

  v12 = *(a1 + 1112);
  if (v12)
  {
    sub_101751610(v12, v17);
  }

  v13 = *(a1 + 1192);
  if (v13)
  {
    sub_1010BFFFC(v13, v17);
  }

  v14 = *(a1 + 1136);
  if (v14)
  {
    sub_10012D924(v14, *a1 + 8);
  }

  v15 = *(a1 + 1160);
  if (v15)
  {
    sub_10012E5D0(v15);
  }

  return sub_100134860(v33 + 8);
}

void sub_10012CF34(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    sub_1002988A4(a2, 0, 0, v20);
    sub_1001FB6D0(a1 + 128, v20);
    if (*(a2 + 144) == 1)
    {
      v4 = *(a2 + 152);
      *buf = v4;
      sub_1000423D4(a1 + 928, buf);
      if (*(a1 + 321) == 1 && (*(a1 + 465) & 1) == 0)
      {
        isTypeSwimming = CLMotionActivity::isTypeSwimming();
      }

      else
      {
        isTypeSwimming = 0;
      }

      v6 = *(a1 + 992);
      if (v6 >= *(a1 + 936) && v6)
      {
        v7 = (*(a1 + 944) / v6) > 4.4704 ? isTypeSwimming : 0;
        if (v7 == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_10199A02C();
          }

          v8 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 328);
            v10 = *(a1 + 992);
            if (v10)
            {
              v11 = (*(a1 + 944) / v10);
            }

            else
            {
              v11 = 0.0;
            }

            v12 = *(a2 + 160);
            *buf = 67240704;
            v29 = v9;
            v30 = 2050;
            v31 = v11;
            v32 = 2050;
            v33 = v12;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#gwo,#override,Overriding false fitness session sessionType,%{public}d,averageSpeed,%{public}.3lf,speedUnc,%{public}.3lf", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v15 = *(a1 + 328);
            v16 = *(a1 + 992);
            if (v16)
            {
              v17 = (*(a1 + 944) / v16);
            }

            else
            {
              v17 = 0.0;
            }

            v18 = *(a2 + 160);
            v22 = 67240704;
            v23 = v15;
            v24 = 2050;
            v25 = v17;
            v26 = 2050;
            v27 = v18;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::feedPerEpoch(const GNSS::PerEpochData &)", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          sub_1009B90A8(a1);
          *(a1 + 184) = 0;
        }
      }
    }

    if (v21)
    {
      sub_100008080(v21);
    }
  }

  *(a1 + 1272) = sub_10012D494(a1, a2);
  sub_10012D328(a1, a2);
  if (sub_1000081AC() - *(a1 + 720) > 6.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "refresh,updateContext", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199AE0C();
    }

    v14 = *(a2 + 104);
    if (v14 <= 0.0 || *(a2 + 72) + v14 * -2.0 < 9000.0)
    {
      sub_100134A38(a1);
    }

    else
    {
      sub_1009B91A8(a1);
    }
  }
}

void sub_10012D2F8(_Unwind_Exception *a1)
{
  if (STACK[0x2C8])
  {
    sub_100008080(STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10012D328(unint64_t result, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v20 = v2;
    v21 = v3;
    v5 = *(a2 + 96);
    v6 = v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v6 || (v5 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v8 = result;
      sub_10028ED10((result + 728), a2);
      if (*(v8 + 768) >= 0x1FuLL)
      {
        sub_1009BA61C((v8 + 728));
      }

      v9 = *(v8 + 736);
      v10 = *(v8 + 760);
      v11 = (v9 + 8 * (v10 >> 4));
      if (*(v8 + 744) == v9)
      {
        v14 = 0;
        v17 = 0;
      }

      else
      {
        v12 = *v11 + 304 * (*(v8 + 760) & 0xFLL);
        v13 = *(v9 + (((*(v8 + 768) + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((*(v8 + 768) + v10) & 0xF);
        if (v12 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = v11;
          do
          {
            if (*(a2 + 32) - *(v12 + 32) <= 20.0)
            {
              break;
            }

            v12 += 304;
            if (v12 - *v15 == 4864)
            {
              v16 = v15[1];
              ++v15;
              v12 = v16;
            }

            ++v14;
          }

          while (v12 != v13);
        }

        v17 = *v11 + 304 * (*(v8 + 760) & 0xFLL);
      }

      v18 = v11;
      v19 = v17;
      sub_10029FA6C(&v18, v14);
      return sub_1002A7E18((v8 + 728), v11, v17, v18, v19);
    }
  }

  return result;
}

uint64_t sub_10012D494(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1217))
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 1273) & 1) == 0 && *(a2 + 48))
  {
    v5 = *(a2 + 96);
    if ((v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v5 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    v8 = *(a1 + 768);
    if (!v8)
    {
      return 0;
    }

    v9 = *(*(a1 + 736) + (((v8 + *(a1 + 760) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((v8 + *(a1 + 760) - 1) & 0xF);
    if (!*(v9 + 48))
    {
      return 0;
    }

    v10 = *(v9 + 96);
    v11 = v10 < 0 || ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    v12 = v11 && (v10 - 1) > 0xFFFFFFFFFFFFELL;
    if (v12 || vabdd_f64(*(a2 + 32), *(v9 + 32)) > 4.5)
    {
      return 0;
    }

    if (*(a1 + 915))
    {
      v13 = 2.07892474;
    }

    else
    {
      v13 = 1.0;
    }

    if (CLMotionActivity::isTypeStatic())
    {
      v14 = sub_100109D18((a1 + 144), *(a2 + 56), *(a2 + 64), *(v9 + 56), *(v9 + 64), 0.0);
      result = 0;
      v15 = (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v16 = v14 < 0.0 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v14 >= 0.0)
      {
        v15 = 0;
      }

      v17 = (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v17 = 1;
      }

      if (((v17 | v16) & 1) != 0 || v14 > v13 * 8.86651914)
      {
        return result;
      }

      v18 = v14 + -4.26495435;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      if (v18 / *(v9 + 96) > v13 * 0.832554611)
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 736);
      if (*(a1 + 744) != v19)
      {
        v20 = *(a1 + 760);
        v21 = (v19 + 8 * (v20 >> 4));
        v22 = (*v21 + 304 * (v20 & 0xF));
        v23 = *(v19 + (((*(a1 + 768) + v20) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((*(a1 + 768) + v20) & 0xF);
        while (v22 != v23)
        {
          v24 = sub_100109D18((a1 + 144), *(a2 + 56), *(a2 + 64), v22[7], v22[8], 0.0);
          result = 0;
          v25 = (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
          v26 = v24 < 0.0 && ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
          if (v24 >= 0.0)
          {
            v25 = 0;
          }

          v27 = (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v25;
          if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
          {
            v27 = 1;
          }

          if (((v27 | v26) & 1) != 0 || v24 > v13 * 8.86651914)
          {
            return result;
          }

          v28 = v24 + -4.26495435;
          if (v28 < 0.0)
          {
            v28 = 0.0;
          }

          if (v28 / v22[12] > v13 * 0.832554611)
          {
            return 0;
          }

          v22 += 38;
          if ((v22 - *v21) == 4864)
          {
            v29 = v21[1];
            ++v21;
            v22 = v29;
          }
        }
      }
    }

    if (*(a2 + 144) == 1)
    {
      v30 = *(a2 + 152);
      if (v30 >= 0.0)
      {
        v31 = *(a2 + 160);
        if (v31 > 0.0)
        {
          if (v30 > v13 * 2.01287076)
          {
            return 0;
          }

          v32 = v30 + -0.968226852;
          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          if (v32 / v31 > v13 * 0.832554611)
          {
            return 0;
          }
        }
      }
    }

    if (*(a1 + 88) == 1 && *(a1 + 321) == 1)
    {
      v33 = *(a1 + 465);
    }

    else
    {
      v33 = 1;
    }

    if (CLMotionActivity::isTypeWalking() & 1) != 0 || (CLMotionActivity::isTypeRunning() & 1) != 0 || (CLMotionActivity::isTypeCycling())
    {
      v34 = 0;
    }

    else
    {
      v34 = CLMotionActivity::isTypeSwimming() ^ 1;
    }

    if (((v33 | v34) & 1) == 0)
    {
      return (!CLMotionActivity::isTypeWalking() || (CLMotionActivity::isTypePedestrian() & 1) == 0 && *(a1 + 184) != 62) && (!CLMotionActivity::isTypeRunning() || (CLMotionActivity::isTypePedestrian() & 1) == 0 && *(a1 + 184) != 62) && (!CLMotionActivity::isTypeCycling() || (CLMotionActivity::isTypeCycling() & 1) == 0) && (!CLMotionActivity::isTypeSwimming() || (CLMotionActivity::isTypeSwimming() & 1) == 0);
    }

    result = CLMotionActivity::isTypeStatic();
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_10012D924(uint64_t a1, uint64_t a2)
{
  *(a1 + 2472) = 0;
  ++*(a2 + 104);
  *buf = a2 + 204;
  v4 = sub_1003E3DEC(a2 + 248, (a2 + 204));
  ++v4[5];
  *buf = a2 + 336;
  v5 = sub_1003E3DEC(a2 + 352, (a2 + 336));
  ++v5[5];
  *buf = a2 + 340;
  v6 = sub_1003E3DEC(a2 + 376, (a2 + 340));
  ++v6[5];
  *buf = a2 + 344;
  v7 = sub_1003E3DEC(a2 + 400, (a2 + 344));
  v8 = 0;
  ++v7[5];
  HIDWORD(v10) = *(a2 + 464);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 8;
  if (v9 <= 8)
  {
    v8 = dword_101DB5F4C[v9];
  }

  v63 = v8;
  *buf = &v63;
  v11 = sub_1003E3DEC(a2 + 472, &v63);
  ++v11[5];
  v63 = sub_10013A82C(*(a1 + 2416));
  *buf = &v63;
  v12 = sub_10013A5F4((a2 + 272), &v63);
  ++v12[3];
  *buf = a1 + 2408;
  v13 = sub_1001307B0((a2 + 208), (a1 + 2408));
  ++v13[3];
  *buf = a1 + 2428;
  v14 = sub_1003E3DEC(a2 + 312, (a1 + 2428));
  ++v14[5];
  if (*(a2 + 642) == 1)
  {
    ++*(a2 + 536);
    *(a2 + 642) = 0;
  }

  if (*(a2 + 643) == 1)
  {
    ++*(a2 + 544);
    *(a2 + 643) = 0;
  }

  if (*(a2 + 644) == 1)
  {
    ++*(a2 + 552);
    *(a2 + 644) = 0;
  }

  *buf = a2 + 968;
  v15 = sub_1003E3DEC(a2 + 976, (a2 + 968));
  ++v15[5];
  if (*(a1 + 2412) == 1)
  {
    ++*(a2 + 792);
  }

  if (*(a1 + 2415) == 1)
  {
    ++*(a2 + 808);
  }

  if (*(a1 + 2413) == 1)
  {
    ++*(a2 + 800);
  }

  sub_10012E168(a1);
  sub_10013AD30(a1);
  HIDWORD(v16) = -286331153 * *(a1 + 2456);
  LODWORD(v16) = HIDWORD(v16);
  if ((v16 >> 1) <= 0x8888888)
  {
    v17 = *(a2 + 1040);
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = *(a2 + 952);
    if (v18 && *(a2 + 848) == 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.84467441e19;
    }

    v20 = *(a2 + 960);
    if (v20 && *(a2 + 849) == 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.84467441e19;
    }

    v22 = *(a2 + 896);
    if (v22)
    {
      v23 = bswap32(*(*(*(a2 + 864) + (((v22 + *(a2 + 888) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v22 + *(a2 + 888) - 1) & 0x7F)));
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a2 + 944);
    if (v24)
    {
      v25 = bswap32(*(*(*(a2 + 912) + (((v24 + *(a2 + 936) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v24 + *(a2 + 936) - 1) & 0x7F)));
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a2 + 1048);
    v27 = v17;
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v28 = qword_1025D4658;
    v29 = v26 / v27;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 584);
      v31 = *(a2 + 504) + *(a2 + 496);
      *buf = 134350592;
      *&buf[4] = v29;
      *&buf[12] = 2050;
      v74 = v30;
      *v75 = 2050;
      *&v75[2] = v31;
      *v76 = 2050;
      *&v76[2] = v19;
      *v77 = 1026;
      *&v77[2] = v23;
      *v78 = 2050;
      *&v78[2] = v21;
      LOWORD(v79) = 1026;
      *(&v79 + 2) = v25;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "PerfReport,mw,%{public}.1f,timeCount,%{public}llu,posCount,%{public}llu,eeAgeDays,%{public}.2f,eeHash,%{public}x,rtiAgeDays,%{public}.2f,rtiHash,%{public}x", buf, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v52 = *(a2 + 584);
      v53 = *(a2 + 504) + *(a2 + 496);
      v63 = 134350592;
      *v64 = v29;
      *&v64[8] = 2050;
      v65 = v52;
      *v66 = 2050;
      *&v66[2] = v53;
      *v67 = 2050;
      *&v67[2] = v19;
      *v68 = 1026;
      *&v68[2] = v23;
      *v69 = 2050;
      *&v69[2] = v21;
      LOWORD(v70) = 1026;
      *(&v70 + 2) = v25;
      v54 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::tickGnssSessionReport(GNSS::GnssSessionData &)", "%s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }
  }

  v32 = *(a1 + 2456);
  HIDWORD(v33) = -858993459 * v32;
  LODWORD(v33) = -858993459 * v32;
  if ((v33 >> 1) <= 0x19999999)
  {
    v34 = *(a1 + 2672);
    v35 = 0.0;
    v36 = 0.0;
    if (*(a1 + 2680) != v34)
    {
      v36 = *v34;
    }

    v37 = *(a1 + 2696);
    if (*(a1 + 2704) != v37)
    {
      v35 = *v37;
    }

    v38 = *(a1 + 2460);
    v39 = *(a1 + 2464);
    v40 = *(a1 + 2468);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v41 = v32 - v38;
    v42 = v32 - v39;
    v43 = v32 - v40;
    v44 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 2620);
      v46 = *(a1 + 2624);
      if (v41 >= 0x15180)
      {
        v47 = 86400;
      }

      else
      {
        v47 = v41;
      }

      v48 = *(a1 + 2628);
      v49 = *(a1 + 2632);
      if (v42 >= 0x15180)
      {
        v50 = 86400;
      }

      else
      {
        v50 = v42;
      }

      if (v43 >= 0x15180)
      {
        v51 = 86400;
      }

      else
      {
        v51 = v43;
      }

      *buf = 67242240;
      *&buf[4] = v45;
      *&buf[8] = 1026;
      *&buf[10] = v46;
      LOWORD(v74) = 1026;
      *(&v74 + 2) = v47;
      HIWORD(v74) = 2050;
      *v75 = v48;
      *&v75[8] = 2050;
      *v76 = v49;
      *&v76[8] = 1026;
      *v77 = v50;
      *&v77[4] = 2050;
      *v78 = v36;
      *&v78[8] = 2050;
      v79 = v35;
      v80 = 1026;
      v81 = v51;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "#gnssawd,Cellular-AWD,PeriodicLogging,MostRecentValue,BandInfo,%{public}d,RAT,%{public}d,age,%{public}u,transmissionFrequency,%{public}f,BW,%{public}f,age,%{public}u,RSRP,%{public}f,SNR,%{public}f,age,%{public}u", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v55 = *(a1 + 2620);
      v56 = *(a1 + 2624);
      if (v41 >= 0x15180)
      {
        v57 = 86400;
      }

      else
      {
        v57 = v41;
      }

      v58 = *(a1 + 2628);
      v59 = *(a1 + 2632);
      if (v42 >= 0x15180)
      {
        v60 = 86400;
      }

      else
      {
        v60 = v42;
      }

      if (v43 >= 0x15180)
      {
        v61 = 86400;
      }

      else
      {
        v61 = v43;
      }

      v63 = 67242240;
      *v64 = v55;
      *&v64[4] = 1026;
      *&v64[6] = v56;
      LOWORD(v65) = 1026;
      *(&v65 + 2) = v57;
      HIWORD(v65) = 2050;
      *v66 = v58;
      *&v66[8] = 2050;
      *v67 = v59;
      *&v67[8] = 1026;
      *v68 = v60;
      *&v68[4] = 2050;
      *v69 = v36;
      *&v69[8] = 2050;
      v70 = v35;
      v71 = 1026;
      v72 = v61;
      v62 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::tickGnssSessionReport(GNSS::GnssSessionData &)", "%s\n", v62);
      if (v62 != buf)
      {
        free(v62);
      }
    }
  }

  ++*(a1 + 2456);
}

void sub_10012E168(uint64_t a1)
{
  sub_10001CAF4(buf);
  v22 = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22);
  v3 = v2 & v22;
  if (v24)
  {
    sub_100008080(v24);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,updateCellularNetworkStatistics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016C9C4C();
    }
  }

  v5 = *(a1 + 2620);
  if (v5)
  {
    v6 = *(a1 + 2648);
    if (v6)
    {
      if (v5 == v6)
      {
        sub_10001CAF4(buf);
        v22 = 0;
        v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22);
        v8 = v7 & v22;
        if (v24)
        {
          sub_100008080(v24);
        }

        if (v8)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v9 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with same band as previous", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C9F18();
          }
        }

        v10 = *(a1 + 2664) + 1;
        goto LABEL_54;
      }

      sub_10001CAF4(buf);
      v22 = 0;
      v14 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22);
      v15 = v14 & v22;
      if (v24)
      {
        sub_100008080(v24);
      }

      if (v15)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 2664);
          v18 = *(a1 + 2600);
          *buf = 67109376;
          *&buf[4] = v17;
          LOWORD(v24) = 1024;
          *(&v24 + 2) = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with band change,EpochCountForCurrentTransmissionFrequencyBand,%d,fEpochCountForLastLongestCampedCellularBand,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C9D30();
        }
      }

      if (*(a1 + 2664) >= *(a1 + 2600))
      {
        sub_10001CAF4(buf);
        v22 = 0;
        v19 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22);
        v20 = v19 & v22;
        if (v24)
        {
          sub_100008080(v24);
        }

        if (v20)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v21 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with longest camped in a GNSS session", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C9E34();
          }
        }

        sub_1016C33E8(a1);
        *(a1 + 2644) = 1;
      }

      *(a1 + 2680) = *(a1 + 2672);
      *(a1 + 2704) = *(a1 + 2696);
    }

    else
    {
      sub_10001CAF4(buf);
      v22 = 0;
      v11 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22);
      v12 = v11 & v22;
      if (v24)
      {
        sub_100008080(v24);
      }

      if (v12)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,First Epoch", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C9FFC();
        }
      }
    }

    v10 = 1;
LABEL_54:
    *(a1 + 2664) = v10;
    sub_10013A83C(a1);
  }
}

void sub_10012E5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_10012E5D8(uint64_t a1)
{
  *a1 = off_10246D9E0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

void sub_10012E608(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

double sub_10012E65C(uint64_t a1, uint64_t a2)
{
  v9 = sub_10013B340((a2 + 24));
  v10 = &v9;
  v4 = sub_10013A5F4((a1 + 1000), &v9);
  ++v4[3];
  *(a1 + 968) = 0;
  result = *(a2 + 24);
  if (*&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    ++*(a1 + 1040);
    result = result + *(a1 + 1048);
    *(a1 + 1048) = result;
  }

  return result;
}

uint64_t sub_10012E718(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            v9 = *(a1 + 44) | 1;
            *(a1 + 44) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(a1 + 44);
LABEL_28:
            *(a1 + 44) = v9 | 2;
            v15 = *(a1 + 16);
            if (!v15)
            {
              operator new();
            }

            v42 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            if (!sub_10013C310(v15, this, v20) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v21 = *(this + 14);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v23 < 0 == v22)
            {
              *(this + 14) = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 26)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 44) |= 4u;
        v25 = *(a1 + 24);
        if (!v25)
        {
          operator new();
        }

        v43 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_100130D60(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 44) |= 8u;
      v34 = *(a1 + 32);
      if (!v34)
      {
        operator new();
      }

      v44 = 0;
      v35 = *(this + 1);
      if (v35 >= *(this + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v35;
        *(this + 1) = v35 + 1;
      }

      v36 = *(this + 14);
      v37 = *(this + 15);
      *(this + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
      if (!sub_1002C3814(v34, this, v39) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
      v40 = *(this + 14);
      v22 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v22)
      {
        *(this + 14) = v41;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

double sub_10012EBC8(uint64_t a1)
{
  *a1 = off_10246D710;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

uint64_t sub_10012EBF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(a1 + 48) |= 1u;
        v12 = *(a1 + 8);
        if (!v12)
        {
          operator new();
        }

        v44 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
        if (!sub_10012C044(v12, this, v17) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
        v18 = *(this + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(this + 14) = v20;
        }

        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 18)
        {
          *(this + 1) = v21 + 1;
LABEL_38:
          *(a1 + 48) |= 2u;
          v22 = *(a1 + 16);
          if (!v22)
          {
            operator new();
          }

          v44 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
          if (!sub_10012F14C(v22, this, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
          v28 = *(this + 14);
          v19 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v19)
          {
            *(this + 14) = v29;
          }

          v30 = *(this + 1);
          if (v30 < *(this + 2) && *v30 == 26)
          {
            *(this + 1) = v30 + 1;
LABEL_52:
            *(a1 + 48) |= 4u;
            v31 = *(a1 + 24);
            if (!v31)
            {
              operator new();
            }

            v44 = 0;
            v32 = *(this + 1);
            if (v32 >= *(this + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v32;
              *(this + 1) = v32 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
            if (!sub_10012C4CC(v31, this, v36) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v37 = *(this + 14);
            v19 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v19)
            {
              *(this + 14) = v38;
            }

            v39 = *(this + 1);
            v9 = *(this + 2);
            if (v39 < v9 && *v39 == 32)
            {
              v11 = v39 + 1;
              *(this + 1) = v11;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
LABEL_66:
      if (v11 >= v9 || (v40 = *v11, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v41 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v40;
        v41 = v11 + 1;
        *(this + 1) = v41;
      }

      *(a1 + 48) |= 8u;
      if (v41 < v9 && *v41 == 40)
      {
        v10 = v41 + 1;
        *(this + 1) = v10;
LABEL_74:
        v44 = 0;
        if (v10 >= v9 || (v43 = *v10, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
          if (!result)
          {
            return result;
          }

          v43 = v44;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v43 <= 4)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v43;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_74;
    }

LABEL_21:
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

uint64_t sub_10012F14C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_85;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v24 = *(this + 1);
                v11 = *(this + 2);
                goto LABEL_95;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_76;
        }

        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v31;
        *(a1 + 96) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_41;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v31;
      *(a1 + 96) |= 2u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 25)
      {
        *(this + 1) = v15 + 1;
LABEL_45:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v31;
        *(a1 + 96) |= 4u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 33)
        {
          *(this + 1) = v16 + 1;
LABEL_49:
          *v31 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v31;
          *(a1 + 96) |= 8u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 41)
          {
            *(this + 1) = v17 + 1;
LABEL_56:
            *v31 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v31;
            *(a1 + 96) |= 0x10u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 49)
            {
              *(this + 1) = v18 + 1;
LABEL_60:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v31;
              *(a1 + 96) |= 0x20u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 57)
              {
                *(this + 1) = v19 + 1;
LABEL_64:
                *v31 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = *v31;
                *(a1 + 96) |= 0x40u;
                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 65)
                {
                  *(this + 1) = v20 + 1;
LABEL_68:
                  *v31 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = *v31;
                  *(a1 + 96) |= 0x80u;
                  v21 = *(this + 1);
                  v9 = *(this + 2);
                  if (v21 < v9 && *v21 == 72)
                  {
                    v10 = v21 + 1;
                    *(this + 1) = v10;
LABEL_72:
                    if (v10 >= v9 || (v22 = *v10, v22 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                      if (!result)
                      {
                        return result;
                      }

                      v23 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 72) = v22;
                      v23 = v10 + 1;
                      *(this + 1) = v23;
                    }

                    *(a1 + 96) |= 0x100u;
                    if (v23 < v9 && *v23 == 80)
                    {
                      v14 = v23 + 1;
                      *(this + 1) = v14;
LABEL_85:
                      v31[0] = 0;
                      if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                        if (!result)
                        {
                          return result;
                        }

                        v26 = v31[0];
                      }

                      else
                      {
                        *(this + 1) = v14 + 1;
                      }

                      if (sub_1001348E0(v26))
                      {
                        *(a1 + 96) |= 0x200u;
                        *(a1 + 76) = v26;
                      }

                      v27 = *(this + 1);
                      v11 = *(this + 2);
                      if (v27 < v11 && *v27 == 88)
                      {
                        v24 = v27 + 1;
                        *(this + 1) = v24;
LABEL_95:
                        if (v24 >= v11 || (v28 = *v24, v28 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v29 = *(this + 1);
                          v11 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 80) = v28;
                          v29 = v24 + 1;
                          *(this + 1) = v29;
                        }

                        *(a1 + 96) |= 0x400u;
                        if (v29 < v11 && *v29 == 96)
                        {
                          v12 = v29 + 1;
                          *(this + 1) = v12;
LABEL_103:
                          v31[0] = 0;
                          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                            if (!result)
                            {
                              return result;
                            }

                            v30 = v31[0];
                          }

                          else
                          {
                            *(this + 1) = v12 + 1;
                          }

                          if (v30 <= 5)
                          {
                            *(a1 + 96) |= 0x800u;
                            *(a1 + 88) = v30;
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
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10012F6D4(uint64_t result)
{
  if ((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0)
  {
    if (result == 10)
    {
      return 10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10012F70C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10012F760()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 736))
  {
    v2 = v1;
    v3 = v0;
    v4 = sub_1000081AC();
    v120 = v4;
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(v2 + 304);
      *buf = 67240448;
      *v122 = v6;
      *&v122[4] = 2050;
      *&v122[6] = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "validFix,%{public}d,machCont,%{public}.3lf", buf, 0x12u);
    }

    v7 = sub_10000A100(121, 2);
    if (v7)
    {
      sub_1019436EC();
    }

    v8 = *(v3 + 992);
    if (v8)
    {
      v9 = *(v3 + 792);
      *(v8 + 11760) = *(v3 + 784);
      *(v8 + 11652) = v9;
    }

    if ((*(v2 + 304) & 1) == 0)
    {
      sub_10012CD08(v7, 0);
      if (vabdd_f64(v120, *(v3 + 2736)) >= 0.75)
      {
        sub_10012CDF4(v3, v120);
        v30 = *(v3 + 3064);
        if (v30)
        {
          if (sub_1002A9D4C(v30))
          {
            v32 = sub_1007FEA8C(v3, &v120);
            if ((v32 & 1) == 0)
            {
              sub_10012CD08(v32, 1);
              if (qword_1025D4650 != -1)
              {
                sub_101940C48();
              }

              v87 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v122 = v120;
                _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_INFO, "#Raven,no yield now,%.3lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1019437FC();
              }

              return;
            }
          }

          v30 = *(v3 + 3064);
          if (v30)
          {
            v30 = sub_1002A9D4C(v30);
            if (v30)
            {
              return;
            }
          }
        }
      }

      else
      {
        v30 = *(v3 + 3064);
        if (v30)
        {
          if (sub_1002A9D4C(v30))
          {
            v31 = sub_1007FEA8C(v3, &v120);
            if ((v31 & 1) == 0)
            {
              sub_10012CD08(v31, 1);
              if (qword_1025D4650 != -1)
              {
                sub_101940C48();
              }

              v86 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v122 = v120;
                _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_INFO, "#Raven,no yield now,%.3lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1019438F0();
              }

              return;
            }
          }

          v30 = *(v3 + 3064);
          if (v30)
          {
            v30 = sub_1002A9D4C(v30);
            if (v30)
            {
              return;
            }
          }
        }
      }

      sub_10012CD08(v30, 1);
      return;
    }

    v98 = (v2 + 288);
    if (*(v2 + 288) == 5 && vabdd_f64(v120, *(v3 + 784)) < 1.9)
    {
      *v98 = *(v3 + 792);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(v2 + 44);
      v12 = *v2;
      v13 = *(v2 + 8);
      v14 = *(v2 + 16);
      v94 = *(v2 + 24);
      v95 = *(v2 + 32);
      v96 = *(v2 + 40);
      v97 = *(v2 + 48);
      v15 = LocationLogEncryptionDataSize();
      v16 = LocationLogEncryptionEncryptData();
      v17 = LocationLogEncryptionDataSize();
      v18 = LocationLogEncryptionEncryptData();
      *&v122[6] = "";
      *&v122[4] = 2082;
      v123 = 2082;
      v124 = "PerEpochData";
      v126 = v12;
      v130 = v13;
      v132 = v14;
      v134 = v94;
      v136 = v95;
      v138 = v96;
      v140 = v97;
      v142 = v15;
      v144 = v16;
      v141 = 1040;
      v145 = 1040;
      v146 = v17;
      v143 = 2098;
      v147 = 2098;
      v148 = v18;
      v149 = 2049;
      v19 = *(v2 + 80);
      v150 = *(v2 + 72);
      v20 = *(v2 + 88);
      v152 = v19;
      v154 = v20;
      v21 = *(v2 + 104);
      v156 = *(v2 + 96);
      v158 = v21;
      v22 = *(v2 + 120);
      v160 = *(v2 + 112);
      v162 = v22;
      v164 = *(v2 + 128);
      v166 = *(v2 + 140);
      v168 = *(v2 + 144);
      v178 = *(v2 + 184);
      v182 = *(v2 + 288);
      v23 = *(v2 + 160);
      v170 = *(v2 + 152);
      v172 = v23;
      v174 = *(v2 + 168);
      v176 = *(v2 + 176);
      v125 = 2050;
      v127 = 2050;
      v129 = 2050;
      v131 = 2050;
      v133 = 2050;
      v135 = 2050;
      v151 = 2050;
      v155 = 2050;
      v157 = 2050;
      v159 = 2050;
      v161 = 2050;
      v163 = 2050;
      v169 = 2050;
      v171 = 2050;
      v175 = 2050;
      v177 = 2050;
      v180 = *(v2 + 292);
      v137 = 1026;
      v139 = 1026;
      v153 = 1026;
      v165 = 1026;
      v167 = 1026;
      v173 = 1026;
      v179 = 1026;
      v181 = 1026;
      *buf = 68296707;
      *v122 = 0;
      v128 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, gpsNs:%{public}lld, gpsTimeUncMs:%{public}f, cfTime:%{public}f, cfTimeGps:%{public}f, machTime:%{public}f, machContinuousTime:%{public}f, leapSeconds:%{public}d, posValid:%{public}hhd, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, altitude:%{private}f, undulation:%{public}f, undulationModel:%{public}d, hunc:%{public}f, vunc:%{public}f, semiMaj:%{public}f, semiMin:%{public}f, semiMajAz:%{public}f, reliability:%{public}d, speedValid:%{public}hhd, speed:%{public}f, speedUnc:%{public}f, courseValid:%{public}hhd, course:%{public}f, courseUnc:%{public}f, imag:%{public}d, gnssContent:%{public}d}", buf, 0x116u);
    }

    if (!*(v3 + 1160) || (sub_100298E74((v3 + 2752), (v2 + 56), (v2 + 64), 1, *(v3 + 772)), sub_100298F24(*(v3 + 1160), v2, *v3 + 8, v3 + 2752, (v3 + 772), *(v3 + 752)), *(v2 + 292) != 3) || (*(v3 + 1223) & 1) != 0 || (*(v3 + 1221) & 1) != 0)
    {
      v24 = *(v3 + 728);
      if (v24)
      {
        sub_10029D128(v24, v2);
      }

      v25 = *(v3 + 1208);
      if (v25)
      {
        sub_1009BA87C(v25, v2);
      }

      v26 = (v3 + 80);
      if (*(v3 + 80))
      {
        v27 = *(v3 + 772) + 1;
        *(v3 + 772) = v27;
        v28 = v27 < 0xA;
      }

      else
      {
        *(v3 + 772) = 0;
        v28 = 1;
      }

      if (*(v2 + 144) == 1 && *(v2 + 152) > 0.0)
      {
        *(v3 + 776) = v120;
      }

      if (*(v2 + 184) <= 90.0)
      {
        v28 = 0;
      }

      if (v28)
      {
        *(v2 + 168) = 0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(v2 + 176) = _Q0;
      }

      if (*(v3 + 776) + 30.0 < v120)
      {
        v38 = *(v2 + 184);
        if (v38 <= 0.0 || v38 >= 45.0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v39 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *v122 = 0;
            *&v122[4] = 2082;
            *&v122[6] = "";
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Course invalidated due to extended static period}", buf, 0x12u);
          }

          *(v2 + 168) = 0;
          __asm { FMOV            V0.2D, #-1.0 }

          *(v2 + 176) = _Q0;
        }
      }

      v41 = *(v3 + 1168);
      if (v41 && *(v2 + 144) == 1)
      {
        v42 = *(v2 + 152);
        *buf = v42;
        v43 = *(v2 + 160);
        *v110 = v43;
        sub_10028E080(v41, buf, v110, (v2 + 8));
        *(v2 + 152) = v44;
      }

      v45 = *(v3 + 1016);
      if (v45)
      {
        if (*v26 != 1)
        {
          goto LABEL_173;
        }

        if (*(v2 + 48) == 1)
        {
          if (sub_10012D494(v45, v2))
          {
            *(v2 + 56) = *(v3 + 88);
            *(v2 + 72) = *(v3 + 104);
            *(v2 + 88) = *(v3 + 120);
            *(v2 + 152) = 0;
            if (*(v3 + 200) == 1)
            {
              *(v2 + 168) = 1;
              *(v2 + 176) = *(v3 + 208);
            }
          }
        }

        v45 = *(v3 + 1016);
        if (v45)
        {
LABEL_173:
          if (*(v2 + 144) == 1)
          {
            if (sub_10029882C(v45, *(v2 + 152), *(v2 + 160)))
            {
              *(v2 + 152) = 0;
              if (*(v3 + 200) == 1)
              {
                *(v2 + 168) = 1;
                *(v2 + 176) = *(v3 + 208);
              }
            }
          }
        }
      }

      v46 = *(v3 + 1064);
      if (v46)
      {
        sub_100218038(v46, *(v2 + 88), *(v2 + 80), *(v2 + 8));
        sub_100214CE0(*(v3 + 1064), (v2 + 80), (v2 + 88), *(v2 + 8));
      }

      v47 = *(v3 + 2504);
      if (v47)
      {
        v48 = *(v3 + 1016);
        if (v48)
        {
          sub_1009BA690(v48, buf);
        }

        else
        {
          CLMotionActivity::getInit(buf, 0);
        }

        LOBYTE(v110[0]) = 0;
        sub_1002A3400(v47, v2, buf, v110);
      }

      sub_1002988A4(v2, 1, *(v3 + 1221), buf);
      v49 = *(v3 + 1136);
      if (v49)
      {
        sub_10029A3F8(v49, (*v3 + 8), (v2 + 56), (v2 + 64), (v2 + 72), (v2 + 96), (v2 + 104));
        if (!sub_10024CA2C())
        {
          sub_1016C4A7C(*(v3 + 1136), v2 + 248, v50);
        }
      }

      v51 = *(v3 + 1056);
      if (v51)
      {
        sub_10029A508(v51, buf, *(v3 + 2498));
      }

      v52 = *(v3 + 1016);
      if (v52)
      {
        sub_10012CF34(v52, v2);
      }

      v53 = *(v3 + 1040);
      if (v53)
      {
        sub_1001306F4(v53);
      }

      v54 = *(v3 + 992);
      if (v54)
      {
        sub_100139E64(v54, v2);
      }

      v55 = *(v3 + 1112);
      if (v55)
      {
        sub_101751610(v55, v2);
      }

      v56 = *(v3 + 1192);
      if (v56)
      {
        sub_1010BFFFC(v56, v2);
      }

      *(v3 + 2736) = v120;
      sub_10029C62C(v3, v2);
      sub_1002A94B8(v57, buf, 0);
      v58 = *(v3 + 1200);
      if (v58)
      {
        v59 = sub_100EABA00(v58, v120) ^ 1;
      }

      else
      {
        v59 = 0;
      }

      if (!*(v3 + 360))
      {
        goto LABEL_125;
      }

      if (*(v3 + 3064))
      {
        v60 = 1;
      }

      else
      {
        v60 = *(v3 + 736) == 0;
      }

      v61 = *(v3 + 3112);
      if (v61)
      {
        LODWORD(v61) = *v61 ^ 1;
      }

      v62 = *(v3 + 3104);
      if (v62)
      {
        if (*(v62 + 32) == 1)
        {
          v63 = *(v62 + 24);
          if (v63 > v120)
          {
            LODWORD(v62) = 0;
            goto LABEL_115;
          }

          v65 = v120 + *(v62 + 8) - v63;
          v64 = *(v62 + 20);
        }

        else
        {
          v64 = *(v62 + 20);
          v65 = *(v62 + 8);
        }

        LODWORD(v62) = v64 ^ 1 | (v65 > *(v62 + 16));
      }

LABEL_115:
      if ((v60 | v61 | v62 | v59) & 1 | ((*(v3 + 568) & 0xFFFFFFFE) == 10))
      {
        if (!(v61 & 1 | ((v59 & 1) == 0)))
        {
          sub_1001C55E4(v3);
        }
      }

      else
      {
        sub_1007FEBA8(v3, v120);
      }

      v66 = sub_1002A9660(v3, &v183);
      if ((v66 & 1) == 0)
      {
        sub_1002A94B8(v66, buf, 1);
        v67 = *(v3 + 1152);
        if (v67 && (*(v3 + 752) & 1) == 0)
        {
          sub_1016F3724(v67, buf);
        }

        v68 = *(v3 + 360);
        if (!v68)
        {
          sub_1000CF05C();
        }

        (*(*v68 + 48))(v68, buf);
      }

LABEL_125:
      v69 = *(v3 + 424);
      if (v69)
      {
        (*(*v69 + 48))(v69, buf);
      }

      v70 = *(v3 + 1184);
      if (v70)
      {
        v71 = *(v3 + 1200);
        if (v71)
        {
          v72 = sub_100EABC34(v71, v120);
          sub_100D0928C(v70, (v72 ^ 1u));
        }
      }

      v73 = *v2;
      v74 = *(v2 + 16);
      v75 = *(v2 + 48);
      *(v3 + 64) = *(v2 + 32);
      *v26 = v75;
      *(v3 + 32) = v73;
      *(v3 + 48) = v74;
      v76 = *(v2 + 64);
      v77 = *(v2 + 80);
      v78 = *(v2 + 112);
      *(v3 + 128) = *(v2 + 96);
      *(v3 + 144) = v78;
      *(v3 + 96) = v76;
      *(v3 + 112) = v77;
      v79 = *(v2 + 128);
      v80 = *(v2 + 144);
      v81 = *(v2 + 176);
      *(v3 + 192) = *(v2 + 160);
      *(v3 + 208) = v81;
      *(v3 + 160) = v79;
      *(v3 + 176) = v80;
      v82 = *(v2 + 192);
      v83 = *(v2 + 208);
      v84 = *(v2 + 224);
      *(v3 + 272) = *(v2 + 240);
      *(v3 + 240) = v83;
      *(v3 + 256) = v84;
      *(v3 + 224) = v82;
      if (v3 + 32 != v2)
      {
        *(v3 + 312) = *(v2 + 280);
        sub_100294BE4((v3 + 280), *(v2 + 264), 0);
      }

      *(v3 + 320) = *v98;
      sub_1002C31F8(v3 + 2752, v3 + 80);
      v85 = *(v3 + 1024);
      if (v85 && *(v3 + 2720) == 1)
      {
        sub_101754A3C(v85);
      }

      if (v184)
      {
        sub_100008080(v184);
      }

      return;
    }

    sub_10012CDF4(v3, v120);
    if (*v3)
    {
      ++*(*v3 + 1076);
    }

    sub_100021AFC(v110);
    sub_1002988A4(v2, 0, 0, v99);
    v110[6] = v99[6];
    v110[7] = v99[7];
    v111[0] = v100[0];
    *(v111 + 12) = *(v100 + 12);
    v110[2] = v99[2];
    v110[3] = v99[3];
    v110[4] = v99[4];
    v110[5] = v99[5];
    v110[0] = v99[0];
    v110[1] = v99[1];
    memcpy(v112, v101, 0x201uLL);
    v88 = v102;
    v89 = v103;
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v112[65] = v88;
    v90 = v113;
    v113 = v89;
    if (v90)
    {
      sub_100008080(v90);
    }

    v118 = v108;
    v119[0] = v109[0];
    *(v119 + 9) = *(v109 + 9);
    v114 = v104;
    v115 = v105;
    v116 = v106;
    v117 = v107;
    *&v112[43] = v120;
    if (*(v3 + 488))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v91 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_INFO, "Notifying al to WiFi harvester", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v93 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::handleLocationResponse(std::optional<GNSS::PerEpochData> &&)", "%s\n", v93);
        if (v93 != buf)
        {
          free(v93);
        }
      }

      sub_1007FEB60(v3 + 464);
    }

    v92 = *(v3 + 1024);
    if (v92)
    {
      sub_101755170(v92, 1);
    }

    if (v103)
    {
      sub_100008080(v103);
    }

    sub_100311054(v110);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Gnss not running", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019439E4();
    }
  }
}

void sub_1001305C8(_Unwind_Exception *a1)
{
  if (STACK[0x2E8])
  {
    sub_100008080(STACK[0x2E8]);
  }

  sub_100311054(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void sub_10013061C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 1) == 0)
  {
    v3 = sub_1000081AC();
    v4 = *(a1 + 56);
    v6 = v4 > 0.0;
    v5 = vabdd_f64(v3, v4);
    v6 = v6 && v5 <= 15.0;
    if (!v6)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B77F98();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLGnssAssistanceTime,refresh,feedAssistanceTime", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B78960();
      }

      sub_1001BEF40(a1);
      *(a1 + 56) = v3;
    }
  }
}

void sub_1001306F4(uint64_t a1)
{
  if (sub_1000081AC() - *(a1 + 56) > 60.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101928290();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,refresh,updateRefTime", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019286AC();
    }

    sub_100180D80(a1);
  }
}

uint64_t *sub_1001307B0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1001309E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10012E718(v8, this, v13) || *(this + 36) != 1)
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
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_1002C3AA8(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_100130D60(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v14;
          *(a1 + 52) |= 0x10u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v14;
      *(a1 + 52) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 52) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v14;
          *(a1 + 52) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100130FD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(a1 + 52) |= 8u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            operator new();
          }

          v55 = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v38;
            *(this + 1) = v38 + 1;
          }

          v39 = *(this + 14);
          v40 = *(this + 15);
          *(this + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014C048(v37, this, v42) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
          v43 = *(this + 14);
          v16 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v16)
          {
            *(this + 14) = v44;
          }

          v45 = *(this + 1);
          if (v45 < *(this + 2) && *v45 == 42)
          {
            *(this + 1) = v45 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(a1 + 52) |= 0x10u;
          v46 = *(a1 + 40);
          if (!v46)
          {
            operator new();
          }

          v55 = 0;
          v47 = *(this + 1);
          if (v47 >= *(this + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v47;
            *(this + 1) = v47 + 1;
          }

          v48 = *(this + 14);
          v49 = *(this + 15);
          *(this + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014CC44(v46, this, v51) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
          v52 = *(this + 14);
          v16 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v16)
          {
            *(this + 14) = v53;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v55 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
      if (!sub_10014B6E4(v9, this, v14) || *(this + 36) != 1)
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
LABEL_38:
        *(a1 + 52) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v55 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
        if (!sub_10014D4F8(v19, this, v24) || *(this + 36) != 1)
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
          *(this + 1) = v27 + 1;
LABEL_52:
          *(a1 + 52) |= 4u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            operator new();
          }

          v55 = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014D944(v28, this, v33) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v34 = *(this + 14);
          v16 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v16)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 34)
          {
            *(this + 1) = v36 + 1;
            goto LABEL_66;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
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

uint64_t sub_100131674(uint64_t a1, uint64_t *a2, double *a3)
{
  v9 = 0.0;
  if (sub_100131C88(a1, &v9))
  {
    *a3 = *a2 + v9;

    return sub_100131DE8(a1, a2);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between mach continuous time and mach absolute time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D27E8();
    }

    return 0;
  }
}

uint64_t sub_10013176C(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v28 = 0;
  if (mach_get_times())
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_1019D2190();
      return 0;
    }

    return result;
  }

  v6 = sub_1000080EC(v27);
  v7 = v27 - v28;
  v8 = sub_10000DF28(&v25);
  v9 = v8 - sub_1000080EC(v28);
  if (*(a1 + 32) == 1 && vabdd_f64(v9, *(a1 + 16)) <= 0.0012 && v7 == *a1 && v6 <= *(a1 + 64) + 30.0)
  {
LABEL_39:
    v19 = *a1;
    v20 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *a2 = v19;
    *(a2 + 16) = v20;
    return 1;
  }

  *(a1 + 32) = 0;
  if (!sub_10025ECF0(a1, (a1 + 24)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TCONV,Getting last wake up time failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019D2274();
      return 0;
    }

    return result;
  }

  *(a1 + 64) = v6;
  *a1 = v7;
  v10 = sub_1000080EC(v7);
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "TCONV,invalid deltaCfAbsSec", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019D2358();
        return 0;
      }

      return result;
    }

    *(a1 + 32) = 1;
    v14 = sub_1000080EC(v28);
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
      v18 = *(a1 + 24);
      *buf = 134351360;
      v50 = v28;
      v51 = 2050;
      v52 = v27;
      v53 = 2050;
      v54 = v25;
      v55 = 2050;
      v56 = v26;
      v57 = 2050;
      v58 = v16;
      v59 = 2050;
      v60 = v17;
      v61 = 2050;
      v62 = v18;
      v63 = 2050;
      v64 = v14;
      v65 = 2050;
      v66 = v6;
      v67 = 2050;
      v68 = v8;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "TCONV,mach_get_times,machAbs,%{public}llu,machCont,%{public}llu,tv_sec,%{public}ld,tv_nsec,%{public}ld,deltaContAbs,%{public}.6lf,deltaCfAbs,%{public}.6lf,lastWakeAbs,%{public}.6lf,machNow,%{public}.6lf,machContNow,%{public}.6lf,sysNow,%{public}.6lf", buf, 0x66u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 16);
      v23 = *(a1 + 24);
      v29 = 134351360;
      v30 = v28;
      v31 = 2050;
      v32 = v27;
      v33 = 2050;
      v34 = v25;
      v35 = 2050;
      v36 = v26;
      v37 = 2050;
      v38 = v21;
      v39 = 2050;
      v40 = v22;
      v41 = 2050;
      v42 = v23;
      v43 = 2050;
      v44 = v14;
      v45 = 2050;
      v46 = v6;
      v47 = 2050;
      v48 = v8;
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLUtils::LiveTimeConverter::getLastWakeUpTime(WakeUpTime &)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    goto LABEL_39;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1019D1B7C();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "TCONV,invalid deltaContAbsSec", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019D243C();
    return 0;
  }

  return result;
}