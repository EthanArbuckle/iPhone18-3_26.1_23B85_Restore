void *sub_100661F0C(void *a1)
{
  *a1 = off_1024662D8;
  v2 = a1 + 1;
  sub_1001FB750(a1 + 30);
  sub_100606640(v2);
  return a1;
}

void *sub_100661F60(void *a1)
{
  *a1 = off_1024662D8;
  v2 = a1 + 1;
  sub_1001FB750(a1 + 30);
  sub_100606640(v2);
  return a1;
}

void sub_100661FB4(void *a1)
{
  *a1 = off_1024662D8;
  v1 = a1 + 1;
  sub_1001FB750(a1 + 30);
  sub_100606640(v1);

  operator delete();
}

uint64_t sub_100662028(uint64_t a1, double *a2, double *a3, void *a4)
{
  v6 = 0;
  v5 = 0;
  return sub_10066205C(a1, a2, a3, &v6, a4, &v5);
}

uint64_t sub_10066205C(uint64_t a1, double *a2, double *a3, double *a4, void *a5, _BYTE *a6)
{
  __p = 0;
  v45 = 0;
  v46 = 0;
  if (sub_100662510(a1, a2, a3, a4, &__p))
  {
    a5[1] = *a5;
    v11 = __p;
    v12 = 1;
    if (__p != v45)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      do
      {
        v14 = *v11;
        v42 = 0;
        v43 = v14;
        v41 = 0;
        if (sub_100662B7C(a1, &v43, &v41, &v42, *a2, *a3))
        {
          if ((*a6 & 1) != 0 || v41 == 1)
          {
            v15 = v42;
            v17 = a5[1];
            v16 = a5[2];
            if (v17 >= v16)
            {
              v22 = *a5;
              v23 = v17 - *a5;
              v24 = v23 >> 4;
              v25 = (v23 >> 4) + 1;
              if (v25 >> 60)
              {
                sub_10028C64C();
              }

              v26 = v16 - v22;
              if (v26 >> 3 > v25)
              {
                v25 = v26 >> 3;
              }

              v27 = v26 >= 0x7FFFFFFFFFFFFFF0;
              v28 = 0xFFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                v28 = v25;
              }

              if (v28)
              {
                sub_1003E5FE8(a5, v28);
              }

              v29 = (16 * v24);
              *v29 = v14;
              v29[1] = v15;
              v18 = 16 * v24 + 16;
              memcpy(0, v22, v23);
              v30 = *a5;
              *a5 = 0;
              a5[1] = v18;
              a5[2] = 0;
              if (v30)
              {
                operator delete(v30);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              *v17 = v14;
              v17[1] = v15;
              v18 = (v17 + 2);
            }

            a5[1] = v18;
          }
        }

        else
        {
          if (p_info[276] != -1)
          {
            sub_1018F5788();
          }

          v19 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
          {
            v20 = *a2;
            v21 = *a3;
            *buf = 134218496;
            v54 = v20;
            v55 = 2048;
            v56 = v21;
            v57 = 2048;
            v58 = v14;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Couldn't determine if point <%+.8f,%+.8f> is in polygon %lld", buf, 0x20u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F57B0(buf);
            v31 = *a2;
            v32 = *a3;
            v47 = 134218496;
            v48 = v31;
            v49 = 2048;
            v50 = v32;
            v51 = 2048;
            v52 = v14;
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonsAndDistancesForPointWithUncertainty(const double &, const double &, const double &, std::vector<std::pair<sqlite3_int64, double>> &, const BOOL &)", "%s\n", v33);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          v12 = 0;
        }

        ++v11;
      }

      while (v11 != v45);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v34 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v35 = *a2;
      v36 = *a3;
      *buf = 134218240;
      v54 = v35;
      v55 = 2048;
      v56 = v36;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Couldn't get list of candidates for point <%+.8f,%+.8f>", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F57B0(buf);
      v38 = *a2;
      v39 = *a3;
      v47 = 134218240;
      v48 = v38;
      v49 = 2048;
      v50 = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonsAndDistancesForPointWithUncertainty(const double &, const double &, const double &, std::vector<std::pair<sqlite3_int64, double>> &, const BOOL &)", "%s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    v12 = 0;
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_1006624D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100662510(uint64_t a1, uint64_t *a2, uint64_t *a3, double *a4, void *a5)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a2;
    v12 = *a3;
    v13 = *a4;
    *buf = 134218496;
    v60 = *&v11;
    v61 = 2048;
    v62 = *&v12;
    v63 = 2048;
    v64 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Getting polygons for point <%+.8f,%+.8f> acc %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v41 = *a2;
    v42 = *a3;
    v43 = *a4;
    v51 = 134218496;
    v52 = *&v41;
    v53 = 2048;
    v54 = *&v42;
    v55 = 2048;
    v56 = v43;
    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::polygonCandidatesForPointWithUncertainty(const double &, const double &, const double &, std::vector<sqlite3_int64> &)", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  a5[1] = *a5;
  if (!sub_100DD42EC((a1 + 208)))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v33 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "#Warning fBoundingBoxesSelectNearbyStatement not available - rtree module missing or db unavailable", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F5808();
    }

    return 0;
  }

  if (!sub_100020608(*a2, *a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v37 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *a2;
      v39 = *a3;
      *buf = 134218240;
      v60 = *&v38;
      v61 = 2048;
      v62 = *&v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#Warning Ignoring bogus location <%+.8f,%+.8f>", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F58E4(a2, a3);
    }

    return 0;
  }

  v14 = *a2;
  v15 = *a3;
  v49 = *&v15;
  v50 = *&v14;
  v47 = *&v15;
  v48 = *&v14;
  if (*a4 > 0.0)
  {
    sub_100290364(&v50, &v49, &v48, &v47, *&v14, *&v15, *a4);
  }

  sub_100144CA0((a1 + 208), &v46);
  v16 = sub_100008880(v46);
  if (sub_1001A3BD4(v16, 1, v50) && (v17 = sub_100008880(v46), sub_1001A3BD4(v17, 2, v48)) && (v18 = sub_100008880(v46), sub_1001A3BD4(v18, 3, v49)) && (v19 = sub_100008880(v46), sub_1001A3BD4(v19, 4, v47)))
  {
    while (1)
    {
      v20 = sub_100008880(v46);
      if (sqlite3_step(v20) != 100)
      {
        break;
      }

      v21 = sub_100008880(v46);
      v22 = sqlite3_column_int(v21, 0);
      v24 = a5[1];
      v23 = a5[2];
      if (v24 >= v23)
      {
        v26 = *a5;
        v27 = v24 - *a5;
        v28 = v27 >> 3;
        v29 = (v27 >> 3) + 1;
        if (v29 >> 61)
        {
          sub_10028C64C();
        }

        v30 = v23 - v26;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_1000B9708(a5, v31);
        }

        *(8 * v28) = v22;
        v25 = 8 * v28 + 8;
        memcpy(0, v26, v27);
        v32 = *a5;
        *a5 = 0;
        a5[1] = v25;
        a5[2] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v24 = v22;
        v25 = (v24 + 1);
      }

      a5[1] = v25;
    }

    v35 = 1;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v34 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218752;
      v60 = v50;
      v61 = 2048;
      v62 = v48;
      v63 = 2048;
      v64 = v49;
      v65 = 2048;
      v66 = v47;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Could not bind <%+.8f,%+.8f> - <%+.8f,%+.8f>", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F57B0(buf);
      v51 = 134218752;
      v52 = v50;
      v53 = 2048;
      v54 = v48;
      v55 = 2048;
      v56 = v49;
      v57 = 2048;
      v58 = v47;
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonCandidatesForPointWithUncertainty(const double &, const double &, const double &, std::vector<sqlite3_int64> &)", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    v35 = 0;
  }

  v36 = v46;
  v46 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  return v35;
}

void sub_100662B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100662B7C(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3, double *a4, double a5, double a6)
{
  if (!sub_100DD42EC((a1 + 192)))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F57F4();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning fPointsSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F5A0C();
    }

    return 0;
  }

  if (*(a1 + 224) != a5 || *(a1 + 232) != a6)
  {
    *(a1 + 224) = a5;
    *(a1 + 232) = a6;
    sub_1001FB750((a1 + 240));
LABEL_16:
    *a3 = 0;
    *a4 = -1.0;
    sub_100144CA0((a1 + 192), &v42);
    v15 = sub_100008880(v42);
    if (sub_1000728E4(v15, 1, *a2))
    {
      v16 = sub_100008880(v42);
      if (sqlite3_step(v16) == 100)
      {
        v17 = sub_100008880(v42);
        v18 = sqlite3_column_double(v17, 0);
        v19 = sub_100008880(v42);
        v20 = sqlite3_column_double(v19, 1);
        while (1)
        {
          do
          {
            v21 = sub_100008880(v42);
            if (sqlite3_step(v21) != 100)
            {
              operator new();
            }

            v22 = sub_100008880(v42);
            v23 = sqlite3_column_double(v22, 0);
            v24 = sub_100008880(v42);
            v25 = sqlite3_column_double(v24, 1);
            v26 = v25;
          }

          while (v23 == v18 && v25 == v20);
          if ((v18 > a5 && v23 < a5 || v18 < a5 && v23 > a5) && (v25 > a6 || v20 > a6))
          {
            break;
          }

          if (v18 == a5 && v23 < a5 && v20 > a6 || v23 == a5 && v18 < a5 && v25 > a6)
          {
            goto LABEL_38;
          }

LABEL_39:
          v28 = v23 - v18;
          v29 = v26 - v20;
          v30 = ((a6 - v20) * (v26 - v20) + (a5 - v18) * (v23 - v18)) / (v29 * v29 + v28 * v28);
          if (v30 <= 0.0)
          {
            v31 = v18;
            v32 = v20;
          }

          else
          {
            v31 = v23;
            v32 = v26;
            if (v30 < 1.0)
            {
              v31 = v18 + v30 * v28;
              v32 = v20 + v30 * v29;
            }
          }

          v33 = sub_100117154(a5, a6, v31, v32);
          if (*a4 >= 0.0)
          {
            v20 = v26;
            v18 = v23;
            if (v33 >= *a4)
            {
              continue;
            }
          }

          *a4 = v33;
          v20 = v26;
          v18 = v23;
        }

        if (v20 + (v25 - v20) * ((a5 - v18) / (v23 - v18)) <= a6)
        {
          goto LABEL_39;
        }

LABEL_38:
        *a3 ^= 1u;
        goto LABEL_39;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v36 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *a2;
        *buf = 134217984;
        v46 = v37;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "#Warning No points data found for polygon Id %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_57:
        v14 = 0;
        v38 = v42;
        v42 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        return v14;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v34 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *a2;
        *buf = 134217984;
        v46 = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_57;
      }
    }

    sub_1018F57B0(buf);
    v40 = *a2;
    v43 = 134217984;
    v44 = v40;
    v41 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::pointInPolygon(const sqlite3_int64 &, const double, const double, BOOL &, double &)", "%s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }

    goto LABEL_57;
  }

  v12 = *(a1 + 248);
  if (v12 == a1 + 240)
  {
    goto LABEL_16;
  }

  while (*(v12 + 16) != *a2)
  {
    v12 = *(v12 + 8);
    if (v12 == a1 + 240)
    {
      goto LABEL_16;
    }
  }

  *a3 = *(v12 + 32);
  *a4 = *(v12 + 24);
  return 1;
}

void sub_10066317C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006631E4(uint64_t a1, sqlite3_int64 *a2, std::string *a3)
{
  if (sub_100DD42EC((a1 + 160)))
  {
    sub_100144CA0((a1 + 160), &v22);
    v6 = sub_100008880(v22);
    if (sub_1000728E4(v6, 1, *a2))
    {
      v7 = sub_100008880(v22);
      if (sqlite3_step(v7) == 100)
      {
        v8 = sub_100008880(v22);
        v9 = sqlite3_column_text(v8, 0);
        if (v9)
        {
          sub_100006044(a3, v9);
          v10 = 1;
          goto LABEL_31;
        }

        if (qword_1025D48A0 != -1)
        {
          sub_1018F5788();
        }

        v19 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Could not get polygon name", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
LABEL_30:
          v10 = 0;
LABEL_31:
          v20 = v22;
          v22 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          return v10;
        }

        sub_1018F57B0(buf);
        LOWORD(v23) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v15);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018F5788();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *a2;
          *buf = 134217984;
          v26 = v17;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning No entry in names table for polygon ID %lld", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_30;
        }

        sub_1018F57B0(buf);
        v18 = *a2;
        v23 = 134217984;
        v24 = v18;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v15);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v13 = *a2;
        *buf = 134349056;
        v26 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Could not bind %{public}lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_30;
      }

      sub_1018F57B0(buf);
      v14 = *a2;
      v23 = 134349056;
      v24 = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v15);
    }

    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_30;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5AE8();
  }

  return 0;
}

void sub_10066366C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006636C0(uint64_t a1, char *a2, void *a3)
{
  if (sub_100DD42EC((a1 + 176)))
  {
    sub_100144CA0((a1 + 176), &v20);
    v6 = sub_100008880(v20);
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (sub_10003DDD8(v6, 1, v7))
    {
      v8 = sub_100008880(v20);
      if (sqlite3_step(v8) == 100)
      {
        v9 = sub_100008880(v20);
        *a3 = sqlite3_column_int(v9, 0);
        v10 = 1;
        goto LABEL_35;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        *buf = 136315138;
        v24 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Polygon %s not found in names table", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_34:
        v10 = 0;
LABEL_35:
        v17 = v20;
        v20 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        return v10;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *buf = 136315138;
        v24 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_34;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }
    }

    v21 = 136315138;
    v22 = v14;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonId(const std::string &, sqlite3_int64 &)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_34;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectOnNameStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5BC4();
  }

  return 0;
}

