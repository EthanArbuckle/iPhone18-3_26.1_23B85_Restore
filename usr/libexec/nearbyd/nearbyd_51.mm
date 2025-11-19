_BYTE *sub_1003ED030(_BYTE *result)
{
  if (result[256] == 1)
  {
    result[256] = 0;
  }

  if (result[272] == 1)
  {
    result[272] = 0;
  }

  if (result[288] == 1)
  {
    result[288] = 0;
  }

  if (result[72] == 1)
  {
    result[72] = 0;
  }

  return result;
}

uint64_t sub_1003ED074(uint64_t a1, uint64_t a2, char a3, double a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  if (*(a6 + 88) == 1 && *(a6 + 16) == 1)
  {
    v6 = *(a6 + 8) + a4;
  }

  if (*(a1 + 184) != 1)
  {
    goto LABEL_8;
  }

  if ((a3 & 1) != 0 && *&a2 > 0.0)
  {
    v8 = *&a2 / *(a1 + 84);
    v9 = powf(*(a1 + 80), v8);
    v6 = *(a1 + 176) * v9 + (1.0 - v9) * v6;
LABEL_8:
    *(a1 + 176) = v6;
    *(a1 + 184) = 1;
  }

  return *(a1 + 176);
}

void sub_1003ED120(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *(a1 + 56) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 32);
      v2 = (*(a1 + 24) + 8);
      *(a1 + 24) = v2;
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

  *(a1 + 48) = v6;
}

uint64_t sub_1003ED1AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  *(a1 + 16) = 0u;
  *(a1 + 8) = v3;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009AA1A0;
  *(a1 + 80) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 136) = *(a2 + 56);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 200) = *(a2 + 120);
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 219) = 0;
  *(a1 + 304) = 0x100000003;
  *(a1 + 280) = off_1009A8F78;
  *(a1 + 288) = xmmword_10056EDA0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 368) = 0x300000003;
  *(a1 + 344) = off_1009A8FC0;
  *(a1 + 352) = xmmword_10056EDB0;
  *(a1 + 376) = a1 + 384;
  *(a1 + 480) = 0x300000003;
  *(a1 + 456) = off_1009A8FC0;
  *(a1 + 464) = xmmword_10056EDB0;
  *(a1 + 488) = a1 + 496;
  *(a1 + 592) = 0x300000003;
  *(a1 + 568) = off_1009A8FC0;
  *(a1 + 576) = xmmword_10056EDB0;
  *(a1 + 600) = a1 + 608;
  *(a1 + 704) = 0x300000001;
  *(a1 + 680) = off_1009A9E50;
  *(a1 + 688) = xmmword_10056FAD0;
  *(a1 + 712) = a1 + 720;
  *(a1 + 768) = 0x300000001;
  *(a1 + 744) = off_1009A9E50;
  *(a1 + 752) = xmmword_10056FAD0;
  *(a1 + 776) = a1 + 784;
  *(a1 + 832) = 0x100000001;
  *(a1 + 808) = off_1009A96E8;
  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  *(a1 + 816) = v10;
  *(a1 + 840) = a1 + 848;
  sub_1003ED51C(a1);
  return a1;
}

void sub_1003ED414(_Unwind_Exception *a1)
{
  v1[101] = off_1009991A0;
  v1[93] = off_1009991A0;
  v1[85] = off_1009991A0;
  v1[71] = off_1009991A0;
  v1[57] = off_1009991A0;
  v1[43] = off_1009991A0;
  v1[35] = off_1009991A0;
  sub_1003EFBC0(v3);
  *v1 = off_1009AA220;
  sub_100188E54(v2);
  _Unwind_Resume(a1);
}

void sub_1003ED51C(uint64_t a1)
{
  v6 = 0x300000003;
  *buf = off_1009A8FC0;
  v5 = xmmword_10056EDB0;
  v7 = v8;
  sub_1003A8C00(buf, 3, 3);
  sub_1003A8C50(buf, 0.0);
  for (i = 0; i != 3; ++i)
  {
    *sub_1003A9F6C(buf, i, i) = 0x3FF0000000000000;
  }

  sub_1003A8CFC(a1 + 456, buf);
  v6 = 0x300000001;
  *buf = off_1009A9E50;
  v5 = xmmword_10056FAD0;
  v7 = v8;
  sub_1003A8C00(buf, 1, 3);
  sub_1003A8C50(buf, 0.0);
  sub_1003A8CFC(a1 + 680, buf);
  *sub_1003A8DB0(a1 + 680, 0, 0) = 0x3FF0000000000000;
  v6 = 0x300000001;
  *buf = off_1009A9E50;
  v5 = xmmword_10056FAD0;
  v7 = v8;
  sub_1003A8C00(buf, 1, 3);
  sub_1003A8C50(buf, 0.0);
  sub_1003A8CFC(a1 + 744, buf);
  *sub_1003A8DB0(a1 + 744, 0, 1) = 0x3FF0000000000000;
  v6 = 0x300000003;
  *buf = off_1009A8FC0;
  v5 = xmmword_10056EDB0;
  v7 = v8;
  sub_1003A8C00(buf, 3, 3);
  sub_1003A8C50(buf, 0.0);
  sub_1003A8CFC(a1 + 568, buf);
  *sub_1003A8DB0(a1 + 808, 0, 0) = 0;
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "kalman filter matrices initiated", buf, 2u);
  }
}

void sub_1003ED780(uint64_t a1)
{
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 219) = 0;
  v2 = *(a1 + 240);
  v3 = *(a1 + 248);
  *(a1 + 272) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 248);
      v2 = (*(a1 + 240) + 8);
      *(a1 + 240) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 128;
  }

  *(a1 + 264) = v6;
LABEL_8:
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 56) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 32);
      v7 = (*(a1 + 24) + 8);
      *(a1 + 24) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 48) = v11;
LABEL_15:
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  sub_1003ED51C(a1);
}

unint64_t sub_1003ED888(uint64_t a1, uint64_t a2, double *a3, double a4, double a5)
{
  if ((a3[11] & 1) == 0)
  {
    sub_1004CCA54();
  }

  if (*(a1 + 72) != 1)
  {
    v9 = 0;
    v8 = 0.0;
    goto LABEL_6;
  }

  v8 = a5 - *(a1 + 64);
  v9 = 1;
  if (v8 > 0.0)
  {
LABEL_6:
    *(a1 + 64) = a5;
    *(a1 + 72) = 1;
  }

  v10 = a4;
  if (*(a3 + 16) == 1)
  {
    v10 = a3[1] + a4;
  }

  if ((*(a3 + 1) & 1) == 0)
  {
    sub_1004CCA80();
  }

  *&v21 = a5;
  *(&v21 + 1) = v10;
  *&v22 = a4;
  BYTE8(v22) = *a3;
  sub_1003EDA60((a1 + 232), &v21);
  v11 = *(a1 + 272);
  if (v11 > *(a1 + 8))
  {
    *(a1 + 272) = v11 - 1;
    sub_1003EFEB4((a1 + 232), 1);
  }

  if ((*(a3 + 1) & 1) == 0)
  {
    sub_1000195BC();
  }

  v12 = *a3;
  if (v12 == 2)
  {
    v13 = 1;
    *(a1 + 222) = 1;
    if ((*(a1 + 221) & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v12 == 1)
  {
    *(a1 + 221) = 1;
LABEL_17:
    if (*(a1 + 222) != 1)
    {
      *(a1 + 80) = 0;
      goto LABEL_24;
    }

    v13 = 2;
LABEL_19:
    *(a1 + 80) = v13;
LABEL_24:
    v16 = *(a3 + 3);
    v23 = *(a3 + 2);
    v24 = v16;
    v17 = *(a3 + 5);
    v25 = *(a3 + 4);
    v26 = v17;
    v18 = *(a3 + 1);
    v21 = *a3;
    v22 = v18;
    v19 = (*(*a1 + 40))(a1, COERCE_DOUBLE(*&v8), v9, a2, &v21, v10);
    v14 = v19 & 0xFFFFFFFFFFFFFF00;
    v15 = v19;
    return v15 | v14;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CCAAC();
  }

  v14 = 0;
  v15 = 0;
  return v15 | v14;
}

int64x2_t sub_1003EDA60(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1003EFC6C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 7));
  v7 = *v6 + 32 * (v4 & 0x7F);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  v8 = a2[1];
  *(v7 - 32) = *a2;
  *(v7 - 16) = v8;
  result = vaddq_s64(a1[2], xmmword_100571410);
  a1[2] = result;
  return result;
}

double sub_1003EDAE4(uint64_t a1)
{
  if (!*(a1 + 216))
  {
    return 0.0;
  }

  v2 = *(a1 + 80);
  switch(v2)
  {
    case 2:
      v4 = sub_1002EB67C(a1 + 280, 0);
      return (v4 + sub_1002EB67C(a1 + 280, 1u)) * 0.5;
    case 1:
      return sub_1002EB67C(a1 + 280, 1u);
    case 0:
      return sub_1002EB67C(a1 + 280, 0);
  }

  return result;
}

uint64_t sub_1003EDB9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 *a5)
{
  if ((a5[88] & 1) == 0)
  {
    sub_1004CCAE0();
  }

  if (*(a1 + 80) == 2)
  {
    v6 = 152;
  }

  else
  {
    v6 = 88;
  }

  if ((a3 & 1) == 0)
  {
    *(a1 + 216) = 0;
    v10 = 0.0;
    return *&v10;
  }

  if ((a5[1] & 1) == 0)
  {
    sub_1004CCB0C();
  }

  v8 = *a5;
  v9 = *(a1 + 216);
  v10 = 0.0;
  if (v9 == 2)
  {
    if (sub_1003EE10C(a1, *&a2))
    {
      v17 = *(a5 + 3);
      v28 = *(a5 + 2);
      v29 = v17;
      v18 = *(a5 + 5);
      v30 = *(a5 + 4);
      v31 = v18;
      v19 = *(a5 + 1);
      v26 = *a5;
      v27 = v19;
      if (sub_1003EE4C0(a1, v8, &v26))
      {
        v20 = *(a5 + 3);
        v28 = *(a5 + 2);
        v29 = v20;
        v21 = *(a5 + 5);
        v30 = *(a5 + 4);
        v31 = v21;
        v22 = *(a5 + 1);
        v26 = *a5;
        v27 = v22;
        if (sub_1003EEE44(a1, &v26))
        {
LABEL_23:
          if (*(a1 + 216) != 2)
          {
            return *&v10;
          }

          goto LABEL_24;
        }
      }
    }

LABEL_28:
    *(a1 + 216) = 0;
    return *&v10;
  }

  if (v9 != 1)
  {
    if (v9)
    {
      return *&v10;
    }

    if (sub_1003EDE08(a1))
    {
      *(a1 + 216) = 1;
      *(a1 + 224) = 0;
      *(a1 + 220) = 0;
      return *&v10;
    }

    goto LABEL_23;
  }

  if (!sub_1003EE10C(a1, *&a2))
  {
    goto LABEL_28;
  }

  v11 = *(a5 + 3);
  v28 = *(a5 + 2);
  v29 = v11;
  v12 = *(a5 + 5);
  v30 = *(a5 + 4);
  v31 = v12;
  v13 = *(a5 + 1);
  v26 = *a5;
  v27 = v13;
  if ((sub_1003EE4C0(a1, v8, &v26) & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1003EDAE4(a1);
  if ((v15 & 1) == 0)
  {
    sub_1004CCB38();
  }

  if ((a5[32] & 1) == 0)
  {
    sub_1004CCB64();
  }

  if (vabdd_f64(v14, *(a5 + 3)) > *(a1 + v6 + 8))
  {
    goto LABEL_28;
  }

  v16 = *(a1 + 224) + 1;
  *(a1 + 224) = v16;
  if (v16 != *(a1 + v6))
  {
    goto LABEL_23;
  }

  *(a1 + 216) = 2;
LABEL_24:
  v23 = *(a1 + 80);
  switch(v23)
  {
    case 2:
      v25 = *sub_1003AFDBC(a1 + 280, 0);
      v10 = (v25 + *sub_1003AFDBC(a1 + 280, 1u)) * 0.5;
      break;
    case 1:
      v10 = *sub_1003AFDBC(a1 + 280, 1u);
      break;
    case 0:
      v10 = *sub_1003AFDBC(a1 + 280, 0);
      break;
  }

  return *&v10;
}

uint64_t sub_1003EDE08(uint64_t a1)
{
  v6 = 88;
  if (*(a1 + 80) == 2)
  {
    v6 = 152;
  }

  v7 = *(a1 + 272);
  v8 = v7 - 2;
  if (v7 < 2)
  {
    return 0;
  }

  v37[9] = v5;
  v37[10] = v4;
  v37[15] = v1;
  v37[17] = v2;
  v37[18] = v3;
  v11 = *(a1 + 264);
  v12 = *(a1 + 240);
  v13 = *(v12 + ((v11 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v11 & 0x7F);
  v14 = *(v13 + 24);
  v15 = *(v12 + (((v11 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v11 + 1) & 0x7F);
  if (*(v15 + 24) == v14)
  {
    v16 = 1;
    v17 = 1;
LABEL_11:
    v20 = *v13 - *v15;
    if (v20 > 0.0 && (v21 = a1 + v6, v20 <= *(a1 + v6 + 56)))
    {
      v22 = *(v13 + 8);
      *sub_1003AFDBC(a1 + 280, 0) = v22;
      v23 = *(*(*(a1 + 240) + ((*(a1 + 264) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 264) & 0x7FLL) + 8);
      *sub_1003AFDBC(a1 + 280, 1u) = v23;
      v24 = *(a1 + 264);
      v25 = (*(*(*(a1 + 240) + ((v24 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v24 & 0x7F) + 8) - *(*(*(a1 + 240) + (((v24 + v16) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v24 + v16) & 0x7F) + 8)) / v20;
      *sub_1003AFDBC(a1 + 280, 2u) = v25;
      v35 = 0x300000003;
      v33 = off_1009A8FC0;
      v34 = xmmword_10056EDB0;
      v36 = v37;
      sub_1003A8C00(&v33, 3, 3);
      sub_1003A8C50(&v33, 0.0);
      for (i = 0; i != 3; ++i)
      {
        *sub_1003A9F6C(&v33, i, i) = 0x3FF0000000000000;
      }

      sub_1003A8CFC(a1 + 344, &v33);
      v27 = *(v21 + 24) * *(v21 + 24);
      v28 = sub_1003A8DB0(a1 + 344, 2, 2);
      v29 = *(a1 + 264);
      v30 = *(*(a1 + 240) + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8));
      *v28 = v27;
      v31 = *(v21 + 16);
      if (*(v30 + 32 * (v29 & 0x7F) + 24) == 1)
      {
        *sub_1003A8DB0(a1 + 344, 0, 0) = v31 * v31;
        v32 = *(v21 + 16) + *(v21 + 16);
      }

      else
      {
        *sub_1003A8DB0(a1 + 344, 0, 0) = (v31 + v31) * (v31 + v31);
        v32 = *(v21 + 16);
      }

      LODWORD(v1) = 1;
      *sub_1003A8DB0(a1 + 344, 1, 1) = v32 * v32;
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = -1;
    while (v8)
    {
      v15 = *(v12 + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F);
      --v19;
      ++v18;
      --v8;
      if (*(v15 + 24) == v14)
      {
        v16 = -v19;
        v17 = v7 > -v19;
        goto LABEL_11;
      }
    }

    v17 = 0;
  }

  return v17 & v1;
}

uint64_t sub_1003EE10C(_DWORD *a1, long double a2)
{
  v2 = 22;
  if (a1[20] == 2)
  {
    v2 = 38;
  }

  if (a2 <= 0.0)
  {
    return 0;
  }

  v5 = &a1[v2];
  if (*&a1[v2 + 14] < a2)
  {
    return 0;
  }

  v26 = 0x300000003;
  v25 = xmmword_10056EDB0;
  v24 = off_1009A8FC0;
  v27 = v28;
  sub_1003A8C00(&v24, 3, 3);
  sub_1003A8C50(&v24, 0.0);
  for (i = 0; i != 3; ++i)
  {
    *sub_1003A9F6C(&v24, i, i) = 0x3FF0000000000000;
  }

  sub_1003A8CFC((a1 + 114), &v24);
  *sub_1003A8DB0((a1 + 114), 0, 2) = a2;
  v6 = 1;
  *sub_1003A8DB0((a1 + 114), 1, 2) = a2;
  v26 = 0x100000003;
  v25 = xmmword_10056EDA0;
  v24 = off_1009A8F78;
  v27 = v28;
  sub_1003A90A8((a1 + 114), (a1 + 70), &v24);
  sub_1003A8CFC((a1 + 70), &v24);
  v8 = v5[4];
  v9 = pow(a2, 3.0);
  v26 = 0x300000003;
  v25 = xmmword_10056EDB0;
  v24 = off_1009A8FC0;
  v27 = v28;
  sub_1003A8C00(&v24, 3, 3);
  sub_1003A8C50(&v24, 0.0);
  sub_1003A8CFC((a1 + 142), &v24);
  v10 = a2 * a2 * v8 * 0.5;
  v11 = v9 * v8 / 3.0;
  *sub_1003A8DB0((a1 + 142), 1, 1) = v11;
  *sub_1003A8DB0((a1 + 142), 0, 0) = v11;
  *sub_1003A8DB0((a1 + 142), 2, 2) = v8 * a2;
  *sub_1003A8DB0((a1 + 142), 2, 1) = v10;
  *sub_1003A8DB0((a1 + 142), 2, 0) = v10;
  *sub_1003A8DB0((a1 + 142), 1, 2) = v10;
  *sub_1003A8DB0((a1 + 142), 0, 2) = v10;
  v16 = 0x300000003;
  v14 = off_1009A8FC0;
  v15 = xmmword_10056EDB0;
  v17 = &v18;
  sub_1003A90A8((a1 + 114), (a1 + 86), &v14);
  sub_1003AFDF8(v13, a1[117], a1[116]);
  sub_1003A9464((a1 + 114), v13);
  v21 = 0x300000003;
  v20 = xmmword_10056EDB0;
  v19 = off_1009A8FC0;
  v22 = &v23;
  sub_1003A90A8(&v14, v13, &v19);
  v26 = 0x300000003;
  v25 = xmmword_10056EDB0;
  v24 = off_1009A8FC0;
  v27 = v28;
  sub_1003A8EBC(&v19, (a1 + 142), &v24);
  sub_1003A8CFC((a1 + 86), &v24);
  return v6;
}

uint64_t sub_1003EE4C0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 88;
  if (*(a1 + 80) == 2)
  {
    v3 = 152;
  }

  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_1004CCB90();
  }

  v6 = a1 + v3;
  v7 = 744;
  if (a2 == 1)
  {
    v7 = 680;
  }

  sub_1003D6F6C(v45, a1 + v7);
  if (*(a3 + 88) == 1 && *(a3 + 48) == 1)
  {
    v8 = *(a3 + 40);
    v9 = sub_1003AFDBC(a1 + 808, 0);
  }

  else
  {
    v8 = *(v6 + 40);
    v9 = sub_1003A8DB0(a1 + 808, 0, 0);
  }

  *v9 = v8 * v8;
  v32 = 0x300000001;
  v31 = xmmword_10056FAD0;
  *buf = off_1009A9E50;
  v33 = v34;
  sub_1003A90A8(v45, a1 + 344, buf);
  sub_1003EFF24(&v25, v47, v46);
  sub_1003A9464(v45, &v25);
  v22 = 0x100000001;
  v20 = off_1009A96E8;
  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  v21 = v10;
  v23 = &v24;
  sub_1003A90A8(buf, &v25, &v20);
  v42 = 0x100000001;
  *&v11 = 0x100000001;
  *(&v11 + 1) = 0x100000001;
  v41 = v11;
  v40 = off_1009A96E8;
  v43 = &v44;
  sub_1003A8EBC(&v20, a1 + 808, &v40);
  v12 = sub_1002EB6B8(&v40, 0, 0);
  result = 0;
  if (v12 > 0.0)
  {
    sub_1003EFF24(&v20, v47, v46);
    sub_1003A9464(v45, &v20);
    v27 = 0x100000003;
    v26 = xmmword_10056EDA0;
    v25 = off_1009A8F78;
    v28 = &v29;
    sub_1003A90A8(a1 + 344, &v20, &v25);
    v37 = 0x100000001;
    *&v14 = 0x100000001;
    *(&v14 + 1) = 0x100000001;
    v36 = v14;
    v35 = off_1009A96E8;
    v38 = &v39;
    v17 = 0x100000001;
    v15 = off_1009AA310;
    v16 = v14;
    v18 = &v19;
    v32 = 0x100000004;
    v31 = xmmword_10056ED80;
    *buf = off_1009A8EE8;
    v33 = v34;
    sub_1003A9CA4(&v40, &v15, buf, &v35);
  }

  return result;
}

uint64_t sub_1003EEE44(uint64_t a1, uint64_t a2)
{
  sub_1003EDAE4(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  if (*(a2 + 88) != 1)
  {
    return 1;
  }

  if (*(a2 + 32) != 1)
  {
    return 1;
  }

  v5 = v3;
  if (v3 >= 0.15)
  {
    return 1;
  }

  v6 = *(a2 + 24);
  if (vabdd_f64(v3, v6) <= 0.35)
  {
    return 1;
  }

  v7 = qword_1009F9820;
  v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v10 = 134218240;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "boundary check fails, filtered range: %.2f, expected range: %.2f", &v10, 0x16u);
    return 0;
  }

  return result;
}

void sub_1003EEF60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009AA1E0;
  *(a1 + 80) = *a3;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  operator new();
}

uint64_t sub_1003EF144(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *(a1 + 112);
  if (v6 && *(a1 + 120))
  {
    if (*(a3 + 88) == 1)
    {
      if ((*(a3 + 1) & 1) == 0)
      {
        sub_1004CCBE0();
      }

      sub_1003F01EC(a1 + 88, a3);
      v6 = *(a1 + 112);
    }

    v11 = *(a3 + 80);
    v41 = *(a3 + 64);
    v42 = v11;
    v12 = *(a3 + 48);
    v39 = *(a3 + 32);
    v40 = v12;
    v13 = *(a3 + 16);
    *v38 = *a3;
    *&v38[16] = v13;
    v14 = (*(*v6 + 16))(v6, a2, v38, a4, a5);
    if ((v15 & 1) == 0)
    {
      sub_1004CCC0C();
    }

    v16 = v14;
    v17 = *&v14;
    if ((*(a1 + 80) & 1) == 0)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        *(a3 + 80) = 0;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        *(a3 + 88) = 1;
      }

      *(a3 + 24) = v14;
      *(a3 + 32) = 1;
      v18 = *(a1 + 120);
      v19 = *(a3 + 80);
      v41 = *(a3 + 64);
      v42 = v19;
      v20 = *(a3 + 48);
      v39 = *(a3 + 32);
      v40 = v20;
      v21 = *(a3 + 16);
      *v38 = *a3;
      *&v38[16] = v21;
      v22 = COERCE_DOUBLE((*(*v18 + 16))(v18, a2, v38, a4, a5));
      v24 = v23;
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (v24)
        {
          std::to_string(v38, v22);
          if (v38[23] >= 0)
          {
            v26 = v38;
          }

          else
          {
            v26 = *v38;
          }

          v34 = 134218242;
          v35 = v16;
          v36 = 2080;
          v37 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "exp filter output: %f, kalman filter output: %s", &v34, 0x16u);
          if ((v38[23] & 0x80000000) != 0)
          {
            operator delete(*v38);
          }
        }

        else
        {
          v34 = 134218242;
          v35 = v16;
          v36 = 2080;
          v37 = "N/A";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "exp filter output: %f, kalman filter output: %s", &v34, 0x16u);
        }
      }

      if ((*(a3 + 88) & 1) == 0)
      {
        sub_1000195BC();
      }

      if (*(a3 + 80) == 1)
      {
        v28 = *(a3 + 56);
        v29 = *(a3 + 72);
        if (v24)
        {
          v30 = sub_1003FD4CC(v28, v22, *(a3 + 72));
          v31 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 134218496;
            *&v38[4] = v22;
            *&v38[12] = 2048;
            *&v38[14] = v29;
            *&v38[22] = 1024;
            *&v38[24] = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "kf range_m %.2f, mfs %.1f, check result %d", v38, 0x1Cu);
          }

          if (v30)
          {
            v17 = v22;
          }

          else
          {
            v17 = 0.0;
          }
        }

        else
        {
          v32 = sub_1003FD4CC(v28, v17, *(a3 + 72));
          v33 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 134218496;
            *&v38[4] = v16;
            *&v38[12] = 2048;
            *&v38[14] = v29;
            *&v38[22] = 1024;
            *&v38[24] = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "ef range_m %.2f, mfs %.1f, check result %d", v38, 0x1Cu);
          }

          if (!v32)
          {
            v17 = 0.0;
          }
        }
      }

      else if (v24)
      {
        v17 = v22;
      }
    }
  }

  else
  {
    v17 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CCC38();
    }
  }

  return *&v17;
}

void sub_1003EF548(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v5 = a1[12];
  v4 = a1 + 12;
  sub_10002074C((v4 - 1), v5);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
}

void *sub_1003EF600(void *a1)
{
  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);
  return a1;
}

void sub_1003EF644(void *a1)
{
  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);

  operator delete();
}

void sub_1003EF6AC(void *a1)
{
  sub_1003CCDDC(a1);

  operator delete();
}

void sub_1003EF6E8(void *a1)
{
  sub_1003EF75C(a1);

  operator delete();
}

void sub_1003EF724(uint64_t a1)
{
  sub_1003EF8A8(a1);

  operator delete();
}

void *sub_1003EF75C(void *a1)
{
  *a1 = off_1009AA1A0;
  a1[101] = off_1009991A0;
  a1[93] = off_1009991A0;
  a1[85] = off_1009991A0;
  a1[71] = off_1009991A0;
  a1[57] = off_1009991A0;
  a1[43] = off_1009991A0;
  a1[35] = off_1009991A0;
  sub_1003EFBC0(a1 + 29);
  *a1 = off_1009AA220;
  sub_100188E54(a1 + 2);
  return a1;
}

