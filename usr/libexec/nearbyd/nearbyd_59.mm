void *sub_10047CF98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  result = sub_100009BCC((a1 + 160), &v7);
  if (result)
  {
    v6 = sub_100009BCC((a1 + 160), &v7);
    if (!v6)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    return sub_1004824E8((v6 + 3), a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

BOOL sub_10047D00C(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004D0C54();
    }
  }

  else
  {
    *(a1 + 4) = 0;
    sub_100498CD0((a1 + 24));
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionManager: IMU history is cleared.", v4, 2u);
    }
  }

  return v1 == 0;
}

void sub_10047D0B8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  *a3 = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  v4 = a3 + 152;
  *(a3 + 200) = 0;
  if ((*(a1 + 4) & 1) == 0)
  {
    v17 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134217984;
    v22 = a2;
    v18 = "#sf,getSolutionInternalsFromTrackingTargetSet: target 0x%llx failed: no motion state";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    return;
  }

  if (!sub_100009BCC((a1 + 160), &v20))
  {
    v17 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134217984;
    v22 = v20;
    v18 = "#sf,getSolutionInternalsFromTrackingTargetSet: target 0x%llx failed: RoseEstimatorArrayMap count is zero";
    goto LABEL_26;
  }

  v6 = sub_100009978((a1 + 160), &v20);
  if (!v6)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  sub_100481EC0((v6 + 3), buf);
  sub_100189FDC(a3, buf);
  v7 = v26;
  *v4 = v25;
  *(v4 + 16) = v7;
  *(v4 + 32) = v27;
  *(v4 + 48) = v28;
  if (v24 == 1)
  {
    sub_10002074C(v23, v23[1]);
  }

  if (*(a3 + 144) == 1)
  {
    if (v20 != *(a3 + 8))
    {
      __assert_rtn("getSolutionAndInternalsFromTrackingTargetSet", "RoseSensorFusionManager.cpp", 421, "targetID == solution.ID");
    }

    v9 = *(a3 + 48);
    v8 = *(a3 + 56);
    v10 = v9 < -145.0;
    if (v8 < -55.0)
    {
      v10 = 1;
    }

    if (v9 > 0.0)
    {
      v10 = 1;
    }

    v11 = v8 > 55.0 || v10;
    v12 = *a3;
    v13 = sub_100009978((a1 + 160), &v20);
    if (!v13)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_1004824C0((v13 + 3));
    if (v12 - v14 > 1.0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11;
    }

    if (v15 == 1)
    {
      if (*(a3 + 144) == 1)
      {
        sub_10002074C(a3 + 16, *(a3 + 24));
        *(a3 + 144) = 0;
      }
    }

    else
    {
      v19 = sub_100009978((a1 + 200), &v20);
      if (v19 && (a3 + 16) != v19 + 3)
      {
        sub_10018A09C((a3 + 16), v19[3], v19 + 4);
      }
    }
  }
}

void sub_10047D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 + 144) == 1)
  {
    sub_10002074C(v29 + 16, *(v29 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_10047D3D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 176); i; i = *i)
  {
    sub_100481EC0((i + 3), v15);
    if (v17 == 1)
    {
      sub_100498E54(v13);
      if (i[2] != v13[1])
      {
        __assert_rtn("getSolutionFromAllTrackingTargetSets", "RoseSensorFusionManager.cpp", 447, "targetId == sol.ID");
      }

      v12 = v14[5];
      v11 = v14[4];
      v5 = *v13;
      sub_1004824C0((i + 3));
      v7.f64[0] = v5 - v6;
      *&v8.f64[0] = v11;
      *&v7.f64[1] = v11;
      *&v8.f64[1] = v12;
      v9 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(xmmword_10089D790, v8), vcgeq_f64(xmmword_10089D7A0, v7))));
      *&v7.f64[0] = vmovn_s64(vmvnq_s8(vcgeq_f64(v7, xmmword_10089D7A0)));
      v9.i16[3] = vuzp1_s16(*&v7, *&v7).i16[3];
      if ((vmaxv_u16(v9) & 1) == 0 && *&v12 >= -55.0)
      {
        v10 = sub_100009978((a1 + 200), i + 2);
        if (v10 && v14 != v10 + 3)
        {
          sub_10018A09C(v14, v10[3], v10 + 4);
        }

        sub_10047CEE4(a2);
      }

      sub_10002074C(v14, v14[1]);
    }

    if (v17 == 1)
    {
      sub_10002074C(v16, v16[1]);
    }
  }
}

void sub_10047D578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_10002074C(v53, a20);
  if (a53 == 1)
  {
    sub_10002074C(v54 + 16, a38);
  }

  sub_10018AE8C(&a35);
  _Unwind_Resume(a1);
}

BOOL sub_10047D5CC(void *a1, double *a2)
{
  if (a1[23])
  {
    return 0;
  }

  if (sub_100498BC8((a1 + 3)))
  {
    return 0;
  }

  v5 = a1[14] + a1[13] - 1;
  return *a2 - *(*(a1[10] + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF)) > 1.0;
}

BOOL sub_10047D650(double *a1, double **a2)
{
  sub_10047D6DC((a1 + 30), **a2);
  sub_10047D6DC((a1 + 40), (*a2)[1]);
  sub_10047D6DC((a1 + 50), (*a2)[2]);
  return a1[39] < 0.025 && a1[49] < 0.025 && a1[59] < 0.025;
}

double sub_10047D6DC(uint64_t a1, double a2)
{
  v9 = a2;
  if (*(a1 + 40))
  {
    *(a1 + 56) = *(*(*(a1 + 8) + ((*(a1 + 32) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 32) & 0x1FFLL));
  }

  sub_100013A08(a1, &v9);
  v3 = *(a1 + 40);
  if (v3 >= 0x33)
  {
    ++*(a1 + 32);
    *(a1 + 40) = v3 - 1;
    sub_1000139A8(a1, 1);
    v3 = *(a1 + 40);
  }

  if (v3 == 50)
  {
    v4 = *(*(*(a1 + 8) + (((*(a1 + 32) + 49) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 32) + 49) & 0x1FF));
    *(a1 + 64) = v4;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = v5 + (v4 - v6) / 50.0;
  *(a1 + 48) = v7;
  result = (v4 - v6) * (v6 + v4 - v7 - v5);
  *(a1 + 72) = result;
  return result;
}

void sub_10047D7CC(double *a1, uint64_t a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100012F38(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (sub_10047D650(a1, &__p))
  {
    v4 = *(a2 + 16);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_10047D844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047D860(uint64_t *a1)
{
  if (*a1)
  {
    sub_1001890D0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10047D9CC(uint64_t a1)
{
  v2 = *(a1 + 568);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  *(a1 + 448) = off_1009991A0;
  sub_100188E54((a1 + 392));
  sub_100188E54((a1 + 328));
  v4 = (a1 + 216);
  sub_10018907C(&v4);
  return a1;
}

void *sub_10047DA44(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_100224AD0(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_100224730(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100224AD0(v2, v16);
    }
  }

  return result;
}

void sub_10047DCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10047DD5C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

__n128 sub_10047DDC0(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000006;
  *(a1 + 24) = 0x100000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009ACDD0;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 6)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 6u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_10047DF50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10047E208(v4, *(a1 + 12), *(a1 + 8));
  sub_1003A9464(a1, v4);
  v7 = 0x600000006;
  v5 = off_1009ACD88;
  v6 = xmmword_10089D7B0;
  v8 = &v9;
  sub_1003A90A8(v4, a1, &v5);
  *(a2 + 24) = 0x600000006;
  *a2 = off_1009ACD88;
  *(a2 + 8) = xmmword_10089D7B0;
  *(a2 + 32) = a2 + 40;
  v17 = 0x100000006;
  v16 = xmmword_10089D7C0;
  v15 = off_1009ACE18;
  v18 = &v19;
  v12 = 0x100000018;
  v11 = xmmword_10089D7D0;
  v10 = off_1009ACE60;
  v13 = &v14;
  sub_1003A9CA4(&v5, &v15, &v10, a2);
}

uint64_t sub_10047E208(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x600000006;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009ACD88;
  if (a2 > 6)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 7)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_10047E2D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_10047DDC0(a1, a2);
  sub_10047E338(v7 + 88, a3);
  *(a1 + 416) = a4;
  return a1;
}

__n128 sub_10047E338(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x600000006;
  *(a1 + 24) = 0x600000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009ACD88;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 6)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 7)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 6u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 6u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_10047E4C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100012F38(a1 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100012F38(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100012F38(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_100012F38(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100012F38(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100012F38(a1 + 136, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 3);
  return a1;
}

void sub_10047E5CC(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[6] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[3] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047E648(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = 0;
  sub_10047E6A8(a1, 0x32uLL, &v3);
  return a1;
}

uint64_t *sub_10047E6A8(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = result[5];
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_10047E758(result, v6, a3);
  }

  else if (!v5)
  {
    v7 = result[1];
    if (result[2] == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 8 * (result[4] >> 9)) + 8 * (result[4] & 0x1FF);
    }

    v11[0] = v7 + 8 * (result[4] >> 9);
    v11[1] = v8;
    v9 = sub_10047DD5C(v11, a2);
    return sub_10047E8CC(v3, v9, v10);
  }

  return result;
}

uint64_t *sub_10047E758(void *a1, unint64_t a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  v11 = a2 > v10;
  v12 = a2 - v10;
  if (v11)
  {
    sub_10047DA44(a1, v12);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v13 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v9 & 0x1FF);
    v15 = v14;
  }

  v28[0] = v13;
  v28[1] = v15;
  result = sub_10047DD5C(v28, a2);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = 0;
        v21 = *a3;
        v22 = (v19 - v14 - 8) >> 3;
        v23 = (v22 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v24 = vdupq_n_s64(v22);
        v25 = (v14 + 8);
        do
        {
          v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_1005615E0)));
          if (v26.i8[0])
          {
            *(v25 - 1) = v21;
          }

          if (v26.i8[4])
          {
            *v25 = v21;
          }

          v20 += 2;
          v25 += 2;
        }

        while (v23 != v20);
      }

      v18 += (v19 - v14) >> 3;
      if (v13 == result)
      {
        break;
      }

      v27 = v13[1];
      ++v13;
      v14 = v27;
    }

    while (v27 != v17);
    a1[5] = v18;
  }

  return result;
}

uint64_t sub_10047E8CC(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (v5 & 0x1FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 3) + ((v8 - a2) << 6);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 3);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 9));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 8 * (*(result + 32) & 0x1FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 3) + ((a2 - v13) << 6) - ((v14 - *v13) >> 3);
      }

      sub_10047DD5C(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_1001FC820(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *sub_10047E9C8(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_10047EBF4();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_10047EBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_10047EC98(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047EC7C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10047EC98(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10047EC98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 592);
    if (v3)
    {
      sub_10000AD84(v3);
    }

    *(a2 + 472) = off_1009991A0;
    sub_100188E54((a2 + 416));
    sub_100188E54((a2 + 352));
    v4 = (a2 + 240);
    sub_10018907C(&v4);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_10047ED28(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10047EF80(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10002074C((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_10047EFE0(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_10047F018(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_10047F018(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100021AE0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_10002074C((v3 + 3), v3[4]);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_10047F078(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_10047F0B0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_10047F0B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100021AE0(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_10047EC98(&v6, v3);
  }

  return v2;
}

uint64_t sub_10047F0FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100020E18(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10047F174(a1, i + 2);
  }

  return a1;
}

void *sub_10047F174(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_10047F3A0();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_10047F37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11)
{
  if (a10)
  {
    sub_10047EF80(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047F428(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10047EF80(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10047F444(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10047F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v6 = a2;
    do
    {
      sub_100498E54(a4);
      v6 += 144;
      a4 = v13 + 144;
      v13 += 144;
    }

    while (v6 != a3);
    v11 = 1;
    if (a2 != a3)
    {
      v7 = a2 + 16;
      do
      {
        sub_10002074C(v7, *(v7 + 8));
        v8 = v7 + 128;
        v7 += 144;
      }

      while (v8 != a3);
    }
  }

  return sub_10047F574(v10);
}

uint64_t sub_10047F574(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10047F5AC(a1);
  }

  return a1;
}

void sub_10047F5AC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 128;
    do
    {
      sub_10002074C(v3, *(v3 + 8));
      v4 = v3 - 16;
      v3 -= 144;
    }

    while (v4 != v2);
  }
}

void **sub_10047F5FC(void **a1)
{
  sub_10047F630(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10047F630(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_10002074C(i - 128, *(i - 120));
  }
}

uint64_t sub_10047F67C(uint64_t *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x1C71C71C71C71C7)
  {
    sub_100019B38();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v4 = 0x1C71C71C71C71C7;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_10047F444(a1, v4);
  }

  v11 = 0;
  v12 = 144 * v1;
  sub_100498E54(144 * v1);
  v13 = 144 * v1 + 144;
  v5 = a1[1];
  v6 = 144 * v1 + *a1 - v5;
  sub_10047F4A0(a1, *a1, v5, v6);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_10047F5FC(&v11);
  return v10;
}

void sub_10047F7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10047F5FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10047F7C4()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009F9348 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009F9338 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9338, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009F9360 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009F9350 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9350, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009F9378 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009F9368 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9368, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009F9390 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009F9380 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9380, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009F93A8 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009F9398 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9398, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009F93C0 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009F93B0 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F93B0, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009F93D8 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009F93C8 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F93C8, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009F93F0 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009F93E0 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F93E0, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009F9408 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009F93F8 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009F93F8, &_mh_execute_header);
}

void sub_10047FDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047FE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 1328);
  v6 = *(a2 + 1328);
  if (v5 >= v6 + 15)
  {
    goto LABEL_10;
  }

  v7 = a2;
  if (v6 >= v5 + 15)
  {
LABEL_11:
    v11 = a3;
    goto LABEL_12;
  }

  v8 = *(a1 + 1312);
  v9 = *(a2 + 1312);
  if (v8 >= v9 + 50.0)
  {
LABEL_10:
    v11 = a3;
    a2 = a1;
    goto LABEL_12;
  }

  if (v9 >= v8 + 50.0)
  {
    goto LABEL_11;
  }

  result = sub_100480074(a1, a2);
  if (!result)
  {
    *a3 = 0;
    a3[1480] = 0;
    return result;
  }

  if (*(a1 + 1328) >= *(v7 + 1328))
  {
    a2 = a1;
  }

  else
  {
    a2 = v7;
  }

  v11 = a3;
LABEL_12:

  return sub_10047FF48(v11, a2);
}

uint64_t sub_10047FF48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x1C8uLL);
  sub_10047DDC0(a1 + 464, a2 + 464);
  sub_10047E338(a1 + 552, a2 + 552);
  *(a1 + 880) = *(a2 + 880);
  sub_10047DDC0(a1 + 888, a2 + 888);
  sub_10047E338(a1 + 976, a2 + 976);
  v4 = *(a2 + 1304);
  v5 = *(a2 + 1336);
  *(a1 + 1320) = *(a2 + 1320);
  *(a1 + 1336) = v5;
  *(a1 + 1304) = v4;
  v6 = *(a2 + 1352);
  v7 = *(a2 + 1368);
  v8 = *(a2 + 1400);
  *(a1 + 1384) = *(a2 + 1384);
  *(a1 + 1400) = v8;
  *(a1 + 1352) = v6;
  *(a1 + 1368) = v7;
  v9 = *(a2 + 1416);
  v10 = *(a2 + 1432);
  v11 = *(a2 + 1464);
  *(a1 + 1448) = *(a2 + 1448);
  *(a1 + 1464) = v11;
  *(a1 + 1416) = v9;
  *(a1 + 1432) = v10;
  *(a1 + 1480) = 1;
  return a1;
}

void sub_100480014(_Unwind_Exception *a1)
{
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_100480074(uint64_t a1, uint64_t a2)
{
  sub_1004856CC(a1 + 8, a2 + 8);
  if (v3 < 40.0)
  {
    sub_100485E90(a1 + 8);
  }

  return 0;
}

uint64_t sub_1004800EC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 376) = 999;
  sub_1004993D8(a1 + 384);
  *(a1 + 560) = 0u;
  return a1;
}

void sub_10048017C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100188E54(v2);
  sub_10018907C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004801A0(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  v7 = (a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 376) = a2;
  sub_1004993D8(a1 + 384);
  *(a1 + 560) = *a4;
  v8 = a4[1];
  *(a1 + 568) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1004990BC(0, a2, v15);
  v9 = v15[9];
  v7[8] = v15[8];
  v7[9] = v9;
  v7[10] = v16[0];
  *(v7 + 169) = *(v16 + 9);
  v10 = v15[5];
  v7[4] = v15[4];
  v7[5] = v10;
  v11 = v15[7];
  v7[6] = v15[6];
  v7[7] = v11;
  v12 = v15[1];
  *v7 = v15[0];
  v7[1] = v12;
  v13 = v15[3];
  v7[2] = v15[2];
  v7[3] = v13;
  return a1;
}

void sub_1004802A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 568);
  if (v12)
  {
    sub_10000AD84(v12);
  }

  sub_1004D0C88(v9);
  sub_100188E54(v10);
  sub_10018907C(&a9);
  _Unwind_Resume(a1);
}

void sub_1004802E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 216);
  for (i = *(a1 + 224); v3 != i; v3 += 1480)
  {
    if (*(v3 + 1304) - 1 <= 1)
    {
      sub_1004927C4(v3 + 8, a2);
    }
  }

  sub_100480380(a1);
  if (*(a1 + 224) == *(a1 + 216))
  {

    sub_1004803FC(a1);
  }
}

uint64_t sub_100480380(uint64_t result)
{
  v2 = *(result + 216);
  v1 = result + 216;
  if (v2 != *(result + 224))
  {
    v3 = result;
    do
    {
      result = sub_100490D80(v2 + 8);
      if (result)
      {
        sub_100484E60(&v5, v2 + 1480, *(v3 + 224), v2);
        result = sub_1001890D0(v1, v4);
      }

      else
      {
        v2 += 1480;
      }
    }

    while (v2 != *(v3 + 224));
  }

  return result;
}

void sub_1004803FC(uint64_t a1)
{
  *a1 = 0;
  sub_1001890D0(a1 + 216, *(a1 + 216));
  *(a1 + 320) = 0;
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  *(a1 + 368) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 344);
      v2 = (*(a1 + 336) + 8);
      *(a1 + 336) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  *(a1 + 360) = v6;
}

BOOL sub_100480488(uint64_t a1, void *a2, void *a3)
{
  if (a2[1] == *a2)
  {
    v19 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004D0D1C(v19);
    return 0;
  }

  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0CC4();
  }

  if (!*(a1 + 16) && *(*a2 + 144) == 5)
  {
    *(a1 + 16) = 1;
    sub_1004990BC(1, *(a1 + 376), buf);
    v6 = v91;
    *(a1 + 152) = v90;
    *(a1 + 168) = v6;
    *(a1 + 184) = v92[0];
    *(a1 + 193) = *(v92 + 9);
    v7 = v87;
    *(a1 + 88) = v86;
    *(a1 + 104) = v7;
    v8 = v89;
    *(a1 + 120) = v88;
    *(a1 + 136) = v8;
    v9 = v83;
    *(a1 + 24) = *buf;
    *(a1 + 40) = v9;
    v10 = v85;
    *(a1 + 56) = v84;
    *(a1 + 72) = v10;
    if ((*(a1 + 208) & 1) == 0)
    {
      sub_1000195BC();
    }
  }

  v11 = *a2;
  if (*(*a2 + 145) == 1)
  {
    if (*a1 == 1)
    {
      v21 = a2[1];
      v22 = 168;
      if (v21 - v11 == 152)
      {
        v22 = 176;
      }

      v23 = 184;
      if (v21 - v11 == 152)
      {
        v23 = 192;
      }

      v24 = *(a1 + 216);
      v25 = *(a1 + 224);
      if (v25 != v24)
      {
        v26 = 0;
        v27 = *(a1 + 160);
        v28 = *(a1 + v22);
        v29 = *(a1 + v23);
        v30 = 0x86BCA1AF286BCA1BLL * ((v21 - v11) >> 3);
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v71 = v30;
        do
        {
          if (v21 == v11)
          {
            goto LABEL_44;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0.0;
          v34 = v71;
          do
          {
            v35 = COERCE_DOUBLE(sub_10048C074(*(a1 + 216) + 1480 * v26 + 8, a3, *a2 + v31));
            if ((v36 & 1) != 0 && v28 > v35)
            {
              if (v28 <= v27)
              {
                sub_1004D0CF0();
              }

              v37 = v29;
              if (v27 < v35)
              {
                v37 = 0.0;
                if (v28 >= v35)
                {
                  v37 = v29 + -v29 / (v28 - v27) * (v35 - v27);
                }
              }

              if (v37 > v33)
              {
                v33 = v37;
              }

              v32 = 1;
            }

            v31 += 152;
            --v34;
          }

          while (v34);
          if ((v32 & 1) == 0)
          {
LABEL_44:
            v33 = *(a1 + 200);
          }

          v24 = *(a1 + 216);
          *&v24[370 * v26++ + 330] = v33;
          v25 = *(a1 + 224);
        }

        while (0x9DC0588FE9DC0589 * ((v25 - v24) >> 3) > v26);
      }

      v38 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(*a2 + 8);
        *buf = 67109120;
        *&buf[4] = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionTrackingTargetSet internal state after measurement update of cycle_index %d of aiding channel:", buf, 8u);
        v24 = *(a1 + 216);
        v25 = *(a1 + 224);
      }

      if (v24 != v25)
      {
        v40 = 0;
        do
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            sub_100481A8C(v24);
          }

          ++v40;
          v24 += 370;
        }

        while (v24 != v25);
      }

      goto LABEL_96;
    }

    return 0;
  }

  if (!*(*a2 + 145))
  {
    v12 = a2[1];
    if ((*a1 & 1) == 0)
    {
      if (v12 != v11)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          *buf = 0;
          sub_1004834F8(&buf[8]);
          v93 = 0;
          v95 = 0;
          v96 = 0;
          v94 = 0;
          v97 = 0xFFFFFFFFLL;
          v98 = 0;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v43 = *(a1 + 320);
          *(a1 + 320) = v43 + 1;
          *buf = v43;
          sub_100491144(&buf[8], v11 + v41, a3);
          v93 = 1;
          v95 = 0;
          v96 = 0;
          v94 = 0;
          v97 = v42;
          v45 = *(v11 + v41 + 64);
          v44 = *(v11 + v41 + 72);
          *&v105 = *(v11 + v41 + 48);
          *(&v105 + 1) = v44;
          v106 = v45;
          sub_100481050(a1 + 216, buf);
          ++v42;
          v11 = *a2;
          v41 += 152;
        }

        while (0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3) > v42);
      }

      *a1 = 1;
      goto LABEL_89;
    }

    v13 = 0x86BCA1AF286BCA1BLL * ((v12 - v11) >> 3);
    v14 = v13 - 0x623FA7701623FA77 * ((*(a1 + 224) - *(a1 + 216)) >> 3);
    v79[0] = 0;
    sub_100172550(__p, v14);
    sub_100483E2C(buf, v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LOBYTE(v78[0]) = 0;
    sub_100483EE8(v79, v14);
    sub_100484164(__p, v13);
    if (v79[0])
    {
      operator delete(v79[0]);
    }

    v75 = 0x408F400000000000;
    sub_100172550(v78, v14);
    sub_100483E2C(v79, v13);
    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    *v80 = 0x408F400000000000;
    sub_100172550(&v75, v14);
    sub_100483E2C(v78, v13);
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    v75 = 0;
    v76 = 0;
    v77 = 0;
    sub_1004810B0(a1, a2, buf, __p, v79, v78, a3);
    sub_100481298(a1, buf, __p, &v75);
    v15 = (v76 - v75) >> 2;
    v16 = *a2;
    v17 = 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3);
    if (v15 == v17)
    {
      memset(v80, 0, 24);
      sub_100012F38(v80, *(v16 + 120), *(v16 + 128), (*(v16 + 128) - *(v16 + 120)) >> 3);
      if (*v80 == *&v80[8])
      {
        v18 = 0x3FC5604189374BC7;
      }

      else
      {
        v18 = *(*&v80[8] - 8);
      }

      v74 = v18;
      sub_100013A08(a1 + 328, &v74);
      v51 = *(a1 + 368);
      if (v51 > *(a1 + 24))
      {
        ++*(a1 + 360);
        *(a1 + 368) = v51 - 1;
        sub_1000139A8(a1 + 328, 1);
      }

      if (*v80 == *&v80[8])
      {
        sub_100172550(v72, 6uLL);
        sub_100481378(a1, a2, &v75, v79, v78, a3, v72);
        if (*v72)
        {
          v73 = *v72;
          operator delete(*v72);
        }
      }

      else
      {
        sub_100481378(a1, a2, &v75, v79, v78, a3, v80);
      }

      v52 = *(a1 + 368);
      if (v52 == *(a1 + 24))
      {
        v53 = *(a1 + 336);
        v54 = 0.0;
        if (*(a1 + 344) != v53)
        {
          v55 = *(a1 + 360);
          v56 = (v53 + 8 * (v55 >> 9));
          v57 = *v56;
          v58 = &(*v56)[v55 & 0x1FF];
          v59 = *(v53 + (((v55 + v52) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v55 + v52) & 0x1FF);
          while (v58 != v59)
          {
            v60 = *v58++;
            v61 = v60;
            if (v58 - v57 == 4096)
            {
              v62 = v56[1];
              ++v56;
              v57 = v62;
              v58 = v62;
            }

            v54 = v54 + v61;
          }
        }

        if (v54 / v52 > *(a1 + 32))
        {
          *a1 = 0;
          sub_1001890D0(a1 + 216, *(a1 + 216));
          *(a1 + 320) = 0;
          sub_100224500((a1 + 328));
          v63 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v72 = 0;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionTrackingTargetSet:: killed all tracking targets because detected in NFOV consistently", v72, 2u);
          }
        }
      }

      if (*v80)
      {
        *&v80[8] = *v80;
        operator delete(*v80);
      }

      goto LABEL_86;
    }

    *a1 = 0;
    sub_1001890D0(a1 + 216, *(a1 + 216));
    *(a1 + 320) = 0;
    v46 = *(a1 + 336);
    v47 = *(a1 + 344);
    *(a1 + 368) = 0;
    v48 = (v47 - v46) >> 3;
    if (v48 >= 3)
    {
      do
      {
        operator delete(*v46);
        v49 = *(a1 + 344);
        v46 = (*(a1 + 336) + 8);
        *(a1 + 336) = v46;
        v48 = (v49 - v46) >> 3;
      }

      while (v48 > 2);
    }

    if (v48 == 1)
    {
      v50 = 256;
    }

    else
    {
      if (v48 != 2)
      {
        goto LABEL_84;
      }

      v50 = 512;
    }

    *(a1 + 360) = v50;