void sub_100663A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100663AE0(uint64_t a1, char *a2, void *a3)
{
  a3[1] = *a3;
  if (sub_100DD42EC((a1 + 176)))
  {
    sub_100144CA0((a1 + 176), &v31);
    v6 = sub_100008880(v31);
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (sub_10003DDD8(v6, 1, v7))
    {
      while (1)
      {
        v8 = sub_100008880(v31);
        if (sqlite3_step(v8) != 100)
        {
          break;
        }

        v9 = sub_100008880(v31);
        v10 = sqlite3_column_int(v9, 0);
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_10028C64C();
          }

          v18 = v11 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_1000B9708(a3, v19);
          }

          *(8 * v16) = v10;
          v13 = 8 * v16 + 8;
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v13;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = v10;
          v13 = (v12 + 1);
        }

        a3[1] = v13;
      }

      if (a3[1] != *a3)
      {
        v22 = 1;
        goto LABEL_49;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v26 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        *buf = 136315138;
        v35 = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Polygon %s not found in names table", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_48:
        v22 = 0;
LABEL_49:
        v28 = v31;
        v31 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v22;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v23 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v24 = a2;
        }

        else
        {
          v24 = *a2;
        }

        *buf = 136315138;
        v35 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_48;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    v32 = 136315138;
    v33 = v25;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::polygonsForName(const std::string &, std::vector<sqlite3_int64> &)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }

    goto LABEL_48;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v21 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectOnNameStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5CA0();
  }

  return 0;
}

void sub_100663F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100663FE8(uint64_t a1, char *a2, double *a3, double *a4, _BYTE *a5, double *a6)
{
  v15 = 0;
  if (sub_1006636C0(a1, a2, &v15))
  {
    return sub_100662B7C(a1, &v15, a5, a6, *a3, *a4);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v13 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    *buf = 136315138;
    v17 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning No bounding box found for polygon %s", buf, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018F5D7C(a2);
    return 0;
  }

  return result;
}

uint64_t sub_100664124(void *a1)
{
  sub_10003848C(v62);
  v2 = sub_100038730(&v63, "SELECT ", 7);
  v3 = sub_100038730(v2, "MinimumLatitude", 15);
  v4 = sub_100038730(v3, ", ", 2);
  v5 = sub_100038730(v4, "MaximumLatitude", 15);
  v6 = sub_100038730(v5, ", ", 2);
  v7 = sub_100038730(v6, "MinimumLongitude", 16);
  v8 = sub_100038730(v7, ", ", 2);
  v9 = sub_100038730(v8, "MaximumLongitude", 16);
  v10 = sub_100038730(v9, " FROM ", 6);
  v11 = sub_100038730(v10, "BoundingBoxes", 13);
  v12 = sub_100038730(v11, " WHERE ", 7);
  v13 = sub_100038730(v12, "ROWID", 5);
  sub_100038730(v13, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  a1[18] = sub_100614C1C((a1 + 1), p_p);
  a1[19] = v15;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v16 = sub_100038730(&v63, "SELECT ", 7);
  v17 = sub_100038730(v16, "ZoneName", 8);
  v18 = sub_100038730(v17, " FROM ", 6);
  v19 = sub_100038730(v18, "Names", 5);
  v20 = sub_100038730(v19, " WHERE ", 7);
  v21 = sub_100038730(v20, "ROWID", 5);
  sub_100038730(v21, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  a1[20] = sub_100614C1C((a1 + 1), v22);
  a1[21] = v23;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v24 = sub_100038730(&v63, "SELECT ", 7);
  v25 = sub_100038730(v24, "ROWID", 5);
  v26 = sub_100038730(v25, " FROM ", 6);
  v27 = sub_100038730(v26, "Names", 5);
  v28 = sub_100038730(v27, " WHERE ", 7);
  v29 = sub_100038730(v28, "ZoneName", 8);
  sub_100038730(v29, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  a1[22] = sub_100614C1C((a1 + 1), v30);
  a1[23] = v31;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v32 = sub_100038730(&v63, "SELECT ", 7);
  v33 = sub_100038730(v32, "Latitude", 8);
  v34 = sub_100038730(v33, ", ", 2);
  v35 = sub_100038730(v34, "Longitude", 9);
  v36 = sub_100038730(v35, " FROM ", 6);
  v37 = sub_100038730(v36, "Points", 6);
  v38 = sub_100038730(v37, " WHERE ", 7);
  v39 = sub_100038730(v38, "ZoneID", 6);
  v40 = sub_100038730(v39, "=?", 2);
  v41 = sub_100038730(v40, " ORDER BY ", 10);
  sub_100038730(v41, "PointID", 7);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p;
  }

  a1[24] = sub_100614C1C((a1 + 1), v42);
  a1[25] = v43;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v44 = sub_100038730(&v63, "SELECT ", 7);
  v45 = sub_100038730(v44, "ROWID", 5);
  v46 = sub_100038730(v45, " FROM ", 6);
  v47 = sub_100038730(v46, "BoundingBoxes", 13);
  v48 = sub_100038730(v47, " WHERE ", 7);
  v49 = sub_100038730(v48, "MaximumLatitude", 15);
  v50 = sub_100038730(v49, ">=? AND ", 8);
  v51 = sub_100038730(v50, "MinimumLatitude", 15);
  v52 = sub_100038730(v51, "<=? AND ", 8);
  v53 = sub_100038730(v52, "MaximumLongitude", 16);
  v54 = sub_100038730(v53, ">=? AND ", 8);
  v55 = sub_100038730(v54, "MinimumLongitude", 16);
  sub_100038730(v55, "<=?", 3);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v56 = &__p;
  }

  else
  {
    v56 = __p;
  }

  a1[26] = sub_100614C1C((a1 + 1), v56);
  a1[27] = v57;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v63 = v58;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006647BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100664834(uint64_t a1, sqlite3_int64 *a2, double *a3, double *a4, double *a5, double *a6)
{
  if (sub_100DD42EC((a1 + 144)))
  {
    sub_100144CA0((a1 + 144), &v28);
    v12 = sub_100008880(v28);
    if (sub_1000728E4(v12, 1, *a2))
    {
      v13 = sub_100008880(v28);
      if (sqlite3_step(v13) == 100)
      {
        v14 = sub_100008880(v28);
        *a3 = sqlite3_column_double(v14, 0);
        v15 = sub_100008880(v28);
        *a5 = sqlite3_column_double(v15, 1);
        v16 = sub_100008880(v28);
        *a4 = sqlite3_column_double(v16, 2);
        v17 = sub_100008880(v28);
        *a6 = sqlite3_column_double(v17, 3);
        v18 = 1;
        goto LABEL_24;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v22 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *a2;
        *buf = 134217984;
        v32 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning No bounding box found for polygon ID %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_23:
        v18 = 0;
LABEL_24:
        v24 = v28;
        v28 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        return v18;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a2;
        *buf = 134217984;
        v32 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind polygon ID %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_23;
      }
    }

    sub_1018F57B0(buf);
    v26 = *a2;
    v29 = 134217984;
    v30 = v26;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonBoundingBox(sqlite3_int64 &, double &, double &, double &, double &)", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }

    goto LABEL_23;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v19 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#Warning fBoundingBoxesSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5E98();
  }

  return 0;
}

void sub_100664C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006655D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v11 = *(a4 + 4560);
  v12 = *(a2 + 8);
  result = sub_1000D8580(v12);
  if (result)
  {
    v15 = a1[21];
    v14 = a1[22];
    goto LABEL_70;
  }

  if (v12 > 15229)
  {
    if (v12 > 15669)
    {
      if (v12 > 18239)
      {
        if (v12 > 19149)
        {
          switch(v12)
          {
            case 19150:
LABEL_10:
              result = sub_100665A70(a1, a6);
              v16 = a1[43];
              if (result)
              {
                v17 = 1074161254;
              }

              else
              {
                v17 = 1083074150;
              }

              *(v16 + 8) = 256;
              *(v16 + 12) = v17;
              goto LABEL_69;
            case 90603:
              v15 = a1[19];
              v14 = a1[20];
              goto LABEL_70;
            case 519150:
              goto LABEL_10;
          }

          goto LABEL_82;
        }

        if (v12 == 18240)
        {
          v15 = a1[33];
          v14 = a1[34];
          goto LABEL_70;
        }

        v18 = 19090;
        goto LABEL_49;
      }

      if (v12 > 18099)
      {
        if (v12 != 18100)
        {
          if (v12 == 18200)
          {
            v15 = a1[45];
            v14 = a1[46];
            goto LABEL_70;
          }

          goto LABEL_82;
        }

        goto LABEL_67;
      }

      if (v12 == 15670)
      {
        v15 = a1[41];
        v14 = a1[42];
        goto LABEL_70;
      }

      if (v12 != 18050)
      {
        goto LABEL_82;
      }

LABEL_32:
      v15 = a1[23];
      v14 = a1[24];
      goto LABEL_70;
    }

    if (v12 <= 15459)
    {
      if ((v12 - 15230) > 0x19 || ((1 << (v12 - 126)) & 0x2100001) == 0)
      {
        v18 = 15350;
LABEL_49:
        if (v12 != v18)
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }

LABEL_66:
      v20 = a1[43];
      v21 = 0x4006666601000101;
LABEL_68:
      *(v20 + 8) = v21;
LABEL_69:
      v15 = a1[43];
      v14 = a1[44];
      goto LABEL_70;
    }

    if (v12 > 15591)
    {
      if (v12 == 15592)
      {
LABEL_67:
        v20 = a1[43];
        v21 = 0x4090000000000100;
        goto LABEL_68;
      }

      v19 = 15610;
    }

    else
    {
      if (v12 == 15460)
      {
        goto LABEL_66;
      }

      v19 = 15560;
    }

    if (v12 != v19)
    {
      goto LABEL_82;
    }

    goto LABEL_66;
  }

  if (v12 > 2064)
  {
    if (v12 > 2149)
    {
      if (v12 > 11804)
      {
        if (v12 == 11805)
        {
          v15 = a1[35];
          v14 = a1[36];
          goto LABEL_70;
        }

        if (v12 == 15110)
        {
          v15 = a1[47];
          v14 = a1[48];
          goto LABEL_70;
        }

        goto LABEL_82;
      }

      if (v12 != 2150)
      {
        if (v12 == 3015)
        {
          v15 = a1[9];
          v14 = a1[10];
          goto LABEL_70;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v12 <= 2100)
      {
        if (v12 == 2065)
        {
          v15 = a1[29];
          v14 = a1[30];
          goto LABEL_70;
        }

        if (v12 == 2071)
        {
          goto LABEL_32;
        }

        goto LABEL_82;
      }

      if (v12 != 2101)
      {
        if (v12 != 2105)
        {
          goto LABEL_82;
        }

        goto LABEL_56;
      }
    }

    v15 = a1[37];
    v14 = a1[38];
    goto LABEL_70;
  }

  if (v12 > 2021)
  {
    if (v12 > 2047)
    {
      if (v12 == 2048)
      {
        v15 = a1[15];
        v14 = a1[16];
        goto LABEL_70;
      }

      if (v12 == 2061)
      {
        v15 = a1[5];
        v14 = a1[6];
        goto LABEL_70;
      }

      goto LABEL_82;
    }

    if (v12 != 2022 && v12 != 2024)
    {
      goto LABEL_82;
    }

LABEL_56:
    v15 = a1[39];
    v14 = a1[40];
    goto LABEL_70;
  }

  if (v12 > 2009)
  {
    if (v12 == 2010)
    {
      v15 = a1[31];
      v14 = a1[32];
      goto LABEL_70;
    }

    if (v12 == 2020)
    {
      v15 = a1[1];
      v14 = a1[2];
      goto LABEL_70;
    }
  }

  else
  {
    if (v12 == 6)
    {
      v15 = a1[7];
      v14 = a1[8];
      goto LABEL_70;
    }

    if (v12 == 65)
    {
      goto LABEL_66;
    }
  }

LABEL_82:
  if (a3 && *(a2 + 208) == 1)
  {
    v15 = a1[17];
    v14 = a1[18];
    goto LABEL_70;
  }

  if (v12 > 15329)
  {
    if (v12 > 15710)
    {
      if (v12 <= 19029)
      {
        if (v12 == 15711)
        {
          goto LABEL_109;
        }

        v22 = 15733;
      }

      else
      {
        if (v12 == 19030 || v12 == 515652)
        {
          goto LABEL_109;
        }

        v22 = 515621;
      }
    }

    else
    {
      if ((v12 - 15620) <= 0x37 && ((1 << (v12 - 4)) & 0x80010100000001) != 0 || v12 == 15330)
      {
        goto LABEL_109;
      }

      v22 = 15360;
    }
  }

  else
  {
    if (v12 <= 2067)
    {
      if ((v12 - 3) <= 0x3F && ((1 << (v12 - 3)) & 0xB000000000000011) != 0)
      {
        goto LABEL_109;
      }

      goto LABEL_112;
    }

    if (v12 > 15054)
    {
      if (v12 == 15055 || v12 == 15100)
      {
        goto LABEL_109;
      }

      v22 = 15150;
    }

    else
    {
      if (v12 == 2068 || v12 == 3016)
      {
        goto LABEL_109;
      }

      v22 = 15030;
    }
  }

  if (v12 == v22)
  {
LABEL_109:
    if (v11)
    {
      v15 = a1[27];
      v14 = a1[28];
    }

    else
    {
      v15 = a1[25];
      v14 = a1[26];
    }

    goto LABEL_70;
  }

LABEL_112:
  v15 = a1[13];
  v14 = a1[14];
LABEL_70:
  *a5 = v15;
  a5[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_100665A70(void *a1, double a2)
{
  v2 = a1[50];
  if (a1[51] == v2)
  {
    return 0;
  }

  v3 = a1[53];
  v4 = (v2 + 8 * (v3 / 0x12));
  v5 = *v4 + 216 * (v3 % 0x12);
  v6 = *(v2 + 8 * ((a1[54] + v3) / 0x12)) + 216 * ((a1[54] + v3) % 0x12);
  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    v7 = 0;
    v8 = 1.79769313e308;
    do
    {
      v9 = *(v5 + 16);
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v10 = *(v5 + 24);
        if (v10 > a2)
        {
          return v7;
        }

        v11 = vabdd_f64(a2, v10);
        if (v11 < v8)
        {
          v7 = v9 == 2;
          v8 = v11;
        }
      }

      v5 += 216;
      if (v5 - *v4 == 3888)
      {
        v12 = v4[1];
        ++v4;
        v5 = v12;
      }
    }

    while (v5 != v6);
  }

  return v7;
}

void *sub_100665B44@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 4560))
  {
    v4 = result[27];
    v3 = result[28];
  }

  else
  {
    v4 = result[25];
    v3 = result[26];
  }

  *a3 = v4;
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100665B70(void *a1, uint64_t a2)
{
  sub_100665DB8(a1 + 49, a2);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[53];
  v6 = a1[50];
  v7 = a1[51];
  v8 = (v6 + 8 * (v5 / 0x12));
  if (v7 == v6)
  {
    v10 = 0;
    v27 = 0;
    v28 = (v6 + 8 * ((v5 + a1[54]) / 0x12));
  }

  else
  {
    v9 = *(v6 + 8 * (v5 / 0x12));
    v10 = v9 + 216 * (v5 % 0x12);
    v11 = *(v6 + 8 * ((a1[54] + v5) / 0x12)) + 216 * ((a1[54] + v5) % 0x12);
    if (v10 != v11)
    {
      while (vabdd_f64(Current, *(v10 + 24)) <= 1200.0)
      {
        v10 += 216;
        if (v10 - v9 == 3888)
        {
          v12 = v8[1];
          ++v8;
          v9 = v12;
          v10 = v12;
        }

        if (v10 == v11)
        {
          v10 = *(v6 + 8 * ((a1[54] + v5) / 0x12)) + 216 * ((a1[54] + v5) % 0x12);
          goto LABEL_19;
        }
      }
    }

    if (v10 != v11)
    {
      v13 = v10;
      for (i = v8; ; v9 = *i)
      {
        v13 += 216;
        if (v13 - v9 == 3888)
        {
          v15 = i[1];
          ++i;
          v13 = v15;
        }

        if (v13 == v11)
        {
          break;
        }

        if (vabdd_f64(Current, *(v13 + 24)) <= 1200.0)
        {
          v16 = *(v13 + 16);
          *v10 = *v13;
          *(v10 + 16) = v16;
          v17 = *(v13 + 32);
          v18 = *(v13 + 48);
          v19 = *(v13 + 80);
          *(v10 + 64) = *(v13 + 64);
          *(v10 + 80) = v19;
          *(v10 + 32) = v17;
          *(v10 + 48) = v18;
          v20 = *(v13 + 96);
          v21 = *(v13 + 112);
          v22 = *(v13 + 144);
          *(v10 + 128) = *(v13 + 128);
          *(v10 + 144) = v22;
          *(v10 + 96) = v20;
          *(v10 + 112) = v21;
          v23 = *(v13 + 160);
          v24 = *(v13 + 176);
          v25 = *(v13 + 192);
          *(v10 + 208) = *(v13 + 208);
          *(v10 + 176) = v24;
          *(v10 + 192) = v25;
          *(v10 + 160) = v23;
          v10 += 216;
          if (v10 - *v8 == 3888)
          {
            v26 = v8[1];
            ++v8;
            v10 = v26;
          }
        }
      }

      v5 = a1[53];
      v6 = a1[50];
      v7 = a1[51];
    }

LABEL_19:
    v29 = v5 + a1[54];
    v28 = (v6 + 8 * (v29 / 0x12));
    if (v7 == v6)
    {
      v27 = 0;
    }

    else
    {
      v27 = (*v28 + 216 * (v29 % 0x12));
    }
  }

  sub_100665EA0(a1 + 49, v8, v10, v28, v27);
  if ((*(a2 + 16) - 13) <= 4)
  {
    v30 = a1[50];
    v31 = a1[51];
    a1[54] = 0;
    v32 = (v31 - v30) >> 3;
    if (v32 >= 3)
    {
      do
      {
        operator delete(*v30);
        v33 = a1[51];
        v30 = (a1[50] + 8);
        a1[50] = v30;
        v32 = (v33 - v30) >> 3;
      }

      while (v32 > 2);
    }

    if (v32 == 1)
    {
      v34 = 9;
    }

    else
    {
      if (v32 != 2)
      {
        return;
      }

      v34 = 18;
    }

    a1[53] = v34;
  }
}