uint64_t sub_1003EF8A8(uint64_t a1)
{
  *a1 = off_1009AA1E0;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10002074C(a1 + 88, *(a1 + 96));
  *a1 = off_1009AA220;
  sub_100188E54((a1 + 16));
  return a1;
}

const void **sub_1003EF978(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100224730(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_100224BD8(a1, v11);
}

void sub_1003EFB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003EFBC0(void *a1)
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
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

const void **sub_1003EFC6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x80)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_10016F098(a1, v10);
  }

  *(a1 + 32) = v5 + 128;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10016ED78(a1, v11);
}

void sub_1003EFE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003EFEB4(void *a1, int a2)
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

uint64_t sub_1003EFF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A8F78;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 2)
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

_DWORD *sub_1003F0070(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_1004CCC6C();
  }

  result = sub_1003A8C00(a2, *(a1 + 8), *(a1 + 12));
  v7 = *(a2 + 16);
  if (v7 >= 1)
  {
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    do
    {
      v10 = *v8++;
      *v9++ = a3 - v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

float sub_1003F00E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 88);
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009AA270;
  v2 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 144) = *(a2 + 64);
  *(a1 + 160) = v5;
  *(a1 + 112) = v3;
  *(a1 + 128) = v4;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v6 = *(a1 + 80);
  v7 = "_config.alpha >= 0.0 && _config.alpha <= 1.0";
  v8 = 188;
  if (v6 < 0.0 || v6 > 1.0)
  {
LABEL_5:
    __assert_rtn("TimeDependentExpFilter", "NRBYEstimator.h", v8, v7);
  }

  result = *(a1 + 84);
  if (result <= 0.0)
  {
    v7 = "_config.nominalUpdateIntervalSeconds > 0.0";
    v8 = 189;
    goto LABEL_5;
  }

  return result;
}

void sub_1003F01BC(_Unwind_Exception *a1)
{
  *v1 = off_1009AA220;
  sub_100188E54(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F01EC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 25);
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

uint64_t sub_1003F02B8()
{
  v8[0] = xmmword_100571420;
  v8[1] = unk_100571430;
  sub_1001BD0B0(qword_1009F8558, v8, 4);
  xmmword_1009F8570 = xmmword_100563BD0;
  unk_1009F8580 = xmmword_100563BE0;
  qword_1009F8598 = 0;
  unk_1009F85A0 = 0;
  qword_1009F8590 = 0x3FD999999999999ALL;
  unk_1009F85A8 = xmmword_100563BF0;
  dword_1009F85B8 = 5;
  qword_1009F85C0 = 0x4000000000000000;
  dword_1009F85C8 = 5;
  byte_1009F85D0 = 0;
  *&algn_1009F85D1[3] = 0x30000000ALL;
  xmmword_1009F85E0 = xmmword_100563C00;
  unk_1009F85F0 = xmmword_100563C10;
  xmmword_1009F8600 = xmmword_100563C20;
  qword_1009F8610 = 0x3FE3333333333333;
  dword_1009F8618 = 3;
  xmmword_1009F8620 = xmmword_100563C30;
  unk_1009F8630 = xmmword_100563C10;
  xmmword_1009F8640 = xmmword_100563C00;
  qword_1009F8650 = 0x3FE3333333333333;
  byte_1009F8658 = 0;
  xmmword_1009F8660 = xmmword_100563C40;
  unk_1009F8670 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F8680 = _Q0;
  qword_1009F8690 = 0xBFD3333333333333;
  xmmword_1009F8698 = xmmword_100563C60;
  qword_1009F86A8 = 0x3E99999A40000000;
  xmmword_1009F86B0 = xmmword_100563BE0;
  qword_1009F86C8 = 0;
  unk_1009F86D0 = 0;
  qword_1009F86C0 = 0x3FD999999999999ALL;
  xmmword_1009F86D8 = xmmword_100563BF0;
  dword_1009F86E8 = 5;
  qword_1009F86F0 = 0x4000000000000000;
  dword_1009F86F8 = 4;
  qword_1009F8700 = 0x300000008;
  qword_1009F8708 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F8710, &v7, 1);
  xmmword_1009F8728 = xmmword_100563C70;
  qword_1009F8738 = 0x4024000000000000;
  dword_1009F8740 = 45;
  byte_1009F8748 = 0;
  byte_1009F8760 = 0;
  qword_1009F8768 = 0;
  byte_1009F8770 = 0;
  dword_1009F8774 = 1;
  byte_1009F8778 = 1;
  xmmword_1009F8780 = xmmword_100563C80;
  xmmword_1009F8790 = xmmword_100563C90;
  xmmword_1009F87A0 = v6;
  qword_1009F87B0 = 0xC059000000000000;
  xmmword_1009F87B8 = xmmword_100563CA0;
  qword_1009F87C8 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F87D0 = xmmword_100563BE0;
  qword_1009F87E0 = 0x3FD999999999999ALL;
  xmmword_1009F87E8 = 0u;
  unk_1009F87F8 = xmmword_100563BF0;
  dword_1009F8808 = 5;
  qword_1009F8810 = 0x4000000000000000;
  dword_1009F8818 = 10;
  qword_1009F8820 = 0x4034000000000000;
  dword_1009F8828 = 3;
  xmmword_1009F8830 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F8558, &_mh_execute_header);
}

uint64_t sub_1003F059C(uint64_t a1)
{
  *a1 = 0;
  v2 = a1 + 24;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0x100000004;
  *(a1 + 24) = off_1009A8EE8;
  *(a1 + 32) = xmmword_10056ED80;
  *(a1 + 56) = a1 + 64;
  sub_1003A8C00((a1 + 24), 4, 1);
  sub_1003A8C50(v2, 0.0);
  *(a1 + 120) = 0x400000004;
  *(a1 + 96) = off_1009A8F30;
  *(a1 + 104) = xmmword_10056ED90;
  *(a1 + 128) = a1 + 136;
  sub_1003A8C00((a1 + 96), 4, 4);
  sub_1003A8C50(a1 + 96, 0.0);
  *(a1 + 288) = 0x400000002;
  *(a1 + 264) = off_1009AA358;
  *(a1 + 272) = xmmword_100571550;
  *(a1 + 296) = a1 + 304;
  sub_1003A8C00((a1 + 264), 2, 4);
  sub_1003A8C50(a1 + 264, 0.0);
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 368) = 0u;
  sub_1003F077C(a1);
  return a1;
}

void sub_1003F06FC(_Unwind_Exception *a1)
{
  sub_10038F4A4((v2 + 368));
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003F077C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = 0x100000004;
  v7 = off_1009A8EE8;
  v8 = xmmword_10056ED80;
  v10 = v11;
  sub_1003A8C00(&v7, 4, 1);
  sub_1003A8C50(&v7, 0.0);
  sub_1003A8CFC(a1 + 24, &v7);
  v9 = 0x400000004;
  v7 = off_1009A8F30;
  v8 = xmmword_10056ED90;
  v10 = v11;
  sub_1003A8C00(&v7, 4, 4);
  sub_1003A8C50(&v7, 0.0);
  sub_1003A8CFC(a1 + 96, &v7);
  v9 = 0x400000002;
  v7 = off_1009AA358;
  v8 = xmmword_100571550;
  v10 = v11;
  sub_1003A8C00(&v7, 2, 4);
  sub_1003A8C50(&v7, 0.0);
  sub_1003A8CFC(a1 + 264, &v7);
  *sub_1003A8DB0(a1 + 264, 0, 0) = 0x3FF0000000000000;
  *sub_1003A8DB0(a1 + 264, 1, 1) = 0x3FF0000000000000;
  v2 = *(a1 + 376);
  v3 = *(a1 + 384);
  *(a1 + 408) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 384);
      v2 = (*(a1 + 376) + 8);
      *(a1 + 376) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 85;
  }

  *(a1 + 400) = v6;
}

void sub_1003F0984(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003E32C4((a1 + 46), a2);
  v7 = a1[51];
  if (v7 >= 6)
  {
    ++a1[50];
    a1[51] = v7 - 1;
    sub_1003E4C60((a1 + 46), 1);
  }

  if (*a1)
  {

    sub_1003F0E1C(a1, a2, v6);
  }

  else
  {
    v8 = a1[51];
    if (v8 > 4 && (v9 = a1[50], *(*(a1[47] + 8 * ((v8 + v9 - 1) / 0x55)) + 48 * ((v8 + v9 - 1) % 0x55)) - *(*(a1[47] + 8 * (v9 / 0x55)) + 48 * (v9 % 0x55)) <= 2.1))
    {
      sub_1003F0B90(a1, &v19);
      v11 = v19;
      v12 = v20;
      if (v19 == v20)
      {
        v18 = 0;
        *a3 = 0;
      }

      else
      {
        v13 = v19;
        do
        {
          sub_1003F0E1C(a1, v13, v10);
          v13 += 48;
        }

        while (v13 != v12);
        v14 = a1[1];
        v15 = *sub_1003A8DB0((a1 + 3), 0, 0);
        v16 = *sub_1003A8DB0((a1 + 3), 1, 0);
        v17 = *sub_1003A8DB0((a1 + 3), 2, 0);
        *(a3 + 32) = *(a2 + 32);
        *(a3 + 40) = *(a2 + 40);
        *a3 = v14;
        *(a3 + 8) = v15;
        *(a3 + 16) = v16;
        *(a3 + 24) = v17;
        v18 = 1;
      }

      *(a3 + 48) = v18;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 48) = 0;
    }
  }
}

void sub_1003F0B74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F0B90(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[51] != 5)
  {
    sub_1004CCC98();
  }

  v3 = 0;
  for (i = 5; i > v3; i = a1[51])
  {
    v5 = 0;
    v6 = 0;
    __src = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      v7 = a1[50];
      v8 = a1[47];
      v9 = (*(v8 + 8 * ((v7 + v3) / 0x55)) + 48 * ((v7 + v3) % 0x55));
      v10 = *(v8 + 8 * ((v6 + v7) / 0x55)) + 48 * ((v6 + v7) % 0x55);
      v11 = v9[1] - *(v10 + 8);
      v12 = v9[2] - *(v10 + 16);
      v13 = v9[3] - *(v10 + 24);
      if (sqrt(v12 * v12 + v11 * v11 + v13 * v13) < 1.5)
      {
        if (v5 >= v31)
        {
          v16 = __src;
          v17 = v5 - __src;
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v5 - __src) >> 4);
          v19 = v18 + 1;
          if (v18 + 1 > 0x555555555555555)
          {
            sub_100019B38();
          }

          if (0x5555555555555556 * ((v31 - __src) >> 4) > v19)
          {
            v19 = 0x5555555555555556 * ((v31 - __src) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v31 - __src) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v20 = 0x555555555555555;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            sub_1003F2300(&__src, v20);
          }

          v21 = 48 * v18;
          v22 = *v10;
          v23 = *(v10 + 32);
          *(v21 + 16) = *(v10 + 16);
          *(v21 + 32) = v23;
          *v21 = v22;
          v5 = (48 * v18 + 48);
          v24 = (v21 - v17);
          memcpy((v21 - v17), v16, v17);
          v25 = __src;
          __src = v24;
          v30 = v5;
          v31 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v14 = *v10;
          v15 = *(v10 + 32);
          *(v5 + 1) = *(v10 + 16);
          *(v5 + 2) = v15;
          *v5 = v14;
          v5 += 48;
        }

        v30 = v5;
        i = a1[51];
      }

      ++v6;
    }

    while (i > v6);
    v26 = __src;
    v27 = *a2;
    if (v5 - __src <= (a2[1] - *a2))
    {
      if (__src)
      {
        v30 = __src;
        operator delete(__src);
      }
    }

    else
    {
      if (v27)
      {
        a2[1] = v27;
        operator delete(v27);
        v26 = __src;
        v5 = v30;
      }

      *a2 = v26;
      a2[1] = v5;
      a2[2] = v31;
    }

    ++v3;
  }
}

void sub_1003F0DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F0E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  if (*v3)
  {
    v9 = *v4 - *(v3 + 8);
    if (v9 > 3.0)
    {
      sub_1003F077C(v3);
      *v8 = 0;
      *(v8 + 48) = 0;
      return;
    }

    v80 = 0x400000004;
    v79 = xmmword_10056ED90;
    v78 = off_1009A8F30;
    v81 = v82;
    sub_1003A8C00(&v78, 4, 4);
    sub_1003A8C50(&v78, 0.0);
    *sub_1003A8DB0(&v78, 0, 0) = 0x3FF0000000000000;
    *sub_1003A8DB0(&v78, 0, 2) = v9;
    *sub_1003A8DB0(&v78, 1, 1) = 0x3FF0000000000000;
    *sub_1003A8DB0(&v78, 1, 3) = v9;
    *sub_1003A8DB0(&v78, 2, 2) = 0x3FF0000000000000;
    *sub_1003A8DB0(&v78, 3, 3) = 0x3FF0000000000000;
    v75 = 0x400000004;
    v74 = xmmword_10056ED90;
    v73 = off_1009A8F30;
    v76 = &v77;
    sub_1003A8C00(&v73, 4, 4);
    sub_1003A8C50(&v73, 0.0);
    v14 = sub_1003A8DB0(&v73, 0, 0);
    v15 = pow(v9, 4.0) * 0.25 * 0.2;
    *v14 = v15;
    v16 = sub_1003A8DB0(&v73, 0, 2);
    v17 = pow(v9, 3.0) * 0.5 * 0.2;
    *v16 = v17;
    *sub_1003A8DB0(&v73, 1, 1) = v15;
    *sub_1003A8DB0(&v73, 1, 3) = v17;
    *sub_1003A8DB0(&v73, 2, 0) = v17;
    v18 = v9 * v9 * 0.2;
    *sub_1003A8DB0(&v73, 2, 2) = v18;
    *sub_1003A8DB0(&v73, 3, 1) = v17;
    *sub_1003A8DB0(&v73, 3, 3) = v18;
    sub_1003BBF40(v72, v6 + 24);
    v84 = 0x100000004;
    *&buf[1] = xmmword_10056ED80;
    buf[0] = off_1009A8EE8;
    v85 = v86;
    sub_1003A90A8(&v78, v6 + 24, buf);
    sub_1003A8CFC(v6 + 24, buf);
    v64 = 0x400000004;
    v63 = xmmword_10056ED90;
    v62 = off_1009A8F30;
    v65 = v66;
    sub_1003A90A8(&v78, v6 + 96, &v62);
    sub_1003A8DF4(v61, DWORD1(v79), v79);
    sub_1003A9464(&v78, v61);
    v69 = 0x400000004;
    v68 = xmmword_10056ED90;
    v67 = off_1009A8F30;
    v70 = v71;
    sub_1003A90A8(&v62, v61, &v67);
    v84 = 0x400000004;
    *&buf[1] = xmmword_10056ED90;
    buf[0] = off_1009A8F30;
    v85 = v86;
    sub_1003A8EBC(&v67, &v73, buf);
    sub_1003A8CFC(v6 + 96, buf);
    *(v6 + 8) = *v5;
    v58 = 0x200000002;
    v57 = xmmword_10056F250;
    v56 = off_1009A97C0;
    v59 = &v60;
    sub_1003A8C00(&v56, 2, 2);
    sub_1003A8C50(&v56, 0.0);
    for (i = 0; i != 2; ++i)
    {
      *sub_1003A9F6C(&v56, i, i) = 0x3FF0000000000000;
    }

    *sub_1003A8DB0(&v56, 0, 0) = 0x3FF0000000000000;
    *sub_1003A8DB0(&v56, 1, 1) = 0x3FF0000000000000;
    v53 = 0x100000002;
    v52 = xmmword_10056F230;
    v51 = off_1009A9730;
    v54 = &v55;
    sub_1003A8C00(&v51, 2, 1);
    sub_1003A8C50(&v51, 0.0);
    v48 = 0x100000002;
    v47 = xmmword_10056F230;
    v46 = off_1009A9730;
    v49 = &v50;
    sub_1003A8C00(&v46, 2, 1);
    sub_1003A8C50(&v46, 0.0);
    v20 = *sub_1003A8DB0(v6 + 24, 0, 0);
    *sub_1003A8DB0(&v51, 0, 0) = v20;
    v21 = *sub_1003A8DB0(v6 + 24, 1, 0);
    *sub_1003A8DB0(&v51, 1, 0) = v21;
    v22 = v5[1];
    *sub_1003A8DB0(&v46, 0, 0) = v22;
    v23 = v5[2];
    *sub_1003A8DB0(&v46, 1, 0) = v23;
    v43 = 0x100000002;
    v42 = xmmword_10056F230;
    v41 = off_1009A9730;
    v44 = &v45;
    sub_1003A920C(&v46, &v51, &v41);
    v84 = 0x400000002;
    *&buf[1] = xmmword_100571550;
    buf[0] = off_1009AA358;
    v85 = v86;
    sub_1003A90A8(v6 + 264, v6 + 96, buf);
    sub_1003F2434(&v67, *(v6 + 276), *(v6 + 272));
    sub_1003A9464(v6 + 264, &v67);
    v64 = 0x200000002;
    v63 = xmmword_10056F250;
    v62 = off_1009A97C0;
    v65 = v66;
    sub_1003A90A8(buf, &v67, &v62);
    v38 = 0x200000002;
    v37 = xmmword_10056F250;
    v36 = off_1009A97C0;
    v39 = &v40;
    sub_1003A8EBC(&v62, &v56, &v36);
    v69 = 0x100000002;
    v68 = xmmword_10056F230;
    v67 = off_1009A9730;
    v70 = v71;
    v84 = 0x1000000E1;
    *&buf[1] = xmmword_10056F240;
    buf[0] = off_1009A9778;
    v85 = v86;
    v64 = 0x100000002;
    v63 = xmmword_10056F230;
    v62 = off_1009A9730;
    v65 = v66;
    sub_1003AFEC0(&v41, &v67, buf, &v62, "2");
    if (v24 <= 3.0)
    {
      v33 = 0x200000002;
      v32 = xmmword_10056F250;
      v31 = off_1009A97C0;
      v34 = &v35;
      v69 = 0x100000002;
      v68 = xmmword_10056F230;
      v67 = off_1009AA3E8;
      v70 = v71;
      v64 = 0x100000002;
      v63 = xmmword_10056F230;
      v62 = off_1009AA3E8;
      v65 = v66;
      v84 = 0x100000008;
      *&buf[1] = xmmword_100571560;
      buf[0] = off_1009AA430;
      v85 = v86;
      sub_1003A9668(&v36, &v67, &v62, buf, &v31);
    }

    *(v6 + 16) = v9 + *(v6 + 16);
    v25 = *v5;
    v26 = *sub_1003A8DB0(v6 + 24, 0, 0);
    v27 = *sub_1003A8DB0(v6 + 24, 1, 0);
    v28 = v5[3];
    v67 = v5[4];
    LOBYTE(v68) = *(v5 + 40);
    if (*(v6 + 16) > 3.0)
    {
      v29 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v6 + 16);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#loc-smoother,reset filter because no measurement update for %f seconds", buf, 0xCu);
      }

      sub_1003F077C(v6);
    }

    *v8 = v25;
    *(v8 + 8) = v26;
    *(v8 + 16) = v27;
    *(v8 + 24) = v28;
    *(v8 + 32) = v67;
    *(v8 + 40) = v68;
  }

  else
  {
    v10 = v4[1];
    *sub_1003A8DB0(v3 + 24, 0, 0) = v10;
    v11 = v5[2];
    *sub_1003A8DB0(v6 + 24, 1, 0) = v11;
    *sub_1003A8DB0(v6 + 24, 2, 0) = 0;
    *sub_1003A8DB0(v6 + 24, 3, 0) = 0;
    v80 = 0x400000004;
    v79 = xmmword_10056ED90;
    v78 = off_1009A8F30;
    v81 = v82;
    sub_1003A8C00(&v78, 4, 4);
    sub_1003A8C50(&v78, 0.0);
    for (j = 0; j != 4; ++j)
    {
      *sub_1003A9F6C(&v78, j, j) = 0x3FF0000000000000;
    }

    v84 = 0x400000004;
    *&buf[1] = xmmword_10056ED90;
    buf[0] = off_1009A8F30;
    v85 = v86;
    sub_1003F2358(&v78, buf, 4.0);
    sub_1003A8CFC(v6 + 96, buf);
    *(v6 + 8) = *v5;
    *v6 = 1;
    v13 = *(v5 + 1);
    *v8 = *v5;
    *(v8 + 16) = v13;
    *(v8 + 32) = *(v5 + 2);
  }

  *(v8 + 48) = 1;
}

uint64_t sub_1003F2234(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x400000002;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AA358;
  if (a2 > 2)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
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

void sub_1003F2300(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

float64x2_t sub_1003F2358(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_1004CCCC4();
  }

  sub_1003A8C00(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    v9 = *(a2 + 16);
    do
    {
      v10 = *v7++;
      *v8++ = v10 * a3;
      --v9;
    }

    while (v9);
    if (v6 > 3)
    {
      v14 = *(a1 + 32);
      v15 = *(a2 + 32);
      v16 = (v14 + 8 * (v6 - 2));
      v17 = (v15 + 8 * (v6 - 2));
      v18 = (v6 - 1) >> 1;
      do
      {
        v19 = *v14++;
        *v15++ = vmulq_n_f64(v19, a3);
        --v18;
      }

      while (v18);
      result = vmulq_n_f64(*v16, a3);
      *v17 = result;
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      do
      {
        v13 = *v11++;
        result.f64[0] = v13 * a3;
        *v12++ = v13 * a3;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1003F2434(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AA3A0;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
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

uint64_t sub_1003F26B8(int *a1, _BYTE *a2)
{
  if (*a2 & 1) != 0 && a2[4] != 1 && (a2[3])
  {
    sub_1003F270C(a1, a2);
    return *a1;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

int *sub_1003F270C(int *result, _BYTE *a2)
{
  v2 = *result;
  if (*result <= 1)
  {
    if (v2)
    {
      if (v2 != 1 || (a2[2] & 1) == 0)
      {
        return result;
      }
    }

    else if ((a2[2] & 1) == 0)
    {
      if ((a2[1] & 1) == 0)
      {
        return result;
      }

      v3 = 1;
LABEL_12:
      *result = v3;
      return result;
    }

LABEL_11:
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    if ((a2[1] & 1) == 0 && (a2[2] & 1) == 0 && a2[5] == 1 && (a2[6] & 1) == 0)
    {
      v3 = 3;
      goto LABEL_12;
    }
  }

  else if (v2 == 3 && (a2[5] & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1003F279C(uint64_t a1, char a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009AA478;
  sub_1003AA2E0(a1 + 48, 1, 1, 1, 1, 0);
  v5 = 0;
  v6 = 0x3FA999999999999ALL;
  v7 = 20000;
  v8 = xmmword_10056DB90;
  v9 = xmmword_10056DBA0;
  v10 = xmmword_10056DBB0;
  v11 = xmmword_10056DBC0;
  v13 = 0x4014000000000000;
  v12 = 0;
  sub_1003E599C(a1 + 656, &v5);
  *(a1 + 5168) = 256;
  *(a1 + 5184) = 0;
  *(a1 + 5216) = 0;
  *(a1 + 5232) = 0;
  *(a1 + 5360) = 0;
  *(a1 + 5376) = 0;
  *(a1 + 5504) = 0;
  *(a1 + 5520) = 0;
  *(a1 + 5648) = 0;
  *(a1 + 5664) = 0;
  sub_1003FBC84(a1 + 5680);
  sub_1003DBF28(a1 + 6048);
  *(a1 + 7152) = 0;
  *(a1 + 7160) = 0;
  *(a1 + 7168) = 0;
  *(a1 + 7296) = 0;
  *(a1 + 7312) = 0;
  *(a1 + 7316) = 0;
  *(a1 + 7320) = 0;
  *(a1 + 7552) = 0;
  *(a1 + 7616) = 0;
  *(a1 + 7624) = 0;
  *(a1 + 7640) = 0;
  *(a1 + 7648) = 0;
  *(a1 + 7656) = 0;
  *(a1 + 7608) = 0;
  *(a1 + 7560) = 0u;
  *(a1 + 7576) = 0u;
  *(a1 + 7592) = 0u;
  sub_1003AA2E4(a1 + 48, 5.0);
  *(a1 + 7632) = 1;
  *(a1 + 5168) = 0;
  *(a1 + 5169) = a2;
  return a1;
}

void sub_1003F2924(_Unwind_Exception *a1)
{
  sub_1003F5168(v2);
  sub_1003F4D80((v1 + v3));
  sub_10004EDBC((v1 + 5776));
  sub_10004EDBC((v1 + 5728));
  sub_1003F4E68(v1 + 656);
  sub_1003F5064(v1 + 48);
  _Unwind_Resume(a1);
}

double sub_1003F2988(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 5169) == 1)
  {
    *&result = sub_1003DCF00(a1 + 6048, a2).n128_u64[0];
  }

  return result;
}

void sub_1003F29A8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 4096);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CCCF0();
  }

  if (v4[1073])
  {
    if (*(a2 + 152))
    {
      v42 = 0.0;
      sub_1003FD084(a1, &v42, *a2);
      sub_1003FC0A8(a1 + 5680, a2, &v70, v42, v5);
      v7 = (a1 + 8);
      if (!*(a1 + 32))
      {
        v7 = &v42;
      }

      v8 = *v7;
      v6.i64[0] = *v7;
      sub_1003DBFAC((a1 + 6048), a2, &v45, v42, v6);
      if (v71 == 1)
      {
        *(a1 + 7120) = vaddq_f32(v70, *(a1 + 7120));
      }

      if (v69 == 1)
      {
        *(a1 + 5664) = v68;
        sub_1003E80D0(a1 + 656, &v45);
        if (v53 == 1)
        {
          v40 = v46;
          v41 = v47;
          v38 = v49;
          v39 = v48;
          *&v9 = sub_1003B3E3C(xmmword_100571710);
          v10 = 0;
          v43[0] = v9;
          v43[1] = v11;
          v43[2] = v12;
          v43[3] = v13;
          do
          {
            v44[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(v43[v10])), v41, *&v43[v10], 1), v39, v43[v10], 2), v38, v43[v10], 3);
            ++v10;
          }

          while (v10 != 4);
          v14 = v44[0];
          v15 = v44[1];
          v16 = v44[2];
          v17 = v44[3];
          v18 = v4[1264];
          *(a1 + 5232) = v45;
          v19 = v51;
          *(a1 + 5312) = v50;
          *(a1 + 5328) = v19;
          if (v18 == 1)
          {
            *(a1 + 5344) = v52;
          }

          else
          {
            *(a1 + 5344) = v52;
            v4[1264] = 1;
          }

          *(a1 + 5248) = v14;
          *(a1 + 5264) = v15;
          *(a1 + 5280) = v16;
          *(a1 + 5296) = v17;
          v20 = (a1 + 5376);
          v21 = v50;
          if (v4[1408] == 1)
          {
            *(a1 + 5440) = v49;
            *(a1 + 5456) = v21;
            *(a1 + 5472) = v51;
            *(a1 + 5488) = v52;
            v22 = v46;
            *v20 = v45;
            *(a1 + 5392) = v22;
            v23 = v48;
            *(a1 + 5408) = v47;
            *(a1 + 5424) = v23;
          }

          else
          {
            *(a1 + 5440) = v49;
            *(a1 + 5456) = v21;
            v24 = v52;
            *(a1 + 5472) = v51;
            *(a1 + 5488) = v24;
            v25 = v46;
            *v20 = v45;
            *(a1 + 5392) = v25;
            v26 = v48;
            *(a1 + 5408) = v47;
            *(a1 + 5424) = v26;
            v4[1408] = 1;
          }

          v27 = v58;
          *(a1 + 5600) = v59;
          v28 = v61;
          *(a1 + 5616) = v60;
          *(a1 + 5632) = v28;
          v29 = v54;
          *(a1 + 5536) = v55;
          v30 = v57;
          *(a1 + 5552) = v56;
          *(a1 + 5568) = v30;
          *(a1 + 5584) = v27;
          *(a1 + 5488) = v68;
          v4[1396] = 1;
          *(a1 + 5520) = v29;
          *(a1 + 5648) = v62;
          *(a1 + 7152) = v8;
          v4[3064] = 1;
        }

        else if (v68 == 1)
        {
          if (v4[3064] == 1 && v8 - *(a1 + 7152) <= 3.0)
          {
            if (v4[1264])
            {
              if ((v67 & 1) == 0)
              {
                sub_1000195BC();
              }

              v31 = v64;
              v32 = v65;
              v33 = v66;
              v34 = v63;
              *&v35 = sub_1003B3E3C(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_100571600, v32), xmmword_100571610, v31), vmlaq_n_f32(vmulq_n_f32(xmmword_100571620, v34), xmmword_100571630, v33)));
              *(a1 + 5248) = v35;
              *(a1 + 5264) = v36;
              *(a1 + 5280) = v37;
            }
          }

          else if (v4[1264] == 1)
          {
            v4[1264] = 0;
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CCD58();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CCD24();
  }
}

void sub_1003F2D7C(uint64_t a1, uint64_t a2)
{
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_1004CCD8C();
  }

  if (*(a1 + 32) == 1)
  {
    v5 = a1 + 4096;
    if (*(a2 + 181) != 1)
    {
      goto LABEL_12;
    }

    v6 = *(a2 + 180);
    if (v6 <= 2)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 67109120;
        LODWORD(v37) = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,mmsValStatus %d does not pass check, rejecting range result event", &v36, 8u);
      }

      *(v5 + 3512) = 0;
      return;
    }

    if (v6 == 7)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CCE28();
      }
    }

    else
    {
LABEL_12:
      if ((*(a1 + 7552) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CCDC0();
        }

        goto LABEL_30;
      }

      sub_1003F3180(*(a2 + 8), 2.0, v4, (a1 + 7560));
      if ((*(a1 + 7552) & 1) == 0)
      {
        sub_1000195BC();
      }

      v8 = *(a2 + 16);
      if (*(a1 + 7336) - v8 > 1.0)
      {
        v9 = *(a1 + 7600);
        if (v9)
        {
          v10 = *(a1 + 7568);
          if (*(a1 + 7576) == v10 || (v11 = *(a1 + 7592), v12 = (v10 + 8 * (v11 / 0x11)), v13 = v11 % 0x11, v14 = v11 + v9, v15 = *v12 + 232 * v13, v16 = *(v10 + 8 * (v14 / 0x11)) + 232 * (v14 % 0x11), v15 == v16))
          {
            v18 = 0;
          }

          else
          {
            do
            {
              v17 = *(v15 + 16) - v8;
              v18 = v17 <= 1.0;
              if (v17 <= 1.0)
              {
                break;
              }

              v15 += 232;
              if (v15 - *v12 == 3944)
              {
                v19 = v12[1];
                ++v12;
                v15 = v19;
              }
            }

            while (v15 != v16);
          }

          *(a1 + 7608) = v18;
        }

        else
        {
          *(a1 + 7608) = 0;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004CCDF4();
          }
        }

        goto LABEL_30;
      }
    }

    *(a1 + 7608) = 1;