LABEL_84:
    v64 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v70 = 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3);
      *v80 = 134218240;
      *&v80[4] = (v76 - v75) >> 2;
      *&v80[12] = 2048;
      *&v80[14] = v70;
      _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "#sf,RoseSensorFusionTrackingTargetSet error: assignmentVec size is %zu, measurement size is %zu, reset state", v80, 0x16u);
    }

LABEL_86:
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    v75 = v78;
    sub_1001674A8(&v75);
    v78[0] = v79;
    sub_1001674A8(v78);
    v79[0] = __p;
    sub_10048443C(v79);
    __p[0] = buf;
    sub_1001674A8(__p);
    if (v15 == v17)
    {
LABEL_89:
      v65 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *(*a2 + 8);
        *buf = 67109120;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionTrackingTargetSet internal state after measurement update of cycle_index %d of primary channel:", buf, 8u);
      }

      v67 = *(a1 + 216);
      v68 = *(a1 + 224);
      if (v67 != v68)
      {
        v69 = 0;
        do
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            sub_100481A8C(v67);
          }

          ++v69;
          v67 += 370;
        }

        while (v67 != v68);
      }

      goto LABEL_96;
    }

    return 0;
  }

LABEL_96:
  sub_100480380(a1);
  if (*(a1 + 224) == *(a1 + 216))
  {
    sub_1004803FC(a1);
  }

  return 1;
}

void sub_100480F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char ****a16, char ****a17, uint64_t a18, char ***a19, uint64_t a20, uint64_t a21, char **a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a19;
  sub_1001674A8(&a16);
  a19 = &a22;
  sub_1001674A8(&a19);
  a22 = &a29;
  sub_10048443C(&a22);
  a29 = &a33;
  sub_1001674A8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100481050(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100483830(a1, a2);
  }

  else
  {
    sub_10048397C(a1, *(a1 + 8), a2);
    result = v3 + 1480;
    *(a1 + 8) = v3 + 1480;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1004810B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0D60();
  }

  v7 = a3[1] - *a3;
  if (!v7 || (v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3), v9 = (*(*a3 + 8) - **a3) >> 3, v10 = v9 - v8, v9 <= v8))
  {
    sub_1004D0DB8();
  }

  v12 = 0;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v25 = v8;
  v13 = v10;
  v14 = a3;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = 8;
    do
    {
      if (v10 <= v16)
      {
        if (v13 == v16)
        {
          *(*(*a4 + 24 * v12) + 8 * ((v10 + v12) >> 6)) |= 1 << (v10 + v12);
          v23 = *(a1 + 56);
          if (v23 <= 0.0)
          {
            sub_1004D0D8C();
          }

          v24 = log(v23);
          a3 = v14;
          *(*(*v14 + 24 * v12) + 8 * (v10 + v12)) = v24;
        }
      }

      else
      {
        v18 = sub_100482628(a1, *a2 + 152 * v12, *(a1 + 216) + v17, *(*a3 + 24 * v12) + v15, *(*a5 + 24 * v12) + v15, *(*a6 + 24 * v12) + v15, a7);
        v19 = *(*a4 + 24 * v12);
        v20 = v16 >> 6;
        v21 = 1 << v16;
        if (v18)
        {
          v22 = *(v19 + 8 * v20) | v21;
        }

        else
        {
          v22 = *(v19 + 8 * v20) & ~v21;
        }

        *(v19 + 8 * v20) = v22;
        a3 = v14;
      }

      ++v16;
      v17 += 1480;
      v15 += 8;
    }

    while (v9 != v16);
    ++v12;
    ++v13;
  }

  while (v12 != v25);
}

void sub_100481298(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100484A64(v7, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v11 = 0xC1CDCD6500000000;
  sub_1004829BC(a1, a2, v7, a4, &__p, 0, &v11, 0.0);
  v11 = v7;
  sub_10048443C(&v11);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_100481350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_10048443C((v15 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100481378(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2[1] == *a2)
  {
    sub_1004D0E10();
  }

  v7 = a1;
  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0DE4();
  }

  v11 = *(a1 + 216);
  v12 = *(a1 + 224);
  v13 = (a1 + 216);
  v14 = 0x9DC0588FE9DC0589 * ((v12 - v11) >> 3);
  LOBYTE(v65) = 0;
  sub_100483EE8(&__p, v14);
  if (v12 != v11)
  {
    v15 = *v13;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x9DC0588FE9DC0589 * ((v12 - v11) >> 3);
    }

    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v16 - 1);
    v19 = xmmword_1005615D0;
    v20 = xmmword_1005615E0;
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v22, *v18.i8).u8[0])
      {
        v15[334] = -1;
      }

      if (vuzp1_s16(v22, *&v18).i8[2])
      {
        v15[704] = -1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        v15[1074] = -1;
        v15[1444] = -1;
      }

      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v15 += 1480;
      v17 -= 4;
    }

    while (v17);
  }

  v58 = v12;
  v59 = v11;
  v23 = *a3;
  if (a3[1] != *a3)
  {
    v24 = 0;
    v60 = v7;
    v64 = a2;
    do
    {
      v25 = *(v23 + 4 * v24);
      if (v14 > v25)
      {
        v26 = *v13;
        v27 = a2;
        v28 = &v26[370 * v25];
        v88 = 0x100000003;
        v87 = xmmword_10056EDA0;
        v86 = off_1009A8F78;
        v89 = &v90;
        v67 = 0x300000003;
        v65 = off_1009A8FC0;
        v66 = xmmword_10056EDB0;
        v68 = v69;
        if (sub_10048AE14(v28 + 8, &v86, &v65, a6, *v27 + 152 * v24))
        {
          sub_1003BBC24(v85, &v86);
          v29 = a6;
          sub_1003BBDB4(&v84, &v65);
          v30 = 0;
          v31 = &v92;
          do
          {
            for (i = 0; i != 3; ++i)
            {
              *(v31 + i) = *sub_1003A8DB0(&v84, v30, i);
            }

            ++v30;
            v31 = (v31 + 24);
          }

          while (v30 != 3);
          v33 = *sub_1003AFDBC(v85, 0);
          v34 = sub_1003AFDBC(v85, 1u);
          v35 = sub_1000422D4(*v34);
          v36 = sub_1003AFDBC(v85, 2u);
          v37 = sub_1000422D4(*v36);
          v38 = v94;
          v39 = v95;
          v99 = v94;
          v100 = v95;
          v40 = v96;
          v101 = v96;
          v41 = v93;
          v42 = v92;
          v97 = v92;
          v98 = v93;
          *(v28 + 1344) = 1;
          *(v28 + 1352) = v33;
          *(v28 + 1360) = v35;
          *(v28 + 1368) = v37;
          *(v28 + 1392) = v41;
          *(v28 + 1408) = v38;
          *(v28 + 1424) = v39;
          *(v28 + 1440) = v40;
          *(v28 + 1376) = v42;
          v84 = off_1009991A0;
          v85[0] = off_1009991A0;
          a6 = v29;
          v7 = v60;
        }

        else
        {
          *(v28 + 1440) = 0;
          *(v28 + 1424) = 0u;
          *(v28 + 1408) = 0u;
          *(v28 + 1392) = 0u;
          *(v28 + 1376) = 0u;
          *(v28 + 1360) = 0u;
          *(v28 + 1344) = 0u;
        }

        sub_100491144(v28 + 8, *v64 + 152 * v24, a6);
        v47 = sub_1000422D4(*(*v64 + 152 * v24 + 72));
        v48 = sub_1000422D4(*(*v64 + 152 * v24 + 64));
        v49 = sub_100482BBC(v7, a7, v47, v48);
        v50 = *(*(*a4 + 24 * v24) + 8 * v25);
        v51 = v49 * (5.0 - log(sqrt(*(*(*a5 + 24 * v24) + 8 * v25))) + v50 * -0.5) + *(v7 + 64) * *(v28 + 1312);
        *(v28 + 1312) = v51;
        v52 = *(v28 + 1320);
        if (v52 != 0.0)
        {
          v51 = v52 + v51;
          *(v28 + 1312) = v51;
          *(v28 + 1320) = 0;
        }

        v53 = *(v7 + 96);
        if (v51 > v53)
        {
          *(v28 + 1312) = v53;
        }

        ++*(v28 + 1328);
        *(v28 + 1336) = v24;
        *(v28 + 1340) = 0;
        sub_1004830A8(v28);
      }

      LODWORD(v65) = 0;
      sub_1004834F8(&v66);
      v75 = 0;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v69[1264] = 1;
      v70 = 0;
      v71 = 0;
      v43 = *(v7 + 320);
      *(v7 + 320) = v43 + 1;
      LODWORD(v65) = v43;
      v72 = 0;
      v73 = v24;
      v74 = 0;
      sub_100491144(&v66, *a2 + 152 * v24, a6);
      v44 = (*a2 + 152 * v24);
      v46 = v44[8];
      v45 = v44[9];
      *&v82 = v44[6];
      *(&v82 + 1) = v45;
      v83 = v46;
      sub_100481050(v13, &v65);
      ++v24;
      v23 = *a3;
    }

    while (v24 < (a3[1] - *a3) >> 2);
  }

  if (v58 != v59)
  {
    v54 = 0;
    if (v14 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v14;
    }

    v56 = 1344;
    do
    {
      if (((*(__p + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        v57 = *(v7 + 216) + v56;
        *(v57 - 32) = *(v7 + 72) + *(v57 - 32);
        ++*(v57 - 16);
        ++*(v57 - 4);
        sub_100498E58(v57);
      }

      ++v54;
      v56 += 1480;
    }

    while (v55 != v54);
  }

  sub_10048319C(v7);
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_1004819FC(_Unwind_Exception *a1)
{
  if (STACK[0x740])
  {
    operator delete(STACK[0x740]);
  }

  _Unwind_Resume(a1);
}

void sub_100481A8C(unsigned int *a1)
{
  sub_100193120(&v21);
  sub_10000EA44(&v22, "tid: ", 5);
  v2 = *a1;
  v3 = std::ostream::operator<<();
  sub_10000EA44(v3, ", ", 2);
  v4 = sub_10000EA44(&v22, "status: ", 8);
  sub_100498E70(*(a1 + 1304), __p);
  if ((v20 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v6 = v20;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10000EA44(v4, v5, v6);
  sub_10000EA44(v7, ", ", 2);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EA44(&v22, "track score: ", 13);
  v8 = *(a1 + 164);
  v9 = std::ostream::operator<<();
  sub_10000EA44(v9, ", ", 2);
  sub_10000EA44(&v22, "score delta: ", 13);
  v10 = *(a1 + 165);
  v11 = std::ostream::operator<<();
  sub_10000EA44(v11, ", ", 2);
  sub_10000EA44(&v22, "track epochs count: ", 20);
  v12 = *(a1 + 166);
  v13 = std::ostream::operator<<();
  sub_10000EA44(v13, ", ", 2);
  sub_10000EA44(&v22, "assigned measurement: ", 22);
  v14 = a1[334];
  v15 = std::ostream::operator<<();
  sub_10000EA44(v15, ", ", 2);
  sub_10000EA44(&v22, "missed count: ", 14);
  v16 = a1[335];
  v17 = std::ostream::operator<<();
  sub_10000EA44(v17, ", ", 2);
  v18 = v22;
  *(&v22 + *(v22 - 24) + 8) = *(&v22 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v22 + *(v18 - 24) + 16) = 2;
  sub_10000EA44(&v22, "az: ", 4);
  sub_100485E90((a1 + 2));
}

void sub_100481E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100481EC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0E3C();
  }

  v4 = 0;
  v5 = *(a1 + 8);
  v51[0] = 0;
  v51[1] = v5;
  memset(v53, 0, sizeof(v53));
  v52 = v53;
  v54 = 8;
  *a2 = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 312) == 1)
  {
    *(a1 + 312) = 0;
    v4 = 1;
  }

  if (*(a1 + 384) == 1)
  {
    v6 = qword_1009F9820;
    v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    v8 = 0;
    if (!v7)
    {
      goto LABEL_8;
    }

    *buf = 134217984;
    v56[0] = v5;
    v9 = "#sf,sensor fusion report is locked, no sensor fusion solution for target 0x%llx";
    goto LABEL_7;
  }

  v10 = *(a1 + 368);
  if (v10 == *(a1 + 24))
  {
    v11 = *(a1 + 336);
    v12 = 0.0;
    if (*(a1 + 344) != v11)
    {
      v13 = *(a1 + 360);
      v14 = (v11 + 8 * (v13 >> 9));
      v15 = *v14;
      v16 = &(*v14)[v13 & 0x1FF];
      v17 = *(v11 + (((v13 + v10) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v13 + v10) & 0x1FF);
      while (v16 != v17)
      {
        v18 = *v16++;
        v19 = v18;
        if (v16 - v15 == 4096)
        {
          v20 = v14[1];
          ++v14;
          v15 = v20;
          v16 = v20;
        }

        v12 = v12 + v19;
      }
    }

    if (v12 / v10 > *(a1 + 40))
    {
      v6 = qword_1009F9820;
      v21 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      v8 = 0;
      if (!v21)
      {
LABEL_8:
        *(a2 + 152) = v5;
        *(a2 + 160) = v4;
        *(a2 + 168) = 0;
        *(a2 + 176) = 0;
        *(a2 + 184) = 0;
        *(a2 + 192) = 0;
        if (v8)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      *buf = 134217984;
      v56[0] = v5;
      v9 = "#sf,average p6 is above threshold, no sensor fusion solution for target 0x%llx";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      v8 = *(a2 + 200);
      goto LABEL_8;
    }
  }

  v22 = *(a1 + 216);
  v23 = *(a1 + 224);
  v24 = v23 - v22;
  if (v23 == v22)
  {
    goto LABEL_38;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x9DC0588FE9DC0589 * (v24 >> 3);
  v29 = v28 <= 1 ? 1 : v28;
  v30 = (v22 + 1328);
  v31 = -1;
  v32 = -1;
  do
  {
    if (*(v30 - 24) == 2)
    {
      if (*v30 > v26)
      {
        v26 = *v30;
        v31 = v25;
      }

      if (*v30 > v27)
      {
        v26 = v27;
        v27 = *v30;
        v31 = v32;
        v32 = v25;
      }
    }

    ++v25;
    v30 += 185;
  }

  while (v29 != v25);
  if (v32 == -1)
  {
LABEL_38:
    *(a2 + 152) = v5;
    *(a2 + 160) = v4;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    goto LABEL_39;
  }

  v33 = v22 + 1480 * v32;
  if (v31 != -1)
  {
    sub_10047FE68(v33, v22 + 1480 * v31, buf);
    if (v59 == 1)
    {
      sub_100490D88(v56 + 4, v51);
      v34 = *(&v56[163] + 4);
      v35 = *buf;
      v36 = v51[0];
      v37 = *&v53[1];
      v38 = *(&v53[1] + 8);
      v39 = v57 != -1;
      if ((*(a1 + 296) & 1) == 0)
      {
        *(a1 + 296) = 1;
      }

      v40 = v58;
      *(a1 + 240) = v35;
      *(a1 + 248) = v36;
      *(a1 + 256) = v37;
      *(a1 + 264) = vextq_s8(v38, v38, 8uLL);
      *(a1 + 280) = v34;
      *(a1 + 288) = v39;
      sub_1004823E8(a2, v51);
      v41 = *(a2 + 200);
      *(a2 + 152) = v5;
      *(a2 + 160) = v4;
      *(a2 + 168) = v34;
      *(a2 + 176) = 1;
      *(a2 + 184) = v40;
      *(a2 + 192) = 1;
      if (v41)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v50 = *(a2 + 200);
      *(a2 + 152) = v5;
      *(a2 + 160) = v4;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 192) = 0;
      if (v50)
      {
        goto LABEL_47;
      }
    }

    *(a2 + 200) = 1;
LABEL_47:
    if (v59 == 1)
    {
      *(&v56[121] + 4) = off_1009991A0;
      *(&v56[110] + 4) = off_1009991A0;
      *(&v56[68] + 4) = off_1009991A0;
    }

    goto LABEL_40;
  }

  sub_100490D88(v33 + 8, v51);
  v42 = *(v33 + 1312);
  v43 = *(v33 + 1472);
  v44 = *v33;
  v45 = v51[0];
  v46 = *&v53[1];
  v47 = *(&v53[1] + 8);
  v48 = *(v33 + 1336) != -1;
  if ((*(a1 + 296) & 1) == 0)
  {
    *(a1 + 296) = 1;
  }

  *(a1 + 240) = v44;
  *(a1 + 248) = v45;
  *(a1 + 256) = v46;
  *(a1 + 264) = vextq_s8(v47, v47, 8uLL);
  *(a1 + 280) = v42;
  *(a1 + 288) = v48;
  sub_1004823E8(a2, v51);
  v49 = *(a2 + 200);
  *(a2 + 152) = v5;
  *(a2 + 160) = v4;
  *(a2 + 168) = v42;
  *(a2 + 176) = 1;
  *(a2 + 184) = v43;
  *(a2 + 192) = 1;
  if ((v49 & 1) == 0)
  {
LABEL_39:
    *(a2 + 200) = 1;
  }

LABEL_40:
  sub_10002074C(&v52, *&v53[0]);
}

void sub_1004823A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (*(v12 + 144) == 1)
  {
    sub_10002074C(v12 + 16, *(v12 + 24));
  }

  sub_10002074C(v13 + 16, a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004823E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == 1)
  {
    *a1 = *a2;
    if (a1 != a2)
    {
      sub_10018A09C((a1 + 16), *(a2 + 16), (a2 + 24));
    }

    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a1 + 40) = v4;
    v6 = *(a2 + 88);
    v7 = *(a2 + 104);
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    *(a1 + 104) = v7;
    *(a1 + 88) = v6;
  }

  else
  {
    sub_100498E54(a1);
    *(a1 + 144) = 1;
  }

  return a1;
}

double sub_10048248C(uint64_t a1)
{
  v2 = *(a1 + 216);
  v1 = *(a1 + 224);
  if (v1 == v2)
  {
    return 0.0;
  }

  result = *(v2 + 880);
  do
  {
    if (*(v2 + 880) < result)
    {
      result = *(v2 + 880);
    }

    v2 += 1480;
  }

  while (v2 != v1);
  return result;
}

uint64_t sub_1004824C0(uint64_t result)
{
  v1 = *(result + 216);
  v2 = 0.0;
  while (v1 != *(result + 224))
  {
    if (*(v1 + 880) > v2)
    {
      v2 = *(v1 + 880);
    }

    v1 += 1480;
  }

  return result;
}

uint64_t sub_1004824E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 216);
  v4 = *(result + 224);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 != v3)
  {
    if (*(v3 + 1344) == 1)
    {
      v6 = *(v3 + 1360);
      v7 = *(v3 + 1376);
      v5 = *(v3 + 1344);
      v11 = *(v3 + 1440);
      v9 = *(v3 + 1408);
      v10 = *(v3 + 1424);
      v8 = *(v3 + 1392);
    }

    sub_10047CF38(v3 + 8);
  }

  return result;
}