__n128 sub_100665DB8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 18 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100667D40(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x12)) + 216 * (v7 % 0x12);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 144);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 144) = v15;
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  result = *(a2 + 160);
  v17 = *(a2 + 176);
  v18 = *(a2 + 192);
  *(v8 + 208) = *(a2 + 208);
  *(v8 + 176) = v17;
  *(v8 + 192) = v18;
  *(v8 + 160) = result;
  ++a1[5];
  return result;
}

unint64_t sub_100665EA0(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * (&a5[-*a4] >> 3) + 0x7B425ED097B425EDLL * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x12));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[216 * (v7 % 0x12)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 18 * (a2 - v9) - 0x7B425ED097B425EDLL * (&a3[-*a2] >> 3) + 0x7B425ED097B425EDLL * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x12);
  v24[0].n128_u64[1] = v10;
  sub_100667F8C(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_100667F8C(v24, v6);
      sub_100668040(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_100667F8C(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x12));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[216 * (v14 % 0x12)];
      }

      v24[0] = v12;
      sub_1006681F4(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x12));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 216 * (v19 % 0x12);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_100667F8C(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_100666110(void *a1)
{
  sub_10066659C(a1);

  operator delete();
}

uint64_t sub_100666148(uint64_t a1)
{
  *a1 = 0;
  v3 = 0;
  sub_100126E84((a1 + 1), "fForceAssistedCyclingOverrideToTrue", &v3, 0);
  *(a1 + 8) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 24) = 0;
  uuid_clear((a1 + 28));
  return a1;
}

void sub_1006661D8(void *a1)
{
  *a1 = off_10245E8E0;
  a1[1] = 0x4006666600000000;
  operator new();
}