LABEL_30:
    sub_1003F333C(a1 + 7560, a2);
    v20 = *(a1 + 7552);
    v22 = *(a2 + 192);
    v21 = *(a2 + 208);
    v23 = *(a2 + 176);
    *(a1 + 7544) = *(a2 + 224);
    v25 = *(a2 + 16);
    v24 = *(a2 + 32);
    *(a1 + 7320) = *a2;
    *(a1 + 7336) = v25;
    *(a1 + 7352) = v24;
    v26 = *(a2 + 96);
    v28 = *(a2 + 48);
    v27 = *(a2 + 64);
    *(a1 + 7400) = *(a2 + 80);
    *(a1 + 7416) = v26;
    *(a1 + 7368) = v28;
    *(a1 + 7384) = v27;
    v29 = *(a2 + 160);
    v31 = *(a2 + 112);
    v30 = *(a2 + 128);
    *(a1 + 7464) = *(a2 + 144);
    *(a1 + 7480) = v29;
    *(a1 + 7432) = v31;
    *(a1 + 7448) = v30;
    *(a1 + 7512) = v22;
    *(a1 + 7528) = v21;
    *(a1 + 7496) = v23;
    if ((v20 & 1) == 0)
    {
      *(a1 + 7552) = 1;
    }

    if (*(a1 + 7608))
    {
      sub_1003AC208(a1 + 48, a2);
      if ((*(a1 + 7648) & 1) != 0 && *(a1 + 8) - *(a1 + 7640) > 7.5)
      {
        if (*(a1 + 5168) == 1)
        {
          v32 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v36) = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,reinitializing particle filter due to item motion timeout", &v36, 2u);
          }

          sub_1003E5668(a1 + 656);
          *(a1 + 5168) = 0;
        }
      }

      else
      {
        sub_1003E8F20(a1 + 656, *(a1 + 40), *(a2 + 16), *(a2 + 8));
        *(a1 + 5168) = 1;
      }
    }

    else
    {
      v33 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a2 + 16);
        v35 = *(a2 + 8);
        v36 = 134218240;
        v37 = v34;
        v38 = 2048;
        v39 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,#negativeBiasRangeRejection, Rejected range measurement of %3.2f m at %3.2f seconds", &v36, 0x16u);
      }
    }
  }
}

unint64_t sub_1003F3180(double a1, double a2, uint64_t a3, void *a4)
{
  v5 = a4[4];
  v6 = a4[1];
  v7 = a4[2];
  v8 = (v6 + 8 * (v5 / 0x11));
  if (v7 == v6)
  {
    v14 = 0;
    v28 = 0;
    v29 = (v6 + 8 * ((v5 + a4[5]) / 0x11));
  }

  else
  {
    v9 = *(v6 + 8 * (v5 / 0x11));
    v10 = v9 + 232 * (v5 % 0x11);
    v11 = *(v6 + 8 * ((a4[5] + v5) / 0x11)) + 232 * ((a4[5] + v5) % 0x11);
    if (v10 != v11)
    {
      while (a1 - *(v10 + 8) <= a2)
      {
        v10 += 232;
        if (v10 - v9 == 3944)
        {
          v12 = v8[1];
          ++v8;
          v9 = v12;
          v10 = v12;
        }

        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }
    }

    v13 = v8;
    if (v10 == v11)
    {
LABEL_20:
      v14 = *(v6 + 8 * ((a4[5] + v5) / 0x11)) + 232 * ((a4[5] + v5) % 0x11);
    }

    else
    {
      v14 = v10;
      while (1)
      {
        v10 += 232;
        if (v10 - v9 == 3944)
        {
          v15 = v13[1];
          ++v13;
          v10 = v15;
        }

        if (v10 == v11)
        {
          break;
        }

        if (a1 - *(v10 + 8) <= a2)
        {
          v16 = *v10;
          v17 = *(v10 + 32);
          *(v14 + 16) = *(v10 + 16);
          *(v14 + 32) = v17;
          *v14 = v16;
          v18 = *(v10 + 48);
          v19 = *(v10 + 64);
          v20 = *(v10 + 96);
          *(v14 + 80) = *(v10 + 80);
          *(v14 + 96) = v20;
          *(v14 + 48) = v18;
          *(v14 + 64) = v19;
          v21 = *(v10 + 112);
          v22 = *(v10 + 128);
          v23 = *(v10 + 160);
          *(v14 + 144) = *(v10 + 144);
          *(v14 + 160) = v23;
          *(v14 + 112) = v21;
          *(v14 + 128) = v22;
          v24 = *(v10 + 176);
          v25 = *(v10 + 192);
          v26 = *(v10 + 208);
          *(v14 + 224) = *(v10 + 224);
          *(v14 + 192) = v25;
          *(v14 + 208) = v26;
          *(v14 + 176) = v24;
          v14 += 232;
          if (v14 - *v8 == 3944)
          {
            v27 = v8[1];
            ++v8;
            v14 = v27;
          }
        }

        v9 = *v13;
      }

      v5 = a4[4];
      v6 = a4[1];
      v7 = a4[2];
    }

    v30 = v5 + a4[5];
    v29 = (v6 + 8 * (v30 / 0x11));
    if (v7 == v6)
    {
      v28 = 0;
    }

    else
    {
      v28 = (*v29 + 232 * (v30 % 0x11));
    }
  }

  return sub_1003F4744(a4, v8, v14, v29, v28);
}

uint64_t sub_1003F333C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 2 * (v5 - v6) + ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003F5214(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x11)) + 232 * (v8 % 0x11);
  v10 = *a2;
  v11 = a2[2];
  *(v9 + 16) = a2[1];
  *(v9 + 32) = v11;
  *v9 = v10;
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[6];
  *(v9 + 80) = a2[5];
  *(v9 + 96) = v14;
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  v15 = a2[7];
  v16 = a2[8];
  v17 = a2[10];
  *(v9 + 144) = a2[9];
  *(v9 + 160) = v17;
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  *(v9 + 224) = *(a2 + 28);
  *(v9 + 192) = v19;
  *(v9 + 208) = v20;
  *(v9 + 176) = v18;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40) + 1;
  *(a1 + 40) = v22;
  v23 = v21 + v22;
  v24 = *(a1 + 8);
  v25 = (v24 + 8 * (v23 / 0x11));
  v26 = *v25 + 232 * (v23 % 0x11);
  if (*(a1 + 16) == v24)
  {
    v26 = 0;
  }

  if (v26 == *v25)
  {
    v26 = *(v25 - 1) + 3944;
  }

  return v26 - 232;
}

void sub_1003F3468(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CCE5C();
  }

  if (*(a2 + 80) == 2)
  {
    v4 = (a1 + 7168);
    if (*(a1 + 7296))
    {
      v5 = *a2;
      v6 = *v4;
      v7 = *a2 - *v4;
      if (v7 > 1.0)
      {
        v8 = *(a1 + 7232);
        v9 = *v8.i32;
        v10 = *(a2 + 64);
        v11 = *v10.i32;
        v12 = vcvtq_f64_f32(vzip2_s32(*v10.i8, *v8.i8));
        v13 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        v14 = v12.f64[1];
        v15 = v13.f64[1];
        v16 = sqrt((v12.f64[0] - v12.f64[1]) * (v12.f64[0] - v12.f64[1]) + (v11 - v9) * (v11 - v9) + (v13.f64[0] - v13.f64[1]) * (v13.f64[0] - v13.f64[1])) / v7;
        if (v16 <= 4.0)
        {
          goto LABEL_14;
        }

        v69 = v13.f64[0];
        v71 = v12.f64[0];
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          *buf = 134220032;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          *&buf[22] = 2048;
          *&buf[24] = v71;
          *v82 = 2048;
          *&v82[2] = v69;
          *&v82[10] = 2048;
          *&v82[12] = v9;
          *&v82[20] = 2048;
          *&v82[22] = v14;
          *&v82[30] = 2048;
          *v83 = v15;
          *&v83[8] = 2048;
          *&v83[10] = v5;
          *&v83[18] = 2048;
          *&v83[20] = v6;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#findalgs-itemfinder,Maximum VIO speed exceeded, resetting filters: %f m/s, x: %f, y: %f, z: %f, previous x: %f, previous y: %f, previous z: %f, current time: %f, previous time: %f  ", buf, 0x5Cu);
        }

        if (*(a1 + 5360) == 1)
        {
          *(a1 + 5360) = 0;
        }

        if (*(a1 + 5216) == 1)
        {
          *(a1 + 5216) = 0;
        }

        v18 = *(a2 + 80);
        v101 = *(a2 + 64);
        v102 = v18;
        v19 = *(a2 + 112);
        v103 = *(a2 + 96);
        v104 = v19;
        v20 = *(a2 + 16);
        v97 = *a2;
        v98 = v20;
        v21 = *(a2 + 48);
        v99 = *(a2 + 32);
        v100 = v21;
        LODWORD(v102) = 1;
        v77 = v101;
        v78 = v102;
        v79 = v103;
        v80 = v19;
        v73 = v97;
        v74 = v20;
        v75 = v99;
        v76 = v21;
        sub_1003DCB64(a1 + 6048, &v73, buf);
        *(a1 + 5664) = v96;
        sub_1003E80D0(a1 + 656, buf);
        sub_1003AA2EC(a1 + 48, &v97);
        sub_1003FBCD8((a1 + 5680));
        if (*(a1 + 7296))
        {
LABEL_14:
          v22 = *a2;
          v23 = *(a2 + 16);
          v24 = *(a2 + 48);
          *(a1 + 7200) = *(a2 + 32);
          *(a1 + 7216) = v24;
          *v4 = v22;
          *(a1 + 7184) = v23;
          v25 = *(a2 + 64);
          v26 = *(a2 + 80);
          v27 = *(a2 + 96);
          *(a1 + 7280) = *(a2 + 112);
          *(a1 + 7248) = v26;
          *(a1 + 7264) = v27;
          *(a1 + 7232) = v25;
        }

        else
        {
          v61 = *a2;
          v62 = *(a2 + 16);
          v63 = *(a2 + 48);
          *(a1 + 7200) = *(a2 + 32);
          *(a1 + 7216) = v63;
          *v4 = v61;
          *(a1 + 7184) = v62;
          v64 = *(a2 + 64);
          v65 = *(a2 + 80);
          v66 = *(a2 + 112);
          *(a1 + 7264) = *(a2 + 96);
          *(a1 + 7280) = v66;
          *(a1 + 7232) = v64;
          *(a1 + 7248) = v65;
          *(a1 + 7296) = 1;
        }

        if (v16 <= 4.0)
        {
          *(a1 + 7316) = 0;
          *(a1 + 7312) = 0;
        }

        else
        {
          *(a1 + 7312) = 1;
          if (!*(a1 + 7316))
          {
            *(a1 + 7316) = 1;
          }
        }
      }
    }

    else
    {
      v28 = *a2;
      v29 = *(a2 + 16);
      v30 = *(a2 + 48);
      *(a1 + 7200) = *(a2 + 32);
      *(a1 + 7216) = v30;
      *v4 = v28;
      *(a1 + 7184) = v29;
      v31 = *(a2 + 64);
      v32 = *(a2 + 80);
      v33 = *(a2 + 112);
      *(a1 + 7264) = *(a2 + 96);
      *(a1 + 7280) = v33;
      *(a1 + 7232) = v31;
      *(a1 + 7248) = v32;
      *(a1 + 7296) = 1;
    }
  }

  else
  {
    if (*(a1 + 7296) == 1)
    {
      *(a1 + 7296) = 0;
    }

    *(a1 + 7312) = 0;
    *(a1 + 7316) = 0;
  }

  if ((*(a1 + 7312) & 1) == 0)
  {
    sub_1003FCA04(a1 + 5680, a2, buf);
    v34 = *(a2 + 80);
    v101 = *(a2 + 64);
    v102 = v34;
    v35 = *(a2 + 112);
    v103 = *(a2 + 96);
    v104 = v35;
    v36 = *(a2 + 16);
    v97 = *a2;
    v98 = v36;
    v37 = *(a2 + 48);
    v99 = *(a2 + 32);
    v100 = v37;
    sub_1003DCB64(a1 + 6048, &v97, buf);
    *(a1 + 5664) = v96;
    if (v86 == 1)
    {
      if (BYTE4(v85) == 1)
      {
        if ((v85 - 2) < 2)
        {
          goto LABEL_25;
        }

        if (!v85)
        {
          if (*(a1 + 5360) == 1)
          {
            *(a1 + 5360) = 0;
          }

          if (*(a1 + 5216) == 1)
          {
            *(a1 + 5216) = 0;
          }

          goto LABEL_28;
        }

        if (v85 == 5)
        {
LABEL_25:
          v70 = *&buf[16];
          v72 = *v82;
          v67 = *v83;
          v68 = *&v82[16];
          *&v38 = sub_1003B3E3C(xmmword_100571710);
          v39 = 0;
          v73 = v38;
          v74 = v40;
          v75 = v41;
          v76 = v42;
          do
          {
            *(&v97 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, COERCE_FLOAT(*(&v73 + v39))), v72, *(&v73 + v39), 1), v68, *(&v73 + v39), 2), v67, *(&v73 + v39), 3);
            v39 += 16;
          }

          while (v39 != 64);
          v43 = v97;
          v44 = v98;
          v45 = *v82;
          *(a1 + 5248) = *&buf[16];
          *(a1 + 5264) = v45;
          v46 = *v83;
          *(a1 + 5280) = *&v82[16];
          *(a1 + 5296) = v46;
          v47 = v84;
          *(a1 + 5312) = *&v83[16];
          v48 = v99;
          v49 = v100;
          *(a1 + 5328) = v47;
          *(a1 + 5344) = v85;
          *(a1 + 5360) = v86;
          *(a1 + 5232) = *buf;
          *(a1 + 5248) = v43;
          *(a1 + 5264) = v44;
          *(a1 + 5280) = v48;
          *(a1 + 5296) = v49;
          *(a1 + 7152) = *buf;
          *(a1 + 7160) = 1;
        }
      }

LABEL_28:
      sub_1003AA2EC(a1 + 48, buf);
      sub_1003E80D0(a1 + 656, buf);
      if (*&v83[16] == 2)
      {
        if ((v86 & 1) == 0)
        {
          sub_1000195BC();
        }

        v50 = (a1 + 5376);
        v51 = *&v83[16];
        if (*(a1 + 5504) == 1)
        {
          *(a1 + 5440) = *v83;
          *(a1 + 5456) = v51;
          *(a1 + 5472) = v84;
          *(a1 + 5488) = v85;
          v52 = *&buf[16];
          *v50 = *buf;
          *(a1 + 5392) = v52;
          v53 = *&v82[16];
          *(a1 + 5408) = *v82;
          *(a1 + 5424) = v53;
        }

        else
        {
          *(a1 + 5440) = *v83;
          *(a1 + 5456) = v51;
          v54 = v85;
          *(a1 + 5472) = v84;
          *(a1 + 5488) = v54;
          v55 = *&buf[16];
          *v50 = *buf;
          *(a1 + 5392) = v55;
          v56 = *&v82[16];
          *(a1 + 5408) = *v82;
          *(a1 + 5424) = v56;
          *(a1 + 5504) = 1;
        }

        v57 = v91;
        *(a1 + 5600) = v92;
        v58 = v94;
        *(a1 + 5616) = v93;
        *(a1 + 5632) = v58;
        v59 = v87;
        *(a1 + 5536) = v88;
        v60 = v90;
        *(a1 + 5552) = v89;
        *(a1 + 5568) = v60;
        *(a1 + 5584) = v57;
        *(a1 + 5520) = v59;
        *(a1 + 5648) = v95;
      }
    }
  }
}

void sub_1003F3A08(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 4096;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CCE90();
  }

  v5 = *a2;
  if ((*(v4 + 3528) & 1) == 0)
  {
    *(v4 + 3528) = 1;
  }

  *(a1 + 7616) = v5;
  *(a1 + 7632) = 2;
  sub_1003AC708(a1 + 48, __src);
  if (__src[256] == 1)
  {
    memcpy(v7, __src, sizeof(v7));
    sub_1003E6304(a1 + 656, v7);
  }

  sub_1003AF634(a1 + 48, 1);
  if ((*(v4 + 3552) & 1) == 0)
  {
    *(a1 + 7640) = *a2;
    *(v4 + 3552) = 1;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1000195BC();
  }

  sub_1003E8E80(a1 + 656, 2, *(a1 + 8));
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,Peer motion state set to MOVING", v7, 2u);
  }
}

void sub_1003F3B6C(uint64_t a1, uint64_t a2)
{
  sub_1003FD060(a1, a2);

  sub_1003F3BA4(a1);
}

void sub_1003F3BA4(uint64_t a1)
{
  v1 = a1 + 4096;
  if (*(a1 + 7624) == 1)
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 8) - *(a1 + 7616) >= 2.5)
      {
        *(a1 + 7624) = 0;
        *(a1 + 7632) = 1;
        sub_1003AF634(a1 + 48, 0);
        if (*(v1 + 3552) == 1)
        {
          *(v1 + 3552) = 0;
        }

        if ((*(a1 + 32) & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1003E8E80(a1 + 656, 0, *(a1 + 8));
        v3 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,Peer motion state reset to STATIC", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CCEC4();
    }
  }
}

void sub_1003F3CB0(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CCF04();
  }

  sub_1003AC708(a1 + 48, __src);
  if (v18[0] == 1 && *(a1 + 5360) == 1)
  {
    v4 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG) || (sub_1004CCFB4(v4, v18) & 1) != 0)
    {
      v5 = 60.0;
      if (*(a1 + 7632) == 1)
      {
        v5 = 30.0;
      }

      v19 = v5;
      v20 = 1;
    }

    sub_1003F3F78(a1, __src, v5);
    sub_1003F40D0(a1, __src);
    sub_1003F4244(a1, __src);
    sub_1003F42B0(a1, __src);
    sub_1003F4348(a1, __src);
    v6 = __src;
LABEL_10:
    memcpy(a2, v6, 0x1B0uLL);
    return;
  }

  sub_1003E6DB4(a1 + 656, v9);
  if (v10[0] == 1 && v12 == 1 && *(a1 + 5360) == 1 && v9[240] == 1)
  {
    v7 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG) || (sub_1004CCF6C(v7, v10) & 1) != 0)
    {
      v8 = 60.0;
      if (*(a1 + 7632) == 1)
      {
        v8 = 30.0;
      }

      v11 = v8;
      v12 = 1;
    }

    sub_1003F3F78(a1, v9, v8);
    sub_1003F40D0(a1, v9);
    sub_1003F4244(a1, __src);
    sub_1003F42B0(a1, v9);
    sub_1003F4348(a1, v9);
    v13 = *(a1 + 5664);
    v14 = 1;
    v6 = v9;
    goto LABEL_10;
  }

  if (*(a1 + 5216) == 1)
  {
    *(a1 + 5216) = 0;
  }

  if (v17 == 1 && *(a1 + 8) - v16 < 5.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CCF38();
    }

    sub_1003F443C(a1, __src, v9, a2);
  }

  else
  {
    sub_1003F4604(a1, a2);
  }

  sub_1003F42B0(a1, a2);
  sub_1003F4348(a1, a2);
}

double sub_1003F3F78(uint64_t a1, uint64_t a2, double result)
{
  v3 = a1 + 4096;
  if (*(a1 + 5360) == 1 && *(a1 + 5312) == 2 && *(a2 + 256) == 1)
  {
    LODWORD(result) = *(a2 + 24);
    if (*(a2 + 240) == 1 && *&result != 1.1755e-38 && *(a1 + 32) == 1)
    {
      v17.i32[2] = 0;
      v17.i64[0] = 0;
      if (sub_1003F49B0(a1, a2, a1 + 5232, &v17))
      {
        v7 = *(a1 + 32);
        if (*(v3 + 1120))
        {
          if (*(a1 + 32))
          {
            v8 = *(a1 + 8);
            v9 = (v8 - *(a1 + 5184)) / (v8 - *(a1 + 5184) + 1.0);
            v10 = 1.0 - v9;
            *&v9 = v9;
            *&v10 = v10;
            v11 = vmlaq_n_f32(vmulq_n_f32(*(a1 + 5200), *&v10), v17, *&v9);
            *(a1 + 5200) = v11;
            *(a1 + 5184) = v8;
            v15[0] = 0;
            v15[1] = 0;
            v16 = 0;
            v13 = vcvtq_f64_f32(*v11.f32);
            v14 = v11.f32[2];
            sub_1003AD82C(&v13, (a1 + 5232), v15);
            result = sub_1000422D4(*(v15 + 1));
            if (*(a2 + 256))
            {
              *(a2 + 248) = result;
              return result;
            }
          }

LABEL_17:
          sub_1000195BC();
        }

        if ((*(a1 + 32) & 1) == 0)
        {
          goto LABEL_17;
        }

        result = *(a1 + 8);
        v12 = v17;
        *(a1 + 5184) = result;
        *(a1 + 5200) = v12;
        *(v3 + 1120) = 1;
      }
    }
  }

  return result;
}

void sub_1003F40D0(uint64_t a1, uint64_t a2)
{
  sub_1003AED88(a1 + 48, 0, v7);
  v4 = v7[6];
  if (LOBYTE(v7[60]) == 1 && v7[6] != 1.1755e-38)
  {
    if (*(a2 + 240))
    {
      if (*(a1 + 7609))
      {
        v6 = v7[6] > 0.6;
      }

      else
      {
        v6 = v7[6] > 0.5;
      }

      if (v6)
      {
        if (v7[6] > 1.0)
        {
          if (v7[6] > 1.25)
          {
LABEL_14:
            *(a1 + 7609) = 0;
            return;
          }

          v4 = (1.0 - (1.25 - v7[6]) * 4.0) * *(a2 + 24) + (1.25 - v7[6]) * 4.0 * v7[6];
        }

        *(a2 + 24) = v4;
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CCFFC();
      }

      memcpy(a2, v7, 0x1AEuLL);
      *(a1 + 7609) = 1;
    }

    else
    {
      memcpy(a2, v7, 0x1AEuLL);
    }
  }
}