void sub_10048260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10018AE10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100482628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0E68();
  }

  v21 = 0x100000003;
  v20 = xmmword_10056EDA0;
  v19 = off_1009A8F78;
  v22 = &v23;
  v16 = 0x300000003;
  v15 = xmmword_10056EDB0;
  v14 = off_1009A8FC0;
  v17 = &v18;
  result = sub_10048AE14(a3, &v19, &v14, a7, a2);
  if (result)
  {
    sub_100484C08(v13, DWORD1(v20), v20);
    sub_1003A9464(&v19, v13);
    v10 = 0x300000003;
    v9 = xmmword_10056EDB0;
    v8 = off_1009A8FC0;
    v11 = &v12;
    v31 = 0x100000003;
    v30 = xmmword_10056EDA0;
    v29 = off_1009A9098;
    v32 = &v33;
    v26 = 0x10000000CLL;
    v25 = xmmword_10056EDD0;
    v24 = off_1009A9120;
    v27 = &v28;
    sub_1003A9CA4(&v14, &v29, &v24, &v8);
  }

  return result;
}

void sub_1004829BC(uint64_t a1, uint64_t a2, void *a3, char **a4, char **a5, int a6, double *a7, double a8)
{
  v8 = *a2;
  v9 = *(a2 + 8) - *a2;
  if (v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v9 >> 3) <= a6)
    {
      if (*a7 < a8)
      {
        *a7 = a8;
        if (a4 != a5)
        {
          v26 = *a5;
          v27 = a5[1];
          v28 = (v27 - *a5) >> 2;

          sub_10037E4CC(a4, v26, v27, v28);
        }
      }
    }

    else
    {
      v15 = *v8;
      v14 = v8[1];
      v29 = 0;
      if (v14 != v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = (v14 - v15) >> 3;
        do
        {
          if ((*(*(*a3 + 24 * a6) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19))
          {
            v22 = *a5;
            v23 = a5[1];
            if (*a5 != v23)
            {
              while (*v22 != v20)
              {
                v22 += 4;
                if (v22 == v23)
                {
                  goto LABEL_11;
                }
              }
            }

            if (v22 == v23)
            {
LABEL_11:
              v24 = a8 + *(v8[3 * a6] + 8 * v19);
              sub_1002856D8(a5, &v29);
              sub_1004829BC(a1, a2, a3, a4, a5, (a6 + 1), a7, v24);
              v8 = *a2;
              v20 = v29;
              a8 = v24 - *(*(*a2 + 24 * a6) + 8 * v29);
              a5[1] -= 4;
            }
          }

          v29 = ++v20;
          v19 = v20;
        }

        while (v21 > v20);
      }
    }
  }

  else
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004D0EC0(v25);
    }
  }
}

double sub_100482BBC(uint64_t a1, void *a2, double a3, double a4)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    sub_1004D0F04();
  }

  v49 = 0.0;
  v50 = 0.0;
  sub_100042420(&v50, &v49, a3, a4);
  if (v50 < 0.0 || v50 > 180.0 || v49 < 0.0 || v49 > 180.0)
  {
    sub_1004D0F5C();
  }

  if (a2[1] - *a2 != 48)
  {
    sub_1004D0F30();
  }

  if (!*(a1 + 376) && a4 >= -60.0 && fabs(a3) <= 10.0 && a4 <= 0.0 && *(*a2 + 40) > 0.7)
  {
    v36 = qword_1009F9820;
    v37 = 1.7;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = 0x3FFB333333333333;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#sf,AoA is in golden area, use default scale factor %f and ignore neural network probability", &buf, 0xCu);
    }

    return v37;
  }

  v8 = *(a1 + 104);
  v9 = v50 - v8;
  if (v50 - v8 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v50 + v8;
  if (v50 + v8 > 180.0)
  {
    v10 = 180.0;
  }

  __p = *&v9;
  v55 = v10;
  v58 = 0;
  buf = 0uLL;
  sub_100019AC4(&buf, &__p, &v56, 2uLL);
  v11 = v49 - v8;
  if (v49 - v8 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = v8 + v49;
  if (v8 + v49 > 180.0)
  {
    v12 = 180.0;
  }

  v51 = v11;
  v52 = v12;
  v55 = 0.0;
  v56 = 0;
  __p = 0;
  sub_100019AC4(&__p, &v51, &v53, 2uLL);
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0;
  __src = 0;
  v47 = 0;
  v48 = 0;
  v14 = *(&buf + 1);
  v13 = buf;
  if (buf == *(&buf + 1))
  {
    v20 = 0;
  }

  else
  {
    do
    {
      v15 = __p;
      v16 = *&v55;
      if (__p != *&v55)
      {
        v17 = *v13;
        do
        {
          v18 = *(a1 + 560);
          if (v18)
          {
            v19 = sub_100172014(v18, v17, *v15);
            v44 = v19;
            v45 = BYTE4(v19);
            if ((v19 & 0x100000000) != 0)
            {
              sub_1002856D8(&v51, &v44);
            }
          }

          ++v15;
        }

        while (v15 != v16);
      }

      ++v13;
    }

    while (v13 != v14);
    v20 = *&v51;
    v21 = *&v52;
    if (*&v51 != *&v52)
    {
      do
      {
        v22 = *v20;
        if ((v22 - 7) <= 0xFFFFFFF9)
        {
          __assert_rtn("getAoaScaleFactor", "RoseSensorFusionTrackingTargetSet.cpp", 750, "region > 0 && region <= kNumberOfRegions");
        }

        v23 = *a2 + 8 * v22;
        v24 = v47;
        if (v47 >= v48)
        {
          v26 = __src;
          v27 = v47 - __src;
          v28 = (v47 - __src) >> 3;
          v29 = v28 + 1;
          if ((v28 + 1) >> 61)
          {
            sub_100019B38();
          }

          v30 = v48 - __src;
          if ((v48 - __src) >> 2 > v29)
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
            sub_100012564(&__src, v31);
          }

          v32 = (8 * v28);
          v33 = *(v23 - 8);
          v34 = &v32[-((v47 - __src) >> 3)];
          *v32 = v33;
          v25 = (v32 + 1);
          memcpy(v34, v26, v27);
          v35 = __src;
          __src = v34;
          v47 = v25;
          v48 = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v47 = *(v23 - 8);
          v25 = v24 + 8;
        }

        v47 = v25;
        ++v20;
      }

      while (v20 != v21);
      v20 = *&v51;
    }
  }

  if (*&v52 == v20)
  {
    v41 = 0.0;
LABEL_58:
    v37 = *(a1 + 120) + *(a1 + 112) * v41;
    goto LABEL_59;
  }

  v38 = (*&v52 - v20) >> 2;
  v39 = __src;
  if (v38 <= 1)
  {
    v38 = 1;
  }

  v40 = -1;
  v41 = 0.0;
  v42 = v20;
  do
  {
    if (*v39 > v41)
    {
      v40 = *v42;
      v41 = *v39;
    }

    ++v42;
    ++v39;
    --v38;
  }

  while (v38);
  if (v40 != 2)
  {
    goto LABEL_58;
  }

  if (v41 <= *(a1 + 128))
  {
    if (v41 > *(a1 + 144))
    {
      v37 = *(a1 + 152);
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v37 = *(a1 + 136);
LABEL_59:
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
    v20 = *&v51;
  }

  if (v20)
  {
    v52 = *&v20;
    operator delete(v20);
  }

  if (__p)
  {
    v55 = *&__p;
    operator delete(__p);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return v37;
}

void sub_100483044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004830A8(uint64_t a1)
{
  v2 = *(a1 + 1464);
  __sincos_stret(*(a1 + 1456));
  __sincos_stret(v2);
  sub_100485CFC(a1 + 8);
}

uint64_t sub_10048319C(uint64_t result)
{
  if ((*(result + 208) & 1) == 0)
  {
    sub_1004D0F88();
  }

  v1 = result;
  v4 = *(result + 216);
  v2 = *(result + 224);
  v3 = result + 216;
  while (v4 != v2)
  {
    v5 = *(v4 + 1312);
    if (v5 < *(v1 + 88) || *(v4 + 1340) >= *(v1 + 28))
    {
      sub_100484E60(&v8, v4 + 1480, v2, v4);
      result = sub_1001890D0(v3, v7);
      v2 = *(v1 + 224);
    }

    else
    {
      if (v5 < *(v1 + 80))
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(v4 + 1304) = v6;
      v4 += 1480;
    }
  }

  return result;
}

void sub_100483248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x100000003;
  v3 = off_1009A9098;
  v4 = xmmword_10056EDA0;
  v6 = &v7;
  v10 = 0x300000003;
  v9 = xmmword_10056EDB0;
  v8 = off_1009A8FC0;
  v11 = &v12;
  sub_100484CD4(a3, &v3, &v8);
}

uint64_t sub_1004834F8(uint64_t a1)
{
  *a1 = 0x3200000032;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = xmmword_10089D840;
  *(a1 + 120) = 0x3FDA6B5764E3D198;
  *(a1 + 128) = xmmword_10089D858;
  *(a1 + 144) = 0x3FB144BFB34BD977;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = xmmword_10089D840;
  *(a1 + 264) = 0x3FDA6B5764E3D198;
  *(a1 + 272) = xmmword_10089D858;
  *(a1 + 288) = 0x3FB144BFB34BD977;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = xmmword_10089D840;
  *(a1 + 408) = 0x3FDA6B5764E3D198;
  *(a1 + 432) = 0x3FB144BFB34BD977;
  *(a1 + 416) = xmmword_10089D858;
  *(a1 + 440) = 8;
  *(a1 + 444) = 0;
  v2 = a1 + 456;
  *(a1 + 480) = 0x100000006;
  *(a1 + 448) = 0;
  *(a1 + 456) = off_1009ACDD0;
  *(a1 + 464) = xmmword_10089D7C0;
  *(a1 + 488) = a1 + 496;
  sub_1003A8C00((a1 + 456), 6, 1);
  sub_1003A8C50(v2, 0.0);
  *(a1 + 568) = 0x600000006;
  *(a1 + 544) = off_1009ACD88;
  *(a1 + 552) = xmmword_10089D7B0;
  *(a1 + 576) = a1 + 584;
  sub_1003A8C00((a1 + 544), 6, 6);
  sub_1003A8C50(a1 + 544, 0.0);
  for (i = 0; i != 6; ++i)
  {
    *sub_1003A9F6C(a1 + 544, i, i) = 0x3FF0000000000000;
  }

  *(a1 + 872) = 0;
  *(a1 + 904) = 0x100000006;
  *(a1 + 880) = off_1009ACDD0;
  *(a1 + 888) = xmmword_10089D7C0;
  *(a1 + 912) = a1 + 920;
  sub_1003A8C00((a1 + 880), 6, 1);
  sub_1003A8C50(a1 + 880, 0.0);
  *(a1 + 992) = 0x600000006;
  *(a1 + 968) = off_1009ACD88;
  *(a1 + 976) = xmmword_10089D7B0;
  *(a1 + 1000) = a1 + 1008;
  sub_1003A8C00((a1 + 968), 6, 6);
  sub_1003A8C50(a1 + 968, 0.0);
  for (j = 0; j != 6; ++j)
  {
    *sub_1003A9F6C(a1 + 968, j, j) = 0x3FF0000000000000;
  }

  return a1;
}

void sub_1004837A8(_Unwind_Exception *a1)
{
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_100483830(uint64_t a1, uint64_t a2)
{
  v2 = 0x9DC0588FE9DC0589 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2C47F4EE02C47FLL)
  {
    sub_100019B38();
  }

  if (0x3B80B11FD3B80B12 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x3B80B11FD3B80B12 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x9DC0588FE9DC0589 * ((*(a1 + 16) - *a1) >> 3) >= 0x1623FA7701623FLL)
  {
    v6 = 0x2C47F4EE02C47FLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100483AA4(a1, v6);
  }

  v13 = 0;
  v14 = 1480 * v2;
  sub_10048397C(a1, 1480 * v2, a2);
  v15 = 1480 * v2 + 1480;
  v7 = *(a1 + 8);
  v8 = 1480 * v2 + *a1 - v7;
  sub_100483B00(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100483D40(&v13);
  return v12;
}

void sub_100483968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100483D40(va);
  _Unwind_Resume(a1);
}

__n128 sub_10048397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  memcpy((a2 + 8), (a3 + 8), 0x1C8uLL);
  sub_10047DDC0(a2 + 464, a3 + 464);
  sub_10047E338(a2 + 552, a3 + 552);
  *(a2 + 880) = *(a3 + 880);
  sub_10047DDC0(a2 + 888, a3 + 888);
  sub_10047E338(a2 + 976, a3 + 976);
  v5 = *(a3 + 1304);
  v6 = *(a3 + 1336);
  *(a2 + 1320) = *(a3 + 1320);
  *(a2 + 1336) = v6;
  *(a2 + 1304) = v5;
  v7 = *(a3 + 1352);
  v8 = *(a3 + 1368);
  v9 = *(a3 + 1400);
  *(a2 + 1384) = *(a3 + 1384);
  *(a2 + 1400) = v9;
  *(a2 + 1352) = v7;
  *(a2 + 1368) = v8;
  result = *(a3 + 1416);
  v11 = *(a3 + 1432);
  v12 = *(a3 + 1464);
  *(a2 + 1448) = *(a3 + 1448);
  *(a2 + 1464) = v12;
  *(a2 + 1416) = result;
  *(a2 + 1432) = v11;
  return result;
}

void sub_100483A44(_Unwind_Exception *a1)
{
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100483AA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2C47F4EE02C480)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100483B00(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_10048397C(a1, a4, v7);
      v7 += 1480;
      a4 = v13 + 1480;
      v13 += 1480;
    }

    while (v7 != a3);
    v11 = 1;
    if (v5 != a3)
    {
      v8 = v5 + 122;
      do
      {
        v5[122] = off_1009991A0;
        v5[111] = off_1009991A0;
        v5[69] = off_1009991A0;
        v5[58] = off_1009991A0;
        v5 += 185;
        v8 += 185;
      }

      while (v5 != a3);
    }
  }

  return sub_100483C4C(v10);
}

uint64_t sub_100483C4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100483C84(a1);
  }

  return a1;
}

uint64_t sub_100483C84(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1016;
    do
    {
      *(v1 - 504) = off_1009991A0;
      *(v1 - 592) = off_1009991A0;
      *(v1 - 928) = off_1009991A0;
      *(v1 - 1016) = off_1009991A0;
      v3 -= 1480;
      v1 -= 1480;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_100483D40(uint64_t a1)
{
  sub_100483D78(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100483D78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = v2 - 1016;
    do
    {
      v4 = (v2 - 504);
      v5 = (v2 - 592);
      v6 = (v2 - 928);
      v7 = (v2 - 1016);
      v2 -= 1480;
      *v4 = off_1009991A0;
      *v5 = off_1009991A0;
      *v6 = off_1009991A0;
      *v7 = off_1009991A0;
      v3 -= 1480;
    }

    while (v2 != a2);
    *(result + 16) = v2;
  }

  return result;
}

void *sub_100483E2C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100167BC4(result, a2);
  }

  return result;
}

void *sub_100483EE8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100483FBC(result, a2);
  }

  return result;
}

void sub_100483FBC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_100012564(a1, v2);
  }

  sub_100019B38();
}

void *sub_100484000(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_1004840B4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *sub_100484164(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100484210(result, a2);
  }

  return result;
}

void sub_100484210(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10048425C(a1, a2);
  }

  sub_100019B38();
}

void sub_10048425C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_1004842B4(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_100483FBC(result, v2);
  }

  return result;
}

void sub_100484310(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_100484398(a2, a3, a4, a5, &v11, v13);
}

void sub_100484398(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void sub_10048443C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100484490(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100484490(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1004844D8(uint64_t a1, int *a2, uint64_t a3, char *a4, double *a5, double *a6, uint64_t *a7, int *a8, int *a9, __int128 *a10)
{
  v11 = *(a1 + 8);
  result = sub_1004846DC(v11, *a2, a3, *a4, *a7, *a8, *a9, a10, *a5, *a6);
  *(a1 + 8) = v11 + 584;
  return result;
}

uint64_t sub_100484538(uint64_t *a1, int *a2, uint64_t a3, char *a4, double *a5, double *a6, uint64_t *a7, int *a8, int *a9, __int128 *a10)
{
  v10 = 0x7E3F1F8FC7E3F1F9 * ((a1[1] - *a1) >> 3);
  v11 = v10 + 1;
  if ((v10 + 1) > 0x70381C0E070381)
  {
    sub_100019B38();
  }

  if (0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 3) > v11)
  {
    v11 = 0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x7E3F1F8FC7E3F1F9 * ((a1[2] - *a1) >> 3)) >= 0x381C0E070381C0)
  {
    v14 = 0x70381C0E070381;
  }

  else
  {
    v14 = v11;
  }

  v24 = a1;
  if (v14)
  {
    sub_1004847CC(a1, v14);
  }

  v21 = 0;
  v22 = 584 * v10;
  v23 = (584 * v10);
  sub_1004846DC(584 * v10, *a2, a3, *a4, *a7, *a8, *a9, a10, *a5, *a6);
  *&v23 = 584 * v10 + 584;
  v15 = a1[1];
  v16 = 584 * v10 + *a1 - v15;
  sub_100484828(a1, *a1, v15, v22 + *a1 - v15);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_1004849C4(&v21);
  return v20;
}

void sub_1004846C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004849C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004846DC(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, int a7, __int128 *a8, double a9, double a10)
{
  *a1 = a2;
  v19 = a1 + 96;
  sub_10047DDC0(a1 + 8, a3);
  sub_10047E338(v19, a3 + 88);
  *(a1 + 424) = *(a3 + 416);
  *(a1 + 432) = a4;
  *(a1 + 440) = a9;
  *(a1 + 448) = a10;
  *(a1 + 456) = a5;
  *(a1 + 464) = a6;
  *(a1 + 468) = a7;
  v20 = *a8;
  v21 = a8[2];
  *(a1 + 488) = a8[1];
  *(a1 + 504) = v21;
  *(a1 + 472) = v20;
  v22 = a8[3];
  v23 = a8[4];
  v24 = a8[6];
  *(a1 + 552) = a8[5];
  *(a1 + 568) = v24;
  *(a1 + 520) = v22;
  *(a1 + 536) = v23;
  return a1;
}

void sub_1004847CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x70381C0E070382)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_100484828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      sub_10047DDC0(a4 + v7 + 8, v6 + v7 + 8);
      sub_10047E338(a4 + v7 + 96, v6 + v7 + 96);
      v9 = a4 + v7;
      *(v9 + 424) = *(v6 + v7 + 424);
      v10 = *(v6 + v7 + 448);
      *(v9 + 432) = *(v6 + v7 + 432);
      *(v9 + 448) = v10;
      v11 = *(v6 + v7 + 464);
      v12 = *(v6 + v7 + 480);
      v13 = *(v6 + v7 + 512);
      *(v9 + 496) = *(v6 + v7 + 496);
      *(v9 + 512) = v13;
      *(v9 + 464) = v11;
      *(v9 + 480) = v12;
      v14 = *(v6 + v7 + 528);
      v15 = *(v6 + v7 + 544);
      v16 = *(v6 + v7 + 560);
      *(v9 + 576) = *(v6 + v7 + 576);
      *(v9 + 544) = v15;
      *(v9 + 560) = v16;
      *(v9 + 528) = v14;
      v7 += 584;
    }

    while (v8 + 584 != a3);
    if (v6 != a3)
    {
      v17 = v6 + 96;
      do
      {
        *(v6 + 96) = off_1009991A0;
        *(v6 + 8) = off_1009991A0;
        v6 += 584;
        v17 += 584;
      }

      while (v6 != a3);
    }
  }
}

void sub_100484938(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    v4 = v1 + v2 - 576;
    v5 = v4;
    do
    {
      v5[11] = off_1009991A0;
      *v5 = off_1009991A0;
      v5 -= 73;
      v4 -= 584;
      v3 += 584;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004849C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 72;
    v5 = v4;
    do
    {
      v5[11] = off_1009991A0;
      *v5 = off_1009991A0;
      v6 = v5 - 73;
      v4 -= 73;
      v7 = v5 - 1;
      v5 -= 73;
    }

    while (v7 != v2);
    *(a1 + 16) = v6 + 72;
  }

  v8 = *a1;
  if (*a1)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_100484A64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100484210(result, a4);
  }

  return result;
}

void sub_100484ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10048443C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100484AEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1004842B4(v4, v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100484B90(v8);
  return v4;
}

uint64_t sub_100484B90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100484BC8(a1);
  }

  return a1;
}

void sub_100484BC8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v4 = *(v1 - 24);
    v1 -= 24;
    v3 = v4;
    if (v4)
    {
      operator delete(v3);
    }
  }
}

uint64_t sub_100484C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A9E50;
  if (a2 > 1)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_100484CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 12))
  {
    if (*(a2 + 24) >= v3)
    {
      if (*(a3 + 24) >= v3)
      {
        if (*(a3 + 28) >= v3)
        {
          sub_1003A8CFC(a3, a1);
          v6 = *(a3 + 8);
          v7 = *(a3 + 32);
          v8 = *(a2 + 32);
          v13 = *(a3 + 12);
          v12 = *(a3 + 20);
          if (v6 >= 1)
          {
            v9 = 4 * v6;
            v10 = operator new[](4 * v6, &std::nothrow);
            if (v10)
            {
              v11 = v10;
              dgetrf_NEWLAPACK();
              memcpy(v8, v11, v9);
              operator delete[]();
            }

            sub_1004D0FE0();
          }

          sub_1004D0FE0();
        }

        sub_1004D103C();
      }

      sub_1004D1068();
    }

    sub_1004D1094();
  }

  sub_1004D0FB4();
}

uint64_t sub_100484E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    memcpy((a4 + 8), (v5 + 8), 0x1C8uLL);
    sub_1003A8CFC(a4 + 464, v5 + 464);
    sub_1003A8CFC(a4 + 552, v5 + 552);
    *(a4 + 880) = *(v5 + 880);
    sub_1003A8CFC(a4 + 888, v5 + 888);
    sub_1003A8CFC(a4 + 976, v5 + 976);
    v8 = *(v5 + 1320);
    v7 = *(v5 + 1336);
    *(a4 + 1304) = *(v5 + 1304);
    *(a4 + 1320) = v8;
    *(a4 + 1336) = v7;
    v9 = *(v5 + 1400);
    v11 = *(v5 + 1352);
    v10 = *(v5 + 1368);
    *(a4 + 1384) = *(v5 + 1384);
    *(a4 + 1400) = v9;
    *(a4 + 1352) = v11;
    *(a4 + 1368) = v10;
    v12 = *(v5 + 1464);
    v14 = *(v5 + 1416);
    v13 = *(v5 + 1432);
    *(a4 + 1448) = *(v5 + 1448);
    *(a4 + 1464) = v12;
    *(a4 + 1416) = v14;
    *(a4 + 1432) = v13;
    a4 += 1480;
    v5 += 1480;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_100484F48()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009F9420 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009F9410 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9410, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009F9438 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009F9428 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9428, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009F9450 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009F9440 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9440, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009F9468 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009F9458 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9458, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009F9480 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009F9470 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9470, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009F9498 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009F9488 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F9488, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009F94B0 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009F94A0 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F94A0, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009F94C8 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009F94B8 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F94B8, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009F94E0 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009F94D0 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009F94D0, &_mh_execute_header);
}