void sub_1006662F4(_Unwind_Exception *a1)
{
  v3 = v2;
  (*(*v3 + 8))(v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    sub_100008080(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006663B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006663E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666420(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666450(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_100666490@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018F5F74();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ScubaDiving, Static, activity: %d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F60D8(a1);
  }

  *a2 = xmmword_101C82C90;
  *(a2 + 16) = 0x40A8000000000000;
  *(a2 + 24) = 0;
  *&result = 0x1500000003;
  *(a2 + 32) = 0x1500000003;
  return result;
}

void *sub_10066659C(void *a1)
{
  *a1 = off_102466338;
  sub_100666704(a1 + 49);
  v2 = a1[48];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[46];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[44];
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = a1[42];
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a1[40];
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = a1[38];
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = a1[36];
  if (v8)
  {
    sub_100008080(v8);
  }

  v9 = a1[34];
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = a1[32];
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = a1[30];
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = a1[28];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = a1[26];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = a1[24];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = a1[22];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = a1[20];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = a1[18];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = a1[16];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = a1[14];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = a1[12];
  if (v20)
  {
    sub_100008080(v20);
  }

  v21 = a1[10];
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = a1[8];
  if (v22)
  {
    sub_100008080(v22);
  }

  v23 = a1[6];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = a1[4];
  if (v24)
  {
    sub_100008080(v24);
  }

  v25 = a1[2];
  if (v25)
  {
    sub_100008080(v25);
  }

  return a1;
}

uint64_t sub_100666704(void *a1)
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
    v5 = 9;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 18;
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

void sub_100666818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666830(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666860(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666920(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666950(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006669F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666A10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666A40(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666AE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666B00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666B30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666BF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666C20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666CC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666CE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666D10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666DB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666DD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666E00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666EA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666EC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666EF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666FB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666FE0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667088(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006670A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006670D0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667190(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006671C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667268(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667280(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006672B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667370(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006673A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667460(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667490(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667550(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667640(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667670(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667730(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667760(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667820(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667850(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006678F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667910(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667940(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006679E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667A00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667A30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667AF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667B20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667BC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667BE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667C10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667CB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667CD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667D00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100667D40(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x12;
  v3 = v1 - 18;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_100667EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100667F14(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 18 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x12)
  {
    a2 = 1;
  }

  if (v5 < 0x24)
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

void *sub_100667F8C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7B425ED097B425EDLL * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 17 - v3;
      v6 = &v2[-(v5 / 0x12)];
      *result = v6;
      v4 = *v6 + 216 * (18 * (v5 / 0x12) - v5) + 3672;
    }

    else
    {
      *result = &v2[v3 / 0x12];
      v4 = v2[v3 / 0x12] + 216 * (v3 % 0x12);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_100668040@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_100668110(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 3888;
    }

    v12 = *v17 + 3888;
    v11 = a2;
  }

  sub_100668110(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_100668110@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0x84BDA12F684BDA13 * (&a4[-v10] >> 3);
      if ((0x84BDA12F684BDA13 * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x84BDA12F684BDA13 * ((v11 - a1) >> 3);
      }

      v11 -= 216 * v12;
      a4 -= 216 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 216 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 3888);
    }

    if ((*v6 + 3888) == a4)
    {
      v15 = v6[1];
      ++v6;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_1006681F4(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
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
    sub_1006682B8(__src, *(a5 + 8), *a1 + 3888, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1006682B8(v13, *(a5 + 8), v13 + 3888, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1006682B8(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1006682B8@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x84BDA12F684BDA13 * ((v10 - __dst + 3888) >> 3);
      if ((0x84BDA12F684BDA13 * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0x84BDA12F684BDA13 * ((a3 - v9) >> 3);
      }

      v12 = 216 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 216 * v11);
      }

      v9 += v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 3888 == __dst)
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

uint64_t sub_100668504(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100668928;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658568 != -1)
  {
    dispatch_once(&qword_102658568, block);
  }

  return qword_1026371B0;
}

void sub_1006687F4(uint64_t a1, unint64_t a2)
{
  v2 = a2 / 1000.0 - kCFAbsoluteTimeIntervalSince1970;
  if (vabdd_f64(v2, *&qword_102658570) > 600.0)
  {
    *&qword_102658570 = a2 / 1000.0 - kCFAbsoluteTimeIntervalSince1970;
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Sending along GPS time %.2f to CoreTime", &v4, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F63B0();
    }

    TMSetSourceTime();
  }
}

const void *sub_100668998(const void *a1, void *a2)
{
  v3 = sub_100668C54(a1, "CLTimeManager", a2);
  *(v3 + 109) = 1;
  v4 = (v3 + 109);
  *(v3 + 128) = 0;
  *v3 = &off_102466FE8;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0xBFF0000000000000;
  sub_10001CAF4(buf);
  sub_10001CB4C(*buf, "EnableProactiveBBTimeTransfer", v4);
  if (v11)
  {
    sub_100008080(v11);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F64B8();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "EnableProactiveBBTimeTransfer,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F64E0(buf);
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLTimeManager::CLTimeManager(id<CLIntersiloUniverse>)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (*v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100668D00, type metadata for Builtin.UnsafeValueBuffer, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_100668F2C(a1);
  }

  return a1;
}

void sub_100668BE0(_Unwind_Exception *a1)
{
  sub_100669ACC(v2, 0);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100668F88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100668C54(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024671F0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100668CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100668D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBTimeActiveNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBTimeActiveNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10066AEC4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100668F2C(uint64_t a1)
{
  if (TMIsBBTimeActive())
  {

    sub_1006696F0(a1);
  }

  else
  {

    sub_100669130(a1);
  }
}

uint64_t sub_100668F88(uint64_t a1)
{
  *a1 = off_1024671F0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10066900C(uint64_t a1)
{
  *a1 = &off_102466FE8;
  if (*(a1 + 109) == 1)
  {
    sub_100669130(a1);
  }

  *(a1 + 108) = 1;
  sub_100669ACC((a1 + 136), 0);
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100668F88(a1);
}

void sub_1006690BC(uint64_t a1)
{
  sub_10066900C(a1);

  operator delete();
}

uint64_t sub_1006690F4(uint64_t result)
{
  v1 = result;
  if (*(result + 109) == 1)
  {
    result = sub_100669130(result);
  }

  *(v1 + 108) = 1;
  return result;
}

uint64_t sub_100669130(uint64_t a1)
{
  v1 = (a1 + 136);
  if (*(a1 + 136))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stopping proactive time", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6560();
    }
  }

  return sub_100669ACC(v1, 0);
}

uint64_t sub_100669260(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == a2)
  {
    v2 = a1;
    if (qword_1025D48A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1018F6644(qword_1025D48A0 == -1);
  }

  sub_1018F639C();
LABEL_3:
  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Resuming proactive time", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F67B8();
  }

  return sub_100669318(v2);
}

void sub_100669318(uint64_t a1)
{
  if (*(a1 + 128))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(a1 + 144);
    if (v3 > 0.0 && v3 - Current < 1800.0 && Current < v3 + 900.0 + 5.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F639C();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 144);
        *buf = 134218240;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = 0x408C200000000000;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Deferring proactive time, last attempt was at %f, which is less than minimum interval %f ago", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F699C((a1 + 144));
      }

      operator new();
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *buf = _Q0;
    *&buf[16] = 0;
    *&buf[20] = 10;
    if (qword_1025D4650 != -1)
    {
      sub_1018F689C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#wigo,on,TimeManager", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F68B0();
    }

    AnalyticsSendEventLazy();
    sub_10002FA64();
  }

  sub_1018F6ABC();
}

void sub_1006696A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006696F0(uint64_t a1)
{
  if (*(a1 + 109))
  {
    if (sub_100719CE4() && !*(a1 + 136))
    {
      if (!*(a1 + 128))
      {
        sub_100D64EF4();
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F64B8();
      }

      v2 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Starting proactive time", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F6D24();
      }

      sub_100669318(a1);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "proactive time is NOT enabled", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6C40();
    }
  }
}

void sub_100669924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100669ACC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10092C310(result);

    operator delete();
  }

  return result;
}

void sub_100669B18(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBTimeActiveRetry", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBTimeActiveRetry, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100669260(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_100669CE8(void *result)
{
  v1 = result[4];
  if (*(v1 + 128) == result[5])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      if (*(v1 + 136))
      {
        v3 = "Pausing";
      }

      else
      {
        v3 = "Stopped";
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s proactive time", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6EEC(v1);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1018F7008();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,off,TimeManager", &v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F7030();
    }

    AnalyticsSendEventLazy();
    return [*(*(v1 + 128) + 16) unregister:*(*(v1 + 128) + 8) forNotification:0];
  }

  return result;
}

void sub_100669F44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_100669F74(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_1024672D0;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_10066A058(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018F6524();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7114(a1, a2);
      }
    }
  }
}

BOOL sub_10066A28C(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018F7324(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_10066A54C(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_10066B6DC();
    }
  }
}

void sub_10066AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_10066AA48(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F754C(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F742C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018F6538();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018F6538();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::listClients() [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_10066AE0C(uint64_t a1)
{
  sub_10066AEFC(a1);

  operator delete();
}

id sub_10066AE44(uint64_t a1, int a2, void *a3)
{
  result = sub_10066B160(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10066AEFC(uint64_t a1)
{
  *a1 = &off_1024672D0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

_BYTE *sub_10066B048(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10066B160(a4);
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

uint64_t sub_10066B140(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10066B160(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10066B1FC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10066B3D4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10066B1FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10066B5D8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018F765C();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F7670();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018F765C();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F7778();
    }
  }

  return 0;
}

id sub_10066B3D4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018F765C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7880();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018F765C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7988();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10066B5D8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EDE0))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_1018F7A90();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

void sub_10066B680(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10066B788(void *a1, int *a2, void *a3)
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
        v10 = sub_10066B160(a3);
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
              sub_10066B048(a1, &v36, &v37, a3);
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
                sub_1018F6538();
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
                  sub_1018F6538();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

uint64_t sub_10066BB44(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10066BBE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_10000B1F8();
    sub_10000B230(buf);
    sub_10000B324(v4, buf);
    *buf = 23;
    v37[0] = 23;
    v37[1] = sub_10000AD98(buf);
    v5 = sub_10000AE98();
    sub_1005D2D94(v5, v37, (a1 + 5220), a2, 0);
    v6 = 0;
    if ([a2 hasArrivalDate])
    {
      v6 = [a2 hasDepartureDate] ^ 1;
    }

    [a2 coordinate];
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [a2 hasDepartureDate];
      v35 = [a2 hasArrivalDate];
      v8 = LocationLogEncryptionDataSize();
      v9 = LocationLogEncryptionEncryptData();
      v10 = LocationLogEncryptionDataSize();
      v11 = LocationLogEncryptionEncryptData();
      [a2 horizontalAccuracy];
      v13 = v12;
      v14 = [a2 arrivalDate];
      v15 = [a2 departureDate];
      v16 = [a2 _placeInference];
      *buf = 68291843;
      WORD2(v39) = 2082;
      LODWORD(v39) = 0;
      *(&v39 + 6) = "";
      HIWORD(v39) = 1026;
      LODWORD(v40) = v6;
      WORD2(v40) = 1026;
      *(&v40 + 6) = v36;
      WORD5(v40) = 1026;
      HIDWORD(v40) = v35;
      LOWORD(v41) = 1040;
      *(&v41 + 2) = v8;
      WORD3(v41) = 2098;
      *(&v41 + 1) = v9;
      LOWORD(v42) = 1040;
      *(&v42 + 2) = v10;
      WORD3(v42) = 2098;
      *(&v42 + 1) = v11;
      *v43 = 2050;
      *&v43[2] = v13;
      *&v43[10] = 2113;
      *&v43[12] = v14;
      *v44 = 2113;
      *&v44[2] = v15;
      *&v44[10] = 2117;
      *&v44[12] = v16;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationController,onVisit, isInsideVisit:%{public}hhd, hasDepartDate:%{public}hhd, hasArrivalDate:%{public}hhd, description.coordinate.latitude:%{public, location:Encrypted_latitude}.*P, description.coordinate.longitude:%{public, location:Encrypted_longitude}.*P, description.hAcc:%{public}f, description.arrival:%{private, location:escape_only}@, description.departure:%{private, location:escape_only}@, description.placeInference:%{sensitive, location:escape_only}@}", buf, 0x6Cu);
    }

    sub_100278C3C(a1, 12, v6);
    v17 = *(a1 + 312);
    if (v17)
    {
      sub_100DAA3D4(v17, a2);
    }

    v18 = *(a1 + 320);
    if (v18)
    {
      sub_100549B98(v18, a2);
    }

    v19 = *(a1 + 304);
    if (v19)
    {
      v20 = sub_10000B1F8();
      *buf = 1;
      v21 = sub_10001A6B0(v20, buf);
      sub_100EA8570(v19, v6, v21);
    }

    sub_101058B10(a1 + 5296, (v6 ^ 1));
    *buf = 0xFFFF;
    v39 = 0uLL;
    v40 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    v41 = _Q0;
    v42 = _Q0;
    *v43 = _Q0;
    *&v43[16] = 0;
    *&v44[8] = 0uLL;
    *v44 = 0xBFF0000000000000;
    v45 = 0;
    v46 = 0xBFF0000000000000;
    v47 = 0x7FFFFFFF;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v51 = 0;
    v27 = sub_1010589B8(a1 + 5296, buf);
    if ((v6 ^ 1))
    {
      v31 = *(a1 + 280);
      if (v31)
      {
        (*(*v31 + 552))(v31, v27);
      }
    }

    else
    {
      sub_1006770A8(a1, a2);
      v28 = *(a1 + 280);
      if (v28)
      {
        (*(*v28 + 536))(v28, 0);
      }
    }

    v32 = *(a1 + 768);
    if (v32)
    {
      sub_100D24814(v32, a2);
    }

    v33 = *(a1 + 5960);
    v34 = v6 ^ 1;
    if (!v33)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      sub_100D5AE3C(v33);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v29 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      LODWORD(v39) = 0;
      WORD2(v39) = 2082;
      *(&v39 + 6) = "";
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,slv,nil visit in onVisit()}", buf, 0x12u);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v30 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289026;
      LODWORD(v39) = 0;
      WORD2(v39) = 2082;
      *(&v39 + 6) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationController,slv,nil visit in onVisit()", "{msg%{public}.0s:LocationController,slv,nil visit in onVisit()}", buf, 0x12u);
    }
  }
}

uint64_t sub_10066C274(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066D76C;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658588 != -1)
  {
    dispatch_once(&qword_102658588, block);
  }

  return qword_1026371B8;
}

void *__cdecl sub_10066C34C(CLLocationControllerAdapter *self, SEL a2)
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

void sub_10066C84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C3DAB0(a2);
  if (*(a1 + 5176) != v4)
  {
    *(a1 + 5176) = v4;
    v5 = [objc_msgSend(*(a1 + 32) "vendor")];
    if (*(a1 + 5176))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 1667);
    }

    [v5 isInEmegencyState:v6 & 1];
    if (*(a1 + 5176))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 1667);
    }

    sub_1003E084C(a1 + 800, v7 & 1);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    (*(*v8 + 320))(v8, &v11);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v9 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 5176);
    LODWORD(v11) = 67240192;
    DWORD1(v11) = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "BaroAlt,LocCtrlOnEmergencyStateChange,isEmergency,%{public}d", &v11, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8344((a1 + 5176));
  }
}

void sub_10066CB88(uint64_t a1, int a2)
{
  if (*(a1 + 5960) && *(a1 + 5984))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10000B1F8();
      *buf = 1;
      v6 = sub_10001A6B0(v5, buf);
      *buf = 134349312;
      v22 = v6;
      v23 = 1026;
      v24 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLJR,routeReconstructionCallback,mct,%{public}.3f,retcode,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8530(a2);
    }

    if (!a2)
    {
      v7 = *(a1 + 5960);
      v19 = 0;
      v20 = 0;
      __p = 0;
      sub_10031D97C(&__p, *(v7 + 136), *(v7 + 144), 0x6F96F96F96F96F97 * ((*(v7 + 144) - *(v7 + 136)) >> 2));
      v8 = __p;
      if (v19 != __p)
      {
        v9 = sub_10000B1F8();
        sub_10000AED4(v9, v17);
        v16 = -1.0;
        if (sub_100125300(v17, &v16))
        {
          v10 = __p;
          v11 = v19;
          if (__p != v19)
          {
            do
            {
              v12 = *(v10 + 76);
              sub_10002D644(buf, v10, v12 - v16);
              v25 = v12;
              v26 = 4;
              v27 = 3;
              (*(**(a1 + 5984) + 16))(*(a1 + 5984), buf, 1);
              v10 += 156;
            }

            while (v10 != v11);
          }

          if (qword_102658598 != -1)
          {
            sub_1018F8688();
          }

          if (byte_102658590)
          {
            sub_10002670C(*(a1 + 5984), 1);
          }
        }

        else
        {
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v14 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLJR,could not get MCT-to-CFAT offset", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F8644(buf);
            v15 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLLocationController::routeReconstructionCallback(CLJITRouteReconstruction::ReturnCode)", "%s\n", v15);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        v8 = __p;
      }

      if (v8)
      {
        v19 = v8;
        operator delete(v8);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v22) = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLJR,routeReconstructionCallback,unexpected callback since module is not enabled,retcode,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F86B0();
    }
  }
}

void sub_10066CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066D38C(uint64_t a1, double *a2, double *a3)
{
  v3 = *(a1 + 5984);
  if (!v3)
  {
    return 0;
  }

  v7 = sub_1006A9980(*(v3 + 40));
  if (v7 < 0.0)
  {
    return 0;
  }

  v8 = v7;
  (*(**(a1 + 5984) + 24))(v11);
  v9 = v12;
  *a3 = v12;
  if (v9 < 0.0)
  {
    return 0;
  }

  (*(**(a1 + 5984) + 32))(v11, v9 - v8);
  LODWORD(result) = sub_100028030(v11);
  if (v13)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    *a2 = v12;
    *a3 = v9;
  }

  return result;
}

uint64_t sub_10066D490(uint64_t a1)
{
  v1 = *(a1 + 5984);
  if (v1)
  {
    return *(*(v1 + 40) + 68);
  }

  else
  {
    return 0;
  }
}

void sub_10066D6BC(uint64_t a1)
{
  v3 = *(a1 + 5960);
  if (v3)
  {

    sub_100D58FE8(v3, 2);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLJR,internalTools_requestRouteReconstructionForPedestrian,#Warning: not enabled", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8B74();
    }
  }
}

void sub_10066D7DC(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "controller", a2);
  *v3 = off_102467388;
  sub_10018D404((v3 + 15));
  *(a1 + 168) = 0u;
  *(a1 + 160) = -1;
  *(a1 + 216) = 1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 352) = 0;
  sub_10092E284(a1 + 360);
  *(a1 + 672) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  *(a1 + 648) = 0;
  *(a1 + 674) = 1;
  *(a1 + 683) = 0;
  *(a1 + 675) = 0;
  *(a1 + 684) = -1;
  *(a1 + 712) = 0;
  *(a1 + 714) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  sub_10018D404(a1 + 808);
  *(a1 + 848) = 0x1000000;
  *(a1 + 856) = 0xBFF0000000000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 864) = _Q1;
  *(a1 + 880) = 0xBFF0000000000000;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0xBFF0000000000000;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0xBFF0000000000000;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0xBFF0000000000000;
  *(a1 + 952) = 0xFFFF;
  *(a1 + 956) = 0u;
  *(a1 + 972) = xmmword_101C75BF0;
  *(a1 + 988) = _Q1;
  *(a1 + 1004) = _Q1;
  *(a1 + 1020) = _Q1;
  *(a1 + 1036) = 0;
  *(a1 + 1040) = 0xBFF0000000000000;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1068) = 0xBFF0000000000000;
  *(a1 + 1076) = 0x7FFFFFFF;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 0xFFFF;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0xBFF0000000000000;
  *(a1 + 1136) = xmmword_101C76220;
  *(a1 + 1152) = _Q1;
  *(a1 + 1168) = _Q1;
  *(a1 + 1184) = 0xBFF0000000000000;
  *(a1 + 1192) = 0;
  *(a1 + 1196) = 0xBFF0000000000000;
  *(a1 + 1220) = 0;
  *(a1 + 1204) = 0u;
  *(a1 + 1224) = 0xBFF0000000000000;
  *(a1 + 1232) = 0x7FFFFFFF;
  *(a1 + 1260) = 0;
  *(a1 + 1252) = 0;
  *(a1 + 1236) = 0u;
  *(a1 + 1268) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1300) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1320) = 0xBFF0000000000000;
  v41 = _Q1;
  *(a1 + 1328) = _Q1;
  sub_1003E0D78(a1 + 1344);
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 2000) = 0xBFF0000000000000;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = xmmword_101C76220;
  sub_100021AFC(a1 + 2032);
  sub_100021AFC(a1 + 3592);
  *(a1 + 5152) = v41;
  *(a1 + 5168) = 0xBFF0000000000000;
  *(a1 + 5176) = 0;
  *(a1 + 5184) = 0u;
  *(a1 + 5200) = 0u;
  *(a1 + 5216) = 1;
  *buf = 21;
  *(a1 + 5220) = 21;
  *(a1 + 5224) = sub_10000AD98(buf);
  *(a1 + 5240) = 0;
  *(a1 + 5248) = 0;
  *(a1 + 5256) = 0;
  *(a1 + 5260) = 0;
  *(a1 + 5264) = 0;
  *(a1 + 5272) = 0u;
  *(a1 + 5288) = 0;
  sub_1010589B4(a1 + 5296);
  *(a1 + 5992) = 0;
  *(a1 + 5960) = 0u;
  *(a1 + 5976) = 0u;
  *(a1 + 6000) = a1 + 6000;
  *(a1 + 6008) = a1 + 6000;
  *(a1 + 6016) = 0;
  *(a1 + 6024) = xmmword_101C84CD0;
  *(a1 + 6040) = 0;
  *(a1 + 6048) = 0xBFF0000000000000;
  *(a1 + 6056) = 0u;
  *(a1 + 6072) = 0xBFF0000000000000;
  *(a1 + 6080) = 0u;
  *(a1 + 6096) = 0u;
  *(a1 + 6112) = 0u;
  v9 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v9, buf);
  *(a1 + 688) = 0;
  v10 = sub_10000B1F8();
  *buf = 1;
  v11 = sub_10001A6B0(v10, buf);
  v12 = [*(a1 + 40) newTimer];
  *(a1 + 5232) = v12;
  if (v12)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000244EC;
    v42[3] = &unk_102449A78;
    v42[4] = a1;
    [v12 setHandler:v42];
    v13 = floor(v11) - v11 + 0.9 + 1.0;
    [*(a1 + 5232) setNextFireDelay:v13 interval:?];
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v15 = sub_10000B1F8();
      v16 = sub_100125220(v15);
      *buf = 134350080;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v13;
      v46 = 2050;
      v47 = 0x3FECCCCCCCCCCCCDLL;
      v48 = 2050;
      v49 = 0x3FF0000000000000;
      v50 = 2050;
      v51 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "LocationController,#time,starting heartbeat at mct,%{public}.3f,delay,%{public}.3f,fractionalSetpoint,%{public}.3f,interval_sec,%{public}.1f,propagation_us,%{public}.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v17 = sub_10000B1F8();
      v18 = sub_100125220(v17);
      LODWORD(context.version) = 134350080;
      *(&context.version + 4) = v11;
      WORD2(context.info) = 2050;
      *(&context.info + 6) = v13;
      HIWORD(context.retain) = 2050;
      context.release = 0x3FECCCCCCCCCCCCDLL;
      LOWORD(context.copyDescription) = 2050;
      *(&context.copyDescription + 2) = 0x3FF0000000000000;
      WORD1(context.equal) = 2050;
      *(&context.equal + 4) = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v19);
      goto LABEL_47;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v20 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "LocationController,#time,failed to allocate heartbeat timer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F8644(buf);
      LOWORD(context.version) = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v19);