uint64_t sub_1003F4244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (*(a2 + 24) == 1.1755e-38)
  {
    v2 = 0;
  }

  v3 = *(a2 + 256);
  v4 = *(a1 + 7632) == 2;
  v6 = *(a1 + 5360);
  v7 = 0;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = 0;
  return sub_1003F4A98(a1, a2, &v6);
}

void sub_1003F42B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 7316) == 1)
  {
    v8 = v2;
    v9 = v3;
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,Reporting VIO drift in solution", v7, 2u);
    }

    *(a2 + 428) = 1;
    *(a1 + 7316) = 2;
  }
}

void sub_1003F4348(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 416) == 1)
  {
    v3 = *(a2 + 412);
    if (v3 == *(a1 + 7656))
    {
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1003F4B00(*(a1 + 7656));
    v6 = 136315394;
    v7 = v5;
    v8 = 2080;
    v9 = sub_1003F4B00(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#findalgs-itemfinder,Algorithm source changed from %s to %s", &v6, 0x16u);
  }

  *(a1 + 7656) = v3;
}

void sub_1003F443C(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  memcpy(a4, a2, 0x1B0uLL);
  v8 = a2[5] | *(a3 + 5);
  v9 = (a2[4] | *(a3 + 4)) & 1;
  v10 = *(a1 + 7632) == 2;
  v16[0] = *(a1 + 5360);
  v16[1] = v9;
  v16[2] = v8 & 1;
  v17 = 1;
  v18 = v10;
  v19 = 0;
  sub_1003F4A98(a1, a4, v16);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v12 = a2[4];
    v13 = *(a3 + 4);
    *buf = 67109632;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 1024;
    v25 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#findalgs-itemfinder,#convergence_blending, Insufficient Displacement: SA: %d, PF: %d, Blended: %d", buf, 0x14u);
    v11 = qword_1009F9820;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = a2[5];
    v15 = *(a3 + 5);
    *buf = 67109632;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 1024;
    v25 = v8 & 1;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#findalgs-itemfinder,#convergence_blending, Insufficient Horizontal Displacement: SA: %d, PF: %d, Blended: %d", buf, 0x14u);
  }

  a4[70] = *(a3 + 280);
}

uint64_t sub_1003F4604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 320) = 0;
  *(a2 + 336) = 0;
  *(a2 + 352) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 404) = 0;
  *(a2 + 408) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  *(a2 + 412) = 0;
  *(a2 + 416) = 1;
  if (*(a1 + 7552) == 1)
  {
    v4 = *(a1 + 7320);
  }

  v5 = *(a1 + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0x100800000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 121) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 240) = 1;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD030();
  }

  return sub_1003F4244(a1, a2);
}

unint64_t sub_1003F4744(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (a4 - a2) + ((a4 - a2) >> 3) + 0x34F72C234F72C235 * (&a5[-*a4] >> 3) - 0x34F72C234F72C235 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x11));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[232 * (v7 % 0x11)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2 * (a2 - v9) + ((a2 - v9) >> 3) + 0x34F72C234F72C235 * (&a3[-*a2] >> 3) - 0x34F72C234F72C235 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x11);
  v24[0].n128_u64[1] = v10;
  sub_1003F54BC(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1003F54BC(v24, v6);
      sub_1003F5564(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1003F54BC(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x11));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[232 * (v14 % 0x11)];
      }

      v24[0] = v12;
      sub_1003F5718(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x11));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 232 * (v19 % 0x11);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1003F54BC(v24, v11);
  return v24[0].n128_u64[0];
}

uint64_t sub_1003F49B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 80) != 2 || *(a2 + 256) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a2 + 240) != 1 || v4 == 1.1755e-38)
  {
    return 0;
  }

  v8 = v4;
  v9 = __sincos_stret(*(a2 + 248) * 3.14159265 / 180.0);
  v10 = v9.__cosval * v8;
  v11 = v9.__sinval * v8;
  v16 = v10;
  v17 = v11;
  v18.columns[0] = sub_1003AF418(a3);
  v12 = __invert_f2(v18);
  v13 = vmla_n_f32(vmul_n_f32(v12.columns[0], v16), v12.columns[1], v17);
  *&v14 = COERCE_FLOAT(*(a3 + 64)) + v13.f32[1];
  HIDWORD(v14) = HIDWORD(*(a3 + 64));
  *(a4 + 8) = COERCE_FLOAT(*(a3 + 72)) + v13.f32[0];
  *a4 = v14;
  return 1;
}

uint64_t sub_1003F4A98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_1003F26B8((a1 + 7660), a3);
  if (result > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1005716E8[result];
    *(a2 + 420) = dword_100571640[result];
    *(a2 + 424) = 1;
  }

  *a2 = v5;
  return result;
}

const char *sub_1003F4B00(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "None";
  }

  else
  {
    return off_1009AA620[a1 - 1];
  }
}

void *sub_1003F4B60(void *a1)
{
  *a1 = off_1009AA478;
  v2 = (a1 + 6);
  sub_1003F5168(a1 + 945);
  sub_1003F4DBC(a1 + 840);
  sub_10004EDBC(a1 + 806);
  sub_10004EDBC(a1 + 800);
  sub_10004EDBC(a1 + 722);
  sub_10004EDBC(a1 + 716);
  sub_1003F4E68((a1 + 82));
  sub_1003F5064(v2);
  return a1;
}

void sub_1003F4BFC(uint64_t a1)
{
  *a1 = off_1009AA478;
  sub_1003F5168((a1 + 7560));
  sub_1003F4DBC((a1 + 6720));
  sub_10004EDBC((a1 + 6448));
  sub_10004EDBC((a1 + 6400));
  sub_10004EDBC((a1 + 5776));
  sub_10004EDBC((a1 + 5728));
  sub_1003F4E68(a1 + 656);
  v5 = (a1 + 624);
  sub_10038E148(&v5);
  sub_10004EDBC((a1 + 552));
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    v2[21] = off_1009991A0;
    v2[13] = off_1009991A0;
    v2[5] = off_1009991A0;
    operator delete();
  }

  if (*(a1 + 176) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      *(a1 + 152) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v4)
  {
    sub_10038E1EC(v4);
    operator delete();
  }

  operator delete();
}

void *sub_1003F4D80(void *a1)
{
  sub_1003F4DBC(a1 + 84);
  sub_10004EDBC(a1 + 50);
  sub_10004EDBC(a1 + 44);
  return a1;
}

uint64_t sub_1003F4DBC(void *a1)
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
    v5 = 15;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 30;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_1003F4E68(uint64_t a1)
{
  sub_10004EDBC((a1 + 4456));
  sub_100188E54((a1 + 4320));
  sub_1003EFBC0((a1 + 4040));
  sub_10017AAC0((a1 + 3992));
  sub_1003F4EF4((a1 + 3656));
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 24) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1003F4EF4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (*v6 + 56 * (v5 % 0x49) != v7)
    {
      v8 = (*v6 + 56 * (v5 % 0x49));
      do
      {
        v9 = *v8;
        v8 += 7;
        (*v9)();
        if (v8 - *v6 == 4088)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 36;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 73;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_1003F5064(uint64_t a1)
{
  v6 = (a1 + 576);
  sub_10038E148(&v6);
  sub_10004EDBC((a1 + 504));
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    v2[21] = off_1009991A0;
    v2[13] = off_1009991A0;
    v2[5] = off_1009991A0;
    operator delete();
  }

  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      *(a1 + 104) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    sub_10038E1EC(v4);
    operator delete();
  }

  return a1;
}

uint64_t sub_1003F5168(void *a1)
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
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 17;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void *sub_1003F5214(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x11;
  v3 = v1 - 17;
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003F539C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003F53E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x11)
  {
    a2 = 1;
  }

  if (v2 < 0x22)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 17;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003F5448(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v3) + ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x11)
  {
    a2 = 1;
  }

  if (v5 < 0x22)
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

void *sub_1003F54BC(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x34F72C234F72C235 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 16 - v3;
      v6 = &v2[-(v5 / 0x11)];
      *result = v6;
      v4 = *v6 + 232 * (17 * (v5 / 0x11) - v5) + 3712;
    }

    else
    {
      *result = &v2[v3 / 0x11];
      v4 = v2[v3 / 0x11] + 232 * (v3 % 0x11);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_1003F5564@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_1003F5634(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 3944;
    }

    v12 = *v17 + 3944;
    v11 = a2;
  }

  sub_1003F5634(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1003F5634@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      v12 = 0x34F72C234F72C235 * (&a4[-v10] >> 3);
      if (0x34F72C234F72C235 * ((v11 - a1) >> 3) < v12)
      {
        v12 = 0x34F72C234F72C235 * ((v11 - a1) >> 3);
      }

      v11 -= 232 * v12;
      a4 -= 232 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 232 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 3944);
    }

    if ((*v6 + 3944) == a4)
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

double sub_1003F5718(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
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
    sub_1003F57DC(__src, *(a5 + 8), *a1 + 3944, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1003F57DC(v13, *(a5 + 8), v13 + 3944, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1003F57DC(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1003F57DC@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x34F72C234F72C235 * ((v10 - __dst + 3944) >> 3);
      if (0x34F72C234F72C235 * ((a3 - v9) >> 3) < v11)
      {
        v11 = 0x34F72C234F72C235 * ((a3 - v9) >> 3);
      }

      v12 = 232 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 232 * v11);
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
    if (*(v6 - 1) + 3944 == __dst)
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

uint64_t sub_1003F58C4()
{
  v1 = xmmword_100571660;
  v2[0] = unk_100571670;
  v2[1] = xmmword_100571680;
  v2[2] = unk_100571690;
  qword_1009F8848 = 0;
  unk_1009F8850 = 0;
  qword_1009F8840 = 0;
  sub_10004EEB8(&qword_1009F8840, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F8840, &_mh_execute_header);
  v1 = xmmword_1005716A0;
  qword_1009F8860 = 0;
  unk_1009F8868 = 0;
  qword_1009F8858 = 0;
  sub_10004EEB8(&qword_1009F8858, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F8858, &_mh_execute_header);
}

uint64_t sub_1003F59C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009AA668;
  sub_1003CA040((a1 + 48));
  sub_1003E599C(a1 + 496, a2 + 72);
  sub_1003AA2E0(a1 + 5008, *(a2 + 2), *(a2 + 3), *(a2 + 5), *(a2 + 200), *(a2 + 216));
  sub_100416300(a1 + 5616, *(a2 + 200), *(a2 + 216));
  *(a1 + 6160) = 0;
  *(a1 + 6192) = 0;
  *(a1 + 6200) = 0;
  *(a1 + 6216) = 0;
  *(a1 + 6224) = 0;
  *(a1 + 6304) = 0;
  *(a1 + 6312) = 0;
  *(a1 + 6316) = 0;
  sub_1003FBC84(a1 + 6320);
  sub_1003DBF28(a1 + 6688);
  *(a1 + 7792) = 0;
  *(a1 + 7800) = 0;
  *(a1 + 7808) = 0;
  *(a1 + 7816) = 0;
  *(a1 + 7824) = 0;
  *(a1 + 7832) = 0;
  *(a1 + 7840) = 0;
  *(a1 + 7848) = 0;
  *(a1 + 7856) = 0;
  *(a1 + 7864) = 0;
  *(a1 + 7872) = 0;
  *(a1 + 7880) = 0;
  sub_100400618(a1 + 7888, (a2 + 184));
  *(a1 + 7944) = 0;
  *(a1 + 7960) = 0;
  *(a1 + 7968) = 0;
  *(a1 + 8200) = 0;
  *(a1 + 8320) = 0;
  *(a1 + 8368) = 0;
  *(a1 + 8376) = 0;
  *(a1 + 8424) = 0;
  *(a1 + 8432) = 0;
  *(a1 + 8436) = 0;
  *(a1 + 8464) = 0;
  *(a1 + 8472) = 0;
  *(a1 + 8520) = 0;
  *(a1 + 8528) = 0;
  *(a1 + 8536) = 0;
  *(a1 + 8544) = 0;
  *(a1 + 8552) = 0;
  *(a1 + 8560) = 0;
  *(a1 + 8592) = 0;
  *(a1 + 8624) = 0;
  *(a1 + 8632) = 0;
  *(a1 + 8640) = 0;
  *(a1 + 8648) = 0;
  *(a1 + 8656) = 0;
  *(a1 + 8288) = 0u;
  *(a1 + 8272) = 0u;
  *(a1 + 8256) = 0u;
  *(a1 + 8240) = 0u;
  *(a1 + 8224) = 0u;
  *(a1 + 8208) = 0u;
  *(a1 + 8304) = 0;
  *(a1 + 8600) = 0u;
  *(a1 + 8616) = 0;
  *(a1 + 8672) = 16843009;
  *(a1 + 8676) = 1;
  *(a1 + 8677) = 256;
  *(a1 + 8680) = 0x3FF0000000000000;
  *(a1 + 8688) = vdupq_n_s64(0x404A000000000000uLL);
  *(a1 + 8704) = xmmword_100571720;
  __asm { FMOV            V1.2D, #2.0 }

  *(a1 + 8720) = _Q1;
  *(a1 + 8736) = 0x4000000000000000;
  *(a1 + 8744) = 0;
  *(a1 + 8752) = 0x3FA999999999999ALL;
  *(a1 + 8760) = 20000;
  *(a1 + 8768) = xmmword_10056DB90;
  *(a1 + 8784) = xmmword_10056DBA0;
  *(a1 + 8800) = xmmword_10056DBB0;
  *(a1 + 8816) = xmmword_10056DBC0;
  *(a1 + 8832) = 1;
  *(a1 + 8840) = 0x4014000000000000;
  *(a1 + 8848) = 1;
  *(a1 + 8856) = 0x3FE0000000000000;
  *(a1 + 8864) = 0x402E000000000000;
  *(a1 + 8872) = 1;
  *(a1 + 8880) = 0x4024000000000000;
  *(a1 + 8888) = 256;
  *(a1 + 8890) = 0;
  *(a1 + 8896) = 0;
  *(a1 + 8912) = 0;
  *(a1 + 9040) = 0;
  *(a1 + 9056) = 0;
  *(a1 + 9064) = 0;
  *(a1 + 9066) = 0;
  *(a1 + 9352) = 0;
  *(a1 + 9360) = 0;
  *(a1 + 9592) = 0;
  *(a1 + 9648) = 0;
  *(a1 + 9632) = 0u;
  *(a1 + 9616) = 0u;
  *(a1 + 9600) = 0u;
  *(a1 + 9120) = 0;
  *(a1 + 9104) = 0u;
  *(a1 + 9088) = 0u;
  *(a1 + 9072) = 0u;
  *(a1 + 9664) = 0;
  *(a1 + 9792) = 0;
  *(a1 + 9808) = 0;
  *(a1 + 9936) = 0;
  *(a1 + 9952) = 0;
  *(a1 + 10080) = 0;
  *(a1 + 10096) = 0;
  *(a1 + 10112) = 0;
  *(a1 + 10144) = 0;
  *(a1 + 10160) = 0;
  *(a1 + 10168) = 0;
  *(a1 + 10176) = 0;
  sub_1003AA2E4(a1 + 5008, 2.0);
  v9 = *(a2 + 16);
  *(a1 + 8672) = *a2;
  *(a1 + 8688) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(a1 + 8736) = *(a2 + 64);
  *(a1 + 8752) = v12;
  *(a1 + 8704) = v10;
  *(a1 + 8720) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 144);
  *(a1 + 8800) = *(a2 + 128);
  *(a1 + 8816) = v15;
  *(a1 + 8768) = v13;
  *(a1 + 8784) = v14;
  v16 = *(a2 + 160);
  v17 = *(a2 + 176);
  v18 = *(a2 + 192);
  *(a1 + 8875) = *(a2 + 203);
  *(a1 + 8848) = v17;
  *(a1 + 8864) = v18;
  *(a1 + 8832) = v16;
  *(a1 + 8664) = 0;
  *(a1 + 7760) = 0u;
  return a1;
}

void sub_1003F5D40(_Unwind_Exception *a1)
{
  sub_10004EDBC((v1 + v5));
  sub_1003FABB4(v3);
  sub_1003F5168(v1 + 1032);
  sub_1003F5168(v2);
  if (*(v7 + 1760) == 1)
  {
    v10 = *(v1 + v8);
    if (v10)
    {
      v1[987] = v10;
      operator delete(v10);
    }
  }

  sub_1003F4D80((v1 + v6));
  sub_10004EDBC(v1 + 802);
  sub_10004EDBC(v1 + 796);
  sub_1003FAC60((v1 + 702));
  sub_1003F5064(v1 + v4);
  sub_1003F4E68((v1 + 62));
  _Unwind_Resume(a1);
}

uint64_t sub_1003F5DF4(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = a3 * a7;
  if (a3 <= 0.0 || v10 > a5 - a4)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v25 = 134218496;
      v26 = a3;
      v27 = 2048;
      v28 = v10;
      v29 = 2048;
      v30 = a5;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#findalgs-peoplefinder,invalid time delta, deltaT: %f, max potential value change: %f, max integrated value: %f", &v25, 0x20u);
    }

    return 0;
  }

  v16 = a1 - a2;
  if (((*&a2 ^ *&a1) & 0x8000000000000000) != 0 && fabs(v16 / a3) > a7)
  {
    v19 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218496;
      v26 = a1;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,overflow detected in peer integrated value, currInteVal: %f, prevInteVal: %f, deltaT: %f", &v25, 0x20u);
    }

    v20 = a4 - (a5 - a1) - a6;
    if (v16 < 0.0)
    {
      v20 = a1 - a4 + a5 + a6;
    }

    v16 = v20 - a2;
  }

  v21 = qword_1009F9820;
  v22 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  v23 = fabs(v16);
  if (v22)
  {
    v25 = 134218496;
    v24 = v23 / a3;
    v26 = v23 / a3;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = a3;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,Delta derivative calculated for overflow detection: %f, corrected delta: %f, deltaT: %f", &v25, 0x20u);
  }

  else
  {
    v24 = v23 / a3;
  }

  if (v24 > a7)
  {
    return 0;
  }

  return *&v16;
}

uint64_t sub_1003F6030(uint64_t a1)
{
  if (*(a1 + 8520) == 1)
  {
    if ((*(a1 + 8536) & 1) == 0)
    {
      goto LABEL_14;
    }

    v1 = *(a1 + 8) - *(a1 + 8528) < 2.38;
  }

  else
  {
    v1 = 0;
  }

  if (*(a1 + 8592) != 1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((*(a1 + 8536) & 1) == 0)
  {
LABEL_14:
    sub_1000195BC();
  }

  v2 = *(a1 + 16) - *(a1 + 8528) < 2.38;
LABEL_9:
  if (*(a1 + 7800) & 1) != 0 || ((*(a1 + 7816) | (v1 || v2)))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 7832);
  }

  return v3 & 1;
}

void sub_1003F60E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 0x2000;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD064();
  }

  sub_1003F682C(a1, &__src);
  if (*(v4 + 656) == 1 && v92 == 1)
  {
    v5 = v96 & v95;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 484) & 1) == 0)
  {
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    goto LABEL_17;
  }

  sub_100418274(a1 + 5616, &v50);
  if ((v66 & 1) != 0 && *(v4 + 1600) == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      if ((sub_1004CD098() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v4 + 272) = 0;
    }

    *&v73 = 0x403E000000000000;
    BYTE8(v73) = 1;
LABEL_13:
    sub_1003F6A78(a1, &v50, v6);
    sub_1003F6BD4(a1, &v50);
    sub_1003F6D24(a1, &v50);
    sub_1003F6DD8(a1, &v50);
    DWORD1(v75) = *(a1 + 10096);
    BYTE8(v75) = 1;
    if ((v65 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (sub_1003F6E70(a1, 0, *(&v51 + 2)))
    {
      *(a1 + 8544) = *(a1 + 8);
      *(v4 + 360) = 1;
      p_src = &v50;
LABEL_63:
      memcpy(a2, p_src, 0x1B0uLL);
      return;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

LABEL_17:
  if ((*(v4 + 482) & 1) == 0 && (*(v4 + 483) & 1) == 0)
  {
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    memset(v38, 0, sizeof(v38));
    goto LABEL_28;
  }

  sub_1003AC708(a1 + 5008, v38);
  if ((v39 & 1) == 0 || *(v4 + 1600) != 1)
  {
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    if ((sub_1004CD0E0() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v4 + 272) = 0;
  }

  *&v46 = 0x403E000000000000;
  BYTE8(v46) = 1;
LABEL_24:
  sub_1003F6A78(a1, v38, v8);
  sub_1003F6BD4(a1, v38);
  sub_1003F6D24(a1, v38);
  sub_1003F6DD8(a1, v38);
  DWORD1(v48) = *(a1 + 10096);
  BYTE8(v48) = 1;
  if ((v38[15] & 1) == 0)
  {
    goto LABEL_81;
  }

  if (sub_1003F6E70(a1, 0, *(&v38[1] + 2)))
  {
    *(a1 + 8544) = *(a1 + 8);
    *(v4 + 360) = 1;
    p_src = v38;
    goto LABEL_63;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_28:
  if (*(v4 + 481) == 1)
  {
    sub_1003E6DB4(a1 + 496, &v17);
  }

  else
  {
    v9 = 0.0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
  }

  v10 = *(v4 + 1600);
  if (v10 == 1 && (*(v4 + 1580) & 1) != 0)
  {
    v11 = v92;
    if (v92 == 1)
    {
      v12 = v92;
      if (*(a1 + 9768) == 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v12 = v92;
    }
  }

  else
  {
    v12 = v92;
    if (v5 & 1 | ((v92 & 1) == 0))
    {
      v11 = v92;
    }

    else
    {
      v11 = *(v4 + 1600);
    }
  }

  if (LOBYTE(v33[0]) == 1 && (BYTE8(v34) & v10) == 1 && v32 == 1)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG) || (sub_1004CD128(v13, v33) & 1) != 0)
    {
      *&v34 = 0x403E000000000000;
      BYTE8(v34) = 1;
    }

    sub_1003F6A78(a1, &v17, v14);
    sub_1003F6BD4(a1, &v17);
    sub_1003F6D24(a1, &v17);
    sub_1003F6DD8(a1, &v17);
    DWORD1(v36) = *(a1 + 10096);
    BYTE8(v36) = 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (sub_1003F6E70(a1, 0, *(&v18 + 2)))
    {
      *(a1 + 8544) = *(a1 + 8);
      *(v4 + 360) = 1;
      p_src = &v17;
      goto LABEL_63;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

LABEL_53:
  if (v11)
  {
    if (LOBYTE(v38[15]) == 1 && (v91[24] != 1 || DWORD1(v79) == 4))
    {
      v89 = *(&v38[11] + 8);
      v90 = *(&v38[12] + 8);
      *v91 = *(&v38[13] + 8);
      *&v91[9] = *(&v38[14] + 1);
      v85 = *(&v38[7] + 8);
      v86 = *(&v38[8] + 8);
      v87 = *(&v38[9] + 8);
      v88 = *(&v38[10] + 8);
      v81 = *(&v38[3] + 8);
      v82 = *(&v38[4] + 8);
      v83 = *(&v38[5] + 8);
      v84 = *(&v38[6] + 8);
      v9 = *(v38 + 1);
      v78 = *(v38 + 8);
      v79 = *(&v38[1] + 8);
      v80 = *(&v38[2] + 8);
      DWORD1(v79) = 1;
    }

    if (v12)
    {
      v93 = 0x403E000000000000;
      v94 = 1;
    }

    sub_1003F6A78(a1, &__src, v9);
    sub_1003F6BD4(a1, &__src);
    sub_1003F6D24(a1, &__src);
    sub_1003F6DD8(a1, &__src);
    v97 = *(a1 + 10096);
    v98 = 1;
    if (v91[24])
    {
      if (sub_1003F6E70(a1, v5 & 1, *&v79))
      {
        *(a1 + 8544) = *(a1 + 8);
        *(v4 + 360) = 1;
        p_src = &__src;
        goto LABEL_63;
      }

      goto LABEL_73;
    }

    goto LABEL_81;
  }

  if (*(v4 + 1952) == 1)
  {
    *(v4 + 1952) = 0;
  }

  *(v4 + 272) = 0;
  if (LOBYTE(v38[15]) == 1 && *(a1 + 8) - *&v38[1] < 2.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CD170();
    }

    sub_1003F7138(v38, a1, &v17, &v50, v15);
    sub_1003F6DD8(a1, v15);
    v15[101] = *(a1 + 10096);
    v16 = 1;
    if (v38[15])
    {
      if (sub_1003F6E70(a1, 0, *(&v38[1] + 2)))
      {
        *(a1 + 8544) = *(a1 + 8);
        *(v4 + 360) = 1;
        p_src = v15;
        goto LABEL_63;
      }

LABEL_73:
      sub_1003F6F80(a1, a2);
      return;
    }

LABEL_81:
    sub_1000195BC();
  }

  sub_1003F6F80(a1, a2);
  sub_1003F6DD8(a1, a2);
  *(a2 + 404) = *(a1 + 10096);
  *(a2 + 408) = 1;
}

void sub_1003F682C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1 + 0x2000;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD1A4();
  }

  a2[25] = 0u;
  a2[26] = 0u;
  a2[23] = 0u;
  a2[24] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (*(v4 + 483))
  {
    sub_1003AED88(a1 + 5008, 1, v7);
    if (v8)
    {
      sub_1003CA834(a1 + 48, v7 + 8);
    }
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    memset(v7, 0, sizeof(v7));
  }

  if (*(v4 + 480) == 1)
  {
    sub_1003CA044(a1 + 48, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 24);
    if ((sub_1003F8AC0(a1, v6) & 1) == 0)
    {
      memset(v6, 0, 430);
    }

    if (LOBYTE(v6[16]) == 1)
    {
      memcpy(a2, v6, 0x1AEuLL);
      *(a1 + 8448) = v5;
      *(v4 + 272) = 256;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CD1D8();
      }
    }
  }
}

double sub_1003F6A78(uint64_t a1, uint64_t a2, double result)
{
  v3 = a1 + 0x2000;
  if (*(a1 + 9792) == 1 && *(a1 + 9744) == 2 && *(a2 + 256) == 1)
  {
    LODWORD(result) = *(a2 + 24);
    if (*(a2 + 240) == 1 && *&result != 1.1755e-38 && *(a1 + 32) == 1)
    {
      v17.i32[2] = 0;
      v17.i64[0] = 0;
      if (sub_1003F49B0(a1, a2, a1 + 9664, &v17))
      {
        v7 = *(a1 + 32);
        if (*(v3 + 1952))
        {
          if (*(a1 + 32))
          {
            v8 = *(a1 + 8);
            v9 = (v8 - *(a1 + 10112)) / (v8 - *(a1 + 10112) + *(a1 + 8680));
            v10 = 1.0 - v9;
            *&v9 = v9;
            *&v10 = v10;
            v11 = vmlaq_n_f32(vmulq_n_f32(*(a1 + 10128), *&v10), v17, *&v9);
            *(a1 + 10128) = v11;
            *(a1 + 10112) = v8;
            v15[0] = 0;
            v15[1] = 0;
            v16 = 0;
            v13 = vcvtq_f64_f32(*v11.f32);
            v14 = v11.f32[2];
            sub_1003AD82C(&v13, (a1 + 9664), v15);
            result = sub_1000422D4(*(v15 + 1));
            if (*(a2 + 256))
            {
              *(a2 + 248) = result;
              return result;
            }
          }

LABEL_17:
          sub_1000195BC();
        }

        if ((*(a1 + 32) & 1) == 0)
        {
          goto LABEL_17;
        }

        result = *(a1 + 8);
        v12 = v17;
        *(a1 + 10112) = result;
        *(a1 + 10128) = v12;
        *(v3 + 1952) = 1;
      }
    }
  }

  return result;
}

void sub_1003F6BD4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 0x2000;
  if (*(a1 + 8675) == 1)
  {
    sub_1003AED88(a1 + 5008, 0, v6);
    if (LOBYTE(v6[60]))
    {
      v4 = v6[6];
      if (v6[6] != 1.1755e-38)
      {
        if (*(a2 + 240))
        {
          if (*(v2 + 704))
          {
            v5 = v6[6] > 1.0;
          }

          else
          {
            v5 = v6[6] > 0.9;
          }

          if (v5)
          {
            if (v6[6] > 1.5)
            {
              if (v6[6] > 3.0)
              {
LABEL_13:
                *(v2 + 704) = 0;
                return;
              }

              v4 = (1.0 - (3.0 - v6[6]) / 1.5) * *(a2 + 24) + (3.0 - v6[6]) / 1.5 * v6[6];
            }

            *(a2 + 24) = v4;
            goto LABEL_13;
          }

          memcpy(a2, v6, 0x1AEuLL);
          *(v2 + 704) = 1;
        }

        else
        {
          memcpy(a2, v6, 0x1AEuLL);
        }
      }
    }
  }
}