void sub_100485578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004855EC(void *result)
{
  result[16] = off_1009991A0;
  result[8] = off_1009991A0;
  *result = off_1009991A0;
  return result;
}

void sub_1004856CC(uint64_t a1, uint64_t a2)
{
  sub_1004858D8(a1, v9);
  sub_1004858D8(a2, v8);
  v3 = sub_100485990(v9, v8);
  v22 = 0x100000003;
  v21 = xmmword_10056EDA0;
  v20 = off_1009A8F78;
  v23 = v24;
  v17 = 0x100000134;
  v16 = xmmword_10056EEA0;
  v15 = off_1009A9168;
  v18 = v19;
  v12 = 0x100000003;
  v11 = xmmword_10056EDA0;
  v10 = off_1009A8F78;
  v13 = v14;
  sub_1003AFEC0(v9, &v20, &v15, &v10, "2");
  v5 = v4;
  v22 = 0x100000003;
  v21 = xmmword_10056EDA0;
  v20 = off_1009A8F78;
  v23 = v24;
  v17 = 0x100000134;
  v16 = xmmword_10056EEA0;
  v15 = off_1009A9168;
  v18 = v19;
  v12 = 0x100000003;
  v11 = xmmword_10056EDA0;
  v10 = off_1009A8F78;
  v13 = v14;
  sub_1003AFEC0(v8, &v20, &v15, &v10, "2");
  if (v5 > 0.0 && v6 > 0.0)
  {
    v7 = acos(v3 / v5 / v6);
    sub_1000422D4(v7);
  }
}

double sub_1004858D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0x300000001;
  v6 = off_1009ACEA8;
  v7 = xmmword_10056FAD0;
  v9 = &v10;
  sub_1003A8C00(&v6, 1, 3);
  for (i = 0; i != 3; ++i)
  {
    *sub_100492BDC(&v6, i) = i;
  }

  return sub_100485B6C(a1 + 456, &v6, 0, a2);
}

double sub_100485990(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1 && *(a1 + 12) != 1)
  {
    sub_1004D1118();
  }

  if (*(a2 + 8) != 1 && *(a2 + 12) != 1)
  {
    sub_1004D10EC();
  }

  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    sub_1004D10C0();
  }

  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  result = 0.0;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = result + v9 * v10;
    --v4;
  }

  while (v4);
  return result;
}

void sub_100485A10(uint64_t a1)
{
  sub_100485B6C(a1 + 456, &qword_1009F9660, 0, &v11);
  v3 = 0x100000003;
  v1 = off_1009A8F78;
  v2 = xmmword_10056EDA0;
  v4 = &v5;
  sub_1003A920C(&v11, &unk_1009FA1B8, &v1);
  v18 = 0x100000003;
  v16 = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  v13 = 0x100000134;
  v11 = off_1009A9168;
  v12 = xmmword_10056EEA0;
  v14 = &v15;
  v8 = 0x100000003;
  v6 = off_1009A8F78;
  v7 = xmmword_10056EDA0;
  v9 = &v10;
  sub_1003AFEC0(&v1, &v16, &v11, &v6, "2");
}

double sub_100485B6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  sub_100492C18(a4, *(a2 + 16), 1u);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      result = *(*(a1 + 32) + 8 * (sub_100492D08(a2, i) + *(a1 + 20) * a3));
      *(*(a4 + 32) + 8 * i) = result;
    }
  }

  return result;
}

void sub_100485C14(uint64_t a1)
{
  sub_100485B6C(a1 + 456, &qword_1009F9660, 0, v3);
  v6 = 0x100000003;
  v4 = off_1009A8F78;
  v5 = xmmword_10056EDA0;
  v7 = &v8;
  sub_1003A920C(v3, &unk_1009FA1F8, &v4);
  v1 = sub_1002EB67C(&v4, 2u);
  v2 = sub_1002EB67C(&v4, 1u);
  atan2(v1, v2);
}

void sub_100485CFC(uint64_t a1)
{
  sub_100485B6C(a1 + 456, &qword_1009F9660, 0, &v2);
  v6 = 0x100000003;
  v5 = xmmword_10056EDA0;
  v4 = off_1009A8F78;
  v7 = v8;
  sub_1003A920C(&v2, &unk_1009FA1F8, &v4);
  sub_100492E90(v1, &v4);
  v6 = 0x100000006;
  v5 = xmmword_10089D7C0;
  v4 = off_1009ACDD0;
  v7 = v8;
  sub_100493028(v3);
}

double sub_100485EC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = off_1009A8FC0;
  *(a2 + 8) = xmmword_10056EDB0;
  *(a2 + 32) = a2 + 40;
  sub_1003A8C00(a2, 3, 3);
  sub_1003A8C50(a2, 0.0);
  v4 = sub_1002EB67C(a1, 0);
  v5 = sub_1002EB67C(a1, 1u);
  v6 = sub_1002EB67C(a1, 2u);
  v7 = sub_1002EB67C(a1, 3u);
  v14 = v5 * v5;
  v15 = v4 * v4;
  *sub_1003A8DB0(a2, 0, 0) = v4 * v4 - v5 * v5 - v6 * v6 + v7 * v7;
  *sub_1003A8DB0(a2, 0, 1) = v4 * v5 + v6 * v7 + v4 * v5 + v6 * v7;
  v8 = v4 * v6;
  v9 = v5 * v7;
  *sub_1003A8DB0(a2, 0, 2) = v4 * v6 - v5 * v7 + v4 * v6 - v5 * v7;
  *sub_1003A8DB0(a2, 1, 0) = v4 * v5 - v6 * v7 + v4 * v5 - v6 * v7;
  *sub_1003A8DB0(a2, 1, 1) = v5 * v5 - v4 * v4 - v6 * v6 + v7 * v7;
  v10 = v4 * v7;
  v11 = v5 * v6;
  *sub_1003A8DB0(a2, 1, 2) = v11 + v10 + v11 + v10;
  *sub_1003A8DB0(a2, 2, 0) = v8 + v9 + v8 + v9;
  *sub_1003A8DB0(a2, 2, 1) = v11 - v10 + v11 - v10;
  v12 = sub_1003A8DB0(a2, 2, 2);
  result = -v15 - v14 + v6 * v6 + v7 * v7;
  *v12 = result;
  return result;
}

double *sub_100486120(uint64_t a1)
{
  v19 = 0x100000004;
  v17 = off_1009A8EE8;
  v18 = xmmword_10056ED80;
  v20 = &v21;
  v14 = 0x10000018BLL;
  v12 = off_1009A9610;
  v13 = xmmword_10056F200;
  v15 = &v16;
  v9 = 0x100000004;
  v7 = off_1009A8EE8;
  v8 = xmmword_10056ED80;
  v10 = &v11;
  sub_1003AFEC0(a1, &v17, &v12, &v7, "2");
  if (v2 == 0.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004D1144();
    }

    *sub_1003AFDBC(a1, 0) = 0;
    *sub_1003AFDBC(a1, 1u) = 0;
    *sub_1003AFDBC(a1, 2u) = 0;
    result = sub_1003AFDBC(a1, 3u);
    *result = 1.0;
  }

  else
  {
    v4 = v2;
    for (i = 0; i != 4; ++i)
    {
      v6 = *sub_1003AFDBC(a1, i) / v4;
      result = sub_1003AFDBC(a1, i);
      *result = v6;
    }
  }

  return result;
}

double *sub_1004862D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = off_1009A8FC0;
  *(a2 + 8) = xmmword_10056EDB0;
  *(a2 + 32) = a2 + 40;
  sub_1003A8C00(a2, 3, 3);
  sub_1003A8C50(a2, 0.0);
  v4 = sub_1002EB67C(a1, 2u);
  *sub_1003A8DB0(a2, 0, 1) = -v4;
  v5 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 0, 2) = v5;
  v6 = sub_1002EB67C(a1, 2u);
  *sub_1003A8DB0(a2, 1, 0) = v6;
  v7 = sub_1002EB67C(a1, 0);
  *sub_1003A8DB0(a2, 1, 2) = -v7;
  v8 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 2, 0) = -v8;
  v9 = sub_1002EB67C(a1, 0);
  result = sub_1003A8DB0(a2, 2, 1);
  *result = v9;
  return result;
}

double sub_100486458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x400000004;
  *a2 = off_1009A8F30;
  *(a2 + 8) = xmmword_10056ED90;
  *(a2 + 32) = a2 + 40;
  sub_1003A8C00(a2, 4, 4);
  sub_1003A8C50(a2, 0.0);
  v4 = sub_1002EB67C(a1, 2u);
  *sub_1003A8DB0(a2, 0, 1) = v4;
  v5 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 0, 2) = -v5;
  v6 = sub_1002EB67C(a1, 0);
  *sub_1003A8DB0(a2, 0, 3) = v6;
  v7 = sub_1002EB67C(a1, 2u);
  *sub_1003A8DB0(a2, 1, 0) = -v7;
  v8 = sub_1002EB67C(a1, 0);
  *sub_1003A8DB0(a2, 1, 2) = v8;
  v9 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 1, 3) = v9;
  v10 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 2, 0) = v10;
  v11 = sub_1002EB67C(a1, 0);
  *sub_1003A8DB0(a2, 2, 1) = -v11;
  v12 = sub_1002EB67C(a1, 2u);
  *sub_1003A8DB0(a2, 2, 3) = v12;
  v13 = sub_1002EB67C(a1, 0);
  *sub_1003A8DB0(a2, 3, 0) = -v13;
  v14 = sub_1002EB67C(a1, 1u);
  *sub_1003A8DB0(a2, 3, 1) = -v14;
  v15 = sub_1002EB67C(a1, 2u);
  v16 = sub_1003A8DB0(a2, 3, 2);
  result = -v15;
  *v16 = -v15;
  return result;
}

BOOL sub_1004866C4(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 444))
  {
    v5 = *a3 - *(a1 + 448);
    if (v5 < 0.0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D1214();
      }

LABEL_5:
      result = 0;
      *(a1 + 440) = 9;
      return result;
    }

    if (v5 != 0.0)
    {
      v21 = 0x600000006;
      v19 = off_1009ACD88;
      v20 = xmmword_10089D7B0;
      v22 = &v23;
      sub_1003A8C00(&v19, 6, 6);
      sub_1003A8C50(&v19, 0.0);
      for (i = 0; i != 6; ++i)
      {
        *sub_1003A9F6C(&v19, i, i) = 0x3FF0000000000000;
      }

      v16 = 0xC00000006;
      v14 = off_1009AD010;
      v15 = xmmword_10089D970;
      v17 = &v18;
      sub_1003A8C00(&v14, 6, 12);
      sub_1003A8C50(&v14, 0.0);
      if (sub_100486A60(a1, a2, a3, &v19, &v14))
      {
        v11 = 0x600000006;
        v9 = off_1009ACD88;
        v10 = xmmword_10089D7B0;
        v12 = &v13;
        v36 = 0x100000006;
        v34 = off_1009ACE18;
        v35 = xmmword_10089D7C0;
        v37 = &v38;
        v31 = 0x100000006;
        v30 = xmmword_10089D7C0;
        v29 = off_1009ACE18;
        v32 = &v33;
        v26 = 0x100000018;
        v25 = xmmword_10089D7D0;
        v24 = off_1009ACE60;
        v27 = &v28;
        sub_1003A9668(&v19, &v34, &v29, &v24, &v9);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D11AC();
      }

      goto LABEL_5;
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004D1178();
      return 0;
    }
  }

  return result;
}

BOOL sub_100486A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a1 + 448);
  v9 = v8 >= *a2 && v8 <= *a3;
  if (v9)
  {
    v55 = 0x100000003;
    *&buf[8] = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    v56 = &v57;
    sub_1003A8C00(buf, 3, 1);
    sub_1003A8C50(buf, 0.0);
    v51 = 0x100000003;
    v50 = xmmword_10056EDA0;
    v49 = off_1009A8F78;
    v52 = &v53;
    sub_1003A8C00(&v49, 3, 1);
    sub_1003A8C50(&v49, 0.0);
    v46 = 0x100000003;
    v45 = xmmword_10056EDA0;
    v44 = off_1009A8F78;
    v47 = &v48;
    sub_1003A8C00(&v44, 3, 1);
    sub_1003A8C50(&v44, 0.0);
    v14 = 0;
    v15 = v7 - v8;
    v16 = v8 + (v7 - v8) * 0.5;
    v17 = (v8 - v6) / (v7 - v6);
    v18 = (v16 - v6) / (v7 - v6);
    do
    {
      v19 = *(*(a2 + 40) + 8 * v14);
      *sub_1003AFDBC(buf, v14) = v19;
      v20 = *(*(a3 + 40) + 8 * v14);
      *sub_1003AFDBC(&v49, v14) = v20;
      v21 = *(*(a2 + 16) + 8 * v14);
      *sub_1003AFDBC(&v44, v14++) = v21;
    }

    while (v14 != 3);
    v36 = 0x100000003;
    v35 = xmmword_10056EDA0;
    v34 = off_1009A8F78;
    v37 = v38;
    sub_1003F2358(buf, &v34, 1.0 - v17);
    v31 = 0x100000003;
    v29 = off_1009A8F78;
    v30 = xmmword_10056EDA0;
    v32 = v33;
    sub_1003F2358(&v49, &v29, v17);
    v41 = 0x100000003;
    v40 = xmmword_10056EDA0;
    v39 = off_1009A8F78;
    v42 = &v43;
    sub_1003A8EBC(&v34, &v29, &v39);
    v31 = 0x100000003;
    v29 = off_1009A8F78;
    v30 = xmmword_10056EDA0;
    v32 = v33;
    sub_1003F2358(buf, &v29, 1.0 - v18);
    v26 = 0x100000003;
    v24 = off_1009A8F78;
    v25 = xmmword_10056EDA0;
    v27 = &v28;
    sub_1003F2358(&v49, &v24, v18);
    v36 = 0x100000003;
    v35 = xmmword_10056EDA0;
    v34 = off_1009A8F78;
    v37 = v38;
    sub_1003A8EBC(&v29, &v24, &v34);
    sub_1003BBC24(&v29, &v49);
    sub_100488B74(a1 + 456, a4, a5, &v39, &v34, &v29, &v44, v15);
  }

  else
  {
    v22 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      v55 = *&v7;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#sf,RoseEKF PropagateX1 error: Filter time is not between the two IMU timestamps - state propagation aborted, PreviousIMUTime: %f, FilterTime: %f, CurrentIMUTime: %f", buf, 0x20u);
    }

    *(a1 + 440) = 6;
  }

  return v9;
}

void sub_100487580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100487608()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v28 = 0x1200000012;
  v26 = off_1009AD208;
  v27 = xmmword_10089D990;
  v29 = &v30;
  sub_1003A8C00(&v26, 18, 18);
  sub_1003A8C50(&v26, 0.0);
  v23 = 0xC0000000CLL;
  v21 = off_1009AD178;
  v22 = xmmword_10089D980;
  v24 = &v25;
  v8 = sqrt(v4);
  sub_1003A8C00(&v21, 12, 12);
  sub_1003A8C50(&v21, 0.0);
  v12 = 0x300000003;
  v10 = off_1009A8FC0;
  v11 = xmmword_10056EDB0;
  v13 = v14;
  sub_1003C07A0(&qword_1009FA468, &v10, v8);
  sub_1004936B4(&v31, &v21, &qword_1009F9660, &qword_1009F9660);
  sub_100489F48(&v31, &v10);
  v12 = 0x300000003;
  v10 = off_1009A8FC0;
  v11 = xmmword_10056EDB0;
  v13 = v14;
  sub_1003C07A0(&qword_1009FA4D8, &v10, v8);
  sub_1004936B4(&v31, &v21, &qword_1009F9698, &qword_1009F9698);
  sub_100489F48(&v31, &v10);
  v12 = 0x300000003;
  v10 = off_1009A8FC0;
  v11 = xmmword_10056EDB0;
  v13 = v14;
  v9 = 1.0 / v8;
  sub_1003C07A0(&qword_1009FA3F8, &v10, v9);
  sub_1004936B4(&v31, &v21, &qword_1009F96D0, &qword_1009F96D0);
  sub_100489F48(&v31, &v10);
  v12 = 0x300000003;
  v10 = off_1009A8FC0;
  v11 = xmmword_10056EDB0;
  v13 = v14;
  sub_1003C07A0(&qword_1009FA548, &v10, v9);
  sub_1004936B4(&v31, &v21, &qword_1009F9708, &qword_1009F9708);
  sub_100489F48(&v31, &v10);
  sub_100494088(&v31, &v26, &qword_1009F94F0, &qword_1009F94F0);
  sub_10048C9AC(&v31, &v21);
  sub_10048CAE8(v2, v15);
  v18 = 0x600000006;
  v17 = xmmword_10089D7B0;
  v16 = off_1009ACD88;
  v19 = v20;
  sub_1003A90A8(v15, v7, &v16);
  v12 = 0xC00000006;
  v10 = off_1009AD010;
  v11 = xmmword_10089D970;
  v13 = v14;
  sub_1003A90A8(&v16, v6, &v10);
  sub_100494338(&v31, &v26, &qword_1009F95F0, &qword_1009F94F0);
  sub_10048CB68(&v31, &v10);
  v12 = 0x600000006;
  v10 = off_1009ACD88;
  v11 = xmmword_10089D7B0;
  v13 = v14;
  sub_1003A90A8(v2, v7, &v10);
  sub_1004945FC(&v31, &v26, &qword_1009F95F0, &qword_1009F95F0);
  sub_10048CCA4(&v31, &v10);
  v18 = 0x100000012;
  v17 = xmmword_10089D9A0;
  v16 = off_1009AD328;
  v19 = v20;
  v33 = 0x1200000012;
  v31 = off_1009AD208;
  v32 = xmmword_10089D990;
  v34 = &v35;
  v12 = 0x1200000012;
  v10 = off_1009AD208;
  v11 = xmmword_10089D990;
  v13 = v14;
  sub_1004948A8(&v26, &v16, &v31, &v10);
  sub_10048CDE0(&v10, &qword_1009F95F0, &qword_1009F95F0, &v31);
  sub_1003A8CFC(v2, &v31);
}

BOOL sub_100487C3C(uint64_t a1, uint64_t *a2, double a3)
{
  if (*(a1 + 444))
  {
    v6 = *(a1 + 448);
    if (a3 - v6 >= 0.0)
    {
      if (a3 - v6 != 0.0)
      {
        v18 = 0x600000006;
        v16 = off_1009ACD88;
        v17 = xmmword_10089D7B0;
        v19 = &v20;
        sub_1003A8C00(&v16, 6, 6);
        sub_1003A8C50(&v16, 0.0);
        for (i = 0; i != 6; ++i)
        {
          *sub_1003A9F6C(&v16, i, i) = 0x3FF0000000000000;
        }

        v32 = 0xC00000006;
        *&v31[8] = xmmword_10089D970;
        *v31 = off_1009AD010;
        v33 = &v34;
        sub_1003A8C00(v31, 6, 12);
        sub_1003A8C50(v31, 0.0);
        sub_100488068(a1, a2, &v16, v31, a3);
        v13 = 0x600000006;
        v11 = off_1009ACD88;
        v12 = xmmword_10089D7B0;
        v14 = &v15;
        v28 = 0x100000006;
        v27 = xmmword_10089D7C0;
        v26 = off_1009ACE18;
        v29 = &v30;
        v23 = 0x100000006;
        v22 = xmmword_10089D7C0;
        v21 = off_1009ACE18;
        v24 = &v25;
        v37 = 0x100000018;
        v36 = xmmword_10089D7D0;
        *buf = off_1009ACE60;
        v38 = &v39;
        sub_1003A9668(&v16, &v26, &v21, buf, &v11);
      }

      return 1;
    }

    else
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        v10 = *a2;
        *v31 = 134218496;
        *&v31[4] = v6;
        *&v31[12] = 2048;
        *&v31[14] = a3;
        *&v31[22] = 2048;
        v32 = v10;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#sf,Attempted to propagate state to the past during measurement update - Filter time is ahead of the event time, FilterTime: %f, NewTime: %f, CurrentIMUTime: %f", v31, 0x20u);
      }

      result = 0;
      *(a1 + 440) = 9;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004D1178();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100488068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a1 + 448);
  v22 = 0x100000003;
  v20 = off_1009A8F78;
  v21 = xmmword_10056EDA0;
  v23 = &v24;
  sub_1003A8C00(&v20, 3, 1);
  sub_1003A8C50(&v20, 0.0);
  v17 = 0x100000003;
  v15 = off_1009A8F78;
  v16 = xmmword_10056EDA0;
  v18 = &v19;
  sub_1003A8C00(&v15, 3, 1);
  sub_1003A8C50(&v15, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v12 = *(*(a2 + 40) + 8 * i);
    *sub_1003AFDBC(&v20, i) = v12;
    v13 = *(*(a2 + 16) + 8 * i);
    *sub_1003AFDBC(&v15, i) = v13;
  }

  return sub_100488B74(a1 + 456, a3, a4, &v20, &v20, &v20, &v15, a5 - v10);
}

BOOL sub_1004881D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 444))
  {
    v6 = *(a1 + 448);
    if (a4 - v6 == 0.0)
    {
      return 1;
    }

    else
    {
      if (a4 - v6 < 0.0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004D1214();
        }
      }

      else
      {
        v23 = 0x600000006;
        v21 = off_1009ACD88;
        v22 = xmmword_10089D7B0;
        v24 = &v25;
        sub_1003A8C00(&v21, 6, 6);
        sub_1003A8C50(&v21, 0.0);
        for (i = 0; i != 6; ++i)
        {
          *sub_1003A9F6C(&v21, i, i) = 0x3FF0000000000000;
        }

        v18 = 0xC00000006;
        v16 = off_1009AD010;
        v17 = xmmword_10089D970;
        v19 = &v20;
        sub_1003A8C00(&v16, 6, 12);
        sub_1003A8C50(&v16, 0.0);
        if (sub_1004885F0(a1, a2, a3, &v21, &v16, a4))
        {
          v13 = 0x600000006;
          v11 = off_1009ACD88;
          v12 = xmmword_10089D7B0;
          v14 = &v15;
          v33 = 0x100000006;
          v32 = xmmword_10089D7C0;
          v31 = off_1009ACE18;
          v34 = &v35;
          v28 = 0x100000006;
          v27 = xmmword_10089D7C0;
          v26 = off_1009ACE18;
          v29 = &v30;
          v38 = 0x100000018;
          v37 = xmmword_10089D7D0;
          *buf = off_1009ACE60;
          v39 = &v40;
          sub_1003A9668(&v21, &v31, &v26, buf, &v11);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004D11AC();
        }
      }

      result = 0;
      *(a1 + 440) = 9;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004D1178();
      return 0;
    }
  }

  return result;
}