LABEL_47:
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  sub_10001CAF4(buf);
  v21 = *(a1 + 296);
  LOBYTE(context.version) = 0;
  v22 = sub_10001CB4C(*buf, "LocationControllerFilterUsageIsLegacy", &context);
  version = context.version;
  if (!v22)
  {
    version = v21;
  }

  *(a1 + 296) = version;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v24 = *buf;
  v25 = _os_feature_enabled_impl();
  LOBYTE(context.version) = 0;
  v26 = sub_10001CB4C(v24, "ProduceFusedLocationEstimateOnHeartbeat", &context);
  v27 = context.version;
  if (!v26)
  {
    v27 = v25;
  }

  *(a1 + 297) = v27 & 1;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v28 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 297);
    *buf = 67109120;
    *&buf[4] = v29;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "LocationController,ProduceFusedLocationEstimateOnHeartbeat,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8644(buf);
    v38 = *(a1 + 297);
    LODWORD(context.version) = 67109120;
    HIDWORD(context.version) = v38;
    v39 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  sub_10001CAF4(buf);
  v30 = *buf;
  v31 = sub_1005CAED8();
  LOBYTE(context.version) = 0;
  v32 = sub_10001CB4C(v30, "EnableLocationControllerRecorder", &context);
  v33 = context.version;
  if (!v32)
  {
    v33 = v31;
  }

  *(a1 + 5217) = v33 & 1;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
    v33 = *(a1 + 5217);
  }

  if (v33)
  {
    v34 = sub_10000AE98();
    sub_1005CAEDC(v34);
    v35 = sub_10000AE98();
    sub_1005CB17C(v35);
    context.version = 0x4024000000000000;
    sub_100671BD8(a1, &context.version);
    sub_10001CAF4(buf);
    LODWORD(v43.version) = 0;
    if (sub_10005BBE4(*buf, "LocationControllerClientListRecordIntervalSec", &v43))
    {
      v36 = v43.version;
    }

    else
    {
      v36 = -1;
    }

    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v36 >= 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v37 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v36;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "LocationController,enable client list recording interval,%d,sec", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F8644(buf);
        LODWORD(v43.version) = 67109120;
        HIDWORD(v43.version) = v36;
        v40 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      *(a1 + 5256) = v36;
      *(a1 + 5260) = 1;
    }
  }

  sub_100678C6C();
}

void sub_1006713DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    sub_100008080(a42);
  }

  sub_100678B08((v42 + 6080));
  v45 = *(v42 + 6064);
  if (v45)
  {
    sub_100008080(v45);
  }

  sub_1001FB750(a15);
  v46 = *(v42 + 5992);
  if (v46)
  {
    sub_100008080(v46);
  }

  v47 = *(v42 + 5976);
  if (v47)
  {
    sub_100008080(v47);
  }

  sub_100678ABC(a17, 0);
  sub_100678710(v42 + 5296);
  sub_100678750(v42 + 2032);
  v48 = *(v42 + 1656);
  *(v42 + 1656) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(v42 + 1648);
  *(v42 + 1648) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(v42 + 1640);
  *(v42 + 1640) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(v42 + 1632);
  *(v42 + 1632) = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = *(v42 + 1624);
  *(v42 + 1624) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(v42 + 1616);
  *(v42 + 1616) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(v42 + 1608);
  *(v42 + 1608) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v42 + 1600);
  *(v42 + 1600) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v42 + 1592);
  if (v56)
  {
    sub_100008080(v56);
  }

  v57 = *(v42 + 792);
  if (v57)
  {
    sub_100008080(v57);
  }

  v58 = (v42 + 640);
  v59 = *(v42 + 776);
  if (v59)
  {
    sub_100008080(v59);
  }

  sub_100675664((v42 + 720), 0);
  v60 = *v58;
  *v58 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  sub_10092EF24((v43 + 24));
  sub_100678A70(a13, 0);
  sub_100678A24(v43 + 18, 0);
  sub_1006789D8(a19, 0);
  v61 = *(v42 + 288);
  if (v61)
  {
    sub_100008080(v61);
  }

  sub_100678954(a14, *(v42 + 264));
  sub_1006788D4(a11, *(v42 + 240));
  v62 = *(v42 + 208);
  *(v42 + 208) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(v42 + 200);
  *(v42 + 200) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *(v42 + 192);
  *(v42 + 192) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(v42 + 184);
  *(v42 + 184) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(v42 + 176);
  *(v42 + 176) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *v43;
  *v43 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  sub_1006A5E8C(v42);
  _Unwind_Resume(a1);
}

void sub_100671BD8(uint64_t a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    v4 = sub_10000B1F8();
    v8 = 1;
    v5 = sub_10001A6B0(v4, &v8);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = v5 + *a2;
      v8 = 134349312;
      v9 = v7;
      v10 = 2050;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#locctl,#rec,requested client list record at time,mct,%{public}.3f,now,%{public}.3f", &v8, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8EE4(v5);
    }

    *(a1 + 5240) = v5 + *a2;
    *(a1 + 5248) = 1;
  }
}

void sub_100671D14(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onWifiServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onWifiServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674C68(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100671EF0(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onClientNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onClientNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067667C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006720CC(int a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674E94(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006722A8(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onBluetoothNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onBluetoothNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675010(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672484(int a1, int *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675100(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672660(int a1, int *a2, CLMotionActivity *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673DD0(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10067283C(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673F58(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672A18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006739C0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672BE4(int a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onSignalEnvironmentNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onSignalEnvironmentNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674028(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672DC0(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006740F8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672F9C(__int32 a1, int *a2, const __CFDictionary **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673A54(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100673178(void *a1)
{
  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100673644, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  result = objc_opt_class();
  if (result)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = a1[86];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100673870;
    v9[3] = &unk_10245B770;
    v9[4] = a1;
    [(NSNotificationCenter *)v4 addObserverForName:PDRDidPairNotification object:v5 queue:0 usingBlock:v9];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = a1[86];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100673918;
    v8[3] = &unk_10245B770;
    v8[4] = a1;
    return [(NSNotificationCenter *)v6 addObserverForName:PDRDidUnpairNotification object:v7 queue:0 usingBlock:v8];
  }

  return result;
}

void sub_1006732D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,error fetching visits, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v5 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationController,error fetching visits", "{msg%{public}.0s:LocationController,error fetching visits, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [[CLVisit alloc] initWithVisit:{objc_msgSend(a2, "firstObject")}];
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "LocationController,fetched most recent visit", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9030();
    }

    sub_10066BBE0(v6, v7);
  }
}

void sub_100673610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018F910C((v12 + 8), (v11 + 8), (v10 + 8));
  operator delete();
}

void sub_100673644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLLocationController::onRegulatoryDomainUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onRegulatoryDomainUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006787F4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100673870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006738E4;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

uint64_t sub_1006738E4(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

id sub_100673918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10067398C;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

uint64_t sub_10067398C(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

void sub_1006739C0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *(a1 + 280);
  if (v7)
  {
    (*(*v7 + 104))(v7, a3, a4);
  }

  v8 = *(a1 + 312);
  if (v8)
  {

    sub_100DAAC88(v8, a3, a4);
  }
}

void sub_100673A54(uint64_t a1, __int32 a2, int *a3, const __CFDictionary **a4)
{
  v21[0].i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(&v21[0].i64[1] + 4);
  sub_10000B324(v7, (&v21[0].u64[1] + 4));
  v21[0].i32[3] = 11;
  v21[0].i32[0] = 11;
  v21[0].i32[1] = sub_10000AD98(&v21[0].i32[3]);
  v8 = sub_10000AE98();
  v21[0].i32[3] = 4;
  sub_1005D19F8(v8, &v21[0].i32[3], v21, (a1 + 5220), &v21[0].i32[2], a3);
  v9 = sub_100072010(a3);
  if (CFEqual(v9, kCTRegistrationStatusChangedNotification))
  {
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
    {
      return;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v21[0].i16[6] = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "device lost registration - no longer has active cell", &v21[0].u8[12], 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9154();
    }

    goto LABEL_9;
  }

  v12 = sub_100072010(a3);
  if (CFEqual(v12, kCTCallStatusChangeNotification))
  {
    v20 = 1;
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] && v20 == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v21[0].i16[6] = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "device on active call - no longer has active cell", &v21[0].u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F9238();
      }

LABEL_9:
      v11 = *(a1 + 280);
      if (v11)
      {
        (*(*v11 + 80))(v11, a3, a4);
      }
    }
  }

  else
  {
    v14 = sub_100072010(a3);
    if (CFEqual(v14, @"kStewieStatus"))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v21[0].i16[6] = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "device stewie status", &v21[0].u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F931C();
      }

      v16 = *a4;
      if (*a4)
      {
        v20 = 0;
        sub_100005548(&v21[0].i32[3], v16);
        if (sub_10001CBC0(&v21[0].i64[1] + 4, @"kStewieUseCaseActiveKey", &v20) && v20 != *(a1 + 1667))
        {
          *(a1 + 1667) = v20;
          v17 = [objc_msgSend(*(a1 + 32) "vendor")];
          if (*(a1 + 5176))
          {
            v18 = 1;
          }

          else
          {
            v18 = *(a1 + 1667);
          }

          [v17 isInEmegencyState:v18 & 1];
          if (*(a1 + 5176))
          {
            v19 = 1;
          }

          else
          {
            v19 = *(a1 + 1667);
          }

          sub_1003E084C(a1 + 800, v19 & 1);
        }

        sub_100005DA4(&v21[0].u64[1] + 4);
      }
    }
  }
}

void sub_100673DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100673DD0(uint64_t a1, int a2, int *a3, CLMotionActivity *a4)
{
  v17 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v18);
  sub_10000B324(v7, v18[0].i8);
  v19 = 8;
  v18[0].i32[0] = 8;
  v18[0].i32[1] = sub_10000AD98(&v19);
  v8 = sub_10000AE98();
  v19 = 4;
  sub_1005CFE5C(v8, &v19, v18, (a1 + 5220), &v17, a3, a4);
  v9 = *(a1 + 280);
  if (v9)
  {
    (*(*v9 + 16))(v9, a3, a4);
  }

  v10 = *(a1 + 312);
  if (v10)
  {
    sub_100DAA908(v10, a3, a4);
  }

  sub_1003E00A4(a1 + 800, a3, &a4->type);
  sub_1010598F8(a1 + 5296, a3, a4);
  if ((*a3 - 1) <= 1)
  {
    v11 = *(a1 + 768);
    if (v11)
    {
      sub_1000DD340(v11, a4);
    }
  }

  v12 = *(a1 + 304);
  if (v12)
  {
    v13 = sub_10000B1F8();
    v19 = 1;
    sub_10001A6B0(v13, &v19);
    sub_100EA85E0(v12, a3, a4);
  }

  v14 = *(a1 + 320);
  if (v14)
  {
    if ((*a3 - 1) <= 1)
    {
      v15 = sub_10000B1F8();
      v19 = 0;
      v16 = sub_10001A6B0(v15, &v19);
      sub_10054A5E0(v14, &a4->type, v16);
    }
  }
}

uint64_t sub_100673F58(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v10 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v11);
  sub_10000B324(v7, v11[0].i8);
  v12 = 9;
  v11[0].i32[0] = 9;
  v11[0].i32[1] = sub_10000AD98(&v12);
  v8 = sub_10000AE98();
  v12 = 4;
  sub_1005CF304(v8, &v12, v11, (a1 + 5220), &v10, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 32))(result, a3, a4);
  }

  return result;
}

uint64_t sub_100674028(uint64_t a1, int a2, int *a3, int *a4)
{
  v10 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v11);
  sub_10000B324(v7, v11[0].i8);
  v12 = 10;
  v11[0].i32[0] = 10;
  v11[0].i32[1] = sub_10000AD98(&v12);
  v8 = sub_10000AE98();
  v12 = 4;
  sub_1005D0798(v8, &v12, v11, (a1 + 5220), &v10, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 64))(result, a3, a4);
  }

  return result;
}

uint64_t sub_1006740F8(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v10 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v11);
  sub_10000B324(v7, v11[0].i8);
  v12 = 27;
  v11[0].i32[0] = 27;
  v11[0].i32[1] = sub_10000AD98(&v12);
  v8 = sub_10000AE98();
  v12 = 4;
  sub_1005D1128(v8, &v12, v11, (a1 + 5220), &v10, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 72))(result, a3, a4);
  }

  return result;
}