uint64_t sub_1003F6D24(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != 1 || *(result + 8656) != 1 || *(result + 8) - *(result + 8648) > 10.0)
  {
    *(result + 8664) = 0;
  }

  if ((*(result + 8888) & 1) == 0)
  {
    v14 = v2;
    v15 = v3;
    v4 = *(a2 + 240);
    if (*(a2 + 24) == 1.1755e-38)
    {
      v4 = 0;
    }

    v5 = *(a2 + 256);
    v6 = *(result + 8664) == 2;
    v7 = *(result + 7832);
    v8 = *(result + 9792);
    v9 = 0;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    return sub_1003FAA98(result, a2, &v8);
  }

  return result;
}

void sub_1003F6DD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10176) == 1)
  {
    v8 = v2;
    v9 = v3;
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,Reporting VIO drift in solution", v7, 2u);
    }

    *(a2 + 428) = 1;
    *(a1 + 10176) = 2;
  }
}

uint64_t sub_1003F6E70(uint64_t a1, unsigned __int8 a2, double a3)
{
  v3 = a1 + 0x2000;
  if (*(a1 + 8305))
  {
    v4 = 1;
  }

  else
  {
    v5 = 8688;
    if ((*(a1 + 8848) & a2) != 0)
    {
      v5 = 8696;
    }

    if (*(a1 + 8848) & a2)
    {
      v6 = 1;
    }

    else
    {
      v7 = 8720;
      if (*(a1 + 40))
      {
        v7 = 8736;
      }

      v8 = *(a1 + v7);
      v9 = 8712;
      if (*(a1 + 40))
      {
        v9 = 8728;
      }

      v6 = *(a1 + 8296) >= (v8 * *(a1 + v9));
    }

    if (*(a1 + v5) <= a3 || !v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      *(a1 + 8305) = 1;
      *(a1 + 8312) = *(a1 + 8);
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,Condition to show find button met", v14, 2u);
        v4 = *(v3 + 113);
      }
    }
  }

  return v4 & 1;
}

uint64_t sub_1003F6F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 320) = 0;
  *(a2 + 336) = 0;
  *(a2 + 352) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 404) = 0;
  *(a2 + 408) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  *(a2 + 412) = 0;
  *(a2 + 416) = 1;
  if (*(a1 + 8200) == 1)
  {
    v4 = *(a1 + 7968);
  }

  v5 = *(a1 + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0x100800000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 121) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 240) = 1;
  if (*(a1 + 8552) == 1 && v5 - *(a1 + 8544) > *(a1 + 8880) && *(a1 + 8305) == 1)
  {
    *(a2 + 429) = 1;
    *(a1 + 8305) = 0;
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,disableFindButton set to true", v8, 2u);
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD20C();
  }

  return sub_1003F6D24(a1, a2);
}

void sub_1003F7138(unsigned __int8 *__src@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a2 + 7832);
  if (*(a2 + 32) != 1 || *(a2 + 8656) != 1 || *(a2 + 8) - *(a2 + 8648) > 10.0)
  {
    *(a2 + 8664) = 0;
  }

  memcpy(a5, __src, 0x1B0uLL);
  if (__src[5] & 1) != 0 || (*(a3 + 5))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a4 + 5);
  }

  v12 = v11 & 1;
  if (__src[4] & 1) != 0 || (*(a3 + 4))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a4 + 4);
  }

  if ((v10[1056] & 1) == 0)
  {
    v15 = *(a2 + 8664) == 2;
    v16 = *v10;
    LOBYTE(v22) = v10[1960];
    BYTE1(v22) = v13 & 1;
    BYTE2(v22) = v11 & 1;
    *(&v22 + 3) = 1;
    BYTE5(v22) = v15;
    BYTE6(v22) = v16;
    sub_1003FAA98(a2, a5, &v22);
    goto LABEL_20;
  }

  if (v11)
  {
    v14 = 256;
  }

  else
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    v14 = 1;
  }

  *(a5 + 4) = v14;
LABEL_20:
  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a3 + 4);
    v19 = *(a4 + 4);
    v22 = __PAIR64__(__src[4], 67109888);
    v23 = 1024;
    v24 = v18;
    v25 = 1024;
    v26 = v19;
    v27 = 1024;
    v28 = v13 & 1;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,#convergence_blending, Insufficient Displacement: SA: %d, PF: %d, SAVIO: %d, Blended: %d", &v22, 0x1Au);
    v17 = qword_1009F9820;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a3 + 5);
    v21 = *(a4 + 5);
    v22 = __PAIR64__(__src[5], 67109888);
    v23 = 1024;
    v24 = v20;
    v25 = 1024;
    v26 = v21;
    v27 = 1024;
    v28 = v12;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,#convergence_blending, Insufficient Horizontal Displacement: SA: %d, PF: %d, SAVIO: %d, Blended: %d", &v22, 0x1Au);
  }

  *(a5 + 280) = *(a3 + 280);
}

double sub_1003F7398(uint64_t a1, uint64_t a2)
{
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_1004CD240();
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a2 + 183))
    {
      if (*(a2 + 182) == 1)
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v6 = qword_1009F9820;
          v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            LOWORD(v44) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,process Range: Setting reduced range rate to true", &v44, 2u);
          }
        }

        *(a1 + 40) = 1;
      }

      else
      {
        if (*(a1 + 40))
        {
          v7 = qword_1009F9820;
          v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            LOWORD(v44) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,process Range: Setting reduced range rate to false", &v44, 2u);
          }
        }

        *(a1 + 40) = 0;
      }
    }

    else
    {
      *(a1 + 40) = 0;
      v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        sub_1004CD274();
      }
    }

    if (*(a2 + 181) != 1)
    {
      goto LABEL_25;
    }

    v8 = *(a2 + 180);
    if (v8 <= 2)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 67109120;
        *v45 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,mmsValStatus %d does not pass check, rejecting range result event", &v44, 8u);
      }

      *(a1 + 8304) = 0;
      return result;
    }

    if (v8 == 7 && (*(a1 + 8678) & 1) != 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CD318();
      }
    }

    else
    {
LABEL_25:
      if ((*(a1 + 8200) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CD2B0();
        }

        goto LABEL_45;
      }

      v10 = sub_1003F3180(*(a2 + 8), 2.0, v4, (a1 + 8208));
      v11 = 8720;
      if (*(a1 + 40))
      {
        v11 = 8736;
      }

      sub_1003F3180(*(a2 + 8), *(a1 + v11), v10, (a1 + 8256));
      if ((*(a1 + 8200) & 1) == 0)
      {
        sub_1000195BC();
      }

      v12 = *(a2 + 16);
      if (*(a1 + 7984) - v12 > 1.0)
      {
        v13 = *(a1 + 8248);
        if (v13)
        {
          v14 = *(a1 + 8216);
          if (*(a1 + 8224) == v14 || (v15 = *(a1 + 8240), v16 = (v14 + 8 * (v15 / 0x11)), v17 = v15 % 0x11, v18 = v15 + v13, v19 = *v16 + 232 * v17, v20 = *(v14 + 8 * (v18 / 0x11)) + 232 * (v18 % 0x11), v19 == v20))
          {
            v22 = 0;
          }

          else
          {
            do
            {
              v21 = *(v19 + 16) - v12;
              v22 = v21 <= 1.0;
              if (v21 <= 1.0)
              {
                break;
              }

              v19 += 232;
              if (v19 - *v16 == 3944)
              {
                v23 = v16[1];
                ++v16;
                v19 = v23;
              }
            }

            while (v19 != v20);
          }

          *(a1 + 8304) = v22;
        }

        else
        {
          *(a1 + 8304) = 0;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004CD2E4();
          }
        }

        goto LABEL_45;
      }
    }

    *(a1 + 8304) = 1;
LABEL_45:
    sub_1003F333C(a1 + 8208, a2);
    v24 = *(a1 + 8200);
    v26 = *(a2 + 16);
    v25 = *(a2 + 32);
    *(a1 + 7968) = *a2;
    *(a1 + 7984) = v26;
    *(a1 + 8000) = v25;
    v27 = *(a2 + 80);
    v28 = *(a2 + 96);
    v29 = *(a2 + 64);
    *(a1 + 8016) = *(a2 + 48);
    *(a1 + 8064) = v28;
    *(a1 + 8048) = v27;
    *(a1 + 8032) = v29;
    v30 = *(a2 + 144);
    v31 = *(a2 + 160);
    v32 = *(a2 + 128);
    *(a1 + 8080) = *(a2 + 112);
    *(a1 + 8128) = v31;
    *(a1 + 8112) = v30;
    *(a1 + 8096) = v32;
    v34 = *(a2 + 192);
    v33 = *(a2 + 208);
    v35 = *(a2 + 224);
    *(a1 + 8144) = *(a2 + 176);
    *(a1 + 0x2000) = v35;
    *(a1 + 8176) = v33;
    *(a1 + 8160) = v34;
    if ((v24 & 1) == 0)
    {
      *(a1 + 8200) = 1;
    }

    *(a1 + 8440) = *(a1 + 24);
    if (*(a1 + 8304))
    {
      sub_1003F333C(a1 + 8256, a2);
      sub_1003AC208(a1 + 5008, a2);
      v36 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v37 = sub_1003F6030(a1);
        v38 = *(a1 + 7800);
        v39 = *(a1 + 7816);
        v40 = *(a1 + 8520);
        v44 = 67109888;
        *v45 = v37;
        *&v45[4] = 1024;
        *&v45[6] = v38;
        LOWORD(v46) = 1024;
        *(&v46 + 2) = v39;
        HIWORD(v46) = 1024;
        v47 = v40;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,shouldFeedPF: %d, peerStatic: %d, peerMovingSlowly: %d, hasLastPDR: %d", &v44, 0x1Au);
      }

      if (*(a1 + 7832) == 1 && *(a2 + 8) >= *(a1 + 7824))
      {
        sub_100417F60(a1 + 5616, a2);
      }

      if (sub_1003F6030(a1))
      {
        sub_1003E8F20(a1 + 496, *(a1 + 40), *(a2 + 16), *(a2 + 8));
      }
    }

    else
    {
      v41 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a2 + 16);
        v43 = *(a2 + 8);
        v44 = 134218240;
        *v45 = v42;
        *&v45[8] = 2048;
        v46 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#negativeBiasRangeRejection, Rejected range measurement of %3.2f m at %3.2f seconds", &v44, 0x16u);
      }
    }
  }

  return result;
}

void sub_1003F78F8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 0x2000);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD34C();
  }

  if (v4[697])
  {
    if (*(a2 + 152))
    {
      v42 = 0.0;
      sub_1003FD084(a1, &v42, *a2);
      sub_1003FC0A8(a1 + 6320, a2, &v70, v42, v5);
      v7 = (a1 + 8);
      if (!*(a1 + 32))
      {
        v7 = &v42;
      }

      v8 = *v7;
      v6.i64[0] = *v7;
      sub_1003DBFAC((a1 + 6688), a2, &v45, v42, v6);
      if (v71 == 1)
      {
        *(a1 + 7760) = vaddq_f32(v70, *(a1 + 7760));
      }

      if (v69 == 1)
      {
        *(a1 + 10096) = v68;
        sub_1003E80D0(a1 + 496, &v45);
        if (v53 == 1)
        {
          v40 = v46;
          v41 = v47;
          v38 = v49;
          v39 = v48;
          *&v9 = sub_1003B3E3C(xmmword_100571930);
          v10 = 0;
          v43[0] = v9;
          v43[1] = v11;
          v43[2] = v12;
          v43[3] = v13;
          do
          {
            v44[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(v43[v10])), v41, *&v43[v10], 1), v39, v43[v10], 2), v38, v43[v10], 3);
            ++v10;
          }

          while (v10 != 4);
          v14 = v44[0];
          v15 = v44[1];
          v16 = v44[2];
          v17 = v44[3];
          v18 = v4[1600];
          *(a1 + 9664) = v45;
          v19 = v51;
          *(a1 + 9744) = v50;
          *(a1 + 9760) = v19;
          if (v18 == 1)
          {
            *(a1 + 9776) = v52;
          }

          else
          {
            *(a1 + 9776) = v52;
            v4[1600] = 1;
          }

          *(a1 + 9680) = v14;
          *(a1 + 9696) = v15;
          *(a1 + 9712) = v16;
          *(a1 + 9728) = v17;
          v20 = (a1 + 9808);
          v21 = v50;
          if (v4[1744] == 1)
          {
            *(a1 + 9872) = v49;
            *(a1 + 9888) = v21;
            *(a1 + 9904) = v51;
            *(a1 + 9920) = v52;
            v22 = v46;
            *v20 = v45;
            *(a1 + 9824) = v22;
            v23 = v48;
            *(a1 + 9840) = v47;
            *(a1 + 9856) = v23;
          }

          else
          {
            *(a1 + 9872) = v49;
            *(a1 + 9888) = v21;
            v24 = v52;
            *(a1 + 9904) = v51;
            *(a1 + 9920) = v24;
            v25 = v46;
            *v20 = v45;
            *(a1 + 9824) = v25;
            v26 = v48;
            *(a1 + 9840) = v47;
            *(a1 + 9856) = v26;
            v4[1744] = 1;
          }

          v27 = v58;
          *(a1 + 10032) = v59;
          v28 = v61;
          *(a1 + 10048) = v60;
          *(a1 + 10064) = v28;
          v29 = v54;
          *(a1 + 9968) = v55;
          v30 = v57;
          *(a1 + 9984) = v56;
          *(a1 + 10000) = v30;
          *(a1 + 10016) = v27;
          *(a1 + 9920) = v68;
          v4[1732] = 1;
          *(a1 + 9952) = v29;
          *(a1 + 10080) = v62;
          *(a1 + 10160) = v8;
          v4[1976] = 1;
        }

        else if (v68 == 1)
        {
          if (v4[1976] == 1 && v8 - *(a1 + 10160) <= 3.0)
          {
            if (v4[1600])
            {
              if ((v67 & 1) == 0)
              {
                sub_1000195BC();
              }

              v31 = v64;
              v32 = v65;
              v33 = v66;
              v34 = v63;
              *&v35 = sub_1003B3E3C(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_100571600, v32), xmmword_100571610, v31), vmlaq_n_f32(vmulq_n_f32(xmmword_100571620, v34), xmmword_100571630, v33)));
              *(a1 + 9680) = v35;
              *(a1 + 9696) = v36;
              *(a1 + 9712) = v37;
            }
          }

          else if (v4[1600] == 1)
          {
            v4[1600] = 0;
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CD3B4();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD380();
  }
}

void sub_1003F7CD8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 7832);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD3E8();
  }

  if (*(a2 + 80) == 2)
  {
    v5 = (a1 + 8912);
    if (v4[1208])
    {
      v6 = *a2;
      v7 = *v5;
      v8 = *a2 - *v5;
      if (v8 > 1.0)
      {
        v9 = *(a1 + 8976);
        v10 = *v9.i32;
        v11 = *(a2 + 64);
        v12 = *v11.i32;
        v13 = vcvtq_f64_f32(vzip2_s32(*v11.i8, *v9.i8));
        v14 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
        v15 = v13.f64[1];
        v16 = v14.f64[1];
        v17 = sqrt((v13.f64[0] - v13.f64[1]) * (v13.f64[0] - v13.f64[1]) + (v12 - v10) * (v12 - v10) + (v14.f64[0] - v14.f64[1]) * (v14.f64[0] - v14.f64[1])) / v8;
        if (v17 <= 4.0)
        {
          goto LABEL_17;
        }

        v97 = v14.f64[0];
        v100 = v13.f64[0];
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          *buf = 134220032;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2048;
          *&buf[24] = v100;
          *v110 = 2048;
          *&v110[2] = v97;
          *&v110[10] = 2048;
          *&v110[12] = v10;
          *&v110[20] = 2048;
          *&v110[22] = v15;
          *&v110[30] = 2048;
          *v111 = v16;
          *&v111[8] = 2048;
          *&v111[10] = v6;
          *&v111[18] = 2048;
          *&v111[20] = v7;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#findalgs-peoplefinder,Maximum VIO speed exceeded, resetting filters: %f m/s, x: %f, y: %f, z: %f, previous x: %f, previous y: %f, previous z: %f, current time: %f, previous time: %f  ", buf, 0x5Cu);
        }

        if (v4[1960] == 1)
        {
          v4[1960] = 0;
        }

        if (v4[2312] == 1)
        {
          v4[2312] = 0;
        }

        v19 = *(a2 + 80);
        v129 = *(a2 + 64);
        v130 = v19;
        v20 = *(a2 + 112);
        v131 = *(a2 + 96);
        v132 = v20;
        v21 = *(a2 + 16);
        v125 = *a2;
        v126 = v21;
        v22 = *(a2 + 48);
        v127 = *(a2 + 32);
        v128 = v22;
        LODWORD(v130) = 1;
        v105 = v129;
        v106 = v130;
        v107 = v131;
        v108 = v20;
        v101 = v125;
        v102 = v21;
        v103 = v127;
        v104 = v22;
        sub_1003DCB64(a1 + 6688, &v101, buf);
        sub_1003E80D0(a1 + 496, buf);
        *(a1 + 10096) = v124;
        sub_1003AA2EC(a1 + 5008, &v125);
        sub_1003C7524((a1 + 9064), &v125);
        sub_1003FBCD8((a1 + 6320));
        if (*v4 == 1 && *&v125 >= *(a1 + 7824))
        {
          sub_100416304(a1 + 5616, &v125);
        }

        if (v4[1208])
        {
LABEL_17:
          v23 = *a2;
          v24 = *(a2 + 16);
          v25 = *(a2 + 48);
          *(a1 + 8944) = *(a2 + 32);
          *(a1 + 8960) = v25;
          *v5 = v23;
          *(a1 + 8928) = v24;
          v26 = *(a2 + 64);
          v27 = *(a2 + 80);
          v28 = *(a2 + 96);
          *(a1 + 9024) = *(a2 + 112);
          *(a1 + 8992) = v27;
          *(a1 + 9008) = v28;
          *(a1 + 8976) = v26;
        }

        else
        {
          v55 = *a2;
          v56 = *(a2 + 16);
          v57 = *(a2 + 48);
          *(a1 + 8944) = *(a2 + 32);
          *(a1 + 8960) = v57;
          *v5 = v55;
          *(a1 + 8928) = v56;
          v58 = *(a2 + 64);
          v59 = *(a2 + 80);
          v60 = *(a2 + 112);
          *(a1 + 9008) = *(a2 + 96);
          *(a1 + 9024) = v60;
          *(a1 + 8976) = v58;
          *(a1 + 8992) = v59;
          v4[1208] = 1;
        }

        if (v17 <= 4.0)
        {
          *(a1 + 10176) = 0;
          v4[1224] = 0;
        }

        else
        {
          v4[1224] = 1;
          if (!*(a1 + 10176))
          {
            *(a1 + 10176) = 1;
          }
        }
      }
    }

    else
    {
      v29 = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 48);
      *(a1 + 8944) = *(a2 + 32);
      *(a1 + 8960) = v31;
      *v5 = v29;
      *(a1 + 8928) = v30;
      v32 = *(a2 + 64);
      v33 = *(a2 + 80);
      v34 = *(a2 + 112);
      *(a1 + 9008) = *(a2 + 96);
      *(a1 + 9024) = v34;
      *(a1 + 8976) = v32;
      *(a1 + 8992) = v33;
      v4[1208] = 1;
    }
  }

  else
  {
    if (v4[1208] == 1)
    {
      v4[1208] = 0;
    }

    v4[1224] = 0;
    *(a1 + 10176) = 0;
  }

  if ((v4[1224] & 1) == 0)
  {
    sub_1003FCA04(a1 + 6320, a2, buf);
    v35 = *(a2 + 80);
    v129 = *(a2 + 64);
    v130 = v35;
    v36 = *(a2 + 112);
    v131 = *(a2 + 96);
    v132 = v36;
    v37 = *(a2 + 16);
    v125 = *a2;
    v126 = v37;
    v38 = *(a2 + 48);
    v127 = *(a2 + 32);
    v128 = v38;
    sub_1003DCB64(a1 + 6688, &v125, buf);
    *(a1 + 10096) = v124;
    v39 = xmmword_100571930;
    if ((v4[1057] & 1) == 0)
    {
      if (*(a2 + 80) == 2 && (*(a2 + 84) & 1) == 0)
      {
        v95 = *(a2 + 16);
        v98 = *(a2 + 32);
        v91 = *(a2 + 64);
        v93 = *(a2 + 48);
        *&v40 = sub_1003B3E3C(xmmword_100571930);
        v41 = 0;
        v101 = v40;
        v102 = v42;
        v103 = v43;
        v104 = v44;
        do
        {
          *(&v125 + v41) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v95, COERCE_FLOAT(*(&v101 + v41))), v98, *(&v101 + v41), 1), v93, *(&v101 + v41), 2), v91, *(&v101 + v41), 3);
          v41 += 16;
        }

        while (v41 != 64);
        v45 = v125;
        v46 = v126;
        v47 = v127;
        v48 = v128;
        v49 = *(a2 + 85);
        v50 = v4[1960];
        *(a1 + 9664) = *a2;
        *(a1 + 9680) = v45;
        *(a1 + 9696) = v46;
        *(a1 + 9712) = v47;
        *(a1 + 9728) = v48;
        *(a1 + 9744) = 2;
        v4[1916] = 0;
        v4[1917] = v49;
        v4[1920] = 0;
        if ((v50 & 1) == 0)
        {
          v4[1960] = 1;
        }

        v4[1928] = 0;
        v4[1936] = 0;
        v4[1940] = 0;
        v4[1944] = 0;
        v4[1948] = 0;
      }

      else
      {
        if (v4[1960] == 1)
        {
          v4[1960] = 0;
        }

        if (v4[2312] == 1)
        {
          v4[2312] = 0;
        }
      }

      sub_1003AA2EC(a1 + 5008, a2);
      if (v114 == 1)
      {
        sub_1003E80D0(a1 + 496, buf);
        if (*&v111[16] == 2)
        {
          if ((v114 & 1) == 0)
          {
            goto LABEL_71;
          }

          v51 = (a1 + 9808);
          v52 = *&v111[16];
          if (v4[2104] == 1)
          {
            *(a1 + 9872) = *v111;
            *(a1 + 9888) = v52;
            *(a1 + 9904) = v112;
            *(a1 + 9920) = v113;
            v53 = *&buf[16];
            *v51 = *buf;
            *(a1 + 9824) = v53;
            v54 = *&v110[16];
            *(a1 + 9840) = *v110;
            *(a1 + 9856) = v54;
          }

          else
          {
            *(a1 + 9872) = *v111;
            *(a1 + 9888) = v52;
            v61 = v113;
            *(a1 + 9904) = v112;
            *(a1 + 9920) = v61;
            v62 = *&buf[16];
            *v51 = *buf;
            *(a1 + 9824) = v62;
            v63 = *&v110[16];
            *(a1 + 9840) = *v110;
            *(a1 + 9856) = v63;
            v4[2104] = 1;
          }

          v64 = v119;
          *(a1 + 10032) = v120;
          v65 = v122;
          *(a1 + 10048) = v121;
          *(a1 + 10064) = v65;
          v66 = v115;
          *(a1 + 9968) = v116;
          v67 = v118;
          *(a1 + 9984) = v117;
          *(a1 + 10000) = v67;
          *(a1 + 10016) = v64;
          *(a1 + 9952) = v66;
          *(a1 + 10080) = v123;
        }
      }

      sub_1003C7524((a1 + 9064), a2);
      v39 = xmmword_100571930;
      if ((v4[1057] & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v114 != 1)
    {
      goto LABEL_63;
    }

    if (BYTE4(v113) == 1)
    {
      if ((v113 - 2) < 2)
      {
        goto LABEL_53;
      }

      if (!v113)
      {
        if (v4[1960] == 1)
        {
          v4[1960] = 0;
        }

        if (v4[2312] == 1)
        {
          v4[2312] = 0;
        }

        goto LABEL_56;
      }

      if (v113 == 5)
      {
LABEL_53:
        v96 = *&buf[16];
        v99 = *v110;
        v92 = *v111;
        v94 = *&v110[16];
        *&v68 = sub_1003B3E3C(v39);
        v69 = 0;
        v101 = v68;
        v102 = v70;
        v103 = v71;
        v104 = v72;
        do
        {
          *(&v125 + v69) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96, COERCE_FLOAT(*(&v101 + v69))), v99, *(&v101 + v69), 1), v94, *(&v101 + v69), 2), v92, *(&v101 + v69), 3);
          v69 += 16;
        }

        while (v69 != 64);
        v73 = v125;
        v74 = v126;
        v75 = *v110;
        *(a1 + 9680) = *&buf[16];
        *(a1 + 9696) = v75;
        v76 = *v111;
        *(a1 + 9712) = *&v110[16];
        *(a1 + 9728) = v76;
        v77 = v112;
        *(a1 + 9744) = *&v111[16];
        v78 = v127;
        v79 = v128;
        *(a1 + 9760) = v77;
        *(a1 + 9776) = v113;
        *(a1 + 9792) = v114;
        *(a1 + 9664) = *buf;
        *(a1 + 9680) = v73;
        *(a1 + 9696) = v74;
        *(a1 + 9712) = v78;
        *(a1 + 9728) = v79;
        *(a1 + 10160) = *buf;
        v4[2336] = 1;
      }
    }