BOOL sub_1004885F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a1 + 448);
  v10 = v9 >= *a2 && v9 <= *a3;
  if (v10)
  {
    v64 = 0x100000003;
    *&buf[8] = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    v65 = &v66;
    sub_1003A8C00(buf, 3, 1);
    sub_1003A8C50(buf, 0.0);
    v60 = 0x100000003;
    v59 = xmmword_10056EDA0;
    v58 = off_1009A8F78;
    v61 = &v62;
    sub_1003A8C00(&v58, 3, 1);
    sub_1003A8C50(&v58, 0.0);
    v55 = 0x100000003;
    v54 = xmmword_10056EDA0;
    v53 = off_1009A8F78;
    v56 = &v57;
    sub_1003A8C00(&v53, 3, 1);
    sub_1003A8C50(&v53, 0.0);
    v16 = 0;
    v17 = a6 - v9;
    v18 = v9 + (a6 - v9) * 0.5;
    v19 = v8 - v7;
    v20 = (v9 - v7) / (v8 - v7);
    v21 = (v18 - v7) / (v8 - v7);
    v22 = (a6 - v7) / v19;
    do
    {
      v23 = *(*(a2 + 40) + 8 * v16);
      *sub_1003AFDBC(buf, v16) = v23;
      v24 = *(*(a3 + 40) + 8 * v16);
      *sub_1003AFDBC(&v58, v16) = v24;
      v25 = *(*(a2 + 16) + 8 * v16);
      *sub_1003AFDBC(&v53, v16++) = v25;
    }

    while (v16 != 3);
    v45 = 0x100000003;
    v44 = xmmword_10056EDA0;
    v43 = off_1009A8F78;
    v46 = v47;
    sub_1003F2358(buf, &v43, 1.0 - v20);
    v40 = 0x100000003;
    v39 = xmmword_10056EDA0;
    v38 = off_1009A8F78;
    v41 = v42;
    sub_1003F2358(&v58, &v38, v20);
    v50 = 0x100000003;
    v49 = xmmword_10056EDA0;
    v48 = off_1009A8F78;
    v51 = &v52;
    sub_1003A8EBC(&v43, &v38, &v48);
    v40 = 0x100000003;
    v39 = xmmword_10056EDA0;
    v38 = off_1009A8F78;
    v41 = v42;
    sub_1003F2358(buf, &v38, 1.0 - v21);
    v35 = 0x100000003;
    v33 = off_1009A8F78;
    v34 = xmmword_10056EDA0;
    v36 = v37;
    sub_1003F2358(&v58, &v33, v21);
    v45 = 0x100000003;
    v44 = xmmword_10056EDA0;
    v43 = off_1009A8F78;
    v46 = v47;
    sub_1003A8EBC(&v38, &v33, &v43);
    v35 = 0x100000003;
    v33 = off_1009A8F78;
    v34 = xmmword_10056EDA0;
    v36 = v37;
    sub_1003F2358(buf, &v33, 1.0 - v22);
    v30 = 0x100000003;
    v28 = off_1009A8F78;
    v29 = xmmword_10056EDA0;
    v31 = &v32;
    sub_1003F2358(&v58, &v28, v22);
    v40 = 0x100000003;
    v39 = xmmword_10056EDA0;
    v38 = off_1009A8F78;
    v41 = v42;
    sub_1003A8EBC(&v33, &v28, &v38);
    sub_100488B74(a1 + 456, a4, a5, &v48, &v43, &v38, &v53, v17);
  }

  else
  {
    v26 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      v64 = *&v8;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#sf,RoseEKF PropagateX2 error: Filter time is not between the two IMU timestamps - state propagation aborted, PreviousIMUTime: %f, FilterTime: %f, CurrentIMUTime: %f", buf, 0x20u);
    }

    *(a1 + 440) = 6;
  }

  return v10;
}

uint64_t sub_100488B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, long double a8)
{
  v114 = 0x100000004;
  v112 = off_1009A8EE8;
  v113 = xmmword_10056ED80;
  v115 = &v116;
  sub_1003A8C00(&v112, 4, 1);
  sub_1003A8C50(&v112, 0.0);
  *sub_1003AFDBC(&v112, 0) = 0;
  *sub_1003AFDBC(&v112, 1u) = 0;
  *sub_1003AFDBC(&v112, 2u) = 0;
  *sub_1003AFDBC(&v112, 3u) = 0x3FF0000000000000;
  sub_100486458(a4, &v32);
  v54 = 0x400000004;
  v53 = xmmword_10056ED90;
  v52 = off_1009A8F30;
  v55 = v56;
  sub_1003C07A0(&v32, &v52, 0.5);
  v109 = 0x100000004;
  v108 = xmmword_10056ED80;
  v107 = off_1009A8EE8;
  v110 = &v111;
  sub_1003A90A8(&v52, &v112, &v107);
  v54 = 0x100000004;
  v53 = xmmword_10056ED80;
  v52 = off_1009A8EE8;
  v55 = v56;
  sub_1003C07A0(&v107, &v52, a8 * 0.5);
  v104 = 0x100000004;
  v103 = xmmword_10056ED80;
  v102 = off_1009A8EE8;
  v105 = &v106;
  sub_1003A8EBC(&v112, &v52, &v102);
  sub_100486120(&v102);
  sub_100486458(a5, &v32);
  v54 = 0x400000004;
  v53 = xmmword_10056ED90;
  v52 = off_1009A8F30;
  v55 = v56;
  sub_1003C07A0(&v32, &v52, 0.5);
  v99 = 0x100000004;
  v98 = xmmword_10056ED80;
  v97 = off_1009A8EE8;
  v100 = &v101;
  sub_1003A90A8(&v52, &v102, &v97);
  v54 = 0x100000004;
  v53 = xmmword_10056ED80;
  v52 = off_1009A8EE8;
  v55 = v56;
  sub_1003C07A0(&v97, &v52, a8 * 0.5);
  v94 = 0x100000004;
  v93 = xmmword_10056ED80;
  v92 = off_1009A8EE8;
  v95 = &v96;
  sub_1003A8EBC(&v112, &v52, &v92);
  sub_100486120(&v92);
  sub_100486458(a5, &v32);
  v54 = 0x400000004;
  v53 = xmmword_10056ED90;
  v52 = off_1009A8F30;
  v55 = v56;
  sub_1003C07A0(&v32, &v52, 0.5);
  v89 = 0x100000004;
  v88 = xmmword_10056ED80;
  v87 = off_1009A8EE8;
  v90 = &v91;
  sub_1003A90A8(&v52, &v92, &v87);
  v54 = 0x100000004;
  v53 = xmmword_10056ED80;
  v52 = off_1009A8EE8;
  v55 = v56;
  sub_1003C07A0(&v87, &v52, a8);
  v84 = 0x100000004;
  v83 = xmmword_10056ED80;
  v82 = off_1009A8EE8;
  v85 = &v86;
  sub_1003A8EBC(&v112, &v52, &v82);
  sub_100486120(&v82);
  sub_100486458(a6, &v32);
  v54 = 0x400000004;
  v53 = xmmword_10056ED90;
  v52 = off_1009A8F30;
  v55 = v56;
  sub_1003C07A0(&v32, &v52, 0.5);
  v79 = 0x100000004;
  v78 = xmmword_10056ED80;
  v77 = off_1009A8EE8;
  v80 = &v81;
  sub_1003A90A8(&v52, &v82, &v77);
  v49 = 0x100000004;
  v48 = xmmword_10056ED80;
  v47 = off_1009A8EE8;
  v50 = v51;
  sub_1003C07A0(&v97, &v47, 2.0);
  v64 = 0x100000004;
  v63 = xmmword_10056ED80;
  v62 = off_1009A8EE8;
  v65 = &v66;
  sub_1003A8EBC(&v107, &v47, &v62);
  v44 = 0x100000004;
  v43 = xmmword_10056ED80;
  v42 = off_1009A8EE8;
  v45 = v46;
  sub_1003C07A0(&v87, &v42, 2.0);
  v34 = 0x100000004;
  v33 = xmmword_10056ED80;
  v32 = off_1009A8EE8;
  v35 = v36;
  sub_1003A8EBC(&v62, &v42, &v32);
  v54 = 0x100000004;
  v53 = xmmword_10056ED80;
  v52 = off_1009A8EE8;
  v55 = v56;
  sub_1003A8EBC(&v32, &v77, &v52);
  v74 = 0x100000004;
  v73 = xmmword_10056ED80;
  v72 = off_1009A8EE8;
  v75 = &v76;
  sub_1003C07A0(&v52, &v72, 0.166666667);
  v54 = 0x100000004;
  v53 = xmmword_10056ED80;
  v52 = off_1009A8EE8;
  v55 = v56;
  sub_1003C07A0(&v72, &v52, a8);
  v69 = 0x100000004;
  v68 = xmmword_10056ED80;
  v67 = off_1009A8EE8;
  v70 = &v71;
  sub_1003A8EBC(&v112, &v52, &v67);
  sub_100486120(&v67);
  sub_100485EC0(&v67, &v62);
  v44 = 0x100000001;
  *&v16 = 0x100000001;
  *(&v16 + 1) = 0x100000001;
  v43 = v16;
  v42 = off_1009AA310;
  v45 = v46;
  v46[0] = 0;
  sub_100493344(&v52, a1, &qword_1009F9698, &v42);
  v49 = 0x100000003;
  v48 = xmmword_10056EDA0;
  v47 = off_1009A8F78;
  v50 = v51;
  sub_1003A90A8(&v62, &v52, &v47);
  v34 = 0x100000003;
  v33 = xmmword_10056EDA0;
  v32 = off_1009A8F78;
  v35 = v36;
  sub_1003F2358(&v47, &v32, a8);
  v39 = 0x100000003;
  v38 = xmmword_10056EDA0;
  v37 = off_1009A8F78;
  v40 = v41;
  sub_1003A90A8(&v62, a7, &v37);
  v44 = 0x100000003;
  v43 = xmmword_10056EDA0;
  v42 = off_1009A8F78;
  v45 = v46;
  sub_1003C07A0(&v37, &v42, a8 * a8 * 0.5);
  v59 = 0x100000003;
  v58 = xmmword_10056EDA0;
  v57 = off_1009A8F78;
  v60 = &v61;
  sub_1003A8EBC(&v32, &v42, &v57);
  v49 = 0x100000003;
  v48 = xmmword_10056EDA0;
  v47 = off_1009A8F78;
  v50 = v51;
  sub_1003A90A8(&v62, &unk_1009FA178, &v47);
  v34 = 0x100000003;
  v33 = xmmword_10056EDA0;
  v32 = off_1009A8F78;
  v35 = v36;
  sub_1003A8EBC(&v57, &v47, &v32);
  v54 = 0x100000003;
  v53 = xmmword_10056EDA0;
  v52 = off_1009A8F78;
  v55 = v56;
  sub_1003A920C(&v32, &unk_1009FA178, &v52);
  sub_1003A8CFC(&v57, &v52);
  sub_1004936B4(&v52, a2, &qword_1009F9660, &qword_1009F9660);
  sub_100489F48(&v52, &v62);
  sub_10048A084(&v62, &v47);
  v34 = 0x300000003;
  v33 = xmmword_10056EDB0;
  v32 = off_1009A8FC0;
  v35 = v36;
  sub_1003F2358(&v47, &v32, a8);
  sub_1004936B4(&v52, a2, &qword_1009F9660, &qword_1009F9698);
  sub_100489F48(&v52, &v32);
  sub_1004936B4(&v52, a2, &qword_1009F9698, &qword_1009F9698);
  sub_100489F48(&v52, &v62);
  sub_1004936B4(&v52, a2, &qword_1009F9698, &qword_1009F9660);
  sub_100489F48(&v52, &qword_1009F97B0);
  v49 = 0x300000003;
  v48 = xmmword_10056EDB0;
  v47 = off_1009A8FC0;
  v50 = v51;
  sub_1003C07A0(&v62, &v47, a8 * a8 / -3.0);
  v44 = 0x300000003;
  v43 = xmmword_10056EDB0;
  v42 = off_1009A8FC0;
  v45 = v46;
  sub_1003C07A0(&qword_1009F9740, &v42, a8 * a8 / 6.0);
  v34 = 0x300000003;
  v33 = xmmword_10056EDB0;
  v32 = off_1009A8FC0;
  v35 = v36;
  sub_1003A920C(&v47, &v42, &v32);
  sub_1004936B4(&v52, a3, &qword_1009F9660, &qword_1009F9660);
  sub_100489F48(&v52, &v32);
  v54 = 0x100000001;
  *&v17 = 0x100000001;
  *(&v17 + 1) = 0x100000001;
  v53 = v17;
  v52 = off_1009AA310;
  v55 = v56;
  v56[0] = 0;
  sub_100493344(&v32, a1, &qword_1009F9660, &v52);
  sub_1004862D0(&v32, &v37);
  v44 = 0x300000003;
  v43 = xmmword_10056EDB0;
  v42 = off_1009A8FC0;
  v45 = v46;
  sub_1003C07A0(&v37, &v42, a8);
  sub_1004862D0(a7, v26);
  v18 = pow(a8, 3.0);
  v29 = 0x300000003;
  v27 = off_1009A8FC0;
  v28 = xmmword_10056EDB0;
  v30 = &v31;
  sub_1003C07A0(v26, &v27, v18 / 3.0);
  v49 = 0x300000003;
  v48 = xmmword_10056EDB0;
  v47 = off_1009A8FC0;
  v50 = v51;
  sub_1003A920C(&v42, &v27, &v47);
  sub_1004936B4(&v52, a3, &qword_1009F9660, &qword_1009F9698);
  sub_100489F48(&v52, &v47);
  sub_1004936B4(&v52, a3, &qword_1009F9660, &qword_1009F96D0);
  sub_100489F48(&v52, &qword_1009F9740);
  sub_1004936B4(&v52, a3, &qword_1009F9660, &qword_1009F9708);
  sub_100489F48(&v52, &qword_1009F97B0);
  sub_1004936B4(&v52, a3, &qword_1009F9698, &qword_1009F9660);
  sub_100489F48(&v52, &qword_1009F97B0);
  sub_1004936B4(&v52, a3, &qword_1009F9698, &qword_1009F9698);
  sub_100489F48(&v52, &qword_1009F97B0);
  sub_1004936B4(&v52, a3, &qword_1009F9698, &qword_1009F96D0);
  sub_100489F48(&v52, &qword_1009F97B0);
  sub_1004936B4(&v52, a3, &qword_1009F9698, &qword_1009F9708);
  sub_100489F48(&v52, &qword_1009F9740);
  v34 = 0x100000001;
  *&v19 = 0x100000001;
  *(&v19 + 1) = 0x100000001;
  v33 = v19;
  v32 = off_1009AA310;
  v35 = v36;
  v36[0] = 0;
  sub_100493344(&v52, a1, &qword_1009F9660, &v32);
  v44 = 0x100000003;
  v43 = xmmword_10056EDA0;
  v42 = off_1009A8F78;
  v45 = v46;
  sub_1003A90A8(&v62, &v52, &v42);
  v49 = 0x100000003;
  v48 = xmmword_10056EDA0;
  v47 = off_1009A8F78;
  v50 = v51;
  sub_1003A920C(&v42, &v57, &v47);
  v39 = 0x100000001;
  *&v20 = 0x100000001;
  *(&v20 + 1) = 0x100000001;
  v38 = v20;
  v37 = off_1009AA310;
  v40 = v41;
  v41[0] = 0;
  sub_100493344(&v32, a1, &qword_1009F9660, &v37);
  sub_10048A104(&v32, &v47);
  v34 = 0x100000001;
  *&v21 = 0x100000001;
  *(&v21 + 1) = 0x100000001;
  v33 = v21;
  v32 = off_1009AA310;
  v35 = v36;
  v36[0] = 0;
  sub_100493344(&v52, a1, &qword_1009F9698, &v32);
  v44 = 0x100000003;
  v43 = xmmword_10056EDA0;
  v42 = off_1009A8F78;
  v45 = v46;
  sub_1003F2358(a7, &v42, a8);
  v49 = 0x100000003;
  v48 = xmmword_10056EDA0;
  v47 = off_1009A8F78;
  v50 = v51;
  sub_1003A8EBC(&v52, &v42, &v47);
  v39 = 0x100000001;
  *&v22 = 0x100000001;
  *(&v22 + 1) = 0x100000001;
  v38 = v22;
  v37 = off_1009AA310;
  v40 = v41;
  v41[0] = 0;
  sub_100493344(&v32, a1, &qword_1009F9698, &v37);
  sub_10048A104(&v32, &v47);
  v34 = 0x100000001;
  *&v23 = 0x100000001;
  *(&v23 + 1) = 0x100000001;
  v33 = v23;
  v32 = off_1009AA310;
  v35 = v36;
  v36[0] = 0;
  sub_100493344(&v52, a1, &qword_1009F9698, &v32);
  v49 = 0x100000003;
  v48 = xmmword_10056EDA0;
  v47 = off_1009A8F78;
  v50 = v51;
  sub_1003A90A8(&v62, &v52, &v47);
  v44 = 0x100000001;
  *&v24 = 0x100000001;
  *(&v24 + 1) = 0x100000001;
  v43 = v24;
  v42 = off_1009AA310;
  v45 = v46;
  v46[0] = 0;
  sub_100493344(&v32, a1, &qword_1009F9698, &v42);
  return sub_10048A104(&v32, &v47);
}

void *sub_100489EE8(void *result)
{
  result[16] = off_1009A90F0;
  result[9] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_100489F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 112), *(*(a1 + 152) + 4 * j), *(*(a1 + 208) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048A024(void *result)
{
  result[22] = off_1009A90F0;
  result[15] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

double sub_10048A084@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = off_1009A8FC0;
  *(a2 + 8) = xmmword_10056EDB0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_10049395C(a1, a2);
  return result;
}

uint64_t sub_10048A104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 64), *(*(a1 + 104) + 4 * j), *(*(a1 + 160) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

BOOL sub_10048A1E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a4 - a3;
  if (a4 - a3 == 0.0)
  {
    return 1;
  }

  if (a4 - a3 >= 0.0)
  {
    v34 = 0x600000006;
    v32 = off_1009ACD88;
    v33 = xmmword_10089D7B0;
    v35 = &v36;
    sub_1003A8C00(&v32, 6, 6);
    sub_1003A8C50(&v32, 0.0);
    for (i = 0; i != 6; ++i)
    {
      *sub_1003A9F6C(&v32, i, i) = 0x3FF0000000000000;
    }

    v29 = 0xC00000006;
    v28 = xmmword_10089D970;
    v27 = off_1009AD010;
    v30 = &v31;
    sub_1003A8C00(&v27, 6, 12);
    sub_1003A8C50(&v27, 0.0);
    v24 = 0x100000003;
    v23 = xmmword_10056EDA0;
    v22 = off_1009A8F78;
    v25 = &v26;
    sub_1003A8C00(&v22, 3, 1);
    sub_1003A8C50(&v22, 0.0);
    v19 = 0x100000003;
    v18 = xmmword_10056EDA0;
    v17 = off_1009A8F78;
    v20 = &v21;
    sub_1003A8C00(&v17, 3, 1);
    sub_1003A8C50(&v17, 0.0);
    for (j = 0; j != 3; ++j)
    {
      v10 = *(*(a1 + 40) + 8 * j);
      *sub_1003AFDBC(&v22, j) = v10;
      v11 = *(*(a1 + 16) + 8 * j);
      *sub_1003AFDBC(&v17, j) = v11;
    }

    sub_100488B74(a2, &v32, &v27, &v22, &v22, &v22, &v17, v4);
    v14 = 0x600000006;
    v12 = off_1009ACD88;
    v13 = xmmword_10089D7B0;
    v15 = &v16;
    v49 = 0x100000006;
    v47 = off_1009ACE18;
    v48 = xmmword_10089D7C0;
    v50 = &v51;
    v44 = 0x100000006;
    v43 = xmmword_10089D7C0;
    v42 = off_1009ACE18;
    v45 = &v46;
    v39 = 0x100000018;
    v38 = xmmword_10089D7D0;
    v37 = off_1009ACE60;
    v40 = &v41;
    sub_1003A9668(&v32, &v47, &v42, &v37, &v12);
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004D12A0();
    return 0;
  }

  return result;
}

BOOL sub_10048A5CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a5 - a4;
  if (a5 - a4 <= 0.0 || (v10 = v8 - v7, v8 - v7 <= 0.0))
  {
    v22 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 134218752;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    v84 = *&a4;
    *v85 = 2048;
    *&v85[2] = a5;
    v24 = "#sf,RoseEKF error: Either IMU data comes not in chronological order (PreviousIMUTime: %f, CurrentIMUTime: %f) or trying to propagate state backward (from time %f to time %f)";
    v25 = v22;
    v26 = 42;
    goto LABEL_16;
  }

  if (v8 >= a5 && v8 >= a4 && v7 <= a4 && v7 <= a5)
  {
    v65 = 0x100000003;
    v64 = xmmword_10056EDA0;
    v63 = off_1009A8F78;
    v66 = &v67;
    sub_1003A8C00(&v63, 3, 1);
    sub_1003A8C50(&v63, 0.0);
    v60 = 0x100000003;
    v59 = xmmword_10056EDA0;
    v58 = off_1009A8F78;
    v61 = &v62;
    sub_1003A8C00(&v58, 3, 1);
    sub_1003A8C50(&v58, 0.0);
    v55 = 0x100000003;
    v54 = xmmword_10056EDA0;
    v53 = off_1009A8F78;
    v56 = &v57;
    sub_1003A8C00(&v53, 3, 1);
    sub_1003A8C50(&v53, 0.0);
    v14 = 0;
    v15 = (a4 - v7) / v10;
    v16 = (v9 * 0.5 + a4 - v7) / v10;
    v17 = (a5 - v7) / v10;
    do
    {
      v18 = *(*(a1 + 40) + 8 * v14);
      *sub_1003AFDBC(&v63, v14) = v18;
      v19 = *(*(a2 + 40) + 8 * v14);
      *sub_1003AFDBC(&v58, v14) = v19;
      v20 = *(*(a1 + 16) + 8 * v14);
      *sub_1003AFDBC(&v53, v14++) = v20;
    }

    while (v14 != 3);
    v84 = 0x100000003;
    *&buf[8] = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    *v85 = &v85[8];
    sub_1003F2358(&v63, buf, 1.0 - v15);
    v35 = 0x100000003;
    v34 = xmmword_10056EDA0;
    v33 = off_1009A8F78;
    v36 = v37;
    sub_1003F2358(&v58, &v33, v15);
    v50 = 0x100000003;
    v49 = xmmword_10056EDA0;
    v48 = off_1009A8F78;
    v51 = &v52;
    sub_1003A8EBC(buf, &v33, &v48);
    v84 = 0x100000003;
    *&buf[8] = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    *v85 = &v85[8];
    sub_1003F2358(&v63, buf, 1.0 - v16);
    v35 = 0x100000003;
    v34 = xmmword_10056EDA0;
    v33 = off_1009A8F78;
    v36 = v37;
    sub_1003F2358(&v58, &v33, v16);
    v45 = 0x100000003;
    v44 = xmmword_10056EDA0;
    v43 = off_1009A8F78;
    v46 = &v47;
    sub_1003A8EBC(buf, &v33, &v43);
    v84 = 0x100000003;
    *&buf[8] = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    *v85 = &v85[8];
    sub_1003F2358(&v63, buf, 1.0 - v17);
    v35 = 0x100000003;
    v34 = xmmword_10056EDA0;
    v33 = off_1009A8F78;
    v36 = v37;
    sub_1003F2358(&v58, &v33, v17);
    v40 = 0x100000003;
    v39 = xmmword_10056EDA0;
    v38 = off_1009A8F78;
    v41 = &v42;
    sub_1003A8EBC(buf, &v33, &v38);
    v35 = 0x600000006;
    v34 = xmmword_10089D7B0;
    v33 = off_1009ACD88;
    v36 = v37;
    sub_1003A8C00(&v33, 6, 6);
    sub_1003A8C50(&v33, 0.0);
    for (i = 0; i != 6; ++i)
    {
      *sub_1003A9F6C(&v33, i, i) = 0x3FF0000000000000;
    }

    v84 = 0xC00000006;
    *&buf[8] = xmmword_10089D970;
    *buf = off_1009AD010;
    *v85 = &v85[8];
    sub_1003A8C00(buf, 6, 12);
    sub_1003A8C50(buf, 0.0);
    sub_100488B74(a3, &v33, buf, &v48, &v43, &v38, &v53, v9);
    v30 = 0x600000006;
    v28 = off_1009ACD88;
    v29 = xmmword_10089D7B0;
    v31 = &v32;
    v80 = 0x100000006;
    v79 = xmmword_10089D7C0;
    v78 = off_1009ACE18;
    v81 = &v82;
    v75 = 0x100000006;
    v74 = xmmword_10089D7C0;
    v73 = off_1009ACE18;
    v76 = &v77;
    v70 = 0x100000018;
    v69 = xmmword_10089D7D0;
    v68 = off_1009ACE60;
    v71 = &v72;
    sub_1003A9668(&v33, &v78, &v73, &v68, &v28);
  }

  v27 = qword_1009F9820;
  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134218496;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 2048;
    v84 = *&v8;
    v24 = "#sf,RoseEKF propagateStateAndCovariance error: Filter time is not between the two IMU timestamps - state propagation aborted, PreviousIMUTime: %f, FilterTime: %f, CurrentIMUTime: %f";
    v25 = v27;
    v26 = 32;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    return 0;
  }

  return result;
}