uint64_t sub_1006741C8(uint64_t a1)
{
  *a1 = off_102467388;
  if (*(a1 + 1664) == 1)
  {
    [*(*(a1 + 1600) + 16) unregister:*(*(a1 + 1600) + 8) forNotification:1];
  }

  if (*(a1 + 1665) == 1)
  {
    [*(*(a1 + 1600) + 16) unregister:*(*(a1 + 1600) + 8) forNotification:2];
  }

  v2 = *(a1 + 1600);
  *(a1 + 1600) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1632);
  if (v3)
  {
    [*(v3 + 16) unregister:*(v3 + 8) forNotification:4];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:9];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:3];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:1];
    v4 = *(a1 + 1632);
    *(a1 + 1632) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(a1 + 1608))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "LocationController,unregistered from motion state observer", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v46 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationController::~CLLocationController()", "%s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    [*(*(a1 + 1608) + 16) unregister:*(*(a1 + 1608) + 8) forNotification:0];
    v6 = *(a1 + 1608);
    *(a1 + 1608) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (*(a1 + 1616))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "LocationController,unregistered from motion state mediator", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v47 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationController::~CLLocationController()", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    [*(*(a1 + 1616) + 16) unregister:*(*(a1 + 1616) + 8) forNotification:0];
    [*(*(a1 + 1616) + 16) unregister:*(*(a1 + 1616) + 8) forNotification:2];
    v8 = *(a1 + 1616);
    *(a1 + 1616) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v9 = *(a1 + 1624);
  if (v9)
  {
    [*(v9 + 16) unregister:*(v9 + 8) forNotification:0];
    v10 = *(a1 + 1624);
    *(a1 + 1624) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *(a1 + 1648);
  if (v11)
  {
    sub_1001CBE2C(buf, kCTRegistrationStatusChangedNotification);
    [*(v11 + 16) unregister:*(v11 + 8) forNotification:sub_10006E830(buf)];
    v12 = *(a1 + 1648);
    sub_1001CBE2C(buf, kCTCallStatusChangeNotification);
    [*(v12 + 16) unregister:*(v12 + 8) forNotification:sub_10006E830(buf)];
    v13 = *(a1 + 1648);
    sub_1001CBE2C(buf, @"kStewieStatus");
    [*(v13 + 16) unregister:*(v13 + 8) forNotification:sub_10006E830(buf)];
    v14 = *(a1 + 1648);
    *(a1 + 1648) = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    [*(v15 + 16) unregister:*(v15 + 8) forNotification:2];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:3];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:6];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:8];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:15];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:7];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:13];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:10];
    v16 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, kRegulatoryDomainUpdateNotification, 0);
  }

  if (objc_opt_class())
  {
    [*(a1 + 688) stop];
    v18 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v18 removeObserver:*(a1 + 688) forKeyPath:PDRDidPairNotification];
    v19 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v19 removeObserver:*(a1 + 688) forKeyPath:PDRDidUnpairNotification];

    *(a1 + 688) = 0;
  }

  v20 = *(a1 + 5208);
  if (v20)
  {

    *(a1 + 5208) = 0;
  }

  v21 = *(a1 + 5280);
  if (v21 && *(a1 + 5272))
  {
    [v21 stopLeechingVisitsForClient:?];
    v21 = *(a1 + 5280);
  }

  *(a1 + 5280) = 0;
  *(a1 + 5272) = 0;
  [*(a1 + 5232) invalidate];

  *(a1 + 5232) = 0;
  sub_100678B08((a1 + 6080));
  v22 = *(a1 + 6064);
  if (v22)
  {
    sub_100008080(v22);
  }

  sub_1001FB750((a1 + 6000));
  v23 = *(a1 + 5992);
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = *(a1 + 5976);
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_100678ABC((a1 + 5960), 0);
  sub_1003C93BC(a1 + 5864, *(a1 + 5872));
  v25 = *(a1 + 5640);
  if (v25)
  {
    *(a1 + 5648) = v25;
    operator delete(v25);
  }

  sub_100678750(a1 + 2032);
  v26 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(a1 + 1624);
  *(a1 + 1624) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(a1 + 1616);
  *(a1 + 1616) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(a1 + 1608);
  *(a1 + 1608) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1600);
  *(a1 + 1600) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(a1 + 1592);
  if (v34)
  {
    sub_100008080(v34);
  }

  v35 = *(a1 + 792);
  if (v35)
  {
    sub_100008080(v35);
  }

  v36 = *(a1 + 776);
  if (v36)
  {
    sub_100008080(v36);
  }

  sub_100675664((a1 + 720), 0);
  v37 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  sub_10092EF24(a1 + 360);
  sub_100678A70((a1 + 320), 0);
  sub_100678A24((a1 + 312), 0);
  sub_1006789D8((a1 + 304), 0);
  v38 = *(a1 + 288);
  if (v38)
  {
    sub_100008080(v38);
  }

  sub_100678954(a1 + 256, *(a1 + 264));
  sub_1006788D4(a1 + 232, *(a1 + 240));
  v39 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_100674C20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100674C30(uint64_t a1)
{
  sub_1006741C8(a1);

  operator delete();
}

void sub_100674C68(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v18 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v19);
  sub_10000B324(v7, v19[0].i8);
  *buf = 4;
  v19[0].i32[0] = 4;
  v19[0].i32[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_1005CCBB0(v8, buf, v19, (a1 + 5220), &v18, a3, a4);
  v9 = *a3;
  if (*a3 == 7)
  {
    v12 = *(a1 + 312);
    if (v12)
    {
      sub_100DA8DE0(v12);
    }
  }

  else
  {
    if (v9 != 6)
    {
      if (v9 == 1)
      {
        sub_100278C3C(a1, 0, *a4 == 0);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v14 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *a3;
          *buf = 67240192;
          v21 = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "LocationController,onWifiServiceNotification,#Warning,Unhandled status notification,%{public}u", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F983C(a3);
        }
      }

      goto LABEL_21;
    }

    v10 = *(a1 + 312);
    if (v10)
    {
      sub_100DA8DE0(v10);
    }

    if (*(a4 + 48) > 0)
    {
      v11 = *(a4 + 96);
    }

    else
    {
      v11 = 0;
    }

    sub_100278C3C(a1, 4, v11 ^ 1);
    sub_10092E5F4(a1 + 360, v11);
  }

  v13 = *(a1 + 280);
  if (v13)
  {
    (*(*v13 + 528))(v13, a4);
  }

LABEL_21:
  v16 = *(a1 + 312);
  if (v16)
  {
    sub_100DAB2C8(v16, a3, a4);
  }

  v17 = *(a1 + 768);
  if (v17)
  {
    sub_100D24624(v17, a3, a4);
  }
}

void sub_100674E94(uint64_t a1, int a2, int *a3, int *a4)
{
  v13 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v14);
  sub_10000B324(v7, v14[0].i8);
  *buf = 5;
  v14[0].i32[0] = 5;
  v14[0].i32[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_1005CD610(v8, buf, v14, (a1 + 5220), &v13, a3, a4);
  if (*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      *buf = 67240192;
      v16 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "LocationController,onDataProtectionNotification,#Warning,Unhandled status notification,%{public}u", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9928(a3);
    }
  }

  else
  {
    v11 = *a4;
    sub_100278C3C(a1, 2, *a4 != 1);
    if (v11 == 1)
    {
      v12 = sub_10000AE98();
      sub_1005CB16C(v12);
    }
  }
}

void sub_100675010(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v13 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v14);
  sub_10000B324(v7, v14[0].i8);
  v15 = 6;
  v14[0].i32[0] = 6;
  v14[0].i32[1] = sub_10000AD98(&v15);
  v8 = sub_10000AE98();
  v15 = 4;
  sub_1005CE0BC(v8, &v15, v14, (a1 + 5220), &v13, a3, a4);
  v9 = *a3;
  if (*a3 == 9)
  {
    v12 = *(a4 + 113) == 0;
    v10 = a1;
    v11 = 8;
  }

  else if (v9 == 5)
  {
    v10 = a1;
    v11 = 9;
    v12 = 0;
  }

  else
  {
    if (v9 != 4)
    {
      return;
    }

    v10 = a1;
    v11 = 9;
    v12 = 1;
  }

  sub_100278C3C(v10, v11, v12);
}

void sub_100675100(uint64_t a1, int a2, int *a3, char *a4)
{
  v9 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v10);
  sub_10000B324(v7, v10[0].i8);
  v11 = 7;
  v10[0].i32[0] = 7;
  v10[0].i32[1] = sub_10000AD98(&v11);
  v8 = sub_10000AE98();
  v11 = 4;
  sub_1005CE950(v8, &v11, v10, (a1 + 5220), &v9, a3, a4);
  if (*a3 == 5)
  {
    sub_100278C3C(a1, 10, (*a4 & 1) == 0);
  }
}

void sub_1006751C0(uint64_t a1)
{
  sub_10001A3E8();
  sub_100241210(__p);
  if (v33 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = *__p;
  }

  sub_10000EC00(&v20, v2);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(*__p);
  }

  v3 = v22;
  if (v22 < 0)
  {
    v3 = v21;
  }

  if (!v3)
  {
    if (v22 < 0)
    {
      v21 = 5;
      v4 = v20;
    }

    else
    {
      v22 = 5;
      v4 = &v20;
    }

    strcpy(v4, "Local");
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F97D0();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001A3E8();
    v6 = v23;
    sub_1002412B0(v23);
    if (v26 < 0)
    {
      v6 = *v23;
    }

    v7 = sub_10001A3E8();
    sub_100241350(v7, v18);
    if (v19 >= 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v18[0];
    }

    v9 = &v20;
    if (v22 < 0)
    {
      v9 = v20;
    }

    *__p = 136446979;
    *&__p[4] = v6;
    v31 = 2081;
    v32 = v8;
    v33 = 2082;
    v34 = v9;
    v35 = 1026;
    v36 = 10;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxVersion, Init, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", __p, 0x26u);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*v23);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F97F8(__p);
    sub_10001A3E8();
    v11 = v18;
    sub_1002412B0(v18);
    if (v19 < 0)
    {
      v11 = v18[0];
    }

    v12 = sub_10001A3E8();
    sub_100241350(v12, v16);
    if (v17 >= 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v16[0];
    }

    v14 = &v20;
    if (v22 < 0)
    {
      v14 = v20;
    }

    *v23 = 136446979;
    *&v23[4] = v11;
    v24 = 2081;
    v25 = v13;
    v26 = 2082;
    v27 = v14;
    v28 = 1026;
    v29 = 10;
    v15 = _os_log_send_and_compose_impl();
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationController::start()", "%s\n", v15);
    if (v15 != __p)
    {
      free(v15);
    }
  }

  CFRunLoopSourceSignal(*(a1 + 696));
  v10 = sub_100107858();
  CFRunLoopWakeUp(v10);
  sub_1003DDA5C(a1);
  [*(a1 + 5200) registerForUpdates:*(a1 + 32)];
  [*(a1 + 648) setHarvestingEnabled:1];
  if (v22 < 0)
  {
    operator delete(v20);
  }
}

void sub_100675538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006755A8(uint64_t a1)
{
  sub_1006A5ED0(a1);
  [*(a1 + 40) assertInside];
  sub_1003DD5B0(a1);
  [*(a1 + 648) setHarvestingEnabled:0];
  [*(a1 + 648) shutdown];

  *(a1 + 648) = 0;
  [*(a1 + 1672) invalidate];

  *(a1 + 1672) = 0;
  [*(a1 + 5184) stopMonitoringEmergencyState:CLISP_ME_TOKEN];

  *(a1 + 5184) = 0;
  sub_100675664((a1 + 720), 0);

  *(a1 + 5192) = 0;
  v2 = *(a1 + 5200);
  if (v2)
  {
    [v2 unregisterForUpdates:*(a1 + 32)];

    *(a1 + 5200) = 0;
  }
}

uint64_t sub_100675664(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100758C6C();

    operator delete();
  }

  return result;
}