LABEL_56:
    sub_1003AA2EC(a1 + 5008, buf);
    if ((v114 & 1) == 0)
    {
      goto LABEL_71;
    }

    sub_1003C7524((a1 + 9064), buf);
    sub_1003E80D0(a1 + 496, buf);
    if (*&v111[16] == 2)
    {
      if (v114)
      {
        v80 = (a1 + 9808);
        v81 = *&v111[16];
        if (v4[2104] == 1)
        {
          *(a1 + 9872) = *v111;
          *(a1 + 9888) = v81;
          *(a1 + 9904) = v112;
          *(a1 + 9920) = v113;
          v82 = *&buf[16];
          *v80 = *buf;
          *(a1 + 9824) = v82;
          v83 = *&v110[16];
          *(a1 + 9840) = *v110;
          *(a1 + 9856) = v83;
        }

        else
        {
          *(a1 + 9872) = *v111;
          *(a1 + 9888) = v81;
          v84 = v113;
          *(a1 + 9904) = v112;
          *(a1 + 9920) = v84;
          v85 = *&buf[16];
          *v80 = *buf;
          *(a1 + 9824) = v85;
          v86 = *&v110[16];
          *(a1 + 9840) = *v110;
          *(a1 + 9856) = v86;
          v4[2104] = 1;
        }

        v87 = v119;
        *(a1 + 10032) = v120;
        v88 = v122;
        *(a1 + 10048) = v121;
        *(a1 + 10064) = v88;
        v89 = v115;
        *(a1 + 9968) = v116;
        v90 = v118;
        *(a1 + 9984) = v117;
        *(a1 + 10000) = v90;
        *(a1 + 10016) = v87;
        *(a1 + 9952) = v89;
        *(a1 + 10080) = v123;
        goto LABEL_63;
      }

LABEL_71:
      sub_1000195BC();
    }

LABEL_63:
    if (*v4 == 1 && *a2 >= *(a1 + 7824))
    {
      sub_100416304(a1 + 5616, a2);
    }
  }
}

void sub_1003F84FC(uint64_t a1, double *a2, int a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD41C();
  }

  v33 = 0.0;
  sub_1003FD0A8(a1, &v33, a2[2]);
  v6 = qword_1009F9820;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 23);
      *buf = 67109376;
      *v35 = v8;
      *&v35[4] = 1024;
      *&v35[6] = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,CL location type: %d,isPeer,%d", buf, 0xEu);
    }

    if (a3)
    {
      v9 = *(a1 + 8432);
      if (v9 < 7 && ((0x5Fu >> v9) & 1) != 0)
      {
        v10 = dbl_1005718A8[v9];
      }

      else
      {
        v10 = 20.0;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004CD4E0();
        }
      }

      v19 = *(a1 + 8424);
      if (v19 == 1 && (v20 = *(a1 + 8376), v33 <= v20))
      {
        v24 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v26 = *&v20;
        v25 = a2[7];
      }

      else
      {
        v21 = a2[7];
        if (v21 > 0.0 && v21 < v10)
        {
          v22 = v33;
          if (*(a1 + 7960) == 1 && vabdd_f64(*(a1 + 7944), v33) < 3.0)
          {
            v23 = *(a1 + 7952);
          }

          else
          {
            v23 = 0;
          }

          v27 = *a2;
          v28 = *(a2 + 5);
          v29 = v23 & 1;
          if ((v19 & 1) == 0)
          {
            *(a1 + 8424) = 1;
          }

          *(a1 + 8376) = v22;
          *(a1 + 8384) = v27;
          *(a1 + 8400) = v21;
          *(a1 + 8408) = v28;
          *(a1 + 8416) = v29;
          v30 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004CD554(v30, (a1 + 8424));
          }

          sub_1003CA740(a1 + 48, a1 + 8376);
          return;
        }

        v24 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v25 = v21;
        if (v19)
        {
          v26 = *(a1 + 8376);
        }

        else
        {
          v26 = 0xBFF0000000000000;
        }
      }

      *buf = 134218752;
      *v35 = v26;
      *&v35[8] = 2048;
      v36 = v33;
      v37 = 2048;
      v38 = v25;
      v39 = 2048;
      v40 = v10;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,Not injecting peer location received via NI SPI; duplicate, staleness, or uncertainty check failed, last_timestamp,%.2lf,current_timestamp,%.2lf,hUnc,%.1lf,hUncThreshold,%.1lf", buf, 0x2Au);
      return;
    }

    *(a1 + 8432) = *(a2 + 24);
    if (*(a2 + 23) == 1)
    {
      v11 = v33;
      if (*(a1 + 8368) != 1 || v33 > *(a1 + 8320))
      {
        v12 = *a2;
        v13 = *(a2 + 1);
        v14 = *(a2 + 7);
        v15 = *(a2 + 5);
        v32 = 6;
        strcpy(__p, "Finder");
        v16 = sub_100400728(a1 + 7888, __p, v33);
        if ((*(a1 + 8368) & 1) == 0)
        {
          *(a1 + 8368) = 1;
        }

        *(a1 + 8320) = v11;
        *(a1 + 8328) = v12;
        *(a1 + 8336) = v13;
        *(a1 + 8344) = v14;
        *(a1 + 8352) = v15;
        *(a1 + 8360) = v16;
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 8432);
          *buf = 134218240;
          *v35 = v33;
          *&v35[8] = 1024;
          LODWORD(v36) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,Pass self location to CL arrow filter, timestamp: %f,signalEnv,%d", buf, 0x12u);
        }

        if ((*(a1 + 8368) & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1003CA7D0(a1 + 48, (a1 + 8320));
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CD450(a3, v6);
  }
}

void sub_1003F8920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F8944(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD5EC();
  }

  v5 = 0;
  sub_1003FD0A8(a1, &v5, *(a2 + 24));
  if (v4)
  {
    __src[0] = v5;
    *&__src[1] = *(a2 + 8);
    sub_1003CA784(a1 + 48, __src);
    if (*(a1 + 8744) == 1)
    {
      if (*(a1 + 8672) == 1)
      {
        sub_1003CA044(a1 + 48, __src);
      }

      else
      {
        memset(__src, 0, 432);
      }

      if (sub_1003F8AC0(a1, __src))
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1003E6C20(a1 + 496, __dst);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CD620();
  }
}

uint64_t sub_1003F8AC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) != 1 || *(a2 + 376) != 1 || *(a2 + 240) != 1 || (*(a2 + 392) & 1) == 0)
  {
LABEL_129:
    v60 = a1 + 9064;
LABEL_130:
    sub_1003C7C28(v60, 0);
    return 0;
  }

  v4 = (a1 + 7864);
  v5 = (a1 + 8);
  if (!*(a1 + 32))
  {
    v5 = (a2 + 16);
  }

  v6 = *v5;
  if (*(a1 + 8675))
  {
    sub_1003AED88(a1 + 5008, 1, &v90);
    if (v105)
    {
      sub_1003C7270(a1 + 9064, &v90);
    }
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
  }

  v7 = 0.0;
  if (v105)
  {
    v7 = *&v91;
  }

  v8 = *(a2 + 24);
  v9 = INFINITY;
  if (*(a2 + 240))
  {
    v9 = *(a2 + 24);
  }

  v62 = v9;
  v10 = v6 - v7;
  if (v105 == 1 && v10 < 5.0)
  {
    v11 = v9;
    if (v9 > *(&v91 + 2))
    {
      v11 = *(&v91 + 2);
    }

    v62 = v11;
  }

  if (*(a2 + 240) && v10 < 20.0 && v105)
  {
    v12 = fmax(v10, 0.0);
    v13 = fmax(*(&v91 + 2) - (v12 + v12), 0.0);
    v14 = v8 - (v12 * 0.5 + *(&v91 + 2));
    v15 = v13 - v8;
    if (v14 >= v15)
    {
      v15 = v14;
    }

    *(a1 + 7856) = v15;
    *v4 = 1;
  }

  else if (*v4 == 1)
  {
    *v4 = 0;
  }

  v16 = *(a2 + 120);
  *(a1 + 7872) = *(a2 + 112);
  *(a1 + 7880) = v16;
  if (*(a1 + 8674) & 1) != 0 || (*(a1 + 8675))
  {
    sub_1003AC708(a1 + 5008, v77);
    if (v78)
    {
      v17 = v77;
    }

    else
    {
      v17 = a2;
    }

    v18 = v17[6];
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    memset(v77, 0, sizeof(v77));
    v18 = *(a2 + 24);
  }

  v19 = *(a1 + 8432) - 1;
  if (v19 < 6 && ((0x2Fu >> v19) & 1) != 0)
  {
    v20 = qword_1005718E0[v19];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CD660();
    }

    v20 = 2;
  }

  v21 = &unk_1005717B0 + 64 * v20;
  if (v18 >= 12.5)
  {
    if (v18 >= 15.0)
    {
      if (v18 >= 17.5)
      {
        if (v18 >= 20.0)
        {
          if (v18 >= 25.0)
          {
            if (v18 >= 30.0)
            {
              v22 = 7;
              if (v18 < 35.0)
              {
                v22 = 6;
              }
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          v22 = 3;
        }
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a2 + 384);
  if (!*(a2 + 392))
  {
    v23 = INFINITY;
  }

  v24 = *v4;
  v25 = -1.0;
  if (v24 == 1)
  {
    v25 = *(a1 + 7856);
  }

  v26 = *&v21[8 * v22];
  if (*(a2 + 120))
  {
    v27 = *(a2 + 112);
  }

  else
  {
    v27 = -1.0;
  }

  v28 = *(a1 + 8465);
  v29 = *(a2 + 376);
  v30 = *(a2 + 368);
  if (*(a2 + 376))
  {
    v31 = *(a2 + 368);
  }

  else
  {
    v31 = INFINITY;
  }

  if (*(a1 + 8465))
  {
    v32 = 10.0;
  }

  else
  {
    v32 = 12.0;
  }

  v33 = 35.0;
  if (*(a1 + 8465))
  {
    v34 = 37.5;
  }

  else
  {
    v34 = 35.0;
  }

  if (*v4)
  {
    if (!*(a1 + 8465))
    {
      v33 = 32.5;
    }

    v35 = *(a1 + 7856) > v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = v26 * v23;
  if (v62 < v32 || v31 > v34 || v36 > 30.0 || v35)
  {
    v41 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v42 = v30;
      v43 = 0xBFF0000000000000;
      if (!v29)
      {
        v42 = 0xBFF0000000000000;
      }

      v44 = *(a2 + 24);
      if (*(a2 + 240))
      {
        v45 = *(a2 + 24);
      }

      else
      {
        v45 = -1.0;
      }

      if (v105)
      {
        v46 = *(&v91 + 2);
      }

      else
      {
        v46 = -1.0;
      }

      if (v24)
      {
        v43 = *(a1 + 7856);
      }

      *buf = 134219776;
      *v64 = v42;
      *&v64[8] = 2048;
      *&v64[10] = v45;
      v65 = 2048;
      v66 = v46;
      v67 = 2048;
      v68 = v62;
      v69 = 2048;
      v70 = v26;
      v71 = 2048;
      v72 = v36;
      v73 = 2048;
      v74 = v25 / v27;
      v75 = 2048;
      v76 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,rejecting CL solution,unc = %.1lf,CL range,%.1lf,rangeFilterRange,%.1lf,fusedRange,%.1lf,bearing_scale_factor,%.1lf,scaled_bearing_unc,%.1lf,abs_range_diff_range_unc,%.1lf,absClRangeMinusUWBRangeM,%.1lf", buf, 0x52u);
    }

    if (v62 < v32)
    {
      v47 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v48 = *(a1 + 8465);
        *buf = 67109376;
        *v64 = v48;
        *&v64[4] = 2048;
        *&v64[6] = v62;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,#clcc,isLastSolFromCL,%d,RANGE_TO_CLOSE_TO_YIELD_CL_FAILURE,%.1lf", buf, 0x12u);
      }
    }

    if (v31 > v34)
    {
      v49 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v50 = *(a1 + 8465);
        v51 = 0x7FF0000000000000;
        if (*(a2 + 376))
        {
          v51 = *(a2 + 368);
        }

        *buf = 67109376;
        *v64 = v50;
        *&v64[4] = 2048;
        *&v64[6] = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,#clcc,isLastSolFromCL,%d,CL_ANGLE_UNCERTAINTY_FAILURE,%.1lf", buf, 0x12u);
      }
    }

    if (v36 > 30.0)
    {
      v52 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v53 = *(a1 + 8465);
        *buf = 67109376;
        *v64 = v53;
        *&v64[4] = 2048;
        *&v64[6] = v36;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,#clcc,isLastSolFromCL,%d,CL_BEARING_UNCERTAINTY_FAILURE,%.1lf", buf, 0x12u);
      }
    }

    if (v35)
    {
      v54 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v55 = *(a1 + 8465);
        if (*v4 == 1)
        {
          v56 = *(a1 + 7856);
        }

        else
        {
          v56 = 0;
        }

        *buf = 67109376;
        *v64 = v55;
        *&v64[4] = 2048;
        *&v64[6] = v56;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,#clcc,isLastSolFromCL,%d,CL_UWB_RANGE_DIFFERENCE_FAILURE,%.1lf", buf, 0x12u);
      }
    }

    goto LABEL_129;
  }

  if ((*(a1 + 9792) & 1) == 0)
  {
    v57 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v58 = (*(a2 + 401) & *(a2 + 400));
      *buf = 67109376;
      *v64 = v28;
      *&v64[4] = 1024;
      *&v64[6] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "#findalgs-peoplefinder,#clcc,isLastSolFromCL,%d,No valid poses to perform arrow range cross check,producedInGoodEnvironmentalConditions,%d", buf, 0xEu);
    }

    if (*(a1 + 8848) == 1 && *(a2 + 401) == 1 && (*(a2 + 400) & 1) != 0)
    {
      v40 = 1;
      v59 = a1 + 9064;
      goto LABEL_138;
    }

    goto LABEL_129;
  }

  v37 = *(a1 + 8848) & *(a2 + 401) & *(a2 + 400);
  v38 = sub_1003C7678(a1 + 9064, (a1 + 9664), a2, *(a1 + 8465));
  if (v38)
  {
    if (v38 != 2)
    {
      return 1;
    }

    v39 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (v37)
    {
      if (v39)
      {
        sub_1004CD720((a1 + 8465));
      }

      if (sub_1003C7C18(a1 + 9064))
      {
        return 1;
      }

      v40 = 1;
      v59 = a1 + 9064;
LABEL_138:
      sub_1003C7C28(v59, 1);
      return v40;
    }

    if (v39)
    {
      sub_1004CD69C((a1 + 8465));
    }

    if (*(a1 + 8465) == 1)
    {
      sub_1003C75EC(a1 + 9064);
    }

    goto LABEL_136;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD7A8((a1 + 8465));
  }

  if (*(a1 + 8465) == 1)
  {
    sub_1003C75EC(a1 + 9064);
  }

  v40 = sub_1003C7C20(a1 + 9064);
  if (!(v37 & 1 | ((v40 & 1) == 0)))
  {
LABEL_136:
    v60 = a1 + 9064;
    goto LABEL_130;
  }

  return v40;
}

void sub_1003F9384(uint64_t a1, char **a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD820();
  }

  if (*(a1 + 32) == 1)
  {
    sub_10040068C(a1 + 7888, a2, *(a1 + 8));
  }
}

void sub_1003F93F8(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD854();
  }

  *(a1 + 8436) = 1;
}

void sub_1003F945C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CD8CC();
  }

  v108 = 0.0;
  if (*(a2 + 128) == 1)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CD9B8((a2 + 120), v6, (a2 + 128));
    }

    sub_1003FD084(a1, &v108, *(a2 + 120));
    goto LABEL_10;
  }

  if (*(a1 + 32) == 1)
  {
    v108 = *(a1 + 8);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CD940();
    }

LABEL_10:
    v9 = v108;
    *(a1 + 8648) = v108;
    *(a1 + 8656) = 1;
    v10 = *(a2 + 16);
    if (v10 == 1)
    {
      v11 = *a2;
      v2 = *(a2 + 8);
      sub_1003E8E80(a1 + 496, v2, v9);
      sub_1003CA8B8(a1 + 48, (a2 + 8), v108);
      v12 = *(a2 + 8);
      v13 = 0.0;
      if (v12 == 2)
      {
        *(a1 + 8664) = 2;
        if (*a2 != 409.5 || *(a1 + 8624) != 1 || *(a1 + 8616) != 409.5)
        {
          v17 = 0;
          v16 = 0;
          *(a1 + 8616) = *a2;
          *(a1 + 8624) = 1;
          v11 = v108 - *a2;
          goto LABEL_46;
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CDA48();
        }

LABEL_36:
        v17 = 0;
        v16 = 0;
LABEL_46:
        v18 = 0.0;
        goto LABEL_51;
      }

      if (v12 != 1)
      {
        if (!v12)
        {
          *(a1 + 8664) = 1;
          if (*a2 == 409.5 && *(a1 + 8624) == 1 && *(a1 + 8616) == 409.5 && (v14 = *(a1 + 7800), v14 == 1))
          {
            v15 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,Received bounded displacement with max enter timestamp again.", buf, 2u);
              v14 = *(a1 + 7800);
              if ((v14 & 1) == 0)
              {
                goto LABEL_175;
              }
            }

            v16 = v14;
            v17 = 0;
            v11 = *(a1 + 7792);
          }

          else
          {
            *(a1 + 8616) = *a2;
            *(a1 + 8624) = 1;
            v11 = v108 - *a2;
            if (*(a1 + 7800) != 1)
            {
              v17 = 0;
              v18 = 0.0;
              v16 = 1;
LABEL_50:
              v13 = v11;
              goto LABEL_51;
            }

            v19 = 0.2;
            if (*(a1 + 40))
            {
              v19 = 0.4;
            }

            if (v11 - *(a1 + 7792) <= v19)
            {
              v17 = 0;
              v16 = 1;
            }

            else
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004CDA7C();
              }

              v17 = 0;
              *(a1 + 7792) = v11;
              v16 = 1;
              *(a1 + 7800) = 1;
            }
          }

          v18 = 0.0;
          goto LABEL_50;
        }

        goto LABEL_36;
      }

      v17 = 1;
      *(a1 + 8664) = 1;
      if (*a2 == 409.5 && *(a1 + 8624) == 1 && *(a1 + 8616) == 409.5)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CDA48();
        }

        v16 = 0;
        v18 = *(a1 + 7808);
        v17 = *(a1 + 7816);
      }

      else
      {
        v16 = 0;
        *(a1 + 8616) = *a2;
        *(a1 + 8624) = 1;
        v11 = v108 - *a2;
        v18 = v11;
      }
    }

    else
    {
      if (*(a1 + 8624) == 1)
      {
        *(a1 + 8624) = 0;
      }

      v17 = 0;
      v16 = 0;
      *(a1 + 8664) = 0;
      v11 = 0.0;
      v18 = 0.0;
      v13 = 0.0;
    }

LABEL_51:
    if (*(a2 + 72) != 1)
    {
      v26 = 0.0;
      v27 = 0;
      v106 = 0;
      v28 = 0;
      if (*(a1 + 8640) == 1)
      {
        *(a1 + 8640) = 0;
      }

      v29 = 0.0;
      v30 = 0.0;
      goto LABEL_73;
    }

    v20 = *(a2 + 24);
    if (v20 == 409.5)
    {
      if (*(a1 + 8640) != 1)
      {
        v25 = 0;
        v20 = 409.5;
        goto LABEL_63;
      }

      v20 = 409.5;
      if (*(a1 + 8632) == 409.5)
      {
        v21 = v2;
        v22 = v17;
        v23 = v16;
        v24 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,Received measured displacement with maximum enter timestamp.", buf, 2u);
          v20 = *(a2 + 24);
        }

        v25 = 1;
        v16 = v23;
        v17 = v22;
        v2 = v21;
LABEL_63:
        *(a1 + 8632) = v20;
        *(a1 + 8640) = 1;
        v31 = *(a2 + 40);
        v30 = 0.0;
        if (v31 != 1)
        {
          if (v31)
          {
            v27 = 0;
            v106 = 0;
            v28 = 0;
            v26 = 0.0;
            v29 = 0.0;
            goto LABEL_73;
          }

          v102 = v18;
          v32 = v108;
          v33 = *(a2 + 32);
          v104 = v16;
          if (v25)
          {
            v34 = v13;
            v30 = *(a1 + 7824);
            v28 = *(a1 + 7832);
          }

          else
          {
            v30 = v108 - *(a2 + 24);
            if (*(a1 + 7832) == 1)
            {
              v57 = 0.2;
              if (*(a1 + 40))
              {
                v57 = 0.4;
              }

              if (v30 - *(a1 + 7824) <= v57)
              {
                v34 = v13;
                v28 = 1;
                goto LABEL_164;
              }

              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004CDBB8();
              }

              v34 = v13;
              sub_1003FA52C(a1);
              sub_1003EADF0((a1 + 496));
            }

            else
            {
              v34 = v13;
            }

            *(a1 + 7824) = v30;
            v28 = 1;
            *(a1 + 7832) = 1;
          }

LABEL_164:
          v88 = v32 - v33;
          v89 = *(a2 + 56);
          v3 = *(a2 + 64);
          v90 = *(a2 + 48);
          v91 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            if ((v28 & 1) == 0)
            {
              goto LABEL_175;
            }

            *buf = 134219008;
            *&buf[4] = v88;
            *&buf[12] = 2048;
            *&buf[14] = v89;
            *&buf[22] = 2048;
            *&buf[24] = v3;
            *v110 = 2048;
            *&v110[2] = v90;
            *&v110[10] = 2048;
            *&v110[12] = v30;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeeVIO Got findee VIO at %lf s, x=%lf y=%lf z=%lf, startTime %lf s", buf, 0x34u);
            v91 = qword_1009F9820;
          }

          *v107 = v88;
          v107[1] = v89;
          *&v107[2] = v3;
          v107[3] = v90;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            *&buf[4] = v88;
            *&buf[12] = 2048;
            *&buf[14] = v89;
            *&buf[22] = 2048;
            *&buf[24] = v3;
            *v110 = 2048;
            *&v110[2] = v90;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeeVIO Passing peer pose to filter, timestamp: %f s, peer position:[%0.2f,%0.2f,%0.2f]", buf, 0x2Au);
          }

          sub_100417CF8(a1 + 5616, v107);
          *buf = v88;
          *&buf[8] = v89;
          *&buf[16] = v3;
          *&buf[24] = v90;
          sub_1003EAF3C(a1 + 496, buf);
          v27 = 0;
          v106 = 0;
          v26 = 0.0;
          v13 = v34;
          v29 = 0.0;
          v16 = v104;
          v18 = v102;
          goto LABEL_73;
        }

        v105 = v16;
        v35 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,Got PDR data", buf, 2u);
        }

        if (v25)
        {
          v29 = *(a1 + 7840);
          v36 = *(a1 + 7848);
          if ((v36 & 1) == 0)
          {
            v106 = *(a1 + 7848);
            v27 = 0;
            v26 = 0.0;
LABEL_144:
            if (*(a1 + 8520) == 1 && *(a1 + 8536) == 1)
            {
              v99 = v8;
              v101 = v7;
              v74 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
              {
                v92 = *(a2 + 32);
                *buf = 134217984;
                *&buf[4] = v92;
                _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,measured applicability: %f", buf, 0xCu);
                v74 = qword_1009F9820;
                v75 = *(a1 + 8536);
              }

              else
              {
                v75 = 1;
              }

              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                if ((v75 & 1) == 0)
                {
                  goto LABEL_175;
                }

                v93 = v108 - *(a2 + 32);
                v94 = *(a1 + 8528);
                *buf = 134218240;
                *&buf[4] = v93;
                *&buf[12] = 2048;
                *&buf[14] = v94;
                _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,measured applicability with offset: %f, last timestamp: %f ", buf, 0x16u);
                if ((*(a1 + 8536) & 1) == 0)
                {
                  goto LABEL_175;
                }
              }

              else if ((v75 & 1) == 0)
              {
                goto LABEL_175;
              }

              v76 = v108 - *(a2 + 32) - *(a1 + 8528);
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
              {
                sub_1004CDAF0(a2);
              }

              v97 = sub_1003F5DF4(*(a2 + 48), *(a1 + 8496), v76, -409.6, 409.5, 0.1, 2.0);
              v78 = v77;
              v79 = sub_1003F5DF4(*(a2 + 56), *(a1 + 8504), v76, -409.6, 409.5, 0.1, 2.0);
              v98 = v80;
              v81 = sub_1003F5DF4(*(a2 + 64), *(a1 + 8512), v76, -25.6, 25.5, 0.1, 2.0);
              if (v78 & 1) != 0 && (v98 & 1) != 0 && (v82)
              {
                v96 = v81;
                v95 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
                  v83 = *(a2 + 32);
                  *buf = 134219008;
                  *&buf[4] = v97;
                  *&buf[12] = 2048;
                  *&buf[14] = v96;
                  *&buf[22] = 2048;
                  *&buf[24] = v79;
                  *v110 = 2048;
                  *&v110[2] = v76;
                  *&v110[10] = 2048;
                  *&v110[12] = v83;
                  _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeePDR Computed delta postion, x: %f, z: %f, y: %f, deltaT: %f, app time: %f", buf, 0x34u);
                }

                sub_1003EB428(a1 + 496, *&v97, *&v79, 0.0, v108 - *(a2 + 32), v76);
                v30 = 0.0;
                v7 = v101;
                v8 = v99;
              }

              else
              {
                v84 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
                v30 = 0.0;
                v7 = v101;
                v8 = v99;
                if (v84)
                {
                  sub_1004CDB7C();
                  v8 = v99;
                  v7 = v101;
                }
              }
            }

            v85 = *(a1 + 8520);
            v86 = *(a2 + 56);
            v87 = *(a2 + 40);
            *(a1 + 8472) = *(a2 + 24);
            *(a1 + 8488) = v87;
            *(a1 + 8504) = v86;
            if ((v85 & 1) == 0)
            {
              *(a1 + 8520) = 1;
            }

            v28 = 0;
            *(a1 + 8528) = v108 - *(a2 + 32);
            *(a1 + 8536) = 1;
            v16 = v105;