uint64_t sub_10048AE14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v121 = *(a5 + 40);
  if (v121 >= *(a1 + 448))
  {
    v17 = a4[5] + a4[4] - 1;
    sub_10047E4C4(&v108, *(a4[1] + 8 * (v17 / 0x19)) + 160 * (v17 % 0x19));
    sub_10047DDC0(&v103, a1 + 456);
    sub_10047E338(v100, a1 + 544);
    if (sub_10048A1E0(&v108, &v103, *(a1 + 448), v121))
    {
      v97 = 0x100000003;
      v96 = xmmword_10056EDA0;
      v95 = off_1009A8F78;
      v98 = v99;
      sub_1003A8C00(&v95, 3, 1);
      sub_1003A8C50(&v95, 0.0);
      v92 = 0x600000003;
      v91 = xmmword_10089D9B0;
      v90 = off_1009AD0E8;
      v93 = v94;
      sub_1003A8C00(&v90, 3, 6);
      sub_1003A8C50(&v90, 0.0);
      sub_10048BD7C(&v95, &v90, &v103);
      v87 = 0x100000003;
      v86 = xmmword_10056EDA0;
      v85 = off_1009A8F78;
      v88 = &v89;
      sub_1003A8C00(&v85, 3, 1);
      sub_1003A8C50(&v85, 0.0);
      v18 = *(a5 + 48);
      *sub_1003AFDBC(&v85, 0) = v18;
      v19 = *(a5 + 64);
      *sub_1003AFDBC(&v85, 1u) = v19;
      v20 = *(a5 + 72);
      *sub_1003AFDBC(&v85, 2u) = v20;
      v77 = 0x100000003;
      v76 = xmmword_10056EDA0;
      v75 = off_1009A8F78;
      v78 = v79;
      sub_1003A920C(&v85, &v95, &v75);
      sub_1003A8CFC(a2, &v75);
      v82 = 0x300000003;
      v81 = xmmword_10056EDB0;
      v80 = off_1009A8FC0;
      v83 = v84;
      sub_1003A8C00(&v80, 3, 3);
      sub_1003A8C50(&v80, 0.0);
      v21 = *(a5 + 56);
      *sub_1003A8DB0(&v80, 0, 0) = v21 * v21;
      v22 = *(a5 + 80);
      *sub_1003A8DB0(&v80, 1, 1) = v22 * v22;
      v23 = *(a5 + 88);
      *sub_1003A8DB0(&v80, 2, 2) = v23 * v23;
      sub_10047E208(v69, v102, v101);
      sub_1003A9464(v100, v69);
      v72 = 0x600000006;
      v71 = xmmword_10089D7B0;
      v70 = off_1009ACD88;
      v73 = v74;
      sub_1003A90A8(v69, v100, &v70);
      v77 = 0x600000006;
      v76 = xmmword_10089D7B0;
      v75 = off_1009ACD88;
      v78 = v79;
      v66 = 0x100000006;
      v64 = off_1009ACE18;
      v65 = xmmword_10089D7C0;
      v67 = &v68;
      v124 = 0x100000018;
      v123 = xmmword_10089D7D0;
      v122 = off_1009ACE60;
      v125 = v126;
      sub_1003A9CA4(&v70, &v64, &v122, &v75);
    }

    if (__p)
    {
      v120 = __p;
      operator delete(__p);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }

    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }

    if (v112[0])
    {
      v112[1] = v112[0];
      operator delete(v112[0]);
    }

    if (*(&v109 + 1))
    {
      v110 = *(&v109 + 1);
      operator delete(*(&v109 + 1));
    }
  }

  else
  {
    v9 = a4[10];
    v10 = a4[7];
    v11 = (v10 + 8 * (v9 >> 9));
    if (a4[8] == v10)
    {
      v12 = 0;
      v16 = 0;
      v13 = a4 + 11;
      v15 = (v10 + 8 * ((a4[11] + v9) >> 9));
    }

    else
    {
      v12 = (*v11 + 8 * (a4[10] & 0x1FFLL));
      v13 = a4 + 11;
      v14 = a4[11] + v9;
      v15 = (v10 + 8 * (v14 >> 9));
      v16 = (*v15 + 8 * (v14 & 0x1FF));
    }

    v24 = (a1 + 872);
    v25 = sub_100493C10(v11, v12, v15, v16, (a1 + 872));
    v27 = v26;
    v28 = a4[10];
    v29 = a4[7];
    v30 = (v29 + 8 * (v28 >> 9));
    if (a4[8] == v29)
    {
      v31 = 0;
      v34 = 0;
      v33 = (v29 + 8 * ((*v13 + v28) >> 9));
    }

    else
    {
      v31 = (*v30 + 8 * (a4[10] & 0x1FFLL));
      v32 = *v13 + v28;
      v33 = (v29 + 8 * (v32 >> 9));
      v34 = (*v33 + 8 * (v32 & 0x1FF));
    }

    v36 = sub_100493C10(v30, v31, v33, v34, &v121);
    v37 = v35;
    v38 = a4[7];
    if (a4[8] == v38)
    {
      if (!v27)
      {
        return 0;
      }

      v39 = 0;
    }

    else
    {
      if (*(v38 + ((a4[10] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a4[10] & 0x1FFLL) == v27)
      {
        return 0;
      }

      v39 = *(v38 + (((*v13 + a4[10]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v13 + a4[10]) & 0x1FFLL);
      if (v39 == v27)
      {
        return 0;
      }
    }

    if (v39 != v35)
    {
      sub_10047DDC0(&v64, a1 + 880);
      sub_10047E338(v100, a1 + 968);
      v40 = a4[7];
      v41 = a4[8];
      v42 = (v40 + 8 * (a4[10] >> 9));
      if (v41 == v40)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v42 + 8 * (a4[10] & 0x1FFLL);
      }

      if (v27 == v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = ((v27 - *v25) >> 3) + ((v25 - v42) << 6) - ((v43 - *v42) >> 3);
      }

      if (v41 == v40)
      {
        v45 = 0;
      }

      else
      {
        v45 = *v42 + 8 * (a4[10] & 0x1FFLL);
      }

      if (v37 == v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = ((v37 - *v36) >> 3) + ((v36 - v42) << 6) - ((v45 - *v42) >> 3);
      }

      if (v44 < 1)
      {
        __assert_rtn("peekInnovationAndCovariance", "RoseSensorFusionEKF.cpp", 628, "indexFirstIMUDataToAdvanceTo > 0");
      }

      v47 = *v24;
      if (v44 >= v46)
      {
LABEL_45:
        v52 = a4[4];
        v53 = a4[1];
        v54 = *(v53 + 8 * ((v46 - 1 + v52) / 0x19uLL)) + 160 * ((v46 - 1 + v52) % 0x19uLL);
        v55 = v52 + v46;
        v56 = ((v52 + v46) * 0x47AE147AE147AE15uLL) >> 64;
        if (sub_10048A5CC(v54, *(v53 + 8 * ((v56 + ((v55 - v56) >> 1)) >> 4)) + 160 * (v55 - 25 * ((v56 + ((v55 - v56) >> 1)) >> 4)), &v64, v47, v121))
        {
          v105 = 0x100000003;
          v104 = xmmword_10056EDA0;
          v103 = off_1009A8F78;
          v106 = &v107;
          sub_1003A8C00(&v103, 3, 1);
          sub_1003A8C50(&v103, 0.0);
          v92 = 0x600000003;
          v91 = xmmword_10089D9B0;
          v90 = off_1009AD0E8;
          v93 = v94;
          sub_1003A8C00(&v90, 3, 6);
          sub_1003A8C50(&v90, 0.0);
          sub_10048BD7C(&v103, &v90, &v64);
          v97 = 0x100000003;
          v96 = xmmword_10056EDA0;
          v95 = off_1009A8F78;
          v98 = v99;
          sub_1003A8C00(&v95, 3, 1);
          sub_1003A8C50(&v95, 0.0);
          v57 = *(a5 + 48);
          *sub_1003AFDBC(&v95, 0) = v57;
          v58 = *(a5 + 64);
          *sub_1003AFDBC(&v95, 1u) = v58;
          v59 = *(a5 + 72);
          *sub_1003AFDBC(&v95, 2u) = v59;
          v77 = 0x100000003;
          v76 = xmmword_10056EDA0;
          v75 = off_1009A8F78;
          v78 = v79;
          sub_1003A920C(&v95, &v103, &v75);
          sub_1003A8CFC(a2, &v75);
          v110 = 0x300000003;
          v109 = xmmword_10056EDB0;
          v108 = off_1009A8FC0;
          v111 = v112;
          sub_1003A8C00(&v108, 3, 3);
          sub_1003A8C50(&v108, 0.0);
          v60 = *(a5 + 56);
          *sub_1003A8DB0(&v108, 0, 0) = v60 * v60;
          v61 = *(a5 + 80);
          *sub_1003A8DB0(&v108, 1, 1) = v61 * v61;
          v62 = *(a5 + 88);
          *sub_1003A8DB0(&v108, 2, 2) = v62 * v62;
          sub_10047E208(v69, v102, v101);
          sub_1003A9464(v100, v69);
          v72 = 0x600000006;
          v71 = xmmword_10089D7B0;
          v70 = off_1009ACD88;
          v73 = v74;
          sub_1003A90A8(v69, v100, &v70);
          v77 = 0x600000006;
          v76 = xmmword_10089D7B0;
          v75 = off_1009ACD88;
          v78 = v79;
          v82 = 0x100000006;
          v81 = xmmword_10089D7C0;
          v80 = off_1009ACE18;
          v83 = v84;
          v124 = 0x100000018;
          v123 = xmmword_10089D7D0;
          v122 = off_1009ACE60;
          v125 = v126;
          sub_1003A9CA4(&v70, &v80, &v122, &v75);
        }
      }

      else
      {
        while (1)
        {
          v48 = v47;
          v47 = *(*(a4[7] + (((v44 + a4[10]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v44 + a4[10]) & 0x1FF));
          v49 = v44 + a4[4];
          v50 = ((v49 - 1) * 0x47AE147AE147AE15uLL) >> 64;
          v51 = (v50 + ((v49 - 1 - v50) >> 1)) >> 4;
          if (!sub_10048A5CC(*(a4[1] + 8 * v51) + 160 * (v49 - 1 - 25 * v51), *(a4[1] + 8 * (v49 / 0x19)) + 160 * (v49 % 0x19), &v64, v48, v47))
          {
            break;
          }

          if (v46 == ++v44)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10048BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0x100000001;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v27 = v6;
  v26 = off_1009A96E8;
  v29 = &v30;
  sub_1003A8C00(&v26, 1, 1);
  sub_1003A8C50(&v26, 0.0);
  v23 = 0x100000002;
  v22 = xmmword_10056F230;
  v21 = off_1009A9730;
  v24 = &v25;
  sub_1003A8C00(&v21, 2, 1);
  sub_1003A8C50(&v21, 0.0);
  v18 = 0x600000001;
  v17 = xmmword_10089D9C0;
  v16 = off_1009AD370;
  v19 = &v20;
  sub_1003A8C00(&v16, 1, 6);
  sub_1003A8C50(&v16, 0.0);
  v13 = 0x600000002;
  v12 = xmmword_10089D9D0;
  v11 = off_1009AD3B8;
  v14 = &v15;
  sub_1003A8C00(&v11, 2, 6);
  sub_1003A8C50(&v11, 0.0);
  sub_10048D5A0(&v26, &v16, a3);
  sub_10048D794(&v21, &v11, a3);
  if (DWORD2(v27) != 1)
  {
    sub_1004D0E94();
  }

  v7 = *v29;
  *sub_1003AFDBC(a1, 0) = v7;
  sub_100494D54(v10, a1, &qword_1009F9630);
  sub_10048DA48(v10, &v21);
  v33 = 0x100000001;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  v32 = v8;
  v31 = off_1009AA310;
  v34 = &v35;
  v35 = 0;
  sub_100494F64(v10, a2, &v31, &qword_1009F9548);
  sub_10048DB10(v10, &v16);
  sub_100495208(v10, a2, &qword_1009F9630, &qword_1009F9548);
  return sub_10048DC4C(v10, &v11);
}

uint64_t sub_10048C074(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = *(a3 + 40);
  if (v62 >= *(a1 + 448))
  {
    v13 = a2[5] + a2[4] - 1;
    sub_10047E4C4(&v49, *(a2[1] + 8 * (v13 / 0x19)) + 160 * (v13 % 0x19));
    sub_10047DDC0(v48, a1 + 456);
    sub_10047E338(v47, a1 + 544);
    if (sub_10048A1E0(&v49, v48, *(a1 + 448), v62))
    {
      v67 = 0x100000006;
      v66 = xmmword_10089D7C0;
      v65 = off_1009ACDD0;
      v68 = &v69;
      sub_100493028(v64);
    }

    if (__p)
    {
      v61 = __p;
      operator delete(__p);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (*(&v50 + 1))
    {
      v51 = *(&v50 + 1);
      operator delete(*(&v50 + 1));
    }
  }

  else
  {
    v5 = a2[10];
    v6 = a2[7];
    v7 = (v6 + 8 * (v5 >> 9));
    if (a2[8] == v6)
    {
      v8 = 0;
      v12 = 0;
      v9 = a2 + 11;
      v11 = (v6 + 8 * ((a2[11] + v5) >> 9));
    }

    else
    {
      v8 = (*v7 + 8 * (a2[10] & 0x1FFLL));
      v9 = a2 + 11;
      v10 = a2[11] + v5;
      v11 = (v6 + 8 * (v10 >> 9));
      v12 = (*v11 + 8 * (v10 & 0x1FF));
    }

    v14 = sub_100493C10(v7, v8, v11, v12, (a1 + 872));
    v16 = v15;
    v17 = a2[10];
    v18 = a2[7];
    v19 = (v18 + 8 * (v17 >> 9));
    if (a2[8] == v18)
    {
      v20 = 0;
      v23 = 0;
      v22 = (v18 + 8 * ((*v9 + v17) >> 9));
    }

    else
    {
      v20 = (*v19 + 8 * (a2[10] & 0x1FFLL));
      v21 = *v9 + v17;
      v22 = (v18 + 8 * (v21 >> 9));
      v23 = (*v22 + 8 * (v21 & 0x1FF));
    }

    v25 = sub_100493C10(v19, v20, v22, v23, &v62);
    v26 = v24;
    v27 = a2[7];
    if (a2[8] == v27)
    {
      v28 = 0;
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      if (*(v27 + ((a2[10] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a2[10] & 0x1FFLL) == v16)
      {
        return 0;
      }

      v28 = *(v27 + (((*v9 + a2[10]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v9 + a2[10]) & 0x1FFLL);
      if (v28 == v16)
      {
        return 0;
      }
    }

    if (v28 == v24)
    {
      return 0;
    }

    sub_10047DDC0(v63, a1 + 880);
    sub_10047E338(v47, a1 + 968);
    v29 = a2[7];
    v30 = a2[8];
    v31 = (v29 + 8 * (a2[10] >> 9));
    if (v30 == v29)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v31 + 8 * (a2[10] & 0x1FFLL);
    }

    if (v16 == v32 || (v33 = *v31, v34 = ((v16 - *v14) >> 3) + ((v14 - v31) << 6) - ((v32 - *v31) >> 3), v34 <= 0))
    {
      __assert_rtn("peekDirectionalError", "RoseSensorFusionEKF.cpp", 714, "indexFirstIMUDataToAdvanceTo > 0");
    }

    v35 = *(a1 + 872);
    if (v30 == v29)
    {
      v36 = 0;
    }

    else
    {
      v36 = v33 + 8 * (a2[10] & 0x1FFLL);
    }

    if (v26 == v36)
    {
      v37 = 0;
      v38 = -1;
      goto LABEL_41;
    }

    v37 = ((v26 - *v25) >> 3) + ((v25 - v31) << 6) - ((v36 - v33) >> 3);
    v38 = v37 - 1;
    if (v34 >= v37)
    {
LABEL_41:
      v43 = a2[4];
      v44 = ((v38 + v43) * 0x47AE147AE147AE15uLL) >> 64;
      v45 = (v44 + ((v38 + v43 - v44) >> 1)) >> 4;
      if (sub_10048A5CC(*(a2[1] + 8 * v45) + 160 * (v38 + v43 - 25 * v45), *(a2[1] + 8 * ((v43 + v37) / 0x19uLL)) + 160 * ((v43 + v37) % 0x19uLL), v63, v35, v62))
      {
        v51 = 0x100000006;
        v50 = xmmword_10089D7C0;
        v49 = off_1009ACDD0;
        v52 = v53;
        sub_100493028(v48);
      }

      return 0;
    }

    while (1)
    {
      v39 = v35;
      v35 = *(*(a2[7] + (((v34 + a2[10]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v34 + a2[10]) & 0x1FF));
      v40 = v34 + a2[4];
      v41 = ((v40 - 1) * 0x47AE147AE147AE15uLL) >> 64;
      v42 = (v41 + ((v40 - 1 - v41) >> 1)) >> 4;
      if (!sub_10048A5CC(*(a2[1] + 8 * v42) + 160 * (v40 - 1 - 25 * v42), *(a2[1] + 8 * (v40 / 0x19)) + 160 * (v40 % 0x19), v63, v39, v35))
      {
        break;
      }

      if (++v34 >= v37)
      {
        goto LABEL_41;
      }
    }
  }

  return 0;
}

std::string *sub_10048C864@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v2 = result->__r_.__value_.__r.__words[1];
  v3 = HIDWORD(result->__r_.__value_.__r.__words[1]);
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      if (v3)
      {
        v7 = 0;
        v8 = v3;
        do
        {
          v9 = sub_1002EB6B8(v4, i, v7);
          std::to_string(&v13, v9);
          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v13;
          }

          else
          {
            v10 = v13.__r_.__value_.__r.__words[0];
          }

          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v13.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, v10, size);
          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }

          if (v8 == 1)
          {
            v12 = ";";
          }

          else
          {
            v12 = ",";
          }

          result = std::string::append(a2, v12);
          ++v7;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void sub_10048C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048C9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 1192), *(*(a1 + 1232) + 4 * j), *(*(a1 + 1320) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048CA88(void *result)
{
  result[161] = off_1009A90F0;
  result[150] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

double sub_10048CAE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x600000006;
  *a2 = off_1009ACD88;
  *(a2 + 8) = xmmword_10089D7B0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_10049395C(a1, a2);
  return result;
}

uint64_t sub_10048CB68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 616), *(*(a1 + 656) + 4 * j), *(*(a1 + 720) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048CC44(void *result)
{
  result[86] = off_1009A90F0;
  result[78] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048CCA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 328), *(*(a1 + 368) + 4 * j), *(*(a1 + 432) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048CD80(void *result)
{
  result[50] = off_1009A90F0;
  result[42] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048CDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  result = sub_10047E208(a4, *(a2 + 16), v9);
  v16 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (v8)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = sub_100492D08(a2, v13);
          result = sub_100492D08(a3, v12);
          *(*(a4 + 32) + 8 * v14) = *(*(a1 + 32) + 8 * (v15 + *(a1 + 20) * result));
          ++v13;
          ++v14;
        }

        while (v8 != v13);
      }

      ++v12;
      v11 += v8;
    }

    while (v12 != v16);
  }

  return result;
}

void *sub_10048CF04(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 24);
  do
  {
    v3 = *(v2 - 3);
    *sub_1003AFDBC(&unk_1009FA178, v1) = v3;
    v4 = *v2;
    *sub_1003AFDBC(&unk_1009FA1B8, v1) = v4;
    v5 = v2[3];
    result = sub_1003AFDBC(&unk_1009FA1F8, v1);
    *result = v5;
    ++v1;
    ++v2;
  }

  while (v1 != 3);
  return result;
}

BOOL sub_10048CF8C(double a1, double a2, double a3, double a4)
{
  v8 = fmin(a1, fmin(a2, a3));
  v9 = v8 > 0.0;
  if (v8 > 0.0)
  {
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, a1);
    sub_1003A8CFC(&qword_1009FA238, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, a2);
    sub_1003A8CFC(&qword_1009FA2A8, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, a3);
    sub_1003A8CFC(&qword_1009FA318, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, a4);
    sub_1003A8CFC(&qword_1009FA388, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, 1.0 / sqrt(a1));
    sub_1003A8CFC(&qword_1009FA3F8, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, 1.0 / sqrt(a2));
    sub_1003A8CFC(&qword_1009FA468, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, 1.0 / sqrt(a3));
    sub_1003A8CFC(&qword_1009FA4D8, &v18);
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21.__locale_ = v22;
    sub_1003C07A0(&qword_1009F9740, &v18, 1.0 / sqrt(a4));
    sub_1003A8CFC(&qword_1009FA548, &v18);
  }

  else
  {
    sub_100193120(&v18);
    v10 = *(&v19 + 1);
    *(&v19 + *(*(&v19 + 1) - 24) + 16) = *(&v19 + *(*(&v19 + 1) - 24) + 16) & 0xFFFFFEFB | 4;
    *(&v21.__locale_ + *(v10 - 24)) = 3;
    sub_10000EA44(&v19 + 1, "RoseEKF error: Trying to set dynamics noise intensity values that are not positive\n", 83);
    sub_10000EA44(&v19 + 1, "qT: ", 4);
    v11 = std::ostream::operator<<();
    sub_10000EA44(v11, ", qA: ", 6);
    v12 = std::ostream::operator<<();
    sub_10000EA44(v12, ", qG: ", 6);
    v13 = std::ostream::operator<<();
    sub_10000EA44(v13, ", qV:", 5);
    std::ostream::operator<<();
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str();
      sub_1004D1320(v17);
    }

    *(&v19 + 1) = v15;
    if (v24 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v21);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return v9;
}

void sub_10048D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

double *sub_10048D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100485B6C(a3, &qword_1009F9660, 0, &v21);
  v13 = 0x100000003;
  v11 = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A920C(&v21, &unk_1009FA1B8, &v11);
  v28 = 0x100000003;
  v26 = off_1009A8F78;
  v27 = xmmword_10056EDA0;
  v29 = &v30;
  v23 = 0x100000134;
  v21 = off_1009A9168;
  v22 = xmmword_10056EEA0;
  v24 = &v25;
  v18 = 0x100000003;
  v16 = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  sub_1003AFEC0(&v11, &v26, &v21, &v16, "2");
  v6 = v5;
  result = sub_1003AFDBC(a1, 0);
  *result = v6;
  if (v6 != 0.0)
  {
    v8 = sub_1002EB67C(&v11, 0);
    *sub_1003AFDBC(a2, 0) = v8 / v6;
    v9 = sub_1002EB67C(&v11, 1u);
    *sub_1003AFDBC(a2, 1u) = v9 / v6;
    v10 = sub_1002EB67C(&v11, 2u);
    result = sub_1003AFDBC(a2, 2u);
    *result = v10 / v6;
  }

  return result;
}

void sub_10048D794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100485B6C(a3, &qword_1009F9660, 0, &v26);
  v18 = 0x100000003;
  v16 = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  sub_1003A920C(&v26, &unk_1009FA1F8, &v16);
  v33 = 0x100000003;
  v31 = off_1009A8F78;
  v32 = xmmword_10056EDA0;
  v34 = &v35;
  v28 = 0x100000134;
  v26 = off_1009A9168;
  v27 = xmmword_10056EEA0;
  v29 = &v30;
  v23 = 0x100000003;
  v21 = off_1009A8F78;
  v22 = xmmword_10056EDA0;
  v24 = &v25;
  sub_1003AFEC0(&v16, &v31, &v26, &v21, "2");
  v6 = v5;
  v7 = sub_1002EB67C(&v16, 0);
  v8 = sub_1002EB67C(&v16, 1u);
  v9 = sub_1002EB67C(&v16, 2u);
  if (v6 != 0.0)
  {
    v10 = v9;
    v11 = sub_1003AFDBC(a1, 0);
    *v11 = atan2(v10, v8);
    v12 = sub_1003AFDBC(a1, 1u);
    *v12 = asin(v7 / v6);
    v13 = v10 * v10 + v8 * v8;
    v14 = 1.0 / (v6 * v6);
    *sub_1003A8DB0(a2, 0, 0) = 0;
    v15 = sqrt(v13);
    *sub_1003A8DB0(a2, 1, 0) = v14 * v15;
    if (v13 != 0.0)
    {
      *sub_1003A8DB0(a2, 0, 1) = -v10 / v13;
      *sub_1003A8DB0(a2, 0, 2) = v8 / v13;
      *sub_1003A8DB0(a2, 1, 1) = v14 * (-(v7 * v8) / v15);
      *sub_1003A8DB0(a2, 1, 2) = v14 * (-(v7 * v10) / v15);
    }
  }
}

uint64_t sub_10048DA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    sub_1004D1384();
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = *(*(a2 + 32) + 8 * i);
      *sub_100494ED8(*(a1 + 56), *(*(a1 + 96) + 4 * i)) = v6;
      *(*(a1 + 32) + 8 * i) = v6;
    }
  }

  return a1;
}

void *sub_10048DAD0(void *result)
{
  result[8] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048DB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 88), *(*(a1 + 128) + 4 * j), *(*(a1 + 176) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048DBEC(void *result)
{
  result[18] = off_1009A90F0;
  result[12] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048DC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 136), *(*(a1 + 176) + 4 * j), *(*(a1 + 224) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048DD28(void *result)
{
  result[24] = off_1009A90F0;
  result[18] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

void sub_10048DDC8(uint64_t a1, uint64_t a2, double a3, long double a4, long double a5, double a6, double a7, double a8, double a9)
{
  v69 = 0x100000003;
  v68 = xmmword_10056EDA0;
  v67 = off_1009A8F78;
  v70 = &v71;
  sub_1003A920C(&unk_1009FA1B8, &unk_1009FA1F8, &v67);
  v64 = 0x100000003;
  v63 = xmmword_10056EDA0;
  v62 = off_1009A8F78;
  v65 = v66;
  v74 = 0x100000134;
  v73 = xmmword_10056EEA0;
  v72 = off_1009A9168;
  v75 = v76;
  v59 = 0x100000003;
  v58 = xmmword_10056EDA0;
  v57 = off_1009A8F78;
  v60 = v61;
  sub_1003AFEC0(&v67, &v62, &v72, &v57, "2");
  if (v16 == 0.0)
  {
    v17 = *sub_1003AFDBC(&unk_1009FA1F8, 0);
    v18 = sub_1003AFDBC(a1, 0);
    v19 = __sincos_stret(a5);
    *v18 = v17 + a3 * v19.__sinval;
    v20 = *sub_1003AFDBC(&unk_1009FA1F8, 1u);
    v21 = sub_1003AFDBC(a1, 1u);
    v22 = __sincos_stret(a4);
    *v21 = v20 + v19.__cosval * a3 * v22.__cosval;
    v23 = *sub_1003AFDBC(&unk_1009FA1F8, 2u);
    v24 = sub_1003AFDBC(a1, 2u);
    v25 = v23 + v19.__cosval * a3 * v22.__sinval;
  }

  else
  {
    v26 = __sincos_stret(a5);
    v47 = a6;
    v27 = __sincos_stret(a4);
    v50 = a4;
    v28 = a8;
    v29 = sub_1002EB67C(&v67, 0);
    v30 = sub_1002EB67C(&v67, 1u);
    v31 = sub_1002EB67C(&v67, 2u);
    v32 = (v27.__cosval * v26.__cosval * v30 + v29 * v26.__sinval + v31 * (v27.__sinval * v26.__cosval)) * -2.0;
    v33 = (sqrt(fmax((v30 * v30 + v29 * v29 + v31 * v31 - a3 * a3) * -4.0 + v32 * v32, 0.0)) - v32) * 0.5;
    v34 = *sub_1003AFDBC(&unk_1009FA1F8, 0);
    *sub_1003AFDBC(a1, 0) = v34 + v33 * v26.__sinval;
    v35 = *sub_1003AFDBC(&unk_1009FA1F8, 1u);
    v36 = sub_1003AFDBC(a1, 1u);
    v37 = v35 + v33 * (v27.__cosval * v26.__cosval);
    a6 = v47;
    *v36 = v37;
    v38 = *sub_1003AFDBC(&unk_1009FA1F8, 2u);
    v24 = sub_1003AFDBC(a1, 2u);
    v25 = v38 + v33 * (v27.__sinval * v26.__cosval);
    a8 = v28;
    a4 = v50;
  }

  *v24 = v25;
  if (1.57079633 - fabs(a5) > 0.01)
  {
    v74 = 0x300000003;
    v73 = xmmword_10056EDB0;
    v72 = off_1009A8FC0;
    v75 = v76;
    sub_1003A8C00(&v72, 3, 3);
    sub_1003A8C50(&v72, 0.0);
    *sub_1003A8DB0(&v72, 0, 0) = a6 * a6;
    *sub_1003A8DB0(&v72, 1, 1) = a7 * a7;
    *sub_1003A8DB0(&v72, 2, 1) = a9;
    *sub_1003A8DB0(&v72, 1, 2) = a9;
    *sub_1003A8DB0(&v72, 2, 2) = a8 * a8;
    v64 = 0x300000003;
    v63 = xmmword_10056EDB0;
    v62 = off_1009A8FC0;
    v65 = v66;
    sub_1003A8C00(&v62, 3, 3);
    sub_1003A8C50(&v62, 0.0);
    v39 = sin(a5);
    *sub_1003A8DB0(&v62, 0, 0) = v39;
    *sub_1003A8DB0(&v62, 0, 1) = 0;
    v40 = cos(a5);
    v41 = v40 * a3;
    *sub_1003A8DB0(&v62, 0, 2) = v40 * a3;
    v42 = cos(a4);
    *sub_1003A8DB0(&v62, 1, 0) = v42 * v40;
    v43 = sin(a4);
    *sub_1003A8DB0(&v62, 1, 1) = v43 * -(a3 * v40);
    v44 = -(a3 * v39);
    *sub_1003A8DB0(&v62, 1, 2) = v42 * v44;
    *sub_1003A8DB0(&v62, 2, 0) = v43 * v40;
    *sub_1003A8DB0(&v62, 2, 1) = v42 * v41;
    *sub_1003A8DB0(&v62, 2, 2) = v43 * v44;
    v54 = 0x300000003;
    v52 = off_1009A8FC0;
    v53 = xmmword_10056EDB0;
    v55 = &v56;
    sub_1003A90A8(&v62, &v72, &v52);
    sub_1003AFDF8(v51, DWORD1(v63), v63);
    sub_1003A9464(&v62, v51);
    v59 = 0x300000003;
    v58 = xmmword_10056EDB0;
    v57 = off_1009A8FC0;
    v60 = v61;
    sub_1003A90A8(&v52, v51, &v57);
    sub_1003A8CFC(a2, &v57);
  }

  else
  {
    v74 = 0x300000003;
    v73 = xmmword_10056EDB0;
    v72 = off_1009A8FC0;
    v75 = v76;
    sub_1003A8C00(&v72, 3, 3);
    sub_1003A8C50(&v72, 0.0);
    sub_1003A8CFC(a2, &v72);
    *sub_1003A8DB0(a2, 0, 0) = a6 * a6;
    v45 = a3 * a3 * (a8 * a8);
    *sub_1003A8DB0(a2, 1, 1) = v45;
    *sub_1003A8DB0(a2, 2, 2) = v45;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D13B0();
    }
  }
}

std::string *sub_10048E520@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v2 = result->__r_.__value_.__r.__words[1];
  v3 = HIDWORD(result->__r_.__value_.__r.__words[1]);
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      if (v3)
      {
        v7 = 0;
        v8 = v3;
        do
        {
          v9 = sub_1002EB6B8(v4, i, v7);
          std::to_string(&v13, v9);
          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v13;
          }

          else
          {
            v10 = v13.__r_.__value_.__r.__words[0];
          }

          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v13.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, v10, size);
          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }

          if (v8 == 1)
          {
            v12 = ";";
          }

          else
          {
            v12 = ",";
          }

          result = std::string::append(a2, v12);
          ++v7;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void sub_10048E610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048E648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    sub_1004D13EC();
  }

  v7 = *(a1 + 12);
  sub_100495550(v10, v7, 1u);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_100495654(v10, i) = i;
    }
  }

  return sub_100495690(a4, a1, a2, v10);
}