uint64_t sub_1006756B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 280);
  if (v8 && ((*(*v8 + 144))(v8, a3) & 1) != 0)
  {
    (*(**(a1 + 280) + 168))(*(a1 + 280), a2);
    result = 1;
    *a5 = 1;
    if (*(a2 + 20) > 0.0)
    {
      if (qword_1025D48C0 != -1)
      {
        sub_1018F9B0C();
      }

      v11 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(a2 + 4);
        v29 = *(a2 + 12);
        v33 = *(a2 + 20);
        v12 = *(a2 + 96);
        v32 = sub_1001FD6E4(v12);
        v35 = *(a2 + 44);
        v36 = *(a2 + 60);
        v37 = *(a2 + 84);
        v38 = *(a2 + 88);
        v39 = *(a2 + 76);
        v13 = sub_10000B1F8();
        *buf = 0;
        v14 = sub_10001A6B0(v13, buf) - *(a2 + 76);
        v15 = *(a2 + 28);
        v16 = *(a2 + 36);
        v17 = *(a2 + 52);
        v18 = *(a2 + 68);
        v28 = *(a3 + 184);
        v30 = *(a2 + 128);
        v31 = *(a2 + 132);
        v34 = *(a2 + 136);
        v19 = sub_10000B1F8();
        v20 = sub_100125220(v19);
        *buf = 136320515;
        *v41 = "CL-filtered";
        *&v41[8] = 1024;
        *&v41[10] = 0;
        v42 = 2053;
        v43 = v27;
        v44 = 2053;
        v45 = v29;
        v46 = 2048;
        v47 = v33;
        v48 = 1026;
        v49 = v12;
        v50 = 2082;
        v51 = v32;
        v52 = 2050;
        v53 = v35;
        v54 = 2050;
        v55 = v36;
        v56 = 1026;
        v57 = v37;
        v58 = 2050;
        v59 = v38;
        v60 = 2050;
        v61 = v39;
        v62 = 2050;
        v63 = v14;
        v64 = 2049;
        v65 = v15;
        v66 = 2050;
        v67 = v16;
        v68 = 2050;
        v69 = v17;
        v70 = 2050;
        v71 = v18;
        v72 = 2050;
        v73 = v28;
        v74 = 1026;
        v75 = v30;
        v76 = 1026;
        v77 = v31;
        v78 = 1026;
        v79 = v34;
        v80 = 2050;
        v81 = v20;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", buf, 0xC6u);
      }

      if (sub_10000A100(123, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48C0 != -1)
        {
          sub_1018F9B20();
        }

        sub_1001FD6E4(*(a2 + 96));
        sub_1000281DC();
        v25 = sub_10000B1F8();
        sub_100125220(v25);
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::updateLegacyLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, const LocationProvider &, BOOL &)", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      return 1;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v22 = *(a3 + 96);
      v23 = *(a3 + 100);
      v24 = *(a3 + 108);
      *buf = 67240705;
      *v41 = v22;
      *&v41[4] = 2053;
      *&v41[6] = v23;
      v42 = 2053;
      v43 = v24;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "location rejected by KF,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9B48();
    }

    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100675C94(uint64_t a1, int **a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018FA228();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10030D934(a2[101]);
    v7 = 134349056;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "GPSODOM,Rhythmic batched locations update,size,%{public}zu", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FA23C(a2);
  }

  v7 = 43;
  (*(*a1 + 152))(a1, &v7, a2, 1, 0xFFFFFFFFLL, 0);
  return sub_100675DCC(a1, a2);
}

uint64_t sub_100675DCC(uint64_t a1, int **a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = a2[101];
    if (v5)
    {
      v5 = sub_10030D934(v5);
    }

    v7 = 134349056;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "GPSODOM,Batched locations obtained,size,%{public}zu", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FA340(a2);
  }

  v7 = 23;
  return (*(*a1 + 152))(a1, &v7, a2, 1, 0xFFFFFFFFLL, 0);
}

void sub_100675EFC(uint64_t a1, char a2)
{
  sub_100021AFC(v5);
  v12 = a2;
  v4 = 48;
  (*(*a1 + 152))(a1, &v4, v5, 1, 0xFFFFFFFFLL, 0);

  if (v10)
  {
    sub_100008080(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_100675FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_100675FD8(uint64_t a1, unsigned int a2, int *a3, uint64_t a4)
{
  v9 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v10);
  sub_10000B324(v7, v10[0].i8);
  v11 = 20;
  v10[0].i32[0] = 20;
  v10[0].i32[1] = sub_10000AD98(&v11);
  v8 = sub_10000AE98();
  v11 = 4;
  sub_10001E898(v8, &v11, v10, (a1 + 5220), &v9, a3, a4);
  sub_10092E288(a1 + 360, v9, a3, a4);
}

uint64_t sub_100676088(uint64_t a1, void *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LocationController,setting simulation to %{public}d for all location providers", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB1B8(a2);
  }

  v5 = *(a1 + 232);
  if (v5 != (a1 + 240))
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v30 = _Q0;
    do
    {
      if (*(v5 + 8))
      {
        *(v5 + 24) = 0xFFFF;
        *(v5 + 108) = 0;
        *(v5 + 100) = 0;
        *(v5 + 116) = xmmword_101C75BF0;
        *(v5 + 132) = v30;
        *(v5 + 148) = v30;
        *(v5 + 164) = v30;
        *(v5 + 45) = 0;
        v5[24] = 0;
        v5[25] = 0;
        v5[23] = 0xBFF0000000000000;
        *(v5 + 52) = 0;
        *(v5 + 212) = 0xBFF0000000000000;
        *(v5 + 55) = 0x7FFFFFFF;
        v5[29] = 0;
        v5[30] = 0;
        v5[28] = 0;
        *(v5 + 248) = 0;
        *buf = v5 + 5;
        v11 = sub_10010A224(a1 + 256, v5 + 10);
        sub_1006A6C20(v11[5], a2);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          _ZF = *v13 == v5;
          v5 = v13;
        }

        while (!_ZF);
      }

      v5 = v13;
    }

    while (v13 != (a1 + 240));
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    (*(*v14 + 136))(v14);
  }

  *(a1 + 679) = a2;
  v15 = *(a1 + 5984);
  if (v15)
  {
    sub_10083119C(v15, a2);
  }

  if (a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "LocationController,#WSB,simulation enabled - clearing notification store", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB2AC();
    }

    v17 = *(a1 + 6088);
    v18 = *(a1 + 6096);
    if (v18 == v17)
    {
      v23 = (a1 + 6120);
      v18 = *(a1 + 6088);
    }

    else
    {
      v19 = *(a1 + 6112);
      v20 = &v17[v19 / 0x49];
      v21 = *v20;
      v22 = *v20 + 56 * (v19 % 0x49);
      v23 = (a1 + 6120);
      v24 = v17[(*(a1 + 6120) + v19) / 0x49] + 56 * ((*(a1 + 6120) + v19) % 0x49);
      if (v22 != v24)
      {
        do
        {
          v25 = *(v22 + 8);
          if (v25)
          {
            *(v22 + 16) = v25;
            operator delete(v25);
            v21 = *v20;
          }

          v22 += 56;
          if (v22 - v21 == 4088)
          {
            v26 = v20[1];
            ++v20;
            v21 = v26;
            v22 = v26;
          }
        }

        while (v22 != v24);
        v18 = *(a1 + 6096);
        v17 = *(a1 + 6088);
      }
    }

    *v23 = 0;
    v27 = v18 - v17;
    if (v27 >= 3)
    {
      do
      {
        operator delete(*v17);
        v17 = (*(a1 + 6088) + 8);
        *(a1 + 6088) = v17;
        v27 = (*(a1 + 6096) - v17) >> 3;
      }

      while (v27 > 2);
    }

    if (v27 == 1)
    {
      v28 = 36;
      goto LABEL_43;
    }

    if (v27 == 2)
    {
      v28 = 73;
LABEL_43:
      *(a1 + 6112) = v28;
    }
  }

  *buf = 0;
  (*(*a1 + 120))(a1, buf);
  *buf = 9;
  result = (*(*a1 + 120))(a1, buf);
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return result;
}

void sub_100676490(void *a1, char a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Clearing all location data from the controller", v16, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB390();
  }

  (*(*a1 + 304))(a1);
  v5 = a1[35];
  if (v5)
  {
    (*(*v5 + 136))(v5);
    (*(*a1[35] + 200))(a1[35]);
  }

  v6 = a1[29];
  if (v6 != a1 + 30)
  {
    __asm { FMOV            V1.2D, #-1.0 }

    do
    {
      if (*(v6 + 8))
      {
        *(v6 + 24) = 0xFFFF;
        *(v6 + 108) = 0;
        *(v6 + 100) = 0;
        *(v6 + 116) = xmmword_101C75BF0;
        *(v6 + 132) = _Q1;
        *(v6 + 148) = _Q1;
        *(v6 + 164) = _Q1;
        *(v6 + 45) = 0;
        v6[24] = 0;
        v6[25] = 0;
        v6[23] = 0xBFF0000000000000;
        *(v6 + 52) = 0;
        *(v6 + 212) = 0xBFF0000000000000;
        *(v6 + 55) = 0x7FFFFFFF;
        v6[29] = 0;
        v6[30] = 0;
        v6[28] = 0;
        *(v6 + 248) = 0;
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          _ZF = *v13 == v6;
          v6 = v13;
        }

        while (!_ZF);
      }

      v6 = v13;
    }

    while (v13 != a1 + 30);
  }

  if (a2)
  {
    v14 = a1[38];
    if (v14)
    {
      sub_100EA861C(v14);
    }

    v15 = a1[748];
    if (v15)
    {
      sub_100831194(v15);
    }
  }
}

void sub_10067667C(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v20 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 3;
  v19[0] = 3;
  v19[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_1005CC0FC(v8, buf, v19, (a1 + 5220), &v20, a3, a4);
  if (*a3 == 4)
  {
    v11 = *(a4 + 188);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v11 == 1;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationController,Location Services, enabled:%{public}d}", buf, 0x18u);
    }

    if (*(a1 + 5217) == 1 && v11 == 1)
    {
      if (*(sub_10000AE98() + 24) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v13 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#locctl,#rec,session already open,no-op", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FB46C();
        }
      }

      else
      {
        v15 = sub_10000AE98();
        sub_1005CAEDC(v15);
        v16 = sub_10000AE98();
        sub_1005CB17C(v16);
        *buf = 0x4000000000000000;
        sub_100671BD8(a1, buf);
      }
    }

    else if (*(a1 + 5217) && v11 != 1)
    {
      v14 = sub_10000AE98();
      sub_1005CADAC(v14);
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location Services state changed,clearing local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB548();
    }

    sub_100278C3C(a1, 6, *(a4 + 188) != 1);
    sub_100676490(a1, *(a4 + 188) == 0);
    v18 = *(a1 + 312);
    if (v18)
    {
      sub_100DAAB4C(v18, v11 == 1);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location Services reset,clearing local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB624();
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F97D0();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxNotify, LpReset, 0", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB700();
    }

    sub_100676490(a1, 1);
    [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  }
}

uint64_t sub_100676A88(uint64_t a1)
{
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 352))();
  }

  return result;
}

void sub_100676AC0(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[12];
    *buf = 134217984;
    *v17 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationController,requested client list,size,%zu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB9A4();
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v6 = a1[10];
  v7 = a1 + 11;
  if (v6 != v7)
  {
    do
    {
      sub_10000EC00(__p, [objc_msgSend(v6[8] "description")]);
      *buf = *(v6 + 8);
      if (SHIBYTE(v15) < 0)
      {
        sub_100007244(&v17[1], __p[0], __p[1]);
        v19 = 0;
        v20 = 0;
        v18 = &v19;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *&v17[1] = *__p;
        *&v17[5] = v15;
        v19 = 0;
        v20 = 0;
        v18 = &v19;
      }

      v8 = v6[5];
      if (v8 != (v6 + 6))
      {
        do
        {
          sub_1003C9410(&v18, v8 + 7);
          v9 = *(v8 + 1);
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
              v10 = *(v8 + 2);
              v11 = *v10 == v8;
              v8 = v10;
            }

            while (!v11);
          }

          v8 = v10;
        }

        while (v10 != (v6 + 6));
      }

      sub_10067A508(a2, buf);
      sub_100678894(buf);
      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v11 = *v13 == v6;
          v6 = v13;
        }

        while (!v11);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }
}

void sub_100676D38(void *a1)
{
  v2 = sub_10000B1F8();
  v3 = sub_10000AED4(v2, &v22);
  v4 = a1[35];
  if (v4)
  {
    v5 = (*(*v4 + 504))(v4, v3) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = a1[751];
  while (v6 != (a1 + 750))
  {
    if ([*(v6 + 3) machContinuousTimeSeconds])
    {
      v7 = v22.n128_f64[0];
      [objc_msgSend(*(v6 + 3) "machContinuousTimeSeconds")];
    }

    else
    {
      if (![*(v6 + 3) date])
      {
        v9 = 0;
        goto LABEL_10;
      }

      v7 = v23;
      [objc_msgSend(*(v6 + 3) "date")];
    }

    v9 = v7 - v8 > 895.0;
LABEL_10:
    if ((v5 | v9))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v11 = v22.n128_f64[0];
        v12 = v6[5];
        v13 = [*(v6 + 3) description];
        v14 = a1[752];
        *buf = 134350082;
        v35 = v11;
        v36 = 2050;
        v37 = v12;
        v38 = 2050;
        v39 = v11 - v12;
        v40 = 2114;
        v41 = v13;
        v42 = 1026;
        v43 = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#ADL,queue servicing fetch request, mct,%{public}.3f,queue mct,%{public}.3f,delay_s,%{public}.3f, options,%{public}@, queue size, %{public}d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v17 = v22.n128_f64[0];
        v18 = v6[5];
        v19 = [*(v6 + 3) description];
        v20 = a1[752];
        v24 = 134350082;
        v25 = v17;
        v26 = 2050;
        v27 = v18;
        v28 = 2050;
        v29 = v17 - v18;
        v30 = 2114;
        v31 = v19;
        v32 = 1026;
        v33 = v20;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::tryServiceRecentLocationsFetchQueue()", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      (*(*(v6 + 2) + 16))();
      _Block_release(*(v6 + 2));
      _Block_release(*(v6 + 4));

      v15 = *v6;
      v16 = *(v6 + 1);
      *(*&v15 + 8) = v16;
      *v16 = v15;
      --a1[752];
      operator delete(v6);
      v6 = v16;
    }

    else
    {
      v6 = *(v6 + 1);
    }
  }
}