LABEL_73:
            if (!v10)
            {
              goto LABEL_80;
            }

            *buf = v11;
            *&buf[8] = v2;
            *&buf[16] = v26;
            *&buf[24] = v3;
            *v110 = v7;
            *&v110[8] = v8;
            v111 = 0;
            v112 = v27;
            v38 = sub_1003DDCFC((a1 + 6160), buf);
            *(a1 + 6312) = v38;
            *(a1 + 6316) = 1;
            if (v38 == 2)
            {
              sub_1003FA63C(a1);
            }

            else if (v38 != 1)
            {
              if (!v38)
              {
                sub_1003FA63C(a1);
              }

LABEL_80:
              if (*(a2 + 112) != 1)
              {
LABEL_94:
                if ((*(a1 + 7800) ^ v16))
                {
                  *(a1 + 7792) = v13;
                  *(a1 + 7800) = v16;
                }

                if ((*(a1 + 7816) ^ v17))
                {
                  *(a1 + 7808) = v18;
                  *(a1 + 7816) = v17;
                  if ((sub_1003F6030(a1) & 1) == 0)
                  {
                    v54 = qword_1009F9820;
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      *&buf[4] = v17 & 1;
                      *&buf[8] = 1024;
                      *&buf[10] = v16 & 1;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,reinitializing particle filter. FindeeSlowlyMoving: %d, findeeStatic: %d", buf, 0xEu);
                    }

                    sub_1003E5668(a1 + 496);
                  }
                }

                if ((*(a1 + 7832) ^ v28))
                {
                  *(a1 + 7824) = v30;
                  *(a1 + 7832) = v28;
                  if ((v28 & 1) == 0)
                  {
                    v55 = qword_1009F9820;
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeeVIO Lost findee VIO stream - resetting filter", buf, 2u);
                    }

                    sub_1003FA52C(a1);
                  }
                }

                if ((*(a1 + 7848) ^ v106))
                {
                  *(a1 + 7840) = v29;
                  *(a1 + 7848) = v106;
                }

                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
                {
                  sub_1004CDC2C(a2);
                }

                v56 = *(a2 + 152);
                *buf = *(a2 + 136);
                *&buf[16] = v56;
                sub_1003FA818(a1, buf, *(a2 + 169) & *(a2 + 168) & 1, v108);
                return;
              }

              v39 = v17;
              v40 = v16;
              v41 = (a1 + 8560);
              if (*(a1 + 8592) == 1)
              {
                if (*(a1 + 8536))
                {
                  v42 = v108 - *(a2 + 88) - *(a1 + 8528);
                  *&v43 = COERCE_DOUBLE(sub_1003F5DF4(*(a2 + 96), *(a1 + 8576), v42, -6.4, 6.35, 0.05, 10.0));
                  if ((*(a2 + 112) & 1) == 0)
                  {
                    goto LABEL_175;
                  }

                  v45 = *&v43;
                  v46 = v44;
                  *&v47 = COERCE_DOUBLE(sub_1003F5DF4(*(a2 + 104), *(a1 + 8584), v42, -6.4, 6.35, 0.05, 10.0));
                  if (v42 < 0.0)
                  {
                    v49 = qword_1009F9820;
                    v16 = v40;
                    v17 = v39;
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                    {
                      if ((*(a2 + 112) & 1) == 0 || (*(a1 + 8536) & 1) == 0)
                      {
                        goto LABEL_175;
                      }

                      *&buf[4] = v108;
                      v50 = *(a2 + 88);
                      v51 = *(a1 + 8528);
                      *buf = 134218752;
                      *&buf[12] = 2048;
                      *&buf[14] = v50;
                      *&buf[22] = 2048;
                      *&buf[24] = v108 - v50;
                      *v110 = 2048;
                      *&v110[2] = v51;
                      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#findalgs-peoplefinder,negative delta T, last range time: %f, app time: %f, curr timestamp: %f, last timestamp: %f ", buf, 0x2Au);
                    }

                    goto LABEL_94;
                  }

                  if (v46 & 1) != 0 && (v48)
                  {
                    if (*(a2 + 112))
                    {
                      v58 = *(a1 + 8592);
                      v59 = *(a2 + 96);
                      *v41 = *(a2 + 80);
                      *(a1 + 8576) = v59;
                      if ((v58 & 1) == 0)
                      {
                        *(a1 + 8592) = 1;
                      }

                      v103 = *&v47;
                      if (*(a2 + 112))
                      {
                        v16 = v40;
                        v60 = v108;
                        *(a1 + 8528) = v108 - *(a2 + 88);
                        *(a1 + 8536) = 1;
                        v61 = qword_1009F9820;
                        v17 = v39;
                        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                        {
                          if ((*(a2 + 112) & 1) == 0)
                          {
                            goto LABEL_175;
                          }

                          v62 = v60 - *(a2 + 88);
                          *buf = 134218752;
                          *&buf[4] = v45;
                          *&buf[12] = 2048;
                          *&buf[14] = v103;
                          *&buf[22] = 2048;
                          *&buf[24] = v42;
                          *v110 = 2048;
                          *&v110[2] = v62;
                          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeePDR Received delta velocity, delta x: %f, delta z: %f, delta t: %f, app time: %f", buf, 0x2Au);
                        }

                        v63.f64[0] = v45;
                        v63.f64[1] = v103;
                        *(a1 + 8600) = vaddq_f64(*(a1 + 8600), v63);
                        v100 = v45;
                        v64 = std::ostream::operator<<();
                        sub_10000EA44(v64, ", ", 2);
                        v65 = std::ostream::operator<<();
                        sub_1003FA760(v65);
                        v66 = qword_1009F9820;
                        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                        {
                          v67 = *(a1 + 8600);
                          v68 = *(a1 + 8608);
                          v69 = *(a1 + 8576);
                          v70 = *(a1 + 8584);
                          *buf = 134218752;
                          *&buf[4] = v67;
                          *&buf[12] = 2048;
                          *&buf[14] = v68;
                          *&buf[22] = 2048;
                          *&buf[24] = v69;
                          *v110 = 2048;
                          *&v110[2] = v70;
                          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeePDRtest Integrated velocity, H1: %f, H2: %f, true velocity H1: %f, H2: %f", buf, 0x2Au);
                        }

                        if (*(a2 + 112))
                        {
                          sub_1003E7784(a1 + 496, v100, v103, v108 - *(a2 + 88), v42);
                          goto LABEL_94;
                        }
                      }
                    }

LABEL_175:
                    sub_1000195BC();
                  }

                  v71 = qword_1009F9820;
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#findalgs-peoplefinder,#findeePDR Invalid overflow detected in received delta velocity", buf, 2u);
                  }

                  if ((*(a2 + 112) & 1) == 0)
                  {
                    goto LABEL_175;
                  }

                  v72 = *(a1 + 8592);
                  v73 = *(a2 + 96);
                  *v41 = *(a2 + 80);
                  *(a1 + 8576) = v73;
                  if ((v72 & 1) == 0)
                  {
                    *(a1 + 8592) = 1;
                  }

                  if ((*(a2 + 112) & 1) == 0)
                  {
                    goto LABEL_175;
                  }

                  v16 = v40;
                  *(a1 + 8528) = v108 - *(a2 + 88);
                  *(a1 + 8536) = 1;
                  goto LABEL_93;
                }

                v53 = *(a2 + 96);
                *v41 = *(a2 + 80);
                *(a1 + 8576) = v53;
              }

              else
              {
                v52 = *(a2 + 96);
                *v41 = *(a2 + 80);
                *(a1 + 8576) = v52;
                *(a1 + 8592) = 1;
              }

              if ((*(a2 + 112) & 1) == 0)
              {
                goto LABEL_175;
              }

              v16 = v40;
              *(a1 + 8528) = v108 - *(a2 + 88);
              *(a1 + 8536) = 1;
              *(a1 + 8600) = *(a1 + 8576);
LABEL_93:
              v17 = v39;
              goto LABEL_94;
            }

            sub_1003AF634(a1 + 5008, 0);
            goto LABEL_80;
          }

          v37 = v108;
        }

        else
        {
          v37 = v108;
          v29 = v108 - *(a2 + 24);
          v36 = 1;
        }

        v106 = v36;
        v3 = v37 - *(a2 + 32);
        v7 = *(a2 + 40);
        v8 = *(a2 + 48);
        v27 = 1;
        v26 = v29;
        goto LABEL_144;
      }
    }

    v25 = 0;
    goto LABEL_63;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CD900();
  }
}

void sub_1003FA52C(uint64_t a1)
{
  if (*(a1 + 8676))
  {
    sub_100418274(a1 + 5616, __src);
    if (__src[16])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CDCAC();
      }

      memcpy(v2, __src, sizeof(v2));
      sub_1003E6304(a1 + 496, v2);
    }
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  sub_100416C44(a1 + 5616);
}

void sub_1003FA63C(uint64_t a1)
{
  v2 = a1 + 0x2000;
  if (*(a1 + 8674) == 1)
  {
    sub_1003AC708(a1 + 5008, __src);
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  if ((*(v2 + 553) & 1) == 0 && LOBYTE(__src[16]) == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CDCE0();
    }

    memcpy(v3, __src, sizeof(v3));
    sub_1003E6304(a1 + 496, v3);
  }

  sub_1003AF634(a1 + 5008, 1);
}

void *sub_1003FA760(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_1003FA818(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CDD14(a2, a1, v8);
  }

  if (*(a2 + 24) == 1 && *(a1 + 8368) == 1)
  {
    v9 = *(a2 + 16);
    v18 = *a2;
    v17[0] = sub_1000422B8(*(a1 + 8328));
    if ((*(a1 + 8368) & 1) == 0)
    {
      goto LABEL_19;
    }

    v17[1] = sub_1000422B8(*(a1 + 8336));
    v10 = sub_10041306C(v9);
    v11 = sub_100412EF0(v17, &v18);
    v13 = v12;
    v14 = sub_1000422D4(v11);
    v15 = sub_1000422D4(v13);
    if ((*(a1 + 8424) & 1) == 0)
    {
      *(a1 + 8424) = 1;
    }

    *(a1 + 8376) = a4;
    *(a1 + 8384) = v14;
    *(a1 + 8392) = v15;
    *(a1 + 8400) = v10;
    *(a1 + 8408) = 0;
    *(a1 + 8416) = a3;
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__src[0]) = 134218496;
      *(__src + 4) = a4;
      WORD6(__src[0]) = 2048;
      *(__src + 14) = v10;
      WORD3(__src[1]) = 1024;
      DWORD2(__src[1]) = a3;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,#gri,findee,Pass peer location from UWB pipe to CL arrow filter, timestamp: %f, horUncM, %.1lf, goodGnssSignalConditions, %d", __src, 0x1Cu);
      if ((*(a1 + 8424) & 1) == 0)
      {
LABEL_19:
        sub_1000195BC();
      }
    }

    sub_1003CA740(a1 + 48, a1 + 8376);
    if ((*(a1 + 7960) & 1) == 0)
    {
      *(a1 + 7960) = 1;
    }

    *(a1 + 7944) = a4;
    *(a1 + 7952) = a3;
    if (*(a1 + 8744) == 1)
    {
      if (*(a1 + 8672) == 1)
      {
        sub_1003CA044(a1 + 48, __src);
      }

      else
      {
        memset(__src, 0, sizeof(__src));
      }

      if (sub_1003F8AC0(a1, __src))
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1003E6C20(a1 + 496, __dst);
      }
    }
  }
}

uint64_t sub_1003FAA98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_1003F26B8((a1 + 10180), a3);
  if (result > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_100571910[result];
    *(a2 + 420) = dword_100571730[result];
    *(a2 + 424) = 1;
  }

  *a2 = v5;
  return result;
}

void sub_1003FAB7C(uint64_t a1)
{
  sub_1003FAE70(a1);

  operator delete();
}

uint64_t sub_1003FABB4(void *a1)
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
    v5 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 56;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_1003FAC60(uint64_t a1)
{
  sub_1003EFBC0((a1 + 488));
  sub_10004EDBC((a1 + 416));
  sub_1003FADC4((a1 + 368));
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      *(a1 + 96) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    *(v3 + 496) = off_1009991A0;
    *(v3 + 424) = off_1009991A0;
    v7 = (v3 + 360);
    sub_1003BC38C(&v7);
    *(v3 + 240) = off_1009991A0;
    *(v3 + 160) = off_1009991A0;
    *(v3 + 96) = off_1009991A0;
    v7 = (v3 + 72);
    sub_1003BC338(&v7);
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    v5 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v5;
      operator delete(v5);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003FADC4(void *a1)
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
    v5 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 26;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_1003FAE70(uint64_t a1)
{
  v2 = a1 + 4096;
  *a1 = off_1009AA668;
  sub_10004EDBC((a1 + 9600));
  sub_1003FABB4((a1 + 9072));
  sub_1003F5168((a1 + 8256));
  sub_1003F5168((a1 + 8208));
  if (*(v2 + 3824) == 1)
  {
    v3 = *(a1 + 7888);
    if (v3)
    {
      *(a1 + 7896) = v3;
      operator delete(v3);
    }
  }

  sub_1003F4DBC((a1 + 7360));
  sub_10004EDBC((a1 + 7088));
  sub_10004EDBC((a1 + 7040));
  sub_10004EDBC((a1 + 6416));
  sub_10004EDBC((a1 + 6368));
  sub_1003FAC60(a1 + 5616);
  v8 = (a1 + 5584);
  sub_10038E148(&v8);
  sub_10004EDBC((a1 + 5512));
  v4 = *(a1 + 5144);
  *(a1 + 5144) = 0;
  if (v4)
  {
    v4[21] = off_1009991A0;
    v4[13] = off_1009991A0;
    v4[5] = off_1009991A0;
    operator delete();
  }

  if (*(v2 + 1040) == 1)
  {
    v5 = *(a1 + 5104);
    if (v5)
    {
      *(a1 + 5112) = v5;
      operator delete(v5);
    }
  }

  v6 = *(a1 + 5080);
  *(a1 + 5080) = 0;
  if (v6)
  {
    sub_10038E1EC(v6);
    operator delete();
  }

  sub_1003F4E68(a1 + 496);
  return a1;
}

uint64_t sub_1003FB04C()
{
  v1 = xmmword_100571760;
  v2[0] = unk_100571770;
  v2[1] = xmmword_100571780;
  v2[2] = unk_100571790;
  qword_1009F8878 = 0;
  unk_1009F8880 = 0;
  qword_1009F8870 = 0;
  sub_10004EEB8(&qword_1009F8870, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F8870, &_mh_execute_header);
  v1 = xmmword_1005717A0;
  qword_1009F8890 = 0;
  unk_1009F8898 = 0;
  qword_1009F8888 = 0;
  sub_10004EEB8(&qword_1009F8888, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F8888, &_mh_execute_header);
}

void sub_1003FB150(uint64_t a1, double a2, double a3)
{
  v8 = a2;
  if (*(a1 + 32) == 1 && a3 - *(a1 + 24) > *(a1 + 8))
  {
    sub_1003FB224(a1);
  }

  sub_100013A08(a1 + 40, &v8);
  v5 = v8 + *(a1 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = a3;
  *(a1 + 32) = 1;
  v6 = *(a1 + 80);
  if (*a1 < v6)
  {
    v7 = *(a1 + 72);
    *(a1 + 16) = v5 - *(*(*(a1 + 48) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
    *(a1 + 72) = v7 + 1;
    *(a1 + 80) = v6 - 1;
    sub_1000139A8(a1 + 40, 1);
  }
}

void sub_1003FB224(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(a1 + 80) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 56);
      v2 = (*(a1 + 48) + 8);
      *(a1 + 48) = v2;
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
      goto LABEL_8;
    }

    v6 = 512;
  }

  *(a1 + 72) = v6;
LABEL_8:
  *(a1 + 16) = 0;
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }
}

double sub_1003FB2B4(uint64_t a1, char a2)
{
  v2 = *(a1 + 80);
  result = v2;
  if (*a1 < v2)
  {
    sub_1004CDDA8();
  }

  if (*a1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      return *(a1 + 16) / result;
    }
  }

  return result;
}

uint64_t sub_1003FB304(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = off_1009AA820;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  sub_10038D514(a1 + 8, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  *(a1 + 32) = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 48) = v5;
  *&v5 = *(a2 + 64);
  *(a1 + 104) = *(a2 + 56);
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 201) = 0u;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#handoffPredictor HandoffPredictor is created", v10, 2u);
  }

  return a1;
}

void sub_1003FB41C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 688) != 1)
  {
    goto LABEL_29;
  }

  if ((*(a1 + 696) & 1) == 0)
  {
    v4 = *(a1 + 472);
    v5 = *(a2 + 4);
    if (*(a1 + 64) <= vabds_f32(v5, v4))
    {
      *(a1 + 696) = 1;
      *(a1 + 192) = 0x3FF0000000000000;
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 134218240;
        v42 = v5;
        v43 = 2048;
        v44 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#handoffPredictor distance measurements have changed enough - current distance is %f, first distance is %f", &v41, 0x16u);
        if ((*(a1 + 688) & 1) == 0)
        {
LABEL_29:
          v7 = *a2;
          v8 = a2[2];
          *(a1 + 472) = a2[1];
          *(a1 + 488) = v8;
          *(a1 + 456) = v7;
          v9 = a2[3];
          v10 = a2[4];
          v11 = a2[6];
          *(a1 + 536) = a2[5];
          *(a1 + 552) = v11;
          *(a1 + 504) = v9;
          *(a1 + 520) = v10;
          v12 = a2[7];
          v13 = a2[8];
          v14 = a2[10];
          *(a1 + 600) = a2[9];
          *(a1 + 616) = v14;
          *(a1 + 568) = v12;
          *(a1 + 584) = v13;
          v15 = a2[11];
          v16 = a2[12];
          v17 = a2[13];
          *(a1 + 680) = *(a2 + 28);
          *(a1 + 648) = v16;
          *(a1 + 664) = v17;
          *(a1 + 632) = v15;
          *(a1 + 688) = 1;
          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 472);
            v41 = 134217984;
            v42 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#handoffPredictor first distance measurement is %f", &v41, 0xCu);
          }
        }
      }
    }
  }

  if (*(a1 + 448) != 1)
  {
    goto LABEL_22;
  }

  v20 = *(a2 + 1);
  v21 = v20 - *(a1 + 224);
  if (v21 > 0.0)
  {
    if (*(a1 + 96) <= v21)
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#handoffPredictor velocity measurements stale, clearing velocity buffer and velocity score", &v41, 2u);
      }

      sub_1003FB224(a1 + 104);
      v23 = 0.0;
    }

    else
    {
      sub_1003FB150(a1 + 104, (-(*(a2 + 4) - *(a1 + 232)) / v21), v20);
      sub_1003FB2B4(a1 + 104, 0);
      v23 = 0.0;
      if (v24)
      {
        v23 = 0.0;
        if (*(a1 + 80) < v22)
        {
          v23 = 1.0;
        }
      }
    }

    *(a1 + 208) = v23;
LABEL_22:
    v27 = 0.0;
    if (*(a2 + 36) == 1)
    {
      v28 = fabs(sub_1000422D4(*(a2 + 6))) > *(a1 + 72);
      v27 = 0.0;
      if (!v28)
      {
        v27 = 1.0;
      }
    }

    *(a1 + 200) = v27;
    v29 = *(a1 + 448);
    v31 = a2[1];
    v30 = a2[2];
    *(a1 + 216) = *a2;
    *(a1 + 232) = v31;
    *(a1 + 248) = v30;
    v32 = a2[6];
    v34 = a2[3];
    v33 = a2[4];
    *(a1 + 296) = a2[5];
    *(a1 + 312) = v32;
    *(a1 + 264) = v34;
    *(a1 + 280) = v33;
    v35 = a2[10];
    v37 = a2[7];
    v36 = a2[8];
    *(a1 + 360) = a2[9];
    *(a1 + 376) = v35;
    *(a1 + 328) = v37;
    *(a1 + 344) = v36;
    v39 = a2[12];
    v38 = a2[13];
    v40 = a2[11];
    *(a1 + 440) = *(a2 + 28);
    *(a1 + 408) = v39;
    *(a1 + 424) = v38;
    *(a1 + 392) = v40;
    if ((v29 & 1) == 0)
    {
      *(a1 + 448) = 1;
    }

    return;
  }

  v25 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CDDD4(v25);
  }

  sub_1003FB224(a1 + 104);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
}

void sub_1003FB780()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#handoffPredictor region changed", v1, 2u);
  }
}

double sub_1003FB7E8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 200);
    v5 = *(a1 + 208);
    v7 = 134218496;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#handoffPredictor _distanceChangeScore: %f, _directionScore: %f, _velocityScore: %f", &v7, 0x20u);
  }

  return *(a1 + 48) * *(a1 + 200) + *(a1 + 40) * *(a1 + 192) + *(a1 + 56) * *(a1 + 208);
}

void *sub_1003FB8C4(void *a1)
{
  *a1 = off_1009AA820;
  v2 = (a1 + 1);
  sub_100188E54(a1 + 18);
  v4 = v2;
  sub_10038C574(&v4);
  return a1;
}

void sub_1003FB924(void *a1)
{
  *a1 = off_1009AA820;
  v1 = (a1 + 1);
  sub_100188E54(a1 + 18);
  v2 = v1;
  sub_10038C574(&v2);
  operator delete();
}

uint64_t sub_1003FB998()
{
  v8[0] = xmmword_100571940;
  v8[1] = unk_100571950;
  sub_1001BD0B0(qword_1009F88A0, v8, 4);
  xmmword_1009F88B8 = xmmword_100563BD0;
  unk_1009F88C8 = xmmword_100563BE0;
  qword_1009F88E0 = 0;
  unk_1009F88E8 = 0;
  qword_1009F88D8 = 0x3FD999999999999ALL;
  unk_1009F88F0 = xmmword_100563BF0;
  dword_1009F8900 = 5;
  qword_1009F8908 = 0x4000000000000000;
  dword_1009F8910 = 5;
  byte_1009F8918 = 0;
  unk_1009F891C = 0x30000000ALL;
  xmmword_1009F8928 = xmmword_100563C00;
  unk_1009F8938 = xmmword_100563C10;
  xmmword_1009F8948 = xmmword_100563C20;
  qword_1009F8958 = 0x3FE3333333333333;
  dword_1009F8960 = 3;
  xmmword_1009F8968 = xmmword_100563C30;
  unk_1009F8978 = xmmword_100563C10;
  xmmword_1009F8988 = xmmword_100563C00;
  qword_1009F8998 = 0x3FE3333333333333;
  byte_1009F89A0 = 0;
  xmmword_1009F89A8 = xmmword_100563C40;
  unk_1009F89B8 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F89C8 = _Q0;
  qword_1009F89D8 = 0xBFD3333333333333;
  xmmword_1009F89E0 = xmmword_100563C60;
  qword_1009F89F0 = 0x3E99999A40000000;
  xmmword_1009F89F8 = xmmword_100563BE0;
  qword_1009F8A10 = 0;
  unk_1009F8A18 = 0;
  qword_1009F8A08 = 0x3FD999999999999ALL;
  xmmword_1009F8A20 = xmmword_100563BF0;
  dword_1009F8A30 = 5;
  qword_1009F8A38 = 0x4000000000000000;
  dword_1009F8A40 = 4;
  qword_1009F8A48 = 0x300000008;
  qword_1009F8A50 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F8A58, &v7, 1);
  xmmword_1009F8A70 = xmmword_100563C70;
  qword_1009F8A80 = 0x4024000000000000;
  dword_1009F8A88 = 45;
  byte_1009F8A90 = 0;
  byte_1009F8AA8 = 0;
  qword_1009F8AB0 = 0;
  byte_1009F8AB8 = 0;
  dword_1009F8ABC = 1;
  byte_1009F8AC0 = 1;
  xmmword_1009F8AC8 = xmmword_100563C80;
  xmmword_1009F8AD8 = xmmword_100563C90;
  xmmword_1009F8AE8 = v6;
  qword_1009F8AF8 = 0xC059000000000000;
  xmmword_1009F8B00 = xmmword_100563CA0;
  qword_1009F8B10 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F8B18 = xmmword_100563BE0;
  qword_1009F8B28 = 0x3FD999999999999ALL;
  xmmword_1009F8B30 = 0u;
  unk_1009F8B40 = xmmword_100563BF0;
  dword_1009F8B50 = 5;
  qword_1009F8B58 = 0x4000000000000000;
  dword_1009F8B60 = 10;
  qword_1009F8B68 = 0x4034000000000000;
  dword_1009F8B70 = 3;
  xmmword_1009F8B78 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F88A0, &_mh_execute_header);
}