void *sub_10048E6F0(void *result)
{
  result[50] = off_1009A90F0;
  result[42] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    sub_1004D13EC();
  }

  v7 = *(a1 + 12);
  sub_100495550(v10, v7, 1u);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_100495654(v10, i) = i;
    }
  }

  return sub_10049594C(a4, a1, a2, v10);
}

uint64_t sub_10048E7F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_1004D1248();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_1004D1274();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1003A9F6C(*(a1 + 184), *(*(a1 + 224) + 4 * j), *(*(a1 + 280) + 4 * i)) = v9;
          *sub_1003A8DB0(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void *sub_10048E8D4(void *result)
{
  result[31] = off_1009A90F0;
  result[24] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

uint64_t sub_10048E934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    sub_1004D1384();
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = *(*(a2 + 32) + 8 * i);
      *sub_100494ED8(*(a1 + 64), *(*(a1 + 104) + 4 * i)) = v6;
      *(*(a1 + 32) + 8 * i) = v6;
    }
  }

  return a1;
}

void *sub_10048E9BC(void *result)
{
  result[9] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

double sub_10048EA1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  sub_100496368(a4, *(a2 + 16), 1u);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      result = *(*(a1 + 32) + 8 * (sub_100492D08(a2, i) + *(a1 + 20) * a3));
      *(*(a4 + 32) + 8 * i) = result;
    }
  }

  return result;
}

void sub_10048EB04(uint64_t a1, uint64_t a2, std::string *a3)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D1418(a3, v4);
  }

  v23 = 0x300000003;
  v22 = xmmword_10056EDB0;
  v21 = off_1009A8FC0;
  v24 = &v25;
  LOBYTE(v6) = 0;
  sub_100493EA4(a3, &v21, &v6);
  if (v6)
  {
    sub_1003AFDF8(v5, DWORD1(v22), v22);
    sub_1003A9464(&v21, v5);
    v18 = 0x300000003;
    v17 = xmmword_10056EDB0;
    v16 = off_1009A8FC0;
    v19 = &v20;
    v13 = 0x100000003;
    v12 = xmmword_10056EDA0;
    v11 = off_1009A9098;
    v14 = &v15;
    v8 = 0x10000000CLL;
    v7 = xmmword_10056EDD0;
    v6 = off_1009A9120;
    v9 = &v10;
    sub_1003A9CA4(v5, &v11, &v6, &v16);
  }

  sub_1004D14BC();
}

void sub_10048F31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D14E8(a3, v4);
  }

  v25 = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v24 = v5;
  v23 = off_1009A96E8;
  v26 = &v27;
  LOBYTE(v12) = 0;
  sub_100493EA4(a3, &v23, &v12);
  if (v12)
  {
    sub_100494BA0(v17, DWORD1(v24), v24);
    sub_1003A9464(&v23, v17);
    v20 = 0x100000001;
    *&v6 = 0x100000001;
    *(&v6 + 1) = 0x100000001;
    v19 = v6;
    v18 = off_1009A96E8;
    v21 = &v22;
    v9 = 0x100000001;
    v8 = v6;
    v7 = off_1009AA310;
    v10 = &v11;
    v14 = 0x100000004;
    v13 = xmmword_10056ED80;
    v12 = off_1009A8EE8;
    v15 = &v16;
    sub_1003A9CA4(v17, &v7, &v12, &v18);
  }

  sub_1004D14BC();
}

uint64_t sub_10048FB4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    sub_1004D1574();
  }

  v13 = 0x100000001;
  v11 = off_1009AA310;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v12 = v6;
  v14 = &v15;
  *sub_100495654(&v11, 0) = a2;
  v7 = *(a1 + 12);
  sub_1004964E4(v10, v7, 1u);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_100495654(v10, i) = i;
    }
  }

  return sub_1004965D4(a4, a1, &v11, v10);
}

void *sub_10048FC30(void *result)
{
  result[18] = off_1009A90F0;
  result[12] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

double sub_10048FCB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  sub_100496368(a4, *(a2 + 16), 1u);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      result = *(*(a1 + 32) + 8 * (sub_100492D08(a2, i) + *(a1 + 20) * a3));
      *(*(a4 + 32) + 8 * i) = result;
    }
  }

  return result;
}

void sub_10048FD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D15A0(a3, v4);
  }

  v23 = 0x200000002;
  v22 = xmmword_10056F250;
  v21 = off_1009A97C0;
  v24 = &v25;
  LOBYTE(v6) = 0;
  sub_100493EA4(a3, &v21, &v6);
  if (v6)
  {
    sub_1003C106C(v5, DWORD1(v22), v22);
    sub_1003A9464(&v21, v5);
    v18 = 0x200000002;
    v17 = xmmword_10056F250;
    v16 = off_1009A97C0;
    v19 = &v20;
    v13 = 0x100000002;
    v12 = xmmword_10056F230;
    v11 = off_1009AA3E8;
    v14 = &v15;
    v8 = 0x100000008;
    v7 = xmmword_100571560;
    v6 = off_1009AA430;
    v9 = &v10;
    sub_1003A9CA4(v5, &v11, &v6, &v16);
  }

  sub_1004D14BC();
}

uint64_t sub_1004905DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    sub_1004D13EC();
  }

  v7 = *(a1 + 12);
  sub_100495550(v10, v7, 1u);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_100495654(v10, i) = i;
    }
  }

  return sub_100496AC8(a4, a1, a2, v10);
}

void *sub_100490684(void *result)
{
  result[24] = off_1009A90F0;
  result[18] = off_1009A90F0;
  *result = off_1009991A0;
  return result;
}

double sub_100490704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  sub_100496368(a4, *(a2 + 16), 1u);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      result = *(*(a1 + 32) + 8 * (sub_100492D08(a2, i) + *(a1 + 20) * a3));
      *(*(a4 + 32) + 8 * i) = result;
    }
  }

  return result;
}

void sub_1004907CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 444) == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D16D0();
    }

    if (fabs(*(a2 + 16)) <= 1.57079633 && fabs(*(a2 + 8)) <= 3.14159265)
    {
      if (sub_100487C3C(a1, a3, *a2))
      {
        v19 = 0x100000002;
        v17 = off_1009A9730;
        v18 = xmmword_10056F230;
        v20 = &v21;
        sub_1003A8C00(&v17, 2, 1);
        sub_1003A8C50(&v17, 0.0);
        v14 = 0x200000002;
        v12 = off_1009A97C0;
        v13 = xmmword_10056F250;
        v15 = &v16;
        sub_1003A8C00(&v12, 2, 2);
        sub_1003A8C50(&v12, 0.0);
        v6 = *(a2 + 8);
        *sub_1003AFDBC(&v17, 0) = v6;
        v7 = *(a2 + 16);
        *sub_1003AFDBC(&v17, 1u) = v7;
        v8 = *(a2 + 24);
        *sub_1003A8DB0(&v12, 0, 0) = v8 * v8;
        v9 = *(a2 + 40);
        *sub_1003A8DB0(&v12, 1, 0) = v9;
        v10 = *(a2 + 40);
        *sub_1003A8DB0(&v12, 0, 1) = v10;
        v11 = *(a2 + 32);
        *sub_1003A8DB0(&v12, 1, 1) = v11 * v11;
        sub_10048FD98(a1, &v17, &v12);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D170C();
      }

      *(a1 + 440) = 3;
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004D169C();
  }
}

void sub_100490A2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 444) == 1)
  {
    if (*(a2 + 8) <= 0.0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D1774();
      }

      *(a1 + 440) = 3;
    }

    else if (sub_100487C3C(a1, a3, *a2))
    {
      v16 = 0x100000001;
      v14 = off_1009A96E8;
      *&v5 = 0x100000001;
      *(&v5 + 1) = 0x100000001;
      v15 = v5;
      v17 = &v18;
      sub_1003A8C00(&v14, 1, 1);
      sub_1003A8C50(&v14, 0.0);
      v11 = 0x100000001;
      v9 = off_1009A96E8;
      *&v6 = 0x100000001;
      *(&v6 + 1) = 0x100000001;
      v10 = v6;
      v12 = &v13;
      sub_1003A8C00(&v9, 1, 1);
      sub_1003A8C50(&v9, 0.0);
      v7 = *(a2 + 8);
      *sub_1003AFDBC(&v14, 0) = v7;
      v8 = *(a2 + 16);
      *sub_1003A8DB0(&v9, 0, 0) = v8 * v8;
      sub_10048F31C(a1, &v14, &v9);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004D1740();
  }
}

void sub_100490BCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 444) == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D17DC();
    }

    if (fabs(*(a2 + 72)) > 1.57079633 || fabs(*(a2 + 64)) > 3.14159265 || *(a2 + 48) <= 0.0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D1818();
      }

      *(a1 + 440) = 3;
    }

    else if (sub_100487C3C(a1, a3, *(a2 + 40)))
    {
      v12 = 0x100000003;
      v10 = off_1009A8F78;
      v11 = xmmword_10056EDA0;
      v13 = &v14;
      v7 = 0x300000003;
      v6.__r_.__value_.__r.__words[0] = off_1009A8FC0;
      *&v6.__r_.__value_.__r.__words[1] = xmmword_10056EDB0;
      v8 = &v9;
      sub_10048DDC8(&v10, &v6, *(a2 + 48), *(a2 + 64), *(a2 + 72), *(a2 + 56), *(a2 + 80), *(a2 + 88), *(a2 + 96));
      sub_10048EB04(a1, &v10, &v6);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004D17A8();
  }
}

uint64_t sub_100490D88(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 444) == 1)
  {
    *a2 = *(result + 448);
    v15 = 0x100000003;
    v14 = xmmword_10056EDA0;
    v13 = off_1009A8F78;
    v16 = &v17;
    sub_1003A8C00(&v13, 3, 1);
    sub_1003A8C50(&v13, 0.0);
    v10 = 0x600000003;
    v9 = xmmword_10089D9B0;
    v8 = off_1009AD0E8;
    v11 = &v12;
    sub_1003A8C00(&v8, 3, 6);
    sub_1003A8C50(&v8, 0.0);
    v3 = v2[4];
    v4 = v2[22];
    v5 = v2[40];
    sub_10047DDC0(v7, (v2 + 57));
    *sub_1003AFDBC(v7, 0) = v3;
    *sub_1003AFDBC(v7, 1u) = v4;
    *sub_1003AFDBC(v7, 2u) = v5;
    sub_10048BD7C(&v13, &v8, v7);
    sub_10047DF50((v2 + 68), v6);
  }

  *a2 = 0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 136) = *(result + 440);
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  return result;
}