void sub_1006770A8(uint64_t a1, void *a2)
{
  if (a2 && *(a1 + 5280) && [a2 _placeInference])
  {
    if ([objc_msgSend(a2 "_placeInference")])
    {
      [*(a1 + 5280) fetchLocationOfInterestWithIdentifier:? withReply:?];
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1002976C8();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "LocationController,updateCAHomeLoiFromVisit,invalid loi identifier", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018FBA9C();
      }
    }
  }
}

void sub_1006771D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 68289539;
      *v82 = 0;
      *&v82[4] = 2082;
      *&v82[6] = "";
      *&v82[14] = 2113;
      *&v82[16] = v6;
      *&v82[24] = 2114;
      *&v82[26] = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,error fetching LOI, loiIdentifier:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v7 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v8 = *(a1 + 32);
      *buf = 68289539;
      *v82 = 0;
      *&v82[4] = 2082;
      *&v82[6] = "";
      *&v82[14] = 2113;
      *&v82[16] = v8;
      *&v82[24] = 2114;
      *&v82[26] = a3;
      v9 = "LocationController,updateCAHomeLoiFromVisit,error fetching LOI";
      v10 = "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,error fetching LOI, loiIdentifier:%{private, location:escape_only}@, error:%{public, location:escape_only}@}";
      v11 = v7;
      v12 = 38;
LABEL_9:
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, v12);
    }
  }

  else if (a2)
  {
    v14 = *(a1 + 48);
    v15 = [CLVisit alloc];
    [objc_msgSend(a2 "location")];
    v17 = v16;
    [objc_msgSend(a2 "location")];
    v19 = CLLocationCoordinate2DMake(v17, v18);
    [objc_msgSend(a2 "location")];
    v21 = [v15 initWithCoordinate:objc_msgSend(*(a1 + 40) horizontalAccuracy:"arrivalDate") arrivalDate:objc_msgSend(*(a1 + 40) departureDate:"departureDate") detectionDate:objc_msgSend(*(a1 + 40) placeInference:{"detectionDate"), objc_msgSend(*(a1 + 40), "_placeInference"), v19.latitude, v19.longitude, v20}];
    *buf = 23;
    v71[0] = 23;
    v71[1] = sub_10000AD98(buf);
    v22 = sub_10000AE98();
    sub_1005D2D94(v22, v71, (v14 + 5220), v21, 1);
    if ([a2 type])
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v23 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v24 = [a2 type];
        *buf = 67109120;
        *v82 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "LocationController,updateCAHomeLoiFromVisit,place type is not home,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FBB80(a2);
      }
    }

    else if ([objc_msgSend(a2 "visits")])
    {
      if ([objc_msgSend(a2 "location")] != 2)
      {
        [a2 confidence];
        if (v29 >= 0.0)
        {
          v52 = 0xFFFF;
          v56 = xmmword_101C76220;
          __asm { FMOV            V0.2D, #-1.0 }

          v57 = _Q0;
          v58 = _Q0;
          v59 = 0xBFF0000000000000;
          v60 = 0;
          v63 = 0;
          v61 = 0xBFF0000000000000;
          v62 = 0;
          v64 = 0;
          v65 = 0xBFF0000000000000;
          v66 = 0x7FFFFFFF;
          v69 = 0;
          v67 = 0;
          v68 = 0;
          v70 = 0;
          [objc_msgSend(a2 "location")];
          v53 = v35;
          [objc_msgSend(a2 "location")];
          v54 = v36;
          [objc_msgSend(a2 "location")];
          v55 = v37;
          v38 = sub_1010589B8(v14 + 5296, &v52);
          v39 = *(v14 + 280);
          if (v39)
          {
            (*(*v39 + 536))(v39, 1, v38);
          }

          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v41 = v53;
            v42 = v54;
            v43 = v55;
            v44 = sub_10000B1F8();
            v45 = sub_100125220(v44);
            *buf = 136381699;
            *v82 = "home";
            *&v82[8] = 2053;
            *&v82[10] = v41;
            *&v82[18] = 2053;
            *&v82[20] = v42;
            *&v82[28] = 2050;
            *&v82[30] = v43;
            v83 = 2050;
            v84 = v45;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "LocationController,updateCAHomeLoiFromVisit,LOI %{private}s location latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,acc,%{public}.2f,propagation_us,%{public}.3f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1018F7C0C();
            }

            v46 = v53;
            v47 = v54;
            v48 = v55;
            v49 = sub_10000B1F8();
            v50 = sub_100125220(v49);
            v71[2] = 136381699;
            v72 = "home";
            v73 = 2053;
            v74 = v46;
            v75 = 2053;
            v76 = v47;
            v77 = 2050;
            v78 = v48;
            v79 = 2050;
            v80 = v50;
            v51 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::updateCAHomeLoiFromVisit(const CLVisit *)_block_invoke", "%s\n", v51);
            if (v51 != buf)
            {
              free(v51);
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 68289283;
      *v82 = 0;
      *&v82[4] = 2082;
      *&v82[6] = "";
      *&v82[14] = 2113;
      *&v82[16] = v26;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,received nil LOI, loiIdentifier:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v27 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v28 = *(a1 + 32);
      *buf = 68289283;
      *v82 = 0;
      *&v82[4] = 2082;
      *&v82[6] = "";
      *&v82[14] = 2113;
      *&v82[16] = v28;
      v9 = "LocationController,updateCAHomeLoiFromVisit,received nil LOI";
      v10 = "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,received nil LOI, loiIdentifier:%{private, location:escape_only}@}";
      v11 = v27;
      v12 = 28;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1006778C8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1512);
    v6 = *(a2 + 1520);
    v8[0] = 67240448;
    v8[1] = v5;
    v9 = 2050;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,ntfy,session start,%{public}d,gnss usage sec,%{public}0.2f", v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBEF0();
  }

  v8[0] = 46;
  return (*(*a1 + 152))(a1, v8, a2, 1, 0xFFFFFFFFLL, 0);
}

void sub_100677A00(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "LCRouteReconstructionDebugLogs", &v3);
  byte_102658590 = v1 & v3;
  if (v5)
  {
    sub_100008080(v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = byte_102658590;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLJR,#ADL,enable JIT-RR locations to protobuf,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBFF4();
  }
}

void sub_100677B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100677B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 5984);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2, 0);
    v5 = *(a1 + 6056);
    if (v5)
    {
      sub_100E608F8(v5, a2);
    }

    if (*(a2 + 136) == 5)
    {
      v6 = *(a2 + 16);
      if (*(a1 + 6048) >= v6)
      {
        v6 = *(a1 + 6048);
      }

      *(a1 + 6048) = v6;
    }

    v7 = sub_10000B1F8();
    v17 = 1;
    v8 = sub_10001A6B0(v7, &v17);
    v9 = *(a1 + 6024);
    if (v8 - *(a1 + 6032) <= v9)
    {
      goto LABEL_18;
    }

    v10 = v8 + -900.0;
    v11 = v8 - v9;
    if (v8 - *(a1 + 6048) >= 900.0)
    {
      if (v11 <= 0.0 || v10 <= 0.0 || (*(a1 + 6040) & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    else if (v10 <= 0.0 || v11 <= 0.0)
    {
      goto LABEL_17;
    }

    sub_100E6F1C0(a1, v8, v10, v11);
LABEL_17:
    *(a1 + 6032) = v8;
LABEL_18:
    sub_100677CE4(a1, a2);
  }

  v17 = 0xFFFF;
  v18 = 0;
  v19 = 0;
  v20 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v21 = _Q0;
  v22 = _Q0;
  v23 = _Q0;
  v24 = 0;
  v27 = 0;
  v25 = 0xBFF0000000000000;
  v26 = 0;
  v28 = 0;
  v29 = 0xBFF0000000000000;
  v30 = 0x7FFFFFFF;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  sub_10002790C(a2, &v17);
  sub_10002DEDC(a1, &v17);
  sub_100676D38(a1);
}

void sub_100677CE4(uint64_t a1, uint64_t a2)
{
  if (qword_1026585A8 != -1)
  {
    sub_1018FC0E8();
  }

  if (byte_1026585A0 == 1 && (*(a1 + 679) & 1) == 0 && *(a2 + 40) < 200.0)
  {
    v4 = sub_10000B1F8();
    *buf = 1;
    if (sub_10001A6B0(v4, buf) - *(a1 + 6072) > 3.0)
    {
      sub_1000280A0(*(a1 + 5984), &v32);
      if (sub_100027FB4(&v32))
      {
        v5 = sub_10000B1F8();
        *buf = 0;
        v6 = sub_10001A6B0(v5, buf);
        if (v6 - v35 < 3.0)
        {
          v7 = sub_10000B1F8();
          *buf = 1;
          sub_10001A6B0(v7, buf);
          v8 = sub_10000B1F8();
          *buf = 1;
          v9.n128_f64[0] = sub_10001A6B0(v8, buf);
          *(a1 + 6072) = v9.n128_u64[0];
          sub_10002364C(a1, &v32, v9);
          if (sub_100027FB4(&v32))
          {
            v33 = round(v33 * 10.0) / 10.0 + 0.095014;
          }

          v15 = 0xFFFF;
          v17 = 0;
          v16 = 0;
          v18 = xmmword_101C75BF0;
          __asm { FMOV            V0.2D, #-1.0 }

          v19 = _Q0;
          v20 = _Q0;
          v21 = _Q0;
          v22 = 0;
          v26 = 0;
          v24 = 0;
          v25 = 0;
          v23 = 0xBFF0000000000000;
          v27 = 0xBFF0000000000000;
          *v28 = 0x7FFFFFFF;
          v29 = 0;
          v30 = 0;
          *&v28[4] = 0;
          v31 = 0;
          (*(**(a1 + 280) + 168))(*(a1 + 280), &v15);
          v36 = *v28;
          LODWORD(v32) = v15;
          v37 = HIDWORD(v29);
          v39 = v31;
          if ((*(a2 + 112) - 1) <= 1)
          {
            v38 = v34 + *(a2 + 64);
          }

          sub_1000235B0(a1, &v32);
        }
      }
    }
  }
}

void sub_100678108(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "ADLEnableCachedLocation", &v3);
  byte_1026585A0 = v3 || (v1 & 1) == 0;
  if (*v5)
  {
    sub_100008080(*v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v5 = 2082;
    *&v5[2] = "";
    v6 = 1026;
    v7 = byte_1026585A0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ADL,Enable updating cached location, enable:%{public}d}", buf, 0x18u);
  }
}

void sub_100678224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100678244(uint64_t a1)
{
  v1 = *(a1 + 5984);
  if (v1)
  {
    return *(*(v1 + 40) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100678260(uint64_t a1, void *aBlock, void *a3, const void *a4)
{
  if (aBlock && a3 && a4)
  {
    if (*(a1 + 6016) <= 0x1F3uLL)
    {
      _Block_copy(aBlock);
      v8 = a3;
      _Block_copy(a4);
      v9 = sub_10000B1F8();
      v15 = 1;
      sub_10001A6B0(v9, &v15);
      operator new();
    }

    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v13 = [a3 description];
      v14 = *(a1 + 6016);
      v15 = 138543618;
      v16 = v13;
      v17 = 1026;
      v18 = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#ADL,queue has reached maximum allowed size, executing fetch request immediately, %{public}@, queue size, %{public}d", &v15, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FC0FC(a3, (a1 + 6016));
    }

    (*(aBlock + 2))(aBlock, a3, a4);
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v15 = 138543362;
    v16 = [a3 description];
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#ADL,queue cannot add invalid fetch request to queue, options,%{public}@", &v15, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018FC33C(a3);
    return 0;
  }

  return result;
}

void sub_100678620(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_100678710(uint64_t a1)
{
  sub_1003C93BC(a1 + 568, *(a1 + 576));
  v2 = *(a1 + 344);
  if (v2)
  {
    *(a1 + 352) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100678750(uint64_t a1)
{
  v2 = *(a1 + 2728);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 2487) < 0)
  {
    operator delete(*(a1 + 2464));
  }

  v3 = *(a1 + 2376);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 2248);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 1168);
  if (v5)
  {
    sub_100008080(v5);
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  v6 = *(a1 + 816);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 688);
  if (v7)
  {
    sub_100008080(v7);
  }

  return a1;
}

uint64_t sub_1006787F4(void *a1)
{
  result = *(a1[4] + 280);
  if (result)
  {
    return (*(*result + 112))(result, a1[5], a1[6], a1[7], a1[8]);
  }

  return result;
}

uint64_t sub_100678894(uint64_t a1)
{
  sub_1003C93BC(a1 + 32, *(a1 + 40));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006788D4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1006788D4(a1, *a2);
    sub_1006788D4(a1, *(a2 + 1));
    v4 = *(a2 + 98);
    if (v4)
    {
      sub_100008080(v4);
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_100678954(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100678954(a1, *a2);
    sub_100678954(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1006789D8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100EA83A0();

    operator delete();
  }

  return result;
}

uint64_t sub_100678A24(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100DA89FC();

    operator delete();
  }

  return result;
}