double sub_1003FBC84(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 360) = 0x3FB999999999999ALL;
  result = 0.0;
  *(a1 + 16) = xmmword_1005719A0;
  *(a1 + 32) = xmmword_10056EE90;
  return result;
}

void sub_1003FBCD8(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  a1[11] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[8];
      v2 = (a1[7] + 8);
      a1[7] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 32;
  }

  a1[10] = v6;
LABEL_8:
  v7 = a1[13];
  v8 = a1[14];
  a1[17] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[14];
      v7 = (a1[13] + 8);
      a1[13] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 16;
  }

  else
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = 32;
  }

  a1[16] = v11;
}

__n128 sub_1003FBDB0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 128) = 0;
  if (a1[11])
  {
    v2 = *(a1[7] + ((a1[10] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[10] & 0x1FLL) << 7);
    v3 = *(v2 + 80);
    *(a2 + 64) = *(v2 + 64);
    *(a2 + 80) = v3;
    v4 = *(v2 + 112);
    *(a2 + 96) = *(v2 + 96);
    *(a2 + 112) = v4;
    v5 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v5;
    result = *(v2 + 32);
    v7 = *(v2 + 48);
    *(a2 + 32) = result;
    *(a2 + 48) = v7;
    *(a2 + 128) = 1;
  }

  return result;
}

void sub_1003FBE08(int64x2_t *a1, __int128 *a2)
{
  sub_1003AAEB4(a1, a2);
  v4 = a1->i64[1];
  if (a1[1].i64[0] != v4)
  {
    v5 = a1[2].u64[0];
    v6 = (v4 + 8 * (v5 >> 5));
    v7 = (*v6 + ((v5 & 0x1F) << 7));
    v8 = *(v4 + (((a1[2].i64[1] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[2].i64[1] + v5) & 0x1F) << 7);
    while (v7 != v8)
    {
      if (*a2 - *v7 <= 5.0)
      {
        break;
      }

      a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);
      sub_10017B5B8(a1, 1);
      v7 += 16;
      if ((v7 - *v6) == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
      }
    }
  }
}

__n128 sub_1003FBEF4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>, __n128 result@<Q0>)
{
  *a2 = 0;
  *(a2 + 128) = 0;
  v3 = a1[1];
  if (a1[2] != v3)
  {
    v4 = a1[4];
    v5 = (v3 + 8 * (v4 >> 5));
    v6 = *v5 + ((v4 & 0x1F) << 7);
    v7 = *(v3 + (((a1[5] + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[5] + v4) & 0x1F) << 7);
    while (v6 != v7)
    {
      v8 = *v6;
      v17 = *(v6 + 120);
      v15 = *(v6 + 88);
      v16 = *(v6 + 104);
      v14 = *(v6 + 72);
      v9 = *(v6 + 40);
      v13 = *(v6 + 56);
      v11 = *(v6 + 8);
      v12 = *(v6 + 24);
      if (*v6 > result.n128_f64[0])
      {
        result.n128_f64[0] = v8 - result.n128_f64[0];
        if (result.n128_f64[0] < 0.2)
        {
          *a2 = v8;
          *(a2 + 72) = v14;
          *(a2 + 88) = v15;
          *(a2 + 104) = v16;
          *(a2 + 8) = v11;
          *(a2 + 24) = v12;
          result = v9;
          *(a2 + 40) = v9;
          *(a2 + 120) = v17;
          *(a2 + 56) = v13;
          *(a2 + 128) = 1;
        }

        return result;
      }

      v6 += 128;
      if (v6 - *v5 == 4096)
      {
        v10 = v5[1];
        ++v5;
        v6 = v10;
      }
    }
  }

  return result;
}

__n128 sub_1003FC038@<Q0>(void *a1@<X0>, uint64_t a2@<X8>, __n128 result@<Q0>)
{
  *a2 = 0;
  *(a2 + 128) = 0;
  if (a1[17])
  {
    v3 = *(a1[13] + ((a1[16] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[16] & 0x1FLL) << 7);
    result.n128_f64[0] = *v3 - result.n128_f64[0];
    if (result.n128_f64[0] < 0.2)
    {
      v4 = *(v3 + 80);
      *(a2 + 64) = *(v3 + 64);
      *(a2 + 80) = v4;
      v5 = *(v3 + 112);
      *(a2 + 96) = *(v3 + 96);
      *(a2 + 112) = v5;
      v6 = *(v3 + 16);
      *a2 = *v3;
      *(a2 + 16) = v6;
      result = *(v3 + 32);
      v7 = *(v3 + 48);
      *(a2 + 32) = result;
      *(a2 + 48) = v7;
      *(a2 + 128) = 1;
    }
  }

  return result;
}

void sub_1003FC0A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float32x4_t a5@<Q1>)
{
  v9 = *(a1 + 88);
  if (v9)
  {
    while (1)
    {
      v10 = *(a1 + 80);
      v11 = *(*(a1 + 56) + ((v10 >> 2) & 0x3FFFFFFFFFFFFFF8));
      v12 = *(v11 + ((v10 & 0x1F) << 7));
      if (v12 >= a4)
      {
        break;
      }

      *(a1 + 80) = v10 + 1;
      *(a1 + 88) = v9 - 1;
      sub_10017B5B8(a1 + 48, 1);
      v9 = *(a1 + 88);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;
    v65[0].i8[0] = 0;
    v66 = 0;
    if (v12 - a4 < 0.1)
    {
      v18 = (v11 + ((v10 & 0x1F) << 7));
      v19 = v18[5];
      v65[4] = v18[4];
      v65[5] = v19;
      v20 = v18[7];
      v65[6] = v18[6];
      v65[7] = v20;
      v21 = v18[1];
      v65[0] = *v18;
      v65[1] = v21;
      a5 = v18[3];
      v65[2] = v18[2];
      v65[3] = a5;
      v13 = 1;
      v66 = 1;
    }
  }

  else
  {
LABEL_4:
    v13 = 0;
    v65[0].i8[0] = 0;
    v66 = 0;
  }

  if (*(a2 + 32) == 1 && *(a2 + 48) == 1)
  {
    v14 = *(a2 + 64);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 352);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      if (v14)
      {
LABEL_27:
        v17 = 5;
        goto LABEL_32;
      }
    }

    else if (v15 == 4)
    {
      if ((v14 & 1) == 0)
      {
        v17 = 1;
        goto LABEL_32;
      }
    }

    else if (v15 == 5 && (v14 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  switch(v15)
  {
    case 0:
      if ((v14 & 1) == 0)
      {
        break;
      }

      *(a1 + 16) = xmmword_1005719A0;
LABEL_29:
      v17 = 4;
      goto LABEL_32;
    case 1:
      if ((v14 & 1) == 0)
      {
        break;
      }

      goto LABEL_29;
    case 2:
      v16 = *(a1 + 344);
      if (v13)
      {
        if (*(a1 + 344))
        {
          sub_1003FC53C(a1, v65, a1 + 184);
          if (v14)
          {
            goto LABEL_27;
          }

LABEL_21:
          v17 = 3;
LABEL_32:
          *(a1 + 352) = v17;
          break;
        }
      }

      else if (*(a1 + 344))
      {
        break;
      }

      v63 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CDE18(v63);
      }

      break;
  }

LABEL_33:
  if (*(a2 + 80) == 1 && *(a2 + 96) == 1 && (*(a2 + 112) & 1) != 0)
  {
    v22 = *(a2 + 72);
    v22.f64[1] = *(a2 + 88);
    *a5.f32 = vcvt_f32_f64(v22);
    *v22.f64 = *(a2 + 104);
    a5.i32[2] = LODWORD(v22.f64[0]);
    v64 = a5;
  }

  else
  {
    v23 = qword_1009F9820;
    v64 = 0u;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CDE5C(v23);
    }
  }

  v24 = *(a1 + 16);
  v25 = vmulq_f32(v24, xmmword_10056F0C0);
  v26 = vnegq_f32(v25);
  v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
  v28 = vextq_s8(v27, v27, 8uLL);
  v29 = vextq_s8(v25, v26, 8uLL);
  v30 = vrev64q_s32(v25);
  v30.i32[0] = v26.i32[1];
  v30.i32[3] = v26.i32[2];
  v31 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v29, *v64.f32, 1), v28, v64.f32[0]), v30, v64, 2);
  v32 = vnegq_f32(v31);
  v33 = vtrn2q_s32(v31, vtrn1q_s32(v31, v32));
  v34 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v31, v32, 8uLL), *v24.f32, 1), vextq_s8(v33, v33, 8uLL), v24.f32[0]);
  v35 = vrev64q_s32(v31);
  v35.i32[0] = v32.i32[1];
  v35.i32[3] = v32.i32[2];
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 64) = a4;
  *(a3 + 32) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v31, v24, 3), v35, v24, 2), v34);
  if ((*(a2 + 152) & 1) == 0)
  {
    sub_1000195BC();
  }

  v36 = vdupq_lane_s32(*v24.f32, 0);
  v37 = vdupq_laneq_s32(v24, 2);
  v38 = *(a2 + 128);
  v39 = *(a2 + 136);
  v40 = *(a2 + 144);
  v41 = *(a2 + 120);
  v42 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_1005719B0, v39), xmmword_1005719C0, v38), vmlaq_n_f32(vmulq_n_f32(xmmword_1005719D0, v41), xmmword_1005719E0, v40));
  v43 = vnegq_f32(v42);
  v44 = vtrn2q_s32(v42, vtrn1q_s32(v42, v43));
  v45 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v42, v43, 8uLL), *v24.f32, 1), vextq_s8(v44, v44, 8uLL), v36);
  v46 = vrev64q_s32(v42);
  v46.i32[0] = v43.i32[1];
  v46.i32[3] = v43.i32[2];
  *(a3 + 48) = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v42, v24, 3), v46, v37), v45);
  v47 = *(a1 + 344);
  v48 = *(a2 + 16);
  *(a1 + 184) = *a2;
  *(a1 + 200) = v48;
  v49 = *(a2 + 64);
  v50 = *(a2 + 80);
  v51 = *(a2 + 48);
  *(a1 + 216) = *(a2 + 32);
  *(a1 + 264) = v50;
  *(a1 + 248) = v49;
  *(a1 + 232) = v51;
  v52 = *(a2 + 144);
  v54 = *(a2 + 96);
  v53 = *(a2 + 112);
  *(a1 + 312) = *(a2 + 128);
  *(a1 + 328) = v52;
  *(a1 + 280) = v54;
  *(a1 + 296) = v53;
  if ((v47 & 1) == 0)
  {
    *(a1 + 344) = 1;
  }

  *(a1 + 192) = a4;
  *(a1 + 200) = 1;
  if (v14)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      sub_1000195BC();
    }

    if ((*(a2 + 48) & 1) == 0)
    {
      sub_1000195BC();
    }

    if ((*(a2 + 64) & 1) == 0)
    {
      sub_1000195BC();
    }

    v55 = *(a2 + 24);
    v56 = *(a2 + 40);
    v57 = *(a2 + 56);
    v58 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v29, v56), v28, v55), v30, v57);
    v59 = vnegq_f32(v58);
    v60 = vtrn2q_s32(v58, vtrn1q_s32(v58, v59));
    v61 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v58, v59, 8uLL), *v24.f32, 1), vextq_s8(v60, v60, 8uLL), v36);
    v62 = vrev64q_s32(v58);
    v62.i32[0] = v59.i32[1];
    v62.i32[3] = v59.i32[2];
    *(a3 + 16) = 1;
    *a3 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v58, v24, 3), v62, v37), v61);
  }
}

void sub_1003FC53C(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v18 = a2[1];
  v19 = a2[2];
  v16 = a2[4];
  v17 = a2[3];
  *&v5 = sub_1003B3E3C(xmmword_100571A30);
  v6 = 0;
  v20[0] = v5;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  do
  {
    v21[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v20[v6])), v19, *&v20[v6], 1), v17, v20[v6], 2), v16, v20[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  *v10.i64 = sub_1003ADBF0(v21[0], v21[1], v21[2]);
  v11 = vnegq_f32(v10);
  v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
  v13 = vrev64q_s32(v10);
  v13.i32[0] = v11.i32[1];
  v13.i32[3] = v11.i32[2];
  *&v15 = sub_1003FC614(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v10, v11, 8uLL), *(a1 + 32), 1), vextq_s8(v12, v12, 8uLL), COERCE_FLOAT(*(a1 + 32))), vmlaq_laneq_f32(vmulq_laneq_f32(v10, *(a1 + 32), 3), v13, *(a1 + 32), 2)), v14, a3);
  *(a1 + 16) = v15;
}

double sub_1003FC614(float32x4_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 152) & 1) == 0)
  {
    sub_1000195BC();
  }

  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a3 + 120)), *(a3 + 136));
  v4 = vextq_s8(v3, v3, 4uLL);
  v5 = vnegq_f32(v4);
  v6 = vtrn2q_s32(v4, vtrn1q_s32(v4, v5));
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vrev64q_s32(v4);
  v8.i32[0] = v5.i32[1];
  v8.i32[3] = v5.i32[2];
  v9 = vaddq_f32(vmlaq_f32(vmulq_f32(v4, vdupq_n_s32(0x3F3504F3u)), v7, v8), vmlaq_f32(vmulq_f32(vextq_s8(v4, v5, 8uLL), v7), vdupq_n_s32(0xBF3504F3), vextq_s8(v6, v6, 8uLL)));
  v10 = vmulq_f32(v9, xmmword_10056F0C0);
  v11 = vmulq_f32(v9, v9);
  *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v11.i32[0] = vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).u32[0];
  *v6.i8 = vrecpe_f32(v11.u32[0]);
  *v6.i8 = vmul_f32(*v6.i8, vrecps_f32(v11.u32[0], *v6.i8));
  v12 = vmulq_n_f32(v10, vmul_f32(*v6.i8, vrecps_f32(v11.u32[0], *v6.i8)).f32[0]);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *a1.f32, 1), vextq_s8(v14, v14, 8uLL), a1.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, a1, 3), v16, a1, 2), v15);
  v18 = vmulq_f32(v17, v17);
  v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  *v16.f32 = vrsqrte_f32(v18.u32[0]);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v16.f32, *v16.f32)));
  v19 = vmulq_f32(vmulq_n_f32(v17, vmul_f32(*v16.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v16.f32, *v16.f32))).f32[0]), xmmword_100549A50);
  v30 = vmulq_n_f32(xmmword_100549A50, v19.f32[2] + vaddv_f32(*v19.f32));
  v20 = atan2f(sqrtf(v18.f32[0]), v17.f32[3]);
  v21 = __sincosf_stret((v20 + v20) * 0.5);
  v22 = vmulq_n_f32(v30, v21.__sinval);
  v22.i32[3] = LODWORD(v21.__cosval);
  v23 = vmulq_f32(v22, v22);
  v24 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  if (vaddv_f32(v24) == 0.0)
  {
    v25 = xmmword_10056EE90;
  }

  else
  {
    v26 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
    v27 = vrsqrte_f32(v26);
    v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
    v25 = vmulq_n_f32(v22, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]);
  }

  *&result = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1005719F0, *v25.f32, 1), xmmword_100571A00, v25.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1005719A0, v25, 3), xmmword_100571A10, v25, 2)).u64[0];
  return result;
}

BOOL sub_1003FC814(float32x4_t *a1, float32x4_t *a2, float32x4_t a3)
{
  v3 = a2[5].i32[0];
  if (v3 == 2)
  {
    v35 = a2[1];
    v36 = a2[2];
    v33 = a2[4];
    v34 = a2[3];
    *&v5 = sub_1003B3E3C(xmmword_100571A30);
    v6 = 0;
    v39[0] = v5;
    v39[1] = v7;
    v39[2] = v8;
    v39[3] = v9;
    do
    {
      v40[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(v39[v6])), v36, *&v39[v6], 1), v34, v39[v6], 2), v33, v39[v6], 3);
      ++v6;
    }

    while (v6 != 4);
    *v10.i64 = sub_1003ADBF0(v40[0], v40[1], v40[2]);
    v11 = vmulq_f32(v10, xmmword_10056F0C0);
    v12 = vmulq_f32(v10, v10);
    *v12.i8 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    v12.i32[0] = vadd_f32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0];
    v13 = vrecpe_f32(v12.u32[0]);
    v14 = vmul_f32(v13, vrecps_f32(v12.u32[0], v13));
    v15 = vmulq_n_f32(v11, vmul_f32(v14, vrecps_f32(v12.u32[0], v14)).f32[0]);
    v16 = vnegq_f32(v15);
    v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
    v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *a3.f32, 1), vextq_s8(v17, v17, 8uLL), a3.f32[0]);
    v19 = vrev64q_s32(v15);
    v19.i32[0] = v16.i32[1];
    v19.i32[3] = v16.i32[2];
    v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, a3, 3), v19, a3, 2), v18);
    v21 = vmulq_f32(v20, v20);
    v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
    *v18.f32 = vrsqrte_f32(v21.u32[0]);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v18.f32, *v18.f32)));
    v22 = vmulq_f32(vmulq_n_f32(v20, vmul_f32(*v18.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]), xmmword_100549A50);
    v38 = vmulq_n_f32(xmmword_100549A50, v22.f32[2] + vaddv_f32(*v22.f32));
    v23 = atan2f(sqrtf(v21.f32[0]), v20.f32[3]);
    v24 = __sincosf_stret((v23 + v23) * 0.5);
    v25 = vmulq_n_f32(v38, v24.__sinval);
    v25.i32[3] = LODWORD(v24.__cosval);
    v26 = vmulq_f32(v25, v25);
    v27 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
    if (vaddv_f32(v27) == 0.0)
    {
      v28 = xmmword_10056EE90;
    }

    else
    {
      v29 = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
      v30 = vrsqrte_f32(v29);
      v31 = vmul_f32(v30, vrsqrts_f32(v29, vmul_f32(v30, v30)));
      v28 = vmulq_n_f32(v25, vmul_f32(v31, vrsqrts_f32(v29, vmul_f32(v31, v31))).f32[0]);
    }

    a1[2] = v28;
  }

  return v3 == 2;
}

void sub_1003FCA04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 80);
  v7 = *(a1 + 352);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_34;
        }

        if (v6 != 2)
        {
          *(a1 + 352) = 4;
          if (*(a1 + 344) == 1 && *(a1 + 200) == 1)
          {
            if (*(a1 + 88))
            {
              v8 = *(*(a1 + 56) + ((*(a1 + 80) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 80) & 0x1FLL) << 7);
              if (*v8 - *(a1 + 192) < *(a1 + 360))
              {
                v9 = *(v8 + 80);
                v87 = *(v8 + 64);
                v88 = v9;
                v10 = *(v8 + 112);
                v89 = *(v8 + 96);
                v90 = v10;
                v11 = *(v8 + 16);
                v83 = *v8;
                v84 = v11;
                v12 = *(v8 + 48);
                v85 = *(v8 + 32);
                v86 = v12;
                v91 = 1;
                sub_1003FC53C(a1, &v83, a1 + 184);
              }
            }
          }

          goto LABEL_33;
        }

        goto LABEL_29;
      }

LABEL_16:
      if (v6 != 2)
      {
        goto LABEL_33;
      }

      if (*(a1 + 344) != 1)
      {
        goto LABEL_33;
      }

      if (*(a1 + 200) != 1)
      {
        goto LABEL_33;
      }

      if (!*(a1 + 88))
      {
        goto LABEL_33;
      }

      v13 = *(*(a1 + 56) + ((*(a1 + 80) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 80) & 0x1FLL) << 7);
      if (*v13 - *(a1 + 192) >= *(a1 + 360))
      {
        goto LABEL_33;
      }

      v14 = *(v13 + 80);
      v87 = *(v13 + 64);
      v88 = v14;
      v15 = *(v13 + 112);
      v89 = *(v13 + 96);
      v90 = v15;
      v16 = *(v13 + 16);
      v83 = *v13;
      v84 = v16;
      v17 = *(v13 + 48);
      v85 = *(v13 + 32);
      v86 = v17;
      v91 = 1;
      if ((*(a1 + 336) & 1) == 0)
      {
        sub_1000195BC();
      }

      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 304)), *(a1 + 320));
      v19 = vextq_s8(v18, v18, 4uLL);
      v20 = vnegq_f32(v19);
      v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
      v22 = vrev64q_s32(v19);
      v22.i32[0] = v20.i32[1];
      v22.i32[3] = v20.i32[2];
      if (!sub_1003FC814(a1, &v83, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v19, *(a1 + 16), 3), v22, *(a1 + 16), 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *(a1 + 16), 1), vextq_s8(v21, v21, 8uLL), COERCE_FLOAT(*(a1 + 16))))))
      {
        goto LABEL_33;
      }

      v23 = *(a1 + 352);
      if (v23 == 4)
      {
        v24 = 5;
      }

      else
      {
        if (v23 != 1)
        {
LABEL_45:
          v51 = *(a1 + 56);
          if (*(a1 + 64) != v51)
          {
            v52 = *(a1 + 80);
            v53 = (v51 + 8 * (v52 >> 5));
            v54 = (*v53 + ((v52 & 0x1F) << 7));
            v55 = *(v51 + (((*(a1 + 88) + v52) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 88) + v52) & 0x1F) << 7);
            while (v54 != v55)
            {
              v56 = v54[1];
              v82 = *v54;
              v57 = v54[3];
              v67 = v54[2];
              v68 = v56;
              v58 = v54[7];
              v80 = v54[6];
              v81 = v58;
              v65 = v54[4];
              v66 = v57;
              v79 = v54[5];
              v71 = v82;
              v76 = v79;
              v77 = v80;
              v78 = v58;
              *v59.i64 = sub_1003B3E3C(*(a1 + 32));
              v63 = 0;
              v69[0] = v68;
              v69[1] = v67;
              v69[2] = v66;
              v69[3] = v65;
              do
              {
                v70[v63] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(v69[v63])), v60, *&v69[v63], 1), v61, v69[v63], 2), v62, v69[v63], 3);
                ++v63;
              }

              while (v63 != 4);
              v72 = v70[0];
              v73 = v70[1];
              v74 = v70[2];
              v75 = v70[3];
              sub_1003AAEB4(a1 + 96, &v71);
              v54 += 8;
              if ((v54 - *v53) == 4096)
              {
                v64 = v53[1];
                ++v53;
                v54 = v64;
              }
            }
          }

          goto LABEL_33;
        }

        v24 = 3;
      }

      *(a1 + 352) = v24;
      goto LABEL_45;
    }

    if (v6 == 2)
    {
      goto LABEL_29;
    }

    v25 = 1;
LABEL_32:
    *(a1 + 352) = v25;
    goto LABEL_33;
  }

  if (!v7)
  {
    if (v6 != 2)
    {
      v30 = *(a2 + 80);
      *(a3 + 64) = *(a2 + 64);
      *(a3 + 80) = v30;
      v31 = *(a2 + 112);
      *(a3 + 96) = *(a2 + 96);
      *(a3 + 112) = v31;
      v32 = *(a2 + 16);
      *a3 = *a2;
      *(a3 + 16) = v32;
      v33 = *(a2 + 48);
      *(a3 + 32) = *(a2 + 32);
      *(a3 + 48) = v33;
      *(a3 + 112) = 0;
      *(a3 + 116) = 1;
      goto LABEL_41;
    }

    v25 = 2;
    goto LABEL_32;
  }

  if (v7 == 1)
  {
    goto LABEL_16;
  }

  if (v7 != 2)
  {
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    *(a1 + 16) = xmmword_1005719A0;
    *(a1 + 32) = xmmword_10056EE90;
    *(a1 + 352) = 0;
LABEL_33:
    v6 = *(a2 + 80);
    v7 = *(a1 + 352);
LABEL_34:
    v34 = *(a2 + 80);
    *(a3 + 64) = *(a2 + 64);
    *(a3 + 80) = v34;
    v35 = *(a2 + 112);
    *(a3 + 96) = *(a2 + 96);
    *(a3 + 112) = v35;
    v36 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 16) = v36;
    v37 = *(a2 + 48);
    *(a3 + 32) = *(a2 + 32);
    *(a3 + 48) = v37;
    *(a3 + 112) = v7;
    *(a3 + 116) = 1;
    if (v6 == 2)
    {
      goto LABEL_35;
    }

LABEL_41:
    sub_1003FBCD8(a1);
    return;
  }

LABEL_29:
  v26 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v26;
  v27 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v27;
  v28 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v28;
  v29 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v29;
  *(a3 + 112) = v7;
  *(a3 + 116) = 1;
LABEL_35:
  sub_1003AAEB4(a1 + 48, a2);
  *(a3 + 80) = 0;
  v38 = *(a1 + 352);
  if (v38 <= 5 && ((1 << v38) & 0x2C) != 0)
  {
    *(a3 + 80) = 2;
    *v39.i64 = sub_1003B3E3C(*(a1 + 32));
    v43 = 0;
    v44 = *(a2 + 32);
    v45 = *(a2 + 48);
    v46 = *(a2 + 64);
    v71 = *(a2 + 16);
    v72 = v44;
    v73 = v45;
    v74 = v46;
    do
    {
      *(&v83 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v71 + v43))), v40, *(&v71 + v43), 1), v41, *(&v71 + v43), 2), v42, *(&v71 + v43), 3);
      v43 += 16;
    }

    while (v43 != 64);
    v47 = v84;
    v48 = v85;
    v49 = v86;
    *(a3 + 16) = v83;
    *(a3 + 32) = v47;
    *(a3 + 48) = v48;
    *(a3 + 64) = v49;
    sub_1003AAEB4(a1 + 96, a3);
    if (*a3 - *(*(*(a1 + 104) + ((*(a1 + 128) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 128) & 0x1FLL) << 7)) > 1.28)
    {
      v50 = *(a1 + 136) - 1;
      ++*(a1 + 128);
      *(a1 + 136) = v50;
      sub_10017B5B8(a1 + 96, 1);
    }
  }
}