void sub_100491144(uint64_t a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D184C();
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v99 = v6;
  v100 = v7;
  v9 = *(a2 + 56);
  v8 = *(a2 + 64);
  v101 = v9;
  *&v10 = v6;
  v81 = v8;
  v82 = *(a2 + 72);
  *(&v10 + 1) = v8;
  v95 = v10;
  v96 = v82;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v97 = v11;
  v98 = v12;
  v94 = v6;
  if (*(a1 + 444) != 1)
  {
    if (v7 <= 0.0)
    {
      v80 = v6;
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v81;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v124 = v82;
        *v125 = 2048;
        *&v125[2] = v80;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#sf,RoseEKF error: Aborted initializing filter due to negative range measurement w/ range: %f m, El: %f rad, and Az: %f rad at t = %f s", &buf, 0x2Au);
      }
    }

    else
    {
      if (!sub_100498BC8(a3))
      {
        v13 = v94;
        if (v94 >= *(*(a3[7] + ((a3[10] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a3[10] & 0x1FFLL)))
        {
          *(a1 + 448) = v94;
          *(a1 + 444) = 1;
          v29 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
            *(buf.__r_.__value_.__r.__words + 4) = v7;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v81;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
            v124 = v82;
            *v125 = 2048;
            *&v125[2] = v13;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Initializing filter w/ range: %f m, El: %f rad, and Az: %f rad at t = %f s", &buf, 0x2Au);
          }

          v124 = 0x600000006;
          *&buf.__r_.__value_.__r.__words[1] = xmmword_10089D7B0;
          buf.__r_.__value_.__r.__words[0] = off_1009ACD88;
          *v125 = &v125[8];
          sub_1003A8C00(&buf, 6, 6);
          sub_1003A8C50(&buf, 0.0);
          v91 = 0x100000003;
          v90 = xmmword_10056EDA0;
          v89 = off_1009A8F78;
          v92 = &v93;
          sub_1003A8C00(&v89, 3, 1);
          sub_1003A8C50(&v89, 0.0);
          v86 = 0x300000003;
          v84 = off_1009A8FC0;
          v85 = xmmword_10056EDB0;
          v87 = &v88;
          sub_1003A8C00(&v84, 3, 3);
          sub_1003A8C50(&v84, 0.0);
          sub_10048DDC8(&v89, &v84, v7, v81, *&v82, v9, *(&v82 + 1), v11, v12);
          v114 = 0x100000001;
          *&v30 = 0x100000001;
          *(&v30 + 1) = 0x100000001;
          v113 = v30;
          *v112 = off_1009AA310;
          v115 = v116;
          v116[0] = 0;
          sub_100493344(v117, a1 + 456, &qword_1009F9660, v112);
          sub_10048A104(v117, &v89);
          v31 = *sub_1003AFDBC(a1 + 456, 0);
          v32 = *sub_1003AFDBC(a1 + 456, 1u);
          v33 = sub_1003AFDBC(a1 + 456, 2u);
          if (*(a1 + 4))
          {
            v34 = 0;
            v35 = *v33;
            do
            {
              sub_100492B14(a1 + 8, v31);
              sub_100492B14(a1 + 152, v32);
              sub_100492B14(a1 + 296, v35);
              ++v34;
            }

            while (v34 < *(a1 + 4));
          }

          sub_1004936B4(v117, &buf, &qword_1009F9660, &qword_1009F9660);
          sub_100489F48(v117, &v84);
          sub_1004936B4(v117, &buf, &qword_1009F9698, &qword_1009F9698);
          sub_100489F48(v117, &qword_1009F9740);
          v36 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            v75 = *sub_1003AFDBC(a1 + 456, 0);
            v76 = *sub_1003AFDBC(a1 + 456, 1u);
            v77 = *sub_1003AFDBC(a1 + 456, 2u);
            v117[0] = 134218752;
            *&v117[1] = v75;
            v118 = 2048;
            v119 = v76;
            v120 = 2048;
            v121 = v77;
            v122[0] = 2048;
            *&v122[1] = v94;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Initializing filter w/ state: [%f,%f,%f] at t = %f s", v117, 0x2Au);
            v36 = qword_1009F9820;
          }

          if (1.57079633 - fabs(*&v82) <= 0.01 && os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v117[0]) = 0;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Az angle close to singularity - initializing filter covariance without measurement Jacobian", v117, 2u);
            v36 = qword_1009F9820;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            sub_10048C864(&buf, &v83);
            sub_1004D1888(&v83);
          }

          v114 = 0x600000006;
          v113 = xmmword_10089D7B0;
          *v112 = off_1009ACD88;
          v115 = v116;
          v109 = 0x100000006;
          v108 = xmmword_10089D7C0;
          v107 = off_1009ACE18;
          v110 = &v111;
          v104 = 0x100000018;
          v103 = xmmword_10089D7D0;
          v102 = off_1009ACE60;
          v105 = &v106;
          sub_1003A9CA4(&buf, &v107, &v102, v112);
        }
      }

      v14 = sub_100498BC8(a3);
      v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v15)
        {
          sub_1004D1980();
        }
      }

      else if (v15)
      {
        sub_1004D18E4(&v94);
      }
    }

    goto LABEL_60;
  }

  if (sub_100498BC8(a3))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004D1DEC();
    }

    return;
  }

  v17 = *(a1 + 448);
  v18 = qword_1009F9820;
  v19 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v94 >= v17)
  {
    if (v19)
    {
      v72 = *(a2 + 48);
      v74 = *(a2 + 64);
      v73 = *(a2 + 72);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
      *(buf.__r_.__value_.__r.__words + 4) = v94;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v72;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v124 = v73;
      *v125 = 2048;
      *&v125[2] = v74;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Measurement update with a non-delayed measurement at t = %f s , range = %f m, Az = %f rad, El = %f rad", &buf, 0x2Au);
      v18 = qword_1009F9820;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D19B4();
    }

    v28 = a3[5] + a3[4] - 1;
    sub_10047E4C4(&buf, *(a3[1] + 8 * (v28 / 0x19)) + 160 * (v28 % 0x19));
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D19F0();
    }

    sub_100485CFC(a1);
  }

  if (v19)
  {
    v69 = *(a2 + 48);
    v71 = *(a2 + 64);
    v70 = *(a2 + 72);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
    *(buf.__r_.__value_.__r.__words + 4) = v94;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v69;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v124 = v70;
    *v125 = 2048;
    *&v125[2] = v71;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Measurement update with a delayed measurement at t = %f s, range = %f m, Az = %f rad, El = %f rad", &buf, 0x2Au);
  }

  v20 = a3[10];
  v21 = a3[7];
  v22 = (v21 + 8 * (v20 >> 9));
  if (a3[8] == v21)
  {
    v23 = 0;
    v27 = 0;
    v24 = a3 + 11;
    v26 = (v21 + 8 * ((a3[11] + v20) >> 9));
  }

  else
  {
    v23 = (*v22 + 8 * (a3[10] & 0x1FFLL));
    v24 = a3 + 11;
    v25 = a3[11] + v20;
    v26 = (v21 + 8 * (v25 >> 9));
    v27 = (*v26 + 8 * (v25 & 0x1FF));
  }

  v37 = sub_100493C10(v22, v23, v26, v27, (a1 + 872));
  v39 = v38;
  v40 = a3[10];
  v41 = a3[7];
  v42 = (v41 + 8 * (v40 >> 9));
  if (a3[8] == v41)
  {
    v43 = 0;
    v46 = 0;
    v45 = (v41 + 8 * ((*v24 + v40) >> 9));
  }

  else
  {
    v43 = (*v42 + 8 * (a3[10] & 0x1FFLL));
    v44 = *v24 + v40;
    v45 = (v41 + 8 * (v44 >> 9));
    v46 = (*v45 + 8 * (v44 & 0x1FF));
  }

  v48 = sub_100493C10(v42, v43, v45, v46, &v94);
  v49 = v47;
  v50 = a3[7];
  if (a3[8] != v50)
  {
    if (*(v50 + ((a3[10] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a3[10] & 0x1FFLL) == v39)
    {
      goto LABEL_57;
    }

    v51 = *(v50 + (((*v24 + a3[10]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v24 + a3[10]) & 0x1FFLL);
    if (v51 == v39)
    {
      goto LABEL_57;
    }

LABEL_52:
    if (v51 != v47)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D1B7C((a1 + 872));
      }

      sub_1003A8CFC(a1 + 456, a1 + 880);
      sub_1003A8CFC(a1 + 544, a1 + 968);
      *(a1 + 448) = *(a1 + 872);
      sub_100492754(a1);
      v52 = v37;
      v53 = a3[10];
      v55 = a3[7];
      v54 = a3[8];
      v56 = (v55 + 8 * (v53 >> 9));
      if (v54 == v55)
      {
        v57 = 0;
      }

      else
      {
        v57 = *v56 + 8 * (a3[10] & 0x1FFLL);
      }

      if (v39 == v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = ((v39 - *v52) >> 3) + ((v52 - v56) << 6) - ((v57 - *v56) >> 3);
      }

      if (v54 == v55)
      {
        v59 = 0;
      }

      else
      {
        v59 = *v56 + 8 * (a3[10] & 0x1FFLL);
      }

      if (v49 == v59)
      {
        v60 = 0;
      }

      else
      {
        v60 = ((v49 - *v48) >> 3) + ((v48 - v56) << 6) - ((v59 - *v56) >> 3);
      }

      v61 = v60 - 1;
      v62 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(*(v55 + (((v58 - 1 + v53) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v58 - 1 + v53) & 0x1FF));
        v79 = *(*(v55 + (((v61 + v53) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v61 + v53) & 0x1FF));
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218496;
        *(buf.__r_.__value_.__r.__words + 4) = v78;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v58 - 1;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v124 = v79;
        _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Will propagate using IMU data from t = %f s (index %ld) to t = %f s", &buf, 0x20u);
      }

      if (v58 >= 1)
      {
        if (v58 < v60)
        {
          do
          {
            v63 = v58 + a3[4];
            v64 = ((v63 - 1) * 0x47AE147AE147AE15uLL) >> 64;
            v65 = (v64 + ((v63 - 1 - v64) >> 1)) >> 4;
            sub_1004866C4(a1, *(a3[1] + 8 * v65) + 160 * (v63 - 1 - 25 * v65), (*(a3[1] + 8 * (v63 / 0x19)) + 160 * (v63 % 0x19)));
            v66 = *sub_1003AFDBC(a1 + 456, 0);
            v67 = *sub_1003AFDBC(a1 + 456, 1u);
            v68 = *sub_1003AFDBC(a1 + 456, 2u);
            sub_100492B14(a1 + 8, v66);
            sub_100492B14(a1 + 152, v67);
            sub_100492B14(a1 + 296, v68);
            ++v58;
          }

          while (v60 != v58);
        }

        sub_1004881D8(a1, *(a3[1] + 8 * ((a3[4] + v61) / 0x19uLL)) + 160 * ((a3[4] + v61) % 0x19uLL), *(a3[1] + 8 * ((a3[4] + v60) / 0x19uLL)) + 160 * ((a3[4] + v60) % 0x19uLL), v94);
        sub_100485CFC(a1);
      }

      sub_1004D1D14();
    }

    goto LABEL_57;
  }

  if (v39)
  {
    v51 = 0;
    goto LABEL_52;
  }

LABEL_57:
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004D1D40(&v94);
  }

  *(a1 + 440) = 7;
LABEL_60:
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D1DB0();
  }
}

double sub_1004926A0(uint64_t a1)
{
  v2 = 0;
  *(a1 + 872) = *(a1 + 448);
  do
  {
    v3 = *sub_1003AFDBC(a1 + 456, v2);
    v4 = 0;
    *sub_1003AFDBC(a1 + 880, v2) = v3;
    do
    {
      v5 = *sub_1003A8DB0(a1 + 544, v2, v4);
      *sub_1003A8DB0(a1 + 968, v2, v4++) = v5;
    }

    while (v4 != 6);
    ++v2;
  }

  while (v2 != 6);

  return sub_100492AA4(a1);
}

double sub_100492754(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = 3;
  do
  {
    *(v1 - 6) = *v1;
    *(v1 - 3) = v1[3];
    ++v1;
    --v2;
  }

  while (v2);
  v3 = (a1 + 224);
  v4 = 3;
  do
  {
    *(v3 - 9) = *(v3 - 3);
    *(v3 - 6) = *v3;
    ++v3;
    --v4;
  }

  while (v4);
  v5 = (a1 + 368);
  v6 = 3;
  do
  {
    *(v5 - 9) = *(v5 - 3);
    result = *v5;
    *(v5 - 6) = *v5;
    ++v5;
    --v6;
  }

  while (v6);
  return result;
}

void sub_1004927C4(uint64_t a1, void *a2)
{
  if (*(a1 + 444) == 1)
  {
    if (sub_100498BC8(a2))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004D1E20();
      }
    }

    else
    {
      v4 = a2[10];
      v5 = a2[7];
      v6 = (v5 + 8 * (v4 >> 9));
      if (a2[8] == v5)
      {
        v7 = 0;
        v10 = 0;
        v9 = (v5 + 8 * ((a2[11] + v4) >> 9));
      }

      else
      {
        v7 = (*v6 + 8 * (a2[10] & 0x1FFLL));
        v8 = a2[11] + v4;
        v9 = (v5 + 8 * (v8 >> 9));
        v10 = (*v9 + 8 * (v8 & 0x1FF));
      }

      v11 = sub_100493C10(v6, v7, v9, v10, (a1 + 448));
      v13 = a2[10];
      v14 = a2[7];
      v15 = (v14 + 8 * (v13 >> 9));
      if (a2[8] == v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v15 + 8 * (a2[10] & 0x1FFLL);
      }

      if (v12 == v16 || (v17 = ((v12 - *v11) >> 3) + ((v11 - v15) << 6), v18 = v16 - *v15, v19 = v17 - (v18 >> 3), v17 == v18 >> 3))
      {
        v26 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 448);
          v28 = *(*v15 + 8 * (v13 & 0x1FF));
          *buf = 134218240;
          v30 = v27;
          v31 = 2048;
          v32 = v28;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#sf,RoseEKF error: Could not complete dynamic propagation because the filter tries to advance to a new IMUData without a preceding one to interpolate from, Filter time = %f s, new IMU time = %f s", buf, 0x16u);
        }
      }

      else
      {
        if (v19 >= sub_100498D5C(a2))
        {
          return;
        }

        while (1)
        {
          v20 = v19 + a2[4];
          v21 = ((v20 - 1) * 0x47AE147AE147AE15uLL) >> 64;
          v22 = (v21 + ((v20 - 1 - v21) >> 1)) >> 4;
          if (!sub_1004866C4(a1, *(a2[1] + 8 * v22) + 160 * (v20 - 1 - 25 * v22), (*(a2[1] + 8 * (v20 / 0x19)) + 160 * (v20 % 0x19))))
          {
            break;
          }

          v23 = *sub_1003AFDBC(a1 + 456, 0);
          v24 = *sub_1003AFDBC(a1 + 456, 1u);
          v25 = *sub_1003AFDBC(a1 + 456, 2u);
          sub_100492B14(a1 + 8, v23);
          sub_100492B14(a1 + 152, v24);
          sub_100492B14(a1 + 296, v25);
          if (++v19 >= sub_100498D5C(a2))
          {
            return;
          }
        }
      }

      *(a1 + 440) = 9;
    }
  }
}

double sub_100492AA4(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = 3;
  do
  {
    *v1 = *(v1 - 6);
    v1[3] = *(v1 - 3);
    ++v1;
    --v2;
  }

  while (v2);
  v3 = (a1 + 152);
  v4 = 3;
  do
  {
    v3[6] = *v3;
    v3[9] = v3[3];
    ++v3;
    --v4;
  }

  while (v4);
  v5 = a1 + 296;
  v6 = 3;
  do
  {
    *(v5 + 48) = *v5;
    result = *(v5 + 24);
    *(v5 + 72) = result;
    v5 += 8;
    --v6;
  }

  while (v6);
  return result;
}

double sub_100492B14(uint64_t a1, double a2)
{
  v2 = 0;
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  *a1 = a2;
  v3 = 0.0;
  v4 = a1;
  do
  {
    if (v2)
    {
      v3 = v3 + v4[15] * *v4 - v4[12] * v4[3];
    }

    else
    {
      v3 = v3 + *(a1 + 120) * a2;
    }

    --v2;
    ++v4;
  }

  while (v2 != -3);
  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_100492BDC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004D1EAC();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1004D1E80();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004D1E54();
  }

  return v2 + 4 * a2;
}

uint64_t sub_100492C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A8F78;
  if ((a3 & 0x80000000) != 0)
  {
    v3 = "nc >= 0";
    v4 = 487;
    v5 = "cnmatrix.h";
    v6 = "CNMatrix";
    goto LABEL_9;
  }

  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
LABEL_8:
    v5 = "cnmatrixbase.h";
    v6 = "SetMatrixSize";
LABEL_9:
    __assert_rtn(v6, v5, v4, v3);
  }

  if (a3 >= 2)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
    goto LABEL_8;
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_100492D08(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004BB260();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1004BB234();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004BB208();
  }

  return *(v2 + 4 * a2);
}

uint64_t sub_100492E90(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009ACDD0;
  v3 = *(a2 + 8);
  if (v3 > 6)
  {
    v9 = "this->max_num_rows_ >= num_rows";
    v10 = 422;
LABEL_11:
    v11 = "cnmatrixbase.h";
    v12 = "SetMatrixSize";
    goto LABEL_15;
  }

  v5 = *(a2 + 12);
  if (v5 >= 2)
  {
    v9 = "this->max_num_cols_ >= num_cols";
    v10 = 423;
    goto LABEL_11;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v5;
  v6 = v5 * v3;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 6u)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
LABEL_14:
    v11 = "cnmatrix.h";
    v12 = "CNMatrix";
LABEL_15:
    __assert_rtn(v12, v11, v10, v9);
  }

  if (*(a2 + 12) > 1u)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      *(*(a1 + 32) + 8 * v7) = sub_100492FE8(a2, v7);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

double sub_100492FE8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004D1F30();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1004D1F04();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004D1ED8();
  }

  return *(v2 + 8 * a2);
}

void sub_100493028(uint64_t a1)
{
  *(a1 + 24) = 0x100000245;
  *a1 = off_1009ACFC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_10089DA60;
  sub_100493140();
}

void sub_100493090(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    operator delete[]();
  }

  *v1 = off_1009991A0;
  _Unwind_Resume(exception_object);
}

void sub_1004930D8(void *a1)
{
  sub_10049323C(a1);

  operator delete();
}

void *sub_10049323C(void *a1)
{
  *a1 = off_1009ACFC8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1009991A0;
  return a1;
}

uint64_t sub_100493344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x100000003;
  *(a1 + 8) = xmmword_10056EDA0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD058;
  *(a1 + 96) = 0x300000001;
  *(a1 + 64) = a2;
  *(a1 + 72) = off_1009ACEA8;
  *(a1 + 80) = xmmword_10056FAD0;
  *(a1 + 104) = a1 + 112;
  v7 = a1 + 128;
  *(a1 + 152) = 0x100000001;
  *(a1 + 128) = off_1009AA310;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *(a1 + 136) = v8;
  *(a1 + 160) = a1 + 168;
  sub_1004935F8(a1 + 72, a3);
  sub_1004935F8(v7, a4);
  v9 = *(a1 + 88);
  if (*(a1 + 24) < v9)
  {
    v17 = "this->max_num_rows_ >= num_rows";
    v18 = 422;
    goto LABEL_12;
  }

  v10 = *(a1 + 144);
  if (*(a1 + 28) < v10)
  {
    v17 = "this->max_num_cols_ >= num_cols";
    v18 = 423;
LABEL_12:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v18, v17);
  }

  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      if (v9)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = sub_1003A9F6C(a2, *(*(a1 + 104) + v13), *(*(a1 + 160) + 4 * i));
          v13 += 4;
          *(*(a1 + 32) + 8 * v14++) = *v15;
        }

        while (4 * v9 != v13);
      }

      v11 += v9;
    }
  }

  return a1;
}

void sub_100493528(_Unwind_Exception *a1)
{
  v1[16] = off_1009A90F0;
  v1[9] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100493588(void *a1)
{
  a1[16] = off_1009A90F0;
  a1[9] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_1004935F8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    if (*(result + 24) < v2)
    {
      sub_1004C7AF0();
    }

    v3 = *(a2 + 12);
    if (*(result + 28) < v3)
    {
      sub_1004C7AC4();
    }

    *(result + 8) = v2;
    *(result + 12) = v3;
    v4 = v3 * v2;
    *(result + 16) = v4;
    *(result + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(result + 32);
      v11 = *(a2 + 32);
      v12 = v9;
      v13 = v10;
      v14 = v11;
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v12;
      }

      while (v12);
      v10[v9] = v11[v9];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(result + 32);
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

uint64_t sub_1004936B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = xmmword_10056EDB0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD0A0;
  *(a1 + 144) = 0x300000001;
  *(a1 + 112) = a2;
  *(a1 + 120) = off_1009ACEA8;
  *(a1 + 128) = xmmword_10056FAD0;
  *(a1 + 152) = a1 + 160;
  v7 = a1 + 176;
  *(a1 + 200) = 0x300000001;
  *(a1 + 176) = off_1009ACEA8;
  *(a1 + 184) = xmmword_10056FAD0;
  *(a1 + 208) = a1 + 216;
  sub_1004935F8(a1 + 120, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 136);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 192);
  if (*(a1 + 28) < v9)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
LABEL_12:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v17, v16);
  }

  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v8)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = sub_1003A9F6C(a2, *(*(a1 + 152) + v12), *(*(a1 + 208) + 4 * i));
          v12 += 4;
          *(*(a1 + 32) + 8 * v13++) = *v14;
        }

        while (4 * v8 != v12);
      }

      v10 += v8;
    }
  }

  return a1;
}

void sub_10049388C(_Unwind_Exception *a1)
{
  v1[22] = off_1009A90F0;
  v1[15] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1004938EC(void *a1)
{
  a1[22] = off_1009A90F0;
  a1[15] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

float64x2_t sub_10049395C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    sub_1004D1FB4();
  }

  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  if (v4 < v5)
  {
    sub_1004D1F88();
  }

  v6 = *(a1 + 12);
  if (*(a2 + 28) < v6)
  {
    sub_1004D1F5C();
  }

  sub_1003A8C00(a2, v5, v6);
  v8 = *(a2 + 16);
  if (v8 > 3)
  {
    v12 = *(a1 + 32);
    v13 = *(a2 + 32);
    v14 = (v12 + 8 * (v8 - 2));
    v15 = (v13 + 8 * (v8 - 2));
    v16 = (v8 - 1) >> 1;
    do
    {
      v17 = *v12++;
      *v13++ = vnegq_f64(v17);
      --v16;
    }

    while (v16);
    result = vnegq_f64(*v14);
    *v15 = result;
  }

  else if (v8 >= 1)
  {
    v9 = *(a1 + 32);
    v10 = *(a2 + 32);
    do
    {
      v11 = *v9++;
      result.f64[0] = -v11;
      *v10++ = -v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100493AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000006;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AD130;
  if (a2 > 6)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

char *sub_100493C10(char *result, double *a2, char *a3, double *a4, double *a5)
{
  v14 = result;
  v15 = a2;
  if (a4 != a2)
  {
    v5 = ((a4 - *a3) >> 3) + ((a3 - result) << 6);
    v6 = a2 - *result;
    v7 = v5 - (v6 >> 3);
    if (v5 != v6 >> 3)
    {
      do
      {
        v9 = v7 >> 1;
        v10 = sub_10047DD5C(&v14, v7 >> 1);
        if (*a5 >= *v11)
        {
          v12 = v11 + 1;
          if ((v11 - *v10 + 8) == 4096)
          {
            v13 = v10[1];
            ++v10;
            v12 = v13;
          }

          v14 = v10;
          v15 = v12;
          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
      return v14;
    }
  }

  return result;
}

uint64_t sub_100493D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x60000000CLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AD1C0;
  if (a2 > 0xC)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 7)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}